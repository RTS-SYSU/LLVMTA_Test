; ModuleID = '/workspaces/llvmta/testcases/batchtest/bsort/bsort.c'
source_filename = "/workspaces/llvmta/testcases/batchtest/bsort/bsort.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@bsort_Array = internal global [3 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @bsort_Initialize(i32* noundef %Array) #0 !dbg !12 {
entry:
  %Array.addr = alloca i32*, align 4
  %Index = alloca i32, align 4
  store i32* %Array, i32** %Array.addr, align 4
  store i32 0, i32* %Index, align 4, !dbg !16
  br label %for.cond, !dbg !17

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %Index, align 4, !dbg !18
  %cmp = icmp slt i32 %0, 3, !dbg !19
  br i1 %cmp, label %for.body, label %for.end, !dbg !20

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %Index, align 4, !dbg !21
  %add = add nsw i32 %1, 1, !dbg !22
  %mul = mul nsw i32 %add, -1, !dbg !23
  %2 = load i32*, i32** %Array.addr, align 4, !dbg !24
  %3 = load i32, i32* %Index, align 4, !dbg !25
  %arrayidx = getelementptr inbounds i32, i32* %2, i32 %3, !dbg !24
  store i32 %mul, i32* %arrayidx, align 4, !dbg !26
  br label %for.inc, !dbg !24

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %Index, align 4, !dbg !27
  %inc = add nsw i32 %4, 1, !dbg !27
  store i32 %inc, i32* %Index, align 4, !dbg !27
  br label %for.cond, !dbg !20, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !31
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @bsort_init() #0 !dbg !32 {
entry:
  %call = call arm_aapcs_vfpcc i32 @bsort_Initialize(i32* noundef getelementptr inbounds ([3 x i32], [3 x i32]* @bsort_Array, i32 0, i32 0)) #1, !dbg !33
  ret void, !dbg !34
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @bsort_return() #0 !dbg !35 {
entry:
  %Sorted = alloca i32, align 4
  %Index = alloca i32, align 4
  store i32 1, i32* %Sorted, align 4, !dbg !36
  store i32 0, i32* %Index, align 4, !dbg !37
  br label %for.cond, !dbg !38

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %Index, align 4, !dbg !39
  %cmp = icmp slt i32 %0, 2, !dbg !40
  br i1 %cmp, label %for.body, label %for.end, !dbg !41

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %Sorted, align 4, !dbg !42
  %tobool = icmp ne i32 %1, 0, !dbg !42
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !43

land.rhs:                                         ; preds = %for.body
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %2 = phi i1 [ false, %for.body ], [ true, %land.rhs ], !dbg !44
  %land.ext = zext i1 %2 to i32, !dbg !43
  store i32 %land.ext, i32* %Sorted, align 4, !dbg !45
  br label %for.inc, !dbg !46

for.inc:                                          ; preds = %land.end
  %3 = load i32, i32* %Index, align 4, !dbg !47
  %inc = add nsw i32 %3, 1, !dbg !47
  store i32 %inc, i32* %Index, align 4, !dbg !47
  br label %for.cond, !dbg !41, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %Sorted, align 4, !dbg !50
  %sub = sub nsw i32 1, %4, !dbg !51
  ret i32 %sub, !dbg !52
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @bsort_BubbleSort(i32* noundef %Array) #0 !dbg !53 {
entry:
  %Array.addr = alloca i32*, align 4
  %Sorted = alloca i32, align 4
  %Temp = alloca i32, align 4
  %Index = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %Array, i32** %Array.addr, align 4
  store i32 0, i32* %Sorted, align 4, !dbg !54
  store i32 0, i32* %i, align 4, !dbg !55
  br label %for.cond, !dbg !56

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, i32* %i, align 4, !dbg !57
  %cmp = icmp slt i32 %0, 2, !dbg !58
  br i1 %cmp, label %for.body, label %for.end10, !dbg !59

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %Sorted, align 4, !dbg !60
  store i32 0, i32* %Index, align 4, !dbg !61
  br label %for.cond1, !dbg !62

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %Index, align 4, !dbg !63
  %cmp2 = icmp slt i32 %1, 2, !dbg !64
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !65

for.body3:                                        ; preds = %for.cond1
  %2 = load i32*, i32** %Array.addr, align 4, !dbg !66
  %3 = load i32, i32* %Index, align 4, !dbg !67
  %arrayidx = getelementptr inbounds i32, i32* %2, i32 %3, !dbg !66
  %4 = load i32, i32* %arrayidx, align 4, !dbg !66
  store i32 %4, i32* %Temp, align 4, !dbg !68
  %5 = load i32*, i32** %Array.addr, align 4, !dbg !69
  %6 = load i32, i32* %Index, align 4, !dbg !70
  %add = add nsw i32 %6, 1, !dbg !71
  %arrayidx4 = getelementptr inbounds i32, i32* %5, i32 %add, !dbg !69
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !69
  %8 = load i32*, i32** %Array.addr, align 4, !dbg !72
  %9 = load i32, i32* %Index, align 4, !dbg !73
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i32 %9, !dbg !72
  store i32 %7, i32* %arrayidx5, align 4, !dbg !74
  %10 = load i32, i32* %Temp, align 4, !dbg !75
  %11 = load i32*, i32** %Array.addr, align 4, !dbg !76
  %12 = load i32, i32* %Index, align 4, !dbg !77
  %add6 = add nsw i32 %12, 1, !dbg !78
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i32 %add6, !dbg !76
  store i32 %10, i32* %arrayidx7, align 4, !dbg !79
  store i32 0, i32* %Sorted, align 4, !dbg !80
  br label %for.inc, !dbg !81

for.inc:                                          ; preds = %for.body3
  %13 = load i32, i32* %Index, align 4, !dbg !82
  %inc = add nsw i32 %13, 1, !dbg !82
  store i32 %inc, i32* %Index, align 4, !dbg !82
  br label %for.cond1, !dbg !65, !llvm.loop !83

for.end:                                          ; preds = %for.cond1
  br label %for.inc8, !dbg !84

for.inc8:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4, !dbg !85
  %inc9 = add nsw i32 %14, 1, !dbg !85
  store i32 %inc9, i32* %i, align 4, !dbg !85
  br label %for.cond, !dbg !59, !llvm.loop !86

for.end10:                                        ; preds = %for.cond
  ret i32 0, !dbg !87
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @bsort_main() #0 !dbg !88 {
entry:
  %call = call arm_aapcs_vfpcc i32 @bsort_BubbleSort(i32* noundef getelementptr inbounds ([3 x i32], [3 x i32]* @bsort_Array, i32 0, i32 0)) #1, !dbg !89
  ret void, !dbg !90
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !91 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call arm_aapcs_vfpcc void @bsort_init() #1, !dbg !92
  call arm_aapcs_vfpcc void @bsort_main() #1, !dbg !93
  %call = call arm_aapcs_vfpcc i32 @bsort_return() #1, !dbg !94
  ret i32 %call, !dbg !95
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/bsort/bsort.c", directory: "/workspaces/llvmta/testcases/tmp.ncvcRlIRsF", checksumkind: CSK_MD5, checksum: "22bdadf7e534bd78c02410801317c4e1")
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
!12 = distinct !DISubprogram(name: "bsort_Initialize", scope: !13, file: !13, line: 51, type: !14, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "batchtest/bsort/bsort.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "22bdadf7e534bd78c02410801317c4e1")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 56, column: 15, scope: !12)
!17 = !DILocation(line: 56, column: 9, scope: !12)
!18 = !DILocation(line: 56, column: 20, scope: !12)
!19 = !DILocation(line: 56, column: 26, scope: !12)
!20 = !DILocation(line: 56, column: 3, scope: !12)
!21 = !DILocation(line: 57, column: 24, scope: !12)
!22 = !DILocation(line: 57, column: 30, scope: !12)
!23 = !DILocation(line: 57, column: 36, scope: !12)
!24 = !DILocation(line: 57, column: 5, scope: !12)
!25 = !DILocation(line: 57, column: 12, scope: !12)
!26 = !DILocation(line: 57, column: 20, scope: !12)
!27 = !DILocation(line: 56, column: 46, scope: !12)
!28 = distinct !{!28, !20, !29, !30}
!29 = !DILocation(line: 57, column: 39, scope: !12)
!30 = !{!"llvm.loop.mustprogress"}
!31 = !DILocation(line: 59, column: 3, scope: !12)
!32 = distinct !DISubprogram(name: "bsort_init", scope: !13, file: !13, line: 63, type: !14, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!33 = !DILocation(line: 65, column: 3, scope: !32)
!34 = !DILocation(line: 66, column: 1, scope: !32)
!35 = distinct !DISubprogram(name: "bsort_return", scope: !13, file: !13, line: 69, type: !14, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!36 = !DILocation(line: 71, column: 7, scope: !35)
!37 = !DILocation(line: 75, column: 15, scope: !35)
!38 = !DILocation(line: 75, column: 9, scope: !35)
!39 = !DILocation(line: 75, column: 20, scope: !35)
!40 = !DILocation(line: 75, column: 26, scope: !35)
!41 = !DILocation(line: 75, column: 3, scope: !35)
!42 = !DILocation(line: 77, column: 14, scope: !35)
!43 = !DILocation(line: 77, column: 21, scope: !35)
!44 = !DILocation(line: 0, scope: !35)
!45 = !DILocation(line: 77, column: 12, scope: !35)
!46 = !DILocation(line: 77, column: 5, scope: !35)
!47 = !DILocation(line: 75, column: 50, scope: !35)
!48 = distinct !{!48, !41, !49, !30}
!49 = !DILocation(line: 77, column: 28, scope: !35)
!50 = !DILocation(line: 79, column: 14, scope: !35)
!51 = !DILocation(line: 79, column: 12, scope: !35)
!52 = !DILocation(line: 79, column: 3, scope: !35)
!53 = distinct !DISubprogram(name: "bsort_BubbleSort", scope: !13, file: !13, line: 89, type: !14, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!54 = !DILocation(line: 91, column: 7, scope: !53)
!55 = !DILocation(line: 95, column: 11, scope: !53)
!56 = !DILocation(line: 95, column: 9, scope: !53)
!57 = !DILocation(line: 95, column: 16, scope: !53)
!58 = !DILocation(line: 95, column: 18, scope: !53)
!59 = !DILocation(line: 95, column: 3, scope: !53)
!60 = !DILocation(line: 96, column: 12, scope: !53)
!61 = !DILocation(line: 98, column: 17, scope: !53)
!62 = !DILocation(line: 98, column: 11, scope: !53)
!63 = !DILocation(line: 98, column: 22, scope: !53)
!64 = !DILocation(line: 98, column: 28, scope: !53)
!65 = !DILocation(line: 98, column: 5, scope: !53)
!66 = !DILocation(line: 102, column: 16, scope: !53)
!67 = !DILocation(line: 102, column: 23, scope: !53)
!68 = !DILocation(line: 102, column: 14, scope: !53)
!69 = !DILocation(line: 103, column: 26, scope: !53)
!70 = !DILocation(line: 103, column: 33, scope: !53)
!71 = !DILocation(line: 103, column: 39, scope: !53)
!72 = !DILocation(line: 103, column: 9, scope: !53)
!73 = !DILocation(line: 103, column: 16, scope: !53)
!74 = !DILocation(line: 103, column: 24, scope: !53)
!75 = !DILocation(line: 104, column: 30, scope: !53)
!76 = !DILocation(line: 104, column: 9, scope: !53)
!77 = !DILocation(line: 104, column: 16, scope: !53)
!78 = !DILocation(line: 104, column: 22, scope: !53)
!79 = !DILocation(line: 104, column: 28, scope: !53)
!80 = !DILocation(line: 105, column: 16, scope: !53)
!81 = !DILocation(line: 107, column: 5, scope: !53)
!82 = !DILocation(line: 98, column: 52, scope: !53)
!83 = distinct !{!83, !65, !81, !30}
!84 = !DILocation(line: 111, column: 3, scope: !53)
!85 = !DILocation(line: 95, column: 38, scope: !53)
!86 = distinct !{!86, !59, !84, !30}
!87 = !DILocation(line: 113, column: 3, scope: !53)
!88 = distinct !DISubprogram(name: "bsort_main", scope: !13, file: !13, line: 117, type: !14, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!89 = !DILocation(line: 119, column: 3, scope: !88)
!90 = !DILocation(line: 120, column: 1, scope: !88)
!91 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 127, type: !14, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!92 = !DILocation(line: 129, column: 3, scope: !91)
!93 = !DILocation(line: 130, column: 3, scope: !91)
!94 = !DILocation(line: 132, column: 10, scope: !91)
!95 = !DILocation(line: 132, column: 3, scope: !91)
