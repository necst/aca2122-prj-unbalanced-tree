// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_decision_function (
        ap_ready,
        p_read,
        p_read1,
        ap_return
);


output   ap_ready;
input  [31:0] p_read;
input  [31:0] p_read1;
output  [31:0] ap_return;

wire   [0:0] icmp_ln1497_1_fu_54_p2;
wire   [0:0] icmp_ln1497_2_fu_60_p2;
wire   [0:0] xor_ln133_fu_66_p2;
wire   [0:0] and_ln133_fu_72_p2;
wire   [0:0] icmp_ln1497_fu_48_p2;
wire   [0:0] xor_ln148_fu_84_p2;
wire   [0:0] or_ln148_fu_90_p2;
wire   [0:0] and_ln133_1_fu_78_p2;
wire   [1:0] zext_ln149_fu_102_p1;
wire   [0:0] or_ln148_1_fu_96_p2;
wire   [1:0] select_ln149_fu_106_p3;
wire   [1:0] tmp_fu_122_p5;
wire   [31:0] tmp_fu_122_p6;

myproject_axi_mux_42_32_1_1_x #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_x_U26(
    .din0(32'd36059),
    .din1(32'd26870),
    .din2(32'd10117),
    .din3(32'd4294950609),
    .din4(tmp_fu_122_p5),
    .dout(tmp_fu_122_p6)
);

assign and_ln133_1_fu_78_p2 = (icmp_ln1497_fu_48_p2 & and_ln133_fu_72_p2);

assign and_ln133_fu_72_p2 = (xor_ln133_fu_66_p2 & icmp_ln1497_2_fu_60_p2);

assign ap_ready = 1'b1;

assign ap_return = tmp_fu_122_p6;

assign icmp_ln1497_1_fu_54_p2 = (($signed(p_read) < $signed(32'd4294886598)) ? 1'b1 : 1'b0);

assign icmp_ln1497_2_fu_60_p2 = (($signed(p_read1) < $signed(32'd4294906495)) ? 1'b1 : 1'b0);

assign icmp_ln1497_fu_48_p2 = (($signed(p_read) < $signed(32'd62181)) ? 1'b1 : 1'b0);

assign or_ln148_1_fu_96_p2 = (or_ln148_fu_90_p2 | and_ln133_1_fu_78_p2);

assign or_ln148_fu_90_p2 = (xor_ln148_fu_84_p2 | icmp_ln1497_1_fu_54_p2);

assign select_ln149_fu_106_p3 = ((or_ln148_fu_90_p2[0:0] == 1'b1) ? zext_ln149_fu_102_p1 : 2'd2);

assign tmp_fu_122_p5 = ((or_ln148_1_fu_96_p2[0:0] == 1'b1) ? select_ln149_fu_106_p3 : 2'd3);

assign xor_ln133_fu_66_p2 = (icmp_ln1497_1_fu_54_p2 ^ 1'd1);

assign xor_ln148_fu_84_p2 = (icmp_ln1497_fu_48_p2 ^ 1'd1);

assign zext_ln149_fu_102_p1 = icmp_ln1497_fu_48_p2;

endmodule //myproject_axi_decision_function