############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project myproject_prj
set_top myproject_axi
add_files firmware/myproject.cpp
add_files firmware/myproject_axi.cpp
add_files firmware/BDT.h
add_files -tb myproject_test.cpp -cflags "-DRTL_SIM -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb tb_data -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period 7 -name default
config_compile -name_max_length 60
source "./myproject_prj/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format sysgen
