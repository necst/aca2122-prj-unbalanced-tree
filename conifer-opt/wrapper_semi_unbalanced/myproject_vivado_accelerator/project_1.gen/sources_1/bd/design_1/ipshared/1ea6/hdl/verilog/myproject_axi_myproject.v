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

wire   [31:0] s_V_1_decision_function_21_fu_148_ap_return;
reg   [31:0] s_V_1_reg_489;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] add_ln712_fu_358_p2;
reg   [31:0] add_ln712_reg_494;
wire   [31:0] add_ln712_3_fu_370_p2;
reg   [31:0] add_ln712_3_reg_499;
wire   [31:0] add_ln712_9_fu_400_p2;
reg   [31:0] add_ln712_9_reg_504;
wire   [31:0] add_ln712_12_fu_412_p2;
reg   [31:0] add_ln712_12_reg_509;
wire   [31:0] add_ln712_14_fu_424_p2;
reg   [31:0] add_ln712_14_reg_514;
wire   [31:0] add_ln712_20_fu_454_p2;
reg   [31:0] add_ln712_20_reg_519;
wire    s_V_decision_function_22_fu_138_ap_ready;
wire   [31:0] s_V_decision_function_22_fu_138_ap_return;
wire    s_V_1_decision_function_21_fu_148_ap_ready;
wire    s_V_2_decision_function_10_fu_164_ap_ready;
wire   [31:0] s_V_2_decision_function_10_fu_164_ap_return;
wire    s_V_3_decision_function_6_fu_174_ap_ready;
wire   [31:0] s_V_3_decision_function_6_fu_174_ap_return;
wire    s_V_4_decision_function_5_fu_184_ap_ready;
wire   [31:0] s_V_4_decision_function_5_fu_184_ap_return;
wire    s_V_5_decision_function_4_fu_194_ap_ready;
wire   [31:0] s_V_5_decision_function_4_fu_194_ap_return;
wire    s_V_6_decision_function_3_fu_202_ap_ready;
wire   [31:0] s_V_6_decision_function_3_fu_202_ap_return;
wire    s_V_7_decision_function_2_fu_210_ap_ready;
wire   [31:0] s_V_7_decision_function_2_fu_210_ap_return;
wire    s_V_8_decision_function_1_fu_220_ap_ready;
wire   [31:0] s_V_8_decision_function_1_fu_220_ap_return;
wire    s_V_9_decision_function_fu_230_ap_ready;
wire   [31:0] s_V_9_decision_function_fu_230_ap_return;
wire    s_V_10_decision_function_20_fu_240_ap_ready;
wire   [31:0] s_V_10_decision_function_20_fu_240_ap_return;
wire    s_V_11_decision_function_19_fu_250_ap_ready;
wire   [31:0] s_V_11_decision_function_19_fu_250_ap_return;
wire    s_V_12_decision_function_18_fu_260_ap_ready;
wire   [31:0] s_V_12_decision_function_18_fu_260_ap_return;
wire    s_V_13_decision_function_17_fu_268_ap_ready;
wire   [31:0] s_V_13_decision_function_17_fu_268_ap_return;
wire    s_V_14_decision_function_16_fu_276_ap_ready;
wire   [31:0] s_V_14_decision_function_16_fu_276_ap_return;
wire    s_V_15_decision_function_15_fu_286_ap_ready;
wire   [31:0] s_V_15_decision_function_15_fu_286_ap_return;
wire    s_V_16_decision_function_14_fu_294_ap_ready;
wire   [31:0] s_V_16_decision_function_14_fu_294_ap_return;
wire    s_V_17_decision_function_13_fu_304_ap_ready;
wire   [31:0] s_V_17_decision_function_13_fu_304_ap_return;
wire    s_V_18_decision_function_12_fu_312_ap_ready;
wire   [31:0] s_V_18_decision_function_12_fu_312_ap_return;
wire    s_V_19_decision_function_11_fu_320_ap_ready;
wire   [31:0] s_V_19_decision_function_11_fu_320_ap_return;
wire    s_V_20_decision_function_9_fu_330_ap_ready;
wire   [31:0] s_V_20_decision_function_9_fu_330_ap_return;
wire    s_V_21_decision_function_8_fu_340_ap_ready;
wire   [31:0] s_V_21_decision_function_8_fu_340_ap_return;
wire    s_V_22_decision_function_7_fu_348_ap_ready;
wire   [31:0] s_V_22_decision_function_7_fu_348_ap_return;
wire    ap_block_pp0_stage0;
wire   [31:0] add_ln712_2_fu_364_p2;
wire   [31:0] add_ln712_5_fu_376_p2;
wire   [31:0] add_ln712_7_fu_388_p2;
wire   [31:0] add_ln712_8_fu_394_p2;
wire   [31:0] add_ln712_6_fu_382_p2;
wire   [31:0] add_ln712_11_fu_406_p2;
wire   [31:0] add_ln712_13_fu_418_p2;
wire   [31:0] add_ln712_16_fu_430_p2;
wire   [31:0] add_ln712_18_fu_442_p2;
wire   [31:0] add_ln712_19_fu_448_p2;
wire   [31:0] add_ln712_17_fu_436_p2;
wire   [31:0] add_ln712_1_fu_460_p2;
wire   [31:0] add_ln712_4_fu_464_p2;
wire   [31:0] add_ln712_15_fu_474_p2;
wire   [31:0] add_ln712_21_fu_478_p2;
wire   [31:0] add_ln712_10_fu_469_p2;
wire    ap_ce_reg;

myproject_axi_decision_function_22 s_V_decision_function_22_fu_138(
    .ap_ready(s_V_decision_function_22_fu_138_ap_ready),
    .p_read1(p_read1),
    .p_read2(p_read2),
    .p_read3(p_read5),
    .ap_return(s_V_decision_function_22_fu_138_ap_return)
);

myproject_axi_decision_function_21 s_V_1_decision_function_21_fu_148(
    .ap_ready(s_V_1_decision_function_21_fu_148_ap_ready),
    .p_read1(p_read),
    .p_read2(p_read2),
    .p_read3(p_read3),
    .p_read4(p_read4),
    .p_read5(p_read5),
    .p_read6(p_read7),
    .ap_return(s_V_1_decision_function_21_fu_148_ap_return)
);

myproject_axi_decision_function_10 s_V_2_decision_function_10_fu_164(
    .ap_ready(s_V_2_decision_function_10_fu_164_ap_ready),
    .p_read1(p_read2),
    .p_read2(p_read4),
    .p_read3(p_read7),
    .ap_return(s_V_2_decision_function_10_fu_164_ap_return)
);

myproject_axi_decision_function_6 s_V_3_decision_function_6_fu_174(
    .ap_ready(s_V_3_decision_function_6_fu_174_ap_ready),
    .p_read1(p_read3),
    .p_read2(p_read8),
    .p_read3(p_read9),
    .ap_return(s_V_3_decision_function_6_fu_174_ap_return)
);

myproject_axi_decision_function_5 s_V_4_decision_function_5_fu_184(
    .ap_ready(s_V_4_decision_function_5_fu_184_ap_ready),
    .p_read1(p_read),
    .p_read2(p_read3),
    .p_read3(p_read6),
    .ap_return(s_V_4_decision_function_5_fu_184_ap_return)
);

myproject_axi_decision_function_4 s_V_5_decision_function_4_fu_194(
    .ap_ready(s_V_5_decision_function_4_fu_194_ap_ready),
    .p_read1(p_read),
    .p_read2(p_read9),
    .ap_return(s_V_5_decision_function_4_fu_194_ap_return)
);

myproject_axi_decision_function_3 s_V_6_decision_function_3_fu_202(
    .ap_ready(s_V_6_decision_function_3_fu_202_ap_ready),
    .p_read1(p_read4),
    .p_read2(p_read9),
    .ap_return(s_V_6_decision_function_3_fu_202_ap_return)
);

myproject_axi_decision_function_2 s_V_7_decision_function_2_fu_210(
    .ap_ready(s_V_7_decision_function_2_fu_210_ap_ready),
    .p_read1(p_read3),
    .p_read2(p_read5),
    .p_read3(p_read6),
    .ap_return(s_V_7_decision_function_2_fu_210_ap_return)
);

myproject_axi_decision_function_1 s_V_8_decision_function_1_fu_220(
    .ap_ready(s_V_8_decision_function_1_fu_220_ap_ready),
    .p_read1(p_read2),
    .p_read2(p_read5),
    .p_read3(p_read7),
    .ap_return(s_V_8_decision_function_1_fu_220_ap_return)
);

myproject_axi_decision_function s_V_9_decision_function_fu_230(
    .ap_ready(s_V_9_decision_function_fu_230_ap_ready),
    .p_read1(p_read1),
    .p_read2(p_read4),
    .p_read3(p_read7),
    .ap_return(s_V_9_decision_function_fu_230_ap_return)
);

myproject_axi_decision_function_20 s_V_10_decision_function_20_fu_240(
    .ap_ready(s_V_10_decision_function_20_fu_240_ap_ready),
    .p_read1(p_read1),
    .p_read2(p_read2),
    .p_read3(p_read3),
    .ap_return(s_V_10_decision_function_20_fu_240_ap_return)
);

myproject_axi_decision_function_19 s_V_11_decision_function_19_fu_250(
    .ap_ready(s_V_11_decision_function_19_fu_250_ap_ready),
    .p_read1(p_read),
    .p_read2(p_read3),
    .p_read3(p_read8),
    .ap_return(s_V_11_decision_function_19_fu_250_ap_return)
);

myproject_axi_decision_function_18 s_V_12_decision_function_18_fu_260(
    .ap_ready(s_V_12_decision_function_18_fu_260_ap_ready),
    .p_read1(p_read2),
    .p_read2(p_read5),
    .ap_return(s_V_12_decision_function_18_fu_260_ap_return)
);

myproject_axi_decision_function_17 s_V_13_decision_function_17_fu_268(
    .ap_ready(s_V_13_decision_function_17_fu_268_ap_ready),
    .p_read1(p_read8),
    .p_read2(p_read9),
    .ap_return(s_V_13_decision_function_17_fu_268_ap_return)
);

myproject_axi_decision_function_16 s_V_14_decision_function_16_fu_276(
    .ap_ready(s_V_14_decision_function_16_fu_276_ap_ready),
    .p_read1(p_read),
    .p_read2(p_read2),
    .p_read3(p_read9),
    .ap_return(s_V_14_decision_function_16_fu_276_ap_return)
);

myproject_axi_decision_function_15 s_V_15_decision_function_15_fu_286(
    .ap_ready(s_V_15_decision_function_15_fu_286_ap_ready),
    .p_read1(p_read4),
    .p_read2(p_read6),
    .ap_return(s_V_15_decision_function_15_fu_286_ap_return)
);

myproject_axi_decision_function_14 s_V_16_decision_function_14_fu_294(
    .ap_ready(s_V_16_decision_function_14_fu_294_ap_ready),
    .p_read1(p_read3),
    .p_read2(p_read6),
    .p_read3(p_read7),
    .ap_return(s_V_16_decision_function_14_fu_294_ap_return)
);

myproject_axi_decision_function_13 s_V_17_decision_function_13_fu_304(
    .ap_ready(s_V_17_decision_function_13_fu_304_ap_ready),
    .p_read1(p_read1),
    .p_read2(p_read7),
    .ap_return(s_V_17_decision_function_13_fu_304_ap_return)
);

myproject_axi_decision_function_12 s_V_18_decision_function_12_fu_312(
    .ap_ready(s_V_18_decision_function_12_fu_312_ap_ready),
    .p_read1(p_read),
    .p_read2(p_read3),
    .ap_return(s_V_18_decision_function_12_fu_312_ap_return)
);

myproject_axi_decision_function_11 s_V_19_decision_function_11_fu_320(
    .ap_ready(s_V_19_decision_function_11_fu_320_ap_ready),
    .p_read1(p_read2),
    .p_read2(p_read4),
    .p_read3(p_read8),
    .ap_return(s_V_19_decision_function_11_fu_320_ap_return)
);

myproject_axi_decision_function_9 s_V_20_decision_function_9_fu_330(
    .ap_ready(s_V_20_decision_function_9_fu_330_ap_ready),
    .p_read1(p_read2),
    .p_read2(p_read3),
    .p_read3(p_read9),
    .ap_return(s_V_20_decision_function_9_fu_330_ap_return)
);

myproject_axi_decision_function_8 s_V_21_decision_function_8_fu_340(
    .ap_ready(s_V_21_decision_function_8_fu_340_ap_ready),
    .p_read1(p_read4),
    .p_read2(p_read7),
    .ap_return(s_V_21_decision_function_8_fu_340_ap_return)
);

myproject_axi_decision_function_7 s_V_22_decision_function_7_fu_348(
    .ap_ready(s_V_22_decision_function_7_fu_348_ap_ready),
    .p_read1(p_read5),
    .p_read2(p_read6),
    .p_read3(p_read9),
    .ap_return(s_V_22_decision_function_7_fu_348_ap_return)
);

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln712_12_reg_509 <= add_ln712_12_fu_412_p2;
        add_ln712_14_reg_514 <= add_ln712_14_fu_424_p2;
        add_ln712_20_reg_519 <= add_ln712_20_fu_454_p2;
        add_ln712_3_reg_499 <= add_ln712_3_fu_370_p2;
        add_ln712_9_reg_504 <= add_ln712_9_fu_400_p2;
        add_ln712_reg_494 <= add_ln712_fu_358_p2;
        s_V_1_reg_489 <= s_V_1_decision_function_21_fu_148_ap_return;
    end
end

assign add_ln712_10_fu_469_p2 = (add_ln712_9_reg_504 + add_ln712_4_fu_464_p2);

assign add_ln712_11_fu_406_p2 = (s_V_13_decision_function_17_fu_268_ap_return + s_V_14_decision_function_16_fu_276_ap_return);

assign add_ln712_12_fu_412_p2 = (add_ln712_11_fu_406_p2 + s_V_12_decision_function_18_fu_260_ap_return);

assign add_ln712_13_fu_418_p2 = (s_V_16_decision_function_14_fu_294_ap_return + s_V_17_decision_function_13_fu_304_ap_return);

assign add_ln712_14_fu_424_p2 = (add_ln712_13_fu_418_p2 + s_V_15_decision_function_15_fu_286_ap_return);

assign add_ln712_15_fu_474_p2 = (add_ln712_14_reg_514 + add_ln712_12_reg_509);

assign add_ln712_16_fu_430_p2 = (s_V_19_decision_function_11_fu_320_ap_return + s_V_20_decision_function_9_fu_330_ap_return);

assign add_ln712_17_fu_436_p2 = (add_ln712_16_fu_430_p2 + s_V_18_decision_function_12_fu_312_ap_return);

assign add_ln712_18_fu_442_p2 = (s_V_22_decision_function_7_fu_348_ap_return + 32'd1161);

assign add_ln712_19_fu_448_p2 = (add_ln712_18_fu_442_p2 + s_V_21_decision_function_8_fu_340_ap_return);

assign add_ln712_1_fu_460_p2 = (add_ln712_reg_494 + s_V_1_reg_489);

assign add_ln712_20_fu_454_p2 = (add_ln712_19_fu_448_p2 + add_ln712_17_fu_436_p2);

assign add_ln712_21_fu_478_p2 = (add_ln712_20_reg_519 + add_ln712_15_fu_474_p2);

assign add_ln712_2_fu_364_p2 = (s_V_4_decision_function_5_fu_184_ap_return + s_V_5_decision_function_4_fu_194_ap_return);

assign add_ln712_3_fu_370_p2 = (add_ln712_2_fu_364_p2 + s_V_3_decision_function_6_fu_174_ap_return);

assign add_ln712_4_fu_464_p2 = (add_ln712_3_reg_499 + add_ln712_1_fu_460_p2);

assign add_ln712_5_fu_376_p2 = (s_V_7_decision_function_2_fu_210_ap_return + s_V_8_decision_function_1_fu_220_ap_return);

assign add_ln712_6_fu_382_p2 = (add_ln712_5_fu_376_p2 + s_V_6_decision_function_3_fu_202_ap_return);

assign add_ln712_7_fu_388_p2 = (s_V_10_decision_function_20_fu_240_ap_return + s_V_11_decision_function_19_fu_250_ap_return);

assign add_ln712_8_fu_394_p2 = (add_ln712_7_fu_388_p2 + s_V_9_decision_function_fu_230_ap_return);

assign add_ln712_9_fu_400_p2 = (add_ln712_8_fu_394_p2 + add_ln712_6_fu_382_p2);

assign add_ln712_fu_358_p2 = (s_V_decision_function_22_fu_138_ap_return + s_V_2_decision_function_10_fu_164_ap_return);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_return = (add_ln712_21_fu_478_p2 + add_ln712_10_fu_469_p2);

endmodule //myproject_axi_myproject
