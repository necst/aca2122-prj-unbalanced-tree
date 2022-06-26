// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_decision_function_17 (
        ap_ready,
        p_read1,
        p_read2,
        p_read3,
        ap_return
);


output   ap_ready;
input  [31:0] p_read1;
input  [31:0] p_read2;
input  [31:0] p_read3;
output  [31:0] ap_return;

wire   [0:0] comparison_fu_56_p2;
wire   [0:0] comparison_32_fu_62_p2;
wire   [0:0] activation_fu_74_p2;
wire   [0:0] comparison_33_fu_68_p2;
wire   [0:0] and_ln193_fu_92_p2;
wire   [0:0] xor_ln195_fu_86_p2;
wire   [0:0] activation_43_fu_80_p2;
wire   [0:0] or_ln208_fu_104_p2;
wire   [0:0] activation_44_fu_98_p2;
wire   [1:0] zext_ln208_fu_110_p1;
wire   [0:0] or_ln208_12_fu_114_p2;
wire   [1:0] select_ln208_fu_120_p3;
wire   [1:0] agg_result_fu_136_p5;
wire   [31:0] agg_result_fu_136_p6;

myproject_axi_mux_42_32_1_1_x #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_x_U70(
    .din0(32'd69935),
    .din1(32'd28513),
    .din2(32'd27503),
    .din3(32'd4294949008),
    .din4(agg_result_fu_136_p5),
    .dout(agg_result_fu_136_p6)
);

assign activation_43_fu_80_p2 = (comparison_32_fu_62_p2 & activation_fu_74_p2);

assign activation_44_fu_98_p2 = (xor_ln195_fu_86_p2 & and_ln193_fu_92_p2);

assign activation_fu_74_p2 = (comparison_fu_56_p2 ^ 1'd1);

assign agg_result_fu_136_p5 = ((or_ln208_12_fu_114_p2[0:0] == 1'b1) ? select_ln208_fu_120_p3 : 2'd3);

assign and_ln193_fu_92_p2 = (comparison_33_fu_68_p2 & activation_fu_74_p2);

assign ap_ready = 1'b1;

assign ap_return = agg_result_fu_136_p6;

assign comparison_32_fu_62_p2 = (($signed(p_read1) < $signed(32'd4294912232)) ? 1'b1 : 1'b0);

assign comparison_33_fu_68_p2 = (($signed(p_read3) < $signed(32'd4294903613)) ? 1'b1 : 1'b0);

assign comparison_fu_56_p2 = (($signed(p_read2) < $signed(32'd4294862406)) ? 1'b1 : 1'b0);

assign or_ln208_12_fu_114_p2 = (or_ln208_fu_104_p2 | activation_44_fu_98_p2);

assign or_ln208_fu_104_p2 = (comparison_fu_56_p2 | activation_43_fu_80_p2);

assign select_ln208_fu_120_p3 = ((or_ln208_fu_104_p2[0:0] == 1'b1) ? zext_ln208_fu_110_p1 : 2'd2);

assign xor_ln195_fu_86_p2 = (comparison_32_fu_62_p2 ^ 1'd1);

assign zext_ln208_fu_110_p1 = activation_fu_74_p2;

endmodule //myproject_axi_decision_function_17
