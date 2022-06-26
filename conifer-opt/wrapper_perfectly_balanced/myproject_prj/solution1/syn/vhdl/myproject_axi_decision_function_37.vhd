-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_axi_decision_function_37 is
port (
    ap_ready : OUT STD_LOGIC;
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read4 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read5 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of myproject_axi_decision_function_37 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_FFFECBDE : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111101100101111011110";
    constant ap_const_lv32_FFFE3361 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111100011001101100001";
    constant ap_const_lv32_FFFE71F1 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111100111000111110001";
    constant ap_const_lv32_FFFF180B : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111110001100000001011";
    constant ap_const_lv32_152B1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010101001010110001";
    constant ap_const_lv32_FFFE32F6 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111100011001011110110";
    constant ap_const_lv32_FFFE7925 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111100111100100100101";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv32_777C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000111011101111100";
    constant ap_const_lv32_1D987 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011101100110000111";
    constant ap_const_lv32_8628 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001000011000101000";
    constant ap_const_lv32_1D2BB : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011101001010111011";
    constant ap_const_lv32_19DF1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011001110111110001";
    constant ap_const_lv32_CB64 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001100101101100100";
    constant ap_const_lv32_146B2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010100011010110010";
    constant ap_const_lv32_FFFFB078 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111011000001111000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal comparison_fu_96_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_102_fu_102_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_fu_144_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_97_fu_108_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_120_fu_138_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_98_fu_114_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_99_fu_120_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_122_fu_150_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_100_fu_126_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_123_fu_156_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_101_fu_132_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln193_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_31_fu_162_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_fu_168_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln208_fu_198_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_124_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_fu_204_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln208_fu_208_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_fu_214_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln208_73_fu_228_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln208_57_fu_222_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_125_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_17_fu_236_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_58_fu_240_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_74_fu_246_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_59_fu_254_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_126_fu_192_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_75_fu_260_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_60_fu_268_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_76_fu_274_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_296_p9 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_61_fu_282_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_296_p10 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component myproject_axi_mux_83_32_1_1_x IS
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
    mux_83_32_1_1_x_U35 : component myproject_axi_mux_83_32_1_1_x
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
        din0 => ap_const_lv32_777C,
        din1 => ap_const_lv32_1D987,
        din2 => ap_const_lv32_8628,
        din3 => ap_const_lv32_1D2BB,
        din4 => ap_const_lv32_19DF1,
        din5 => ap_const_lv32_CB64,
        din6 => ap_const_lv32_146B2,
        din7 => ap_const_lv32_FFFFB078,
        din8 => tmp_fu_296_p9,
        dout => tmp_fu_296_p10);




    activation_120_fu_138_p2 <= (comparison_fu_96_p2 xor ap_const_lv1_1);
    activation_122_fu_150_p2 <= (xor_ln195_fu_144_p2 and comparison_fu_96_p2);
    activation_123_fu_156_p2 <= (comparison_97_fu_108_p2 and activation_120_fu_138_p2);
    activation_124_fu_174_p2 <= (comparison_99_fu_120_p2 and activation_122_fu_150_p2);
    activation_125_fu_180_p2 <= (comparison_100_fu_126_p2 and activation_123_fu_156_p2);
    activation_126_fu_192_p2 <= (xor_ln195_31_fu_162_p2 and and_ln193_fu_186_p2);
    activation_fu_168_p2 <= (comparison_98_fu_114_p2 and comparison_102_fu_102_p2);
    and_ln193_fu_186_p2 <= (comparison_101_fu_132_p2 and activation_120_fu_138_p2);
    ap_ready <= ap_const_logic_1;
    ap_return <= 
        tmp_fu_296_p10 when (or_ln208_61_fu_282_p2(0) = '1') else 
        ap_const_lv32_0;
    comparison_100_fu_126_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_FFFE32F6)) else "0";
    comparison_101_fu_132_p2 <= "1" when (signed(p_read4) < signed(ap_const_lv32_FFFE7925)) else "0";
    comparison_102_fu_102_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_FFFE3361)) else "0";
    comparison_97_fu_108_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_FFFE71F1)) else "0";
    comparison_98_fu_114_p2 <= "1" when (signed(p_read3) < signed(ap_const_lv32_FFFF180B)) else "0";
    comparison_99_fu_120_p2 <= "1" when (signed(p_read5) < signed(ap_const_lv32_152B1)) else "0";
    comparison_fu_96_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_FFFECBDE)) else "0";
    or_ln208_57_fu_222_p2 <= (comparison_102_fu_102_p2 or activation_122_fu_150_p2);
    or_ln208_58_fu_240_p2 <= (or_ln208_57_fu_222_p2 or activation_125_fu_180_p2);
    or_ln208_59_fu_254_p2 <= (or_ln208_57_fu_222_p2 or activation_123_fu_156_p2);
    or_ln208_60_fu_268_p2 <= (or_ln208_59_fu_254_p2 or activation_126_fu_192_p2);
    or_ln208_61_fu_282_p2 <= (or_ln208_57_fu_222_p2 or activation_120_fu_138_p2);
    or_ln208_fu_208_p2 <= (comparison_102_fu_102_p2 or activation_124_fu_174_p2);
    select_ln208_73_fu_228_p3 <= 
        select_ln208_fu_214_p3 when (or_ln208_fu_208_p2(0) = '1') else 
        ap_const_lv2_3;
    select_ln208_74_fu_246_p3 <= 
        zext_ln208_17_fu_236_p1 when (or_ln208_57_fu_222_p2(0) = '1') else 
        ap_const_lv3_4;
    select_ln208_75_fu_260_p3 <= 
        select_ln208_74_fu_246_p3 when (or_ln208_58_fu_240_p2(0) = '1') else 
        ap_const_lv3_5;
    select_ln208_76_fu_274_p3 <= 
        select_ln208_75_fu_260_p3 when (or_ln208_59_fu_254_p2(0) = '1') else 
        ap_const_lv3_6;
    select_ln208_fu_214_p3 <= 
        zext_ln208_fu_204_p1 when (comparison_102_fu_102_p2(0) = '1') else 
        ap_const_lv2_2;
    tmp_fu_296_p9 <= 
        select_ln208_76_fu_274_p3 when (or_ln208_60_fu_268_p2(0) = '1') else 
        ap_const_lv3_7;
    xor_ln195_31_fu_162_p2 <= (comparison_97_fu_108_p2 xor ap_const_lv1_1);
    xor_ln195_fu_144_p2 <= (comparison_102_fu_102_p2 xor ap_const_lv1_1);
    xor_ln208_fu_198_p2 <= (ap_const_lv1_1 xor activation_fu_168_p2);
    zext_ln208_17_fu_236_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln208_73_fu_228_p3),3));
    zext_ln208_fu_204_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(xor_ln208_fu_198_p2),2));
end behav;