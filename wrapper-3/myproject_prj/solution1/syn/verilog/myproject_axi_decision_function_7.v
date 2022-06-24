// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Version: 2020.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_decision_function_7 (
        ap_ready,
        p_read1,
        p_read2,
        ap_return
);


output   ap_ready;
input  [31:0] p_read1;
input  [31:0] p_read2;
output  [31:0] ap_return;

wire   [0:0] comparison_fu_48_p2;
wire   [0:0] comparison_3_fu_54_p2;
wire   [0:0] comparison_2_fu_60_p2;
wire   [0:0] xor_ln135_fu_72_p2;
wire   [0:0] and_ln133_fu_78_p2;
wire   [0:0] activation_fu_66_p2;
wire   [0:0] or_ln148_fu_90_p2;
wire   [0:0] activation_2_fu_84_p2;
wire   [1:0] zext_ln148_fu_96_p1;
wire   [0:0] or_ln148_1_fu_100_p2;
wire   [1:0] select_ln148_fu_106_p3;
wire   [1:0] agg_result_fu_122_p5;
wire   [31:0] agg_result_fu_122_p6;

myproject_axi_mux_42_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_U1(
    .din0(32'd49209),
    .din1(32'd45279),
    .din2(32'd4294937773),
    .din3(32'd40738),
    .din4(agg_result_fu_122_p5),
    .dout(agg_result_fu_122_p6)
);

assign activation_2_fu_84_p2 = (comparison_fu_48_p2 & and_ln133_fu_78_p2);

assign activation_fu_66_p2 = (comparison_fu_48_p2 ^ 1'd1);

assign agg_result_fu_122_p5 = ((or_ln148_1_fu_100_p2[0:0] == 1'b1) ? select_ln148_fu_106_p3 : 2'd3);

assign and_ln133_fu_78_p2 = (xor_ln135_fu_72_p2 & comparison_2_fu_60_p2);

assign ap_ready = 1'b1;

assign ap_return = agg_result_fu_122_p6;

assign comparison_2_fu_60_p2 = (($signed(p_read2) < $signed(32'd81380)) ? 1'b1 : 1'b0);

assign comparison_3_fu_54_p2 = (($signed(p_read1) < $signed(32'd4294888266)) ? 1'b1 : 1'b0);

assign comparison_fu_48_p2 = (($signed(p_read1) < $signed(32'd73288)) ? 1'b1 : 1'b0);

assign or_ln148_1_fu_100_p2 = (or_ln148_fu_90_p2 | activation_2_fu_84_p2);

assign or_ln148_fu_90_p2 = (comparison_3_fu_54_p2 | activation_fu_66_p2);

assign select_ln148_fu_106_p3 = ((or_ln148_fu_90_p2[0:0] == 1'b1) ? zext_ln148_fu_96_p1 : 2'd2);

assign xor_ln135_fu_72_p2 = (comparison_3_fu_54_p2 ^ 1'd1);

assign zext_ln148_fu_96_p1 = comparison_fu_48_p2;

endmodule //myproject_axi_decision_function_7
