// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_decision_function_8 (
        ap_ready,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        ap_return
);


output   ap_ready;
input  [31:0] p_read1;
input  [31:0] p_read2;
input  [31:0] p_read3;
input  [31:0] p_read4;
input  [31:0] p_read5;
output  [31:0] ap_return;

wire   [0:0] comparison_fu_96_p2;
wire   [0:0] comparison_7_fu_102_p2;
wire   [0:0] comparison_8_fu_108_p2;
wire   [0:0] activation_9_fu_138_p2;
wire   [0:0] comparison_9_fu_114_p2;
wire   [0:0] activation_10_fu_144_p2;
wire   [0:0] comparison_10_fu_120_p2;
wire   [0:0] xor_ln195_fu_150_p2;
wire   [0:0] and_ln193_fu_174_p2;
wire   [0:0] comparison_11_fu_126_p2;
wire   [0:0] activation_11_fu_156_p2;
wire   [0:0] comparison_12_fu_132_p2;
wire   [0:0] and_ln193_13_fu_192_p2;
wire   [0:0] xor_ln195_4_fu_162_p2;
wire   [0:0] activation_fu_168_p2;
wire   [0:0] xor_ln208_fu_204_p2;
wire   [0:0] activation_12_fu_180_p2;
wire   [1:0] zext_ln208_fu_210_p1;
wire   [0:0] or_ln208_fu_214_p2;
wire   [1:0] select_ln208_fu_220_p3;
wire   [1:0] select_ln208_6_fu_228_p3;
wire   [0:0] activation_13_fu_186_p2;
wire   [2:0] zext_ln208_2_fu_236_p1;
wire   [0:0] or_ln208_4_fu_240_p2;
wire   [2:0] select_ln208_7_fu_246_p3;
wire   [0:0] or_ln208_5_fu_254_p2;
wire   [0:0] activation_14_fu_198_p2;
wire   [2:0] select_ln208_8_fu_260_p3;
wire   [0:0] or_ln208_6_fu_268_p2;
wire   [2:0] select_ln208_9_fu_274_p3;
wire   [2:0] agg_result_fu_290_p9;
wire   [31:0] agg_result_fu_290_p10;
wire    ap_ce_reg;

myproject_axi_mux_83_32_1_1_x16 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 3 ),
    .dout_WIDTH( 32 ))
mux_83_32_1_1_x16_U312(
    .din0(32'd27355),
    .din1(32'd4294953483),
    .din2(32'd38726),
    .din3(32'd4294962824),
    .din4(32'd4294960740),
    .din5(32'd29928),
    .din6(32'd5388),
    .din7(32'd29954),
    .din8(agg_result_fu_290_p9),
    .dout(agg_result_fu_290_p10)
);

assign activation_10_fu_144_p2 = (comparison_fu_96_p2 & comparison_7_fu_102_p2);

assign activation_11_fu_156_p2 = (comparison_8_fu_108_p2 & activation_9_fu_138_p2);

assign activation_12_fu_180_p2 = (comparison_fu_96_p2 & and_ln193_fu_174_p2);

assign activation_13_fu_186_p2 = (comparison_11_fu_126_p2 & activation_11_fu_156_p2);

assign activation_14_fu_198_p2 = (xor_ln195_4_fu_162_p2 & and_ln193_13_fu_192_p2);

assign activation_9_fu_138_p2 = (comparison_fu_96_p2 ^ 1'd1);

assign activation_fu_168_p2 = (comparison_9_fu_114_p2 & activation_10_fu_144_p2);

assign agg_result_fu_290_p9 = ((or_ln208_6_fu_268_p2[0:0] == 1'b1) ? select_ln208_9_fu_274_p3 : 3'd7);

assign and_ln193_13_fu_192_p2 = (comparison_12_fu_132_p2 & activation_9_fu_138_p2);

assign and_ln193_fu_174_p2 = (xor_ln195_fu_150_p2 & comparison_10_fu_120_p2);

assign ap_ready = 1'b1;

assign ap_return = agg_result_fu_290_p10;

assign comparison_10_fu_120_p2 = (($signed(p_read2) < $signed(32'd38359)) ? 1'b1 : 1'b0);

assign comparison_11_fu_126_p2 = (($signed(p_read1) < $signed(32'd111335)) ? 1'b1 : 1'b0);

assign comparison_12_fu_132_p2 = (($signed(p_read1) < $signed(32'd4294905155)) ? 1'b1 : 1'b0);

assign comparison_7_fu_102_p2 = (($signed(p_read4) < $signed(32'd4294957640)) ? 1'b1 : 1'b0);

assign comparison_8_fu_108_p2 = (($signed(p_read3) < $signed(32'd91579)) ? 1'b1 : 1'b0);

assign comparison_9_fu_114_p2 = (($signed(p_read5) < $signed(32'd4294925547)) ? 1'b1 : 1'b0);

assign comparison_fu_96_p2 = (($signed(p_read3) < $signed(32'd4294912755)) ? 1'b1 : 1'b0);

assign or_ln208_4_fu_240_p2 = (comparison_fu_96_p2 | activation_13_fu_186_p2);

assign or_ln208_5_fu_254_p2 = (comparison_fu_96_p2 | activation_11_fu_156_p2);

assign or_ln208_6_fu_268_p2 = (or_ln208_5_fu_254_p2 | activation_14_fu_198_p2);

assign or_ln208_fu_214_p2 = (activation_12_fu_180_p2 | activation_10_fu_144_p2);

assign select_ln208_6_fu_228_p3 = ((or_ln208_fu_214_p2[0:0] == 1'b1) ? select_ln208_fu_220_p3 : 2'd3);

assign select_ln208_7_fu_246_p3 = ((comparison_fu_96_p2[0:0] == 1'b1) ? zext_ln208_2_fu_236_p1 : 3'd4);

assign select_ln208_8_fu_260_p3 = ((or_ln208_4_fu_240_p2[0:0] == 1'b1) ? select_ln208_7_fu_246_p3 : 3'd5);

assign select_ln208_9_fu_274_p3 = ((or_ln208_5_fu_254_p2[0:0] == 1'b1) ? select_ln208_8_fu_260_p3 : 3'd6);

assign select_ln208_fu_220_p3 = ((activation_10_fu_144_p2[0:0] == 1'b1) ? zext_ln208_fu_210_p1 : 2'd2);

assign xor_ln195_4_fu_162_p2 = (comparison_8_fu_108_p2 ^ 1'd1);

assign xor_ln195_fu_150_p2 = (comparison_7_fu_102_p2 ^ 1'd1);

assign xor_ln208_fu_204_p2 = (1'd1 ^ activation_fu_168_p2);

assign zext_ln208_2_fu_236_p1 = select_ln208_6_fu_228_p3;

assign zext_ln208_fu_210_p1 = xor_ln208_fu_204_p2;

endmodule //myproject_axi_decision_function_8