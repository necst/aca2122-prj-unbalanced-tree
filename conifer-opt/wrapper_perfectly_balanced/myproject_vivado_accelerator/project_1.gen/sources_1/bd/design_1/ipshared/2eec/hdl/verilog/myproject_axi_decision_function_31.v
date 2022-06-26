// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_decision_function_31 (
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
wire   [0:0] comparison_124_fu_94_p2;
wire   [0:0] comparison_125_fu_100_p2;
wire   [0:0] activation_159_fu_130_p2;
wire   [0:0] comparison_126_fu_106_p2;
wire   [0:0] activation_160_fu_136_p2;
wire   [0:0] comparison_127_fu_112_p2;
wire   [0:0] xor_ln195_fu_142_p2;
wire   [0:0] and_ln193_fu_166_p2;
wire   [0:0] comparison_128_fu_118_p2;
wire   [0:0] activation_161_fu_148_p2;
wire   [0:0] comparison_129_fu_124_p2;
wire   [0:0] and_ln193_98_fu_184_p2;
wire   [0:0] xor_ln195_27_fu_154_p2;
wire   [0:0] activation_fu_160_p2;
wire   [0:0] xor_ln208_fu_196_p2;
wire   [0:0] activation_162_fu_172_p2;
wire   [1:0] zext_ln208_fu_202_p1;
wire   [0:0] or_ln208_fu_206_p2;
wire   [1:0] select_ln208_fu_212_p3;
wire   [1:0] select_ln208_95_fu_220_p3;
wire   [0:0] activation_163_fu_178_p2;
wire   [2:0] zext_ln208_22_fu_228_p1;
wire   [0:0] or_ln208_77_fu_232_p2;
wire   [2:0] select_ln208_96_fu_238_p3;
wire   [0:0] or_ln208_78_fu_246_p2;
wire   [0:0] activation_164_fu_190_p2;
wire   [2:0] select_ln208_97_fu_252_p3;
wire   [0:0] or_ln208_79_fu_260_p2;
wire   [2:0] select_ln208_98_fu_266_p3;
wire   [2:0] agg_result_fu_282_p9;
wire   [31:0] agg_result_fu_282_p10;
wire    ap_ce_reg;

myproject_axi_mux_83_32_1_1_x7 #(
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
mux_83_32_1_1_x7_U178(
    .din0(32'd9238),
    .din1(32'd57563),
    .din2(32'd4294955639),
    .din3(32'd62847),
    .din4(32'd44045),
    .din5(32'd4294960572),
    .din6(32'd44390),
    .din7(32'd4294959905),
    .din8(agg_result_fu_282_p9),
    .dout(agg_result_fu_282_p10)
);

assign activation_159_fu_130_p2 = (comparison_fu_88_p2 ^ 1'd1);

assign activation_160_fu_136_p2 = (comparison_fu_88_p2 & comparison_124_fu_94_p2);

assign activation_161_fu_148_p2 = (comparison_125_fu_100_p2 & activation_159_fu_130_p2);

assign activation_162_fu_172_p2 = (comparison_fu_88_p2 & and_ln193_fu_166_p2);

assign activation_163_fu_178_p2 = (comparison_128_fu_118_p2 & activation_161_fu_148_p2);

assign activation_164_fu_190_p2 = (xor_ln195_27_fu_154_p2 & and_ln193_98_fu_184_p2);

assign activation_fu_160_p2 = (comparison_126_fu_106_p2 & activation_160_fu_136_p2);

assign agg_result_fu_282_p9 = ((or_ln208_79_fu_260_p2[0:0] == 1'b1) ? select_ln208_98_fu_266_p3 : 3'd7);

assign and_ln193_98_fu_184_p2 = (comparison_129_fu_124_p2 & activation_159_fu_130_p2);

assign and_ln193_fu_166_p2 = (xor_ln195_fu_142_p2 & comparison_127_fu_112_p2);

assign ap_ready = 1'b1;

assign ap_return = agg_result_fu_282_p10;

assign comparison_124_fu_94_p2 = (($signed(p_read3) < $signed(32'd4294895651)) ? 1'b1 : 1'b0);

assign comparison_125_fu_100_p2 = (($signed(p_read2) < $signed(32'd14452)) ? 1'b1 : 1'b0);

assign comparison_126_fu_106_p2 = (($signed(p_read1) < $signed(32'd49814)) ? 1'b1 : 1'b0);

assign comparison_127_fu_112_p2 = (($signed(p_read3) < $signed(32'd130657)) ? 1'b1 : 1'b0);

assign comparison_128_fu_118_p2 = (($signed(p_read2) < $signed(32'd4294914566)) ? 1'b1 : 1'b0);

assign comparison_129_fu_124_p2 = (($signed(p_read3) < $signed(32'd48923)) ? 1'b1 : 1'b0);

assign comparison_fu_88_p2 = (($signed(p_read4) < $signed(32'd53313)) ? 1'b1 : 1'b0);

assign or_ln208_77_fu_232_p2 = (comparison_fu_88_p2 | activation_163_fu_178_p2);

assign or_ln208_78_fu_246_p2 = (comparison_fu_88_p2 | activation_161_fu_148_p2);

assign or_ln208_79_fu_260_p2 = (or_ln208_78_fu_246_p2 | activation_164_fu_190_p2);

assign or_ln208_fu_206_p2 = (activation_162_fu_172_p2 | activation_160_fu_136_p2);

assign select_ln208_95_fu_220_p3 = ((or_ln208_fu_206_p2[0:0] == 1'b1) ? select_ln208_fu_212_p3 : 2'd3);

assign select_ln208_96_fu_238_p3 = ((comparison_fu_88_p2[0:0] == 1'b1) ? zext_ln208_22_fu_228_p1 : 3'd4);

assign select_ln208_97_fu_252_p3 = ((or_ln208_77_fu_232_p2[0:0] == 1'b1) ? select_ln208_96_fu_238_p3 : 3'd5);

assign select_ln208_98_fu_266_p3 = ((or_ln208_78_fu_246_p2[0:0] == 1'b1) ? select_ln208_97_fu_252_p3 : 3'd6);

assign select_ln208_fu_212_p3 = ((activation_160_fu_136_p2[0:0] == 1'b1) ? zext_ln208_fu_202_p1 : 2'd2);

assign xor_ln195_27_fu_154_p2 = (comparison_125_fu_100_p2 ^ 1'd1);

assign xor_ln195_fu_142_p2 = (comparison_124_fu_94_p2 ^ 1'd1);

assign xor_ln208_fu_196_p2 = (1'd1 ^ activation_fu_160_p2);

assign zext_ln208_22_fu_228_p1 = select_ln208_95_fu_220_p3;

assign zext_ln208_fu_202_p1 = xor_ln208_fu_196_p2;

endmodule //myproject_axi_decision_function_31