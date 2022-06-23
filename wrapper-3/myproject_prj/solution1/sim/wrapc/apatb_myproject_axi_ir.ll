; ModuleID = '/home/nghielme/PycharmProjects/conifer/examples/wrapper-3-20220623T092548Z-001/wrapper-3/myproject_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>" = type { %"struct.hls::axis<float, 0, 0, 0>" }
%"struct.hls::axis<float, 0, 0, 0>" = type { float, %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: noinline
define void @apatb_myproject_axi_ir(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %in, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %out) local_unnamed_addr #0 {
entry:
  %in_copy_0.data = alloca i32
  %in_copy_0.keep = alloca i4
  %in_copy_0.strb = alloca i4
  %in_copy_0.last = alloca i1
  %in_copy_1.data = alloca i32
  %in_copy_1.keep = alloca i4
  %in_copy_1.strb = alloca i4
  %in_copy_1.last = alloca i1
  %in_copy_2.data = alloca i32
  %in_copy_2.keep = alloca i4
  %in_copy_2.strb = alloca i4
  %in_copy_2.last = alloca i1
  %in_copy_3.data = alloca i32
  %in_copy_3.keep = alloca i4
  %in_copy_3.strb = alloca i4
  %in_copy_3.last = alloca i1
  %in_copy_4.data = alloca i32
  %in_copy_4.keep = alloca i4
  %in_copy_4.strb = alloca i4
  %in_copy_4.last = alloca i1
  %in_copy_5.data = alloca i32
  %in_copy_5.keep = alloca i4
  %in_copy_5.strb = alloca i4
  %in_copy_5.last = alloca i1
  %in_copy_6.data = alloca i32
  %in_copy_6.keep = alloca i4
  %in_copy_6.strb = alloca i4
  %in_copy_6.last = alloca i1
  %in_copy_7.data = alloca i32
  %in_copy_7.keep = alloca i4
  %in_copy_7.strb = alloca i4
  %in_copy_7.last = alloca i1
  %in_copy_8.data = alloca i32
  %in_copy_8.keep = alloca i4
  %in_copy_8.strb = alloca i4
  %in_copy_8.last = alloca i1
  %in_copy_9.data = alloca i32
  %in_copy_9.keep = alloca i4
  %in_copy_9.strb = alloca i4
  %in_copy_9.last = alloca i1
  %out_copy_0.data = alloca i32
  %out_copy_0.keep = alloca i4
  %out_copy_0.strb = alloca i4
  %out_copy_0.last = alloca i1
  %out_copy_1.data = alloca i32
  %out_copy_1.keep = alloca i4
  %out_copy_1.strb = alloca i4
  %out_copy_1.last = alloca i1
  %out_copy_2.data = alloca i32
  %out_copy_2.keep = alloca i4
  %out_copy_2.strb = alloca i4
  %out_copy_2.last = alloca i1
  %out_copy_3.data = alloca i32
  %out_copy_3.keep = alloca i4
  %out_copy_3.strb = alloca i4
  %out_copy_3.last = alloca i1
  %out_copy_4.data = alloca i32
  %out_copy_4.keep = alloca i4
  %out_copy_4.strb = alloca i4
  %out_copy_4.last = alloca i1
  %out_copy_5.data = alloca i32
  %out_copy_5.keep = alloca i4
  %out_copy_5.strb = alloca i4
  %out_copy_5.last = alloca i1
  %out_copy_6.data = alloca i32
  %out_copy_6.keep = alloca i4
  %out_copy_6.strb = alloca i4
  %out_copy_6.last = alloca i1
  %out_copy_7.data = alloca i32
  %out_copy_7.keep = alloca i4
  %out_copy_7.strb = alloca i4
  %out_copy_7.last = alloca i1
  %out_copy_8.data = alloca i32
  %out_copy_8.keep = alloca i4
  %out_copy_8.strb = alloca i4
  %out_copy_8.last = alloca i1
  %out_copy_9.data = alloca i32
  %out_copy_9.keep = alloca i4
  %out_copy_9.strb = alloca i4
  %out_copy_9.last = alloca i1
  %0 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %in to [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]*
  %1 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %out to [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]*
  call void @copy_in([10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %0, i32* %in_copy_0.data, i4* %in_copy_0.keep, i4* %in_copy_0.strb, i1* %in_copy_0.last, i32* %in_copy_1.data, i4* %in_copy_1.keep, i4* %in_copy_1.strb, i1* %in_copy_1.last, i32* %in_copy_2.data, i4* %in_copy_2.keep, i4* %in_copy_2.strb, i1* %in_copy_2.last, i32* %in_copy_3.data, i4* %in_copy_3.keep, i4* %in_copy_3.strb, i1* %in_copy_3.last, i32* %in_copy_4.data, i4* %in_copy_4.keep, i4* %in_copy_4.strb, i1* %in_copy_4.last, i32* %in_copy_5.data, i4* %in_copy_5.keep, i4* %in_copy_5.strb, i1* %in_copy_5.last, i32* %in_copy_6.data, i4* %in_copy_6.keep, i4* %in_copy_6.strb, i1* %in_copy_6.last, i32* %in_copy_7.data, i4* %in_copy_7.keep, i4* %in_copy_7.strb, i1* %in_copy_7.last, i32* %in_copy_8.data, i4* %in_copy_8.keep, i4* %in_copy_8.strb, i1* %in_copy_8.last, i32* %in_copy_9.data, i4* %in_copy_9.keep, i4* %in_copy_9.strb, i1* %in_copy_9.last, [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %1, i32* %out_copy_0.data, i4* %out_copy_0.keep, i4* %out_copy_0.strb, i1* %out_copy_0.last, i32* %out_copy_1.data, i4* %out_copy_1.keep, i4* %out_copy_1.strb, i1* %out_copy_1.last, i32* %out_copy_2.data, i4* %out_copy_2.keep, i4* %out_copy_2.strb, i1* %out_copy_2.last, i32* %out_copy_3.data, i4* %out_copy_3.keep, i4* %out_copy_3.strb, i1* %out_copy_3.last, i32* %out_copy_4.data, i4* %out_copy_4.keep, i4* %out_copy_4.strb, i1* %out_copy_4.last, i32* %out_copy_5.data, i4* %out_copy_5.keep, i4* %out_copy_5.strb, i1* %out_copy_5.last, i32* %out_copy_6.data, i4* %out_copy_6.keep, i4* %out_copy_6.strb, i1* %out_copy_6.last, i32* %out_copy_7.data, i4* %out_copy_7.keep, i4* %out_copy_7.strb, i1* %out_copy_7.last, i32* %out_copy_8.data, i4* %out_copy_8.keep, i4* %out_copy_8.strb, i1* %out_copy_8.last, i32* %out_copy_9.data, i4* %out_copy_9.keep, i4* %out_copy_9.strb, i1* %out_copy_9.last)
  call void @apatb_myproject_axi_hw(i32* %in_copy_0.data, i4* %in_copy_0.keep, i4* %in_copy_0.strb, i1* %in_copy_0.last, i32* %in_copy_1.data, i4* %in_copy_1.keep, i4* %in_copy_1.strb, i1* %in_copy_1.last, i32* %in_copy_2.data, i4* %in_copy_2.keep, i4* %in_copy_2.strb, i1* %in_copy_2.last, i32* %in_copy_3.data, i4* %in_copy_3.keep, i4* %in_copy_3.strb, i1* %in_copy_3.last, i32* %in_copy_4.data, i4* %in_copy_4.keep, i4* %in_copy_4.strb, i1* %in_copy_4.last, i32* %in_copy_5.data, i4* %in_copy_5.keep, i4* %in_copy_5.strb, i1* %in_copy_5.last, i32* %in_copy_6.data, i4* %in_copy_6.keep, i4* %in_copy_6.strb, i1* %in_copy_6.last, i32* %in_copy_7.data, i4* %in_copy_7.keep, i4* %in_copy_7.strb, i1* %in_copy_7.last, i32* %in_copy_8.data, i4* %in_copy_8.keep, i4* %in_copy_8.strb, i1* %in_copy_8.last, i32* %in_copy_9.data, i4* %in_copy_9.keep, i4* %in_copy_9.strb, i1* %in_copy_9.last, i32* %out_copy_0.data, i4* %out_copy_0.keep, i4* %out_copy_0.strb, i1* %out_copy_0.last, i32* %out_copy_1.data, i4* %out_copy_1.keep, i4* %out_copy_1.strb, i1* %out_copy_1.last, i32* %out_copy_2.data, i4* %out_copy_2.keep, i4* %out_copy_2.strb, i1* %out_copy_2.last, i32* %out_copy_3.data, i4* %out_copy_3.keep, i4* %out_copy_3.strb, i1* %out_copy_3.last, i32* %out_copy_4.data, i4* %out_copy_4.keep, i4* %out_copy_4.strb, i1* %out_copy_4.last, i32* %out_copy_5.data, i4* %out_copy_5.keep, i4* %out_copy_5.strb, i1* %out_copy_5.last, i32* %out_copy_6.data, i4* %out_copy_6.keep, i4* %out_copy_6.strb, i1* %out_copy_6.last, i32* %out_copy_7.data, i4* %out_copy_7.keep, i4* %out_copy_7.strb, i1* %out_copy_7.last, i32* %out_copy_8.data, i4* %out_copy_8.keep, i4* %out_copy_8.strb, i1* %out_copy_8.last, i32* %out_copy_9.data, i4* %out_copy_9.keep, i4* %out_copy_9.strb, i1* %out_copy_9.last)
  call void @copy_out([10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %0, i32* %in_copy_0.data, i4* %in_copy_0.keep, i4* %in_copy_0.strb, i1* %in_copy_0.last, i32* %in_copy_1.data, i4* %in_copy_1.keep, i4* %in_copy_1.strb, i1* %in_copy_1.last, i32* %in_copy_2.data, i4* %in_copy_2.keep, i4* %in_copy_2.strb, i1* %in_copy_2.last, i32* %in_copy_3.data, i4* %in_copy_3.keep, i4* %in_copy_3.strb, i1* %in_copy_3.last, i32* %in_copy_4.data, i4* %in_copy_4.keep, i4* %in_copy_4.strb, i1* %in_copy_4.last, i32* %in_copy_5.data, i4* %in_copy_5.keep, i4* %in_copy_5.strb, i1* %in_copy_5.last, i32* %in_copy_6.data, i4* %in_copy_6.keep, i4* %in_copy_6.strb, i1* %in_copy_6.last, i32* %in_copy_7.data, i4* %in_copy_7.keep, i4* %in_copy_7.strb, i1* %in_copy_7.last, i32* %in_copy_8.data, i4* %in_copy_8.keep, i4* %in_copy_8.strb, i1* %in_copy_8.last, i32* %in_copy_9.data, i4* %in_copy_9.keep, i4* %in_copy_9.strb, i1* %in_copy_9.last, [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %1, i32* %out_copy_0.data, i4* %out_copy_0.keep, i4* %out_copy_0.strb, i1* %out_copy_0.last, i32* %out_copy_1.data, i4* %out_copy_1.keep, i4* %out_copy_1.strb, i1* %out_copy_1.last, i32* %out_copy_2.data, i4* %out_copy_2.keep, i4* %out_copy_2.strb, i1* %out_copy_2.last, i32* %out_copy_3.data, i4* %out_copy_3.keep, i4* %out_copy_3.strb, i1* %out_copy_3.last, i32* %out_copy_4.data, i4* %out_copy_4.keep, i4* %out_copy_4.strb, i1* %out_copy_4.last, i32* %out_copy_5.data, i4* %out_copy_5.keep, i4* %out_copy_5.strb, i1* %out_copy_5.last, i32* %out_copy_6.data, i4* %out_copy_6.keep, i4* %out_copy_6.strb, i1* %out_copy_6.last, i32* %out_copy_7.data, i4* %out_copy_7.keep, i4* %out_copy_7.strb, i1* %out_copy_7.last, i32* %out_copy_8.data, i4* %out_copy_8.keep, i4* %out_copy_8.strb, i1* %out_copy_8.last, i32* %out_copy_9.data, i4* %out_copy_9.keep, i4* %out_copy_9.strb, i1* %out_copy_9.last)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #1

; Function Attrs: argmemonly noinline
define internal void @copy_in([10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* "orig.arg.no"="0", i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_0_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_0_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_0_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="2.0" %_1_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="2.1" %_1_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="2.2" %_1_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="2.3" %_1_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="3.0" %_2_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="3.1" %_2_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="3.2" %_2_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="3.3" %_2_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="4.0" %_3_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="4.1" %_3_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="4.2" %_3_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="4.3" %_3_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="5.0" %_4_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="5.1" %_4_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="5.2" %_4_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="5.3" %_4_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="6.0" %_5_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="6.1" %_5_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="6.2" %_5_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="6.3" %_5_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="7.0" %_6_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="7.1" %_6_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="7.2" %_6_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="7.3" %_6_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="8.0" %_7_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="8.1" %_7_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="8.2" %_7_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="8.3" %_7_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="9.0" %_8_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="9.1" %_8_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="9.2" %_8_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="9.3" %_8_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="10.0" %_9_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="10.1" %_9_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="10.2" %_9_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="10.3" %_9_V_last_V, [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* "orig.arg.no"="2", i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="12.0" %_01_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="12.1" %_01_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="12.2" %_01_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="12.3" %_01_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="13.0" %_12_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="13.1" %_12_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="13.2" %_12_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="13.3" %_12_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="14.0" %_23_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="14.1" %_23_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="14.2" %_23_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="14.3" %_23_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="15.0" %_34_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="15.1" %_34_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="15.2" %_34_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="15.3" %_34_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="16.0" %_45_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="16.1" %_45_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="16.2" %_45_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="16.3" %_45_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="17.0" %_56_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="17.1" %_56_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="17.2" %_56_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="17.3" %_56_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="18.0" %_67_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="18.1" %_67_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="18.2" %_67_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="18.3" %_67_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="19.0" %_78_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="19.1" %_78_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="19.2" %_78_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="19.3" %_78_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="20.0" %_89_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="20.1" %_89_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="20.2" %_89_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="20.3" %_89_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="21.0" %_910_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="21.1" %_910_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="21.2" %_910_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="21.3" %_910_V_last_V) #2 {
entry:
  call void @"onebyonecpy_hls.p0a10class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.281.284"(i32* %_0_V_data_V, i4* %_0_V_keep_V, i4* %_0_V_strb_V, i1* %_0_V_last_V, i32* %_1_V_data_V, i4* %_1_V_keep_V, i4* %_1_V_strb_V, i1* %_1_V_last_V, i32* %_2_V_data_V, i4* %_2_V_keep_V, i4* %_2_V_strb_V, i1* %_2_V_last_V, i32* %_3_V_data_V, i4* %_3_V_keep_V, i4* %_3_V_strb_V, i1* %_3_V_last_V, i32* %_4_V_data_V, i4* %_4_V_keep_V, i4* %_4_V_strb_V, i1* %_4_V_last_V, i32* %_5_V_data_V, i4* %_5_V_keep_V, i4* %_5_V_strb_V, i1* %_5_V_last_V, i32* %_6_V_data_V, i4* %_6_V_keep_V, i4* %_6_V_strb_V, i1* %_6_V_last_V, i32* %_7_V_data_V, i4* %_7_V_keep_V, i4* %_7_V_strb_V, i1* %_7_V_last_V, i32* %_8_V_data_V, i4* %_8_V_keep_V, i4* %_8_V_strb_V, i1* %_8_V_last_V, i32* %_9_V_data_V, i4* %_9_V_keep_V, i4* %_9_V_strb_V, i1* %_9_V_last_V, [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %0)
  call void @"onebyonecpy_hls.p0a10class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.281.284"(i32* %_01_V_data_V, i4* %_01_V_keep_V, i4* %_01_V_strb_V, i1* %_01_V_last_V, i32* %_12_V_data_V, i4* %_12_V_keep_V, i4* %_12_V_strb_V, i1* %_12_V_last_V, i32* %_23_V_data_V, i4* %_23_V_keep_V, i4* %_23_V_strb_V, i1* %_23_V_last_V, i32* %_34_V_data_V, i4* %_34_V_keep_V, i4* %_34_V_strb_V, i1* %_34_V_last_V, i32* %_45_V_data_V, i4* %_45_V_keep_V, i4* %_45_V_strb_V, i1* %_45_V_last_V, i32* %_56_V_data_V, i4* %_56_V_keep_V, i4* %_56_V_strb_V, i1* %_56_V_last_V, i32* %_67_V_data_V, i4* %_67_V_keep_V, i4* %_67_V_strb_V, i1* %_67_V_last_V, i32* %_78_V_data_V, i4* %_78_V_keep_V, i4* %_78_V_strb_V, i1* %_78_V_last_V, i32* %_89_V_data_V, i4* %_89_V_keep_V, i4* %_89_V_strb_V, i1* %_89_V_last_V, i32* %_910_V_data_V, i4* %_910_V_keep_V, i4* %_910_V_strb_V, i1* %_910_V_last_V, [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %1)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_out([10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* "orig.arg.no"="0", i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_0_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_0_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_0_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="2.0" %_1_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="2.1" %_1_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="2.2" %_1_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="2.3" %_1_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="3.0" %_2_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="3.1" %_2_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="3.2" %_2_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="3.3" %_2_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="4.0" %_3_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="4.1" %_3_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="4.2" %_3_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="4.3" %_3_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="5.0" %_4_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="5.1" %_4_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="5.2" %_4_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="5.3" %_4_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="6.0" %_5_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="6.1" %_5_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="6.2" %_5_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="6.3" %_5_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="7.0" %_6_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="7.1" %_6_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="7.2" %_6_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="7.3" %_6_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="8.0" %_7_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="8.1" %_7_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="8.2" %_7_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="8.3" %_7_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="9.0" %_8_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="9.1" %_8_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="9.2" %_8_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="9.3" %_8_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="10.0" %_9_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="10.1" %_9_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="10.2" %_9_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="10.3" %_9_V_last_V, [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* "orig.arg.no"="2", i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="12.0" %_01_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="12.1" %_01_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="12.2" %_01_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="12.3" %_01_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="13.0" %_12_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="13.1" %_12_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="13.2" %_12_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="13.3" %_12_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="14.0" %_23_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="14.1" %_23_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="14.2" %_23_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="14.3" %_23_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="15.0" %_34_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="15.1" %_34_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="15.2" %_34_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="15.3" %_34_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="16.0" %_45_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="16.1" %_45_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="16.2" %_45_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="16.3" %_45_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="17.0" %_56_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="17.1" %_56_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="17.2" %_56_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="17.3" %_56_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="18.0" %_67_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="18.1" %_67_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="18.2" %_67_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="18.3" %_67_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="19.0" %_78_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="19.1" %_78_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="19.2" %_78_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="19.3" %_78_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="20.0" %_89_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="20.1" %_89_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="20.2" %_89_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="20.3" %_89_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="21.0" %_910_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="21.1" %_910_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="21.2" %_910_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="21.3" %_910_V_last_V) #3 {
entry:
  call void @"onebyonecpy_hls.p0a10class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.289.292"([10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %0, i32* %_0_V_data_V, i4* %_0_V_keep_V, i4* %_0_V_strb_V, i1* %_0_V_last_V, i32* %_1_V_data_V, i4* %_1_V_keep_V, i4* %_1_V_strb_V, i1* %_1_V_last_V, i32* %_2_V_data_V, i4* %_2_V_keep_V, i4* %_2_V_strb_V, i1* %_2_V_last_V, i32* %_3_V_data_V, i4* %_3_V_keep_V, i4* %_3_V_strb_V, i1* %_3_V_last_V, i32* %_4_V_data_V, i4* %_4_V_keep_V, i4* %_4_V_strb_V, i1* %_4_V_last_V, i32* %_5_V_data_V, i4* %_5_V_keep_V, i4* %_5_V_strb_V, i1* %_5_V_last_V, i32* %_6_V_data_V, i4* %_6_V_keep_V, i4* %_6_V_strb_V, i1* %_6_V_last_V, i32* %_7_V_data_V, i4* %_7_V_keep_V, i4* %_7_V_strb_V, i1* %_7_V_last_V, i32* %_8_V_data_V, i4* %_8_V_keep_V, i4* %_8_V_strb_V, i1* %_8_V_last_V, i32* %_9_V_data_V, i4* %_9_V_keep_V, i4* %_9_V_strb_V, i1* %_9_V_last_V)
  call void @"onebyonecpy_hls.p0a10class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.289.292"([10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %1, i32* %_01_V_data_V, i4* %_01_V_keep_V, i4* %_01_V_strb_V, i1* %_01_V_last_V, i32* %_12_V_data_V, i4* %_12_V_keep_V, i4* %_12_V_strb_V, i1* %_12_V_last_V, i32* %_23_V_data_V, i4* %_23_V_keep_V, i4* %_23_V_strb_V, i1* %_23_V_last_V, i32* %_34_V_data_V, i4* %_34_V_keep_V, i4* %_34_V_strb_V, i1* %_34_V_last_V, i32* %_45_V_data_V, i4* %_45_V_keep_V, i4* %_45_V_strb_V, i1* %_45_V_last_V, i32* %_56_V_data_V, i4* %_56_V_keep_V, i4* %_56_V_strb_V, i1* %_56_V_last_V, i32* %_67_V_data_V, i4* %_67_V_keep_V, i4* %_67_V_strb_V, i1* %_67_V_last_V, i32* %_78_V_data_V, i4* %_78_V_keep_V, i4* %_78_V_strb_V, i1* %_78_V_last_V, i32* %_89_V_data_V, i4* %_89_V_keep_V, i4* %_89_V_strb_V, i1* %_89_V_last_V, i32* %_910_V_data_V, i4* %_910_V_keep_V, i4* %_910_V_strb_V, i1* %_910_V_last_V)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @"onebyonecpy_hls.p0a10class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.289.292"([10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_0_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_0_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_0_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="2.0" %_1_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="2.1" %_1_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="2.2" %_1_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="2.3" %_1_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="3.0" %_2_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="3.1" %_2_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="3.2" %_2_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="3.3" %_2_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="4.0" %_3_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="4.1" %_3_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="4.2" %_3_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="4.3" %_3_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="5.0" %_4_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="5.1" %_4_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="5.2" %_4_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="5.3" %_4_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="6.0" %_5_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="6.1" %_5_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="6.2" %_5_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="6.3" %_5_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="7.0" %_6_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="7.1" %_6_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="7.2" %_6_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="7.3" %_6_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="8.0" %_7_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="8.1" %_7_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="8.2" %_7_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="8.3" %_7_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="9.0" %_8_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="9.1" %_8_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="9.2" %_8_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="9.3" %_8_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="10.0" %_9_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="10.1" %_9_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="10.2" %_9_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="10.3" %_9_V_last_V) #4 {
entry:
  %1 = icmp eq [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"], [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %0, i64 0, i64 %for.loop.idx1
  %3 = trunc i64 %for.loop.idx1 to i4
  switch i4 %3, label %src.addr.case.9 [
    i4 0, label %src.addr.case.0
    i4 1, label %src.addr.case.1
    i4 2, label %src.addr.case.2
    i4 3, label %src.addr.case.3
    i4 4, label %src.addr.case.4
    i4 5, label %src.addr.case.5
    i4 6, label %src.addr.case.6
    i4 7, label %src.addr.case.7
    i4 -8, label %src.addr.case.8
  ]

src.addr.case.0:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.290.291.300"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %dst.addr, i32* %_0_V_data_V, i4* %_0_V_keep_V, i4* %_0_V_strb_V, i1* %_0_V_last_V)
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.290.291.300"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %dst.addr, i32* %_1_V_data_V, i4* %_1_V_keep_V, i4* %_1_V_strb_V, i1* %_1_V_last_V)
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.290.291.300"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %dst.addr, i32* %_2_V_data_V, i4* %_2_V_keep_V, i4* %_2_V_strb_V, i1* %_2_V_last_V)
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.290.291.300"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %dst.addr, i32* %_3_V_data_V, i4* %_3_V_keep_V, i4* %_3_V_strb_V, i1* %_3_V_last_V)
  br label %src.addr.exit

src.addr.case.4:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.290.291.300"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %dst.addr, i32* %_4_V_data_V, i4* %_4_V_keep_V, i4* %_4_V_strb_V, i1* %_4_V_last_V)
  br label %src.addr.exit

src.addr.case.5:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.290.291.300"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %dst.addr, i32* %_5_V_data_V, i4* %_5_V_keep_V, i4* %_5_V_strb_V, i1* %_5_V_last_V)
  br label %src.addr.exit

src.addr.case.6:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.290.291.300"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %dst.addr, i32* %_6_V_data_V, i4* %_6_V_keep_V, i4* %_6_V_strb_V, i1* %_6_V_last_V)
  br label %src.addr.exit

src.addr.case.7:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.290.291.300"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %dst.addr, i32* %_7_V_data_V, i4* %_7_V_keep_V, i4* %_7_V_strb_V, i1* %_7_V_last_V)
  br label %src.addr.exit

src.addr.case.8:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.290.291.300"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %dst.addr, i32* %_8_V_data_V, i4* %_8_V_keep_V, i4* %_8_V_strb_V, i1* %_8_V_last_V)
  br label %src.addr.exit

src.addr.case.9:                                  ; preds = %for.loop
  %4 = icmp eq i4 %3, -7
  call void @llvm.assume(i1 %4)
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.290.291.300"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %dst.addr, i32* %_9_V_data_V, i4* %_9_V_keep_V, i4* %_9_V_strb_V, i1* %_9_V_last_V)
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.9, %src.addr.case.8, %src.addr.case.7, %src.addr.case.6, %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 10
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.290.291.300"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_V_data_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_V_keep_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_V_last_V) #5 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"
  %2 = alloca i32
  %3 = alloca i4
  %4 = alloca i4
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i32* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_4(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i32* %2 to i8*
  %9 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %8, i8* %9)
  %10 = load volatile i32, i32* %2
  %11 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %12 = bitcast float* %11 to i32*
  store i32 %10, i32* %12
  %13 = bitcast i4* %4 to i8*
  %14 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %13, i8* %14)
  %15 = bitcast i4* %4 to i8*
  %16 = load i8, i8* %15
  %17 = trunc i8 %16 to i4
  %18 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %19 = bitcast %"struct.ap_uint<4>"* %18 to i4*
  store i4 %17, i4* %19
  %20 = bitcast i4* %3 to i8*
  %21 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %20, i8* %21)
  %22 = bitcast i4* %3 to i8*
  %23 = load i8, i8* %22
  %24 = trunc i8 %23 to i4
  %25 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %26 = bitcast %"struct.ap_uint<4>"* %25 to i4*
  store i4 %24, i4* %26
  %27 = bitcast i1* %5 to i8*
  %28 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %27, i8* %28)
  %29 = bitcast i1* %5 to i8*
  %30 = load i8, i8* %29
  %31 = trunc i8 %30 to i1
  %32 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %33 = bitcast %"struct.ap_uint<1>"* %32 to i1*
  store i1 %31, i1* %33
  %34 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1 to i8*
  %35 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %34, i8* %35)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @"onebyonecpy_hls.p0a10class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.281.284"(i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %_0_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1" %_0_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2" %_0_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3" %_0_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="1.0" %_1_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="1.1" %_1_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="1.2" %_1_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="1.3" %_1_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="2.0" %_2_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="2.1" %_2_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="2.2" %_2_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="2.3" %_2_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="3.0" %_3_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="3.1" %_3_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="3.2" %_3_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="3.3" %_3_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="4.0" %_4_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="4.1" %_4_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="4.2" %_4_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="4.3" %_4_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="5.0" %_5_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="5.1" %_5_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="5.2" %_5_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="5.3" %_5_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="6.0" %_6_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="6.1" %_6_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="6.2" %_6_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="6.3" %_6_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="7.0" %_7_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="7.1" %_7_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="7.2" %_7_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="7.3" %_7_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="8.0" %_8_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="8.1" %_8_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="8.2" %_8_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="8.3" %_8_V_last_V, i32* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="9.0" %_9_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="9.1" %_9_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="9.2" %_9_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="9.3" %_9_V_last_V, [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #4 {
entry:
  %1 = icmp eq [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"], [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %0, i64 0, i64 %for.loop.idx1
  %3 = trunc i64 %for.loop.idx1 to i4
  switch i4 %3, label %dst.addr.case.9 [
    i4 0, label %dst.addr.case.0
    i4 1, label %dst.addr.case.1
    i4 2, label %dst.addr.case.2
    i4 3, label %dst.addr.case.3
    i4 4, label %dst.addr.case.4
    i4 5, label %dst.addr.case.5
    i4 6, label %dst.addr.case.6
    i4 7, label %dst.addr.case.7
    i4 -8, label %dst.addr.case.8
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.282.283.308"(i32* %_0_V_data_V, i4* %_0_V_keep_V, i4* %_0_V_strb_V, i1* %_0_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.282.283.308"(i32* %_1_V_data_V, i4* %_1_V_keep_V, i4* %_1_V_strb_V, i1* %_1_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.282.283.308"(i32* %_2_V_data_V, i4* %_2_V_keep_V, i4* %_2_V_strb_V, i1* %_2_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.282.283.308"(i32* %_3_V_data_V, i4* %_3_V_keep_V, i4* %_3_V_strb_V, i1* %_3_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.case.4:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.282.283.308"(i32* %_4_V_data_V, i4* %_4_V_keep_V, i4* %_4_V_strb_V, i1* %_4_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.case.5:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.282.283.308"(i32* %_5_V_data_V, i4* %_5_V_keep_V, i4* %_5_V_strb_V, i1* %_5_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.case.6:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.282.283.308"(i32* %_6_V_data_V, i4* %_6_V_keep_V, i4* %_6_V_strb_V, i1* %_6_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.case.7:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.282.283.308"(i32* %_7_V_data_V, i4* %_7_V_keep_V, i4* %_7_V_strb_V, i1* %_7_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.case.8:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.282.283.308"(i32* %_8_V_data_V, i4* %_8_V_keep_V, i4* %_8_V_strb_V, i1* %_8_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.case.9:                                  ; preds = %for.loop
  %4 = icmp eq i4 %3, -7
  call void @llvm.assume(i1 %4)
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.282.283.308"(i32* %_9_V_data_V, i4* %_9_V_keep_V, i4* %_9_V_strb_V, i1* %_9_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.9, %dst.addr.case.8, %dst.addr.case.7, %dst.addr.case.6, %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 10
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.282.283.308"(i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %_V_data_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1" %_V_keep_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #5 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast float* %8 to i32*
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<4>"* %12 to i4*
  %14 = bitcast i4* %13 to i8*
  %15 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<4>"* %16 to i4*
  %18 = bitcast i4* %17 to i8*
  %19 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_myproject_axi_hw(i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*)

define void @myproject_axi_hw_stub_wrapper(i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*) #6 {
entry:
  %80 = alloca [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]
  %81 = alloca [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]
  call void @copy_out([10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %80, i32* %0, i4* %1, i4* %2, i1* %3, i32* %4, i4* %5, i4* %6, i1* %7, i32* %8, i4* %9, i4* %10, i1* %11, i32* %12, i4* %13, i4* %14, i1* %15, i32* %16, i4* %17, i4* %18, i1* %19, i32* %20, i4* %21, i4* %22, i1* %23, i32* %24, i4* %25, i4* %26, i1* %27, i32* %28, i4* %29, i4* %30, i1* %31, i32* %32, i4* %33, i4* %34, i1* %35, i32* %36, i4* %37, i4* %38, i1* %39, [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %81, i32* %40, i4* %41, i4* %42, i1* %43, i32* %44, i4* %45, i4* %46, i1* %47, i32* %48, i4* %49, i4* %50, i1* %51, i32* %52, i4* %53, i4* %54, i1* %55, i32* %56, i4* %57, i4* %58, i1* %59, i32* %60, i4* %61, i4* %62, i1* %63, i32* %64, i4* %65, i4* %66, i1* %67, i32* %68, i4* %69, i4* %70, i1* %71, i32* %72, i4* %73, i4* %74, i1* %75, i32* %76, i4* %77, i4* %78, i1* %79)
  %82 = bitcast [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %80 to %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"*
  %83 = bitcast [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %81 to %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"*
  call void @myproject_axi_hw_stub(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %82, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %83)
  call void @copy_in([10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %80, i32* %0, i4* %1, i4* %2, i1* %3, i32* %4, i4* %5, i4* %6, i1* %7, i32* %8, i4* %9, i4* %10, i1* %11, i32* %12, i4* %13, i4* %14, i1* %15, i32* %16, i4* %17, i4* %18, i1* %19, i32* %20, i4* %21, i4* %22, i1* %23, i32* %24, i4* %25, i4* %26, i1* %27, i32* %28, i4* %29, i4* %30, i1* %31, i32* %32, i4* %33, i4* %34, i1* %35, i32* %36, i4* %37, i4* %38, i1* %39, [10 x %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"]* %81, i32* %40, i4* %41, i4* %42, i1* %43, i32* %44, i4* %45, i4* %46, i1* %47, i32* %48, i4* %49, i4* %50, i1* %51, i32* %52, i4* %53, i4* %54, i1* %55, i32* %56, i4* %57, i4* %58, i1* %59, i32* %60, i4* %61, i4* %62, i1* %63, i32* %64, i4* %65, i4* %66, i1* %67, i32* %68, i4* %69, i4* %70, i1* %71, i32* %72, i4* %73, i4* %74, i1* %75, i32* %76, i4* %77, i4* %78, i1* %79)
  ret void
}

declare void @myproject_axi_hw_stub(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
