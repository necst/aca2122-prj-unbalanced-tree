-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_axi_decision_function is
port (
    ap_ready : OUT STD_LOGIC;
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read4 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read5 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of myproject_axi_decision_function is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_FFFF26CC : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111110010011011001100";
    constant ap_const_lv32_7CCB : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000111110011001011";
    constant ap_const_lv32_FFFE7A40 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111100111101001000000";
    constant ap_const_lv32_FFFEB001 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111101011000000000001";
    constant ap_const_lv32_FFFEB7B4 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111101011011110110100";
    constant ap_const_lv32_FFFDED51 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111011110110101010001";
    constant ap_const_lv32_20286 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000100000001010000110";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv32_15B99 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010101101110011001";
    constant ap_const_lv32_1B63 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000001101101100011";
    constant ap_const_lv32_29B9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000010100110111001";
    constant ap_const_lv32_13248 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010011001001001000";
    constant ap_const_lv32_1711A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010111000100011010";
    constant ap_const_lv32_73E4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000111001111100100";
    constant ap_const_lv32_FFFFC9EF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111100100111101111";
    constant ap_const_lv32_15778 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010101011101111000";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal comparison_fu_96_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_258_fu_102_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_259_fu_108_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_322_fu_138_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_260_fu_114_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_323_fu_144_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_261_fu_120_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_fu_150_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln193_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_262_fu_126_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_324_fu_156_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_263_fu_132_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln193_3_fu_192_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_1_fu_162_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_fu_168_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln208_fu_204_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_325_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_fu_210_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln208_fu_214_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_fu_220_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln208_1_fu_228_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal activation_326_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_1_fu_236_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_1_fu_240_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_2_fu_246_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_2_fu_254_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_327_fu_198_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_3_fu_260_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_3_fu_268_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_4_fu_274_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_fu_290_p9 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_fu_290_p10 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component myproject_axi_mux_83_32_1_1_x3 IS
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
    mux_83_32_1_1_x3_U80 : component myproject_axi_mux_83_32_1_1_x3
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
        din0 => ap_const_lv32_15B99,
        din1 => ap_const_lv32_1B63,
        din2 => ap_const_lv32_29B9,
        din3 => ap_const_lv32_13248,
        din4 => ap_const_lv32_1711A,
        din5 => ap_const_lv32_73E4,
        din6 => ap_const_lv32_FFFFC9EF,
        din7 => ap_const_lv32_15778,
        din8 => agg_result_fu_290_p9,
        dout => agg_result_fu_290_p10);




    activation_322_fu_138_p2 <= (comparison_fu_96_p2 xor ap_const_lv1_1);
    activation_323_fu_144_p2 <= (comparison_fu_96_p2 and comparison_258_fu_102_p2);
    activation_324_fu_156_p2 <= (comparison_259_fu_108_p2 and activation_322_fu_138_p2);
    activation_325_fu_180_p2 <= (comparison_fu_96_p2 and and_ln193_fu_174_p2);
    activation_326_fu_186_p2 <= (comparison_262_fu_126_p2 and activation_324_fu_156_p2);
    activation_327_fu_198_p2 <= (xor_ln195_1_fu_162_p2 and and_ln193_3_fu_192_p2);
    activation_fu_168_p2 <= (comparison_260_fu_114_p2 and activation_323_fu_144_p2);
    agg_result_fu_290_p9 <= 
        select_ln208_4_fu_274_p3 when (or_ln208_3_fu_268_p2(0) = '1') else 
        ap_const_lv3_7;
    and_ln193_3_fu_192_p2 <= (comparison_263_fu_132_p2 and activation_322_fu_138_p2);
    and_ln193_fu_174_p2 <= (xor_ln195_fu_150_p2 and comparison_261_fu_120_p2);
    ap_ready <= ap_const_logic_1;
    ap_return <= agg_result_fu_290_p10;
    comparison_258_fu_102_p2 <= "1" when (signed(p_read4) < signed(ap_const_lv32_7CCB)) else "0";
    comparison_259_fu_108_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_FFFE7A40)) else "0";
    comparison_260_fu_114_p2 <= "1" when (signed(p_read4) < signed(ap_const_lv32_FFFEB001)) else "0";
    comparison_261_fu_120_p2 <= "1" when (signed(p_read3) < signed(ap_const_lv32_FFFEB7B4)) else "0";
    comparison_262_fu_126_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_FFFDED51)) else "0";
    comparison_263_fu_132_p2 <= "1" when (signed(p_read5) < signed(ap_const_lv32_20286)) else "0";
    comparison_fu_96_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_FFFF26CC)) else "0";
    or_ln208_1_fu_240_p2 <= (comparison_fu_96_p2 or activation_326_fu_186_p2);
    or_ln208_2_fu_254_p2 <= (comparison_fu_96_p2 or activation_324_fu_156_p2);
    or_ln208_3_fu_268_p2 <= (or_ln208_2_fu_254_p2 or activation_327_fu_198_p2);
    or_ln208_fu_214_p2 <= (activation_325_fu_180_p2 or activation_323_fu_144_p2);
    select_ln208_1_fu_228_p3 <= 
        select_ln208_fu_220_p3 when (or_ln208_fu_214_p2(0) = '1') else 
        ap_const_lv2_3;
    select_ln208_2_fu_246_p3 <= 
        zext_ln208_1_fu_236_p1 when (comparison_fu_96_p2(0) = '1') else 
        ap_const_lv3_4;
    select_ln208_3_fu_260_p3 <= 
        select_ln208_2_fu_246_p3 when (or_ln208_1_fu_240_p2(0) = '1') else 
        ap_const_lv3_5;
    select_ln208_4_fu_274_p3 <= 
        select_ln208_3_fu_260_p3 when (or_ln208_2_fu_254_p2(0) = '1') else 
        ap_const_lv3_6;
    select_ln208_fu_220_p3 <= 
        zext_ln208_fu_210_p1 when (activation_323_fu_144_p2(0) = '1') else 
        ap_const_lv2_2;
    xor_ln195_1_fu_162_p2 <= (comparison_259_fu_108_p2 xor ap_const_lv1_1);
    xor_ln195_fu_150_p2 <= (comparison_258_fu_102_p2 xor ap_const_lv1_1);
    xor_ln208_fu_204_p2 <= (ap_const_lv1_1 xor activation_fu_168_p2);
    zext_ln208_1_fu_236_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln208_1_fu_228_p3),3));
    zext_ln208_fu_210_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(xor_ln208_fu_204_p2),2));
end behav;