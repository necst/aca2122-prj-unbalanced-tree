# Instruction to recreate models

create a conda environment
```
conda create --name <conifer-opt/conifer-base> python=3.8 scikit-learn xgboost numpy 
```

Install the repo branch configured with the Conifer version of interest.
`conifer-opt` branch is the Conifer version under test.
`conifer-deploy-2` branch is the v0.1 version of Conifer.
Both versions include the creation of an AXIS wrapper around the Conifer IP and a block diagram with the BDT IP.
```
pip install git+https://github.com/necst/aca2122-prj-unbalanced-tree.git@<conifer-deploy-2/conifer-opt>
```

The following script generates 3 models High, Average and No Unbalancedness. Once completed 6 folder will be produced: 3 `core-*` and 3 `wrapper-*`. The `core-*` folders contain Conifer IPs of each of the 3 models. The `wrapper-*` ones contain the Conifer IP + an AXIS wrapper. Please after each run of this script, move the generated folders in a separate directory, to avoid conflicts on the next run. 
```
python generate_models.py
```
Once the `wrapper-*` and `core-*` have been generated, in order to create the IP of the wrapper and the bitfile for the Ultra96 board, change directory into any of the `wrapper-*` ones and run these commands (respecting the order): 

```
source /opt/Xilinx/Vitis/2021.2/settings64.sh
vitis_hls build_prj.tcl
vivado -mode batch -source design.tcl
```

At the end of the computation (it will take sometime) the folders with reports and bitfile will be generated.
To test the bitfile on the board you can use the driver generated (`axi_stream_driver.py`).
