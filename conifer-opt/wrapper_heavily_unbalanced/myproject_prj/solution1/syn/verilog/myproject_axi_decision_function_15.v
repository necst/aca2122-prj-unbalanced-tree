// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_decision_function_15 (
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

wire   [0:0] comparison_36_fu_62_p2;
wire   [0:0] comparison_fu_56_p2;
wire   [0:0] activation_46_fu_74_p2;
wire   [0:0] comparison_37_fu_68_p2;
wire   [0:0] xor_ln208_fu_80_p2;
wire   [1:0] zext_ln208_fu_86_p1;
wire   [0:0] or_ln208_fu_90_p2;
wire   [1:0] select_ln208_fu_96_p3;
wire   [1:0] agg_result_fu_112_p5;
wire   [31:0] agg_result_fu_112_p6;

myproject_axi_mux_42_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_U78(
    .din0(32'd30007),
    .din1(32'd30312),
    .din2(32'd4294949872),
    .din3(32'd36039),
    .din4(agg_result_fu_112_p5),
    .dout(agg_result_fu_112_p6)
);

assign activation_46_fu_74_p2 = (comparison_fu_56_p2 & comparison_36_fu_62_p2);

assign agg_result_fu_112_p5 = ((or_ln208_fu_90_p2[0:0] == 1'b1) ? select_ln208_fu_96_p3 : 2'd3);

assign ap_ready = 1'b1;

assign ap_return = agg_result_fu_112_p6;

assign comparison_36_fu_62_p2 = (($signed(p_read1) < $signed(32'd70061)) ? 1'b1 : 1'b0);

assign comparison_37_fu_68_p2 = (($signed(p_read3) < $signed(32'd95439)) ? 1'b1 : 1'b0);

assign comparison_fu_56_p2 = (($signed(p_read2) < $signed(32'd53313)) ? 1'b1 : 1'b0);

assign or_ln208_fu_90_p2 = (xor_ln208_fu_80_p2 | comparison_37_fu_68_p2);

assign select_ln208_fu_96_p3 = ((activation_46_fu_74_p2[0:0] == 1'b1) ? 2'd2 : zext_ln208_fu_86_p1);

assign xor_ln208_fu_80_p2 = (1'd1 ^ activation_46_fu_74_p2);

assign zext_ln208_fu_86_p1 = comparison_fu_56_p2;

endmodule //myproject_axi_decision_function_15
