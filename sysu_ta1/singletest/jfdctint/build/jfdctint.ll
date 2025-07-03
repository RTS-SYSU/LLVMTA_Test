; ModuleID = '/workspaces/llvmta/testcases/batchtest/jfdctint/jfdctint.c'
source_filename = "/workspaces/llvmta/testcases/batchtest/jfdctint/jfdctint.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@jfdctint_CHECKSUM = dso_local constant i32 1668124, align 4
@jfdctint_data = dso_local global [64 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @jfdctint_init() #0 !dbg !12 {
entry:
  %i = alloca i32, align 4
  %seed = alloca i32, align 4
  store i32 1, i32* %seed, align 4, !dbg !16
  store i32 0, i32* %i, align 4, !dbg !17
  br label %for.cond, !dbg !18

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !19
  %cmp = icmp slt i32 %0, 16, !dbg !20
  br i1 %cmp, label %for.body, label %for.end, !dbg !21

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %seed, align 4, !dbg !22
  %mul = mul nsw i32 %1, 133, !dbg !23
  %add = add nsw i32 %mul, 81, !dbg !24
  %rem = srem i32 %add, 65535, !dbg !25
  store i32 %rem, i32* %seed, align 4, !dbg !26
  %2 = load i32, i32* %seed, align 4, !dbg !27
  %3 = load i32, i32* %i, align 4, !dbg !28
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* @jfdctint_data, i32 0, i32 %3, !dbg !29
  store i32 %2, i32* %arrayidx, align 4, !dbg !30
  br label %for.inc, !dbg !31

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !32
  %inc = add nsw i32 %4, 1, !dbg !32
  store i32 %inc, i32* %i, align 4, !dbg !32
  br label %for.cond, !dbg !21, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  ret void, !dbg !35
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @jfdctint_return() #0 !dbg !36 {
entry:
  %checksum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %checksum, align 4, !dbg !37
  store i32 0, i32* %i, align 4, !dbg !38
  br label %for.cond, !dbg !39

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !40
  %cmp = icmp slt i32 %0, 16, !dbg !41
  br i1 %cmp, label %for.body, label %for.end, !dbg !42

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !43
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* @jfdctint_data, i32 0, i32 %1, !dbg !44
  %2 = load i32, i32* %arrayidx, align 4, !dbg !44
  %3 = load i32, i32* %checksum, align 4, !dbg !45
  %add = add nsw i32 %3, %2, !dbg !45
  store i32 %add, i32* %checksum, align 4, !dbg !45
  br label %for.inc, !dbg !46

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !47
  %inc = add nsw i32 %4, 1, !dbg !47
  store i32 %inc, i32* %i, align 4, !dbg !47
  br label %for.cond, !dbg !42, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %checksum, align 4, !dbg !50
  %cmp1 = icmp eq i32 %5, 1668124, !dbg !51
  %6 = zext i1 %cmp1 to i64, !dbg !52
  %cond = select i1 %cmp1, i32 0, i32 -1, !dbg !52
  ret i32 %cond, !dbg !53
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @jfdctint_jpeg_fdct_islow() #0 !dbg !54 {
entry:
  %tmp0 = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %z1 = alloca i32, align 4
  %z2 = alloca i32, align 4
  %z3 = alloca i32, align 4
  %z4 = alloca i32, align 4
  %z5 = alloca i32, align 4
  %dataptr = alloca i32*, align 4
  %ctr = alloca i32, align 4
  store i32* getelementptr inbounds ([64 x i32], [64 x i32]* @jfdctint_data, i32 0, i32 0), i32** %dataptr, align 4, !dbg !55
  store i32 3, i32* %ctr, align 4, !dbg !56
  br label %for.cond, !dbg !57

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %ctr, align 4, !dbg !58
  %cmp = icmp sge i32 %0, 0, !dbg !59
  br i1 %cmp, label %for.body, label %for.end, !dbg !60

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %dataptr, align 4, !dbg !61
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 0, !dbg !61
  %2 = load i32, i32* %arrayidx, align 4, !dbg !61
  %3 = load i32*, i32** %dataptr, align 4, !dbg !62
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i32 7, !dbg !62
  %4 = load i32, i32* %arrayidx1, align 4, !dbg !62
  %add = add nsw i32 %2, %4, !dbg !63
  store i32 %add, i32* %tmp0, align 4, !dbg !64
  %5 = load i32*, i32** %dataptr, align 4, !dbg !65
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i32 0, !dbg !65
  %6 = load i32, i32* %arrayidx2, align 4, !dbg !65
  %7 = load i32*, i32** %dataptr, align 4, !dbg !66
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i32 7, !dbg !66
  %8 = load i32, i32* %arrayidx3, align 4, !dbg !66
  %sub = sub nsw i32 %6, %8, !dbg !67
  store i32 %sub, i32* %tmp7, align 4, !dbg !68
  %9 = load i32*, i32** %dataptr, align 4, !dbg !69
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i32 1, !dbg !69
  %10 = load i32, i32* %arrayidx4, align 4, !dbg !69
  %11 = load i32*, i32** %dataptr, align 4, !dbg !70
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i32 6, !dbg !70
  %12 = load i32, i32* %arrayidx5, align 4, !dbg !70
  %add6 = add nsw i32 %10, %12, !dbg !71
  store i32 %add6, i32* %tmp1, align 4, !dbg !72
  %13 = load i32*, i32** %dataptr, align 4, !dbg !73
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i32 1, !dbg !73
  %14 = load i32, i32* %arrayidx7, align 4, !dbg !73
  %15 = load i32*, i32** %dataptr, align 4, !dbg !74
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i32 6, !dbg !74
  %16 = load i32, i32* %arrayidx8, align 4, !dbg !74
  %sub9 = sub nsw i32 %14, %16, !dbg !75
  store i32 %sub9, i32* %tmp6, align 4, !dbg !76
  %17 = load i32*, i32** %dataptr, align 4, !dbg !77
  %arrayidx10 = getelementptr inbounds i32, i32* %17, i32 2, !dbg !77
  %18 = load i32, i32* %arrayidx10, align 4, !dbg !77
  %19 = load i32*, i32** %dataptr, align 4, !dbg !78
  %arrayidx11 = getelementptr inbounds i32, i32* %19, i32 5, !dbg !78
  %20 = load i32, i32* %arrayidx11, align 4, !dbg !78
  %add12 = add nsw i32 %18, %20, !dbg !79
  store i32 %add12, i32* %tmp2, align 4, !dbg !80
  %21 = load i32*, i32** %dataptr, align 4, !dbg !81
  %arrayidx13 = getelementptr inbounds i32, i32* %21, i32 2, !dbg !81
  %22 = load i32, i32* %arrayidx13, align 4, !dbg !81
  %23 = load i32*, i32** %dataptr, align 4, !dbg !82
  %arrayidx14 = getelementptr inbounds i32, i32* %23, i32 5, !dbg !82
  %24 = load i32, i32* %arrayidx14, align 4, !dbg !82
  %sub15 = sub nsw i32 %22, %24, !dbg !83
  store i32 %sub15, i32* %tmp5, align 4, !dbg !84
  %25 = load i32*, i32** %dataptr, align 4, !dbg !85
  %arrayidx16 = getelementptr inbounds i32, i32* %25, i32 3, !dbg !85
  %26 = load i32, i32* %arrayidx16, align 4, !dbg !85
  %27 = load i32*, i32** %dataptr, align 4, !dbg !86
  %arrayidx17 = getelementptr inbounds i32, i32* %27, i32 4, !dbg !86
  %28 = load i32, i32* %arrayidx17, align 4, !dbg !86
  %add18 = add nsw i32 %26, %28, !dbg !87
  store i32 %add18, i32* %tmp3, align 4, !dbg !88
  %29 = load i32*, i32** %dataptr, align 4, !dbg !89
  %arrayidx19 = getelementptr inbounds i32, i32* %29, i32 3, !dbg !89
  %30 = load i32, i32* %arrayidx19, align 4, !dbg !89
  %31 = load i32*, i32** %dataptr, align 4, !dbg !90
  %arrayidx20 = getelementptr inbounds i32, i32* %31, i32 4, !dbg !90
  %32 = load i32, i32* %arrayidx20, align 4, !dbg !90
  %sub21 = sub nsw i32 %30, %32, !dbg !91
  store i32 %sub21, i32* %tmp4, align 4, !dbg !92
  %33 = load i32, i32* %tmp0, align 4, !dbg !93
  %34 = load i32, i32* %tmp3, align 4, !dbg !94
  %add22 = add nsw i32 %33, %34, !dbg !95
  store i32 %add22, i32* %tmp10, align 4, !dbg !96
  %35 = load i32, i32* %tmp0, align 4, !dbg !97
  %36 = load i32, i32* %tmp3, align 4, !dbg !98
  %sub23 = sub nsw i32 %35, %36, !dbg !99
  store i32 %sub23, i32* %tmp13, align 4, !dbg !100
  %37 = load i32, i32* %tmp1, align 4, !dbg !101
  %38 = load i32, i32* %tmp2, align 4, !dbg !102
  %add24 = add nsw i32 %37, %38, !dbg !103
  store i32 %add24, i32* %tmp11, align 4, !dbg !104
  %39 = load i32, i32* %tmp1, align 4, !dbg !105
  %40 = load i32, i32* %tmp2, align 4, !dbg !106
  %sub25 = sub nsw i32 %39, %40, !dbg !107
  store i32 %sub25, i32* %tmp12, align 4, !dbg !108
  %41 = load i32, i32* %tmp10, align 4, !dbg !109
  %42 = load i32, i32* %tmp11, align 4, !dbg !110
  %add26 = add nsw i32 %41, %42, !dbg !111
  %shl = shl i32 %add26, 2, !dbg !112
  %43 = load i32*, i32** %dataptr, align 4, !dbg !113
  %arrayidx27 = getelementptr inbounds i32, i32* %43, i32 0, !dbg !113
  store i32 %shl, i32* %arrayidx27, align 4, !dbg !114
  %44 = load i32, i32* %tmp10, align 4, !dbg !115
  %45 = load i32, i32* %tmp11, align 4, !dbg !116
  %sub28 = sub nsw i32 %44, %45, !dbg !117
  %shl29 = shl i32 %sub28, 2, !dbg !118
  %46 = load i32*, i32** %dataptr, align 4, !dbg !119
  %arrayidx30 = getelementptr inbounds i32, i32* %46, i32 4, !dbg !119
  store i32 %shl29, i32* %arrayidx30, align 4, !dbg !120
  %47 = load i32, i32* %tmp12, align 4, !dbg !121
  %48 = load i32, i32* %tmp13, align 4, !dbg !122
  %add31 = add nsw i32 %47, %48, !dbg !123
  %mul = mul nsw i32 %add31, 4433, !dbg !124
  store i32 %mul, i32* %z1, align 4, !dbg !125
  %49 = load i32, i32* %z1, align 4, !dbg !126
  %50 = load i32, i32* %tmp13, align 4, !dbg !126
  %mul32 = mul nsw i32 %50, 6270, !dbg !126
  %add33 = add nsw i32 %49, %mul32, !dbg !126
  %add34 = add nsw i32 %add33, 1024, !dbg !126
  %shr = ashr i32 %add34, 11, !dbg !126
  %51 = load i32*, i32** %dataptr, align 4, !dbg !127
  %arrayidx35 = getelementptr inbounds i32, i32* %51, i32 2, !dbg !127
  store i32 %shr, i32* %arrayidx35, align 4, !dbg !128
  %52 = load i32, i32* %z1, align 4, !dbg !129
  %53 = load i32, i32* %tmp12, align 4, !dbg !129
  %mul36 = mul nsw i32 %53, -15137, !dbg !129
  %add37 = add nsw i32 %52, %mul36, !dbg !129
  %add38 = add nsw i32 %add37, 1024, !dbg !129
  %shr39 = ashr i32 %add38, 11, !dbg !129
  %54 = load i32*, i32** %dataptr, align 4, !dbg !130
  %arrayidx40 = getelementptr inbounds i32, i32* %54, i32 6, !dbg !130
  store i32 %shr39, i32* %arrayidx40, align 4, !dbg !131
  %55 = load i32, i32* %tmp4, align 4, !dbg !132
  %56 = load i32, i32* %tmp7, align 4, !dbg !133
  %add41 = add nsw i32 %55, %56, !dbg !134
  store i32 %add41, i32* %z1, align 4, !dbg !135
  %57 = load i32, i32* %tmp5, align 4, !dbg !136
  %58 = load i32, i32* %tmp6, align 4, !dbg !137
  %add42 = add nsw i32 %57, %58, !dbg !138
  store i32 %add42, i32* %z2, align 4, !dbg !139
  %59 = load i32, i32* %tmp4, align 4, !dbg !140
  %60 = load i32, i32* %tmp6, align 4, !dbg !141
  %add43 = add nsw i32 %59, %60, !dbg !142
  store i32 %add43, i32* %z3, align 4, !dbg !143
  %61 = load i32, i32* %tmp5, align 4, !dbg !144
  %62 = load i32, i32* %tmp7, align 4, !dbg !145
  %add44 = add nsw i32 %61, %62, !dbg !146
  store i32 %add44, i32* %z4, align 4, !dbg !147
  %63 = load i32, i32* %z3, align 4, !dbg !148
  %64 = load i32, i32* %z4, align 4, !dbg !149
  %add45 = add nsw i32 %63, %64, !dbg !150
  %mul46 = mul nsw i32 %add45, 9633, !dbg !151
  store i32 %mul46, i32* %z5, align 4, !dbg !152
  %65 = load i32, i32* %tmp4, align 4, !dbg !153
  %mul47 = mul nsw i32 %65, 2446, !dbg !154
  store i32 %mul47, i32* %tmp4, align 4, !dbg !155
  %66 = load i32, i32* %tmp5, align 4, !dbg !156
  %mul48 = mul nsw i32 %66, 16819, !dbg !157
  store i32 %mul48, i32* %tmp5, align 4, !dbg !158
  %67 = load i32, i32* %tmp6, align 4, !dbg !159
  %mul49 = mul nsw i32 %67, 25172, !dbg !160
  store i32 %mul49, i32* %tmp6, align 4, !dbg !161
  %68 = load i32, i32* %tmp7, align 4, !dbg !162
  %mul50 = mul nsw i32 %68, 12299, !dbg !163
  store i32 %mul50, i32* %tmp7, align 4, !dbg !164
  %69 = load i32, i32* %z1, align 4, !dbg !165
  %mul51 = mul nsw i32 %69, -7373, !dbg !166
  store i32 %mul51, i32* %z1, align 4, !dbg !167
  %70 = load i32, i32* %z2, align 4, !dbg !168
  %mul52 = mul nsw i32 %70, -20995, !dbg !169
  store i32 %mul52, i32* %z2, align 4, !dbg !170
  %71 = load i32, i32* %z3, align 4, !dbg !171
  %mul53 = mul nsw i32 %71, -16069, !dbg !172
  store i32 %mul53, i32* %z3, align 4, !dbg !173
  %72 = load i32, i32* %z4, align 4, !dbg !174
  %mul54 = mul nsw i32 %72, -3196, !dbg !175
  store i32 %mul54, i32* %z4, align 4, !dbg !176
  %73 = load i32, i32* %z5, align 4, !dbg !177
  %74 = load i32, i32* %z3, align 4, !dbg !178
  %add55 = add nsw i32 %74, %73, !dbg !178
  store i32 %add55, i32* %z3, align 4, !dbg !178
  %75 = load i32, i32* %z5, align 4, !dbg !179
  %76 = load i32, i32* %z4, align 4, !dbg !180
  %add56 = add nsw i32 %76, %75, !dbg !180
  store i32 %add56, i32* %z4, align 4, !dbg !180
  %77 = load i32, i32* %tmp4, align 4, !dbg !181
  %78 = load i32, i32* %z1, align 4, !dbg !181
  %add57 = add nsw i32 %77, %78, !dbg !181
  %79 = load i32, i32* %z3, align 4, !dbg !181
  %add58 = add nsw i32 %add57, %79, !dbg !181
  %add59 = add nsw i32 %add58, 1024, !dbg !181
  %shr60 = ashr i32 %add59, 11, !dbg !181
  %80 = load i32*, i32** %dataptr, align 4, !dbg !182
  %arrayidx61 = getelementptr inbounds i32, i32* %80, i32 7, !dbg !182
  store i32 %shr60, i32* %arrayidx61, align 4, !dbg !183
  %81 = load i32, i32* %tmp5, align 4, !dbg !184
  %82 = load i32, i32* %z2, align 4, !dbg !184
  %add62 = add nsw i32 %81, %82, !dbg !184
  %83 = load i32, i32* %z4, align 4, !dbg !184
  %add63 = add nsw i32 %add62, %83, !dbg !184
  %add64 = add nsw i32 %add63, 1024, !dbg !184
  %shr65 = ashr i32 %add64, 11, !dbg !184
  %84 = load i32*, i32** %dataptr, align 4, !dbg !185
  %arrayidx66 = getelementptr inbounds i32, i32* %84, i32 5, !dbg !185
  store i32 %shr65, i32* %arrayidx66, align 4, !dbg !186
  %85 = load i32, i32* %tmp6, align 4, !dbg !187
  %86 = load i32, i32* %z2, align 4, !dbg !187
  %add67 = add nsw i32 %85, %86, !dbg !187
  %87 = load i32, i32* %z3, align 4, !dbg !187
  %add68 = add nsw i32 %add67, %87, !dbg !187
  %add69 = add nsw i32 %add68, 1024, !dbg !187
  %shr70 = ashr i32 %add69, 11, !dbg !187
  %88 = load i32*, i32** %dataptr, align 4, !dbg !188
  %arrayidx71 = getelementptr inbounds i32, i32* %88, i32 3, !dbg !188
  store i32 %shr70, i32* %arrayidx71, align 4, !dbg !189
  %89 = load i32, i32* %tmp7, align 4, !dbg !190
  %90 = load i32, i32* %z1, align 4, !dbg !190
  %add72 = add nsw i32 %89, %90, !dbg !190
  %91 = load i32, i32* %z4, align 4, !dbg !190
  %add73 = add nsw i32 %add72, %91, !dbg !190
  %add74 = add nsw i32 %add73, 1024, !dbg !190
  %shr75 = ashr i32 %add74, 11, !dbg !190
  %92 = load i32*, i32** %dataptr, align 4, !dbg !191
  %arrayidx76 = getelementptr inbounds i32, i32* %92, i32 1, !dbg !191
  store i32 %shr75, i32* %arrayidx76, align 4, !dbg !192
  %93 = load i32*, i32** %dataptr, align 4, !dbg !193
  %add.ptr = getelementptr inbounds i32, i32* %93, i32 4, !dbg !193
  store i32* %add.ptr, i32** %dataptr, align 4, !dbg !193
  br label %for.inc, !dbg !194

for.inc:                                          ; preds = %for.body
  %94 = load i32, i32* %ctr, align 4, !dbg !195
  %dec = add nsw i32 %94, -1, !dbg !195
  store i32 %dec, i32* %ctr, align 4, !dbg !195
  br label %for.cond, !dbg !60, !llvm.loop !196

for.end:                                          ; preds = %for.cond
  store i32* getelementptr inbounds ([64 x i32], [64 x i32]* @jfdctint_data, i32 0, i32 0), i32** %dataptr, align 4, !dbg !197
  store i32 3, i32* %ctr, align 4, !dbg !198
  br label %for.cond77, !dbg !199

for.cond77:                                       ; preds = %for.inc164, %for.end
  %95 = load i32, i32* %ctr, align 4, !dbg !200
  %cmp78 = icmp sge i32 %95, 0, !dbg !201
  br i1 %cmp78, label %for.body79, label %for.end166, !dbg !202

for.body79:                                       ; preds = %for.cond77
  %96 = load i32*, i32** %dataptr, align 4, !dbg !203
  %arrayidx80 = getelementptr inbounds i32, i32* %96, i32 0, !dbg !203
  %97 = load i32, i32* %arrayidx80, align 4, !dbg !203
  %98 = load i32*, i32** %dataptr, align 4, !dbg !204
  %arrayidx81 = getelementptr inbounds i32, i32* %98, i32 28, !dbg !204
  %99 = load i32, i32* %arrayidx81, align 4, !dbg !204
  %add82 = add nsw i32 %97, %99, !dbg !205
  store i32 %add82, i32* %tmp0, align 4, !dbg !206
  %100 = load i32*, i32** %dataptr, align 4, !dbg !207
  %arrayidx83 = getelementptr inbounds i32, i32* %100, i32 0, !dbg !207
  %101 = load i32, i32* %arrayidx83, align 4, !dbg !207
  %102 = load i32*, i32** %dataptr, align 4, !dbg !208
  %arrayidx84 = getelementptr inbounds i32, i32* %102, i32 28, !dbg !208
  %103 = load i32, i32* %arrayidx84, align 4, !dbg !208
  %sub85 = sub nsw i32 %101, %103, !dbg !209
  store i32 %sub85, i32* %tmp7, align 4, !dbg !210
  %104 = load i32*, i32** %dataptr, align 4, !dbg !211
  %arrayidx86 = getelementptr inbounds i32, i32* %104, i32 4, !dbg !211
  %105 = load i32, i32* %arrayidx86, align 4, !dbg !211
  %106 = load i32*, i32** %dataptr, align 4, !dbg !212
  %arrayidx87 = getelementptr inbounds i32, i32* %106, i32 24, !dbg !212
  %107 = load i32, i32* %arrayidx87, align 4, !dbg !212
  %add88 = add nsw i32 %105, %107, !dbg !213
  store i32 %add88, i32* %tmp1, align 4, !dbg !214
  %108 = load i32*, i32** %dataptr, align 4, !dbg !215
  %arrayidx89 = getelementptr inbounds i32, i32* %108, i32 4, !dbg !215
  %109 = load i32, i32* %arrayidx89, align 4, !dbg !215
  %110 = load i32*, i32** %dataptr, align 4, !dbg !216
  %arrayidx90 = getelementptr inbounds i32, i32* %110, i32 24, !dbg !216
  %111 = load i32, i32* %arrayidx90, align 4, !dbg !216
  %sub91 = sub nsw i32 %109, %111, !dbg !217
  store i32 %sub91, i32* %tmp6, align 4, !dbg !218
  %112 = load i32*, i32** %dataptr, align 4, !dbg !219
  %arrayidx92 = getelementptr inbounds i32, i32* %112, i32 8, !dbg !219
  %113 = load i32, i32* %arrayidx92, align 4, !dbg !219
  %114 = load i32*, i32** %dataptr, align 4, !dbg !220
  %arrayidx93 = getelementptr inbounds i32, i32* %114, i32 20, !dbg !220
  %115 = load i32, i32* %arrayidx93, align 4, !dbg !220
  %add94 = add nsw i32 %113, %115, !dbg !221
  store i32 %add94, i32* %tmp2, align 4, !dbg !222
  %116 = load i32*, i32** %dataptr, align 4, !dbg !223
  %arrayidx95 = getelementptr inbounds i32, i32* %116, i32 8, !dbg !223
  %117 = load i32, i32* %arrayidx95, align 4, !dbg !223
  %118 = load i32*, i32** %dataptr, align 4, !dbg !224
  %arrayidx96 = getelementptr inbounds i32, i32* %118, i32 20, !dbg !224
  %119 = load i32, i32* %arrayidx96, align 4, !dbg !224
  %sub97 = sub nsw i32 %117, %119, !dbg !225
  store i32 %sub97, i32* %tmp5, align 4, !dbg !226
  %120 = load i32*, i32** %dataptr, align 4, !dbg !227
  %arrayidx98 = getelementptr inbounds i32, i32* %120, i32 12, !dbg !227
  %121 = load i32, i32* %arrayidx98, align 4, !dbg !227
  %122 = load i32*, i32** %dataptr, align 4, !dbg !228
  %arrayidx99 = getelementptr inbounds i32, i32* %122, i32 16, !dbg !228
  %123 = load i32, i32* %arrayidx99, align 4, !dbg !228
  %add100 = add nsw i32 %121, %123, !dbg !229
  store i32 %add100, i32* %tmp3, align 4, !dbg !230
  %124 = load i32*, i32** %dataptr, align 4, !dbg !231
  %arrayidx101 = getelementptr inbounds i32, i32* %124, i32 12, !dbg !231
  %125 = load i32, i32* %arrayidx101, align 4, !dbg !231
  %126 = load i32*, i32** %dataptr, align 4, !dbg !232
  %arrayidx102 = getelementptr inbounds i32, i32* %126, i32 16, !dbg !232
  %127 = load i32, i32* %arrayidx102, align 4, !dbg !232
  %sub103 = sub nsw i32 %125, %127, !dbg !233
  store i32 %sub103, i32* %tmp4, align 4, !dbg !234
  %128 = load i32, i32* %tmp0, align 4, !dbg !235
  %129 = load i32, i32* %tmp3, align 4, !dbg !236
  %add104 = add nsw i32 %128, %129, !dbg !237
  store i32 %add104, i32* %tmp10, align 4, !dbg !238
  %130 = load i32, i32* %tmp0, align 4, !dbg !239
  %131 = load i32, i32* %tmp3, align 4, !dbg !240
  %sub105 = sub nsw i32 %130, %131, !dbg !241
  store i32 %sub105, i32* %tmp13, align 4, !dbg !242
  %132 = load i32, i32* %tmp1, align 4, !dbg !243
  %133 = load i32, i32* %tmp2, align 4, !dbg !244
  %add106 = add nsw i32 %132, %133, !dbg !245
  store i32 %add106, i32* %tmp11, align 4, !dbg !246
  %134 = load i32, i32* %tmp1, align 4, !dbg !247
  %135 = load i32, i32* %tmp2, align 4, !dbg !248
  %sub107 = sub nsw i32 %134, %135, !dbg !249
  store i32 %sub107, i32* %tmp12, align 4, !dbg !250
  %136 = load i32, i32* %tmp10, align 4, !dbg !251
  %137 = load i32, i32* %tmp11, align 4, !dbg !251
  %add108 = add nsw i32 %136, %137, !dbg !251
  %add109 = add nsw i32 %add108, 2, !dbg !251
  %shr110 = ashr i32 %add109, 2, !dbg !251
  %138 = load i32*, i32** %dataptr, align 4, !dbg !252
  %arrayidx111 = getelementptr inbounds i32, i32* %138, i32 0, !dbg !252
  store i32 %shr110, i32* %arrayidx111, align 4, !dbg !253
  %139 = load i32, i32* %tmp10, align 4, !dbg !254
  %140 = load i32, i32* %tmp11, align 4, !dbg !254
  %sub112 = sub nsw i32 %139, %140, !dbg !254
  %add113 = add nsw i32 %sub112, 2, !dbg !254
  %shr114 = ashr i32 %add113, 2, !dbg !254
  %141 = load i32*, i32** %dataptr, align 4, !dbg !255
  %arrayidx115 = getelementptr inbounds i32, i32* %141, i32 16, !dbg !255
  store i32 %shr114, i32* %arrayidx115, align 4, !dbg !256
  %142 = load i32, i32* %tmp12, align 4, !dbg !257
  %143 = load i32, i32* %tmp13, align 4, !dbg !258
  %add116 = add nsw i32 %142, %143, !dbg !259
  %mul117 = mul nsw i32 %add116, 4433, !dbg !260
  store i32 %mul117, i32* %z1, align 4, !dbg !261
  %144 = load i32, i32* %z1, align 4, !dbg !262
  %145 = load i32, i32* %tmp13, align 4, !dbg !262
  %mul118 = mul nsw i32 %145, 6270, !dbg !262
  %add119 = add nsw i32 %144, %mul118, !dbg !262
  %add120 = add nsw i32 %add119, 16384, !dbg !262
  %shr121 = ashr i32 %add120, 15, !dbg !262
  %146 = load i32*, i32** %dataptr, align 4, !dbg !263
  %arrayidx122 = getelementptr inbounds i32, i32* %146, i32 8, !dbg !263
  store i32 %shr121, i32* %arrayidx122, align 4, !dbg !264
  %147 = load i32, i32* %z1, align 4, !dbg !265
  %148 = load i32, i32* %tmp12, align 4, !dbg !265
  %mul123 = mul nsw i32 %148, -15137, !dbg !265
  %add124 = add nsw i32 %147, %mul123, !dbg !265
  %add125 = add nsw i32 %add124, 16384, !dbg !265
  %shr126 = ashr i32 %add125, 15, !dbg !265
  %149 = load i32*, i32** %dataptr, align 4, !dbg !266
  %arrayidx127 = getelementptr inbounds i32, i32* %149, i32 24, !dbg !266
  store i32 %shr126, i32* %arrayidx127, align 4, !dbg !267
  %150 = load i32, i32* %tmp4, align 4, !dbg !268
  %151 = load i32, i32* %tmp7, align 4, !dbg !269
  %add128 = add nsw i32 %150, %151, !dbg !270
  store i32 %add128, i32* %z1, align 4, !dbg !271
  %152 = load i32, i32* %tmp5, align 4, !dbg !272
  %153 = load i32, i32* %tmp6, align 4, !dbg !273
  %add129 = add nsw i32 %152, %153, !dbg !274
  store i32 %add129, i32* %z2, align 4, !dbg !275
  %154 = load i32, i32* %tmp4, align 4, !dbg !276
  %155 = load i32, i32* %tmp6, align 4, !dbg !277
  %add130 = add nsw i32 %154, %155, !dbg !278
  store i32 %add130, i32* %z3, align 4, !dbg !279
  %156 = load i32, i32* %tmp5, align 4, !dbg !280
  %157 = load i32, i32* %tmp7, align 4, !dbg !281
  %add131 = add nsw i32 %156, %157, !dbg !282
  store i32 %add131, i32* %z4, align 4, !dbg !283
  %158 = load i32, i32* %z3, align 4, !dbg !284
  %159 = load i32, i32* %z4, align 4, !dbg !285
  %add132 = add nsw i32 %158, %159, !dbg !286
  %mul133 = mul nsw i32 %add132, 9633, !dbg !287
  store i32 %mul133, i32* %z5, align 4, !dbg !288
  %160 = load i32, i32* %tmp4, align 4, !dbg !289
  %mul134 = mul nsw i32 %160, 2446, !dbg !290
  store i32 %mul134, i32* %tmp4, align 4, !dbg !291
  %161 = load i32, i32* %tmp5, align 4, !dbg !292
  %mul135 = mul nsw i32 %161, 16819, !dbg !293
  store i32 %mul135, i32* %tmp5, align 4, !dbg !294
  %162 = load i32, i32* %tmp6, align 4, !dbg !295
  %mul136 = mul nsw i32 %162, 25172, !dbg !296
  store i32 %mul136, i32* %tmp6, align 4, !dbg !297
  %163 = load i32, i32* %tmp7, align 4, !dbg !298
  %mul137 = mul nsw i32 %163, 12299, !dbg !299
  store i32 %mul137, i32* %tmp7, align 4, !dbg !300
  %164 = load i32, i32* %z1, align 4, !dbg !301
  %mul138 = mul nsw i32 %164, -7373, !dbg !302
  store i32 %mul138, i32* %z1, align 4, !dbg !303
  %165 = load i32, i32* %z2, align 4, !dbg !304
  %mul139 = mul nsw i32 %165, -20995, !dbg !305
  store i32 %mul139, i32* %z2, align 4, !dbg !306
  %166 = load i32, i32* %z3, align 4, !dbg !307
  %mul140 = mul nsw i32 %166, -16069, !dbg !308
  store i32 %mul140, i32* %z3, align 4, !dbg !309
  %167 = load i32, i32* %z4, align 4, !dbg !310
  %mul141 = mul nsw i32 %167, -3196, !dbg !311
  store i32 %mul141, i32* %z4, align 4, !dbg !312
  %168 = load i32, i32* %z5, align 4, !dbg !313
  %169 = load i32, i32* %z3, align 4, !dbg !314
  %add142 = add nsw i32 %169, %168, !dbg !314
  store i32 %add142, i32* %z3, align 4, !dbg !314
  %170 = load i32, i32* %z5, align 4, !dbg !315
  %171 = load i32, i32* %z4, align 4, !dbg !316
  %add143 = add nsw i32 %171, %170, !dbg !316
  store i32 %add143, i32* %z4, align 4, !dbg !316
  %172 = load i32, i32* %tmp4, align 4, !dbg !317
  %173 = load i32, i32* %z1, align 4, !dbg !317
  %add144 = add nsw i32 %172, %173, !dbg !317
  %174 = load i32, i32* %z3, align 4, !dbg !317
  %add145 = add nsw i32 %add144, %174, !dbg !317
  %add146 = add nsw i32 %add145, 16384, !dbg !317
  %shr147 = ashr i32 %add146, 15, !dbg !317
  %175 = load i32*, i32** %dataptr, align 4, !dbg !318
  %arrayidx148 = getelementptr inbounds i32, i32* %175, i32 28, !dbg !318
  store i32 %shr147, i32* %arrayidx148, align 4, !dbg !319
  %176 = load i32, i32* %tmp5, align 4, !dbg !320
  %177 = load i32, i32* %z2, align 4, !dbg !320
  %add149 = add nsw i32 %176, %177, !dbg !320
  %178 = load i32, i32* %z4, align 4, !dbg !320
  %add150 = add nsw i32 %add149, %178, !dbg !320
  %add151 = add nsw i32 %add150, 16384, !dbg !320
  %shr152 = ashr i32 %add151, 15, !dbg !320
  %179 = load i32*, i32** %dataptr, align 4, !dbg !321
  %arrayidx153 = getelementptr inbounds i32, i32* %179, i32 20, !dbg !321
  store i32 %shr152, i32* %arrayidx153, align 4, !dbg !322
  %180 = load i32, i32* %tmp6, align 4, !dbg !323
  %181 = load i32, i32* %z2, align 4, !dbg !323
  %add154 = add nsw i32 %180, %181, !dbg !323
  %182 = load i32, i32* %z3, align 4, !dbg !323
  %add155 = add nsw i32 %add154, %182, !dbg !323
  %add156 = add nsw i32 %add155, 16384, !dbg !323
  %shr157 = ashr i32 %add156, 15, !dbg !323
  %183 = load i32*, i32** %dataptr, align 4, !dbg !324
  %arrayidx158 = getelementptr inbounds i32, i32* %183, i32 12, !dbg !324
  store i32 %shr157, i32* %arrayidx158, align 4, !dbg !325
  %184 = load i32, i32* %tmp7, align 4, !dbg !326
  %185 = load i32, i32* %z1, align 4, !dbg !326
  %add159 = add nsw i32 %184, %185, !dbg !326
  %186 = load i32, i32* %z4, align 4, !dbg !326
  %add160 = add nsw i32 %add159, %186, !dbg !326
  %add161 = add nsw i32 %add160, 16384, !dbg !326
  %shr162 = ashr i32 %add161, 15, !dbg !326
  %187 = load i32*, i32** %dataptr, align 4, !dbg !327
  %arrayidx163 = getelementptr inbounds i32, i32* %187, i32 4, !dbg !327
  store i32 %shr162, i32* %arrayidx163, align 4, !dbg !328
  %188 = load i32*, i32** %dataptr, align 4, !dbg !329
  %incdec.ptr = getelementptr inbounds i32, i32* %188, i32 1, !dbg !329
  store i32* %incdec.ptr, i32** %dataptr, align 4, !dbg !329
  br label %for.inc164, !dbg !330

for.inc164:                                       ; preds = %for.body79
  %189 = load i32, i32* %ctr, align 4, !dbg !331
  %dec165 = add nsw i32 %189, -1, !dbg !331
  store i32 %dec165, i32* %ctr, align 4, !dbg !331
  br label %for.cond77, !dbg !202, !llvm.loop !332

for.end166:                                       ; preds = %for.cond77
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @jfdctint_main() #0 !dbg !334 {
entry:
  call arm_aapcs_vfpcc void @jfdctint_jpeg_fdct_islow() #1, !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !337 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call arm_aapcs_vfpcc void @jfdctint_init() #1, !dbg !338
  call arm_aapcs_vfpcc void @jfdctint_main() #1, !dbg !339
  %call = call arm_aapcs_vfpcc i32 @jfdctint_return() #1, !dbg !340
  ret i32 %call, !dbg !341
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/jfdctint/jfdctint.c", directory: "/workspaces/llvmta/testcases/tmp.tu6oMAn1oO", checksumkind: CSK_MD5, checksum: "8de07400b210a3d92aae20a0c0efc454")
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
!12 = distinct !DISubprogram(name: "jfdctint_init", scope: !13, file: !13, line: 144, type: !14, scopeLine: 145, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "batchtest/jfdctint/jfdctint.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "8de07400b210a3d92aae20a0c0efc454")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 150, column: 8, scope: !12)
!17 = !DILocation(line: 153, column: 11, scope: !12)
!18 = !DILocation(line: 153, column: 9, scope: !12)
!19 = !DILocation(line: 153, column: 16, scope: !12)
!20 = !DILocation(line: 153, column: 18, scope: !12)
!21 = !DILocation(line: 153, column: 3, scope: !12)
!22 = !DILocation(line: 154, column: 16, scope: !12)
!23 = !DILocation(line: 154, column: 21, scope: !12)
!24 = !DILocation(line: 154, column: 29, scope: !12)
!25 = !DILocation(line: 154, column: 36, scope: !12)
!26 = !DILocation(line: 154, column: 10, scope: !12)
!27 = !DILocation(line: 155, column: 26, scope: !12)
!28 = !DILocation(line: 155, column: 20, scope: !12)
!29 = !DILocation(line: 155, column: 5, scope: !12)
!30 = !DILocation(line: 155, column: 24, scope: !12)
!31 = !DILocation(line: 156, column: 3, scope: !12)
!32 = !DILocation(line: 153, column: 25, scope: !12)
!33 = distinct !{!33, !21, !31, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !DILocation(line: 158, column: 1, scope: !12)
!36 = distinct !DISubprogram(name: "jfdctint_return", scope: !13, file: !13, line: 161, type: !14, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!37 = !DILocation(line: 163, column: 7, scope: !36)
!38 = !DILocation(line: 166, column: 11, scope: !36)
!39 = !DILocation(line: 166, column: 9, scope: !36)
!40 = !DILocation(line: 166, column: 16, scope: !36)
!41 = !DILocation(line: 166, column: 18, scope: !36)
!42 = !DILocation(line: 166, column: 3, scope: !36)
!43 = !DILocation(line: 167, column: 32, scope: !36)
!44 = !DILocation(line: 167, column: 17, scope: !36)
!45 = !DILocation(line: 167, column: 14, scope: !36)
!46 = !DILocation(line: 167, column: 5, scope: !36)
!47 = !DILocation(line: 166, column: 24, scope: !36)
!48 = distinct !{!48, !42, !49, !34}
!49 = !DILocation(line: 167, column: 34, scope: !36)
!50 = !DILocation(line: 168, column: 14, scope: !36)
!51 = !DILocation(line: 168, column: 23, scope: !36)
!52 = !DILocation(line: 168, column: 12, scope: !36)
!53 = !DILocation(line: 168, column: 3, scope: !36)
!54 = distinct !DISubprogram(name: "jfdctint_jpeg_fdct_islow", scope: !13, file: !13, line: 176, type: !14, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!55 = !DILocation(line: 188, column: 11, scope: !54)
!56 = !DILocation(line: 190, column: 13, scope: !54)
!57 = !DILocation(line: 190, column: 9, scope: !54)
!58 = !DILocation(line: 190, column: 28, scope: !54)
!59 = !DILocation(line: 190, column: 32, scope: !54)
!60 = !DILocation(line: 190, column: 3, scope: !54)
!61 = !DILocation(line: 192, column: 12, scope: !54)
!62 = !DILocation(line: 192, column: 27, scope: !54)
!63 = !DILocation(line: 192, column: 25, scope: !54)
!64 = !DILocation(line: 192, column: 10, scope: !54)
!65 = !DILocation(line: 193, column: 12, scope: !54)
!66 = !DILocation(line: 193, column: 27, scope: !54)
!67 = !DILocation(line: 193, column: 25, scope: !54)
!68 = !DILocation(line: 193, column: 10, scope: !54)
!69 = !DILocation(line: 194, column: 12, scope: !54)
!70 = !DILocation(line: 194, column: 27, scope: !54)
!71 = !DILocation(line: 194, column: 25, scope: !54)
!72 = !DILocation(line: 194, column: 10, scope: !54)
!73 = !DILocation(line: 195, column: 12, scope: !54)
!74 = !DILocation(line: 195, column: 27, scope: !54)
!75 = !DILocation(line: 195, column: 25, scope: !54)
!76 = !DILocation(line: 195, column: 10, scope: !54)
!77 = !DILocation(line: 196, column: 12, scope: !54)
!78 = !DILocation(line: 196, column: 27, scope: !54)
!79 = !DILocation(line: 196, column: 25, scope: !54)
!80 = !DILocation(line: 196, column: 10, scope: !54)
!81 = !DILocation(line: 197, column: 12, scope: !54)
!82 = !DILocation(line: 197, column: 27, scope: !54)
!83 = !DILocation(line: 197, column: 25, scope: !54)
!84 = !DILocation(line: 197, column: 10, scope: !54)
!85 = !DILocation(line: 198, column: 12, scope: !54)
!86 = !DILocation(line: 198, column: 27, scope: !54)
!87 = !DILocation(line: 198, column: 25, scope: !54)
!88 = !DILocation(line: 198, column: 10, scope: !54)
!89 = !DILocation(line: 199, column: 12, scope: !54)
!90 = !DILocation(line: 199, column: 27, scope: !54)
!91 = !DILocation(line: 199, column: 25, scope: !54)
!92 = !DILocation(line: 199, column: 10, scope: !54)
!93 = !DILocation(line: 201, column: 13, scope: !54)
!94 = !DILocation(line: 201, column: 20, scope: !54)
!95 = !DILocation(line: 201, column: 18, scope: !54)
!96 = !DILocation(line: 201, column: 11, scope: !54)
!97 = !DILocation(line: 202, column: 13, scope: !54)
!98 = !DILocation(line: 202, column: 20, scope: !54)
!99 = !DILocation(line: 202, column: 18, scope: !54)
!100 = !DILocation(line: 202, column: 11, scope: !54)
!101 = !DILocation(line: 203, column: 13, scope: !54)
!102 = !DILocation(line: 203, column: 20, scope: !54)
!103 = !DILocation(line: 203, column: 18, scope: !54)
!104 = !DILocation(line: 203, column: 11, scope: !54)
!105 = !DILocation(line: 204, column: 13, scope: !54)
!106 = !DILocation(line: 204, column: 20, scope: !54)
!107 = !DILocation(line: 204, column: 18, scope: !54)
!108 = !DILocation(line: 204, column: 11, scope: !54)
!109 = !DILocation(line: 206, column: 32, scope: !54)
!110 = !DILocation(line: 206, column: 40, scope: !54)
!111 = !DILocation(line: 206, column: 38, scope: !54)
!112 = !DILocation(line: 206, column: 48, scope: !54)
!113 = !DILocation(line: 206, column: 5, scope: !54)
!114 = !DILocation(line: 206, column: 18, scope: !54)
!115 = !DILocation(line: 207, column: 32, scope: !54)
!116 = !DILocation(line: 207, column: 40, scope: !54)
!117 = !DILocation(line: 207, column: 38, scope: !54)
!118 = !DILocation(line: 207, column: 48, scope: !54)
!119 = !DILocation(line: 207, column: 5, scope: !54)
!120 = !DILocation(line: 207, column: 18, scope: !54)
!121 = !DILocation(line: 209, column: 12, scope: !54)
!122 = !DILocation(line: 209, column: 20, scope: !54)
!123 = !DILocation(line: 209, column: 18, scope: !54)
!124 = !DILocation(line: 209, column: 28, scope: !54)
!125 = !DILocation(line: 209, column: 8, scope: !54)
!126 = !DILocation(line: 210, column: 28, scope: !54)
!127 = !DILocation(line: 210, column: 5, scope: !54)
!128 = !DILocation(line: 210, column: 18, scope: !54)
!129 = !DILocation(line: 212, column: 28, scope: !54)
!130 = !DILocation(line: 212, column: 5, scope: !54)
!131 = !DILocation(line: 212, column: 18, scope: !54)
!132 = !DILocation(line: 215, column: 10, scope: !54)
!133 = !DILocation(line: 215, column: 17, scope: !54)
!134 = !DILocation(line: 215, column: 15, scope: !54)
!135 = !DILocation(line: 215, column: 8, scope: !54)
!136 = !DILocation(line: 216, column: 10, scope: !54)
!137 = !DILocation(line: 216, column: 17, scope: !54)
!138 = !DILocation(line: 216, column: 15, scope: !54)
!139 = !DILocation(line: 216, column: 8, scope: !54)
!140 = !DILocation(line: 217, column: 10, scope: !54)
!141 = !DILocation(line: 217, column: 17, scope: !54)
!142 = !DILocation(line: 217, column: 15, scope: !54)
!143 = !DILocation(line: 217, column: 8, scope: !54)
!144 = !DILocation(line: 218, column: 10, scope: !54)
!145 = !DILocation(line: 218, column: 17, scope: !54)
!146 = !DILocation(line: 218, column: 15, scope: !54)
!147 = !DILocation(line: 218, column: 8, scope: !54)
!148 = !DILocation(line: 219, column: 12, scope: !54)
!149 = !DILocation(line: 219, column: 17, scope: !54)
!150 = !DILocation(line: 219, column: 15, scope: !54)
!151 = !DILocation(line: 219, column: 22, scope: !54)
!152 = !DILocation(line: 219, column: 8, scope: !54)
!153 = !DILocation(line: 221, column: 12, scope: !54)
!154 = !DILocation(line: 221, column: 17, scope: !54)
!155 = !DILocation(line: 221, column: 10, scope: !54)
!156 = !DILocation(line: 222, column: 12, scope: !54)
!157 = !DILocation(line: 222, column: 17, scope: !54)
!158 = !DILocation(line: 222, column: 10, scope: !54)
!159 = !DILocation(line: 223, column: 12, scope: !54)
!160 = !DILocation(line: 223, column: 17, scope: !54)
!161 = !DILocation(line: 223, column: 10, scope: !54)
!162 = !DILocation(line: 224, column: 12, scope: !54)
!163 = !DILocation(line: 224, column: 17, scope: !54)
!164 = !DILocation(line: 224, column: 10, scope: !54)
!165 = !DILocation(line: 225, column: 10, scope: !54)
!166 = !DILocation(line: 225, column: 13, scope: !54)
!167 = !DILocation(line: 225, column: 8, scope: !54)
!168 = !DILocation(line: 226, column: 10, scope: !54)
!169 = !DILocation(line: 226, column: 13, scope: !54)
!170 = !DILocation(line: 226, column: 8, scope: !54)
!171 = !DILocation(line: 227, column: 10, scope: !54)
!172 = !DILocation(line: 227, column: 13, scope: !54)
!173 = !DILocation(line: 227, column: 8, scope: !54)
!174 = !DILocation(line: 228, column: 10, scope: !54)
!175 = !DILocation(line: 228, column: 13, scope: !54)
!176 = !DILocation(line: 228, column: 8, scope: !54)
!177 = !DILocation(line: 230, column: 11, scope: !54)
!178 = !DILocation(line: 230, column: 8, scope: !54)
!179 = !DILocation(line: 231, column: 11, scope: !54)
!180 = !DILocation(line: 231, column: 8, scope: !54)
!181 = !DILocation(line: 233, column: 28, scope: !54)
!182 = !DILocation(line: 233, column: 5, scope: !54)
!183 = !DILocation(line: 233, column: 18, scope: !54)
!184 = !DILocation(line: 234, column: 28, scope: !54)
!185 = !DILocation(line: 234, column: 5, scope: !54)
!186 = !DILocation(line: 234, column: 18, scope: !54)
!187 = !DILocation(line: 235, column: 28, scope: !54)
!188 = !DILocation(line: 235, column: 5, scope: !54)
!189 = !DILocation(line: 235, column: 18, scope: !54)
!190 = !DILocation(line: 236, column: 28, scope: !54)
!191 = !DILocation(line: 236, column: 5, scope: !54)
!192 = !DILocation(line: 236, column: 18, scope: !54)
!193 = !DILocation(line: 238, column: 13, scope: !54)
!194 = !DILocation(line: 239, column: 3, scope: !54)
!195 = !DILocation(line: 190, column: 41, scope: !54)
!196 = distinct !{!196, !60, !194, !34}
!197 = !DILocation(line: 241, column: 11, scope: !54)
!198 = !DILocation(line: 243, column: 13, scope: !54)
!199 = !DILocation(line: 243, column: 9, scope: !54)
!200 = !DILocation(line: 243, column: 28, scope: !54)
!201 = !DILocation(line: 243, column: 32, scope: !54)
!202 = !DILocation(line: 243, column: 3, scope: !54)
!203 = !DILocation(line: 244, column: 12, scope: !54)
!204 = !DILocation(line: 244, column: 37, scope: !54)
!205 = !DILocation(line: 244, column: 35, scope: !54)
!206 = !DILocation(line: 244, column: 10, scope: !54)
!207 = !DILocation(line: 245, column: 12, scope: !54)
!208 = !DILocation(line: 245, column: 37, scope: !54)
!209 = !DILocation(line: 245, column: 35, scope: !54)
!210 = !DILocation(line: 245, column: 10, scope: !54)
!211 = !DILocation(line: 246, column: 12, scope: !54)
!212 = !DILocation(line: 246, column: 37, scope: !54)
!213 = !DILocation(line: 246, column: 35, scope: !54)
!214 = !DILocation(line: 246, column: 10, scope: !54)
!215 = !DILocation(line: 247, column: 12, scope: !54)
!216 = !DILocation(line: 247, column: 37, scope: !54)
!217 = !DILocation(line: 247, column: 35, scope: !54)
!218 = !DILocation(line: 247, column: 10, scope: !54)
!219 = !DILocation(line: 248, column: 12, scope: !54)
!220 = !DILocation(line: 248, column: 37, scope: !54)
!221 = !DILocation(line: 248, column: 35, scope: !54)
!222 = !DILocation(line: 248, column: 10, scope: !54)
!223 = !DILocation(line: 249, column: 12, scope: !54)
!224 = !DILocation(line: 249, column: 37, scope: !54)
!225 = !DILocation(line: 249, column: 35, scope: !54)
!226 = !DILocation(line: 249, column: 10, scope: !54)
!227 = !DILocation(line: 250, column: 12, scope: !54)
!228 = !DILocation(line: 250, column: 37, scope: !54)
!229 = !DILocation(line: 250, column: 35, scope: !54)
!230 = !DILocation(line: 250, column: 10, scope: !54)
!231 = !DILocation(line: 251, column: 12, scope: !54)
!232 = !DILocation(line: 251, column: 37, scope: !54)
!233 = !DILocation(line: 251, column: 35, scope: !54)
!234 = !DILocation(line: 251, column: 10, scope: !54)
!235 = !DILocation(line: 253, column: 13, scope: !54)
!236 = !DILocation(line: 253, column: 20, scope: !54)
!237 = !DILocation(line: 253, column: 18, scope: !54)
!238 = !DILocation(line: 253, column: 11, scope: !54)
!239 = !DILocation(line: 254, column: 13, scope: !54)
!240 = !DILocation(line: 254, column: 20, scope: !54)
!241 = !DILocation(line: 254, column: 18, scope: !54)
!242 = !DILocation(line: 254, column: 11, scope: !54)
!243 = !DILocation(line: 255, column: 13, scope: !54)
!244 = !DILocation(line: 255, column: 20, scope: !54)
!245 = !DILocation(line: 255, column: 18, scope: !54)
!246 = !DILocation(line: 255, column: 11, scope: !54)
!247 = !DILocation(line: 256, column: 13, scope: !54)
!248 = !DILocation(line: 256, column: 20, scope: !54)
!249 = !DILocation(line: 256, column: 18, scope: !54)
!250 = !DILocation(line: 256, column: 11, scope: !54)
!251 = !DILocation(line: 258, column: 38, scope: !54)
!252 = !DILocation(line: 258, column: 5, scope: !54)
!253 = !DILocation(line: 258, column: 28, scope: !54)
!254 = !DILocation(line: 259, column: 38, scope: !54)
!255 = !DILocation(line: 259, column: 5, scope: !54)
!256 = !DILocation(line: 259, column: 28, scope: !54)
!257 = !DILocation(line: 261, column: 12, scope: !54)
!258 = !DILocation(line: 261, column: 20, scope: !54)
!259 = !DILocation(line: 261, column: 18, scope: !54)
!260 = !DILocation(line: 261, column: 28, scope: !54)
!261 = !DILocation(line: 261, column: 8, scope: !54)
!262 = !DILocation(line: 262, column: 38, scope: !54)
!263 = !DILocation(line: 262, column: 5, scope: !54)
!264 = !DILocation(line: 262, column: 28, scope: !54)
!265 = !DILocation(line: 264, column: 38, scope: !54)
!266 = !DILocation(line: 264, column: 5, scope: !54)
!267 = !DILocation(line: 264, column: 28, scope: !54)
!268 = !DILocation(line: 268, column: 10, scope: !54)
!269 = !DILocation(line: 268, column: 17, scope: !54)
!270 = !DILocation(line: 268, column: 15, scope: !54)
!271 = !DILocation(line: 268, column: 8, scope: !54)
!272 = !DILocation(line: 269, column: 10, scope: !54)
!273 = !DILocation(line: 269, column: 17, scope: !54)
!274 = !DILocation(line: 269, column: 15, scope: !54)
!275 = !DILocation(line: 269, column: 8, scope: !54)
!276 = !DILocation(line: 270, column: 10, scope: !54)
!277 = !DILocation(line: 270, column: 17, scope: !54)
!278 = !DILocation(line: 270, column: 15, scope: !54)
!279 = !DILocation(line: 270, column: 8, scope: !54)
!280 = !DILocation(line: 271, column: 10, scope: !54)
!281 = !DILocation(line: 271, column: 17, scope: !54)
!282 = !DILocation(line: 271, column: 15, scope: !54)
!283 = !DILocation(line: 271, column: 8, scope: !54)
!284 = !DILocation(line: 272, column: 12, scope: !54)
!285 = !DILocation(line: 272, column: 17, scope: !54)
!286 = !DILocation(line: 272, column: 15, scope: !54)
!287 = !DILocation(line: 272, column: 22, scope: !54)
!288 = !DILocation(line: 272, column: 8, scope: !54)
!289 = !DILocation(line: 274, column: 12, scope: !54)
!290 = !DILocation(line: 274, column: 17, scope: !54)
!291 = !DILocation(line: 274, column: 10, scope: !54)
!292 = !DILocation(line: 275, column: 12, scope: !54)
!293 = !DILocation(line: 275, column: 17, scope: !54)
!294 = !DILocation(line: 275, column: 10, scope: !54)
!295 = !DILocation(line: 276, column: 12, scope: !54)
!296 = !DILocation(line: 276, column: 17, scope: !54)
!297 = !DILocation(line: 276, column: 10, scope: !54)
!298 = !DILocation(line: 277, column: 12, scope: !54)
!299 = !DILocation(line: 277, column: 17, scope: !54)
!300 = !DILocation(line: 277, column: 10, scope: !54)
!301 = !DILocation(line: 278, column: 10, scope: !54)
!302 = !DILocation(line: 278, column: 13, scope: !54)
!303 = !DILocation(line: 278, column: 8, scope: !54)
!304 = !DILocation(line: 279, column: 10, scope: !54)
!305 = !DILocation(line: 279, column: 13, scope: !54)
!306 = !DILocation(line: 279, column: 8, scope: !54)
!307 = !DILocation(line: 280, column: 10, scope: !54)
!308 = !DILocation(line: 280, column: 13, scope: !54)
!309 = !DILocation(line: 280, column: 8, scope: !54)
!310 = !DILocation(line: 281, column: 10, scope: !54)
!311 = !DILocation(line: 281, column: 13, scope: !54)
!312 = !DILocation(line: 281, column: 8, scope: !54)
!313 = !DILocation(line: 283, column: 11, scope: !54)
!314 = !DILocation(line: 283, column: 8, scope: !54)
!315 = !DILocation(line: 284, column: 11, scope: !54)
!316 = !DILocation(line: 284, column: 8, scope: !54)
!317 = !DILocation(line: 286, column: 38, scope: !54)
!318 = !DILocation(line: 286, column: 5, scope: !54)
!319 = !DILocation(line: 286, column: 28, scope: !54)
!320 = !DILocation(line: 288, column: 38, scope: !54)
!321 = !DILocation(line: 288, column: 5, scope: !54)
!322 = !DILocation(line: 288, column: 28, scope: !54)
!323 = !DILocation(line: 290, column: 38, scope: !54)
!324 = !DILocation(line: 290, column: 5, scope: !54)
!325 = !DILocation(line: 290, column: 28, scope: !54)
!326 = !DILocation(line: 292, column: 38, scope: !54)
!327 = !DILocation(line: 292, column: 5, scope: !54)
!328 = !DILocation(line: 292, column: 28, scope: !54)
!329 = !DILocation(line: 295, column: 12, scope: !54)
!330 = !DILocation(line: 296, column: 3, scope: !54)
!331 = !DILocation(line: 243, column: 41, scope: !54)
!332 = distinct !{!332, !202, !330, !34}
!333 = !DILocation(line: 298, column: 1, scope: !54)
!334 = distinct !DISubprogram(name: "jfdctint_main", scope: !13, file: !13, line: 307, type: !14, scopeLine: 308, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!335 = !DILocation(line: 309, column: 3, scope: !334)
!336 = !DILocation(line: 310, column: 1, scope: !334)
!337 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 313, type: !14, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!338 = !DILocation(line: 315, column: 3, scope: !337)
!339 = !DILocation(line: 316, column: 3, scope: !337)
!340 = !DILocation(line: 318, column: 12, scope: !337)
!341 = !DILocation(line: 318, column: 3, scope: !337)
