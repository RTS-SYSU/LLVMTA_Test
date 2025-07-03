; ModuleID = '/workspaces/llvmta/testcases/batchtest/binarysearch/binarysearch.c'
source_filename = "/workspaces/llvmta/testcases/batchtest/binarysearch/binarysearch.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.binarysearch_DATA = type { i32, i32 }

@binarysearch_seed = dso_local global i32 0, align 4
@binarysearch_data = dso_local global [15 x %struct.binarysearch_DATA] zeroinitializer, align 4
@binarysearch_result = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @binarysearch_initSeed() #0 !dbg !12 {
entry:
  store volatile i32 0, i32* @binarysearch_seed, align 4, !dbg !16
  ret void, !dbg !17
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binarysearch_randomInteger() #0 !dbg !18 {
entry:
  %0 = load volatile i32, i32* @binarysearch_seed, align 4, !dbg !19
  %mul = mul nsw i32 %0, 133, !dbg !20
  %add = add nsw i32 %mul, 81, !dbg !21
  %rem = srem i32 %add, 8095, !dbg !22
  store volatile i32 %rem, i32* @binarysearch_seed, align 4, !dbg !23
  %1 = load volatile i32, i32* @binarysearch_seed, align 4, !dbg !24
  ret i32 %1, !dbg !25
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @binarysearch_init() #0 !dbg !26 {
entry:
  %i = alloca i32, align 4
  call arm_aapcs_vfpcc void @binarysearch_initSeed() #1, !dbg !27
  store i32 0, i32* %i, align 4, !dbg !28
  br label %for.cond, !dbg !29

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !30
  %cmp = icmp slt i32 %0, 15, !dbg !31
  br i1 %cmp, label %for.body, label %for.end, !dbg !32

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @binarysearch_randomInteger() #1, !dbg !33
  %1 = load i32, i32* %i, align 4, !dbg !34
  %arrayidx = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %1, !dbg !35
  %key = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %arrayidx, i32 0, i32 0, !dbg !36
  store i32 %call, i32* %key, align 4, !dbg !37
  %call1 = call arm_aapcs_vfpcc i32 @binarysearch_randomInteger() #1, !dbg !38
  %2 = load i32, i32* %i, align 4, !dbg !39
  %arrayidx2 = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %2, !dbg !40
  %value = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %arrayidx2, i32 0, i32 1, !dbg !41
  store i32 %call1, i32* %value, align 4, !dbg !42
  br label %for.inc, !dbg !43

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4, !dbg !44
  %inc = add nsw i32 %3, 1, !dbg !44
  store i32 %inc, i32* %i, align 4, !dbg !44
  br label %for.cond, !dbg !32, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  ret void, !dbg !47
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binarysearch_return() #0 !dbg !48 {
entry:
  %0 = load i32, i32* @binarysearch_result, align 4, !dbg !49
  ret i32 %0, !dbg !50
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binarysearch_binary_search(i32 noundef %x) #0 !dbg !51 {
entry:
  %x.addr = alloca i32, align 4
  %fvalue = alloca i32, align 4
  %mid = alloca i32, align 4
  %up = alloca i32, align 4
  %low = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 0, i32* %low, align 4, !dbg !52
  store i32 14, i32* %up, align 4, !dbg !53
  store i32 -1, i32* %fvalue, align 4, !dbg !54
  br label %while.cond, !dbg !55

while.cond:                                       ; preds = %if.end10, %entry
  %0 = load i32, i32* %low, align 4, !dbg !56
  %1 = load i32, i32* %up, align 4, !dbg !57
  %cmp = icmp sle i32 %0, %1, !dbg !58
  br i1 %cmp, label %while.body, label %while.end, !dbg !55

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %low, align 4, !dbg !59
  %3 = load i32, i32* %up, align 4, !dbg !60
  %add = add nsw i32 %2, %3, !dbg !61
  %shr = ashr i32 %add, 1, !dbg !62
  store i32 %shr, i32* %mid, align 4, !dbg !63
  %4 = load i32, i32* %mid, align 4, !dbg !64
  %arrayidx = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %4, !dbg !65
  %key = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %arrayidx, i32 0, i32 0, !dbg !66
  %5 = load i32, i32* %key, align 4, !dbg !66
  %6 = load i32, i32* %x.addr, align 4, !dbg !67
  %cmp1 = icmp eq i32 %5, %6, !dbg !68
  br i1 %cmp1, label %if.then, label %if.else, !dbg !65

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %low, align 4, !dbg !69
  %sub = sub nsw i32 %7, 1, !dbg !70
  store i32 %sub, i32* %up, align 4, !dbg !71
  %8 = load i32, i32* %mid, align 4, !dbg !72
  %arrayidx2 = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %8, !dbg !73
  %value = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %arrayidx2, i32 0, i32 1, !dbg !74
  %9 = load i32, i32* %value, align 4, !dbg !74
  store i32 %9, i32* %fvalue, align 4, !dbg !75
  br label %if.end10, !dbg !76

if.else:                                          ; preds = %while.body
  %10 = load i32, i32* %mid, align 4, !dbg !77
  %arrayidx3 = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %10, !dbg !78
  %key4 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %arrayidx3, i32 0, i32 0, !dbg !79
  %11 = load i32, i32* %key4, align 4, !dbg !79
  %12 = load i32, i32* %x.addr, align 4, !dbg !80
  %cmp5 = icmp sgt i32 %11, %12, !dbg !81
  br i1 %cmp5, label %if.then6, label %if.else8, !dbg !78

if.then6:                                         ; preds = %if.else
  %13 = load i32, i32* %mid, align 4, !dbg !82
  %sub7 = sub nsw i32 %13, 1, !dbg !83
  store i32 %sub7, i32* %up, align 4, !dbg !84
  br label %if.end, !dbg !85

if.else8:                                         ; preds = %if.else
  %14 = load i32, i32* %mid, align 4, !dbg !86
  %add9 = add nsw i32 %14, 1, !dbg !87
  store i32 %add9, i32* %low, align 4, !dbg !88
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then6
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %15 = load i32, i32* %up, align 4, !dbg !89
  %add11 = add nsw i32 %15, 1, !dbg !90
  store i32 %add11, i32* %low, align 4, !dbg !91
  br label %while.cond, !dbg !55, !llvm.loop !92

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %fvalue, align 4, !dbg !94
  ret i32 %16, !dbg !95
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @binarysearch_main() #0 !dbg !96 {
entry:
  %call = call arm_aapcs_vfpcc i32 @binarysearch_binary_search(i32 noundef 8) #1, !dbg !97
  store i32 %call, i32* @binarysearch_result, align 4, !dbg !98
  ret void, !dbg !99
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !100 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call arm_aapcs_vfpcc void @binarysearch_init() #1, !dbg !101
  call arm_aapcs_vfpcc void @binarysearch_main() #1, !dbg !102
  %call = call arm_aapcs_vfpcc i32 @binarysearch_return() #1, !dbg !103
  %sub = sub nsw i32 %call, -1, !dbg !104
  %cmp = icmp ne i32 %sub, 0, !dbg !105
  %conv = zext i1 %cmp to i32, !dbg !105
  ret i32 %conv, !dbg !106
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/binarysearch/binarysearch.c", directory: "/workspaces/llvmta/testcases/tmp.vtgUQSpL55", checksumkind: CSK_MD5, checksum: "3bc3ff15f6761d6b4a9e5d6c3cacb837")
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
!12 = distinct !DISubprogram(name: "binarysearch_initSeed", scope: !13, file: !13, line: 68, type: !14, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "batchtest/binarysearch/binarysearch.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "3bc3ff15f6761d6b4a9e5d6c3cacb837")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 68, column: 54, scope: !12)
!17 = !DILocation(line: 68, column: 59, scope: !12)
!18 = distinct !DISubprogram(name: "binarysearch_randomInteger", scope: !13, file: !13, line: 73, type: !14, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!19 = !DILocation(line: 74, column: 25, scope: !18)
!20 = !DILocation(line: 74, column: 43, scope: !18)
!21 = !DILocation(line: 74, column: 50, scope: !18)
!22 = !DILocation(line: 74, column: 56, scope: !18)
!23 = !DILocation(line: 74, column: 21, scope: !18)
!24 = !DILocation(line: 75, column: 11, scope: !18)
!25 = !DILocation(line: 75, column: 3, scope: !18)
!26 = distinct !DISubprogram(name: "binarysearch_init", scope: !13, file: !13, line: 78, type: !14, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!27 = !DILocation(line: 81, column: 3, scope: !26)
!28 = !DILocation(line: 83, column: 45, scope: !26)
!29 = !DILocation(line: 83, column: 43, scope: !26)
!30 = !DILocation(line: 83, column: 50, scope: !26)
!31 = !DILocation(line: 83, column: 52, scope: !26)
!32 = !DILocation(line: 83, column: 38, scope: !26)
!33 = !DILocation(line: 84, column: 32, scope: !26)
!34 = !DILocation(line: 84, column: 23, scope: !26)
!35 = !DILocation(line: 84, column: 5, scope: !26)
!36 = !DILocation(line: 84, column: 26, scope: !26)
!37 = !DILocation(line: 84, column: 30, scope: !26)
!38 = !DILocation(line: 85, column: 34, scope: !26)
!39 = !DILocation(line: 85, column: 23, scope: !26)
!40 = !DILocation(line: 85, column: 5, scope: !26)
!41 = !DILocation(line: 85, column: 26, scope: !26)
!42 = !DILocation(line: 85, column: 32, scope: !26)
!43 = !DILocation(line: 86, column: 3, scope: !26)
!44 = !DILocation(line: 83, column: 58, scope: !26)
!45 = distinct !{!45, !32, !43, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !DILocation(line: 87, column: 1, scope: !26)
!48 = distinct !DISubprogram(name: "binarysearch_return", scope: !13, file: !13, line: 89, type: !14, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!49 = !DILocation(line: 89, column: 41, scope: !48)
!50 = !DILocation(line: 89, column: 33, scope: !48)
!51 = distinct !DISubprogram(name: "binarysearch_binary_search", scope: !13, file: !13, line: 95, type: !14, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!52 = !DILocation(line: 98, column: 7, scope: !51)
!53 = !DILocation(line: 99, column: 6, scope: !51)
!54 = !DILocation(line: 100, column: 10, scope: !51)
!55 = !DILocation(line: 102, column: 36, scope: !51)
!56 = !DILocation(line: 102, column: 43, scope: !51)
!57 = !DILocation(line: 102, column: 50, scope: !51)
!58 = !DILocation(line: 102, column: 47, scope: !51)
!59 = !DILocation(line: 103, column: 12, scope: !51)
!60 = !DILocation(line: 103, column: 18, scope: !51)
!61 = !DILocation(line: 103, column: 16, scope: !51)
!62 = !DILocation(line: 103, column: 22, scope: !51)
!63 = !DILocation(line: 103, column: 9, scope: !51)
!64 = !DILocation(line: 105, column: 27, scope: !51)
!65 = !DILocation(line: 105, column: 9, scope: !51)
!66 = !DILocation(line: 105, column: 32, scope: !51)
!67 = !DILocation(line: 105, column: 39, scope: !51)
!68 = !DILocation(line: 105, column: 36, scope: !51)
!69 = !DILocation(line: 107, column: 12, scope: !51)
!70 = !DILocation(line: 107, column: 16, scope: !51)
!71 = !DILocation(line: 107, column: 10, scope: !51)
!72 = !DILocation(line: 108, column: 34, scope: !51)
!73 = !DILocation(line: 108, column: 16, scope: !51)
!74 = !DILocation(line: 108, column: 39, scope: !51)
!75 = !DILocation(line: 108, column: 14, scope: !51)
!76 = !DILocation(line: 109, column: 5, scope: !51)
!77 = !DILocation(line: 109, column: 34, scope: !51)
!78 = !DILocation(line: 109, column: 16, scope: !51)
!79 = !DILocation(line: 109, column: 39, scope: !51)
!80 = !DILocation(line: 109, column: 45, scope: !51)
!81 = !DILocation(line: 109, column: 43, scope: !51)
!82 = !DILocation(line: 111, column: 12, scope: !51)
!83 = !DILocation(line: 111, column: 16, scope: !51)
!84 = !DILocation(line: 111, column: 10, scope: !51)
!85 = !DILocation(line: 111, column: 7, scope: !51)
!86 = !DILocation(line: 113, column: 13, scope: !51)
!87 = !DILocation(line: 113, column: 17, scope: !51)
!88 = !DILocation(line: 113, column: 11, scope: !51)
!89 = !DILocation(line: 114, column: 11, scope: !51)
!90 = !DILocation(line: 114, column: 14, scope: !51)
!91 = !DILocation(line: 114, column: 9, scope: !51)
!92 = distinct !{!92, !55, !93, !46}
!93 = !DILocation(line: 115, column: 3, scope: !51)
!94 = !DILocation(line: 117, column: 11, scope: !51)
!95 = !DILocation(line: 117, column: 3, scope: !51)
!96 = distinct !DISubprogram(name: "binarysearch_main", scope: !13, file: !13, line: 124, type: !14, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!97 = !DILocation(line: 125, column: 25, scope: !96)
!98 = !DILocation(line: 125, column: 23, scope: !96)
!99 = !DILocation(line: 126, column: 1, scope: !96)
!100 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 128, type: !14, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!101 = !DILocation(line: 129, column: 3, scope: !100)
!102 = !DILocation(line: 130, column: 3, scope: !100)
!103 = !DILocation(line: 132, column: 11, scope: !100)
!104 = !DILocation(line: 132, column: 33, scope: !100)
!105 = !DILocation(line: 132, column: 40, scope: !100)
!106 = !DILocation(line: 132, column: 3, scope: !100)
