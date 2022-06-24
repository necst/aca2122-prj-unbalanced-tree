
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(axi_slave) -into $coutputgroup]
add_wave /apatb_myproject_axi_top/AESL_inst_myproject_axi/out_r_TLAST -into $return_group -color #ffff00 -radix hex
add_wave /apatb_myproject_axi_top/AESL_inst_myproject_axi/out_r_TSTRB -into $return_group -radix hex
add_wave /apatb_myproject_axi_top/AESL_inst_myproject_axi/out_r_TKEEP -into $return_group -radix hex
add_wave /apatb_myproject_axi_top/AESL_inst_myproject_axi/out_r_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_myproject_axi_top/AESL_inst_myproject_axi/out_r_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_myproject_axi_top/AESL_inst_myproject_axi/out_r_TDATA -into $return_group -radix hex
add_wave /apatb_myproject_axi_top/AESL_inst_myproject_axi/ap_local_deadlock -into $return_group -radix hex
add_wave /apatb_myproject_axi_top/AESL_inst_myproject_axi/ap_local_block -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(axis) -into $cinputgroup]
add_wave /apatb_myproject_axi_top/AESL_inst_myproject_axi/in_r_TLAST -into $return_group -color #ffff00 -radix hex
add_wave /apatb_myproject_axi_top/AESL_inst_myproject_axi/in_r_TSTRB -into $return_group -radix hex
add_wave /apatb_myproject_axi_top/AESL_inst_myproject_axi/in_r_TKEEP -into $return_group -radix hex
add_wave /apatb_myproject_axi_top/AESL_inst_myproject_axi/in_r_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_myproject_axi_top/AESL_inst_myproject_axi/in_r_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_myproject_axi_top/AESL_inst_myproject_axi/in_r_TDATA -into $return_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_myproject_axi_top/AESL_inst_myproject_axi/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_myproject_axi_top/AESL_inst_myproject_axi/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_myproject_axi_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_myproject_axi_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_myproject_axi_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_myproject_axi_top/ap_c_n_tvin_trans_num_in_r_V_data_V -into $tb_simstatus_group -radix hex
add_wave /apatb_myproject_axi_top/ap_c_n_tvin_trans_num_in_r_V_keep_V -into $tb_simstatus_group -radix hex
add_wave /apatb_myproject_axi_top/ap_c_n_tvin_trans_num_in_r_V_strb_V -into $tb_simstatus_group -radix hex
add_wave /apatb_myproject_axi_top/ap_c_n_tvin_trans_num_in_r_V_last_V -into $tb_simstatus_group -radix hex
add_wave /apatb_myproject_axi_top/ap_c_n_tvout_trans_num_out_r_V_data_V -into $tb_simstatus_group -radix hex
add_wave /apatb_myproject_axi_top/ap_c_n_tvout_trans_num_out_r_V_keep_V -into $tb_simstatus_group -radix hex
add_wave /apatb_myproject_axi_top/ap_c_n_tvout_trans_num_out_r_V_strb_V -into $tb_simstatus_group -radix hex
add_wave /apatb_myproject_axi_top/ap_c_n_tvout_trans_num_out_r_V_last_V -into $tb_simstatus_group -radix hex
add_wave /apatb_myproject_axi_top/LENGTH_in_r_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_myproject_axi_top/LENGTH_in_r_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_myproject_axi_top/LENGTH_in_r_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_myproject_axi_top/LENGTH_in_r_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_myproject_axi_top/LENGTH_out_r_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_myproject_axi_top/LENGTH_out_r_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_myproject_axi_top/LENGTH_out_r_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_myproject_axi_top/LENGTH_out_r_V_last_V -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axi_slave) -into $tbcoutputgroup]
add_wave /apatb_myproject_axi_top/out_r_TLAST -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_myproject_axi_top/out_r_TSTRB -into $tb_return_group -radix hex
add_wave /apatb_myproject_axi_top/out_r_TKEEP -into $tb_return_group -radix hex
add_wave /apatb_myproject_axi_top/out_r_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_myproject_axi_top/out_r_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_myproject_axi_top/out_r_TDATA -into $tb_return_group -radix hex
add_wave /apatb_myproject_axi_top/ap_local_deadlock -into $tb_return_group -radix hex
add_wave /apatb_myproject_axi_top/ap_local_block -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axis) -into $tbcinputgroup]
add_wave /apatb_myproject_axi_top/in_r_TLAST -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_myproject_axi_top/in_r_TSTRB -into $tb_return_group -radix hex
add_wave /apatb_myproject_axi_top/in_r_TKEEP -into $tb_return_group -radix hex
add_wave /apatb_myproject_axi_top/in_r_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_myproject_axi_top/in_r_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_myproject_axi_top/in_r_TDATA -into $tb_return_group -radix hex
save_wave_config myproject_axi.wcfg
run all
quit

