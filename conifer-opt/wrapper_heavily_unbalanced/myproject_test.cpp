//
//    rfnoc-hls-neuralnet: Vivado HLS code for neural-net building blocks
//
//    Copyright (C) 2017 EJ Kreinar
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
#include <fstream>
#include <iostream>
#include <algorithm>
#include <vector>
#include <map>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "firmware/myproject_axi.h"
#include "firmware/nnet_utils/nnet_helpers.h"

//hls-fpga-machine-learning insert bram

#define CHECKPOINT 5000

namespace nnet {
    bool trace_enabled = true;
    std::map<std::string, void *> *trace_outputs = NULL;
    size_t trace_type_size = sizeof(double);
}

int main(int argc, char **argv)
{
  //load input data from text file
  std::ifstream fin("tb_data/tb_input_features.dat");
  //load predictions from text file
  std::ifstream fpr("tb_data/tb_output_predictions.dat");

#ifdef RTL_SIM
  std::string RESULTS_LOG = "tb_data/rtl_cosim_results.log";
#else
  std::string RESULTS_LOG = "tb_data/csim_results.log";
#endif
  std::ofstream fout(RESULTS_LOG);

  std::string iline;
  std::string pline;
  int e = 0;

  if (fin.is_open() && fpr.is_open()) {
    while ( std::getline(fin,iline) && std::getline (fpr,pline) ) {
      if (e % CHECKPOINT == 0) std::cout << "Processing input " << e << std::endl;
      char* cstr=const_cast<char*>(iline.c_str());
      char* current;
      std::vector<float> in;
      current=strtok(cstr," ");
      while(current!=NULL) {
        in.push_back(atof(current));
        current=strtok(NULL," ");
      }
      cstr=const_cast<char*>(pline.c_str());
      std::vector<float> pr;
      current=strtok(cstr," ");
      while(current!=NULL) {
        pr.push_back(atof(current));
        current=strtok(NULL," ");
      }

      //hls-fpga-machine-learning insert data
      input_axi_t instream;
      output_axi_t outstream;
      input_axis_t inputs;
      output_axis_t outputs;
      for(int i = 0; i<N_IN; i++){
         inputs.data = in.at(i);
         inputs.last = (i == N_IN - 1) ? true : false;
         instream.write(inputs);
     }

      //hls-fpga-machine-learning insert top-level-function
      myproject_axi(instream,outstream);

/*if (e % CHECKPOINT == 0) {
        std::cout << "Predictions" << std::endl;
        //hls-fpga-machine-learning insert predictions
        for(int i = 0; i < N_OUT; i++) {
          std::cout << pr[i] << " ";
        }
        std::cout << std::endl;
        std::cout << "Quantized predictions" << std::endl;
        //hls-fpga-machine-learning insert quantized
        nnet::print_result<output_axi_t, N_OUT>(outputs, std::cout, true);
      }
*/e++;
      //hls-fpga-machine-learning insert tb-output
      for(int i = 0; i<N_OUT; i++){
         outputs = outstream.read();
         std::stringstream output_string;
         output_string << "data: " << outputs.data << ", last: " << outputs.last << std::endl;
         std::cout << output_string.str();
         fout << output_string.str();
     }


    }
    fin.close();
    fpr.close();
  } else {
    std::cout << "INFO: Unable to open input/predictions file, using default input." << std::endl;

/*

    //hls-fpga-machine-learning insert zero
      input_axi_t instream;
    inputs[N_IN-1].last = 1;
      input_axis_t inputs;
      output_axis_t outputs;
      for(int i = 0; i<N_IN; i++){
         inputs.data = in.at(i);
         inputs.last = (i == N_IN - 1) ? true : false;
         instream.write(inputs);
     }

    //hls-fpga-machine-learning insert top-level-function
    myproject_axi(instream,outstream);

    //hls-fpga-machine-learning insert output
    nnet::print_result<output_axi_t, N_OUT>(outputs, std::cout, true);

    //hls-fpga-machine-learning insert tb-output
*/


  }

  fout.close();
  std::cout << "INFO: Saved inference results to file: " << RESULTS_LOG << std::endl;

  return 0;
}
