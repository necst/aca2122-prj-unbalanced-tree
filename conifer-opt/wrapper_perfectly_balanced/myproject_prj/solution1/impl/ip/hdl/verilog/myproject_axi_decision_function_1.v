// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_decision_function_1 (
        ap_ready,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        p_read6,
        ap_return
);


output   ap_ready;
input  [31:0] p_read1;
input  [31:0] p_read2;
input  [31:0] p_read3;
input  [31:0] p_read4;
input  [31:0] p_read5;
input  [31:0] p_read6;
output  [31:0] ap_return;

wire   [0:0] comparison_fu_104_p2;
wire   [0:0] comparison_252_fu_110_p2;
wire   [0:0] comparison_253_fu_116_p2;
wire   [0:0] activation_315_fu_146_p2;
wire   [0:0] comparison_254_fu_122_p2;
wire   [0:0] activation_316_fu_152_p2;
wire   [0:0] comparison_255_fu_128_p2;
wire   [0:0] xor_ln195_fu_158_p2;
wire   [0:0] and_ln193_fu_182_p2;
wire   [0:0] comparison_256_fu_134_p2;
wire   [0:0] activation_317_fu_164_p2;
wire   [0:0] comparison_257_fu_140_p2;
wire   [0:0] and_ln193_7_fu_200_p2;
wire   [0:0] xor_ln195_2_fu_170_p2;
wire   [0:0] activation_fu_176_p2;
wire   [0:0] xor_ln208_fu_212_p2;
wire   [0:0] activation_318_fu_188_p2;
wire   [1:0] zext_ln208_fu_218_p1;
wire   [0:0] or_ln208_fu_222_p2;
wire   [1:0] select_ln208_fu_228_p3;
wire   [1:0] select_ln208_6_fu_236_p3;
wire   [0:0] activation_319_fu_194_p2;
wire   [2:0] zext_ln208_2_fu_244_p1;
wire   [0:0] or_ln208_4_fu_248_p2;
wire   [2:0] select_ln208_7_fu_254_p3;
wire   [0:0] or_ln208_5_fu_262_p2;
wire   [0:0] activation_320_fu_206_p2;
wire   [2:0] select_ln208_8_fu_268_p3;
wire   [0:0] or_ln208_6_fu_276_p2;
wire   [2:0] select_ln208_9_fu_282_p3;
wire   [2:0] agg_result_fu_298_p9;
wire   [31:0] agg_result_fu_298_p10;
wire    ap_ce_reg;

myproject_axi_mux_83_32_1_1 #(
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
mux_83_32_1_1_U73(
    .din0(32'd79283),
    .din1(32'd3379),
    .din2(32'd85111),
    .din3(32'd32460),
    .din4(32'd4294952904),
    .din5(32'd56899),
    .din6(32'd82879),
    .din7(32'd17656),
    .din8(agg_result_fu_298_p9),
    .dout(agg_result_fu_298_p10)
);

assign activation_315_fu_146_p2 = (comparison_fu_104_p2 ^ 1'd1);

assign activation_316_fu_152_p2 = (comparison_fu_104_p2 & comparison_252_fu_110_p2);

assign activation_317_fu_164_p2 = (comparison_253_fu_116_p2 & activation_315_fu_146_p2);

assign activation_318_fu_188_p2 = (comparison_fu_104_p2 & and_ln193_fu_182_p2);

assign activation_319_fu_194_p2 = (comparison_256_fu_134_p2 & activation_317_fu_164_p2);

assign activation_320_fu_206_p2 = (xor_ln195_2_fu_170_p2 & and_ln193_7_fu_200_p2);

assign activation_fu_176_p2 = (comparison_254_fu_122_p2 & activation_316_fu_152_p2);

assign agg_result_fu_298_p9 = ((or_ln208_6_fu_276_p2[0:0] == 1'b1) ? select_ln208_9_fu_282_p3 : 3'd7);

assign and_ln193_7_fu_200_p2 = (comparison_257_fu_140_p2 & activation_315_fu_146_p2);

assign and_ln193_fu_182_p2 = (xor_ln195_fu_158_p2 & comparison_255_fu_128_p2);

assign ap_ready = 1'b1;

assign ap_return = agg_result_fu_298_p10;

assign comparison_252_fu_110_p2 = (($signed(p_read6) < $signed(32'd8259)) ? 1'b1 : 1'b0);

assign comparison_253_fu_116_p2 = (($signed(p_read2) < $signed(32'd110593)) ? 1'b1 : 1'b0);

assign comparison_254_fu_122_p2 = (($signed(p_read4) < $signed(32'd4294877852)) ? 1'b1 : 1'b0);

assign comparison_255_fu_128_p2 = (($signed(p_read5) < $signed(32'd4294942162)) ? 1'b1 : 1'b0);

assign comparison_256_fu_134_p2 = (($signed(p_read1) < $signed(32'd100167)) ? 1'b1 : 1'b0);

assign comparison_257_fu_140_p2 = (($signed(p_read4) < $signed(32'd44197)) ? 1'b1 : 1'b0);

assign comparison_fu_104_p2 = (($signed(p_read3) < $signed(32'd4294908050)) ? 1'b1 : 1'b0);

assign or_ln208_4_fu_248_p2 = (comparison_fu_104_p2 | activation_319_fu_194_p2);

assign or_ln208_5_fu_262_p2 = (comparison_fu_104_p2 | activation_317_fu_164_p2);

assign or_ln208_6_fu_276_p2 = (or_ln208_5_fu_262_p2 | activation_320_fu_206_p2);

assign or_ln208_fu_222_p2 = (activation_318_fu_188_p2 | activation_316_fu_152_p2);

assign select_ln208_6_fu_236_p3 = ((or_ln208_fu_222_p2[0:0] == 1'b1) ? select_ln208_fu_228_p3 : 2'd3);

assign select_ln208_7_fu_254_p3 = ((comparison_fu_104_p2[0:0] == 1'b1) ? zext_ln208_2_fu_244_p1 : 3'd4);

assign select_ln208_8_fu_268_p3 = ((or_ln208_4_fu_248_p2[0:0] == 1'b1) ? select_ln208_7_fu_254_p3 : 3'd5);

assign select_ln208_9_fu_282_p3 = ((or_ln208_5_fu_262_p2[0:0] == 1'b1) ? select_ln208_8_fu_268_p3 : 3'd6);

assign select_ln208_fu_228_p3 = ((activation_316_fu_152_p2[0:0] == 1'b1) ? zext_ln208_fu_218_p1 : 2'd2);

assign xor_ln195_2_fu_170_p2 = (comparison_253_fu_116_p2 ^ 1'd1);

assign xor_ln195_fu_158_p2 = (comparison_252_fu_110_p2 ^ 1'd1);

assign xor_ln208_fu_212_p2 = (1'd1 ^ activation_fu_176_p2);

assign zext_ln208_2_fu_244_p1 = select_ln208_6_fu_236_p3;

assign zext_ln208_fu_218_p1 = xor_ln208_fu_212_p2;

endmodule //myproject_axi_decision_function_1