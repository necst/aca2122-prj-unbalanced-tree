// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_decision_function_18 (
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
wire   [0:0] comparison_204_fu_102_p2;
wire   [0:0] comparison_205_fu_108_p2;
wire   [0:0] activation_254_fu_138_p2;
wire   [0:0] comparison_206_fu_114_p2;
wire   [0:0] activation_255_fu_144_p2;
wire   [0:0] comparison_207_fu_120_p2;
wire   [0:0] xor_ln195_fu_150_p2;
wire   [0:0] and_ln193_fu_174_p2;
wire   [0:0] comparison_208_fu_126_p2;
wire   [0:0] activation_256_fu_156_p2;
wire   [0:0] comparison_209_fu_132_p2;
wire   [0:0] and_ln193_57_fu_192_p2;
wire   [0:0] xor_ln195_16_fu_162_p2;
wire   [0:0] activation_fu_168_p2;
wire   [0:0] xor_ln208_fu_204_p2;
wire   [0:0] activation_257_fu_180_p2;
wire   [1:0] zext_ln208_fu_210_p1;
wire   [0:0] or_ln208_fu_214_p2;
wire   [1:0] select_ln208_fu_220_p3;
wire   [1:0] select_ln208_80_fu_228_p3;
wire   [0:0] activation_258_fu_186_p2;
wire   [2:0] zext_ln208_18_fu_236_p1;
wire   [0:0] or_ln208_58_fu_240_p2;
wire   [2:0] select_ln208_81_fu_246_p3;
wire   [0:0] or_ln208_59_fu_254_p2;
wire   [0:0] activation_259_fu_198_p2;
wire   [2:0] select_ln208_82_fu_260_p3;
wire   [0:0] or_ln208_60_fu_268_p2;
wire   [2:0] select_ln208_83_fu_274_p3;
wire   [2:0] agg_result_fu_290_p9;
wire   [31:0] agg_result_fu_290_p10;
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
mux_83_32_1_1_x4_U256(
    .din0(32'd60424),
    .din1(32'd250),
    .din2(32'd4294953612),
    .din3(32'd32406),
    .din4(32'd19216),
    .din5(32'd4294960112),
    .din6(32'd47103),
    .din7(32'd9579),
    .din8(agg_result_fu_290_p9),
    .dout(agg_result_fu_290_p10)
);

assign activation_254_fu_138_p2 = (comparison_fu_96_p2 ^ 1'd1);

assign activation_255_fu_144_p2 = (comparison_fu_96_p2 & comparison_204_fu_102_p2);

assign activation_256_fu_156_p2 = (comparison_205_fu_108_p2 & activation_254_fu_138_p2);

assign activation_257_fu_180_p2 = (comparison_fu_96_p2 & and_ln193_fu_174_p2);

assign activation_258_fu_186_p2 = (comparison_208_fu_126_p2 & activation_256_fu_156_p2);

assign activation_259_fu_198_p2 = (xor_ln195_16_fu_162_p2 & and_ln193_57_fu_192_p2);

assign activation_fu_168_p2 = (comparison_206_fu_114_p2 & activation_255_fu_144_p2);

assign agg_result_fu_290_p9 = ((or_ln208_60_fu_268_p2[0:0] == 1'b1) ? select_ln208_83_fu_274_p3 : 3'd7);

assign and_ln193_57_fu_192_p2 = (comparison_209_fu_132_p2 & activation_254_fu_138_p2);

assign and_ln193_fu_174_p2 = (xor_ln195_fu_150_p2 & comparison_207_fu_120_p2);

assign ap_ready = 1'b1;

assign ap_return = agg_result_fu_290_p10;

assign comparison_204_fu_102_p2 = (($signed(p_read2) < $signed(32'd4294927874)) ? 1'b1 : 1'b0);

assign comparison_205_fu_108_p2 = (($signed(p_read3) < $signed(32'd115746)) ? 1'b1 : 1'b0);

assign comparison_206_fu_114_p2 = (($signed(p_read5) < $signed(32'd20688)) ? 1'b1 : 1'b0);

assign comparison_207_fu_120_p2 = (($signed(p_read2) < $signed(32'd9028)) ? 1'b1 : 1'b0);

assign comparison_208_fu_126_p2 = (($signed(p_read5) < $signed(32'd4294897676)) ? 1'b1 : 1'b0);

assign comparison_209_fu_132_p2 = (($signed(p_read1) < $signed(32'd30554)) ? 1'b1 : 1'b0);

assign comparison_fu_96_p2 = (($signed(p_read4) < $signed(32'd4294887835)) ? 1'b1 : 1'b0);

assign or_ln208_58_fu_240_p2 = (comparison_fu_96_p2 | activation_258_fu_186_p2);

assign or_ln208_59_fu_254_p2 = (comparison_fu_96_p2 | activation_256_fu_156_p2);

assign or_ln208_60_fu_268_p2 = (or_ln208_59_fu_254_p2 | activation_259_fu_198_p2);

assign or_ln208_fu_214_p2 = (activation_257_fu_180_p2 | activation_255_fu_144_p2);

assign select_ln208_80_fu_228_p3 = ((or_ln208_fu_214_p2[0:0] == 1'b1) ? select_ln208_fu_220_p3 : 2'd3);

assign select_ln208_81_fu_246_p3 = ((comparison_fu_96_p2[0:0] == 1'b1) ? zext_ln208_18_fu_236_p1 : 3'd4);

assign select_ln208_82_fu_260_p3 = ((or_ln208_58_fu_240_p2[0:0] == 1'b1) ? select_ln208_81_fu_246_p3 : 3'd5);

assign select_ln208_83_fu_274_p3 = ((or_ln208_59_fu_254_p2[0:0] == 1'b1) ? select_ln208_82_fu_260_p3 : 3'd6);

assign select_ln208_fu_220_p3 = ((activation_255_fu_144_p2[0:0] == 1'b1) ? zext_ln208_fu_210_p1 : 2'd2);

assign xor_ln195_16_fu_162_p2 = (comparison_205_fu_108_p2 ^ 1'd1);

assign xor_ln195_fu_150_p2 = (comparison_204_fu_102_p2 ^ 1'd1);

assign xor_ln208_fu_204_p2 = (1'd1 ^ activation_fu_168_p2);

assign zext_ln208_18_fu_236_p1 = select_ln208_80_fu_228_p3;

assign zext_ln208_fu_210_p1 = xor_ln208_fu_204_p2;

endmodule //myproject_axi_decision_function_18
