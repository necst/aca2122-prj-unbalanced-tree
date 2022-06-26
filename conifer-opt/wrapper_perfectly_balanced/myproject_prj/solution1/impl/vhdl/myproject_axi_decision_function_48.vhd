-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_axi_decision_function_48 is
port (
    ap_ready : OUT STD_LOGIC;
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read4 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read5 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read6 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read7 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of myproject_axi_decision_function_48 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_FFFEE293 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111101110001010010011";
    constant ap_const_lv32_FFFF1B78 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111110001101101111000";
    constant ap_const_lv32_13B03 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010011101100000011";
    constant ap_const_lv32_1336A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000010011001101101010";
    constant ap_const_lv32_B0FB : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001011000011111011";
    constant ap_const_lv32_1B534 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011011010100110100";
    constant ap_const_lv32_64D0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000110010011010000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv32_2316B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000100011000101101011";
    constant ap_const_lv32_7943 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000111100101000011";
    constant ap_const_lv32_7D16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000111110100010110";
    constant ap_const_lv32_19C6A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011001110001101010";
    constant ap_const_lv32_FFFFAAFB : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111010101011111011";
    constant ap_const_lv32_1A289 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011010001010001001";
    constant ap_const_lv32_9DFC : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001001110111111100";
    constant ap_const_lv32_1A80E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000011010100000001110";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal comparison_fu_112_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_32_fu_118_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_33_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_39_fu_154_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_34_fu_130_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_40_fu_160_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_35_fu_136_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_fu_166_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln193_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_36_fu_142_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_41_fu_172_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_37_fu_148_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln193_32_fu_208_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln195_13_fu_178_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_fu_184_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln208_fu_220_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_42_fu_196_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_fu_226_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln208_fu_230_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_fu_236_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln208_25_fu_244_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal activation_43_fu_202_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln208_7_fu_252_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_22_fu_256_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_26_fu_262_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_23_fu_270_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_44_fu_214_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_27_fu_276_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln208_24_fu_284_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln208_28_fu_290_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_fu_306_p9 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_fu_306_p10 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component myproject_axi_mux_83_32_1_1 IS
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
    mux_83_32_1_1_U26 : component myproject_axi_mux_83_32_1_1
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
        din0 => ap_const_lv32_2316B,
        din1 => ap_const_lv32_7943,
        din2 => ap_const_lv32_7D16,
        din3 => ap_const_lv32_19C6A,
        din4 => ap_const_lv32_FFFFAAFB,
        din5 => ap_const_lv32_1A289,
        din6 => ap_const_lv32_9DFC,
        din7 => ap_const_lv32_1A80E,
        din8 => agg_result_fu_306_p9,
        dout => agg_result_fu_306_p10);




    activation_39_fu_154_p2 <= (comparison_fu_112_p2 xor ap_const_lv1_1);
    activation_40_fu_160_p2 <= (comparison_fu_112_p2 and comparison_32_fu_118_p2);
    activation_41_fu_172_p2 <= (comparison_33_fu_124_p2 and activation_39_fu_154_p2);
    activation_42_fu_196_p2 <= (comparison_fu_112_p2 and and_ln193_fu_190_p2);
    activation_43_fu_202_p2 <= (comparison_36_fu_142_p2 and activation_41_fu_172_p2);
    activation_44_fu_214_p2 <= (xor_ln195_13_fu_178_p2 and and_ln193_32_fu_208_p2);
    activation_fu_184_p2 <= (comparison_34_fu_130_p2 and activation_40_fu_160_p2);
    agg_result_fu_306_p9 <= 
        select_ln208_28_fu_290_p3 when (or_ln208_24_fu_284_p2(0) = '1') else 
        ap_const_lv3_7;
    and_ln193_32_fu_208_p2 <= (comparison_37_fu_148_p2 and activation_39_fu_154_p2);
    and_ln193_fu_190_p2 <= (xor_ln195_fu_166_p2 and comparison_35_fu_136_p2);
    ap_ready <= ap_const_logic_1;
    ap_return <= agg_result_fu_306_p10;
    comparison_32_fu_118_p2 <= "1" when (signed(p_read3) < signed(ap_const_lv32_FFFF1B78)) else "0";
    comparison_33_fu_124_p2 <= "1" when (signed(p_read6) < signed(ap_const_lv32_13B03)) else "0";
    comparison_34_fu_130_p2 <= "1" when (signed(p_read7) < signed(ap_const_lv32_1336A)) else "0";
    comparison_35_fu_136_p2 <= "1" when (signed(p_read4) < signed(ap_const_lv32_B0FB)) else "0";
    comparison_36_fu_142_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_1B534)) else "0";
    comparison_37_fu_148_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_64D0)) else "0";
    comparison_fu_112_p2 <= "1" when (signed(p_read5) < signed(ap_const_lv32_FFFEE293)) else "0";
    or_ln208_22_fu_256_p2 <= (comparison_fu_112_p2 or activation_43_fu_202_p2);
    or_ln208_23_fu_270_p2 <= (comparison_fu_112_p2 or activation_41_fu_172_p2);
    or_ln208_24_fu_284_p2 <= (or_ln208_23_fu_270_p2 or activation_44_fu_214_p2);
    or_ln208_fu_230_p2 <= (activation_42_fu_196_p2 or activation_40_fu_160_p2);
    select_ln208_25_fu_244_p3 <= 
        select_ln208_fu_236_p3 when (or_ln208_fu_230_p2(0) = '1') else 
        ap_const_lv2_3;
    select_ln208_26_fu_262_p3 <= 
        zext_ln208_7_fu_252_p1 when (comparison_fu_112_p2(0) = '1') else 
        ap_const_lv3_4;
    select_ln208_27_fu_276_p3 <= 
        select_ln208_26_fu_262_p3 when (or_ln208_22_fu_256_p2(0) = '1') else 
        ap_const_lv3_5;
    select_ln208_28_fu_290_p3 <= 
        select_ln208_27_fu_276_p3 when (or_ln208_23_fu_270_p2(0) = '1') else 
        ap_const_lv3_6;
    select_ln208_fu_236_p3 <= 
        zext_ln208_fu_226_p1 when (activation_40_fu_160_p2(0) = '1') else 
        ap_const_lv2_2;
    xor_ln195_13_fu_178_p2 <= (comparison_33_fu_124_p2 xor ap_const_lv1_1);
    xor_ln195_fu_166_p2 <= (comparison_32_fu_118_p2 xor ap_const_lv1_1);
    xor_ln208_fu_220_p2 <= (ap_const_lv1_1 xor activation_fu_184_p2);
    zext_ln208_7_fu_252_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln208_25_fu_244_p3),3));
    zext_ln208_fu_226_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(xor_ln208_fu_220_p2),2));
end behav;