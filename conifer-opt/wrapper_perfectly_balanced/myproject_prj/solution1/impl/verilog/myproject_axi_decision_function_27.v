// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_decision_function_27 (
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

wire   [0:0] comparison_fu_90_p2;
wire   [0:0] comparison_150_fu_96_p2;
wire   [0:0] comparison_151_fu_102_p2;
wire   [0:0] activation_190_fu_126_p2;
wire   [0:0] comparison_152_fu_108_p2;
wire   [0:0] activation_191_fu_132_p2;
wire   [0:0] comparison_153_fu_114_p2;
wire   [0:0] xor_ln195_fu_138_p2;
wire   [0:0] and_ln193_fu_162_p2;
wire   [0:0] comparison_154_fu_120_p2;
wire   [0:0] and_ln193_86_fu_174_p2;
wire   [0:0] xor_ln195_24_fu_150_p2;
wire   [0:0] activation_fu_144_p2;
wire   [0:0] activation_192_fu_156_p2;
wire   [0:0] or_ln208_90_fu_192_p2;
wire   [0:0] or_ln208_fu_186_p2;
wire   [1:0] zext_ln208_fu_198_p1;
wire   [0:0] or_ln208_86_fu_202_p2;
wire   [0:0] activation_193_fu_168_p2;
wire   [1:0] select_ln208_fu_208_p3;
wire   [1:0] select_ln208_111_fu_222_p3;
wire   [0:0] or_ln208_87_fu_216_p2;
wire   [2:0] zext_ln208_26_fu_230_p1;
wire   [0:0] or_ln208_88_fu_234_p2;
wire   [0:0] activation_194_fu_180_p2;
wire   [2:0] select_ln208_112_fu_240_p3;
wire   [0:0] or_ln208_89_fu_248_p2;
wire   [2:0] select_ln208_113_fu_254_p3;
wire   [2:0] agg_result_fu_270_p8;
wire   [31:0] agg_result_fu_270_p9;
wire    ap_ce_reg;

myproject_axi_mux_73_32_1_1_x4 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 3 ),
    .dout_WIDTH( 32 ))
mux_73_32_1_1_x4_U201(
    .din0(32'd4294966126),
    .din1(32'd4294960714),
    .din2(32'd27548),
    .din3(32'd4294961954),
    .din4(32'd48743),
    .din5(32'd57430),
    .din6(32'd5147),
    .din7(agg_result_fu_270_p8),
    .dout(agg_result_fu_270_p9)
);

assign activation_190_fu_126_p2 = (comparison_fu_90_p2 ^ 1'd1);

assign activation_191_fu_132_p2 = (comparison_fu_90_p2 & comparison_150_fu_96_p2);

assign activation_192_fu_156_p2 = (comparison_152_fu_108_p2 & activation_191_fu_132_p2);

assign activation_193_fu_168_p2 = (comparison_fu_90_p2 & and_ln193_fu_162_p2);

assign activation_194_fu_180_p2 = (xor_ln195_24_fu_150_p2 & and_ln193_86_fu_174_p2);

assign activation_fu_144_p2 = (comparison_151_fu_102_p2 & activation_190_fu_126_p2);

assign agg_result_fu_270_p8 = ((or_ln208_89_fu_248_p2[0:0] == 1'b1) ? select_ln208_113_fu_254_p3 : 3'd6);

assign and_ln193_86_fu_174_p2 = (comparison_154_fu_120_p2 & activation_190_fu_126_p2);

assign and_ln193_fu_162_p2 = (xor_ln195_fu_138_p2 & comparison_153_fu_114_p2);

assign ap_ready = 1'b1;

assign ap_return = agg_result_fu_270_p9;

assign comparison_150_fu_96_p2 = (($signed(p_read1) < $signed(32'd109840)) ? 1'b1 : 1'b0);

assign comparison_151_fu_102_p2 = (($signed(p_read3) < $signed(32'd4294900861)) ? 1'b1 : 1'b0);

assign comparison_152_fu_108_p2 = (($signed(p_read2) < $signed(32'd87072)) ? 1'b1 : 1'b0);

assign comparison_153_fu_114_p2 = (($signed(p_read5) < $signed(32'd4294922919)) ? 1'b1 : 1'b0);

assign comparison_154_fu_120_p2 = (($signed(p_read1) < $signed(32'd47741)) ? 1'b1 : 1'b0);

assign comparison_fu_90_p2 = (($signed(p_read4) < $signed(32'd97930)) ? 1'b1 : 1'b0);

assign or_ln208_86_fu_202_p2 = (activation_fu_144_p2 | activation_191_fu_132_p2);

assign or_ln208_87_fu_216_p2 = (or_ln208_86_fu_202_p2 | activation_193_fu_168_p2);

assign or_ln208_88_fu_234_p2 = (comparison_fu_90_p2 | activation_fu_144_p2);

assign or_ln208_89_fu_248_p2 = (or_ln208_88_fu_234_p2 | activation_194_fu_180_p2);

assign or_ln208_90_fu_192_p2 = (xor_ln195_24_fu_150_p2 | comparison_fu_90_p2);

assign or_ln208_fu_186_p2 = (activation_fu_144_p2 | activation_192_fu_156_p2);

assign select_ln208_111_fu_222_p3 = ((or_ln208_86_fu_202_p2[0:0] == 1'b1) ? select_ln208_fu_208_p3 : 2'd3);

assign select_ln208_112_fu_240_p3 = ((or_ln208_87_fu_216_p2[0:0] == 1'b1) ? zext_ln208_26_fu_230_p1 : 3'd4);

assign select_ln208_113_fu_254_p3 = ((or_ln208_88_fu_234_p2[0:0] == 1'b1) ? select_ln208_112_fu_240_p3 : 3'd5);

assign select_ln208_fu_208_p3 = ((or_ln208_fu_186_p2[0:0] == 1'b1) ? zext_ln208_fu_198_p1 : 2'd2);

assign xor_ln195_24_fu_150_p2 = (comparison_151_fu_102_p2 ^ 1'd1);

assign xor_ln195_fu_138_p2 = (comparison_150_fu_96_p2 ^ 1'd1);

assign zext_ln208_26_fu_230_p1 = select_ln208_111_fu_222_p3;

assign zext_ln208_fu_198_p1 = or_ln208_90_fu_192_p2;

endmodule //myproject_axi_decision_function_27
