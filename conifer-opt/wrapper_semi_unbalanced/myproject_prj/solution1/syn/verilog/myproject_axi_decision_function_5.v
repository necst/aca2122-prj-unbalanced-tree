// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_decision_function_5 (
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

wire   [0:0] comparison_fu_68_p2;
wire   [0:0] comparison_11_fu_74_p2;
wire   [0:0] comparison_12_fu_80_p2;
wire   [0:0] xor_ln195_2_fu_116_p2;
wire   [0:0] activation_21_fu_98_p2;
wire   [0:0] comparison_13_fu_86_p2;
wire   [0:0] xor_ln195_fu_110_p2;
wire   [0:0] and_ln193_fu_128_p2;
wire   [0:0] comparison_14_fu_92_p2;
wire   [0:0] and_ln193_7_fu_140_p2;
wire   [0:0] activation_fu_104_p2;
wire   [0:0] activation_22_fu_122_p2;
wire   [0:0] xor_ln208_fu_158_p2;
wire   [0:0] or_ln208_fu_152_p2;
wire   [0:0] activation_23_fu_134_p2;
wire   [1:0] zext_ln208_fu_164_p1;
wire   [0:0] or_ln208_6_fu_168_p2;
wire   [1:0] select_ln208_fu_174_p3;
wire   [1:0] select_ln208_6_fu_188_p3;
wire   [0:0] or_ln208_7_fu_182_p2;
wire   [0:0] activation_24_fu_146_p2;
wire   [2:0] zext_ln208_2_fu_196_p1;
wire   [0:0] or_ln208_8_fu_200_p2;
wire   [2:0] select_ln208_7_fu_206_p3;
wire   [2:0] agg_result_fu_222_p7;
wire   [31:0] agg_result_fu_222_p8;
wire    ap_ce_reg;

myproject_axi_mux_63_32_1_1_x #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 3 ),
    .dout_WIDTH( 32 ))
mux_63_32_1_1_x_U44(
    .din0(32'd154707),
    .din1(32'd108796),
    .din2(32'd134598),
    .din3(32'd43273),
    .din4(32'd34733),
    .din5(32'd4294940695),
    .din6(agg_result_fu_222_p7),
    .dout(agg_result_fu_222_p8)
);

assign activation_21_fu_98_p2 = (comparison_fu_68_p2 ^ 1'd1);

assign activation_22_fu_122_p2 = (xor_ln195_2_fu_116_p2 & activation_21_fu_98_p2);

assign activation_23_fu_134_p2 = (comparison_fu_68_p2 & and_ln193_fu_128_p2);

assign activation_24_fu_146_p2 = (comparison_12_fu_80_p2 & and_ln193_7_fu_140_p2);

assign activation_fu_104_p2 = (comparison_fu_68_p2 & comparison_11_fu_74_p2);

assign agg_result_fu_222_p7 = ((or_ln208_8_fu_200_p2[0:0] == 1'b1) ? select_ln208_7_fu_206_p3 : 3'd5);

assign and_ln193_7_fu_140_p2 = (comparison_14_fu_92_p2 & activation_21_fu_98_p2);

assign and_ln193_fu_128_p2 = (xor_ln195_fu_110_p2 & comparison_13_fu_86_p2);

assign ap_ready = 1'b1;

assign ap_return = agg_result_fu_222_p8;

assign comparison_11_fu_74_p2 = (($signed(p_read1) < $signed(32'd4294870533)) ? 1'b1 : 1'b0);

assign comparison_12_fu_80_p2 = (($signed(p_read3) < $signed(32'd116425)) ? 1'b1 : 1'b0);

assign comparison_13_fu_86_p2 = (($signed(p_read2) < $signed(32'd4294825111)) ? 1'b1 : 1'b0);

assign comparison_14_fu_92_p2 = (($signed(p_read3) < $signed(32'd4294913814)) ? 1'b1 : 1'b0);

assign comparison_fu_68_p2 = (($signed(p_read2) < $signed(32'd4294896007)) ? 1'b1 : 1'b0);

assign or_ln208_6_fu_168_p2 = (or_ln208_fu_152_p2 | activation_23_fu_134_p2);

assign or_ln208_7_fu_182_p2 = (comparison_fu_68_p2 | activation_22_fu_122_p2);

assign or_ln208_8_fu_200_p2 = (or_ln208_7_fu_182_p2 | activation_24_fu_146_p2);

assign or_ln208_fu_152_p2 = (activation_fu_104_p2 | activation_22_fu_122_p2);

assign select_ln208_6_fu_188_p3 = ((or_ln208_6_fu_168_p2[0:0] == 1'b1) ? select_ln208_fu_174_p3 : 2'd3);

assign select_ln208_7_fu_206_p3 = ((or_ln208_7_fu_182_p2[0:0] == 1'b1) ? zext_ln208_2_fu_196_p1 : 3'd4);

assign select_ln208_fu_174_p3 = ((or_ln208_fu_152_p2[0:0] == 1'b1) ? zext_ln208_fu_164_p1 : 2'd2);

assign xor_ln195_2_fu_116_p2 = (comparison_12_fu_80_p2 ^ 1'd1);

assign xor_ln195_fu_110_p2 = (comparison_11_fu_74_p2 ^ 1'd1);

assign xor_ln208_fu_158_p2 = (1'd1 ^ activation_fu_104_p2);

assign zext_ln208_2_fu_196_p1 = select_ln208_6_fu_188_p3;

assign zext_ln208_fu_164_p1 = xor_ln208_fu_158_p2;

endmodule //myproject_axi_decision_function_5
