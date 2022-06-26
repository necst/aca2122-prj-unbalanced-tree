-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_axi_decision_function_49 is
port (
    ap_ready : OUT STD_LOGIC;
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of myproject_axi_decision_function_49 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_11E48 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010001111001001000";
    constant ap_const_lv32_FFFEA0CB : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111101010000011001011";
    constant ap_const_lv32_1E77A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011110011101111010";
    constant ap_const_lv32_FFFDE413 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111011110010000010011";
    constant ap_const_lv32_13DE4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010011110111100100";
    constant ap_const_lv32_F16D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001111000101101101";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv32_1A12F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011010000100101111";
    constant ap_const_lv32_1BD37 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011011110100110111";
    constant ap_const_lv32_C58B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001100010110001011";
    constant ap_const_lv32_FFFF8A76 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111000101001110110";
    constant ap_const_lv32_E3EC : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001110001111101100";
    constant ap_const_lv32_89D8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001000100111011000";
    constant ap_const_lv32_1BDEF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011011110111101111";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal comparison_fu_74_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_30_fu_80_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_fu_116_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_26_fu_86_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_31_fu_110_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_10_fu_134_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_31_fu_92_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_11_fu_146_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_28_fu_98_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_33_fu_122_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_29_fu_104_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_34_fu_128_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_fu_140_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln208_fu_170_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_35_fu_152_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_fu_176_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln208_17_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_36_fu_158_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_fu_186_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln208_20_fu_200_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln208_18_fu_194_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_6_fu_208_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_19_fu_212_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_37_fu_164_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_21_fu_218_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_20_fu_226_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_22_fu_232_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_254_p8 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_21_fu_240_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_254_p9 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component myproject_axi_mux_73_32_1_1 IS
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
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        din3 : IN STD_LOGIC_VECTOR (31 downto 0);
        din4 : IN STD_LOGIC_VECTOR (31 downto 0);
        din5 : IN STD_LOGIC_VECTOR (31 downto 0);
        din6 : IN STD_LOGIC_VECTOR (31 downto 0);
        din7 : IN STD_LOGIC_VECTOR (2 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    mux_73_32_1_1_U21 : component myproject_axi_mux_73_32_1_1
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
        din7_WIDTH => 3,
        dout_WIDTH => 32)
    port map (
        din0 => ap_const_lv32_1A12F,
        din1 => ap_const_lv32_1BD37,
        din2 => ap_const_lv32_C58B,
        din3 => ap_const_lv32_FFFF8A76,
        din4 => ap_const_lv32_E3EC,
        din5 => ap_const_lv32_89D8,
        din6 => ap_const_lv32_1BDEF,
        din7 => tmp_fu_254_p8,
        dout => tmp_fu_254_p9);




    activation_31_fu_110_p2 <= (comparison_fu_74_p2 xor ap_const_lv1_1);
    activation_33_fu_122_p2 <= (xor_ln195_fu_116_p2 and comparison_fu_74_p2);
    activation_34_fu_128_p2 <= (comparison_26_fu_86_p2 and activation_31_fu_110_p2);
    activation_35_fu_152_p2 <= (xor_ln195_11_fu_146_p2 and comparison_30_fu_80_p2);
    activation_36_fu_158_p2 <= (comparison_28_fu_98_p2 and activation_33_fu_122_p2);
    activation_37_fu_164_p2 <= (comparison_29_fu_104_p2 and activation_34_fu_128_p2);
    activation_fu_140_p2 <= (xor_ln195_10_fu_134_p2 and activation_31_fu_110_p2);
    ap_ready <= ap_const_logic_1;
    ap_return <= 
        tmp_fu_254_p9 when (or_ln208_21_fu_240_p2(0) = '1') else 
        ap_const_lv32_0;
    comparison_26_fu_86_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_1E77A)) else "0";
    comparison_28_fu_98_p2 <= "1" when (signed(p_read3) < signed(ap_const_lv32_13DE4)) else "0";
    comparison_29_fu_104_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_F16D)) else "0";
    comparison_30_fu_80_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_FFFEA0CB)) else "0";
    comparison_31_fu_92_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_FFFDE413)) else "0";
    comparison_fu_74_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_11E48)) else "0";
    or_ln208_17_fu_180_p2 <= (or_ln208_fu_170_p2 or activation_35_fu_152_p2);
    or_ln208_18_fu_194_p2 <= (or_ln208_17_fu_180_p2 or activation_36_fu_158_p2);
    or_ln208_19_fu_212_p2 <= (or_ln208_17_fu_180_p2 or activation_33_fu_122_p2);
    or_ln208_20_fu_226_p2 <= (or_ln208_19_fu_212_p2 or activation_37_fu_164_p2);
    or_ln208_21_fu_240_p2 <= (or_ln208_19_fu_212_p2 or activation_34_fu_128_p2);
    or_ln208_fu_170_p2 <= (comparison_31_fu_92_p2 or activation_fu_140_p2);
    select_ln208_20_fu_200_p3 <= 
        select_ln208_fu_186_p3 when (or_ln208_17_fu_180_p2(0) = '1') else 
        ap_const_lv2_3;
    select_ln208_21_fu_218_p3 <= 
        zext_ln208_6_fu_208_p1 when (or_ln208_18_fu_194_p2(0) = '1') else 
        ap_const_lv3_4;
    select_ln208_22_fu_232_p3 <= 
        select_ln208_21_fu_218_p3 when (or_ln208_19_fu_212_p2(0) = '1') else 
        ap_const_lv3_5;
    select_ln208_fu_186_p3 <= 
        zext_ln208_fu_176_p1 when (or_ln208_fu_170_p2(0) = '1') else 
        ap_const_lv2_2;
    tmp_fu_254_p8 <= 
        select_ln208_22_fu_232_p3 when (or_ln208_20_fu_226_p2(0) = '1') else 
        ap_const_lv3_6;
    xor_ln195_10_fu_134_p2 <= (comparison_26_fu_86_p2 xor ap_const_lv1_1);
    xor_ln195_11_fu_146_p2 <= (comparison_31_fu_92_p2 xor ap_const_lv1_1);
    xor_ln195_fu_116_p2 <= (comparison_30_fu_80_p2 xor ap_const_lv1_1);
    zext_ln208_6_fu_208_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln208_20_fu_200_p3),3));
    zext_ln208_fu_176_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(comparison_26_fu_86_p2),2));
end behav;
