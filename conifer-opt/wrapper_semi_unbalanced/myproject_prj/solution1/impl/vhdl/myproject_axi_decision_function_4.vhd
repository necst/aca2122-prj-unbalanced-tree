-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_axi_decision_function_4 is
port (
    ap_ready : OUT STD_LOGIC;
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of myproject_axi_decision_function_4 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_18A62 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011000101001100010";
    constant ap_const_lv32_FFFF5040 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111110101000001000000";
    constant ap_const_lv32_FFFE659E : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111100110010110011110";
    constant ap_const_lv32_1F5A5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011111010110100101";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_174ED : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010111010011101101";
    constant ap_const_lv32_16746 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010110011101000110";
    constant ap_const_lv32_4E99 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000100111010011001";
    constant ap_const_lv32_FFFF9D63 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111001110101100011";
    constant ap_const_lv32_1FA67 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011111101001100111";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal comparison_fu_54_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_18_fu_60_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_fu_84_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_19_fu_66_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_1_fu_96_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_17_fu_72_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_26_fu_90_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_fu_78_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln208_fu_114_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_30_fu_102_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_fu_120_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln208_6_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_31_fu_108_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_fu_130_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln208_7_fu_144_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln208_7_fu_138_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_3_fu_152_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_170_p6 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_8_fu_156_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_170_p7 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component myproject_axi_mux_53_32_1_1_x IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        din3 : IN STD_LOGIC_VECTOR (31 downto 0);
        din4 : IN STD_LOGIC_VECTOR (31 downto 0);
        din5 : IN STD_LOGIC_VECTOR (2 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    mux_53_32_1_1_x_U49 : component myproject_axi_mux_53_32_1_1_x
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 32,
        din4_WIDTH => 32,
        din5_WIDTH => 3,
        dout_WIDTH => 32)
    port map (
        din0 => ap_const_lv32_174ED,
        din1 => ap_const_lv32_16746,
        din2 => ap_const_lv32_4E99,
        din3 => ap_const_lv32_FFFF9D63,
        din4 => ap_const_lv32_1FA67,
        din5 => tmp_fu_170_p6,
        dout => tmp_fu_170_p7);




    activation_26_fu_90_p2 <= (xor_ln195_fu_84_p2 and comparison_fu_54_p2);
    activation_30_fu_102_p2 <= (xor_ln195_1_fu_96_p2 and comparison_18_fu_60_p2);
    activation_31_fu_108_p2 <= (comparison_17_fu_72_p2 and activation_26_fu_90_p2);
    activation_fu_78_p2 <= (comparison_fu_54_p2 xor ap_const_lv1_1);
    ap_ready <= ap_const_logic_1;
    ap_return <= 
        tmp_fu_170_p7 when (or_ln208_8_fu_156_p2(0) = '1') else 
        ap_const_lv32_0;
    comparison_17_fu_72_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_1F5A5)) else "0";
    comparison_18_fu_60_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_FFFF5040)) else "0";
    comparison_19_fu_66_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_FFFE659E)) else "0";
    comparison_fu_54_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_18A62)) else "0";
    or_ln208_6_fu_124_p2 <= (or_ln208_fu_114_p2 or activation_30_fu_102_p2);
    or_ln208_7_fu_138_p2 <= (or_ln208_6_fu_124_p2 or activation_31_fu_108_p2);
    or_ln208_8_fu_156_p2 <= (or_ln208_6_fu_124_p2 or activation_26_fu_90_p2);
    or_ln208_fu_114_p2 <= (comparison_19_fu_66_p2 or activation_fu_78_p2);
    select_ln208_7_fu_144_p3 <= 
        select_ln208_fu_130_p3 when (or_ln208_6_fu_124_p2(0) = '1') else 
        ap_const_lv2_3;
    select_ln208_fu_130_p3 <= 
        zext_ln208_fu_120_p1 when (or_ln208_fu_114_p2(0) = '1') else 
        ap_const_lv2_2;
    tmp_fu_170_p6 <= 
        zext_ln208_3_fu_152_p1 when (or_ln208_7_fu_138_p2(0) = '1') else 
        ap_const_lv3_4;
    xor_ln195_1_fu_96_p2 <= (comparison_19_fu_66_p2 xor ap_const_lv1_1);
    xor_ln195_fu_84_p2 <= (comparison_18_fu_60_p2 xor ap_const_lv1_1);
    zext_ln208_3_fu_152_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln208_7_fu_144_p3),3));
    zext_ln208_fu_120_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(comparison_fu_54_p2),2));
end behav;
