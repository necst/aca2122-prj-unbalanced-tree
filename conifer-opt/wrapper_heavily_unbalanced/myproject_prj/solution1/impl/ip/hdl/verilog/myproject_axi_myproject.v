// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_myproject (
        ap_clk,
        ap_rst,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        p_read6,
        p_read7,
        p_read8,
        p_read9,
        ap_return
);


input   ap_clk;
input   ap_rst;
input  [31:0] p_read;
input  [31:0] p_read1;
input  [31:0] p_read2;
input  [31:0] p_read3;
input  [31:0] p_read4;
input  [31:0] p_read5;
input  [31:0] p_read6;
input  [31:0] p_read7;
input  [31:0] p_read8;
input  [31:0] p_read9;
output  [31:0] ap_return;

wire   [31:0] s_V_5_decision_function_4_fu_186_ap_return;
reg   [31:0] s_V_5_reg_461;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] add_ln712_3_fu_352_p2;
reg   [31:0] add_ln712_3_reg_466;
wire   [31:0] add_ln712_4_fu_358_p2;
reg   [31:0] add_ln712_4_reg_471;
wire   [31:0] add_ln712_7_fu_370_p2;
reg   [31:0] add_ln712_7_reg_476;
wire   [31:0] add_ln712_20_fu_436_p2;
reg   [31:0] add_ln712_20_reg_481;
wire    s_V_decision_function_21_fu_136_ap_ready;
wire   [31:0] s_V_decision_function_21_fu_136_ap_return;
wire    s_V_1_decision_function_20_fu_144_ap_ready;
wire   [31:0] s_V_1_decision_function_20_fu_144_ap_return;
wire    s_V_2_decision_function_9_fu_158_ap_ready;
wire   [31:0] s_V_2_decision_function_9_fu_158_ap_return;
wire    s_V_3_decision_function_6_fu_168_ap_ready;
wire   [31:0] s_V_3_decision_function_6_fu_168_ap_return;
wire    s_V_4_decision_function_5_fu_176_ap_ready;
wire   [31:0] s_V_4_decision_function_5_fu_176_ap_return;
wire    s_V_5_decision_function_4_fu_186_ap_ready;
wire    s_V_6_decision_function_3_fu_194_ap_ready;
wire   [31:0] s_V_6_decision_function_3_fu_194_ap_return;
wire    s_V_7_decision_function_2_fu_204_ap_ready;
wire   [31:0] s_V_7_decision_function_2_fu_204_ap_return;
wire    s_V_8_decision_function_1_fu_216_ap_ready;
wire   [31:0] s_V_8_decision_function_1_fu_216_ap_return;
wire    s_V_9_decision_function_fu_224_ap_ready;
wire   [31:0] s_V_9_decision_function_fu_224_ap_return;
wire    s_V_10_decision_function_19_fu_232_ap_ready;
wire   [31:0] s_V_10_decision_function_19_fu_232_ap_return;
wire    s_V_11_decision_function_18_fu_240_ap_ready;
wire   [31:0] s_V_11_decision_function_18_fu_240_ap_return;
wire    s_V_12_decision_function_17_fu_250_ap_ready;
wire   [31:0] s_V_12_decision_function_17_fu_250_ap_return;
wire    s_V_13_decision_function_16_fu_260_ap_ready;
wire   [31:0] s_V_13_decision_function_16_fu_260_ap_return;
wire    s_V_14_decision_function_15_fu_270_ap_ready;
wire   [31:0] s_V_14_decision_function_15_fu_270_ap_return;
wire    s_V_15_decision_function_14_fu_280_ap_ready;
wire   [31:0] s_V_15_decision_function_14_fu_280_ap_return;
wire    s_V_16_decision_function_13_fu_288_ap_ready;
wire   [31:0] s_V_16_decision_function_13_fu_288_ap_return;
wire    s_V_17_decision_function_12_fu_298_ap_ready;
wire   [31:0] s_V_17_decision_function_12_fu_298_ap_return;
wire    s_V_18_decision_function_11_fu_306_ap_ready;
wire   [31:0] s_V_18_decision_function_11_fu_306_ap_return;
wire    s_V_19_decision_function_10_fu_314_ap_ready;
wire   [31:0] s_V_19_decision_function_10_fu_314_ap_return;
wire    s_V_20_decision_function_8_fu_322_ap_ready;
wire   [31:0] s_V_20_decision_function_8_fu_322_ap_return;
wire    s_V_21_decision_function_7_fu_328_ap_ready;
wire   [31:0] s_V_21_decision_function_7_fu_328_ap_return;
wire    ap_block_pp0_stage0;
wire   [31:0] add_ln712_1_fu_340_p2;
wire   [31:0] add_ln712_2_fu_346_p2;
wire   [31:0] add_ln712_fu_334_p2;
wire   [31:0] add_ln712_6_fu_364_p2;
wire   [31:0] add_ln712_10_fu_376_p2;
wire   [31:0] add_ln712_12_fu_388_p2;
wire   [31:0] add_ln712_13_fu_394_p2;
wire   [31:0] add_ln712_11_fu_382_p2;
wire   [31:0] add_ln712_15_fu_406_p2;
wire   [31:0] add_ln712_17_fu_418_p2;
wire   [31:0] add_ln712_18_fu_424_p2;
wire   [31:0] add_ln712_16_fu_412_p2;
wire   [31:0] add_ln712_19_fu_430_p2;
wire   [31:0] add_ln712_14_fu_400_p2;
wire   [31:0] add_ln712_5_fu_442_p2;
wire   [31:0] add_ln712_8_fu_446_p2;
wire   [31:0] add_ln712_9_fu_451_p2;
wire    ap_ce_reg;

myproject_axi_decision_function_21 s_V_decision_function_21_fu_136(
    .ap_ready(s_V_decision_function_21_fu_136_ap_ready),
    .p_read1(p_read1),
    .p_read2(p_read5),
    .ap_return(s_V_decision_function_21_fu_136_ap_return)
);

myproject_axi_decision_function_20 s_V_1_decision_function_20_fu_144(
    .ap_ready(s_V_1_decision_function_20_fu_144_ap_ready),
    .p_read1(p_read2),
    .p_read2(p_read3),
    .p_read3(p_read4),
    .p_read4(p_read5),
    .p_read5(p_read7),
    .ap_return(s_V_1_decision_function_20_fu_144_ap_return)
);

myproject_axi_decision_function_9 s_V_2_decision_function_9_fu_158(
    .ap_ready(s_V_2_decision_function_9_fu_158_ap_ready),
    .p_read1(p_read2),
    .p_read2(p_read4),
    .p_read3(p_read7),
    .ap_return(s_V_2_decision_function_9_fu_158_ap_return)
);

myproject_axi_decision_function_6 s_V_3_decision_function_6_fu_168(
    .ap_ready(s_V_3_decision_function_6_fu_168_ap_ready),
    .p_read1(p_read3),
    .p_read2(p_read8),
    .ap_return(s_V_3_decision_function_6_fu_168_ap_return)
);

myproject_axi_decision_function_5 s_V_4_decision_function_5_fu_176(
    .ap_ready(s_V_4_decision_function_5_fu_176_ap_ready),
    .p_read1(p_read),
    .p_read2(p_read3),
    .p_read3(p_read9),
    .ap_return(s_V_4_decision_function_5_fu_176_ap_return)
);

myproject_axi_decision_function_4 s_V_5_decision_function_4_fu_186(
    .ap_ready(s_V_5_decision_function_4_fu_186_ap_ready),
    .p_read1(p_read),
    .p_read2(p_read6),
    .ap_return(s_V_5_decision_function_4_fu_186_ap_return)
);

myproject_axi_decision_function_3 s_V_6_decision_function_3_fu_194(
    .ap_ready(s_V_6_decision_function_3_fu_194_ap_ready),
    .p_read1(p_read4),
    .p_read2(p_read5),
    .p_read3(p_read9),
    .ap_return(s_V_6_decision_function_3_fu_194_ap_return)
);

myproject_axi_decision_function_2 s_V_7_decision_function_2_fu_204(
    .ap_ready(s_V_7_decision_function_2_fu_204_ap_ready),
    .p_read1(p_read),
    .p_read2(p_read2),
    .p_read3(p_read3),
    .p_read4(p_read9),
    .ap_return(s_V_7_decision_function_2_fu_204_ap_return)
);

myproject_axi_decision_function_1 s_V_8_decision_function_1_fu_216(
    .ap_ready(s_V_8_decision_function_1_fu_216_ap_ready),
    .p_read1(p_read6),
    .p_read2(p_read7),
    .ap_return(s_V_8_decision_function_1_fu_216_ap_return)
);

myproject_axi_decision_function s_V_9_decision_function_fu_224(
    .ap_ready(s_V_9_decision_function_fu_224_ap_ready),
    .p_read1(p_read2),
    .p_read2(p_read7),
    .ap_return(s_V_9_decision_function_fu_224_ap_return)
);

myproject_axi_decision_function_19 s_V_10_decision_function_19_fu_232(
    .ap_ready(s_V_10_decision_function_19_fu_232_ap_ready),
    .p_read1(p_read1),
    .p_read2(p_read4),
    .ap_return(s_V_10_decision_function_19_fu_232_ap_return)
);

myproject_axi_decision_function_18 s_V_11_decision_function_18_fu_240(
    .ap_ready(s_V_11_decision_function_18_fu_240_ap_ready),
    .p_read1(p_read),
    .p_read2(p_read4),
    .p_read3(p_read8),
    .ap_return(s_V_11_decision_function_18_fu_240_ap_return)
);

myproject_axi_decision_function_17 s_V_12_decision_function_17_fu_250(
    .ap_ready(s_V_12_decision_function_17_fu_250_ap_ready),
    .p_read1(p_read3),
    .p_read2(p_read5),
    .p_read3(p_read8),
    .ap_return(s_V_12_decision_function_17_fu_250_ap_return)
);

myproject_axi_decision_function_16 s_V_13_decision_function_16_fu_260(
    .ap_ready(s_V_13_decision_function_16_fu_260_ap_ready),
    .p_read1(p_read),
    .p_read2(p_read3),
    .p_read3(p_read5),
    .ap_return(s_V_13_decision_function_16_fu_260_ap_return)
);

myproject_axi_decision_function_15 s_V_14_decision_function_15_fu_270(
    .ap_ready(s_V_14_decision_function_15_fu_270_ap_ready),
    .p_read1(p_read),
    .p_read2(p_read8),
    .p_read3(p_read9),
    .ap_return(s_V_14_decision_function_15_fu_270_ap_return)
);

myproject_axi_decision_function_14 s_V_15_decision_function_14_fu_280(
    .ap_ready(s_V_15_decision_function_14_fu_280_ap_ready),
    .p_read1(p_read1),
    .p_read2(p_read4),
    .ap_return(s_V_15_decision_function_14_fu_280_ap_return)
);

myproject_axi_decision_function_13 s_V_16_decision_function_13_fu_288(
    .ap_ready(s_V_16_decision_function_13_fu_288_ap_ready),
    .p_read1(p_read2),
    .p_read2(p_read7),
    .p_read3(p_read9),
    .ap_return(s_V_16_decision_function_13_fu_288_ap_return)
);

myproject_axi_decision_function_12 s_V_17_decision_function_12_fu_298(
    .ap_ready(s_V_17_decision_function_12_fu_298_ap_ready),
    .p_read1(p_read),
    .p_read2(p_read6),
    .ap_return(s_V_17_decision_function_12_fu_298_ap_return)
);

myproject_axi_decision_function_11 s_V_18_decision_function_11_fu_306(
    .ap_ready(s_V_18_decision_function_11_fu_306_ap_ready),
    .p_read1(p_read5),
    .p_read2(p_read8),
    .ap_return(s_V_18_decision_function_11_fu_306_ap_return)
);

myproject_axi_decision_function_10 s_V_19_decision_function_10_fu_314(
    .ap_ready(s_V_19_decision_function_10_fu_314_ap_ready),
    .p_read1(p_read2),
    .p_read2(p_read3),
    .ap_return(s_V_19_decision_function_10_fu_314_ap_return)
);

myproject_axi_decision_function_8 s_V_20_decision_function_8_fu_322(
    .ap_ready(s_V_20_decision_function_8_fu_322_ap_ready),
    .p_read1(p_read7),
    .ap_return(s_V_20_decision_function_8_fu_322_ap_return)
);

myproject_axi_decision_function_7 s_V_21_decision_function_7_fu_328(
    .ap_ready(s_V_21_decision_function_7_fu_328_ap_ready),
    .p_read1(p_read6),
    .ap_return(s_V_21_decision_function_7_fu_328_ap_return)
);

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln712_20_reg_481 <= add_ln712_20_fu_436_p2;
        add_ln712_3_reg_466 <= add_ln712_3_fu_352_p2;
        add_ln712_4_reg_471 <= add_ln712_4_fu_358_p2;
        add_ln712_7_reg_476 <= add_ln712_7_fu_370_p2;
        s_V_5_reg_461 <= s_V_5_decision_function_4_fu_186_ap_return;
    end
end

assign add_ln712_10_fu_376_p2 = (s_V_12_decision_function_17_fu_250_ap_return + s_V_13_decision_function_16_fu_260_ap_return);

assign add_ln712_11_fu_382_p2 = (add_ln712_10_fu_376_p2 + s_V_11_decision_function_18_fu_240_ap_return);

assign add_ln712_12_fu_388_p2 = (s_V_15_decision_function_14_fu_280_ap_return + s_V_16_decision_function_13_fu_288_ap_return);

assign add_ln712_13_fu_394_p2 = (add_ln712_12_fu_388_p2 + s_V_14_decision_function_15_fu_270_ap_return);

assign add_ln712_14_fu_400_p2 = (add_ln712_13_fu_394_p2 + add_ln712_11_fu_382_p2);

assign add_ln712_15_fu_406_p2 = (s_V_18_decision_function_11_fu_306_ap_return + s_V_19_decision_function_10_fu_314_ap_return);

assign add_ln712_16_fu_412_p2 = (add_ln712_15_fu_406_p2 + s_V_17_decision_function_12_fu_298_ap_return);

assign add_ln712_17_fu_418_p2 = (s_V_21_decision_function_7_fu_328_ap_return + 32'd109);

assign add_ln712_18_fu_424_p2 = (add_ln712_17_fu_418_p2 + s_V_20_decision_function_8_fu_322_ap_return);

assign add_ln712_19_fu_430_p2 = (add_ln712_18_fu_424_p2 + add_ln712_16_fu_412_p2);

assign add_ln712_1_fu_340_p2 = (s_V_3_decision_function_6_fu_168_ap_return + s_V_4_decision_function_5_fu_176_ap_return);

assign add_ln712_20_fu_436_p2 = (add_ln712_19_fu_430_p2 + add_ln712_14_fu_400_p2);

assign add_ln712_2_fu_346_p2 = (add_ln712_1_fu_340_p2 + s_V_2_decision_function_9_fu_158_ap_return);

assign add_ln712_3_fu_352_p2 = (add_ln712_2_fu_346_p2 + add_ln712_fu_334_p2);

assign add_ln712_4_fu_358_p2 = (s_V_6_decision_function_3_fu_194_ap_return + s_V_7_decision_function_2_fu_204_ap_return);

assign add_ln712_5_fu_442_p2 = (add_ln712_4_reg_471 + s_V_5_reg_461);

assign add_ln712_6_fu_364_p2 = (s_V_9_decision_function_fu_224_ap_return + s_V_10_decision_function_19_fu_232_ap_return);

assign add_ln712_7_fu_370_p2 = (add_ln712_6_fu_364_p2 + s_V_8_decision_function_1_fu_216_ap_return);

assign add_ln712_8_fu_446_p2 = (add_ln712_7_reg_476 + add_ln712_5_fu_442_p2);

assign add_ln712_9_fu_451_p2 = (add_ln712_8_fu_446_p2 + add_ln712_3_reg_466);

assign add_ln712_fu_334_p2 = (s_V_1_decision_function_20_fu_144_ap_return + s_V_decision_function_21_fu_136_ap_return);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_return = (add_ln712_20_reg_481 + add_ln712_9_fu_451_p2);

endmodule //myproject_axi_myproject