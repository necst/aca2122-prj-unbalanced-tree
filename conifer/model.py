from hls4ml.model.hls_layers import Layer

from . import backends
from . import converters
import numpy as np
import os
import sys
import json
import logging
logger = logging.getLogger(__name__)

class model:

    def __init__(self, bdt, converter, backend=backends.xilinxhls, config=None):
        self._ensembleDict = converter.convert(bdt)
        self.backend = backend
        logger.info(f'Converting BDT with {converter.__name__} converter and {backend.__name__} backend')
        if config is not None:
            self.config = config
        else:
            logger.info('No configuration provided, creating the default configuration from the backend')
            self.config = backend.auto_config()
        subset_keys = ['max_depth', 'n_trees', 'n_features', 'n_classes']
        subset_dict = {key: self._ensembleDict[key] for key in subset_keys}
        logger.debug(f"Converted BDT with parameters {json.dumps(subset_dict)}")

    def set_config(self, config):
        self.config = config

    def get_config(self):
        return self.config

    def write(self):
        self.backend.write(self._ensembleDict, self.config)

    def compile(self):
        self.write()
        self.backend.sim_compile(self.config)

    def decision_function(self, X, trees=False):
        return self.backend.decision_function(X, self.config, trees=trees)

    def build(self, **kwargs):
        self.backend.build(self.config, **kwargs)

    def deploy(self, input_shape=[10], output_shape=[1], wrapper_output_dir='wrapper', core_output_dir='core', precision='ap_fixed<32,16>',
               prj_name='myproject', part='xczu3eg-sbva484-1-e', clk_period=5):
        import hls4ml
        import shutil

        class Reader:
            def get_weights_data(self, name, var):
                w = 2 if var == 'kernel' else 1
                return np.array([w])

        class Output(Layer):
            def initialize(self):
                shape = self.attributes['output_shape']
                if shape[0] is None:
                    shape = shape[1:]
                dims = ['N_OUTPUT_{}_{}'.format(i, self.index) for i in range(1, len(shape) + 1)]
                if self.index == 1:
                    default_type_name = 'output_t'
                else:
                    default_type_name = 'output{}_t'.format(self.index)
                type_name = self.attributes.get('type_name', default_type_name)
                precision = self.attributes.get('precision', None)
                self.add_output_variable(shape, dims, var_name=self.name, type_name=type_name, precision=precision)

            def function_cpp(self):
                return None

            def config_cpp(self):
                return None

        hls4ml.model.hls_layers.register_layer('Output', Output)
        reader = Reader()

        layers = [{'class_name': 'Input', 'name': 'input_layer', 'input_shape': input_shape, 'type_name': 'conifer_input'},
                  {'class_name': 'Output', 'name': 'output_layer', 'output_shape': output_shape, 'type_name': 'conifer_output'}]

        config = {'HLSConfig': {
            'Model':
                {
                    'Precision': precision,
                    'ReuseFactor': 1
                },
        }, 'OutputDir': wrapper_output_dir, 'ProjectName': prj_name, 'IOType': 'io_parallel', 'Backend': 'VivadoAccelerator',
            'ClockPeriod': clk_period, 'Part': part,
            'AcceleratorConfig': {
                'Interface': 'axi_stream',
                'Driver': 'python',
                'Precision': {'Input': 'float', 'Output': 'float'}
            },
            'InputData': 'X_test.npy',
            'OutputPredictions': 'y_hls.npy'
        }
        model = hls4ml.model.HLSModel(config, reader, layers)
        model.config.get_config_value('HLSConfig')
        self.config['ProjectName'] = prj_name
        self.config['OutputDir'] = core_output_dir
        self.config['Precision'] = precision
        self.config['XilinxPart'] = model.config.get_config_value('Part')
        self.config['ClockPeriod'] = model.config.get_config_value('ClockPeriod')
        model.write()
        self.write()

        wrap_firm_path = os.path.join(wrapper_output_dir, 'firmware')
        core_firm_path = os.path.join(core_output_dir, 'firmware')
        shutil.copyfile(core_firm_path + '/myproject.cpp', wrap_firm_path + '/myproject.cpp')
        shutil.copyfile(core_firm_path + '/myproject.h', wrap_firm_path + '/myproject.h')
        shutil.copyfile(core_firm_path + '/parameters.h', wrap_firm_path + '/parameters.h')
        shutil.copyfile(core_firm_path + '/BDT.h', wrap_firm_path + '/BDT.h')

        # modify build script
        oldfile = os.path.join(wrapper_output_dir, 'build_prj.tcl')
        newfile = os.path.join(wrapper_output_dir, 'build_prj.tcl.mod')
        f = open(oldfile, 'r')
        fout = open(newfile, 'w')

        for line in f.readlines():
            if '  export     0' in line:
                newline = '  export     1\n'
            elif 'add_files -tb firmware/weights' in line:
                newline = 'add_files firmware/BDT.h\n'
            elif 'add_files firmware/myproject_axi.cpp -cflags \"-std=c++0x\"' in line:
                newline = 'add_files firmware/myproject_axi.cpp\n'
            elif 'add_files firmware/myproject.cpp -cflags \"-std=c++0x\"' in line:
                newline = 'add_files firmware/myproject.cpp\n'
            elif 'add_files -tb myproject_test.cpp -cflags \"-std=c++0x\"' in line:
                newline = 'add_files -tb myproject_test.cpp -cflags \"-I firmware/\"\n'
            elif 'set_part {xc7z020clg400-1}' in line:
                newline = 'set_part {' + part + '}\n'
            elif 'create_clock -period 5 -name default' in line:
                newline = 'create_clock -period ' + str(clk_period) + ' -name default\n'
            elif 'add_files -tb myproject_test.cpp -cflags \"-std=c++0x -DRTL_SIM\"' in line:
                newline = '  add_files -tb myproject_test.cpp -cflags \"-DRTL_SIM\"\n'
            else:
                newline = line
            fout.write(newline)

        os.remove(oldfile)
        os.rename(newfile, oldfile)

        # modify defines.h
        oldfile = os.path.join(wrap_firm_path, 'defines.h')
        newfile = os.path.join(wrap_firm_path, 'defines.h.mod')
        f = open(oldfile, 'r')
        fout = open(newfile, 'w')

        for line in f.readlines():
            if '#include \"myproject.h\"' in line:
                newline = '#include \"myproject.h\"\n#include "parameters.h"\n'
            else:
                newline = line
            fout.write(newline)

        os.remove(oldfile)
        os.rename(newfile, oldfile)

        # modify myproject_axi.cpp
        oldfile = os.path.join(wrap_firm_path, 'myproject_axi.cpp')
        newfile = os.path.join(wrap_firm_path, 'myproject_axi.cpp.mod')
        f = open(oldfile, 'r')
        fout = open(newfile, 'w')

        for line in f.readlines():
            if 'in_size, out_size' in line:
                newline = line.replace('in_size, out_size', 'tree_scores')
            elif 'bool is_last = false;' in line:
                newline = '    score_t tree_scores[BDT::fn_classes(n_classes) * n_trees]{};\n' \
                          '    input_axis_t in_struct;\n' \
                          '    output_axis_t out_struct;\n'
            elif 'input_axi_t in[N_IN]' in line:
                newline = 'input_axi_t &in,\n'
            elif 'output_axi_t out[N_OUT]' in line:
                newline = 'output_axi_t &out\n'
            elif 'in_local[i] = in[i].data;' in line:
                newline = '        in_struct = in.read();\n' \
                          '        in_local[i] = in_struct.data;\n'
            elif 'is_last |= (in[i].last == 1)? true: false;' in line:
                newline = '        // is_last |= (in[i].last == 1)? true: false;\n'
            elif 'out[i].data = out_local[i];' in line:
                newline = '        out_struct.data = out_local[i];\n'
            elif 'out[i].last = (is_last && (i == N_OUT - 1))? true : false;' in line:
                newline = '        out_struct.last = in_struct.last;\n' \
                          '        out.write(out_struct);'

            else:
                newline = line
            fout.write(newline)

        os.remove(oldfile)
        os.rename(newfile, oldfile)

        # modify myproject_axi.h
        oldfile = os.path.join(wrap_firm_path, 'myproject_axi.h')
        newfile = os.path.join(wrap_firm_path, 'myproject_axi.h.mod')
        f = open(oldfile, 'r')
        fout = open(newfile, 'w')

        for line in f.readlines():
            if '#include "myproject.h"' in line:
                newline = line + '#include "ap_axi_sdata.h"\n#include "hls_stream.h"'
            elif 'typedef struct in_struct {' in line:
                newline = '/*typedef struct in_struct {\n'
            elif '} output_axi_t;' in line:
                newline = '} output_axi_t;*/\n' \
                          'typedef hls::axis<T_in, 1, 1, 1> input_axis_t;\n' \
                          'typedef hls::axis<T_out, 1, 1, 1> output_axis_t;\n' \
                          'typedef hls::stream<input_axis_t> input_axi_t;\n' \
                          'typedef hls::stream<output_axis_t> output_axi_t;\n'
            elif 'input_axi_t in[N_IN]' in line:
                newline = 'input_axi_t &in,\n'
            elif 'output_axi_t out[N_OUT]' in line:
                newline = 'output_axi_t &out\n'
            else:
                newline = line
            fout.write(newline)

        os.remove(oldfile)
        os.rename(newfile, oldfile)

        # modify myproject.h
        oldfile = os.path.join(wrap_firm_path, 'myproject.h')
        newfile = os.path.join(wrap_firm_path, 'myproject.h.mod')
        f = open(oldfile, 'r')
        fout = open(newfile, 'w')

        for line in f.readlines():
            if '#include "parameters.h"' in line:
                newline = line + '#include "defines.h"\n'
            else:
                newline = line
            fout.write(newline)

        os.remove(oldfile)
        os.rename(newfile, oldfile)

        # modify myproject_test.cpp
        oldfile = os.path.join(wrapper_output_dir, 'myproject_test.cpp')
        newfile = os.path.join(wrapper_output_dir, 'myproject.cpp.mod')
        f = open(oldfile, 'r')
        fout = open(newfile, 'w')
        c = 0
        for line in f.readlines():
            if 'input_axi_t inputs[N_IN];' in line:
                newline = '      input_axi_t instream;\n'
            elif 'nnet::copy_data_axi<float, input_axi_t, 0, N_IN>(in, inputs);' in line:
                newline = '      output_axi_t outstream;\n'
            elif 'output_axi_t outputs[N_OUT];' in line:
                newline = '      input_axis_t inputs;\n' \
                          '      output_axis_t outputs;\n' \
                          '      for(int i = 0; i<N_IN; i++){\n' \
                          '         inputs.data = in.at(i);\n' \
                          '         inputs.last = (i == N_IN - 1) ? true : false;\n' \
                          '         instream.write(inputs);\n' \
                          '     }\n'
            elif 'inputs,outputs' in line:
                newline = line.replace('inputs,outputs', 'instream,outstream')
            elif 'if (e % CHECKPOINT == 0) {' in line:
                newline = '/*if (e % CHECKPOINT == 0) {\n'
            elif 'e++;'in line:
                newline = '*/e++;'
            elif '//hls-fpga-machine-learning insert tb-output' in line and c == 0:
                c += 1
                newline = '      //hls-fpga-machine-learning insert tb-output\n' \
                          '      for(int i = 0; i<N_OUT; i++){\n' \
                          '         outputs = outstream.read();\n' \
                          '         std::stringstream output_string;\n' \
                          '         output_string << "data: " << outputs.data << ", last: " << outputs.last << std::endl;\n' \
                          '         std::cout << output_string.str();\n' \
                          '         fout << output_string.str();\n' \
                          '     }\n'
            elif 'nnet::print_result<output_axi_t, N_OUT>(outputs, fout);' in line:
                newline = '\n'
            elif 'std::cout << "INFO: Unable to open input/predictions file, using default input." << std::endl;' in line:
                newline = line + '\n/*\n'
            elif '//hls-fpga-machine-learning insert tb-output' in line and c == 1:
                newline = line + '*/\n'
            else:
                newline = line
            fout.write(newline)

        os.remove(oldfile)
        os.rename(newfile, oldfile)

        # modify design.tcl
        oldfile = os.path.join(wrapper_output_dir, 'design.tcl')
        newfile = os.path.join(wrapper_output_dir, 'design.tcl.mod')
        f = open(oldfile, 'r')
        fout = open(newfile, 'w')

        for line in f.readlines():
            if 'create_project project_1 ${myproject}_vivado_accelerator -part xc7z020clg400-1 -force' in line:
                newline = 'create_project project_1 ${myproject}_vivado_accelerator -part ' + part + ' -force\n'
            elif 'set_property board_part tul.com.tw:pynq-z2:part0:1.0 [current_project]' in line:
                newline = 'set_property board_part em.avnet.com:ultra96:part0:1.2 [current_project]\n'

            else:
                newline = line
            fout.write(newline)

        os.remove(oldfile)
        os.rename(newfile, oldfile)

        # run vitis build_prj.tcl
        # run  try:
        #                     os.system('vivado -mode batch -source design.tcl')
        #                 except:
        #                     print("Something went wrong, check the Vivado logs")
        return model

    def profile(self, bins=50, return_data=False, return_figure=True):
        try:
            import matplotlib.pyplot as plt
        except ImportError:
            raise Exception("matplotlib not found. Please install matplotlib")
        value = np.array([tree['value'] for trees in self._ensembleDict['trees']
                          for tree in trees]).flatten()
        threshold = np.array(
            [tree['threshold'] for trees in self._ensembleDict['trees'] for tree in trees]).flatten()
        hv, bv = np.histogram(value, bins=bins)
        wv = bv[1] - bv[0]
        ht, bt = np.histogram(threshold, bins=bins)
        wt = bt[1] - bt[0]
        figure = plt.figure()
        plt.subplot(1, 2, 1)
        plt.bar(bv[:-1] + wv / 2, hv, width=wv)
        plt.xlabel('Distribution of tree values (scores)')
        plt.subplot(1, 2, 2)
        plt.bar(bt[:-1] + wt / 2, ht, width=wt)
        plt.xlabel('Distribution of tree thresholds')
        if return_data and return_figure:
            return (value, threshold, figure)
        elif return_data:
            return (value, threshold)
        elif return_figure:
            return (figure)
