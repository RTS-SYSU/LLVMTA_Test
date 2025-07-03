; ModuleID = '/workspaces/llvmta/testcases/batchtest/deg2rad/deg2rad.c'
source_filename = "/workspaces/llvmta/testcases/batchtest/deg2rad/deg2rad.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@deg2rad_X = dso_local global float 0.000000e+00, align 4
@deg2rad_Y = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @deg2rad_init() #0 !dbg !12 {
entry:
  store float 0.000000e+00, float* @deg2rad_X, align 4, !dbg !16
  store float 0.000000e+00, float* @deg2rad_Y, align 4, !dbg !17
  ret void, !dbg !18
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @deg2rad_return() #0 !dbg !19 {
entry:
  %retval = alloca i32, align 4
  %temp = alloca i32, align 4
  %0 = load float, float* @deg2rad_Y, align 4, !dbg !20
  %conv = fptosi float %0 to i32, !dbg !20
  store i32 %conv, i32* %temp, align 4, !dbg !21
  %1 = load i32, i32* %temp, align 4, !dbg !22
  %cmp = icmp eq i32 %1, 1133, !dbg !23
  br i1 %cmp, label %if.then, label %if.else, !dbg !22

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !24
  br label %return, !dbg !24

if.else:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !25
  br label %return, !dbg !25

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !26
  ret i32 %2, !dbg !26
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @deg2rad_main() #0 !dbg !27 {
entry:
  store float 0.000000e+00, float* @deg2rad_X, align 4, !dbg !28
  br label %for.cond, !dbg !29

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load float, float* @deg2rad_X, align 4, !dbg !30
  %cmp = fcmp ole float %0, 1.000000e+01, !dbg !31
  br i1 %cmp, label %for.body, label %for.end, !dbg !32

for.body:                                         ; preds = %for.cond
  %1 = load float, float* @deg2rad_X, align 4, !dbg !33
  %mul = fmul float %1, 0x40091EB860000000, !dbg !33
  %div = fdiv float %mul, 1.800000e+02, !dbg !33
  %2 = load float, float* @deg2rad_Y, align 4, !dbg !34
  %add = fadd float %2, %div, !dbg !34
  store float %add, float* @deg2rad_Y, align 4, !dbg !34
  br label %for.inc, !dbg !35

for.inc:                                          ; preds = %for.body
  %3 = load float, float* @deg2rad_X, align 4, !dbg !36
  %add1 = fadd float %3, 1.000000e+00, !dbg !36
  store float %add1, float* @deg2rad_X, align 4, !dbg !36
  br label %for.cond, !dbg !32, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  ret void, !dbg !39
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !40 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call arm_aapcs_vfpcc void @deg2rad_init() #1, !dbg !41
  call arm_aapcs_vfpcc void @deg2rad_main() #1, !dbg !42
  %call = call arm_aapcs_vfpcc i32 @deg2rad_return() #1, !dbg !43
  ret i32 %call, !dbg !44
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/deg2rad/deg2rad.c", directory: "/workspaces/llvmta/testcases/tmp.utssoyN4Ck", checksumkind: CSK_MD5, checksum: "0fe4ba11c47aee6bb7dafa1609b02d47")
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
!12 = distinct !DISubprogram(name: "deg2rad_init", scope: !13, file: !13, line: 49, type: !14, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "batchtest/deg2rad/deg2rad.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "0fe4ba11c47aee6bb7dafa1609b02d47")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 51, column: 13, scope: !12)
!17 = !DILocation(line: 52, column: 13, scope: !12)
!18 = !DILocation(line: 53, column: 1, scope: !12)
!19 = distinct !DISubprogram(name: "deg2rad_return", scope: !13, file: !13, line: 60, type: !14, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!20 = !DILocation(line: 62, column: 14, scope: !19)
!21 = !DILocation(line: 62, column: 7, scope: !19)
!22 = !DILocation(line: 64, column: 8, scope: !19)
!23 = !DILocation(line: 64, column: 13, scope: !19)
!24 = !DILocation(line: 65, column: 5, scope: !19)
!25 = !DILocation(line: 67, column: 5, scope: !19)
!26 = !DILocation(line: 69, column: 1, scope: !19)
!27 = distinct !DISubprogram(name: "deg2rad_main", scope: !13, file: !13, line: 76, type: !14, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!28 = !DILocation(line: 80, column: 19, scope: !27)
!29 = !DILocation(line: 80, column: 9, scope: !27)
!30 = !DILocation(line: 80, column: 27, scope: !27)
!31 = !DILocation(line: 80, column: 37, scope: !27)
!32 = !DILocation(line: 80, column: 3, scope: !27)
!33 = !DILocation(line: 81, column: 18, scope: !27)
!34 = !DILocation(line: 81, column: 15, scope: !27)
!35 = !DILocation(line: 81, column: 5, scope: !27)
!36 = !DILocation(line: 80, column: 57, scope: !27)
!37 = distinct !{!37, !32, !33, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !DILocation(line: 82, column: 1, scope: !27)
!40 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 85, type: !14, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!41 = !DILocation(line: 87, column: 3, scope: !40)
!42 = !DILocation(line: 88, column: 3, scope: !40)
!43 = !DILocation(line: 89, column: 10, scope: !40)
!44 = !DILocation(line: 89, column: 3, scope: !40)
