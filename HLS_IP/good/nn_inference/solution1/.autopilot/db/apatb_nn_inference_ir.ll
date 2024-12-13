; ModuleID = '/home/vincent/Embedded-System/turbo-train-EMB2/HLS_IP/good/nn_inference/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_nn_inference_ir(i8* %input_img, i8* %output_bus, i8* %out_wire) local_unnamed_addr #0 {
entry:
  %input_img_copy = alloca [100 x i8], align 512
  %output_bus_copy = alloca [1 x i8], align 512
  %out_wire_copy = alloca i8, align 512
  %0 = bitcast i8* %input_img to [100 x i8]*
  %1 = bitcast i8* %output_bus to [1 x i8]*
  call fastcc void @copy_in([100 x i8]* %0, [100 x i8]* nonnull align 512 %input_img_copy, [1 x i8]* %1, [1 x i8]* nonnull align 512 %output_bus_copy, i8* %out_wire, i8* nonnull align 512 %out_wire_copy)
  %2 = getelementptr inbounds [100 x i8], [100 x i8]* %input_img_copy, i32 0, i32 0
  %3 = getelementptr inbounds [1 x i8], [1 x i8]* %output_bus_copy, i32 0, i32 0
  call void @apatb_nn_inference_hw(i8* %2, i8* %3, i8* %out_wire_copy)
  call fastcc void @copy_out([100 x i8]* %0, [100 x i8]* nonnull align 512 %input_img_copy, [1 x i8]* %1, [1 x i8]* nonnull align 512 %output_bus_copy, i8* %out_wire, i8* nonnull align 512 %out_wire_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([100 x i8]* readonly, [100 x i8]* noalias align 512, [1 x i8]* readonly, [1 x i8]* noalias align 512, i8* readonly, i8* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100i8([100 x i8]* align 512 %1, [100 x i8]* %0)
  call fastcc void @onebyonecpy_hls.p0a1i8([1 x i8]* align 512 %3, [1 x i8]* %2)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %5, i8* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a100i8([100 x i8]* noalias align 512, [100 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [100 x i8]* %0, null
  %3 = icmp eq [100 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100 x i8], [100 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [100 x i8], [100 x i8]* %1, i64 0, i64 %for.loop.idx1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr, i64 1, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 100
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a1i8([1 x i8]* noalias align 512, [1 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1 x i8]* %0, null
  %3 = icmp eq [1 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop

for.loop:                                         ; preds = %entry
  %dst.addr = getelementptr [1 x i8], [1 x i8]* %0, i64 0, i64 0
  %src.addr = getelementptr [1 x i8], [1 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i8(i8* noalias align 512, i8* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i8* %0, null
  %3 = icmp eq i8* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %0, i8* nonnull align 1 %1, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([100 x i8]*, [100 x i8]* noalias readonly align 512, [1 x i8]*, [1 x i8]* noalias readonly align 512, i8*, i8* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100i8([100 x i8]* %0, [100 x i8]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a1i8([1 x i8]* %2, [1 x i8]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %4, i8* align 512 %5)
  ret void
}

declare void @apatb_nn_inference_hw(i8*, i8*, i8*)

define void @nn_inference_hw_stub_wrapper(i8*, i8*, i8*) #5 {
entry:
  %3 = bitcast i8* %0 to [100 x i8]*
  %4 = bitcast i8* %1 to [1 x i8]*
  call void @copy_out([100 x i8]* null, [100 x i8]* %3, [1 x i8]* null, [1 x i8]* %4, i8* null, i8* %2)
  %5 = bitcast [100 x i8]* %3 to i8*
  %6 = bitcast [1 x i8]* %4 to i8*
  call void @nn_inference_hw_stub(i8* %5, i8* %6, i8* %2)
  call void @copy_in([100 x i8]* null, [100 x i8]* %3, [1 x i8]* null, [1 x i8]* %4, i8* null, i8* %2)
  ret void
}

declare void @nn_inference_hw_stub(i8*, i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
