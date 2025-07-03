; ModuleID = '/workspaces/llvmta/testcases/batchtest/matrix1/matrix1.c'
source_filename = "/workspaces/llvmta/testcases/batchtest/matrix1/matrix1.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@matrix1_A = dso_local global [1 x i32] zeroinitializer, align 4
@matrix1_B = dso_local global [1 x i32] zeroinitializer, align 4
@matrix1_C = dso_local global [1 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @matrix1_pin_down(i32* noundef %A, i32* noundef %B, i32* noundef %C) #0 !dbg !12 {
entry:
  %A.addr = alloca i32*, align 4
  %B.addr = alloca i32*, align 4
  %C.addr = alloca i32*, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 4
  store i32* %B, i32** %B.addr, align 4
  store i32* %C, i32** %C.addr, align 4
  store volatile i32 1, i32* %x, align 4, !dbg !16
  store i32 0, i32* %i, align 4, !dbg !17
  br label %for.cond, !dbg !18

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !19
  %cmp = icmp slt i32 %0, 1, !dbg !20
  br i1 %cmp, label %for.body, label %for.end, !dbg !21

for.body:                                         ; preds = %for.cond
  %1 = load volatile i32, i32* %x, align 4, !dbg !22
  %2 = load i32*, i32** %A.addr, align 4, !dbg !23
  %3 = load i32, i32* %i, align 4, !dbg !24
  %arrayidx = getelementptr inbounds i32, i32* %2, i32 %3, !dbg !23
  store i32 %1, i32* %arrayidx, align 4, !dbg !25
  br label %for.inc, !dbg !23

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !26
  %inc = add nsw i32 %4, 1, !dbg !26
  store i32 %inc, i32* %i, align 4, !dbg !26
  br label %for.cond, !dbg !21, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !29
  br label %for.cond1, !dbg !30

for.cond1:                                        ; preds = %for.inc5, %for.end
  %5 = load i32, i32* %i, align 4, !dbg !31
  %cmp2 = icmp slt i32 %5, 1, !dbg !32
  br i1 %cmp2, label %for.body3, label %for.end7, !dbg !33

for.body3:                                        ; preds = %for.cond1
  %6 = load volatile i32, i32* %x, align 4, !dbg !34
  %7 = load i32*, i32** %B.addr, align 4, !dbg !35
  %8 = load i32, i32* %i, align 4, !dbg !36
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i32 %8, !dbg !35
  store i32 %6, i32* %arrayidx4, align 4, !dbg !37
  br label %for.inc5, !dbg !35

for.inc5:                                         ; preds = %for.body3
  %9 = load i32, i32* %i, align 4, !dbg !38
  %inc6 = add nsw i32 %9, 1, !dbg !38
  store i32 %inc6, i32* %i, align 4, !dbg !38
  br label %for.cond1, !dbg !33, !llvm.loop !39

for.end7:                                         ; preds = %for.cond1
  store i32 0, i32* %i, align 4, !dbg !40
  br label %for.cond8, !dbg !41

for.cond8:                                        ; preds = %for.inc12, %for.end7
  %10 = load i32, i32* %i, align 4, !dbg !42
  %cmp9 = icmp slt i32 %10, 1, !dbg !43
  br i1 %cmp9, label %for.body10, label %for.end14, !dbg !44

for.body10:                                       ; preds = %for.cond8
  %11 = load i32*, i32** %C.addr, align 4, !dbg !45
  %12 = load i32, i32* %i, align 4, !dbg !46
  %arrayidx11 = getelementptr inbounds i32, i32* %11, i32 %12, !dbg !45
  store i32 0, i32* %arrayidx11, align 4, !dbg !47
  br label %for.inc12, !dbg !45

for.inc12:                                        ; preds = %for.body10
  %13 = load i32, i32* %i, align 4, !dbg !48
  %inc13 = add nsw i32 %13, 1, !dbg !48
  store i32 %inc13, i32* %i, align 4, !dbg !48
  br label %for.cond8, !dbg !44, !llvm.loop !49

for.end14:                                        ; preds = %for.cond8
  ret void, !dbg !51
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @matrix1_init() #0 !dbg !52 {
entry:
  call arm_aapcs_vfpcc void @matrix1_pin_down(i32* noundef getelementptr inbounds ([1 x i32], [1 x i32]* @matrix1_A, i32 0, i32 0), i32* noundef getelementptr inbounds ([1 x i32], [1 x i32]* @matrix1_B, i32 0, i32 0), i32* noundef getelementptr inbounds ([1 x i32], [1 x i32]* @matrix1_C, i32 0, i32 0)) #1, !dbg !53
  ret void, !dbg !54
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @matrix1_return() #0 !dbg !55 {
entry:
  %i = alloca i32, align 4
  %checksum = alloca i32, align 4
  store i32 0, i32* %checksum, align 4, !dbg !56
  store i32 0, i32* %i, align 4, !dbg !57
  br label %for.cond, !dbg !58

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !59
  %cmp = icmp slt i32 %0, 1, !dbg !60
  br i1 %cmp, label %for.body, label %for.end, !dbg !61

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !62
  %arrayidx = getelementptr inbounds [1 x i32], [1 x i32]* @matrix1_C, i32 0, i32 %1, !dbg !63
  %2 = load i32, i32* %arrayidx, align 4, !dbg !63
  %3 = load i32, i32* %checksum, align 4, !dbg !64
  %add = add nsw i32 %3, %2, !dbg !64
  store i32 %add, i32* %checksum, align 4, !dbg !64
  br label %for.inc, !dbg !65

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !66
  %inc = add nsw i32 %4, 1, !dbg !66
  store i32 %inc, i32* %i, align 4, !dbg !66
  br label %for.cond, !dbg !61, !llvm.loop !67

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %checksum, align 4, !dbg !69
  %cmp1 = icmp eq i32 %5, 1000, !dbg !70
  %6 = zext i1 %cmp1 to i64, !dbg !69
  %cond = select i1 %cmp1, i32 0, i32 -1, !dbg !69
  ret i32 %cond, !dbg !71
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @matrix1_main() #0 !dbg !72 {
entry:
  %p_a = alloca i32*, align 4
  %p_b = alloca i32*, align 4
  %p_c = alloca i32*, align 4
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @matrix1_A, i32 0, i32 0), i32** %p_a, align 4, !dbg !73
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @matrix1_B, i32 0, i32 0), i32** %p_b, align 4, !dbg !74
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @matrix1_C, i32 0, i32 0), i32** %p_c, align 4, !dbg !75
  store i32 0, i32* %k, align 4, !dbg !76
  br label %for.cond, !dbg !77

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, i32* %k, align 4, !dbg !78
  %cmp = icmp slt i32 %0, 1, !dbg !79
  br i1 %cmp, label %for.body, label %for.end15, !dbg !80

for.body:                                         ; preds = %for.cond
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @matrix1_A, i32 0, i32 0), i32** %p_a, align 4, !dbg !81
  store i32 0, i32* %i, align 4, !dbg !82
  br label %for.cond1, !dbg !83

for.cond1:                                        ; preds = %for.inc10, %for.body
  %1 = load i32, i32* %i, align 4, !dbg !84
  %cmp2 = icmp slt i32 %1, 1, !dbg !85
  br i1 %cmp2, label %for.body3, label %for.end12, !dbg !86

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %k, align 4, !dbg !87
  %mul = mul nsw i32 %2, 1, !dbg !88
  %arrayidx = getelementptr inbounds [1 x i32], [1 x i32]* @matrix1_B, i32 0, i32 %mul, !dbg !89
  store i32* %arrayidx, i32** %p_b, align 4, !dbg !90
  %3 = load i32*, i32** %p_c, align 4, !dbg !91
  store i32 0, i32* %3, align 4, !dbg !92
  store i32 0, i32* %f, align 4, !dbg !93
  br label %for.cond4, !dbg !94

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %f, align 4, !dbg !95
  %cmp5 = icmp slt i32 %4, 1, !dbg !96
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !97

for.body6:                                        ; preds = %for.cond4
  %5 = load i32*, i32** %p_a, align 4, !dbg !98
  %incdec.ptr = getelementptr inbounds i32, i32* %5, i32 1, !dbg !98
  store i32* %incdec.ptr, i32** %p_a, align 4, !dbg !98
  %6 = load i32, i32* %5, align 4, !dbg !99
  %7 = load i32*, i32** %p_b, align 4, !dbg !100
  %incdec.ptr7 = getelementptr inbounds i32, i32* %7, i32 1, !dbg !100
  store i32* %incdec.ptr7, i32** %p_b, align 4, !dbg !100
  %8 = load i32, i32* %7, align 4, !dbg !101
  %mul8 = mul nsw i32 %6, %8, !dbg !102
  %9 = load i32*, i32** %p_c, align 4, !dbg !103
  %10 = load i32, i32* %9, align 4, !dbg !104
  %add = add nsw i32 %10, %mul8, !dbg !104
  store i32 %add, i32* %9, align 4, !dbg !104
  br label %for.inc, !dbg !105

for.inc:                                          ; preds = %for.body6
  %11 = load i32, i32* %f, align 4, !dbg !106
  %inc = add nsw i32 %11, 1, !dbg !106
  store i32 %inc, i32* %f, align 4, !dbg !106
  br label %for.cond4, !dbg !97, !llvm.loop !107

for.end:                                          ; preds = %for.cond4
  %12 = load i32*, i32** %p_c, align 4, !dbg !108
  %incdec.ptr9 = getelementptr inbounds i32, i32* %12, i32 1, !dbg !108
  store i32* %incdec.ptr9, i32** %p_c, align 4, !dbg !108
  br label %for.inc10, !dbg !109

for.inc10:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4, !dbg !110
  %inc11 = add nsw i32 %13, 1, !dbg !110
  store i32 %inc11, i32* %i, align 4, !dbg !110
  br label %for.cond1, !dbg !86, !llvm.loop !111

for.end12:                                        ; preds = %for.cond1
  br label %for.inc13, !dbg !112

for.inc13:                                        ; preds = %for.end12
  %14 = load i32, i32* %k, align 4, !dbg !113
  %inc14 = add nsw i32 %14, 1, !dbg !113
  store i32 %inc14, i32* %k, align 4, !dbg !113
  br label %for.cond, !dbg !80, !llvm.loop !114

for.end15:                                        ; preds = %for.cond
  ret void, !dbg !115
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !116 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call arm_aapcs_vfpcc void @matrix1_init() #1, !dbg !117
  call arm_aapcs_vfpcc void @matrix1_main() #1, !dbg !118
  %call = call arm_aapcs_vfpcc i32 @matrix1_return() #1, !dbg !119
  ret i32 %call, !dbg !120
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/matrix1/matrix1.c", directory: "/workspaces/llvmta/testcases/tmp.VasF5cfScI", checksumkind: CSK_MD5, checksum: "966e1fde80bfda5fc29084cbb04c6680")
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
!12 = distinct !DISubprogram(name: "matrix1_pin_down", scope: !13, file: !13, line: 87, type: !14, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "batchtest/matrix1/matrix1.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "966e1fde80bfda5fc29084cbb04c6680")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 89, column: 16, scope: !12)
!17 = !DILocation(line: 91, column: 47, scope: !12)
!18 = !DILocation(line: 91, column: 45, scope: !12)
!19 = !DILocation(line: 91, column: 52, scope: !12)
!20 = !DILocation(line: 91, column: 54, scope: !12)
!21 = !DILocation(line: 91, column: 40, scope: !12)
!22 = !DILocation(line: 91, column: 75, scope: !12)
!23 = !DILocation(line: 91, column: 68, scope: !12)
!24 = !DILocation(line: 91, column: 70, scope: !12)
!25 = !DILocation(line: 91, column: 73, scope: !12)
!26 = !DILocation(line: 91, column: 64, scope: !12)
!27 = distinct !{!27, !21, !22, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !DILocation(line: 93, column: 47, scope: !12)
!30 = !DILocation(line: 93, column: 45, scope: !12)
!31 = !DILocation(line: 93, column: 52, scope: !12)
!32 = !DILocation(line: 93, column: 54, scope: !12)
!33 = !DILocation(line: 93, column: 40, scope: !12)
!34 = !DILocation(line: 93, column: 75, scope: !12)
!35 = !DILocation(line: 93, column: 68, scope: !12)
!36 = !DILocation(line: 93, column: 70, scope: !12)
!37 = !DILocation(line: 93, column: 73, scope: !12)
!38 = !DILocation(line: 93, column: 64, scope: !12)
!39 = distinct !{!39, !33, !34, !28}
!40 = !DILocation(line: 95, column: 47, scope: !12)
!41 = !DILocation(line: 95, column: 45, scope: !12)
!42 = !DILocation(line: 95, column: 52, scope: !12)
!43 = !DILocation(line: 95, column: 54, scope: !12)
!44 = !DILocation(line: 95, column: 40, scope: !12)
!45 = !DILocation(line: 95, column: 68, scope: !12)
!46 = !DILocation(line: 95, column: 70, scope: !12)
!47 = !DILocation(line: 95, column: 73, scope: !12)
!48 = !DILocation(line: 95, column: 64, scope: !12)
!49 = distinct !{!49, !44, !50, !28}
!50 = !DILocation(line: 95, column: 75, scope: !12)
!51 = !DILocation(line: 96, column: 1, scope: !12)
!52 = distinct !DISubprogram(name: "matrix1_init", scope: !13, file: !13, line: 98, type: !14, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!53 = !DILocation(line: 99, column: 3, scope: !52)
!54 = !DILocation(line: 100, column: 1, scope: !52)
!55 = distinct !DISubprogram(name: "matrix1_return", scope: !13, file: !13, line: 106, type: !14, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!56 = !DILocation(line: 108, column: 7, scope: !55)
!57 = !DILocation(line: 110, column: 47, scope: !55)
!58 = !DILocation(line: 110, column: 45, scope: !55)
!59 = !DILocation(line: 110, column: 52, scope: !55)
!60 = !DILocation(line: 110, column: 54, scope: !55)
!61 = !DILocation(line: 110, column: 40, scope: !55)
!62 = !DILocation(line: 111, column: 17, scope: !55)
!63 = !DILocation(line: 111, column: 7, scope: !55)
!64 = !DILocation(line: 110, column: 77, scope: !55)
!65 = !DILocation(line: 110, column: 68, scope: !55)
!66 = !DILocation(line: 110, column: 64, scope: !55)
!67 = distinct !{!67, !61, !68, !28}
!68 = !DILocation(line: 111, column: 18, scope: !55)
!69 = !DILocation(line: 113, column: 11, scope: !55)
!70 = !DILocation(line: 113, column: 20, scope: !55)
!71 = !DILocation(line: 113, column: 3, scope: !55)
!72 = distinct !DISubprogram(name: "matrix1_main", scope: !13, file: !13, line: 120, type: !14, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!73 = !DILocation(line: 121, column: 17, scope: !72)
!74 = !DILocation(line: 122, column: 17, scope: !72)
!75 = !DILocation(line: 123, column: 17, scope: !72)
!76 = !DILocation(line: 127, column: 45, scope: !72)
!77 = !DILocation(line: 127, column: 43, scope: !72)
!78 = !DILocation(line: 127, column: 50, scope: !72)
!79 = !DILocation(line: 127, column: 52, scope: !72)
!80 = !DILocation(line: 127, column: 38, scope: !72)
!81 = !DILocation(line: 128, column: 9, scope: !72)
!82 = !DILocation(line: 130, column: 47, scope: !72)
!83 = !DILocation(line: 130, column: 45, scope: !72)
!84 = !DILocation(line: 130, column: 52, scope: !72)
!85 = !DILocation(line: 130, column: 54, scope: !72)
!86 = !DILocation(line: 130, column: 40, scope: !72)
!87 = !DILocation(line: 131, column: 24, scope: !72)
!88 = !DILocation(line: 131, column: 26, scope: !72)
!89 = !DILocation(line: 131, column: 14, scope: !72)
!90 = !DILocation(line: 131, column: 11, scope: !72)
!91 = !DILocation(line: 133, column: 8, scope: !72)
!92 = !DILocation(line: 133, column: 12, scope: !72)
!93 = !DILocation(line: 134, column: 49, scope: !72)
!94 = !DILocation(line: 134, column: 47, scope: !72)
!95 = !DILocation(line: 134, column: 54, scope: !72)
!96 = !DILocation(line: 134, column: 56, scope: !72)
!97 = !DILocation(line: 134, column: 42, scope: !72)
!98 = !DILocation(line: 136, column: 23, scope: !72)
!99 = !DILocation(line: 136, column: 19, scope: !72)
!100 = !DILocation(line: 136, column: 32, scope: !72)
!101 = !DILocation(line: 136, column: 28, scope: !72)
!102 = !DILocation(line: 136, column: 26, scope: !72)
!103 = !DILocation(line: 136, column: 12, scope: !72)
!104 = !DILocation(line: 136, column: 16, scope: !72)
!105 = !DILocation(line: 136, column: 11, scope: !72)
!106 = !DILocation(line: 135, column: 48, scope: !72)
!107 = distinct !{!107, !97, !100, !28}
!108 = !DILocation(line: 138, column: 10, scope: !72)
!109 = !DILocation(line: 139, column: 5, scope: !72)
!110 = !DILocation(line: 130, column: 60, scope: !72)
!111 = distinct !{!111, !86, !109, !28}
!112 = !DILocation(line: 140, column: 3, scope: !72)
!113 = !DILocation(line: 127, column: 58, scope: !72)
!114 = distinct !{!114, !80, !112, !28}
!115 = !DILocation(line: 141, column: 1, scope: !72)
!116 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 143, type: !14, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!117 = !DILocation(line: 144, column: 3, scope: !116)
!118 = !DILocation(line: 145, column: 3, scope: !116)
!119 = !DILocation(line: 147, column: 10, scope: !116)
!120 = !DILocation(line: 147, column: 3, scope: !116)
