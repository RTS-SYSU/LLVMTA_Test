; ModuleID = '/workspaces/llvmta/testcases/batchtest/bs/bs.c'
source_filename = "/workspaces/llvmta/testcases/batchtest/bs/bs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.DATA = type { i32, i32 }

@data = dso_local global [15 x %struct.DATA] [%struct.DATA { i32 1, i32 100 }, %struct.DATA { i32 5, i32 200 }, %struct.DATA { i32 6, i32 300 }, %struct.DATA { i32 7, i32 700 }, %struct.DATA { i32 8, i32 900 }, %struct.DATA { i32 9, i32 250 }, %struct.DATA { i32 10, i32 400 }, %struct.DATA { i32 11, i32 600 }, %struct.DATA { i32 12, i32 800 }, %struct.DATA { i32 13, i32 1500 }, %struct.DATA { i32 14, i32 1200 }, %struct.DATA { i32 15, i32 110 }, %struct.DATA { i32 16, i32 140 }, %struct.DATA { i32 17, i32 133 }, %struct.DATA { i32 18, i32 10 }], align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !12 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call arm_aapcs_vfpcc i32 @binary_search(i32 noundef 8) #1, !dbg !16
  ret i32 %call, !dbg !17
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binary_search(i32 noundef %x) #0 !dbg !18 {
entry:
  %x.addr = alloca i32, align 4
  %fvalue = alloca i32, align 4
  %mid = alloca i32, align 4
  %up = alloca i32, align 4
  %low = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 0, i32* %low, align 4, !dbg !19
  store i32 14, i32* %up, align 4, !dbg !20
  store i32 0, i32* %fvalue, align 4, !dbg !21
  br label %while.cond, !dbg !22

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %low, align 4, !dbg !23
  %1 = load i32, i32* %up, align 4, !dbg !24
  %cmp = icmp sle i32 %0, %1, !dbg !25
  br i1 %cmp, label %while.body, label %while.end, !dbg !22

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %low, align 4, !dbg !26
  %3 = load i32, i32* %up, align 4, !dbg !27
  %add = add nsw i32 %2, %3, !dbg !28
  %shr = ashr i32 %add, 1, !dbg !29
  store i32 %shr, i32* %mid, align 4, !dbg !30
  %4 = load i32, i32* %mid, align 4, !dbg !31
  %sub = sub nsw i32 %4, 1, !dbg !32
  store i32 %sub, i32* %up, align 4, !dbg !33
  br label %while.cond, !dbg !22, !llvm.loop !34

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %fvalue, align 4, !dbg !37
  ret i32 %5, !dbg !38
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/bs/bs.c", directory: "/workspaces/llvmta/testcases/tmp.J31bulgsIc", checksumkind: CSK_MD5, checksum: "397084cb5459d39a0e31b94ef2938cc6")
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
!12 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 59, type: !14, scopeLine: 59, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "batchtest/bs/bs.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "397084cb5459d39a0e31b94ef2938cc6")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 59, column: 21, scope: !12)
!17 = !DILocation(line: 59, column: 14, scope: !12)
!18 = distinct !DISubprogram(name: "binary_search", scope: !13, file: !13, line: 61, type: !14, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!19 = !DILocation(line: 64, column: 7, scope: !18)
!20 = !DILocation(line: 65, column: 6, scope: !18)
!21 = !DILocation(line: 66, column: 10, scope: !18)
!22 = !DILocation(line: 67, column: 3, scope: !18)
!23 = !DILocation(line: 67, column: 10, scope: !18)
!24 = !DILocation(line: 67, column: 17, scope: !18)
!25 = !DILocation(line: 67, column: 14, scope: !18)
!26 = !DILocation(line: 68, column: 12, scope: !18)
!27 = !DILocation(line: 68, column: 18, scope: !18)
!28 = !DILocation(line: 68, column: 16, scope: !18)
!29 = !DILocation(line: 68, column: 22, scope: !18)
!30 = !DILocation(line: 68, column: 9, scope: !18)
!31 = !DILocation(line: 69, column: 10, scope: !18)
!32 = !DILocation(line: 69, column: 14, scope: !18)
!33 = !DILocation(line: 69, column: 8, scope: !18)
!34 = distinct !{!34, !22, !35, !36}
!35 = !DILocation(line: 70, column: 3, scope: !18)
!36 = !{!"llvm.loop.mustprogress"}
!37 = !DILocation(line: 71, column: 10, scope: !18)
!38 = !DILocation(line: 71, column: 3, scope: !18)
