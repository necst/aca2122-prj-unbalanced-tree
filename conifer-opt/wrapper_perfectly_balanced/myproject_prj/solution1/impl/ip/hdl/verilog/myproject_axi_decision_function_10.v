// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_decision_function_10 (
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
wire   [0:0] comparison_251_fu_96_p2;
wire   [0:0] xor_ln195_fu_132_p2;
wire   [0:0] comparison_247_fu_102_p2;
wire   [0:0] activation_303_fu_126_p2;
wire   [0:0] xor_ln195_10_fu_150_p2;
wire   [0:0] comparison_248_fu_108_p2;
wire   [0:0] comparison_249_fu_114_p2;
wire   [0:0] activation_305_fu_138_p2;
wire   [0:0] comparison_250_fu_120_p2;
wire   [0:0] activation_fu_156_p2;
wire   [0:0] activation_310_fu_144_p2;
wire   [0:0] activation_311_fu_162_p2;
wire   [0:0] or_ln208_38_fu_186_p2;
wire   [0:0] or_ln208_fu_180_p2;
wire   [1:0] zext_ln208_fu_192_p1;
wire   [0:0] or_ln208_33_fu_196_p2;
wire   [0:0] activation_312_fu_168_p2;
wire   [1:0] select_ln208_fu_202_p3;
wire   [1:0] select_ln208_45_fu_216_p3;
wire   [0:0] or_ln208_34_fu_210_p2;
wire   [2:0] zext_ln208_11_fu_224_p1;
wire   [0:0] or_ln208_35_fu_228_p2;
wire   [0:0] activation_313_fu_174_p2;
wire   [2:0] select_ln208_46_fu_234_p3;
wire   [0:0] or_ln208_36_fu_242_p2;
wire   [2:0] select_ln208_47_fu_248_p3;
wire   [2:0] tmp_fu_270_p8;
wire   [0:0] or_ln208_37_fu_256_p2;
wire   [31:0] tmp_fu_270_p9;
wire    ap_ce_reg;

myproject_axi_mux_73_32_1_1_x5 #(
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
mux_73_32_1_1_x5_U298(
    .din0(32'd4294962113),
    .din1(32'd5070),
    .din2(32'd28864),
    .din3(32'd4294957551),
    .din4(32'd17368),
    .din5(32'd12980),
    .din6(32'd48465),
    .din7(tmp_fu_270_p8),
    .dout(tmp_fu_270_p9)
);

assign activation_303_fu_126_p2 = (comparison_fu_90_p2 ^ 1'd1);

assign activation_305_fu_138_p2 = (xor_ln195_fu_132_p2 & comparison_fu_90_p2);

assign activation_310_fu_144_p2 = (comparison_247_fu_102_p2 & activation_303_fu_126_p2);

assign activation_311_fu_162_p2 = (comparison_251_fu_96_p2 & comparison_248_fu_108_p2);

assign activation_312_fu_168_p2 = (comparison_249_fu_114_p2 & activation_305_fu_138_p2);

assign activation_313_fu_174_p2 = (comparison_250_fu_120_p2 & activation_fu_156_p2);

assign activation_fu_156_p2 = (xor_ln195_10_fu_150_p2 & activation_303_fu_126_p2);

assign ap_ready = 1'b1;

assign ap_return = ((or_ln208_37_fu_256_p2[0:0] == 1'b1) ? tmp_fu_270_p9 : 32'd0);

assign comparison_247_fu_102_p2 = (($signed(p_read4) < $signed(32'd4294931812)) ? 1'b1 : 1'b0);

assign comparison_248_fu_108_p2 = (($signed(p_read3) < $signed(32'd15831)) ? 1'b1 : 1'b0);

assign comparison_249_fu_114_p2 = (($signed(p_read5) < $signed(32'd72310)) ? 1'b1 : 1'b0);

assign comparison_250_fu_120_p2 = (($signed(p_read1) < $signed(32'd4294953668)) ? 1'b1 : 1'b0);

assign comparison_251_fu_96_p2 = (($signed(p_read2) < $signed(32'd4294912147)) ? 1'b1 : 1'b0);

assign comparison_fu_90_p2 = (($signed(p_read2) < $signed(32'd88509)) ? 1'b1 : 1'b0);

assign or_ln208_33_fu_196_p2 = (comparison_251_fu_96_p2 | activation_310_fu_144_p2);

assign or_ln208_34_fu_210_p2 = (or_ln208_33_fu_196_p2 | activation_312_fu_168_p2);

assign or_ln208_35_fu_228_p2 = (or_ln208_33_fu_196_p2 | activation_305_fu_138_p2);

assign or_ln208_36_fu_242_p2 = (or_ln208_35_fu_228_p2 | activation_313_fu_174_p2);

assign or_ln208_37_fu_256_p2 = (or_ln208_35_fu_228_p2 | activation_fu_156_p2);

assign or_ln208_38_fu_186_p2 = (xor_ln195_10_fu_150_p2 | comparison_fu_90_p2);

assign or_ln208_fu_180_p2 = (activation_311_fu_162_p2 | activation_310_fu_144_p2);

assign select_ln208_45_fu_216_p3 = ((or_ln208_33_fu_196_p2[0:0] == 1'b1) ? select_ln208_fu_202_p3 : 2'd3);

assign select_ln208_46_fu_234_p3 = ((or_ln208_34_fu_210_p2[0:0] == 1'b1) ? zext_ln208_11_fu_224_p1 : 3'd4);

assign select_ln208_47_fu_248_p3 = ((or_ln208_35_fu_228_p2[0:0] == 1'b1) ? select_ln208_46_fu_234_p3 : 3'd5);

assign select_ln208_fu_202_p3 = ((or_ln208_fu_180_p2[0:0] == 1'b1) ? zext_ln208_fu_192_p1 : 2'd2);

assign tmp_fu_270_p8 = ((or_ln208_36_fu_242_p2[0:0] == 1'b1) ? select_ln208_47_fu_248_p3 : 3'd6);

assign xor_ln195_10_fu_150_p2 = (comparison_247_fu_102_p2 ^ 1'd1);

assign xor_ln195_fu_132_p2 = (comparison_251_fu_96_p2 ^ 1'd1);

assign zext_ln208_11_fu_224_p1 = select_ln208_45_fu_216_p3;

assign zext_ln208_fu_192_p1 = or_ln208_38_fu_186_p2;

endmodule //myproject_axi_decision_function_10
