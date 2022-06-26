# Instruction to recreate models

create a conda environment
```
conda create --name <conifer-opt/conifer-base> python=3.8 scikit-learn xgboost numpy 
```

#install the repo branch configured with the conifer version of interest 
#OPT stands for optimized and it's the project
#deploy-2 stands for traditional conifer and it's configured to run with the stream wrapper
```
pip install git+https://github.com/necst/aca2122-prj-unbalanced-tree.git@<conifer-deploy-2/conifer-opt>
```

#script to generate 3 models High, Average and No Unbalancedness
```
python generate_models.py
```

#the following steps are to generate the IP
#move generated "wrapper" models into suitable directory <base/opt>
#enter into wrappers

#execute 
```
source /opt/Xilinx/Vitis/2021.2/settings64.sh
vitis_hls build_prj.tcl
vivado -mode batch -source design.tcl
```

#enter into project directory to access the bitstream file and hw_handoff file
