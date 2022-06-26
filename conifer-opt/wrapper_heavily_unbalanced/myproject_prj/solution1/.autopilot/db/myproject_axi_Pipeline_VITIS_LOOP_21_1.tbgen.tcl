set moduleName myproject_axi_Pipeline_VITIS_LOOP_21_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject_axi_Pipeline_VITIS_LOOP_21_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_r_V_data_V int 32 regular {axi_s 0 volatile  { in_r Data } }  }
	{ in_r_V_keep_V int 4 regular {axi_s 0 volatile  { in_r Keep } }  }
	{ in_r_V_strb_V int 4 regular {axi_s 0 volatile  { in_r Strb } }  }
	{ in_r_V_user_V int 1 regular {axi_s 0 volatile  { in_r User } }  }
	{ in_r_V_last_V int 1 regular {axi_s 0 volatile  { in_r Last } }  }
	{ in_r_V_id_V int 1 regular {axi_s 0 volatile  { in_r ID } }  }
	{ in_r_V_dest_V int 1 regular {axi_s 0 volatile  { in_r Dest } }  }
	{ in_local_V_9_0123_out int 32 regular {pointer 1}  }
	{ in_local_V_8_0122_out int 32 regular {pointer 1}  }
	{ in_local_V_19_out int 32 regular {pointer 1}  }
	{ in_local_V_28_out int 32 regular {pointer 1}  }
	{ in_local_V_36_out int 32 regular {pointer 1}  }
	{ in_local_V_43_out int 32 regular {pointer 1}  }
	{ in_local_V_49_out int 32 regular {pointer 1}  }
	{ in_local_V_54_out int 32 regular {pointer 1}  }
	{ in_local_V_58_out int 32 regular {pointer 1}  }
	{ in_local_V_61_out int 32 regular {pointer 1}  }
	{ tmp_last_V_1_out int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_r_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_r_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_r_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_r_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_r_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_r_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_r_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_local_V_9_0123_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_8_0122_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_19_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_28_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_36_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_43_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_49_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_54_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_58_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_61_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_last_V_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_r_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_r_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_r_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in_r_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in_r_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in_r_TUSER sc_in sc_lv 1 signal 3 } 
	{ in_r_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_r_TID sc_in sc_lv 1 signal 5 } 
	{ in_r_TDEST sc_in sc_lv 1 signal 6 } 
	{ in_local_V_9_0123_out sc_out sc_lv 32 signal 7 } 
	{ in_local_V_9_0123_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ in_local_V_8_0122_out sc_out sc_lv 32 signal 8 } 
	{ in_local_V_8_0122_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ in_local_V_19_out sc_out sc_lv 32 signal 9 } 
	{ in_local_V_19_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ in_local_V_28_out sc_out sc_lv 32 signal 10 } 
	{ in_local_V_28_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ in_local_V_36_out sc_out sc_lv 32 signal 11 } 
	{ in_local_V_36_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ in_local_V_43_out sc_out sc_lv 32 signal 12 } 
	{ in_local_V_43_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ in_local_V_49_out sc_out sc_lv 32 signal 13 } 
	{ in_local_V_49_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ in_local_V_54_out sc_out sc_lv 32 signal 14 } 
	{ in_local_V_54_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ in_local_V_58_out sc_out sc_lv 32 signal 15 } 
	{ in_local_V_58_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ in_local_V_61_out sc_out sc_lv 32 signal 16 } 
	{ in_local_V_61_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ tmp_last_V_1_out sc_out sc_lv 1 signal 17 } 
	{ tmp_last_V_1_out_ap_vld sc_out sc_logic 1 outvld 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_r_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_r_V_data_V", "role": "default" }} , 
 	{ "name": "in_r_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_r_V_data_V", "role": "default" }} , 
 	{ "name": "in_r_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_r_V_dest_V", "role": "default" }} , 
 	{ "name": "in_r_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_r_V_keep_V", "role": "default" }} , 
 	{ "name": "in_r_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_r_V_strb_V", "role": "default" }} , 
 	{ "name": "in_r_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r_V_user_V", "role": "default" }} , 
 	{ "name": "in_r_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r_V_last_V", "role": "default" }} , 
 	{ "name": "in_r_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r_V_id_V", "role": "default" }} , 
 	{ "name": "in_r_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r_V_dest_V", "role": "default" }} , 
 	{ "name": "in_local_V_9_0123_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_local_V_9_0123_out", "role": "default" }} , 
 	{ "name": "in_local_V_9_0123_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_local_V_9_0123_out", "role": "ap_vld" }} , 
 	{ "name": "in_local_V_8_0122_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_local_V_8_0122_out", "role": "default" }} , 
 	{ "name": "in_local_V_8_0122_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_local_V_8_0122_out", "role": "ap_vld" }} , 
 	{ "name": "in_local_V_19_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_local_V_19_out", "role": "default" }} , 
 	{ "name": "in_local_V_19_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_local_V_19_out", "role": "ap_vld" }} , 
 	{ "name": "in_local_V_28_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_local_V_28_out", "role": "default" }} , 
 	{ "name": "in_local_V_28_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_local_V_28_out", "role": "ap_vld" }} , 
 	{ "name": "in_local_V_36_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_local_V_36_out", "role": "default" }} , 
 	{ "name": "in_local_V_36_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_local_V_36_out", "role": "ap_vld" }} , 
 	{ "name": "in_local_V_43_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_local_V_43_out", "role": "default" }} , 
 	{ "name": "in_local_V_43_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_local_V_43_out", "role": "ap_vld" }} , 
 	{ "name": "in_local_V_49_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_local_V_49_out", "role": "default" }} , 
 	{ "name": "in_local_V_49_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_local_V_49_out", "role": "ap_vld" }} , 
 	{ "name": "in_local_V_54_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_local_V_54_out", "role": "default" }} , 
 	{ "name": "in_local_V_54_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_local_V_54_out", "role": "ap_vld" }} , 
 	{ "name": "in_local_V_58_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_local_V_58_out", "role": "default" }} , 
 	{ "name": "in_local_V_58_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_local_V_58_out", "role": "ap_vld" }} , 
 	{ "name": "in_local_V_61_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_local_V_61_out", "role": "default" }} , 
 	{ "name": "in_local_V_61_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_local_V_61_out", "role": "ap_vld" }} , 
 	{ "name": "tmp_last_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_last_V_1_out", "role": "default" }} , 
 	{ "name": "tmp_last_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_last_V_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject_axi_Pipeline_VITIS_LOOP_21_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_r_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_r_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_r_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_r_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_r_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_r_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_r_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_local_V_9_0123_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_local_V_8_0122_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_local_V_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_local_V_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_local_V_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_local_V_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_local_V_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_local_V_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_local_V_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_local_V_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_last_V_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	myproject_axi_Pipeline_VITIS_LOOP_21_1 {
		in_r_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_r_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_r_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_r_V_user_V {Type I LastRead 0 FirstWrite -1}
		in_r_V_last_V {Type I LastRead 0 FirstWrite -1}
		in_r_V_id_V {Type I LastRead 0 FirstWrite -1}
		in_r_V_dest_V {Type I LastRead 0 FirstWrite -1}
		in_local_V_9_0123_out {Type O LastRead -1 FirstWrite 2}
		in_local_V_8_0122_out {Type O LastRead -1 FirstWrite 2}
		in_local_V_19_out {Type O LastRead -1 FirstWrite 2}
		in_local_V_28_out {Type O LastRead -1 FirstWrite 2}
		in_local_V_36_out {Type O LastRead -1 FirstWrite 2}
		in_local_V_43_out {Type O LastRead -1 FirstWrite 2}
		in_local_V_49_out {Type O LastRead -1 FirstWrite 2}
		in_local_V_54_out {Type O LastRead -1 FirstWrite 2}
		in_local_V_58_out {Type O LastRead -1 FirstWrite 2}
		in_local_V_61_out {Type O LastRead -1 FirstWrite 2}
		tmp_last_V_1_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14", "Max" : "14"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "14"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_r_V_data_V { axis {  { in_r_TVALID in_vld 0 1 }  { in_r_TDATA in_data 0 32 } } }
	in_r_V_keep_V { axis {  { in_r_TKEEP in_data 0 4 } } }
	in_r_V_strb_V { axis {  { in_r_TSTRB in_data 0 4 } } }
	in_r_V_user_V { axis {  { in_r_TUSER in_data 0 1 } } }
	in_r_V_last_V { axis {  { in_r_TLAST in_data 0 1 } } }
	in_r_V_id_V { axis {  { in_r_TID in_data 0 1 } } }
	in_r_V_dest_V { axis {  { in_r_TREADY in_acc 1 1 }  { in_r_TDEST in_data 0 1 } } }
	in_local_V_9_0123_out { ap_vld {  { in_local_V_9_0123_out out_data 1 32 }  { in_local_V_9_0123_out_ap_vld out_vld 1 1 } } }
	in_local_V_8_0122_out { ap_vld {  { in_local_V_8_0122_out out_data 1 32 }  { in_local_V_8_0122_out_ap_vld out_vld 1 1 } } }
	in_local_V_19_out { ap_vld {  { in_local_V_19_out out_data 1 32 }  { in_local_V_19_out_ap_vld out_vld 1 1 } } }
	in_local_V_28_out { ap_vld {  { in_local_V_28_out out_data 1 32 }  { in_local_V_28_out_ap_vld out_vld 1 1 } } }
	in_local_V_36_out { ap_vld {  { in_local_V_36_out out_data 1 32 }  { in_local_V_36_out_ap_vld out_vld 1 1 } } }
	in_local_V_43_out { ap_vld {  { in_local_V_43_out out_data 1 32 }  { in_local_V_43_out_ap_vld out_vld 1 1 } } }
	in_local_V_49_out { ap_vld {  { in_local_V_49_out out_data 1 32 }  { in_local_V_49_out_ap_vld out_vld 1 1 } } }
	in_local_V_54_out { ap_vld {  { in_local_V_54_out out_data 1 32 }  { in_local_V_54_out_ap_vld out_vld 1 1 } } }
	in_local_V_58_out { ap_vld {  { in_local_V_58_out out_data 1 32 }  { in_local_V_58_out_ap_vld out_vld 1 1 } } }
	in_local_V_61_out { ap_vld {  { in_local_V_61_out out_data 1 32 }  { in_local_V_61_out_ap_vld out_vld 1 1 } } }
	tmp_last_V_1_out { ap_vld {  { tmp_last_V_1_out out_data 1 1 }  { tmp_last_V_1_out_ap_vld out_vld 1 1 } } }
}
