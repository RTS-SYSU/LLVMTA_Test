; ModuleID = '/workspaces/llvmta/testcases/batchtest/cosf/cosf.c'
source_filename = "/workspaces/llvmta/testcases/batchtest/cosf/cosf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@cosf_solutions = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cosf_init() #0 !dbg !12 {
entry:
  store float 0.000000e+00, float* @cosf_solutions, align 4, !dbg !16
  ret void, !dbg !17
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cosf_return() #0 !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %temp = alloca i32, align 4
  %0 = load float, float* @cosf_solutions, align 4, !dbg !19
  %conv = fptosi float %0 to i32, !dbg !19
  store i32 %conv, i32* %temp, align 4, !dbg !20
  %1 = load i32, i32* %temp, align 4, !dbg !21
  %cmp = icmp eq i32 %1, -4, !dbg !22
  br i1 %cmp, label %if.then, label %if.else, !dbg !21

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !23
  br label %return, !dbg !23

if.else:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !24
  br label %return, !dbg !24

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !25
  ret i32 %2, !dbg !25
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cosf_main() #0 !dbg !26 {
entry:
  %i = alloca float, align 4
  store float 0.000000e+00, float* %i, align 4, !dbg !27
  br label %for.cond, !dbg !28

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load float, float* %i, align 4, !dbg !29
  %cmp = fcmp olt float %0, 0x3FC99999A0000000, !dbg !30
  br i1 %cmp, label %for.body, label %for.end, !dbg !31

for.body:                                         ; preds = %for.cond
  %1 = load float, float* %i, align 4, !dbg !32
  %call = call arm_aapcs_vfpcc float @basicmath___cosf(float noundef %1) #2, !dbg !33
  %2 = load float, float* @cosf_solutions, align 4, !dbg !34
  %add = fadd float %2, %call, !dbg !34
  store float %add, float* @cosf_solutions, align 4, !dbg !34
  br label %for.inc, !dbg !35

for.inc:                                          ; preds = %for.body
  %3 = load float, float* %i, align 4, !dbg !36
  %add1 = fadd float %3, 0x3FB99999A0000000, !dbg !36
  store float %add1, float* %i, align 4, !dbg !36
  br label %for.cond, !dbg !31, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  ret void, !dbg !40
}

declare dso_local arm_aapcs_vfpcc float @basicmath___cosf(float noundef) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !41 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call arm_aapcs_vfpcc void @cosf_init() #2, !dbg !42
  call arm_aapcs_vfpcc void @cosf_main() #2, !dbg !43
  %call = call arm_aapcs_vfpcc i32 @cosf_return() #2, !dbg !44
  ret i32 %call, !dbg !45
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/cosf/cosf.c", directory: "/workspaces/llvmta/testcases/tmp.pWtFTL6MLi", checksumkind: CSK_MD5, checksum: "8904999a9da5b71daf2776953f115abd")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 1, !"branch-target-enforcement", i32 0}
!7 = !{i32 1, !"sign-return-address", i32 0}
!8 = !{i32 1, !"sign-return-address-all", i32 0}
!9 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)"}
!12 = distinct !DISubprogram(name: "cosf_init", scope: !13, file: !13, line: 43, type: !14, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "batchtest/cosf/cosf.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "8904999a9da5b71daf2776953f115abd")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 43, column: 39, scope: !12)
!17 = !DILocation(line: 43, column: 47, scope: !12)
!18 = distinct !DISubprogram(name: "cosf_return", scope: !13, file: !13, line: 49, type: !14, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!19 = !DILocation(line: 50, column: 14, scope: !18)
!20 = !DILocation(line: 50, column: 7, scope: !18)
!21 = !DILocation(line: 52, column: 7, scope: !18)
!22 = !DILocation(line: 52, column: 12, scope: !18)
!23 = !DILocation(line: 53, column: 5, scope: !18)
!24 = !DILocation(line: 55, column: 5, scope: !18)
!25 = !DILocation(line: 56, column: 1, scope: !18)
!26 = distinct !DISubprogram(name: "cosf_main", scope: !13, file: !13, line: 62, type: !14, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!27 = !DILocation(line: 64, column: 47, scope: !26)
!28 = !DILocation(line: 64, column: 45, scope: !26)
!29 = !DILocation(line: 64, column: 55, scope: !26)
!30 = !DILocation(line: 64, column: 57, scope: !26)
!31 = !DILocation(line: 64, column: 40, scope: !26)
!32 = !DILocation(line: 65, column: 42, scope: !26)
!33 = !DILocation(line: 65, column: 25, scope: !26)
!34 = !DILocation(line: 65, column: 22, scope: !26)
!35 = !DILocation(line: 65, column: 7, scope: !26)
!36 = !DILocation(line: 64, column: 67, scope: !26)
!37 = distinct !{!37, !31, !38, !39}
!38 = !DILocation(line: 65, column: 43, scope: !26)
!39 = !{!"llvm.loop.mustprogress"}
!40 = !DILocation(line: 66, column: 1, scope: !26)
!41 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 68, type: !14, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!42 = !DILocation(line: 69, column: 3, scope: !41)
!43 = !DILocation(line: 70, column: 3, scope: !41)
!44 = !DILocation(line: 71, column: 10, scope: !41)
!45 = !DILocation(line: 71, column: 3, scope: !41)
