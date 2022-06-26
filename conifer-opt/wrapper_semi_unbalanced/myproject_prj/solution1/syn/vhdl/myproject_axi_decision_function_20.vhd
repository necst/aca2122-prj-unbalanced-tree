-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_axi_decision_function_20 is
port (
    ap_ready : OUT STD_LOGIC;
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of myproject_axi_decision_function_20 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_E4DA : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001110010011011010";
    constant ap_const_lv32_FFFF45C8 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111110100010111001000";
    constant ap_const_lv32_FFFF8825 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111000100000100101";
    constant ap_const_lv32_1AF64 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011010111101100100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_8DD7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001000110111010111";
    constant ap_const_lv32_F263 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001111001001100011";
    constant ap_const_lv32_9C8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000100111001000";
    constant ap_const_lv32_FFFFA71C : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111010011100011100";
    constant ap_const_lv32_10C74 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010000110001110100";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal comparison_fu_62_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_33_fu_68_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_34_fu_74_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_35_fu_80_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_fu_92_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln193_fu_104_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_58_fu_98_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_fu_86_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln208_fu_116_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_fu_122_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln208_16_fu_126_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_59_fu_110_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_fu_132_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln208_18_fu_146_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln208_17_fu_140_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_6_fu_154_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_fu_166_p6 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_fu_166_p7 : STD_LOGIC_VECTOR (31 downto 0);
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
    mux_53_32_1_1_x_U70 : component myproject_axi_mux_53_32_1_1_x
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
        din0 => ap_const_lv32_8DD7,
        din1 => ap_const_lv32_F263,
        din2 => ap_const_lv32_9C8,
        din3 => ap_const_lv32_FFFFA71C,
        din4 => ap_const_lv32_10C74,
        din5 => agg_result_fu_166_p6,
        dout => agg_result_fu_166_p7);




    activation_58_fu_98_p2 <= (comparison_34_fu_74_p2 and comparison_33_fu_68_p2);
    activation_59_fu_110_p2 <= (comparison_fu_62_p2 and and_ln193_fu_104_p2);
    activation_fu_86_p2 <= (comparison_fu_62_p2 xor ap_const_lv1_1);
    agg_result_fu_166_p6 <= 
        zext_ln208_6_fu_154_p1 when (or_ln208_17_fu_140_p2(0) = '1') else 
        ap_const_lv3_4;
    and_ln193_fu_104_p2 <= (xor_ln195_fu_92_p2 and comparison_35_fu_80_p2);
    ap_ready <= ap_const_logic_1;
    ap_return <= agg_result_fu_166_p7;
    comparison_33_fu_68_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_FFFF45C8)) else "0";
    comparison_34_fu_74_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_FFFF8825)) else "0";
    comparison_35_fu_80_p2 <= "1" when (signed(p_read3) < signed(ap_const_lv32_1AF64)) else "0";
    comparison_fu_62_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_E4DA)) else "0";
    or_ln208_16_fu_126_p2 <= (comparison_33_fu_68_p2 or activation_fu_86_p2);
    or_ln208_17_fu_140_p2 <= (or_ln208_16_fu_126_p2 or activation_59_fu_110_p2);
    or_ln208_fu_116_p2 <= (activation_fu_86_p2 or activation_58_fu_98_p2);
    select_ln208_18_fu_146_p3 <= 
        select_ln208_fu_132_p3 when (or_ln208_16_fu_126_p2(0) = '1') else 
        ap_const_lv2_3;
    select_ln208_fu_132_p3 <= 
        zext_ln208_fu_122_p1 when (or_ln208_fu_116_p2(0) = '1') else 
        ap_const_lv2_2;
    xor_ln195_fu_92_p2 <= (comparison_33_fu_68_p2 xor ap_const_lv1_1);
    zext_ln208_6_fu_154_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln208_18_fu_146_p3),3));
    zext_ln208_fu_122_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(comparison_fu_62_p2),2));
end behav;
