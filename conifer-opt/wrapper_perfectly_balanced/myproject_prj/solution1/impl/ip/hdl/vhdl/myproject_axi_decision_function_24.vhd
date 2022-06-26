-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_axi_decision_function_24 is
port (
    ap_ready : OUT STD_LOGIC;
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read4 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of myproject_axi_decision_function_24 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_FFFE9F3E : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111101001111100111110";
    constant ap_const_lv32_296D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000010100101101101";
    constant ap_const_lv32_FFFE043E : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111100000010000111110";
    constant ap_const_lv32_52AD : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000101001010101101";
    constant ap_const_lv32_21593 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000100001010110010011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv32_CC2B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001100110000101011";
    constant ap_const_lv32_DF77 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001101111101110111";
    constant ap_const_lv32_FFFFCF2B : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111100111100101011";
    constant ap_const_lv32_9454 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001001010001010100";
    constant ap_const_lv32_FFFFF0A4 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111000010100100";
    constant ap_const_lv32_C83D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001100100000111101";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal comparison_fu_76_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_167_fu_82_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_fu_112_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_168_fu_88_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_211_fu_106_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_169_fu_94_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln193_fu_136_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_170_fu_100_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln193_79_fu_148_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_21_fu_130_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_fu_118_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_212_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln208_78_fu_166_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln208_fu_160_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_213_fu_142_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_fu_172_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln208_75_fu_176_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_fu_182_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln208_107_fu_196_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln208_76_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_214_fu_154_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_24_fu_204_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_77_fu_208_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_108_fu_214_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_fu_230_p7 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_fu_230_p8 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component myproject_axi_mux_63_32_1_1 IS
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
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        din3 : IN STD_LOGIC_VECTOR (31 downto 0);
        din4 : IN STD_LOGIC_VECTOR (31 downto 0);
        din5 : IN STD_LOGIC_VECTOR (31 downto 0);
        din6 : IN STD_LOGIC_VECTOR (2 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    mux_63_32_1_1_U216 : component myproject_axi_mux_63_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 32,
        din4_WIDTH => 32,
        din5_WIDTH => 32,
        din6_WIDTH => 3,
        dout_WIDTH => 32)
    port map (
        din0 => ap_const_lv32_CC2B,
        din1 => ap_const_lv32_DF77,
        din2 => ap_const_lv32_FFFFCF2B,
        din3 => ap_const_lv32_9454,
        din4 => ap_const_lv32_FFFFF0A4,
        din5 => ap_const_lv32_C83D,
        din6 => agg_result_fu_230_p7,
        dout => agg_result_fu_230_p8);




    activation_211_fu_106_p2 <= (comparison_fu_76_p2 xor ap_const_lv1_1);
    activation_212_fu_124_p2 <= (comparison_168_fu_88_p2 and activation_211_fu_106_p2);
    activation_213_fu_142_p2 <= (comparison_167_fu_82_p2 and and_ln193_fu_136_p2);
    activation_214_fu_154_p2 <= (xor_ln195_21_fu_130_p2 and and_ln193_79_fu_148_p2);
    activation_fu_118_p2 <= (xor_ln195_fu_112_p2 and comparison_fu_76_p2);
    agg_result_fu_230_p7 <= 
        select_ln208_108_fu_214_p3 when (or_ln208_77_fu_208_p2(0) = '1') else 
        ap_const_lv3_5;
    and_ln193_79_fu_148_p2 <= (comparison_170_fu_100_p2 and activation_211_fu_106_p2);
    and_ln193_fu_136_p2 <= (comparison_fu_76_p2 and comparison_169_fu_94_p2);
    ap_ready <= ap_const_logic_1;
    ap_return <= agg_result_fu_230_p8;
    comparison_167_fu_82_p2 <= "1" when (signed(p_read3) < signed(ap_const_lv32_296D)) else "0";
    comparison_168_fu_88_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_FFFE043E)) else "0";
    comparison_169_fu_94_p2 <= "1" when (signed(p_read4) < signed(ap_const_lv32_52AD)) else "0";
    comparison_170_fu_100_p2 <= "1" when (signed(p_read3) < signed(ap_const_lv32_21593)) else "0";
    comparison_fu_76_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_FFFE9F3E)) else "0";
    or_ln208_75_fu_176_p2 <= (or_ln208_fu_160_p2 or activation_213_fu_142_p2);
    or_ln208_76_fu_190_p2 <= (comparison_fu_76_p2 or activation_212_fu_124_p2);
    or_ln208_77_fu_208_p2 <= (or_ln208_76_fu_190_p2 or activation_214_fu_154_p2);
    or_ln208_78_fu_166_p2 <= (comparison_167_fu_82_p2 or activation_211_fu_106_p2);
    or_ln208_fu_160_p2 <= (activation_fu_118_p2 or activation_212_fu_124_p2);
    select_ln208_107_fu_196_p3 <= 
        select_ln208_fu_182_p3 when (or_ln208_75_fu_176_p2(0) = '1') else 
        ap_const_lv2_3;
    select_ln208_108_fu_214_p3 <= 
        zext_ln208_24_fu_204_p1 when (or_ln208_76_fu_190_p2(0) = '1') else 
        ap_const_lv3_4;
    select_ln208_fu_182_p3 <= 
        zext_ln208_fu_172_p1 when (or_ln208_fu_160_p2(0) = '1') else 
        ap_const_lv2_2;
    xor_ln195_21_fu_130_p2 <= (comparison_168_fu_88_p2 xor ap_const_lv1_1);
    xor_ln195_fu_112_p2 <= (comparison_167_fu_82_p2 xor ap_const_lv1_1);
    zext_ln208_24_fu_204_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln208_107_fu_196_p3),3));
    zext_ln208_fu_172_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln208_78_fu_166_p2),2));
end behav;