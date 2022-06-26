// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_decision_function_3 (
        ap_ready,
        p_read1,
        p_read2,
        ap_return
);


output   ap_ready;
input  [31:0] p_read1;
input  [31:0] p_read2;
output  [31:0] ap_return;

wire   [0:0] comparison_fu_54_p2;
wire   [0:0] comparison_20_fu_60_p2;
wire   [0:0] activation_fu_78_p2;
wire   [0:0] comparison_21_fu_66_p2;
wire   [0:0] activation_33_fu_84_p2;
wire   [0:0] comparison_22_fu_72_p2;
wire   [0:0] and_ln193_fu_102_p2;
wire   [0:0] xor_ln195_fu_90_p2;
wire   [0:0] activation_36_fu_96_p2;
wire   [0:0] or_ln208_fu_114_p2;
wire   [1:0] zext_ln208_fu_120_p1;
wire   [0:0] or_ln208_4_fu_124_p2;
wire   [0:0] activation_37_fu_108_p2;
wire   [1:0] select_ln208_fu_130_p3;
wire   [1:0] select_ln208_5_fu_144_p3;
wire   [0:0] or_ln208_5_fu_138_p2;
wire   [2:0] zext_ln208_2_fu_152_p1;
wire   [2:0] agg_result_fu_164_p6;
wire   [31:0] agg_result_fu_164_p7;
wire    ap_ce_reg;

myproject_axi_mux_53_32_1_1_x0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 3 ),
    .dout_WIDTH( 32 ))
mux_53_32_1_1_x0_U52(
    .din0(32'd70579),
    .din1(32'd4294946229),
    .din2(32'd66895),
    .din3(32'd34509),
    .din4(32'd105913),
    .din5(agg_result_fu_164_p6),
    .dout(agg_result_fu_164_p7)
);

assign activation_33_fu_84_p2 = (comparison_20_fu_60_p2 & activation_fu_78_p2);

assign activation_36_fu_96_p2 = (comparison_21_fu_66_p2 & activation_33_fu_84_p2);

assign activation_37_fu_108_p2 = (xor_ln195_fu_90_p2 & and_ln193_fu_102_p2);

assign activation_fu_78_p2 = (comparison_fu_54_p2 ^ 1'd1);

assign agg_result_fu_164_p6 = ((or_ln208_5_fu_138_p2[0:0] == 1'b1) ? zext_ln208_2_fu_152_p1 : 3'd4);

assign and_ln193_fu_102_p2 = (comparison_22_fu_72_p2 & activation_fu_78_p2);

assign ap_ready = 1'b1;

assign ap_return = agg_result_fu_164_p7;

assign comparison_20_fu_60_p2 = (($signed(p_read1) < $signed(32'd76980)) ? 1'b1 : 1'b0);

assign comparison_21_fu_66_p2 = (($signed(p_read2) < $signed(32'd95670)) ? 1'b1 : 1'b0);

assign comparison_22_fu_72_p2 = (($signed(p_read1) < $signed(32'd112096)) ? 1'b1 : 1'b0);

assign comparison_fu_54_p2 = (($signed(p_read2) < $signed(32'd4294887777)) ? 1'b1 : 1'b0);

assign or_ln208_4_fu_124_p2 = (comparison_fu_54_p2 | activation_33_fu_84_p2);

assign or_ln208_5_fu_138_p2 = (or_ln208_4_fu_124_p2 | activation_37_fu_108_p2);

assign or_ln208_fu_114_p2 = (comparison_fu_54_p2 | activation_36_fu_96_p2);

assign select_ln208_5_fu_144_p3 = ((or_ln208_4_fu_124_p2[0:0] == 1'b1) ? select_ln208_fu_130_p3 : 2'd3);

assign select_ln208_fu_130_p3 = ((or_ln208_fu_114_p2[0:0] == 1'b1) ? zext_ln208_fu_120_p1 : 2'd2);

assign xor_ln195_fu_90_p2 = (comparison_20_fu_60_p2 ^ 1'd1);

assign zext_ln208_2_fu_152_p1 = select_ln208_5_fu_144_p3;

assign zext_ln208_fu_120_p1 = activation_fu_78_p2;

endmodule //myproject_axi_decision_function_3
