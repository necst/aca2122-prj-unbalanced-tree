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
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of myproject_axi_decision_function is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_FFFEA651 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111101010011001010001";
    constant ap_const_lv32_A149 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001010000101001001";
    constant ap_const_lv32_FFFFF821 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111100000100001";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal agg_result_fu_32_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal agg_result_fu_32_p4 : STD_LOGIC_VECTOR (31 downto 0);

    component myproject_axi_mux_21_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (0 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    mux_21_32_1_1_U54 : component myproject_axi_mux_21_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 1,
        dout_WIDTH => 32)
    port map (
        din0 => ap_const_lv32_A149,
        din1 => ap_const_lv32_FFFFF821,
        din2 => agg_result_fu_32_p3,
        dout => agg_result_fu_32_p4);




    agg_result_fu_32_p3 <= "1" when (signed(p_read1) > signed(ap_const_lv32_FFFEA651)) else "0";
    ap_ready <= ap_const_logic_1;
    ap_return <= agg_result_fu_32_p4;
end behav;
