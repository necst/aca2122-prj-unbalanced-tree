-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_axi_decision_function_23 is
port (
    ap_ready : OUT STD_LOGIC;
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read4 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read5 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of myproject_axi_decision_function_23 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_FFFF4A41 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111110100101001000001";
    constant ap_const_lv32_FFFF8825 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111000100000100101";
    constant ap_const_lv32_6237 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000110001000110111";
    constant ap_const_lv32_7B5D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000111101101011101";
    constant ap_const_lv32_52E6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000101001011100110";
    constant ap_const_lv32_FFFFC3C9 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111100001111001001";
    constant ap_const_lv32_5FC5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000101111111000101";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv32_C2A5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001100001010100101";
    constant ap_const_lv32_30DB : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000011000011011011";
    constant ap_const_lv32_FFFFC9CF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111100100111001111";
    constant ap_const_lv32_5479 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000101010001111001";
    constant ap_const_lv32_E2D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000111000101101";
    constant ap_const_lv32_FFFFA0D9 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111010000011011001";
    constant ap_const_lv32_FFFFFC68 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111110001101000";
    constant ap_const_lv32_7058 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000111000001011000";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal comparison_fu_96_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_171_fu_102_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_172_fu_108_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_216_fu_138_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_173_fu_114_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_217_fu_144_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_174_fu_120_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_fu_150_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln193_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_175_fu_126_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_218_fu_156_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_176_fu_132_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln193_76_fu_192_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_20_fu_162_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_fu_168_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln208_fu_204_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_219_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_fu_210_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln208_fu_214_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_fu_220_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln208_102_fu_228_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal activation_220_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_23_fu_236_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_72_fu_240_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_103_fu_246_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_73_fu_254_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_221_fu_198_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_104_fu_260_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_74_fu_268_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_105_fu_274_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_fu_290_p9 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_fu_290_p10 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component myproject_axi_mux_83_32_1_1_x10 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        din3 : IN STD_LOGIC_VECTOR (31 downto 0);
        din4 : IN STD_LOGIC_VECTOR (31 downto 0);
        din5 : IN STD_LOGIC_VECTOR (31 downto 0);
        din6 : IN STD_LOGIC_VECTOR (31 downto 0);
        din7 : IN STD_LOGIC_VECTOR (31 downto 0);
        din8 : IN STD_LOGIC_VECTOR (2 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    mux_83_32_1_1_x10_U222 : component myproject_axi_mux_83_32_1_1_x10
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 32,
        din4_WIDTH => 32,
        din5_WIDTH => 32,
        din6_WIDTH => 32,
        din7_WIDTH => 32,
        din8_WIDTH => 3,
        dout_WIDTH => 32)
    port map (
        din0 => ap_const_lv32_C2A5,
        din1 => ap_const_lv32_30DB,
        din2 => ap_const_lv32_FFFFC9CF,
        din3 => ap_const_lv32_5479,
        din4 => ap_const_lv32_E2D,
        din5 => ap_const_lv32_FFFFA0D9,
        din6 => ap_const_lv32_FFFFFC68,
        din7 => ap_const_lv32_7058,
        din8 => agg_result_fu_290_p9,
        dout => agg_result_fu_290_p10);




    activation_216_fu_138_p2 <= (comparison_fu_96_p2 xor ap_const_lv1_1);
    activation_217_fu_144_p2 <= (comparison_fu_96_p2 and comparison_171_fu_102_p2);
    activation_218_fu_156_p2 <= (comparison_172_fu_108_p2 and activation_216_fu_138_p2);
    activation_219_fu_180_p2 <= (comparison_fu_96_p2 and and_ln193_fu_174_p2);
    activation_220_fu_186_p2 <= (comparison_175_fu_126_p2 and activation_218_fu_156_p2);
    activation_221_fu_198_p2 <= (xor_ln195_20_fu_162_p2 and and_ln193_76_fu_192_p2);
    activation_fu_168_p2 <= (comparison_173_fu_114_p2 and activation_217_fu_144_p2);
    agg_result_fu_290_p9 <= 
        select_ln208_105_fu_274_p3 when (or_ln208_74_fu_268_p2(0) = '1') else 
        ap_const_lv3_7;
    and_ln193_76_fu_192_p2 <= (comparison_176_fu_132_p2 and activation_216_fu_138_p2);
    and_ln193_fu_174_p2 <= (xor_ln195_fu_150_p2 and comparison_174_fu_120_p2);
    ap_ready <= ap_const_logic_1;
    ap_return <= agg_result_fu_290_p10;
    comparison_171_fu_102_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_FFFF8825)) else "0";
    comparison_172_fu_108_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_6237)) else "0";
    comparison_173_fu_114_p2 <= "1" when (signed(p_read4) < signed(ap_const_lv32_7B5D)) else "0";
    comparison_174_fu_120_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_52E6)) else "0";
    comparison_175_fu_126_p2 <= "1" when (signed(p_read5) < signed(ap_const_lv32_FFFFC3C9)) else "0";
    comparison_176_fu_132_p2 <= "1" when (signed(p_read3) < signed(ap_const_lv32_5FC5)) else "0";
    comparison_fu_96_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_FFFF4A41)) else "0";
    or_ln208_72_fu_240_p2 <= (comparison_fu_96_p2 or activation_220_fu_186_p2);
    or_ln208_73_fu_254_p2 <= (comparison_fu_96_p2 or activation_218_fu_156_p2);
    or_ln208_74_fu_268_p2 <= (or_ln208_73_fu_254_p2 or activation_221_fu_198_p2);
    or_ln208_fu_214_p2 <= (activation_219_fu_180_p2 or activation_217_fu_144_p2);
    select_ln208_102_fu_228_p3 <= 
        select_ln208_fu_220_p3 when (or_ln208_fu_214_p2(0) = '1') else 
        ap_const_lv2_3;
    select_ln208_103_fu_246_p3 <= 
        zext_ln208_23_fu_236_p1 when (comparison_fu_96_p2(0) = '1') else 
        ap_const_lv3_4;
    select_ln208_104_fu_260_p3 <= 
        select_ln208_103_fu_246_p3 when (or_ln208_72_fu_240_p2(0) = '1') else 
        ap_const_lv3_5;
    select_ln208_105_fu_274_p3 <= 
        select_ln208_104_fu_260_p3 when (or_ln208_73_fu_254_p2(0) = '1') else 
        ap_const_lv3_6;
    select_ln208_fu_220_p3 <= 
        zext_ln208_fu_210_p1 when (activation_217_fu_144_p2(0) = '1') else 
        ap_const_lv2_2;
    xor_ln195_20_fu_162_p2 <= (comparison_172_fu_108_p2 xor ap_const_lv1_1);
    xor_ln195_fu_150_p2 <= (comparison_171_fu_102_p2 xor ap_const_lv1_1);
    xor_ln208_fu_204_p2 <= (ap_const_lv1_1 xor activation_fu_168_p2);
    zext_ln208_23_fu_236_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln208_102_fu_228_p3),3));
    zext_ln208_fu_210_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(xor_ln208_fu_204_p2),2));
end behav;
