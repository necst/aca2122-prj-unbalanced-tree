-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_axi_myproject is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    p_read : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read4 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read5 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read6 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read7 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read8 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read9 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of myproject_axi_myproject is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_9C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010011100";

attribute shreg_extract : string;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal s_V_2_decision_function_5_fu_154_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal s_V_2_reg_319 : STD_LOGIC_VECTOR (31 downto 0);
    signal s_V_3_decision_function_4_fu_166_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal s_V_3_reg_324 : STD_LOGIC_VECTOR (31 downto 0);
    signal s_V_4_decision_function_3_fu_178_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal s_V_4_reg_329 : STD_LOGIC_VECTOR (31 downto 0);
    signal s_V_5_decision_function_2_fu_192_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal s_V_5_reg_334 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln712_5_fu_226_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln712_5_reg_339 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_decision_function_6_fu_132_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal s_V_1_reg_344 : STD_LOGIC_VECTOR (31 downto 0);
    signal s_V_1_reg_344_pp0_iter2_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln712_1_fu_232_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln712_1_reg_349 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln712_1_reg_349_pp0_iter2_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln712_6_fu_240_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln712_6_reg_354 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln712_6_reg_354_pp0_iter2_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_decision_function_7_fu_108_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_decision_function_7_fu_108_ap_ce : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0_ignore_call11 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1_ignore_call11 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2_ignore_call11 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3_ignore_call11 : BOOLEAN;
    signal ap_block_pp0_stage0_11001_ignoreCallOp15 : BOOLEAN;
    signal grp_decision_function_6_fu_132_ap_ce : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0_ignore_call12 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1_ignore_call12 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2_ignore_call12 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3_ignore_call12 : BOOLEAN;
    signal ap_block_pp0_stage0_11001_ignoreCallOp16 : BOOLEAN;
    signal s_V_2_decision_function_5_fu_154_ap_ready : STD_LOGIC;
    signal s_V_3_decision_function_4_fu_166_ap_ready : STD_LOGIC;
    signal s_V_4_decision_function_3_fu_178_ap_ready : STD_LOGIC;
    signal s_V_5_decision_function_2_fu_192_ap_ready : STD_LOGIC;
    signal s_V_6_decision_function_1_fu_202_ap_ready : STD_LOGIC;
    signal s_V_6_decision_function_1_fu_202_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal s_V_7_decision_function_fu_214_ap_ready : STD_LOGIC;
    signal s_V_7_decision_function_fu_214_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal add_ln712_4_fu_220_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln712_3_fu_236_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln712_fu_245_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln712_2_fu_250_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_read_int_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal p_read1_int_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal p_read2_int_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal p_read3_int_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal p_read4_int_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal p_read5_int_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal p_read6_int_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal p_read7_int_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal p_read8_int_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal p_read9_int_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component myproject_axi_decision_function_7 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read4 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read5 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read6 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read7 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read8 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read9 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read10 : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_ce : IN STD_LOGIC );
    end component;


    component myproject_axi_decision_function_6 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read4 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read5 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read6 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read7 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read8 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read9 : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_ce : IN STD_LOGIC );
    end component;


    component myproject_axi_decision_function_5 IS
    port (
        ap_ready : OUT STD_LOGIC;
        p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read4 : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component myproject_axi_decision_function_4 IS
    port (
        ap_ready : OUT STD_LOGIC;
        p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read4 : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component myproject_axi_decision_function_3 IS
    port (
        ap_ready : OUT STD_LOGIC;
        p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read4 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read5 : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component myproject_axi_decision_function_2 IS
    port (
        ap_ready : OUT STD_LOGIC;
        p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component myproject_axi_decision_function_1 IS
    port (
        ap_ready : OUT STD_LOGIC;
        p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read3 : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read4 : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component myproject_axi_decision_function IS
    port (
        ap_ready : OUT STD_LOGIC;
        p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    grp_decision_function_7_fu_108 : component myproject_axi_decision_function_7
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        p_read1 => p_read_int_reg,
        p_read2 => p_read1_int_reg,
        p_read3 => p_read2_int_reg,
        p_read4 => p_read3_int_reg,
        p_read5 => p_read4_int_reg,
        p_read6 => p_read5_int_reg,
        p_read7 => p_read6_int_reg,
        p_read8 => p_read7_int_reg,
        p_read9 => p_read8_int_reg,
        p_read10 => p_read9_int_reg,
        ap_return => grp_decision_function_7_fu_108_ap_return,
        ap_ce => grp_decision_function_7_fu_108_ap_ce);

    grp_decision_function_6_fu_132 : component myproject_axi_decision_function_6
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        p_read1 => p_read_int_reg,
        p_read2 => p_read2_int_reg,
        p_read3 => p_read3_int_reg,
        p_read4 => p_read4_int_reg,
        p_read5 => p_read5_int_reg,
        p_read6 => p_read6_int_reg,
        p_read7 => p_read7_int_reg,
        p_read8 => p_read8_int_reg,
        p_read9 => p_read9_int_reg,
        ap_return => grp_decision_function_6_fu_132_ap_return,
        ap_ce => grp_decision_function_6_fu_132_ap_ce);

    s_V_2_decision_function_5_fu_154 : component myproject_axi_decision_function_5
    port map (
        ap_ready => s_V_2_decision_function_5_fu_154_ap_ready,
        p_read1 => p_read_int_reg,
        p_read2 => p_read2_int_reg,
        p_read3 => p_read5_int_reg,
        p_read4 => p_read7_int_reg,
        ap_return => s_V_2_decision_function_5_fu_154_ap_return);

    s_V_3_decision_function_4_fu_166 : component myproject_axi_decision_function_4
    port map (
        ap_ready => s_V_3_decision_function_4_fu_166_ap_ready,
        p_read1 => p_read1_int_reg,
        p_read2 => p_read2_int_reg,
        p_read3 => p_read4_int_reg,
        p_read4 => p_read6_int_reg,
        ap_return => s_V_3_decision_function_4_fu_166_ap_return);

    s_V_4_decision_function_3_fu_178 : component myproject_axi_decision_function_3
    port map (
        ap_ready => s_V_4_decision_function_3_fu_178_ap_ready,
        p_read1 => p_read3_int_reg,
        p_read2 => p_read4_int_reg,
        p_read3 => p_read5_int_reg,
        p_read4 => p_read8_int_reg,
        p_read5 => p_read9_int_reg,
        ap_return => s_V_4_decision_function_3_fu_178_ap_return);

    s_V_5_decision_function_2_fu_192 : component myproject_axi_decision_function_2
    port map (
        ap_ready => s_V_5_decision_function_2_fu_192_ap_ready,
        p_read1 => p_read_int_reg,
        p_read2 => p_read4_int_reg,
        p_read3 => p_read7_int_reg,
        ap_return => s_V_5_decision_function_2_fu_192_ap_return);

    s_V_6_decision_function_1_fu_202 : component myproject_axi_decision_function_1
    port map (
        ap_ready => s_V_6_decision_function_1_fu_202_ap_ready,
        p_read1 => p_read1_int_reg,
        p_read2 => p_read2_int_reg,
        p_read3 => p_read5_int_reg,
        p_read4 => p_read9_int_reg,
        ap_return => s_V_6_decision_function_1_fu_202_ap_return);

    s_V_7_decision_function_fu_214 : component myproject_axi_decision_function
    port map (
        ap_ready => s_V_7_decision_function_fu_214_ap_ready,
        p_read1 => p_read2_int_reg,
        ap_return => s_V_7_decision_function_fu_214_ap_return);





    p_read1_int_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            p_read1_int_reg <= p_read1;
        end if;
    end process;

    p_read2_int_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            p_read2_int_reg <= p_read2;
        end if;
    end process;

    p_read3_int_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            p_read3_int_reg <= p_read3;
        end if;
    end process;

    p_read4_int_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            p_read4_int_reg <= p_read4;
        end if;
    end process;

    p_read5_int_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            p_read5_int_reg <= p_read5;
        end if;
    end process;

    p_read6_int_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            p_read6_int_reg <= p_read6;
        end if;
    end process;

    p_read7_int_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            p_read7_int_reg <= p_read7;
        end if;
    end process;

    p_read8_int_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            p_read8_int_reg <= p_read8;
        end if;
    end process;

    p_read9_int_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            p_read9_int_reg <= p_read9;
        end if;
    end process;

    p_read_int_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            p_read_int_reg <= p_read;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                add_ln712_1_reg_349 <= add_ln712_1_fu_232_p2;
                add_ln712_1_reg_349_pp0_iter2_reg <= add_ln712_1_reg_349;
                add_ln712_5_reg_339 <= add_ln712_5_fu_226_p2;
                add_ln712_6_reg_354 <= add_ln712_6_fu_240_p2;
                add_ln712_6_reg_354_pp0_iter2_reg <= add_ln712_6_reg_354;
                s_V_1_reg_344 <= grp_decision_function_6_fu_132_ap_return;
                s_V_1_reg_344_pp0_iter2_reg <= s_V_1_reg_344;
                s_V_2_reg_319 <= s_V_2_decision_function_5_fu_154_ap_return;
                s_V_3_reg_324 <= s_V_3_decision_function_4_fu_166_ap_return;
                s_V_4_reg_329 <= s_V_4_decision_function_3_fu_178_ap_return;
                s_V_5_reg_334 <= s_V_5_decision_function_2_fu_192_ap_return;
            end if;
        end if;
    end process;
    add_ln712_1_fu_232_p2 <= std_logic_vector(unsigned(s_V_2_reg_319) + unsigned(s_V_3_reg_324));
    add_ln712_2_fu_250_p2 <= std_logic_vector(unsigned(add_ln712_1_reg_349_pp0_iter2_reg) + unsigned(add_ln712_fu_245_p2));
    add_ln712_3_fu_236_p2 <= std_logic_vector(unsigned(s_V_4_reg_329) + unsigned(s_V_5_reg_334));
    add_ln712_4_fu_220_p2 <= std_logic_vector(unsigned(s_V_7_decision_function_fu_214_ap_return) + unsigned(ap_const_lv32_9C));
    add_ln712_5_fu_226_p2 <= std_logic_vector(unsigned(add_ln712_4_fu_220_p2) + unsigned(s_V_6_decision_function_1_fu_202_ap_return));
    add_ln712_6_fu_240_p2 <= std_logic_vector(unsigned(add_ln712_5_reg_339) + unsigned(add_ln712_3_fu_236_p2));
    add_ln712_fu_245_p2 <= std_logic_vector(unsigned(s_V_1_reg_344_pp0_iter2_reg) + unsigned(grp_decision_function_7_fu_108_ap_return));
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001_ignoreCallOp15 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001_ignoreCallOp16 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0_ignore_call11 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0_ignore_call12 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1_ignore_call11 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1_ignore_call12 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2_ignore_call11 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2_ignore_call12 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3_ignore_call11 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3_ignore_call12 <= not((ap_const_boolean_1 = ap_const_boolean_1));
    ap_return <= std_logic_vector(unsigned(add_ln712_6_reg_354_pp0_iter2_reg) + unsigned(add_ln712_2_fu_250_p2));

    grp_decision_function_6_fu_132_ap_ce_assign_proc : process(ap_block_pp0_stage0_11001_ignoreCallOp16)
    begin
        if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001_ignoreCallOp16)) then 
            grp_decision_function_6_fu_132_ap_ce <= ap_const_logic_1;
        else 
            grp_decision_function_6_fu_132_ap_ce <= ap_const_logic_0;
        end if; 
    end process;


    grp_decision_function_7_fu_108_ap_ce_assign_proc : process(ap_block_pp0_stage0_11001_ignoreCallOp15)
    begin
        if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001_ignoreCallOp15)) then 
            grp_decision_function_7_fu_108_ap_ce <= ap_const_logic_1;
        else 
            grp_decision_function_7_fu_108_ap_ce <= ap_const_logic_0;
        end if; 
    end process;

end behav;