-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
-- Version: 2020.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_axi_decision_function is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_ce : IN STD_LOGIC );
end;


architecture behav of myproject_axi_decision_function is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_F2E5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001111001011100101";
    constant ap_const_lv32_FFFEC4C6 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111101100010011000110";
    constant ap_const_lv32_FFFF127F : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111110001001001111111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv32_8CDB : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001000110011011011";
    constant ap_const_lv32_68F6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000110100011110110";
    constant ap_const_lv32_2785 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000010011110000101";
    constant ap_const_lv32_FFFFBED1 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111011111011010001";

attribute shreg_extract : string;
    signal comparison_fu_48_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_reg_130 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal comparison_18_fu_54_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_18_reg_137 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_17_fu_60_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal comparison_17_reg_143 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal xor_ln135_fu_71_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln133_fu_76_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_fu_66_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln148_fu_86_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal activation_31_fu_81_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln148_fu_91_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln148_1_fu_94_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln148_fu_100_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal agg_result_fu_116_p5 : STD_LOGIC_VECTOR (1 downto 0);
    signal agg_result_fu_116_p6 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_ce_reg : STD_LOGIC;
    signal ap_return_int_reg : STD_LOGIC_VECTOR (31 downto 0);

    component myproject_axi_mux_42_32_1_0_x IS
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
    mux_42_32_1_0_x_U26 : component myproject_axi_mux_42_32_1_0_x
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
        din0 => ap_const_lv32_8CDB,
        din1 => ap_const_lv32_68F6,
        din2 => ap_const_lv32_2785,
        din3 => ap_const_lv32_FFFFBED1,
        din4 => agg_result_fu_116_p5,
        dout => agg_result_fu_116_p6);





    ap_ce_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            ap_ce_reg <= ap_ce;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce_reg)) then
                ap_return_int_reg <= agg_result_fu_116_p6;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                comparison_17_reg_143 <= comparison_17_fu_60_p2;
                comparison_18_reg_137 <= comparison_18_fu_54_p2;
                comparison_reg_130 <= comparison_fu_48_p2;
            end if;
        end if;
    end process;
    activation_31_fu_81_p2 <= (comparison_reg_130 and and_ln133_fu_76_p2);
    activation_fu_66_p2 <= (comparison_reg_130 xor ap_const_lv1_1);
    agg_result_fu_116_p5 <= 
        select_ln148_fu_100_p3 when (or_ln148_1_fu_94_p2(0) = '1') else 
        ap_const_lv2_3;
    and_ln133_fu_76_p2 <= (xor_ln135_fu_71_p2 and comparison_17_reg_143);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_return_assign_proc : process(agg_result_fu_116_p6, ap_ce_reg, ap_return_int_reg)
    begin
        if ((ap_const_logic_0 = ap_ce_reg)) then 
            ap_return <= ap_return_int_reg;
        elsif ((ap_const_logic_1 = ap_ce_reg)) then 
            ap_return <= agg_result_fu_116_p6;
        else 
            ap_return <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    comparison_17_fu_60_p2 <= "1" when (signed(p_read2) < signed(ap_const_lv32_FFFF127F)) else "0";
    comparison_18_fu_54_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_FFFEC4C6)) else "0";
    comparison_fu_48_p2 <= "1" when (signed(p_read1) < signed(ap_const_lv32_F2E5)) else "0";
    or_ln148_1_fu_94_p2 <= (or_ln148_fu_86_p2 or activation_31_fu_81_p2);
    or_ln148_fu_86_p2 <= (comparison_18_reg_137 or activation_fu_66_p2);
    select_ln148_fu_100_p3 <= 
        zext_ln148_fu_91_p1 when (or_ln148_fu_86_p2(0) = '1') else 
        ap_const_lv2_2;
    xor_ln135_fu_71_p2 <= (comparison_18_reg_137 xor ap_const_lv1_1);
    zext_ln148_fu_91_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(comparison_reg_130),2));
end behav;
