// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module myproject_axi_decision_function_5 (
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

wire   [0:0] comparison_fu_94_p2;
wire   [0:0] comparison_49_fu_100_p2;
wire   [0:0] activation_fu_142_p2;
wire   [0:0] xor_ln135_fu_154_p2;
wire   [0:0] comparison_50_fu_106_p2;
wire   [0:0] activation_129_fu_160_p2;
wire   [0:0] xor_ln135_16_fu_172_p2;
wire   [0:0] comparison_51_fu_112_p2;
wire   [0:0] activation_130_fu_166_p2;
wire   [0:0] xor_ln135_17_fu_190_p2;
wire   [0:0] comparison_52_fu_118_p2;
wire   [0:0] activation_132_fu_184_p2;
wire   [0:0] xor_ln135_18_fu_208_p2;
wire   [0:0] comparison_53_fu_124_p2;
wire   [0:0] activation_134_fu_202_p2;
wire   [0:0] xor_ln135_19_fu_226_p2;
wire   [0:0] comparison_54_fu_130_p2;
wire   [0:0] activation_136_fu_220_p2;
wire   [0:0] comparison_55_fu_136_p2;
wire   [0:0] xor_ln135_20_fu_244_p2;
wire   [0:0] and_ln133_fu_250_p2;
wire   [0:0] activation_140_fu_148_p2;
wire   [0:0] or_ln148_fu_262_p2;
wire   [0:0] activation_141_fu_178_p2;
wire   [1:0] zext_ln148_fu_268_p1;
wire   [0:0] or_ln148_21_fu_272_p2;
wire   [0:0] activation_142_fu_196_p2;
wire   [1:0] select_ln148_fu_278_p3;
wire   [1:0] select_ln148_22_fu_292_p3;
wire   [0:0] or_ln148_22_fu_286_p2;
wire   [0:0] activation_143_fu_214_p2;
wire   [2:0] zext_ln148_7_fu_300_p1;
wire   [0:0] or_ln148_23_fu_304_p2;
wire   [0:0] activation_144_fu_232_p2;
wire   [2:0] select_ln148_23_fu_310_p3;
wire   [0:0] or_ln148_24_fu_318_p2;
wire   [0:0] activation_145_fu_238_p2;
wire   [2:0] select_ln148_24_fu_324_p3;
wire   [0:0] or_ln148_25_fu_332_p2;
wire   [0:0] activation_146_fu_256_p2;
wire   [2:0] select_ln148_25_fu_338_p3;
wire   [2:0] select_ln148_26_fu_352_p3;
wire   [0:0] or_ln148_26_fu_346_p2;
wire   [3:0] zext_ln148_8_fu_360_p1;
wire   [3:0] agg_result_fu_372_p10;
wire   [31:0] agg_result_fu_372_p11;

myproject_axi_mux_94_32_1_1 #(
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
    .din8_WIDTH( 32 ),
    .din9_WIDTH( 4 ),
    .dout_WIDTH( 32 ))
mux_94_32_1_1_U24(
    .din0(32'd60435),
    .din1(32'd49727),
    .din2(32'd53403),
    .din3(32'd16296),
    .din4(32'd30423),
    .din5(32'd16496),
    .din6(32'd3784),
    .din7(32'd7411),
    .din8(32'd4294908677),
    .din9(agg_result_fu_372_p10),
    .dout(agg_result_fu_372_p11)
);

assign activation_129_fu_160_p2 = (xor_ln135_fu_154_p2 & activation_fu_142_p2);

assign activation_130_fu_166_p2 = (comparison_50_fu_106_p2 & activation_129_fu_160_p2);

assign activation_132_fu_184_p2 = (comparison_51_fu_112_p2 & activation_130_fu_166_p2);

assign activation_134_fu_202_p2 = (comparison_52_fu_118_p2 & activation_132_fu_184_p2);

assign activation_136_fu_220_p2 = (comparison_53_fu_124_p2 & activation_134_fu_202_p2);

assign activation_140_fu_148_p2 = (comparison_49_fu_100_p2 & activation_fu_142_p2);

assign activation_141_fu_178_p2 = (xor_ln135_16_fu_172_p2 & activation_129_fu_160_p2);

assign activation_142_fu_196_p2 = (xor_ln135_17_fu_190_p2 & activation_130_fu_166_p2);

assign activation_143_fu_214_p2 = (xor_ln135_18_fu_208_p2 & activation_132_fu_184_p2);

assign activation_144_fu_232_p2 = (xor_ln135_19_fu_226_p2 & activation_134_fu_202_p2);

assign activation_145_fu_238_p2 = (comparison_54_fu_130_p2 & activation_136_fu_220_p2);

assign activation_146_fu_256_p2 = (and_ln133_fu_250_p2 & activation_136_fu_220_p2);

assign activation_fu_142_p2 = (comparison_fu_94_p2 ^ 1'd1);

assign agg_result_fu_372_p10 = ((or_ln148_26_fu_346_p2[0:0] == 1'b1) ? zext_ln148_8_fu_360_p1 : 4'd8);

assign and_ln133_fu_250_p2 = (xor_ln135_20_fu_244_p2 & comparison_55_fu_136_p2);

assign ap_ready = 1'b1;

assign ap_return = agg_result_fu_372_p11;

assign comparison_49_fu_100_p2 = (($signed(p_read1) < $signed(32'd4294886093)) ? 1'b1 : 1'b0);

assign comparison_50_fu_106_p2 = (($signed(p_read1) < $signed(32'd108180)) ? 1'b1 : 1'b0);

assign comparison_51_fu_112_p2 = (($signed(p_read4) < $signed(32'd53755)) ? 1'b1 : 1'b0);

assign comparison_52_fu_118_p2 = (($signed(p_read2) < $signed(32'd88509)) ? 1'b1 : 1'b0);

assign comparison_53_fu_124_p2 = (($signed(p_read3) < $signed(32'd81127)) ? 1'b1 : 1'b0);

assign comparison_54_fu_130_p2 = (($signed(p_read3) < $signed(32'd4294895553)) ? 1'b1 : 1'b0);

assign comparison_55_fu_136_p2 = (($signed(p_read2) < $signed(32'd4294859908)) ? 1'b1 : 1'b0);

assign comparison_fu_94_p2 = (($signed(p_read4) < $signed(32'd4294875285)) ? 1'b1 : 1'b0);

assign or_ln148_21_fu_272_p2 = (or_ln148_fu_262_p2 | activation_141_fu_178_p2);

assign or_ln148_22_fu_286_p2 = (or_ln148_21_fu_272_p2 | activation_142_fu_196_p2);

assign or_ln148_23_fu_304_p2 = (or_ln148_22_fu_286_p2 | activation_143_fu_214_p2);

assign or_ln148_24_fu_318_p2 = (or_ln148_23_fu_304_p2 | activation_144_fu_232_p2);

assign or_ln148_25_fu_332_p2 = (or_ln148_24_fu_318_p2 | activation_145_fu_238_p2);

assign or_ln148_26_fu_346_p2 = (or_ln148_25_fu_332_p2 | activation_146_fu_256_p2);

assign or_ln148_fu_262_p2 = (comparison_fu_94_p2 | activation_140_fu_148_p2);

assign select_ln148_22_fu_292_p3 = ((or_ln148_21_fu_272_p2[0:0] == 1'b1) ? select_ln148_fu_278_p3 : 2'd3);

assign select_ln148_23_fu_310_p3 = ((or_ln148_22_fu_286_p2[0:0] == 1'b1) ? zext_ln148_7_fu_300_p1 : 3'd4);

assign select_ln148_24_fu_324_p3 = ((or_ln148_23_fu_304_p2[0:0] == 1'b1) ? select_ln148_23_fu_310_p3 : 3'd5);

assign select_ln148_25_fu_338_p3 = ((or_ln148_24_fu_318_p2[0:0] == 1'b1) ? select_ln148_24_fu_324_p3 : 3'd6);

assign select_ln148_26_fu_352_p3 = ((or_ln148_25_fu_332_p2[0:0] == 1'b1) ? select_ln148_25_fu_338_p3 : 3'd7);

assign select_ln148_fu_278_p3 = ((or_ln148_fu_262_p2[0:0] == 1'b1) ? zext_ln148_fu_268_p1 : 2'd2);

assign xor_ln135_16_fu_172_p2 = (comparison_50_fu_106_p2 ^ 1'd1);

assign xor_ln135_17_fu_190_p2 = (comparison_51_fu_112_p2 ^ 1'd1);

assign xor_ln135_18_fu_208_p2 = (comparison_52_fu_118_p2 ^ 1'd1);

assign xor_ln135_19_fu_226_p2 = (comparison_53_fu_124_p2 ^ 1'd1);

assign xor_ln135_20_fu_244_p2 = (comparison_54_fu_130_p2 ^ 1'd1);

assign xor_ln135_fu_154_p2 = (comparison_49_fu_100_p2 ^ 1'd1);

assign zext_ln148_7_fu_300_p1 = select_ln148_22_fu_292_p3;

assign zext_ln148_8_fu_360_p1 = select_ln148_26_fu_352_p3;

assign zext_ln148_fu_268_p1 = activation_fu_142_p2;

endmodule //myproject_axi_decision_function_5