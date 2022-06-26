// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_decision_function (
        ap_ready,
        p_read1,
        p_read2,
        ap_return
);


output   ap_ready;
input  [31:0] p_read1;
input  [31:0] p_read2;
output  [31:0] ap_return;

wire   [0:0] comparison_48_fu_54_p2;
wire   [0:0] comparison_fu_48_p2;
wire   [0:0] activation_66_fu_66_p2;
wire   [0:0] comparison_49_fu_60_p2;
wire   [0:0] xor_ln208_fu_72_p2;
wire   [1:0] zext_ln208_fu_78_p1;
wire   [0:0] or_ln208_fu_82_p2;
wire   [1:0] select_ln208_fu_88_p3;
wire   [1:0] agg_result_fu_104_p5;
wire   [31:0] agg_result_fu_104_p6;

myproject_axi_mux_42_32_1_1_x #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_x_U60(
    .din0(32'd64583),
    .din1(32'd51215),
    .din2(32'd70314),
    .din3(32'd4294954935),
    .din4(agg_result_fu_104_p5),
    .dout(agg_result_fu_104_p6)
);

assign activation_66_fu_66_p2 = (comparison_fu_48_p2 & comparison_48_fu_54_p2);

assign agg_result_fu_104_p5 = ((or_ln208_fu_82_p2[0:0] == 1'b1) ? select_ln208_fu_88_p3 : 2'd3);

assign ap_ready = 1'b1;

assign ap_return = agg_result_fu_104_p6;

assign comparison_48_fu_54_p2 = (($signed(p_read1) < $signed(32'd87585)) ? 1'b1 : 1'b0);

assign comparison_49_fu_60_p2 = (($signed(p_read1) < $signed(32'd4294850040)) ? 1'b1 : 1'b0);

assign comparison_fu_48_p2 = (($signed(p_read2) < $signed(32'd106259)) ? 1'b1 : 1'b0);

assign or_ln208_fu_82_p2 = (xor_ln208_fu_72_p2 | comparison_49_fu_60_p2);

assign select_ln208_fu_88_p3 = ((activation_66_fu_66_p2[0:0] == 1'b1) ? 2'd2 : zext_ln208_fu_78_p1);

assign xor_ln208_fu_72_p2 = (1'd1 ^ activation_66_fu_66_p2);

assign zext_ln208_fu_78_p1 = comparison_fu_48_p2;

endmodule //myproject_axi_decision_function
