-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_axi_decision_function_15 is
port (
    ap_ready : OUT STD_LOGIC;
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read4 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of myproject_axi_decision_function_15 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_FFFEE987 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111101110100110000111";
    constant ap_const_lv32_FFFE8605 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111101000011000000101";
    constant ap_const_lv32_1C6C9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011100011011001001";
    constant ap_const_lv32_D649 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001101011001001001";
    constant ap_const_lv32_FFFDFBA7 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111011111101110100111";
    constant ap_const_lv32_FFFF2F16 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111110010111100010110";
    constant ap_const_lv32_4C35 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000100110000110101";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv32_2A692 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000101010011010010010";
    constant ap_const_lv32_ABA6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001010101110100110";
    constant ap_const_lv32_1DD92 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011101110110010010";
    constant ap_const_lv32_A1E2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001010000111100010";
    constant ap_const_lv32_8A9B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001000101010011011";
    constant ap_const_lv32_FFFF9B70 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111001101101110000";
    constant ap_const_lv32_1E6FC : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011110011011111100";
    constant ap_const_lv32_D354 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001101001101010100";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal comparison_fu_88_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_220_fu_94_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_221_fu_100_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_272_fu_130_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_222_fu_106_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_273_fu_136_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_223_fu_112_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_fu_142_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln193_fu_166_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_224_fu_118_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_274_fu_148_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_225_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln193_46_fu_184_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_14_fu_154_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_fu_160_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln208_fu_196_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_275_fu_172_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_fu_202_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln208_fu_206_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_fu_212_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln208_66_fu_220_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal activation_276_fu_178_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_16_fu_228_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_50_fu_232_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_67_fu_238_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_51_fu_246_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_277_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_68_fu_252_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_52_fu_260_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_69_fu_266_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_fu_282_p9 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_fu_282_p10 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component myproject_axi_mux_83_32_1_1_x0 IS
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
    mux_83_32_1_1_x0_U48 : component myproject_axi_mux_83_32_1_1_x0
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
        din0 => ap_const_lv32_2A692,
        din1 => ap_const_lv32_ABA6,
        din2 => ap_const_lv32_1DD92,
        din3 => ap_const_lv32_A1E2,
        din4 => ap_const_lv32_8A9B,
        din5 => ap_const_lv32_FFFF9B70,
        din6 => ap_const_lv32_1E6FC,
        din7 => ap_const_lv32_D354,
        din8 => agg_result_fu_282_p9,
        dout => agg_result_fu_282_p10);




    activation_272_fu_130_p2 <= (comparison_fu_88_p2 xor ap_const_lv1_1);
    activation_273_fu_136_p2 <= (comparison_fu_88_p2 and comparison_220_fu_94_p2);
    activation_274_fu_148_p2 <= (comparison_221_fu_100_p2 and activation_272_fu_130_p2);
    activation_275_fu_172_p2 <= (comparison_fu_88_p2 and and_ln193_fu_166_p2);
    activation_276_fu_178_p2 <= (comparison_224_fu_118_p2 and activation_274_fu_148_p2);
    activation_277_fu_190_p2 <= (xor_ln195_14_fu_154_p2 and and_ln193_46_fu_184_p2);
    activation_fu_160_p2 <= (comparison_222_fu_106_p2 and activation_273_fu_136_p2);
    agg_result_fu_282_p9 <= 
        select_ln208_69_fu_266_p3 when (or_ln208_52_fu_260_p2(0) = '1') else 
        ap_const_lv3_7;
    and_ln193_46_fu_184_p2 <= (comparison_225_fu_124_p2 and activation_272_fu_130_p2);
    and_ln193_fu_166_p2 <= (xor_ln195_fu_142_p2 and comparison_223_fu_112_p2);
    ap_ready <= ap_const_logic_1;
    ap_return <= agg_result_fu_282_p10;
    comparison_220_fu_94_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_FFFE8605)) else "0";
    comparison_221_fu_100_p2 <= "1" when (signed(p_read4) < signed(ap_const_lv32_1C6C9)) else "0";
    comparison_222_fu_106_p2 <= "1" when (signed(p_read3) < signed(ap_const_lv32_D649)) else "0";
    comparison_223_fu_112_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_FFFDFBA7)) else "0";
    comparison_224_fu_118_p2 <= "1" when (signed(p_read4) < signed(ap_const_lv32_FFFF2F16)) else "0";
    comparison_225_fu_124_p2 <= "1" when (signed(p_read3) < signed(ap_const_lv32_4C35)) else "0";
    comparison_fu_88_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_FFFEE987)) else "0";
    or_ln208_50_fu_232_p2 <= (comparison_fu_88_p2 or activation_276_fu_178_p2);
    or_ln208_51_fu_246_p2 <= (comparison_fu_88_p2 or activation_274_fu_148_p2);
    or_ln208_52_fu_260_p2 <= (or_ln208_51_fu_246_p2 or activation_277_fu_190_p2);
    or_ln208_fu_206_p2 <= (activation_275_fu_172_p2 or activation_273_fu_136_p2);
    select_ln208_66_fu_220_p3 <= 
        select_ln208_fu_212_p3 when (or_ln208_fu_206_p2(0) = '1') else 
        ap_const_lv2_3;
    select_ln208_67_fu_238_p3 <= 
        zext_ln208_16_fu_228_p1 when (comparison_fu_88_p2(0) = '1') else 
        ap_const_lv3_4;
    select_ln208_68_fu_252_p3 <= 
        select_ln208_67_fu_238_p3 when (or_ln208_50_fu_232_p2(0) = '1') else 
        ap_const_lv3_5;
    select_ln208_69_fu_266_p3 <= 
        select_ln208_68_fu_252_p3 when (or_ln208_51_fu_246_p2(0) = '1') else 
        ap_const_lv3_6;
    select_ln208_fu_212_p3 <= 
        zext_ln208_fu_202_p1 when (activation_273_fu_136_p2(0) = '1') else 
        ap_const_lv2_2;
    xor_ln195_14_fu_154_p2 <= (comparison_221_fu_100_p2 xor ap_const_lv1_1);
    xor_ln195_fu_142_p2 <= (comparison_220_fu_94_p2 xor ap_const_lv1_1);
    xor_ln208_fu_196_p2 <= (ap_const_lv1_1 xor activation_fu_160_p2);
    zext_ln208_16_fu_228_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln208_66_fu_220_p3),3));
    zext_ln208_fu_202_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(xor_ln208_fu_196_p2),2));
end behav;