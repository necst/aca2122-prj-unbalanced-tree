create_project prj -part xczu3eg-sbva484-1-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/nghielme/PycharmProjects/aca-project/conifer-opt/wrapper_perfectly_balanced/myproject_prj/solution1/syn/verilog/myproject_axi_fpext_32ns_64_2_no_dsp_1_ip.tcl"
