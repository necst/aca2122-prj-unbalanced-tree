-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_axi_decision_function_2 is
port (
    ap_ready : OUT STD_LOGIC;
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of myproject_axi_decision_function_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_FFFF2082 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111110010000010000010";
    constant ap_const_lv32_FFFEBED3 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111101011111011010011";
    constant ap_const_lv32_17EE9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010111111011101001";
    constant ap_const_lv32_FFFF47CB : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111110100011111001011";
    constant ap_const_lv32_11203 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010001001000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv32_83D3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001000001111010011";
    constant ap_const_lv32_92AC : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001001001010101100";
    constant ap_const_lv32_90C9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001001000011001001";
    constant ap_const_lv32_21DC : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000010000111011100";
    constant ap_const_lv32_FFFF72E2 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111110111001011100010";
    constant ap_const_lv32_2751 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000010011101010001";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal comparison_fu_68_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_73_fu_74_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_fu_98_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln135_fu_110_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_74_fu_80_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_202_fu_116_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln135_3_fu_128_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_75_fu_86_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_203_fu_122_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_76_fu_92_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln135_4_fu_146_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln133_fu_152_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_207_fu_104_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln148_fu_164_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_208_fu_134_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln148_fu_170_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln148_4_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_209_fu_140_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln148_fu_180_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln148_5_fu_194_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln148_5_fu_188_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_210_fu_158_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln148_2_fu_202_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln148_6_fu_206_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln148_6_fu_212_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_fu_228_p7 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_fu_228_p8 : STD_LOGIC_VECTOR (31 downto 0);

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
    mux_63_32_1_1_U43 : component myproject_axi_mux_63_32_1_1
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
        din0 => ap_const_lv32_83D3,
        din1 => ap_const_lv32_92AC,
        din2 => ap_const_lv32_90C9,
        din3 => ap_const_lv32_21DC,
        din4 => ap_const_lv32_FFFF72E2,
        din5 => ap_const_lv32_2751,
        din6 => agg_result_fu_228_p7,
        dout => agg_result_fu_228_p8);




    activation_202_fu_116_p2 <= (xor_ln135_fu_110_p2 and activation_fu_98_p2);
    activation_203_fu_122_p2 <= (comparison_74_fu_80_p2 and activation_202_fu_116_p2);
    activation_207_fu_104_p2 <= (comparison_73_fu_74_p2 and activation_fu_98_p2);
    activation_208_fu_134_p2 <= (xor_ln135_3_fu_128_p2 and activation_202_fu_116_p2);
    activation_209_fu_140_p2 <= (comparison_75_fu_86_p2 and activation_203_fu_122_p2);
    activation_210_fu_158_p2 <= (and_ln133_fu_152_p2 and activation_203_fu_122_p2);
    activation_fu_98_p2 <= (comparison_fu_68_p2 xor ap_const_lv1_1);
    agg_result_fu_228_p7 <= 
        select_ln148_6_fu_212_p3 when (or_ln148_6_fu_206_p2(0) = '1') else 
        ap_const_lv3_5;
    and_ln133_fu_152_p2 <= (xor_ln135_4_fu_146_p2 and comparison_76_fu_92_p2);
    ap_ready <= ap_const_logic_1;
    ap_return <= agg_result_fu_228_p8;
    comparison_73_fu_74_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_FFFEBED3)) else "0";
    comparison_74_fu_80_p2 <= "1" when (signed(p_read3) < signed(ap_const_lv32_17EE9)) else "0";
    comparison_75_fu_86_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_FFFF47CB)) else "0";
    comparison_76_fu_92_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_11203)) else "0";
    comparison_fu_68_p2 <= "1" when (signed(p_read3) < signed(ap_const_lv32_FFFF2082)) else "0";
    or_ln148_4_fu_174_p2 <= (or_ln148_fu_164_p2 or activation_208_fu_134_p2);
    or_ln148_5_fu_188_p2 <= (or_ln148_4_fu_174_p2 or activation_209_fu_140_p2);
    or_ln148_6_fu_206_p2 <= (or_ln148_5_fu_188_p2 or activation_210_fu_158_p2);
    or_ln148_fu_164_p2 <= (comparison_fu_68_p2 or activation_207_fu_104_p2);
    select_ln148_5_fu_194_p3 <= 
        select_ln148_fu_180_p3 when (or_ln148_4_fu_174_p2(0) = '1') else 
        ap_const_lv2_3;
    select_ln148_6_fu_212_p3 <= 
        zext_ln148_2_fu_202_p1 when (or_ln148_5_fu_188_p2(0) = '1') else 
        ap_const_lv3_4;
    select_ln148_fu_180_p3 <= 
        zext_ln148_fu_170_p1 when (or_ln148_fu_164_p2(0) = '1') else 
        ap_const_lv2_2;
    xor_ln135_3_fu_128_p2 <= (comparison_74_fu_80_p2 xor ap_const_lv1_1);
    xor_ln135_4_fu_146_p2 <= (comparison_75_fu_86_p2 xor ap_const_lv1_1);
    xor_ln135_fu_110_p2 <= (comparison_73_fu_74_p2 xor ap_const_lv1_1);
    zext_ln148_2_fu_202_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln148_5_fu_194_p3),3));
    zext_ln148_fu_170_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(activation_fu_98_p2),2));
end behav;
