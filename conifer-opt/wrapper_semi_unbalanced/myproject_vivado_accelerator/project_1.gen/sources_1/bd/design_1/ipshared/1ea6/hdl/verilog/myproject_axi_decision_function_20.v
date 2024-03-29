// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_decision_function_20 (
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

wire   [0:0] comparison_fu_62_p2;
wire   [0:0] comparison_33_fu_68_p2;
wire   [0:0] comparison_34_fu_74_p2;
wire   [0:0] comparison_35_fu_80_p2;
wire   [0:0] xor_ln195_fu_92_p2;
wire   [0:0] and_ln193_fu_104_p2;
wire   [0:0] activation_58_fu_98_p2;
wire   [0:0] activation_fu_86_p2;
wire   [0:0] or_ln208_fu_116_p2;
wire   [1:0] zext_ln208_fu_122_p1;
wire   [0:0] or_ln208_16_fu_126_p2;
wire   [0:0] activation_59_fu_110_p2;
wire   [1:0] select_ln208_fu_132_p3;
wire   [1:0] select_ln208_18_fu_146_p3;
wire   [0:0] or_ln208_17_fu_140_p2;
wire   [2:0] zext_ln208_6_fu_154_p1;
wire   [2:0] agg_result_fu_166_p6;
wire   [31:0] agg_result_fu_166_p7;
wire    ap_ce_reg;

myproject_axi_mux_53_32_1_1_x #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 3 ),
    .dout_WIDTH( 32 ))
mux_53_32_1_1_x_U70(
    .din0(32'd36311),
    .din1(32'd62051),
    .din2(32'd2504),
    .din3(32'd4294944540),
    .din4(32'd68724),
    .din5(agg_result_fu_166_p6),
    .dout(agg_result_fu_166_p7)
);

assign activation_58_fu_98_p2 = (comparison_34_fu_74_p2 & comparison_33_fu_68_p2);

assign activation_59_fu_110_p2 = (comparison_fu_62_p2 & and_ln193_fu_104_p2);

assign activation_fu_86_p2 = (comparison_fu_62_p2 ^ 1'd1);

assign agg_result_fu_166_p6 = ((or_ln208_17_fu_140_p2[0:0] == 1'b1) ? zext_ln208_6_fu_154_p1 : 3'd4);

assign and_ln193_fu_104_p2 = (xor_ln195_fu_92_p2 & comparison_35_fu_80_p2);

assign ap_ready = 1'b1;

assign ap_return = agg_result_fu_166_p7;

assign comparison_33_fu_68_p2 = (($signed(p_read2) < $signed(32'd4294919624)) ? 1'b1 : 1'b0);

assign comparison_34_fu_74_p2 = (($signed(p_read1) < $signed(32'd4294936613)) ? 1'b1 : 1'b0);

assign comparison_35_fu_80_p2 = (($signed(p_read3) < $signed(32'd110436)) ? 1'b1 : 1'b0);

assign comparison_fu_62_p2 = (($signed(p_read1) < $signed(32'd58586)) ? 1'b1 : 1'b0);

assign or_ln208_16_fu_126_p2 = (comparison_33_fu_68_p2 | activation_fu_86_p2);

assign or_ln208_17_fu_140_p2 = (or_ln208_16_fu_126_p2 | activation_59_fu_110_p2);

assign or_ln208_fu_116_p2 = (activation_fu_86_p2 | activation_58_fu_98_p2);

assign select_ln208_18_fu_146_p3 = ((or_ln208_16_fu_126_p2[0:0] == 1'b1) ? select_ln208_fu_132_p3 : 2'd3);

assign select_ln208_fu_132_p3 = ((or_ln208_fu_116_p2[0:0] == 1'b1) ? zext_ln208_fu_122_p1 : 2'd2);

assign xor_ln195_fu_92_p2 = (comparison_33_fu_68_p2 ^ 1'd1);

assign zext_ln208_6_fu_154_p1 = select_ln208_18_fu_146_p3;

assign zext_ln208_fu_122_p1 = comparison_fu_62_p2;

endmodule //myproject_axi_decision_function_20
