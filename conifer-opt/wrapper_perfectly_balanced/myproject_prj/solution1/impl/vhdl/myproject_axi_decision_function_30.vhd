-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_axi_decision_function_30 is
port (
    ap_ready : OUT STD_LOGIC;
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read4 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of myproject_axi_decision_function_30 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1C422 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011100010000100010";
    constant ap_const_lv32_EF63 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001110111101100011";
    constant ap_const_lv32_5459 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000101010001011001";
    constant ap_const_lv32_FFFEA73D : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111101010011100111101";
    constant ap_const_lv32_FFFEB770 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111101011011101110000";
    constant ap_const_lv32_1741 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000001011101000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv32_11D78 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010001110101111000";
    constant ap_const_lv32_74F9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000111010011111001";
    constant ap_const_lv32_FFFFDC6F : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111101110001101111";
    constant ap_const_lv32_F7F3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001111011111110011";
    constant ap_const_lv32_3D7A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000011110101111010";
    constant ap_const_lv32_B01B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001011000000011011";
    constant ap_const_lv32_FFFF99C9 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111001100111001001";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal comparison_fu_82_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_130_fu_88_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_131_fu_94_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_166_fu_118_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_26_fu_136_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_132_fu_100_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_167_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_133_fu_106_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_fu_130_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln193_fu_154_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_134_fu_112_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln193_94_fu_166_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_fu_142_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_168_fu_148_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln208_80_fu_184_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln208_fu_178_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_fu_190_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln208_81_fu_194_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_169_fu_160_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_fu_200_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln208_100_fu_214_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln208_82_fu_208_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_23_fu_222_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_83_fu_226_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_170_fu_172_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_101_fu_232_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_84_fu_240_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_102_fu_246_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_fu_262_p8 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_fu_262_p9 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component myproject_axi_mux_73_32_1_1_x3 IS
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
    mux_73_32_1_1_x3_U184 : component myproject_axi_mux_73_32_1_1_x3
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
        din0 => ap_const_lv32_11D78,
        din1 => ap_const_lv32_74F9,
        din2 => ap_const_lv32_FFFFDC6F,
        din3 => ap_const_lv32_F7F3,
        din4 => ap_const_lv32_3D7A,
        din5 => ap_const_lv32_B01B,
        din6 => ap_const_lv32_FFFF99C9,
        din7 => agg_result_fu_262_p8,
        dout => agg_result_fu_262_p9);




    activation_166_fu_118_p2 <= (comparison_fu_82_p2 xor ap_const_lv1_1);
    activation_167_fu_124_p2 <= (comparison_fu_82_p2 and comparison_130_fu_88_p2);
    activation_168_fu_148_p2 <= (comparison_132_fu_100_p2 and activation_167_fu_124_p2);
    activation_169_fu_160_p2 <= (comparison_fu_82_p2 and and_ln193_fu_154_p2);
    activation_170_fu_172_p2 <= (comparison_131_fu_94_p2 and and_ln193_94_fu_166_p2);
    activation_fu_142_p2 <= (xor_ln195_26_fu_136_p2 and activation_166_fu_118_p2);
    agg_result_fu_262_p8 <= 
        select_ln208_102_fu_246_p3 when (or_ln208_84_fu_240_p2(0) = '1') else 
        ap_const_lv3_6;
    and_ln193_94_fu_166_p2 <= (comparison_134_fu_112_p2 and activation_166_fu_118_p2);
    and_ln193_fu_154_p2 <= (xor_ln195_fu_130_p2 and comparison_133_fu_106_p2);
    ap_ready <= ap_const_logic_1;
    ap_return <= agg_result_fu_262_p9;
    comparison_130_fu_88_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_EF63)) else "0";
    comparison_131_fu_94_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_5459)) else "0";
    comparison_132_fu_100_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_FFFEA73D)) else "0";
    comparison_133_fu_106_p2 <= "1" when (signed(p_read4) < signed(ap_const_lv32_FFFEB770)) else "0";
    comparison_134_fu_112_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_1741)) else "0";
    comparison_fu_82_p2 <= "1" when (signed(p_read3) < signed(ap_const_lv32_1C422)) else "0";
    or_ln208_80_fu_184_p2 <= (comparison_fu_82_p2 or comparison_131_fu_94_p2);
    or_ln208_81_fu_194_p2 <= (activation_fu_142_p2 or activation_167_fu_124_p2);
    or_ln208_82_fu_208_p2 <= (or_ln208_81_fu_194_p2 or activation_169_fu_160_p2);
    or_ln208_83_fu_226_p2 <= (comparison_fu_82_p2 or activation_fu_142_p2);
    or_ln208_84_fu_240_p2 <= (or_ln208_83_fu_226_p2 or activation_170_fu_172_p2);
    or_ln208_fu_178_p2 <= (activation_fu_142_p2 or activation_168_fu_148_p2);
    select_ln208_100_fu_214_p3 <= 
        select_ln208_fu_200_p3 when (or_ln208_81_fu_194_p2(0) = '1') else 
        ap_const_lv2_3;
    select_ln208_101_fu_232_p3 <= 
        zext_ln208_23_fu_222_p1 when (or_ln208_82_fu_208_p2(0) = '1') else 
        ap_const_lv3_4;
    select_ln208_102_fu_246_p3 <= 
        select_ln208_101_fu_232_p3 when (or_ln208_83_fu_226_p2(0) = '1') else 
        ap_const_lv3_5;
    select_ln208_fu_200_p3 <= 
        zext_ln208_fu_190_p1 when (or_ln208_fu_178_p2(0) = '1') else 
        ap_const_lv2_2;
    xor_ln195_26_fu_136_p2 <= (comparison_131_fu_94_p2 xor ap_const_lv1_1);
    xor_ln195_fu_130_p2 <= (comparison_130_fu_88_p2 xor ap_const_lv1_1);
    zext_ln208_23_fu_222_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln208_100_fu_214_p3),3));
    zext_ln208_fu_190_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln208_80_fu_184_p2),2));
end behav;
