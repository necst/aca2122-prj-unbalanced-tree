// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_decision_function_44 (
        ap_ready,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        ap_return
);


output   ap_ready;
input  [31:0] p_read1;
input  [31:0] p_read2;
input  [31:0] p_read3;
input  [31:0] p_read4;
output  [31:0] ap_return;

wire   [0:0] comparison_fu_88_p2;
wire   [0:0] comparison_60_fu_94_p2;
wire   [0:0] xor_ln195_fu_130_p2;
wire   [0:0] comparison_56_fu_100_p2;
wire   [0:0] activation_70_fu_124_p2;
wire   [0:0] comparison_57_fu_106_p2;
wire   [0:0] activation_72_fu_136_p2;
wire   [0:0] comparison_58_fu_112_p2;
wire   [0:0] activation_73_fu_142_p2;
wire   [0:0] comparison_59_fu_118_p2;
wire   [0:0] and_ln193_fu_166_p2;
wire   [0:0] xor_ln195_21_fu_148_p2;
wire   [0:0] icmp_ln208_fu_178_p2;
wire   [0:0] activation_fu_154_p2;
wire   [1:0] zext_ln208_fu_184_p1;
wire   [0:0] or_ln208_fu_188_p2;
wire   [1:0] select_ln208_fu_194_p3;
wire   [1:0] select_ln208_44_fu_208_p3;
wire   [0:0] or_ln208_37_fu_202_p2;
wire   [0:0] activation_74_fu_160_p2;
wire   [2:0] zext_ln208_11_fu_216_p1;
wire   [0:0] or_ln208_38_fu_220_p2;
wire   [2:0] select_ln208_45_fu_226_p3;
wire   [0:0] or_ln208_39_fu_234_p2;
wire   [0:0] activation_75_fu_172_p2;
wire   [2:0] select_ln208_46_fu_240_p3;
wire   [0:0] or_ln208_40_fu_248_p2;
wire   [2:0] select_ln208_47_fu_254_p3;
wire   [2:0] tmp_fu_276_p9;
wire   [0:0] or_ln208_41_fu_262_p2;
wire   [31:0] tmp_fu_276_p10;
wire    ap_ce_reg;

myproject_axi_mux_83_32_1_1_x4 #(
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
mux_83_32_1_1_x4_U105(
    .din0(32'd81937),
    .din1(32'd27509),
    .din2(32'd4294954640),
    .din3(32'd72193),
    .din4(32'd56452),
    .din5(32'd4294961849),
    .din6(32'd21770),
    .din7(32'd65624),
    .din8(tmp_fu_276_p9),
    .dout(tmp_fu_276_p10)
);

assign activation_70_fu_124_p2 = (comparison_fu_88_p2 ^ 1'd1);

assign activation_72_fu_136_p2 = (xor_ln195_fu_130_p2 & comparison_fu_88_p2);

assign activation_73_fu_142_p2 = (comparison_56_fu_100_p2 & activation_70_fu_124_p2);

assign activation_74_fu_160_p2 = (comparison_58_fu_112_p2 & activation_73_fu_142_p2);

assign activation_75_fu_172_p2 = (xor_ln195_21_fu_148_p2 & and_ln193_fu_166_p2);

assign activation_fu_154_p2 = (comparison_57_fu_106_p2 & activation_72_fu_136_p2);

assign and_ln193_fu_166_p2 = (comparison_59_fu_118_p2 & activation_70_fu_124_p2);

assign ap_ready = 1'b1;

assign ap_return = ((or_ln208_41_fu_262_p2[0:0] == 1'b1) ? tmp_fu_276_p10 : 32'd0);

assign comparison_56_fu_100_p2 = (($signed(p_read1) < $signed(32'd4294955097)) ? 1'b1 : 1'b0);

assign comparison_57_fu_106_p2 = (($signed(p_read4) < $signed(32'd117079)) ? 1'b1 : 1'b0);

assign comparison_58_fu_112_p2 = (($signed(p_read4) < $signed(32'd4294950414)) ? 1'b1 : 1'b0);

assign comparison_59_fu_118_p2 = (($signed(p_read3) < $signed(32'd4294930482)) ? 1'b1 : 1'b0);

assign comparison_60_fu_94_p2 = (($signed(p_read2) < $signed(32'd4294859908)) ? 1'b1 : 1'b0);

assign comparison_fu_88_p2 = (($signed(p_read2) < $signed(32'd64469)) ? 1'b1 : 1'b0);

assign icmp_ln208_fu_178_p2 = (($signed(p_read2) > $signed(32'd4294833680)) ? 1'b1 : 1'b0);

assign or_ln208_37_fu_202_p2 = (comparison_60_fu_94_p2 | activation_72_fu_136_p2);

assign or_ln208_38_fu_220_p2 = (or_ln208_37_fu_202_p2 | activation_74_fu_160_p2);

assign or_ln208_39_fu_234_p2 = (or_ln208_37_fu_202_p2 | activation_73_fu_142_p2);

assign or_ln208_40_fu_248_p2 = (or_ln208_39_fu_234_p2 | activation_75_fu_172_p2);

assign or_ln208_41_fu_262_p2 = (or_ln208_37_fu_202_p2 | activation_70_fu_124_p2);

assign or_ln208_fu_188_p2 = (comparison_60_fu_94_p2 | activation_fu_154_p2);

assign select_ln208_44_fu_208_p3 = ((or_ln208_fu_188_p2[0:0] == 1'b1) ? select_ln208_fu_194_p3 : 2'd3);

assign select_ln208_45_fu_226_p3 = ((or_ln208_37_fu_202_p2[0:0] == 1'b1) ? zext_ln208_11_fu_216_p1 : 3'd4);

assign select_ln208_46_fu_240_p3 = ((or_ln208_38_fu_220_p2[0:0] == 1'b1) ? select_ln208_45_fu_226_p3 : 3'd5);

assign select_ln208_47_fu_254_p3 = ((or_ln208_39_fu_234_p2[0:0] == 1'b1) ? select_ln208_46_fu_240_p3 : 3'd6);

assign select_ln208_fu_194_p3 = ((comparison_60_fu_94_p2[0:0] == 1'b1) ? zext_ln208_fu_184_p1 : 2'd2);

assign tmp_fu_276_p9 = ((or_ln208_40_fu_248_p2[0:0] == 1'b1) ? select_ln208_47_fu_254_p3 : 3'd7);

assign xor_ln195_21_fu_148_p2 = (comparison_56_fu_100_p2 ^ 1'd1);

assign xor_ln195_fu_130_p2 = (comparison_60_fu_94_p2 ^ 1'd1);

assign zext_ln208_11_fu_216_p1 = select_ln208_44_fu_208_p3;

assign zext_ln208_fu_184_p1 = icmp_ln208_fu_178_p2;

endmodule //myproject_axi_decision_function_44