// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Jun 24 23:25:07 2022
// Host        : yavin running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/nghielme/PycharmProjects/conifer/examples/wrapper-3-20220623T092548Z-001/wrapper-3/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_myproject_axi_0_0/design_1_myproject_axi_0_0_sim_netlist.v
// Design      : design_1_myproject_axi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_myproject_axi_0_0,myproject_axi,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "myproject_axi,Vivado 2021.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_myproject_axi_0_0
   (ap_local_block,
    ap_local_deadlock,
    ap_clk,
    ap_rst_n,
    in_r_TVALID,
    in_r_TREADY,
    in_r_TDATA,
    in_r_TDEST,
    in_r_TKEEP,
    in_r_TSTRB,
    in_r_TUSER,
    in_r_TLAST,
    in_r_TID,
    out_r_TVALID,
    out_r_TREADY,
    out_r_TDATA,
    out_r_TDEST,
    out_r_TKEEP,
    out_r_TSTRB,
    out_r_TUSER,
    out_r_TLAST,
    out_r_TID);
  output ap_local_block;
  output ap_local_deadlock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF in_r:out_r, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_r TVALID" *) input in_r_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_r TREADY" *) output in_r_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_r TDATA" *) input [31:0]in_r_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_r TDEST" *) input [0:0]in_r_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_r TKEEP" *) input [3:0]in_r_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_r TSTRB" *) input [3:0]in_r_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_r TUSER" *) input [0:0]in_r_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_r TLAST" *) input [0:0]in_r_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_r TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_r, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input [0:0]in_r_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_r TVALID" *) output out_r_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_r TREADY" *) input out_r_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_r TDATA" *) output [31:0]out_r_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_r TDEST" *) output [0:0]out_r_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_r TKEEP" *) output [3:0]out_r_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_r TSTRB" *) output [3:0]out_r_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_r TUSER" *) output [0:0]out_r_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_r TLAST" *) output [0:0]out_r_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_r TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_r, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) output [0:0]out_r_TID;

  wire \<const0> ;
  wire \<const1> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [31:0]in_r_TDATA;
  wire in_r_TREADY;
  wire in_r_TVALID;
  wire [31:0]out_r_TDATA;
  wire out_r_TREADY;
  wire out_r_TVALID;
  wire NLW_inst_ap_local_block_UNCONNECTED;
  wire NLW_inst_ap_local_deadlock_UNCONNECTED;
  wire [0:0]NLW_inst_out_r_TDEST_UNCONNECTED;
  wire [0:0]NLW_inst_out_r_TID_UNCONNECTED;
  wire [3:0]NLW_inst_out_r_TKEEP_UNCONNECTED;
  wire [0:0]NLW_inst_out_r_TLAST_UNCONNECTED;
  wire [3:0]NLW_inst_out_r_TSTRB_UNCONNECTED;
  wire [0:0]NLW_inst_out_r_TUSER_UNCONNECTED;

  assign ap_local_block = \<const0> ;
  assign ap_local_deadlock = \<const0> ;
  assign out_r_TDEST[0] = \<const0> ;
  assign out_r_TID[0] = \<const0> ;
  assign out_r_TKEEP[3] = \<const1> ;
  assign out_r_TKEEP[2] = \<const1> ;
  assign out_r_TKEEP[1] = \<const1> ;
  assign out_r_TKEEP[0] = \<const1> ;
  assign out_r_TLAST[0] = \<const1> ;
  assign out_r_TSTRB[3] = \<const1> ;
  assign out_r_TSTRB[2] = \<const1> ;
  assign out_r_TSTRB[1] = \<const1> ;
  assign out_r_TSTRB[0] = \<const1> ;
  assign out_r_TUSER[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "12'b000000000001" *) 
  (* ap_ST_fsm_state10 = "12'b001000000000" *) 
  (* ap_ST_fsm_state11 = "12'b010000000000" *) 
  (* ap_ST_fsm_state12 = "12'b100000000000" *) 
  (* ap_ST_fsm_state2 = "12'b000000000010" *) 
  (* ap_ST_fsm_state3 = "12'b000000000100" *) 
  (* ap_ST_fsm_state4 = "12'b000000001000" *) 
  (* ap_ST_fsm_state5 = "12'b000000010000" *) 
  (* ap_ST_fsm_state6 = "12'b000000100000" *) 
  (* ap_ST_fsm_state7 = "12'b000001000000" *) 
  (* ap_ST_fsm_state8 = "12'b000010000000" *) 
  (* ap_ST_fsm_state9 = "12'b000100000000" *) 
  design_1_myproject_axi_0_0_myproject_axi inst
       (.ap_clk(ap_clk),
        .ap_local_block(NLW_inst_ap_local_block_UNCONNECTED),
        .ap_local_deadlock(NLW_inst_ap_local_deadlock_UNCONNECTED),
        .ap_rst_n(ap_rst_n),
        .in_r_TDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,in_r_TDATA[15:0]}),
        .in_r_TDEST(1'b0),
        .in_r_TID(1'b0),
        .in_r_TKEEP({1'b0,1'b0,1'b0,1'b0}),
        .in_r_TLAST(1'b0),
        .in_r_TREADY(in_r_TREADY),
        .in_r_TSTRB({1'b0,1'b0,1'b0,1'b0}),
        .in_r_TUSER(1'b0),
        .in_r_TVALID(in_r_TVALID),
        .out_r_TDATA(out_r_TDATA),
        .out_r_TDEST(NLW_inst_out_r_TDEST_UNCONNECTED[0]),
        .out_r_TID(NLW_inst_out_r_TID_UNCONNECTED[0]),
        .out_r_TKEEP(NLW_inst_out_r_TKEEP_UNCONNECTED[3:0]),
        .out_r_TLAST(NLW_inst_out_r_TLAST_UNCONNECTED[0]),
        .out_r_TREADY(out_r_TREADY),
        .out_r_TSTRB(NLW_inst_out_r_TSTRB_UNCONNECTED[3:0]),
        .out_r_TUSER(NLW_inst_out_r_TUSER_UNCONNECTED[0]),
        .out_r_TVALID(out_r_TVALID));
endmodule

(* ORIG_REF_NAME = "myproject_axi" *) (* ap_ST_fsm_state1 = "12'b000000000001" *) (* ap_ST_fsm_state10 = "12'b001000000000" *) 
(* ap_ST_fsm_state11 = "12'b010000000000" *) (* ap_ST_fsm_state12 = "12'b100000000000" *) (* ap_ST_fsm_state2 = "12'b000000000010" *) 
(* ap_ST_fsm_state3 = "12'b000000000100" *) (* ap_ST_fsm_state4 = "12'b000000001000" *) (* ap_ST_fsm_state5 = "12'b000000010000" *) 
(* ap_ST_fsm_state6 = "12'b000000100000" *) (* ap_ST_fsm_state7 = "12'b000001000000" *) (* ap_ST_fsm_state8 = "12'b000010000000" *) 
(* ap_ST_fsm_state9 = "12'b000100000000" *) (* hls_module = "yes" *) 
module design_1_myproject_axi_0_0_myproject_axi
   (ap_local_block,
    ap_local_deadlock,
    ap_clk,
    ap_rst_n,
    in_r_TDATA,
    in_r_TVALID,
    in_r_TREADY,
    in_r_TKEEP,
    in_r_TSTRB,
    in_r_TUSER,
    in_r_TLAST,
    in_r_TID,
    in_r_TDEST,
    out_r_TDATA,
    out_r_TVALID,
    out_r_TREADY,
    out_r_TKEEP,
    out_r_TSTRB,
    out_r_TUSER,
    out_r_TLAST,
    out_r_TID,
    out_r_TDEST);
  output ap_local_block;
  output ap_local_deadlock;
  input ap_clk;
  input ap_rst_n;
  input [31:0]in_r_TDATA;
  input in_r_TVALID;
  output in_r_TREADY;
  input [3:0]in_r_TKEEP;
  input [3:0]in_r_TSTRB;
  input [0:0]in_r_TUSER;
  input [0:0]in_r_TLAST;
  input [0:0]in_r_TID;
  input [0:0]in_r_TDEST;
  output [31:0]out_r_TDATA;
  output out_r_TVALID;
  input out_r_TREADY;
  output [3:0]out_r_TKEEP;
  output [3:0]out_r_TSTRB;
  output [0:0]out_r_TUSER;
  output [0:0]out_r_TLAST;
  output [0:0]out_r_TID;
  output [0:0]out_r_TDEST;

  wire \<const0> ;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state11;
  wire ap_CS_fsm_state12;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire ap_CS_fsm_state9;
  wire [11:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [31:0]in_r_TDATA;
  wire [15:0]in_r_TDATA_int_regslice;
  wire in_r_TREADY;
  wire in_r_TVALID;
  wire in_r_TVALID_int_regslice;
  wire [31:0]out_local_V_myproject_fu_121_ap_return;
  wire [31:0]\^out_r_TDATA ;
  wire out_r_TREADY;
  wire out_r_TVALID;
  wire p_0_in1_in;
  wire regslice_both_in_r_V_data_V_U_n_10;
  wire regslice_both_in_r_V_data_V_U_n_11;
  wire regslice_both_in_r_V_data_V_U_n_12;
  wire regslice_both_in_r_V_data_V_U_n_13;
  wire regslice_both_in_r_V_data_V_U_n_14;
  wire regslice_both_in_r_V_data_V_U_n_15;
  wire regslice_both_in_r_V_data_V_U_n_16;
  wire regslice_both_in_r_V_data_V_U_n_17;
  wire regslice_both_in_r_V_data_V_U_n_18;
  wire regslice_both_in_r_V_data_V_U_n_19;
  wire regslice_both_in_r_V_data_V_U_n_20;
  wire regslice_both_in_r_V_data_V_U_n_3;
  wire regslice_both_in_r_V_data_V_U_n_37;
  wire regslice_both_in_r_V_data_V_U_n_38;
  wire regslice_both_in_r_V_data_V_U_n_39;
  wire regslice_both_in_r_V_data_V_U_n_4;
  wire regslice_both_in_r_V_data_V_U_n_40;
  wire regslice_both_in_r_V_data_V_U_n_41;
  wire regslice_both_in_r_V_data_V_U_n_42;
  wire regslice_both_in_r_V_data_V_U_n_43;
  wire regslice_both_in_r_V_data_V_U_n_44;
  wire regslice_both_in_r_V_data_V_U_n_45;
  wire regslice_both_in_r_V_data_V_U_n_5;
  wire regslice_both_in_r_V_data_V_U_n_6;
  wire regslice_both_in_r_V_data_V_U_n_7;
  wire regslice_both_in_r_V_data_V_U_n_8;
  wire regslice_both_in_r_V_data_V_U_n_9;
  wire [14:0]ret_V_reg_300;
  wire \s_V_6_decision_function_1_fu_158/comparison_14_fu_62_p2 ;
  wire \s_V_6_decision_function_1_fu_158/comparison_15_fu_68_p2 ;
  wire \s_V_6_decision_function_1_fu_158/zext_ln148_fu_104_p1 ;
  wire [15:0]tmp_data_V_1_reg_250;
  wire [15:0]tmp_data_V_2_reg_255;
  wire [15:0]tmp_data_V_3_reg_260;
  wire [15:0]tmp_data_V_4_reg_265;
  wire [15:0]tmp_data_V_5_reg_270;
  wire [15:0]tmp_data_V_6_reg_275;
  wire [15:0]tmp_data_V_7_reg_280;
  wire [15:0]tmp_data_V_8_reg_285;
  wire [15:0]tmp_data_V_9_reg_290;
  wire [15:0]trunc_ln902_reg_307;

  assign ap_local_block = \<const0> ;
  assign ap_local_deadlock = \<const0> ;
  assign out_r_TDATA[31] = \^out_r_TDATA [31];
  assign out_r_TDATA[30] = \^out_r_TDATA [31];
  assign out_r_TDATA[29] = \^out_r_TDATA [31];
  assign out_r_TDATA[28] = \^out_r_TDATA [31];
  assign out_r_TDATA[27] = \^out_r_TDATA [31];
  assign out_r_TDATA[26] = \^out_r_TDATA [31];
  assign out_r_TDATA[25] = \^out_r_TDATA [31];
  assign out_r_TDATA[24] = \^out_r_TDATA [31];
  assign out_r_TDATA[23] = \^out_r_TDATA [31];
  assign out_r_TDATA[22] = \^out_r_TDATA [31];
  assign out_r_TDATA[21] = \^out_r_TDATA [31];
  assign out_r_TDATA[20] = \^out_r_TDATA [31];
  assign out_r_TDATA[19] = \^out_r_TDATA [31];
  assign out_r_TDATA[18] = \^out_r_TDATA [31];
  assign out_r_TDATA[17] = \^out_r_TDATA [31];
  assign out_r_TDATA[16] = \^out_r_TDATA [31];
  assign out_r_TDATA[15] = \^out_r_TDATA [31];
  assign out_r_TDATA[14:0] = \^out_r_TDATA [14:0];
  assign out_r_TDEST[0] = \<const0> ;
  assign out_r_TID[0] = \<const0> ;
  assign out_r_TKEEP[3] = \<const0> ;
  assign out_r_TKEEP[2] = \<const0> ;
  assign out_r_TKEEP[1] = \<const0> ;
  assign out_r_TKEEP[0] = \<const0> ;
  assign out_r_TLAST[0] = \<const0> ;
  assign out_r_TSTRB[3] = \<const0> ;
  assign out_r_TSTRB[2] = \<const0> ;
  assign out_r_TSTRB[1] = \<const0> ;
  assign out_r_TSTRB[0] = \<const0> ;
  assign out_r_TUSER[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_state1),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[10]),
        .Q(ap_CS_fsm_state11),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[11]),
        .Q(ap_CS_fsm_state12),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(in_r_TVALID_int_regslice),
        .D(ap_CS_fsm_state1),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(in_r_TVALID_int_regslice),
        .D(ap_CS_fsm_state2),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(in_r_TVALID_int_regslice),
        .D(ap_CS_fsm_state3),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(in_r_TVALID_int_regslice),
        .D(ap_CS_fsm_state4),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(in_r_TVALID_int_regslice),
        .D(ap_CS_fsm_state5),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(in_r_TVALID_int_regslice),
        .D(ap_CS_fsm_state6),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(in_r_TVALID_int_regslice),
        .D(ap_CS_fsm_state7),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(in_r_TVALID_int_regslice),
        .D(ap_CS_fsm_state8),
        .Q(ap_CS_fsm_state9),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(in_r_TVALID_int_regslice),
        .D(ap_CS_fsm_state9),
        .Q(ap_CS_fsm_state10),
        .R(ap_rst_n_inv));
  design_1_myproject_axi_0_0_myproject_axi_myproject out_local_V_myproject_fu_121
       (.\B_V_data_1_payload_A_reg[15] (\s_V_6_decision_function_1_fu_158/comparison_14_fu_62_p2 ),
        .CO(\s_V_6_decision_function_1_fu_158/zext_ln148_fu_104_p1 ),
        .DI({regslice_both_in_r_V_data_V_U_n_3,regslice_both_in_r_V_data_V_U_n_4}),
        .Q(tmp_data_V_2_reg_255),
        .S({regslice_both_in_r_V_data_V_U_n_5,regslice_both_in_r_V_data_V_U_n_6,regslice_both_in_r_V_data_V_U_n_7,regslice_both_in_r_V_data_V_U_n_8,regslice_both_in_r_V_data_V_U_n_9,regslice_both_in_r_V_data_V_U_n_10,regslice_both_in_r_V_data_V_U_n_11,regslice_both_in_r_V_data_V_U_n_12}),
        .ap_return__0_carry_i_18_0(tmp_data_V_5_reg_270),
        .ap_return__81_carry__0_0(regslice_both_in_r_V_data_V_U_n_45),
        .ap_return__81_carry__0_i_21({regslice_both_in_r_V_data_V_U_n_37,regslice_both_in_r_V_data_V_U_n_38,regslice_both_in_r_V_data_V_U_n_39,regslice_both_in_r_V_data_V_U_n_40,regslice_both_in_r_V_data_V_U_n_41,regslice_both_in_r_V_data_V_U_n_42,regslice_both_in_r_V_data_V_U_n_43,regslice_both_in_r_V_data_V_U_n_44}),
        .ap_return__81_carry__0_i_21_0({regslice_both_in_r_V_data_V_U_n_13,regslice_both_in_r_V_data_V_U_n_14,regslice_both_in_r_V_data_V_U_n_15,regslice_both_in_r_V_data_V_U_n_16,regslice_both_in_r_V_data_V_U_n_17,regslice_both_in_r_V_data_V_U_n_18,regslice_both_in_r_V_data_V_U_n_19,regslice_both_in_r_V_data_V_U_n_20}),
        .comparison_10_fu_54_p2_carry(tmp_data_V_4_reg_265),
        .comparison_12_fu_54_p2_carry(tmp_data_V_1_reg_250),
        .comparison_2_fu_60_p2_carry(tmp_data_V_6_reg_275),
        .comparison_9_fu_60_p2_carry(tmp_data_V_9_reg_290),
        .comparison_fu_48_p2_carry(tmp_data_V_8_reg_285),
        .comparison_fu_48_p2_carry_0(tmp_data_V_3_reg_260),
        .comparison_fu_56_p2_carry(tmp_data_V_7_reg_280),
        .out_local_V_myproject_fu_121_ap_return(out_local_V_myproject_fu_121_ap_return),
        .\tmp_data_V_6_reg_275_reg[15] (\s_V_6_decision_function_1_fu_158/comparison_15_fu_68_p2 ));
  FDRE \out_local_V_reg_295_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[31]),
        .Q(p_0_in1_in),
        .R(1'b0));
  design_1_myproject_axi_0_0_myproject_axi_regslice_both regslice_both_in_r_V_data_V_U
       (.\B_V_data_1_payload_A_reg[15]_0 ({regslice_both_in_r_V_data_V_U_n_13,regslice_both_in_r_V_data_V_U_n_14,regslice_both_in_r_V_data_V_U_n_15,regslice_both_in_r_V_data_V_U_n_16,regslice_both_in_r_V_data_V_U_n_17,regslice_both_in_r_V_data_V_U_n_18,regslice_both_in_r_V_data_V_U_n_19,regslice_both_in_r_V_data_V_U_n_20}),
        .\B_V_data_1_payload_A_reg[15]_1 ({regslice_both_in_r_V_data_V_U_n_37,regslice_both_in_r_V_data_V_U_n_38,regslice_both_in_r_V_data_V_U_n_39,regslice_both_in_r_V_data_V_U_n_40,regslice_both_in_r_V_data_V_U_n_41,regslice_both_in_r_V_data_V_U_n_42,regslice_both_in_r_V_data_V_U_n_43,regslice_both_in_r_V_data_V_U_n_44}),
        .B_V_data_1_sel_rd_reg_0(ap_CS_fsm_state6),
        .B_V_data_1_sel_rd_reg_1(ap_CS_fsm_state3),
        .B_V_data_1_sel_rd_reg_2(ap_CS_fsm_state4),
        .\B_V_data_1_state[1]_i_3_0 (ap_CS_fsm_state9),
        .\B_V_data_1_state[1]_i_3_1 (ap_CS_fsm_state7),
        .\B_V_data_1_state[1]_i_3_2 (ap_CS_fsm_state8),
        .\B_V_data_1_state[1]_i_3_3 (ap_CS_fsm_state2),
        .\B_V_data_1_state_reg[1]_0 (in_r_TREADY),
        .CO(\s_V_6_decision_function_1_fu_158/zext_ln148_fu_104_p1 ),
        .D(in_r_TDATA_int_regslice),
        .DI({regslice_both_in_r_V_data_V_U_n_3,regslice_both_in_r_V_data_V_U_n_4}),
        .E(ap_CS_fsm_state5),
        .Q(ap_CS_fsm_state1),
        .S({regslice_both_in_r_V_data_V_U_n_5,regslice_both_in_r_V_data_V_U_n_6,regslice_both_in_r_V_data_V_U_n_7,regslice_both_in_r_V_data_V_U_n_8,regslice_both_in_r_V_data_V_U_n_9,regslice_both_in_r_V_data_V_U_n_10,regslice_both_in_r_V_data_V_U_n_11,regslice_both_in_r_V_data_V_U_n_12}),
        .ap_CS_fsm_state10(ap_CS_fsm_state10),
        .ap_clk(ap_clk),
        .ap_return__81_carry__0_i_14(\s_V_6_decision_function_1_fu_158/comparison_14_fu_62_p2 ),
        .ap_return__81_carry__0_i_14_0(\s_V_6_decision_function_1_fu_158/comparison_15_fu_68_p2 ),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .in_r_TDATA(in_r_TDATA[15:0]),
        .in_r_TVALID(in_r_TVALID),
        .in_r_TVALID_int_regslice(in_r_TVALID_int_regslice),
        .\tmp_data_V_6_reg_275_reg[15] (regslice_both_in_r_V_data_V_U_n_45));
  design_1_myproject_axi_0_0_myproject_axi_regslice_both_0 regslice_both_out_r_V_data_V_U
       (.\B_V_data_1_state_reg[0]_0 (out_r_TVALID),
        .D({ap_NS_fsm[11:10],ap_NS_fsm[0]}),
        .Q({ap_CS_fsm_state12,ap_CS_fsm_state11,ap_CS_fsm_state1}),
        .ap_CS_fsm_state10(ap_CS_fsm_state10),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .in_r_TVALID_int_regslice(in_r_TVALID_int_regslice),
        .out_r_TDATA({\^out_r_TDATA [31],\^out_r_TDATA [14:0]}),
        .out_r_TREADY(out_r_TREADY),
        .p_0_in1_in(p_0_in1_in),
        .ret_V_reg_300(ret_V_reg_300),
        .trunc_ln902_reg_307(trunc_ln902_reg_307));
  FDRE \ret_V_reg_300_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[16]),
        .Q(ret_V_reg_300[0]),
        .R(1'b0));
  FDRE \ret_V_reg_300_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[26]),
        .Q(ret_V_reg_300[10]),
        .R(1'b0));
  FDRE \ret_V_reg_300_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[27]),
        .Q(ret_V_reg_300[11]),
        .R(1'b0));
  FDRE \ret_V_reg_300_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[28]),
        .Q(ret_V_reg_300[12]),
        .R(1'b0));
  FDRE \ret_V_reg_300_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[29]),
        .Q(ret_V_reg_300[13]),
        .R(1'b0));
  FDRE \ret_V_reg_300_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[30]),
        .Q(ret_V_reg_300[14]),
        .R(1'b0));
  FDRE \ret_V_reg_300_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[17]),
        .Q(ret_V_reg_300[1]),
        .R(1'b0));
  FDRE \ret_V_reg_300_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[18]),
        .Q(ret_V_reg_300[2]),
        .R(1'b0));
  FDRE \ret_V_reg_300_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[19]),
        .Q(ret_V_reg_300[3]),
        .R(1'b0));
  FDRE \ret_V_reg_300_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[20]),
        .Q(ret_V_reg_300[4]),
        .R(1'b0));
  FDRE \ret_V_reg_300_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[21]),
        .Q(ret_V_reg_300[5]),
        .R(1'b0));
  FDRE \ret_V_reg_300_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[22]),
        .Q(ret_V_reg_300[6]),
        .R(1'b0));
  FDRE \ret_V_reg_300_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[23]),
        .Q(ret_V_reg_300[7]),
        .R(1'b0));
  FDRE \ret_V_reg_300_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[24]),
        .Q(ret_V_reg_300[8]),
        .R(1'b0));
  FDRE \ret_V_reg_300_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[25]),
        .Q(ret_V_reg_300[9]),
        .R(1'b0));
  FDRE \tmp_data_V_1_reg_250_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(in_r_TDATA_int_regslice[0]),
        .Q(tmp_data_V_1_reg_250[0]),
        .R(1'b0));
  FDRE \tmp_data_V_1_reg_250_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(in_r_TDATA_int_regslice[10]),
        .Q(tmp_data_V_1_reg_250[10]),
        .R(1'b0));
  FDRE \tmp_data_V_1_reg_250_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(in_r_TDATA_int_regslice[11]),
        .Q(tmp_data_V_1_reg_250[11]),
        .R(1'b0));
  FDRE \tmp_data_V_1_reg_250_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(in_r_TDATA_int_regslice[12]),
        .Q(tmp_data_V_1_reg_250[12]),
        .R(1'b0));
  FDRE \tmp_data_V_1_reg_250_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(in_r_TDATA_int_regslice[13]),
        .Q(tmp_data_V_1_reg_250[13]),
        .R(1'b0));
  FDRE \tmp_data_V_1_reg_250_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(in_r_TDATA_int_regslice[14]),
        .Q(tmp_data_V_1_reg_250[14]),
        .R(1'b0));
  FDRE \tmp_data_V_1_reg_250_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(in_r_TDATA_int_regslice[15]),
        .Q(tmp_data_V_1_reg_250[15]),
        .R(1'b0));
  FDRE \tmp_data_V_1_reg_250_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(in_r_TDATA_int_regslice[1]),
        .Q(tmp_data_V_1_reg_250[1]),
        .R(1'b0));
  FDRE \tmp_data_V_1_reg_250_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(in_r_TDATA_int_regslice[2]),
        .Q(tmp_data_V_1_reg_250[2]),
        .R(1'b0));
  FDRE \tmp_data_V_1_reg_250_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(in_r_TDATA_int_regslice[3]),
        .Q(tmp_data_V_1_reg_250[3]),
        .R(1'b0));
  FDRE \tmp_data_V_1_reg_250_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(in_r_TDATA_int_regslice[4]),
        .Q(tmp_data_V_1_reg_250[4]),
        .R(1'b0));
  FDRE \tmp_data_V_1_reg_250_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(in_r_TDATA_int_regslice[5]),
        .Q(tmp_data_V_1_reg_250[5]),
        .R(1'b0));
  FDRE \tmp_data_V_1_reg_250_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(in_r_TDATA_int_regslice[6]),
        .Q(tmp_data_V_1_reg_250[6]),
        .R(1'b0));
  FDRE \tmp_data_V_1_reg_250_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(in_r_TDATA_int_regslice[7]),
        .Q(tmp_data_V_1_reg_250[7]),
        .R(1'b0));
  FDRE \tmp_data_V_1_reg_250_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(in_r_TDATA_int_regslice[8]),
        .Q(tmp_data_V_1_reg_250[8]),
        .R(1'b0));
  FDRE \tmp_data_V_1_reg_250_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(in_r_TDATA_int_regslice[9]),
        .Q(tmp_data_V_1_reg_250[9]),
        .R(1'b0));
  FDRE \tmp_data_V_2_reg_255_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(in_r_TDATA_int_regslice[0]),
        .Q(tmp_data_V_2_reg_255[0]),
        .R(1'b0));
  FDRE \tmp_data_V_2_reg_255_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(in_r_TDATA_int_regslice[10]),
        .Q(tmp_data_V_2_reg_255[10]),
        .R(1'b0));
  FDRE \tmp_data_V_2_reg_255_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(in_r_TDATA_int_regslice[11]),
        .Q(tmp_data_V_2_reg_255[11]),
        .R(1'b0));
  FDRE \tmp_data_V_2_reg_255_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(in_r_TDATA_int_regslice[12]),
        .Q(tmp_data_V_2_reg_255[12]),
        .R(1'b0));
  FDRE \tmp_data_V_2_reg_255_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(in_r_TDATA_int_regslice[13]),
        .Q(tmp_data_V_2_reg_255[13]),
        .R(1'b0));
  FDRE \tmp_data_V_2_reg_255_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(in_r_TDATA_int_regslice[14]),
        .Q(tmp_data_V_2_reg_255[14]),
        .R(1'b0));
  FDRE \tmp_data_V_2_reg_255_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(in_r_TDATA_int_regslice[15]),
        .Q(tmp_data_V_2_reg_255[15]),
        .R(1'b0));
  FDRE \tmp_data_V_2_reg_255_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(in_r_TDATA_int_regslice[1]),
        .Q(tmp_data_V_2_reg_255[1]),
        .R(1'b0));
  FDRE \tmp_data_V_2_reg_255_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(in_r_TDATA_int_regslice[2]),
        .Q(tmp_data_V_2_reg_255[2]),
        .R(1'b0));
  FDRE \tmp_data_V_2_reg_255_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(in_r_TDATA_int_regslice[3]),
        .Q(tmp_data_V_2_reg_255[3]),
        .R(1'b0));
  FDRE \tmp_data_V_2_reg_255_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(in_r_TDATA_int_regslice[4]),
        .Q(tmp_data_V_2_reg_255[4]),
        .R(1'b0));
  FDRE \tmp_data_V_2_reg_255_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(in_r_TDATA_int_regslice[5]),
        .Q(tmp_data_V_2_reg_255[5]),
        .R(1'b0));
  FDRE \tmp_data_V_2_reg_255_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(in_r_TDATA_int_regslice[6]),
        .Q(tmp_data_V_2_reg_255[6]),
        .R(1'b0));
  FDRE \tmp_data_V_2_reg_255_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(in_r_TDATA_int_regslice[7]),
        .Q(tmp_data_V_2_reg_255[7]),
        .R(1'b0));
  FDRE \tmp_data_V_2_reg_255_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(in_r_TDATA_int_regslice[8]),
        .Q(tmp_data_V_2_reg_255[8]),
        .R(1'b0));
  FDRE \tmp_data_V_2_reg_255_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(in_r_TDATA_int_regslice[9]),
        .Q(tmp_data_V_2_reg_255[9]),
        .R(1'b0));
  FDRE \tmp_data_V_3_reg_260_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(in_r_TDATA_int_regslice[0]),
        .Q(tmp_data_V_3_reg_260[0]),
        .R(1'b0));
  FDRE \tmp_data_V_3_reg_260_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(in_r_TDATA_int_regslice[10]),
        .Q(tmp_data_V_3_reg_260[10]),
        .R(1'b0));
  FDRE \tmp_data_V_3_reg_260_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(in_r_TDATA_int_regslice[11]),
        .Q(tmp_data_V_3_reg_260[11]),
        .R(1'b0));
  FDRE \tmp_data_V_3_reg_260_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(in_r_TDATA_int_regslice[12]),
        .Q(tmp_data_V_3_reg_260[12]),
        .R(1'b0));
  FDRE \tmp_data_V_3_reg_260_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(in_r_TDATA_int_regslice[13]),
        .Q(tmp_data_V_3_reg_260[13]),
        .R(1'b0));
  FDRE \tmp_data_V_3_reg_260_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(in_r_TDATA_int_regslice[14]),
        .Q(tmp_data_V_3_reg_260[14]),
        .R(1'b0));
  FDRE \tmp_data_V_3_reg_260_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(in_r_TDATA_int_regslice[15]),
        .Q(tmp_data_V_3_reg_260[15]),
        .R(1'b0));
  FDRE \tmp_data_V_3_reg_260_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(in_r_TDATA_int_regslice[1]),
        .Q(tmp_data_V_3_reg_260[1]),
        .R(1'b0));
  FDRE \tmp_data_V_3_reg_260_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(in_r_TDATA_int_regslice[2]),
        .Q(tmp_data_V_3_reg_260[2]),
        .R(1'b0));
  FDRE \tmp_data_V_3_reg_260_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(in_r_TDATA_int_regslice[3]),
        .Q(tmp_data_V_3_reg_260[3]),
        .R(1'b0));
  FDRE \tmp_data_V_3_reg_260_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(in_r_TDATA_int_regslice[4]),
        .Q(tmp_data_V_3_reg_260[4]),
        .R(1'b0));
  FDRE \tmp_data_V_3_reg_260_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(in_r_TDATA_int_regslice[5]),
        .Q(tmp_data_V_3_reg_260[5]),
        .R(1'b0));
  FDRE \tmp_data_V_3_reg_260_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(in_r_TDATA_int_regslice[6]),
        .Q(tmp_data_V_3_reg_260[6]),
        .R(1'b0));
  FDRE \tmp_data_V_3_reg_260_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(in_r_TDATA_int_regslice[7]),
        .Q(tmp_data_V_3_reg_260[7]),
        .R(1'b0));
  FDRE \tmp_data_V_3_reg_260_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(in_r_TDATA_int_regslice[8]),
        .Q(tmp_data_V_3_reg_260[8]),
        .R(1'b0));
  FDRE \tmp_data_V_3_reg_260_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(in_r_TDATA_int_regslice[9]),
        .Q(tmp_data_V_3_reg_260[9]),
        .R(1'b0));
  FDRE \tmp_data_V_4_reg_265_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(in_r_TDATA_int_regslice[0]),
        .Q(tmp_data_V_4_reg_265[0]),
        .R(1'b0));
  FDRE \tmp_data_V_4_reg_265_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(in_r_TDATA_int_regslice[10]),
        .Q(tmp_data_V_4_reg_265[10]),
        .R(1'b0));
  FDRE \tmp_data_V_4_reg_265_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(in_r_TDATA_int_regslice[11]),
        .Q(tmp_data_V_4_reg_265[11]),
        .R(1'b0));
  FDRE \tmp_data_V_4_reg_265_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(in_r_TDATA_int_regslice[12]),
        .Q(tmp_data_V_4_reg_265[12]),
        .R(1'b0));
  FDRE \tmp_data_V_4_reg_265_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(in_r_TDATA_int_regslice[13]),
        .Q(tmp_data_V_4_reg_265[13]),
        .R(1'b0));
  FDRE \tmp_data_V_4_reg_265_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(in_r_TDATA_int_regslice[14]),
        .Q(tmp_data_V_4_reg_265[14]),
        .R(1'b0));
  FDRE \tmp_data_V_4_reg_265_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(in_r_TDATA_int_regslice[15]),
        .Q(tmp_data_V_4_reg_265[15]),
        .R(1'b0));
  FDRE \tmp_data_V_4_reg_265_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(in_r_TDATA_int_regslice[1]),
        .Q(tmp_data_V_4_reg_265[1]),
        .R(1'b0));
  FDRE \tmp_data_V_4_reg_265_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(in_r_TDATA_int_regslice[2]),
        .Q(tmp_data_V_4_reg_265[2]),
        .R(1'b0));
  FDRE \tmp_data_V_4_reg_265_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(in_r_TDATA_int_regslice[3]),
        .Q(tmp_data_V_4_reg_265[3]),
        .R(1'b0));
  FDRE \tmp_data_V_4_reg_265_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(in_r_TDATA_int_regslice[4]),
        .Q(tmp_data_V_4_reg_265[4]),
        .R(1'b0));
  FDRE \tmp_data_V_4_reg_265_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(in_r_TDATA_int_regslice[5]),
        .Q(tmp_data_V_4_reg_265[5]),
        .R(1'b0));
  FDRE \tmp_data_V_4_reg_265_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(in_r_TDATA_int_regslice[6]),
        .Q(tmp_data_V_4_reg_265[6]),
        .R(1'b0));
  FDRE \tmp_data_V_4_reg_265_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(in_r_TDATA_int_regslice[7]),
        .Q(tmp_data_V_4_reg_265[7]),
        .R(1'b0));
  FDRE \tmp_data_V_4_reg_265_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(in_r_TDATA_int_regslice[8]),
        .Q(tmp_data_V_4_reg_265[8]),
        .R(1'b0));
  FDRE \tmp_data_V_4_reg_265_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(in_r_TDATA_int_regslice[9]),
        .Q(tmp_data_V_4_reg_265[9]),
        .R(1'b0));
  FDRE \tmp_data_V_5_reg_270_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(in_r_TDATA_int_regslice[0]),
        .Q(tmp_data_V_5_reg_270[0]),
        .R(1'b0));
  FDRE \tmp_data_V_5_reg_270_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(in_r_TDATA_int_regslice[10]),
        .Q(tmp_data_V_5_reg_270[10]),
        .R(1'b0));
  FDRE \tmp_data_V_5_reg_270_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(in_r_TDATA_int_regslice[11]),
        .Q(tmp_data_V_5_reg_270[11]),
        .R(1'b0));
  FDRE \tmp_data_V_5_reg_270_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(in_r_TDATA_int_regslice[12]),
        .Q(tmp_data_V_5_reg_270[12]),
        .R(1'b0));
  FDRE \tmp_data_V_5_reg_270_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(in_r_TDATA_int_regslice[13]),
        .Q(tmp_data_V_5_reg_270[13]),
        .R(1'b0));
  FDRE \tmp_data_V_5_reg_270_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(in_r_TDATA_int_regslice[14]),
        .Q(tmp_data_V_5_reg_270[14]),
        .R(1'b0));
  FDRE \tmp_data_V_5_reg_270_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(in_r_TDATA_int_regslice[15]),
        .Q(tmp_data_V_5_reg_270[15]),
        .R(1'b0));
  FDRE \tmp_data_V_5_reg_270_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(in_r_TDATA_int_regslice[1]),
        .Q(tmp_data_V_5_reg_270[1]),
        .R(1'b0));
  FDRE \tmp_data_V_5_reg_270_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(in_r_TDATA_int_regslice[2]),
        .Q(tmp_data_V_5_reg_270[2]),
        .R(1'b0));
  FDRE \tmp_data_V_5_reg_270_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(in_r_TDATA_int_regslice[3]),
        .Q(tmp_data_V_5_reg_270[3]),
        .R(1'b0));
  FDRE \tmp_data_V_5_reg_270_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(in_r_TDATA_int_regslice[4]),
        .Q(tmp_data_V_5_reg_270[4]),
        .R(1'b0));
  FDRE \tmp_data_V_5_reg_270_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(in_r_TDATA_int_regslice[5]),
        .Q(tmp_data_V_5_reg_270[5]),
        .R(1'b0));
  FDRE \tmp_data_V_5_reg_270_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(in_r_TDATA_int_regslice[6]),
        .Q(tmp_data_V_5_reg_270[6]),
        .R(1'b0));
  FDRE \tmp_data_V_5_reg_270_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(in_r_TDATA_int_regslice[7]),
        .Q(tmp_data_V_5_reg_270[7]),
        .R(1'b0));
  FDRE \tmp_data_V_5_reg_270_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(in_r_TDATA_int_regslice[8]),
        .Q(tmp_data_V_5_reg_270[8]),
        .R(1'b0));
  FDRE \tmp_data_V_5_reg_270_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(in_r_TDATA_int_regslice[9]),
        .Q(tmp_data_V_5_reg_270[9]),
        .R(1'b0));
  FDRE \tmp_data_V_6_reg_275_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(in_r_TDATA_int_regslice[0]),
        .Q(tmp_data_V_6_reg_275[0]),
        .R(1'b0));
  FDRE \tmp_data_V_6_reg_275_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(in_r_TDATA_int_regslice[10]),
        .Q(tmp_data_V_6_reg_275[10]),
        .R(1'b0));
  FDRE \tmp_data_V_6_reg_275_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(in_r_TDATA_int_regslice[11]),
        .Q(tmp_data_V_6_reg_275[11]),
        .R(1'b0));
  FDRE \tmp_data_V_6_reg_275_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(in_r_TDATA_int_regslice[12]),
        .Q(tmp_data_V_6_reg_275[12]),
        .R(1'b0));
  FDRE \tmp_data_V_6_reg_275_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(in_r_TDATA_int_regslice[13]),
        .Q(tmp_data_V_6_reg_275[13]),
        .R(1'b0));
  FDRE \tmp_data_V_6_reg_275_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(in_r_TDATA_int_regslice[14]),
        .Q(tmp_data_V_6_reg_275[14]),
        .R(1'b0));
  FDRE \tmp_data_V_6_reg_275_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(in_r_TDATA_int_regslice[15]),
        .Q(tmp_data_V_6_reg_275[15]),
        .R(1'b0));
  FDRE \tmp_data_V_6_reg_275_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(in_r_TDATA_int_regslice[1]),
        .Q(tmp_data_V_6_reg_275[1]),
        .R(1'b0));
  FDRE \tmp_data_V_6_reg_275_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(in_r_TDATA_int_regslice[2]),
        .Q(tmp_data_V_6_reg_275[2]),
        .R(1'b0));
  FDRE \tmp_data_V_6_reg_275_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(in_r_TDATA_int_regslice[3]),
        .Q(tmp_data_V_6_reg_275[3]),
        .R(1'b0));
  FDRE \tmp_data_V_6_reg_275_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(in_r_TDATA_int_regslice[4]),
        .Q(tmp_data_V_6_reg_275[4]),
        .R(1'b0));
  FDRE \tmp_data_V_6_reg_275_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(in_r_TDATA_int_regslice[5]),
        .Q(tmp_data_V_6_reg_275[5]),
        .R(1'b0));
  FDRE \tmp_data_V_6_reg_275_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(in_r_TDATA_int_regslice[6]),
        .Q(tmp_data_V_6_reg_275[6]),
        .R(1'b0));
  FDRE \tmp_data_V_6_reg_275_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(in_r_TDATA_int_regslice[7]),
        .Q(tmp_data_V_6_reg_275[7]),
        .R(1'b0));
  FDRE \tmp_data_V_6_reg_275_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(in_r_TDATA_int_regslice[8]),
        .Q(tmp_data_V_6_reg_275[8]),
        .R(1'b0));
  FDRE \tmp_data_V_6_reg_275_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(in_r_TDATA_int_regslice[9]),
        .Q(tmp_data_V_6_reg_275[9]),
        .R(1'b0));
  FDRE \tmp_data_V_7_reg_280_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(in_r_TDATA_int_regslice[0]),
        .Q(tmp_data_V_7_reg_280[0]),
        .R(1'b0));
  FDRE \tmp_data_V_7_reg_280_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(in_r_TDATA_int_regslice[10]),
        .Q(tmp_data_V_7_reg_280[10]),
        .R(1'b0));
  FDRE \tmp_data_V_7_reg_280_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(in_r_TDATA_int_regslice[11]),
        .Q(tmp_data_V_7_reg_280[11]),
        .R(1'b0));
  FDRE \tmp_data_V_7_reg_280_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(in_r_TDATA_int_regslice[12]),
        .Q(tmp_data_V_7_reg_280[12]),
        .R(1'b0));
  FDRE \tmp_data_V_7_reg_280_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(in_r_TDATA_int_regslice[13]),
        .Q(tmp_data_V_7_reg_280[13]),
        .R(1'b0));
  FDRE \tmp_data_V_7_reg_280_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(in_r_TDATA_int_regslice[14]),
        .Q(tmp_data_V_7_reg_280[14]),
        .R(1'b0));
  FDRE \tmp_data_V_7_reg_280_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(in_r_TDATA_int_regslice[15]),
        .Q(tmp_data_V_7_reg_280[15]),
        .R(1'b0));
  FDRE \tmp_data_V_7_reg_280_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(in_r_TDATA_int_regslice[1]),
        .Q(tmp_data_V_7_reg_280[1]),
        .R(1'b0));
  FDRE \tmp_data_V_7_reg_280_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(in_r_TDATA_int_regslice[2]),
        .Q(tmp_data_V_7_reg_280[2]),
        .R(1'b0));
  FDRE \tmp_data_V_7_reg_280_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(in_r_TDATA_int_regslice[3]),
        .Q(tmp_data_V_7_reg_280[3]),
        .R(1'b0));
  FDRE \tmp_data_V_7_reg_280_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(in_r_TDATA_int_regslice[4]),
        .Q(tmp_data_V_7_reg_280[4]),
        .R(1'b0));
  FDRE \tmp_data_V_7_reg_280_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(in_r_TDATA_int_regslice[5]),
        .Q(tmp_data_V_7_reg_280[5]),
        .R(1'b0));
  FDRE \tmp_data_V_7_reg_280_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(in_r_TDATA_int_regslice[6]),
        .Q(tmp_data_V_7_reg_280[6]),
        .R(1'b0));
  FDRE \tmp_data_V_7_reg_280_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(in_r_TDATA_int_regslice[7]),
        .Q(tmp_data_V_7_reg_280[7]),
        .R(1'b0));
  FDRE \tmp_data_V_7_reg_280_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(in_r_TDATA_int_regslice[8]),
        .Q(tmp_data_V_7_reg_280[8]),
        .R(1'b0));
  FDRE \tmp_data_V_7_reg_280_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(in_r_TDATA_int_regslice[9]),
        .Q(tmp_data_V_7_reg_280[9]),
        .R(1'b0));
  FDRE \tmp_data_V_8_reg_285_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(in_r_TDATA_int_regslice[0]),
        .Q(tmp_data_V_8_reg_285[0]),
        .R(1'b0));
  FDRE \tmp_data_V_8_reg_285_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(in_r_TDATA_int_regslice[10]),
        .Q(tmp_data_V_8_reg_285[10]),
        .R(1'b0));
  FDRE \tmp_data_V_8_reg_285_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(in_r_TDATA_int_regslice[11]),
        .Q(tmp_data_V_8_reg_285[11]),
        .R(1'b0));
  FDRE \tmp_data_V_8_reg_285_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(in_r_TDATA_int_regslice[12]),
        .Q(tmp_data_V_8_reg_285[12]),
        .R(1'b0));
  FDRE \tmp_data_V_8_reg_285_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(in_r_TDATA_int_regslice[13]),
        .Q(tmp_data_V_8_reg_285[13]),
        .R(1'b0));
  FDRE \tmp_data_V_8_reg_285_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(in_r_TDATA_int_regslice[14]),
        .Q(tmp_data_V_8_reg_285[14]),
        .R(1'b0));
  FDRE \tmp_data_V_8_reg_285_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(in_r_TDATA_int_regslice[15]),
        .Q(tmp_data_V_8_reg_285[15]),
        .R(1'b0));
  FDRE \tmp_data_V_8_reg_285_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(in_r_TDATA_int_regslice[1]),
        .Q(tmp_data_V_8_reg_285[1]),
        .R(1'b0));
  FDRE \tmp_data_V_8_reg_285_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(in_r_TDATA_int_regslice[2]),
        .Q(tmp_data_V_8_reg_285[2]),
        .R(1'b0));
  FDRE \tmp_data_V_8_reg_285_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(in_r_TDATA_int_regslice[3]),
        .Q(tmp_data_V_8_reg_285[3]),
        .R(1'b0));
  FDRE \tmp_data_V_8_reg_285_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(in_r_TDATA_int_regslice[4]),
        .Q(tmp_data_V_8_reg_285[4]),
        .R(1'b0));
  FDRE \tmp_data_V_8_reg_285_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(in_r_TDATA_int_regslice[5]),
        .Q(tmp_data_V_8_reg_285[5]),
        .R(1'b0));
  FDRE \tmp_data_V_8_reg_285_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(in_r_TDATA_int_regslice[6]),
        .Q(tmp_data_V_8_reg_285[6]),
        .R(1'b0));
  FDRE \tmp_data_V_8_reg_285_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(in_r_TDATA_int_regslice[7]),
        .Q(tmp_data_V_8_reg_285[7]),
        .R(1'b0));
  FDRE \tmp_data_V_8_reg_285_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(in_r_TDATA_int_regslice[8]),
        .Q(tmp_data_V_8_reg_285[8]),
        .R(1'b0));
  FDRE \tmp_data_V_8_reg_285_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(in_r_TDATA_int_regslice[9]),
        .Q(tmp_data_V_8_reg_285[9]),
        .R(1'b0));
  FDRE \tmp_data_V_9_reg_290_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(in_r_TDATA_int_regslice[0]),
        .Q(tmp_data_V_9_reg_290[0]),
        .R(1'b0));
  FDRE \tmp_data_V_9_reg_290_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(in_r_TDATA_int_regslice[10]),
        .Q(tmp_data_V_9_reg_290[10]),
        .R(1'b0));
  FDRE \tmp_data_V_9_reg_290_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(in_r_TDATA_int_regslice[11]),
        .Q(tmp_data_V_9_reg_290[11]),
        .R(1'b0));
  FDRE \tmp_data_V_9_reg_290_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(in_r_TDATA_int_regslice[12]),
        .Q(tmp_data_V_9_reg_290[12]),
        .R(1'b0));
  FDRE \tmp_data_V_9_reg_290_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(in_r_TDATA_int_regslice[13]),
        .Q(tmp_data_V_9_reg_290[13]),
        .R(1'b0));
  FDRE \tmp_data_V_9_reg_290_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(in_r_TDATA_int_regslice[14]),
        .Q(tmp_data_V_9_reg_290[14]),
        .R(1'b0));
  FDRE \tmp_data_V_9_reg_290_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(in_r_TDATA_int_regslice[15]),
        .Q(tmp_data_V_9_reg_290[15]),
        .R(1'b0));
  FDRE \tmp_data_V_9_reg_290_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(in_r_TDATA_int_regslice[1]),
        .Q(tmp_data_V_9_reg_290[1]),
        .R(1'b0));
  FDRE \tmp_data_V_9_reg_290_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(in_r_TDATA_int_regslice[2]),
        .Q(tmp_data_V_9_reg_290[2]),
        .R(1'b0));
  FDRE \tmp_data_V_9_reg_290_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(in_r_TDATA_int_regslice[3]),
        .Q(tmp_data_V_9_reg_290[3]),
        .R(1'b0));
  FDRE \tmp_data_V_9_reg_290_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(in_r_TDATA_int_regslice[4]),
        .Q(tmp_data_V_9_reg_290[4]),
        .R(1'b0));
  FDRE \tmp_data_V_9_reg_290_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(in_r_TDATA_int_regslice[5]),
        .Q(tmp_data_V_9_reg_290[5]),
        .R(1'b0));
  FDRE \tmp_data_V_9_reg_290_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(in_r_TDATA_int_regslice[6]),
        .Q(tmp_data_V_9_reg_290[6]),
        .R(1'b0));
  FDRE \tmp_data_V_9_reg_290_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(in_r_TDATA_int_regslice[7]),
        .Q(tmp_data_V_9_reg_290[7]),
        .R(1'b0));
  FDRE \tmp_data_V_9_reg_290_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(in_r_TDATA_int_regslice[8]),
        .Q(tmp_data_V_9_reg_290[8]),
        .R(1'b0));
  FDRE \tmp_data_V_9_reg_290_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(in_r_TDATA_int_regslice[9]),
        .Q(tmp_data_V_9_reg_290[9]),
        .R(1'b0));
  FDRE \trunc_ln902_reg_307_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[0]),
        .Q(trunc_ln902_reg_307[0]),
        .R(1'b0));
  FDRE \trunc_ln902_reg_307_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[10]),
        .Q(trunc_ln902_reg_307[10]),
        .R(1'b0));
  FDRE \trunc_ln902_reg_307_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[11]),
        .Q(trunc_ln902_reg_307[11]),
        .R(1'b0));
  FDRE \trunc_ln902_reg_307_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[12]),
        .Q(trunc_ln902_reg_307[12]),
        .R(1'b0));
  FDRE \trunc_ln902_reg_307_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[13]),
        .Q(trunc_ln902_reg_307[13]),
        .R(1'b0));
  FDRE \trunc_ln902_reg_307_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[14]),
        .Q(trunc_ln902_reg_307[14]),
        .R(1'b0));
  FDRE \trunc_ln902_reg_307_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[15]),
        .Q(trunc_ln902_reg_307[15]),
        .R(1'b0));
  FDRE \trunc_ln902_reg_307_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[1]),
        .Q(trunc_ln902_reg_307[1]),
        .R(1'b0));
  FDRE \trunc_ln902_reg_307_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[2]),
        .Q(trunc_ln902_reg_307[2]),
        .R(1'b0));
  FDRE \trunc_ln902_reg_307_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[3]),
        .Q(trunc_ln902_reg_307[3]),
        .R(1'b0));
  FDRE \trunc_ln902_reg_307_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[4]),
        .Q(trunc_ln902_reg_307[4]),
        .R(1'b0));
  FDRE \trunc_ln902_reg_307_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[5]),
        .Q(trunc_ln902_reg_307[5]),
        .R(1'b0));
  FDRE \trunc_ln902_reg_307_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[6]),
        .Q(trunc_ln902_reg_307[6]),
        .R(1'b0));
  FDRE \trunc_ln902_reg_307_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[7]),
        .Q(trunc_ln902_reg_307[7]),
        .R(1'b0));
  FDRE \trunc_ln902_reg_307_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[8]),
        .Q(trunc_ln902_reg_307[8]),
        .R(1'b0));
  FDRE \trunc_ln902_reg_307_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(out_local_V_myproject_fu_121_ap_return[9]),
        .Q(trunc_ln902_reg_307[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "myproject_axi_decision_function" *) 
module design_1_myproject_axi_0_0_myproject_axi_decision_function
   (\tmp_data_V_5_reg_270_reg[15] ,
    \tmp_data_V_3_reg_260_reg[15] ,
    \tmp_data_V_3_reg_260_reg[15]_0 ,
    \tmp_data_V_3_reg_260_reg[15]_1 ,
    DI,
    S,
    ap_return__0_carry_i_1,
    ap_return__0_carry_i_1_0,
    CO,
    ap_return__0_carry__0);
  output [0:0]\tmp_data_V_5_reg_270_reg[15] ;
  output [0:0]\tmp_data_V_3_reg_260_reg[15] ;
  output \tmp_data_V_3_reg_260_reg[15]_0 ;
  output \tmp_data_V_3_reg_260_reg[15]_1 ;
  input [7:0]DI;
  input [7:0]S;
  input [0:0]ap_return__0_carry_i_1;
  input [0:0]ap_return__0_carry_i_1_0;
  input [0:0]CO;
  input [0:0]ap_return__0_carry__0;

  wire [0:0]CO;
  wire [7:0]DI;
  wire [7:0]S;
  wire [0:0]ap_return__0_carry__0;
  wire [0:0]ap_return__0_carry_i_1;
  wire [0:0]ap_return__0_carry_i_1_0;
  wire comparison_17_fu_60_p2_carry_n_1;
  wire comparison_17_fu_60_p2_carry_n_2;
  wire comparison_17_fu_60_p2_carry_n_3;
  wire comparison_17_fu_60_p2_carry_n_4;
  wire comparison_17_fu_60_p2_carry_n_5;
  wire comparison_17_fu_60_p2_carry_n_6;
  wire comparison_17_fu_60_p2_carry_n_7;
  wire [0:0]\tmp_data_V_3_reg_260_reg[15] ;
  wire \tmp_data_V_3_reg_260_reg[15]_0 ;
  wire \tmp_data_V_3_reg_260_reg[15]_1 ;
  wire [0:0]\tmp_data_V_5_reg_270_reg[15] ;
  wire [7:0]NLW_comparison_17_fu_60_p2_carry_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h04000404)) 
    ap_return__0_carry__0_i_3
       (.I0(ap_return__0_carry_i_1),
        .I1(ap_return__0_carry_i_1_0),
        .I2(\tmp_data_V_5_reg_270_reg[15] ),
        .I3(CO),
        .I4(ap_return__0_carry__0),
        .O(\tmp_data_V_3_reg_260_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    ap_return__0_carry_i_16
       (.I0(ap_return__0_carry_i_1_0),
        .I1(ap_return__0_carry_i_1),
        .I2(\tmp_data_V_5_reg_270_reg[15] ),
        .O(\tmp_data_V_3_reg_260_reg[15]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    ap_return__0_carry_i_25
       (.I0(ap_return__0_carry_i_1),
        .I1(\tmp_data_V_5_reg_270_reg[15] ),
        .I2(ap_return__0_carry_i_1_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_17_fu_60_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\tmp_data_V_5_reg_270_reg[15] ,comparison_17_fu_60_p2_carry_n_1,comparison_17_fu_60_p2_carry_n_2,comparison_17_fu_60_p2_carry_n_3,comparison_17_fu_60_p2_carry_n_4,comparison_17_fu_60_p2_carry_n_5,comparison_17_fu_60_p2_carry_n_6,comparison_17_fu_60_p2_carry_n_7}),
        .DI(DI),
        .O(NLW_comparison_17_fu_60_p2_carry_O_UNCONNECTED[7:0]),
        .S(S));
endmodule

(* ORIG_REF_NAME = "myproject_axi_decision_function_1" *) 
module design_1_myproject_axi_0_0_myproject_axi_decision_function_1
   (\tmp_data_V_7_reg_280_reg[15] ,
    \B_V_data_1_payload_A_reg[15] ,
    \tmp_data_V_6_reg_275_reg[15] ,
    \tmp_data_V_6_reg_275_reg[15]_0 ,
    \tmp_data_V_7_reg_280_reg[15]_0 ,
    \tmp_data_V_8_reg_285_reg[15] ,
    DI,
    S,
    ap_return__81_carry__0_i_21,
    ap_return__81_carry__0_i_21_0,
    ap_return__81_carry__0,
    ap_return__81_carry__0_0,
    ap_return__81_carry__0_1,
    ap_return__81_carry__0_2,
    CO,
    ap_return__81_carry__0_3,
    ap_return__81_carry__0_4);
  output [0:0]\tmp_data_V_7_reg_280_reg[15] ;
  output [0:0]\B_V_data_1_payload_A_reg[15] ;
  output [0:0]\tmp_data_V_6_reg_275_reg[15] ;
  output \tmp_data_V_6_reg_275_reg[15]_0 ;
  output \tmp_data_V_7_reg_280_reg[15]_0 ;
  output [0:0]\tmp_data_V_8_reg_285_reg[15] ;
  input [1:0]DI;
  input [7:0]S;
  input [7:0]ap_return__81_carry__0_i_21;
  input [7:0]ap_return__81_carry__0_i_21_0;
  input [0:0]ap_return__81_carry__0;
  input ap_return__81_carry__0_0;
  input ap_return__81_carry__0_1;
  input [0:0]ap_return__81_carry__0_2;
  input [0:0]CO;
  input [0:0]ap_return__81_carry__0_3;
  input [0:0]ap_return__81_carry__0_4;

  wire [0:0]\B_V_data_1_payload_A_reg[15] ;
  wire [0:0]CO;
  wire [1:0]DI;
  wire [7:0]S;
  wire [0:0]ap_return__81_carry__0;
  wire ap_return__81_carry__0_0;
  wire ap_return__81_carry__0_1;
  wire [0:0]ap_return__81_carry__0_2;
  wire [0:0]ap_return__81_carry__0_3;
  wire [0:0]ap_return__81_carry__0_4;
  wire [7:0]ap_return__81_carry__0_i_21;
  wire [7:0]ap_return__81_carry__0_i_21_0;
  wire comparison_14_fu_62_p2_carry_n_1;
  wire comparison_14_fu_62_p2_carry_n_2;
  wire comparison_14_fu_62_p2_carry_n_3;
  wire comparison_14_fu_62_p2_carry_n_4;
  wire comparison_14_fu_62_p2_carry_n_5;
  wire comparison_14_fu_62_p2_carry_n_6;
  wire comparison_14_fu_62_p2_carry_n_7;
  wire comparison_fu_56_p2_carry_n_1;
  wire comparison_fu_56_p2_carry_n_2;
  wire comparison_fu_56_p2_carry_n_3;
  wire comparison_fu_56_p2_carry_n_4;
  wire comparison_fu_56_p2_carry_n_5;
  wire comparison_fu_56_p2_carry_n_6;
  wire comparison_fu_56_p2_carry_n_7;
  wire [0:0]\tmp_data_V_6_reg_275_reg[15] ;
  wire \tmp_data_V_6_reg_275_reg[15]_0 ;
  wire [0:0]\tmp_data_V_7_reg_280_reg[15] ;
  wire \tmp_data_V_7_reg_280_reg[15]_0 ;
  wire [0:0]\tmp_data_V_8_reg_285_reg[15] ;
  wire [7:0]NLW_comparison_14_fu_62_p2_carry_O_UNCONNECTED;
  wire [7:0]NLW_comparison_fu_56_p2_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hA9A9A956565656A9)) 
    ap_return__81_carry__0_i_13
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(ap_return__81_carry__0_2),
        .I2(CO),
        .I3(ap_return__81_carry__0_3),
        .I4(ap_return__81_carry__0_4),
        .I5(\tmp_data_V_7_reg_280_reg[15]_0 ),
        .O(\tmp_data_V_8_reg_285_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ap_return__81_carry__0_i_20
       (.I0(ap_return__81_carry__0),
        .I1(\tmp_data_V_7_reg_280_reg[15] ),
        .I2(\B_V_data_1_payload_A_reg[15] ),
        .O(\tmp_data_V_6_reg_275_reg[15]_0 ));
  LUT5 #(
    .INIT(32'hE0FF00E0)) 
    ap_return__81_carry__0_i_5
       (.I0(\B_V_data_1_payload_A_reg[15] ),
        .I1(ap_return__81_carry__0),
        .I2(\tmp_data_V_7_reg_280_reg[15] ),
        .I3(ap_return__81_carry__0_0),
        .I4(ap_return__81_carry__0_1),
        .O(\tmp_data_V_6_reg_275_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ap_return__81_carry_i_16
       (.I0(\tmp_data_V_7_reg_280_reg[15] ),
        .I1(ap_return__81_carry__0),
        .I2(\B_V_data_1_payload_A_reg[15] ),
        .O(\tmp_data_V_7_reg_280_reg[15]_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_14_fu_62_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\B_V_data_1_payload_A_reg[15] ,comparison_14_fu_62_p2_carry_n_1,comparison_14_fu_62_p2_carry_n_2,comparison_14_fu_62_p2_carry_n_3,comparison_14_fu_62_p2_carry_n_4,comparison_14_fu_62_p2_carry_n_5,comparison_14_fu_62_p2_carry_n_6,comparison_14_fu_62_p2_carry_n_7}),
        .DI(ap_return__81_carry__0_i_21),
        .O(NLW_comparison_14_fu_62_p2_carry_O_UNCONNECTED[7:0]),
        .S(ap_return__81_carry__0_i_21_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_fu_56_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\tmp_data_V_7_reg_280_reg[15] ,comparison_fu_56_p2_carry_n_1,comparison_fu_56_p2_carry_n_2,comparison_fu_56_p2_carry_n_3,comparison_fu_56_p2_carry_n_4,comparison_fu_56_p2_carry_n_5,comparison_fu_56_p2_carry_n_6,comparison_fu_56_p2_carry_n_7}),
        .DI({DI[1],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DI[0]}),
        .O(NLW_comparison_fu_56_p2_carry_O_UNCONNECTED[7:0]),
        .S(S));
endmodule

(* ORIG_REF_NAME = "myproject_axi_decision_function_2" *) 
module design_1_myproject_axi_0_0_myproject_axi_decision_function_2
   (\tmp_data_V_1_reg_250_reg[15] ,
    \tmp_data_V_1_reg_250_reg[15]_0 ,
    \tmp_data_V_7_reg_280_reg[15] ,
    \tmp_data_V_1_reg_250_reg[15]_1 ,
    \tmp_data_V_8_reg_285_reg[15] ,
    \tmp_data_V_1_reg_250_reg[15]_2 ,
    \tmp_data_V_1_reg_250_reg[15]_3 ,
    \tmp_data_V_1_reg_250_reg[15]_4 ,
    \tmp_data_V_1_reg_250_reg[15]_5 ,
    \tmp_data_V_1_reg_250_reg[15]_6 ,
    ap_return__0_carry__2,
    ap_return__0_carry__2_0,
    ap_return__0_carry__2_1,
    ap_return__0_carry__2_2,
    ap_return__0_carry__2_3,
    \tmp_data_V_6_reg_275_reg[15] ,
    \tmp_data_V_7_reg_280_reg[15]_0 ,
    \tmp_data_V_1_reg_250_reg[15]_7 ,
    \tmp_data_V_1_reg_250_reg[15]_8 ,
    DI,
    S,
    ap_return__81_carry_i_3,
    ap_return__81_carry_i_3_0,
    ap_return__81_carry_i_9_0,
    ap_return__81_carry_i_9_1,
    ap_return__81_carry,
    CO,
    ap_return__81_carry__2,
    ap_return__81_carry_0,
    ap_return__81_carry_1,
    ap_return__81_carry_2,
    ap_return__81_carry__2_0,
    ap_return__81_carry_3,
    ap_return__81_carry__0,
    ap_return__163_carry__2_i_8,
    O,
    ap_return__163_carry__2_i_8_0,
    ap_return__163_carry__2_i_8_1,
    ap_return__81_carry_4,
    ap_return__81_carry__0_0);
  output [0:0]\tmp_data_V_1_reg_250_reg[15] ;
  output [0:0]\tmp_data_V_1_reg_250_reg[15]_0 ;
  output [4:0]\tmp_data_V_7_reg_280_reg[15] ;
  output \tmp_data_V_1_reg_250_reg[15]_1 ;
  output [1:0]\tmp_data_V_8_reg_285_reg[15] ;
  output \tmp_data_V_1_reg_250_reg[15]_2 ;
  output \tmp_data_V_1_reg_250_reg[15]_3 ;
  output [0:0]\tmp_data_V_1_reg_250_reg[15]_4 ;
  output \tmp_data_V_1_reg_250_reg[15]_5 ;
  output \tmp_data_V_1_reg_250_reg[15]_6 ;
  output ap_return__0_carry__2;
  output ap_return__0_carry__2_0;
  output ap_return__0_carry__2_1;
  output ap_return__0_carry__2_2;
  output ap_return__0_carry__2_3;
  output [1:0]\tmp_data_V_6_reg_275_reg[15] ;
  output [3:0]\tmp_data_V_7_reg_280_reg[15]_0 ;
  output [7:0]\tmp_data_V_1_reg_250_reg[15]_7 ;
  output [7:0]\tmp_data_V_1_reg_250_reg[15]_8 ;
  input [7:0]DI;
  input [7:0]S;
  input [1:0]ap_return__81_carry_i_3;
  input [7:0]ap_return__81_carry_i_3_0;
  input [7:0]ap_return__81_carry_i_9_0;
  input [7:0]ap_return__81_carry_i_9_1;
  input [0:0]ap_return__81_carry;
  input [0:0]CO;
  input ap_return__81_carry__2;
  input [0:0]ap_return__81_carry_0;
  input [0:0]ap_return__81_carry_1;
  input [0:0]ap_return__81_carry_2;
  input ap_return__81_carry__2_0;
  input ap_return__81_carry_3;
  input ap_return__81_carry__0;
  input [5:0]ap_return__163_carry__2_i_8;
  input [5:0]O;
  input ap_return__163_carry__2_i_8_0;
  input ap_return__163_carry__2_i_8_1;
  input [0:0]ap_return__81_carry_4;
  input ap_return__81_carry__0_0;

  wire [0:0]CO;
  wire [7:0]DI;
  wire [5:0]O;
  wire [7:0]S;
  wire ap_return__0_carry__2;
  wire ap_return__0_carry__2_0;
  wire ap_return__0_carry__2_1;
  wire ap_return__0_carry__2_2;
  wire ap_return__0_carry__2_3;
  wire [5:0]ap_return__163_carry__2_i_8;
  wire ap_return__163_carry__2_i_8_0;
  wire ap_return__163_carry__2_i_8_1;
  wire [0:0]ap_return__81_carry;
  wire [0:0]ap_return__81_carry_0;
  wire [0:0]ap_return__81_carry_1;
  wire [0:0]ap_return__81_carry_2;
  wire ap_return__81_carry_3;
  wire [0:0]ap_return__81_carry_4;
  wire ap_return__81_carry__0;
  wire ap_return__81_carry__0_0;
  wire ap_return__81_carry__2;
  wire ap_return__81_carry__2_0;
  wire [1:0]ap_return__81_carry_i_3;
  wire [7:0]ap_return__81_carry_i_3_0;
  wire [7:0]ap_return__81_carry_i_9_0;
  wire [7:0]ap_return__81_carry_i_9_1;
  wire comparison_12_fu_54_p2_carry_n_1;
  wire comparison_12_fu_54_p2_carry_n_2;
  wire comparison_12_fu_54_p2_carry_n_3;
  wire comparison_12_fu_54_p2_carry_n_4;
  wire comparison_12_fu_54_p2_carry_n_5;
  wire comparison_12_fu_54_p2_carry_n_6;
  wire comparison_12_fu_54_p2_carry_n_7;
  wire comparison_13_fu_60_p2;
  wire comparison_13_fu_60_p2_carry_n_1;
  wire comparison_13_fu_60_p2_carry_n_2;
  wire comparison_13_fu_60_p2_carry_n_3;
  wire comparison_13_fu_60_p2_carry_n_4;
  wire comparison_13_fu_60_p2_carry_n_5;
  wire comparison_13_fu_60_p2_carry_n_6;
  wire comparison_13_fu_60_p2_carry_n_7;
  wire comparison_fu_48_p2_carry_n_1;
  wire comparison_fu_48_p2_carry_n_2;
  wire comparison_fu_48_p2_carry_n_3;
  wire comparison_fu_48_p2_carry_n_4;
  wire comparison_fu_48_p2_carry_n_5;
  wire comparison_fu_48_p2_carry_n_6;
  wire comparison_fu_48_p2_carry_n_7;
  wire [0:0]\tmp_data_V_1_reg_250_reg[15] ;
  wire [0:0]\tmp_data_V_1_reg_250_reg[15]_0 ;
  wire \tmp_data_V_1_reg_250_reg[15]_1 ;
  wire \tmp_data_V_1_reg_250_reg[15]_2 ;
  wire \tmp_data_V_1_reg_250_reg[15]_3 ;
  wire [0:0]\tmp_data_V_1_reg_250_reg[15]_4 ;
  wire \tmp_data_V_1_reg_250_reg[15]_5 ;
  wire \tmp_data_V_1_reg_250_reg[15]_6 ;
  wire [7:0]\tmp_data_V_1_reg_250_reg[15]_7 ;
  wire [7:0]\tmp_data_V_1_reg_250_reg[15]_8 ;
  wire [1:0]\tmp_data_V_6_reg_275_reg[15] ;
  wire [4:0]\tmp_data_V_7_reg_280_reg[15] ;
  wire [3:0]\tmp_data_V_7_reg_280_reg[15]_0 ;
  wire [1:0]\tmp_data_V_8_reg_285_reg[15] ;
  wire [7:0]NLW_comparison_12_fu_54_p2_carry_O_UNCONNECTED;
  wire [7:0]NLW_comparison_13_fu_60_p2_carry_O_UNCONNECTED;
  wire [7:0]NLW_comparison_fu_48_p2_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h70F1017F017F70F1)) 
    ap_return__163_carry__2_i_30
       (.I0(ap_return__163_carry__2_i_8[4]),
        .I1(O[4]),
        .I2(ap_return__163_carry__2_i_8_0),
        .I3(ap_return__163_carry__2_i_8_1),
        .I4(ap_return__163_carry__2_i_8[5]),
        .I5(O[5]),
        .O(ap_return__0_carry__2_3));
  LUT6 #(
    .INIT(64'h70F1017F017F70F1)) 
    ap_return__163_carry__2_i_35
       (.I0(ap_return__163_carry__2_i_8[3]),
        .I1(O[3]),
        .I2(ap_return__163_carry__2_i_8_0),
        .I3(ap_return__163_carry__2_i_8_1),
        .I4(ap_return__163_carry__2_i_8[4]),
        .I5(O[4]),
        .O(ap_return__0_carry__2_2));
  LUT6 #(
    .INIT(64'h70F1017F017F70F1)) 
    ap_return__163_carry__2_i_37
       (.I0(ap_return__163_carry__2_i_8[2]),
        .I1(O[2]),
        .I2(ap_return__163_carry__2_i_8_0),
        .I3(ap_return__163_carry__2_i_8_1),
        .I4(ap_return__163_carry__2_i_8[3]),
        .I5(O[3]),
        .O(ap_return__0_carry__2_1));
  LUT6 #(
    .INIT(64'h70F1017F017F70F1)) 
    ap_return__163_carry__2_i_39
       (.I0(ap_return__163_carry__2_i_8[1]),
        .I1(O[1]),
        .I2(ap_return__163_carry__2_i_8_0),
        .I3(ap_return__163_carry__2_i_8_1),
        .I4(ap_return__163_carry__2_i_8[2]),
        .I5(O[2]),
        .O(ap_return__0_carry__2_0));
  LUT6 #(
    .INIT(64'h70F1017F017F70F1)) 
    ap_return__163_carry__2_i_41
       (.I0(ap_return__163_carry__2_i_8[0]),
        .I1(O[0]),
        .I2(ap_return__163_carry__2_i_8_0),
        .I3(ap_return__163_carry__2_i_8_1),
        .I4(ap_return__163_carry__2_i_8[1]),
        .I5(O[1]),
        .O(ap_return__0_carry__2));
  LUT5 #(
    .INIT(32'h004555DF)) 
    ap_return__81_carry__0_i_1
       (.I0(ap_return__81_carry_2),
        .I1(comparison_13_fu_60_p2),
        .I2(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I3(\tmp_data_V_1_reg_250_reg[15] ),
        .I4(ap_return__81_carry__2),
        .O(\tmp_data_V_7_reg_280_reg[15] [4]));
  LUT6 #(
    .INIT(64'h9999696666669699)) 
    ap_return__81_carry__0_i_10
       (.I0(\tmp_data_V_7_reg_280_reg[15] [3]),
        .I1(ap_return__81_carry__2),
        .I2(comparison_13_fu_60_p2),
        .I3(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I4(\tmp_data_V_1_reg_250_reg[15] ),
        .I5(ap_return__81_carry_2),
        .O(\tmp_data_V_7_reg_280_reg[15]_0 [2]));
  LUT5 #(
    .INIT(32'h69999666)) 
    ap_return__81_carry__0_i_11
       (.I0(\tmp_data_V_7_reg_280_reg[15] [2]),
        .I1(ap_return__81_carry__2),
        .I2(ap_return__81_carry_0),
        .I3(ap_return__81_carry_2),
        .I4(\tmp_data_V_1_reg_250_reg[15]_5 ),
        .O(\tmp_data_V_7_reg_280_reg[15]_0 [1]));
  LUT6 #(
    .INIT(64'hFF00FF40BF40BFFF)) 
    ap_return__81_carry__0_i_12
       (.I0(ap_return__81_carry_0),
        .I1(ap_return__81_carry_1),
        .I2(ap_return__81_carry_2),
        .I3(\tmp_data_V_1_reg_250_reg[15] ),
        .I4(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I5(ap_return__81_carry__0),
        .O(\tmp_data_V_7_reg_280_reg[15]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    ap_return__81_carry__0_i_19
       (.I0(\tmp_data_V_1_reg_250_reg[15] ),
        .I1(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I2(comparison_13_fu_60_p2),
        .O(\tmp_data_V_1_reg_250_reg[15]_1 ));
  LUT6 #(
    .INIT(64'hBFBFBFBF2ABFBFBF)) 
    ap_return__81_carry__0_i_2
       (.I0(ap_return__81_carry__2),
        .I1(ap_return__81_carry_0),
        .I2(ap_return__81_carry_2),
        .I3(comparison_13_fu_60_p2),
        .I4(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I5(\tmp_data_V_1_reg_250_reg[15] ),
        .O(\tmp_data_V_7_reg_280_reg[15] [3]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    ap_return__81_carry__0_i_3
       (.I0(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(ap_return__81_carry),
        .I3(CO),
        .O(\tmp_data_V_7_reg_280_reg[15] [2]));
  LUT6 #(
    .INIT(64'hE0E0E0E0FEE0E0E0)) 
    ap_return__81_carry__0_i_4
       (.I0(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(ap_return__81_carry__0),
        .I3(ap_return__81_carry_2),
        .I4(ap_return__81_carry_1),
        .I5(ap_return__81_carry_0),
        .O(\tmp_data_V_7_reg_280_reg[15] [1]));
  LUT5 #(
    .INIT(32'h222BBBBB)) 
    ap_return__81_carry__0_i_6
       (.I0(\tmp_data_V_1_reg_250_reg[15]_1 ),
        .I1(ap_return__81_carry__2),
        .I2(ap_return__81_carry_0),
        .I3(ap_return__81_carry_1),
        .I4(ap_return__81_carry_2),
        .O(\tmp_data_V_7_reg_280_reg[15] [0]));
  LUT6 #(
    .INIT(64'h1E1E1E1E871E7878)) 
    ap_return__81_carry__0_i_9
       (.I0(ap_return__81_carry__2),
        .I1(ap_return__81_carry_2),
        .I2(ap_return__81_carry__0_0),
        .I3(comparison_13_fu_60_p2),
        .I4(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I5(\tmp_data_V_1_reg_250_reg[15] ),
        .O(\tmp_data_V_7_reg_280_reg[15]_0 [3]));
  LUT5 #(
    .INIT(32'hFF040400)) 
    ap_return__81_carry__1_i_1
       (.I0(\tmp_data_V_1_reg_250_reg[15] ),
        .I1(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I2(comparison_13_fu_60_p2),
        .I3(ap_return__81_carry__2_0),
        .I4(ap_return__81_carry__2),
        .O(\tmp_data_V_1_reg_250_reg[15]_2 ));
  LUT6 #(
    .INIT(64'hAA9A55655565AA9A)) 
    ap_return__81_carry__1_i_10
       (.I0(\tmp_data_V_1_reg_250_reg[15]_4 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I3(comparison_13_fu_60_p2),
        .I4(ap_return__81_carry__2_0),
        .I5(ap_return__81_carry__2),
        .O(\tmp_data_V_1_reg_250_reg[15]_7 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFFFF)) 
    ap_return__81_carry__1_i_2
       (.I0(\tmp_data_V_1_reg_250_reg[15] ),
        .I1(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I2(comparison_13_fu_60_p2),
        .I3(ap_return__81_carry_0),
        .I4(ap_return__81_carry_2),
        .I5(ap_return__81_carry_1),
        .O(\tmp_data_V_1_reg_250_reg[15]_4 ));
  LUT6 #(
    .INIT(64'hAA9A55655565AA9A)) 
    ap_return__81_carry__1_i_3
       (.I0(\tmp_data_V_1_reg_250_reg[15]_2 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I3(comparison_13_fu_60_p2),
        .I4(ap_return__81_carry__2_0),
        .I5(ap_return__81_carry__2),
        .O(\tmp_data_V_1_reg_250_reg[15]_7 [7]));
  LUT6 #(
    .INIT(64'hAA9A55655565AA9A)) 
    ap_return__81_carry__1_i_4
       (.I0(\tmp_data_V_1_reg_250_reg[15]_2 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I3(comparison_13_fu_60_p2),
        .I4(ap_return__81_carry__2_0),
        .I5(ap_return__81_carry__2),
        .O(\tmp_data_V_1_reg_250_reg[15]_7 [6]));
  LUT6 #(
    .INIT(64'hAA9A55655565AA9A)) 
    ap_return__81_carry__1_i_5
       (.I0(\tmp_data_V_1_reg_250_reg[15]_2 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I3(comparison_13_fu_60_p2),
        .I4(ap_return__81_carry__2_0),
        .I5(ap_return__81_carry__2),
        .O(\tmp_data_V_1_reg_250_reg[15]_7 [5]));
  LUT6 #(
    .INIT(64'hAA9A55655565AA9A)) 
    ap_return__81_carry__1_i_6
       (.I0(\tmp_data_V_1_reg_250_reg[15]_2 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I3(comparison_13_fu_60_p2),
        .I4(ap_return__81_carry__2_0),
        .I5(ap_return__81_carry__2),
        .O(\tmp_data_V_1_reg_250_reg[15]_7 [4]));
  LUT6 #(
    .INIT(64'hAA9A55655565AA9A)) 
    ap_return__81_carry__1_i_7
       (.I0(\tmp_data_V_1_reg_250_reg[15]_2 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I3(comparison_13_fu_60_p2),
        .I4(ap_return__81_carry__2_0),
        .I5(ap_return__81_carry__2),
        .O(\tmp_data_V_1_reg_250_reg[15]_7 [3]));
  LUT6 #(
    .INIT(64'hAA9A55655565AA9A)) 
    ap_return__81_carry__1_i_8
       (.I0(\tmp_data_V_1_reg_250_reg[15]_2 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I3(comparison_13_fu_60_p2),
        .I4(ap_return__81_carry__2_0),
        .I5(ap_return__81_carry__2),
        .O(\tmp_data_V_1_reg_250_reg[15]_7 [2]));
  LUT6 #(
    .INIT(64'hAA9A55655565AA9A)) 
    ap_return__81_carry__1_i_9
       (.I0(\tmp_data_V_1_reg_250_reg[15]_2 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I3(comparison_13_fu_60_p2),
        .I4(ap_return__81_carry__2_0),
        .I5(ap_return__81_carry__2),
        .O(\tmp_data_V_1_reg_250_reg[15]_7 [1]));
  LUT6 #(
    .INIT(64'hAA9A55655565AA9A)) 
    ap_return__81_carry__2_i_1
       (.I0(\tmp_data_V_1_reg_250_reg[15]_2 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I3(comparison_13_fu_60_p2),
        .I4(ap_return__81_carry__2_0),
        .I5(ap_return__81_carry__2),
        .O(\tmp_data_V_1_reg_250_reg[15]_8 [7]));
  LUT6 #(
    .INIT(64'hAA9A55655565AA9A)) 
    ap_return__81_carry__2_i_2
       (.I0(\tmp_data_V_1_reg_250_reg[15]_2 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I3(comparison_13_fu_60_p2),
        .I4(ap_return__81_carry__2_0),
        .I5(ap_return__81_carry__2),
        .O(\tmp_data_V_1_reg_250_reg[15]_8 [6]));
  LUT6 #(
    .INIT(64'hAA9A55655565AA9A)) 
    ap_return__81_carry__2_i_3
       (.I0(\tmp_data_V_1_reg_250_reg[15]_2 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I3(comparison_13_fu_60_p2),
        .I4(ap_return__81_carry__2_0),
        .I5(ap_return__81_carry__2),
        .O(\tmp_data_V_1_reg_250_reg[15]_8 [5]));
  LUT6 #(
    .INIT(64'hAA9A55655565AA9A)) 
    ap_return__81_carry__2_i_4
       (.I0(\tmp_data_V_1_reg_250_reg[15]_2 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I3(comparison_13_fu_60_p2),
        .I4(ap_return__81_carry__2_0),
        .I5(ap_return__81_carry__2),
        .O(\tmp_data_V_1_reg_250_reg[15]_8 [4]));
  LUT6 #(
    .INIT(64'hAA9A55655565AA9A)) 
    ap_return__81_carry__2_i_5
       (.I0(\tmp_data_V_1_reg_250_reg[15]_2 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I3(comparison_13_fu_60_p2),
        .I4(ap_return__81_carry__2_0),
        .I5(ap_return__81_carry__2),
        .O(\tmp_data_V_1_reg_250_reg[15]_8 [3]));
  LUT6 #(
    .INIT(64'hAA9A55655565AA9A)) 
    ap_return__81_carry__2_i_6
       (.I0(\tmp_data_V_1_reg_250_reg[15]_2 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I3(comparison_13_fu_60_p2),
        .I4(ap_return__81_carry__2_0),
        .I5(ap_return__81_carry__2),
        .O(\tmp_data_V_1_reg_250_reg[15]_8 [2]));
  LUT6 #(
    .INIT(64'hAA9A55655565AA9A)) 
    ap_return__81_carry__2_i_7
       (.I0(\tmp_data_V_1_reg_250_reg[15]_2 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I3(comparison_13_fu_60_p2),
        .I4(ap_return__81_carry__2_0),
        .I5(ap_return__81_carry__2),
        .O(\tmp_data_V_1_reg_250_reg[15]_8 [1]));
  LUT6 #(
    .INIT(64'hAA9A55655565AA9A)) 
    ap_return__81_carry__2_i_8
       (.I0(\tmp_data_V_1_reg_250_reg[15]_2 ),
        .I1(\tmp_data_V_1_reg_250_reg[15] ),
        .I2(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I3(comparison_13_fu_60_p2),
        .I4(ap_return__81_carry__2_0),
        .I5(ap_return__81_carry__2),
        .O(\tmp_data_V_1_reg_250_reg[15]_8 [0]));
  LUT6 #(
    .INIT(64'h0000011111111FFF)) 
    ap_return__81_carry_i_1
       (.I0(ap_return__81_carry),
        .I1(CO),
        .I2(comparison_13_fu_60_p2),
        .I3(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I4(\tmp_data_V_1_reg_250_reg[15] ),
        .I5(ap_return__81_carry__2_0),
        .O(\tmp_data_V_8_reg_285_reg[15] [1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ap_return__81_carry_i_19
       (.I0(comparison_13_fu_60_p2),
        .I1(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I2(\tmp_data_V_1_reg_250_reg[15] ),
        .O(\tmp_data_V_1_reg_250_reg[15]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    ap_return__81_carry_i_21
       (.I0(\tmp_data_V_1_reg_250_reg[15] ),
        .I1(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .O(\tmp_data_V_1_reg_250_reg[15]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ap_return__81_carry_i_22
       (.I0(comparison_13_fu_60_p2),
        .I1(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I2(\tmp_data_V_1_reg_250_reg[15] ),
        .O(\tmp_data_V_1_reg_250_reg[15]_3 ));
  LUT6 #(
    .INIT(64'hFFFBFB00FB00FB00)) 
    ap_return__81_carry_i_4
       (.I0(\tmp_data_V_1_reg_250_reg[15] ),
        .I1(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I2(comparison_13_fu_60_p2),
        .I3(ap_return__81_carry_3),
        .I4(ap_return__81_carry_2),
        .I5(ap_return__81_carry_0),
        .O(\tmp_data_V_8_reg_285_reg[15] [0]));
  LUT6 #(
    .INIT(64'h6969699696969696)) 
    ap_return__81_carry_i_8
       (.I0(\tmp_data_V_8_reg_285_reg[15] [1]),
        .I1(CO),
        .I2(\tmp_data_V_1_reg_250_reg[15] ),
        .I3(ap_return__81_carry_0),
        .I4(ap_return__81_carry_1),
        .I5(ap_return__81_carry_2),
        .O(\tmp_data_V_6_reg_275_reg[15] [1]));
  LUT6 #(
    .INIT(64'h6666699999999666)) 
    ap_return__81_carry_i_9
       (.I0(ap_return__81_carry_4),
        .I1(ap_return__81_carry__0),
        .I2(comparison_13_fu_60_p2),
        .I3(\tmp_data_V_1_reg_250_reg[15]_0 ),
        .I4(\tmp_data_V_1_reg_250_reg[15] ),
        .I5(ap_return__81_carry__2_0),
        .O(\tmp_data_V_6_reg_275_reg[15] [0]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_12_fu_54_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\tmp_data_V_1_reg_250_reg[15]_0 ,comparison_12_fu_54_p2_carry_n_1,comparison_12_fu_54_p2_carry_n_2,comparison_12_fu_54_p2_carry_n_3,comparison_12_fu_54_p2_carry_n_4,comparison_12_fu_54_p2_carry_n_5,comparison_12_fu_54_p2_carry_n_6,comparison_12_fu_54_p2_carry_n_7}),
        .DI({ap_return__81_carry_i_3[1],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ap_return__81_carry_i_3[0]}),
        .O(NLW_comparison_12_fu_54_p2_carry_O_UNCONNECTED[7:0]),
        .S(ap_return__81_carry_i_3_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_13_fu_60_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({comparison_13_fu_60_p2,comparison_13_fu_60_p2_carry_n_1,comparison_13_fu_60_p2_carry_n_2,comparison_13_fu_60_p2_carry_n_3,comparison_13_fu_60_p2_carry_n_4,comparison_13_fu_60_p2_carry_n_5,comparison_13_fu_60_p2_carry_n_6,comparison_13_fu_60_p2_carry_n_7}),
        .DI(ap_return__81_carry_i_9_0),
        .O(NLW_comparison_13_fu_60_p2_carry_O_UNCONNECTED[7:0]),
        .S(ap_return__81_carry_i_9_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_fu_48_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\tmp_data_V_1_reg_250_reg[15] ,comparison_fu_48_p2_carry_n_1,comparison_fu_48_p2_carry_n_2,comparison_fu_48_p2_carry_n_3,comparison_fu_48_p2_carry_n_4,comparison_fu_48_p2_carry_n_5,comparison_fu_48_p2_carry_n_6,comparison_fu_48_p2_carry_n_7}),
        .DI(DI),
        .O(NLW_comparison_fu_48_p2_carry_O_UNCONNECTED[7:0]),
        .S(S));
endmodule

(* ORIG_REF_NAME = "myproject_axi_decision_function_3" *) 
module design_1_myproject_axi_0_0_myproject_axi_decision_function_3
   (\tmp_data_V_4_reg_265_reg[15] ,
    \tmp_data_V_4_reg_265_reg[15]_0 ,
    \B_V_data_1_payload_B_reg[15] ,
    \tmp_data_V_4_reg_265_reg[15]_1 ,
    \tmp_data_V_3_reg_260_reg[15] ,
    \tmp_data_V_4_reg_265_reg[15]_2 ,
    \tmp_data_V_4_reg_265_reg[15]_3 ,
    \tmp_data_V_4_reg_265_reg[15]_4 ,
    \tmp_data_V_4_reg_265_reg[15]_5 ,
    \tmp_data_V_4_reg_265_reg[15]_6 ,
    DI,
    S,
    ap_return__0_carry_i_8,
    ap_return__0_carry_i_8_0,
    ap_return__0_carry_i_4,
    ap_return__0_carry_i_4_0,
    ap_return__0_carry__0,
    CO,
    ap_return__0_carry,
    ap_return__0_carry__0_0,
    ap_return__0_carry_0,
    ap_return__0_carry_1,
    ap_return__0_carry_2,
    ap_return__0_carry__0_1,
    ap_return__0_carry__0_2,
    ap_return__0_carry__0_3);
  output [0:0]\tmp_data_V_4_reg_265_reg[15] ;
  output [0:0]\tmp_data_V_4_reg_265_reg[15]_0 ;
  output [0:0]\B_V_data_1_payload_B_reg[15] ;
  output [2:0]\tmp_data_V_4_reg_265_reg[15]_1 ;
  output [0:0]\tmp_data_V_3_reg_260_reg[15] ;
  output \tmp_data_V_4_reg_265_reg[15]_2 ;
  output \tmp_data_V_4_reg_265_reg[15]_3 ;
  output \tmp_data_V_4_reg_265_reg[15]_4 ;
  output [0:0]\tmp_data_V_4_reg_265_reg[15]_5 ;
  output [2:0]\tmp_data_V_4_reg_265_reg[15]_6 ;
  input [7:0]DI;
  input [7:0]S;
  input [1:0]ap_return__0_carry_i_8;
  input [7:0]ap_return__0_carry_i_8_0;
  input [1:0]ap_return__0_carry_i_4;
  input [7:0]ap_return__0_carry_i_4_0;
  input ap_return__0_carry__0;
  input [0:0]CO;
  input [0:0]ap_return__0_carry;
  input ap_return__0_carry__0_0;
  input [0:0]ap_return__0_carry_0;
  input [0:0]ap_return__0_carry_1;
  input ap_return__0_carry_2;
  input [0:0]ap_return__0_carry__0_1;
  input [0:0]ap_return__0_carry__0_2;
  input ap_return__0_carry__0_3;

  wire [0:0]\B_V_data_1_payload_B_reg[15] ;
  wire [0:0]CO;
  wire [7:0]DI;
  wire [7:0]S;
  wire [0:0]ap_return__0_carry;
  wire [0:0]ap_return__0_carry_0;
  wire [0:0]ap_return__0_carry_1;
  wire ap_return__0_carry_2;
  wire ap_return__0_carry__0;
  wire ap_return__0_carry__0_0;
  wire [0:0]ap_return__0_carry__0_1;
  wire [0:0]ap_return__0_carry__0_2;
  wire ap_return__0_carry__0_3;
  wire [1:0]ap_return__0_carry_i_4;
  wire [7:0]ap_return__0_carry_i_4_0;
  wire [1:0]ap_return__0_carry_i_8;
  wire [7:0]ap_return__0_carry_i_8_0;
  wire comparison_10_fu_54_p2_carry_n_1;
  wire comparison_10_fu_54_p2_carry_n_2;
  wire comparison_10_fu_54_p2_carry_n_3;
  wire comparison_10_fu_54_p2_carry_n_4;
  wire comparison_10_fu_54_p2_carry_n_5;
  wire comparison_10_fu_54_p2_carry_n_6;
  wire comparison_10_fu_54_p2_carry_n_7;
  wire comparison_11_fu_60_p2_carry_n_1;
  wire comparison_11_fu_60_p2_carry_n_2;
  wire comparison_11_fu_60_p2_carry_n_3;
  wire comparison_11_fu_60_p2_carry_n_4;
  wire comparison_11_fu_60_p2_carry_n_5;
  wire comparison_11_fu_60_p2_carry_n_6;
  wire comparison_11_fu_60_p2_carry_n_7;
  wire comparison_fu_48_p2_carry_n_1;
  wire comparison_fu_48_p2_carry_n_2;
  wire comparison_fu_48_p2_carry_n_3;
  wire comparison_fu_48_p2_carry_n_4;
  wire comparison_fu_48_p2_carry_n_5;
  wire comparison_fu_48_p2_carry_n_6;
  wire comparison_fu_48_p2_carry_n_7;
  wire [0:0]\tmp_data_V_3_reg_260_reg[15] ;
  wire [0:0]\tmp_data_V_4_reg_265_reg[15] ;
  wire [0:0]\tmp_data_V_4_reg_265_reg[15]_0 ;
  wire [2:0]\tmp_data_V_4_reg_265_reg[15]_1 ;
  wire \tmp_data_V_4_reg_265_reg[15]_2 ;
  wire \tmp_data_V_4_reg_265_reg[15]_3 ;
  wire \tmp_data_V_4_reg_265_reg[15]_4 ;
  wire [0:0]\tmp_data_V_4_reg_265_reg[15]_5 ;
  wire [2:0]\tmp_data_V_4_reg_265_reg[15]_6 ;
  wire [7:0]NLW_comparison_10_fu_54_p2_carry_O_UNCONNECTED;
  wire [7:0]NLW_comparison_11_fu_60_p2_carry_O_UNCONNECTED;
  wire [7:0]NLW_comparison_fu_48_p2_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h6696996999699969)) 
    ap_return__0_carry__0_i_10
       (.I0(\tmp_data_V_4_reg_265_reg[15]_1 [2]),
        .I1(ap_return__0_carry__0_3),
        .I2(\tmp_data_V_4_reg_265_reg[15]_0 ),
        .I3(\tmp_data_V_4_reg_265_reg[15] ),
        .I4(ap_return__0_carry),
        .I5(ap_return__0_carry_0),
        .O(\tmp_data_V_4_reg_265_reg[15]_6 [2]));
  LUT6 #(
    .INIT(64'h9AAA655565559AAA)) 
    ap_return__0_carry__0_i_11
       (.I0(ap_return__0_carry__0_2),
        .I1(\tmp_data_V_4_reg_265_reg[15] ),
        .I2(\tmp_data_V_4_reg_265_reg[15]_0 ),
        .I3(\B_V_data_1_payload_B_reg[15] ),
        .I4(ap_return__0_carry__0_0),
        .I5(ap_return__0_carry),
        .O(\tmp_data_V_4_reg_265_reg[15]_6 [1]));
  LUT6 #(
    .INIT(64'h6969966969696969)) 
    ap_return__0_carry__0_i_16
       (.I0(\tmp_data_V_4_reg_265_reg[15]_1 [0]),
        .I1(\tmp_data_V_4_reg_265_reg[15] ),
        .I2(ap_return__0_carry__0),
        .I3(ap_return__0_carry),
        .I4(ap_return__0_carry_0),
        .I5(ap_return__0_carry_1),
        .O(\tmp_data_V_4_reg_265_reg[15]_6 [0]));
  LUT6 #(
    .INIT(64'hFFFFFF4040404000)) 
    ap_return__0_carry__0_i_2
       (.I0(\tmp_data_V_4_reg_265_reg[15] ),
        .I1(\tmp_data_V_4_reg_265_reg[15]_0 ),
        .I2(\B_V_data_1_payload_B_reg[15] ),
        .I3(ap_return__0_carry__0),
        .I4(CO),
        .I5(ap_return__0_carry),
        .O(\tmp_data_V_4_reg_265_reg[15]_1 [2]));
  LUT6 #(
    .INIT(64'h000707FF07FF07FF)) 
    ap_return__0_carry__0_i_5
       (.I0(\tmp_data_V_4_reg_265_reg[15]_0 ),
        .I1(\B_V_data_1_payload_B_reg[15] ),
        .I2(\tmp_data_V_4_reg_265_reg[15] ),
        .I3(ap_return__0_carry__0_0),
        .I4(ap_return__0_carry),
        .I5(ap_return__0_carry_0),
        .O(\tmp_data_V_4_reg_265_reg[15]_1 [1]));
  LUT4 #(
    .INIT(16'h44F4)) 
    ap_return__0_carry__0_i_8
       (.I0(CO),
        .I1(ap_return__0_carry__0_1),
        .I2(\tmp_data_V_4_reg_265_reg[15]_0 ),
        .I3(\tmp_data_V_4_reg_265_reg[15] ),
        .O(\tmp_data_V_4_reg_265_reg[15]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ap_return__0_carry__1_i_11
       (.I0(\B_V_data_1_payload_B_reg[15] ),
        .I1(\tmp_data_V_4_reg_265_reg[15]_0 ),
        .I2(\tmp_data_V_4_reg_265_reg[15] ),
        .O(\tmp_data_V_4_reg_265_reg[15]_2 ));
  LUT6 #(
    .INIT(64'hFF00B000BB440444)) 
    ap_return__0_carry_i_10
       (.I0(\tmp_data_V_4_reg_265_reg[15] ),
        .I1(\tmp_data_V_4_reg_265_reg[15]_0 ),
        .I2(ap_return__0_carry_1),
        .I3(ap_return__0_carry),
        .I4(ap_return__0_carry_0),
        .I5(ap_return__0_carry_2),
        .O(\tmp_data_V_4_reg_265_reg[15]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    ap_return__0_carry_i_17
       (.I0(\tmp_data_V_4_reg_265_reg[15] ),
        .I1(\B_V_data_1_payload_B_reg[15] ),
        .I2(\tmp_data_V_4_reg_265_reg[15]_0 ),
        .O(\tmp_data_V_4_reg_265_reg[15]_4 ));
  LUT2 #(
    .INIT(4'hB)) 
    ap_return__0_carry_i_22
       (.I0(\tmp_data_V_4_reg_265_reg[15] ),
        .I1(\tmp_data_V_4_reg_265_reg[15]_0 ),
        .O(\tmp_data_V_4_reg_265_reg[15]_3 ));
  LUT6 #(
    .INIT(64'hDFDFFFDF0000DF00)) 
    ap_return__0_carry_i_3
       (.I0(ap_return__0_carry),
        .I1(ap_return__0_carry_0),
        .I2(ap_return__0_carry_1),
        .I3(\tmp_data_V_4_reg_265_reg[15]_0 ),
        .I4(\tmp_data_V_4_reg_265_reg[15] ),
        .I5(ap_return__0_carry_2),
        .O(\tmp_data_V_3_reg_260_reg[15] ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_10_fu_54_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\tmp_data_V_4_reg_265_reg[15]_0 ,comparison_10_fu_54_p2_carry_n_1,comparison_10_fu_54_p2_carry_n_2,comparison_10_fu_54_p2_carry_n_3,comparison_10_fu_54_p2_carry_n_4,comparison_10_fu_54_p2_carry_n_5,comparison_10_fu_54_p2_carry_n_6,comparison_10_fu_54_p2_carry_n_7}),
        .DI({ap_return__0_carry_i_8[1],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ap_return__0_carry_i_8[0]}),
        .O(NLW_comparison_10_fu_54_p2_carry_O_UNCONNECTED[7:0]),
        .S(ap_return__0_carry_i_8_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_11_fu_60_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\B_V_data_1_payload_B_reg[15] ,comparison_11_fu_60_p2_carry_n_1,comparison_11_fu_60_p2_carry_n_2,comparison_11_fu_60_p2_carry_n_3,comparison_11_fu_60_p2_carry_n_4,comparison_11_fu_60_p2_carry_n_5,comparison_11_fu_60_p2_carry_n_6,comparison_11_fu_60_p2_carry_n_7}),
        .DI({ap_return__0_carry_i_4[1],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ap_return__0_carry_i_4[0]}),
        .O(NLW_comparison_11_fu_60_p2_carry_O_UNCONNECTED[7:0]),
        .S(ap_return__0_carry_i_4_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_fu_48_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\tmp_data_V_4_reg_265_reg[15] ,comparison_fu_48_p2_carry_n_1,comparison_fu_48_p2_carry_n_2,comparison_fu_48_p2_carry_n_3,comparison_fu_48_p2_carry_n_4,comparison_fu_48_p2_carry_n_5,comparison_fu_48_p2_carry_n_6,comparison_fu_48_p2_carry_n_7}),
        .DI(DI),
        .O(NLW_comparison_fu_48_p2_carry_O_UNCONNECTED[7:0]),
        .S(S));
endmodule

(* ORIG_REF_NAME = "myproject_axi_decision_function_4" *) 
module design_1_myproject_axi_0_0_myproject_axi_decision_function_4
   (CO,
    \tmp_data_V_9_reg_290_reg[15] ,
    \tmp_data_V_9_reg_290_reg[15]_0 ,
    \tmp_data_V_2_reg_255_reg[15] ,
    ap_return__0_carry,
    \tmp_data_V_9_reg_290_reg[15]_1 ,
    ap_return__0_carry_0,
    \tmp_data_V_9_reg_290_reg[15]_2 ,
    ap_return__81_carry__0,
    \tmp_data_V_9_reg_290_reg[15]_3 ,
    \tmp_data_V_9_reg_290_reg[15]_4 ,
    \tmp_data_V_9_reg_290_reg[15]_5 ,
    ap_return__163_carry_i_22_0,
    ap_return__81_carry__1,
    ap_return__81_carry__1_0,
    ap_return__81_carry__1_1,
    ap_return__81_carry__1_2,
    ap_return__81_carry__1_3,
    ap_return__81_carry__1_4,
    ap_return__0_carry__0,
    ap_return__163_carry_i_28,
    ap_return__163_carry__0_i_32,
    \tmp_data_V_9_reg_290_reg[15]_6 ,
    ap_return__163_carry__1_i_42_0,
    DI,
    S,
    ap_return__163_carry_i_30,
    ap_return__163_carry_i_30_0,
    ap_return__163_carry_i_30_1,
    ap_return__163_carry_i_30_2,
    \trunc_ln902_reg_307_reg[7] ,
    \trunc_ln902_reg_307_reg[7]_0 ,
    O,
    \trunc_ln902_reg_307_reg[15] ,
    \trunc_ln902_reg_307_reg[7]_1 ,
    \trunc_ln902_reg_307_reg[15]_0 ,
    ap_return__163_carry_i_5,
    \trunc_ln902_reg_307_reg[15]_1 ,
    \ret_V_reg_300_reg[7] ,
    \ret_V_reg_300_reg[7]_0 ,
    \trunc_ln902_reg_307_reg[15]_2 ,
    \ret_V_reg_300_reg[7]_1 ,
    ap_return__163_carry__1_i_9,
    ap_return__163_carry__1_i_9_0,
    ap_return__163_carry__1_i_9_1,
    \trunc_ln902_reg_307_reg[15]_3 ,
    \trunc_ln902_reg_307_reg[7]_2 ,
    \trunc_ln902_reg_307_reg[7]_3 ,
    \trunc_ln902_reg_307_reg[15]_4 ,
    \trunc_ln902_reg_307_reg[15]_5 ,
    \ret_V_reg_300_reg[7]_2 );
  output [0:0]CO;
  output [0:0]\tmp_data_V_9_reg_290_reg[15] ;
  output [0:0]\tmp_data_V_9_reg_290_reg[15]_0 ;
  output [0:0]\tmp_data_V_2_reg_255_reg[15] ;
  output ap_return__0_carry;
  output \tmp_data_V_9_reg_290_reg[15]_1 ;
  output ap_return__0_carry_0;
  output \tmp_data_V_9_reg_290_reg[15]_2 ;
  output [3:0]ap_return__81_carry__0;
  output \tmp_data_V_9_reg_290_reg[15]_3 ;
  output \tmp_data_V_9_reg_290_reg[15]_4 ;
  output \tmp_data_V_9_reg_290_reg[15]_5 ;
  output [0:0]ap_return__163_carry_i_22_0;
  output ap_return__81_carry__1;
  output ap_return__81_carry__1_0;
  output ap_return__81_carry__1_1;
  output ap_return__81_carry__1_2;
  output ap_return__81_carry__1_3;
  output ap_return__81_carry__1_4;
  output ap_return__0_carry__0;
  output [1:0]ap_return__163_carry_i_28;
  output [3:0]ap_return__163_carry__0_i_32;
  output \tmp_data_V_9_reg_290_reg[15]_6 ;
  output [0:0]ap_return__163_carry__1_i_42_0;
  input [7:0]DI;
  input [7:0]S;
  input [1:0]ap_return__163_carry_i_30;
  input [7:0]ap_return__163_carry_i_30_0;
  input [7:0]ap_return__163_carry_i_30_1;
  input [7:0]ap_return__163_carry_i_30_2;
  input [0:0]\trunc_ln902_reg_307_reg[7] ;
  input [0:0]\trunc_ln902_reg_307_reg[7]_0 ;
  input [6:0]O;
  input [6:0]\trunc_ln902_reg_307_reg[15] ;
  input \trunc_ln902_reg_307_reg[7]_1 ;
  input \trunc_ln902_reg_307_reg[15]_0 ;
  input [0:0]ap_return__163_carry_i_5;
  input \trunc_ln902_reg_307_reg[15]_1 ;
  input [4:0]\ret_V_reg_300_reg[7] ;
  input [4:0]\ret_V_reg_300_reg[7]_0 ;
  input \trunc_ln902_reg_307_reg[15]_2 ;
  input \ret_V_reg_300_reg[7]_1 ;
  input [7:0]ap_return__163_carry__1_i_9;
  input [7:0]ap_return__163_carry__1_i_9_0;
  input ap_return__163_carry__1_i_9_1;
  input \trunc_ln902_reg_307_reg[15]_3 ;
  input \trunc_ln902_reg_307_reg[7]_2 ;
  input \trunc_ln902_reg_307_reg[7]_3 ;
  input \trunc_ln902_reg_307_reg[15]_4 ;
  input \trunc_ln902_reg_307_reg[15]_5 ;
  input \ret_V_reg_300_reg[7]_2 ;

  wire [0:0]CO;
  wire [7:0]DI;
  wire [6:0]O;
  wire [7:0]S;
  wire ap_return__0_carry;
  wire ap_return__0_carry_0;
  wire ap_return__0_carry__0;
  wire ap_return__163_carry__0_i_23_n_0;
  wire ap_return__163_carry__0_i_24_n_0;
  wire ap_return__163_carry__0_i_25_n_0;
  wire [3:0]ap_return__163_carry__0_i_32;
  wire [0:0]ap_return__163_carry__1_i_42_0;
  wire ap_return__163_carry__1_i_42_n_0;
  wire [7:0]ap_return__163_carry__1_i_9;
  wire [7:0]ap_return__163_carry__1_i_9_0;
  wire ap_return__163_carry__1_i_9_1;
  wire [0:0]ap_return__163_carry_i_22_0;
  wire [1:0]ap_return__163_carry_i_28;
  wire [1:0]ap_return__163_carry_i_30;
  wire [7:0]ap_return__163_carry_i_30_0;
  wire [7:0]ap_return__163_carry_i_30_1;
  wire [7:0]ap_return__163_carry_i_30_2;
  wire [0:0]ap_return__163_carry_i_5;
  wire [3:0]ap_return__81_carry__0;
  wire ap_return__81_carry__1;
  wire ap_return__81_carry__1_0;
  wire ap_return__81_carry__1_1;
  wire ap_return__81_carry__1_2;
  wire ap_return__81_carry__1_3;
  wire ap_return__81_carry__1_4;
  wire comparison_8_fu_54_p2_carry_n_1;
  wire comparison_8_fu_54_p2_carry_n_2;
  wire comparison_8_fu_54_p2_carry_n_3;
  wire comparison_8_fu_54_p2_carry_n_4;
  wire comparison_8_fu_54_p2_carry_n_5;
  wire comparison_8_fu_54_p2_carry_n_6;
  wire comparison_8_fu_54_p2_carry_n_7;
  wire comparison_9_fu_60_p2_carry_n_1;
  wire comparison_9_fu_60_p2_carry_n_2;
  wire comparison_9_fu_60_p2_carry_n_3;
  wire comparison_9_fu_60_p2_carry_n_4;
  wire comparison_9_fu_60_p2_carry_n_5;
  wire comparison_9_fu_60_p2_carry_n_6;
  wire comparison_9_fu_60_p2_carry_n_7;
  wire comparison_fu_48_p2_carry_n_1;
  wire comparison_fu_48_p2_carry_n_2;
  wire comparison_fu_48_p2_carry_n_3;
  wire comparison_fu_48_p2_carry_n_4;
  wire comparison_fu_48_p2_carry_n_5;
  wire comparison_fu_48_p2_carry_n_6;
  wire comparison_fu_48_p2_carry_n_7;
  wire [4:0]\ret_V_reg_300_reg[7] ;
  wire [4:0]\ret_V_reg_300_reg[7]_0 ;
  wire \ret_V_reg_300_reg[7]_1 ;
  wire \ret_V_reg_300_reg[7]_2 ;
  wire [0:0]\tmp_data_V_2_reg_255_reg[15] ;
  wire [0:0]\tmp_data_V_9_reg_290_reg[15] ;
  wire [0:0]\tmp_data_V_9_reg_290_reg[15]_0 ;
  wire \tmp_data_V_9_reg_290_reg[15]_1 ;
  wire \tmp_data_V_9_reg_290_reg[15]_2 ;
  wire \tmp_data_V_9_reg_290_reg[15]_3 ;
  wire \tmp_data_V_9_reg_290_reg[15]_4 ;
  wire \tmp_data_V_9_reg_290_reg[15]_5 ;
  wire \tmp_data_V_9_reg_290_reg[15]_6 ;
  wire [6:0]\trunc_ln902_reg_307_reg[15] ;
  wire \trunc_ln902_reg_307_reg[15]_0 ;
  wire \trunc_ln902_reg_307_reg[15]_1 ;
  wire \trunc_ln902_reg_307_reg[15]_2 ;
  wire \trunc_ln902_reg_307_reg[15]_3 ;
  wire \trunc_ln902_reg_307_reg[15]_4 ;
  wire \trunc_ln902_reg_307_reg[15]_5 ;
  wire [0:0]\trunc_ln902_reg_307_reg[7] ;
  wire [0:0]\trunc_ln902_reg_307_reg[7]_0 ;
  wire \trunc_ln902_reg_307_reg[7]_1 ;
  wire \trunc_ln902_reg_307_reg[7]_2 ;
  wire \trunc_ln902_reg_307_reg[7]_3 ;
  wire [7:0]NLW_comparison_8_fu_54_p2_carry_O_UNCONNECTED;
  wire [7:0]NLW_comparison_9_fu_60_p2_carry_O_UNCONNECTED;
  wire [7:0]NLW_comparison_fu_48_p2_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h6A6A6A56959595A9)) 
    ap_return__163_carry__0_i_12
       (.I0(ap_return__81_carry__0[3]),
        .I1(\tmp_data_V_9_reg_290_reg[15]_3 ),
        .I2(\trunc_ln902_reg_307_reg[15]_3 ),
        .I3(\ret_V_reg_300_reg[7] [2]),
        .I4(\ret_V_reg_300_reg[7]_0 [2]),
        .I5(\trunc_ln902_reg_307_reg[15]_5 ),
        .O(ap_return__163_carry__0_i_32[3]));
  LUT6 #(
    .INIT(64'hAA696955559696AA)) 
    ap_return__163_carry__0_i_13
       (.I0(ap_return__81_carry__0[2]),
        .I1(\ret_V_reg_300_reg[7] [2]),
        .I2(\ret_V_reg_300_reg[7]_0 [2]),
        .I3(\trunc_ln902_reg_307_reg[15]_1 ),
        .I4(ap_return__163_carry__0_i_23_n_0),
        .I5(\trunc_ln902_reg_307_reg[15]_4 ),
        .O(ap_return__163_carry__0_i_32[2]));
  LUT6 #(
    .INIT(64'h9556A9956AA9566A)) 
    ap_return__163_carry__0_i_14
       (.I0(ap_return__81_carry__0[1]),
        .I1(\ret_V_reg_300_reg[7] [1]),
        .I2(\ret_V_reg_300_reg[7]_0 [1]),
        .I3(\trunc_ln902_reg_307_reg[15]_2 ),
        .I4(\tmp_data_V_9_reg_290_reg[15]_6 ),
        .I5(ap_return__163_carry__0_i_24_n_0),
        .O(ap_return__163_carry__0_i_32[1]));
  LUT6 #(
    .INIT(64'hA6656559599A9AA6)) 
    ap_return__163_carry__0_i_15
       (.I0(ap_return__81_carry__0[0]),
        .I1(ap_return__163_carry__0_i_23_n_0),
        .I2(\trunc_ln902_reg_307_reg[15]_2 ),
        .I3(\ret_V_reg_300_reg[7]_0 [0]),
        .I4(\ret_V_reg_300_reg[7] [0]),
        .I5(ap_return__163_carry__0_i_25_n_0),
        .O(ap_return__163_carry__0_i_32[0]));
  LUT6 #(
    .INIT(64'h7DD77DD77DD71441)) 
    ap_return__163_carry__0_i_21
       (.I0(\tmp_data_V_9_reg_290_reg[15]_3 ),
        .I1(\ret_V_reg_300_reg[7] [3]),
        .I2(\ret_V_reg_300_reg[7]_0 [3]),
        .I3(\trunc_ln902_reg_307_reg[15]_1 ),
        .I4(\ret_V_reg_300_reg[7] [2]),
        .I5(\ret_V_reg_300_reg[7]_0 [2]),
        .O(ap_return__0_carry__0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ap_return__163_carry__0_i_23
       (.I0(\tmp_data_V_9_reg_290_reg[15]_0 ),
        .I1(\tmp_data_V_9_reg_290_reg[15] ),
        .I2(CO),
        .O(ap_return__163_carry__0_i_23_n_0));
  LUT6 #(
    .INIT(64'hF70808F708F7F708)) 
    ap_return__163_carry__0_i_24
       (.I0(\tmp_data_V_9_reg_290_reg[15]_0 ),
        .I1(\tmp_data_V_9_reg_290_reg[15] ),
        .I2(CO),
        .I3(\trunc_ln902_reg_307_reg[15]_1 ),
        .I4(\ret_V_reg_300_reg[7]_0 [2]),
        .I5(\ret_V_reg_300_reg[7] [2]),
        .O(ap_return__163_carry__0_i_24_n_0));
  LUT6 #(
    .INIT(64'hEA1515EA15EAEA15)) 
    ap_return__163_carry__0_i_25
       (.I0(CO),
        .I1(\tmp_data_V_9_reg_290_reg[15] ),
        .I2(\tmp_data_V_9_reg_290_reg[15]_0 ),
        .I3(\trunc_ln902_reg_307_reg[15]_2 ),
        .I4(\ret_V_reg_300_reg[7]_0 [1]),
        .I5(\ret_V_reg_300_reg[7] [1]),
        .O(ap_return__163_carry__0_i_25_n_0));
  LUT6 #(
    .INIT(64'h9999699966669666)) 
    ap_return__163_carry__0_i_26
       (.I0(\ret_V_reg_300_reg[7] [0]),
        .I1(\ret_V_reg_300_reg[7]_0 [0]),
        .I2(\tmp_data_V_9_reg_290_reg[15]_0 ),
        .I3(\tmp_data_V_9_reg_290_reg[15] ),
        .I4(CO),
        .I5(\trunc_ln902_reg_307_reg[15]_2 ),
        .O(\tmp_data_V_9_reg_290_reg[15]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    ap_return__163_carry__0_i_34
       (.I0(CO),
        .I1(\tmp_data_V_9_reg_290_reg[15] ),
        .I2(\tmp_data_V_9_reg_290_reg[15]_0 ),
        .O(\tmp_data_V_9_reg_290_reg[15]_6 ));
  LUT6 #(
    .INIT(64'h0999000900090666)) 
    ap_return__163_carry__0_i_4
       (.I0(\tmp_data_V_9_reg_290_reg[15]_3 ),
        .I1(\trunc_ln902_reg_307_reg[15]_3 ),
        .I2(ap_return__163_carry__0_i_23_n_0),
        .I3(\trunc_ln902_reg_307_reg[15]_1 ),
        .I4(\ret_V_reg_300_reg[7]_0 [2]),
        .I5(\ret_V_reg_300_reg[7] [2]),
        .O(ap_return__81_carry__0[3]));
  LUT6 #(
    .INIT(64'hE8E8E880FFFFFFFE)) 
    ap_return__163_carry__0_i_5
       (.I0(\ret_V_reg_300_reg[7] [1]),
        .I1(\ret_V_reg_300_reg[7]_0 [1]),
        .I2(\trunc_ln902_reg_307_reg[15]_2 ),
        .I3(\tmp_data_V_9_reg_290_reg[15]_2 ),
        .I4(\tmp_data_V_9_reg_290_reg[15]_3 ),
        .I5(ap_return__163_carry__0_i_24_n_0),
        .O(ap_return__81_carry__0[2]));
  LUT5 #(
    .INIT(32'hD440FFFD)) 
    ap_return__163_carry__0_i_6
       (.I0(ap_return__163_carry__0_i_23_n_0),
        .I1(\trunc_ln902_reg_307_reg[15]_2 ),
        .I2(\ret_V_reg_300_reg[7]_0 [0]),
        .I3(\ret_V_reg_300_reg[7] [0]),
        .I4(ap_return__163_carry__0_i_25_n_0),
        .O(ap_return__81_carry__0[1]));
  LUT6 #(
    .INIT(64'hFFFFFF1F1F010100)) 
    ap_return__163_carry__0_i_7
       (.I0(\tmp_data_V_9_reg_290_reg[15]_3 ),
        .I1(\tmp_data_V_9_reg_290_reg[15]_2 ),
        .I2(\trunc_ln902_reg_307_reg[15]_0 ),
        .I3(\trunc_ln902_reg_307_reg[15] [6]),
        .I4(O[6]),
        .I5(\tmp_data_V_9_reg_290_reg[15]_4 ),
        .O(ap_return__81_carry__0[0]));
  LUT3 #(
    .INIT(8'h96)) 
    ap_return__163_carry__1_i_14
       (.I0(ap_return__163_carry_i_22_0),
        .I1(\ret_V_reg_300_reg[7]_2 ),
        .I2(ap_return__163_carry__1_i_42_n_0),
        .O(ap_return__163_carry__1_i_42_0));
  LUT6 #(
    .INIT(64'h6996969696969669)) 
    ap_return__163_carry__1_i_28
       (.I0(ap_return__163_carry__1_i_9[1]),
        .I1(ap_return__163_carry__1_i_9_0[1]),
        .I2(\tmp_data_V_9_reg_290_reg[15]_3 ),
        .I3(ap_return__163_carry__1_i_9_1),
        .I4(ap_return__163_carry__1_i_9[0]),
        .I5(ap_return__163_carry__1_i_9_0[0]),
        .O(ap_return__81_carry__1));
  LUT6 #(
    .INIT(64'h9669696969696996)) 
    ap_return__163_carry__1_i_32
       (.I0(ap_return__163_carry__1_i_9[7]),
        .I1(ap_return__163_carry__1_i_9_0[7]),
        .I2(\tmp_data_V_9_reg_290_reg[15]_3 ),
        .I3(ap_return__163_carry__1_i_9_1),
        .I4(ap_return__163_carry__1_i_9[6]),
        .I5(ap_return__163_carry__1_i_9_0[6]),
        .O(ap_return__81_carry__1_4));
  LUT6 #(
    .INIT(64'h9669696969696996)) 
    ap_return__163_carry__1_i_34
       (.I0(ap_return__163_carry__1_i_9[6]),
        .I1(ap_return__163_carry__1_i_9_0[6]),
        .I2(\tmp_data_V_9_reg_290_reg[15]_3 ),
        .I3(ap_return__163_carry__1_i_9_1),
        .I4(ap_return__163_carry__1_i_9[5]),
        .I5(ap_return__163_carry__1_i_9_0[5]),
        .O(ap_return__81_carry__1_3));
  LUT6 #(
    .INIT(64'h9669696969696996)) 
    ap_return__163_carry__1_i_36
       (.I0(ap_return__163_carry__1_i_9[5]),
        .I1(ap_return__163_carry__1_i_9_0[5]),
        .I2(\tmp_data_V_9_reg_290_reg[15]_3 ),
        .I3(ap_return__163_carry__1_i_9_1),
        .I4(ap_return__163_carry__1_i_9[4]),
        .I5(ap_return__163_carry__1_i_9_0[4]),
        .O(ap_return__81_carry__1_2));
  LUT6 #(
    .INIT(64'h9669696969696996)) 
    ap_return__163_carry__1_i_38
       (.I0(ap_return__163_carry__1_i_9[4]),
        .I1(ap_return__163_carry__1_i_9_0[4]),
        .I2(\tmp_data_V_9_reg_290_reg[15]_3 ),
        .I3(ap_return__163_carry__1_i_9_1),
        .I4(ap_return__163_carry__1_i_9[3]),
        .I5(ap_return__163_carry__1_i_9_0[3]),
        .O(ap_return__81_carry__1_1));
  LUT6 #(
    .INIT(64'h9669696969696996)) 
    ap_return__163_carry__1_i_40
       (.I0(ap_return__163_carry__1_i_9[3]),
        .I1(ap_return__163_carry__1_i_9_0[3]),
        .I2(\tmp_data_V_9_reg_290_reg[15]_3 ),
        .I3(ap_return__163_carry__1_i_9_1),
        .I4(ap_return__163_carry__1_i_9[2]),
        .I5(ap_return__163_carry__1_i_9_0[2]),
        .O(ap_return__81_carry__1_0));
  LUT6 #(
    .INIT(64'h9669696969696996)) 
    ap_return__163_carry__1_i_42
       (.I0(ap_return__163_carry__1_i_9[2]),
        .I1(ap_return__163_carry__1_i_9_0[2]),
        .I2(\tmp_data_V_9_reg_290_reg[15]_3 ),
        .I3(ap_return__163_carry__1_i_9_1),
        .I4(ap_return__163_carry__1_i_9[1]),
        .I5(ap_return__163_carry__1_i_9_0[1]),
        .O(ap_return__163_carry__1_i_42_n_0));
  LUT5 #(
    .INIT(32'hA8AA00A8)) 
    ap_return__163_carry__1_i_6
       (.I0(ap_return__81_carry__1),
        .I1(\ret_V_reg_300_reg[7]_0 [4]),
        .I2(\ret_V_reg_300_reg[7] [4]),
        .I3(\ret_V_reg_300_reg[7]_1 ),
        .I4(\tmp_data_V_9_reg_290_reg[15]_3 ),
        .O(ap_return__163_carry_i_22_0));
  LUT6 #(
    .INIT(64'h6A56569595A9A96A)) 
    ap_return__163_carry_i_10
       (.I0(\tmp_data_V_2_reg_255_reg[15] ),
        .I1(\trunc_ln902_reg_307_reg[15] [4]),
        .I2(O[4]),
        .I3(\tmp_data_V_9_reg_290_reg[15]_2 ),
        .I4(\trunc_ln902_reg_307_reg[7]_1 ),
        .I5(\trunc_ln902_reg_307_reg[7]_3 ),
        .O(ap_return__163_carry_i_28[1]));
  LUT6 #(
    .INIT(64'h9669966996696996)) 
    ap_return__163_carry_i_15
       (.I0(CO),
        .I1(\trunc_ln902_reg_307_reg[7]_2 ),
        .I2(O[1]),
        .I3(\trunc_ln902_reg_307_reg[15] [1]),
        .I4(O[0]),
        .I5(\trunc_ln902_reg_307_reg[15] [0]),
        .O(ap_return__163_carry_i_28[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__163_carry_i_18
       (.I0(CO),
        .I1(\tmp_data_V_9_reg_290_reg[15] ),
        .O(\tmp_data_V_9_reg_290_reg[15]_2 ));
  LUT6 #(
    .INIT(64'hD77DD77DD77D4114)) 
    ap_return__163_carry_i_19
       (.I0(\tmp_data_V_9_reg_290_reg[15]_3 ),
        .I1(\trunc_ln902_reg_307_reg[15] [3]),
        .I2(O[3]),
        .I3(\trunc_ln902_reg_307_reg[15]_1 ),
        .I4(\trunc_ln902_reg_307_reg[15] [2]),
        .I5(O[2]),
        .O(ap_return__0_carry));
  LUT6 #(
    .INIT(64'hBBBBBB2BBB2B2222)) 
    ap_return__163_carry_i_2
       (.I0(ap_return__0_carry),
        .I1(\tmp_data_V_9_reg_290_reg[15]_1 ),
        .I2(\trunc_ln902_reg_307_reg[7] ),
        .I3(\trunc_ln902_reg_307_reg[7]_0 ),
        .I4(O[3]),
        .I5(\trunc_ln902_reg_307_reg[15] [3]),
        .O(\tmp_data_V_2_reg_255_reg[15] ));
  LUT6 #(
    .INIT(64'h1EEEE111E1111EEE)) 
    ap_return__163_carry_i_20
       (.I0(CO),
        .I1(\tmp_data_V_9_reg_290_reg[15] ),
        .I2(\trunc_ln902_reg_307_reg[7] ),
        .I3(\trunc_ln902_reg_307_reg[7]_0 ),
        .I4(O[4]),
        .I5(\trunc_ln902_reg_307_reg[15] [4]),
        .O(\tmp_data_V_9_reg_290_reg[15]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ap_return__163_carry_i_22
       (.I0(\tmp_data_V_9_reg_290_reg[15]_0 ),
        .I1(\tmp_data_V_9_reg_290_reg[15] ),
        .I2(CO),
        .O(\tmp_data_V_9_reg_290_reg[15]_3 ));
  LUT6 #(
    .INIT(64'h04FB04FB04FBFBFB)) 
    ap_return__163_carry_i_25
       (.I0(CO),
        .I1(\tmp_data_V_9_reg_290_reg[15] ),
        .I2(\tmp_data_V_9_reg_290_reg[15]_0 ),
        .I3(\trunc_ln902_reg_307_reg[7] ),
        .I4(\trunc_ln902_reg_307_reg[7]_0 ),
        .I5(ap_return__163_carry_i_5),
        .O(\tmp_data_V_9_reg_290_reg[15]_5 ));
  LUT6 #(
    .INIT(64'hEBBEEBBEEBBE8228)) 
    ap_return__163_carry_i_26
       (.I0(\tmp_data_V_9_reg_290_reg[15]_2 ),
        .I1(\trunc_ln902_reg_307_reg[15] [5]),
        .I2(O[5]),
        .I3(\trunc_ln902_reg_307_reg[7]_1 ),
        .I4(\trunc_ln902_reg_307_reg[15] [4]),
        .I5(O[4]),
        .O(ap_return__0_carry_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_8_fu_54_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\tmp_data_V_9_reg_290_reg[15] ,comparison_8_fu_54_p2_carry_n_1,comparison_8_fu_54_p2_carry_n_2,comparison_8_fu_54_p2_carry_n_3,comparison_8_fu_54_p2_carry_n_4,comparison_8_fu_54_p2_carry_n_5,comparison_8_fu_54_p2_carry_n_6,comparison_8_fu_54_p2_carry_n_7}),
        .DI({ap_return__163_carry_i_30[1],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ap_return__163_carry_i_30[0]}),
        .O(NLW_comparison_8_fu_54_p2_carry_O_UNCONNECTED[7:0]),
        .S(ap_return__163_carry_i_30_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_9_fu_60_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\tmp_data_V_9_reg_290_reg[15]_0 ,comparison_9_fu_60_p2_carry_n_1,comparison_9_fu_60_p2_carry_n_2,comparison_9_fu_60_p2_carry_n_3,comparison_9_fu_60_p2_carry_n_4,comparison_9_fu_60_p2_carry_n_5,comparison_9_fu_60_p2_carry_n_6,comparison_9_fu_60_p2_carry_n_7}),
        .DI(ap_return__163_carry_i_30_1),
        .O(NLW_comparison_9_fu_60_p2_carry_O_UNCONNECTED[7:0]),
        .S(ap_return__163_carry_i_30_2));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_fu_48_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({CO,comparison_fu_48_p2_carry_n_1,comparison_fu_48_p2_carry_n_2,comparison_fu_48_p2_carry_n_3,comparison_fu_48_p2_carry_n_4,comparison_fu_48_p2_carry_n_5,comparison_fu_48_p2_carry_n_6,comparison_fu_48_p2_carry_n_7}),
        .DI(DI),
        .O(NLW_comparison_fu_48_p2_carry_O_UNCONNECTED[7:0]),
        .S(S));
endmodule

(* ORIG_REF_NAME = "myproject_axi_decision_function_5" *) 
module design_1_myproject_axi_0_0_myproject_axi_decision_function_5
   (CO,
    \tmp_data_V_5_reg_270_reg[15] ,
    \tmp_data_V_5_reg_270_reg[15]_0 ,
    \tmp_data_V_5_reg_270_reg[15]_1 ,
    \tmp_data_V_5_reg_270_reg[15]_2 ,
    \tmp_data_V_5_reg_270_reg[15]_3 ,
    comparison_fu_48_p2_carry_0,
    \tmp_data_V_3_reg_260_reg[15] ,
    ap_return__81_carry__1,
    ap_return__81_carry__2,
    ap_return__81_carry__2_0,
    ap_return__81_carry__2_1,
    ap_return__81_carry__2_2,
    ap_return__81_carry__2_3,
    ap_return__81_carry__2_4,
    ap_return__163_carry__1_i_18,
    \tmp_data_V_4_reg_265_reg[15] ,
    \tmp_data_V_3_reg_260_reg[15]_0 ,
    \tmp_data_V_3_reg_260_reg[15]_1 ,
    \tmp_data_V_3_reg_260_reg[15]_2 ,
    \tmp_data_V_3_reg_260_reg[15]_3 ,
    DI,
    S,
    ap_return__0_carry_i_14_0,
    ap_return__0_carry_i_14_1,
    ap_return__0_carry_i_14_2,
    ap_return__0_carry_i_12_0,
    ap_return__0_carry,
    ap_return__0_carry__2,
    ap_return__0_carry__2_0,
    ap_return__0_carry__2_1,
    ap_return__0_carry_0,
    ap_return__0_carry_1,
    ap_return__0_carry_2,
    ap_return__0_carry__0,
    O,
    ap_return__163_carry__2_i_8,
    ap_return__163_carry__2_i_9,
    ap_return__163_carry__2_i_8_0,
    ap_return__163_carry__2_i_15,
    ap_return__163_carry__2_i_15_0,
    ap_return__0_carry_3,
    ap_return__0_carry_4,
    ap_return__0_carry__2_2);
  output [0:0]CO;
  output \tmp_data_V_5_reg_270_reg[15] ;
  output [3:0]\tmp_data_V_5_reg_270_reg[15]_0 ;
  output \tmp_data_V_5_reg_270_reg[15]_1 ;
  output [5:0]\tmp_data_V_5_reg_270_reg[15]_2 ;
  output \tmp_data_V_5_reg_270_reg[15]_3 ;
  output comparison_fu_48_p2_carry_0;
  output \tmp_data_V_3_reg_260_reg[15] ;
  output ap_return__81_carry__1;
  output ap_return__81_carry__2;
  output ap_return__81_carry__2_0;
  output ap_return__81_carry__2_1;
  output ap_return__81_carry__2_2;
  output ap_return__81_carry__2_3;
  output ap_return__81_carry__2_4;
  output ap_return__163_carry__1_i_18;
  output [6:0]\tmp_data_V_4_reg_265_reg[15] ;
  output [4:0]\tmp_data_V_3_reg_260_reg[15]_0 ;
  output [7:0]\tmp_data_V_3_reg_260_reg[15]_1 ;
  output [0:0]\tmp_data_V_3_reg_260_reg[15]_2 ;
  output [7:0]\tmp_data_V_3_reg_260_reg[15]_3 ;
  input [7:0]DI;
  input [7:0]S;
  input ap_return__0_carry_i_14_0;
  input [0:0]ap_return__0_carry_i_14_1;
  input [6:0]ap_return__0_carry_i_14_2;
  input [0:0]ap_return__0_carry_i_12_0;
  input [0:0]ap_return__0_carry;
  input [0:0]ap_return__0_carry__2;
  input [0:0]ap_return__0_carry__2_0;
  input [0:0]ap_return__0_carry__2_1;
  input ap_return__0_carry_0;
  input [0:0]ap_return__0_carry_1;
  input ap_return__0_carry_2;
  input ap_return__0_carry__0;
  input [7:0]O;
  input [7:0]ap_return__163_carry__2_i_8;
  input ap_return__163_carry__2_i_9;
  input ap_return__163_carry__2_i_8_0;
  input [0:0]ap_return__163_carry__2_i_15;
  input [0:0]ap_return__163_carry__2_i_15_0;
  input [0:0]ap_return__0_carry_3;
  input ap_return__0_carry_4;
  input ap_return__0_carry__2_2;

  wire [0:0]CO;
  wire [7:0]DI;
  wire [7:0]O;
  wire [7:0]S;
  wire [0:0]ap_return__0_carry;
  wire ap_return__0_carry_0;
  wire [0:0]ap_return__0_carry_1;
  wire ap_return__0_carry_2;
  wire [0:0]ap_return__0_carry_3;
  wire ap_return__0_carry_4;
  wire ap_return__0_carry__0;
  wire [0:0]ap_return__0_carry__2;
  wire [0:0]ap_return__0_carry__2_0;
  wire [0:0]ap_return__0_carry__2_1;
  wire ap_return__0_carry__2_2;
  wire [0:0]ap_return__0_carry_i_12_0;
  wire ap_return__0_carry_i_14_0;
  wire [0:0]ap_return__0_carry_i_14_1;
  wire [6:0]ap_return__0_carry_i_14_2;
  wire ap_return__0_carry_i_24_n_0;
  wire ap_return__163_carry__1_i_18;
  wire [0:0]ap_return__163_carry__2_i_15;
  wire [0:0]ap_return__163_carry__2_i_15_0;
  wire [7:0]ap_return__163_carry__2_i_8;
  wire ap_return__163_carry__2_i_8_0;
  wire ap_return__163_carry__2_i_9;
  wire ap_return__81_carry__1;
  wire ap_return__81_carry__2;
  wire ap_return__81_carry__2_0;
  wire ap_return__81_carry__2_1;
  wire ap_return__81_carry__2_2;
  wire ap_return__81_carry__2_3;
  wire ap_return__81_carry__2_4;
  wire comparison_7_fu_60_p2;
  wire comparison_7_fu_60_p2_carry_n_2;
  wire comparison_7_fu_60_p2_carry_n_3;
  wire comparison_7_fu_60_p2_carry_n_4;
  wire comparison_7_fu_60_p2_carry_n_5;
  wire comparison_7_fu_60_p2_carry_n_6;
  wire comparison_7_fu_60_p2_carry_n_7;
  wire comparison_fu_48_p2_carry_0;
  wire comparison_fu_48_p2_carry_n_1;
  wire comparison_fu_48_p2_carry_n_2;
  wire comparison_fu_48_p2_carry_n_3;
  wire comparison_fu_48_p2_carry_n_4;
  wire comparison_fu_48_p2_carry_n_5;
  wire comparison_fu_48_p2_carry_n_6;
  wire comparison_fu_48_p2_carry_n_7;
  wire \tmp_data_V_3_reg_260_reg[15] ;
  wire [4:0]\tmp_data_V_3_reg_260_reg[15]_0 ;
  wire [7:0]\tmp_data_V_3_reg_260_reg[15]_1 ;
  wire [0:0]\tmp_data_V_3_reg_260_reg[15]_2 ;
  wire [7:0]\tmp_data_V_3_reg_260_reg[15]_3 ;
  wire [6:0]\tmp_data_V_4_reg_265_reg[15] ;
  wire \tmp_data_V_5_reg_270_reg[15] ;
  wire [3:0]\tmp_data_V_5_reg_270_reg[15]_0 ;
  wire \tmp_data_V_5_reg_270_reg[15]_1 ;
  wire [5:0]\tmp_data_V_5_reg_270_reg[15]_2 ;
  wire \tmp_data_V_5_reg_270_reg[15]_3 ;
  wire [7:7]NLW_comparison_7_fu_60_p2_carry_CO_UNCONNECTED;
  wire [7:0]NLW_comparison_7_fu_60_p2_carry_O_UNCONNECTED;
  wire [7:0]NLW_comparison_fu_48_p2_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFF51510051005100)) 
    ap_return__0_carry__0_i_1
       (.I0(CO),
        .I1(comparison_7_fu_60_p2),
        .I2(ap_return__0_carry_i_12_0),
        .I3(ap_return__0_carry_0),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_5_reg_270_reg[15]_0 [3]));
  LUT6 #(
    .INIT(64'h30FD303030CF3030)) 
    ap_return__0_carry__0_i_12
       (.I0(comparison_7_fu_60_p2),
        .I1(CO),
        .I2(ap_return__0_carry_i_12_0),
        .I3(ap_return__0_carry__2_0),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_1),
        .O(\tmp_data_V_3_reg_260_reg[15]_0 [3]));
  LUT6 #(
    .INIT(64'h0254AB5402545454)) 
    ap_return__0_carry__0_i_13
       (.I0(ap_return__0_carry__0),
        .I1(CO),
        .I2(\tmp_data_V_5_reg_270_reg[15]_1 ),
        .I3(ap_return__0_carry__2),
        .I4(ap_return__0_carry__2_0),
        .I5(ap_return__0_carry__2_1),
        .O(\tmp_data_V_3_reg_260_reg[15]_0 [2]));
  LUT6 #(
    .INIT(64'h9996666966696669)) 
    ap_return__0_carry__0_i_14
       (.I0(\tmp_data_V_5_reg_270_reg[15]_0 [1]),
        .I1(ap_return__0_carry__0),
        .I2(\tmp_data_V_5_reg_270_reg[15]_1 ),
        .I3(CO),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_0 [1]));
  LUT5 #(
    .INIT(32'h69966969)) 
    ap_return__0_carry__0_i_15
       (.I0(\tmp_data_V_5_reg_270_reg[15]_0 [0]),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry__0),
        .I3(ap_return__0_carry__2_0),
        .I4(ap_return__0_carry__2),
        .O(\tmp_data_V_3_reg_260_reg[15]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    ap_return__0_carry__0_i_17
       (.I0(CO),
        .I1(comparison_7_fu_60_p2),
        .I2(ap_return__0_carry_i_12_0),
        .O(\tmp_data_V_5_reg_270_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    ap_return__0_carry__0_i_18
       (.I0(ap_return__0_carry_i_12_0),
        .I1(comparison_7_fu_60_p2),
        .I2(CO),
        .O(\tmp_data_V_5_reg_270_reg[15]_3 ));
  LUT6 #(
    .INIT(64'hDFDFDFDFFFFFFFDF)) 
    ap_return__0_carry__0_i_4
       (.I0(ap_return__0_carry__2_1),
        .I1(ap_return__0_carry__2_0),
        .I2(ap_return__0_carry__2),
        .I3(ap_return__0_carry_i_12_0),
        .I4(comparison_7_fu_60_p2),
        .I5(CO),
        .O(\tmp_data_V_5_reg_270_reg[15]_0 [2]));
  LUT6 #(
    .INIT(64'h0400FF0404000400)) 
    ap_return__0_carry__0_i_6
       (.I0(CO),
        .I1(comparison_7_fu_60_p2),
        .I2(ap_return__0_carry_i_12_0),
        .I3(ap_return__0_carry__0),
        .I4(ap_return__0_carry__2_0),
        .I5(ap_return__0_carry__2),
        .O(\tmp_data_V_5_reg_270_reg[15]_0 [1]));
  LUT5 #(
    .INIT(32'h44D44444)) 
    ap_return__0_carry__0_i_7
       (.I0(\tmp_data_V_5_reg_270_reg[15]_1 ),
        .I1(ap_return__0_carry),
        .I2(ap_return__0_carry__2),
        .I3(ap_return__0_carry__2_0),
        .I4(ap_return__0_carry__2_1),
        .O(\tmp_data_V_5_reg_270_reg[15]_0 [0]));
  LUT6 #(
    .INIT(64'h17188888E8E77777)) 
    ap_return__0_carry__0_i_9
       (.I0(ap_return__0_carry_0),
        .I1(\tmp_data_V_5_reg_270_reg[15]_3 ),
        .I2(ap_return__0_carry__2_0),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(\tmp_data_V_5_reg_270_reg[15]_1 ),
        .O(\tmp_data_V_3_reg_260_reg[15]_0 [4]));
  LUT6 #(
    .INIT(64'h1010101010751010)) 
    ap_return__0_carry__1_i_1
       (.I0(ap_return__0_carry_i_24_n_0),
        .I1(ap_return__0_carry_0),
        .I2(ap_return__0_carry_1),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15] ));
  LUT6 #(
    .INIT(64'h6969696969966969)) 
    ap_return__0_carry__1_i_10
       (.I0(\tmp_data_V_3_reg_260_reg[15]_2 ),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry__2_2),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_1 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF57)) 
    ap_return__0_carry__1_i_2
       (.I0(ap_return__0_carry__2),
        .I1(ap_return__0_carry__2_1),
        .I2(ap_return__0_carry__2_0),
        .I3(CO),
        .I4(comparison_7_fu_60_p2),
        .I5(ap_return__0_carry_i_12_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_2 ));
  LUT6 #(
    .INIT(64'h6969696969966969)) 
    ap_return__0_carry__1_i_3
       (.I0(\tmp_data_V_3_reg_260_reg[15] ),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry__2_2),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_1 [7]));
  LUT6 #(
    .INIT(64'h6969696969966969)) 
    ap_return__0_carry__1_i_4
       (.I0(\tmp_data_V_3_reg_260_reg[15] ),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry__2_2),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_1 [6]));
  LUT6 #(
    .INIT(64'h6969696969966969)) 
    ap_return__0_carry__1_i_5
       (.I0(\tmp_data_V_3_reg_260_reg[15] ),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry__2_2),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_1 [5]));
  LUT6 #(
    .INIT(64'h6969696969966969)) 
    ap_return__0_carry__1_i_6
       (.I0(\tmp_data_V_3_reg_260_reg[15] ),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry__2_2),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_1 [4]));
  LUT6 #(
    .INIT(64'h6969696969966969)) 
    ap_return__0_carry__1_i_7
       (.I0(\tmp_data_V_3_reg_260_reg[15] ),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry__2_2),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_1 [3]));
  LUT6 #(
    .INIT(64'h6969696969966969)) 
    ap_return__0_carry__1_i_8
       (.I0(\tmp_data_V_3_reg_260_reg[15] ),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry__2_2),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_1 [2]));
  LUT6 #(
    .INIT(64'h6969696969966969)) 
    ap_return__0_carry__1_i_9
       (.I0(\tmp_data_V_3_reg_260_reg[15] ),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry__2_2),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_1 [1]));
  LUT6 #(
    .INIT(64'h6969696969966969)) 
    ap_return__0_carry__2_i_1
       (.I0(\tmp_data_V_3_reg_260_reg[15] ),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry__2_2),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_3 [7]));
  LUT6 #(
    .INIT(64'h6969696969966969)) 
    ap_return__0_carry__2_i_2
       (.I0(\tmp_data_V_3_reg_260_reg[15] ),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry__2_2),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_3 [6]));
  LUT6 #(
    .INIT(64'h6969696969966969)) 
    ap_return__0_carry__2_i_3
       (.I0(\tmp_data_V_3_reg_260_reg[15] ),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry__2_2),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_3 [5]));
  LUT6 #(
    .INIT(64'h6969696969966969)) 
    ap_return__0_carry__2_i_4
       (.I0(\tmp_data_V_3_reg_260_reg[15] ),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry__2_2),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_3 [4]));
  LUT6 #(
    .INIT(64'h6969696969966969)) 
    ap_return__0_carry__2_i_5
       (.I0(\tmp_data_V_3_reg_260_reg[15] ),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry__2_2),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_3 [3]));
  LUT6 #(
    .INIT(64'h6969696969966969)) 
    ap_return__0_carry__2_i_6
       (.I0(\tmp_data_V_3_reg_260_reg[15] ),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry__2_2),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_3 [2]));
  LUT6 #(
    .INIT(64'h6969696969966969)) 
    ap_return__0_carry__2_i_7
       (.I0(\tmp_data_V_3_reg_260_reg[15] ),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry__2_2),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_3 [1]));
  LUT6 #(
    .INIT(64'h6969696969966969)) 
    ap_return__0_carry__2_i_8
       (.I0(\tmp_data_V_3_reg_260_reg[15] ),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry__2_2),
        .I3(ap_return__0_carry__2_1),
        .I4(ap_return__0_carry__2),
        .I5(ap_return__0_carry__2_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_3 [0]));
  LUT5 #(
    .INIT(32'h22222B22)) 
    ap_return__0_carry_i_1
       (.I0(ap_return__0_carry_2),
        .I1(ap_return__0_carry__0),
        .I2(ap_return__0_carry_i_12_0),
        .I3(comparison_7_fu_60_p2),
        .I4(CO),
        .O(\tmp_data_V_5_reg_270_reg[15]_2 [5]));
  LUT6 #(
    .INIT(64'h65659A659A9A659A)) 
    ap_return__0_carry_i_11
       (.I0(\tmp_data_V_5_reg_270_reg[15]_2 [3]),
        .I1(CO),
        .I2(ap_return__0_carry_i_12_0),
        .I3(ap_return__0_carry_3),
        .I4(ap_return__0_carry),
        .I5(ap_return__0_carry_2),
        .O(\tmp_data_V_4_reg_265_reg[15] [4]));
  LUT6 #(
    .INIT(64'h9699999969666666)) 
    ap_return__0_carry_i_12
       (.I0(\tmp_data_V_5_reg_270_reg[15]_2 [2]),
        .I1(ap_return__0_carry_i_24_n_0),
        .I2(ap_return__0_carry),
        .I3(ap_return__0_carry_3),
        .I4(ap_return__0_carry_1),
        .I5(ap_return__0_carry__2),
        .O(\tmp_data_V_4_reg_265_reg[15] [3]));
  LUT6 #(
    .INIT(64'h6666696699999699)) 
    ap_return__0_carry_i_13
       (.I0(\tmp_data_V_5_reg_270_reg[15]_2 [1]),
        .I1(\tmp_data_V_5_reg_270_reg[15]_1 ),
        .I2(ap_return__0_carry),
        .I3(ap_return__0_carry_3),
        .I4(ap_return__0_carry_1),
        .I5(ap_return__0_carry_4),
        .O(\tmp_data_V_4_reg_265_reg[15] [2]));
  LUT6 #(
    .INIT(64'h30FF30FFF3CC24BB)) 
    ap_return__0_carry_i_14
       (.I0(comparison_7_fu_60_p2),
        .I1(ap_return__0_carry),
        .I2(ap_return__0_carry__2_0),
        .I3(ap_return__0_carry__2),
        .I4(ap_return__0_carry_i_12_0),
        .I5(CO),
        .O(\tmp_data_V_4_reg_265_reg[15] [1]));
  LUT6 #(
    .INIT(64'h8888787777778788)) 
    ap_return__0_carry_i_15
       (.I0(ap_return__0_carry__2_0),
        .I1(ap_return__0_carry__2),
        .I2(ap_return__0_carry_i_12_0),
        .I3(comparison_7_fu_60_p2),
        .I4(CO),
        .I5(ap_return__0_carry),
        .O(\tmp_data_V_4_reg_265_reg[15] [0]));
  LUT4 #(
    .INIT(16'hF8FF)) 
    ap_return__0_carry_i_2
       (.I0(ap_return__0_carry__2_0),
        .I1(ap_return__0_carry__2),
        .I2(CO),
        .I3(ap_return__0_carry_i_12_0),
        .O(\tmp_data_V_5_reg_270_reg[15]_2 [4]));
  LUT2 #(
    .INIT(4'h2)) 
    ap_return__0_carry_i_21
       (.I0(ap_return__0_carry_i_12_0),
        .I1(CO),
        .O(comparison_fu_48_p2_carry_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h01)) 
    ap_return__0_carry_i_23
       (.I0(ap_return__0_carry_i_12_0),
        .I1(comparison_7_fu_60_p2),
        .I2(CO),
        .O(\tmp_data_V_5_reg_270_reg[15]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    ap_return__0_carry_i_24
       (.I0(ap_return__0_carry_i_12_0),
        .I1(comparison_7_fu_60_p2),
        .I2(CO),
        .O(ap_return__0_carry_i_24_n_0));
  LUT6 #(
    .INIT(64'h0004000004FF0404)) 
    ap_return__0_carry_i_4
       (.I0(CO),
        .I1(comparison_7_fu_60_p2),
        .I2(ap_return__0_carry_i_12_0),
        .I3(ap_return__0_carry_0),
        .I4(ap_return__0_carry_1),
        .I5(ap_return__0_carry__2),
        .O(\tmp_data_V_5_reg_270_reg[15]_2 [3]));
  LUT6 #(
    .INIT(64'hFDFDFD5454545454)) 
    ap_return__0_carry_i_5
       (.I0(\tmp_data_V_5_reg_270_reg[15]_1 ),
        .I1(ap_return__0_carry_0),
        .I2(ap_return__0_carry_1),
        .I3(ap_return__0_carry__2_0),
        .I4(ap_return__0_carry__2_1),
        .I5(ap_return__0_carry__2),
        .O(\tmp_data_V_5_reg_270_reg[15]_2 [2]));
  LUT4 #(
    .INIT(16'hD0DD)) 
    ap_return__0_carry_i_6
       (.I0(ap_return__0_carry__2),
        .I1(ap_return__0_carry__2_0),
        .I2(CO),
        .I3(ap_return__0_carry_i_12_0),
        .O(\tmp_data_V_5_reg_270_reg[15]_2 [1]));
  LUT6 #(
    .INIT(64'h7F077F077F7F7F07)) 
    ap_return__0_carry_i_7
       (.I0(ap_return__0_carry__2),
        .I1(ap_return__0_carry__2_0),
        .I2(ap_return__0_carry),
        .I3(CO),
        .I4(comparison_7_fu_60_p2),
        .I5(ap_return__0_carry_i_12_0),
        .O(\tmp_data_V_5_reg_270_reg[15]_2 [0]));
  LUT6 #(
    .INIT(64'h508E50F5AF71AF0A)) 
    ap_return__0_carry_i_8
       (.I0(ap_return__0_carry_i_24_n_0),
        .I1(ap_return__0_carry_1),
        .I2(ap_return__0_carry_2),
        .I3(ap_return__0_carry),
        .I4(ap_return__0_carry_3),
        .I5(comparison_fu_48_p2_carry_0),
        .O(\tmp_data_V_4_reg_265_reg[15] [6]));
  LUT6 #(
    .INIT(64'h5565AA9AAA9A5565)) 
    ap_return__0_carry_i_9
       (.I0(\tmp_data_V_5_reg_270_reg[15]_2 [4]),
        .I1(CO),
        .I2(comparison_7_fu_60_p2),
        .I3(ap_return__0_carry_i_12_0),
        .I4(ap_return__0_carry__0),
        .I5(ap_return__0_carry_2),
        .O(\tmp_data_V_4_reg_265_reg[15] [5]));
  LUT5 #(
    .INIT(32'h96666669)) 
    ap_return__163_carry__2_i_31
       (.I0(O[7]),
        .I1(ap_return__163_carry__2_i_8[7]),
        .I2(O[6]),
        .I3(ap_return__163_carry__2_i_8[6]),
        .I4(ap_return__163_carry__2_i_8_0),
        .O(ap_return__163_carry__1_i_18));
  LUT6 #(
    .INIT(64'h9669696969696996)) 
    ap_return__163_carry__2_i_34
       (.I0(O[6]),
        .I1(ap_return__163_carry__2_i_8[6]),
        .I2(ap_return__163_carry__2_i_9),
        .I3(ap_return__163_carry__2_i_8_0),
        .I4(O[5]),
        .I5(ap_return__163_carry__2_i_8[5]),
        .O(ap_return__81_carry__2_4));
  LUT6 #(
    .INIT(64'h9669696969696996)) 
    ap_return__163_carry__2_i_36
       (.I0(O[5]),
        .I1(ap_return__163_carry__2_i_8[5]),
        .I2(ap_return__163_carry__2_i_9),
        .I3(ap_return__163_carry__2_i_8_0),
        .I4(O[4]),
        .I5(ap_return__163_carry__2_i_8[4]),
        .O(ap_return__81_carry__2_3));
  LUT6 #(
    .INIT(64'h9669696969696996)) 
    ap_return__163_carry__2_i_38
       (.I0(O[4]),
        .I1(ap_return__163_carry__2_i_8[4]),
        .I2(ap_return__163_carry__2_i_9),
        .I3(ap_return__163_carry__2_i_8_0),
        .I4(O[3]),
        .I5(ap_return__163_carry__2_i_8[3]),
        .O(ap_return__81_carry__2_2));
  LUT6 #(
    .INIT(64'h9669696969696996)) 
    ap_return__163_carry__2_i_40
       (.I0(O[3]),
        .I1(ap_return__163_carry__2_i_8[3]),
        .I2(ap_return__163_carry__2_i_9),
        .I3(ap_return__163_carry__2_i_8_0),
        .I4(O[2]),
        .I5(ap_return__163_carry__2_i_8[2]),
        .O(ap_return__81_carry__2_1));
  LUT6 #(
    .INIT(64'h9669696969696996)) 
    ap_return__163_carry__2_i_42
       (.I0(O[2]),
        .I1(ap_return__163_carry__2_i_8[2]),
        .I2(ap_return__163_carry__2_i_9),
        .I3(ap_return__163_carry__2_i_8_0),
        .I4(O[1]),
        .I5(ap_return__163_carry__2_i_8[1]),
        .O(ap_return__81_carry__2_0));
  LUT6 #(
    .INIT(64'h9669696969696996)) 
    ap_return__163_carry__2_i_44
       (.I0(O[1]),
        .I1(ap_return__163_carry__2_i_8[1]),
        .I2(ap_return__163_carry__2_i_9),
        .I3(ap_return__163_carry__2_i_8_0),
        .I4(O[0]),
        .I5(ap_return__163_carry__2_i_8[0]),
        .O(ap_return__81_carry__2));
  LUT6 #(
    .INIT(64'h9669696969696996)) 
    ap_return__163_carry__2_i_46
       (.I0(O[0]),
        .I1(ap_return__163_carry__2_i_8[0]),
        .I2(ap_return__163_carry__2_i_9),
        .I3(ap_return__163_carry__2_i_8_0),
        .I4(ap_return__163_carry__2_i_15),
        .I5(ap_return__163_carry__2_i_15_0),
        .O(ap_return__81_carry__1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_7_fu_60_p2_carry
       (.CI(ap_return__0_carry_i_14_0),
        .CI_TOP(1'b0),
        .CO({NLW_comparison_7_fu_60_p2_carry_CO_UNCONNECTED[7],comparison_7_fu_60_p2,comparison_7_fu_60_p2_carry_n_2,comparison_7_fu_60_p2_carry_n_3,comparison_7_fu_60_p2_carry_n_4,comparison_7_fu_60_p2_carry_n_5,comparison_7_fu_60_p2_carry_n_6,comparison_7_fu_60_p2_carry_n_7}),
        .DI({1'b0,ap_return__0_carry_i_14_1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_comparison_7_fu_60_p2_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,ap_return__0_carry_i_14_2}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_fu_48_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({CO,comparison_fu_48_p2_carry_n_1,comparison_fu_48_p2_carry_n_2,comparison_fu_48_p2_carry_n_3,comparison_fu_48_p2_carry_n_4,comparison_fu_48_p2_carry_n_5,comparison_fu_48_p2_carry_n_6,comparison_fu_48_p2_carry_n_7}),
        .DI(DI),
        .O(NLW_comparison_fu_48_p2_carry_O_UNCONNECTED[7:0]),
        .S(S));
endmodule

(* ORIG_REF_NAME = "myproject_axi_decision_function_6" *) 
module design_1_myproject_axi_0_0_myproject_axi_decision_function_6
   (CO,
    \tmp_data_V_8_reg_285_reg[15] ,
    \tmp_data_V_6_reg_275_reg[15] ,
    \tmp_data_V_3_reg_260_reg[15] ,
    \tmp_data_V_3_reg_260_reg[15]_0 ,
    \tmp_data_V_8_reg_285_reg[15]_0 ,
    \tmp_data_V_8_reg_285_reg[15]_1 ,
    \tmp_data_V_6_reg_275_reg[15]_0 ,
    \tmp_data_V_3_reg_260_reg[15]_1 ,
    \tmp_data_V_8_reg_285_reg[15]_2 ,
    DI,
    S,
    ap_return__81_carry_i_1,
    ap_return__81_carry_i_1_0,
    ap_return__81_carry_i_14_0,
    ap_return__81_carry_i_14_1,
    ap_return__81_carry,
    ap_return__81_carry_0,
    ap_return__81_carry_1,
    ap_return__81_carry_2,
    ap_return__81_carry_3,
    ap_return__81_carry_4,
    ap_return__81_carry_5,
    ap_return__81_carry_6,
    ap_return__81_carry_7,
    ap_return__81_carry__0,
    ap_return__81_carry__0_0,
    ap_return__81_carry__0_1);
  output [0:0]CO;
  output [0:0]\tmp_data_V_8_reg_285_reg[15] ;
  output [4:0]\tmp_data_V_6_reg_275_reg[15] ;
  output \tmp_data_V_3_reg_260_reg[15] ;
  output \tmp_data_V_3_reg_260_reg[15]_0 ;
  output [1:0]\tmp_data_V_8_reg_285_reg[15]_0 ;
  output \tmp_data_V_8_reg_285_reg[15]_1 ;
  output [5:0]\tmp_data_V_6_reg_275_reg[15]_0 ;
  output [2:0]\tmp_data_V_3_reg_260_reg[15]_1 ;
  output \tmp_data_V_8_reg_285_reg[15]_2 ;
  input [7:0]DI;
  input [7:0]S;
  input [1:0]ap_return__81_carry_i_1;
  input [7:0]ap_return__81_carry_i_1_0;
  input [1:0]ap_return__81_carry_i_14_0;
  input [7:0]ap_return__81_carry_i_14_1;
  input [0:0]ap_return__81_carry;
  input [0:0]ap_return__81_carry_0;
  input [0:0]ap_return__81_carry_1;
  input [0:0]ap_return__81_carry_2;
  input ap_return__81_carry_3;
  input [0:0]ap_return__81_carry_4;
  input ap_return__81_carry_5;
  input [0:0]ap_return__81_carry_6;
  input ap_return__81_carry_7;
  input ap_return__81_carry__0;
  input [0:0]ap_return__81_carry__0_0;
  input ap_return__81_carry__0_1;

  wire [0:0]CO;
  wire [7:0]DI;
  wire [7:0]S;
  wire [0:0]ap_return__81_carry;
  wire [0:0]ap_return__81_carry_0;
  wire [0:0]ap_return__81_carry_1;
  wire [0:0]ap_return__81_carry_2;
  wire ap_return__81_carry_3;
  wire [0:0]ap_return__81_carry_4;
  wire ap_return__81_carry_5;
  wire [0:0]ap_return__81_carry_6;
  wire ap_return__81_carry_7;
  wire ap_return__81_carry__0;
  wire [0:0]ap_return__81_carry__0_0;
  wire ap_return__81_carry__0_1;
  wire [1:0]ap_return__81_carry_i_1;
  wire [1:0]ap_return__81_carry_i_14_0;
  wire [7:0]ap_return__81_carry_i_14_1;
  wire [7:0]ap_return__81_carry_i_1_0;
  wire comparison_4_fu_62_p2_carry_n_1;
  wire comparison_4_fu_62_p2_carry_n_2;
  wire comparison_4_fu_62_p2_carry_n_3;
  wire comparison_4_fu_62_p2_carry_n_4;
  wire comparison_4_fu_62_p2_carry_n_5;
  wire comparison_4_fu_62_p2_carry_n_6;
  wire comparison_4_fu_62_p2_carry_n_7;
  wire comparison_5_fu_68_p2;
  wire comparison_5_fu_68_p2_carry_n_1;
  wire comparison_5_fu_68_p2_carry_n_2;
  wire comparison_5_fu_68_p2_carry_n_3;
  wire comparison_5_fu_68_p2_carry_n_4;
  wire comparison_5_fu_68_p2_carry_n_5;
  wire comparison_5_fu_68_p2_carry_n_6;
  wire comparison_5_fu_68_p2_carry_n_7;
  wire comparison_fu_56_p2_carry_n_1;
  wire comparison_fu_56_p2_carry_n_2;
  wire comparison_fu_56_p2_carry_n_3;
  wire comparison_fu_56_p2_carry_n_4;
  wire comparison_fu_56_p2_carry_n_5;
  wire comparison_fu_56_p2_carry_n_6;
  wire comparison_fu_56_p2_carry_n_7;
  wire \tmp_data_V_3_reg_260_reg[15] ;
  wire \tmp_data_V_3_reg_260_reg[15]_0 ;
  wire [2:0]\tmp_data_V_3_reg_260_reg[15]_1 ;
  wire [4:0]\tmp_data_V_6_reg_275_reg[15] ;
  wire [5:0]\tmp_data_V_6_reg_275_reg[15]_0 ;
  wire [0:0]\tmp_data_V_8_reg_285_reg[15] ;
  wire [1:0]\tmp_data_V_8_reg_285_reg[15]_0 ;
  wire \tmp_data_V_8_reg_285_reg[15]_1 ;
  wire \tmp_data_V_8_reg_285_reg[15]_2 ;
  wire [7:0]NLW_comparison_4_fu_62_p2_carry_O_UNCONNECTED;
  wire [7:0]NLW_comparison_5_fu_68_p2_carry_O_UNCONNECTED;
  wire [7:0]NLW_comparison_fu_56_p2_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h6666699999999666)) 
    ap_return__81_carry__0_i_14
       (.I0(ap_return__81_carry__0_0),
        .I1(ap_return__81_carry__0_1),
        .I2(comparison_5_fu_68_p2),
        .I3(\tmp_data_V_8_reg_285_reg[15] ),
        .I4(CO),
        .I5(ap_return__81_carry_3),
        .O(\tmp_data_V_3_reg_260_reg[15]_1 [2]));
  LUT6 #(
    .INIT(64'h6969699696969696)) 
    ap_return__81_carry__0_i_15
       (.I0(\tmp_data_V_8_reg_285_reg[15]_0 [1]),
        .I1(\tmp_data_V_3_reg_260_reg[15] ),
        .I2(ap_return__81_carry__0),
        .I3(ap_return__81_carry_2),
        .I4(ap_return__81_carry_4),
        .I5(ap_return__81_carry_1),
        .O(\tmp_data_V_3_reg_260_reg[15]_1 [1]));
  LUT6 #(
    .INIT(64'h00A8FF575700A8FF)) 
    ap_return__81_carry__0_i_16
       (.I0(ap_return__81_carry_1),
        .I1(ap_return__81_carry_4),
        .I2(ap_return__81_carry_2),
        .I3(CO),
        .I4(\tmp_data_V_3_reg_260_reg[15]_0 ),
        .I5(ap_return__81_carry_0),
        .O(\tmp_data_V_3_reg_260_reg[15]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ap_return__81_carry__0_i_17
       (.I0(comparison_5_fu_68_p2),
        .I1(\tmp_data_V_8_reg_285_reg[15] ),
        .I2(CO),
        .O(\tmp_data_V_3_reg_260_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    ap_return__81_carry__0_i_18
       (.I0(CO),
        .I1(\tmp_data_V_8_reg_285_reg[15] ),
        .I2(comparison_5_fu_68_p2),
        .O(\tmp_data_V_8_reg_285_reg[15]_2 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    ap_return__81_carry__0_i_7
       (.I0(ap_return__81_carry_0),
        .I1(CO),
        .I2(\tmp_data_V_8_reg_285_reg[15] ),
        .I3(comparison_5_fu_68_p2),
        .O(\tmp_data_V_8_reg_285_reg[15]_0 [1]));
  LUT4 #(
    .INIT(16'hAA9A)) 
    ap_return__81_carry__0_i_8
       (.I0(ap_return__81_carry_0),
        .I1(CO),
        .I2(\tmp_data_V_8_reg_285_reg[15] ),
        .I3(comparison_5_fu_68_p2),
        .O(\tmp_data_V_8_reg_285_reg[15]_0 [0]));
  LUT6 #(
    .INIT(64'h9696969696699696)) 
    ap_return__81_carry_i_10
       (.I0(\tmp_data_V_6_reg_275_reg[15] [3]),
        .I1(ap_return__81_carry_0),
        .I2(\tmp_data_V_3_reg_260_reg[15]_0 ),
        .I3(ap_return__81_carry_4),
        .I4(ap_return__81_carry_1),
        .I5(ap_return__81_carry_2),
        .O(\tmp_data_V_6_reg_275_reg[15]_0 [5]));
  LUT6 #(
    .INIT(64'hAA95556A556AAA95)) 
    ap_return__81_carry_i_11
       (.I0(ap_return__81_carry_6),
        .I1(comparison_5_fu_68_p2),
        .I2(\tmp_data_V_8_reg_285_reg[15] ),
        .I3(CO),
        .I4(ap_return__81_carry_7),
        .I5(ap_return__81_carry_1),
        .O(\tmp_data_V_6_reg_275_reg[15]_0 [4]));
  LUT5 #(
    .INIT(32'h96696969)) 
    ap_return__81_carry_i_12
       (.I0(\tmp_data_V_6_reg_275_reg[15] [2]),
        .I1(\tmp_data_V_3_reg_260_reg[15]_0 ),
        .I2(ap_return__81_carry_5),
        .I3(ap_return__81_carry_1),
        .I4(ap_return__81_carry_2),
        .O(\tmp_data_V_6_reg_275_reg[15]_0 [3]));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'hEDCDD1D3)) 
    ap_return__81_carry_i_13
       (.I0(\tmp_data_V_8_reg_285_reg[15] ),
        .I1(CO),
        .I2(ap_return__81_carry_0),
        .I3(comparison_5_fu_68_p2),
        .I4(ap_return__81_carry_1),
        .O(\tmp_data_V_6_reg_275_reg[15]_0 [2]));
  LUT6 #(
    .INIT(64'h9669966996969669)) 
    ap_return__81_carry_i_14
       (.I0(\tmp_data_V_6_reg_275_reg[15] [0]),
        .I1(ap_return__81_carry_0),
        .I2(ap_return__81_carry_1),
        .I3(CO),
        .I4(\tmp_data_V_8_reg_285_reg[15] ),
        .I5(comparison_5_fu_68_p2),
        .O(\tmp_data_V_6_reg_275_reg[15]_0 [1]));
  LUT6 #(
    .INIT(64'h2D2D2DD22DD22DD2)) 
    ap_return__81_carry_i_15
       (.I0(ap_return__81_carry_1),
        .I1(ap_return__81_carry_2),
        .I2(ap_return__81_carry_3),
        .I3(CO),
        .I4(\tmp_data_V_8_reg_285_reg[15] ),
        .I5(comparison_5_fu_68_p2),
        .O(\tmp_data_V_6_reg_275_reg[15]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ap_return__81_carry_i_17
       (.I0(comparison_5_fu_68_p2),
        .I1(\tmp_data_V_8_reg_285_reg[15] ),
        .I2(CO),
        .O(\tmp_data_V_3_reg_260_reg[15]_0 ));
  LUT5 #(
    .INIT(32'h11111711)) 
    ap_return__81_carry_i_2
       (.I0(\tmp_data_V_3_reg_260_reg[15]_0 ),
        .I1(ap_return__81_carry_0),
        .I2(ap_return__81_carry_4),
        .I3(ap_return__81_carry_1),
        .I4(ap_return__81_carry_2),
        .O(\tmp_data_V_6_reg_275_reg[15] [4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__81_carry_i_20
       (.I0(CO),
        .I1(\tmp_data_V_8_reg_285_reg[15] ),
        .O(\tmp_data_V_8_reg_285_reg[15]_1 ));
  LUT6 #(
    .INIT(64'hDDDDDFFF00000DDD)) 
    ap_return__81_carry_i_3
       (.I0(ap_return__81_carry),
        .I1(ap_return__81_carry_0),
        .I2(comparison_5_fu_68_p2),
        .I3(\tmp_data_V_8_reg_285_reg[15] ),
        .I4(CO),
        .I5(ap_return__81_carry_1),
        .O(\tmp_data_V_6_reg_275_reg[15] [3]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    ap_return__81_carry_i_5
       (.I0(\tmp_data_V_8_reg_285_reg[15] ),
        .I1(CO),
        .I2(ap_return__81_carry_0),
        .O(\tmp_data_V_6_reg_275_reg[15] [2]));
  LUT5 #(
    .INIT(32'hB2B2BBB2)) 
    ap_return__81_carry_i_6
       (.I0(ap_return__81_carry_0),
        .I1(ap_return__81_carry_1),
        .I2(CO),
        .I3(\tmp_data_V_8_reg_285_reg[15] ),
        .I4(comparison_5_fu_68_p2),
        .O(\tmp_data_V_6_reg_275_reg[15] [1]));
  LUT6 #(
    .INIT(64'hBFBFBFBFBF0B0B0B)) 
    ap_return__81_carry_i_7
       (.I0(ap_return__81_carry_2),
        .I1(ap_return__81_carry_1),
        .I2(ap_return__81_carry_3),
        .I3(comparison_5_fu_68_p2),
        .I4(\tmp_data_V_8_reg_285_reg[15] ),
        .I5(CO),
        .O(\tmp_data_V_6_reg_275_reg[15] [0]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_4_fu_62_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\tmp_data_V_8_reg_285_reg[15] ,comparison_4_fu_62_p2_carry_n_1,comparison_4_fu_62_p2_carry_n_2,comparison_4_fu_62_p2_carry_n_3,comparison_4_fu_62_p2_carry_n_4,comparison_4_fu_62_p2_carry_n_5,comparison_4_fu_62_p2_carry_n_6,comparison_4_fu_62_p2_carry_n_7}),
        .DI({ap_return__81_carry_i_1[1],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ap_return__81_carry_i_1[0]}),
        .O(NLW_comparison_4_fu_62_p2_carry_O_UNCONNECTED[7:0]),
        .S(ap_return__81_carry_i_1_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_5_fu_68_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({comparison_5_fu_68_p2,comparison_5_fu_68_p2_carry_n_1,comparison_5_fu_68_p2_carry_n_2,comparison_5_fu_68_p2_carry_n_3,comparison_5_fu_68_p2_carry_n_4,comparison_5_fu_68_p2_carry_n_5,comparison_5_fu_68_p2_carry_n_6,comparison_5_fu_68_p2_carry_n_7}),
        .DI({ap_return__81_carry_i_14_0[1],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ap_return__81_carry_i_14_0[0]}),
        .O(NLW_comparison_5_fu_68_p2_carry_O_UNCONNECTED[7:0]),
        .S(ap_return__81_carry_i_14_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_fu_56_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({CO,comparison_fu_56_p2_carry_n_1,comparison_fu_56_p2_carry_n_2,comparison_fu_56_p2_carry_n_3,comparison_fu_56_p2_carry_n_4,comparison_fu_56_p2_carry_n_5,comparison_fu_56_p2_carry_n_6,comparison_fu_56_p2_carry_n_7}),
        .DI(DI),
        .O(NLW_comparison_fu_56_p2_carry_O_UNCONNECTED[7:0]),
        .S(S));
endmodule

(* ORIG_REF_NAME = "myproject_axi_decision_function_7" *) 
module design_1_myproject_axi_0_0_myproject_axi_decision_function_7
   (\tmp_data_V_2_reg_255_reg[15] ,
    \tmp_data_V_2_reg_255_reg[15]_0 ,
    \tmp_data_V_6_reg_275_reg[15] ,
    ap_return__81_carry,
    \tmp_data_V_2_reg_255_reg[15]_1 ,
    ap_return__163_carry__0_i_18_0,
    \tmp_data_V_2_reg_255_reg[15]_2 ,
    \tmp_data_V_6_reg_275_reg[15]_0 ,
    ap_return__163_carry__1_i_19_0,
    \tmp_data_V_6_reg_275_reg[15]_1 ,
    \tmp_data_V_6_reg_275_reg[15]_2 ,
    \tmp_data_V_2_reg_255_reg[15]_3 ,
    \tmp_data_V_2_reg_255_reg[15]_4 ,
    ap_return__0_carry__1,
    ap_return__163_carry__2_i_17_0,
    \tmp_data_V_6_reg_275_reg[15]_3 ,
    ap_return__163_carry_i_22,
    \tmp_data_V_2_reg_255_reg[15]_5 ,
    ap_return__163_carry_i_27_0,
    ap_return__163_carry__0_i_28_0,
    ap_return__163_carry__1_i_32,
    ap_return__163_carry_i_22_0,
    \tmp_data_V_2_reg_255_reg[15]_6 ,
    DI,
    S,
    ap_return__163_carry_i_25,
    ap_return__163_carry_i_25_0,
    ap_return__163_carry_i_25_1,
    ap_return__163_carry_i_25_2,
    CO,
    O,
    \trunc_ln902_reg_307_reg[15] ,
    \trunc_ln902_reg_307_reg[7] ,
    \trunc_ln902_reg_307_reg[7]_0 ,
    \ret_V_reg_300_reg[7] ,
    \ret_V_reg_300_reg[7]_0 ,
    \trunc_ln902_reg_307_reg[15]_0 ,
    \trunc_ln902_reg_307_reg[7]_1 ,
    \trunc_ln902_reg_307_reg[15]_1 ,
    \out_local_V_reg_295_reg[31] ,
    \out_local_V_reg_295_reg[31]_0 ,
    \trunc_ln902_reg_307_reg[7]_2 ,
    ap_return__163_carry__2_i_8_0,
    ap_return__163_carry__2_i_8_1,
    \trunc_ln902_reg_307_reg[7]_3 ,
    \trunc_ln902_reg_307_reg[7]_4 ,
    \trunc_ln902_reg_307_reg[15]_2 ,
    \ret_V_reg_300_reg[7]_1 ,
    \ret_V_reg_300_reg[7]_2 ,
    \ret_V_reg_300_reg[7]_3 ,
    \ret_V_reg_300_reg[7]_4 ,
    \ret_V_reg_300_reg[7]_5 ,
    \ret_V_reg_300_reg[7]_6 ,
    \out_local_V_reg_295_reg[31]_1 ,
    \out_local_V_reg_295_reg[31]_2 ,
    \out_local_V_reg_295_reg[31]_3 ,
    \out_local_V_reg_295_reg[31]_4 ,
    \out_local_V_reg_295_reg[31]_5 ,
    \out_local_V_reg_295_reg[31]_6 ,
    \out_local_V_reg_295_reg[31]_7 ,
    \out_local_V_reg_295_reg[31]_8 ,
    \out_local_V_reg_295_reg[31]_9 ,
    \out_local_V_reg_295_reg[31]_10 ,
    \out_local_V_reg_295_reg[31]_11 ,
    \out_local_V_reg_295_reg[31]_12 ,
    \out_local_V_reg_295_reg[31]_13 ,
    ap_return__163_carry_i_13_0,
    ap_return__163_carry_i_13_1);
  output [0:0]\tmp_data_V_2_reg_255_reg[15] ;
  output [0:0]\tmp_data_V_2_reg_255_reg[15]_0 ;
  output [0:0]\tmp_data_V_6_reg_275_reg[15] ;
  output [4:0]ap_return__81_carry;
  output \tmp_data_V_2_reg_255_reg[15]_1 ;
  output [3:0]ap_return__163_carry__0_i_18_0;
  output \tmp_data_V_2_reg_255_reg[15]_2 ;
  output \tmp_data_V_6_reg_275_reg[15]_0 ;
  output [6:0]ap_return__163_carry__1_i_19_0;
  output \tmp_data_V_6_reg_275_reg[15]_1 ;
  output \tmp_data_V_6_reg_275_reg[15]_2 ;
  output \tmp_data_V_2_reg_255_reg[15]_3 ;
  output \tmp_data_V_2_reg_255_reg[15]_4 ;
  output ap_return__0_carry__1;
  output [6:0]ap_return__163_carry__2_i_17_0;
  output \tmp_data_V_6_reg_275_reg[15]_3 ;
  output ap_return__163_carry_i_22;
  output \tmp_data_V_2_reg_255_reg[15]_5 ;
  output [5:0]ap_return__163_carry_i_27_0;
  output [3:0]ap_return__163_carry__0_i_28_0;
  output [6:0]ap_return__163_carry__1_i_32;
  output [7:0]ap_return__163_carry_i_22_0;
  output \tmp_data_V_2_reg_255_reg[15]_6 ;
  input [1:0]DI;
  input [7:0]S;
  input [7:0]ap_return__163_carry_i_25;
  input [7:0]ap_return__163_carry_i_25_0;
  input [1:0]ap_return__163_carry_i_25_1;
  input [7:0]ap_return__163_carry_i_25_2;
  input [0:0]CO;
  input [7:0]O;
  input [7:0]\trunc_ln902_reg_307_reg[15] ;
  input \trunc_ln902_reg_307_reg[7] ;
  input \trunc_ln902_reg_307_reg[7]_0 ;
  input [5:0]\ret_V_reg_300_reg[7] ;
  input [5:0]\ret_V_reg_300_reg[7]_0 ;
  input \trunc_ln902_reg_307_reg[15]_0 ;
  input \trunc_ln902_reg_307_reg[7]_1 ;
  input \trunc_ln902_reg_307_reg[15]_1 ;
  input [7:0]\out_local_V_reg_295_reg[31] ;
  input [7:0]\out_local_V_reg_295_reg[31]_0 ;
  input \trunc_ln902_reg_307_reg[7]_2 ;
  input [6:0]ap_return__163_carry__2_i_8_0;
  input [6:0]ap_return__163_carry__2_i_8_1;
  input \trunc_ln902_reg_307_reg[7]_3 ;
  input \trunc_ln902_reg_307_reg[7]_4 ;
  input \trunc_ln902_reg_307_reg[15]_2 ;
  input \ret_V_reg_300_reg[7]_1 ;
  input \ret_V_reg_300_reg[7]_2 ;
  input \ret_V_reg_300_reg[7]_3 ;
  input \ret_V_reg_300_reg[7]_4 ;
  input \ret_V_reg_300_reg[7]_5 ;
  input \ret_V_reg_300_reg[7]_6 ;
  input \out_local_V_reg_295_reg[31]_1 ;
  input \out_local_V_reg_295_reg[31]_2 ;
  input \out_local_V_reg_295_reg[31]_3 ;
  input \out_local_V_reg_295_reg[31]_4 ;
  input \out_local_V_reg_295_reg[31]_5 ;
  input \out_local_V_reg_295_reg[31]_6 ;
  input \out_local_V_reg_295_reg[31]_7 ;
  input \out_local_V_reg_295_reg[31]_8 ;
  input \out_local_V_reg_295_reg[31]_9 ;
  input \out_local_V_reg_295_reg[31]_10 ;
  input \out_local_V_reg_295_reg[31]_11 ;
  input \out_local_V_reg_295_reg[31]_12 ;
  input \out_local_V_reg_295_reg[31]_13 ;
  input [0:0]ap_return__163_carry_i_13_0;
  input [0:0]ap_return__163_carry_i_13_1;

  wire [0:0]CO;
  wire [1:0]DI;
  wire [7:0]O;
  wire [7:0]S;
  wire ap_return__0_carry__1;
  wire ap_return__163_carry__0_i_17_n_0;
  wire [3:0]ap_return__163_carry__0_i_18_0;
  wire ap_return__163_carry__0_i_18_n_0;
  wire ap_return__163_carry__0_i_19_n_0;
  wire ap_return__163_carry__0_i_20_n_0;
  wire ap_return__163_carry__0_i_27_n_0;
  wire [3:0]ap_return__163_carry__0_i_28_0;
  wire ap_return__163_carry__0_i_28_n_0;
  wire ap_return__163_carry__0_i_29_n_0;
  wire ap_return__163_carry__0_i_30_n_0;
  wire ap_return__163_carry__0_i_31_n_0;
  wire ap_return__163_carry__1_i_17_n_0;
  wire [6:0]ap_return__163_carry__1_i_19_0;
  wire ap_return__163_carry__1_i_19_n_0;
  wire ap_return__163_carry__1_i_20_n_0;
  wire ap_return__163_carry__1_i_21_n_0;
  wire ap_return__163_carry__1_i_22_n_0;
  wire ap_return__163_carry__1_i_23_n_0;
  wire ap_return__163_carry__1_i_24_n_0;
  wire ap_return__163_carry__1_i_25_n_0;
  wire ap_return__163_carry__1_i_26_n_0;
  wire ap_return__163_carry__1_i_27_n_0;
  wire ap_return__163_carry__1_i_30_n_0;
  wire ap_return__163_carry__1_i_31_n_0;
  wire [6:0]ap_return__163_carry__1_i_32;
  wire ap_return__163_carry__1_i_33_n_0;
  wire ap_return__163_carry__1_i_35_n_0;
  wire ap_return__163_carry__1_i_37_n_0;
  wire ap_return__163_carry__1_i_39_n_0;
  wire ap_return__163_carry__1_i_43_n_0;
  wire ap_return__163_carry__2_i_16_n_0;
  wire [6:0]ap_return__163_carry__2_i_17_0;
  wire ap_return__163_carry__2_i_17_n_0;
  wire ap_return__163_carry__2_i_18_n_0;
  wire ap_return__163_carry__2_i_19_n_0;
  wire ap_return__163_carry__2_i_20_n_0;
  wire ap_return__163_carry__2_i_21_n_0;
  wire ap_return__163_carry__2_i_22_n_0;
  wire ap_return__163_carry__2_i_23_n_0;
  wire ap_return__163_carry__2_i_24_n_0;
  wire ap_return__163_carry__2_i_25_n_0;
  wire ap_return__163_carry__2_i_26_n_0;
  wire ap_return__163_carry__2_i_27_n_0;
  wire ap_return__163_carry__2_i_28_n_0;
  wire ap_return__163_carry__2_i_29_n_0;
  wire ap_return__163_carry__2_i_32_n_0;
  wire ap_return__163_carry__2_i_33_n_0;
  wire ap_return__163_carry__2_i_43_n_0;
  wire ap_return__163_carry__2_i_45_n_0;
  wire [6:0]ap_return__163_carry__2_i_8_0;
  wire [6:0]ap_return__163_carry__2_i_8_1;
  wire [0:0]ap_return__163_carry_i_13_0;
  wire [0:0]ap_return__163_carry_i_13_1;
  wire ap_return__163_carry_i_22;
  wire [7:0]ap_return__163_carry_i_22_0;
  wire ap_return__163_carry_i_23_n_0;
  wire [7:0]ap_return__163_carry_i_25;
  wire [7:0]ap_return__163_carry_i_25_0;
  wire [1:0]ap_return__163_carry_i_25_1;
  wire [7:0]ap_return__163_carry_i_25_2;
  wire [5:0]ap_return__163_carry_i_27_0;
  wire ap_return__163_carry_i_27_n_0;
  wire ap_return__163_carry_i_30_n_0;
  wire ap_return__163_carry_i_31_n_0;
  wire [4:0]ap_return__81_carry;
  wire comparison_2_fu_60_p2_carry_n_1;
  wire comparison_2_fu_60_p2_carry_n_2;
  wire comparison_2_fu_60_p2_carry_n_3;
  wire comparison_2_fu_60_p2_carry_n_4;
  wire comparison_2_fu_60_p2_carry_n_5;
  wire comparison_2_fu_60_p2_carry_n_6;
  wire comparison_2_fu_60_p2_carry_n_7;
  wire comparison_3_fu_54_p2_carry_n_1;
  wire comparison_3_fu_54_p2_carry_n_2;
  wire comparison_3_fu_54_p2_carry_n_3;
  wire comparison_3_fu_54_p2_carry_n_4;
  wire comparison_3_fu_54_p2_carry_n_5;
  wire comparison_3_fu_54_p2_carry_n_6;
  wire comparison_3_fu_54_p2_carry_n_7;
  wire comparison_fu_48_p2_carry_n_1;
  wire comparison_fu_48_p2_carry_n_2;
  wire comparison_fu_48_p2_carry_n_3;
  wire comparison_fu_48_p2_carry_n_4;
  wire comparison_fu_48_p2_carry_n_5;
  wire comparison_fu_48_p2_carry_n_6;
  wire comparison_fu_48_p2_carry_n_7;
  wire [7:0]\out_local_V_reg_295_reg[31] ;
  wire [7:0]\out_local_V_reg_295_reg[31]_0 ;
  wire \out_local_V_reg_295_reg[31]_1 ;
  wire \out_local_V_reg_295_reg[31]_10 ;
  wire \out_local_V_reg_295_reg[31]_11 ;
  wire \out_local_V_reg_295_reg[31]_12 ;
  wire \out_local_V_reg_295_reg[31]_13 ;
  wire \out_local_V_reg_295_reg[31]_2 ;
  wire \out_local_V_reg_295_reg[31]_3 ;
  wire \out_local_V_reg_295_reg[31]_4 ;
  wire \out_local_V_reg_295_reg[31]_5 ;
  wire \out_local_V_reg_295_reg[31]_6 ;
  wire \out_local_V_reg_295_reg[31]_7 ;
  wire \out_local_V_reg_295_reg[31]_8 ;
  wire \out_local_V_reg_295_reg[31]_9 ;
  wire [5:0]\ret_V_reg_300_reg[7] ;
  wire [5:0]\ret_V_reg_300_reg[7]_0 ;
  wire \ret_V_reg_300_reg[7]_1 ;
  wire \ret_V_reg_300_reg[7]_2 ;
  wire \ret_V_reg_300_reg[7]_3 ;
  wire \ret_V_reg_300_reg[7]_4 ;
  wire \ret_V_reg_300_reg[7]_5 ;
  wire \ret_V_reg_300_reg[7]_6 ;
  wire [0:0]\tmp_data_V_2_reg_255_reg[15] ;
  wire [0:0]\tmp_data_V_2_reg_255_reg[15]_0 ;
  wire \tmp_data_V_2_reg_255_reg[15]_1 ;
  wire \tmp_data_V_2_reg_255_reg[15]_2 ;
  wire \tmp_data_V_2_reg_255_reg[15]_3 ;
  wire \tmp_data_V_2_reg_255_reg[15]_4 ;
  wire \tmp_data_V_2_reg_255_reg[15]_5 ;
  wire \tmp_data_V_2_reg_255_reg[15]_6 ;
  wire [0:0]\tmp_data_V_6_reg_275_reg[15] ;
  wire \tmp_data_V_6_reg_275_reg[15]_0 ;
  wire \tmp_data_V_6_reg_275_reg[15]_1 ;
  wire \tmp_data_V_6_reg_275_reg[15]_2 ;
  wire \tmp_data_V_6_reg_275_reg[15]_3 ;
  wire [7:0]\trunc_ln902_reg_307_reg[15] ;
  wire \trunc_ln902_reg_307_reg[15]_0 ;
  wire \trunc_ln902_reg_307_reg[15]_1 ;
  wire \trunc_ln902_reg_307_reg[15]_2 ;
  wire \trunc_ln902_reg_307_reg[7] ;
  wire \trunc_ln902_reg_307_reg[7]_0 ;
  wire \trunc_ln902_reg_307_reg[7]_1 ;
  wire \trunc_ln902_reg_307_reg[7]_2 ;
  wire \trunc_ln902_reg_307_reg[7]_3 ;
  wire \trunc_ln902_reg_307_reg[7]_4 ;
  wire [7:0]NLW_comparison_2_fu_60_p2_carry_O_UNCONNECTED;
  wire [7:0]NLW_comparison_3_fu_54_p2_carry_O_UNCONNECTED;
  wire [7:0]NLW_comparison_fu_48_p2_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h033EE880E880033E)) 
    ap_return__163_carry__0_i_1
       (.I0(ap_return__163_carry__0_i_17_n_0),
        .I1(\ret_V_reg_300_reg[7]_0 [3]),
        .I2(\ret_V_reg_300_reg[7] [3]),
        .I3(\tmp_data_V_2_reg_255_reg[15]_1 ),
        .I4(CO),
        .I5(ap_return__163_carry__0_i_18_n_0),
        .O(ap_return__163_carry__0_i_18_0[3]));
  LUT3 #(
    .INIT(8'h96)) 
    ap_return__163_carry__0_i_10
       (.I0(ap_return__163_carry__0_i_18_0[2]),
        .I1(ap_return__163_carry__0_i_29_n_0),
        .I2(ap_return__163_carry__0_i_30_n_0),
        .O(ap_return__163_carry__0_i_28_0[2]));
  LUT3 #(
    .INIT(8'h96)) 
    ap_return__163_carry__0_i_11
       (.I0(ap_return__163_carry__0_i_18_0[1]),
        .I1(ap_return__163_carry__0_i_31_n_0),
        .I2(ap_return__163_carry__0_i_19_n_0),
        .O(ap_return__163_carry__0_i_28_0[1]));
  LUT6 #(
    .INIT(64'h65A6A69A9A595965)) 
    ap_return__163_carry__0_i_16
       (.I0(ap_return__163_carry__0_i_18_0[0]),
        .I1(\trunc_ln902_reg_307_reg[15]_0 ),
        .I2(\tmp_data_V_6_reg_275_reg[15]_2 ),
        .I3(O[7]),
        .I4(\trunc_ln902_reg_307_reg[15] [7]),
        .I5(\trunc_ln902_reg_307_reg[15]_2 ),
        .O(ap_return__163_carry__0_i_28_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFD0D000)) 
    ap_return__163_carry__0_i_17
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(\ret_V_reg_300_reg[7]_0 [2]),
        .I4(\ret_V_reg_300_reg[7] [2]),
        .O(ap_return__163_carry__0_i_17_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    ap_return__163_carry__0_i_18
       (.I0(\tmp_data_V_2_reg_255_reg[15] ),
        .I1(\ret_V_reg_300_reg[7] [4]),
        .I2(\ret_V_reg_300_reg[7]_0 [4]),
        .O(ap_return__163_carry__0_i_18_n_0));
  LUT6 #(
    .INIT(64'h6669999666699666)) 
    ap_return__163_carry__0_i_19
       (.I0(\ret_V_reg_300_reg[7]_0 [3]),
        .I1(\ret_V_reg_300_reg[7] [3]),
        .I2(\ret_V_reg_300_reg[7] [2]),
        .I3(\ret_V_reg_300_reg[7]_0 [2]),
        .I4(\tmp_data_V_2_reg_255_reg[15]_1 ),
        .I5(\tmp_data_V_6_reg_275_reg[15]_0 ),
        .O(ap_return__163_carry__0_i_19_n_0));
  LUT6 #(
    .INIT(64'h5110101051515110)) 
    ap_return__163_carry__0_i_2
       (.I0(ap_return__163_carry__0_i_19_n_0),
        .I1(CO),
        .I2(ap_return__163_carry__0_i_20_n_0),
        .I3(\ret_V_reg_300_reg[7] [1]),
        .I4(\ret_V_reg_300_reg[7]_0 [1]),
        .I5(\tmp_data_V_2_reg_255_reg[15]_2 ),
        .O(ap_return__163_carry__0_i_18_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h8A75758A)) 
    ap_return__163_carry__0_i_20
       (.I0(\tmp_data_V_2_reg_255_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_6_reg_275_reg[15] ),
        .I3(\ret_V_reg_300_reg[7] [2]),
        .I4(\ret_V_reg_300_reg[7]_0 [2]),
        .O(ap_return__163_carry__0_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hD22D)) 
    ap_return__163_carry__0_i_22
       (.I0(\tmp_data_V_2_reg_255_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\ret_V_reg_300_reg[7] [1]),
        .I3(\ret_V_reg_300_reg[7]_0 [1]),
        .O(\tmp_data_V_2_reg_255_reg[15]_5 ));
  LUT6 #(
    .INIT(64'h1777FFFF00001777)) 
    ap_return__163_carry__0_i_27
       (.I0(\ret_V_reg_300_reg[7]_0 [3]),
        .I1(\ret_V_reg_300_reg[7] [3]),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I4(CO),
        .I5(ap_return__163_carry__0_i_18_n_0),
        .O(ap_return__163_carry__0_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h4DB2B24D)) 
    ap_return__163_carry__0_i_28
       (.I0(\ret_V_reg_300_reg[7] [4]),
        .I1(\tmp_data_V_2_reg_255_reg[15] ),
        .I2(\ret_V_reg_300_reg[7]_0 [4]),
        .I3(\ret_V_reg_300_reg[7] [5]),
        .I4(\ret_V_reg_300_reg[7]_0 [5]),
        .O(ap_return__163_carry__0_i_28_n_0));
  LUT6 #(
    .INIT(64'h9999966696666666)) 
    ap_return__163_carry__0_i_29
       (.I0(ap_return__163_carry__0_i_18_n_0),
        .I1(CO),
        .I2(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I3(\tmp_data_V_2_reg_255_reg[15] ),
        .I4(\ret_V_reg_300_reg[7] [3]),
        .I5(\ret_V_reg_300_reg[7]_0 [3]),
        .O(ap_return__163_carry__0_i_29_n_0));
  LUT6 #(
    .INIT(64'h2BD4D42B00000000)) 
    ap_return__163_carry__0_i_3
       (.I0(\tmp_data_V_2_reg_255_reg[15]_2 ),
        .I1(\ret_V_reg_300_reg[7]_0 [1]),
        .I2(\ret_V_reg_300_reg[7] [1]),
        .I3(CO),
        .I4(ap_return__163_carry__0_i_20_n_0),
        .I5(\trunc_ln902_reg_307_reg[15]_1 ),
        .O(ap_return__163_carry__0_i_18_0[1]));
  LUT6 #(
    .INIT(64'h0006000900060999)) 
    ap_return__163_carry__0_i_30
       (.I0(\ret_V_reg_300_reg[7]_0 [3]),
        .I1(\ret_V_reg_300_reg[7] [3]),
        .I2(\ret_V_reg_300_reg[7] [2]),
        .I3(\ret_V_reg_300_reg[7]_0 [2]),
        .I4(\tmp_data_V_2_reg_255_reg[15]_1 ),
        .I5(\tmp_data_V_6_reg_275_reg[15]_0 ),
        .O(ap_return__163_carry__0_i_30_n_0));
  LUT6 #(
    .INIT(64'h0BBFFFFF00000BBF)) 
    ap_return__163_carry__0_i_31
       (.I0(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I1(\tmp_data_V_2_reg_255_reg[15] ),
        .I2(\ret_V_reg_300_reg[7]_0 [1]),
        .I3(\ret_V_reg_300_reg[7] [1]),
        .I4(ap_return__163_carry__0_i_20_n_0),
        .I5(CO),
        .O(ap_return__163_carry__0_i_31_n_0));
  LUT6 #(
    .INIT(64'h6999699966696999)) 
    ap_return__163_carry__0_i_32
       (.I0(ap_return__163_carry__0_i_20_n_0),
        .I1(CO),
        .I2(\ret_V_reg_300_reg[7] [1]),
        .I3(\ret_V_reg_300_reg[7]_0 [1]),
        .I4(\tmp_data_V_2_reg_255_reg[15] ),
        .I5(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .O(\tmp_data_V_2_reg_255_reg[15]_3 ));
  LUT6 #(
    .INIT(64'h1EE1E11EE11E1EE1)) 
    ap_return__163_carry__0_i_33
       (.I0(\ret_V_reg_300_reg[7] [0]),
        .I1(\ret_V_reg_300_reg[7]_0 [0]),
        .I2(\tmp_data_V_2_reg_255_reg[15]_2 ),
        .I3(\ret_V_reg_300_reg[7] [1]),
        .I4(\ret_V_reg_300_reg[7]_0 [1]),
        .I5(\trunc_ln902_reg_307_reg[7]_2 ),
        .O(ap_return__163_carry_i_22));
  LUT6 #(
    .INIT(64'hAA808000FFEAEAAA)) 
    ap_return__163_carry__0_i_8
       (.I0(\trunc_ln902_reg_307_reg[7]_0 ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(\trunc_ln902_reg_307_reg[15] [6]),
        .I4(O[6]),
        .I5(ap_return__163_carry_i_27_n_0),
        .O(ap_return__163_carry__0_i_18_0[0]));
  LUT3 #(
    .INIT(8'h96)) 
    ap_return__163_carry__0_i_9
       (.I0(ap_return__163_carry__0_i_18_0[3]),
        .I1(ap_return__163_carry__0_i_27_n_0),
        .I2(ap_return__163_carry__0_i_28_n_0),
        .O(ap_return__163_carry__0_i_28_0[3]));
  LUT6 #(
    .INIT(64'h18820000599A2441)) 
    ap_return__163_carry__1_i_1
       (.I0(ap_return__163_carry__1_i_17_n_0),
        .I1(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I2(\out_local_V_reg_295_reg[31] [5]),
        .I3(\out_local_V_reg_295_reg[31]_0 [5]),
        .I4(\trunc_ln902_reg_307_reg[7]_2 ),
        .I5(ap_return__163_carry__1_i_19_n_0),
        .O(ap_return__163_carry__1_i_19_0[6]));
  LUT3 #(
    .INIT(8'h96)) 
    ap_return__163_carry__1_i_10
       (.I0(ap_return__163_carry__1_i_19_0[5]),
        .I1(ap_return__163_carry__1_i_33_n_0),
        .I2(\ret_V_reg_300_reg[7]_5 ),
        .O(ap_return__163_carry__1_i_32[5]));
  LUT3 #(
    .INIT(8'h96)) 
    ap_return__163_carry__1_i_11
       (.I0(ap_return__163_carry__1_i_19_0[4]),
        .I1(ap_return__163_carry__1_i_35_n_0),
        .I2(\ret_V_reg_300_reg[7]_4 ),
        .O(ap_return__163_carry__1_i_32[4]));
  LUT3 #(
    .INIT(8'h96)) 
    ap_return__163_carry__1_i_12
       (.I0(ap_return__163_carry__1_i_19_0[3]),
        .I1(ap_return__163_carry__1_i_37_n_0),
        .I2(\ret_V_reg_300_reg[7]_3 ),
        .O(ap_return__163_carry__1_i_32[3]));
  LUT3 #(
    .INIT(8'h96)) 
    ap_return__163_carry__1_i_13
       (.I0(ap_return__163_carry__1_i_19_0[2]),
        .I1(ap_return__163_carry__1_i_39_n_0),
        .I2(\ret_V_reg_300_reg[7]_2 ),
        .O(ap_return__163_carry__1_i_32[2]));
  LUT6 #(
    .INIT(64'h9A9A9A59656565A6)) 
    ap_return__163_carry__1_i_15
       (.I0(ap_return__163_carry__1_i_19_0[1]),
        .I1(\trunc_ln902_reg_307_reg[7]_2 ),
        .I2(\tmp_data_V_6_reg_275_reg[15]_3 ),
        .I3(\ret_V_reg_300_reg[7]_0 [5]),
        .I4(\ret_V_reg_300_reg[7] [5]),
        .I5(\ret_V_reg_300_reg[7]_1 ),
        .O(ap_return__163_carry__1_i_32[1]));
  LUT6 #(
    .INIT(64'hA95656A956A9A956)) 
    ap_return__163_carry__1_i_16
       (.I0(ap_return__163_carry__1_i_19_0[0]),
        .I1(\ret_V_reg_300_reg[7] [5]),
        .I2(\ret_V_reg_300_reg[7]_0 [5]),
        .I3(\tmp_data_V_6_reg_275_reg[15]_3 ),
        .I4(\trunc_ln902_reg_307_reg[7]_2 ),
        .I5(ap_return__163_carry__1_i_43_n_0),
        .O(ap_return__163_carry__1_i_32[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    ap_return__163_carry__1_i_17
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(\out_local_V_reg_295_reg[31] [6]),
        .I4(\out_local_V_reg_295_reg[31]_0 [6]),
        .O(ap_return__163_carry__1_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    ap_return__163_carry__1_i_18
       (.I0(\tmp_data_V_2_reg_255_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_6_reg_275_reg[15] ),
        .O(\tmp_data_V_2_reg_255_reg[15]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h77177777)) 
    ap_return__163_carry__1_i_19
       (.I0(\out_local_V_reg_295_reg[31]_0 [4]),
        .I1(\out_local_V_reg_295_reg[31] [4]),
        .I2(\tmp_data_V_6_reg_275_reg[15] ),
        .I3(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I4(\tmp_data_V_2_reg_255_reg[15] ),
        .O(ap_return__163_carry__1_i_19_n_0));
  LUT6 #(
    .INIT(64'h18820000599A2441)) 
    ap_return__163_carry__1_i_2
       (.I0(ap_return__163_carry__1_i_20_n_0),
        .I1(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I2(\out_local_V_reg_295_reg[31] [4]),
        .I3(\out_local_V_reg_295_reg[31]_0 [4]),
        .I4(\trunc_ln902_reg_307_reg[7]_2 ),
        .I5(ap_return__163_carry__1_i_21_n_0),
        .O(ap_return__163_carry__1_i_19_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    ap_return__163_carry__1_i_20
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(\out_local_V_reg_295_reg[31] [5]),
        .I4(\out_local_V_reg_295_reg[31]_0 [5]),
        .O(ap_return__163_carry__1_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h77177777)) 
    ap_return__163_carry__1_i_21
       (.I0(\out_local_V_reg_295_reg[31]_0 [3]),
        .I1(\out_local_V_reg_295_reg[31] [3]),
        .I2(\tmp_data_V_6_reg_275_reg[15] ),
        .I3(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I4(\tmp_data_V_2_reg_255_reg[15] ),
        .O(ap_return__163_carry__1_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    ap_return__163_carry__1_i_22
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(\out_local_V_reg_295_reg[31] [4]),
        .I4(\out_local_V_reg_295_reg[31]_0 [4]),
        .O(ap_return__163_carry__1_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h77177777)) 
    ap_return__163_carry__1_i_23
       (.I0(\out_local_V_reg_295_reg[31]_0 [2]),
        .I1(\out_local_V_reg_295_reg[31] [2]),
        .I2(\tmp_data_V_6_reg_275_reg[15] ),
        .I3(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I4(\tmp_data_V_2_reg_255_reg[15] ),
        .O(ap_return__163_carry__1_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    ap_return__163_carry__1_i_24
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(\out_local_V_reg_295_reg[31] [3]),
        .I4(\out_local_V_reg_295_reg[31]_0 [3]),
        .O(ap_return__163_carry__1_i_24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h77177777)) 
    ap_return__163_carry__1_i_25
       (.I0(\out_local_V_reg_295_reg[31]_0 [1]),
        .I1(\out_local_V_reg_295_reg[31] [1]),
        .I2(\tmp_data_V_6_reg_275_reg[15] ),
        .I3(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I4(\tmp_data_V_2_reg_255_reg[15] ),
        .O(ap_return__163_carry__1_i_25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    ap_return__163_carry__1_i_26
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(\out_local_V_reg_295_reg[31] [2]),
        .I4(\out_local_V_reg_295_reg[31]_0 [2]),
        .O(ap_return__163_carry__1_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h77177777)) 
    ap_return__163_carry__1_i_27
       (.I0(\out_local_V_reg_295_reg[31]_0 [0]),
        .I1(\out_local_V_reg_295_reg[31] [0]),
        .I2(\tmp_data_V_6_reg_275_reg[15] ),
        .I3(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I4(\tmp_data_V_2_reg_255_reg[15] ),
        .O(ap_return__163_carry__1_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    ap_return__163_carry__1_i_29
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(\out_local_V_reg_295_reg[31] [0]),
        .I4(\out_local_V_reg_295_reg[31]_0 [0]),
        .O(\tmp_data_V_6_reg_275_reg[15]_3 ));
  LUT6 #(
    .INIT(64'h18820000599A2441)) 
    ap_return__163_carry__1_i_3
       (.I0(ap_return__163_carry__1_i_22_n_0),
        .I1(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I2(\out_local_V_reg_295_reg[31] [3]),
        .I3(\out_local_V_reg_295_reg[31]_0 [3]),
        .I4(\trunc_ln902_reg_307_reg[7]_2 ),
        .I5(ap_return__163_carry__1_i_23_n_0),
        .O(ap_return__163_carry__1_i_19_0[4]));
  LUT6 #(
    .INIT(64'hE11E1EE11EE1E11E)) 
    ap_return__163_carry__1_i_30
       (.I0(\ret_V_reg_300_reg[7] [5]),
        .I1(\ret_V_reg_300_reg[7]_0 [5]),
        .I2(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I3(\out_local_V_reg_295_reg[31] [0]),
        .I4(\out_local_V_reg_295_reg[31]_0 [0]),
        .I5(\trunc_ln902_reg_307_reg[7]_2 ),
        .O(ap_return__163_carry__1_i_30_n_0));
  LUT6 #(
    .INIT(64'h70F1017F017F70F1)) 
    ap_return__163_carry__1_i_31
       (.I0(\out_local_V_reg_295_reg[31]_0 [5]),
        .I1(\out_local_V_reg_295_reg[31] [5]),
        .I2(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I3(\trunc_ln902_reg_307_reg[7]_2 ),
        .I4(\out_local_V_reg_295_reg[31]_0 [6]),
        .I5(\out_local_V_reg_295_reg[31] [6]),
        .O(ap_return__163_carry__1_i_31_n_0));
  LUT6 #(
    .INIT(64'h70F1017F017F70F1)) 
    ap_return__163_carry__1_i_33
       (.I0(\out_local_V_reg_295_reg[31]_0 [4]),
        .I1(\out_local_V_reg_295_reg[31] [4]),
        .I2(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I3(\trunc_ln902_reg_307_reg[7]_2 ),
        .I4(\out_local_V_reg_295_reg[31]_0 [5]),
        .I5(\out_local_V_reg_295_reg[31] [5]),
        .O(ap_return__163_carry__1_i_33_n_0));
  LUT6 #(
    .INIT(64'h70F1017F017F70F1)) 
    ap_return__163_carry__1_i_35
       (.I0(\out_local_V_reg_295_reg[31]_0 [3]),
        .I1(\out_local_V_reg_295_reg[31] [3]),
        .I2(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I3(\trunc_ln902_reg_307_reg[7]_2 ),
        .I4(\out_local_V_reg_295_reg[31]_0 [4]),
        .I5(\out_local_V_reg_295_reg[31] [4]),
        .O(ap_return__163_carry__1_i_35_n_0));
  LUT6 #(
    .INIT(64'h70F1017F017F70F1)) 
    ap_return__163_carry__1_i_37
       (.I0(\out_local_V_reg_295_reg[31]_0 [2]),
        .I1(\out_local_V_reg_295_reg[31] [2]),
        .I2(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I3(\trunc_ln902_reg_307_reg[7]_2 ),
        .I4(\out_local_V_reg_295_reg[31]_0 [3]),
        .I5(\out_local_V_reg_295_reg[31] [3]),
        .O(ap_return__163_carry__1_i_37_n_0));
  LUT6 #(
    .INIT(64'h70F1017F017F70F1)) 
    ap_return__163_carry__1_i_39
       (.I0(\out_local_V_reg_295_reg[31]_0 [1]),
        .I1(\out_local_V_reg_295_reg[31] [1]),
        .I2(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I3(\trunc_ln902_reg_307_reg[7]_2 ),
        .I4(\out_local_V_reg_295_reg[31]_0 [2]),
        .I5(\out_local_V_reg_295_reg[31] [2]),
        .O(ap_return__163_carry__1_i_39_n_0));
  LUT6 #(
    .INIT(64'h18820000599A2441)) 
    ap_return__163_carry__1_i_4
       (.I0(ap_return__163_carry__1_i_24_n_0),
        .I1(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I2(\out_local_V_reg_295_reg[31] [2]),
        .I3(\out_local_V_reg_295_reg[31]_0 [2]),
        .I4(\trunc_ln902_reg_307_reg[7]_2 ),
        .I5(ap_return__163_carry__1_i_25_n_0),
        .O(ap_return__163_carry__1_i_19_0[3]));
  LUT6 #(
    .INIT(64'h70F1017F017F70F1)) 
    ap_return__163_carry__1_i_41
       (.I0(\out_local_V_reg_295_reg[31]_0 [0]),
        .I1(\out_local_V_reg_295_reg[31] [0]),
        .I2(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I3(\trunc_ln902_reg_307_reg[7]_2 ),
        .I4(\out_local_V_reg_295_reg[31]_0 [1]),
        .I5(\out_local_V_reg_295_reg[31] [1]),
        .O(ap_return__0_carry__1));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h004D4D00)) 
    ap_return__163_carry__1_i_43
       (.I0(\ret_V_reg_300_reg[7] [4]),
        .I1(\tmp_data_V_2_reg_255_reg[15] ),
        .I2(\ret_V_reg_300_reg[7]_0 [4]),
        .I3(\ret_V_reg_300_reg[7] [5]),
        .I4(\ret_V_reg_300_reg[7]_0 [5]),
        .O(ap_return__163_carry__1_i_43_n_0));
  LUT6 #(
    .INIT(64'h18820000599A2441)) 
    ap_return__163_carry__1_i_5
       (.I0(ap_return__163_carry__1_i_26_n_0),
        .I1(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I2(\out_local_V_reg_295_reg[31] [1]),
        .I3(\out_local_V_reg_295_reg[31]_0 [1]),
        .I4(\trunc_ln902_reg_307_reg[7]_2 ),
        .I5(ap_return__163_carry__1_i_27_n_0),
        .O(ap_return__163_carry__1_i_19_0[2]));
  LUT6 #(
    .INIT(64'h00000000F9FF99F9)) 
    ap_return__163_carry__1_i_7
       (.I0(\ret_V_reg_300_reg[7]_0 [5]),
        .I1(\ret_V_reg_300_reg[7] [5]),
        .I2(\ret_V_reg_300_reg[7]_0 [4]),
        .I3(\tmp_data_V_2_reg_255_reg[15] ),
        .I4(\ret_V_reg_300_reg[7] [4]),
        .I5(ap_return__163_carry__1_i_30_n_0),
        .O(ap_return__163_carry__1_i_19_0[1]));
  LUT6 #(
    .INIT(64'h0000000096996696)) 
    ap_return__163_carry__1_i_8
       (.I0(\ret_V_reg_300_reg[7]_0 [5]),
        .I1(\ret_V_reg_300_reg[7] [5]),
        .I2(\ret_V_reg_300_reg[7]_0 [4]),
        .I3(\tmp_data_V_2_reg_255_reg[15] ),
        .I4(\ret_V_reg_300_reg[7] [4]),
        .I5(ap_return__163_carry__0_i_27_n_0),
        .O(ap_return__163_carry__1_i_19_0[0]));
  LUT3 #(
    .INIT(8'h96)) 
    ap_return__163_carry__1_i_9
       (.I0(ap_return__163_carry__1_i_19_0[6]),
        .I1(ap_return__163_carry__1_i_31_n_0),
        .I2(\ret_V_reg_300_reg[7]_6 ),
        .O(ap_return__163_carry__1_i_32[6]));
  LUT6 #(
    .INIT(64'h18820000599A2441)) 
    ap_return__163_carry__2_i_1
       (.I0(ap_return__163_carry__2_i_16_n_0),
        .I1(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I2(ap_return__163_carry__2_i_8_0[4]),
        .I3(ap_return__163_carry__2_i_8_1[4]),
        .I4(\trunc_ln902_reg_307_reg[7]_2 ),
        .I5(ap_return__163_carry__2_i_17_n_0),
        .O(ap_return__163_carry__2_i_17_0[6]));
  LUT3 #(
    .INIT(8'h96)) 
    ap_return__163_carry__2_i_10
       (.I0(ap_return__163_carry__2_i_17_0[5]),
        .I1(\out_local_V_reg_295_reg[31]_9 ),
        .I2(\out_local_V_reg_295_reg[31]_10 ),
        .O(ap_return__163_carry_i_22_0[5]));
  LUT3 #(
    .INIT(8'h96)) 
    ap_return__163_carry__2_i_11
       (.I0(ap_return__163_carry__2_i_17_0[4]),
        .I1(\out_local_V_reg_295_reg[31]_7 ),
        .I2(\out_local_V_reg_295_reg[31]_8 ),
        .O(ap_return__163_carry_i_22_0[4]));
  LUT3 #(
    .INIT(8'h96)) 
    ap_return__163_carry__2_i_12
       (.I0(ap_return__163_carry__2_i_17_0[3]),
        .I1(\out_local_V_reg_295_reg[31]_5 ),
        .I2(\out_local_V_reg_295_reg[31]_6 ),
        .O(ap_return__163_carry_i_22_0[3]));
  LUT3 #(
    .INIT(8'h96)) 
    ap_return__163_carry__2_i_13
       (.I0(ap_return__163_carry__2_i_17_0[2]),
        .I1(\out_local_V_reg_295_reg[31]_3 ),
        .I2(\out_local_V_reg_295_reg[31]_4 ),
        .O(ap_return__163_carry_i_22_0[2]));
  LUT3 #(
    .INIT(8'h96)) 
    ap_return__163_carry__2_i_14
       (.I0(ap_return__163_carry__2_i_17_0[1]),
        .I1(ap_return__163_carry__2_i_43_n_0),
        .I2(\out_local_V_reg_295_reg[31]_2 ),
        .O(ap_return__163_carry_i_22_0[1]));
  LUT3 #(
    .INIT(8'h96)) 
    ap_return__163_carry__2_i_15
       (.I0(ap_return__163_carry__2_i_17_0[0]),
        .I1(ap_return__163_carry__2_i_45_n_0),
        .I2(\out_local_V_reg_295_reg[31]_1 ),
        .O(ap_return__163_carry_i_22_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    ap_return__163_carry__2_i_16
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(ap_return__163_carry__2_i_8_0[5]),
        .I4(ap_return__163_carry__2_i_8_1[5]),
        .O(ap_return__163_carry__2_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h77177777)) 
    ap_return__163_carry__2_i_17
       (.I0(ap_return__163_carry__2_i_8_1[3]),
        .I1(ap_return__163_carry__2_i_8_0[3]),
        .I2(\tmp_data_V_6_reg_275_reg[15] ),
        .I3(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I4(\tmp_data_V_2_reg_255_reg[15] ),
        .O(ap_return__163_carry__2_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    ap_return__163_carry__2_i_18
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(ap_return__163_carry__2_i_8_0[4]),
        .I4(ap_return__163_carry__2_i_8_1[4]),
        .O(ap_return__163_carry__2_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h77177777)) 
    ap_return__163_carry__2_i_19
       (.I0(ap_return__163_carry__2_i_8_1[2]),
        .I1(ap_return__163_carry__2_i_8_0[2]),
        .I2(\tmp_data_V_6_reg_275_reg[15] ),
        .I3(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I4(\tmp_data_V_2_reg_255_reg[15] ),
        .O(ap_return__163_carry__2_i_19_n_0));
  LUT6 #(
    .INIT(64'h18820000599A2441)) 
    ap_return__163_carry__2_i_2
       (.I0(ap_return__163_carry__2_i_18_n_0),
        .I1(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I2(ap_return__163_carry__2_i_8_0[3]),
        .I3(ap_return__163_carry__2_i_8_1[3]),
        .I4(\trunc_ln902_reg_307_reg[7]_2 ),
        .I5(ap_return__163_carry__2_i_19_n_0),
        .O(ap_return__163_carry__2_i_17_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    ap_return__163_carry__2_i_20
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(ap_return__163_carry__2_i_8_0[3]),
        .I4(ap_return__163_carry__2_i_8_1[3]),
        .O(ap_return__163_carry__2_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h77177777)) 
    ap_return__163_carry__2_i_21
       (.I0(ap_return__163_carry__2_i_8_1[1]),
        .I1(ap_return__163_carry__2_i_8_0[1]),
        .I2(\tmp_data_V_6_reg_275_reg[15] ),
        .I3(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I4(\tmp_data_V_2_reg_255_reg[15] ),
        .O(ap_return__163_carry__2_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    ap_return__163_carry__2_i_22
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(ap_return__163_carry__2_i_8_0[2]),
        .I4(ap_return__163_carry__2_i_8_1[2]),
        .O(ap_return__163_carry__2_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h77177777)) 
    ap_return__163_carry__2_i_23
       (.I0(ap_return__163_carry__2_i_8_1[0]),
        .I1(ap_return__163_carry__2_i_8_0[0]),
        .I2(\tmp_data_V_6_reg_275_reg[15] ),
        .I3(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I4(\tmp_data_V_2_reg_255_reg[15] ),
        .O(ap_return__163_carry__2_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    ap_return__163_carry__2_i_24
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(ap_return__163_carry__2_i_8_0[1]),
        .I4(ap_return__163_carry__2_i_8_1[1]),
        .O(ap_return__163_carry__2_i_24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h77177777)) 
    ap_return__163_carry__2_i_25
       (.I0(\out_local_V_reg_295_reg[31]_0 [7]),
        .I1(\out_local_V_reg_295_reg[31] [7]),
        .I2(\tmp_data_V_6_reg_275_reg[15] ),
        .I3(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I4(\tmp_data_V_2_reg_255_reg[15] ),
        .O(ap_return__163_carry__2_i_25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    ap_return__163_carry__2_i_26
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(ap_return__163_carry__2_i_8_0[0]),
        .I4(ap_return__163_carry__2_i_8_1[0]),
        .O(ap_return__163_carry__2_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h77177777)) 
    ap_return__163_carry__2_i_27
       (.I0(\out_local_V_reg_295_reg[31]_0 [6]),
        .I1(\out_local_V_reg_295_reg[31] [6]),
        .I2(\tmp_data_V_6_reg_275_reg[15] ),
        .I3(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I4(\tmp_data_V_2_reg_255_reg[15] ),
        .O(ap_return__163_carry__2_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    ap_return__163_carry__2_i_28
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(\out_local_V_reg_295_reg[31] [7]),
        .I4(\out_local_V_reg_295_reg[31]_0 [7]),
        .O(ap_return__163_carry__2_i_28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h77177777)) 
    ap_return__163_carry__2_i_29
       (.I0(\out_local_V_reg_295_reg[31]_0 [5]),
        .I1(\out_local_V_reg_295_reg[31] [5]),
        .I2(\tmp_data_V_6_reg_275_reg[15] ),
        .I3(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I4(\tmp_data_V_2_reg_255_reg[15] ),
        .O(ap_return__163_carry__2_i_29_n_0));
  LUT6 #(
    .INIT(64'h18820000599A2441)) 
    ap_return__163_carry__2_i_3
       (.I0(ap_return__163_carry__2_i_20_n_0),
        .I1(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I2(ap_return__163_carry__2_i_8_0[2]),
        .I3(ap_return__163_carry__2_i_8_1[2]),
        .I4(\trunc_ln902_reg_307_reg[7]_2 ),
        .I5(ap_return__163_carry__2_i_21_n_0),
        .O(ap_return__163_carry__2_i_17_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    ap_return__163_carry__2_i_32
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(ap_return__163_carry__2_i_8_0[6]),
        .I4(ap_return__163_carry__2_i_8_1[6]),
        .O(ap_return__163_carry__2_i_32_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h77177777)) 
    ap_return__163_carry__2_i_33
       (.I0(ap_return__163_carry__2_i_8_1[5]),
        .I1(ap_return__163_carry__2_i_8_0[5]),
        .I2(\tmp_data_V_6_reg_275_reg[15] ),
        .I3(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I4(\tmp_data_V_2_reg_255_reg[15] ),
        .O(ap_return__163_carry__2_i_33_n_0));
  LUT6 #(
    .INIT(64'h18820000599A2441)) 
    ap_return__163_carry__2_i_4
       (.I0(ap_return__163_carry__2_i_22_n_0),
        .I1(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I2(ap_return__163_carry__2_i_8_0[1]),
        .I3(ap_return__163_carry__2_i_8_1[1]),
        .I4(\trunc_ln902_reg_307_reg[7]_2 ),
        .I5(ap_return__163_carry__2_i_23_n_0),
        .O(ap_return__163_carry__2_i_17_0[3]));
  LUT6 #(
    .INIT(64'h70F1017F017F70F1)) 
    ap_return__163_carry__2_i_43
       (.I0(\out_local_V_reg_295_reg[31]_0 [7]),
        .I1(\out_local_V_reg_295_reg[31] [7]),
        .I2(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I3(\trunc_ln902_reg_307_reg[7]_2 ),
        .I4(ap_return__163_carry__2_i_8_1[0]),
        .I5(ap_return__163_carry__2_i_8_0[0]),
        .O(ap_return__163_carry__2_i_43_n_0));
  LUT6 #(
    .INIT(64'h70F1017F017F70F1)) 
    ap_return__163_carry__2_i_45
       (.I0(\out_local_V_reg_295_reg[31]_0 [6]),
        .I1(\out_local_V_reg_295_reg[31] [6]),
        .I2(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I3(\trunc_ln902_reg_307_reg[7]_2 ),
        .I4(\out_local_V_reg_295_reg[31]_0 [7]),
        .I5(\out_local_V_reg_295_reg[31] [7]),
        .O(ap_return__163_carry__2_i_45_n_0));
  LUT6 #(
    .INIT(64'h18820000599A2441)) 
    ap_return__163_carry__2_i_5
       (.I0(ap_return__163_carry__2_i_24_n_0),
        .I1(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I2(ap_return__163_carry__2_i_8_0[0]),
        .I3(ap_return__163_carry__2_i_8_1[0]),
        .I4(\trunc_ln902_reg_307_reg[7]_2 ),
        .I5(ap_return__163_carry__2_i_25_n_0),
        .O(ap_return__163_carry__2_i_17_0[2]));
  LUT6 #(
    .INIT(64'h18820000599A2441)) 
    ap_return__163_carry__2_i_6
       (.I0(ap_return__163_carry__2_i_26_n_0),
        .I1(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I2(\out_local_V_reg_295_reg[31] [7]),
        .I3(\out_local_V_reg_295_reg[31]_0 [7]),
        .I4(\trunc_ln902_reg_307_reg[7]_2 ),
        .I5(ap_return__163_carry__2_i_27_n_0),
        .O(ap_return__163_carry__2_i_17_0[1]));
  LUT6 #(
    .INIT(64'h18820000599A2441)) 
    ap_return__163_carry__2_i_7
       (.I0(ap_return__163_carry__2_i_28_n_0),
        .I1(\tmp_data_V_2_reg_255_reg[15]_4 ),
        .I2(\out_local_V_reg_295_reg[31] [6]),
        .I3(\out_local_V_reg_295_reg[31]_0 [6]),
        .I4(\trunc_ln902_reg_307_reg[7]_2 ),
        .I5(ap_return__163_carry__2_i_29_n_0),
        .O(ap_return__163_carry__2_i_17_0[0]));
  LUT5 #(
    .INIT(32'h6CC9C993)) 
    ap_return__163_carry__2_i_8
       (.I0(\out_local_V_reg_295_reg[31]_11 ),
        .I1(\out_local_V_reg_295_reg[31]_13 ),
        .I2(ap_return__163_carry__2_i_32_n_0),
        .I3(ap_return__163_carry__2_i_33_n_0),
        .I4(\trunc_ln902_reg_307_reg[7]_2 ),
        .O(ap_return__163_carry_i_22_0[7]));
  LUT3 #(
    .INIT(8'h96)) 
    ap_return__163_carry__2_i_9
       (.I0(ap_return__163_carry__2_i_17_0[6]),
        .I1(\out_local_V_reg_295_reg[31]_11 ),
        .I2(\out_local_V_reg_295_reg[31]_12 ),
        .O(ap_return__163_carry_i_22_0[6]));
  LUT6 #(
    .INIT(64'h9609060006006906)) 
    ap_return__163_carry_i_1
       (.I0(O[6]),
        .I1(\trunc_ln902_reg_307_reg[15] [6]),
        .I2(\tmp_data_V_2_reg_255_reg[15]_1 ),
        .I3(\trunc_ln902_reg_307_reg[7] ),
        .I4(\trunc_ln902_reg_307_reg[15] [5]),
        .I5(O[5]),
        .O(ap_return__81_carry[4]));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    ap_return__163_carry_i_11
       (.I0(ap_return__81_carry[3]),
        .I1(\trunc_ln902_reg_307_reg[7]_3 ),
        .I2(\trunc_ln902_reg_307_reg[7]_4 ),
        .I3(\tmp_data_V_2_reg_255_reg[15]_2 ),
        .I4(\trunc_ln902_reg_307_reg[15] [4]),
        .I5(O[4]),
        .O(ap_return__163_carry_i_27_0[4]));
  LUT6 #(
    .INIT(64'h56AAAA5655565655)) 
    ap_return__163_carry_i_12
       (.I0(ap_return__81_carry[2]),
        .I1(\trunc_ln902_reg_307_reg[15] [2]),
        .I2(O[2]),
        .I3(O[3]),
        .I4(\trunc_ln902_reg_307_reg[15] [3]),
        .I5(ap_return__163_carry_i_30_n_0),
        .O(ap_return__163_carry_i_27_0[3]));
  LUT6 #(
    .INIT(64'h9669966996696996)) 
    ap_return__163_carry_i_13
       (.I0(ap_return__81_carry[1]),
        .I1(ap_return__163_carry_i_30_n_0),
        .I2(\trunc_ln902_reg_307_reg[15] [3]),
        .I3(O[3]),
        .I4(O[2]),
        .I5(\trunc_ln902_reg_307_reg[15] [2]),
        .O(ap_return__163_carry_i_27_0[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    ap_return__163_carry_i_14
       (.I0(ap_return__81_carry[0]),
        .I1(ap_return__163_carry_i_31_n_0),
        .I2(\tmp_data_V_6_reg_275_reg[15]_2 ),
        .I3(\trunc_ln902_reg_307_reg[7]_2 ),
        .I4(\trunc_ln902_reg_307_reg[15] [2]),
        .I5(O[2]),
        .O(ap_return__163_carry_i_27_0[1]));
  LUT5 #(
    .INIT(32'h66666966)) 
    ap_return__163_carry_i_16
       (.I0(O[0]),
        .I1(\trunc_ln902_reg_307_reg[15] [0]),
        .I2(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I3(\tmp_data_V_2_reg_255_reg[15] ),
        .I4(\tmp_data_V_6_reg_275_reg[15] ),
        .O(ap_return__163_carry_i_27_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ap_return__163_carry_i_17
       (.I0(\tmp_data_V_2_reg_255_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .O(\tmp_data_V_2_reg_255_reg[15]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ap_return__163_carry_i_21
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15] ),
        .I2(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .O(\tmp_data_V_6_reg_275_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    ap_return__163_carry_i_23
       (.I0(\tmp_data_V_2_reg_255_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\trunc_ln902_reg_307_reg[15] [4]),
        .I3(O[4]),
        .O(ap_return__163_carry_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    ap_return__163_carry_i_24
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .O(\tmp_data_V_6_reg_275_reg[15]_1 ));
  LUT6 #(
    .INIT(64'h56AAA955A95556AA)) 
    ap_return__163_carry_i_27
       (.I0(\trunc_ln902_reg_307_reg[15]_0 ),
        .I1(\tmp_data_V_6_reg_275_reg[15] ),
        .I2(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I3(\tmp_data_V_2_reg_255_reg[15] ),
        .I4(\trunc_ln902_reg_307_reg[15] [7]),
        .I5(O[7]),
        .O(ap_return__163_carry_i_27_n_0));
  LUT4 #(
    .INIT(16'h7887)) 
    ap_return__163_carry_i_28
       (.I0(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I1(\tmp_data_V_2_reg_255_reg[15] ),
        .I2(\trunc_ln902_reg_307_reg[15] [6]),
        .I3(O[6]),
        .O(\tmp_data_V_2_reg_255_reg[15]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    ap_return__163_carry_i_29
       (.I0(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I1(\tmp_data_V_2_reg_255_reg[15] ),
        .O(\tmp_data_V_2_reg_255_reg[15]_2 ));
  LUT5 #(
    .INIT(32'h41414114)) 
    ap_return__163_carry_i_3
       (.I0(\tmp_data_V_6_reg_275_reg[15]_0 ),
        .I1(\trunc_ln902_reg_307_reg[7]_2 ),
        .I2(ap_return__163_carry_i_23_n_0),
        .I3(O[3]),
        .I4(\trunc_ln902_reg_307_reg[15] [3]),
        .O(ap_return__81_carry[3]));
  LUT6 #(
    .INIT(64'h0F0F0F0F0FEF0F0F)) 
    ap_return__163_carry_i_30
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .I3(ap_return__163_carry_i_13_0),
        .I4(ap_return__163_carry_i_13_1),
        .I5(CO),
        .O(ap_return__163_carry_i_30_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h11717777)) 
    ap_return__163_carry_i_31
       (.I0(O[1]),
        .I1(\trunc_ln902_reg_307_reg[15] [1]),
        .I2(\tmp_data_V_6_reg_275_reg[15] ),
        .I3(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I4(\tmp_data_V_2_reg_255_reg[15] ),
        .O(ap_return__163_carry_i_31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    ap_return__163_carry_i_32
       (.I0(\tmp_data_V_6_reg_275_reg[15] ),
        .I1(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15] ),
        .O(\tmp_data_V_6_reg_275_reg[15]_2 ));
  LUT5 #(
    .INIT(32'h99966669)) 
    ap_return__163_carry_i_4
       (.I0(\trunc_ln902_reg_307_reg[7]_2 ),
        .I1(ap_return__163_carry_i_23_n_0),
        .I2(O[3]),
        .I3(\trunc_ln902_reg_307_reg[15] [3]),
        .I4(\tmp_data_V_6_reg_275_reg[15]_0 ),
        .O(ap_return__81_carry[2]));
  LUT6 #(
    .INIT(64'hFFE8E800E800FFE8)) 
    ap_return__163_carry_i_5
       (.I0(O[1]),
        .I1(\trunc_ln902_reg_307_reg[15] [1]),
        .I2(\tmp_data_V_6_reg_275_reg[15]_1 ),
        .I3(\trunc_ln902_reg_307_reg[7]_1 ),
        .I4(\trunc_ln902_reg_307_reg[15] [2]),
        .I5(O[2]),
        .O(ap_return__81_carry[1]));
  LUT6 #(
    .INIT(64'h8282288228282828)) 
    ap_return__163_carry_i_6
       (.I0(CO),
        .I1(O[1]),
        .I2(\trunc_ln902_reg_307_reg[15] [1]),
        .I3(\tmp_data_V_6_reg_275_reg[15] ),
        .I4(\tmp_data_V_2_reg_255_reg[15]_0 ),
        .I5(\tmp_data_V_2_reg_255_reg[15] ),
        .O(ap_return__81_carry[0]));
  LUT6 #(
    .INIT(64'h9996966666696999)) 
    ap_return__163_carry_i_9
       (.I0(ap_return__81_carry[4]),
        .I1(\trunc_ln902_reg_307_reg[7]_0 ),
        .I2(\tmp_data_V_2_reg_255_reg[15]_1 ),
        .I3(\trunc_ln902_reg_307_reg[15] [6]),
        .I4(O[6]),
        .I5(ap_return__163_carry_i_27_n_0),
        .O(ap_return__163_carry_i_27_0[5]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_2_fu_60_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\tmp_data_V_6_reg_275_reg[15] ,comparison_2_fu_60_p2_carry_n_1,comparison_2_fu_60_p2_carry_n_2,comparison_2_fu_60_p2_carry_n_3,comparison_2_fu_60_p2_carry_n_4,comparison_2_fu_60_p2_carry_n_5,comparison_2_fu_60_p2_carry_n_6,comparison_2_fu_60_p2_carry_n_7}),
        .DI({ap_return__163_carry_i_25_1[1],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ap_return__163_carry_i_25_1[0]}),
        .O(NLW_comparison_2_fu_60_p2_carry_O_UNCONNECTED[7:0]),
        .S(ap_return__163_carry_i_25_2));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_3_fu_54_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\tmp_data_V_2_reg_255_reg[15]_0 ,comparison_3_fu_54_p2_carry_n_1,comparison_3_fu_54_p2_carry_n_2,comparison_3_fu_54_p2_carry_n_3,comparison_3_fu_54_p2_carry_n_4,comparison_3_fu_54_p2_carry_n_5,comparison_3_fu_54_p2_carry_n_6,comparison_3_fu_54_p2_carry_n_7}),
        .DI(ap_return__163_carry_i_25),
        .O(NLW_comparison_3_fu_54_p2_carry_O_UNCONNECTED[7:0]),
        .S(ap_return__163_carry_i_25_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 comparison_fu_48_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\tmp_data_V_2_reg_255_reg[15] ,comparison_fu_48_p2_carry_n_1,comparison_fu_48_p2_carry_n_2,comparison_fu_48_p2_carry_n_3,comparison_fu_48_p2_carry_n_4,comparison_fu_48_p2_carry_n_5,comparison_fu_48_p2_carry_n_6,comparison_fu_48_p2_carry_n_7}),
        .DI({DI[1],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DI[0]}),
        .O(NLW_comparison_fu_48_p2_carry_O_UNCONNECTED[7:0]),
        .S(S));
endmodule

(* ORIG_REF_NAME = "myproject_axi_myproject" *) 
module design_1_myproject_axi_0_0_myproject_axi_myproject
   (CO,
    \B_V_data_1_payload_A_reg[15] ,
    out_local_V_myproject_fu_121_ap_return,
    \tmp_data_V_6_reg_275_reg[15] ,
    Q,
    comparison_2_fu_60_p2_carry,
    comparison_fu_48_p2_carry,
    comparison_fu_48_p2_carry_0,
    ap_return__0_carry_i_18_0,
    comparison_9_fu_60_p2_carry,
    comparison_10_fu_54_p2_carry,
    DI,
    S,
    comparison_12_fu_54_p2_carry,
    comparison_fu_56_p2_carry,
    ap_return__81_carry__0_i_21,
    ap_return__81_carry__0_i_21_0,
    ap_return__81_carry__0_0);
  output [0:0]CO;
  output [0:0]\B_V_data_1_payload_A_reg[15] ;
  output [31:0]out_local_V_myproject_fu_121_ap_return;
  output [0:0]\tmp_data_V_6_reg_275_reg[15] ;
  input [15:0]Q;
  input [15:0]comparison_2_fu_60_p2_carry;
  input [15:0]comparison_fu_48_p2_carry;
  input [15:0]comparison_fu_48_p2_carry_0;
  input [15:0]ap_return__0_carry_i_18_0;
  input [15:0]comparison_9_fu_60_p2_carry;
  input [15:0]comparison_10_fu_54_p2_carry;
  input [1:0]DI;
  input [7:0]S;
  input [15:0]comparison_12_fu_54_p2_carry;
  input [15:0]comparison_fu_56_p2_carry;
  input [7:0]ap_return__81_carry__0_i_21;
  input [7:0]ap_return__81_carry__0_i_21_0;
  input ap_return__81_carry__0_0;

  wire [0:0]\B_V_data_1_payload_A_reg[15] ;
  wire [0:0]CO;
  wire [1:0]DI;
  wire [15:0]Q;
  wire [7:0]S;
  wire ap_return__0_carry__0_n_0;
  wire ap_return__0_carry__0_n_1;
  wire ap_return__0_carry__0_n_10;
  wire ap_return__0_carry__0_n_11;
  wire ap_return__0_carry__0_n_12;
  wire ap_return__0_carry__0_n_13;
  wire ap_return__0_carry__0_n_14;
  wire ap_return__0_carry__0_n_15;
  wire ap_return__0_carry__0_n_2;
  wire ap_return__0_carry__0_n_3;
  wire ap_return__0_carry__0_n_4;
  wire ap_return__0_carry__0_n_5;
  wire ap_return__0_carry__0_n_6;
  wire ap_return__0_carry__0_n_7;
  wire ap_return__0_carry__0_n_8;
  wire ap_return__0_carry__0_n_9;
  wire ap_return__0_carry__1_n_0;
  wire ap_return__0_carry__1_n_1;
  wire ap_return__0_carry__1_n_10;
  wire ap_return__0_carry__1_n_11;
  wire ap_return__0_carry__1_n_12;
  wire ap_return__0_carry__1_n_13;
  wire ap_return__0_carry__1_n_14;
  wire ap_return__0_carry__1_n_15;
  wire ap_return__0_carry__1_n_2;
  wire ap_return__0_carry__1_n_3;
  wire ap_return__0_carry__1_n_4;
  wire ap_return__0_carry__1_n_5;
  wire ap_return__0_carry__1_n_6;
  wire ap_return__0_carry__1_n_7;
  wire ap_return__0_carry__1_n_8;
  wire ap_return__0_carry__1_n_9;
  wire ap_return__0_carry__2_n_1;
  wire ap_return__0_carry__2_n_10;
  wire ap_return__0_carry__2_n_11;
  wire ap_return__0_carry__2_n_12;
  wire ap_return__0_carry__2_n_13;
  wire ap_return__0_carry__2_n_14;
  wire ap_return__0_carry__2_n_15;
  wire ap_return__0_carry__2_n_2;
  wire ap_return__0_carry__2_n_3;
  wire ap_return__0_carry__2_n_4;
  wire ap_return__0_carry__2_n_5;
  wire ap_return__0_carry__2_n_6;
  wire ap_return__0_carry__2_n_7;
  wire ap_return__0_carry__2_n_8;
  wire ap_return__0_carry__2_n_9;
  wire [15:0]ap_return__0_carry_i_18_0;
  wire ap_return__0_carry_i_18_n_1;
  wire ap_return__0_carry_i_18_n_2;
  wire ap_return__0_carry_i_18_n_3;
  wire ap_return__0_carry_i_18_n_4;
  wire ap_return__0_carry_i_18_n_5;
  wire ap_return__0_carry_i_18_n_6;
  wire ap_return__0_carry_i_18_n_7;
  wire ap_return__0_carry_i_19_n_1;
  wire ap_return__0_carry_i_19_n_2;
  wire ap_return__0_carry_i_19_n_3;
  wire ap_return__0_carry_i_19_n_4;
  wire ap_return__0_carry_i_19_n_5;
  wire ap_return__0_carry_i_19_n_6;
  wire ap_return__0_carry_i_19_n_7;
  wire ap_return__0_carry_i_20_n_2;
  wire ap_return__0_carry_i_20_n_3;
  wire ap_return__0_carry_i_20_n_4;
  wire ap_return__0_carry_i_20_n_5;
  wire ap_return__0_carry_i_20_n_6;
  wire ap_return__0_carry_i_20_n_7;
  wire ap_return__0_carry_i_26_n_0;
  wire ap_return__0_carry_i_27_n_0;
  wire ap_return__0_carry_i_28_n_0;
  wire ap_return__0_carry_i_29_n_0;
  wire ap_return__0_carry_i_30_n_0;
  wire ap_return__0_carry_i_31_n_0;
  wire ap_return__0_carry_i_32_n_0;
  wire ap_return__0_carry_i_33_n_0;
  wire ap_return__0_carry_i_34_n_0;
  wire ap_return__0_carry_i_35_n_0;
  wire ap_return__0_carry_i_36_n_0;
  wire ap_return__0_carry_i_37_n_0;
  wire ap_return__0_carry_i_38_n_0;
  wire ap_return__0_carry_i_39_n_0;
  wire ap_return__0_carry_i_40_n_0;
  wire ap_return__0_carry_i_41_n_0;
  wire ap_return__0_carry_i_42_n_0;
  wire ap_return__0_carry_i_43_n_0;
  wire ap_return__0_carry_i_44_n_0;
  wire ap_return__0_carry_i_45_n_0;
  wire ap_return__0_carry_i_46_n_0;
  wire ap_return__0_carry_i_47_n_0;
  wire ap_return__0_carry_i_48_n_0;
  wire ap_return__0_carry_i_49_n_0;
  wire ap_return__0_carry_i_50_n_0;
  wire ap_return__0_carry_i_51_n_0;
  wire ap_return__0_carry_i_52_n_0;
  wire ap_return__0_carry_i_53_n_0;
  wire ap_return__0_carry_i_54_n_0;
  wire ap_return__0_carry_i_55_n_0;
  wire ap_return__0_carry_i_56_n_0;
  wire ap_return__0_carry_i_57_n_0;
  wire ap_return__0_carry_i_58_n_0;
  wire ap_return__0_carry_i_59_n_0;
  wire ap_return__0_carry_i_60_n_0;
  wire ap_return__0_carry_i_61_n_0;
  wire ap_return__0_carry_i_62_n_0;
  wire ap_return__0_carry_i_63_n_0;
  wire ap_return__0_carry_i_64_n_0;
  wire ap_return__0_carry_i_65_n_0;
  wire ap_return__0_carry_n_0;
  wire ap_return__0_carry_n_1;
  wire ap_return__0_carry_n_10;
  wire ap_return__0_carry_n_11;
  wire ap_return__0_carry_n_12;
  wire ap_return__0_carry_n_13;
  wire ap_return__0_carry_n_14;
  wire ap_return__0_carry_n_15;
  wire ap_return__0_carry_n_2;
  wire ap_return__0_carry_n_3;
  wire ap_return__0_carry_n_4;
  wire ap_return__0_carry_n_5;
  wire ap_return__0_carry_n_6;
  wire ap_return__0_carry_n_7;
  wire ap_return__0_carry_n_8;
  wire ap_return__0_carry_n_9;
  wire ap_return__163_carry__0_n_0;
  wire ap_return__163_carry__0_n_1;
  wire ap_return__163_carry__0_n_2;
  wire ap_return__163_carry__0_n_3;
  wire ap_return__163_carry__0_n_4;
  wire ap_return__163_carry__0_n_5;
  wire ap_return__163_carry__0_n_6;
  wire ap_return__163_carry__0_n_7;
  wire ap_return__163_carry__1_n_0;
  wire ap_return__163_carry__1_n_1;
  wire ap_return__163_carry__1_n_2;
  wire ap_return__163_carry__1_n_3;
  wire ap_return__163_carry__1_n_4;
  wire ap_return__163_carry__1_n_5;
  wire ap_return__163_carry__1_n_6;
  wire ap_return__163_carry__1_n_7;
  wire ap_return__163_carry__2_n_1;
  wire ap_return__163_carry__2_n_2;
  wire ap_return__163_carry__2_n_3;
  wire ap_return__163_carry__2_n_4;
  wire ap_return__163_carry__2_n_5;
  wire ap_return__163_carry__2_n_6;
  wire ap_return__163_carry__2_n_7;
  wire ap_return__163_carry_i_7_n_0;
  wire ap_return__163_carry_i_8_n_0;
  wire ap_return__163_carry_n_0;
  wire ap_return__163_carry_n_1;
  wire ap_return__163_carry_n_2;
  wire ap_return__163_carry_n_3;
  wire ap_return__163_carry_n_4;
  wire ap_return__163_carry_n_5;
  wire ap_return__163_carry_n_6;
  wire ap_return__163_carry_n_7;
  wire ap_return__81_carry__0_0;
  wire [7:0]ap_return__81_carry__0_i_21;
  wire [7:0]ap_return__81_carry__0_i_21_0;
  wire ap_return__81_carry__0_n_0;
  wire ap_return__81_carry__0_n_1;
  wire ap_return__81_carry__0_n_10;
  wire ap_return__81_carry__0_n_11;
  wire ap_return__81_carry__0_n_12;
  wire ap_return__81_carry__0_n_13;
  wire ap_return__81_carry__0_n_14;
  wire ap_return__81_carry__0_n_15;
  wire ap_return__81_carry__0_n_2;
  wire ap_return__81_carry__0_n_3;
  wire ap_return__81_carry__0_n_4;
  wire ap_return__81_carry__0_n_5;
  wire ap_return__81_carry__0_n_6;
  wire ap_return__81_carry__0_n_7;
  wire ap_return__81_carry__0_n_8;
  wire ap_return__81_carry__0_n_9;
  wire ap_return__81_carry__1_n_0;
  wire ap_return__81_carry__1_n_1;
  wire ap_return__81_carry__1_n_10;
  wire ap_return__81_carry__1_n_11;
  wire ap_return__81_carry__1_n_12;
  wire ap_return__81_carry__1_n_13;
  wire ap_return__81_carry__1_n_14;
  wire ap_return__81_carry__1_n_15;
  wire ap_return__81_carry__1_n_2;
  wire ap_return__81_carry__1_n_3;
  wire ap_return__81_carry__1_n_4;
  wire ap_return__81_carry__1_n_5;
  wire ap_return__81_carry__1_n_6;
  wire ap_return__81_carry__1_n_7;
  wire ap_return__81_carry__1_n_8;
  wire ap_return__81_carry__1_n_9;
  wire ap_return__81_carry__2_n_1;
  wire ap_return__81_carry__2_n_10;
  wire ap_return__81_carry__2_n_11;
  wire ap_return__81_carry__2_n_12;
  wire ap_return__81_carry__2_n_13;
  wire ap_return__81_carry__2_n_14;
  wire ap_return__81_carry__2_n_15;
  wire ap_return__81_carry__2_n_2;
  wire ap_return__81_carry__2_n_3;
  wire ap_return__81_carry__2_n_4;
  wire ap_return__81_carry__2_n_5;
  wire ap_return__81_carry__2_n_6;
  wire ap_return__81_carry__2_n_7;
  wire ap_return__81_carry__2_n_8;
  wire ap_return__81_carry__2_n_9;
  wire ap_return__81_carry_i_18_n_2;
  wire ap_return__81_carry_i_18_n_3;
  wire ap_return__81_carry_i_18_n_4;
  wire ap_return__81_carry_i_18_n_5;
  wire ap_return__81_carry_i_18_n_6;
  wire ap_return__81_carry_i_18_n_7;
  wire ap_return__81_carry_i_23_n_0;
  wire ap_return__81_carry_i_24_n_0;
  wire ap_return__81_carry_i_25_n_0;
  wire ap_return__81_carry_i_26_n_0;
  wire ap_return__81_carry_i_27_n_0;
  wire ap_return__81_carry_i_28_n_0;
  wire ap_return__81_carry_i_29_n_0;
  wire ap_return__81_carry_i_30_n_0;
  wire ap_return__81_carry_n_0;
  wire ap_return__81_carry_n_1;
  wire ap_return__81_carry_n_10;
  wire ap_return__81_carry_n_11;
  wire ap_return__81_carry_n_12;
  wire ap_return__81_carry_n_13;
  wire ap_return__81_carry_n_14;
  wire ap_return__81_carry_n_15;
  wire ap_return__81_carry_n_2;
  wire ap_return__81_carry_n_3;
  wire ap_return__81_carry_n_4;
  wire ap_return__81_carry_n_5;
  wire ap_return__81_carry_n_6;
  wire ap_return__81_carry_n_7;
  wire ap_return__81_carry_n_8;
  wire ap_return__81_carry_n_9;
  wire comparison_10_fu_54_p2;
  wire [15:0]comparison_10_fu_54_p2_carry;
  wire comparison_10_fu_54_p2_carry_i_1_n_0;
  wire comparison_10_fu_54_p2_carry_i_2_n_0;
  wire comparison_10_fu_54_p2_carry_i_3_n_0;
  wire comparison_10_fu_54_p2_carry_i_4_n_0;
  wire comparison_10_fu_54_p2_carry_i_5_n_0;
  wire comparison_10_fu_54_p2_carry_i_6_n_0;
  wire comparison_10_fu_54_p2_carry_i_7_n_0;
  wire comparison_10_fu_54_p2_carry_i_8_n_0;
  wire comparison_10_fu_54_p2_carry_i_9_n_0;
  wire comparison_11_fu_60_p2;
  wire comparison_12_fu_54_p2;
  wire [15:0]comparison_12_fu_54_p2_carry;
  wire comparison_12_fu_54_p2_carry_i_1_n_0;
  wire comparison_12_fu_54_p2_carry_i_2_n_0;
  wire comparison_12_fu_54_p2_carry_i_3_n_0;
  wire comparison_12_fu_54_p2_carry_i_4_n_0;
  wire comparison_12_fu_54_p2_carry_i_5_n_0;
  wire comparison_12_fu_54_p2_carry_i_6_n_0;
  wire comparison_12_fu_54_p2_carry_i_7_n_0;
  wire comparison_12_fu_54_p2_carry_i_8_n_0;
  wire comparison_12_fu_54_p2_carry_i_9_n_0;
  wire comparison_13_fu_60_p2_carry_i_10_n_0;
  wire comparison_13_fu_60_p2_carry_i_11_n_0;
  wire comparison_13_fu_60_p2_carry_i_12_n_0;
  wire comparison_13_fu_60_p2_carry_i_13_n_0;
  wire comparison_13_fu_60_p2_carry_i_14_n_0;
  wire comparison_13_fu_60_p2_carry_i_15_n_0;
  wire comparison_13_fu_60_p2_carry_i_16_n_0;
  wire comparison_13_fu_60_p2_carry_i_1_n_0;
  wire comparison_13_fu_60_p2_carry_i_2_n_0;
  wire comparison_13_fu_60_p2_carry_i_3_n_0;
  wire comparison_13_fu_60_p2_carry_i_4_n_0;
  wire comparison_13_fu_60_p2_carry_i_5_n_0;
  wire comparison_13_fu_60_p2_carry_i_6_n_0;
  wire comparison_13_fu_60_p2_carry_i_7_n_0;
  wire comparison_13_fu_60_p2_carry_i_8_n_0;
  wire comparison_13_fu_60_p2_carry_i_9_n_0;
  wire comparison_17_fu_60_p2;
  wire comparison_17_fu_60_p2_carry_i_10_n_0;
  wire comparison_17_fu_60_p2_carry_i_11_n_0;
  wire comparison_17_fu_60_p2_carry_i_12_n_0;
  wire comparison_17_fu_60_p2_carry_i_13_n_0;
  wire comparison_17_fu_60_p2_carry_i_14_n_0;
  wire comparison_17_fu_60_p2_carry_i_15_n_0;
  wire comparison_17_fu_60_p2_carry_i_16_n_0;
  wire comparison_17_fu_60_p2_carry_i_1_n_0;
  wire comparison_17_fu_60_p2_carry_i_2_n_0;
  wire comparison_17_fu_60_p2_carry_i_3_n_0;
  wire comparison_17_fu_60_p2_carry_i_4_n_0;
  wire comparison_17_fu_60_p2_carry_i_5_n_0;
  wire comparison_17_fu_60_p2_carry_i_6_n_0;
  wire comparison_17_fu_60_p2_carry_i_7_n_0;
  wire comparison_17_fu_60_p2_carry_i_8_n_0;
  wire comparison_17_fu_60_p2_carry_i_9_n_0;
  wire comparison_18_fu_54_p2;
  wire comparison_2_fu_60_p2;
  wire [15:0]comparison_2_fu_60_p2_carry;
  wire comparison_2_fu_60_p2_carry_i_1_n_0;
  wire comparison_2_fu_60_p2_carry_i_2_n_0;
  wire comparison_2_fu_60_p2_carry_i_3_n_0;
  wire comparison_2_fu_60_p2_carry_i_4_n_0;
  wire comparison_2_fu_60_p2_carry_i_5_n_0;
  wire comparison_2_fu_60_p2_carry_i_6_n_0;
  wire comparison_2_fu_60_p2_carry_i_7_n_0;
  wire comparison_2_fu_60_p2_carry_i_8_n_0;
  wire comparison_2_fu_60_p2_carry_i_9_n_0;
  wire comparison_3_fu_54_p2;
  wire comparison_3_fu_54_p2_carry_i_10_n_0;
  wire comparison_3_fu_54_p2_carry_i_11_n_0;
  wire comparison_3_fu_54_p2_carry_i_12_n_0;
  wire comparison_3_fu_54_p2_carry_i_13_n_0;
  wire comparison_3_fu_54_p2_carry_i_14_n_0;
  wire comparison_3_fu_54_p2_carry_i_15_n_0;
  wire comparison_3_fu_54_p2_carry_i_16_n_0;
  wire comparison_3_fu_54_p2_carry_i_1_n_0;
  wire comparison_3_fu_54_p2_carry_i_2_n_0;
  wire comparison_3_fu_54_p2_carry_i_3_n_0;
  wire comparison_3_fu_54_p2_carry_i_4_n_0;
  wire comparison_3_fu_54_p2_carry_i_5_n_0;
  wire comparison_3_fu_54_p2_carry_i_6_n_0;
  wire comparison_3_fu_54_p2_carry_i_7_n_0;
  wire comparison_3_fu_54_p2_carry_i_8_n_0;
  wire comparison_3_fu_54_p2_carry_i_9_n_0;
  wire comparison_4_fu_62_p2;
  wire comparison_4_fu_62_p2_carry_i_1_n_0;
  wire comparison_4_fu_62_p2_carry_i_2_n_0;
  wire comparison_4_fu_62_p2_carry_i_3_n_0;
  wire comparison_4_fu_62_p2_carry_i_4_n_0;
  wire comparison_4_fu_62_p2_carry_i_5_n_0;
  wire comparison_4_fu_62_p2_carry_i_6_n_0;
  wire comparison_4_fu_62_p2_carry_i_7_n_0;
  wire comparison_4_fu_62_p2_carry_i_8_n_0;
  wire comparison_4_fu_62_p2_carry_i_9_n_0;
  wire comparison_5_fu_68_p2_carry_i_1_n_0;
  wire comparison_5_fu_68_p2_carry_i_2_n_0;
  wire comparison_5_fu_68_p2_carry_i_3_n_0;
  wire comparison_5_fu_68_p2_carry_i_4_n_0;
  wire comparison_5_fu_68_p2_carry_i_5_n_0;
  wire comparison_5_fu_68_p2_carry_i_6_n_0;
  wire comparison_5_fu_68_p2_carry_i_7_n_0;
  wire comparison_5_fu_68_p2_carry_i_8_n_0;
  wire comparison_5_fu_68_p2_carry_i_9_n_0;
  wire comparison_6_fu_54_p2;
  wire comparison_7_fu_60_p2_carry_i_1_n_0;
  wire comparison_7_fu_60_p2_carry_i_2_n_0;
  wire comparison_7_fu_60_p2_carry_i_3_n_0;
  wire comparison_7_fu_60_p2_carry_i_4_n_0;
  wire comparison_7_fu_60_p2_carry_i_5_n_0;
  wire comparison_7_fu_60_p2_carry_i_6_n_0;
  wire comparison_7_fu_60_p2_carry_i_7_n_0;
  wire comparison_7_fu_60_p2_carry_i_8_n_0;
  wire comparison_8_fu_54_p2;
  wire comparison_8_fu_54_p2_carry_i_1_n_0;
  wire comparison_8_fu_54_p2_carry_i_2_n_0;
  wire comparison_8_fu_54_p2_carry_i_3_n_0;
  wire comparison_8_fu_54_p2_carry_i_4_n_0;
  wire comparison_8_fu_54_p2_carry_i_5_n_0;
  wire comparison_8_fu_54_p2_carry_i_6_n_0;
  wire comparison_8_fu_54_p2_carry_i_7_n_0;
  wire comparison_8_fu_54_p2_carry_i_8_n_0;
  wire comparison_8_fu_54_p2_carry_i_9_n_0;
  wire comparison_9_fu_60_p2;
  wire [15:0]comparison_9_fu_60_p2_carry;
  wire comparison_9_fu_60_p2_carry_i_10_n_0;
  wire comparison_9_fu_60_p2_carry_i_11_n_0;
  wire comparison_9_fu_60_p2_carry_i_12_n_0;
  wire comparison_9_fu_60_p2_carry_i_13_n_0;
  wire comparison_9_fu_60_p2_carry_i_14_n_0;
  wire comparison_9_fu_60_p2_carry_i_15_n_0;
  wire comparison_9_fu_60_p2_carry_i_16_n_0;
  wire comparison_9_fu_60_p2_carry_i_1_n_0;
  wire comparison_9_fu_60_p2_carry_i_2_n_0;
  wire comparison_9_fu_60_p2_carry_i_3_n_0;
  wire comparison_9_fu_60_p2_carry_i_4_n_0;
  wire comparison_9_fu_60_p2_carry_i_5_n_0;
  wire comparison_9_fu_60_p2_carry_i_6_n_0;
  wire comparison_9_fu_60_p2_carry_i_7_n_0;
  wire comparison_9_fu_60_p2_carry_i_8_n_0;
  wire comparison_9_fu_60_p2_carry_i_9_n_0;
  wire comparison_fu_48_p2;
  wire comparison_fu_48_p2_0;
  wire comparison_fu_48_p2_1;
  wire comparison_fu_48_p2_2;
  wire [15:0]comparison_fu_48_p2_carry;
  wire [15:0]comparison_fu_48_p2_carry_0;
  wire comparison_fu_48_p2_carry_i_10__0_n_0;
  wire comparison_fu_48_p2_carry_i_10__1_n_0;
  wire comparison_fu_48_p2_carry_i_10__2_n_0;
  wire comparison_fu_48_p2_carry_i_10_n_0;
  wire comparison_fu_48_p2_carry_i_11__0_n_0;
  wire comparison_fu_48_p2_carry_i_11__1_n_0;
  wire comparison_fu_48_p2_carry_i_11__2_n_0;
  wire comparison_fu_48_p2_carry_i_11_n_0;
  wire comparison_fu_48_p2_carry_i_12__0_n_0;
  wire comparison_fu_48_p2_carry_i_12__1_n_0;
  wire comparison_fu_48_p2_carry_i_12__2_n_0;
  wire comparison_fu_48_p2_carry_i_12_n_0;
  wire comparison_fu_48_p2_carry_i_13__0_n_0;
  wire comparison_fu_48_p2_carry_i_13__1_n_0;
  wire comparison_fu_48_p2_carry_i_13__2_n_0;
  wire comparison_fu_48_p2_carry_i_13_n_0;
  wire comparison_fu_48_p2_carry_i_14__0_n_0;
  wire comparison_fu_48_p2_carry_i_14__1_n_0;
  wire comparison_fu_48_p2_carry_i_14__2_n_0;
  wire comparison_fu_48_p2_carry_i_14_n_0;
  wire comparison_fu_48_p2_carry_i_15__0_n_0;
  wire comparison_fu_48_p2_carry_i_15__1_n_0;
  wire comparison_fu_48_p2_carry_i_15__2_n_0;
  wire comparison_fu_48_p2_carry_i_15_n_0;
  wire comparison_fu_48_p2_carry_i_16__0_n_0;
  wire comparison_fu_48_p2_carry_i_16__1_n_0;
  wire comparison_fu_48_p2_carry_i_16__2_n_0;
  wire comparison_fu_48_p2_carry_i_16_n_0;
  wire comparison_fu_48_p2_carry_i_1__0_n_0;
  wire comparison_fu_48_p2_carry_i_1__1_n_0;
  wire comparison_fu_48_p2_carry_i_1__2_n_0;
  wire comparison_fu_48_p2_carry_i_1__3_n_0;
  wire comparison_fu_48_p2_carry_i_1_n_0;
  wire comparison_fu_48_p2_carry_i_2__0_n_0;
  wire comparison_fu_48_p2_carry_i_2__1_n_0;
  wire comparison_fu_48_p2_carry_i_2__2_n_0;
  wire comparison_fu_48_p2_carry_i_2__3_n_0;
  wire comparison_fu_48_p2_carry_i_2_n_0;
  wire comparison_fu_48_p2_carry_i_3__0_n_0;
  wire comparison_fu_48_p2_carry_i_3__1_n_0;
  wire comparison_fu_48_p2_carry_i_3__2_n_0;
  wire comparison_fu_48_p2_carry_i_3__3_n_0;
  wire comparison_fu_48_p2_carry_i_3_n_0;
  wire comparison_fu_48_p2_carry_i_4__0_n_0;
  wire comparison_fu_48_p2_carry_i_4__1_n_0;
  wire comparison_fu_48_p2_carry_i_4__2_n_0;
  wire comparison_fu_48_p2_carry_i_4__3_n_0;
  wire comparison_fu_48_p2_carry_i_4_n_0;
  wire comparison_fu_48_p2_carry_i_5__0_n_0;
  wire comparison_fu_48_p2_carry_i_5__1_n_0;
  wire comparison_fu_48_p2_carry_i_5__2_n_0;
  wire comparison_fu_48_p2_carry_i_5__3_n_0;
  wire comparison_fu_48_p2_carry_i_5_n_0;
  wire comparison_fu_48_p2_carry_i_6__0_n_0;
  wire comparison_fu_48_p2_carry_i_6__1_n_0;
  wire comparison_fu_48_p2_carry_i_6__2_n_0;
  wire comparison_fu_48_p2_carry_i_6__3_n_0;
  wire comparison_fu_48_p2_carry_i_6_n_0;
  wire comparison_fu_48_p2_carry_i_7__0_n_0;
  wire comparison_fu_48_p2_carry_i_7__1_n_0;
  wire comparison_fu_48_p2_carry_i_7__2_n_0;
  wire comparison_fu_48_p2_carry_i_7__3_n_0;
  wire comparison_fu_48_p2_carry_i_7_n_0;
  wire comparison_fu_48_p2_carry_i_8__0_n_0;
  wire comparison_fu_48_p2_carry_i_8__1_n_0;
  wire comparison_fu_48_p2_carry_i_8__2_n_0;
  wire comparison_fu_48_p2_carry_i_8__3_n_0;
  wire comparison_fu_48_p2_carry_i_8_n_0;
  wire comparison_fu_48_p2_carry_i_9__0_n_0;
  wire comparison_fu_48_p2_carry_i_9__1_n_0;
  wire comparison_fu_48_p2_carry_i_9__2_n_0;
  wire comparison_fu_48_p2_carry_i_9__3_n_0;
  wire comparison_fu_48_p2_carry_i_9_n_0;
  wire comparison_fu_56_p2;
  wire [15:0]comparison_fu_56_p2_carry;
  wire comparison_fu_56_p2_carry_i_10_n_0;
  wire comparison_fu_56_p2_carry_i_11_n_0;
  wire comparison_fu_56_p2_carry_i_12_n_0;
  wire comparison_fu_56_p2_carry_i_13_n_0;
  wire comparison_fu_56_p2_carry_i_14_n_0;
  wire comparison_fu_56_p2_carry_i_15_n_0;
  wire comparison_fu_56_p2_carry_i_16_n_0;
  wire comparison_fu_56_p2_carry_i_1__0_n_0;
  wire comparison_fu_56_p2_carry_i_1_n_0;
  wire comparison_fu_56_p2_carry_i_2__0_n_0;
  wire comparison_fu_56_p2_carry_i_2_n_0;
  wire comparison_fu_56_p2_carry_i_3__0_n_0;
  wire comparison_fu_56_p2_carry_i_3_n_0;
  wire comparison_fu_56_p2_carry_i_4__0_n_0;
  wire comparison_fu_56_p2_carry_i_4_n_0;
  wire comparison_fu_56_p2_carry_i_5__0_n_0;
  wire comparison_fu_56_p2_carry_i_5_n_0;
  wire comparison_fu_56_p2_carry_i_6__0_n_0;
  wire comparison_fu_56_p2_carry_i_6_n_0;
  wire comparison_fu_56_p2_carry_i_7__0_n_0;
  wire comparison_fu_56_p2_carry_i_7_n_0;
  wire comparison_fu_56_p2_carry_i_8__0_n_0;
  wire comparison_fu_56_p2_carry_i_8_n_0;
  wire comparison_fu_56_p2_carry_i_9__0_n_0;
  wire comparison_fu_56_p2_carry_i_9_n_0;
  wire [31:0]out_local_V_myproject_fu_121_ap_return;
  wire s_V_1_decision_function_6_fu_116_n_10;
  wire s_V_1_decision_function_6_fu_116_n_11;
  wire s_V_1_decision_function_6_fu_116_n_12;
  wire s_V_1_decision_function_6_fu_116_n_13;
  wire s_V_1_decision_function_6_fu_116_n_14;
  wire s_V_1_decision_function_6_fu_116_n_15;
  wire s_V_1_decision_function_6_fu_116_n_16;
  wire s_V_1_decision_function_6_fu_116_n_17;
  wire s_V_1_decision_function_6_fu_116_n_18;
  wire s_V_1_decision_function_6_fu_116_n_19;
  wire s_V_1_decision_function_6_fu_116_n_2;
  wire s_V_1_decision_function_6_fu_116_n_20;
  wire s_V_1_decision_function_6_fu_116_n_21;
  wire s_V_1_decision_function_6_fu_116_n_3;
  wire s_V_1_decision_function_6_fu_116_n_4;
  wire s_V_1_decision_function_6_fu_116_n_5;
  wire s_V_1_decision_function_6_fu_116_n_6;
  wire s_V_1_decision_function_6_fu_116_n_7;
  wire s_V_1_decision_function_6_fu_116_n_8;
  wire s_V_1_decision_function_6_fu_116_n_9;
  wire s_V_2_decision_function_5_fu_126_n_1;
  wire s_V_2_decision_function_5_fu_126_n_10;
  wire s_V_2_decision_function_5_fu_126_n_11;
  wire s_V_2_decision_function_5_fu_126_n_12;
  wire s_V_2_decision_function_5_fu_126_n_13;
  wire s_V_2_decision_function_5_fu_126_n_14;
  wire s_V_2_decision_function_5_fu_126_n_15;
  wire s_V_2_decision_function_5_fu_126_n_16;
  wire s_V_2_decision_function_5_fu_126_n_17;
  wire s_V_2_decision_function_5_fu_126_n_18;
  wire s_V_2_decision_function_5_fu_126_n_19;
  wire s_V_2_decision_function_5_fu_126_n_2;
  wire s_V_2_decision_function_5_fu_126_n_20;
  wire s_V_2_decision_function_5_fu_126_n_21;
  wire s_V_2_decision_function_5_fu_126_n_22;
  wire s_V_2_decision_function_5_fu_126_n_23;
  wire s_V_2_decision_function_5_fu_126_n_24;
  wire s_V_2_decision_function_5_fu_126_n_25;
  wire s_V_2_decision_function_5_fu_126_n_26;
  wire s_V_2_decision_function_5_fu_126_n_27;
  wire s_V_2_decision_function_5_fu_126_n_28;
  wire s_V_2_decision_function_5_fu_126_n_29;
  wire s_V_2_decision_function_5_fu_126_n_3;
  wire s_V_2_decision_function_5_fu_126_n_30;
  wire s_V_2_decision_function_5_fu_126_n_31;
  wire s_V_2_decision_function_5_fu_126_n_32;
  wire s_V_2_decision_function_5_fu_126_n_33;
  wire s_V_2_decision_function_5_fu_126_n_34;
  wire s_V_2_decision_function_5_fu_126_n_35;
  wire s_V_2_decision_function_5_fu_126_n_36;
  wire s_V_2_decision_function_5_fu_126_n_37;
  wire s_V_2_decision_function_5_fu_126_n_38;
  wire s_V_2_decision_function_5_fu_126_n_39;
  wire s_V_2_decision_function_5_fu_126_n_4;
  wire s_V_2_decision_function_5_fu_126_n_40;
  wire s_V_2_decision_function_5_fu_126_n_41;
  wire s_V_2_decision_function_5_fu_126_n_42;
  wire s_V_2_decision_function_5_fu_126_n_43;
  wire s_V_2_decision_function_5_fu_126_n_44;
  wire s_V_2_decision_function_5_fu_126_n_45;
  wire s_V_2_decision_function_5_fu_126_n_46;
  wire s_V_2_decision_function_5_fu_126_n_47;
  wire s_V_2_decision_function_5_fu_126_n_48;
  wire s_V_2_decision_function_5_fu_126_n_49;
  wire s_V_2_decision_function_5_fu_126_n_5;
  wire s_V_2_decision_function_5_fu_126_n_50;
  wire s_V_2_decision_function_5_fu_126_n_51;
  wire s_V_2_decision_function_5_fu_126_n_52;
  wire s_V_2_decision_function_5_fu_126_n_6;
  wire s_V_2_decision_function_5_fu_126_n_7;
  wire s_V_2_decision_function_5_fu_126_n_8;
  wire s_V_2_decision_function_5_fu_126_n_9;
  wire s_V_3_decision_function_4_fu_134_n_10;
  wire s_V_3_decision_function_4_fu_134_n_11;
  wire s_V_3_decision_function_4_fu_134_n_12;
  wire s_V_3_decision_function_4_fu_134_n_13;
  wire s_V_3_decision_function_4_fu_134_n_14;
  wire s_V_3_decision_function_4_fu_134_n_15;
  wire s_V_3_decision_function_4_fu_134_n_16;
  wire s_V_3_decision_function_4_fu_134_n_17;
  wire s_V_3_decision_function_4_fu_134_n_18;
  wire s_V_3_decision_function_4_fu_134_n_19;
  wire s_V_3_decision_function_4_fu_134_n_20;
  wire s_V_3_decision_function_4_fu_134_n_21;
  wire s_V_3_decision_function_4_fu_134_n_22;
  wire s_V_3_decision_function_4_fu_134_n_23;
  wire s_V_3_decision_function_4_fu_134_n_24;
  wire s_V_3_decision_function_4_fu_134_n_25;
  wire s_V_3_decision_function_4_fu_134_n_26;
  wire s_V_3_decision_function_4_fu_134_n_27;
  wire s_V_3_decision_function_4_fu_134_n_28;
  wire s_V_3_decision_function_4_fu_134_n_29;
  wire s_V_3_decision_function_4_fu_134_n_3;
  wire s_V_3_decision_function_4_fu_134_n_30;
  wire s_V_3_decision_function_4_fu_134_n_4;
  wire s_V_3_decision_function_4_fu_134_n_5;
  wire s_V_3_decision_function_4_fu_134_n_6;
  wire s_V_3_decision_function_4_fu_134_n_7;
  wire s_V_3_decision_function_4_fu_134_n_8;
  wire s_V_3_decision_function_4_fu_134_n_9;
  wire s_V_4_decision_function_3_fu_142_n_10;
  wire s_V_4_decision_function_3_fu_142_n_11;
  wire s_V_4_decision_function_3_fu_142_n_12;
  wire s_V_4_decision_function_3_fu_142_n_13;
  wire s_V_4_decision_function_3_fu_142_n_3;
  wire s_V_4_decision_function_3_fu_142_n_4;
  wire s_V_4_decision_function_3_fu_142_n_5;
  wire s_V_4_decision_function_3_fu_142_n_6;
  wire s_V_4_decision_function_3_fu_142_n_7;
  wire s_V_4_decision_function_3_fu_142_n_8;
  wire s_V_4_decision_function_3_fu_142_n_9;
  wire s_V_5_decision_function_2_fu_150_n_10;
  wire s_V_5_decision_function_2_fu_150_n_11;
  wire s_V_5_decision_function_2_fu_150_n_12;
  wire s_V_5_decision_function_2_fu_150_n_13;
  wire s_V_5_decision_function_2_fu_150_n_14;
  wire s_V_5_decision_function_2_fu_150_n_15;
  wire s_V_5_decision_function_2_fu_150_n_16;
  wire s_V_5_decision_function_2_fu_150_n_17;
  wire s_V_5_decision_function_2_fu_150_n_18;
  wire s_V_5_decision_function_2_fu_150_n_19;
  wire s_V_5_decision_function_2_fu_150_n_2;
  wire s_V_5_decision_function_2_fu_150_n_20;
  wire s_V_5_decision_function_2_fu_150_n_21;
  wire s_V_5_decision_function_2_fu_150_n_22;
  wire s_V_5_decision_function_2_fu_150_n_23;
  wire s_V_5_decision_function_2_fu_150_n_24;
  wire s_V_5_decision_function_2_fu_150_n_25;
  wire s_V_5_decision_function_2_fu_150_n_26;
  wire s_V_5_decision_function_2_fu_150_n_27;
  wire s_V_5_decision_function_2_fu_150_n_28;
  wire s_V_5_decision_function_2_fu_150_n_29;
  wire s_V_5_decision_function_2_fu_150_n_3;
  wire s_V_5_decision_function_2_fu_150_n_30;
  wire s_V_5_decision_function_2_fu_150_n_31;
  wire s_V_5_decision_function_2_fu_150_n_32;
  wire s_V_5_decision_function_2_fu_150_n_33;
  wire s_V_5_decision_function_2_fu_150_n_34;
  wire s_V_5_decision_function_2_fu_150_n_35;
  wire s_V_5_decision_function_2_fu_150_n_36;
  wire s_V_5_decision_function_2_fu_150_n_37;
  wire s_V_5_decision_function_2_fu_150_n_38;
  wire s_V_5_decision_function_2_fu_150_n_39;
  wire s_V_5_decision_function_2_fu_150_n_4;
  wire s_V_5_decision_function_2_fu_150_n_40;
  wire s_V_5_decision_function_2_fu_150_n_41;
  wire s_V_5_decision_function_2_fu_150_n_5;
  wire s_V_5_decision_function_2_fu_150_n_6;
  wire s_V_5_decision_function_2_fu_150_n_7;
  wire s_V_5_decision_function_2_fu_150_n_8;
  wire s_V_5_decision_function_2_fu_150_n_9;
  wire s_V_6_decision_function_1_fu_158_n_2;
  wire s_V_6_decision_function_1_fu_158_n_3;
  wire s_V_6_decision_function_1_fu_158_n_4;
  wire s_V_6_decision_function_1_fu_158_n_5;
  wire s_V_7_decision_function_fu_168_n_1;
  wire s_V_7_decision_function_fu_168_n_2;
  wire s_V_7_decision_function_fu_168_n_3;
  wire s_V_decision_function_7_fu_108_n_10;
  wire s_V_decision_function_7_fu_108_n_11;
  wire s_V_decision_function_7_fu_108_n_12;
  wire s_V_decision_function_7_fu_108_n_13;
  wire s_V_decision_function_7_fu_108_n_14;
  wire s_V_decision_function_7_fu_108_n_15;
  wire s_V_decision_function_7_fu_108_n_16;
  wire s_V_decision_function_7_fu_108_n_17;
  wire s_V_decision_function_7_fu_108_n_18;
  wire s_V_decision_function_7_fu_108_n_19;
  wire s_V_decision_function_7_fu_108_n_20;
  wire s_V_decision_function_7_fu_108_n_21;
  wire s_V_decision_function_7_fu_108_n_22;
  wire s_V_decision_function_7_fu_108_n_23;
  wire s_V_decision_function_7_fu_108_n_24;
  wire s_V_decision_function_7_fu_108_n_25;
  wire s_V_decision_function_7_fu_108_n_26;
  wire s_V_decision_function_7_fu_108_n_27;
  wire s_V_decision_function_7_fu_108_n_28;
  wire s_V_decision_function_7_fu_108_n_29;
  wire s_V_decision_function_7_fu_108_n_3;
  wire s_V_decision_function_7_fu_108_n_30;
  wire s_V_decision_function_7_fu_108_n_31;
  wire s_V_decision_function_7_fu_108_n_32;
  wire s_V_decision_function_7_fu_108_n_33;
  wire s_V_decision_function_7_fu_108_n_34;
  wire s_V_decision_function_7_fu_108_n_35;
  wire s_V_decision_function_7_fu_108_n_36;
  wire s_V_decision_function_7_fu_108_n_37;
  wire s_V_decision_function_7_fu_108_n_38;
  wire s_V_decision_function_7_fu_108_n_39;
  wire s_V_decision_function_7_fu_108_n_4;
  wire s_V_decision_function_7_fu_108_n_40;
  wire s_V_decision_function_7_fu_108_n_41;
  wire s_V_decision_function_7_fu_108_n_42;
  wire s_V_decision_function_7_fu_108_n_43;
  wire s_V_decision_function_7_fu_108_n_44;
  wire s_V_decision_function_7_fu_108_n_45;
  wire s_V_decision_function_7_fu_108_n_46;
  wire s_V_decision_function_7_fu_108_n_47;
  wire s_V_decision_function_7_fu_108_n_48;
  wire s_V_decision_function_7_fu_108_n_49;
  wire s_V_decision_function_7_fu_108_n_5;
  wire s_V_decision_function_7_fu_108_n_50;
  wire s_V_decision_function_7_fu_108_n_51;
  wire s_V_decision_function_7_fu_108_n_52;
  wire s_V_decision_function_7_fu_108_n_53;
  wire s_V_decision_function_7_fu_108_n_54;
  wire s_V_decision_function_7_fu_108_n_55;
  wire s_V_decision_function_7_fu_108_n_56;
  wire s_V_decision_function_7_fu_108_n_57;
  wire s_V_decision_function_7_fu_108_n_58;
  wire s_V_decision_function_7_fu_108_n_59;
  wire s_V_decision_function_7_fu_108_n_6;
  wire s_V_decision_function_7_fu_108_n_60;
  wire s_V_decision_function_7_fu_108_n_61;
  wire s_V_decision_function_7_fu_108_n_62;
  wire s_V_decision_function_7_fu_108_n_7;
  wire s_V_decision_function_7_fu_108_n_8;
  wire s_V_decision_function_7_fu_108_n_9;
  wire [0:0]\tmp_data_V_6_reg_275_reg[15] ;
  wire zext_ln148_fu_96_p1;
  wire zext_ln148_fu_96_p1_3;
  wire [7:7]NLW_ap_return__0_carry__2_CO_UNCONNECTED;
  wire [7:0]NLW_ap_return__0_carry_i_18_O_UNCONNECTED;
  wire [7:0]NLW_ap_return__0_carry_i_19_O_UNCONNECTED;
  wire [7:7]NLW_ap_return__0_carry_i_20_CO_UNCONNECTED;
  wire [7:0]NLW_ap_return__0_carry_i_20_O_UNCONNECTED;
  wire [7:7]NLW_ap_return__163_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_ap_return__81_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_ap_return__81_carry_i_18_CO_UNCONNECTED;
  wire [7:0]NLW_ap_return__81_carry_i_18_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 ap_return__0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({ap_return__0_carry_n_0,ap_return__0_carry_n_1,ap_return__0_carry_n_2,ap_return__0_carry_n_3,ap_return__0_carry_n_4,ap_return__0_carry_n_5,ap_return__0_carry_n_6,ap_return__0_carry_n_7}),
        .DI({s_V_2_decision_function_5_fu_126_n_7,s_V_2_decision_function_5_fu_126_n_8,s_V_4_decision_function_3_fu_142_n_6,s_V_2_decision_function_5_fu_126_n_9,s_V_2_decision_function_5_fu_126_n_10,s_V_2_decision_function_5_fu_126_n_11,s_V_2_decision_function_5_fu_126_n_12,1'b0}),
        .O({ap_return__0_carry_n_8,ap_return__0_carry_n_9,ap_return__0_carry_n_10,ap_return__0_carry_n_11,ap_return__0_carry_n_12,ap_return__0_carry_n_13,ap_return__0_carry_n_14,ap_return__0_carry_n_15}),
        .S({s_V_2_decision_function_5_fu_126_n_24,s_V_2_decision_function_5_fu_126_n_25,s_V_4_decision_function_3_fu_142_n_10,s_V_2_decision_function_5_fu_126_n_26,s_V_2_decision_function_5_fu_126_n_27,s_V_2_decision_function_5_fu_126_n_28,s_V_2_decision_function_5_fu_126_n_29,s_V_2_decision_function_5_fu_126_n_30}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 ap_return__0_carry__0
       (.CI(ap_return__0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({ap_return__0_carry__0_n_0,ap_return__0_carry__0_n_1,ap_return__0_carry__0_n_2,ap_return__0_carry__0_n_3,ap_return__0_carry__0_n_4,ap_return__0_carry__0_n_5,ap_return__0_carry__0_n_6,ap_return__0_carry__0_n_7}),
        .DI({s_V_2_decision_function_5_fu_126_n_2,s_V_4_decision_function_3_fu_142_n_3,s_V_7_decision_function_fu_168_n_1,s_V_2_decision_function_5_fu_126_n_3,s_V_4_decision_function_3_fu_142_n_4,s_V_2_decision_function_5_fu_126_n_4,s_V_2_decision_function_5_fu_126_n_5,s_V_4_decision_function_3_fu_142_n_5}),
        .O({ap_return__0_carry__0_n_8,ap_return__0_carry__0_n_9,ap_return__0_carry__0_n_10,ap_return__0_carry__0_n_11,ap_return__0_carry__0_n_12,ap_return__0_carry__0_n_13,ap_return__0_carry__0_n_14,ap_return__0_carry__0_n_15}),
        .S({s_V_2_decision_function_5_fu_126_n_31,s_V_4_decision_function_3_fu_142_n_11,s_V_4_decision_function_3_fu_142_n_12,s_V_2_decision_function_5_fu_126_n_32,s_V_2_decision_function_5_fu_126_n_33,s_V_2_decision_function_5_fu_126_n_34,s_V_2_decision_function_5_fu_126_n_35,s_V_4_decision_function_3_fu_142_n_13}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 ap_return__0_carry__1
       (.CI(ap_return__0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({ap_return__0_carry__1_n_0,ap_return__0_carry__1_n_1,ap_return__0_carry__1_n_2,ap_return__0_carry__1_n_3,ap_return__0_carry__1_n_4,ap_return__0_carry__1_n_5,ap_return__0_carry__1_n_6,ap_return__0_carry__1_n_7}),
        .DI({s_V_2_decision_function_5_fu_126_n_15,s_V_2_decision_function_5_fu_126_n_15,s_V_2_decision_function_5_fu_126_n_15,s_V_2_decision_function_5_fu_126_n_15,s_V_2_decision_function_5_fu_126_n_15,s_V_2_decision_function_5_fu_126_n_15,s_V_2_decision_function_5_fu_126_n_15,s_V_2_decision_function_5_fu_126_n_44}),
        .O({ap_return__0_carry__1_n_8,ap_return__0_carry__1_n_9,ap_return__0_carry__1_n_10,ap_return__0_carry__1_n_11,ap_return__0_carry__1_n_12,ap_return__0_carry__1_n_13,ap_return__0_carry__1_n_14,ap_return__0_carry__1_n_15}),
        .S({s_V_2_decision_function_5_fu_126_n_36,s_V_2_decision_function_5_fu_126_n_37,s_V_2_decision_function_5_fu_126_n_38,s_V_2_decision_function_5_fu_126_n_39,s_V_2_decision_function_5_fu_126_n_40,s_V_2_decision_function_5_fu_126_n_41,s_V_2_decision_function_5_fu_126_n_42,s_V_2_decision_function_5_fu_126_n_43}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 ap_return__0_carry__2
       (.CI(ap_return__0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_ap_return__0_carry__2_CO_UNCONNECTED[7],ap_return__0_carry__2_n_1,ap_return__0_carry__2_n_2,ap_return__0_carry__2_n_3,ap_return__0_carry__2_n_4,ap_return__0_carry__2_n_5,ap_return__0_carry__2_n_6,ap_return__0_carry__2_n_7}),
        .DI({1'b0,s_V_2_decision_function_5_fu_126_n_15,s_V_2_decision_function_5_fu_126_n_15,s_V_2_decision_function_5_fu_126_n_15,s_V_2_decision_function_5_fu_126_n_15,s_V_2_decision_function_5_fu_126_n_15,s_V_2_decision_function_5_fu_126_n_15,s_V_2_decision_function_5_fu_126_n_15}),
        .O({ap_return__0_carry__2_n_8,ap_return__0_carry__2_n_9,ap_return__0_carry__2_n_10,ap_return__0_carry__2_n_11,ap_return__0_carry__2_n_12,ap_return__0_carry__2_n_13,ap_return__0_carry__2_n_14,ap_return__0_carry__2_n_15}),
        .S({s_V_2_decision_function_5_fu_126_n_45,s_V_2_decision_function_5_fu_126_n_46,s_V_2_decision_function_5_fu_126_n_47,s_V_2_decision_function_5_fu_126_n_48,s_V_2_decision_function_5_fu_126_n_49,s_V_2_decision_function_5_fu_126_n_50,s_V_2_decision_function_5_fu_126_n_51,s_V_2_decision_function_5_fu_126_n_52}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 ap_return__0_carry_i_18
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({comparison_6_fu_54_p2,ap_return__0_carry_i_18_n_1,ap_return__0_carry_i_18_n_2,ap_return__0_carry_i_18_n_3,ap_return__0_carry_i_18_n_4,ap_return__0_carry_i_18_n_5,ap_return__0_carry_i_18_n_6,ap_return__0_carry_i_18_n_7}),
        .DI({ap_return__0_carry_i_26_n_0,ap_return__0_carry_i_27_n_0,ap_return__0_carry_i_28_n_0,ap_return__0_carry_i_29_n_0,ap_return__0_carry_i_30_n_0,ap_return__0_carry_i_31_n_0,ap_return__0_carry_i_32_n_0,ap_return__0_carry_i_33_n_0}),
        .O(NLW_ap_return__0_carry_i_18_O_UNCONNECTED[7:0]),
        .S({ap_return__0_carry_i_34_n_0,ap_return__0_carry_i_35_n_0,ap_return__0_carry_i_36_n_0,ap_return__0_carry_i_37_n_0,ap_return__0_carry_i_38_n_0,ap_return__0_carry_i_39_n_0,ap_return__0_carry_i_40_n_0,ap_return__0_carry_i_41_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 ap_return__0_carry_i_19
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({comparison_18_fu_54_p2,ap_return__0_carry_i_19_n_1,ap_return__0_carry_i_19_n_2,ap_return__0_carry_i_19_n_3,ap_return__0_carry_i_19_n_4,ap_return__0_carry_i_19_n_5,ap_return__0_carry_i_19_n_6,ap_return__0_carry_i_19_n_7}),
        .DI({ap_return__0_carry_i_42_n_0,ap_return__0_carry_i_43_n_0,ap_return__0_carry_i_44_n_0,ap_return__0_carry_i_45_n_0,ap_return__0_carry_i_46_n_0,ap_return__0_carry_i_47_n_0,ap_return__0_carry_i_48_n_0,ap_return__0_carry_i_49_n_0}),
        .O(NLW_ap_return__0_carry_i_19_O_UNCONNECTED[7:0]),
        .S({ap_return__0_carry_i_50_n_0,ap_return__0_carry_i_51_n_0,ap_return__0_carry_i_52_n_0,ap_return__0_carry_i_53_n_0,ap_return__0_carry_i_54_n_0,ap_return__0_carry_i_55_n_0,ap_return__0_carry_i_56_n_0,ap_return__0_carry_i_57_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 ap_return__0_carry_i_20
       (.CI(ap_return__0_carry_i_58_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_ap_return__0_carry_i_20_CO_UNCONNECTED[7],zext_ln148_fu_96_p1,ap_return__0_carry_i_20_n_2,ap_return__0_carry_i_20_n_3,ap_return__0_carry_i_20_n_4,ap_return__0_carry_i_20_n_5,ap_return__0_carry_i_20_n_6,ap_return__0_carry_i_20_n_7}),
        .DI({1'b0,comparison_fu_48_p2_carry_0[15],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ap_return__0_carry_i_20_O_UNCONNECTED[7:0]),
        .S({1'b0,ap_return__0_carry_i_59_n_0,ap_return__0_carry_i_60_n_0,ap_return__0_carry_i_61_n_0,ap_return__0_carry_i_62_n_0,ap_return__0_carry_i_63_n_0,ap_return__0_carry_i_64_n_0,ap_return__0_carry_i_65_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    ap_return__0_carry_i_26
       (.I0(ap_return__0_carry_i_18_0[15]),
        .I1(ap_return__0_carry_i_18_0[14]),
        .O(ap_return__0_carry_i_26_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ap_return__0_carry_i_27
       (.I0(ap_return__0_carry_i_18_0[12]),
        .I1(ap_return__0_carry_i_18_0[13]),
        .O(ap_return__0_carry_i_27_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ap_return__0_carry_i_28
       (.I0(ap_return__0_carry_i_18_0[10]),
        .I1(ap_return__0_carry_i_18_0[11]),
        .O(ap_return__0_carry_i_28_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ap_return__0_carry_i_29
       (.I0(ap_return__0_carry_i_18_0[8]),
        .I1(ap_return__0_carry_i_18_0[9]),
        .O(ap_return__0_carry_i_29_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ap_return__0_carry_i_30
       (.I0(ap_return__0_carry_i_18_0[6]),
        .I1(ap_return__0_carry_i_18_0[7]),
        .O(ap_return__0_carry_i_30_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ap_return__0_carry_i_31
       (.I0(ap_return__0_carry_i_18_0[4]),
        .I1(ap_return__0_carry_i_18_0[5]),
        .O(ap_return__0_carry_i_31_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ap_return__0_carry_i_32
       (.I0(ap_return__0_carry_i_18_0[2]),
        .I1(ap_return__0_carry_i_18_0[3]),
        .O(ap_return__0_carry_i_32_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ap_return__0_carry_i_33
       (.I0(ap_return__0_carry_i_18_0[1]),
        .O(ap_return__0_carry_i_33_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_return__0_carry_i_34
       (.I0(ap_return__0_carry_i_18_0[15]),
        .I1(ap_return__0_carry_i_18_0[14]),
        .O(ap_return__0_carry_i_34_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_return__0_carry_i_35
       (.I0(ap_return__0_carry_i_18_0[13]),
        .I1(ap_return__0_carry_i_18_0[12]),
        .O(ap_return__0_carry_i_35_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_return__0_carry_i_36
       (.I0(ap_return__0_carry_i_18_0[11]),
        .I1(ap_return__0_carry_i_18_0[10]),
        .O(ap_return__0_carry_i_36_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_return__0_carry_i_37
       (.I0(ap_return__0_carry_i_18_0[9]),
        .I1(ap_return__0_carry_i_18_0[8]),
        .O(ap_return__0_carry_i_37_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_return__0_carry_i_38
       (.I0(ap_return__0_carry_i_18_0[7]),
        .I1(ap_return__0_carry_i_18_0[6]),
        .O(ap_return__0_carry_i_38_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_return__0_carry_i_39
       (.I0(ap_return__0_carry_i_18_0[5]),
        .I1(ap_return__0_carry_i_18_0[4]),
        .O(ap_return__0_carry_i_39_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_return__0_carry_i_40
       (.I0(ap_return__0_carry_i_18_0[3]),
        .I1(ap_return__0_carry_i_18_0[2]),
        .O(ap_return__0_carry_i_40_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ap_return__0_carry_i_41
       (.I0(ap_return__0_carry_i_18_0[1]),
        .I1(ap_return__0_carry_i_18_0[0]),
        .O(ap_return__0_carry_i_41_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ap_return__0_carry_i_42
       (.I0(comparison_fu_48_p2_carry_0[15]),
        .I1(comparison_fu_48_p2_carry_0[14]),
        .O(ap_return__0_carry_i_42_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ap_return__0_carry_i_43
       (.I0(comparison_fu_48_p2_carry_0[12]),
        .I1(comparison_fu_48_p2_carry_0[13]),
        .O(ap_return__0_carry_i_43_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ap_return__0_carry_i_44
       (.I0(comparison_fu_48_p2_carry_0[10]),
        .I1(comparison_fu_48_p2_carry_0[11]),
        .O(ap_return__0_carry_i_44_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ap_return__0_carry_i_45
       (.I0(comparison_fu_48_p2_carry_0[8]),
        .I1(comparison_fu_48_p2_carry_0[9]),
        .O(ap_return__0_carry_i_45_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ap_return__0_carry_i_46
       (.I0(comparison_fu_48_p2_carry_0[6]),
        .I1(comparison_fu_48_p2_carry_0[7]),
        .O(ap_return__0_carry_i_46_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ap_return__0_carry_i_47
       (.I0(comparison_fu_48_p2_carry_0[4]),
        .I1(comparison_fu_48_p2_carry_0[5]),
        .O(ap_return__0_carry_i_47_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ap_return__0_carry_i_48
       (.I0(comparison_fu_48_p2_carry_0[2]),
        .I1(comparison_fu_48_p2_carry_0[3]),
        .O(ap_return__0_carry_i_48_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ap_return__0_carry_i_49
       (.I0(comparison_fu_48_p2_carry_0[1]),
        .O(ap_return__0_carry_i_49_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_return__0_carry_i_50
       (.I0(comparison_fu_48_p2_carry_0[15]),
        .I1(comparison_fu_48_p2_carry_0[14]),
        .O(ap_return__0_carry_i_50_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_return__0_carry_i_51
       (.I0(comparison_fu_48_p2_carry_0[13]),
        .I1(comparison_fu_48_p2_carry_0[12]),
        .O(ap_return__0_carry_i_51_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_return__0_carry_i_52
       (.I0(comparison_fu_48_p2_carry_0[11]),
        .I1(comparison_fu_48_p2_carry_0[10]),
        .O(ap_return__0_carry_i_52_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_return__0_carry_i_53
       (.I0(comparison_fu_48_p2_carry_0[9]),
        .I1(comparison_fu_48_p2_carry_0[8]),
        .O(ap_return__0_carry_i_53_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_return__0_carry_i_54
       (.I0(comparison_fu_48_p2_carry_0[7]),
        .I1(comparison_fu_48_p2_carry_0[6]),
        .O(ap_return__0_carry_i_54_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_return__0_carry_i_55
       (.I0(comparison_fu_48_p2_carry_0[5]),
        .I1(comparison_fu_48_p2_carry_0[4]),
        .O(ap_return__0_carry_i_55_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ap_return__0_carry_i_56
       (.I0(comparison_fu_48_p2_carry_0[3]),
        .I1(comparison_fu_48_p2_carry_0[2]),
        .O(ap_return__0_carry_i_56_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ap_return__0_carry_i_57
       (.I0(comparison_fu_48_p2_carry_0[1]),
        .I1(comparison_fu_48_p2_carry_0[0]),
        .O(ap_return__0_carry_i_57_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__0_carry_i_58
       (.I0(comparison_fu_48_p2_carry_0[0]),
        .I1(comparison_fu_48_p2_carry_0[1]),
        .O(ap_return__0_carry_i_58_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__0_carry_i_59
       (.I0(comparison_fu_48_p2_carry_0[15]),
        .I1(comparison_fu_48_p2_carry_0[14]),
        .O(ap_return__0_carry_i_59_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__0_carry_i_60
       (.I0(comparison_fu_48_p2_carry_0[13]),
        .I1(comparison_fu_48_p2_carry_0[12]),
        .O(ap_return__0_carry_i_60_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__0_carry_i_61
       (.I0(comparison_fu_48_p2_carry_0[11]),
        .I1(comparison_fu_48_p2_carry_0[10]),
        .O(ap_return__0_carry_i_61_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__0_carry_i_62
       (.I0(comparison_fu_48_p2_carry_0[9]),
        .I1(comparison_fu_48_p2_carry_0[8]),
        .O(ap_return__0_carry_i_62_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__0_carry_i_63
       (.I0(comparison_fu_48_p2_carry_0[7]),
        .I1(comparison_fu_48_p2_carry_0[6]),
        .O(ap_return__0_carry_i_63_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__0_carry_i_64
       (.I0(comparison_fu_48_p2_carry_0[5]),
        .I1(comparison_fu_48_p2_carry_0[4]),
        .O(ap_return__0_carry_i_64_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__0_carry_i_65
       (.I0(comparison_fu_48_p2_carry_0[3]),
        .I1(comparison_fu_48_p2_carry_0[2]),
        .O(ap_return__0_carry_i_65_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 ap_return__163_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({ap_return__163_carry_n_0,ap_return__163_carry_n_1,ap_return__163_carry_n_2,ap_return__163_carry_n_3,ap_return__163_carry_n_4,ap_return__163_carry_n_5,ap_return__163_carry_n_6,ap_return__163_carry_n_7}),
        .DI({s_V_decision_function_7_fu_108_n_3,s_V_3_decision_function_4_fu_134_n_3,s_V_decision_function_7_fu_108_n_4,s_V_decision_function_7_fu_108_n_5,s_V_decision_function_7_fu_108_n_6,s_V_decision_function_7_fu_108_n_7,ap_return__163_carry_i_7_n_0,ap_return__163_carry_i_8_n_0}),
        .O(out_local_V_myproject_fu_121_ap_return[7:0]),
        .S({s_V_decision_function_7_fu_108_n_37,s_V_3_decision_function_4_fu_134_n_23,s_V_decision_function_7_fu_108_n_38,s_V_decision_function_7_fu_108_n_39,s_V_decision_function_7_fu_108_n_40,s_V_decision_function_7_fu_108_n_41,s_V_3_decision_function_4_fu_134_n_24,s_V_decision_function_7_fu_108_n_42}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 ap_return__163_carry__0
       (.CI(ap_return__163_carry_n_0),
        .CI_TOP(1'b0),
        .CO({ap_return__163_carry__0_n_0,ap_return__163_carry__0_n_1,ap_return__163_carry__0_n_2,ap_return__163_carry__0_n_3,ap_return__163_carry__0_n_4,ap_return__163_carry__0_n_5,ap_return__163_carry__0_n_6,ap_return__163_carry__0_n_7}),
        .DI({s_V_decision_function_7_fu_108_n_9,s_V_decision_function_7_fu_108_n_10,s_V_decision_function_7_fu_108_n_11,s_V_3_decision_function_4_fu_134_n_8,s_V_3_decision_function_4_fu_134_n_9,s_V_3_decision_function_4_fu_134_n_10,s_V_3_decision_function_4_fu_134_n_11,s_V_decision_function_7_fu_108_n_12}),
        .O(out_local_V_myproject_fu_121_ap_return[15:8]),
        .S({s_V_decision_function_7_fu_108_n_43,s_V_decision_function_7_fu_108_n_44,s_V_decision_function_7_fu_108_n_45,s_V_3_decision_function_4_fu_134_n_25,s_V_3_decision_function_4_fu_134_n_26,s_V_3_decision_function_4_fu_134_n_27,s_V_3_decision_function_4_fu_134_n_28,s_V_decision_function_7_fu_108_n_46}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 ap_return__163_carry__1
       (.CI(ap_return__163_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({ap_return__163_carry__1_n_0,ap_return__163_carry__1_n_1,ap_return__163_carry__1_n_2,ap_return__163_carry__1_n_3,ap_return__163_carry__1_n_4,ap_return__163_carry__1_n_5,ap_return__163_carry__1_n_6,ap_return__163_carry__1_n_7}),
        .DI({s_V_decision_function_7_fu_108_n_15,s_V_decision_function_7_fu_108_n_16,s_V_decision_function_7_fu_108_n_17,s_V_decision_function_7_fu_108_n_18,s_V_decision_function_7_fu_108_n_19,s_V_3_decision_function_4_fu_134_n_15,s_V_decision_function_7_fu_108_n_20,s_V_decision_function_7_fu_108_n_21}),
        .O(out_local_V_myproject_fu_121_ap_return[23:16]),
        .S({s_V_decision_function_7_fu_108_n_47,s_V_decision_function_7_fu_108_n_48,s_V_decision_function_7_fu_108_n_49,s_V_decision_function_7_fu_108_n_50,s_V_decision_function_7_fu_108_n_51,s_V_3_decision_function_4_fu_134_n_30,s_V_decision_function_7_fu_108_n_52,s_V_decision_function_7_fu_108_n_53}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 ap_return__163_carry__2
       (.CI(ap_return__163_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_ap_return__163_carry__2_CO_UNCONNECTED[7],ap_return__163_carry__2_n_1,ap_return__163_carry__2_n_2,ap_return__163_carry__2_n_3,ap_return__163_carry__2_n_4,ap_return__163_carry__2_n_5,ap_return__163_carry__2_n_6,ap_return__163_carry__2_n_7}),
        .DI({1'b0,s_V_decision_function_7_fu_108_n_27,s_V_decision_function_7_fu_108_n_28,s_V_decision_function_7_fu_108_n_29,s_V_decision_function_7_fu_108_n_30,s_V_decision_function_7_fu_108_n_31,s_V_decision_function_7_fu_108_n_32,s_V_decision_function_7_fu_108_n_33}),
        .O(out_local_V_myproject_fu_121_ap_return[31:24]),
        .S({s_V_decision_function_7_fu_108_n_54,s_V_decision_function_7_fu_108_n_55,s_V_decision_function_7_fu_108_n_56,s_V_decision_function_7_fu_108_n_57,s_V_decision_function_7_fu_108_n_58,s_V_decision_function_7_fu_108_n_59,s_V_decision_function_7_fu_108_n_60,s_V_decision_function_7_fu_108_n_61}));
  LUT2 #(
    .INIT(4'hE)) 
    ap_return__163_carry_i_7
       (.I0(ap_return__81_carry_n_15),
        .I1(ap_return__0_carry_n_15),
        .O(ap_return__163_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ap_return__163_carry_i_8
       (.I0(ap_return__0_carry_n_15),
        .I1(ap_return__81_carry_n_15),
        .O(ap_return__163_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 ap_return__81_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({ap_return__81_carry_n_0,ap_return__81_carry_n_1,ap_return__81_carry_n_2,ap_return__81_carry_n_3,ap_return__81_carry_n_4,ap_return__81_carry_n_5,ap_return__81_carry_n_6,ap_return__81_carry_n_7}),
        .DI({s_V_5_decision_function_2_fu_150_n_8,s_V_1_decision_function_6_fu_116_n_2,s_V_1_decision_function_6_fu_116_n_3,s_V_5_decision_function_2_fu_150_n_9,s_V_1_decision_function_6_fu_116_n_4,s_V_1_decision_function_6_fu_116_n_5,s_V_1_decision_function_6_fu_116_n_6,1'b0}),
        .O({ap_return__81_carry_n_8,ap_return__81_carry_n_9,ap_return__81_carry_n_10,ap_return__81_carry_n_11,ap_return__81_carry_n_12,ap_return__81_carry_n_13,ap_return__81_carry_n_14,ap_return__81_carry_n_15}),
        .S({s_V_5_decision_function_2_fu_150_n_20,s_V_5_decision_function_2_fu_150_n_21,s_V_1_decision_function_6_fu_116_n_12,s_V_1_decision_function_6_fu_116_n_13,s_V_1_decision_function_6_fu_116_n_14,s_V_1_decision_function_6_fu_116_n_15,s_V_1_decision_function_6_fu_116_n_16,s_V_1_decision_function_6_fu_116_n_17}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 ap_return__81_carry__0
       (.CI(ap_return__81_carry_n_0),
        .CI_TOP(1'b0),
        .CO({ap_return__81_carry__0_n_0,ap_return__81_carry__0_n_1,ap_return__81_carry__0_n_2,ap_return__81_carry__0_n_3,ap_return__81_carry__0_n_4,ap_return__81_carry__0_n_5,ap_return__81_carry__0_n_6,ap_return__81_carry__0_n_7}),
        .DI({s_V_5_decision_function_2_fu_150_n_2,s_V_5_decision_function_2_fu_150_n_3,s_V_5_decision_function_2_fu_150_n_4,s_V_5_decision_function_2_fu_150_n_5,s_V_6_decision_function_1_fu_158_n_2,s_V_5_decision_function_2_fu_150_n_6,s_V_1_decision_function_6_fu_116_n_9,s_V_1_decision_function_6_fu_116_n_10}),
        .O({ap_return__81_carry__0_n_8,ap_return__81_carry__0_n_9,ap_return__81_carry__0_n_10,ap_return__81_carry__0_n_11,ap_return__81_carry__0_n_12,ap_return__81_carry__0_n_13,ap_return__81_carry__0_n_14,ap_return__81_carry__0_n_15}),
        .S({s_V_5_decision_function_2_fu_150_n_22,s_V_5_decision_function_2_fu_150_n_23,s_V_5_decision_function_2_fu_150_n_24,s_V_5_decision_function_2_fu_150_n_25,s_V_6_decision_function_1_fu_158_n_5,s_V_1_decision_function_6_fu_116_n_18,s_V_1_decision_function_6_fu_116_n_19,s_V_1_decision_function_6_fu_116_n_20}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 ap_return__81_carry__1
       (.CI(ap_return__81_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({ap_return__81_carry__1_n_0,ap_return__81_carry__1_n_1,ap_return__81_carry__1_n_2,ap_return__81_carry__1_n_3,ap_return__81_carry__1_n_4,ap_return__81_carry__1_n_5,ap_return__81_carry__1_n_6,ap_return__81_carry__1_n_7}),
        .DI({s_V_5_decision_function_2_fu_150_n_10,s_V_5_decision_function_2_fu_150_n_10,s_V_5_decision_function_2_fu_150_n_10,s_V_5_decision_function_2_fu_150_n_10,s_V_5_decision_function_2_fu_150_n_10,s_V_5_decision_function_2_fu_150_n_10,s_V_5_decision_function_2_fu_150_n_10,s_V_5_decision_function_2_fu_150_n_12}),
        .O({ap_return__81_carry__1_n_8,ap_return__81_carry__1_n_9,ap_return__81_carry__1_n_10,ap_return__81_carry__1_n_11,ap_return__81_carry__1_n_12,ap_return__81_carry__1_n_13,ap_return__81_carry__1_n_14,ap_return__81_carry__1_n_15}),
        .S({s_V_5_decision_function_2_fu_150_n_26,s_V_5_decision_function_2_fu_150_n_27,s_V_5_decision_function_2_fu_150_n_28,s_V_5_decision_function_2_fu_150_n_29,s_V_5_decision_function_2_fu_150_n_30,s_V_5_decision_function_2_fu_150_n_31,s_V_5_decision_function_2_fu_150_n_32,s_V_5_decision_function_2_fu_150_n_33}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 ap_return__81_carry__2
       (.CI(ap_return__81_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_ap_return__81_carry__2_CO_UNCONNECTED[7],ap_return__81_carry__2_n_1,ap_return__81_carry__2_n_2,ap_return__81_carry__2_n_3,ap_return__81_carry__2_n_4,ap_return__81_carry__2_n_5,ap_return__81_carry__2_n_6,ap_return__81_carry__2_n_7}),
        .DI({1'b0,s_V_5_decision_function_2_fu_150_n_10,s_V_5_decision_function_2_fu_150_n_10,s_V_5_decision_function_2_fu_150_n_10,s_V_5_decision_function_2_fu_150_n_10,s_V_5_decision_function_2_fu_150_n_10,s_V_5_decision_function_2_fu_150_n_10,s_V_5_decision_function_2_fu_150_n_10}),
        .O({ap_return__81_carry__2_n_8,ap_return__81_carry__2_n_9,ap_return__81_carry__2_n_10,ap_return__81_carry__2_n_11,ap_return__81_carry__2_n_12,ap_return__81_carry__2_n_13,ap_return__81_carry__2_n_14,ap_return__81_carry__2_n_15}),
        .S({s_V_5_decision_function_2_fu_150_n_34,s_V_5_decision_function_2_fu_150_n_35,s_V_5_decision_function_2_fu_150_n_36,s_V_5_decision_function_2_fu_150_n_37,s_V_5_decision_function_2_fu_150_n_38,s_V_5_decision_function_2_fu_150_n_39,s_V_5_decision_function_2_fu_150_n_40,s_V_5_decision_function_2_fu_150_n_41}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 ap_return__81_carry_i_18
       (.CI(ap_return__81_carry_i_23_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_ap_return__81_carry_i_18_CO_UNCONNECTED[7],\tmp_data_V_6_reg_275_reg[15] ,ap_return__81_carry_i_18_n_2,ap_return__81_carry_i_18_n_3,ap_return__81_carry_i_18_n_4,ap_return__81_carry_i_18_n_5,ap_return__81_carry_i_18_n_6,ap_return__81_carry_i_18_n_7}),
        .DI({1'b0,comparison_2_fu_60_p2_carry[15],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ap_return__81_carry_i_18_O_UNCONNECTED[7:0]),
        .S({1'b0,ap_return__81_carry_i_24_n_0,ap_return__81_carry_i_25_n_0,ap_return__81_carry_i_26_n_0,ap_return__81_carry_i_27_n_0,ap_return__81_carry_i_28_n_0,ap_return__81_carry_i_29_n_0,ap_return__81_carry_i_30_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__81_carry_i_23
       (.I0(comparison_2_fu_60_p2_carry[0]),
        .I1(comparison_2_fu_60_p2_carry[1]),
        .O(ap_return__81_carry_i_23_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__81_carry_i_24
       (.I0(comparison_2_fu_60_p2_carry[15]),
        .I1(comparison_2_fu_60_p2_carry[14]),
        .O(ap_return__81_carry_i_24_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__81_carry_i_25
       (.I0(comparison_2_fu_60_p2_carry[13]),
        .I1(comparison_2_fu_60_p2_carry[12]),
        .O(ap_return__81_carry_i_25_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__81_carry_i_26
       (.I0(comparison_2_fu_60_p2_carry[11]),
        .I1(comparison_2_fu_60_p2_carry[10]),
        .O(ap_return__81_carry_i_26_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__81_carry_i_27
       (.I0(comparison_2_fu_60_p2_carry[9]),
        .I1(comparison_2_fu_60_p2_carry[8]),
        .O(ap_return__81_carry_i_27_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__81_carry_i_28
       (.I0(comparison_2_fu_60_p2_carry[7]),
        .I1(comparison_2_fu_60_p2_carry[6]),
        .O(ap_return__81_carry_i_28_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__81_carry_i_29
       (.I0(comparison_2_fu_60_p2_carry[5]),
        .I1(comparison_2_fu_60_p2_carry[4]),
        .O(ap_return__81_carry_i_29_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ap_return__81_carry_i_30
       (.I0(comparison_2_fu_60_p2_carry[3]),
        .I1(comparison_2_fu_60_p2_carry[2]),
        .O(ap_return__81_carry_i_30_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_10_fu_54_p2_carry_i_1
       (.I0(comparison_10_fu_54_p2_carry[1]),
        .I1(comparison_10_fu_54_p2_carry[0]),
        .O(comparison_10_fu_54_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_10_fu_54_p2_carry_i_2
       (.I0(comparison_10_fu_54_p2_carry[15]),
        .I1(comparison_10_fu_54_p2_carry[14]),
        .O(comparison_10_fu_54_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_10_fu_54_p2_carry_i_3
       (.I0(comparison_10_fu_54_p2_carry[13]),
        .I1(comparison_10_fu_54_p2_carry[12]),
        .O(comparison_10_fu_54_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_10_fu_54_p2_carry_i_4
       (.I0(comparison_10_fu_54_p2_carry[11]),
        .I1(comparison_10_fu_54_p2_carry[10]),
        .O(comparison_10_fu_54_p2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_10_fu_54_p2_carry_i_5
       (.I0(comparison_10_fu_54_p2_carry[9]),
        .I1(comparison_10_fu_54_p2_carry[8]),
        .O(comparison_10_fu_54_p2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_10_fu_54_p2_carry_i_6
       (.I0(comparison_10_fu_54_p2_carry[7]),
        .I1(comparison_10_fu_54_p2_carry[6]),
        .O(comparison_10_fu_54_p2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_10_fu_54_p2_carry_i_7
       (.I0(comparison_10_fu_54_p2_carry[5]),
        .I1(comparison_10_fu_54_p2_carry[4]),
        .O(comparison_10_fu_54_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_10_fu_54_p2_carry_i_8
       (.I0(comparison_10_fu_54_p2_carry[3]),
        .I1(comparison_10_fu_54_p2_carry[2]),
        .O(comparison_10_fu_54_p2_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_10_fu_54_p2_carry_i_9
       (.I0(comparison_10_fu_54_p2_carry[0]),
        .I1(comparison_10_fu_54_p2_carry[1]),
        .O(comparison_10_fu_54_p2_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_12_fu_54_p2_carry_i_1
       (.I0(comparison_12_fu_54_p2_carry[1]),
        .I1(comparison_12_fu_54_p2_carry[0]),
        .O(comparison_12_fu_54_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_12_fu_54_p2_carry_i_2
       (.I0(comparison_12_fu_54_p2_carry[15]),
        .I1(comparison_12_fu_54_p2_carry[14]),
        .O(comparison_12_fu_54_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_12_fu_54_p2_carry_i_3
       (.I0(comparison_12_fu_54_p2_carry[13]),
        .I1(comparison_12_fu_54_p2_carry[12]),
        .O(comparison_12_fu_54_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_12_fu_54_p2_carry_i_4
       (.I0(comparison_12_fu_54_p2_carry[11]),
        .I1(comparison_12_fu_54_p2_carry[10]),
        .O(comparison_12_fu_54_p2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_12_fu_54_p2_carry_i_5
       (.I0(comparison_12_fu_54_p2_carry[9]),
        .I1(comparison_12_fu_54_p2_carry[8]),
        .O(comparison_12_fu_54_p2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_12_fu_54_p2_carry_i_6
       (.I0(comparison_12_fu_54_p2_carry[7]),
        .I1(comparison_12_fu_54_p2_carry[6]),
        .O(comparison_12_fu_54_p2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_12_fu_54_p2_carry_i_7
       (.I0(comparison_12_fu_54_p2_carry[5]),
        .I1(comparison_12_fu_54_p2_carry[4]),
        .O(comparison_12_fu_54_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_12_fu_54_p2_carry_i_8
       (.I0(comparison_12_fu_54_p2_carry[3]),
        .I1(comparison_12_fu_54_p2_carry[2]),
        .O(comparison_12_fu_54_p2_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_12_fu_54_p2_carry_i_9
       (.I0(comparison_12_fu_54_p2_carry[0]),
        .I1(comparison_12_fu_54_p2_carry[1]),
        .O(comparison_12_fu_54_p2_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_13_fu_60_p2_carry_i_1
       (.I0(comparison_fu_56_p2_carry[15]),
        .I1(comparison_fu_56_p2_carry[14]),
        .O(comparison_13_fu_60_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_13_fu_60_p2_carry_i_10
       (.I0(comparison_fu_56_p2_carry[13]),
        .I1(comparison_fu_56_p2_carry[12]),
        .O(comparison_13_fu_60_p2_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_13_fu_60_p2_carry_i_11
       (.I0(comparison_fu_56_p2_carry[11]),
        .I1(comparison_fu_56_p2_carry[10]),
        .O(comparison_13_fu_60_p2_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_13_fu_60_p2_carry_i_12
       (.I0(comparison_fu_56_p2_carry[9]),
        .I1(comparison_fu_56_p2_carry[8]),
        .O(comparison_13_fu_60_p2_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_13_fu_60_p2_carry_i_13
       (.I0(comparison_fu_56_p2_carry[7]),
        .I1(comparison_fu_56_p2_carry[6]),
        .O(comparison_13_fu_60_p2_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_13_fu_60_p2_carry_i_14
       (.I0(comparison_fu_56_p2_carry[5]),
        .I1(comparison_fu_56_p2_carry[4]),
        .O(comparison_13_fu_60_p2_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_13_fu_60_p2_carry_i_15
       (.I0(comparison_fu_56_p2_carry[3]),
        .I1(comparison_fu_56_p2_carry[2]),
        .O(comparison_13_fu_60_p2_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_13_fu_60_p2_carry_i_16
       (.I0(comparison_fu_56_p2_carry[1]),
        .I1(comparison_fu_56_p2_carry[0]),
        .O(comparison_13_fu_60_p2_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_13_fu_60_p2_carry_i_2
       (.I0(comparison_fu_56_p2_carry[12]),
        .I1(comparison_fu_56_p2_carry[13]),
        .O(comparison_13_fu_60_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_13_fu_60_p2_carry_i_3
       (.I0(comparison_fu_56_p2_carry[10]),
        .I1(comparison_fu_56_p2_carry[11]),
        .O(comparison_13_fu_60_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_13_fu_60_p2_carry_i_4
       (.I0(comparison_fu_56_p2_carry[8]),
        .I1(comparison_fu_56_p2_carry[9]),
        .O(comparison_13_fu_60_p2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_13_fu_60_p2_carry_i_5
       (.I0(comparison_fu_56_p2_carry[6]),
        .I1(comparison_fu_56_p2_carry[7]),
        .O(comparison_13_fu_60_p2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_13_fu_60_p2_carry_i_6
       (.I0(comparison_fu_56_p2_carry[4]),
        .I1(comparison_fu_56_p2_carry[5]),
        .O(comparison_13_fu_60_p2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_13_fu_60_p2_carry_i_7
       (.I0(comparison_fu_56_p2_carry[2]),
        .I1(comparison_fu_56_p2_carry[3]),
        .O(comparison_13_fu_60_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_13_fu_60_p2_carry_i_8
       (.I0(comparison_fu_56_p2_carry[0]),
        .I1(comparison_fu_56_p2_carry[1]),
        .O(comparison_13_fu_60_p2_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_13_fu_60_p2_carry_i_9
       (.I0(comparison_fu_56_p2_carry[15]),
        .I1(comparison_fu_56_p2_carry[14]),
        .O(comparison_13_fu_60_p2_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_17_fu_60_p2_carry_i_1
       (.I0(ap_return__0_carry_i_18_0[15]),
        .I1(ap_return__0_carry_i_18_0[14]),
        .O(comparison_17_fu_60_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_17_fu_60_p2_carry_i_10
       (.I0(ap_return__0_carry_i_18_0[13]),
        .I1(ap_return__0_carry_i_18_0[12]),
        .O(comparison_17_fu_60_p2_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_17_fu_60_p2_carry_i_11
       (.I0(ap_return__0_carry_i_18_0[11]),
        .I1(ap_return__0_carry_i_18_0[10]),
        .O(comparison_17_fu_60_p2_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_17_fu_60_p2_carry_i_12
       (.I0(ap_return__0_carry_i_18_0[9]),
        .I1(ap_return__0_carry_i_18_0[8]),
        .O(comparison_17_fu_60_p2_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_17_fu_60_p2_carry_i_13
       (.I0(ap_return__0_carry_i_18_0[7]),
        .I1(ap_return__0_carry_i_18_0[6]),
        .O(comparison_17_fu_60_p2_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_17_fu_60_p2_carry_i_14
       (.I0(ap_return__0_carry_i_18_0[5]),
        .I1(ap_return__0_carry_i_18_0[4]),
        .O(comparison_17_fu_60_p2_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_17_fu_60_p2_carry_i_15
       (.I0(ap_return__0_carry_i_18_0[3]),
        .I1(ap_return__0_carry_i_18_0[2]),
        .O(comparison_17_fu_60_p2_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_17_fu_60_p2_carry_i_16
       (.I0(ap_return__0_carry_i_18_0[1]),
        .I1(ap_return__0_carry_i_18_0[0]),
        .O(comparison_17_fu_60_p2_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_17_fu_60_p2_carry_i_2
       (.I0(ap_return__0_carry_i_18_0[12]),
        .I1(ap_return__0_carry_i_18_0[13]),
        .O(comparison_17_fu_60_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_17_fu_60_p2_carry_i_3
       (.I0(ap_return__0_carry_i_18_0[10]),
        .I1(ap_return__0_carry_i_18_0[11]),
        .O(comparison_17_fu_60_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_17_fu_60_p2_carry_i_4
       (.I0(ap_return__0_carry_i_18_0[8]),
        .I1(ap_return__0_carry_i_18_0[9]),
        .O(comparison_17_fu_60_p2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_17_fu_60_p2_carry_i_5
       (.I0(ap_return__0_carry_i_18_0[6]),
        .I1(ap_return__0_carry_i_18_0[7]),
        .O(comparison_17_fu_60_p2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_17_fu_60_p2_carry_i_6
       (.I0(ap_return__0_carry_i_18_0[4]),
        .I1(ap_return__0_carry_i_18_0[5]),
        .O(comparison_17_fu_60_p2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_17_fu_60_p2_carry_i_7
       (.I0(ap_return__0_carry_i_18_0[2]),
        .I1(ap_return__0_carry_i_18_0[3]),
        .O(comparison_17_fu_60_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_17_fu_60_p2_carry_i_8
       (.I0(ap_return__0_carry_i_18_0[0]),
        .I1(ap_return__0_carry_i_18_0[1]),
        .O(comparison_17_fu_60_p2_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_17_fu_60_p2_carry_i_9
       (.I0(ap_return__0_carry_i_18_0[15]),
        .I1(ap_return__0_carry_i_18_0[14]),
        .O(comparison_17_fu_60_p2_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_2_fu_60_p2_carry_i_1
       (.I0(comparison_2_fu_60_p2_carry[0]),
        .I1(comparison_2_fu_60_p2_carry[1]),
        .O(comparison_2_fu_60_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_2_fu_60_p2_carry_i_2
       (.I0(comparison_2_fu_60_p2_carry[15]),
        .I1(comparison_2_fu_60_p2_carry[14]),
        .O(comparison_2_fu_60_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_2_fu_60_p2_carry_i_3
       (.I0(comparison_2_fu_60_p2_carry[13]),
        .I1(comparison_2_fu_60_p2_carry[12]),
        .O(comparison_2_fu_60_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_2_fu_60_p2_carry_i_4
       (.I0(comparison_2_fu_60_p2_carry[11]),
        .I1(comparison_2_fu_60_p2_carry[10]),
        .O(comparison_2_fu_60_p2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_2_fu_60_p2_carry_i_5
       (.I0(comparison_2_fu_60_p2_carry[9]),
        .I1(comparison_2_fu_60_p2_carry[8]),
        .O(comparison_2_fu_60_p2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_2_fu_60_p2_carry_i_6
       (.I0(comparison_2_fu_60_p2_carry[7]),
        .I1(comparison_2_fu_60_p2_carry[6]),
        .O(comparison_2_fu_60_p2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_2_fu_60_p2_carry_i_7
       (.I0(comparison_2_fu_60_p2_carry[5]),
        .I1(comparison_2_fu_60_p2_carry[4]),
        .O(comparison_2_fu_60_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_2_fu_60_p2_carry_i_8
       (.I0(comparison_2_fu_60_p2_carry[3]),
        .I1(comparison_2_fu_60_p2_carry[2]),
        .O(comparison_2_fu_60_p2_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_2_fu_60_p2_carry_i_9
       (.I0(comparison_2_fu_60_p2_carry[0]),
        .I1(comparison_2_fu_60_p2_carry[1]),
        .O(comparison_2_fu_60_p2_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_3_fu_54_p2_carry_i_1
       (.I0(Q[15]),
        .I1(Q[14]),
        .O(comparison_3_fu_54_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_3_fu_54_p2_carry_i_10
       (.I0(Q[13]),
        .I1(Q[12]),
        .O(comparison_3_fu_54_p2_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_3_fu_54_p2_carry_i_11
       (.I0(Q[11]),
        .I1(Q[10]),
        .O(comparison_3_fu_54_p2_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_3_fu_54_p2_carry_i_12
       (.I0(Q[9]),
        .I1(Q[8]),
        .O(comparison_3_fu_54_p2_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_3_fu_54_p2_carry_i_13
       (.I0(Q[7]),
        .I1(Q[6]),
        .O(comparison_3_fu_54_p2_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_3_fu_54_p2_carry_i_14
       (.I0(Q[5]),
        .I1(Q[4]),
        .O(comparison_3_fu_54_p2_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_3_fu_54_p2_carry_i_15
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(comparison_3_fu_54_p2_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_3_fu_54_p2_carry_i_16
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(comparison_3_fu_54_p2_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_3_fu_54_p2_carry_i_2
       (.I0(Q[12]),
        .I1(Q[13]),
        .O(comparison_3_fu_54_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_3_fu_54_p2_carry_i_3
       (.I0(Q[10]),
        .I1(Q[11]),
        .O(comparison_3_fu_54_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_3_fu_54_p2_carry_i_4
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(comparison_3_fu_54_p2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_3_fu_54_p2_carry_i_5
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(comparison_3_fu_54_p2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_3_fu_54_p2_carry_i_6
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(comparison_3_fu_54_p2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_3_fu_54_p2_carry_i_7
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(comparison_3_fu_54_p2_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    comparison_3_fu_54_p2_carry_i_8
       (.I0(Q[1]),
        .O(comparison_3_fu_54_p2_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_3_fu_54_p2_carry_i_9
       (.I0(Q[15]),
        .I1(Q[14]),
        .O(comparison_3_fu_54_p2_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_4_fu_62_p2_carry_i_1
       (.I0(comparison_fu_48_p2_carry[0]),
        .I1(comparison_fu_48_p2_carry[1]),
        .O(comparison_4_fu_62_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_4_fu_62_p2_carry_i_2
       (.I0(comparison_fu_48_p2_carry[15]),
        .I1(comparison_fu_48_p2_carry[14]),
        .O(comparison_4_fu_62_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_4_fu_62_p2_carry_i_3
       (.I0(comparison_fu_48_p2_carry[13]),
        .I1(comparison_fu_48_p2_carry[12]),
        .O(comparison_4_fu_62_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_4_fu_62_p2_carry_i_4
       (.I0(comparison_fu_48_p2_carry[11]),
        .I1(comparison_fu_48_p2_carry[10]),
        .O(comparison_4_fu_62_p2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_4_fu_62_p2_carry_i_5
       (.I0(comparison_fu_48_p2_carry[9]),
        .I1(comparison_fu_48_p2_carry[8]),
        .O(comparison_4_fu_62_p2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_4_fu_62_p2_carry_i_6
       (.I0(comparison_fu_48_p2_carry[7]),
        .I1(comparison_fu_48_p2_carry[6]),
        .O(comparison_4_fu_62_p2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_4_fu_62_p2_carry_i_7
       (.I0(comparison_fu_48_p2_carry[5]),
        .I1(comparison_fu_48_p2_carry[4]),
        .O(comparison_4_fu_62_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_4_fu_62_p2_carry_i_8
       (.I0(comparison_fu_48_p2_carry[3]),
        .I1(comparison_fu_48_p2_carry[2]),
        .O(comparison_4_fu_62_p2_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_4_fu_62_p2_carry_i_9
       (.I0(comparison_fu_48_p2_carry[0]),
        .I1(comparison_fu_48_p2_carry[1]),
        .O(comparison_4_fu_62_p2_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_5_fu_68_p2_carry_i_1
       (.I0(comparison_fu_48_p2_carry_0[0]),
        .I1(comparison_fu_48_p2_carry_0[1]),
        .O(comparison_5_fu_68_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_5_fu_68_p2_carry_i_2
       (.I0(comparison_fu_48_p2_carry_0[15]),
        .I1(comparison_fu_48_p2_carry_0[14]),
        .O(comparison_5_fu_68_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_5_fu_68_p2_carry_i_3
       (.I0(comparison_fu_48_p2_carry_0[13]),
        .I1(comparison_fu_48_p2_carry_0[12]),
        .O(comparison_5_fu_68_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_5_fu_68_p2_carry_i_4
       (.I0(comparison_fu_48_p2_carry_0[11]),
        .I1(comparison_fu_48_p2_carry_0[10]),
        .O(comparison_5_fu_68_p2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_5_fu_68_p2_carry_i_5
       (.I0(comparison_fu_48_p2_carry_0[9]),
        .I1(comparison_fu_48_p2_carry_0[8]),
        .O(comparison_5_fu_68_p2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_5_fu_68_p2_carry_i_6
       (.I0(comparison_fu_48_p2_carry_0[7]),
        .I1(comparison_fu_48_p2_carry_0[6]),
        .O(comparison_5_fu_68_p2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_5_fu_68_p2_carry_i_7
       (.I0(comparison_fu_48_p2_carry_0[5]),
        .I1(comparison_fu_48_p2_carry_0[4]),
        .O(comparison_5_fu_68_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_5_fu_68_p2_carry_i_8
       (.I0(comparison_fu_48_p2_carry_0[3]),
        .I1(comparison_fu_48_p2_carry_0[2]),
        .O(comparison_5_fu_68_p2_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_5_fu_68_p2_carry_i_9
       (.I0(comparison_fu_48_p2_carry_0[0]),
        .I1(comparison_fu_48_p2_carry_0[1]),
        .O(comparison_5_fu_68_p2_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_7_fu_60_p2_carry_i_1
       (.I0(ap_return__0_carry_i_18_0[1]),
        .I1(ap_return__0_carry_i_18_0[0]),
        .O(comparison_7_fu_60_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_7_fu_60_p2_carry_i_2
       (.I0(ap_return__0_carry_i_18_0[15]),
        .I1(ap_return__0_carry_i_18_0[14]),
        .O(comparison_7_fu_60_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_7_fu_60_p2_carry_i_3
       (.I0(ap_return__0_carry_i_18_0[13]),
        .I1(ap_return__0_carry_i_18_0[12]),
        .O(comparison_7_fu_60_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_7_fu_60_p2_carry_i_4
       (.I0(ap_return__0_carry_i_18_0[11]),
        .I1(ap_return__0_carry_i_18_0[10]),
        .O(comparison_7_fu_60_p2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_7_fu_60_p2_carry_i_5
       (.I0(ap_return__0_carry_i_18_0[9]),
        .I1(ap_return__0_carry_i_18_0[8]),
        .O(comparison_7_fu_60_p2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_7_fu_60_p2_carry_i_6
       (.I0(ap_return__0_carry_i_18_0[7]),
        .I1(ap_return__0_carry_i_18_0[6]),
        .O(comparison_7_fu_60_p2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_7_fu_60_p2_carry_i_7
       (.I0(ap_return__0_carry_i_18_0[5]),
        .I1(ap_return__0_carry_i_18_0[4]),
        .O(comparison_7_fu_60_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_7_fu_60_p2_carry_i_8
       (.I0(ap_return__0_carry_i_18_0[3]),
        .I1(ap_return__0_carry_i_18_0[2]),
        .O(comparison_7_fu_60_p2_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_8_fu_54_p2_carry_i_1
       (.I0(comparison_9_fu_60_p2_carry[0]),
        .I1(comparison_9_fu_60_p2_carry[1]),
        .O(comparison_8_fu_54_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_8_fu_54_p2_carry_i_2
       (.I0(comparison_9_fu_60_p2_carry[15]),
        .I1(comparison_9_fu_60_p2_carry[14]),
        .O(comparison_8_fu_54_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_8_fu_54_p2_carry_i_3
       (.I0(comparison_9_fu_60_p2_carry[13]),
        .I1(comparison_9_fu_60_p2_carry[12]),
        .O(comparison_8_fu_54_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_8_fu_54_p2_carry_i_4
       (.I0(comparison_9_fu_60_p2_carry[11]),
        .I1(comparison_9_fu_60_p2_carry[10]),
        .O(comparison_8_fu_54_p2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_8_fu_54_p2_carry_i_5
       (.I0(comparison_9_fu_60_p2_carry[9]),
        .I1(comparison_9_fu_60_p2_carry[8]),
        .O(comparison_8_fu_54_p2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_8_fu_54_p2_carry_i_6
       (.I0(comparison_9_fu_60_p2_carry[7]),
        .I1(comparison_9_fu_60_p2_carry[6]),
        .O(comparison_8_fu_54_p2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_8_fu_54_p2_carry_i_7
       (.I0(comparison_9_fu_60_p2_carry[5]),
        .I1(comparison_9_fu_60_p2_carry[4]),
        .O(comparison_8_fu_54_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_8_fu_54_p2_carry_i_8
       (.I0(comparison_9_fu_60_p2_carry[3]),
        .I1(comparison_9_fu_60_p2_carry[2]),
        .O(comparison_8_fu_54_p2_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_8_fu_54_p2_carry_i_9
       (.I0(comparison_9_fu_60_p2_carry[0]),
        .I1(comparison_9_fu_60_p2_carry[1]),
        .O(comparison_8_fu_54_p2_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_9_fu_60_p2_carry_i_1
       (.I0(comparison_9_fu_60_p2_carry[15]),
        .I1(comparison_9_fu_60_p2_carry[14]),
        .O(comparison_9_fu_60_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_9_fu_60_p2_carry_i_10
       (.I0(comparison_9_fu_60_p2_carry[13]),
        .I1(comparison_9_fu_60_p2_carry[12]),
        .O(comparison_9_fu_60_p2_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_9_fu_60_p2_carry_i_11
       (.I0(comparison_9_fu_60_p2_carry[11]),
        .I1(comparison_9_fu_60_p2_carry[10]),
        .O(comparison_9_fu_60_p2_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_9_fu_60_p2_carry_i_12
       (.I0(comparison_9_fu_60_p2_carry[9]),
        .I1(comparison_9_fu_60_p2_carry[8]),
        .O(comparison_9_fu_60_p2_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_9_fu_60_p2_carry_i_13
       (.I0(comparison_9_fu_60_p2_carry[7]),
        .I1(comparison_9_fu_60_p2_carry[6]),
        .O(comparison_9_fu_60_p2_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_9_fu_60_p2_carry_i_14
       (.I0(comparison_9_fu_60_p2_carry[5]),
        .I1(comparison_9_fu_60_p2_carry[4]),
        .O(comparison_9_fu_60_p2_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_9_fu_60_p2_carry_i_15
       (.I0(comparison_9_fu_60_p2_carry[3]),
        .I1(comparison_9_fu_60_p2_carry[2]),
        .O(comparison_9_fu_60_p2_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_9_fu_60_p2_carry_i_16
       (.I0(comparison_9_fu_60_p2_carry[1]),
        .I1(comparison_9_fu_60_p2_carry[0]),
        .O(comparison_9_fu_60_p2_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_9_fu_60_p2_carry_i_2
       (.I0(comparison_9_fu_60_p2_carry[12]),
        .I1(comparison_9_fu_60_p2_carry[13]),
        .O(comparison_9_fu_60_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_9_fu_60_p2_carry_i_3
       (.I0(comparison_9_fu_60_p2_carry[10]),
        .I1(comparison_9_fu_60_p2_carry[11]),
        .O(comparison_9_fu_60_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_9_fu_60_p2_carry_i_4
       (.I0(comparison_9_fu_60_p2_carry[8]),
        .I1(comparison_9_fu_60_p2_carry[9]),
        .O(comparison_9_fu_60_p2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_9_fu_60_p2_carry_i_5
       (.I0(comparison_9_fu_60_p2_carry[6]),
        .I1(comparison_9_fu_60_p2_carry[7]),
        .O(comparison_9_fu_60_p2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_9_fu_60_p2_carry_i_6
       (.I0(comparison_9_fu_60_p2_carry[4]),
        .I1(comparison_9_fu_60_p2_carry[5]),
        .O(comparison_9_fu_60_p2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_9_fu_60_p2_carry_i_7
       (.I0(comparison_9_fu_60_p2_carry[2]),
        .I1(comparison_9_fu_60_p2_carry[3]),
        .O(comparison_9_fu_60_p2_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    comparison_9_fu_60_p2_carry_i_8
       (.I0(comparison_9_fu_60_p2_carry[1]),
        .O(comparison_9_fu_60_p2_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_9_fu_60_p2_carry_i_9
       (.I0(comparison_9_fu_60_p2_carry[15]),
        .I1(comparison_9_fu_60_p2_carry[14]),
        .O(comparison_9_fu_60_p2_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_fu_48_p2_carry_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(comparison_fu_48_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_10
       (.I0(comparison_fu_48_p2_carry[13]),
        .I1(comparison_fu_48_p2_carry[12]),
        .O(comparison_fu_48_p2_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_10__0
       (.I0(comparison_10_fu_54_p2_carry[13]),
        .I1(comparison_10_fu_54_p2_carry[12]),
        .O(comparison_fu_48_p2_carry_i_10__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_10__1
       (.I0(comparison_12_fu_54_p2_carry[13]),
        .I1(comparison_12_fu_54_p2_carry[12]),
        .O(comparison_fu_48_p2_carry_i_10__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_10__2
       (.I0(comparison_fu_48_p2_carry_0[13]),
        .I1(comparison_fu_48_p2_carry_0[12]),
        .O(comparison_fu_48_p2_carry_i_10__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_11
       (.I0(comparison_fu_48_p2_carry[11]),
        .I1(comparison_fu_48_p2_carry[10]),
        .O(comparison_fu_48_p2_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_11__0
       (.I0(comparison_10_fu_54_p2_carry[11]),
        .I1(comparison_10_fu_54_p2_carry[10]),
        .O(comparison_fu_48_p2_carry_i_11__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_11__1
       (.I0(comparison_12_fu_54_p2_carry[11]),
        .I1(comparison_12_fu_54_p2_carry[10]),
        .O(comparison_fu_48_p2_carry_i_11__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_11__2
       (.I0(comparison_fu_48_p2_carry_0[11]),
        .I1(comparison_fu_48_p2_carry_0[10]),
        .O(comparison_fu_48_p2_carry_i_11__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_12
       (.I0(comparison_fu_48_p2_carry[9]),
        .I1(comparison_fu_48_p2_carry[8]),
        .O(comparison_fu_48_p2_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_12__0
       (.I0(comparison_10_fu_54_p2_carry[9]),
        .I1(comparison_10_fu_54_p2_carry[8]),
        .O(comparison_fu_48_p2_carry_i_12__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_12__1
       (.I0(comparison_12_fu_54_p2_carry[9]),
        .I1(comparison_12_fu_54_p2_carry[8]),
        .O(comparison_fu_48_p2_carry_i_12__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_12__2
       (.I0(comparison_fu_48_p2_carry_0[9]),
        .I1(comparison_fu_48_p2_carry_0[8]),
        .O(comparison_fu_48_p2_carry_i_12__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_13
       (.I0(comparison_fu_48_p2_carry[7]),
        .I1(comparison_fu_48_p2_carry[6]),
        .O(comparison_fu_48_p2_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_13__0
       (.I0(comparison_10_fu_54_p2_carry[7]),
        .I1(comparison_10_fu_54_p2_carry[6]),
        .O(comparison_fu_48_p2_carry_i_13__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_13__1
       (.I0(comparison_12_fu_54_p2_carry[7]),
        .I1(comparison_12_fu_54_p2_carry[6]),
        .O(comparison_fu_48_p2_carry_i_13__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_13__2
       (.I0(comparison_fu_48_p2_carry_0[7]),
        .I1(comparison_fu_48_p2_carry_0[6]),
        .O(comparison_fu_48_p2_carry_i_13__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_14
       (.I0(comparison_fu_48_p2_carry[5]),
        .I1(comparison_fu_48_p2_carry[4]),
        .O(comparison_fu_48_p2_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_14__0
       (.I0(comparison_10_fu_54_p2_carry[5]),
        .I1(comparison_10_fu_54_p2_carry[4]),
        .O(comparison_fu_48_p2_carry_i_14__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_14__1
       (.I0(comparison_12_fu_54_p2_carry[5]),
        .I1(comparison_12_fu_54_p2_carry[4]),
        .O(comparison_fu_48_p2_carry_i_14__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_14__2
       (.I0(comparison_fu_48_p2_carry_0[5]),
        .I1(comparison_fu_48_p2_carry_0[4]),
        .O(comparison_fu_48_p2_carry_i_14__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_15
       (.I0(comparison_fu_48_p2_carry[3]),
        .I1(comparison_fu_48_p2_carry[2]),
        .O(comparison_fu_48_p2_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_15__0
       (.I0(comparison_10_fu_54_p2_carry[3]),
        .I1(comparison_10_fu_54_p2_carry[2]),
        .O(comparison_fu_48_p2_carry_i_15__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_15__1
       (.I0(comparison_12_fu_54_p2_carry[3]),
        .I1(comparison_12_fu_54_p2_carry[2]),
        .O(comparison_fu_48_p2_carry_i_15__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_15__2
       (.I0(comparison_fu_48_p2_carry_0[3]),
        .I1(comparison_fu_48_p2_carry_0[2]),
        .O(comparison_fu_48_p2_carry_i_15__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_16
       (.I0(comparison_fu_48_p2_carry_0[0]),
        .I1(comparison_fu_48_p2_carry_0[1]),
        .O(comparison_fu_48_p2_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_fu_48_p2_carry_i_16__0
       (.I0(comparison_fu_48_p2_carry[1]),
        .I1(comparison_fu_48_p2_carry[0]),
        .O(comparison_fu_48_p2_carry_i_16__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_fu_48_p2_carry_i_16__1
       (.I0(comparison_10_fu_54_p2_carry[1]),
        .I1(comparison_10_fu_54_p2_carry[0]),
        .O(comparison_fu_48_p2_carry_i_16__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_fu_48_p2_carry_i_16__2
       (.I0(comparison_12_fu_54_p2_carry[1]),
        .I1(comparison_12_fu_54_p2_carry[0]),
        .O(comparison_fu_48_p2_carry_i_16__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_fu_48_p2_carry_i_1__0
       (.I0(comparison_fu_48_p2_carry[15]),
        .I1(comparison_fu_48_p2_carry[14]),
        .O(comparison_fu_48_p2_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_fu_48_p2_carry_i_1__1
       (.I0(comparison_10_fu_54_p2_carry[15]),
        .I1(comparison_10_fu_54_p2_carry[14]),
        .O(comparison_fu_48_p2_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_fu_48_p2_carry_i_1__2
       (.I0(comparison_12_fu_54_p2_carry[15]),
        .I1(comparison_12_fu_54_p2_carry[14]),
        .O(comparison_fu_48_p2_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_fu_48_p2_carry_i_1__3
       (.I0(comparison_fu_48_p2_carry_0[15]),
        .I1(comparison_fu_48_p2_carry_0[14]),
        .O(comparison_fu_48_p2_carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_fu_48_p2_carry_i_2
       (.I0(Q[15]),
        .I1(Q[14]),
        .O(comparison_fu_48_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_2__0
       (.I0(comparison_fu_48_p2_carry[12]),
        .I1(comparison_fu_48_p2_carry[13]),
        .O(comparison_fu_48_p2_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_2__1
       (.I0(comparison_10_fu_54_p2_carry[12]),
        .I1(comparison_10_fu_54_p2_carry[13]),
        .O(comparison_fu_48_p2_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_2__2
       (.I0(comparison_12_fu_54_p2_carry[12]),
        .I1(comparison_12_fu_54_p2_carry[13]),
        .O(comparison_fu_48_p2_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_2__3
       (.I0(comparison_fu_48_p2_carry_0[12]),
        .I1(comparison_fu_48_p2_carry_0[13]),
        .O(comparison_fu_48_p2_carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_fu_48_p2_carry_i_3
       (.I0(Q[13]),
        .I1(Q[12]),
        .O(comparison_fu_48_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_3__0
       (.I0(comparison_fu_48_p2_carry[10]),
        .I1(comparison_fu_48_p2_carry[11]),
        .O(comparison_fu_48_p2_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_3__1
       (.I0(comparison_10_fu_54_p2_carry[10]),
        .I1(comparison_10_fu_54_p2_carry[11]),
        .O(comparison_fu_48_p2_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_3__2
       (.I0(comparison_12_fu_54_p2_carry[10]),
        .I1(comparison_12_fu_54_p2_carry[11]),
        .O(comparison_fu_48_p2_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_3__3
       (.I0(comparison_fu_48_p2_carry_0[10]),
        .I1(comparison_fu_48_p2_carry_0[11]),
        .O(comparison_fu_48_p2_carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_fu_48_p2_carry_i_4
       (.I0(Q[11]),
        .I1(Q[10]),
        .O(comparison_fu_48_p2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_4__0
       (.I0(comparison_fu_48_p2_carry[8]),
        .I1(comparison_fu_48_p2_carry[9]),
        .O(comparison_fu_48_p2_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_4__1
       (.I0(comparison_10_fu_54_p2_carry[8]),
        .I1(comparison_10_fu_54_p2_carry[9]),
        .O(comparison_fu_48_p2_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_4__2
       (.I0(comparison_12_fu_54_p2_carry[8]),
        .I1(comparison_12_fu_54_p2_carry[9]),
        .O(comparison_fu_48_p2_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_4__3
       (.I0(comparison_fu_48_p2_carry_0[8]),
        .I1(comparison_fu_48_p2_carry_0[9]),
        .O(comparison_fu_48_p2_carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_fu_48_p2_carry_i_5
       (.I0(Q[9]),
        .I1(Q[8]),
        .O(comparison_fu_48_p2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_5__0
       (.I0(comparison_fu_48_p2_carry[6]),
        .I1(comparison_fu_48_p2_carry[7]),
        .O(comparison_fu_48_p2_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_5__1
       (.I0(comparison_10_fu_54_p2_carry[6]),
        .I1(comparison_10_fu_54_p2_carry[7]),
        .O(comparison_fu_48_p2_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_5__2
       (.I0(comparison_12_fu_54_p2_carry[6]),
        .I1(comparison_12_fu_54_p2_carry[7]),
        .O(comparison_fu_48_p2_carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_5__3
       (.I0(comparison_fu_48_p2_carry_0[6]),
        .I1(comparison_fu_48_p2_carry_0[7]),
        .O(comparison_fu_48_p2_carry_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_fu_48_p2_carry_i_6
       (.I0(Q[7]),
        .I1(Q[6]),
        .O(comparison_fu_48_p2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_6__0
       (.I0(comparison_fu_48_p2_carry[4]),
        .I1(comparison_fu_48_p2_carry[5]),
        .O(comparison_fu_48_p2_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_6__1
       (.I0(comparison_10_fu_54_p2_carry[4]),
        .I1(comparison_10_fu_54_p2_carry[5]),
        .O(comparison_fu_48_p2_carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_6__2
       (.I0(comparison_12_fu_54_p2_carry[4]),
        .I1(comparison_12_fu_54_p2_carry[5]),
        .O(comparison_fu_48_p2_carry_i_6__2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_6__3
       (.I0(comparison_fu_48_p2_carry_0[4]),
        .I1(comparison_fu_48_p2_carry_0[5]),
        .O(comparison_fu_48_p2_carry_i_6__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_fu_48_p2_carry_i_7
       (.I0(Q[5]),
        .I1(Q[4]),
        .O(comparison_fu_48_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_7__0
       (.I0(comparison_fu_48_p2_carry[2]),
        .I1(comparison_fu_48_p2_carry[3]),
        .O(comparison_fu_48_p2_carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_7__1
       (.I0(comparison_10_fu_54_p2_carry[2]),
        .I1(comparison_10_fu_54_p2_carry[3]),
        .O(comparison_fu_48_p2_carry_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_7__2
       (.I0(comparison_12_fu_54_p2_carry[2]),
        .I1(comparison_12_fu_54_p2_carry[3]),
        .O(comparison_fu_48_p2_carry_i_7__2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_7__3
       (.I0(comparison_fu_48_p2_carry_0[2]),
        .I1(comparison_fu_48_p2_carry_0[3]),
        .O(comparison_fu_48_p2_carry_i_7__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_fu_48_p2_carry_i_8
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(comparison_fu_48_p2_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    comparison_fu_48_p2_carry_i_8__0
       (.I0(comparison_fu_48_p2_carry[1]),
        .O(comparison_fu_48_p2_carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_48_p2_carry_i_8__1
       (.I0(comparison_fu_48_p2_carry_0[1]),
        .I1(comparison_fu_48_p2_carry_0[0]),
        .O(comparison_fu_48_p2_carry_i_8__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    comparison_fu_48_p2_carry_i_8__2
       (.I0(comparison_10_fu_54_p2_carry[1]),
        .O(comparison_fu_48_p2_carry_i_8__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    comparison_fu_48_p2_carry_i_8__3
       (.I0(comparison_12_fu_54_p2_carry[1]),
        .O(comparison_fu_48_p2_carry_i_8__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_fu_48_p2_carry_i_9
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(comparison_fu_48_p2_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_9__0
       (.I0(comparison_fu_48_p2_carry[15]),
        .I1(comparison_fu_48_p2_carry[14]),
        .O(comparison_fu_48_p2_carry_i_9__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_9__1
       (.I0(comparison_10_fu_54_p2_carry[15]),
        .I1(comparison_10_fu_54_p2_carry[14]),
        .O(comparison_fu_48_p2_carry_i_9__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_9__2
       (.I0(comparison_12_fu_54_p2_carry[15]),
        .I1(comparison_12_fu_54_p2_carry[14]),
        .O(comparison_fu_48_p2_carry_i_9__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_48_p2_carry_i_9__3
       (.I0(comparison_fu_48_p2_carry_0[15]),
        .I1(comparison_fu_48_p2_carry_0[14]),
        .O(comparison_fu_48_p2_carry_i_9__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_fu_56_p2_carry_i_1
       (.I0(comparison_2_fu_60_p2_carry[15]),
        .I1(comparison_2_fu_60_p2_carry[14]),
        .O(comparison_fu_56_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_56_p2_carry_i_10
       (.I0(comparison_2_fu_60_p2_carry[13]),
        .I1(comparison_2_fu_60_p2_carry[12]),
        .O(comparison_fu_56_p2_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_56_p2_carry_i_11
       (.I0(comparison_2_fu_60_p2_carry[11]),
        .I1(comparison_2_fu_60_p2_carry[10]),
        .O(comparison_fu_56_p2_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_56_p2_carry_i_12
       (.I0(comparison_2_fu_60_p2_carry[9]),
        .I1(comparison_2_fu_60_p2_carry[8]),
        .O(comparison_fu_56_p2_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_56_p2_carry_i_13
       (.I0(comparison_2_fu_60_p2_carry[7]),
        .I1(comparison_2_fu_60_p2_carry[6]),
        .O(comparison_fu_56_p2_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_56_p2_carry_i_14
       (.I0(comparison_2_fu_60_p2_carry[5]),
        .I1(comparison_2_fu_60_p2_carry[4]),
        .O(comparison_fu_56_p2_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_56_p2_carry_i_15
       (.I0(comparison_2_fu_60_p2_carry[3]),
        .I1(comparison_2_fu_60_p2_carry[2]),
        .O(comparison_fu_56_p2_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_fu_56_p2_carry_i_16
       (.I0(comparison_2_fu_60_p2_carry[1]),
        .I1(comparison_2_fu_60_p2_carry[0]),
        .O(comparison_fu_56_p2_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_fu_56_p2_carry_i_1__0
       (.I0(comparison_fu_56_p2_carry[1]),
        .I1(comparison_fu_56_p2_carry[0]),
        .O(comparison_fu_56_p2_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_56_p2_carry_i_2
       (.I0(comparison_2_fu_60_p2_carry[12]),
        .I1(comparison_2_fu_60_p2_carry[13]),
        .O(comparison_fu_56_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_fu_56_p2_carry_i_2__0
       (.I0(comparison_fu_56_p2_carry[15]),
        .I1(comparison_fu_56_p2_carry[14]),
        .O(comparison_fu_56_p2_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_56_p2_carry_i_3
       (.I0(comparison_2_fu_60_p2_carry[10]),
        .I1(comparison_2_fu_60_p2_carry[11]),
        .O(comparison_fu_56_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_fu_56_p2_carry_i_3__0
       (.I0(comparison_fu_56_p2_carry[13]),
        .I1(comparison_fu_56_p2_carry[12]),
        .O(comparison_fu_56_p2_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_56_p2_carry_i_4
       (.I0(comparison_2_fu_60_p2_carry[8]),
        .I1(comparison_2_fu_60_p2_carry[9]),
        .O(comparison_fu_56_p2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_fu_56_p2_carry_i_4__0
       (.I0(comparison_fu_56_p2_carry[11]),
        .I1(comparison_fu_56_p2_carry[10]),
        .O(comparison_fu_56_p2_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_56_p2_carry_i_5
       (.I0(comparison_2_fu_60_p2_carry[6]),
        .I1(comparison_2_fu_60_p2_carry[7]),
        .O(comparison_fu_56_p2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_fu_56_p2_carry_i_5__0
       (.I0(comparison_fu_56_p2_carry[9]),
        .I1(comparison_fu_56_p2_carry[8]),
        .O(comparison_fu_56_p2_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_56_p2_carry_i_6
       (.I0(comparison_2_fu_60_p2_carry[4]),
        .I1(comparison_2_fu_60_p2_carry[5]),
        .O(comparison_fu_56_p2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_fu_56_p2_carry_i_6__0
       (.I0(comparison_fu_56_p2_carry[7]),
        .I1(comparison_fu_56_p2_carry[6]),
        .O(comparison_fu_56_p2_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    comparison_fu_56_p2_carry_i_7
       (.I0(comparison_2_fu_60_p2_carry[2]),
        .I1(comparison_2_fu_60_p2_carry[3]),
        .O(comparison_fu_56_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_fu_56_p2_carry_i_7__0
       (.I0(comparison_fu_56_p2_carry[5]),
        .I1(comparison_fu_56_p2_carry[4]),
        .O(comparison_fu_56_p2_carry_i_7__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    comparison_fu_56_p2_carry_i_8
       (.I0(comparison_2_fu_60_p2_carry[1]),
        .O(comparison_fu_56_p2_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    comparison_fu_56_p2_carry_i_8__0
       (.I0(comparison_fu_56_p2_carry[3]),
        .I1(comparison_fu_56_p2_carry[2]),
        .O(comparison_fu_56_p2_carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    comparison_fu_56_p2_carry_i_9
       (.I0(comparison_2_fu_60_p2_carry[15]),
        .I1(comparison_2_fu_60_p2_carry[14]),
        .O(comparison_fu_56_p2_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    comparison_fu_56_p2_carry_i_9__0
       (.I0(comparison_fu_56_p2_carry[0]),
        .I1(comparison_fu_56_p2_carry[1]),
        .O(comparison_fu_56_p2_carry_i_9__0_n_0));
  design_1_myproject_axi_0_0_myproject_axi_decision_function_6 s_V_1_decision_function_6_fu_116
       (.CO(comparison_fu_56_p2),
        .DI({comparison_fu_56_p2_carry_i_1_n_0,comparison_fu_56_p2_carry_i_2_n_0,comparison_fu_56_p2_carry_i_3_n_0,comparison_fu_56_p2_carry_i_4_n_0,comparison_fu_56_p2_carry_i_5_n_0,comparison_fu_56_p2_carry_i_6_n_0,comparison_fu_56_p2_carry_i_7_n_0,comparison_fu_56_p2_carry_i_8_n_0}),
        .S({comparison_fu_56_p2_carry_i_9_n_0,comparison_fu_56_p2_carry_i_10_n_0,comparison_fu_56_p2_carry_i_11_n_0,comparison_fu_56_p2_carry_i_12_n_0,comparison_fu_56_p2_carry_i_13_n_0,comparison_fu_56_p2_carry_i_14_n_0,comparison_fu_56_p2_carry_i_15_n_0,comparison_fu_56_p2_carry_i_16_n_0}),
        .ap_return__81_carry(comparison_12_fu_54_p2),
        .ap_return__81_carry_0(comparison_fu_48_p2_2),
        .ap_return__81_carry_1(CO),
        .ap_return__81_carry_2(\B_V_data_1_payload_A_reg[15] ),
        .ap_return__81_carry_3(s_V_5_decision_function_2_fu_150_n_13),
        .ap_return__81_carry_4(\tmp_data_V_6_reg_275_reg[15] ),
        .ap_return__81_carry_5(s_V_5_decision_function_2_fu_150_n_11),
        .ap_return__81_carry_6(s_V_5_decision_function_2_fu_150_n_9),
        .ap_return__81_carry_7(s_V_5_decision_function_2_fu_150_n_14),
        .ap_return__81_carry__0(s_V_5_decision_function_2_fu_150_n_7),
        .ap_return__81_carry__0_0(s_V_5_decision_function_2_fu_150_n_6),
        .ap_return__81_carry__0_1(ap_return__81_carry__0_0),
        .ap_return__81_carry_i_1({comparison_fu_48_p2_carry[15],comparison_4_fu_62_p2_carry_i_1_n_0}),
        .ap_return__81_carry_i_14_0({comparison_fu_48_p2_carry_0[15],comparison_5_fu_68_p2_carry_i_1_n_0}),
        .ap_return__81_carry_i_14_1({comparison_5_fu_68_p2_carry_i_2_n_0,comparison_5_fu_68_p2_carry_i_3_n_0,comparison_5_fu_68_p2_carry_i_4_n_0,comparison_5_fu_68_p2_carry_i_5_n_0,comparison_5_fu_68_p2_carry_i_6_n_0,comparison_5_fu_68_p2_carry_i_7_n_0,comparison_5_fu_68_p2_carry_i_8_n_0,comparison_5_fu_68_p2_carry_i_9_n_0}),
        .ap_return__81_carry_i_1_0({comparison_4_fu_62_p2_carry_i_2_n_0,comparison_4_fu_62_p2_carry_i_3_n_0,comparison_4_fu_62_p2_carry_i_4_n_0,comparison_4_fu_62_p2_carry_i_5_n_0,comparison_4_fu_62_p2_carry_i_6_n_0,comparison_4_fu_62_p2_carry_i_7_n_0,comparison_4_fu_62_p2_carry_i_8_n_0,comparison_4_fu_62_p2_carry_i_9_n_0}),
        .\tmp_data_V_3_reg_260_reg[15] (s_V_1_decision_function_6_fu_116_n_7),
        .\tmp_data_V_3_reg_260_reg[15]_0 (s_V_1_decision_function_6_fu_116_n_8),
        .\tmp_data_V_3_reg_260_reg[15]_1 ({s_V_1_decision_function_6_fu_116_n_18,s_V_1_decision_function_6_fu_116_n_19,s_V_1_decision_function_6_fu_116_n_20}),
        .\tmp_data_V_6_reg_275_reg[15] ({s_V_1_decision_function_6_fu_116_n_2,s_V_1_decision_function_6_fu_116_n_3,s_V_1_decision_function_6_fu_116_n_4,s_V_1_decision_function_6_fu_116_n_5,s_V_1_decision_function_6_fu_116_n_6}),
        .\tmp_data_V_6_reg_275_reg[15]_0 ({s_V_1_decision_function_6_fu_116_n_12,s_V_1_decision_function_6_fu_116_n_13,s_V_1_decision_function_6_fu_116_n_14,s_V_1_decision_function_6_fu_116_n_15,s_V_1_decision_function_6_fu_116_n_16,s_V_1_decision_function_6_fu_116_n_17}),
        .\tmp_data_V_8_reg_285_reg[15] (comparison_4_fu_62_p2),
        .\tmp_data_V_8_reg_285_reg[15]_0 ({s_V_1_decision_function_6_fu_116_n_9,s_V_1_decision_function_6_fu_116_n_10}),
        .\tmp_data_V_8_reg_285_reg[15]_1 (s_V_1_decision_function_6_fu_116_n_11),
        .\tmp_data_V_8_reg_285_reg[15]_2 (s_V_1_decision_function_6_fu_116_n_21));
  design_1_myproject_axi_0_0_myproject_axi_decision_function_5 s_V_2_decision_function_5_fu_126
       (.CO(comparison_fu_48_p2),
        .DI({comparison_fu_48_p2_carry_i_1__3_n_0,comparison_fu_48_p2_carry_i_2__3_n_0,comparison_fu_48_p2_carry_i_3__3_n_0,comparison_fu_48_p2_carry_i_4__3_n_0,comparison_fu_48_p2_carry_i_5__3_n_0,comparison_fu_48_p2_carry_i_6__3_n_0,comparison_fu_48_p2_carry_i_7__3_n_0,comparison_fu_48_p2_carry_i_8__1_n_0}),
        .O({ap_return__0_carry__2_n_8,ap_return__0_carry__2_n_9,ap_return__0_carry__2_n_10,ap_return__0_carry__2_n_11,ap_return__0_carry__2_n_12,ap_return__0_carry__2_n_13,ap_return__0_carry__2_n_14,ap_return__0_carry__2_n_15}),
        .S({comparison_fu_48_p2_carry_i_9__3_n_0,comparison_fu_48_p2_carry_i_10__2_n_0,comparison_fu_48_p2_carry_i_11__2_n_0,comparison_fu_48_p2_carry_i_12__2_n_0,comparison_fu_48_p2_carry_i_13__2_n_0,comparison_fu_48_p2_carry_i_14__2_n_0,comparison_fu_48_p2_carry_i_15__2_n_0,comparison_fu_48_p2_carry_i_16_n_0}),
        .ap_return__0_carry(comparison_fu_48_p2_1),
        .ap_return__0_carry_0(s_V_4_decision_function_3_fu_142_n_8),
        .ap_return__0_carry_1(comparison_11_fu_60_p2),
        .ap_return__0_carry_2(s_V_7_decision_function_fu_168_n_3),
        .ap_return__0_carry_3(comparison_10_fu_54_p2),
        .ap_return__0_carry_4(s_V_7_decision_function_fu_168_n_2),
        .ap_return__0_carry__0(s_V_4_decision_function_3_fu_142_n_9),
        .ap_return__0_carry__2(zext_ln148_fu_96_p1),
        .ap_return__0_carry__2_0(comparison_18_fu_54_p2),
        .ap_return__0_carry__2_1(comparison_17_fu_60_p2),
        .ap_return__0_carry__2_2(s_V_4_decision_function_3_fu_142_n_7),
        .ap_return__0_carry_i_12_0(comparison_6_fu_54_p2),
        .ap_return__0_carry_i_14_0(comparison_7_fu_60_p2_carry_i_1_n_0),
        .ap_return__0_carry_i_14_1(ap_return__0_carry_i_18_0[15]),
        .ap_return__0_carry_i_14_2({comparison_7_fu_60_p2_carry_i_2_n_0,comparison_7_fu_60_p2_carry_i_3_n_0,comparison_7_fu_60_p2_carry_i_4_n_0,comparison_7_fu_60_p2_carry_i_5_n_0,comparison_7_fu_60_p2_carry_i_6_n_0,comparison_7_fu_60_p2_carry_i_7_n_0,comparison_7_fu_60_p2_carry_i_8_n_0}),
        .ap_return__163_carry__1_i_18(s_V_2_decision_function_5_fu_126_n_23),
        .ap_return__163_carry__2_i_15(ap_return__0_carry__1_n_8),
        .ap_return__163_carry__2_i_15_0(ap_return__81_carry__1_n_8),
        .ap_return__163_carry__2_i_8({ap_return__81_carry__2_n_8,ap_return__81_carry__2_n_9,ap_return__81_carry__2_n_10,ap_return__81_carry__2_n_11,ap_return__81_carry__2_n_12,ap_return__81_carry__2_n_13,ap_return__81_carry__2_n_14,ap_return__81_carry__2_n_15}),
        .ap_return__163_carry__2_i_8_0(s_V_decision_function_7_fu_108_n_25),
        .ap_return__163_carry__2_i_9(s_V_3_decision_function_4_fu_134_n_12),
        .ap_return__81_carry__1(s_V_2_decision_function_5_fu_126_n_16),
        .ap_return__81_carry__2(s_V_2_decision_function_5_fu_126_n_17),
        .ap_return__81_carry__2_0(s_V_2_decision_function_5_fu_126_n_18),
        .ap_return__81_carry__2_1(s_V_2_decision_function_5_fu_126_n_19),
        .ap_return__81_carry__2_2(s_V_2_decision_function_5_fu_126_n_20),
        .ap_return__81_carry__2_3(s_V_2_decision_function_5_fu_126_n_21),
        .ap_return__81_carry__2_4(s_V_2_decision_function_5_fu_126_n_22),
        .comparison_fu_48_p2_carry_0(s_V_2_decision_function_5_fu_126_n_14),
        .\tmp_data_V_3_reg_260_reg[15] (s_V_2_decision_function_5_fu_126_n_15),
        .\tmp_data_V_3_reg_260_reg[15]_0 ({s_V_2_decision_function_5_fu_126_n_31,s_V_2_decision_function_5_fu_126_n_32,s_V_2_decision_function_5_fu_126_n_33,s_V_2_decision_function_5_fu_126_n_34,s_V_2_decision_function_5_fu_126_n_35}),
        .\tmp_data_V_3_reg_260_reg[15]_1 ({s_V_2_decision_function_5_fu_126_n_36,s_V_2_decision_function_5_fu_126_n_37,s_V_2_decision_function_5_fu_126_n_38,s_V_2_decision_function_5_fu_126_n_39,s_V_2_decision_function_5_fu_126_n_40,s_V_2_decision_function_5_fu_126_n_41,s_V_2_decision_function_5_fu_126_n_42,s_V_2_decision_function_5_fu_126_n_43}),
        .\tmp_data_V_3_reg_260_reg[15]_2 (s_V_2_decision_function_5_fu_126_n_44),
        .\tmp_data_V_3_reg_260_reg[15]_3 ({s_V_2_decision_function_5_fu_126_n_45,s_V_2_decision_function_5_fu_126_n_46,s_V_2_decision_function_5_fu_126_n_47,s_V_2_decision_function_5_fu_126_n_48,s_V_2_decision_function_5_fu_126_n_49,s_V_2_decision_function_5_fu_126_n_50,s_V_2_decision_function_5_fu_126_n_51,s_V_2_decision_function_5_fu_126_n_52}),
        .\tmp_data_V_4_reg_265_reg[15] ({s_V_2_decision_function_5_fu_126_n_24,s_V_2_decision_function_5_fu_126_n_25,s_V_2_decision_function_5_fu_126_n_26,s_V_2_decision_function_5_fu_126_n_27,s_V_2_decision_function_5_fu_126_n_28,s_V_2_decision_function_5_fu_126_n_29,s_V_2_decision_function_5_fu_126_n_30}),
        .\tmp_data_V_5_reg_270_reg[15] (s_V_2_decision_function_5_fu_126_n_1),
        .\tmp_data_V_5_reg_270_reg[15]_0 ({s_V_2_decision_function_5_fu_126_n_2,s_V_2_decision_function_5_fu_126_n_3,s_V_2_decision_function_5_fu_126_n_4,s_V_2_decision_function_5_fu_126_n_5}),
        .\tmp_data_V_5_reg_270_reg[15]_1 (s_V_2_decision_function_5_fu_126_n_6),
        .\tmp_data_V_5_reg_270_reg[15]_2 ({s_V_2_decision_function_5_fu_126_n_7,s_V_2_decision_function_5_fu_126_n_8,s_V_2_decision_function_5_fu_126_n_9,s_V_2_decision_function_5_fu_126_n_10,s_V_2_decision_function_5_fu_126_n_11,s_V_2_decision_function_5_fu_126_n_12}),
        .\tmp_data_V_5_reg_270_reg[15]_3 (s_V_2_decision_function_5_fu_126_n_13));
  design_1_myproject_axi_0_0_myproject_axi_decision_function_4 s_V_3_decision_function_4_fu_134
       (.CO(comparison_fu_48_p2_0),
        .DI({comparison_fu_48_p2_carry_i_1__0_n_0,comparison_fu_48_p2_carry_i_2__0_n_0,comparison_fu_48_p2_carry_i_3__0_n_0,comparison_fu_48_p2_carry_i_4__0_n_0,comparison_fu_48_p2_carry_i_5__0_n_0,comparison_fu_48_p2_carry_i_6__0_n_0,comparison_fu_48_p2_carry_i_7__0_n_0,comparison_fu_48_p2_carry_i_8__0_n_0}),
        .O({ap_return__0_carry_n_8,ap_return__0_carry_n_9,ap_return__0_carry_n_10,ap_return__0_carry_n_11,ap_return__0_carry_n_12,ap_return__0_carry_n_14,ap_return__0_carry_n_15}),
        .S({comparison_fu_48_p2_carry_i_9__0_n_0,comparison_fu_48_p2_carry_i_10_n_0,comparison_fu_48_p2_carry_i_11_n_0,comparison_fu_48_p2_carry_i_12_n_0,comparison_fu_48_p2_carry_i_13_n_0,comparison_fu_48_p2_carry_i_14_n_0,comparison_fu_48_p2_carry_i_15_n_0,comparison_fu_48_p2_carry_i_16__0_n_0}),
        .ap_return__0_carry(s_V_3_decision_function_4_fu_134_n_4),
        .ap_return__0_carry_0(s_V_3_decision_function_4_fu_134_n_6),
        .ap_return__0_carry__0(s_V_3_decision_function_4_fu_134_n_22),
        .ap_return__163_carry__0_i_32({s_V_3_decision_function_4_fu_134_n_25,s_V_3_decision_function_4_fu_134_n_26,s_V_3_decision_function_4_fu_134_n_27,s_V_3_decision_function_4_fu_134_n_28}),
        .ap_return__163_carry__1_i_42_0(s_V_3_decision_function_4_fu_134_n_30),
        .ap_return__163_carry__1_i_9({ap_return__0_carry__1_n_8,ap_return__0_carry__1_n_9,ap_return__0_carry__1_n_10,ap_return__0_carry__1_n_11,ap_return__0_carry__1_n_12,ap_return__0_carry__1_n_13,ap_return__0_carry__1_n_14,ap_return__0_carry__1_n_15}),
        .ap_return__163_carry__1_i_9_0({ap_return__81_carry__1_n_8,ap_return__81_carry__1_n_9,ap_return__81_carry__1_n_10,ap_return__81_carry__1_n_11,ap_return__81_carry__1_n_12,ap_return__81_carry__1_n_13,ap_return__81_carry__1_n_14,ap_return__81_carry__1_n_15}),
        .ap_return__163_carry__1_i_9_1(s_V_decision_function_7_fu_108_n_25),
        .ap_return__163_carry_i_22_0(s_V_3_decision_function_4_fu_134_n_15),
        .ap_return__163_carry_i_28({s_V_3_decision_function_4_fu_134_n_23,s_V_3_decision_function_4_fu_134_n_24}),
        .ap_return__163_carry_i_30({comparison_9_fu_60_p2_carry[15],comparison_8_fu_54_p2_carry_i_1_n_0}),
        .ap_return__163_carry_i_30_0({comparison_8_fu_54_p2_carry_i_2_n_0,comparison_8_fu_54_p2_carry_i_3_n_0,comparison_8_fu_54_p2_carry_i_4_n_0,comparison_8_fu_54_p2_carry_i_5_n_0,comparison_8_fu_54_p2_carry_i_6_n_0,comparison_8_fu_54_p2_carry_i_7_n_0,comparison_8_fu_54_p2_carry_i_8_n_0,comparison_8_fu_54_p2_carry_i_9_n_0}),
        .ap_return__163_carry_i_30_1({comparison_9_fu_60_p2_carry_i_1_n_0,comparison_9_fu_60_p2_carry_i_2_n_0,comparison_9_fu_60_p2_carry_i_3_n_0,comparison_9_fu_60_p2_carry_i_4_n_0,comparison_9_fu_60_p2_carry_i_5_n_0,comparison_9_fu_60_p2_carry_i_6_n_0,comparison_9_fu_60_p2_carry_i_7_n_0,comparison_9_fu_60_p2_carry_i_8_n_0}),
        .ap_return__163_carry_i_30_2({comparison_9_fu_60_p2_carry_i_9_n_0,comparison_9_fu_60_p2_carry_i_10_n_0,comparison_9_fu_60_p2_carry_i_11_n_0,comparison_9_fu_60_p2_carry_i_12_n_0,comparison_9_fu_60_p2_carry_i_13_n_0,comparison_9_fu_60_p2_carry_i_14_n_0,comparison_9_fu_60_p2_carry_i_15_n_0,comparison_9_fu_60_p2_carry_i_16_n_0}),
        .ap_return__163_carry_i_5(comparison_2_fu_60_p2),
        .ap_return__81_carry__0({s_V_3_decision_function_4_fu_134_n_8,s_V_3_decision_function_4_fu_134_n_9,s_V_3_decision_function_4_fu_134_n_10,s_V_3_decision_function_4_fu_134_n_11}),
        .ap_return__81_carry__1(s_V_3_decision_function_4_fu_134_n_16),
        .ap_return__81_carry__1_0(s_V_3_decision_function_4_fu_134_n_17),
        .ap_return__81_carry__1_1(s_V_3_decision_function_4_fu_134_n_18),
        .ap_return__81_carry__1_2(s_V_3_decision_function_4_fu_134_n_19),
        .ap_return__81_carry__1_3(s_V_3_decision_function_4_fu_134_n_20),
        .ap_return__81_carry__1_4(s_V_3_decision_function_4_fu_134_n_21),
        .\ret_V_reg_300_reg[7] ({ap_return__81_carry__0_n_8,ap_return__81_carry__0_n_12,ap_return__81_carry__0_n_13,ap_return__81_carry__0_n_14,ap_return__81_carry__0_n_15}),
        .\ret_V_reg_300_reg[7]_0 ({ap_return__0_carry__0_n_8,ap_return__0_carry__0_n_12,ap_return__0_carry__0_n_13,ap_return__0_carry__0_n_14,ap_return__0_carry__0_n_15}),
        .\ret_V_reg_300_reg[7]_1 (s_V_decision_function_7_fu_108_n_34),
        .\ret_V_reg_300_reg[7]_2 (s_V_decision_function_7_fu_108_n_26),
        .\tmp_data_V_2_reg_255_reg[15] (s_V_3_decision_function_4_fu_134_n_3),
        .\tmp_data_V_9_reg_290_reg[15] (comparison_8_fu_54_p2),
        .\tmp_data_V_9_reg_290_reg[15]_0 (comparison_9_fu_60_p2),
        .\tmp_data_V_9_reg_290_reg[15]_1 (s_V_3_decision_function_4_fu_134_n_5),
        .\tmp_data_V_9_reg_290_reg[15]_2 (s_V_3_decision_function_4_fu_134_n_7),
        .\tmp_data_V_9_reg_290_reg[15]_3 (s_V_3_decision_function_4_fu_134_n_12),
        .\tmp_data_V_9_reg_290_reg[15]_4 (s_V_3_decision_function_4_fu_134_n_13),
        .\tmp_data_V_9_reg_290_reg[15]_5 (s_V_3_decision_function_4_fu_134_n_14),
        .\tmp_data_V_9_reg_290_reg[15]_6 (s_V_3_decision_function_4_fu_134_n_29),
        .\trunc_ln902_reg_307_reg[15] ({ap_return__81_carry_n_8,ap_return__81_carry_n_9,ap_return__81_carry_n_10,ap_return__81_carry_n_11,ap_return__81_carry_n_12,ap_return__81_carry_n_14,ap_return__81_carry_n_15}),
        .\trunc_ln902_reg_307_reg[15]_0 (s_V_decision_function_7_fu_108_n_23),
        .\trunc_ln902_reg_307_reg[15]_1 (s_V_decision_function_7_fu_108_n_13),
        .\trunc_ln902_reg_307_reg[15]_2 (s_V_decision_function_7_fu_108_n_14),
        .\trunc_ln902_reg_307_reg[15]_3 (s_V_decision_function_7_fu_108_n_36),
        .\trunc_ln902_reg_307_reg[15]_4 (s_V_decision_function_7_fu_108_n_35),
        .\trunc_ln902_reg_307_reg[15]_5 (s_V_decision_function_7_fu_108_n_24),
        .\trunc_ln902_reg_307_reg[7] (zext_ln148_fu_96_p1_3),
        .\trunc_ln902_reg_307_reg[7]_0 (comparison_3_fu_54_p2),
        .\trunc_ln902_reg_307_reg[7]_1 (s_V_decision_function_7_fu_108_n_8),
        .\trunc_ln902_reg_307_reg[7]_2 (s_V_decision_function_7_fu_108_n_22),
        .\trunc_ln902_reg_307_reg[7]_3 (s_V_decision_function_7_fu_108_n_62));
  design_1_myproject_axi_0_0_myproject_axi_decision_function_3 s_V_4_decision_function_3_fu_142
       (.\B_V_data_1_payload_B_reg[15] (comparison_11_fu_60_p2),
        .CO(comparison_fu_48_p2),
        .DI({comparison_fu_48_p2_carry_i_1__1_n_0,comparison_fu_48_p2_carry_i_2__1_n_0,comparison_fu_48_p2_carry_i_3__1_n_0,comparison_fu_48_p2_carry_i_4__1_n_0,comparison_fu_48_p2_carry_i_5__1_n_0,comparison_fu_48_p2_carry_i_6__1_n_0,comparison_fu_48_p2_carry_i_7__1_n_0,comparison_fu_48_p2_carry_i_8__2_n_0}),
        .S({comparison_fu_48_p2_carry_i_9__1_n_0,comparison_fu_48_p2_carry_i_10__0_n_0,comparison_fu_48_p2_carry_i_11__0_n_0,comparison_fu_48_p2_carry_i_12__0_n_0,comparison_fu_48_p2_carry_i_13__0_n_0,comparison_fu_48_p2_carry_i_14__0_n_0,comparison_fu_48_p2_carry_i_15__0_n_0,comparison_fu_48_p2_carry_i_16__1_n_0}),
        .ap_return__0_carry(zext_ln148_fu_96_p1),
        .ap_return__0_carry_0(comparison_18_fu_54_p2),
        .ap_return__0_carry_1(comparison_17_fu_60_p2),
        .ap_return__0_carry_2(s_V_2_decision_function_5_fu_126_n_14),
        .ap_return__0_carry__0(s_V_2_decision_function_5_fu_126_n_6),
        .ap_return__0_carry__0_0(s_V_2_decision_function_5_fu_126_n_1),
        .ap_return__0_carry__0_1(comparison_6_fu_54_p2),
        .ap_return__0_carry__0_2(s_V_7_decision_function_fu_168_n_1),
        .ap_return__0_carry__0_3(s_V_2_decision_function_5_fu_126_n_13),
        .ap_return__0_carry_i_4(DI),
        .ap_return__0_carry_i_4_0(S),
        .ap_return__0_carry_i_8({comparison_10_fu_54_p2_carry[15],comparison_10_fu_54_p2_carry_i_1_n_0}),
        .ap_return__0_carry_i_8_0({comparison_10_fu_54_p2_carry_i_2_n_0,comparison_10_fu_54_p2_carry_i_3_n_0,comparison_10_fu_54_p2_carry_i_4_n_0,comparison_10_fu_54_p2_carry_i_5_n_0,comparison_10_fu_54_p2_carry_i_6_n_0,comparison_10_fu_54_p2_carry_i_7_n_0,comparison_10_fu_54_p2_carry_i_8_n_0,comparison_10_fu_54_p2_carry_i_9_n_0}),
        .\tmp_data_V_3_reg_260_reg[15] (s_V_4_decision_function_3_fu_142_n_6),
        .\tmp_data_V_4_reg_265_reg[15] (comparison_fu_48_p2_1),
        .\tmp_data_V_4_reg_265_reg[15]_0 (comparison_10_fu_54_p2),
        .\tmp_data_V_4_reg_265_reg[15]_1 ({s_V_4_decision_function_3_fu_142_n_3,s_V_4_decision_function_3_fu_142_n_4,s_V_4_decision_function_3_fu_142_n_5}),
        .\tmp_data_V_4_reg_265_reg[15]_2 (s_V_4_decision_function_3_fu_142_n_7),
        .\tmp_data_V_4_reg_265_reg[15]_3 (s_V_4_decision_function_3_fu_142_n_8),
        .\tmp_data_V_4_reg_265_reg[15]_4 (s_V_4_decision_function_3_fu_142_n_9),
        .\tmp_data_V_4_reg_265_reg[15]_5 (s_V_4_decision_function_3_fu_142_n_10),
        .\tmp_data_V_4_reg_265_reg[15]_6 ({s_V_4_decision_function_3_fu_142_n_11,s_V_4_decision_function_3_fu_142_n_12,s_V_4_decision_function_3_fu_142_n_13}));
  design_1_myproject_axi_0_0_myproject_axi_decision_function_2 s_V_5_decision_function_2_fu_150
       (.CO(comparison_fu_56_p2),
        .DI({comparison_fu_48_p2_carry_i_1__2_n_0,comparison_fu_48_p2_carry_i_2__2_n_0,comparison_fu_48_p2_carry_i_3__2_n_0,comparison_fu_48_p2_carry_i_4__2_n_0,comparison_fu_48_p2_carry_i_5__2_n_0,comparison_fu_48_p2_carry_i_6__2_n_0,comparison_fu_48_p2_carry_i_7__2_n_0,comparison_fu_48_p2_carry_i_8__3_n_0}),
        .O({ap_return__0_carry__2_n_10,ap_return__0_carry__2_n_11,ap_return__0_carry__2_n_12,ap_return__0_carry__2_n_13,ap_return__0_carry__2_n_14,ap_return__0_carry__2_n_15}),
        .S({comparison_fu_48_p2_carry_i_9__2_n_0,comparison_fu_48_p2_carry_i_10__1_n_0,comparison_fu_48_p2_carry_i_11__1_n_0,comparison_fu_48_p2_carry_i_12__1_n_0,comparison_fu_48_p2_carry_i_13__1_n_0,comparison_fu_48_p2_carry_i_14__1_n_0,comparison_fu_48_p2_carry_i_15__1_n_0,comparison_fu_48_p2_carry_i_16__2_n_0}),
        .ap_return__0_carry__2(s_V_5_decision_function_2_fu_150_n_15),
        .ap_return__0_carry__2_0(s_V_5_decision_function_2_fu_150_n_16),
        .ap_return__0_carry__2_1(s_V_5_decision_function_2_fu_150_n_17),
        .ap_return__0_carry__2_2(s_V_5_decision_function_2_fu_150_n_18),
        .ap_return__0_carry__2_3(s_V_5_decision_function_2_fu_150_n_19),
        .ap_return__163_carry__2_i_8({ap_return__81_carry__2_n_10,ap_return__81_carry__2_n_11,ap_return__81_carry__2_n_12,ap_return__81_carry__2_n_13,ap_return__81_carry__2_n_14,ap_return__81_carry__2_n_15}),
        .ap_return__163_carry__2_i_8_0(s_V_decision_function_7_fu_108_n_25),
        .ap_return__163_carry__2_i_8_1(s_V_3_decision_function_4_fu_134_n_12),
        .ap_return__81_carry(comparison_4_fu_62_p2),
        .ap_return__81_carry_0(\B_V_data_1_payload_A_reg[15] ),
        .ap_return__81_carry_1(\tmp_data_V_6_reg_275_reg[15] ),
        .ap_return__81_carry_2(CO),
        .ap_return__81_carry_3(s_V_1_decision_function_6_fu_116_n_8),
        .ap_return__81_carry_4(s_V_1_decision_function_6_fu_116_n_2),
        .ap_return__81_carry__0(s_V_1_decision_function_6_fu_116_n_11),
        .ap_return__81_carry__0_0(s_V_6_decision_function_1_fu_158_n_3),
        .ap_return__81_carry__2(s_V_1_decision_function_6_fu_116_n_7),
        .ap_return__81_carry__2_0(s_V_6_decision_function_1_fu_158_n_4),
        .ap_return__81_carry_i_3({comparison_12_fu_54_p2_carry[15],comparison_12_fu_54_p2_carry_i_1_n_0}),
        .ap_return__81_carry_i_3_0({comparison_12_fu_54_p2_carry_i_2_n_0,comparison_12_fu_54_p2_carry_i_3_n_0,comparison_12_fu_54_p2_carry_i_4_n_0,comparison_12_fu_54_p2_carry_i_5_n_0,comparison_12_fu_54_p2_carry_i_6_n_0,comparison_12_fu_54_p2_carry_i_7_n_0,comparison_12_fu_54_p2_carry_i_8_n_0,comparison_12_fu_54_p2_carry_i_9_n_0}),
        .ap_return__81_carry_i_9_0({comparison_13_fu_60_p2_carry_i_1_n_0,comparison_13_fu_60_p2_carry_i_2_n_0,comparison_13_fu_60_p2_carry_i_3_n_0,comparison_13_fu_60_p2_carry_i_4_n_0,comparison_13_fu_60_p2_carry_i_5_n_0,comparison_13_fu_60_p2_carry_i_6_n_0,comparison_13_fu_60_p2_carry_i_7_n_0,comparison_13_fu_60_p2_carry_i_8_n_0}),
        .ap_return__81_carry_i_9_1({comparison_13_fu_60_p2_carry_i_9_n_0,comparison_13_fu_60_p2_carry_i_10_n_0,comparison_13_fu_60_p2_carry_i_11_n_0,comparison_13_fu_60_p2_carry_i_12_n_0,comparison_13_fu_60_p2_carry_i_13_n_0,comparison_13_fu_60_p2_carry_i_14_n_0,comparison_13_fu_60_p2_carry_i_15_n_0,comparison_13_fu_60_p2_carry_i_16_n_0}),
        .\tmp_data_V_1_reg_250_reg[15] (comparison_fu_48_p2_2),
        .\tmp_data_V_1_reg_250_reg[15]_0 (comparison_12_fu_54_p2),
        .\tmp_data_V_1_reg_250_reg[15]_1 (s_V_5_decision_function_2_fu_150_n_7),
        .\tmp_data_V_1_reg_250_reg[15]_2 (s_V_5_decision_function_2_fu_150_n_10),
        .\tmp_data_V_1_reg_250_reg[15]_3 (s_V_5_decision_function_2_fu_150_n_11),
        .\tmp_data_V_1_reg_250_reg[15]_4 (s_V_5_decision_function_2_fu_150_n_12),
        .\tmp_data_V_1_reg_250_reg[15]_5 (s_V_5_decision_function_2_fu_150_n_13),
        .\tmp_data_V_1_reg_250_reg[15]_6 (s_V_5_decision_function_2_fu_150_n_14),
        .\tmp_data_V_1_reg_250_reg[15]_7 ({s_V_5_decision_function_2_fu_150_n_26,s_V_5_decision_function_2_fu_150_n_27,s_V_5_decision_function_2_fu_150_n_28,s_V_5_decision_function_2_fu_150_n_29,s_V_5_decision_function_2_fu_150_n_30,s_V_5_decision_function_2_fu_150_n_31,s_V_5_decision_function_2_fu_150_n_32,s_V_5_decision_function_2_fu_150_n_33}),
        .\tmp_data_V_1_reg_250_reg[15]_8 ({s_V_5_decision_function_2_fu_150_n_34,s_V_5_decision_function_2_fu_150_n_35,s_V_5_decision_function_2_fu_150_n_36,s_V_5_decision_function_2_fu_150_n_37,s_V_5_decision_function_2_fu_150_n_38,s_V_5_decision_function_2_fu_150_n_39,s_V_5_decision_function_2_fu_150_n_40,s_V_5_decision_function_2_fu_150_n_41}),
        .\tmp_data_V_6_reg_275_reg[15] ({s_V_5_decision_function_2_fu_150_n_20,s_V_5_decision_function_2_fu_150_n_21}),
        .\tmp_data_V_7_reg_280_reg[15] ({s_V_5_decision_function_2_fu_150_n_2,s_V_5_decision_function_2_fu_150_n_3,s_V_5_decision_function_2_fu_150_n_4,s_V_5_decision_function_2_fu_150_n_5,s_V_5_decision_function_2_fu_150_n_6}),
        .\tmp_data_V_7_reg_280_reg[15]_0 ({s_V_5_decision_function_2_fu_150_n_22,s_V_5_decision_function_2_fu_150_n_23,s_V_5_decision_function_2_fu_150_n_24,s_V_5_decision_function_2_fu_150_n_25}),
        .\tmp_data_V_8_reg_285_reg[15] ({s_V_5_decision_function_2_fu_150_n_8,s_V_5_decision_function_2_fu_150_n_9}));
  design_1_myproject_axi_0_0_myproject_axi_decision_function_1 s_V_6_decision_function_1_fu_158
       (.\B_V_data_1_payload_A_reg[15] (\B_V_data_1_payload_A_reg[15] ),
        .CO(comparison_fu_56_p2),
        .DI({comparison_fu_56_p2_carry[15],comparison_fu_56_p2_carry_i_1__0_n_0}),
        .S({comparison_fu_56_p2_carry_i_2__0_n_0,comparison_fu_56_p2_carry_i_3__0_n_0,comparison_fu_56_p2_carry_i_4__0_n_0,comparison_fu_56_p2_carry_i_5__0_n_0,comparison_fu_56_p2_carry_i_6__0_n_0,comparison_fu_56_p2_carry_i_7__0_n_0,comparison_fu_56_p2_carry_i_8__0_n_0,comparison_fu_56_p2_carry_i_9__0_n_0}),
        .ap_return__81_carry__0(\tmp_data_V_6_reg_275_reg[15] ),
        .ap_return__81_carry__0_0(s_V_1_decision_function_6_fu_116_n_21),
        .ap_return__81_carry__0_1(s_V_5_decision_function_2_fu_150_n_13),
        .ap_return__81_carry__0_2(comparison_4_fu_62_p2),
        .ap_return__81_carry__0_3(comparison_12_fu_54_p2),
        .ap_return__81_carry__0_4(comparison_fu_48_p2_2),
        .ap_return__81_carry__0_i_21(ap_return__81_carry__0_i_21),
        .ap_return__81_carry__0_i_21_0(ap_return__81_carry__0_i_21_0),
        .\tmp_data_V_6_reg_275_reg[15] (s_V_6_decision_function_1_fu_158_n_2),
        .\tmp_data_V_6_reg_275_reg[15]_0 (s_V_6_decision_function_1_fu_158_n_3),
        .\tmp_data_V_7_reg_280_reg[15] (CO),
        .\tmp_data_V_7_reg_280_reg[15]_0 (s_V_6_decision_function_1_fu_158_n_4),
        .\tmp_data_V_8_reg_285_reg[15] (s_V_6_decision_function_1_fu_158_n_5));
  design_1_myproject_axi_0_0_myproject_axi_decision_function s_V_7_decision_function_fu_168
       (.CO(comparison_fu_48_p2),
        .DI({comparison_17_fu_60_p2_carry_i_1_n_0,comparison_17_fu_60_p2_carry_i_2_n_0,comparison_17_fu_60_p2_carry_i_3_n_0,comparison_17_fu_60_p2_carry_i_4_n_0,comparison_17_fu_60_p2_carry_i_5_n_0,comparison_17_fu_60_p2_carry_i_6_n_0,comparison_17_fu_60_p2_carry_i_7_n_0,comparison_17_fu_60_p2_carry_i_8_n_0}),
        .S({comparison_17_fu_60_p2_carry_i_9_n_0,comparison_17_fu_60_p2_carry_i_10_n_0,comparison_17_fu_60_p2_carry_i_11_n_0,comparison_17_fu_60_p2_carry_i_12_n_0,comparison_17_fu_60_p2_carry_i_13_n_0,comparison_17_fu_60_p2_carry_i_14_n_0,comparison_17_fu_60_p2_carry_i_15_n_0,comparison_17_fu_60_p2_carry_i_16_n_0}),
        .ap_return__0_carry__0(comparison_6_fu_54_p2),
        .ap_return__0_carry_i_1(comparison_18_fu_54_p2),
        .ap_return__0_carry_i_1_0(zext_ln148_fu_96_p1),
        .\tmp_data_V_3_reg_260_reg[15] (s_V_7_decision_function_fu_168_n_1),
        .\tmp_data_V_3_reg_260_reg[15]_0 (s_V_7_decision_function_fu_168_n_2),
        .\tmp_data_V_3_reg_260_reg[15]_1 (s_V_7_decision_function_fu_168_n_3),
        .\tmp_data_V_5_reg_270_reg[15] (comparison_17_fu_60_p2));
  design_1_myproject_axi_0_0_myproject_axi_decision_function_7 s_V_decision_function_7_fu_108
       (.CO(comparison_fu_48_p2_0),
        .DI({Q[15],comparison_fu_48_p2_carry_i_1_n_0}),
        .O({ap_return__81_carry_n_8,ap_return__81_carry_n_9,ap_return__81_carry_n_10,ap_return__81_carry_n_11,ap_return__81_carry_n_12,ap_return__81_carry_n_13,ap_return__81_carry_n_14,ap_return__81_carry_n_15}),
        .S({comparison_fu_48_p2_carry_i_2_n_0,comparison_fu_48_p2_carry_i_3_n_0,comparison_fu_48_p2_carry_i_4_n_0,comparison_fu_48_p2_carry_i_5_n_0,comparison_fu_48_p2_carry_i_6_n_0,comparison_fu_48_p2_carry_i_7_n_0,comparison_fu_48_p2_carry_i_8_n_0,comparison_fu_48_p2_carry_i_9_n_0}),
        .ap_return__0_carry__1(s_V_decision_function_7_fu_108_n_26),
        .ap_return__163_carry__0_i_18_0({s_V_decision_function_7_fu_108_n_9,s_V_decision_function_7_fu_108_n_10,s_V_decision_function_7_fu_108_n_11,s_V_decision_function_7_fu_108_n_12}),
        .ap_return__163_carry__0_i_28_0({s_V_decision_function_7_fu_108_n_43,s_V_decision_function_7_fu_108_n_44,s_V_decision_function_7_fu_108_n_45,s_V_decision_function_7_fu_108_n_46}),
        .ap_return__163_carry__1_i_19_0({s_V_decision_function_7_fu_108_n_15,s_V_decision_function_7_fu_108_n_16,s_V_decision_function_7_fu_108_n_17,s_V_decision_function_7_fu_108_n_18,s_V_decision_function_7_fu_108_n_19,s_V_decision_function_7_fu_108_n_20,s_V_decision_function_7_fu_108_n_21}),
        .ap_return__163_carry__1_i_32({s_V_decision_function_7_fu_108_n_47,s_V_decision_function_7_fu_108_n_48,s_V_decision_function_7_fu_108_n_49,s_V_decision_function_7_fu_108_n_50,s_V_decision_function_7_fu_108_n_51,s_V_decision_function_7_fu_108_n_52,s_V_decision_function_7_fu_108_n_53}),
        .ap_return__163_carry__2_i_17_0({s_V_decision_function_7_fu_108_n_27,s_V_decision_function_7_fu_108_n_28,s_V_decision_function_7_fu_108_n_29,s_V_decision_function_7_fu_108_n_30,s_V_decision_function_7_fu_108_n_31,s_V_decision_function_7_fu_108_n_32,s_V_decision_function_7_fu_108_n_33}),
        .ap_return__163_carry__2_i_8_0({ap_return__0_carry__2_n_9,ap_return__0_carry__2_n_10,ap_return__0_carry__2_n_11,ap_return__0_carry__2_n_12,ap_return__0_carry__2_n_13,ap_return__0_carry__2_n_14,ap_return__0_carry__2_n_15}),
        .ap_return__163_carry__2_i_8_1({ap_return__81_carry__2_n_9,ap_return__81_carry__2_n_10,ap_return__81_carry__2_n_11,ap_return__81_carry__2_n_12,ap_return__81_carry__2_n_13,ap_return__81_carry__2_n_14,ap_return__81_carry__2_n_15}),
        .ap_return__163_carry_i_13_0(comparison_9_fu_60_p2),
        .ap_return__163_carry_i_13_1(comparison_8_fu_54_p2),
        .ap_return__163_carry_i_22(s_V_decision_function_7_fu_108_n_35),
        .ap_return__163_carry_i_22_0({s_V_decision_function_7_fu_108_n_54,s_V_decision_function_7_fu_108_n_55,s_V_decision_function_7_fu_108_n_56,s_V_decision_function_7_fu_108_n_57,s_V_decision_function_7_fu_108_n_58,s_V_decision_function_7_fu_108_n_59,s_V_decision_function_7_fu_108_n_60,s_V_decision_function_7_fu_108_n_61}),
        .ap_return__163_carry_i_25({comparison_3_fu_54_p2_carry_i_1_n_0,comparison_3_fu_54_p2_carry_i_2_n_0,comparison_3_fu_54_p2_carry_i_3_n_0,comparison_3_fu_54_p2_carry_i_4_n_0,comparison_3_fu_54_p2_carry_i_5_n_0,comparison_3_fu_54_p2_carry_i_6_n_0,comparison_3_fu_54_p2_carry_i_7_n_0,comparison_3_fu_54_p2_carry_i_8_n_0}),
        .ap_return__163_carry_i_25_0({comparison_3_fu_54_p2_carry_i_9_n_0,comparison_3_fu_54_p2_carry_i_10_n_0,comparison_3_fu_54_p2_carry_i_11_n_0,comparison_3_fu_54_p2_carry_i_12_n_0,comparison_3_fu_54_p2_carry_i_13_n_0,comparison_3_fu_54_p2_carry_i_14_n_0,comparison_3_fu_54_p2_carry_i_15_n_0,comparison_3_fu_54_p2_carry_i_16_n_0}),
        .ap_return__163_carry_i_25_1({comparison_2_fu_60_p2_carry[15],comparison_2_fu_60_p2_carry_i_1_n_0}),
        .ap_return__163_carry_i_25_2({comparison_2_fu_60_p2_carry_i_2_n_0,comparison_2_fu_60_p2_carry_i_3_n_0,comparison_2_fu_60_p2_carry_i_4_n_0,comparison_2_fu_60_p2_carry_i_5_n_0,comparison_2_fu_60_p2_carry_i_6_n_0,comparison_2_fu_60_p2_carry_i_7_n_0,comparison_2_fu_60_p2_carry_i_8_n_0,comparison_2_fu_60_p2_carry_i_9_n_0}),
        .ap_return__163_carry_i_27_0({s_V_decision_function_7_fu_108_n_37,s_V_decision_function_7_fu_108_n_38,s_V_decision_function_7_fu_108_n_39,s_V_decision_function_7_fu_108_n_40,s_V_decision_function_7_fu_108_n_41,s_V_decision_function_7_fu_108_n_42}),
        .ap_return__81_carry({s_V_decision_function_7_fu_108_n_3,s_V_decision_function_7_fu_108_n_4,s_V_decision_function_7_fu_108_n_5,s_V_decision_function_7_fu_108_n_6,s_V_decision_function_7_fu_108_n_7}),
        .\out_local_V_reg_295_reg[31] ({ap_return__0_carry__1_n_8,ap_return__0_carry__1_n_9,ap_return__0_carry__1_n_10,ap_return__0_carry__1_n_11,ap_return__0_carry__1_n_12,ap_return__0_carry__1_n_13,ap_return__0_carry__1_n_14,ap_return__0_carry__1_n_15}),
        .\out_local_V_reg_295_reg[31]_0 ({ap_return__81_carry__1_n_8,ap_return__81_carry__1_n_9,ap_return__81_carry__1_n_10,ap_return__81_carry__1_n_11,ap_return__81_carry__1_n_12,ap_return__81_carry__1_n_13,ap_return__81_carry__1_n_14,ap_return__81_carry__1_n_15}),
        .\out_local_V_reg_295_reg[31]_1 (s_V_2_decision_function_5_fu_126_n_16),
        .\out_local_V_reg_295_reg[31]_10 (s_V_2_decision_function_5_fu_126_n_21),
        .\out_local_V_reg_295_reg[31]_11 (s_V_5_decision_function_2_fu_150_n_19),
        .\out_local_V_reg_295_reg[31]_12 (s_V_2_decision_function_5_fu_126_n_22),
        .\out_local_V_reg_295_reg[31]_13 (s_V_2_decision_function_5_fu_126_n_23),
        .\out_local_V_reg_295_reg[31]_2 (s_V_2_decision_function_5_fu_126_n_17),
        .\out_local_V_reg_295_reg[31]_3 (s_V_5_decision_function_2_fu_150_n_15),
        .\out_local_V_reg_295_reg[31]_4 (s_V_2_decision_function_5_fu_126_n_18),
        .\out_local_V_reg_295_reg[31]_5 (s_V_5_decision_function_2_fu_150_n_16),
        .\out_local_V_reg_295_reg[31]_6 (s_V_2_decision_function_5_fu_126_n_19),
        .\out_local_V_reg_295_reg[31]_7 (s_V_5_decision_function_2_fu_150_n_17),
        .\out_local_V_reg_295_reg[31]_8 (s_V_2_decision_function_5_fu_126_n_20),
        .\out_local_V_reg_295_reg[31]_9 (s_V_5_decision_function_2_fu_150_n_18),
        .\ret_V_reg_300_reg[7] ({ap_return__0_carry__0_n_8,ap_return__0_carry__0_n_9,ap_return__0_carry__0_n_10,ap_return__0_carry__0_n_11,ap_return__0_carry__0_n_12,ap_return__0_carry__0_n_13}),
        .\ret_V_reg_300_reg[7]_0 ({ap_return__81_carry__0_n_8,ap_return__81_carry__0_n_9,ap_return__81_carry__0_n_10,ap_return__81_carry__0_n_11,ap_return__81_carry__0_n_12,ap_return__81_carry__0_n_13}),
        .\ret_V_reg_300_reg[7]_1 (s_V_3_decision_function_4_fu_134_n_16),
        .\ret_V_reg_300_reg[7]_2 (s_V_3_decision_function_4_fu_134_n_17),
        .\ret_V_reg_300_reg[7]_3 (s_V_3_decision_function_4_fu_134_n_18),
        .\ret_V_reg_300_reg[7]_4 (s_V_3_decision_function_4_fu_134_n_19),
        .\ret_V_reg_300_reg[7]_5 (s_V_3_decision_function_4_fu_134_n_20),
        .\ret_V_reg_300_reg[7]_6 (s_V_3_decision_function_4_fu_134_n_21),
        .\tmp_data_V_2_reg_255_reg[15] (zext_ln148_fu_96_p1_3),
        .\tmp_data_V_2_reg_255_reg[15]_0 (comparison_3_fu_54_p2),
        .\tmp_data_V_2_reg_255_reg[15]_1 (s_V_decision_function_7_fu_108_n_8),
        .\tmp_data_V_2_reg_255_reg[15]_2 (s_V_decision_function_7_fu_108_n_13),
        .\tmp_data_V_2_reg_255_reg[15]_3 (s_V_decision_function_7_fu_108_n_24),
        .\tmp_data_V_2_reg_255_reg[15]_4 (s_V_decision_function_7_fu_108_n_25),
        .\tmp_data_V_2_reg_255_reg[15]_5 (s_V_decision_function_7_fu_108_n_36),
        .\tmp_data_V_2_reg_255_reg[15]_6 (s_V_decision_function_7_fu_108_n_62),
        .\tmp_data_V_6_reg_275_reg[15] (comparison_2_fu_60_p2),
        .\tmp_data_V_6_reg_275_reg[15]_0 (s_V_decision_function_7_fu_108_n_14),
        .\tmp_data_V_6_reg_275_reg[15]_1 (s_V_decision_function_7_fu_108_n_22),
        .\tmp_data_V_6_reg_275_reg[15]_2 (s_V_decision_function_7_fu_108_n_23),
        .\tmp_data_V_6_reg_275_reg[15]_3 (s_V_decision_function_7_fu_108_n_34),
        .\trunc_ln902_reg_307_reg[15] ({ap_return__0_carry_n_8,ap_return__0_carry_n_9,ap_return__0_carry_n_10,ap_return__0_carry_n_11,ap_return__0_carry_n_12,ap_return__0_carry_n_13,ap_return__0_carry_n_14,ap_return__0_carry_n_15}),
        .\trunc_ln902_reg_307_reg[15]_0 (s_V_3_decision_function_4_fu_134_n_29),
        .\trunc_ln902_reg_307_reg[15]_1 (s_V_3_decision_function_4_fu_134_n_22),
        .\trunc_ln902_reg_307_reg[15]_2 (s_V_3_decision_function_4_fu_134_n_13),
        .\trunc_ln902_reg_307_reg[7] (s_V_3_decision_function_4_fu_134_n_7),
        .\trunc_ln902_reg_307_reg[7]_0 (s_V_3_decision_function_4_fu_134_n_6),
        .\trunc_ln902_reg_307_reg[7]_1 (s_V_3_decision_function_4_fu_134_n_14),
        .\trunc_ln902_reg_307_reg[7]_2 (s_V_3_decision_function_4_fu_134_n_12),
        .\trunc_ln902_reg_307_reg[7]_3 (s_V_3_decision_function_4_fu_134_n_4),
        .\trunc_ln902_reg_307_reg[7]_4 (s_V_3_decision_function_4_fu_134_n_5));
endmodule

(* ORIG_REF_NAME = "myproject_axi_regslice_both" *) 
module design_1_myproject_axi_0_0_myproject_axi_regslice_both
   (\B_V_data_1_state_reg[1]_0 ,
    ap_rst_n_inv,
    in_r_TVALID_int_regslice,
    DI,
    S,
    \B_V_data_1_payload_A_reg[15]_0 ,
    D,
    \B_V_data_1_payload_A_reg[15]_1 ,
    \tmp_data_V_6_reg_275_reg[15] ,
    ap_clk,
    ap_rst_n,
    in_r_TVALID,
    E,
    B_V_data_1_sel_rd_reg_0,
    B_V_data_1_sel_rd_reg_1,
    B_V_data_1_sel_rd_reg_2,
    \B_V_data_1_state[1]_i_3_0 ,
    ap_CS_fsm_state10,
    \B_V_data_1_state[1]_i_3_1 ,
    \B_V_data_1_state[1]_i_3_2 ,
    \B_V_data_1_state[1]_i_3_3 ,
    Q,
    ap_return__81_carry__0_i_14,
    ap_return__81_carry__0_i_14_0,
    CO,
    in_r_TDATA);
  output \B_V_data_1_state_reg[1]_0 ;
  output ap_rst_n_inv;
  output in_r_TVALID_int_regslice;
  output [1:0]DI;
  output [7:0]S;
  output [7:0]\B_V_data_1_payload_A_reg[15]_0 ;
  output [15:0]D;
  output [7:0]\B_V_data_1_payload_A_reg[15]_1 ;
  output \tmp_data_V_6_reg_275_reg[15] ;
  input ap_clk;
  input ap_rst_n;
  input in_r_TVALID;
  input [0:0]E;
  input [0:0]B_V_data_1_sel_rd_reg_0;
  input [0:0]B_V_data_1_sel_rd_reg_1;
  input [0:0]B_V_data_1_sel_rd_reg_2;
  input [0:0]\B_V_data_1_state[1]_i_3_0 ;
  input ap_CS_fsm_state10;
  input [0:0]\B_V_data_1_state[1]_i_3_1 ;
  input [0:0]\B_V_data_1_state[1]_i_3_2 ;
  input [0:0]\B_V_data_1_state[1]_i_3_3 ;
  input [0:0]Q;
  input [0:0]ap_return__81_carry__0_i_14;
  input [0:0]ap_return__81_carry__0_i_14_0;
  input [0:0]CO;
  input [15:0]in_r_TDATA;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire [7:0]\B_V_data_1_payload_A_reg[15]_0 ;
  wire [7:0]\B_V_data_1_payload_A_reg[15]_1 ;
  wire \B_V_data_1_payload_A_reg_n_0_[0] ;
  wire \B_V_data_1_payload_A_reg_n_0_[10] ;
  wire \B_V_data_1_payload_A_reg_n_0_[11] ;
  wire \B_V_data_1_payload_A_reg_n_0_[12] ;
  wire \B_V_data_1_payload_A_reg_n_0_[13] ;
  wire \B_V_data_1_payload_A_reg_n_0_[14] ;
  wire \B_V_data_1_payload_A_reg_n_0_[15] ;
  wire \B_V_data_1_payload_A_reg_n_0_[1] ;
  wire \B_V_data_1_payload_A_reg_n_0_[2] ;
  wire \B_V_data_1_payload_A_reg_n_0_[3] ;
  wire \B_V_data_1_payload_A_reg_n_0_[4] ;
  wire \B_V_data_1_payload_A_reg_n_0_[5] ;
  wire \B_V_data_1_payload_A_reg_n_0_[6] ;
  wire \B_V_data_1_payload_A_reg_n_0_[7] ;
  wire \B_V_data_1_payload_A_reg_n_0_[8] ;
  wire \B_V_data_1_payload_A_reg_n_0_[9] ;
  wire \B_V_data_1_payload_B_reg_n_0_[0] ;
  wire \B_V_data_1_payload_B_reg_n_0_[10] ;
  wire \B_V_data_1_payload_B_reg_n_0_[11] ;
  wire \B_V_data_1_payload_B_reg_n_0_[12] ;
  wire \B_V_data_1_payload_B_reg_n_0_[13] ;
  wire \B_V_data_1_payload_B_reg_n_0_[14] ;
  wire \B_V_data_1_payload_B_reg_n_0_[15] ;
  wire \B_V_data_1_payload_B_reg_n_0_[1] ;
  wire \B_V_data_1_payload_B_reg_n_0_[2] ;
  wire \B_V_data_1_payload_B_reg_n_0_[3] ;
  wire \B_V_data_1_payload_B_reg_n_0_[4] ;
  wire \B_V_data_1_payload_B_reg_n_0_[5] ;
  wire \B_V_data_1_payload_B_reg_n_0_[6] ;
  wire \B_V_data_1_payload_B_reg_n_0_[7] ;
  wire \B_V_data_1_payload_B_reg_n_0_[8] ;
  wire \B_V_data_1_payload_B_reg_n_0_[9] ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1_n_0;
  wire [0:0]B_V_data_1_sel_rd_reg_0;
  wire [0:0]B_V_data_1_sel_rd_reg_1;
  wire [0:0]B_V_data_1_sel_rd_reg_2;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1_n_0 ;
  wire [0:0]\B_V_data_1_state[1]_i_3_0 ;
  wire [0:0]\B_V_data_1_state[1]_i_3_1 ;
  wire [0:0]\B_V_data_1_state[1]_i_3_2 ;
  wire [0:0]\B_V_data_1_state[1]_i_3_3 ;
  wire \B_V_data_1_state[1]_i_3_n_0 ;
  wire \B_V_data_1_state[1]_i_4_n_0 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [0:0]CO;
  wire [15:0]D;
  wire [1:0]DI;
  wire [0:0]E;
  wire [0:0]Q;
  wire [7:0]S;
  wire ap_CS_fsm_state10;
  wire ap_clk;
  wire [0:0]ap_return__81_carry__0_i_14;
  wire [0:0]ap_return__81_carry__0_i_14_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:0]in_r_TDATA;
  wire in_r_TVALID;
  wire in_r_TVALID_int_regslice;
  wire \tmp_data_V_6_reg_275_reg[15] ;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[15]_i_1 
       (.I0(in_r_TVALID_int_regslice),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_A));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_r_TDATA[0]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_r_TDATA[10]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_r_TDATA[11]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_r_TDATA[12]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_r_TDATA[13]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_r_TDATA[14]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_r_TDATA[15]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_r_TDATA[1]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_r_TDATA[2]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_r_TDATA[3]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_r_TDATA[4]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_r_TDATA[5]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_r_TDATA[6]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_r_TDATA[7]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_r_TDATA[8]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(in_r_TDATA[9]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \B_V_data_1_payload_B[15]_i_1 
       (.I0(in_r_TVALID_int_regslice),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_r_TDATA[0]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_r_TDATA[10]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_r_TDATA[11]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_r_TDATA[12]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_r_TDATA[13]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_r_TDATA[14]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_r_TDATA[15]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_r_TDATA[1]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_r_TDATA[2]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_r_TDATA[3]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_r_TDATA[4]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_r_TDATA[5]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_r_TDATA[6]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_r_TDATA[7]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_r_TDATA[8]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(in_r_TDATA[9]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1
       (.I0(in_r_TVALID_int_regslice),
        .I1(\B_V_data_1_state[1]_i_3_n_0 ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1_n_0),
        .Q(B_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1
       (.I0(in_r_TVALID),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDF008800)) 
    \B_V_data_1_state[0]_i_1 
       (.I0(\B_V_data_1_state_reg[1]_0 ),
        .I1(in_r_TVALID),
        .I2(\B_V_data_1_state[1]_i_3_n_0 ),
        .I3(ap_rst_n),
        .I4(in_r_TVALID_int_regslice),
        .O(\B_V_data_1_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \B_V_data_1_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFF5D)) 
    \B_V_data_1_state[1]_i_2 
       (.I0(in_r_TVALID_int_regslice),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(in_r_TVALID),
        .I3(\B_V_data_1_state[1]_i_3_n_0 ),
        .O(B_V_data_1_state));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \B_V_data_1_state[1]_i_3 
       (.I0(\B_V_data_1_state[1]_i_4_n_0 ),
        .I1(E),
        .I2(B_V_data_1_sel_rd_reg_0),
        .I3(B_V_data_1_sel_rd_reg_1),
        .I4(B_V_data_1_sel_rd_reg_2),
        .O(\B_V_data_1_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \B_V_data_1_state[1]_i_4 
       (.I0(\B_V_data_1_state[1]_i_3_0 ),
        .I1(ap_CS_fsm_state10),
        .I2(\B_V_data_1_state[1]_i_3_1 ),
        .I3(\B_V_data_1_state[1]_i_3_2 ),
        .I4(\B_V_data_1_state[1]_i_3_3 ),
        .I5(Q),
        .O(\B_V_data_1_state[1]_i_4_n_0 ));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1_n_0 ),
        .Q(in_r_TVALID_int_regslice),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h1F)) 
    ap_return__81_carry__0_i_21
       (.I0(ap_return__81_carry__0_i_14),
        .I1(ap_return__81_carry__0_i_14_0),
        .I2(CO),
        .O(\tmp_data_V_6_reg_275_reg[15] ));
  LUT3 #(
    .INIT(8'hB8)) 
    comparison_11_fu_60_p2_carry_i_1
       (.I0(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    comparison_11_fu_60_p2_carry_i_10
       (.I0(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h00053305)) 
    comparison_11_fu_60_p2_carry_i_2
       (.I0(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h00053305)) 
    comparison_11_fu_60_p2_carry_i_3
       (.I0(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .O(S[7]));
  LUT5 #(
    .INIT(32'h00053305)) 
    comparison_11_fu_60_p2_carry_i_4
       (.I0(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .O(S[6]));
  LUT5 #(
    .INIT(32'h00053305)) 
    comparison_11_fu_60_p2_carry_i_5
       (.I0(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .O(S[5]));
  LUT5 #(
    .INIT(32'h00053305)) 
    comparison_11_fu_60_p2_carry_i_6
       (.I0(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .O(S[4]));
  LUT5 #(
    .INIT(32'h00053305)) 
    comparison_11_fu_60_p2_carry_i_7
       (.I0(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h00053305)) 
    comparison_11_fu_60_p2_carry_i_8
       (.I0(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h00053305)) 
    comparison_11_fu_60_p2_carry_i_9
       (.I0(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    comparison_14_fu_62_p2_carry_i_1
       (.I0(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .O(\B_V_data_1_payload_A_reg[15]_1 [7]));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    comparison_14_fu_62_p2_carry_i_10
       (.I0(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .O(\B_V_data_1_payload_A_reg[15]_0 [6]));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    comparison_14_fu_62_p2_carry_i_11
       (.I0(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .O(\B_V_data_1_payload_A_reg[15]_0 [5]));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    comparison_14_fu_62_p2_carry_i_12
       (.I0(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .O(\B_V_data_1_payload_A_reg[15]_0 [4]));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    comparison_14_fu_62_p2_carry_i_13
       (.I0(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .O(\B_V_data_1_payload_A_reg[15]_0 [3]));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    comparison_14_fu_62_p2_carry_i_14
       (.I0(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .O(\B_V_data_1_payload_A_reg[15]_0 [2]));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    comparison_14_fu_62_p2_carry_i_15
       (.I0(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .O(\B_V_data_1_payload_A_reg[15]_0 [1]));
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    comparison_14_fu_62_p2_carry_i_16
       (.I0(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .O(\B_V_data_1_payload_A_reg[15]_0 [0]));
  LUT5 #(
    .INIT(32'h47CF77FF)) 
    comparison_14_fu_62_p2_carry_i_2
       (.I0(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .I3(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .I4(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .O(\B_V_data_1_payload_A_reg[15]_1 [6]));
  LUT5 #(
    .INIT(32'h47CF77FF)) 
    comparison_14_fu_62_p2_carry_i_3
       (.I0(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .I3(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .I4(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .O(\B_V_data_1_payload_A_reg[15]_1 [5]));
  LUT5 #(
    .INIT(32'h47CF77FF)) 
    comparison_14_fu_62_p2_carry_i_4
       (.I0(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .I3(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .I4(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .O(\B_V_data_1_payload_A_reg[15]_1 [4]));
  LUT5 #(
    .INIT(32'h47CF77FF)) 
    comparison_14_fu_62_p2_carry_i_5
       (.I0(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .I3(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I4(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .O(\B_V_data_1_payload_A_reg[15]_1 [3]));
  LUT5 #(
    .INIT(32'h47CF77FF)) 
    comparison_14_fu_62_p2_carry_i_6
       (.I0(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .I3(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .I4(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .O(\B_V_data_1_payload_A_reg[15]_1 [2]));
  LUT5 #(
    .INIT(32'h47CF77FF)) 
    comparison_14_fu_62_p2_carry_i_7
       (.I0(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .I3(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .I4(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .O(\B_V_data_1_payload_A_reg[15]_1 [1]));
  LUT3 #(
    .INIT(8'h1D)) 
    comparison_14_fu_62_p2_carry_i_8
       (.I0(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .O(\B_V_data_1_payload_A_reg[15]_1 [0]));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    comparison_14_fu_62_p2_carry_i_9
       (.I0(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .I1(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .I2(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .I3(B_V_data_1_sel),
        .I4(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .O(\B_V_data_1_payload_A_reg[15]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_1_reg_250[0]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_1_reg_250[10]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_1_reg_250[11]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_1_reg_250[12]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_1_reg_250[13]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_1_reg_250[14]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_1_reg_250[15]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_1_reg_250[1]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_1_reg_250[2]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_1_reg_250[3]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_1_reg_250[4]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_1_reg_250[5]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_1_reg_250[6]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_1_reg_250[7]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_1_reg_250[8]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_data_V_1_reg_250[9]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .I1(B_V_data_1_sel),
        .I2(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "myproject_axi_regslice_both" *) 
module design_1_myproject_axi_0_0_myproject_axi_regslice_both_0
   (\B_V_data_1_state_reg[0]_0 ,
    D,
    out_r_TDATA,
    ap_rst_n_inv,
    ap_clk,
    out_r_TREADY,
    ap_rst_n,
    Q,
    in_r_TVALID_int_regslice,
    ap_CS_fsm_state10,
    trunc_ln902_reg_307,
    p_0_in1_in,
    ret_V_reg_300);
  output \B_V_data_1_state_reg[0]_0 ;
  output [2:0]D;
  output [15:0]out_r_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input out_r_TREADY;
  input ap_rst_n;
  input [2:0]Q;
  input in_r_TVALID_int_regslice;
  input ap_CS_fsm_state10;
  input [15:0]trunc_ln902_reg_307;
  input p_0_in1_in;
  input [14:0]ret_V_reg_300;

  wire B_V_data_1_load_A;
  wire B_V_data_1_load_B;
  wire \B_V_data_1_payload_A[7]_i_2_n_0 ;
  wire \B_V_data_1_payload_A[7]_i_3_n_0 ;
  wire \B_V_data_1_payload_A[7]_i_4_n_0 ;
  wire \B_V_data_1_payload_A[7]_i_5_n_0 ;
  wire \B_V_data_1_payload_A_reg[15]_i_2_n_1 ;
  wire \B_V_data_1_payload_A_reg[15]_i_2_n_2 ;
  wire \B_V_data_1_payload_A_reg[15]_i_2_n_3 ;
  wire \B_V_data_1_payload_A_reg[15]_i_2_n_4 ;
  wire \B_V_data_1_payload_A_reg[15]_i_2_n_5 ;
  wire \B_V_data_1_payload_A_reg[15]_i_2_n_6 ;
  wire \B_V_data_1_payload_A_reg[15]_i_2_n_7 ;
  wire \B_V_data_1_payload_A_reg[7]_i_1_n_0 ;
  wire \B_V_data_1_payload_A_reg[7]_i_1_n_1 ;
  wire \B_V_data_1_payload_A_reg[7]_i_1_n_2 ;
  wire \B_V_data_1_payload_A_reg[7]_i_1_n_3 ;
  wire \B_V_data_1_payload_A_reg[7]_i_1_n_4 ;
  wire \B_V_data_1_payload_A_reg[7]_i_1_n_5 ;
  wire \B_V_data_1_payload_A_reg[7]_i_1_n_6 ;
  wire \B_V_data_1_payload_A_reg[7]_i_1_n_7 ;
  wire \B_V_data_1_payload_A_reg_n_0_[0] ;
  wire \B_V_data_1_payload_A_reg_n_0_[10] ;
  wire \B_V_data_1_payload_A_reg_n_0_[11] ;
  wire \B_V_data_1_payload_A_reg_n_0_[12] ;
  wire \B_V_data_1_payload_A_reg_n_0_[13] ;
  wire \B_V_data_1_payload_A_reg_n_0_[14] ;
  wire \B_V_data_1_payload_A_reg_n_0_[15] ;
  wire \B_V_data_1_payload_A_reg_n_0_[1] ;
  wire \B_V_data_1_payload_A_reg_n_0_[2] ;
  wire \B_V_data_1_payload_A_reg_n_0_[3] ;
  wire \B_V_data_1_payload_A_reg_n_0_[4] ;
  wire \B_V_data_1_payload_A_reg_n_0_[5] ;
  wire \B_V_data_1_payload_A_reg_n_0_[6] ;
  wire \B_V_data_1_payload_A_reg_n_0_[7] ;
  wire \B_V_data_1_payload_A_reg_n_0_[8] ;
  wire \B_V_data_1_payload_A_reg_n_0_[9] ;
  wire \B_V_data_1_payload_B_reg_n_0_[0] ;
  wire \B_V_data_1_payload_B_reg_n_0_[10] ;
  wire \B_V_data_1_payload_B_reg_n_0_[11] ;
  wire \B_V_data_1_payload_B_reg_n_0_[12] ;
  wire \B_V_data_1_payload_B_reg_n_0_[13] ;
  wire \B_V_data_1_payload_B_reg_n_0_[14] ;
  wire \B_V_data_1_payload_B_reg_n_0_[15] ;
  wire \B_V_data_1_payload_B_reg_n_0_[1] ;
  wire \B_V_data_1_payload_B_reg_n_0_[2] ;
  wire \B_V_data_1_payload_B_reg_n_0_[3] ;
  wire \B_V_data_1_payload_B_reg_n_0_[4] ;
  wire \B_V_data_1_payload_B_reg_n_0_[5] ;
  wire \B_V_data_1_payload_B_reg_n_0_[6] ;
  wire \B_V_data_1_payload_B_reg_n_0_[7] ;
  wire \B_V_data_1_payload_B_reg_n_0_[8] ;
  wire \B_V_data_1_payload_B_reg_n_0_[9] ;
  wire B_V_data_1_sel_rd_i_1__0_n_0;
  wire B_V_data_1_sel_rd_reg_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__0_n_0;
  wire [1:1]B_V_data_1_state;
  wire \B_V_data_1_state[0]_i_1__0_n_0 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire [2:0]D;
  wire [2:0]Q;
  wire ap_CS_fsm_state10;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire in_r_TVALID_int_regslice;
  wire [15:0]out_r_TDATA;
  wire out_r_TREADY;
  wire out_r_TREADY_int_regslice;
  wire p_0_in1_in;
  wire [15:0]ret_V_3_fu_238_p3;
  wire [14:0]ret_V_reg_300;
  wire [15:0]trunc_ln902_reg_307;
  wire [7:7]\NLW_B_V_data_1_payload_A_reg[15]_i_2_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[15]_i_1__0 
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(out_r_TREADY_int_regslice),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_A));
  LUT6 #(
    .INIT(64'h5555555555565656)) 
    \B_V_data_1_payload_A[7]_i_2 
       (.I0(ret_V_reg_300[0]),
        .I1(\B_V_data_1_payload_A[7]_i_3_n_0 ),
        .I2(\B_V_data_1_payload_A[7]_i_4_n_0 ),
        .I3(p_0_in1_in),
        .I4(trunc_ln902_reg_307[0]),
        .I5(\B_V_data_1_payload_A[7]_i_5_n_0 ),
        .O(\B_V_data_1_payload_A[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \B_V_data_1_payload_A[7]_i_3 
       (.I0(trunc_ln902_reg_307[6]),
        .I1(trunc_ln902_reg_307[9]),
        .I2(trunc_ln902_reg_307[10]),
        .I3(trunc_ln902_reg_307[8]),
        .I4(p_0_in1_in),
        .I5(trunc_ln902_reg_307[7]),
        .O(\B_V_data_1_payload_A[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \B_V_data_1_payload_A[7]_i_4 
       (.I0(trunc_ln902_reg_307[11]),
        .I1(trunc_ln902_reg_307[14]),
        .I2(trunc_ln902_reg_307[15]),
        .I3(trunc_ln902_reg_307[13]),
        .I4(p_0_in1_in),
        .I5(trunc_ln902_reg_307[12]),
        .O(\B_V_data_1_payload_A[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \B_V_data_1_payload_A[7]_i_5 
       (.I0(trunc_ln902_reg_307[1]),
        .I1(trunc_ln902_reg_307[4]),
        .I2(trunc_ln902_reg_307[5]),
        .I3(trunc_ln902_reg_307[3]),
        .I4(p_0_in1_in),
        .I5(trunc_ln902_reg_307[2]),
        .O(\B_V_data_1_payload_A[7]_i_5_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(ret_V_3_fu_238_p3[0]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(ret_V_3_fu_238_p3[10]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(ret_V_3_fu_238_p3[11]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(ret_V_3_fu_238_p3[12]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(ret_V_3_fu_238_p3[13]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(ret_V_3_fu_238_p3[14]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(ret_V_3_fu_238_p3[15]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \B_V_data_1_payload_A_reg[15]_i_2 
       (.CI(\B_V_data_1_payload_A_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_B_V_data_1_payload_A_reg[15]_i_2_CO_UNCONNECTED [7],\B_V_data_1_payload_A_reg[15]_i_2_n_1 ,\B_V_data_1_payload_A_reg[15]_i_2_n_2 ,\B_V_data_1_payload_A_reg[15]_i_2_n_3 ,\B_V_data_1_payload_A_reg[15]_i_2_n_4 ,\B_V_data_1_payload_A_reg[15]_i_2_n_5 ,\B_V_data_1_payload_A_reg[15]_i_2_n_6 ,\B_V_data_1_payload_A_reg[15]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(ret_V_3_fu_238_p3[15:8]),
        .S({p_0_in1_in,ret_V_reg_300[14:8]}));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(ret_V_3_fu_238_p3[1]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(ret_V_3_fu_238_p3[2]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(ret_V_3_fu_238_p3[3]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(ret_V_3_fu_238_p3[4]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(ret_V_3_fu_238_p3[5]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(ret_V_3_fu_238_p3[6]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(ret_V_3_fu_238_p3[7]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \B_V_data_1_payload_A_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\B_V_data_1_payload_A_reg[7]_i_1_n_0 ,\B_V_data_1_payload_A_reg[7]_i_1_n_1 ,\B_V_data_1_payload_A_reg[7]_i_1_n_2 ,\B_V_data_1_payload_A_reg[7]_i_1_n_3 ,\B_V_data_1_payload_A_reg[7]_i_1_n_4 ,\B_V_data_1_payload_A_reg[7]_i_1_n_5 ,\B_V_data_1_payload_A_reg[7]_i_1_n_6 ,\B_V_data_1_payload_A_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ret_V_reg_300[0]}),
        .O(ret_V_3_fu_238_p3[7:0]),
        .S({ret_V_reg_300[7:1],\B_V_data_1_payload_A[7]_i_2_n_0 }));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(ret_V_3_fu_238_p3[8]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_A),
        .D(ret_V_3_fu_238_p3[9]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \B_V_data_1_payload_B[15]_i_1__0 
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(out_r_TREADY_int_regslice),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(ret_V_3_fu_238_p3[0]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(ret_V_3_fu_238_p3[10]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(ret_V_3_fu_238_p3[11]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(ret_V_3_fu_238_p3[12]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(ret_V_3_fu_238_p3[13]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(ret_V_3_fu_238_p3[14]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(ret_V_3_fu_238_p3[15]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(ret_V_3_fu_238_p3[1]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(ret_V_3_fu_238_p3[2]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(ret_V_3_fu_238_p3[3]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(ret_V_3_fu_238_p3[4]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(ret_V_3_fu_238_p3[5]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(ret_V_3_fu_238_p3[6]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(ret_V_3_fu_238_p3[7]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(ret_V_3_fu_238_p3[8]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(ret_V_3_fu_238_p3[9]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__0
       (.I0(out_r_TREADY),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(B_V_data_1_sel_rd_i_1__0_n_0));
  FDRE B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__0_n_0),
        .Q(B_V_data_1_sel_rd_reg_n_0),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__0
       (.I0(Q[1]),
        .I1(out_r_TREADY_int_regslice),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__0_n_0));
  FDRE B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__0_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF020A0A0)) 
    \B_V_data_1_state[0]_i_1__0 
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(out_r_TREADY),
        .I2(ap_rst_n),
        .I3(Q[1]),
        .I4(out_r_TREADY_int_regslice),
        .O(\B_V_data_1_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \B_V_data_1_state[1]_i_1__0 
       (.I0(Q[1]),
        .I1(out_r_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .I3(out_r_TREADY),
        .O(B_V_data_1_state));
  FDRE \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__0_n_0 ),
        .Q(\B_V_data_1_state_reg[0]_0 ),
        .R(1'b0));
  FDRE \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_state),
        .Q(out_r_TREADY_int_regslice),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hD000FFFFD000D000)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(out_r_TREADY),
        .I2(out_r_TREADY_int_regslice),
        .I3(Q[2]),
        .I4(in_r_TVALID_int_regslice),
        .I5(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \ap_CS_fsm[10]_i_1 
       (.I0(out_r_TREADY_int_regslice),
        .I1(Q[1]),
        .I2(in_r_TVALID_int_regslice),
        .I3(ap_CS_fsm_state10),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hAAEACCCC)) 
    \ap_CS_fsm[11]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\B_V_data_1_state_reg[0]_0 ),
        .I3(out_r_TREADY),
        .I4(out_r_TREADY_int_regslice),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_r_TDATA[0]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .I1(B_V_data_1_sel_rd_reg_n_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .O(out_r_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_r_TDATA[10]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .I1(B_V_data_1_sel_rd_reg_n_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .O(out_r_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_r_TDATA[11]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .I1(B_V_data_1_sel_rd_reg_n_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .O(out_r_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_r_TDATA[12]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .I1(B_V_data_1_sel_rd_reg_n_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .O(out_r_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_r_TDATA[13]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .I1(B_V_data_1_sel_rd_reg_n_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .O(out_r_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_r_TDATA[14]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .I1(B_V_data_1_sel_rd_reg_n_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .O(out_r_TDATA[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_r_TDATA[15]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .I1(B_V_data_1_sel_rd_reg_n_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .O(out_r_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_r_TDATA[1]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .I1(B_V_data_1_sel_rd_reg_n_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .O(out_r_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_r_TDATA[2]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .I1(B_V_data_1_sel_rd_reg_n_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .O(out_r_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_r_TDATA[3]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .I1(B_V_data_1_sel_rd_reg_n_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .O(out_r_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_r_TDATA[4]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .I1(B_V_data_1_sel_rd_reg_n_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .O(out_r_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_r_TDATA[5]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .I1(B_V_data_1_sel_rd_reg_n_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .O(out_r_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_r_TDATA[6]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .I1(B_V_data_1_sel_rd_reg_n_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .O(out_r_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_r_TDATA[7]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I1(B_V_data_1_sel_rd_reg_n_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .O(out_r_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_r_TDATA[8]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .I1(B_V_data_1_sel_rd_reg_n_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .O(out_r_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_r_TDATA[9]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .I1(B_V_data_1_sel_rd_reg_n_0),
        .I2(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .O(out_r_TDATA[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
