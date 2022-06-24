// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Jun 24 10:39:11 2022
// Host        : yavin running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/nghielme/PycharmProjects/conifer/examples/wrapper-3-20220623T092548Z-001/wrapper-3/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_myproject_axi_0_0/design_1_myproject_axi_0_0_stub.v
// Design      : design_1_myproject_axi_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "myproject_axi,Vivado 2020.1" *)
module design_1_myproject_axi_0_0(ap_local_block, ap_local_deadlock, ap_clk, 
  ap_rst_n, in_r_TVALID, in_r_TREADY, in_r_TDATA, in_r_TLAST, in_r_TKEEP, in_r_TSTRB, 
  out_r_TVALID, out_r_TREADY, out_r_TDATA, out_r_TLAST, out_r_TKEEP, out_r_TSTRB)
/* synthesis syn_black_box black_box_pad_pin="ap_local_block,ap_local_deadlock,ap_clk,ap_rst_n,in_r_TVALID,in_r_TREADY,in_r_TDATA[31:0],in_r_TLAST[0:0],in_r_TKEEP[3:0],in_r_TSTRB[3:0],out_r_TVALID,out_r_TREADY,out_r_TDATA[31:0],out_r_TLAST[0:0],out_r_TKEEP[3:0],out_r_TSTRB[3:0]" */;
  output ap_local_block;
  output ap_local_deadlock;
  input ap_clk;
  input ap_rst_n;
  input in_r_TVALID;
  output in_r_TREADY;
  input [31:0]in_r_TDATA;
  input [0:0]in_r_TLAST;
  input [3:0]in_r_TKEEP;
  input [3:0]in_r_TSTRB;
  output out_r_TVALID;
  input out_r_TREADY;
  output [31:0]out_r_TDATA;
  output [0:0]out_r_TLAST;
  output [3:0]out_r_TKEEP;
  output [3:0]out_r_TSTRB;
endmodule
