-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_axi_decision_function_16 is
port (
    ap_ready : OUT STD_LOGIC;
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of myproject_axi_decision_function_16 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_EF21 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001110111100100001";
    constant ap_const_lv32_1AFE1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011010111111100001";
    constant ap_const_lv32_FFFE237E : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111100010001101111110";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv32_8072 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001000000001110010";
    constant ap_const_lv32_F9E2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001111100111100010";
    constant ap_const_lv32_10CAC : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010000110010101100";
    constant ap_const_lv32_FFFFCE5F : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111100111001011111";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal comparison_34_fu_62_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_fu_56_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_45_fu_74_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_35_fu_68_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln208_fu_80_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_fu_86_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln208_fu_90_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_fu_96_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal agg_result_fu_112_p5 : STD_LOGIC_VECTOR (1 downto 0);
    signal agg_result_fu_112_p6 : STD_LOGIC_VECTOR (31 downto 0);

    component myproject_axi_mux_42_32_1_1_x IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        din3 : IN STD_LOGIC_VECTOR (31 downto 0);
        din4 : IN STD_LOGIC_VECTOR (1 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    mux_42_32_1_1_x_U74 : component myproject_axi_mux_42_32_1_1_x
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 32,
        din4_WIDTH => 2,
        dout_WIDTH => 32)
    port map (
        din0 => ap_const_lv32_8072,
        din1 => ap_const_lv32_F9E2,
        din2 => ap_const_lv32_10CAC,
        din3 => ap_const_lv32_FFFFCE5F,
        din4 => agg_result_fu_112_p5,
        dout => agg_result_fu_112_p6);




    activation_45_fu_74_p2 <= (comparison_fu_56_p2 and comparison_34_fu_62_p2);
    agg_result_fu_112_p5 <= 
        select_ln208_fu_96_p3 when (or_ln208_fu_90_p2(0) = '1') else 
        ap_const_lv2_3;
    ap_ready <= ap_const_logic_1;
    ap_return <= agg_result_fu_112_p6;
    comparison_34_fu_62_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_1AFE1)) else "0";
    comparison_35_fu_68_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_FFFE237E)) else "0";
    comparison_fu_56_p2 <= "1" when (signed(p_read3) < signed(ap_const_lv32_EF21)) else "0";
    or_ln208_fu_90_p2 <= (xor_ln208_fu_80_p2 or comparison_35_fu_68_p2);
    select_ln208_fu_96_p3 <= 
        ap_const_lv2_2 when (activation_45_fu_74_p2(0) = '1') else 
        zext_ln208_fu_86_p1;
    xor_ln208_fu_80_p2 <= (ap_const_lv1_1 xor activation_45_fu_74_p2);
    zext_ln208_fu_86_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(comparison_fu_56_p2),2));
end behav;
