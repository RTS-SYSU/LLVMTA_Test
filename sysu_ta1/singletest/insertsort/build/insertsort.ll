; ModuleID = '/workspaces/llvmta/testcases/batchtest/insertsort/insertsort.c'
source_filename = "/workspaces/llvmta/testcases/batchtest/insertsort/insertsort.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@insertsort_a = dso_local global [11 x i32] zeroinitializer, align 4
@__const.insertsort_init.a = private unnamed_addr constant [11 x i32] [i32 0, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2], align 4
@insertsort_iters_i = dso_local global i32 0, align 4
@insertsort_min_i = dso_local global i32 0, align 4
@insertsort_max_i = dso_local global i32 0, align 4
@insertsort_iters_a = dso_local global i32 0, align 4
@insertsort_min_a = dso_local global i32 0, align 4
@insertsort_max_a = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @insertsort_initialize(i32* noundef %array) #0 !dbg !12 {
entry:
  %array.addr = alloca i32*, align 4
  %i = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 4
  store volatile i32 0, i32* %i, align 4, !dbg !16
  br label %for.cond, !dbg !17

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load volatile i32, i32* %i, align 4, !dbg !18
  %cmp = icmp slt i32 %0, 11, !dbg !19
  br i1 %cmp, label %for.body, label %for.end, !dbg !20

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %array.addr, align 4, !dbg !21
  %2 = load volatile i32, i32* %i, align 4, !dbg !22
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 %2, !dbg !21
  %3 = load i32, i32* %arrayidx, align 4, !dbg !21
  %4 = load volatile i32, i32* %i, align 4, !dbg !23
  %arrayidx1 = getelementptr inbounds [11 x i32], [11 x i32]* @insertsort_a, i32 0, i32 %4, !dbg !24
  store i32 %3, i32* %arrayidx1, align 4, !dbg !25
  br label %for.inc, !dbg !24

for.inc:                                          ; preds = %for.body
  %5 = load volatile i32, i32* %i, align 4, !dbg !26
  %inc = add nsw i32 %5, 1, !dbg !26
  store volatile i32 %inc, i32* %i, align 4, !dbg !26
  br label %for.cond, !dbg !20, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  ret void, !dbg !30
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @insertsort_init() #0 !dbg !31 {
entry:
  %a = alloca [11 x i32], align 4
  %0 = bitcast [11 x i32]* %a to i8*, !dbg !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %0, i8* align 4 bitcast ([11 x i32]* @__const.insertsort_init.a to i8*), i32 44, i1 false), !dbg !32
  store i32 0, i32* @insertsort_iters_i, align 4, !dbg !33
  store i32 100000, i32* @insertsort_min_i, align 4, !dbg !34
  store i32 0, i32* @insertsort_max_i, align 4, !dbg !35
  store i32 0, i32* @insertsort_iters_a, align 4, !dbg !36
  store i32 100000, i32* @insertsort_min_a, align 4, !dbg !37
  store i32 0, i32* @insertsort_max_a, align 4, !dbg !38
  %arraydecay = getelementptr inbounds [11 x i32], [11 x i32]* %a, i32 0, i32 0, !dbg !39
  call arm_aapcs_vfpcc void @insertsort_initialize(i32* noundef %arraydecay) #2, !dbg !40
  ret void, !dbg !41
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @insertsort_return() #0 !dbg !42 {
entry:
  %i = alloca i32, align 4
  %returnValue = alloca i32, align 4
  store i32 0, i32* %returnValue, align 4, !dbg !43
  store i32 0, i32* %i, align 4, !dbg !44
  br label %for.cond, !dbg !45

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !46
  %cmp = icmp slt i32 %0, 11, !dbg !47
  br i1 %cmp, label %for.body, label %for.end, !dbg !48

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !49
  %arrayidx = getelementptr inbounds [11 x i32], [11 x i32]* @insertsort_a, i32 0, i32 %1, !dbg !50
  %2 = load i32, i32* %arrayidx, align 4, !dbg !50
  %3 = load i32, i32* %returnValue, align 4, !dbg !51
  %add = add i32 %3, %2, !dbg !51
  store i32 %add, i32* %returnValue, align 4, !dbg !51
  br label %for.inc, !dbg !52

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !53
  %inc = add nsw i32 %4, 1, !dbg !53
  store i32 %inc, i32* %i, align 4, !dbg !53
  br label %for.cond, !dbg !48, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %returnValue, align 4, !dbg !56
  %add1 = add nsw i32 %5, -65, !dbg !57
  %cmp2 = icmp ne i32 %add1, 0, !dbg !58
  %conv = zext i1 %cmp2 to i32, !dbg !58
  ret i32 %conv, !dbg !59
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @insertsort_main() #0 !dbg !60 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  store i32 2, i32* %i, align 4, !dbg !61
  store i32 0, i32* @insertsort_iters_i, align 4, !dbg !62
  store i32 1, i32* %i1, align 4, !dbg !63
  br label %for.cond, !dbg !64

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %i1, align 4, !dbg !65
  %cmp = icmp sle i32 %0, 9, !dbg !66
  br i1 %cmp, label %for.body, label %for.end12, !dbg !67

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %j2, align 4, !dbg !68
  br label %for.cond3, !dbg !69

for.cond3:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j2, align 4, !dbg !70
  %cmp4 = icmp sle i32 %1, 9, !dbg !71
  br i1 %cmp4, label %for.body5, label %for.end, !dbg !72

for.body5:                                        ; preds = %for.cond3
  %2 = load i32, i32* %j2, align 4, !dbg !73
  %arrayidx = getelementptr inbounds [11 x i32], [11 x i32]* @insertsort_a, i32 0, i32 %2, !dbg !74
  %3 = load i32, i32* %arrayidx, align 4, !dbg !74
  store i32 %3, i32* %temp, align 4, !dbg !75
  %4 = load i32, i32* %j2, align 4, !dbg !76
  %sub = sub nsw i32 %4, 1, !dbg !77
  %arrayidx6 = getelementptr inbounds [11 x i32], [11 x i32]* @insertsort_a, i32 0, i32 %sub, !dbg !78
  %5 = load i32, i32* %arrayidx6, align 4, !dbg !78
  %6 = load i32, i32* %j2, align 4, !dbg !79
  %arrayidx7 = getelementptr inbounds [11 x i32], [11 x i32]* @insertsort_a, i32 0, i32 %6, !dbg !80
  store i32 %5, i32* %arrayidx7, align 4, !dbg !81
  %7 = load i32, i32* %temp, align 4, !dbg !82
  %8 = load i32, i32* %j2, align 4, !dbg !83
  %sub8 = sub nsw i32 %8, 1, !dbg !84
  %arrayidx9 = getelementptr inbounds [11 x i32], [11 x i32]* @insertsort_a, i32 0, i32 %sub8, !dbg !85
  store i32 %7, i32* %arrayidx9, align 4, !dbg !86
  br label %for.inc, !dbg !87

for.inc:                                          ; preds = %for.body5
  %9 = load i32, i32* %j2, align 4, !dbg !88
  %inc = add nsw i32 %9, 1, !dbg !88
  store i32 %inc, i32* %j2, align 4, !dbg !88
  br label %for.cond3, !dbg !72, !llvm.loop !89

for.end:                                          ; preds = %for.cond3
  br label %for.inc10, !dbg !90

for.inc10:                                        ; preds = %for.end
  %10 = load i32, i32* %i1, align 4, !dbg !91
  %inc11 = add nsw i32 %10, 1, !dbg !91
  store i32 %inc11, i32* %i1, align 4, !dbg !91
  br label %for.cond, !dbg !67, !llvm.loop !92

for.end12:                                        ; preds = %for.cond
  ret void, !dbg !93
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !94 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call arm_aapcs_vfpcc void @insertsort_init() #2, !dbg !95
  call arm_aapcs_vfpcc void @insertsort_main() #2, !dbg !96
  ret i32 0, !dbg !97
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/insertsort/insertsort.c", directory: "/workspaces/llvmta/testcases/tmp.6dh42Xm98j", checksumkind: CSK_MD5, checksum: "c92e1d5c608355b0507938aa1db3c835")
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
!12 = distinct !DISubprogram(name: "insertsort_initialize", scope: !13, file: !13, line: 51, type: !14, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "batchtest/insertsort/insertsort.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "c92e1d5c608355b0507938aa1db3c835")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 55, column: 11, scope: !12)
!17 = !DILocation(line: 55, column: 9, scope: !12)
!18 = !DILocation(line: 55, column: 16, scope: !12)
!19 = !DILocation(line: 55, column: 18, scope: !12)
!20 = !DILocation(line: 55, column: 3, scope: !12)
!21 = !DILocation(line: 56, column: 25, scope: !12)
!22 = !DILocation(line: 56, column: 32, scope: !12)
!23 = !DILocation(line: 56, column: 19, scope: !12)
!24 = !DILocation(line: 56, column: 5, scope: !12)
!25 = !DILocation(line: 56, column: 23, scope: !12)
!26 = !DILocation(line: 55, column: 25, scope: !12)
!27 = distinct !{!27, !20, !28, !29}
!28 = !DILocation(line: 56, column: 34, scope: !12)
!29 = !{!"llvm.loop.mustprogress"}
!30 = !DILocation(line: 58, column: 1, scope: !12)
!31 = distinct !DISubprogram(name: "insertsort_init", scope: !13, file: !13, line: 61, type: !14, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!32 = !DILocation(line: 63, column: 16, scope: !31)
!33 = !DILocation(line: 65, column: 22, scope: !31)
!34 = !DILocation(line: 66, column: 20, scope: !31)
!35 = !DILocation(line: 67, column: 20, scope: !31)
!36 = !DILocation(line: 68, column: 22, scope: !31)
!37 = !DILocation(line: 69, column: 20, scope: !31)
!38 = !DILocation(line: 70, column: 20, scope: !31)
!39 = !DILocation(line: 72, column: 26, scope: !31)
!40 = !DILocation(line: 72, column: 3, scope: !31)
!41 = !DILocation(line: 73, column: 1, scope: !31)
!42 = distinct !DISubprogram(name: "insertsort_return", scope: !13, file: !13, line: 75, type: !14, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!43 = !DILocation(line: 77, column: 10, scope: !42)
!44 = !DILocation(line: 79, column: 11, scope: !42)
!45 = !DILocation(line: 79, column: 9, scope: !42)
!46 = !DILocation(line: 79, column: 16, scope: !42)
!47 = !DILocation(line: 79, column: 18, scope: !42)
!48 = !DILocation(line: 79, column: 3, scope: !42)
!49 = !DILocation(line: 80, column: 34, scope: !42)
!50 = !DILocation(line: 80, column: 20, scope: !42)
!51 = !DILocation(line: 80, column: 17, scope: !42)
!52 = !DILocation(line: 80, column: 5, scope: !42)
!53 = !DILocation(line: 79, column: 25, scope: !42)
!54 = distinct !{!54, !48, !55, !29}
!55 = !DILocation(line: 80, column: 36, scope: !42)
!56 = !DILocation(line: 82, column: 12, scope: !42)
!57 = !DILocation(line: 82, column: 24, scope: !42)
!58 = !DILocation(line: 82, column: 36, scope: !42)
!59 = !DILocation(line: 82, column: 3, scope: !42)
!60 = distinct !DISubprogram(name: "insertsort_main", scope: !13, file: !13, line: 91, type: !14, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!61 = !DILocation(line: 94, column: 5, scope: !60)
!62 = !DILocation(line: 96, column: 22, scope: !60)
!63 = !DILocation(line: 98, column: 11, scope: !60)
!64 = !DILocation(line: 98, column: 7, scope: !60)
!65 = !DILocation(line: 98, column: 15, scope: !60)
!66 = !DILocation(line: 98, column: 16, scope: !60)
!67 = !DILocation(line: 98, column: 3, scope: !60)
!68 = !DILocation(line: 99, column: 13, scope: !60)
!69 = !DILocation(line: 99, column: 9, scope: !60)
!70 = !DILocation(line: 99, column: 17, scope: !60)
!71 = !DILocation(line: 99, column: 18, scope: !60)
!72 = !DILocation(line: 99, column: 5, scope: !60)
!73 = !DILocation(line: 100, column: 28, scope: !60)
!74 = !DILocation(line: 100, column: 14, scope: !60)
!75 = !DILocation(line: 100, column: 12, scope: !60)
!76 = !DILocation(line: 101, column: 41, scope: !60)
!77 = !DILocation(line: 101, column: 43, scope: !60)
!78 = !DILocation(line: 101, column: 27, scope: !60)
!79 = !DILocation(line: 101, column: 21, scope: !60)
!80 = !DILocation(line: 101, column: 7, scope: !60)
!81 = !DILocation(line: 101, column: 25, scope: !60)
!82 = !DILocation(line: 102, column: 31, scope: !60)
!83 = !DILocation(line: 102, column: 21, scope: !60)
!84 = !DILocation(line: 102, column: 23, scope: !60)
!85 = !DILocation(line: 102, column: 7, scope: !60)
!86 = !DILocation(line: 102, column: 29, scope: !60)
!87 = !DILocation(line: 103, column: 5, scope: !60)
!88 = !DILocation(line: 99, column: 23, scope: !60)
!89 = distinct !{!89, !72, !87, !29}
!90 = !DILocation(line: 104, column: 3, scope: !60)
!91 = !DILocation(line: 98, column: 21, scope: !60)
!92 = distinct !{!92, !67, !90, !29}
!93 = !DILocation(line: 105, column: 1, scope: !60)
!94 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 107, type: !14, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!95 = !DILocation(line: 109, column: 3, scope: !94)
!96 = !DILocation(line: 110, column: 3, scope: !94)
!97 = !DILocation(line: 112, column: 3, scope: !94)
