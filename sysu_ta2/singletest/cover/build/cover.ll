; ModuleID = '/workspaces/llvmta/testcases/batchtest/cover/cover.c'
source_filename = "/workspaces/llvmta/testcases/batchtest/cover/cover.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@cover_cnt = internal global i32 0, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cover_init() #0 !dbg !12 {
entry:
  store volatile i32 0, i32* @cover_cnt, align 4, !dbg !16
  ret void, !dbg !17
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cover_return() #0 !dbg !18 {
entry:
  %0 = load volatile i32, i32* @cover_cnt, align 4, !dbg !19
  %sub = sub nsw i32 %0, 180, !dbg !20
  ret i32 %sub, !dbg !21
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @increment_c(i32 noundef %i) #0 !dbg !22 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4, !dbg !23
  %inc = add nsw i32 %0, 1, !dbg !23
  store i32 %inc, i32* %i.addr, align 4, !dbg !23
  %1 = load i32, i32* %i.addr, align 4, !dbg !24
  ret i32 %1, !dbg !25
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cover_swi120(i32 noundef %c) #0 !dbg !26 {
entry:
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %i, align 4, !dbg !27
  br label %for.cond, !dbg !28

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !29
  %cmp = icmp slt i32 %0, 1, !dbg !30
  br i1 %cmp, label %for.body, label %for.end, !dbg !31

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %c.addr, align 4, !dbg !32
  %call = call arm_aapcs_vfpcc i32 @increment_c(i32 noundef %1) #1, !dbg !33
  store i32 %call, i32* %c.addr, align 4, !dbg !34
  br label %for.inc, !dbg !35

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4, !dbg !36
  %inc = add nsw i32 %2, 1, !dbg !36
  store i32 %inc, i32* %i, align 4, !dbg !36
  br label %for.cond, !dbg !31, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  %3 = load i32, i32* %c.addr, align 4, !dbg !39
  ret i32 %3, !dbg !40
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cover_swi50(i32 noundef %c) #0 !dbg !41 {
entry:
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %i, align 4, !dbg !42
  br label %for.cond, !dbg !43

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !44
  %cmp = icmp slt i32 %0, 1, !dbg !45
  br i1 %cmp, label %for.body, label %for.end, !dbg !46

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %c.addr, align 4, !dbg !47
  %call = call arm_aapcs_vfpcc i32 @increment_c(i32 noundef %1) #1, !dbg !48
  store i32 %call, i32* %c.addr, align 4, !dbg !49
  br label %for.inc, !dbg !50

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4, !dbg !51
  %inc = add nsw i32 %2, 1, !dbg !51
  store i32 %inc, i32* %i, align 4, !dbg !51
  br label %for.cond, !dbg !46, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  %3 = load i32, i32* %c.addr, align 4, !dbg !53
  ret i32 %3, !dbg !54
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cover_swi10(i32 noundef %c) #0 !dbg !55 {
entry:
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %i, align 4, !dbg !56
  br label %for.cond, !dbg !57

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !58
  %cmp = icmp slt i32 %0, 1, !dbg !59
  br i1 %cmp, label %for.body, label %for.end, !dbg !60

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %c.addr, align 4, !dbg !61
  %call = call arm_aapcs_vfpcc i32 @increment_c(i32 noundef %1) #1, !dbg !62
  store i32 %call, i32* %c.addr, align 4, !dbg !63
  br label %for.inc, !dbg !64

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4, !dbg !65
  %inc = add nsw i32 %2, 1, !dbg !65
  store i32 %inc, i32* %i, align 4, !dbg !65
  br label %for.cond, !dbg !60, !llvm.loop !66

for.end:                                          ; preds = %for.cond
  %3 = load i32, i32* %c.addr, align 4, !dbg !67
  ret i32 %3, !dbg !68
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cover_main() #0 !dbg !69 {
entry:
  %0 = load volatile i32, i32* @cover_cnt, align 4, !dbg !70
  %call = call arm_aapcs_vfpcc i32 @cover_swi10(i32 noundef %0) #1, !dbg !71
  store volatile i32 %call, i32* @cover_cnt, align 4, !dbg !72
  %1 = load volatile i32, i32* @cover_cnt, align 4, !dbg !73
  %call1 = call arm_aapcs_vfpcc i32 @cover_swi50(i32 noundef %1) #1, !dbg !74
  store volatile i32 %call1, i32* @cover_cnt, align 4, !dbg !75
  %2 = load volatile i32, i32* @cover_cnt, align 4, !dbg !76
  %call2 = call arm_aapcs_vfpcc i32 @cover_swi120(i32 noundef %2) #1, !dbg !77
  store volatile i32 %call2, i32* @cover_cnt, align 4, !dbg !78
  ret void, !dbg !79
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !80 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call arm_aapcs_vfpcc void @cover_init() #1, !dbg !81
  call arm_aapcs_vfpcc void @cover_main() #1, !dbg !82
  %call = call arm_aapcs_vfpcc i32 @cover_return() #1, !dbg !83
  ret i32 %call, !dbg !84
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/cover/cover.c", directory: "/workspaces/llvmta/testcases/tmp.3MTEHdKd5Y", checksumkind: CSK_MD5, checksum: "b20439d968218da77f6a9051b6098546")
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
!12 = distinct !DISubprogram(name: "cover_init", scope: !13, file: !13, line: 48, type: !14, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "batchtest/cover/cover.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "b20439d968218da77f6a9051b6098546")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 50, column: 13, scope: !12)
!17 = !DILocation(line: 51, column: 1, scope: !12)
!18 = distinct !DISubprogram(name: "cover_return", scope: !13, file: !13, line: 54, type: !14, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!19 = !DILocation(line: 56, column: 10, scope: !18)
!20 = !DILocation(line: 56, column: 20, scope: !18)
!21 = !DILocation(line: 56, column: 3, scope: !18)
!22 = distinct !DISubprogram(name: "increment_c", scope: !13, file: !13, line: 60, type: !14, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!23 = !DILocation(line: 61, column: 4, scope: !22)
!24 = !DILocation(line: 62, column: 10, scope: !22)
!25 = !DILocation(line: 62, column: 3, scope: !22)
!26 = distinct !DISubprogram(name: "cover_swi120", scope: !13, file: !13, line: 69, type: !14, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!27 = !DILocation(line: 72, column: 10, scope: !26)
!28 = !DILocation(line: 72, column: 8, scope: !26)
!29 = !DILocation(line: 72, column: 15, scope: !26)
!30 = !DILocation(line: 72, column: 17, scope: !26)
!31 = !DILocation(line: 72, column: 3, scope: !26)
!32 = !DILocation(line: 73, column: 23, scope: !26)
!33 = !DILocation(line: 73, column: 11, scope: !26)
!34 = !DILocation(line: 73, column: 9, scope: !26)
!35 = !DILocation(line: 74, column: 3, scope: !26)
!36 = !DILocation(line: 72, column: 23, scope: !26)
!37 = distinct !{!37, !31, !35, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !DILocation(line: 75, column: 10, scope: !26)
!40 = !DILocation(line: 75, column: 3, scope: !26)
!41 = distinct !DISubprogram(name: "cover_swi50", scope: !13, file: !13, line: 79, type: !14, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!42 = !DILocation(line: 82, column: 10, scope: !41)
!43 = !DILocation(line: 82, column: 8, scope: !41)
!44 = !DILocation(line: 82, column: 15, scope: !41)
!45 = !DILocation(line: 82, column: 17, scope: !41)
!46 = !DILocation(line: 82, column: 3, scope: !41)
!47 = !DILocation(line: 83, column: 23, scope: !41)
!48 = !DILocation(line: 83, column: 11, scope: !41)
!49 = !DILocation(line: 83, column: 9, scope: !41)
!50 = !DILocation(line: 84, column: 3, scope: !41)
!51 = !DILocation(line: 82, column: 23, scope: !41)
!52 = distinct !{!52, !46, !50, !38}
!53 = !DILocation(line: 85, column: 10, scope: !41)
!54 = !DILocation(line: 85, column: 3, scope: !41)
!55 = distinct !DISubprogram(name: "cover_swi10", scope: !13, file: !13, line: 91, type: !14, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!56 = !DILocation(line: 94, column: 10, scope: !55)
!57 = !DILocation(line: 94, column: 8, scope: !55)
!58 = !DILocation(line: 94, column: 15, scope: !55)
!59 = !DILocation(line: 94, column: 17, scope: !55)
!60 = !DILocation(line: 94, column: 3, scope: !55)
!61 = !DILocation(line: 95, column: 23, scope: !55)
!62 = !DILocation(line: 95, column: 11, scope: !55)
!63 = !DILocation(line: 95, column: 9, scope: !55)
!64 = !DILocation(line: 96, column: 3, scope: !55)
!65 = !DILocation(line: 94, column: 23, scope: !55)
!66 = distinct !{!66, !60, !64, !38}
!67 = !DILocation(line: 97, column: 10, scope: !55)
!68 = !DILocation(line: 97, column: 3, scope: !55)
!69 = distinct !DISubprogram(name: "cover_main", scope: !13, file: !13, line: 101, type: !14, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!70 = !DILocation(line: 103, column: 28, scope: !69)
!71 = !DILocation(line: 103, column: 15, scope: !69)
!72 = !DILocation(line: 103, column: 13, scope: !69)
!73 = !DILocation(line: 105, column: 28, scope: !69)
!74 = !DILocation(line: 105, column: 15, scope: !69)
!75 = !DILocation(line: 105, column: 13, scope: !69)
!76 = !DILocation(line: 107, column: 29, scope: !69)
!77 = !DILocation(line: 107, column: 15, scope: !69)
!78 = !DILocation(line: 107, column: 13, scope: !69)
!79 = !DILocation(line: 108, column: 1, scope: !69)
!80 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 115, type: !14, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!81 = !DILocation(line: 117, column: 3, scope: !80)
!82 = !DILocation(line: 118, column: 3, scope: !80)
!83 = !DILocation(line: 120, column: 10, scope: !80)
!84 = !DILocation(line: 120, column: 3, scope: !80)
