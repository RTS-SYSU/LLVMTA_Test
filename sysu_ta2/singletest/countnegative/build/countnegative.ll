; ModuleID = '/workspaces/llvmta/testcases/batchtest/countnegative/countnegative.c'
source_filename = "/workspaces/llvmta/testcases/batchtest/countnegative/countnegative.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@countnegative_seed = dso_local global i32 0, align 4
@countnegative_array = dso_local global [10 x [10 x i32]] zeroinitializer, align 4
@countnegative_postotal = dso_local global i32 0, align 4
@countnegative_poscnt = dso_local global i32 0, align 4
@countnegative_negtotal = dso_local global i32 0, align 4
@countnegative_negcnt = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_initSeed() #0 !dbg !12 {
entry:
  store volatile i32 0, i32* @countnegative_seed, align 4, !dbg !16
  ret void, !dbg !17
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @countnegative_randomInteger() #0 !dbg !18 {
entry:
  %0 = load volatile i32, i32* @countnegative_seed, align 4, !dbg !19
  %mul = mul nsw i32 %0, 133, !dbg !20
  %add = add nsw i32 %mul, 81, !dbg !21
  %rem = srem i32 %add, 8095, !dbg !22
  store volatile i32 %rem, i32* @countnegative_seed, align 4, !dbg !23
  %1 = load volatile i32, i32* @countnegative_seed, align 4, !dbg !24
  ret i32 %1, !dbg !25
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_initialize([10 x i32]* noundef %Array) #0 !dbg !26 {
entry:
  %Array.addr = alloca [10 x i32]*, align 4
  %OuterIndex = alloca i32, align 4
  %InnerIndex = alloca i32, align 4
  store [10 x i32]* %Array, [10 x i32]** %Array.addr, align 4
  store i32 0, i32* %OuterIndex, align 4, !dbg !27
  br label %for.cond, !dbg !28

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, i32* %OuterIndex, align 4, !dbg !29
  %cmp = icmp slt i32 %0, 10, !dbg !30
  br i1 %cmp, label %for.body, label %for.end7, !dbg !31

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %InnerIndex, align 4, !dbg !32
  br label %for.cond1, !dbg !33

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %InnerIndex, align 4, !dbg !34
  %cmp2 = icmp slt i32 %1, 10, !dbg !35
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !36

for.body3:                                        ; preds = %for.cond1
  %call = call arm_aapcs_vfpcc i32 @countnegative_randomInteger() #1, !dbg !37
  %2 = load [10 x i32]*, [10 x i32]** %Array.addr, align 4, !dbg !38
  %3 = load i32, i32* %OuterIndex, align 4, !dbg !39
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %2, i32 %3, !dbg !38
  %4 = load i32, i32* %InnerIndex, align 4, !dbg !40
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx, i32 0, i32 %4, !dbg !38
  store i32 %call, i32* %arrayidx4, align 4, !dbg !41
  br label %for.inc, !dbg !38

for.inc:                                          ; preds = %for.body3
  %5 = load i32, i32* %InnerIndex, align 4, !dbg !42
  %inc = add nsw i32 %5, 1, !dbg !42
  store i32 %inc, i32* %InnerIndex, align 4, !dbg !42
  br label %for.cond1, !dbg !36, !llvm.loop !43

for.end:                                          ; preds = %for.cond1
  br label %for.inc5, !dbg !44

for.inc5:                                         ; preds = %for.end
  %6 = load i32, i32* %OuterIndex, align 4, !dbg !46
  %inc6 = add nsw i32 %6, 1, !dbg !46
  store i32 %inc6, i32* %OuterIndex, align 4, !dbg !46
  br label %for.cond, !dbg !31, !llvm.loop !47

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !48
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_init() #0 !dbg !49 {
entry:
  call arm_aapcs_vfpcc void @countnegative_initSeed() #1, !dbg !50
  call arm_aapcs_vfpcc void @countnegative_initialize([10 x i32]* noundef getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @countnegative_array, i32 0, i32 0)) #1, !dbg !51
  ret void, !dbg !52
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @countnegative_return() #0 !dbg !53 {
entry:
  %checksum = alloca i32, align 4
  %0 = load i32, i32* @countnegative_postotal, align 4, !dbg !54
  %1 = load i32, i32* @countnegative_poscnt, align 4, !dbg !55
  %add = add nsw i32 %0, %1, !dbg !56
  %2 = load i32, i32* @countnegative_negtotal, align 4, !dbg !57
  %add1 = add nsw i32 %add, %2, !dbg !58
  %3 = load i32, i32* @countnegative_negcnt, align 4, !dbg !59
  %add2 = add nsw i32 %add1, %3, !dbg !60
  store i32 %add2, i32* %checksum, align 4, !dbg !61
  %4 = load i32, i32* %checksum, align 4, !dbg !62
  %cmp = icmp eq i32 %4, 1538270, !dbg !63
  %5 = zext i1 %cmp to i64, !dbg !64
  %cond = select i1 %cmp, i32 0, i32 -1, !dbg !64
  ret i32 %cond, !dbg !65
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_sum([10 x i32]* noundef %Array) #0 !dbg !66 {
entry:
  %Array.addr = alloca [10 x i32]*, align 4
  %Outer = alloca i32, align 4
  %Inner = alloca i32, align 4
  %Ptotal = alloca i32, align 4
  %Ntotal = alloca i32, align 4
  %Pcnt = alloca i32, align 4
  %Ncnt = alloca i32, align 4
  store [10 x i32]* %Array, [10 x i32]** %Array.addr, align 4
  store i32 0, i32* %Ptotal, align 4, !dbg !67
  store i32 0, i32* %Ntotal, align 4, !dbg !68
  store i32 0, i32* %Pcnt, align 4, !dbg !69
  store i32 0, i32* %Ncnt, align 4, !dbg !70
  store i32 0, i32* %Outer, align 4, !dbg !71
  br label %for.cond, !dbg !72

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %Outer, align 4, !dbg !73
  %cmp = icmp slt i32 %0, 10, !dbg !74
  br i1 %cmp, label %for.body, label %for.end8, !dbg !75

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %Inner, align 4, !dbg !76
  br label %for.cond1, !dbg !77

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %Inner, align 4, !dbg !78
  %cmp2 = icmp slt i32 %1, 10, !dbg !79
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !80

for.body3:                                        ; preds = %for.cond1
  %2 = load [10 x i32]*, [10 x i32]** %Array.addr, align 4, !dbg !81
  %3 = load i32, i32* %Outer, align 4, !dbg !82
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %2, i32 %3, !dbg !81
  %4 = load i32, i32* %Inner, align 4, !dbg !83
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx, i32 0, i32 %4, !dbg !81
  %5 = load i32, i32* %arrayidx4, align 4, !dbg !81
  %6 = load i32, i32* %Ptotal, align 4, !dbg !84
  %add = add nsw i32 %6, %5, !dbg !84
  store i32 %add, i32* %Ptotal, align 4, !dbg !84
  %7 = load i32, i32* %Pcnt, align 4, !dbg !85
  %inc = add nsw i32 %7, 1, !dbg !85
  store i32 %inc, i32* %Pcnt, align 4, !dbg !85
  br label %for.inc, !dbg !86

for.inc:                                          ; preds = %for.body3
  %8 = load i32, i32* %Inner, align 4, !dbg !87
  %inc5 = add nsw i32 %8, 1, !dbg !87
  store i32 %inc5, i32* %Inner, align 4, !dbg !87
  br label %for.cond1, !dbg !80, !llvm.loop !88

for.end:                                          ; preds = %for.cond1
  br label %for.inc6, !dbg !86

for.inc6:                                         ; preds = %for.end
  %9 = load i32, i32* %Outer, align 4, !dbg !89
  %inc7 = add nsw i32 %9, 1, !dbg !89
  store i32 %inc7, i32* %Outer, align 4, !dbg !89
  br label %for.cond, !dbg !75, !llvm.loop !90

for.end8:                                         ; preds = %for.cond
  %10 = load i32, i32* %Ptotal, align 4, !dbg !91
  store i32 %10, i32* @countnegative_postotal, align 4, !dbg !92
  %11 = load i32, i32* %Pcnt, align 4, !dbg !93
  store i32 %11, i32* @countnegative_poscnt, align 4, !dbg !94
  %12 = load i32, i32* %Ntotal, align 4, !dbg !95
  store i32 %12, i32* @countnegative_negtotal, align 4, !dbg !96
  %13 = load i32, i32* %Ncnt, align 4, !dbg !97
  store i32 %13, i32* @countnegative_negcnt, align 4, !dbg !98
  ret void, !dbg !99
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_main() #0 !dbg !100 {
entry:
  call arm_aapcs_vfpcc void @countnegative_sum([10 x i32]* noundef getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @countnegative_array, i32 0, i32 0)) #1, !dbg !101
  ret void, !dbg !102
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !103 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call arm_aapcs_vfpcc void @countnegative_init() #1, !dbg !104
  call arm_aapcs_vfpcc void @countnegative_main() #1, !dbg !105
  %call = call arm_aapcs_vfpcc i32 @countnegative_return() #1, !dbg !106
  ret i32 %call, !dbg !107
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/countnegative/countnegative.c", directory: "/workspaces/llvmta/testcases/tmp.k31Aymgdo9", checksumkind: CSK_MD5, checksum: "3a65cdfe7e0fc9d549feeaaa286a7206")
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
!12 = distinct !DISubprogram(name: "countnegative_initSeed", scope: !13, file: !13, line: 55, type: !14, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "batchtest/countnegative/countnegative.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "3a65cdfe7e0fc9d549feeaaa286a7206")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 57, column: 22, scope: !12)
!17 = !DILocation(line: 58, column: 1, scope: !12)
!18 = distinct !DISubprogram(name: "countnegative_randomInteger", scope: !13, file: !13, line: 63, type: !14, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!19 = !DILocation(line: 65, column: 28, scope: !18)
!20 = !DILocation(line: 65, column: 47, scope: !18)
!21 = !DILocation(line: 65, column: 55, scope: !18)
!22 = !DILocation(line: 65, column: 62, scope: !18)
!23 = !DILocation(line: 65, column: 22, scope: !18)
!24 = !DILocation(line: 66, column: 11, scope: !18)
!25 = !DILocation(line: 66, column: 3, scope: !18)
!26 = distinct !DISubprogram(name: "countnegative_initialize", scope: !13, file: !13, line: 72, type: !14, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!27 = !DILocation(line: 77, column: 20, scope: !26)
!28 = !DILocation(line: 77, column: 9, scope: !26)
!29 = !DILocation(line: 77, column: 25, scope: !26)
!30 = !DILocation(line: 77, column: 36, scope: !26)
!31 = !DILocation(line: 77, column: 3, scope: !26)
!32 = !DILocation(line: 79, column: 22, scope: !26)
!33 = !DILocation(line: 79, column: 11, scope: !26)
!34 = !DILocation(line: 79, column: 27, scope: !26)
!35 = !DILocation(line: 79, column: 38, scope: !26)
!36 = !DILocation(line: 79, column: 5, scope: !26)
!37 = !DILocation(line: 80, column: 44, scope: !26)
!38 = !DILocation(line: 80, column: 7, scope: !26)
!39 = !DILocation(line: 80, column: 14, scope: !26)
!40 = !DILocation(line: 80, column: 28, scope: !26)
!41 = !DILocation(line: 80, column: 41, scope: !26)
!42 = !DILocation(line: 79, column: 59, scope: !26)
!43 = distinct !{!43, !36, !44, !45}
!44 = !DILocation(line: 80, column: 72, scope: !26)
!45 = !{!"llvm.loop.mustprogress"}
!46 = !DILocation(line: 77, column: 57, scope: !26)
!47 = distinct !{!47, !31, !44, !45}
!48 = !DILocation(line: 81, column: 1, scope: !26)
!49 = distinct !DISubprogram(name: "countnegative_init", scope: !13, file: !13, line: 83, type: !14, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!50 = !DILocation(line: 85, column: 3, scope: !49)
!51 = !DILocation(line: 86, column: 3, scope: !49)
!52 = !DILocation(line: 87, column: 1, scope: !49)
!53 = distinct !DISubprogram(name: "countnegative_return", scope: !13, file: !13, line: 89, type: !14, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!54 = !DILocation(line: 91, column: 20, scope: !53)
!55 = !DILocation(line: 92, column: 20, scope: !53)
!56 = !DILocation(line: 91, column: 43, scope: !53)
!57 = !DILocation(line: 93, column: 20, scope: !53)
!58 = !DILocation(line: 92, column: 41, scope: !53)
!59 = !DILocation(line: 94, column: 20, scope: !53)
!60 = !DILocation(line: 93, column: 43, scope: !53)
!61 = !DILocation(line: 91, column: 7, scope: !53)
!62 = !DILocation(line: 96, column: 14, scope: !53)
!63 = !DILocation(line: 96, column: 23, scope: !53)
!64 = !DILocation(line: 96, column: 12, scope: !53)
!65 = !DILocation(line: 96, column: 3, scope: !53)
!66 = distinct !DISubprogram(name: "countnegative_sum", scope: !13, file: !13, line: 99, type: !14, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!67 = !DILocation(line: 103, column: 7, scope: !66)
!68 = !DILocation(line: 104, column: 7, scope: !66)
!69 = !DILocation(line: 105, column: 7, scope: !66)
!70 = !DILocation(line: 106, column: 7, scope: !66)
!71 = !DILocation(line: 109, column: 15, scope: !66)
!72 = !DILocation(line: 109, column: 9, scope: !66)
!73 = !DILocation(line: 109, column: 20, scope: !66)
!74 = !DILocation(line: 109, column: 26, scope: !66)
!75 = !DILocation(line: 109, column: 3, scope: !66)
!76 = !DILocation(line: 111, column: 17, scope: !66)
!77 = !DILocation(line: 111, column: 11, scope: !66)
!78 = !DILocation(line: 111, column: 22, scope: !66)
!79 = !DILocation(line: 111, column: 28, scope: !66)
!80 = !DILocation(line: 111, column: 5, scope: !66)
!81 = !DILocation(line: 113, column: 19, scope: !66)
!82 = !DILocation(line: 113, column: 26, scope: !66)
!83 = !DILocation(line: 113, column: 35, scope: !66)
!84 = !DILocation(line: 113, column: 16, scope: !66)
!85 = !DILocation(line: 114, column: 13, scope: !66)
!86 = !DILocation(line: 115, column: 5, scope: !66)
!87 = !DILocation(line: 111, column: 44, scope: !66)
!88 = distinct !{!88, !80, !86, !45}
!89 = !DILocation(line: 109, column: 42, scope: !66)
!90 = distinct !{!90, !75, !86, !45}
!91 = !DILocation(line: 122, column: 28, scope: !66)
!92 = !DILocation(line: 122, column: 26, scope: !66)
!93 = !DILocation(line: 123, column: 26, scope: !66)
!94 = !DILocation(line: 123, column: 24, scope: !66)
!95 = !DILocation(line: 124, column: 28, scope: !66)
!96 = !DILocation(line: 124, column: 26, scope: !66)
!97 = !DILocation(line: 125, column: 26, scope: !66)
!98 = !DILocation(line: 125, column: 24, scope: !66)
!99 = !DILocation(line: 126, column: 1, scope: !66)
!100 = distinct !DISubprogram(name: "countnegative_main", scope: !13, file: !13, line: 131, type: !14, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!101 = !DILocation(line: 133, column: 3, scope: !100)
!102 = !DILocation(line: 134, column: 1, scope: !100)
!103 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 136, type: !14, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!104 = !DILocation(line: 138, column: 3, scope: !103)
!105 = !DILocation(line: 139, column: 3, scope: !103)
!106 = !DILocation(line: 141, column: 12, scope: !103)
!107 = !DILocation(line: 141, column: 3, scope: !103)
