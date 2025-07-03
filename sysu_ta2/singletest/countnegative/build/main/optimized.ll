; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%union.dwords = type { i64 }
%struct.anon = type { i32, i32 }

@countnegative_seed = dso_local global i32 0, align 4
@countnegative_array = dso_local global [10 x [10 x i32]] zeroinitializer, align 4
@countnegative_postotal = dso_local global i32 0, align 4
@countnegative_poscnt = dso_local global i32 0, align 4
@countnegative_negtotal = dso_local global i32 0, align 4
@countnegative_negcnt = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"../absvdi2.c\00", align 1
@__func__.__absvdi2 = private unnamed_addr constant [10 x i8] c"__absvdi2\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"../absvsi2.c\00", align 1
@__func__.__absvsi2 = private unnamed_addr constant [10 x i8] c"__absvsi2\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"../addvdi3.c\00", align 1
@__func__.__addvdi3 = private unnamed_addr constant [10 x i8] c"__addvdi3\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"../addvsi3.c\00", align 1
@__func__.__addvsi3 = private unnamed_addr constant [10 x i8] c"__addvsi3\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"../mulvdi3.c\00", align 1
@__func__.__mulvdi3 = private unnamed_addr constant [10 x i8] c"__mulvdi3\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"../mulvsi3.c\00", align 1
@__func__.__mulvsi3 = private unnamed_addr constant [10 x i8] c"__mulvsi3\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"../subvdi3.c\00", align 1
@__func__.__subvdi3 = private unnamed_addr constant [10 x i8] c"__subvdi3\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"../subvsi3.c\00", align 1
@__func__.__subvsi3 = private unnamed_addr constant [10 x i8] c"__subvsi3\00", align 1

@__aeabi_llsl = dso_local alias void (...), bitcast (i64 (i64, i32)* @__ashldi3 to void (...)*)
@__aeabi_lasr = dso_local alias void (...), bitcast (i64 (i64, i32)* @__ashrdi3 to void (...)*)
@__aeabi_idiv = dso_local alias void (...), bitcast (i32 (i32, i32)* @__divsi3 to void (...)*)
@__aeabi_llsr = dso_local alias void (...), bitcast (i64 (i64, i32)* @__lshrdi3 to void (...)*)
@__aeabi_uidiv = dso_local alias void (...), bitcast (i32 (i32, i32)* @__udivsi3 to void (...)*)

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_initSeed() #0 !dbg !125 {
entry:
  store volatile i32 0, i32* @countnegative_seed, align 4, !dbg !129
  ret void, !dbg !130
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @countnegative_randomInteger() #0 !dbg !131 {
entry:
  %0 = load volatile i32, i32* @countnegative_seed, align 4, !dbg !132
  %mul = mul nsw i32 %0, 133, !dbg !133
  %add = add nsw i32 %mul, 81, !dbg !134
  %rem = srem i32 %add, 8095, !dbg !135
  store volatile i32 %rem, i32* @countnegative_seed, align 4, !dbg !136
  %1 = load volatile i32, i32* @countnegative_seed, align 4, !dbg !137
  ret i32 %1, !dbg !138
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_initialize([10 x i32]* noundef %Array) #0 !dbg !139 {
entry:
  br label %for.cond, !dbg !140

for.cond:                                         ; preds = %for.inc5, %entry
  %OuterIndex.0 = phi i32 [ 0, %entry ], [ %inc6, %for.inc5 ], !dbg !141
  %exitcond1.not = icmp eq i32 %OuterIndex.0, 10, !dbg !142
  br i1 %exitcond1.not, label %for.end7, label %for.body, !dbg !143

for.body:                                         ; preds = %for.cond
  br label %for.cond1, !dbg !144

for.cond1:                                        ; preds = %for.inc, %for.body
  %InnerIndex.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !dbg !141
  %exitcond.not = icmp eq i32 %InnerIndex.0, 10, !dbg !145
  br i1 %exitcond.not, label %for.end, label %for.body3, !dbg !146

for.body3:                                        ; preds = %for.cond1
  %call = call arm_aapcs_vfpcc i32 @countnegative_randomInteger() #4, !dbg !147
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %Array, i32 %OuterIndex.0, i32 %InnerIndex.0, !dbg !148
  store i32 %call, i32* %arrayidx4, align 4, !dbg !149
  br label %for.inc, !dbg !148

for.inc:                                          ; preds = %for.body3
  %inc = add nuw nsw i32 %InnerIndex.0, 1, !dbg !150
  br label %for.cond1, !dbg !146, !llvm.loop !151

for.end:                                          ; preds = %for.cond1
  br label %for.inc5, !dbg !152

for.inc5:                                         ; preds = %for.end
  %inc6 = add nuw nsw i32 %OuterIndex.0, 1, !dbg !154
  br label %for.cond, !dbg !143, !llvm.loop !155

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !156
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_init() #0 !dbg !157 {
entry:
  call arm_aapcs_vfpcc void @countnegative_initSeed() #4, !dbg !158
  call arm_aapcs_vfpcc void @countnegative_initialize([10 x i32]* noundef getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @countnegative_array, i32 0, i32 0)) #4, !dbg !159
  ret void, !dbg !160
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @countnegative_return() #0 !dbg !161 {
entry:
  %0 = load i32, i32* @countnegative_postotal, align 4, !dbg !162
  %1 = load i32, i32* @countnegative_poscnt, align 4, !dbg !163
  %add = add nsw i32 %0, %1, !dbg !164
  %2 = load i32, i32* @countnegative_negtotal, align 4, !dbg !165
  %add1 = add nsw i32 %add, %2, !dbg !166
  %3 = load i32, i32* @countnegative_negcnt, align 4, !dbg !167
  %add2 = add nsw i32 %add1, %3, !dbg !168
  %cmp = icmp ne i32 %add2, 1538270, !dbg !169
  %cond = sext i1 %cmp to i32, !dbg !170
  ret i32 %cond, !dbg !171
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_sum([10 x i32]* noundef %Array) #0 !dbg !172 {
entry:
  br label %for.cond, !dbg !173

for.cond:                                         ; preds = %for.inc6, %entry
  %Ptotal.0 = phi i32 [ 0, %entry ], [ %Ptotal.1, %for.inc6 ], !dbg !174
  %Outer.0 = phi i32 [ 0, %entry ], [ %inc7, %for.inc6 ], !dbg !175
  %exitcond1.not = icmp eq i32 %Outer.0, 10, !dbg !176
  br i1 %exitcond1.not, label %for.end8, label %for.body, !dbg !177

for.body:                                         ; preds = %for.cond
  br label %for.cond1, !dbg !178

for.cond1:                                        ; preds = %for.inc, %for.body
  %Ptotal.1 = phi i32 [ %Ptotal.0, %for.body ], [ %add, %for.inc ], !dbg !175
  %Inner.0 = phi i32 [ 0, %for.body ], [ %inc5, %for.inc ], !dbg !175
  %exitcond.not = icmp eq i32 %Inner.0, 10, !dbg !179
  br i1 %exitcond.not, label %for.end, label %for.body3, !dbg !180

for.body3:                                        ; preds = %for.cond1
  br label %for.inc, !dbg !181

for.inc:                                          ; preds = %for.body3
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %Array, i32 %Outer.0, i32 %Inner.0, !dbg !182
  %0 = load i32, i32* %arrayidx4, align 4, !dbg !182
  %add = add nsw i32 %Ptotal.1, %0, !dbg !183
  %inc5 = add nuw nsw i32 %Inner.0, 1, !dbg !184
  br label %for.cond1, !dbg !180, !llvm.loop !185

for.end:                                          ; preds = %for.cond1
  br label %for.inc6, !dbg !181

for.inc6:                                         ; preds = %for.end
  %inc7 = add nuw nsw i32 %Outer.0, 1, !dbg !186
  br label %for.cond, !dbg !177, !llvm.loop !187

for.end8:                                         ; preds = %for.cond
  store i32 %Ptotal.0, i32* @countnegative_postotal, align 4, !dbg !188
  store i32 100, i32* @countnegative_poscnt, align 4, !dbg !189
  store i32 0, i32* @countnegative_negtotal, align 4, !dbg !190
  store i32 0, i32* @countnegative_negcnt, align 4, !dbg !191
  ret void, !dbg !192
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_main() #0 !dbg !193 {
entry:
  call arm_aapcs_vfpcc void @countnegative_sum([10 x i32]* noundef getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @countnegative_array, i32 0, i32 0)) #4, !dbg !194
  ret void, !dbg !195
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !196 {
entry:
  call arm_aapcs_vfpcc void @countnegative_init() #4, !dbg !197
  call arm_aapcs_vfpcc void @countnegative_main() #4, !dbg !198
  %call = call arm_aapcs_vfpcc i32 @countnegative_return() #4, !dbg !199
  ret i32 %call, !dbg !200
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #1 !dbg !201 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !202
  br i1 %cmp, label %if.then, label %if.end, !dbg !203

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !204
  unreachable, !dbg !204

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !205
  ret i64 %0, !dbg !206
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #2 !dbg !207 {
entry:
  unreachable, !dbg !208
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #1 !dbg !209 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !210
  br i1 %cmp, label %if.then, label %if.end, !dbg !211

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !212
  unreachable, !dbg !212

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !213
  ret i32 %0, !dbg !214
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !215 {
entry:
  %add = add i64 %a, %b, !dbg !216
  %cmp = icmp sgt i64 %b, -1, !dbg !217
  br i1 %cmp, label %if.then, label %if.else, !dbg !218

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !219
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !220

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !221
  unreachable, !dbg !221

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !222

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !223
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !224

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !225
  unreachable, !dbg !225

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !226
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !227 {
entry:
  %add = add i32 %a, %b, !dbg !228
  %cmp = icmp sgt i32 %b, -1, !dbg !229
  br i1 %cmp, label %if.then, label %if.else, !dbg !230

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !231
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !232

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !233
  unreachable, !dbg !233

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !234

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !235
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !236

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !237
  unreachable, !dbg !237

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !238
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #1 !dbg !239 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !240
  store i64 %a, i64* %all, align 8, !dbg !241
  %and = and i32 %b, 32, !dbg !242
  %tobool.not = icmp eq i32 %and, 0, !dbg !242
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !243

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !244
  store i32 0, i32* %low, align 8, !dbg !245
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !246
  %0 = load i32, i32* %low2, align 8, !dbg !246
  %sub = add nsw i32 %b, -32, !dbg !247
  %shl = shl i32 %0, %sub, !dbg !248
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !249
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !250
  store i32 %shl, i32* %high, align 4, !dbg !251
  br label %if.end18, !dbg !252

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !253
  br i1 %cmp, label %if.then4, label %if.end, !dbg !254

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !255

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !256
  %1 = load i32, i32* %low6, align 8, !dbg !256
  %shl7 = shl i32 %1, %b, !dbg !257
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !258
  store i32 %shl7, i32* %low9, align 8, !dbg !259
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !260
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !261
  %2 = load i32, i32* %high11, align 4, !dbg !261
  %shl12 = shl i32 %2, %b, !dbg !262
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !263
  %3 = load i32, i32* %low14, align 8, !dbg !263
  %sub15 = sub nsw i32 32, %b, !dbg !264
  %shr = lshr i32 %3, %sub15, !dbg !265
  %or = or i32 %shl12, %shr, !dbg !266
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !267
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !268
  store i32 %or, i32* %high17, align 4, !dbg !269
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !270
  %4 = load i64, i64* %all19, align 8, !dbg !270
  br label %return, !dbg !271

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !272
  ret i64 %retval.0, !dbg !273
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !274 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !275
  store i64 %a, i64* %all, align 8, !dbg !276
  %and = and i32 %b, 32, !dbg !277
  %tobool.not = icmp eq i32 %and, 0, !dbg !277
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !278

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !279
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !280
  %0 = load i32, i32* %high, align 4, !dbg !280
  %shr = ashr i32 %0, 31, !dbg !281
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !282
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !283
  store i32 %shr, i32* %high2, align 4, !dbg !284
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !285
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !286
  %1 = load i32, i32* %high4, align 4, !dbg !286
  %sub = add nsw i32 %b, -32, !dbg !287
  %shr5 = ashr i32 %1, %sub, !dbg !288
  %low = bitcast %union.dwords* %result to i32*, !dbg !289
  store i32 %shr5, i32* %low, align 8, !dbg !290
  br label %if.end21, !dbg !291

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !292
  br i1 %cmp, label %if.then7, label %if.end, !dbg !293

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !294

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !295
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !296
  %2 = load i32, i32* %high9, align 4, !dbg !296
  %shr10 = ashr i32 %2, %b, !dbg !297
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !298
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !299
  store i32 %shr10, i32* %high12, align 4, !dbg !300
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !301
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !302
  %3 = load i32, i32* %high14, align 4, !dbg !302
  %sub15 = sub nsw i32 32, %b, !dbg !303
  %shl = shl i32 %3, %sub15, !dbg !304
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !305
  %4 = load i32, i32* %low17, align 8, !dbg !305
  %shr18 = lshr i32 %4, %b, !dbg !306
  %or = or i32 %shl, %shr18, !dbg !307
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !308
  store i32 %or, i32* %low20, align 8, !dbg !309
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !310
  %5 = load i64, i64* %all22, align 8, !dbg !310
  br label %return, !dbg !311

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !312
  ret i64 %retval.0, !dbg !313
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #1 !dbg !314 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !315
  store i64 %a, i64* %all, align 8, !dbg !316
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !317
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !318
  %0 = load i32, i32* %high, align 4, !dbg !318
  %cmp = icmp eq i32 %0, 0, !dbg !319
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !320
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !321
  %1 = load i32, i32* %high2, align 4, !dbg !321
  %low = bitcast %union.dwords* %x to i32*, !dbg !322
  %2 = load i32, i32* %low, align 8, !dbg !322
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !323
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !324, !range !325
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !326
  %add = add nuw nsw i32 %4, %and5, !dbg !327
  ret i32 %add, !dbg !328
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #1 !dbg !329 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !330
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !331
  %sub = sub nuw nsw i32 16, %shl, !dbg !332
  %shr = lshr i32 %a, %sub, !dbg !333
  %and1 = and i32 %shr, 65280, !dbg !334
  %cmp2 = icmp eq i32 %and1, 0, !dbg !335
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !336
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !337
  %shr6 = lshr i32 %shr, %sub5, !dbg !338
  %add = or i32 %shl, %shl4, !dbg !339
  %and7 = and i32 %shr6, 240, !dbg !340
  %cmp8 = icmp eq i32 %and7, 0, !dbg !341
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !342
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !343
  %shr12 = lshr i32 %shr6, %sub11, !dbg !344
  %add13 = or i32 %add, %shl10, !dbg !345
  %and14 = and i32 %shr12, 12, !dbg !346
  %cmp15 = icmp eq i32 %and14, 0, !dbg !347
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !348
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !349
  %shr19 = lshr i32 %shr12, %sub18, !dbg !350
  %add20 = or i32 %add13, %shl17, !dbg !351
  %sub21 = sub i32 2, %shr19, !dbg !352
  %and22 = lshr i32 %shr19, 1, !dbg !353
  %0 = or i32 %and22, -2, !dbg !353
  %.neg = add nsw i32 %0, 1, !dbg !353
  %and26 = and i32 %sub21, %.neg, !dbg !354
  %add27 = add i32 %add20, %and26, !dbg !355
  ret i32 %add27, !dbg !356
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !357 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !358
  store i64 %a, i64* %all, align 8, !dbg !359
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !360
  store i64 %b, i64* %all1, align 8, !dbg !361
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !362
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !363
  %0 = load i32, i32* %high, align 4, !dbg !363
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !364
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !365
  %1 = load i32, i32* %high3, align 4, !dbg !365
  %cmp = icmp slt i32 %0, %1, !dbg !366
  br i1 %cmp, label %if.then, label %if.end, !dbg !367

if.then:                                          ; preds = %entry
  br label %return, !dbg !368

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !369
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !370
  %2 = load i32, i32* %high5, align 4, !dbg !370
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !371
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !372
  %3 = load i32, i32* %high7, align 4, !dbg !372
  %cmp8 = icmp sgt i32 %2, %3, !dbg !373
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !374

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !375

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !376
  %4 = load i32, i32* %low, align 8, !dbg !376
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !377
  %5 = load i32, i32* %low13, align 8, !dbg !377
  %cmp14 = icmp ult i32 %4, %5, !dbg !378
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !379

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !380

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !381
  %6 = load i32, i32* %low18, align 8, !dbg !381
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !382
  %7 = load i32, i32* %low20, align 8, !dbg !382
  %cmp21 = icmp ugt i32 %6, %7, !dbg !383
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !384

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !385

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !386

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !387
  ret i32 %retval.0, !dbg !388
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !389 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !390
  %sub = add nsw i32 %call, -1, !dbg !391
  ret i32 %sub, !dbg !392
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #1 !dbg !393 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !394
  store i64 %a, i64* %all, align 8, !dbg !395
  %low = bitcast %union.dwords* %x to i32*, !dbg !396
  %0 = load i32, i32* %low, align 8, !dbg !396
  %cmp = icmp eq i32 %0, 0, !dbg !397
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !398
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !399
  %1 = load i32, i32* %high, align 4, !dbg !399
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !400
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !401, !range !325
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !402
  %add = add nuw nsw i32 %3, %and5, !dbg !403
  ret i32 %add, !dbg !404
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #1 !dbg !405 {
entry:
  %and = and i32 %a, 65535, !dbg !406
  %cmp = icmp eq i32 %and, 0, !dbg !407
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !408
  %shr = lshr i32 %a, %shl, !dbg !409
  %and1 = and i32 %shr, 255, !dbg !410
  %cmp2 = icmp eq i32 %and1, 0, !dbg !411
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !412
  %shr5 = lshr i32 %shr, %shl4, !dbg !413
  %add = or i32 %shl, %shl4, !dbg !414
  %and6 = and i32 %shr5, 15, !dbg !415
  %cmp7 = icmp eq i32 %and6, 0, !dbg !416
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !417
  %shr10 = lshr i32 %shr5, %shl9, !dbg !418
  %add11 = or i32 %add, %shl9, !dbg !419
  %and12 = and i32 %shr10, 3, !dbg !420
  %cmp13 = icmp eq i32 %and12, 0, !dbg !421
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !422
  %shr16 = lshr i32 %shr10, %shl15, !dbg !423
  %add18 = or i32 %add11, %shl15, !dbg !424
  %and17 = lshr i32 %shr16, 1, !dbg !425
  %shr19 = and i32 %and17, 1, !dbg !425
  %sub = sub nuw nsw i32 2, %shr19, !dbg !426
  %0 = or i32 %shr16, -2, !dbg !427
  %.neg = add nsw i32 %0, 1, !dbg !427
  %and24 = and i32 %sub, %.neg, !dbg !428
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !429
  ret i32 %add25, !dbg !430
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !431 {
entry:
  %shr = ashr i64 %a, 63, !dbg !432
  %shr1 = ashr i64 %b, 63, !dbg !433
  %xor = xor i64 %shr, %a, !dbg !434
  %sub = sub nsw i64 %xor, %shr, !dbg !435
  %xor2 = xor i64 %shr1, %b, !dbg !436
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !437
  %xor4 = xor i64 %shr, %shr1, !dbg !438
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !439
  %xor5 = xor i64 %call, %xor4, !dbg !440
  %sub6 = sub i64 %xor5, %xor4, !dbg !441
  ret i64 %sub6, !dbg !442
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !443 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !444
  store i64 %a, i64* %all, align 8, !dbg !445
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !446
  store i64 %b, i64* %all1, align 8, !dbg !447
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !448
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !449
  %0 = load i32, i32* %high, align 4, !dbg !449
  %cmp = icmp eq i32 %0, 0, !dbg !450
  br i1 %cmp, label %if.then, label %if.end23, !dbg !451

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !452
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !453
  %1 = load i32, i32* %high3, align 4, !dbg !453
  %cmp4 = icmp eq i32 %1, 0, !dbg !454
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !455

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !456
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !456

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !457
  %2 = load i32, i32* %low, align 8, !dbg !457
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !458
  %3 = load i32, i32* %low9, align 8, !dbg !458
  %rem10 = urem i32 %2, %3, !dbg !459
  %conv = zext i32 %rem10 to i64, !dbg !460
  store i64 %conv, i64* %rem, align 8, !dbg !461
  br label %if.end, !dbg !462

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !463
  %4 = load i32, i32* %low12, align 8, !dbg !463
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !464
  %5 = load i32, i32* %low14, align 8, !dbg !464
  %div = udiv i32 %4, %5, !dbg !465
  %conv15 = zext i32 %div to i64, !dbg !466
  br label %return, !dbg !467

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !468
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !468

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !469
  %6 = load i32, i32* %low20, align 8, !dbg !469
  %conv21 = zext i32 %6 to i64, !dbg !470
  store i64 %conv21, i64* %rem, align 8, !dbg !471
  br label %if.end22, !dbg !472

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !473

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !474
  %7 = load i32, i32* %low25, align 8, !dbg !474
  %cmp26 = icmp eq i32 %7, 0, !dbg !475
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !476

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !477
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !478
  %8 = load i32, i32* %high30, align 4, !dbg !478
  %cmp31 = icmp eq i32 %8, 0, !dbg !479
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !480

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !481
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !481

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !482
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !483
  %9 = load i32, i32* %high37, align 4, !dbg !483
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !484
  %10 = load i32, i32* %low39, align 8, !dbg !484
  %rem40 = urem i32 %9, %10, !dbg !485
  %conv41 = zext i32 %rem40 to i64, !dbg !486
  store i64 %conv41, i64* %rem, align 8, !dbg !487
  br label %if.end42, !dbg !488

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !489
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !490
  %11 = load i32, i32* %high44, align 4, !dbg !490
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !491
  %12 = load i32, i32* %low46, align 8, !dbg !491
  %div47 = udiv i32 %11, %12, !dbg !492
  %conv48 = zext i32 %div47 to i64, !dbg !493
  br label %return, !dbg !494

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !495
  %13 = load i32, i32* %low51, align 8, !dbg !495
  %cmp52 = icmp eq i32 %13, 0, !dbg !496
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !497

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !498
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !498

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !499
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !500
  %14 = load i32, i32* %high58, align 4, !dbg !500
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !501
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !502
  %15 = load i32, i32* %high60, align 4, !dbg !502
  %rem61 = urem i32 %14, %15, !dbg !503
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !504
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !505
  store i32 %rem61, i32* %high63, align 4, !dbg !506
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !507
  store i32 0, i32* %low65, align 8, !dbg !508
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !509
  %16 = load i64, i64* %all66, align 8, !dbg !509
  store i64 %16, i64* %rem, align 8, !dbg !510
  br label %if.end67, !dbg !511

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !512
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !513
  %17 = load i32, i32* %high69, align 4, !dbg !513
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !514
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !515
  %18 = load i32, i32* %high71, align 4, !dbg !515
  %div72 = udiv i32 %17, %18, !dbg !516
  %conv73 = zext i32 %div72 to i64, !dbg !517
  br label %return, !dbg !518

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !519
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !520
  %19 = load i32, i32* %high76, align 4, !dbg !520
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !521
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !522
  %20 = load i32, i32* %high78, align 4, !dbg !522
  %sub = add i32 %20, -1, !dbg !523
  %and = and i32 %19, %sub, !dbg !524
  %cmp79 = icmp eq i32 %and, 0, !dbg !525
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !526

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !527
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !527

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !528
  %21 = load i32, i32* %low85, align 8, !dbg !528
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !529
  store i32 %21, i32* %low87, align 8, !dbg !530
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !531
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !532
  %22 = load i32, i32* %high89, align 4, !dbg !532
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !533
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !534
  %23 = load i32, i32* %high91, align 4, !dbg !534
  %sub92 = add i32 %23, -1, !dbg !535
  %and93 = and i32 %22, %sub92, !dbg !536
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !537
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !538
  store i32 %and93, i32* %high95, align 4, !dbg !539
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !540
  %24 = load i64, i64* %all96, align 8, !dbg !540
  store i64 %24, i64* %rem, align 8, !dbg !541
  br label %if.end97, !dbg !542

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !543
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !544
  %25 = load i32, i32* %high99, align 4, !dbg !544
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !545
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !546
  %26 = load i32, i32* %high101, align 4, !dbg !546
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !547, !range !325
  %shr = lshr i32 %25, %27, !dbg !548
  %conv102 = zext i32 %shr to i64, !dbg !549
  br label %return, !dbg !550

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !551
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !552
  %28 = load i32, i32* %high105, align 4, !dbg !552
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !553, !range !325
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !554
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !555
  %30 = load i32, i32* %high107, align 4, !dbg !555
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !556, !range !325
  %sub108 = sub nsw i32 %29, %31, !dbg !557
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !558
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !559

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !560
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !560

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !561
  %32 = load i64, i64* %all114, align 8, !dbg !561
  store i64 %32, i64* %rem, align 8, !dbg !562
  br label %if.end115, !dbg !563

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !564

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !565
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !566
  store i32 0, i32* %low118, align 8, !dbg !567
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !568
  %33 = load i32, i32* %low120, align 8, !dbg !568
  %sub121 = sub nsw i32 31, %sub108, !dbg !569
  %shl = shl i32 %33, %sub121, !dbg !570
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !571
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !572
  store i32 %shl, i32* %high123, align 4, !dbg !573
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !574
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !575
  %34 = load i32, i32* %high125, align 4, !dbg !575
  %shr126 = lshr i32 %34, %inc, !dbg !576
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !577
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !578
  store i32 %shr126, i32* %high128, align 4, !dbg !579
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !580
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !581
  %35 = load i32, i32* %high130, align 4, !dbg !581
  %sub131 = sub nsw i32 31, %sub108, !dbg !582
  %shl132 = shl i32 %35, %sub131, !dbg !583
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !584
  %36 = load i32, i32* %low134, align 8, !dbg !584
  %shr135 = lshr i32 %36, %inc, !dbg !585
  %or = or i32 %shl132, %shr135, !dbg !586
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !587
  store i32 %or, i32* %low137, align 8, !dbg !588
  br label %if.end317, !dbg !589

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !590
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !591
  %37 = load i32, i32* %high139, align 4, !dbg !591
  %cmp140 = icmp eq i32 %37, 0, !dbg !592
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !593

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !594
  %38 = load i32, i32* %low144, align 8, !dbg !594
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !595, !range !325
  %cmp149 = icmp ult i32 %39, 2, !dbg !595
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !596

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !597
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !597

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !598
  %40 = load i32, i32* %low155, align 8, !dbg !598
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !599
  %41 = load i32, i32* %low157, align 8, !dbg !599
  %sub158 = add i32 %41, -1, !dbg !600
  %and159 = and i32 %40, %sub158, !dbg !601
  %conv160 = zext i32 %and159 to i64, !dbg !602
  store i64 %conv160, i64* %rem, align 8, !dbg !603
  br label %if.end161, !dbg !604

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !605
  %42 = load i32, i32* %low163, align 8, !dbg !605
  %cmp164 = icmp eq i32 %42, 1, !dbg !606
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !607

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !608
  %43 = load i64, i64* %all167, align 8, !dbg !608
  br label %return, !dbg !609

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !610
  %44 = load i32, i32* %low170, align 8, !dbg !610
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !611, !range !325
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !612
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !613
  %46 = load i32, i32* %high172, align 4, !dbg !613
  %shr173 = lshr i32 %46, %45, !dbg !614
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !615
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !616
  store i32 %shr173, i32* %high175, align 4, !dbg !617
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !618
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !619
  %47 = load i32, i32* %high177, align 4, !dbg !619
  %sub178 = sub nuw nsw i32 32, %45, !dbg !620
  %shl179 = shl i32 %47, %sub178, !dbg !621
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !622
  %48 = load i32, i32* %low181, align 8, !dbg !622
  %shr182 = lshr i32 %48, %45, !dbg !623
  %or183 = or i32 %shl179, %shr182, !dbg !624
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !625
  store i32 %or183, i32* %low185, align 8, !dbg !626
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !627
  %49 = load i64, i64* %all186, align 8, !dbg !627
  br label %return, !dbg !628

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !629
  %50 = load i32, i32* %low189, align 8, !dbg !629
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !630, !range !325
  %add = add nuw nsw i32 %51, 33, !dbg !631
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !632
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !633
  %52 = load i32, i32* %high191, align 4, !dbg !633
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !634, !range !325
  %sub192 = sub nsw i32 %add, %53, !dbg !635
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !636
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !637

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !638
  store i32 0, i32* %low197, align 8, !dbg !639
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !640
  %54 = load i32, i32* %low199, align 8, !dbg !640
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !641
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !642
  store i32 %54, i32* %high201, align 4, !dbg !643
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !644
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !645
  store i32 0, i32* %high203, align 4, !dbg !646
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !647
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !648
  %55 = load i32, i32* %high205, align 4, !dbg !648
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !649
  store i32 %55, i32* %low207, align 8, !dbg !650
  br label %if.end262, !dbg !651

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !652
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !653

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !654
  store i32 0, i32* %low213, align 8, !dbg !655
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !656
  %56 = load i32, i32* %low215, align 8, !dbg !656
  %sub216 = sub nsw i32 32, %sub192, !dbg !657
  %shl217 = shl i32 %56, %sub216, !dbg !658
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !659
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !660
  store i32 %shl217, i32* %high219, align 4, !dbg !661
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !662
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !663
  %57 = load i32, i32* %high221, align 4, !dbg !663
  %shr222 = lshr i32 %57, %sub192, !dbg !664
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !665
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !666
  store i32 %shr222, i32* %high224, align 4, !dbg !667
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !668
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !669
  %58 = load i32, i32* %high226, align 4, !dbg !669
  %sub227 = sub nsw i32 32, %sub192, !dbg !670
  %shl228 = shl i32 %58, %sub227, !dbg !671
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !672
  %59 = load i32, i32* %low230, align 8, !dbg !672
  %shr231 = lshr i32 %59, %sub192, !dbg !673
  %or232 = or i32 %shl228, %shr231, !dbg !674
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !675
  store i32 %or232, i32* %low234, align 8, !dbg !676
  br label %if.end261, !dbg !677

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !678
  %60 = load i32, i32* %low237, align 8, !dbg !678
  %sub238 = sub nsw i32 64, %sub192, !dbg !679
  %shl239 = shl i32 %60, %sub238, !dbg !680
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !681
  store i32 %shl239, i32* %low241, align 8, !dbg !682
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !683
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !684
  %61 = load i32, i32* %high243, align 4, !dbg !684
  %sub244 = sub nsw i32 64, %sub192, !dbg !685
  %shl245 = shl i32 %61, %sub244, !dbg !686
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !687
  %62 = load i32, i32* %low247, align 8, !dbg !687
  %sub248 = add nsw i32 %sub192, -32, !dbg !688
  %shr249 = lshr i32 %62, %sub248, !dbg !689
  %or250 = or i32 %shl245, %shr249, !dbg !690
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !691
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !692
  store i32 %or250, i32* %high252, align 4, !dbg !693
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !694
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !695
  store i32 0, i32* %high254, align 4, !dbg !696
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !697
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !698
  %63 = load i32, i32* %high256, align 4, !dbg !698
  %sub257 = add nsw i32 %sub192, -32, !dbg !699
  %shr258 = lshr i32 %63, %sub257, !dbg !700
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !701
  store i32 %shr258, i32* %low260, align 8, !dbg !702
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !703

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !704
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !705
  %64 = load i32, i32* %high265, align 4, !dbg !705
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !706, !range !325
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !707
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !708
  %66 = load i32, i32* %high267, align 4, !dbg !708
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !709, !range !325
  %sub268 = sub nsw i32 %65, %67, !dbg !710
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !711
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !712

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !713
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !713

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !714
  %68 = load i64, i64* %all274, align 8, !dbg !714
  store i64 %68, i64* %rem, align 8, !dbg !715
  br label %if.end275, !dbg !716

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !717

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !718
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !719
  store i32 0, i32* %low279, align 8, !dbg !720
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !721
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !722

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !723
  %69 = load i32, i32* %low284, align 8, !dbg !723
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !724
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !725
  store i32 %69, i32* %high286, align 4, !dbg !726
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !727
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !728
  store i32 0, i32* %high288, align 4, !dbg !729
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !730
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !731
  %70 = load i32, i32* %high290, align 4, !dbg !731
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !732
  store i32 %70, i32* %low292, align 8, !dbg !733
  br label %if.end315, !dbg !734

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !735
  %71 = load i32, i32* %low295, align 8, !dbg !735
  %sub296 = sub nsw i32 31, %sub268, !dbg !736
  %shl297 = shl i32 %71, %sub296, !dbg !737
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !738
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !739
  store i32 %shl297, i32* %high299, align 4, !dbg !740
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !741
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !742
  %72 = load i32, i32* %high301, align 4, !dbg !742
  %shr302 = lshr i32 %72, %inc277, !dbg !743
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !744
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !745
  store i32 %shr302, i32* %high304, align 4, !dbg !746
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !747
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !748
  %73 = load i32, i32* %high306, align 4, !dbg !748
  %sub307 = sub nsw i32 31, %sub268, !dbg !749
  %shl308 = shl i32 %73, %sub307, !dbg !750
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !751
  %74 = load i32, i32* %low310, align 8, !dbg !751
  %shr311 = lshr i32 %74, %inc277, !dbg !752
  %or312 = or i32 %shl308, %shr311, !dbg !753
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !754
  store i32 %or312, i32* %low314, align 8, !dbg !755
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !756
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !756
  br label %for.cond, !dbg !757

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !756
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !756
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !758
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !757

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !759
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !760
  %75 = load i32, i32* %high321, align 4, !dbg !760
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !761
  %76 = load i32, i32* %low324, align 8, !dbg !761
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !762
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !763
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !764
  store i32 %or326, i32* %high328, align 4, !dbg !765
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !766
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !767
  %77 = load i32, i32* %high333, align 4, !dbg !767
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !768
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !769
  store i32 %or335, i32* %low337, align 8, !dbg !770
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !771
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !772
  %78 = load i32, i32* %high339, align 4, !dbg !772
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !773
  %79 = load i32, i32* %low342, align 8, !dbg !773
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !774
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !775
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !776
  store i32 %or344, i32* %high346, align 4, !dbg !777
  %shl349 = shl i32 %79, 1, !dbg !778
  %or350 = or i32 %shl349, %carry.0, !dbg !779
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !780
  store i32 %or350, i32* %low352, align 8, !dbg !781
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !782
  %80 = load i64, i64* %all354, align 8, !dbg !782
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !783
  %81 = load i64, i64* %all355, align 8, !dbg !783
  %82 = xor i64 %81, -1, !dbg !784
  %sub357 = add i64 %80, %82, !dbg !784
  %isneg = icmp slt i64 %sub357, 0, !dbg !785
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !785
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !786
  %sub364 = sub i64 %81, %and362, !dbg !787
  store i64 %sub364, i64* %all363, align 8, !dbg !787
  br label %for.inc, !dbg !788

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !789
  %conv360 = trunc i64 %and359 to i32, !dbg !790
  %dec = add i32 %sr.2, -1, !dbg !791
  br label %for.cond, !dbg !757, !llvm.loop !792

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !793
  %83 = load i64, i64* %all365, align 8, !dbg !793
  %shl366 = shl i64 %83, 1, !dbg !794
  %conv367 = zext i32 %carry.0 to i64, !dbg !795
  %or368 = or i64 %shl366, %conv367, !dbg !796
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !797
  store i64 %or368, i64* %all369, align 8, !dbg !798
  %tobool370.not = icmp eq i64* %rem, null, !dbg !799
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !799

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !800
  %84 = load i64, i64* %all372, align 8, !dbg !800
  store i64 %84, i64* %rem, align 8, !dbg !801
  br label %if.end373, !dbg !802

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !803
  %85 = load i64, i64* %all374, align 8, !dbg !803
  br label %return, !dbg !804

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !756
  ret i64 %retval.0, !dbg !805
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !806 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !807
  %mul = mul nsw i64 %call, %b, !dbg !808
  %sub = sub nsw i64 %a, %mul, !dbg !809
  store i64 %sub, i64* %rem, align 8, !dbg !810
  ret i64 %call, !dbg !811
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !812 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !813
  %mul = mul nsw i32 %call, %b, !dbg !814
  %sub = sub nsw i32 %a, %mul, !dbg !815
  store i32 %sub, i32* %rem, align 4, !dbg !816
  ret i32 %call, !dbg !817
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !818 {
entry:
  %shr = ashr i32 %a, 31, !dbg !819
  %shr1 = ashr i32 %b, 31, !dbg !820
  %xor = xor i32 %shr, %a, !dbg !821
  %sub = sub nsw i32 %xor, %shr, !dbg !822
  %xor2 = xor i32 %shr1, %b, !dbg !823
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !824
  %xor4 = xor i32 %shr, %shr1, !dbg !825
  %div = udiv i32 %sub, %sub3, !dbg !826
  %xor5 = xor i32 %div, %xor4, !dbg !827
  %sub6 = sub i32 %xor5, %xor4, !dbg !828
  ret i32 %sub6, !dbg !829
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #1 !dbg !830 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !831
  store i64 %a, i64* %all, align 8, !dbg !832
  %low = bitcast %union.dwords* %x to i32*, !dbg !833
  %0 = load i32, i32* %low, align 8, !dbg !833
  %cmp = icmp eq i32 %0, 0, !dbg !834
  br i1 %cmp, label %if.then, label %if.end6, !dbg !835

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !836
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !837
  %1 = load i32, i32* %high, align 4, !dbg !837
  %cmp2 = icmp eq i32 %1, 0, !dbg !838
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !839

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !840

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !841
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !842
  %2 = load i32, i32* %high5, align 4, !dbg !842
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !843, !range !325
  %add = add nuw nsw i32 %3, 33, !dbg !844
  br label %return, !dbg !845

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !846
  %4 = load i32, i32* %low8, align 8, !dbg !846
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !847, !range !325
  %add9 = add nuw nsw i32 %5, 1, !dbg !848
  br label %return, !dbg !849

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !850
  ret i32 %retval.0, !dbg !851
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #1 !dbg !852 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !853
  br i1 %cmp, label %if.then, label %if.end, !dbg !854

if.then:                                          ; preds = %entry
  br label %return, !dbg !855

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !856, !range !325
  %add = add nuw nsw i32 %0, 1, !dbg !857
  br label %return, !dbg !858

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !859
  ret i32 %retval.0, !dbg !860
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !861 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !862
  store i64 %a, i64* %all, align 8, !dbg !863
  %and = and i32 %b, 32, !dbg !864
  %tobool.not = icmp eq i32 %and, 0, !dbg !864
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !865

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !866
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !867
  store i32 0, i32* %high, align 4, !dbg !868
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !869
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !870
  %0 = load i32, i32* %high2, align 4, !dbg !870
  %sub = add nsw i32 %b, -32, !dbg !871
  %shr = lshr i32 %0, %sub, !dbg !872
  %low = bitcast %union.dwords* %result to i32*, !dbg !873
  store i32 %shr, i32* %low, align 8, !dbg !874
  br label %if.end18, !dbg !875

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !876
  br i1 %cmp, label %if.then4, label %if.end, !dbg !877

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !878

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !879
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !880
  %1 = load i32, i32* %high6, align 4, !dbg !880
  %shr7 = lshr i32 %1, %b, !dbg !881
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !882
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !883
  store i32 %shr7, i32* %high9, align 4, !dbg !884
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !885
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !886
  %2 = load i32, i32* %high11, align 4, !dbg !886
  %sub12 = sub nsw i32 32, %b, !dbg !887
  %shl = shl i32 %2, %sub12, !dbg !888
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !889
  %3 = load i32, i32* %low14, align 8, !dbg !889
  %shr15 = lshr i32 %3, %b, !dbg !890
  %or = or i32 %shl, %shr15, !dbg !891
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !892
  store i32 %or, i32* %low17, align 8, !dbg !893
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !894
  %4 = load i64, i64* %all19, align 8, !dbg !894
  br label %return, !dbg !895

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !896
  ret i64 %retval.0, !dbg !897
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !898 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !899
  %shr1 = ashr i64 %a, 63, !dbg !900
  %xor2 = xor i64 %shr1, %a, !dbg !901
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !902
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !903
  %1 = load i64, i64* %r, align 8, !dbg !904
  %xor4 = xor i64 %1, %shr1, !dbg !905
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !906
  ret i64 %sub5, !dbg !907
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !908 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !909
  %mul = mul nsw i32 %call, %b, !dbg !910
  %sub = sub nsw i32 %a, %mul, !dbg !911
  ret i32 %sub, !dbg !912
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !913 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !914
  br i1 %cmp, label %if.then, label %if.end4, !dbg !915

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !916
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !917

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !918
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !919

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !920

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !921
  unreachable, !dbg !921

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !922
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !923

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !924
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !925

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !926
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !927

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !928

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !929
  unreachable, !dbg !929

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !930
  %xor = xor i64 %shr, %a, !dbg !931
  %sub = sub nsw i64 %xor, %shr, !dbg !932
  %shr14 = ashr i64 %b, 63, !dbg !933
  %xor15 = xor i64 %shr14, %b, !dbg !934
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !935
  %cmp17 = icmp slt i64 %sub, 2, !dbg !936
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !937

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !938
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !939

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !940

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !941
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !942

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !943
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !944
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !945

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !946
  unreachable, !dbg !946

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !947

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !948
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !949
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !950
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !951

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !952
  unreachable, !dbg !952

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !953

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !954
  ret i64 %retval.0, !dbg !955
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !956 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !957
  br i1 %cmp, label %if.then, label %if.end4, !dbg !958

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !959
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !960

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !961
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !962

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !963

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !964
  unreachable, !dbg !964

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !965
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !966

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !967
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !968

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !969
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !970

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !971

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !972
  unreachable, !dbg !972

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !973
  %xor = xor i32 %shr, %a, !dbg !974
  %sub = sub nsw i32 %xor, %shr, !dbg !975
  %shr14 = ashr i32 %b, 31, !dbg !976
  %xor15 = xor i32 %shr14, %b, !dbg !977
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !978
  %cmp17 = icmp slt i32 %sub, 2, !dbg !979
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !980

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !981
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !982

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !983

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !984
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !985

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !986
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !987
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !988

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !989
  unreachable, !dbg !989

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !990

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !991
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !992
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !993
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !994

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !995
  unreachable, !dbg !995

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !996

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !997
  ret i32 %retval.0, !dbg !998
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #1 !dbg !999 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1000
  store i64 %a, i64* %all, align 8, !dbg !1001
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1002
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1003
  %0 = load i32, i32* %high, align 4, !dbg !1003
  %low = bitcast %union.dwords* %x to i32*, !dbg !1004
  %1 = load i32, i32* %low, align 8, !dbg !1004
  %xor = xor i32 %0, %1, !dbg !1005
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !1006
  ret i32 %call, !dbg !1007
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #1 !dbg !1008 {
entry:
  %shr = lshr i32 %a, 16, !dbg !1009
  %xor = xor i32 %shr, %a, !dbg !1010
  %shr1 = lshr i32 %xor, 8, !dbg !1011
  %xor2 = xor i32 %xor, %shr1, !dbg !1012
  %shr3 = lshr i32 %xor2, 4, !dbg !1013
  %xor4 = xor i32 %xor2, %shr3, !dbg !1014
  %and = and i32 %xor4, 15, !dbg !1015
  %shr5 = lshr i32 27030, %and, !dbg !1016
  %and6 = and i32 %shr5, 1, !dbg !1017
  ret i32 %and6, !dbg !1018
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #1 !dbg !1019 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1020
  %and = and i64 %shr, 6148914691236517205, !dbg !1021
  %sub = sub i64 %a, %and, !dbg !1022
  %shr1 = lshr i64 %sub, 2, !dbg !1023
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1024
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1025
  %add = add nuw nsw i64 %and2, %and3, !dbg !1026
  %shr4 = lshr i64 %add, 4, !dbg !1027
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1028
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1029
  %shr7 = lshr i64 %and6, 32, !dbg !1030
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1031
  %conv = trunc i64 %add8 to i32, !dbg !1032
  %shr9 = lshr i32 %conv, 16, !dbg !1033
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1034
  %shr11 = lshr i32 %add10, 8, !dbg !1035
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1036
  %and13 = and i32 %add12, 127, !dbg !1037
  ret i32 %and13, !dbg !1038
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #1 !dbg !1039 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1040
  %and = and i32 %shr, 1431655765, !dbg !1041
  %sub = sub i32 %a, %and, !dbg !1042
  %shr1 = lshr i32 %sub, 2, !dbg !1043
  %and2 = and i32 %shr1, 858993459, !dbg !1044
  %and3 = and i32 %sub, 858993459, !dbg !1045
  %add = add nuw nsw i32 %and2, %and3, !dbg !1046
  %shr4 = lshr i32 %add, 4, !dbg !1047
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1048
  %and6 = and i32 %add5, 252645135, !dbg !1049
  %shr7 = lshr i32 %and6, 16, !dbg !1050
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1051
  %shr9 = lshr i32 %add8, 8, !dbg !1052
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1053
  %and11 = and i32 %add10, 63, !dbg !1054
  ret i32 %and11, !dbg !1055
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1056 {
entry:
  %sub = sub i64 %a, %b, !dbg !1057
  %cmp = icmp sgt i64 %b, -1, !dbg !1058
  br i1 %cmp, label %if.then, label %if.else, !dbg !1059

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1060
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1061

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1062
  unreachable, !dbg !1062

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1063

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1064
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1065

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1066
  unreachable, !dbg !1066

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1067
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1068 {
entry:
  %sub = sub i32 %a, %b, !dbg !1069
  %cmp = icmp sgt i32 %b, -1, !dbg !1070
  br i1 %cmp, label %if.then, label %if.else, !dbg !1071

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1072
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1073

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1074
  unreachable, !dbg !1074

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1075

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1076
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1077

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1078
  unreachable, !dbg !1078

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1079
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !1080 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1081
  store i64 %a, i64* %all, align 8, !dbg !1082
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1083
  store i64 %b, i64* %all1, align 8, !dbg !1084
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1085
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1086
  %0 = load i32, i32* %high, align 4, !dbg !1086
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1087
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1088
  %1 = load i32, i32* %high3, align 4, !dbg !1088
  %cmp = icmp ult i32 %0, %1, !dbg !1089
  br i1 %cmp, label %if.then, label %if.end, !dbg !1090

if.then:                                          ; preds = %entry
  br label %return, !dbg !1091

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1092
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1093
  %2 = load i32, i32* %high5, align 4, !dbg !1093
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1094
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1095
  %3 = load i32, i32* %high7, align 4, !dbg !1095
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1096
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1097

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1098

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1099
  %4 = load i32, i32* %low, align 8, !dbg !1099
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1100
  %5 = load i32, i32* %low13, align 8, !dbg !1100
  %cmp14 = icmp ult i32 %4, %5, !dbg !1101
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1102

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1103

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1104
  %6 = load i32, i32* %low18, align 8, !dbg !1104
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1105
  %7 = load i32, i32* %low20, align 8, !dbg !1105
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1106
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1107

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1108

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1109

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1110
  ret i32 %retval.0, !dbg !1111
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !1112 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1113
  %sub = add nsw i32 %call, -1, !dbg !1114
  ret i32 %sub, !dbg !1115
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1116 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !1117
  ret i64 %call, !dbg !1118
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !1119 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1120
  %mul = mul i32 %call, %b, !dbg !1121
  %sub = sub i32 %a, %mul, !dbg !1122
  store i32 %sub, i32* %rem, align 4, !dbg !1123
  ret i32 %call, !dbg !1124
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #1 !dbg !1125 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1126
  br i1 %cmp, label %if.then, label %if.end, !dbg !1127

if.then:                                          ; preds = %entry
  br label %return, !dbg !1128

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1129
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1130

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1131

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1132, !range !325
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1133, !range !325
  %sub = sub nsw i32 %0, %1, !dbg !1134
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1135
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1136

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1137

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1138
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1139

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1140

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1141
  %sub10 = sub nsw i32 31, %sub, !dbg !1142
  %shl = shl i32 %n, %sub10, !dbg !1143
  %shr = lshr i32 %n, %inc, !dbg !1144
  br label %for.cond, !dbg !1145

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1146
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1146
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1146
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1146
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1147
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1145

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1148
  %2 = xor i32 %or, -1, !dbg !1149
  %sub17 = add i32 %2, %d, !dbg !1149
  br label %for.inc, !dbg !1150

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1151
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1151
  %sub20 = sub i32 %or, %and19, !dbg !1152
  %and = lshr i32 %sub17, 31, !dbg !1153
  %shl14 = shl i32 %q.0, 1, !dbg !1154
  %or15 = or i32 %shl14, %carry.0, !dbg !1155
  %dec = add i32 %sr.0, -1, !dbg !1156
  br label %for.cond, !dbg !1145, !llvm.loop !1157

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1158
  %or22 = or i32 %shl21, %carry.0, !dbg !1159
  br label %return, !dbg !1160

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1146
  ret i32 %retval.0, !dbg !1161
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1162 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !1163
  %0 = load i64, i64* %r, align 8, !dbg !1164
  ret i64 %0, !dbg !1165
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1166 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1167
  %mul = mul i32 %call, %b, !dbg !1168
  %sub = sub i32 %a, %mul, !dbg !1169
  ret i32 %sub, !dbg !1170
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #1 !dbg !1171 {
entry:
  br label %for.cond, !dbg !1172

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1173
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1174
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1175

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1176
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1176
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1177
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1178
  br label %for.inc, !dbg !1179

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1180
  br label %for.cond, !dbg !1175, !llvm.loop !1181

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1182
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #1 !dbg !1183 {
entry:
  br label %for.cond, !dbg !1184

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1185
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1186
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1187

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1188
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1189
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1190
  br label %for.inc, !dbg !1191

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1192
  br label %for.cond, !dbg !1187, !llvm.loop !1193

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1194
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noinline noreturn nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin noreturn "no-builtins" }

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112}
!llvm.ident = !{!114, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123, !124}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/countnegative/countnegative.c", directory: "/workspaces/llvmta/testcases/tmp.k31Aymgdo9", checksumkind: CSK_MD5, checksum: "3a65cdfe7e0fc9d549feeaaa286a7206")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!59 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!99 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!114 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)"}
!115 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!116 = !{i32 7, !"Dwarf Version", i32 5}
!117 = !{i32 2, !"Debug Info Version", i32 3}
!118 = !{i32 1, !"wchar_size", i32 4}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 1, !"branch-target-enforcement", i32 0}
!121 = !{i32 1, !"sign-return-address", i32 0}
!122 = !{i32 1, !"sign-return-address-all", i32 0}
!123 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = distinct !DISubprogram(name: "countnegative_initSeed", scope: !126, file: !126, line: 55, type: !127, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!126 = !DIFile(filename: "batchtest/countnegative/countnegative.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "3a65cdfe7e0fc9d549feeaaa286a7206")
!127 = !DISubroutineType(types: !128)
!128 = !{}
!129 = !DILocation(line: 57, column: 22, scope: !125)
!130 = !DILocation(line: 58, column: 1, scope: !125)
!131 = distinct !DISubprogram(name: "countnegative_randomInteger", scope: !126, file: !126, line: 63, type: !127, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!132 = !DILocation(line: 65, column: 28, scope: !131)
!133 = !DILocation(line: 65, column: 47, scope: !131)
!134 = !DILocation(line: 65, column: 55, scope: !131)
!135 = !DILocation(line: 65, column: 62, scope: !131)
!136 = !DILocation(line: 65, column: 22, scope: !131)
!137 = !DILocation(line: 66, column: 11, scope: !131)
!138 = !DILocation(line: 66, column: 3, scope: !131)
!139 = distinct !DISubprogram(name: "countnegative_initialize", scope: !126, file: !126, line: 72, type: !127, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!140 = !DILocation(line: 77, column: 9, scope: !139)
!141 = !DILocation(line: 0, scope: !139)
!142 = !DILocation(line: 77, column: 36, scope: !139)
!143 = !DILocation(line: 77, column: 3, scope: !139)
!144 = !DILocation(line: 79, column: 11, scope: !139)
!145 = !DILocation(line: 79, column: 38, scope: !139)
!146 = !DILocation(line: 79, column: 5, scope: !139)
!147 = !DILocation(line: 80, column: 44, scope: !139)
!148 = !DILocation(line: 80, column: 7, scope: !139)
!149 = !DILocation(line: 80, column: 41, scope: !139)
!150 = !DILocation(line: 79, column: 59, scope: !139)
!151 = distinct !{!151, !146, !152, !153}
!152 = !DILocation(line: 80, column: 72, scope: !139)
!153 = !{!"llvm.loop.mustprogress"}
!154 = !DILocation(line: 77, column: 57, scope: !139)
!155 = distinct !{!155, !143, !152, !153}
!156 = !DILocation(line: 81, column: 1, scope: !139)
!157 = distinct !DISubprogram(name: "countnegative_init", scope: !126, file: !126, line: 83, type: !127, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!158 = !DILocation(line: 85, column: 3, scope: !157)
!159 = !DILocation(line: 86, column: 3, scope: !157)
!160 = !DILocation(line: 87, column: 1, scope: !157)
!161 = distinct !DISubprogram(name: "countnegative_return", scope: !126, file: !126, line: 89, type: !127, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!162 = !DILocation(line: 91, column: 20, scope: !161)
!163 = !DILocation(line: 92, column: 20, scope: !161)
!164 = !DILocation(line: 91, column: 43, scope: !161)
!165 = !DILocation(line: 93, column: 20, scope: !161)
!166 = !DILocation(line: 92, column: 41, scope: !161)
!167 = !DILocation(line: 94, column: 20, scope: !161)
!168 = !DILocation(line: 93, column: 43, scope: !161)
!169 = !DILocation(line: 96, column: 23, scope: !161)
!170 = !DILocation(line: 96, column: 12, scope: !161)
!171 = !DILocation(line: 96, column: 3, scope: !161)
!172 = distinct !DISubprogram(name: "countnegative_sum", scope: !126, file: !126, line: 99, type: !127, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!173 = !DILocation(line: 109, column: 9, scope: !172)
!174 = !DILocation(line: 103, column: 7, scope: !172)
!175 = !DILocation(line: 0, scope: !172)
!176 = !DILocation(line: 109, column: 26, scope: !172)
!177 = !DILocation(line: 109, column: 3, scope: !172)
!178 = !DILocation(line: 111, column: 11, scope: !172)
!179 = !DILocation(line: 111, column: 28, scope: !172)
!180 = !DILocation(line: 111, column: 5, scope: !172)
!181 = !DILocation(line: 115, column: 5, scope: !172)
!182 = !DILocation(line: 113, column: 19, scope: !172)
!183 = !DILocation(line: 113, column: 16, scope: !172)
!184 = !DILocation(line: 111, column: 44, scope: !172)
!185 = distinct !{!185, !180, !181, !153}
!186 = !DILocation(line: 109, column: 42, scope: !172)
!187 = distinct !{!187, !177, !181, !153}
!188 = !DILocation(line: 122, column: 26, scope: !172)
!189 = !DILocation(line: 123, column: 24, scope: !172)
!190 = !DILocation(line: 124, column: 26, scope: !172)
!191 = !DILocation(line: 125, column: 24, scope: !172)
!192 = !DILocation(line: 126, column: 1, scope: !172)
!193 = distinct !DISubprogram(name: "countnegative_main", scope: !126, file: !126, line: 131, type: !127, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!194 = !DILocation(line: 133, column: 3, scope: !193)
!195 = !DILocation(line: 134, column: 1, scope: !193)
!196 = distinct !DISubprogram(name: "main", scope: !126, file: !126, line: 136, type: !127, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!197 = !DILocation(line: 138, column: 3, scope: !196)
!198 = !DILocation(line: 139, column: 3, scope: !196)
!199 = !DILocation(line: 141, column: 12, scope: !196)
!200 = !DILocation(line: 141, column: 3, scope: !196)
!201 = distinct !DISubprogram(name: "__absvdi2", scope: !3, file: !3, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !128)
!202 = !DILocation(line: 25, column: 11, scope: !201)
!203 = !DILocation(line: 25, column: 9, scope: !201)
!204 = !DILocation(line: 26, column: 9, scope: !201)
!205 = !DILocation(line: 28, column: 20, scope: !201)
!206 = !DILocation(line: 28, column: 5, scope: !201)
!207 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !55, file: !55, line: 57, type: !127, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !128)
!208 = !DILocation(line: 59, column: 1, scope: !207)
!209 = distinct !DISubprogram(name: "__absvsi2", scope: !5, file: !5, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !128)
!210 = !DILocation(line: 25, column: 11, scope: !209)
!211 = !DILocation(line: 25, column: 9, scope: !209)
!212 = !DILocation(line: 26, column: 9, scope: !209)
!213 = !DILocation(line: 28, column: 20, scope: !209)
!214 = !DILocation(line: 28, column: 5, scope: !209)
!215 = distinct !DISubprogram(name: "__addvdi3", scope: !9, file: !9, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !128)
!216 = !DILocation(line: 24, column: 27, scope: !215)
!217 = !DILocation(line: 25, column: 11, scope: !215)
!218 = !DILocation(line: 25, column: 9, scope: !215)
!219 = !DILocation(line: 27, column: 15, scope: !215)
!220 = !DILocation(line: 27, column: 13, scope: !215)
!221 = !DILocation(line: 28, column: 13, scope: !215)
!222 = !DILocation(line: 29, column: 5, scope: !215)
!223 = !DILocation(line: 32, column: 15, scope: !215)
!224 = !DILocation(line: 32, column: 13, scope: !215)
!225 = !DILocation(line: 33, column: 13, scope: !215)
!226 = !DILocation(line: 35, column: 5, scope: !215)
!227 = distinct !DISubprogram(name: "__addvsi3", scope: !11, file: !11, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !128)
!228 = !DILocation(line: 24, column: 27, scope: !227)
!229 = !DILocation(line: 25, column: 11, scope: !227)
!230 = !DILocation(line: 25, column: 9, scope: !227)
!231 = !DILocation(line: 27, column: 15, scope: !227)
!232 = !DILocation(line: 27, column: 13, scope: !227)
!233 = !DILocation(line: 28, column: 13, scope: !227)
!234 = !DILocation(line: 29, column: 5, scope: !227)
!235 = !DILocation(line: 32, column: 15, scope: !227)
!236 = !DILocation(line: 32, column: 13, scope: !227)
!237 = !DILocation(line: 33, column: 13, scope: !227)
!238 = !DILocation(line: 35, column: 5, scope: !227)
!239 = distinct !DISubprogram(name: "__ashldi3", scope: !15, file: !15, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !128)
!240 = !DILocation(line: 29, column: 11, scope: !239)
!241 = !DILocation(line: 29, column: 15, scope: !239)
!242 = !DILocation(line: 30, column: 11, scope: !239)
!243 = !DILocation(line: 30, column: 9, scope: !239)
!244 = !DILocation(line: 32, column: 18, scope: !239)
!245 = !DILocation(line: 32, column: 22, scope: !239)
!246 = !DILocation(line: 33, column: 33, scope: !239)
!247 = !DILocation(line: 33, column: 43, scope: !239)
!248 = !DILocation(line: 33, column: 37, scope: !239)
!249 = !DILocation(line: 33, column: 16, scope: !239)
!250 = !DILocation(line: 33, column: 18, scope: !239)
!251 = !DILocation(line: 33, column: 23, scope: !239)
!252 = !DILocation(line: 34, column: 5, scope: !239)
!253 = !DILocation(line: 37, column: 15, scope: !239)
!254 = !DILocation(line: 37, column: 13, scope: !239)
!255 = !DILocation(line: 38, column: 13, scope: !239)
!256 = !DILocation(line: 39, column: 33, scope: !239)
!257 = !DILocation(line: 39, column: 37, scope: !239)
!258 = !DILocation(line: 39, column: 18, scope: !239)
!259 = !DILocation(line: 39, column: 23, scope: !239)
!260 = !DILocation(line: 40, column: 32, scope: !239)
!261 = !DILocation(line: 40, column: 34, scope: !239)
!262 = !DILocation(line: 40, column: 39, scope: !239)
!263 = !DILocation(line: 40, column: 56, scope: !239)
!264 = !DILocation(line: 40, column: 77, scope: !239)
!265 = !DILocation(line: 40, column: 60, scope: !239)
!266 = !DILocation(line: 40, column: 45, scope: !239)
!267 = !DILocation(line: 40, column: 16, scope: !239)
!268 = !DILocation(line: 40, column: 18, scope: !239)
!269 = !DILocation(line: 40, column: 23, scope: !239)
!270 = !DILocation(line: 42, column: 19, scope: !239)
!271 = !DILocation(line: 42, column: 5, scope: !239)
!272 = !DILocation(line: 0, scope: !239)
!273 = !DILocation(line: 43, column: 1, scope: !239)
!274 = distinct !DISubprogram(name: "__ashrdi3", scope: !19, file: !19, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !128)
!275 = !DILocation(line: 29, column: 11, scope: !274)
!276 = !DILocation(line: 29, column: 15, scope: !274)
!277 = !DILocation(line: 30, column: 11, scope: !274)
!278 = !DILocation(line: 30, column: 9, scope: !274)
!279 = !DILocation(line: 33, column: 31, scope: !274)
!280 = !DILocation(line: 33, column: 33, scope: !274)
!281 = !DILocation(line: 33, column: 38, scope: !274)
!282 = !DILocation(line: 33, column: 16, scope: !274)
!283 = !DILocation(line: 33, column: 18, scope: !274)
!284 = !DILocation(line: 33, column: 23, scope: !274)
!285 = !DILocation(line: 34, column: 30, scope: !274)
!286 = !DILocation(line: 34, column: 32, scope: !274)
!287 = !DILocation(line: 34, column: 43, scope: !274)
!288 = !DILocation(line: 34, column: 37, scope: !274)
!289 = !DILocation(line: 34, column: 18, scope: !274)
!290 = !DILocation(line: 34, column: 22, scope: !274)
!291 = !DILocation(line: 35, column: 5, scope: !274)
!292 = !DILocation(line: 38, column: 15, scope: !274)
!293 = !DILocation(line: 38, column: 13, scope: !274)
!294 = !DILocation(line: 39, column: 13, scope: !274)
!295 = !DILocation(line: 40, column: 32, scope: !274)
!296 = !DILocation(line: 40, column: 34, scope: !274)
!297 = !DILocation(line: 40, column: 39, scope: !274)
!298 = !DILocation(line: 40, column: 16, scope: !274)
!299 = !DILocation(line: 40, column: 18, scope: !274)
!300 = !DILocation(line: 40, column: 24, scope: !274)
!301 = !DILocation(line: 41, column: 31, scope: !274)
!302 = !DILocation(line: 41, column: 33, scope: !274)
!303 = !DILocation(line: 41, column: 55, scope: !274)
!304 = !DILocation(line: 41, column: 38, scope: !274)
!305 = !DILocation(line: 41, column: 72, scope: !274)
!306 = !DILocation(line: 41, column: 76, scope: !274)
!307 = !DILocation(line: 41, column: 61, scope: !274)
!308 = !DILocation(line: 41, column: 18, scope: !274)
!309 = !DILocation(line: 41, column: 22, scope: !274)
!310 = !DILocation(line: 43, column: 19, scope: !274)
!311 = !DILocation(line: 43, column: 5, scope: !274)
!312 = !DILocation(line: 0, scope: !274)
!313 = !DILocation(line: 44, column: 1, scope: !274)
!314 = distinct !DISubprogram(name: "__clzdi2", scope: !23, file: !23, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !128)
!315 = !DILocation(line: 25, column: 7, scope: !314)
!316 = !DILocation(line: 25, column: 11, scope: !314)
!317 = !DILocation(line: 26, column: 26, scope: !314)
!318 = !DILocation(line: 26, column: 28, scope: !314)
!319 = !DILocation(line: 26, column: 33, scope: !314)
!320 = !DILocation(line: 27, column: 29, scope: !314)
!321 = !DILocation(line: 27, column: 31, scope: !314)
!322 = !DILocation(line: 27, column: 49, scope: !314)
!323 = !DILocation(line: 27, column: 42, scope: !314)
!324 = !DILocation(line: 27, column: 12, scope: !314)
!325 = !{i32 0, i32 33}
!326 = !DILocation(line: 28, column: 15, scope: !314)
!327 = !DILocation(line: 27, column: 59, scope: !314)
!328 = !DILocation(line: 27, column: 5, scope: !314)
!329 = distinct !DISubprogram(name: "__clzsi2", scope: !25, file: !25, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !128)
!330 = !DILocation(line: 25, column: 34, scope: !329)
!331 = !DILocation(line: 25, column: 40, scope: !329)
!332 = !DILocation(line: 26, column: 14, scope: !329)
!333 = !DILocation(line: 26, column: 7, scope: !329)
!334 = !DILocation(line: 29, column: 13, scope: !329)
!335 = !DILocation(line: 29, column: 23, scope: !329)
!336 = !DILocation(line: 29, column: 29, scope: !329)
!337 = !DILocation(line: 30, column: 13, scope: !329)
!338 = !DILocation(line: 30, column: 7, scope: !329)
!339 = !DILocation(line: 31, column: 7, scope: !329)
!340 = !DILocation(line: 33, column: 13, scope: !329)
!341 = !DILocation(line: 33, column: 21, scope: !329)
!342 = !DILocation(line: 33, column: 27, scope: !329)
!343 = !DILocation(line: 34, column: 13, scope: !329)
!344 = !DILocation(line: 34, column: 7, scope: !329)
!345 = !DILocation(line: 35, column: 7, scope: !329)
!346 = !DILocation(line: 37, column: 13, scope: !329)
!347 = !DILocation(line: 37, column: 20, scope: !329)
!348 = !DILocation(line: 37, column: 26, scope: !329)
!349 = !DILocation(line: 38, column: 13, scope: !329)
!350 = !DILocation(line: 38, column: 7, scope: !329)
!351 = !DILocation(line: 39, column: 7, scope: !329)
!352 = !DILocation(line: 52, column: 20, scope: !329)
!353 = !DILocation(line: 52, column: 37, scope: !329)
!354 = !DILocation(line: 52, column: 25, scope: !329)
!355 = !DILocation(line: 52, column: 14, scope: !329)
!356 = !DILocation(line: 52, column: 5, scope: !329)
!357 = distinct !DISubprogram(name: "__cmpdi2", scope: !29, file: !29, line: 23, type: !127, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !128)
!358 = !DILocation(line: 26, column: 7, scope: !357)
!359 = !DILocation(line: 26, column: 11, scope: !357)
!360 = !DILocation(line: 28, column: 7, scope: !357)
!361 = !DILocation(line: 28, column: 11, scope: !357)
!362 = !DILocation(line: 29, column: 11, scope: !357)
!363 = !DILocation(line: 29, column: 13, scope: !357)
!364 = !DILocation(line: 29, column: 22, scope: !357)
!365 = !DILocation(line: 29, column: 24, scope: !357)
!366 = !DILocation(line: 29, column: 18, scope: !357)
!367 = !DILocation(line: 29, column: 9, scope: !357)
!368 = !DILocation(line: 30, column: 9, scope: !357)
!369 = !DILocation(line: 31, column: 11, scope: !357)
!370 = !DILocation(line: 31, column: 13, scope: !357)
!371 = !DILocation(line: 31, column: 22, scope: !357)
!372 = !DILocation(line: 31, column: 24, scope: !357)
!373 = !DILocation(line: 31, column: 18, scope: !357)
!374 = !DILocation(line: 31, column: 9, scope: !357)
!375 = !DILocation(line: 32, column: 9, scope: !357)
!376 = !DILocation(line: 33, column: 13, scope: !357)
!377 = !DILocation(line: 33, column: 23, scope: !357)
!378 = !DILocation(line: 33, column: 17, scope: !357)
!379 = !DILocation(line: 33, column: 9, scope: !357)
!380 = !DILocation(line: 34, column: 9, scope: !357)
!381 = !DILocation(line: 35, column: 13, scope: !357)
!382 = !DILocation(line: 35, column: 23, scope: !357)
!383 = !DILocation(line: 35, column: 17, scope: !357)
!384 = !DILocation(line: 35, column: 9, scope: !357)
!385 = !DILocation(line: 36, column: 9, scope: !357)
!386 = !DILocation(line: 37, column: 5, scope: !357)
!387 = !DILocation(line: 0, scope: !357)
!388 = !DILocation(line: 38, column: 1, scope: !357)
!389 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !29, file: !29, line: 46, type: !127, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !128)
!390 = !DILocation(line: 48, column: 9, scope: !389)
!391 = !DILocation(line: 48, column: 24, scope: !389)
!392 = !DILocation(line: 48, column: 2, scope: !389)
!393 = distinct !DISubprogram(name: "__ctzdi2", scope: !33, file: !33, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !128)
!394 = !DILocation(line: 25, column: 7, scope: !393)
!395 = !DILocation(line: 25, column: 11, scope: !393)
!396 = !DILocation(line: 26, column: 28, scope: !393)
!397 = !DILocation(line: 26, column: 32, scope: !393)
!398 = !DILocation(line: 27, column: 29, scope: !393)
!399 = !DILocation(line: 27, column: 31, scope: !393)
!400 = !DILocation(line: 27, column: 41, scope: !393)
!401 = !DILocation(line: 27, column: 12, scope: !393)
!402 = !DILocation(line: 28, column: 18, scope: !393)
!403 = !DILocation(line: 27, column: 59, scope: !393)
!404 = !DILocation(line: 27, column: 5, scope: !393)
!405 = distinct !DISubprogram(name: "__ctzsi2", scope: !35, file: !35, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !128)
!406 = !DILocation(line: 25, column: 20, scope: !405)
!407 = !DILocation(line: 25, column: 34, scope: !405)
!408 = !DILocation(line: 25, column: 40, scope: !405)
!409 = !DILocation(line: 26, column: 7, scope: !405)
!410 = !DILocation(line: 29, column: 13, scope: !405)
!411 = !DILocation(line: 29, column: 23, scope: !405)
!412 = !DILocation(line: 29, column: 29, scope: !405)
!413 = !DILocation(line: 30, column: 7, scope: !405)
!414 = !DILocation(line: 31, column: 7, scope: !405)
!415 = !DILocation(line: 33, column: 13, scope: !405)
!416 = !DILocation(line: 33, column: 21, scope: !405)
!417 = !DILocation(line: 33, column: 27, scope: !405)
!418 = !DILocation(line: 34, column: 7, scope: !405)
!419 = !DILocation(line: 35, column: 7, scope: !405)
!420 = !DILocation(line: 37, column: 13, scope: !405)
!421 = !DILocation(line: 37, column: 20, scope: !405)
!422 = !DILocation(line: 37, column: 26, scope: !405)
!423 = !DILocation(line: 38, column: 7, scope: !405)
!424 = !DILocation(line: 40, column: 7, scope: !405)
!425 = !DILocation(line: 56, column: 25, scope: !405)
!426 = !DILocation(line: 56, column: 20, scope: !405)
!427 = !DILocation(line: 56, column: 44, scope: !405)
!428 = !DILocation(line: 56, column: 32, scope: !405)
!429 = !DILocation(line: 56, column: 14, scope: !405)
!430 = !DILocation(line: 56, column: 5, scope: !405)
!431 = distinct !DISubprogram(name: "__divdi3", scope: !39, file: !39, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !128)
!432 = !DILocation(line: 23, column: 20, scope: !431)
!433 = !DILocation(line: 24, column: 20, scope: !431)
!434 = !DILocation(line: 25, column: 12, scope: !431)
!435 = !DILocation(line: 25, column: 19, scope: !431)
!436 = !DILocation(line: 26, column: 12, scope: !431)
!437 = !DILocation(line: 26, column: 19, scope: !431)
!438 = !DILocation(line: 27, column: 9, scope: !431)
!439 = !DILocation(line: 28, column: 13, scope: !431)
!440 = !DILocation(line: 28, column: 44, scope: !431)
!441 = !DILocation(line: 28, column: 51, scope: !431)
!442 = !DILocation(line: 28, column: 5, scope: !431)
!443 = distinct !DISubprogram(name: "__udivmoddi4", scope: !97, file: !97, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !128)
!444 = !DILocation(line: 29, column: 7, scope: !443)
!445 = !DILocation(line: 29, column: 11, scope: !443)
!446 = !DILocation(line: 31, column: 7, scope: !443)
!447 = !DILocation(line: 31, column: 11, scope: !443)
!448 = !DILocation(line: 36, column: 11, scope: !443)
!449 = !DILocation(line: 36, column: 13, scope: !443)
!450 = !DILocation(line: 36, column: 18, scope: !443)
!451 = !DILocation(line: 36, column: 9, scope: !443)
!452 = !DILocation(line: 38, column: 15, scope: !443)
!453 = !DILocation(line: 38, column: 17, scope: !443)
!454 = !DILocation(line: 38, column: 22, scope: !443)
!455 = !DILocation(line: 38, column: 13, scope: !443)
!456 = !DILocation(line: 44, column: 17, scope: !443)
!457 = !DILocation(line: 45, column: 28, scope: !443)
!458 = !DILocation(line: 45, column: 38, scope: !443)
!459 = !DILocation(line: 45, column: 32, scope: !443)
!460 = !DILocation(line: 45, column: 24, scope: !443)
!461 = !DILocation(line: 45, column: 22, scope: !443)
!462 = !DILocation(line: 45, column: 17, scope: !443)
!463 = !DILocation(line: 46, column: 24, scope: !443)
!464 = !DILocation(line: 46, column: 34, scope: !443)
!465 = !DILocation(line: 46, column: 28, scope: !443)
!466 = !DILocation(line: 46, column: 20, scope: !443)
!467 = !DILocation(line: 46, column: 13, scope: !443)
!468 = !DILocation(line: 52, column: 13, scope: !443)
!469 = !DILocation(line: 53, column: 24, scope: !443)
!470 = !DILocation(line: 53, column: 20, scope: !443)
!471 = !DILocation(line: 53, column: 18, scope: !443)
!472 = !DILocation(line: 53, column: 13, scope: !443)
!473 = !DILocation(line: 54, column: 9, scope: !443)
!474 = !DILocation(line: 57, column: 13, scope: !443)
!475 = !DILocation(line: 57, column: 17, scope: !443)
!476 = !DILocation(line: 57, column: 9, scope: !443)
!477 = !DILocation(line: 59, column: 15, scope: !443)
!478 = !DILocation(line: 59, column: 17, scope: !443)
!479 = !DILocation(line: 59, column: 22, scope: !443)
!480 = !DILocation(line: 59, column: 13, scope: !443)
!481 = !DILocation(line: 65, column: 17, scope: !443)
!482 = !DILocation(line: 66, column: 26, scope: !443)
!483 = !DILocation(line: 66, column: 28, scope: !443)
!484 = !DILocation(line: 66, column: 39, scope: !443)
!485 = !DILocation(line: 66, column: 33, scope: !443)
!486 = !DILocation(line: 66, column: 24, scope: !443)
!487 = !DILocation(line: 66, column: 22, scope: !443)
!488 = !DILocation(line: 66, column: 17, scope: !443)
!489 = !DILocation(line: 67, column: 22, scope: !443)
!490 = !DILocation(line: 67, column: 24, scope: !443)
!491 = !DILocation(line: 67, column: 35, scope: !443)
!492 = !DILocation(line: 67, column: 29, scope: !443)
!493 = !DILocation(line: 67, column: 20, scope: !443)
!494 = !DILocation(line: 67, column: 13, scope: !443)
!495 = !DILocation(line: 70, column: 17, scope: !443)
!496 = !DILocation(line: 70, column: 21, scope: !443)
!497 = !DILocation(line: 70, column: 13, scope: !443)
!498 = !DILocation(line: 76, column: 17, scope: !443)
!499 = !DILocation(line: 78, column: 30, scope: !443)
!500 = !DILocation(line: 78, column: 32, scope: !443)
!501 = !DILocation(line: 78, column: 41, scope: !443)
!502 = !DILocation(line: 78, column: 43, scope: !443)
!503 = !DILocation(line: 78, column: 37, scope: !443)
!504 = !DILocation(line: 78, column: 19, scope: !443)
!505 = !DILocation(line: 78, column: 21, scope: !443)
!506 = !DILocation(line: 78, column: 26, scope: !443)
!507 = !DILocation(line: 79, column: 21, scope: !443)
!508 = !DILocation(line: 79, column: 25, scope: !443)
!509 = !DILocation(line: 80, column: 26, scope: !443)
!510 = !DILocation(line: 80, column: 22, scope: !443)
!511 = !DILocation(line: 81, column: 13, scope: !443)
!512 = !DILocation(line: 82, column: 22, scope: !443)
!513 = !DILocation(line: 82, column: 24, scope: !443)
!514 = !DILocation(line: 82, column: 33, scope: !443)
!515 = !DILocation(line: 82, column: 35, scope: !443)
!516 = !DILocation(line: 82, column: 29, scope: !443)
!517 = !DILocation(line: 82, column: 20, scope: !443)
!518 = !DILocation(line: 82, column: 13, scope: !443)
!519 = !DILocation(line: 88, column: 16, scope: !443)
!520 = !DILocation(line: 88, column: 18, scope: !443)
!521 = !DILocation(line: 88, column: 28, scope: !443)
!522 = !DILocation(line: 88, column: 30, scope: !443)
!523 = !DILocation(line: 88, column: 35, scope: !443)
!524 = !DILocation(line: 88, column: 23, scope: !443)
!525 = !DILocation(line: 88, column: 41, scope: !443)
!526 = !DILocation(line: 88, column: 13, scope: !443)
!527 = !DILocation(line: 90, column: 17, scope: !443)
!528 = !DILocation(line: 92, column: 31, scope: !443)
!529 = !DILocation(line: 92, column: 21, scope: !443)
!530 = !DILocation(line: 92, column: 25, scope: !443)
!531 = !DILocation(line: 93, column: 30, scope: !443)
!532 = !DILocation(line: 93, column: 32, scope: !443)
!533 = !DILocation(line: 93, column: 42, scope: !443)
!534 = !DILocation(line: 93, column: 44, scope: !443)
!535 = !DILocation(line: 93, column: 49, scope: !443)
!536 = !DILocation(line: 93, column: 37, scope: !443)
!537 = !DILocation(line: 93, column: 19, scope: !443)
!538 = !DILocation(line: 93, column: 21, scope: !443)
!539 = !DILocation(line: 93, column: 26, scope: !443)
!540 = !DILocation(line: 94, column: 26, scope: !443)
!541 = !DILocation(line: 94, column: 22, scope: !443)
!542 = !DILocation(line: 95, column: 13, scope: !443)
!543 = !DILocation(line: 96, column: 22, scope: !443)
!544 = !DILocation(line: 96, column: 24, scope: !443)
!545 = !DILocation(line: 96, column: 48, scope: !443)
!546 = !DILocation(line: 96, column: 50, scope: !443)
!547 = !DILocation(line: 96, column: 32, scope: !443)
!548 = !DILocation(line: 96, column: 29, scope: !443)
!549 = !DILocation(line: 96, column: 20, scope: !443)
!550 = !DILocation(line: 96, column: 13, scope: !443)
!551 = !DILocation(line: 102, column: 30, scope: !443)
!552 = !DILocation(line: 102, column: 32, scope: !443)
!553 = !DILocation(line: 102, column: 14, scope: !443)
!554 = !DILocation(line: 102, column: 56, scope: !443)
!555 = !DILocation(line: 102, column: 58, scope: !443)
!556 = !DILocation(line: 102, column: 40, scope: !443)
!557 = !DILocation(line: 102, column: 38, scope: !443)
!558 = !DILocation(line: 104, column: 16, scope: !443)
!559 = !DILocation(line: 104, column: 13, scope: !443)
!560 = !DILocation(line: 106, column: 16, scope: !443)
!561 = !DILocation(line: 107, column: 26, scope: !443)
!562 = !DILocation(line: 107, column: 22, scope: !443)
!563 = !DILocation(line: 107, column: 17, scope: !443)
!564 = !DILocation(line: 108, column: 13, scope: !443)
!565 = !DILocation(line: 110, column: 9, scope: !443)
!566 = !DILocation(line: 113, column: 13, scope: !443)
!567 = !DILocation(line: 113, column: 17, scope: !443)
!568 = !DILocation(line: 114, column: 24, scope: !443)
!569 = !DILocation(line: 114, column: 45, scope: !443)
!570 = !DILocation(line: 114, column: 28, scope: !443)
!571 = !DILocation(line: 114, column: 11, scope: !443)
!572 = !DILocation(line: 114, column: 13, scope: !443)
!573 = !DILocation(line: 114, column: 18, scope: !443)
!574 = !DILocation(line: 116, column: 22, scope: !443)
!575 = !DILocation(line: 116, column: 24, scope: !443)
!576 = !DILocation(line: 116, column: 29, scope: !443)
!577 = !DILocation(line: 116, column: 11, scope: !443)
!578 = !DILocation(line: 116, column: 13, scope: !443)
!579 = !DILocation(line: 116, column: 18, scope: !443)
!580 = !DILocation(line: 117, column: 22, scope: !443)
!581 = !DILocation(line: 117, column: 24, scope: !443)
!582 = !DILocation(line: 117, column: 46, scope: !443)
!583 = !DILocation(line: 117, column: 29, scope: !443)
!584 = !DILocation(line: 117, column: 60, scope: !443)
!585 = !DILocation(line: 117, column: 64, scope: !443)
!586 = !DILocation(line: 117, column: 53, scope: !443)
!587 = !DILocation(line: 117, column: 13, scope: !443)
!588 = !DILocation(line: 117, column: 17, scope: !443)
!589 = !DILocation(line: 118, column: 5, scope: !443)
!590 = !DILocation(line: 121, column: 15, scope: !443)
!591 = !DILocation(line: 121, column: 17, scope: !443)
!592 = !DILocation(line: 121, column: 22, scope: !443)
!593 = !DILocation(line: 121, column: 13, scope: !443)
!594 = !DILocation(line: 127, column: 22, scope: !443)
!595 = !DILocation(line: 127, column: 43, scope: !443)
!596 = !DILocation(line: 127, column: 17, scope: !443)
!597 = !DILocation(line: 129, column: 21, scope: !443)
!598 = !DILocation(line: 130, column: 32, scope: !443)
!599 = !DILocation(line: 130, column: 43, scope: !443)
!600 = !DILocation(line: 130, column: 47, scope: !443)
!601 = !DILocation(line: 130, column: 36, scope: !443)
!602 = !DILocation(line: 130, column: 28, scope: !443)
!603 = !DILocation(line: 130, column: 26, scope: !443)
!604 = !DILocation(line: 130, column: 21, scope: !443)
!605 = !DILocation(line: 131, column: 25, scope: !443)
!606 = !DILocation(line: 131, column: 29, scope: !443)
!607 = !DILocation(line: 131, column: 21, scope: !443)
!608 = !DILocation(line: 132, column: 30, scope: !443)
!609 = !DILocation(line: 132, column: 21, scope: !443)
!610 = !DILocation(line: 133, column: 40, scope: !443)
!611 = !DILocation(line: 133, column: 22, scope: !443)
!612 = !DILocation(line: 134, column: 30, scope: !443)
!613 = !DILocation(line: 134, column: 32, scope: !443)
!614 = !DILocation(line: 134, column: 37, scope: !443)
!615 = !DILocation(line: 134, column: 19, scope: !443)
!616 = !DILocation(line: 134, column: 21, scope: !443)
!617 = !DILocation(line: 134, column: 26, scope: !443)
!618 = !DILocation(line: 135, column: 30, scope: !443)
!619 = !DILocation(line: 135, column: 32, scope: !443)
!620 = !DILocation(line: 135, column: 54, scope: !443)
!621 = !DILocation(line: 135, column: 37, scope: !443)
!622 = !DILocation(line: 135, column: 68, scope: !443)
!623 = !DILocation(line: 135, column: 72, scope: !443)
!624 = !DILocation(line: 135, column: 61, scope: !443)
!625 = !DILocation(line: 135, column: 21, scope: !443)
!626 = !DILocation(line: 135, column: 25, scope: !443)
!627 = !DILocation(line: 136, column: 26, scope: !443)
!628 = !DILocation(line: 136, column: 17, scope: !443)
!629 = !DILocation(line: 142, column: 55, scope: !443)
!630 = !DILocation(line: 142, column: 37, scope: !443)
!631 = !DILocation(line: 142, column: 35, scope: !443)
!632 = !DILocation(line: 142, column: 78, scope: !443)
!633 = !DILocation(line: 142, column: 80, scope: !443)
!634 = !DILocation(line: 142, column: 62, scope: !443)
!635 = !DILocation(line: 142, column: 60, scope: !443)
!636 = !DILocation(line: 147, column: 20, scope: !443)
!637 = !DILocation(line: 147, column: 17, scope: !443)
!638 = !DILocation(line: 149, column: 21, scope: !443)
!639 = !DILocation(line: 149, column: 25, scope: !443)
!640 = !DILocation(line: 150, column: 32, scope: !443)
!641 = !DILocation(line: 150, column: 19, scope: !443)
!642 = !DILocation(line: 150, column: 21, scope: !443)
!643 = !DILocation(line: 150, column: 26, scope: !443)
!644 = !DILocation(line: 151, column: 19, scope: !443)
!645 = !DILocation(line: 151, column: 21, scope: !443)
!646 = !DILocation(line: 151, column: 26, scope: !443)
!647 = !DILocation(line: 152, column: 29, scope: !443)
!648 = !DILocation(line: 152, column: 31, scope: !443)
!649 = !DILocation(line: 152, column: 21, scope: !443)
!650 = !DILocation(line: 152, column: 25, scope: !443)
!651 = !DILocation(line: 153, column: 13, scope: !443)
!652 = !DILocation(line: 154, column: 25, scope: !443)
!653 = !DILocation(line: 154, column: 22, scope: !443)
!654 = !DILocation(line: 156, column: 21, scope: !443)
!655 = !DILocation(line: 156, column: 25, scope: !443)
!656 = !DILocation(line: 157, column: 32, scope: !443)
!657 = !DILocation(line: 157, column: 53, scope: !443)
!658 = !DILocation(line: 157, column: 36, scope: !443)
!659 = !DILocation(line: 157, column: 19, scope: !443)
!660 = !DILocation(line: 157, column: 21, scope: !443)
!661 = !DILocation(line: 157, column: 26, scope: !443)
!662 = !DILocation(line: 158, column: 30, scope: !443)
!663 = !DILocation(line: 158, column: 32, scope: !443)
!664 = !DILocation(line: 158, column: 37, scope: !443)
!665 = !DILocation(line: 158, column: 19, scope: !443)
!666 = !DILocation(line: 158, column: 21, scope: !443)
!667 = !DILocation(line: 158, column: 26, scope: !443)
!668 = !DILocation(line: 159, column: 30, scope: !443)
!669 = !DILocation(line: 159, column: 32, scope: !443)
!670 = !DILocation(line: 159, column: 54, scope: !443)
!671 = !DILocation(line: 159, column: 37, scope: !443)
!672 = !DILocation(line: 159, column: 68, scope: !443)
!673 = !DILocation(line: 159, column: 72, scope: !443)
!674 = !DILocation(line: 159, column: 61, scope: !443)
!675 = !DILocation(line: 159, column: 21, scope: !443)
!676 = !DILocation(line: 159, column: 25, scope: !443)
!677 = !DILocation(line: 160, column: 13, scope: !443)
!678 = !DILocation(line: 163, column: 31, scope: !443)
!679 = !DILocation(line: 163, column: 53, scope: !443)
!680 = !DILocation(line: 163, column: 35, scope: !443)
!681 = !DILocation(line: 163, column: 21, scope: !443)
!682 = !DILocation(line: 163, column: 25, scope: !443)
!683 = !DILocation(line: 164, column: 31, scope: !443)
!684 = !DILocation(line: 164, column: 33, scope: !443)
!685 = !DILocation(line: 164, column: 56, scope: !443)
!686 = !DILocation(line: 164, column: 38, scope: !443)
!687 = !DILocation(line: 165, column: 33, scope: !443)
!688 = !DILocation(line: 165, column: 44, scope: !443)
!689 = !DILocation(line: 165, column: 37, scope: !443)
!690 = !DILocation(line: 164, column: 63, scope: !443)
!691 = !DILocation(line: 164, column: 19, scope: !443)
!692 = !DILocation(line: 164, column: 21, scope: !443)
!693 = !DILocation(line: 164, column: 26, scope: !443)
!694 = !DILocation(line: 166, column: 19, scope: !443)
!695 = !DILocation(line: 166, column: 21, scope: !443)
!696 = !DILocation(line: 166, column: 26, scope: !443)
!697 = !DILocation(line: 167, column: 29, scope: !443)
!698 = !DILocation(line: 167, column: 31, scope: !443)
!699 = !DILocation(line: 167, column: 43, scope: !443)
!700 = !DILocation(line: 167, column: 36, scope: !443)
!701 = !DILocation(line: 167, column: 21, scope: !443)
!702 = !DILocation(line: 167, column: 25, scope: !443)
!703 = !DILocation(line: 169, column: 9, scope: !443)
!704 = !DILocation(line: 176, column: 34, scope: !443)
!705 = !DILocation(line: 176, column: 36, scope: !443)
!706 = !DILocation(line: 176, column: 18, scope: !443)
!707 = !DILocation(line: 176, column: 60, scope: !443)
!708 = !DILocation(line: 176, column: 62, scope: !443)
!709 = !DILocation(line: 176, column: 44, scope: !443)
!710 = !DILocation(line: 176, column: 42, scope: !443)
!711 = !DILocation(line: 178, column: 20, scope: !443)
!712 = !DILocation(line: 178, column: 17, scope: !443)
!713 = !DILocation(line: 180, column: 21, scope: !443)
!714 = !DILocation(line: 181, column: 30, scope: !443)
!715 = !DILocation(line: 181, column: 26, scope: !443)
!716 = !DILocation(line: 181, column: 21, scope: !443)
!717 = !DILocation(line: 182, column: 17, scope: !443)
!718 = !DILocation(line: 184, column: 13, scope: !443)
!719 = !DILocation(line: 187, column: 17, scope: !443)
!720 = !DILocation(line: 187, column: 21, scope: !443)
!721 = !DILocation(line: 188, column: 20, scope: !443)
!722 = !DILocation(line: 188, column: 17, scope: !443)
!723 = !DILocation(line: 190, column: 32, scope: !443)
!724 = !DILocation(line: 190, column: 19, scope: !443)
!725 = !DILocation(line: 190, column: 21, scope: !443)
!726 = !DILocation(line: 190, column: 26, scope: !443)
!727 = !DILocation(line: 191, column: 19, scope: !443)
!728 = !DILocation(line: 191, column: 21, scope: !443)
!729 = !DILocation(line: 191, column: 26, scope: !443)
!730 = !DILocation(line: 192, column: 29, scope: !443)
!731 = !DILocation(line: 192, column: 31, scope: !443)
!732 = !DILocation(line: 192, column: 21, scope: !443)
!733 = !DILocation(line: 192, column: 25, scope: !443)
!734 = !DILocation(line: 193, column: 13, scope: !443)
!735 = !DILocation(line: 196, column: 32, scope: !443)
!736 = !DILocation(line: 196, column: 53, scope: !443)
!737 = !DILocation(line: 196, column: 36, scope: !443)
!738 = !DILocation(line: 196, column: 19, scope: !443)
!739 = !DILocation(line: 196, column: 21, scope: !443)
!740 = !DILocation(line: 196, column: 26, scope: !443)
!741 = !DILocation(line: 197, column: 30, scope: !443)
!742 = !DILocation(line: 197, column: 32, scope: !443)
!743 = !DILocation(line: 197, column: 37, scope: !443)
!744 = !DILocation(line: 197, column: 19, scope: !443)
!745 = !DILocation(line: 197, column: 21, scope: !443)
!746 = !DILocation(line: 197, column: 26, scope: !443)
!747 = !DILocation(line: 198, column: 30, scope: !443)
!748 = !DILocation(line: 198, column: 32, scope: !443)
!749 = !DILocation(line: 198, column: 54, scope: !443)
!750 = !DILocation(line: 198, column: 37, scope: !443)
!751 = !DILocation(line: 198, column: 68, scope: !443)
!752 = !DILocation(line: 198, column: 72, scope: !443)
!753 = !DILocation(line: 198, column: 61, scope: !443)
!754 = !DILocation(line: 198, column: 21, scope: !443)
!755 = !DILocation(line: 198, column: 25, scope: !443)
!756 = !DILocation(line: 0, scope: !443)
!757 = !DILocation(line: 209, column: 5, scope: !443)
!758 = !DILocation(line: 209, column: 15, scope: !443)
!759 = !DILocation(line: 212, column: 23, scope: !443)
!760 = !DILocation(line: 212, column: 25, scope: !443)
!761 = !DILocation(line: 212, column: 43, scope: !443)
!762 = !DILocation(line: 212, column: 36, scope: !443)
!763 = !DILocation(line: 212, column: 11, scope: !443)
!764 = !DILocation(line: 212, column: 13, scope: !443)
!765 = !DILocation(line: 212, column: 18, scope: !443)
!766 = !DILocation(line: 213, column: 41, scope: !443)
!767 = !DILocation(line: 213, column: 43, scope: !443)
!768 = !DILocation(line: 213, column: 36, scope: !443)
!769 = !DILocation(line: 213, column: 13, scope: !443)
!770 = !DILocation(line: 213, column: 18, scope: !443)
!771 = !DILocation(line: 214, column: 23, scope: !443)
!772 = !DILocation(line: 214, column: 25, scope: !443)
!773 = !DILocation(line: 214, column: 43, scope: !443)
!774 = !DILocation(line: 214, column: 36, scope: !443)
!775 = !DILocation(line: 214, column: 11, scope: !443)
!776 = !DILocation(line: 214, column: 13, scope: !443)
!777 = !DILocation(line: 214, column: 18, scope: !443)
!778 = !DILocation(line: 215, column: 30, scope: !443)
!779 = !DILocation(line: 215, column: 36, scope: !443)
!780 = !DILocation(line: 215, column: 13, scope: !443)
!781 = !DILocation(line: 215, column: 18, scope: !443)
!782 = !DILocation(line: 223, column: 37, scope: !443)
!783 = !DILocation(line: 223, column: 45, scope: !443)
!784 = !DILocation(line: 223, column: 49, scope: !443)
!785 = !DILocation(line: 225, column: 24, scope: !443)
!786 = !DILocation(line: 225, column: 11, scope: !443)
!787 = !DILocation(line: 225, column: 15, scope: !443)
!788 = !DILocation(line: 226, column: 5, scope: !443)
!789 = !DILocation(line: 224, column: 19, scope: !443)
!790 = !DILocation(line: 224, column: 17, scope: !443)
!791 = !DILocation(line: 209, column: 20, scope: !443)
!792 = distinct !{!792, !757, !788, !153}
!793 = !DILocation(line: 227, column: 16, scope: !443)
!794 = !DILocation(line: 227, column: 20, scope: !443)
!795 = !DILocation(line: 227, column: 28, scope: !443)
!796 = !DILocation(line: 227, column: 26, scope: !443)
!797 = !DILocation(line: 227, column: 7, scope: !443)
!798 = !DILocation(line: 227, column: 11, scope: !443)
!799 = !DILocation(line: 228, column: 9, scope: !443)
!800 = !DILocation(line: 229, column: 18, scope: !443)
!801 = !DILocation(line: 229, column: 14, scope: !443)
!802 = !DILocation(line: 229, column: 9, scope: !443)
!803 = !DILocation(line: 230, column: 14, scope: !443)
!804 = !DILocation(line: 230, column: 5, scope: !443)
!805 = !DILocation(line: 231, column: 1, scope: !443)
!806 = distinct !DISubprogram(name: "__divmoddi4", scope: !41, file: !41, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !128)
!807 = !DILocation(line: 22, column: 14, scope: !806)
!808 = !DILocation(line: 23, column: 16, scope: !806)
!809 = !DILocation(line: 23, column: 12, scope: !806)
!810 = !DILocation(line: 23, column: 8, scope: !806)
!811 = !DILocation(line: 24, column: 3, scope: !806)
!812 = distinct !DISubprogram(name: "__divmodsi4", scope: !43, file: !43, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !128)
!813 = !DILocation(line: 22, column: 14, scope: !812)
!814 = !DILocation(line: 23, column: 16, scope: !812)
!815 = !DILocation(line: 23, column: 12, scope: !812)
!816 = !DILocation(line: 23, column: 8, scope: !812)
!817 = !DILocation(line: 24, column: 3, scope: !812)
!818 = distinct !DISubprogram(name: "__divsi3", scope: !45, file: !45, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !128)
!819 = !DILocation(line: 25, column: 20, scope: !818)
!820 = !DILocation(line: 26, column: 20, scope: !818)
!821 = !DILocation(line: 27, column: 12, scope: !818)
!822 = !DILocation(line: 27, column: 19, scope: !818)
!823 = !DILocation(line: 28, column: 12, scope: !818)
!824 = !DILocation(line: 28, column: 19, scope: !818)
!825 = !DILocation(line: 29, column: 9, scope: !818)
!826 = !DILocation(line: 36, column: 22, scope: !818)
!827 = !DILocation(line: 36, column: 33, scope: !818)
!828 = !DILocation(line: 36, column: 40, scope: !818)
!829 = !DILocation(line: 36, column: 5, scope: !818)
!830 = distinct !DISubprogram(name: "__ffsdi2", scope: !49, file: !49, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !128)
!831 = !DILocation(line: 25, column: 7, scope: !830)
!832 = !DILocation(line: 25, column: 11, scope: !830)
!833 = !DILocation(line: 26, column: 13, scope: !830)
!834 = !DILocation(line: 26, column: 17, scope: !830)
!835 = !DILocation(line: 26, column: 9, scope: !830)
!836 = !DILocation(line: 28, column: 15, scope: !830)
!837 = !DILocation(line: 28, column: 17, scope: !830)
!838 = !DILocation(line: 28, column: 22, scope: !830)
!839 = !DILocation(line: 28, column: 13, scope: !830)
!840 = !DILocation(line: 29, column: 13, scope: !830)
!841 = !DILocation(line: 30, column: 32, scope: !830)
!842 = !DILocation(line: 30, column: 34, scope: !830)
!843 = !DILocation(line: 30, column: 16, scope: !830)
!844 = !DILocation(line: 30, column: 40, scope: !830)
!845 = !DILocation(line: 30, column: 9, scope: !830)
!846 = !DILocation(line: 32, column: 30, scope: !830)
!847 = !DILocation(line: 32, column: 12, scope: !830)
!848 = !DILocation(line: 32, column: 35, scope: !830)
!849 = !DILocation(line: 32, column: 5, scope: !830)
!850 = !DILocation(line: 0, scope: !830)
!851 = !DILocation(line: 33, column: 1, scope: !830)
!852 = distinct !DISubprogram(name: "__ffssi2", scope: !51, file: !51, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !128)
!853 = !DILocation(line: 24, column: 11, scope: !852)
!854 = !DILocation(line: 24, column: 9, scope: !852)
!855 = !DILocation(line: 26, column: 9, scope: !852)
!856 = !DILocation(line: 28, column: 12, scope: !852)
!857 = !DILocation(line: 28, column: 29, scope: !852)
!858 = !DILocation(line: 28, column: 5, scope: !852)
!859 = !DILocation(line: 0, scope: !852)
!860 = !DILocation(line: 29, column: 1, scope: !852)
!861 = distinct !DISubprogram(name: "__lshrdi3", scope: !57, file: !57, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !128)
!862 = !DILocation(line: 29, column: 11, scope: !861)
!863 = !DILocation(line: 29, column: 15, scope: !861)
!864 = !DILocation(line: 30, column: 11, scope: !861)
!865 = !DILocation(line: 30, column: 9, scope: !861)
!866 = !DILocation(line: 32, column: 16, scope: !861)
!867 = !DILocation(line: 32, column: 18, scope: !861)
!868 = !DILocation(line: 32, column: 23, scope: !861)
!869 = !DILocation(line: 33, column: 30, scope: !861)
!870 = !DILocation(line: 33, column: 32, scope: !861)
!871 = !DILocation(line: 33, column: 43, scope: !861)
!872 = !DILocation(line: 33, column: 37, scope: !861)
!873 = !DILocation(line: 33, column: 18, scope: !861)
!874 = !DILocation(line: 33, column: 22, scope: !861)
!875 = !DILocation(line: 34, column: 5, scope: !861)
!876 = !DILocation(line: 37, column: 15, scope: !861)
!877 = !DILocation(line: 37, column: 13, scope: !861)
!878 = !DILocation(line: 38, column: 13, scope: !861)
!879 = !DILocation(line: 39, column: 32, scope: !861)
!880 = !DILocation(line: 39, column: 34, scope: !861)
!881 = !DILocation(line: 39, column: 39, scope: !861)
!882 = !DILocation(line: 39, column: 16, scope: !861)
!883 = !DILocation(line: 39, column: 18, scope: !861)
!884 = !DILocation(line: 39, column: 24, scope: !861)
!885 = !DILocation(line: 40, column: 31, scope: !861)
!886 = !DILocation(line: 40, column: 33, scope: !861)
!887 = !DILocation(line: 40, column: 55, scope: !861)
!888 = !DILocation(line: 40, column: 38, scope: !861)
!889 = !DILocation(line: 40, column: 72, scope: !861)
!890 = !DILocation(line: 40, column: 76, scope: !861)
!891 = !DILocation(line: 40, column: 61, scope: !861)
!892 = !DILocation(line: 40, column: 18, scope: !861)
!893 = !DILocation(line: 40, column: 22, scope: !861)
!894 = !DILocation(line: 42, column: 19, scope: !861)
!895 = !DILocation(line: 42, column: 5, scope: !861)
!896 = !DILocation(line: 0, scope: !861)
!897 = !DILocation(line: 43, column: 1, scope: !861)
!898 = distinct !DISubprogram(name: "__moddi3", scope: !61, file: !61, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !128)
!899 = !DILocation(line: 24, column: 17, scope: !898)
!900 = !DILocation(line: 25, column: 11, scope: !898)
!901 = !DILocation(line: 26, column: 12, scope: !898)
!902 = !DILocation(line: 26, column: 17, scope: !898)
!903 = !DILocation(line: 28, column: 5, scope: !898)
!904 = !DILocation(line: 29, column: 21, scope: !898)
!905 = !DILocation(line: 29, column: 23, scope: !898)
!906 = !DILocation(line: 29, column: 28, scope: !898)
!907 = !DILocation(line: 29, column: 5, scope: !898)
!908 = distinct !DISubprogram(name: "__modsi3", scope: !63, file: !63, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !128)
!909 = !DILocation(line: 22, column: 16, scope: !908)
!910 = !DILocation(line: 22, column: 31, scope: !908)
!911 = !DILocation(line: 22, column: 14, scope: !908)
!912 = !DILocation(line: 22, column: 5, scope: !908)
!913 = distinct !DISubprogram(name: "__mulvdi3", scope: !67, file: !67, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !128)
!914 = !DILocation(line: 27, column: 11, scope: !913)
!915 = !DILocation(line: 27, column: 9, scope: !913)
!916 = !DILocation(line: 29, column: 15, scope: !913)
!917 = !DILocation(line: 29, column: 20, scope: !913)
!918 = !DILocation(line: 29, column: 25, scope: !913)
!919 = !DILocation(line: 29, column: 13, scope: !913)
!920 = !DILocation(line: 30, column: 13, scope: !913)
!921 = !DILocation(line: 31, column: 9, scope: !913)
!922 = !DILocation(line: 33, column: 11, scope: !913)
!923 = !DILocation(line: 33, column: 9, scope: !913)
!924 = !DILocation(line: 35, column: 15, scope: !913)
!925 = !DILocation(line: 35, column: 20, scope: !913)
!926 = !DILocation(line: 35, column: 25, scope: !913)
!927 = !DILocation(line: 35, column: 13, scope: !913)
!928 = !DILocation(line: 36, column: 13, scope: !913)
!929 = !DILocation(line: 37, column: 9, scope: !913)
!930 = !DILocation(line: 39, column: 19, scope: !913)
!931 = !DILocation(line: 40, column: 23, scope: !913)
!932 = !DILocation(line: 40, column: 29, scope: !913)
!933 = !DILocation(line: 41, column: 19, scope: !913)
!934 = !DILocation(line: 42, column: 23, scope: !913)
!935 = !DILocation(line: 42, column: 29, scope: !913)
!936 = !DILocation(line: 43, column: 15, scope: !913)
!937 = !DILocation(line: 43, column: 19, scope: !913)
!938 = !DILocation(line: 43, column: 28, scope: !913)
!939 = !DILocation(line: 43, column: 9, scope: !913)
!940 = !DILocation(line: 44, column: 9, scope: !913)
!941 = !DILocation(line: 45, column: 12, scope: !913)
!942 = !DILocation(line: 45, column: 9, scope: !913)
!943 = !DILocation(line: 47, column: 25, scope: !913)
!944 = !DILocation(line: 47, column: 19, scope: !913)
!945 = !DILocation(line: 47, column: 13, scope: !913)
!946 = !DILocation(line: 48, column: 13, scope: !913)
!947 = !DILocation(line: 49, column: 5, scope: !913)
!948 = !DILocation(line: 52, column: 27, scope: !913)
!949 = !DILocation(line: 52, column: 25, scope: !913)
!950 = !DILocation(line: 52, column: 19, scope: !913)
!951 = !DILocation(line: 52, column: 13, scope: !913)
!952 = !DILocation(line: 53, column: 13, scope: !913)
!953 = !DILocation(line: 55, column: 5, scope: !913)
!954 = !DILocation(line: 0, scope: !913)
!955 = !DILocation(line: 56, column: 1, scope: !913)
!956 = distinct !DISubprogram(name: "__mulvsi3", scope: !69, file: !69, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !128)
!957 = !DILocation(line: 27, column: 11, scope: !956)
!958 = !DILocation(line: 27, column: 9, scope: !956)
!959 = !DILocation(line: 29, column: 15, scope: !956)
!960 = !DILocation(line: 29, column: 20, scope: !956)
!961 = !DILocation(line: 29, column: 25, scope: !956)
!962 = !DILocation(line: 29, column: 13, scope: !956)
!963 = !DILocation(line: 30, column: 13, scope: !956)
!964 = !DILocation(line: 31, column: 9, scope: !956)
!965 = !DILocation(line: 33, column: 11, scope: !956)
!966 = !DILocation(line: 33, column: 9, scope: !956)
!967 = !DILocation(line: 35, column: 15, scope: !956)
!968 = !DILocation(line: 35, column: 20, scope: !956)
!969 = !DILocation(line: 35, column: 25, scope: !956)
!970 = !DILocation(line: 35, column: 13, scope: !956)
!971 = !DILocation(line: 36, column: 13, scope: !956)
!972 = !DILocation(line: 37, column: 9, scope: !956)
!973 = !DILocation(line: 39, column: 19, scope: !956)
!974 = !DILocation(line: 40, column: 23, scope: !956)
!975 = !DILocation(line: 40, column: 29, scope: !956)
!976 = !DILocation(line: 41, column: 19, scope: !956)
!977 = !DILocation(line: 42, column: 23, scope: !956)
!978 = !DILocation(line: 42, column: 29, scope: !956)
!979 = !DILocation(line: 43, column: 15, scope: !956)
!980 = !DILocation(line: 43, column: 19, scope: !956)
!981 = !DILocation(line: 43, column: 28, scope: !956)
!982 = !DILocation(line: 43, column: 9, scope: !956)
!983 = !DILocation(line: 44, column: 9, scope: !956)
!984 = !DILocation(line: 45, column: 12, scope: !956)
!985 = !DILocation(line: 45, column: 9, scope: !956)
!986 = !DILocation(line: 47, column: 25, scope: !956)
!987 = !DILocation(line: 47, column: 19, scope: !956)
!988 = !DILocation(line: 47, column: 13, scope: !956)
!989 = !DILocation(line: 48, column: 13, scope: !956)
!990 = !DILocation(line: 49, column: 5, scope: !956)
!991 = !DILocation(line: 52, column: 27, scope: !956)
!992 = !DILocation(line: 52, column: 25, scope: !956)
!993 = !DILocation(line: 52, column: 19, scope: !956)
!994 = !DILocation(line: 52, column: 13, scope: !956)
!995 = !DILocation(line: 53, column: 13, scope: !956)
!996 = !DILocation(line: 55, column: 5, scope: !956)
!997 = !DILocation(line: 0, scope: !956)
!998 = !DILocation(line: 56, column: 1, scope: !956)
!999 = distinct !DISubprogram(name: "__paritydi2", scope: !73, file: !73, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !128)
!1000 = !DILocation(line: 23, column: 7, scope: !999)
!1001 = !DILocation(line: 23, column: 11, scope: !999)
!1002 = !DILocation(line: 24, column: 26, scope: !999)
!1003 = !DILocation(line: 24, column: 28, scope: !999)
!1004 = !DILocation(line: 24, column: 39, scope: !999)
!1005 = !DILocation(line: 24, column: 33, scope: !999)
!1006 = !DILocation(line: 24, column: 12, scope: !999)
!1007 = !DILocation(line: 24, column: 5, scope: !999)
!1008 = distinct !DISubprogram(name: "__paritysi2", scope: !75, file: !75, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !128)
!1009 = !DILocation(line: 23, column: 12, scope: !1008)
!1010 = !DILocation(line: 23, column: 7, scope: !1008)
!1011 = !DILocation(line: 24, column: 12, scope: !1008)
!1012 = !DILocation(line: 24, column: 7, scope: !1008)
!1013 = !DILocation(line: 25, column: 12, scope: !1008)
!1014 = !DILocation(line: 25, column: 7, scope: !1008)
!1015 = !DILocation(line: 26, column: 26, scope: !1008)
!1016 = !DILocation(line: 26, column: 20, scope: !1008)
!1017 = !DILocation(line: 26, column: 34, scope: !1008)
!1018 = !DILocation(line: 26, column: 5, scope: !1008)
!1019 = distinct !DISubprogram(name: "__popcountdi2", scope: !79, file: !79, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !128)
!1020 = !DILocation(line: 23, column: 20, scope: !1019)
!1021 = !DILocation(line: 23, column: 26, scope: !1019)
!1022 = !DILocation(line: 23, column: 13, scope: !1019)
!1023 = !DILocation(line: 25, column: 15, scope: !1019)
!1024 = !DILocation(line: 25, column: 21, scope: !1019)
!1025 = !DILocation(line: 25, column: 52, scope: !1019)
!1026 = !DILocation(line: 25, column: 46, scope: !1019)
!1027 = !DILocation(line: 27, column: 20, scope: !1019)
!1028 = !DILocation(line: 27, column: 14, scope: !1019)
!1029 = !DILocation(line: 27, column: 27, scope: !1019)
!1030 = !DILocation(line: 29, column: 34, scope: !1019)
!1031 = !DILocation(line: 29, column: 28, scope: !1019)
!1032 = !DILocation(line: 29, column: 16, scope: !1019)
!1033 = !DILocation(line: 32, column: 16, scope: !1019)
!1034 = !DILocation(line: 32, column: 11, scope: !1019)
!1035 = !DILocation(line: 35, column: 20, scope: !1019)
!1036 = !DILocation(line: 35, column: 15, scope: !1019)
!1037 = !DILocation(line: 35, column: 27, scope: !1019)
!1038 = !DILocation(line: 35, column: 5, scope: !1019)
!1039 = distinct !DISubprogram(name: "__popcountsi2", scope: !81, file: !81, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !128)
!1040 = !DILocation(line: 23, column: 17, scope: !1039)
!1041 = !DILocation(line: 23, column: 23, scope: !1039)
!1042 = !DILocation(line: 23, column: 11, scope: !1039)
!1043 = !DILocation(line: 25, column: 13, scope: !1039)
!1044 = !DILocation(line: 25, column: 19, scope: !1039)
!1045 = !DILocation(line: 25, column: 38, scope: !1039)
!1046 = !DILocation(line: 25, column: 33, scope: !1039)
!1047 = !DILocation(line: 27, column: 17, scope: !1039)
!1048 = !DILocation(line: 27, column: 12, scope: !1039)
!1049 = !DILocation(line: 27, column: 24, scope: !1039)
!1050 = !DILocation(line: 29, column: 17, scope: !1039)
!1051 = !DILocation(line: 29, column: 12, scope: !1039)
!1052 = !DILocation(line: 32, column: 20, scope: !1039)
!1053 = !DILocation(line: 32, column: 15, scope: !1039)
!1054 = !DILocation(line: 32, column: 27, scope: !1039)
!1055 = !DILocation(line: 32, column: 5, scope: !1039)
!1056 = distinct !DISubprogram(name: "__subvdi3", scope: !85, file: !85, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !128)
!1057 = !DILocation(line: 24, column: 27, scope: !1056)
!1058 = !DILocation(line: 25, column: 11, scope: !1056)
!1059 = !DILocation(line: 25, column: 9, scope: !1056)
!1060 = !DILocation(line: 27, column: 15, scope: !1056)
!1061 = !DILocation(line: 27, column: 13, scope: !1056)
!1062 = !DILocation(line: 28, column: 13, scope: !1056)
!1063 = !DILocation(line: 29, column: 5, scope: !1056)
!1064 = !DILocation(line: 32, column: 15, scope: !1056)
!1065 = !DILocation(line: 32, column: 13, scope: !1056)
!1066 = !DILocation(line: 33, column: 13, scope: !1056)
!1067 = !DILocation(line: 35, column: 5, scope: !1056)
!1068 = distinct !DISubprogram(name: "__subvsi3", scope: !87, file: !87, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !128)
!1069 = !DILocation(line: 24, column: 27, scope: !1068)
!1070 = !DILocation(line: 25, column: 11, scope: !1068)
!1071 = !DILocation(line: 25, column: 9, scope: !1068)
!1072 = !DILocation(line: 27, column: 15, scope: !1068)
!1073 = !DILocation(line: 27, column: 13, scope: !1068)
!1074 = !DILocation(line: 28, column: 13, scope: !1068)
!1075 = !DILocation(line: 29, column: 5, scope: !1068)
!1076 = !DILocation(line: 32, column: 15, scope: !1068)
!1077 = !DILocation(line: 32, column: 13, scope: !1068)
!1078 = !DILocation(line: 33, column: 13, scope: !1068)
!1079 = !DILocation(line: 35, column: 5, scope: !1068)
!1080 = distinct !DISubprogram(name: "__ucmpdi2", scope: !91, file: !91, line: 23, type: !127, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !128)
!1081 = !DILocation(line: 26, column: 7, scope: !1080)
!1082 = !DILocation(line: 26, column: 11, scope: !1080)
!1083 = !DILocation(line: 28, column: 7, scope: !1080)
!1084 = !DILocation(line: 28, column: 11, scope: !1080)
!1085 = !DILocation(line: 29, column: 11, scope: !1080)
!1086 = !DILocation(line: 29, column: 13, scope: !1080)
!1087 = !DILocation(line: 29, column: 22, scope: !1080)
!1088 = !DILocation(line: 29, column: 24, scope: !1080)
!1089 = !DILocation(line: 29, column: 18, scope: !1080)
!1090 = !DILocation(line: 29, column: 9, scope: !1080)
!1091 = !DILocation(line: 30, column: 9, scope: !1080)
!1092 = !DILocation(line: 31, column: 11, scope: !1080)
!1093 = !DILocation(line: 31, column: 13, scope: !1080)
!1094 = !DILocation(line: 31, column: 22, scope: !1080)
!1095 = !DILocation(line: 31, column: 24, scope: !1080)
!1096 = !DILocation(line: 31, column: 18, scope: !1080)
!1097 = !DILocation(line: 31, column: 9, scope: !1080)
!1098 = !DILocation(line: 32, column: 9, scope: !1080)
!1099 = !DILocation(line: 33, column: 13, scope: !1080)
!1100 = !DILocation(line: 33, column: 23, scope: !1080)
!1101 = !DILocation(line: 33, column: 17, scope: !1080)
!1102 = !DILocation(line: 33, column: 9, scope: !1080)
!1103 = !DILocation(line: 34, column: 9, scope: !1080)
!1104 = !DILocation(line: 35, column: 13, scope: !1080)
!1105 = !DILocation(line: 35, column: 23, scope: !1080)
!1106 = !DILocation(line: 35, column: 17, scope: !1080)
!1107 = !DILocation(line: 35, column: 9, scope: !1080)
!1108 = !DILocation(line: 36, column: 9, scope: !1080)
!1109 = !DILocation(line: 37, column: 5, scope: !1080)
!1110 = !DILocation(line: 0, scope: !1080)
!1111 = !DILocation(line: 38, column: 1, scope: !1080)
!1112 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !91, file: !91, line: 46, type: !127, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !128)
!1113 = !DILocation(line: 48, column: 9, scope: !1112)
!1114 = !DILocation(line: 48, column: 25, scope: !1112)
!1115 = !DILocation(line: 48, column: 2, scope: !1112)
!1116 = distinct !DISubprogram(name: "__udivdi3", scope: !95, file: !95, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !128)
!1117 = !DILocation(line: 22, column: 12, scope: !1116)
!1118 = !DILocation(line: 22, column: 5, scope: !1116)
!1119 = distinct !DISubprogram(name: "__udivmodsi4", scope: !99, file: !99, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !128)
!1120 = !DILocation(line: 22, column: 14, scope: !1119)
!1121 = !DILocation(line: 23, column: 16, scope: !1119)
!1122 = !DILocation(line: 23, column: 12, scope: !1119)
!1123 = !DILocation(line: 23, column: 8, scope: !1119)
!1124 = !DILocation(line: 24, column: 3, scope: !1119)
!1125 = distinct !DISubprogram(name: "__udivsi3", scope: !103, file: !103, line: 25, type: !127, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !128)
!1126 = !DILocation(line: 32, column: 11, scope: !1125)
!1127 = !DILocation(line: 32, column: 9, scope: !1125)
!1128 = !DILocation(line: 33, column: 9, scope: !1125)
!1129 = !DILocation(line: 34, column: 11, scope: !1125)
!1130 = !DILocation(line: 34, column: 9, scope: !1125)
!1131 = !DILocation(line: 35, column: 9, scope: !1125)
!1132 = !DILocation(line: 36, column: 10, scope: !1125)
!1133 = !DILocation(line: 36, column: 29, scope: !1125)
!1134 = !DILocation(line: 36, column: 27, scope: !1125)
!1135 = !DILocation(line: 38, column: 12, scope: !1125)
!1136 = !DILocation(line: 38, column: 9, scope: !1125)
!1137 = !DILocation(line: 39, column: 9, scope: !1125)
!1138 = !DILocation(line: 40, column: 12, scope: !1125)
!1139 = !DILocation(line: 40, column: 9, scope: !1125)
!1140 = !DILocation(line: 41, column: 9, scope: !1125)
!1141 = !DILocation(line: 42, column: 5, scope: !1125)
!1142 = !DILocation(line: 45, column: 28, scope: !1125)
!1143 = !DILocation(line: 45, column: 11, scope: !1125)
!1144 = !DILocation(line: 46, column: 11, scope: !1125)
!1145 = !DILocation(line: 48, column: 5, scope: !1125)
!1146 = !DILocation(line: 0, scope: !1125)
!1147 = !DILocation(line: 48, column: 15, scope: !1125)
!1148 = !DILocation(line: 51, column: 22, scope: !1125)
!1149 = !DILocation(line: 60, column: 41, scope: !1125)
!1150 = !DILocation(line: 63, column: 5, scope: !1125)
!1151 = !DILocation(line: 62, column: 16, scope: !1125)
!1152 = !DILocation(line: 62, column: 11, scope: !1125)
!1153 = !DILocation(line: 61, column: 19, scope: !1125)
!1154 = !DILocation(line: 52, column: 16, scope: !1125)
!1155 = !DILocation(line: 52, column: 22, scope: !1125)
!1156 = !DILocation(line: 48, column: 20, scope: !1125)
!1157 = distinct !{!1157, !1145, !1150, !153}
!1158 = !DILocation(line: 64, column: 12, scope: !1125)
!1159 = !DILocation(line: 64, column: 18, scope: !1125)
!1160 = !DILocation(line: 65, column: 5, scope: !1125)
!1161 = !DILocation(line: 66, column: 1, scope: !1125)
!1162 = distinct !DISubprogram(name: "__umoddi3", scope: !107, file: !107, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !128)
!1163 = !DILocation(line: 23, column: 5, scope: !1162)
!1164 = !DILocation(line: 24, column: 12, scope: !1162)
!1165 = !DILocation(line: 24, column: 5, scope: !1162)
!1166 = distinct !DISubprogram(name: "__umodsi3", scope: !109, file: !109, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !128)
!1167 = !DILocation(line: 22, column: 16, scope: !1166)
!1168 = !DILocation(line: 22, column: 32, scope: !1166)
!1169 = !DILocation(line: 22, column: 14, scope: !1166)
!1170 = !DILocation(line: 22, column: 5, scope: !1166)
!1171 = distinct !DISubprogram(name: "memcpy", scope: !113, file: !113, line: 3, type: !127, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !128)
!1172 = !DILocation(line: 8, column: 6, scope: !1171)
!1173 = !DILocation(line: 0, scope: !1171)
!1174 = !DILocation(line: 8, column: 19, scope: !1171)
!1175 = !DILocation(line: 8, column: 2, scope: !1171)
!1176 = !DILocation(line: 9, column: 21, scope: !1171)
!1177 = !DILocation(line: 9, column: 3, scope: !1171)
!1178 = !DILocation(line: 9, column: 19, scope: !1171)
!1179 = !DILocation(line: 10, column: 2, scope: !1171)
!1180 = !DILocation(line: 8, column: 26, scope: !1171)
!1181 = distinct !{!1181, !1175, !1179, !153}
!1182 = !DILocation(line: 11, column: 1, scope: !1171)
!1183 = distinct !DISubprogram(name: "memset", scope: !113, file: !113, line: 13, type: !127, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !128)
!1184 = !DILocation(line: 17, column: 6, scope: !1183)
!1185 = !DILocation(line: 0, scope: !1183)
!1186 = !DILocation(line: 17, column: 19, scope: !1183)
!1187 = !DILocation(line: 17, column: 2, scope: !1183)
!1188 = !DILocation(line: 18, column: 13, scope: !1183)
!1189 = !DILocation(line: 18, column: 3, scope: !1183)
!1190 = !DILocation(line: 18, column: 11, scope: !1183)
!1191 = !DILocation(line: 19, column: 2, scope: !1183)
!1192 = !DILocation(line: 17, column: 26, scope: !1183)
!1193 = distinct !{!1193, !1187, !1191, !153}
!1194 = !DILocation(line: 20, column: 2, scope: !1183)
