; ModuleID = '/home/nghielme/PycharmProjects/conifer/examples/wrapper-3-20220623T092548Z-001/wrapper-3/myproject_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>" = type { %"struct.hls::axis<float [10], 0, 0, 0>" }
%"struct.hls::axis<float [10], 0, 0, 0>" = type { [10 x float], %"struct.ap_uint<40>", %"struct.ap_uint<40>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<40>" = type { %"struct.ap_int_base<40, false>" }
%"struct.ap_int_base<40, false>" = type { %"struct.ssdm_int<40, false>" }
%"struct.ssdm_int<40, false>" = type { i40 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: noinline
define void @apatb_myproject_axi_ir(%"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %in, %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %out) local_unnamed_addr #0 {
entry:
  %in_copy.data = alloca i320
  %in_copy.keep = alloca i40
  %in_copy.strb = alloca i40
  %in_copy.last = alloca i1
  %out_copy.data = alloca i320
  %out_copy.keep = alloca i40
  %out_copy.strb = alloca i40
  %out_copy.last = alloca i1
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %in, i320* %in_copy.data, i40* %in_copy.keep, i40* %in_copy.strb, i1* %in_copy.last, %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %out, i320* %out_copy.data, i40* %out_copy.keep, i40* %out_copy.strb, i1* %out_copy.last)
  call void @apatb_myproject_axi_hw(i320* %in_copy.data, i40* %in_copy.keep, i40* %in_copy.strb, i1* %in_copy.last, i320* %out_copy.data, i40* %out_copy.keep, i40* %out_copy.strb, i1* %out_copy.last)
  call fastcc void @copy_out(%"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %in, i320* %in_copy.data, i40* %in_copy.keep, i40* %in_copy.strb, i1* %in_copy.last, %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %out, i320* %out_copy.data, i40* %out_copy.keep, i40* %out_copy.strb, i1* %out_copy.last)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"*, i320* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i40* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i40* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"*, i320* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i40* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i40* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_last_V4) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>.289"(i320* %_V_data_V, i40* %_V_keep_V, i40* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>.289"(i320* %_V_data_V1, i40* %_V_keep_V2, i40* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %1)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"*, i320* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i40* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i40* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"*, i320* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i40* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i40* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_last_V4) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %0, i320* %_V_data_V, i40* %_V_keep_V, i40* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %1, i320* %_V_data_V1, i40* %_V_keep_V2, i40* %_V_strb_V3, i1* %_V_last_V4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i320* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i40* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i40* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>.284"(%"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* nonnull align 512 %0, i320* %_V_data_V, i40* %_V_keep_V, i40* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>.284"(%"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i320* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i40* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i40* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"
  %2 = alloca i320
  %3 = alloca i40
  %4 = alloca i40
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i320* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_64(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i320* %2 to i8*
  %9 = bitcast i320* %_V_data_V to i8*
  call void @fpga_fifo_pop_64(i8* %8, i8* %9)
  %10 = load volatile i320, i320* %2
  %11 = getelementptr inbounds %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %12 = bitcast [10 x float]* %11 to i320*
  store i320 %10, i320* %12
  %13 = bitcast i40* %4 to i8*
  %14 = bitcast i40* %_V_keep_V to i8*
  call void @fpga_fifo_pop_8(i8* %13, i8* %14)
  %15 = load volatile i40, i40* %4
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %17 = bitcast %"struct.ap_uint<40>"* %16 to i40*
  store i40 %15, i40* %17
  %18 = bitcast i40* %3 to i8*
  %19 = bitcast i40* %_V_strb_V to i8*
  call void @fpga_fifo_pop_8(i8* %18, i8* %19)
  %20 = load volatile i40, i40* %3
  %21 = getelementptr inbounds %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %22 = bitcast %"struct.ap_uint<40>"* %21 to i40*
  store i40 %20, i40* %22
  %23 = bitcast i1* %5 to i8*
  %24 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %23, i8* %24)
  %25 = bitcast i1* %5 to i8*
  %26 = load i8, i8* %25
  %27 = trunc i8 %26 to i1
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %29 = bitcast %"struct.ap_uint<1>"* %28 to i1*
  store i1 %27, i1* %29
  %30 = bitcast %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %1 to i8*
  %31 = bitcast %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_64(i8* %30, i8* %31)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>.289"(i320* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i40* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i40* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>.292"(i320* %_V_data_V, i40* %_V_keep_V, i40* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>.292"(i320* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i40* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i40* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_64(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_64(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast [10 x float]* %8 to i320*
  %10 = bitcast i320* %9 to i8*
  %11 = bitcast i320* %_V_data_V to i8*
  call void @fpga_fifo_push_64(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<40>"* %12 to i40*
  %14 = bitcast i40* %13 to i8*
  %15 = bitcast i40* %_V_keep_V to i8*
  call void @fpga_fifo_push_8(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<40>"* %16 to i40*
  %18 = bitcast i40* %17 to i8*
  %19 = bitcast i40* %_V_strb_V to i8*
  call void @fpga_fifo_push_8(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_myproject_axi_hw(i320*, i40*, i40*, i1*, i320*, i40*, i40*, i1*)

define void @myproject_axi_hw_stub_wrapper(i320*, i40*, i40*, i1*, i320*, i40*, i40*, i1*) #5 {
entry:
  %8 = alloca %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"
  %9 = alloca %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"
  call void @copy_out(%"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %8, i320* %0, i40* %1, i40* %2, i1* %3, %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %9, i320* %4, i40* %5, i40* %6, i1* %7)
  call void @myproject_axi_hw_stub(%"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %8, %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %9)
  call void @copy_in(%"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %8, i320* %0, i40* %1, i40* %2, i1* %3, %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"* %9, i320* %4, i40* %5, i40* %6, i1* %7)
  ret void
}

declare void @myproject_axi_hw_stub(%"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<float [10], 0, 0, 0>, 0>"*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

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
