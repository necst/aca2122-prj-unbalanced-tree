// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_decision_function_25 (
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
wire   [0:0] comparison_161_fu_110_p2;
wire   [0:0] comparison_162_fu_116_p2;
wire   [0:0] activation_204_fu_146_p2;
wire   [0:0] comparison_163_fu_122_p2;
wire   [0:0] activation_205_fu_152_p2;
wire   [0:0] comparison_164_fu_128_p2;
wire   [0:0] xor_ln195_fu_158_p2;
wire   [0:0] and_ln193_fu_182_p2;
wire   [0:0] comparison_165_fu_134_p2;
wire   [0:0] activation_206_fu_164_p2;
wire   [0:0] comparison_166_fu_140_p2;
wire   [0:0] and_ln193_83_fu_200_p2;
wire   [0:0] xor_ln195_22_fu_170_p2;
wire   [0:0] activation_fu_176_p2;
wire   [0:0] xor_ln208_fu_212_p2;
wire   [0:0] activation_207_fu_188_p2;
wire   [1:0] zext_ln208_fu_218_p1;
wire   [0:0] or_ln208_fu_222_p2;
wire   [1:0] select_ln208_fu_228_p3;
wire   [1:0] select_ln208_110_fu_236_p3;
wire   [0:0] activation_208_fu_194_p2;
wire   [2:0] zext_ln208_25_fu_244_p1;
wire   [0:0] or_ln208_78_fu_248_p2;
wire   [2:0] select_ln208_111_fu_254_p3;
wire   [0:0] or_ln208_79_fu_262_p2;
wire   [0:0] activation_209_fu_206_p2;
wire   [2:0] select_ln208_112_fu_268_p3;
wire   [0:0] or_ln208_80_fu_276_p2;
wire   [2:0] select_ln208_113_fu_282_p3;
wire   [2:0] agg_result_fu_298_p9;
wire   [31:0] agg_result_fu_298_p10;
wire    ap_ce_reg;

myproject_axi_mux_83_32_1_1_x9 #(
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
mux_83_32_1_1_x9_U208(
    .din0(32'd38329),
    .din1(32'd4294957598),
    .din2(32'd56074),
    .din3(32'd6323),
    .din4(32'd66129),
    .din5(32'd4242),
    .din6(32'd38007),
    .din7(32'd4294963929),
    .din8(agg_result_fu_298_p9),
    .dout(agg_result_fu_298_p10)
);

assign activation_204_fu_146_p2 = (comparison_fu_104_p2 ^ 1'd1);

assign activation_205_fu_152_p2 = (comparison_fu_104_p2 & comparison_161_fu_110_p2);

assign activation_206_fu_164_p2 = (comparison_162_fu_116_p2 & activation_204_fu_146_p2);

assign activation_207_fu_188_p2 = (comparison_fu_104_p2 & and_ln193_fu_182_p2);

assign activation_208_fu_194_p2 = (comparison_165_fu_134_p2 & activation_206_fu_164_p2);

assign activation_209_fu_206_p2 = (xor_ln195_22_fu_170_p2 & and_ln193_83_fu_200_p2);

assign activation_fu_176_p2 = (comparison_163_fu_122_p2 & activation_205_fu_152_p2);

assign agg_result_fu_298_p9 = ((or_ln208_80_fu_276_p2[0:0] == 1'b1) ? select_ln208_113_fu_282_p3 : 3'd7);

assign and_ln193_83_fu_200_p2 = (comparison_166_fu_140_p2 & activation_204_fu_146_p2);

assign and_ln193_fu_182_p2 = (xor_ln195_fu_158_p2 & comparison_164_fu_128_p2);

assign ap_ready = 1'b1;

assign ap_return = agg_result_fu_298_p10;

assign comparison_161_fu_110_p2 = (($signed(p_read5) < $signed(32'd109904)) ? 1'b1 : 1'b0);

assign comparison_162_fu_116_p2 = (($signed(p_read1) < $signed(32'd4294914927)) ? 1'b1 : 1'b0);

assign comparison_163_fu_122_p2 = (($signed(p_read3) < $signed(32'd4294853757)) ? 1'b1 : 1'b0);

assign comparison_164_fu_128_p2 = (($signed(p_read6) < $signed(32'd49924)) ? 1'b1 : 1'b0);

assign comparison_165_fu_134_p2 = (($signed(p_read6) < $signed(32'd21614)) ? 1'b1 : 1'b0);

assign comparison_166_fu_140_p2 = (($signed(p_read2) < $signed(32'd4294932558)) ? 1'b1 : 1'b0);

assign comparison_fu_104_p2 = (($signed(p_read4) < $signed(32'd49672)) ? 1'b1 : 1'b0);

assign or_ln208_78_fu_248_p2 = (comparison_fu_104_p2 | activation_208_fu_194_p2);

assign or_ln208_79_fu_262_p2 = (comparison_fu_104_p2 | activation_206_fu_164_p2);

assign or_ln208_80_fu_276_p2 = (or_ln208_79_fu_262_p2 | activation_209_fu_206_p2);

assign or_ln208_fu_222_p2 = (activation_207_fu_188_p2 | activation_205_fu_152_p2);

assign select_ln208_110_fu_236_p3 = ((or_ln208_fu_222_p2[0:0] == 1'b1) ? select_ln208_fu_228_p3 : 2'd3);

assign select_ln208_111_fu_254_p3 = ((comparison_fu_104_p2[0:0] == 1'b1) ? zext_ln208_25_fu_244_p1 : 3'd4);

assign select_ln208_112_fu_268_p3 = ((or_ln208_78_fu_248_p2[0:0] == 1'b1) ? select_ln208_111_fu_254_p3 : 3'd5);

assign select_ln208_113_fu_282_p3 = ((or_ln208_79_fu_262_p2[0:0] == 1'b1) ? select_ln208_112_fu_268_p3 : 3'd6);

assign select_ln208_fu_228_p3 = ((activation_205_fu_152_p2[0:0] == 1'b1) ? zext_ln208_fu_218_p1 : 2'd2);

assign xor_ln195_22_fu_170_p2 = (comparison_162_fu_116_p2 ^ 1'd1);

assign xor_ln195_fu_158_p2 = (comparison_161_fu_110_p2 ^ 1'd1);

assign xor_ln208_fu_212_p2 = (1'd1 ^ activation_fu_176_p2);

assign zext_ln208_25_fu_244_p1 = select_ln208_110_fu_236_p3;

assign zext_ln208_fu_218_p1 = xor_ln208_fu_212_p2;

endmodule //myproject_axi_decision_function_25