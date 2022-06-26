// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="myproject_axi_myproject_axi,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu3eg-sbva484-1-e,HLS_INPUT_CLOCK=7.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.959000,HLS_SYN_LAT=22,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1561,HLS_SYN_LUT=15904,HLS_VERSION=2021_2}" *)

module myproject_axi (
        ap_local_block,
        ap_local_deadlock,
        ap_clk,
        ap_rst_n,
        in_r_TDATA,
        in_r_TVALID,
        in_r_TREADY,
        in_r_TKEEP,
        in_r_TSTRB,
        in_r_TUSER,
        in_r_TLAST,
        in_r_TID,
        in_r_TDEST,
        out_r_TDATA,
        out_r_TVALID,
        out_r_TREADY,
        out_r_TKEEP,
        out_r_TSTRB,
        out_r_TUSER,
        out_r_TLAST,
        out_r_TID,
        out_r_TDEST
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

output   ap_local_block;
output   ap_local_deadlock;
input   ap_clk;
input   ap_rst_n;
input  [31:0] in_r_TDATA;
input   in_r_TVALID;
output   in_r_TREADY;
input  [3:0] in_r_TKEEP;
input  [3:0] in_r_TSTRB;
input  [0:0] in_r_TUSER;
input  [0:0] in_r_TLAST;
input  [0:0] in_r_TID;
input  [0:0] in_r_TDEST;
output  [31:0] out_r_TDATA;
output   out_r_TVALID;
input   out_r_TREADY;
output  [3:0] out_r_TKEEP;
output  [3:0] out_r_TSTRB;
output  [0:0] out_r_TUSER;
output  [0:0] out_r_TLAST;
output  [0:0] out_r_TID;
output  [0:0] out_r_TDEST;

 reg    ap_rst_n_inv;
reg    out_r_TDATA_blk_n;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire   [31:0] grp_myproject_fu_209_ap_return;
reg   [31:0] out_local_V_reg_621;
wire    ap_CS_fsm_state5;
reg   [0:0] s_reg_628;
wire   [31:0] sub_i_i_fu_271_p2;
reg   [31:0] sub_i_i_reg_634;
wire    ap_CS_fsm_state6;
wire   [0:0] tobool_i_i_fu_276_p2;
reg   [0:0] tobool_i_i_reg_639;
wire    ap_CS_fsm_state7;
wire   [31:0] tmp_V_fu_281_p3;
reg   [31:0] tmp_V_reg_644;
wire   [31:0] sub_ln997_fu_304_p2;
reg   [31:0] sub_ln997_reg_649;
wire   [0:0] icmp_ln1011_fu_398_p2;
reg   [0:0] icmp_ln1011_reg_655;
wire   [0:0] select_ln1011_fu_418_p3;
reg   [0:0] select_ln1011_reg_660;
wire   [7:0] trunc_ln996_fu_426_p1;
reg   [7:0] trunc_ln996_reg_665;
wire    grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_start;
wire    grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_done;
wire    grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_idle;
wire    grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_ready;
wire    grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_r_TREADY;
wire   [31:0] grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_9_0123_out;
wire    grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_9_0123_out_ap_vld;
wire   [31:0] grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_8_0122_out;
wire    grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_8_0122_out_ap_vld;
wire   [31:0] grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_19_out;
wire    grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_19_out_ap_vld;
wire   [31:0] grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_28_out;
wire    grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_28_out_ap_vld;
wire   [31:0] grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_36_out;
wire    grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_36_out_ap_vld;
wire   [31:0] grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_43_out;
wire    grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_43_out_ap_vld;
wire   [31:0] grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_49_out;
wire    grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_49_out_ap_vld;
wire   [31:0] grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_54_out;
wire    grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_54_out_ap_vld;
wire   [31:0] grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_58_out;
wire    grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_58_out_ap_vld;
wire   [31:0] grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_61_out;
wire    grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_61_out_ap_vld;
wire   [0:0] grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_tmp_last_V_1_out;
wire    grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_tmp_last_V_1_out_ap_vld;
reg    grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg   [31:0] p_Result_3_fu_286_p4;
reg   [31:0] l_fu_296_p3;
wire   [31:0] lsb_index_fu_310_p2;
wire   [30:0] tmp_fu_316_p4;
wire   [5:0] trunc_ln1000_fu_332_p1;
wire   [5:0] sub_ln1000_fu_336_p2;
wire   [31:0] zext_ln1000_fu_342_p1;
wire   [31:0] lshr_ln1000_fu_346_p2;
wire   [31:0] shl_ln1002_fu_352_p2;
wire   [31:0] or_ln1002_1_fu_358_p2;
wire   [31:0] and_ln1002_fu_364_p2;
wire   [0:0] tmp_2_fu_376_p3;
wire   [0:0] p_Result_4_fu_390_p3;
wire   [0:0] xor_ln1002_fu_384_p2;
wire   [0:0] icmp_ln999_fu_326_p2;
wire   [0:0] icmp_ln1002_fu_370_p2;
wire   [0:0] select_ln999_fu_410_p3;
wire   [0:0] and_ln1002_1_fu_404_p2;
wire   [31:0] sub_ln1012_fu_437_p2;
wire   [63:0] zext_ln1010_fu_434_p1;
wire   [63:0] zext_ln1012_fu_442_p1;
wire   [31:0] add_ln1011_fu_452_p2;
wire   [63:0] zext_ln1011_fu_457_p1;
wire   [63:0] lshr_ln1011_fu_461_p2;
wire   [63:0] shl_ln1012_fu_446_p2;
wire   [63:0] m_fu_467_p3;
wire   [63:0] zext_ln1014_fu_474_p1;
wire   [63:0] m_2_fu_477_p2;
wire   [62:0] m_5_fu_483_p4;
wire   [0:0] p_Result_s_fu_497_p3;
wire   [7:0] sub_ln1017_fu_513_p2;
wire   [7:0] select_ln996_fu_505_p3;
wire   [7:0] add_ln1017_fu_518_p2;
wire   [63:0] zext_ln1015_fu_493_p1;
wire   [8:0] tmp_1_fu_524_p3;
wire   [63:0] p_Result_5_fu_531_p5;
wire   [31:0] LD_fu_543_p1;
reg   [8:0] ap_NS_fsm;
wire    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    regslice_both_out_r_V_data_V_U_apdone_blk;
reg    ap_block_state9;
wire    regslice_both_in_r_V_data_V_U_apdone_blk;
wire   [31:0] in_r_TDATA_int_regslice;
wire    in_r_TVALID_int_regslice;
reg    in_r_TREADY_int_regslice;
wire    regslice_both_in_r_V_data_V_U_ack_in;
wire    regslice_both_in_r_V_keep_V_U_apdone_blk;
wire   [3:0] in_r_TKEEP_int_regslice;
wire    regslice_both_in_r_V_keep_V_U_vld_out;
wire    regslice_both_in_r_V_keep_V_U_ack_in;
wire    regslice_both_in_r_V_strb_V_U_apdone_blk;
wire   [3:0] in_r_TSTRB_int_regslice;
wire    regslice_both_in_r_V_strb_V_U_vld_out;
wire    regslice_both_in_r_V_strb_V_U_ack_in;
wire    regslice_both_in_r_V_user_V_U_apdone_blk;
wire   [0:0] in_r_TUSER_int_regslice;
wire    regslice_both_in_r_V_user_V_U_vld_out;
wire    regslice_both_in_r_V_user_V_U_ack_in;
wire    regslice_both_in_r_V_last_V_U_apdone_blk;
wire   [0:0] in_r_TLAST_int_regslice;
wire    regslice_both_in_r_V_last_V_U_vld_out;
wire    regslice_both_in_r_V_last_V_U_ack_in;
wire    regslice_both_in_r_V_id_V_U_apdone_blk;
wire   [0:0] in_r_TID_int_regslice;
wire    regslice_both_in_r_V_id_V_U_vld_out;
wire    regslice_both_in_r_V_id_V_U_ack_in;
wire    regslice_both_in_r_V_dest_V_U_apdone_blk;
wire   [0:0] in_r_TDEST_int_regslice;
wire    regslice_both_in_r_V_dest_V_U_vld_out;
wire    regslice_both_in_r_V_dest_V_U_ack_in;
wire   [31:0] out_r_TDATA_int_regslice;
reg    out_r_TVALID_int_regslice;
wire    out_r_TREADY_int_regslice;
wire    regslice_both_out_r_V_data_V_U_vld_out;
wire    regslice_both_out_r_V_keep_V_U_apdone_blk;
wire    regslice_both_out_r_V_keep_V_U_ack_in_dummy;
wire    regslice_both_out_r_V_keep_V_U_vld_out;
wire    regslice_both_out_r_V_strb_V_U_apdone_blk;
wire    regslice_both_out_r_V_strb_V_U_ack_in_dummy;
wire    regslice_both_out_r_V_strb_V_U_vld_out;
wire    regslice_both_out_r_V_user_V_U_apdone_blk;
wire    regslice_both_out_r_V_user_V_U_ack_in_dummy;
wire    regslice_both_out_r_V_user_V_U_vld_out;
wire    regslice_both_out_r_V_last_V_U_apdone_blk;
wire    regslice_both_out_r_V_last_V_U_ack_in_dummy;
wire    regslice_both_out_r_V_last_V_U_vld_out;
wire    regslice_both_out_r_V_id_V_U_apdone_blk;
wire    regslice_both_out_r_V_id_V_U_ack_in_dummy;
wire    regslice_both_out_r_V_id_V_U_vld_out;
wire    regslice_both_out_r_V_dest_V_U_apdone_blk;
wire    regslice_both_out_r_V_dest_V_U_ack_in_dummy;
wire    regslice_both_out_r_V_dest_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_start_reg = 1'b0;
end

myproject_axi_myproject_axi_Pipeline_VITIS_LOOP_21_1 grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_start),
    .ap_done(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_done),
    .ap_idle(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_idle),
    .ap_ready(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_ready),
    .in_r_TVALID(in_r_TVALID_int_regslice),
    .in_r_TDATA(in_r_TDATA_int_regslice),
    .in_r_TREADY(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_r_TREADY),
    .in_r_TKEEP(in_r_TKEEP_int_regslice),
    .in_r_TSTRB(in_r_TSTRB_int_regslice),
    .in_r_TUSER(in_r_TUSER_int_regslice),
    .in_r_TLAST(in_r_TLAST_int_regslice),
    .in_r_TID(in_r_TID_int_regslice),
    .in_r_TDEST(in_r_TDEST_int_regslice),
    .in_local_V_9_0123_out(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_9_0123_out),
    .in_local_V_9_0123_out_ap_vld(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_9_0123_out_ap_vld),
    .in_local_V_8_0122_out(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_8_0122_out),
    .in_local_V_8_0122_out_ap_vld(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_8_0122_out_ap_vld),
    .in_local_V_19_out(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_19_out),
    .in_local_V_19_out_ap_vld(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_19_out_ap_vld),
    .in_local_V_28_out(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_28_out),
    .in_local_V_28_out_ap_vld(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_28_out_ap_vld),
    .in_local_V_36_out(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_36_out),
    .in_local_V_36_out_ap_vld(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_36_out_ap_vld),
    .in_local_V_43_out(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_43_out),
    .in_local_V_43_out_ap_vld(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_43_out_ap_vld),
    .in_local_V_49_out(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_49_out),
    .in_local_V_49_out_ap_vld(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_49_out_ap_vld),
    .in_local_V_54_out(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_54_out),
    .in_local_V_54_out_ap_vld(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_54_out_ap_vld),
    .in_local_V_58_out(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_58_out),
    .in_local_V_58_out_ap_vld(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_58_out_ap_vld),
    .in_local_V_61_out(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_61_out),
    .in_local_V_61_out_ap_vld(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_61_out_ap_vld),
    .tmp_last_V_1_out(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_tmp_last_V_1_out),
    .tmp_last_V_1_out_ap_vld(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_tmp_last_V_1_out_ap_vld)
);

myproject_axi_myproject grp_myproject_fu_209(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .p_read(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_61_out),
    .p_read1(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_58_out),
    .p_read2(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_54_out),
    .p_read3(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_49_out),
    .p_read4(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_43_out),
    .p_read5(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_36_out),
    .p_read6(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_28_out),
    .p_read7(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_19_out),
    .p_read8(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_8_0122_out),
    .p_read9(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_local_V_9_0123_out),
    .ap_return(grp_myproject_fu_209_ap_return)
);

myproject_axi_regslice_both #(
    .DataWidth( 32 ))
regslice_both_in_r_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in_r_TDATA),
    .vld_in(in_r_TVALID),
    .ack_in(regslice_both_in_r_V_data_V_U_ack_in),
    .data_out(in_r_TDATA_int_regslice),
    .vld_out(in_r_TVALID_int_regslice),
    .ack_out(in_r_TREADY_int_regslice),
    .apdone_blk(regslice_both_in_r_V_data_V_U_apdone_blk)
);

myproject_axi_regslice_both #(
    .DataWidth( 4 ))
regslice_both_in_r_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in_r_TKEEP),
    .vld_in(in_r_TVALID),
    .ack_in(regslice_both_in_r_V_keep_V_U_ack_in),
    .data_out(in_r_TKEEP_int_regslice),
    .vld_out(regslice_both_in_r_V_keep_V_U_vld_out),
    .ack_out(in_r_TREADY_int_regslice),
    .apdone_blk(regslice_both_in_r_V_keep_V_U_apdone_blk)
);

myproject_axi_regslice_both #(
    .DataWidth( 4 ))
regslice_both_in_r_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in_r_TSTRB),
    .vld_in(in_r_TVALID),
    .ack_in(regslice_both_in_r_V_strb_V_U_ack_in),
    .data_out(in_r_TSTRB_int_regslice),
    .vld_out(regslice_both_in_r_V_strb_V_U_vld_out),
    .ack_out(in_r_TREADY_int_regslice),
    .apdone_blk(regslice_both_in_r_V_strb_V_U_apdone_blk)
);

myproject_axi_regslice_both #(
    .DataWidth( 1 ))
regslice_both_in_r_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in_r_TUSER),
    .vld_in(in_r_TVALID),
    .ack_in(regslice_both_in_r_V_user_V_U_ack_in),
    .data_out(in_r_TUSER_int_regslice),
    .vld_out(regslice_both_in_r_V_user_V_U_vld_out),
    .ack_out(in_r_TREADY_int_regslice),
    .apdone_blk(regslice_both_in_r_V_user_V_U_apdone_blk)
);

myproject_axi_regslice_both #(
    .DataWidth( 1 ))
regslice_both_in_r_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in_r_TLAST),
    .vld_in(in_r_TVALID),
    .ack_in(regslice_both_in_r_V_last_V_U_ack_in),
    .data_out(in_r_TLAST_int_regslice),
    .vld_out(regslice_both_in_r_V_last_V_U_vld_out),
    .ack_out(in_r_TREADY_int_regslice),
    .apdone_blk(regslice_both_in_r_V_last_V_U_apdone_blk)
);

myproject_axi_regslice_both #(
    .DataWidth( 1 ))
regslice_both_in_r_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in_r_TID),
    .vld_in(in_r_TVALID),
    .ack_in(regslice_both_in_r_V_id_V_U_ack_in),
    .data_out(in_r_TID_int_regslice),
    .vld_out(regslice_both_in_r_V_id_V_U_vld_out),
    .ack_out(in_r_TREADY_int_regslice),
    .apdone_blk(regslice_both_in_r_V_id_V_U_apdone_blk)
);

myproject_axi_regslice_both #(
    .DataWidth( 1 ))
regslice_both_in_r_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in_r_TDEST),
    .vld_in(in_r_TVALID),
    .ack_in(regslice_both_in_r_V_dest_V_U_ack_in),
    .data_out(in_r_TDEST_int_regslice),
    .vld_out(regslice_both_in_r_V_dest_V_U_vld_out),
    .ack_out(in_r_TREADY_int_regslice),
    .apdone_blk(regslice_both_in_r_V_dest_V_U_apdone_blk)
);

myproject_axi_regslice_both #(
    .DataWidth( 32 ))
regslice_both_out_r_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(out_r_TDATA_int_regslice),
    .vld_in(out_r_TVALID_int_regslice),
    .ack_in(out_r_TREADY_int_regslice),
    .data_out(out_r_TDATA),
    .vld_out(regslice_both_out_r_V_data_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_r_V_data_V_U_apdone_blk)
);

myproject_axi_regslice_both #(
    .DataWidth( 4 ))
regslice_both_out_r_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(4'd15),
    .vld_in(out_r_TVALID_int_regslice),
    .ack_in(regslice_both_out_r_V_keep_V_U_ack_in_dummy),
    .data_out(out_r_TKEEP),
    .vld_out(regslice_both_out_r_V_keep_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_r_V_keep_V_U_apdone_blk)
);

myproject_axi_regslice_both #(
    .DataWidth( 4 ))
regslice_both_out_r_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(4'd15),
    .vld_in(out_r_TVALID_int_regslice),
    .ack_in(regslice_both_out_r_V_strb_V_U_ack_in_dummy),
    .data_out(out_r_TSTRB),
    .vld_out(regslice_both_out_r_V_strb_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_r_V_strb_V_U_apdone_blk)
);

myproject_axi_regslice_both #(
    .DataWidth( 1 ))
regslice_both_out_r_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(1'd0),
    .vld_in(out_r_TVALID_int_regslice),
    .ack_in(regslice_both_out_r_V_user_V_U_ack_in_dummy),
    .data_out(out_r_TUSER),
    .vld_out(regslice_both_out_r_V_user_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_r_V_user_V_U_apdone_blk)
);

myproject_axi_regslice_both #(
    .DataWidth( 1 ))
regslice_both_out_r_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_tmp_last_V_1_out),
    .vld_in(out_r_TVALID_int_regslice),
    .ack_in(regslice_both_out_r_V_last_V_U_ack_in_dummy),
    .data_out(out_r_TLAST),
    .vld_out(regslice_both_out_r_V_last_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_r_V_last_V_U_apdone_blk)
);

myproject_axi_regslice_both #(
    .DataWidth( 1 ))
regslice_both_out_r_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(1'd0),
    .vld_in(out_r_TVALID_int_regslice),
    .ack_in(regslice_both_out_r_V_id_V_U_ack_in_dummy),
    .data_out(out_r_TID),
    .vld_out(regslice_both_out_r_V_id_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_r_V_id_V_U_apdone_blk)
);

myproject_axi_regslice_both #(
    .DataWidth( 1 ))
regslice_both_out_r_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(1'd0),
    .vld_in(out_r_TVALID_int_regslice),
    .ack_in(regslice_both_out_r_V_dest_V_U_ack_in_dummy),
    .data_out(out_r_TDEST),
    .vld_out(regslice_both_out_r_V_dest_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_r_V_dest_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_start_reg <= 1'b1;
        end else if ((grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_ready == 1'b1)) begin
            grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        icmp_ln1011_reg_655 <= icmp_ln1011_fu_398_p2;
        select_ln1011_reg_660 <= select_ln1011_fu_418_p3;
        sub_ln997_reg_649 <= sub_ln997_fu_304_p2;
        tmp_V_reg_644 <= tmp_V_fu_281_p3;
        tobool_i_i_reg_639 <= tobool_i_i_fu_276_p2;
        trunc_ln996_reg_665 <= trunc_ln996_fu_426_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_local_V_reg_621 <= grp_myproject_fu_209_ap_return;
        s_reg_628 <= grp_myproject_fu_209_ap_return[32'd31];
    end
end

always @ (posedge ap_clk) begin
    if (((s_reg_628 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        sub_i_i_reg_634 <= sub_i_i_fu_271_p2;
    end
end

assign ap_ST_fsm_state1_blk = 1'b0;

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

always @ (*) begin
    if ((out_r_TREADY_int_regslice == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end

always @ (*) begin
    if (((out_r_TREADY_int_regslice == 1'b0) | (regslice_both_out_r_V_data_V_U_apdone_blk == 1'b1))) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        in_r_TREADY_int_regslice = grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_in_r_TREADY;
    end else begin
        in_r_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        out_r_TDATA_blk_n = out_r_TREADY_int_regslice;
    end else begin
        out_r_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((out_r_TREADY_int_regslice == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        out_r_TVALID_int_regslice = 1'b1;
    end else begin
        out_r_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((out_r_TREADY_int_regslice == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if ((~((out_r_TREADY_int_regslice == 1'b0) | (regslice_both_out_r_V_data_V_U_apdone_blk == 1'b1)) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign LD_fu_543_p1 = p_Result_5_fu_531_p5[31:0];

assign add_ln1011_fu_452_p2 = ($signed(sub_ln997_reg_649) + $signed(32'd4294967271));

assign add_ln1017_fu_518_p2 = (sub_ln1017_fu_513_p2 + select_ln996_fu_505_p3);

assign and_ln1002_1_fu_404_p2 = (xor_ln1002_fu_384_p2 & p_Result_4_fu_390_p3);

assign and_ln1002_fu_364_p2 = (tmp_V_fu_281_p3 & or_ln1002_1_fu_358_p2);

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state9 = ((out_r_TREADY_int_regslice == 1'b0) | (regslice_both_out_r_V_data_V_U_apdone_blk == 1'b1));
end

assign ap_local_block = 1'b0;

assign ap_local_deadlock = 1'b0;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_start = grp_myproject_axi_Pipeline_VITIS_LOOP_21_1_fu_180_ap_start_reg;

assign icmp_ln1002_fu_370_p2 = ((and_ln1002_fu_364_p2 != 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln1011_fu_398_p2 = (($signed(lsb_index_fu_310_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln999_fu_326_p2 = (($signed(tmp_fu_316_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign in_r_TREADY = regslice_both_in_r_V_data_V_U_ack_in;


always @ (p_Result_3_fu_286_p4) begin
    if (p_Result_3_fu_286_p4[0] == 1'b1) begin
        l_fu_296_p3 = 32'd0;
    end else if (p_Result_3_fu_286_p4[1] == 1'b1) begin
        l_fu_296_p3 = 32'd1;
    end else if (p_Result_3_fu_286_p4[2] == 1'b1) begin
        l_fu_296_p3 = 32'd2;
    end else if (p_Result_3_fu_286_p4[3] == 1'b1) begin
        l_fu_296_p3 = 32'd3;
    end else if (p_Result_3_fu_286_p4[4] == 1'b1) begin
        l_fu_296_p3 = 32'd4;
    end else if (p_Result_3_fu_286_p4[5] == 1'b1) begin
        l_fu_296_p3 = 32'd5;
    end else if (p_Result_3_fu_286_p4[6] == 1'b1) begin
        l_fu_296_p3 = 32'd6;
    end else if (p_Result_3_fu_286_p4[7] == 1'b1) begin
        l_fu_296_p3 = 32'd7;
    end else if (p_Result_3_fu_286_p4[8] == 1'b1) begin
        l_fu_296_p3 = 32'd8;
    end else if (p_Result_3_fu_286_p4[9] == 1'b1) begin
        l_fu_296_p3 = 32'd9;
    end else if (p_Result_3_fu_286_p4[10] == 1'b1) begin
        l_fu_296_p3 = 32'd10;
    end else if (p_Result_3_fu_286_p4[11] == 1'b1) begin
        l_fu_296_p3 = 32'd11;
    end else if (p_Result_3_fu_286_p4[12] == 1'b1) begin
        l_fu_296_p3 = 32'd12;
    end else if (p_Result_3_fu_286_p4[13] == 1'b1) begin
        l_fu_296_p3 = 32'd13;
    end else if (p_Result_3_fu_286_p4[14] == 1'b1) begin
        l_fu_296_p3 = 32'd14;
    end else if (p_Result_3_fu_286_p4[15] == 1'b1) begin
        l_fu_296_p3 = 32'd15;
    end else if (p_Result_3_fu_286_p4[16] == 1'b1) begin
        l_fu_296_p3 = 32'd16;
    end else if (p_Result_3_fu_286_p4[17] == 1'b1) begin
        l_fu_296_p3 = 32'd17;
    end else if (p_Result_3_fu_286_p4[18] == 1'b1) begin
        l_fu_296_p3 = 32'd18;
    end else if (p_Result_3_fu_286_p4[19] == 1'b1) begin
        l_fu_296_p3 = 32'd19;
    end else if (p_Result_3_fu_286_p4[20] == 1'b1) begin
        l_fu_296_p3 = 32'd20;
    end else if (p_Result_3_fu_286_p4[21] == 1'b1) begin
        l_fu_296_p3 = 32'd21;
    end else if (p_Result_3_fu_286_p4[22] == 1'b1) begin
        l_fu_296_p3 = 32'd22;
    end else if (p_Result_3_fu_286_p4[23] == 1'b1) begin
        l_fu_296_p3 = 32'd23;
    end else if (p_Result_3_fu_286_p4[24] == 1'b1) begin
        l_fu_296_p3 = 32'd24;
    end else if (p_Result_3_fu_286_p4[25] == 1'b1) begin
        l_fu_296_p3 = 32'd25;
    end else if (p_Result_3_fu_286_p4[26] == 1'b1) begin
        l_fu_296_p3 = 32'd26;
    end else if (p_Result_3_fu_286_p4[27] == 1'b1) begin
        l_fu_296_p3 = 32'd27;
    end else if (p_Result_3_fu_286_p4[28] == 1'b1) begin
        l_fu_296_p3 = 32'd28;
    end else if (p_Result_3_fu_286_p4[29] == 1'b1) begin
        l_fu_296_p3 = 32'd29;
    end else if (p_Result_3_fu_286_p4[30] == 1'b1) begin
        l_fu_296_p3 = 32'd30;
    end else if (p_Result_3_fu_286_p4[31] == 1'b1) begin
        l_fu_296_p3 = 32'd31;
    end else begin
        l_fu_296_p3 = 32'd32;
    end
end

assign lsb_index_fu_310_p2 = ($signed(sub_ln997_fu_304_p2) + $signed(32'd4294967272));

assign lshr_ln1000_fu_346_p2 = 32'd4294967295 >> zext_ln1000_fu_342_p1;

assign lshr_ln1011_fu_461_p2 = zext_ln1010_fu_434_p1 >> zext_ln1011_fu_457_p1;

assign m_2_fu_477_p2 = (m_fu_467_p3 + zext_ln1014_fu_474_p1);

assign m_5_fu_483_p4 = {{m_2_fu_477_p2[63:1]}};

assign m_fu_467_p3 = ((icmp_ln1011_reg_655[0:0] == 1'b1) ? lshr_ln1011_fu_461_p2 : shl_ln1012_fu_446_p2);

assign or_ln1002_1_fu_358_p2 = (shl_ln1002_fu_352_p2 | lshr_ln1000_fu_346_p2);

assign out_r_TDATA_int_regslice = ((tobool_i_i_reg_639[0:0] == 1'b1) ? 32'd0 : LD_fu_543_p1);

assign out_r_TVALID = regslice_both_out_r_V_data_V_U_vld_out;

integer ap_tvar_int_0;

always @ (tmp_V_fu_281_p3) begin
    for (ap_tvar_int_0 = 32 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 31 - 0) begin
            p_Result_3_fu_286_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            p_Result_3_fu_286_p4[ap_tvar_int_0] = tmp_V_fu_281_p3[31 - ap_tvar_int_0];
        end
    end
end

assign p_Result_4_fu_390_p3 = tmp_V_fu_281_p3[lsb_index_fu_310_p2];

assign p_Result_5_fu_531_p5 = {{zext_ln1015_fu_493_p1[63:32]}, {tmp_1_fu_524_p3}, {zext_ln1015_fu_493_p1[22:0]}};

assign p_Result_s_fu_497_p3 = m_2_fu_477_p2[32'd25];

assign select_ln1011_fu_418_p3 = ((icmp_ln1011_fu_398_p2[0:0] == 1'b1) ? select_ln999_fu_410_p3 : and_ln1002_1_fu_404_p2);

assign select_ln996_fu_505_p3 = ((p_Result_s_fu_497_p3[0:0] == 1'b1) ? 8'd127 : 8'd126);

assign select_ln999_fu_410_p3 = ((icmp_ln999_fu_326_p2[0:0] == 1'b1) ? icmp_ln1002_fu_370_p2 : p_Result_4_fu_390_p3);

assign shl_ln1002_fu_352_p2 = 32'd1 << lsb_index_fu_310_p2;

assign shl_ln1012_fu_446_p2 = zext_ln1010_fu_434_p1 << zext_ln1012_fu_442_p1;

assign sub_i_i_fu_271_p2 = (32'd0 - out_local_V_reg_621);

assign sub_ln1000_fu_336_p2 = ($signed(6'd57) - $signed(trunc_ln1000_fu_332_p1));

assign sub_ln1012_fu_437_p2 = (32'd25 - sub_ln997_reg_649);

assign sub_ln1017_fu_513_p2 = (8'd16 - trunc_ln996_reg_665);

assign sub_ln997_fu_304_p2 = (32'd32 - l_fu_296_p3);

assign tmp_1_fu_524_p3 = {{s_reg_628}, {add_ln1017_fu_518_p2}};

assign tmp_2_fu_376_p3 = lsb_index_fu_310_p2[32'd31];

assign tmp_V_fu_281_p3 = ((s_reg_628[0:0] == 1'b1) ? sub_i_i_reg_634 : out_local_V_reg_621);

assign tmp_fu_316_p4 = {{lsb_index_fu_310_p2[31:1]}};

assign tobool_i_i_fu_276_p2 = ((out_local_V_reg_621 == 32'd0) ? 1'b1 : 1'b0);

assign trunc_ln1000_fu_332_p1 = sub_ln997_fu_304_p2[5:0];

assign trunc_ln996_fu_426_p1 = l_fu_296_p3[7:0];

assign xor_ln1002_fu_384_p2 = (tmp_2_fu_376_p3 ^ 1'd1);

assign zext_ln1000_fu_342_p1 = sub_ln1000_fu_336_p2;

assign zext_ln1010_fu_434_p1 = tmp_V_reg_644;

assign zext_ln1011_fu_457_p1 = add_ln1011_fu_452_p2;

assign zext_ln1012_fu_442_p1 = sub_ln1012_fu_437_p2;

assign zext_ln1014_fu_474_p1 = select_ln1011_reg_660;

assign zext_ln1015_fu_493_p1 = m_5_fu_483_p4;

endmodule //myproject_axi
