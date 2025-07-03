; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%union.dwords = type { i64 }
%struct.anon = type { i32, i32 }

@countnegative_seed = dso_local global i32 0, align 4, !dbg !0
@countnegative_array = dso_local global [10 x [10 x i32]] zeroinitializer, align 4, !dbg !7
@countnegative_postotal = dso_local global i32 0, align 4, !dbg !14
@countnegative_poscnt = dso_local global i32 0, align 4, !dbg !18
@countnegative_negtotal = dso_local global i32 0, align 4, !dbg !16
@countnegative_negcnt = dso_local global i32 0, align 4, !dbg !20
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
define dso_local arm_aapcs_vfpcc void @countnegative_initSeed() #0 !dbg !146 {
entry:
  store volatile i32 0, i32* @countnegative_seed, align 4, !dbg !150
  ret void, !dbg !151
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @countnegative_randomInteger() #0 !dbg !152 {
entry:
  %0 = load volatile i32, i32* @countnegative_seed, align 4, !dbg !154
  %mul = mul nsw i32 %0, 133, !dbg !155
  %add = add nsw i32 %mul, 81, !dbg !156
  %rem = srem i32 %add, 8095, !dbg !157
  store volatile i32 %rem, i32* @countnegative_seed, align 4, !dbg !158
  %1 = load volatile i32, i32* @countnegative_seed, align 4, !dbg !159
  ret i32 %1, !dbg !160
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_initialize([10 x i32]* noundef %Array) #0 !dbg !161 {
entry:
  call void @llvm.dbg.value(metadata [10 x i32]* %Array, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.value(metadata i32 0, metadata !169, metadata !DIExpression()), !dbg !168
  br label %for.cond, !dbg !170

for.cond:                                         ; preds = %for.inc5, %entry
  %OuterIndex.0 = phi i32 [ 0, %entry ], [ %inc6, %for.inc5 ], !dbg !172
  call void @llvm.dbg.value(metadata i32 %OuterIndex.0, metadata !169, metadata !DIExpression()), !dbg !168
  %exitcond1.not = icmp eq i32 %OuterIndex.0, 10, !dbg !173
  br i1 %exitcond1.not, label %for.end7, label %for.body, !dbg !175

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !176, metadata !DIExpression()), !dbg !168
  br label %for.cond1, !dbg !177

for.cond1:                                        ; preds = %for.inc, %for.body
  %InnerIndex.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !dbg !179
  call void @llvm.dbg.value(metadata i32 %InnerIndex.0, metadata !176, metadata !DIExpression()), !dbg !168
  %exitcond.not = icmp eq i32 %InnerIndex.0, 10, !dbg !180
  br i1 %exitcond.not, label %for.end, label %for.body3, !dbg !182

for.body3:                                        ; preds = %for.cond1
  %call = call arm_aapcs_vfpcc i32 @countnegative_randomInteger() #4, !dbg !183
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %Array, i32 %OuterIndex.0, i32 %InnerIndex.0, !dbg !184
  store i32 %call, i32* %arrayidx4, align 4, !dbg !185
  br label %for.inc, !dbg !184

for.inc:                                          ; preds = %for.body3
  %inc = add nuw nsw i32 %InnerIndex.0, 1, !dbg !186
  call void @llvm.dbg.value(metadata i32 %inc, metadata !176, metadata !DIExpression()), !dbg !168
  br label %for.cond1, !dbg !187, !llvm.loop !188

for.end:                                          ; preds = %for.cond1
  br label %for.inc5, !dbg !189

for.inc5:                                         ; preds = %for.end
  %inc6 = add nuw nsw i32 %OuterIndex.0, 1, !dbg !191
  call void @llvm.dbg.value(metadata i32 %inc6, metadata !169, metadata !DIExpression()), !dbg !168
  br label %for.cond, !dbg !192, !llvm.loop !193

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !195
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_init() #0 !dbg !196 {
entry:
  call arm_aapcs_vfpcc void @countnegative_initSeed() #4, !dbg !197
  call arm_aapcs_vfpcc void @countnegative_initialize([10 x i32]* noundef getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @countnegative_array, i32 0, i32 0)) #4, !dbg !198
  ret void, !dbg !199
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @countnegative_return() #0 !dbg !200 {
entry:
  %0 = load i32, i32* @countnegative_postotal, align 4, !dbg !201
  %1 = load i32, i32* @countnegative_poscnt, align 4, !dbg !202
  %add = add nsw i32 %0, %1, !dbg !203
  %2 = load i32, i32* @countnegative_negtotal, align 4, !dbg !204
  %add1 = add nsw i32 %add, %2, !dbg !205
  %3 = load i32, i32* @countnegative_negcnt, align 4, !dbg !206
  %add2 = add nsw i32 %add1, %3, !dbg !207
  call void @llvm.dbg.value(metadata i32 %add2, metadata !208, metadata !DIExpression()), !dbg !209
  %cmp = icmp ne i32 %add2, 1538270, !dbg !210
  %cond = sext i1 %cmp to i32, !dbg !211
  ret i32 %cond, !dbg !212
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_sum([10 x i32]* noundef %Array) #0 !dbg !213 {
entry:
  call void @llvm.dbg.value(metadata [10 x i32]* %Array, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 0, metadata !216, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 0, metadata !217, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 0, metadata !218, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 0, metadata !219, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 0, metadata !220, metadata !DIExpression()), !dbg !215
  br label %for.cond, !dbg !221

for.cond:                                         ; preds = %for.inc6, %entry
  %Ptotal.0 = phi i32 [ 0, %entry ], [ %Ptotal.1, %for.inc6 ], !dbg !223
  %Outer.0 = phi i32 [ 0, %entry ], [ %inc7, %for.inc6 ], !dbg !224
  call void @llvm.dbg.value(metadata i32 undef, metadata !218, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %Outer.0, metadata !220, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %Ptotal.0, metadata !216, metadata !DIExpression()), !dbg !215
  %exitcond1.not = icmp eq i32 %Outer.0, 10, !dbg !225
  br i1 %exitcond1.not, label %for.end8, label %for.body, !dbg !227

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !228, metadata !DIExpression()), !dbg !215
  br label %for.cond1, !dbg !229

for.cond1:                                        ; preds = %for.inc, %for.body
  %Ptotal.1 = phi i32 [ %Ptotal.0, %for.body ], [ %add, %for.inc ], !dbg !215
  %Inner.0 = phi i32 [ 0, %for.body ], [ %inc5, %for.inc ], !dbg !231
  call void @llvm.dbg.value(metadata i32 undef, metadata !218, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %Inner.0, metadata !228, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %Ptotal.1, metadata !216, metadata !DIExpression()), !dbg !215
  %exitcond.not = icmp eq i32 %Inner.0, 10, !dbg !232
  br i1 %exitcond.not, label %for.end, label %for.body3, !dbg !234

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.value(metadata !DIArgList(i32 %Ptotal.1, i32 undef), metadata !216, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !215
  call void @llvm.dbg.value(metadata i32 undef, metadata !218, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !215
  br label %for.inc, !dbg !235

for.inc:                                          ; preds = %for.body3
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %Array, i32 %Outer.0, i32 %Inner.0, !dbg !237
  %0 = load i32, i32* %arrayidx4, align 4, !dbg !237
  call void @llvm.dbg.value(metadata !DIArgList(i32 %Ptotal.1, i32 %0), metadata !216, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !215
  %add = add nsw i32 %Ptotal.1, %0, !dbg !238
  call void @llvm.dbg.value(metadata i32 %add, metadata !216, metadata !DIExpression()), !dbg !215
  %inc5 = add nuw nsw i32 %Inner.0, 1, !dbg !239
  call void @llvm.dbg.value(metadata i32 %inc5, metadata !228, metadata !DIExpression()), !dbg !215
  br label %for.cond1, !dbg !240, !llvm.loop !241

for.end:                                          ; preds = %for.cond1
  br label %for.inc6, !dbg !242

for.inc6:                                         ; preds = %for.end
  %inc7 = add nuw nsw i32 %Outer.0, 1, !dbg !243
  call void @llvm.dbg.value(metadata i32 %inc7, metadata !220, metadata !DIExpression()), !dbg !215
  br label %for.cond, !dbg !244, !llvm.loop !245

for.end8:                                         ; preds = %for.cond
  store i32 %Ptotal.0, i32* @countnegative_postotal, align 4, !dbg !247
  store i32 100, i32* @countnegative_poscnt, align 4, !dbg !248
  store i32 0, i32* @countnegative_negtotal, align 4, !dbg !249
  store i32 0, i32* @countnegative_negcnt, align 4, !dbg !250
  ret void, !dbg !251
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_main() #0 !dbg !252 {
entry:
  call arm_aapcs_vfpcc void @countnegative_sum([10 x i32]* noundef getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @countnegative_array, i32 0, i32 0)) #4, !dbg !253
  ret void, !dbg !254
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !255 {
entry:
  call arm_aapcs_vfpcc void @countnegative_init() #4, !dbg !256
  call arm_aapcs_vfpcc void @countnegative_main() #4, !dbg !257
  %call = call arm_aapcs_vfpcc i32 @countnegative_return() #4, !dbg !258
  ret i32 %call, !dbg !259
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #1 !dbg !260 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !262
  br i1 %cmp, label %if.then, label %if.end, !dbg !263

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !264
  unreachable, !dbg !264

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !265
  ret i64 %0, !dbg !266
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #2 !dbg !267 {
entry:
  unreachable, !dbg !268
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #1 !dbg !269 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !270
  br i1 %cmp, label %if.then, label %if.end, !dbg !271

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !272
  unreachable, !dbg !272

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !273
  ret i32 %0, !dbg !274
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !275 {
entry:
  %add = add i64 %a, %b, !dbg !276
  %cmp = icmp sgt i64 %b, -1, !dbg !277
  br i1 %cmp, label %if.then, label %if.else, !dbg !278

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !279
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !280

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !281
  unreachable, !dbg !281

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !282

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !283
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !284

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !285
  unreachable, !dbg !285

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !286
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !287 {
entry:
  %add = add i32 %a, %b, !dbg !288
  %cmp = icmp sgt i32 %b, -1, !dbg !289
  br i1 %cmp, label %if.then, label %if.else, !dbg !290

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !291
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !292

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !293
  unreachable, !dbg !293

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !294

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !295
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !296

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !297
  unreachable, !dbg !297

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !298
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #1 !dbg !299 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !300
  store i64 %a, i64* %all, align 8, !dbg !301
  %and = and i32 %b, 32, !dbg !302
  %tobool.not = icmp eq i32 %and, 0, !dbg !302
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !303

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !304
  store i32 0, i32* %low, align 8, !dbg !305
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !306
  %0 = load i32, i32* %low2, align 8, !dbg !306
  %sub = add nsw i32 %b, -32, !dbg !307
  %shl = shl i32 %0, %sub, !dbg !308
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !309
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !310
  store i32 %shl, i32* %high, align 4, !dbg !311
  br label %if.end18, !dbg !312

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !313
  br i1 %cmp, label %if.then4, label %if.end, !dbg !314

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !315

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !316
  %1 = load i32, i32* %low6, align 8, !dbg !316
  %shl7 = shl i32 %1, %b, !dbg !317
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !318
  store i32 %shl7, i32* %low9, align 8, !dbg !319
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !320
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !321
  %2 = load i32, i32* %high11, align 4, !dbg !321
  %shl12 = shl i32 %2, %b, !dbg !322
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !323
  %3 = load i32, i32* %low14, align 8, !dbg !323
  %sub15 = sub nsw i32 32, %b, !dbg !324
  %shr = lshr i32 %3, %sub15, !dbg !325
  %or = or i32 %shl12, %shr, !dbg !326
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !327
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !328
  store i32 %or, i32* %high17, align 4, !dbg !329
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !330
  %4 = load i64, i64* %all19, align 8, !dbg !330
  br label %return, !dbg !331

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !332
  ret i64 %retval.0, !dbg !333
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !334 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !335
  store i64 %a, i64* %all, align 8, !dbg !336
  %and = and i32 %b, 32, !dbg !337
  %tobool.not = icmp eq i32 %and, 0, !dbg !337
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !338

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !339
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !340
  %0 = load i32, i32* %high, align 4, !dbg !340
  %shr = ashr i32 %0, 31, !dbg !341
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !342
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !343
  store i32 %shr, i32* %high2, align 4, !dbg !344
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !345
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !346
  %1 = load i32, i32* %high4, align 4, !dbg !346
  %sub = add nsw i32 %b, -32, !dbg !347
  %shr5 = ashr i32 %1, %sub, !dbg !348
  %low = bitcast %union.dwords* %result to i32*, !dbg !349
  store i32 %shr5, i32* %low, align 8, !dbg !350
  br label %if.end21, !dbg !351

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !352
  br i1 %cmp, label %if.then7, label %if.end, !dbg !353

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !354

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !355
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !356
  %2 = load i32, i32* %high9, align 4, !dbg !356
  %shr10 = ashr i32 %2, %b, !dbg !357
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !358
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !359
  store i32 %shr10, i32* %high12, align 4, !dbg !360
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !361
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !362
  %3 = load i32, i32* %high14, align 4, !dbg !362
  %sub15 = sub nsw i32 32, %b, !dbg !363
  %shl = shl i32 %3, %sub15, !dbg !364
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !365
  %4 = load i32, i32* %low17, align 8, !dbg !365
  %shr18 = lshr i32 %4, %b, !dbg !366
  %or = or i32 %shl, %shr18, !dbg !367
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !368
  store i32 %or, i32* %low20, align 8, !dbg !369
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !370
  %5 = load i64, i64* %all22, align 8, !dbg !370
  br label %return, !dbg !371

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !372
  ret i64 %retval.0, !dbg !373
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #1 !dbg !374 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !375
  store i64 %a, i64* %all, align 8, !dbg !376
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !377
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !378
  %0 = load i32, i32* %high, align 4, !dbg !378
  %cmp = icmp eq i32 %0, 0, !dbg !379
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !380
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !381
  %1 = load i32, i32* %high2, align 4, !dbg !381
  %low = bitcast %union.dwords* %x to i32*, !dbg !382
  %2 = load i32, i32* %low, align 8, !dbg !382
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !383
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !384, !range !385
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !386
  %add = add nuw nsw i32 %4, %and5, !dbg !387
  ret i32 %add, !dbg !388
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #1 !dbg !389 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !390
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !391
  %sub = sub nuw nsw i32 16, %shl, !dbg !392
  %shr = lshr i32 %a, %sub, !dbg !393
  %and1 = and i32 %shr, 65280, !dbg !394
  %cmp2 = icmp eq i32 %and1, 0, !dbg !395
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !396
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !397
  %shr6 = lshr i32 %shr, %sub5, !dbg !398
  %add = or i32 %shl, %shl4, !dbg !399
  %and7 = and i32 %shr6, 240, !dbg !400
  %cmp8 = icmp eq i32 %and7, 0, !dbg !401
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !402
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !403
  %shr12 = lshr i32 %shr6, %sub11, !dbg !404
  %add13 = or i32 %add, %shl10, !dbg !405
  %and14 = and i32 %shr12, 12, !dbg !406
  %cmp15 = icmp eq i32 %and14, 0, !dbg !407
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !408
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !409
  %shr19 = lshr i32 %shr12, %sub18, !dbg !410
  %add20 = or i32 %add13, %shl17, !dbg !411
  %sub21 = sub i32 2, %shr19, !dbg !412
  %and22 = lshr i32 %shr19, 1, !dbg !413
  %0 = or i32 %and22, -2, !dbg !413
  %.neg = add nsw i32 %0, 1, !dbg !413
  %and26 = and i32 %sub21, %.neg, !dbg !414
  %add27 = add i32 %add20, %and26, !dbg !415
  ret i32 %add27, !dbg !416
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !417 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !418
  store i64 %a, i64* %all, align 8, !dbg !419
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !420
  store i64 %b, i64* %all1, align 8, !dbg !421
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !422
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !423
  %0 = load i32, i32* %high, align 4, !dbg !423
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !424
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !425
  %1 = load i32, i32* %high3, align 4, !dbg !425
  %cmp = icmp slt i32 %0, %1, !dbg !426
  br i1 %cmp, label %if.then, label %if.end, !dbg !427

if.then:                                          ; preds = %entry
  br label %return, !dbg !428

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !429
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !430
  %2 = load i32, i32* %high5, align 4, !dbg !430
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !431
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !432
  %3 = load i32, i32* %high7, align 4, !dbg !432
  %cmp8 = icmp sgt i32 %2, %3, !dbg !433
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !434

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !435

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !436
  %4 = load i32, i32* %low, align 8, !dbg !436
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !437
  %5 = load i32, i32* %low13, align 8, !dbg !437
  %cmp14 = icmp ult i32 %4, %5, !dbg !438
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !439

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !440

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !441
  %6 = load i32, i32* %low18, align 8, !dbg !441
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !442
  %7 = load i32, i32* %low20, align 8, !dbg !442
  %cmp21 = icmp ugt i32 %6, %7, !dbg !443
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !444

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !445

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !446

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !447
  ret i32 %retval.0, !dbg !448
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !449 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !450
  %sub = add nsw i32 %call, -1, !dbg !451
  ret i32 %sub, !dbg !452
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #1 !dbg !453 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !454
  store i64 %a, i64* %all, align 8, !dbg !455
  %low = bitcast %union.dwords* %x to i32*, !dbg !456
  %0 = load i32, i32* %low, align 8, !dbg !456
  %cmp = icmp eq i32 %0, 0, !dbg !457
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !458
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !459
  %1 = load i32, i32* %high, align 4, !dbg !459
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !460
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !461, !range !385
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !462
  %add = add nuw nsw i32 %3, %and5, !dbg !463
  ret i32 %add, !dbg !464
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #1 !dbg !465 {
entry:
  %and = and i32 %a, 65535, !dbg !466
  %cmp = icmp eq i32 %and, 0, !dbg !467
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !468
  %shr = lshr i32 %a, %shl, !dbg !469
  %and1 = and i32 %shr, 255, !dbg !470
  %cmp2 = icmp eq i32 %and1, 0, !dbg !471
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !472
  %shr5 = lshr i32 %shr, %shl4, !dbg !473
  %add = or i32 %shl, %shl4, !dbg !474
  %and6 = and i32 %shr5, 15, !dbg !475
  %cmp7 = icmp eq i32 %and6, 0, !dbg !476
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !477
  %shr10 = lshr i32 %shr5, %shl9, !dbg !478
  %add11 = or i32 %add, %shl9, !dbg !479
  %and12 = and i32 %shr10, 3, !dbg !480
  %cmp13 = icmp eq i32 %and12, 0, !dbg !481
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !482
  %shr16 = lshr i32 %shr10, %shl15, !dbg !483
  %add18 = or i32 %add11, %shl15, !dbg !484
  %and17 = lshr i32 %shr16, 1, !dbg !485
  %shr19 = and i32 %and17, 1, !dbg !485
  %sub = sub nuw nsw i32 2, %shr19, !dbg !486
  %0 = or i32 %shr16, -2, !dbg !487
  %.neg = add nsw i32 %0, 1, !dbg !487
  %and24 = and i32 %sub, %.neg, !dbg !488
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !489
  ret i32 %add25, !dbg !490
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !491 {
entry:
  %shr = ashr i64 %a, 63, !dbg !492
  %shr1 = ashr i64 %b, 63, !dbg !493
  %xor = xor i64 %shr, %a, !dbg !494
  %sub = sub nsw i64 %xor, %shr, !dbg !495
  %xor2 = xor i64 %shr1, %b, !dbg !496
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !497
  %xor4 = xor i64 %shr, %shr1, !dbg !498
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !499
  %xor5 = xor i64 %call, %xor4, !dbg !500
  %sub6 = sub i64 %xor5, %xor4, !dbg !501
  ret i64 %sub6, !dbg !502
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !503 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !504
  store i64 %a, i64* %all, align 8, !dbg !505
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !506
  store i64 %b, i64* %all1, align 8, !dbg !507
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !508
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !509
  %0 = load i32, i32* %high, align 4, !dbg !509
  %cmp = icmp eq i32 %0, 0, !dbg !510
  br i1 %cmp, label %if.then, label %if.end23, !dbg !511

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !512
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !513
  %1 = load i32, i32* %high3, align 4, !dbg !513
  %cmp4 = icmp eq i32 %1, 0, !dbg !514
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !515

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !516
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !516

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !517
  %2 = load i32, i32* %low, align 8, !dbg !517
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !518
  %3 = load i32, i32* %low9, align 8, !dbg !518
  %rem10 = urem i32 %2, %3, !dbg !519
  %conv = zext i32 %rem10 to i64, !dbg !520
  store i64 %conv, i64* %rem, align 8, !dbg !521
  br label %if.end, !dbg !522

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !523
  %4 = load i32, i32* %low12, align 8, !dbg !523
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !524
  %5 = load i32, i32* %low14, align 8, !dbg !524
  %div = udiv i32 %4, %5, !dbg !525
  %conv15 = zext i32 %div to i64, !dbg !526
  br label %return, !dbg !527

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !528
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !528

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !529
  %6 = load i32, i32* %low20, align 8, !dbg !529
  %conv21 = zext i32 %6 to i64, !dbg !530
  store i64 %conv21, i64* %rem, align 8, !dbg !531
  br label %if.end22, !dbg !532

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !533

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !534
  %7 = load i32, i32* %low25, align 8, !dbg !534
  %cmp26 = icmp eq i32 %7, 0, !dbg !535
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !536

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !537
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !538
  %8 = load i32, i32* %high30, align 4, !dbg !538
  %cmp31 = icmp eq i32 %8, 0, !dbg !539
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !540

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !541
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !541

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !542
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !543
  %9 = load i32, i32* %high37, align 4, !dbg !543
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !544
  %10 = load i32, i32* %low39, align 8, !dbg !544
  %rem40 = urem i32 %9, %10, !dbg !545
  %conv41 = zext i32 %rem40 to i64, !dbg !546
  store i64 %conv41, i64* %rem, align 8, !dbg !547
  br label %if.end42, !dbg !548

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !549
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !550
  %11 = load i32, i32* %high44, align 4, !dbg !550
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !551
  %12 = load i32, i32* %low46, align 8, !dbg !551
  %div47 = udiv i32 %11, %12, !dbg !552
  %conv48 = zext i32 %div47 to i64, !dbg !553
  br label %return, !dbg !554

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !555
  %13 = load i32, i32* %low51, align 8, !dbg !555
  %cmp52 = icmp eq i32 %13, 0, !dbg !556
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !557

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !558
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !558

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !559
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !560
  %14 = load i32, i32* %high58, align 4, !dbg !560
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !561
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !562
  %15 = load i32, i32* %high60, align 4, !dbg !562
  %rem61 = urem i32 %14, %15, !dbg !563
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !564
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !565
  store i32 %rem61, i32* %high63, align 4, !dbg !566
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !567
  store i32 0, i32* %low65, align 8, !dbg !568
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !569
  %16 = load i64, i64* %all66, align 8, !dbg !569
  store i64 %16, i64* %rem, align 8, !dbg !570
  br label %if.end67, !dbg !571

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !572
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !573
  %17 = load i32, i32* %high69, align 4, !dbg !573
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !574
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !575
  %18 = load i32, i32* %high71, align 4, !dbg !575
  %div72 = udiv i32 %17, %18, !dbg !576
  %conv73 = zext i32 %div72 to i64, !dbg !577
  br label %return, !dbg !578

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !579
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !580
  %19 = load i32, i32* %high76, align 4, !dbg !580
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !581
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !582
  %20 = load i32, i32* %high78, align 4, !dbg !582
  %sub = add i32 %20, -1, !dbg !583
  %and = and i32 %19, %sub, !dbg !584
  %cmp79 = icmp eq i32 %and, 0, !dbg !585
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !586

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !587
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !587

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !588
  %21 = load i32, i32* %low85, align 8, !dbg !588
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !589
  store i32 %21, i32* %low87, align 8, !dbg !590
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !591
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !592
  %22 = load i32, i32* %high89, align 4, !dbg !592
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !593
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !594
  %23 = load i32, i32* %high91, align 4, !dbg !594
  %sub92 = add i32 %23, -1, !dbg !595
  %and93 = and i32 %22, %sub92, !dbg !596
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !597
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !598
  store i32 %and93, i32* %high95, align 4, !dbg !599
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !600
  %24 = load i64, i64* %all96, align 8, !dbg !600
  store i64 %24, i64* %rem, align 8, !dbg !601
  br label %if.end97, !dbg !602

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !603
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !604
  %25 = load i32, i32* %high99, align 4, !dbg !604
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !605
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !606
  %26 = load i32, i32* %high101, align 4, !dbg !606
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !607, !range !385
  %shr = lshr i32 %25, %27, !dbg !608
  %conv102 = zext i32 %shr to i64, !dbg !609
  br label %return, !dbg !610

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !611
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !612
  %28 = load i32, i32* %high105, align 4, !dbg !612
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !613, !range !385
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !614
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !615
  %30 = load i32, i32* %high107, align 4, !dbg !615
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !616, !range !385
  %sub108 = sub nsw i32 %29, %31, !dbg !617
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !618
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !619

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !620
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !620

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !621
  %32 = load i64, i64* %all114, align 8, !dbg !621
  store i64 %32, i64* %rem, align 8, !dbg !622
  br label %if.end115, !dbg !623

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !624

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !625
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !626
  store i32 0, i32* %low118, align 8, !dbg !627
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !628
  %33 = load i32, i32* %low120, align 8, !dbg !628
  %sub121 = sub nsw i32 31, %sub108, !dbg !629
  %shl = shl i32 %33, %sub121, !dbg !630
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !631
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !632
  store i32 %shl, i32* %high123, align 4, !dbg !633
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !634
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !635
  %34 = load i32, i32* %high125, align 4, !dbg !635
  %shr126 = lshr i32 %34, %inc, !dbg !636
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !637
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !638
  store i32 %shr126, i32* %high128, align 4, !dbg !639
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !640
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !641
  %35 = load i32, i32* %high130, align 4, !dbg !641
  %sub131 = sub nsw i32 31, %sub108, !dbg !642
  %shl132 = shl i32 %35, %sub131, !dbg !643
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !644
  %36 = load i32, i32* %low134, align 8, !dbg !644
  %shr135 = lshr i32 %36, %inc, !dbg !645
  %or = or i32 %shl132, %shr135, !dbg !646
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !647
  store i32 %or, i32* %low137, align 8, !dbg !648
  br label %if.end317, !dbg !649

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !650
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !651
  %37 = load i32, i32* %high139, align 4, !dbg !651
  %cmp140 = icmp eq i32 %37, 0, !dbg !652
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !653

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !654
  %38 = load i32, i32* %low144, align 8, !dbg !654
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !655, !range !385
  %cmp149 = icmp ult i32 %39, 2, !dbg !655
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !656

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !657
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !657

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !658
  %40 = load i32, i32* %low155, align 8, !dbg !658
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !659
  %41 = load i32, i32* %low157, align 8, !dbg !659
  %sub158 = add i32 %41, -1, !dbg !660
  %and159 = and i32 %40, %sub158, !dbg !661
  %conv160 = zext i32 %and159 to i64, !dbg !662
  store i64 %conv160, i64* %rem, align 8, !dbg !663
  br label %if.end161, !dbg !664

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !665
  %42 = load i32, i32* %low163, align 8, !dbg !665
  %cmp164 = icmp eq i32 %42, 1, !dbg !666
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !667

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !668
  %43 = load i64, i64* %all167, align 8, !dbg !668
  br label %return, !dbg !669

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !670
  %44 = load i32, i32* %low170, align 8, !dbg !670
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !671, !range !385
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !672
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !673
  %46 = load i32, i32* %high172, align 4, !dbg !673
  %shr173 = lshr i32 %46, %45, !dbg !674
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !675
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !676
  store i32 %shr173, i32* %high175, align 4, !dbg !677
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !678
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !679
  %47 = load i32, i32* %high177, align 4, !dbg !679
  %sub178 = sub nuw nsw i32 32, %45, !dbg !680
  %shl179 = shl i32 %47, %sub178, !dbg !681
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !682
  %48 = load i32, i32* %low181, align 8, !dbg !682
  %shr182 = lshr i32 %48, %45, !dbg !683
  %or183 = or i32 %shl179, %shr182, !dbg !684
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !685
  store i32 %or183, i32* %low185, align 8, !dbg !686
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !687
  %49 = load i64, i64* %all186, align 8, !dbg !687
  br label %return, !dbg !688

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !689
  %50 = load i32, i32* %low189, align 8, !dbg !689
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !690, !range !385
  %add = add nuw nsw i32 %51, 33, !dbg !691
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !692
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !693
  %52 = load i32, i32* %high191, align 4, !dbg !693
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !694, !range !385
  %sub192 = sub nsw i32 %add, %53, !dbg !695
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !696
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !697

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !698
  store i32 0, i32* %low197, align 8, !dbg !699
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !700
  %54 = load i32, i32* %low199, align 8, !dbg !700
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !701
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !702
  store i32 %54, i32* %high201, align 4, !dbg !703
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !704
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !705
  store i32 0, i32* %high203, align 4, !dbg !706
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !707
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !708
  %55 = load i32, i32* %high205, align 4, !dbg !708
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !709
  store i32 %55, i32* %low207, align 8, !dbg !710
  br label %if.end262, !dbg !711

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !712
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !713

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !714
  store i32 0, i32* %low213, align 8, !dbg !715
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !716
  %56 = load i32, i32* %low215, align 8, !dbg !716
  %sub216 = sub nsw i32 32, %sub192, !dbg !717
  %shl217 = shl i32 %56, %sub216, !dbg !718
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !719
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !720
  store i32 %shl217, i32* %high219, align 4, !dbg !721
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !722
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !723
  %57 = load i32, i32* %high221, align 4, !dbg !723
  %shr222 = lshr i32 %57, %sub192, !dbg !724
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !725
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !726
  store i32 %shr222, i32* %high224, align 4, !dbg !727
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !728
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !729
  %58 = load i32, i32* %high226, align 4, !dbg !729
  %sub227 = sub nsw i32 32, %sub192, !dbg !730
  %shl228 = shl i32 %58, %sub227, !dbg !731
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !732
  %59 = load i32, i32* %low230, align 8, !dbg !732
  %shr231 = lshr i32 %59, %sub192, !dbg !733
  %or232 = or i32 %shl228, %shr231, !dbg !734
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !735
  store i32 %or232, i32* %low234, align 8, !dbg !736
  br label %if.end261, !dbg !737

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !738
  %60 = load i32, i32* %low237, align 8, !dbg !738
  %sub238 = sub nsw i32 64, %sub192, !dbg !739
  %shl239 = shl i32 %60, %sub238, !dbg !740
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !741
  store i32 %shl239, i32* %low241, align 8, !dbg !742
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !743
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !744
  %61 = load i32, i32* %high243, align 4, !dbg !744
  %sub244 = sub nsw i32 64, %sub192, !dbg !745
  %shl245 = shl i32 %61, %sub244, !dbg !746
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !747
  %62 = load i32, i32* %low247, align 8, !dbg !747
  %sub248 = add nsw i32 %sub192, -32, !dbg !748
  %shr249 = lshr i32 %62, %sub248, !dbg !749
  %or250 = or i32 %shl245, %shr249, !dbg !750
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !751
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !752
  store i32 %or250, i32* %high252, align 4, !dbg !753
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !754
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !755
  store i32 0, i32* %high254, align 4, !dbg !756
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !757
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !758
  %63 = load i32, i32* %high256, align 4, !dbg !758
  %sub257 = add nsw i32 %sub192, -32, !dbg !759
  %shr258 = lshr i32 %63, %sub257, !dbg !760
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !761
  store i32 %shr258, i32* %low260, align 8, !dbg !762
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !763

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !764
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !765
  %64 = load i32, i32* %high265, align 4, !dbg !765
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !766, !range !385
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !767
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !768
  %66 = load i32, i32* %high267, align 4, !dbg !768
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !769, !range !385
  %sub268 = sub nsw i32 %65, %67, !dbg !770
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !771
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !772

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !773
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !773

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !774
  %68 = load i64, i64* %all274, align 8, !dbg !774
  store i64 %68, i64* %rem, align 8, !dbg !775
  br label %if.end275, !dbg !776

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !777

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !778
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !779
  store i32 0, i32* %low279, align 8, !dbg !780
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !781
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !782

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !783
  %69 = load i32, i32* %low284, align 8, !dbg !783
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !784
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !785
  store i32 %69, i32* %high286, align 4, !dbg !786
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !787
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !788
  store i32 0, i32* %high288, align 4, !dbg !789
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !790
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !791
  %70 = load i32, i32* %high290, align 4, !dbg !791
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !792
  store i32 %70, i32* %low292, align 8, !dbg !793
  br label %if.end315, !dbg !794

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !795
  %71 = load i32, i32* %low295, align 8, !dbg !795
  %sub296 = sub nsw i32 31, %sub268, !dbg !796
  %shl297 = shl i32 %71, %sub296, !dbg !797
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !798
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !799
  store i32 %shl297, i32* %high299, align 4, !dbg !800
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !801
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !802
  %72 = load i32, i32* %high301, align 4, !dbg !802
  %shr302 = lshr i32 %72, %inc277, !dbg !803
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !804
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !805
  store i32 %shr302, i32* %high304, align 4, !dbg !806
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !807
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !808
  %73 = load i32, i32* %high306, align 4, !dbg !808
  %sub307 = sub nsw i32 31, %sub268, !dbg !809
  %shl308 = shl i32 %73, %sub307, !dbg !810
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !811
  %74 = load i32, i32* %low310, align 8, !dbg !811
  %shr311 = lshr i32 %74, %inc277, !dbg !812
  %or312 = or i32 %shl308, %shr311, !dbg !813
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !814
  store i32 %or312, i32* %low314, align 8, !dbg !815
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !816
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !816
  br label %for.cond, !dbg !817

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !816
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !816
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !818
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !817

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !819
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !820
  %75 = load i32, i32* %high321, align 4, !dbg !820
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !821
  %76 = load i32, i32* %low324, align 8, !dbg !821
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !822
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !823
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !824
  store i32 %or326, i32* %high328, align 4, !dbg !825
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !826
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !827
  %77 = load i32, i32* %high333, align 4, !dbg !827
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !828
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !829
  store i32 %or335, i32* %low337, align 8, !dbg !830
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !831
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !832
  %78 = load i32, i32* %high339, align 4, !dbg !832
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !833
  %79 = load i32, i32* %low342, align 8, !dbg !833
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !834
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !835
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !836
  store i32 %or344, i32* %high346, align 4, !dbg !837
  %shl349 = shl i32 %79, 1, !dbg !838
  %or350 = or i32 %shl349, %carry.0, !dbg !839
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !840
  store i32 %or350, i32* %low352, align 8, !dbg !841
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !842
  %80 = load i64, i64* %all354, align 8, !dbg !842
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !843
  %81 = load i64, i64* %all355, align 8, !dbg !843
  %82 = xor i64 %81, -1, !dbg !844
  %sub357 = add i64 %80, %82, !dbg !844
  %isneg = icmp slt i64 %sub357, 0, !dbg !845
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !845
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !846
  %sub364 = sub i64 %81, %and362, !dbg !847
  store i64 %sub364, i64* %all363, align 8, !dbg !847
  br label %for.inc, !dbg !848

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !849
  %conv360 = trunc i64 %and359 to i32, !dbg !850
  %dec = add i32 %sr.2, -1, !dbg !851
  br label %for.cond, !dbg !817, !llvm.loop !852

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !853
  %83 = load i64, i64* %all365, align 8, !dbg !853
  %shl366 = shl i64 %83, 1, !dbg !854
  %conv367 = zext i32 %carry.0 to i64, !dbg !855
  %or368 = or i64 %shl366, %conv367, !dbg !856
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !857
  store i64 %or368, i64* %all369, align 8, !dbg !858
  %tobool370.not = icmp eq i64* %rem, null, !dbg !859
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !859

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !860
  %84 = load i64, i64* %all372, align 8, !dbg !860
  store i64 %84, i64* %rem, align 8, !dbg !861
  br label %if.end373, !dbg !862

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !863
  %85 = load i64, i64* %all374, align 8, !dbg !863
  br label %return, !dbg !864

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !816
  ret i64 %retval.0, !dbg !865
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !866 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !867
  %mul = mul nsw i64 %call, %b, !dbg !868
  %sub = sub nsw i64 %a, %mul, !dbg !869
  store i64 %sub, i64* %rem, align 8, !dbg !870
  ret i64 %call, !dbg !871
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !872 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !873
  %mul = mul nsw i32 %call, %b, !dbg !874
  %sub = sub nsw i32 %a, %mul, !dbg !875
  store i32 %sub, i32* %rem, align 4, !dbg !876
  ret i32 %call, !dbg !877
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !878 {
entry:
  %shr = ashr i32 %a, 31, !dbg !879
  %shr1 = ashr i32 %b, 31, !dbg !880
  %xor = xor i32 %shr, %a, !dbg !881
  %sub = sub nsw i32 %xor, %shr, !dbg !882
  %xor2 = xor i32 %shr1, %b, !dbg !883
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !884
  %xor4 = xor i32 %shr, %shr1, !dbg !885
  %div = udiv i32 %sub, %sub3, !dbg !886
  %xor5 = xor i32 %div, %xor4, !dbg !887
  %sub6 = sub i32 %xor5, %xor4, !dbg !888
  ret i32 %sub6, !dbg !889
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #1 !dbg !890 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !891
  store i64 %a, i64* %all, align 8, !dbg !892
  %low = bitcast %union.dwords* %x to i32*, !dbg !893
  %0 = load i32, i32* %low, align 8, !dbg !893
  %cmp = icmp eq i32 %0, 0, !dbg !894
  br i1 %cmp, label %if.then, label %if.end6, !dbg !895

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !896
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !897
  %1 = load i32, i32* %high, align 4, !dbg !897
  %cmp2 = icmp eq i32 %1, 0, !dbg !898
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !899

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !900

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !901
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !902
  %2 = load i32, i32* %high5, align 4, !dbg !902
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !903, !range !385
  %add = add nuw nsw i32 %3, 33, !dbg !904
  br label %return, !dbg !905

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !906
  %4 = load i32, i32* %low8, align 8, !dbg !906
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !907, !range !385
  %add9 = add nuw nsw i32 %5, 1, !dbg !908
  br label %return, !dbg !909

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !910
  ret i32 %retval.0, !dbg !911
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #1 !dbg !912 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !913
  br i1 %cmp, label %if.then, label %if.end, !dbg !914

if.then:                                          ; preds = %entry
  br label %return, !dbg !915

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !916, !range !385
  %add = add nuw nsw i32 %0, 1, !dbg !917
  br label %return, !dbg !918

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !919
  ret i32 %retval.0, !dbg !920
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !921 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !922
  store i64 %a, i64* %all, align 8, !dbg !923
  %and = and i32 %b, 32, !dbg !924
  %tobool.not = icmp eq i32 %and, 0, !dbg !924
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !925

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !926
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !927
  store i32 0, i32* %high, align 4, !dbg !928
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !929
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !930
  %0 = load i32, i32* %high2, align 4, !dbg !930
  %sub = add nsw i32 %b, -32, !dbg !931
  %shr = lshr i32 %0, %sub, !dbg !932
  %low = bitcast %union.dwords* %result to i32*, !dbg !933
  store i32 %shr, i32* %low, align 8, !dbg !934
  br label %if.end18, !dbg !935

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !936
  br i1 %cmp, label %if.then4, label %if.end, !dbg !937

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !938

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !939
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !940
  %1 = load i32, i32* %high6, align 4, !dbg !940
  %shr7 = lshr i32 %1, %b, !dbg !941
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !942
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !943
  store i32 %shr7, i32* %high9, align 4, !dbg !944
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !945
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !946
  %2 = load i32, i32* %high11, align 4, !dbg !946
  %sub12 = sub nsw i32 32, %b, !dbg !947
  %shl = shl i32 %2, %sub12, !dbg !948
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !949
  %3 = load i32, i32* %low14, align 8, !dbg !949
  %shr15 = lshr i32 %3, %b, !dbg !950
  %or = or i32 %shl, %shr15, !dbg !951
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !952
  store i32 %or, i32* %low17, align 8, !dbg !953
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !954
  %4 = load i64, i64* %all19, align 8, !dbg !954
  br label %return, !dbg !955

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !956
  ret i64 %retval.0, !dbg !957
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !958 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !959
  %shr1 = ashr i64 %a, 63, !dbg !960
  %xor2 = xor i64 %shr1, %a, !dbg !961
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !962
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !963
  %1 = load i64, i64* %r, align 8, !dbg !964
  %xor4 = xor i64 %1, %shr1, !dbg !965
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !966
  ret i64 %sub5, !dbg !967
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !968 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !969
  %mul = mul nsw i32 %call, %b, !dbg !970
  %sub = sub nsw i32 %a, %mul, !dbg !971
  ret i32 %sub, !dbg !972
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !973 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !974
  br i1 %cmp, label %if.then, label %if.end4, !dbg !975

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !976
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !977

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !978
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !979

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !980

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !981
  unreachable, !dbg !981

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !982
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !983

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !984
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !985

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !986
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !987

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !988

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !989
  unreachable, !dbg !989

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !990
  %xor = xor i64 %shr, %a, !dbg !991
  %sub = sub nsw i64 %xor, %shr, !dbg !992
  %shr14 = ashr i64 %b, 63, !dbg !993
  %xor15 = xor i64 %shr14, %b, !dbg !994
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !995
  %cmp17 = icmp slt i64 %sub, 2, !dbg !996
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !997

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !998
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !999

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1000

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !1001
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1002

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !1003
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !1004
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1005

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1006
  unreachable, !dbg !1006

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1007

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !1008
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !1009
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !1010
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1011

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1012
  unreachable, !dbg !1012

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1013

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !1014
  ret i64 %retval.0, !dbg !1015
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1016 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !1017
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1018

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !1019
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1020

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !1021
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1022

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1023

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1024
  unreachable, !dbg !1024

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !1025
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1026

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !1027
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1028

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !1029
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1030

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1031

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1032
  unreachable, !dbg !1032

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !1033
  %xor = xor i32 %shr, %a, !dbg !1034
  %sub = sub nsw i32 %xor, %shr, !dbg !1035
  %shr14 = ashr i32 %b, 31, !dbg !1036
  %xor15 = xor i32 %shr14, %b, !dbg !1037
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !1038
  %cmp17 = icmp slt i32 %sub, 2, !dbg !1039
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1040

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !1041
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1042

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1043

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !1044
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1045

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !1046
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !1047
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1048

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1049
  unreachable, !dbg !1049

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1050

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !1051
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !1052
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !1053
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1054

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1055
  unreachable, !dbg !1055

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1056

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !1057
  ret i32 %retval.0, !dbg !1058
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #1 !dbg !1059 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1060
  store i64 %a, i64* %all, align 8, !dbg !1061
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1062
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1063
  %0 = load i32, i32* %high, align 4, !dbg !1063
  %low = bitcast %union.dwords* %x to i32*, !dbg !1064
  %1 = load i32, i32* %low, align 8, !dbg !1064
  %xor = xor i32 %0, %1, !dbg !1065
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !1066
  ret i32 %call, !dbg !1067
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #1 !dbg !1068 {
entry:
  %shr = lshr i32 %a, 16, !dbg !1069
  %xor = xor i32 %shr, %a, !dbg !1070
  %shr1 = lshr i32 %xor, 8, !dbg !1071
  %xor2 = xor i32 %xor, %shr1, !dbg !1072
  %shr3 = lshr i32 %xor2, 4, !dbg !1073
  %xor4 = xor i32 %xor2, %shr3, !dbg !1074
  %and = and i32 %xor4, 15, !dbg !1075
  %shr5 = lshr i32 27030, %and, !dbg !1076
  %and6 = and i32 %shr5, 1, !dbg !1077
  ret i32 %and6, !dbg !1078
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #1 !dbg !1079 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1080
  %and = and i64 %shr, 6148914691236517205, !dbg !1081
  %sub = sub i64 %a, %and, !dbg !1082
  %shr1 = lshr i64 %sub, 2, !dbg !1083
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1084
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1085
  %add = add nuw nsw i64 %and2, %and3, !dbg !1086
  %shr4 = lshr i64 %add, 4, !dbg !1087
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1088
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1089
  %shr7 = lshr i64 %and6, 32, !dbg !1090
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1091
  %conv = trunc i64 %add8 to i32, !dbg !1092
  %shr9 = lshr i32 %conv, 16, !dbg !1093
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1094
  %shr11 = lshr i32 %add10, 8, !dbg !1095
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1096
  %and13 = and i32 %add12, 127, !dbg !1097
  ret i32 %and13, !dbg !1098
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #1 !dbg !1099 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1100
  %and = and i32 %shr, 1431655765, !dbg !1101
  %sub = sub i32 %a, %and, !dbg !1102
  %shr1 = lshr i32 %sub, 2, !dbg !1103
  %and2 = and i32 %shr1, 858993459, !dbg !1104
  %and3 = and i32 %sub, 858993459, !dbg !1105
  %add = add nuw nsw i32 %and2, %and3, !dbg !1106
  %shr4 = lshr i32 %add, 4, !dbg !1107
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1108
  %and6 = and i32 %add5, 252645135, !dbg !1109
  %shr7 = lshr i32 %and6, 16, !dbg !1110
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1111
  %shr9 = lshr i32 %add8, 8, !dbg !1112
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1113
  %and11 = and i32 %add10, 63, !dbg !1114
  ret i32 %and11, !dbg !1115
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1116 {
entry:
  %sub = sub i64 %a, %b, !dbg !1117
  %cmp = icmp sgt i64 %b, -1, !dbg !1118
  br i1 %cmp, label %if.then, label %if.else, !dbg !1119

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1120
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1121

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1122
  unreachable, !dbg !1122

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1123

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1124
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1125

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1126
  unreachable, !dbg !1126

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1127
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1128 {
entry:
  %sub = sub i32 %a, %b, !dbg !1129
  %cmp = icmp sgt i32 %b, -1, !dbg !1130
  br i1 %cmp, label %if.then, label %if.else, !dbg !1131

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1132
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1133

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1134
  unreachable, !dbg !1134

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1135

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1136
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1137

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1138
  unreachable, !dbg !1138

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1139
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !1140 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1141
  store i64 %a, i64* %all, align 8, !dbg !1142
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1143
  store i64 %b, i64* %all1, align 8, !dbg !1144
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1145
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1146
  %0 = load i32, i32* %high, align 4, !dbg !1146
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1147
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1148
  %1 = load i32, i32* %high3, align 4, !dbg !1148
  %cmp = icmp ult i32 %0, %1, !dbg !1149
  br i1 %cmp, label %if.then, label %if.end, !dbg !1150

if.then:                                          ; preds = %entry
  br label %return, !dbg !1151

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1152
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1153
  %2 = load i32, i32* %high5, align 4, !dbg !1153
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1154
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1155
  %3 = load i32, i32* %high7, align 4, !dbg !1155
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1156
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1157

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1158

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1159
  %4 = load i32, i32* %low, align 8, !dbg !1159
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1160
  %5 = load i32, i32* %low13, align 8, !dbg !1160
  %cmp14 = icmp ult i32 %4, %5, !dbg !1161
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1162

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1163

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1164
  %6 = load i32, i32* %low18, align 8, !dbg !1164
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1165
  %7 = load i32, i32* %low20, align 8, !dbg !1165
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1166
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1167

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1168

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1169

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1170
  ret i32 %retval.0, !dbg !1171
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !1172 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1173
  %sub = add nsw i32 %call, -1, !dbg !1174
  ret i32 %sub, !dbg !1175
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1176 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !1177
  ret i64 %call, !dbg !1178
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !1179 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1180
  %mul = mul i32 %call, %b, !dbg !1181
  %sub = sub i32 %a, %mul, !dbg !1182
  store i32 %sub, i32* %rem, align 4, !dbg !1183
  ret i32 %call, !dbg !1184
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #1 !dbg !1185 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1186
  br i1 %cmp, label %if.then, label %if.end, !dbg !1187

if.then:                                          ; preds = %entry
  br label %return, !dbg !1188

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1189
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1190

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1191

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1192, !range !385
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1193, !range !385
  %sub = sub nsw i32 %0, %1, !dbg !1194
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1195
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1196

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1197

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1198
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1199

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1200

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1201
  %sub10 = sub nsw i32 31, %sub, !dbg !1202
  %shl = shl i32 %n, %sub10, !dbg !1203
  %shr = lshr i32 %n, %inc, !dbg !1204
  br label %for.cond, !dbg !1205

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1206
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1206
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1206
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1206
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1207
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1205

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1208
  %2 = xor i32 %or, -1, !dbg !1209
  %sub17 = add i32 %2, %d, !dbg !1209
  br label %for.inc, !dbg !1210

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1211
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1211
  %sub20 = sub i32 %or, %and19, !dbg !1212
  %and = lshr i32 %sub17, 31, !dbg !1213
  %shl14 = shl i32 %q.0, 1, !dbg !1214
  %or15 = or i32 %shl14, %carry.0, !dbg !1215
  %dec = add i32 %sr.0, -1, !dbg !1216
  br label %for.cond, !dbg !1205, !llvm.loop !1217

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1218
  %or22 = or i32 %shl21, %carry.0, !dbg !1219
  br label %return, !dbg !1220

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1206
  ret i32 %retval.0, !dbg !1221
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1222 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !1223
  %0 = load i64, i64* %r, align 8, !dbg !1224
  ret i64 %0, !dbg !1225
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1226 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1227
  %mul = mul i32 %call, %b, !dbg !1228
  %sub = sub i32 %a, %mul, !dbg !1229
  ret i32 %sub, !dbg !1230
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #1 !dbg !1231 {
entry:
  br label %for.cond, !dbg !1232

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1233
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1234
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1235

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1236
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1236
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1237
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1238
  br label %for.inc, !dbg !1239

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1240
  br label %for.cond, !dbg !1235, !llvm.loop !1241

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1242
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #1 !dbg !1243 {
entry:
  br label %for.cond, !dbg !1244

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1245
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1246
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1247

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1248
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1249
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1250
  br label %for.inc, !dbg !1251

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1252
  br label %for.cond, !dbg !1247, !llvm.loop !1253

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1254
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

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

!llvm.dbg.cu = !{!2, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133}
!llvm.ident = !{!135, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144, !145}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "countnegative_seed", scope: !2, file: !9, line: 47, type: !22, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/countnegative/countnegative.c", directory: "/workspaces/llvmta/testcases/batchtest/cosf")
!4 = !{!5}
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!0, !7, !14, !16, !18, !20}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "countnegative_array", scope: !2, file: !9, line: 48, type: !10, isLocal: false, isDefinition: true)
!9 = !DIFile(filename: "countnegative/countnegative.c", directory: "/workspaces/llvmta/testcases/batchtest")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "matrix", file: !9, line: 30, baseType: !11)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 3200, elements: !12)
!12 = !{!13, !13}
!13 = !DISubrange(count: 10)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "countnegative_postotal", scope: !2, file: !9, line: 49, type: !5, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "countnegative_negtotal", scope: !2, file: !9, line: 49, type: !5, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "countnegative_poscnt", scope: !2, file: !9, line: 50, type: !5, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "countnegative_negcnt", scope: !2, file: !9, line: 50, type: !5, isLocal: false, isDefinition: true)
!22 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!26 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !28, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!28 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!29 = distinct !DICompileUnit(language: DW_LANG_C99, file: !30, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!30 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!32 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!34 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!35 = distinct !DICompileUnit(language: DW_LANG_C99, file: !36, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!38 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!39 = distinct !DICompileUnit(language: DW_LANG_C99, file: !40, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!40 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!42 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!43 = distinct !DICompileUnit(language: DW_LANG_C99, file: !44, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!44 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!45 = distinct !DICompileUnit(language: DW_LANG_C99, file: !46, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!46 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!49 = distinct !DICompileUnit(language: DW_LANG_C99, file: !50, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!50 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!52 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!54 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !60, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!60 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!62 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!64 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!66 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!68 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!70 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!72 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!74 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!76 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!78 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!80 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!82 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!84 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!86 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!88 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !90, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!90 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!92 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!94 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!96 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!98 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!99 = distinct !DICompileUnit(language: DW_LANG_C99, file: !100, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!100 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!102 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !104, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!104 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!106 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!108 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!109 = distinct !DICompileUnit(language: DW_LANG_C99, file: !110, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!110 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!112 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!113 = distinct !DICompileUnit(language: DW_LANG_C99, file: !114, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!114 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!115 = distinct !DICompileUnit(language: DW_LANG_C99, file: !116, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!116 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!117 = distinct !DICompileUnit(language: DW_LANG_C99, file: !118, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!118 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!120 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!122 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !124, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!124 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !126, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!126 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!127 = distinct !DICompileUnit(language: DW_LANG_C99, file: !128, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!128 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!129 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!130 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!131 = distinct !DICompileUnit(language: DW_LANG_C99, file: !132, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!132 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!133 = distinct !DICompileUnit(language: DW_LANG_C99, file: !134, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!134 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!135 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)"}
!136 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!137 = !{i32 7, !"Dwarf Version", i32 5}
!138 = !{i32 2, !"Debug Info Version", i32 3}
!139 = !{i32 1, !"wchar_size", i32 4}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 1, !"branch-target-enforcement", i32 0}
!142 = !{i32 1, !"sign-return-address", i32 0}
!143 = !{i32 1, !"sign-return-address-all", i32 0}
!144 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = distinct !DISubprogram(name: "countnegative_initSeed", scope: !9, file: !9, line: 55, type: !147, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!147 = !DISubroutineType(types: !148)
!148 = !{null}
!149 = !{}
!150 = !DILocation(line: 57, column: 22, scope: !146)
!151 = !DILocation(line: 58, column: 1, scope: !146)
!152 = distinct !DISubprogram(name: "countnegative_randomInteger", scope: !9, file: !9, line: 63, type: !153, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!153 = !DISubroutineType(types: !4)
!154 = !DILocation(line: 65, column: 28, scope: !152)
!155 = !DILocation(line: 65, column: 47, scope: !152)
!156 = !DILocation(line: 65, column: 55, scope: !152)
!157 = !DILocation(line: 65, column: 62, scope: !152)
!158 = !DILocation(line: 65, column: 22, scope: !152)
!159 = !DILocation(line: 66, column: 11, scope: !152)
!160 = !DILocation(line: 66, column: 3, scope: !152)
!161 = distinct !DISubprogram(name: "countnegative_initialize", scope: !9, file: !9, line: 72, type: !162, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 32)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 320, elements: !166)
!166 = !{!13}
!167 = !DILocalVariable(name: "Array", arg: 1, scope: !161, file: !9, line: 72, type: !164)
!168 = !DILocation(line: 0, scope: !161)
!169 = !DILocalVariable(name: "OuterIndex", scope: !161, file: !9, line: 74, type: !5)
!170 = !DILocation(line: 77, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !161, file: !9, line: 77, column: 3)
!172 = !DILocation(line: 0, scope: !171)
!173 = !DILocation(line: 77, column: 36, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !9, line: 77, column: 3)
!175 = !DILocation(line: 77, column: 3, scope: !171)
!176 = !DILocalVariable(name: "InnerIndex", scope: !161, file: !9, line: 74, type: !5)
!177 = !DILocation(line: 79, column: 11, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !9, line: 79, column: 5)
!179 = !DILocation(line: 0, scope: !178)
!180 = !DILocation(line: 79, column: 38, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !9, line: 79, column: 5)
!182 = !DILocation(line: 79, column: 5, scope: !178)
!183 = !DILocation(line: 80, column: 44, scope: !181)
!184 = !DILocation(line: 80, column: 7, scope: !181)
!185 = !DILocation(line: 80, column: 41, scope: !181)
!186 = !DILocation(line: 79, column: 59, scope: !181)
!187 = !DILocation(line: 79, column: 5, scope: !181)
!188 = distinct !{!188, !182, !189, !190}
!189 = !DILocation(line: 80, column: 72, scope: !178)
!190 = !{!"llvm.loop.mustprogress"}
!191 = !DILocation(line: 77, column: 57, scope: !174)
!192 = !DILocation(line: 77, column: 3, scope: !174)
!193 = distinct !{!193, !175, !194, !190}
!194 = !DILocation(line: 80, column: 72, scope: !171)
!195 = !DILocation(line: 81, column: 1, scope: !161)
!196 = distinct !DISubprogram(name: "countnegative_init", scope: !9, file: !9, line: 83, type: !147, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!197 = !DILocation(line: 85, column: 3, scope: !196)
!198 = !DILocation(line: 86, column: 3, scope: !196)
!199 = !DILocation(line: 87, column: 1, scope: !196)
!200 = distinct !DISubprogram(name: "countnegative_return", scope: !9, file: !9, line: 89, type: !153, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!201 = !DILocation(line: 91, column: 20, scope: !200)
!202 = !DILocation(line: 92, column: 20, scope: !200)
!203 = !DILocation(line: 91, column: 43, scope: !200)
!204 = !DILocation(line: 93, column: 20, scope: !200)
!205 = !DILocation(line: 92, column: 41, scope: !200)
!206 = !DILocation(line: 94, column: 20, scope: !200)
!207 = !DILocation(line: 93, column: 43, scope: !200)
!208 = !DILocalVariable(name: "checksum", scope: !200, file: !9, line: 91, type: !5)
!209 = !DILocation(line: 0, scope: !200)
!210 = !DILocation(line: 96, column: 23, scope: !200)
!211 = !DILocation(line: 96, column: 12, scope: !200)
!212 = !DILocation(line: 96, column: 3, scope: !200)
!213 = distinct !DISubprogram(name: "countnegative_sum", scope: !9, file: !9, line: 99, type: !162, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!214 = !DILocalVariable(name: "Array", arg: 1, scope: !213, file: !9, line: 99, type: !164)
!215 = !DILocation(line: 0, scope: !213)
!216 = !DILocalVariable(name: "Ptotal", scope: !213, file: !9, line: 103, type: !5)
!217 = !DILocalVariable(name: "Ntotal", scope: !213, file: !9, line: 104, type: !5)
!218 = !DILocalVariable(name: "Pcnt", scope: !213, file: !9, line: 105, type: !5)
!219 = !DILocalVariable(name: "Ncnt", scope: !213, file: !9, line: 106, type: !5)
!220 = !DILocalVariable(name: "Outer", scope: !213, file: !9, line: 101, type: !5)
!221 = !DILocation(line: 109, column: 9, scope: !222)
!222 = distinct !DILexicalBlock(scope: !213, file: !9, line: 109, column: 3)
!223 = !DILocation(line: 103, column: 7, scope: !213)
!224 = !DILocation(line: 0, scope: !222)
!225 = !DILocation(line: 109, column: 26, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !9, line: 109, column: 3)
!227 = !DILocation(line: 109, column: 3, scope: !222)
!228 = !DILocalVariable(name: "Inner", scope: !213, file: !9, line: 101, type: !5)
!229 = !DILocation(line: 111, column: 11, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !9, line: 111, column: 5)
!231 = !DILocation(line: 0, scope: !230)
!232 = !DILocation(line: 111, column: 28, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !9, line: 111, column: 5)
!234 = !DILocation(line: 111, column: 5, scope: !230)
!235 = !DILocation(line: 115, column: 5, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !9, line: 111, column: 48)
!237 = !DILocation(line: 113, column: 19, scope: !236)
!238 = !DILocation(line: 113, column: 16, scope: !236)
!239 = !DILocation(line: 111, column: 44, scope: !233)
!240 = !DILocation(line: 111, column: 5, scope: !233)
!241 = distinct !{!241, !234, !242, !190}
!242 = !DILocation(line: 115, column: 5, scope: !230)
!243 = !DILocation(line: 109, column: 42, scope: !226)
!244 = !DILocation(line: 109, column: 3, scope: !226)
!245 = distinct !{!245, !227, !246, !190}
!246 = !DILocation(line: 115, column: 5, scope: !222)
!247 = !DILocation(line: 122, column: 26, scope: !213)
!248 = !DILocation(line: 123, column: 24, scope: !213)
!249 = !DILocation(line: 124, column: 26, scope: !213)
!250 = !DILocation(line: 125, column: 24, scope: !213)
!251 = !DILocation(line: 126, column: 1, scope: !213)
!252 = distinct !DISubprogram(name: "countnegative_main", scope: !9, file: !9, line: 131, type: !147, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!253 = !DILocation(line: 133, column: 3, scope: !252)
!254 = !DILocation(line: 134, column: 1, scope: !252)
!255 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 136, type: !153, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!256 = !DILocation(line: 138, column: 3, scope: !255)
!257 = !DILocation(line: 139, column: 3, scope: !255)
!258 = !DILocation(line: 141, column: 12, scope: !255)
!259 = !DILocation(line: 141, column: 3, scope: !255)
!260 = distinct !DISubprogram(name: "__absvdi2", scope: !24, file: !24, line: 22, type: !261, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !149)
!261 = !DISubroutineType(types: !149)
!262 = !DILocation(line: 25, column: 11, scope: !260)
!263 = !DILocation(line: 25, column: 9, scope: !260)
!264 = !DILocation(line: 26, column: 9, scope: !260)
!265 = !DILocation(line: 28, column: 20, scope: !260)
!266 = !DILocation(line: 28, column: 5, scope: !260)
!267 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !76, file: !76, line: 57, type: !261, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !149)
!268 = !DILocation(line: 59, column: 1, scope: !267)
!269 = distinct !DISubprogram(name: "__absvsi2", scope: !26, file: !26, line: 22, type: !261, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !149)
!270 = !DILocation(line: 25, column: 11, scope: !269)
!271 = !DILocation(line: 25, column: 9, scope: !269)
!272 = !DILocation(line: 26, column: 9, scope: !269)
!273 = !DILocation(line: 28, column: 20, scope: !269)
!274 = !DILocation(line: 28, column: 5, scope: !269)
!275 = distinct !DISubprogram(name: "__addvdi3", scope: !30, file: !30, line: 22, type: !261, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !29, retainedNodes: !149)
!276 = !DILocation(line: 24, column: 27, scope: !275)
!277 = !DILocation(line: 25, column: 11, scope: !275)
!278 = !DILocation(line: 25, column: 9, scope: !275)
!279 = !DILocation(line: 27, column: 15, scope: !275)
!280 = !DILocation(line: 27, column: 13, scope: !275)
!281 = !DILocation(line: 28, column: 13, scope: !275)
!282 = !DILocation(line: 29, column: 5, scope: !275)
!283 = !DILocation(line: 32, column: 15, scope: !275)
!284 = !DILocation(line: 32, column: 13, scope: !275)
!285 = !DILocation(line: 33, column: 13, scope: !275)
!286 = !DILocation(line: 35, column: 5, scope: !275)
!287 = distinct !DISubprogram(name: "__addvsi3", scope: !32, file: !32, line: 22, type: !261, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !149)
!288 = !DILocation(line: 24, column: 27, scope: !287)
!289 = !DILocation(line: 25, column: 11, scope: !287)
!290 = !DILocation(line: 25, column: 9, scope: !287)
!291 = !DILocation(line: 27, column: 15, scope: !287)
!292 = !DILocation(line: 27, column: 13, scope: !287)
!293 = !DILocation(line: 28, column: 13, scope: !287)
!294 = !DILocation(line: 29, column: 5, scope: !287)
!295 = !DILocation(line: 32, column: 15, scope: !287)
!296 = !DILocation(line: 32, column: 13, scope: !287)
!297 = !DILocation(line: 33, column: 13, scope: !287)
!298 = !DILocation(line: 35, column: 5, scope: !287)
!299 = distinct !DISubprogram(name: "__ashldi3", scope: !36, file: !36, line: 24, type: !261, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !149)
!300 = !DILocation(line: 29, column: 11, scope: !299)
!301 = !DILocation(line: 29, column: 15, scope: !299)
!302 = !DILocation(line: 30, column: 11, scope: !299)
!303 = !DILocation(line: 30, column: 9, scope: !299)
!304 = !DILocation(line: 32, column: 18, scope: !299)
!305 = !DILocation(line: 32, column: 22, scope: !299)
!306 = !DILocation(line: 33, column: 33, scope: !299)
!307 = !DILocation(line: 33, column: 43, scope: !299)
!308 = !DILocation(line: 33, column: 37, scope: !299)
!309 = !DILocation(line: 33, column: 16, scope: !299)
!310 = !DILocation(line: 33, column: 18, scope: !299)
!311 = !DILocation(line: 33, column: 23, scope: !299)
!312 = !DILocation(line: 34, column: 5, scope: !299)
!313 = !DILocation(line: 37, column: 15, scope: !299)
!314 = !DILocation(line: 37, column: 13, scope: !299)
!315 = !DILocation(line: 38, column: 13, scope: !299)
!316 = !DILocation(line: 39, column: 33, scope: !299)
!317 = !DILocation(line: 39, column: 37, scope: !299)
!318 = !DILocation(line: 39, column: 18, scope: !299)
!319 = !DILocation(line: 39, column: 23, scope: !299)
!320 = !DILocation(line: 40, column: 32, scope: !299)
!321 = !DILocation(line: 40, column: 34, scope: !299)
!322 = !DILocation(line: 40, column: 39, scope: !299)
!323 = !DILocation(line: 40, column: 56, scope: !299)
!324 = !DILocation(line: 40, column: 77, scope: !299)
!325 = !DILocation(line: 40, column: 60, scope: !299)
!326 = !DILocation(line: 40, column: 45, scope: !299)
!327 = !DILocation(line: 40, column: 16, scope: !299)
!328 = !DILocation(line: 40, column: 18, scope: !299)
!329 = !DILocation(line: 40, column: 23, scope: !299)
!330 = !DILocation(line: 42, column: 19, scope: !299)
!331 = !DILocation(line: 42, column: 5, scope: !299)
!332 = !DILocation(line: 0, scope: !299)
!333 = !DILocation(line: 43, column: 1, scope: !299)
!334 = distinct !DISubprogram(name: "__ashrdi3", scope: !40, file: !40, line: 24, type: !261, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !149)
!335 = !DILocation(line: 29, column: 11, scope: !334)
!336 = !DILocation(line: 29, column: 15, scope: !334)
!337 = !DILocation(line: 30, column: 11, scope: !334)
!338 = !DILocation(line: 30, column: 9, scope: !334)
!339 = !DILocation(line: 33, column: 31, scope: !334)
!340 = !DILocation(line: 33, column: 33, scope: !334)
!341 = !DILocation(line: 33, column: 38, scope: !334)
!342 = !DILocation(line: 33, column: 16, scope: !334)
!343 = !DILocation(line: 33, column: 18, scope: !334)
!344 = !DILocation(line: 33, column: 23, scope: !334)
!345 = !DILocation(line: 34, column: 30, scope: !334)
!346 = !DILocation(line: 34, column: 32, scope: !334)
!347 = !DILocation(line: 34, column: 43, scope: !334)
!348 = !DILocation(line: 34, column: 37, scope: !334)
!349 = !DILocation(line: 34, column: 18, scope: !334)
!350 = !DILocation(line: 34, column: 22, scope: !334)
!351 = !DILocation(line: 35, column: 5, scope: !334)
!352 = !DILocation(line: 38, column: 15, scope: !334)
!353 = !DILocation(line: 38, column: 13, scope: !334)
!354 = !DILocation(line: 39, column: 13, scope: !334)
!355 = !DILocation(line: 40, column: 32, scope: !334)
!356 = !DILocation(line: 40, column: 34, scope: !334)
!357 = !DILocation(line: 40, column: 39, scope: !334)
!358 = !DILocation(line: 40, column: 16, scope: !334)
!359 = !DILocation(line: 40, column: 18, scope: !334)
!360 = !DILocation(line: 40, column: 24, scope: !334)
!361 = !DILocation(line: 41, column: 31, scope: !334)
!362 = !DILocation(line: 41, column: 33, scope: !334)
!363 = !DILocation(line: 41, column: 55, scope: !334)
!364 = !DILocation(line: 41, column: 38, scope: !334)
!365 = !DILocation(line: 41, column: 72, scope: !334)
!366 = !DILocation(line: 41, column: 76, scope: !334)
!367 = !DILocation(line: 41, column: 61, scope: !334)
!368 = !DILocation(line: 41, column: 18, scope: !334)
!369 = !DILocation(line: 41, column: 22, scope: !334)
!370 = !DILocation(line: 43, column: 19, scope: !334)
!371 = !DILocation(line: 43, column: 5, scope: !334)
!372 = !DILocation(line: 0, scope: !334)
!373 = !DILocation(line: 44, column: 1, scope: !334)
!374 = distinct !DISubprogram(name: "__clzdi2", scope: !44, file: !44, line: 22, type: !261, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !149)
!375 = !DILocation(line: 25, column: 7, scope: !374)
!376 = !DILocation(line: 25, column: 11, scope: !374)
!377 = !DILocation(line: 26, column: 26, scope: !374)
!378 = !DILocation(line: 26, column: 28, scope: !374)
!379 = !DILocation(line: 26, column: 33, scope: !374)
!380 = !DILocation(line: 27, column: 29, scope: !374)
!381 = !DILocation(line: 27, column: 31, scope: !374)
!382 = !DILocation(line: 27, column: 49, scope: !374)
!383 = !DILocation(line: 27, column: 42, scope: !374)
!384 = !DILocation(line: 27, column: 12, scope: !374)
!385 = !{i32 0, i32 33}
!386 = !DILocation(line: 28, column: 15, scope: !374)
!387 = !DILocation(line: 27, column: 59, scope: !374)
!388 = !DILocation(line: 27, column: 5, scope: !374)
!389 = distinct !DISubprogram(name: "__clzsi2", scope: !46, file: !46, line: 22, type: !261, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !149)
!390 = !DILocation(line: 25, column: 34, scope: !389)
!391 = !DILocation(line: 25, column: 40, scope: !389)
!392 = !DILocation(line: 26, column: 14, scope: !389)
!393 = !DILocation(line: 26, column: 7, scope: !389)
!394 = !DILocation(line: 29, column: 13, scope: !389)
!395 = !DILocation(line: 29, column: 23, scope: !389)
!396 = !DILocation(line: 29, column: 29, scope: !389)
!397 = !DILocation(line: 30, column: 13, scope: !389)
!398 = !DILocation(line: 30, column: 7, scope: !389)
!399 = !DILocation(line: 31, column: 7, scope: !389)
!400 = !DILocation(line: 33, column: 13, scope: !389)
!401 = !DILocation(line: 33, column: 21, scope: !389)
!402 = !DILocation(line: 33, column: 27, scope: !389)
!403 = !DILocation(line: 34, column: 13, scope: !389)
!404 = !DILocation(line: 34, column: 7, scope: !389)
!405 = !DILocation(line: 35, column: 7, scope: !389)
!406 = !DILocation(line: 37, column: 13, scope: !389)
!407 = !DILocation(line: 37, column: 20, scope: !389)
!408 = !DILocation(line: 37, column: 26, scope: !389)
!409 = !DILocation(line: 38, column: 13, scope: !389)
!410 = !DILocation(line: 38, column: 7, scope: !389)
!411 = !DILocation(line: 39, column: 7, scope: !389)
!412 = !DILocation(line: 52, column: 20, scope: !389)
!413 = !DILocation(line: 52, column: 37, scope: !389)
!414 = !DILocation(line: 52, column: 25, scope: !389)
!415 = !DILocation(line: 52, column: 14, scope: !389)
!416 = !DILocation(line: 52, column: 5, scope: !389)
!417 = distinct !DISubprogram(name: "__cmpdi2", scope: !50, file: !50, line: 23, type: !261, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !149)
!418 = !DILocation(line: 26, column: 7, scope: !417)
!419 = !DILocation(line: 26, column: 11, scope: !417)
!420 = !DILocation(line: 28, column: 7, scope: !417)
!421 = !DILocation(line: 28, column: 11, scope: !417)
!422 = !DILocation(line: 29, column: 11, scope: !417)
!423 = !DILocation(line: 29, column: 13, scope: !417)
!424 = !DILocation(line: 29, column: 22, scope: !417)
!425 = !DILocation(line: 29, column: 24, scope: !417)
!426 = !DILocation(line: 29, column: 18, scope: !417)
!427 = !DILocation(line: 29, column: 9, scope: !417)
!428 = !DILocation(line: 30, column: 9, scope: !417)
!429 = !DILocation(line: 31, column: 11, scope: !417)
!430 = !DILocation(line: 31, column: 13, scope: !417)
!431 = !DILocation(line: 31, column: 22, scope: !417)
!432 = !DILocation(line: 31, column: 24, scope: !417)
!433 = !DILocation(line: 31, column: 18, scope: !417)
!434 = !DILocation(line: 31, column: 9, scope: !417)
!435 = !DILocation(line: 32, column: 9, scope: !417)
!436 = !DILocation(line: 33, column: 13, scope: !417)
!437 = !DILocation(line: 33, column: 23, scope: !417)
!438 = !DILocation(line: 33, column: 17, scope: !417)
!439 = !DILocation(line: 33, column: 9, scope: !417)
!440 = !DILocation(line: 34, column: 9, scope: !417)
!441 = !DILocation(line: 35, column: 13, scope: !417)
!442 = !DILocation(line: 35, column: 23, scope: !417)
!443 = !DILocation(line: 35, column: 17, scope: !417)
!444 = !DILocation(line: 35, column: 9, scope: !417)
!445 = !DILocation(line: 36, column: 9, scope: !417)
!446 = !DILocation(line: 37, column: 5, scope: !417)
!447 = !DILocation(line: 0, scope: !417)
!448 = !DILocation(line: 38, column: 1, scope: !417)
!449 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !50, file: !50, line: 46, type: !261, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !149)
!450 = !DILocation(line: 48, column: 9, scope: !449)
!451 = !DILocation(line: 48, column: 24, scope: !449)
!452 = !DILocation(line: 48, column: 2, scope: !449)
!453 = distinct !DISubprogram(name: "__ctzdi2", scope: !54, file: !54, line: 22, type: !261, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !149)
!454 = !DILocation(line: 25, column: 7, scope: !453)
!455 = !DILocation(line: 25, column: 11, scope: !453)
!456 = !DILocation(line: 26, column: 28, scope: !453)
!457 = !DILocation(line: 26, column: 32, scope: !453)
!458 = !DILocation(line: 27, column: 29, scope: !453)
!459 = !DILocation(line: 27, column: 31, scope: !453)
!460 = !DILocation(line: 27, column: 41, scope: !453)
!461 = !DILocation(line: 27, column: 12, scope: !453)
!462 = !DILocation(line: 28, column: 18, scope: !453)
!463 = !DILocation(line: 27, column: 59, scope: !453)
!464 = !DILocation(line: 27, column: 5, scope: !453)
!465 = distinct !DISubprogram(name: "__ctzsi2", scope: !56, file: !56, line: 22, type: !261, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !149)
!466 = !DILocation(line: 25, column: 20, scope: !465)
!467 = !DILocation(line: 25, column: 34, scope: !465)
!468 = !DILocation(line: 25, column: 40, scope: !465)
!469 = !DILocation(line: 26, column: 7, scope: !465)
!470 = !DILocation(line: 29, column: 13, scope: !465)
!471 = !DILocation(line: 29, column: 23, scope: !465)
!472 = !DILocation(line: 29, column: 29, scope: !465)
!473 = !DILocation(line: 30, column: 7, scope: !465)
!474 = !DILocation(line: 31, column: 7, scope: !465)
!475 = !DILocation(line: 33, column: 13, scope: !465)
!476 = !DILocation(line: 33, column: 21, scope: !465)
!477 = !DILocation(line: 33, column: 27, scope: !465)
!478 = !DILocation(line: 34, column: 7, scope: !465)
!479 = !DILocation(line: 35, column: 7, scope: !465)
!480 = !DILocation(line: 37, column: 13, scope: !465)
!481 = !DILocation(line: 37, column: 20, scope: !465)
!482 = !DILocation(line: 37, column: 26, scope: !465)
!483 = !DILocation(line: 38, column: 7, scope: !465)
!484 = !DILocation(line: 40, column: 7, scope: !465)
!485 = !DILocation(line: 56, column: 25, scope: !465)
!486 = !DILocation(line: 56, column: 20, scope: !465)
!487 = !DILocation(line: 56, column: 44, scope: !465)
!488 = !DILocation(line: 56, column: 32, scope: !465)
!489 = !DILocation(line: 56, column: 14, scope: !465)
!490 = !DILocation(line: 56, column: 5, scope: !465)
!491 = distinct !DISubprogram(name: "__divdi3", scope: !60, file: !60, line: 20, type: !261, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !149)
!492 = !DILocation(line: 23, column: 20, scope: !491)
!493 = !DILocation(line: 24, column: 20, scope: !491)
!494 = !DILocation(line: 25, column: 12, scope: !491)
!495 = !DILocation(line: 25, column: 19, scope: !491)
!496 = !DILocation(line: 26, column: 12, scope: !491)
!497 = !DILocation(line: 26, column: 19, scope: !491)
!498 = !DILocation(line: 27, column: 9, scope: !491)
!499 = !DILocation(line: 28, column: 13, scope: !491)
!500 = !DILocation(line: 28, column: 44, scope: !491)
!501 = !DILocation(line: 28, column: 51, scope: !491)
!502 = !DILocation(line: 28, column: 5, scope: !491)
!503 = distinct !DISubprogram(name: "__udivmoddi4", scope: !118, file: !118, line: 24, type: !261, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !117, retainedNodes: !149)
!504 = !DILocation(line: 29, column: 7, scope: !503)
!505 = !DILocation(line: 29, column: 11, scope: !503)
!506 = !DILocation(line: 31, column: 7, scope: !503)
!507 = !DILocation(line: 31, column: 11, scope: !503)
!508 = !DILocation(line: 36, column: 11, scope: !503)
!509 = !DILocation(line: 36, column: 13, scope: !503)
!510 = !DILocation(line: 36, column: 18, scope: !503)
!511 = !DILocation(line: 36, column: 9, scope: !503)
!512 = !DILocation(line: 38, column: 15, scope: !503)
!513 = !DILocation(line: 38, column: 17, scope: !503)
!514 = !DILocation(line: 38, column: 22, scope: !503)
!515 = !DILocation(line: 38, column: 13, scope: !503)
!516 = !DILocation(line: 44, column: 17, scope: !503)
!517 = !DILocation(line: 45, column: 28, scope: !503)
!518 = !DILocation(line: 45, column: 38, scope: !503)
!519 = !DILocation(line: 45, column: 32, scope: !503)
!520 = !DILocation(line: 45, column: 24, scope: !503)
!521 = !DILocation(line: 45, column: 22, scope: !503)
!522 = !DILocation(line: 45, column: 17, scope: !503)
!523 = !DILocation(line: 46, column: 24, scope: !503)
!524 = !DILocation(line: 46, column: 34, scope: !503)
!525 = !DILocation(line: 46, column: 28, scope: !503)
!526 = !DILocation(line: 46, column: 20, scope: !503)
!527 = !DILocation(line: 46, column: 13, scope: !503)
!528 = !DILocation(line: 52, column: 13, scope: !503)
!529 = !DILocation(line: 53, column: 24, scope: !503)
!530 = !DILocation(line: 53, column: 20, scope: !503)
!531 = !DILocation(line: 53, column: 18, scope: !503)
!532 = !DILocation(line: 53, column: 13, scope: !503)
!533 = !DILocation(line: 54, column: 9, scope: !503)
!534 = !DILocation(line: 57, column: 13, scope: !503)
!535 = !DILocation(line: 57, column: 17, scope: !503)
!536 = !DILocation(line: 57, column: 9, scope: !503)
!537 = !DILocation(line: 59, column: 15, scope: !503)
!538 = !DILocation(line: 59, column: 17, scope: !503)
!539 = !DILocation(line: 59, column: 22, scope: !503)
!540 = !DILocation(line: 59, column: 13, scope: !503)
!541 = !DILocation(line: 65, column: 17, scope: !503)
!542 = !DILocation(line: 66, column: 26, scope: !503)
!543 = !DILocation(line: 66, column: 28, scope: !503)
!544 = !DILocation(line: 66, column: 39, scope: !503)
!545 = !DILocation(line: 66, column: 33, scope: !503)
!546 = !DILocation(line: 66, column: 24, scope: !503)
!547 = !DILocation(line: 66, column: 22, scope: !503)
!548 = !DILocation(line: 66, column: 17, scope: !503)
!549 = !DILocation(line: 67, column: 22, scope: !503)
!550 = !DILocation(line: 67, column: 24, scope: !503)
!551 = !DILocation(line: 67, column: 35, scope: !503)
!552 = !DILocation(line: 67, column: 29, scope: !503)
!553 = !DILocation(line: 67, column: 20, scope: !503)
!554 = !DILocation(line: 67, column: 13, scope: !503)
!555 = !DILocation(line: 70, column: 17, scope: !503)
!556 = !DILocation(line: 70, column: 21, scope: !503)
!557 = !DILocation(line: 70, column: 13, scope: !503)
!558 = !DILocation(line: 76, column: 17, scope: !503)
!559 = !DILocation(line: 78, column: 30, scope: !503)
!560 = !DILocation(line: 78, column: 32, scope: !503)
!561 = !DILocation(line: 78, column: 41, scope: !503)
!562 = !DILocation(line: 78, column: 43, scope: !503)
!563 = !DILocation(line: 78, column: 37, scope: !503)
!564 = !DILocation(line: 78, column: 19, scope: !503)
!565 = !DILocation(line: 78, column: 21, scope: !503)
!566 = !DILocation(line: 78, column: 26, scope: !503)
!567 = !DILocation(line: 79, column: 21, scope: !503)
!568 = !DILocation(line: 79, column: 25, scope: !503)
!569 = !DILocation(line: 80, column: 26, scope: !503)
!570 = !DILocation(line: 80, column: 22, scope: !503)
!571 = !DILocation(line: 81, column: 13, scope: !503)
!572 = !DILocation(line: 82, column: 22, scope: !503)
!573 = !DILocation(line: 82, column: 24, scope: !503)
!574 = !DILocation(line: 82, column: 33, scope: !503)
!575 = !DILocation(line: 82, column: 35, scope: !503)
!576 = !DILocation(line: 82, column: 29, scope: !503)
!577 = !DILocation(line: 82, column: 20, scope: !503)
!578 = !DILocation(line: 82, column: 13, scope: !503)
!579 = !DILocation(line: 88, column: 16, scope: !503)
!580 = !DILocation(line: 88, column: 18, scope: !503)
!581 = !DILocation(line: 88, column: 28, scope: !503)
!582 = !DILocation(line: 88, column: 30, scope: !503)
!583 = !DILocation(line: 88, column: 35, scope: !503)
!584 = !DILocation(line: 88, column: 23, scope: !503)
!585 = !DILocation(line: 88, column: 41, scope: !503)
!586 = !DILocation(line: 88, column: 13, scope: !503)
!587 = !DILocation(line: 90, column: 17, scope: !503)
!588 = !DILocation(line: 92, column: 31, scope: !503)
!589 = !DILocation(line: 92, column: 21, scope: !503)
!590 = !DILocation(line: 92, column: 25, scope: !503)
!591 = !DILocation(line: 93, column: 30, scope: !503)
!592 = !DILocation(line: 93, column: 32, scope: !503)
!593 = !DILocation(line: 93, column: 42, scope: !503)
!594 = !DILocation(line: 93, column: 44, scope: !503)
!595 = !DILocation(line: 93, column: 49, scope: !503)
!596 = !DILocation(line: 93, column: 37, scope: !503)
!597 = !DILocation(line: 93, column: 19, scope: !503)
!598 = !DILocation(line: 93, column: 21, scope: !503)
!599 = !DILocation(line: 93, column: 26, scope: !503)
!600 = !DILocation(line: 94, column: 26, scope: !503)
!601 = !DILocation(line: 94, column: 22, scope: !503)
!602 = !DILocation(line: 95, column: 13, scope: !503)
!603 = !DILocation(line: 96, column: 22, scope: !503)
!604 = !DILocation(line: 96, column: 24, scope: !503)
!605 = !DILocation(line: 96, column: 48, scope: !503)
!606 = !DILocation(line: 96, column: 50, scope: !503)
!607 = !DILocation(line: 96, column: 32, scope: !503)
!608 = !DILocation(line: 96, column: 29, scope: !503)
!609 = !DILocation(line: 96, column: 20, scope: !503)
!610 = !DILocation(line: 96, column: 13, scope: !503)
!611 = !DILocation(line: 102, column: 30, scope: !503)
!612 = !DILocation(line: 102, column: 32, scope: !503)
!613 = !DILocation(line: 102, column: 14, scope: !503)
!614 = !DILocation(line: 102, column: 56, scope: !503)
!615 = !DILocation(line: 102, column: 58, scope: !503)
!616 = !DILocation(line: 102, column: 40, scope: !503)
!617 = !DILocation(line: 102, column: 38, scope: !503)
!618 = !DILocation(line: 104, column: 16, scope: !503)
!619 = !DILocation(line: 104, column: 13, scope: !503)
!620 = !DILocation(line: 106, column: 16, scope: !503)
!621 = !DILocation(line: 107, column: 26, scope: !503)
!622 = !DILocation(line: 107, column: 22, scope: !503)
!623 = !DILocation(line: 107, column: 17, scope: !503)
!624 = !DILocation(line: 108, column: 13, scope: !503)
!625 = !DILocation(line: 110, column: 9, scope: !503)
!626 = !DILocation(line: 113, column: 13, scope: !503)
!627 = !DILocation(line: 113, column: 17, scope: !503)
!628 = !DILocation(line: 114, column: 24, scope: !503)
!629 = !DILocation(line: 114, column: 45, scope: !503)
!630 = !DILocation(line: 114, column: 28, scope: !503)
!631 = !DILocation(line: 114, column: 11, scope: !503)
!632 = !DILocation(line: 114, column: 13, scope: !503)
!633 = !DILocation(line: 114, column: 18, scope: !503)
!634 = !DILocation(line: 116, column: 22, scope: !503)
!635 = !DILocation(line: 116, column: 24, scope: !503)
!636 = !DILocation(line: 116, column: 29, scope: !503)
!637 = !DILocation(line: 116, column: 11, scope: !503)
!638 = !DILocation(line: 116, column: 13, scope: !503)
!639 = !DILocation(line: 116, column: 18, scope: !503)
!640 = !DILocation(line: 117, column: 22, scope: !503)
!641 = !DILocation(line: 117, column: 24, scope: !503)
!642 = !DILocation(line: 117, column: 46, scope: !503)
!643 = !DILocation(line: 117, column: 29, scope: !503)
!644 = !DILocation(line: 117, column: 60, scope: !503)
!645 = !DILocation(line: 117, column: 64, scope: !503)
!646 = !DILocation(line: 117, column: 53, scope: !503)
!647 = !DILocation(line: 117, column: 13, scope: !503)
!648 = !DILocation(line: 117, column: 17, scope: !503)
!649 = !DILocation(line: 118, column: 5, scope: !503)
!650 = !DILocation(line: 121, column: 15, scope: !503)
!651 = !DILocation(line: 121, column: 17, scope: !503)
!652 = !DILocation(line: 121, column: 22, scope: !503)
!653 = !DILocation(line: 121, column: 13, scope: !503)
!654 = !DILocation(line: 127, column: 22, scope: !503)
!655 = !DILocation(line: 127, column: 43, scope: !503)
!656 = !DILocation(line: 127, column: 17, scope: !503)
!657 = !DILocation(line: 129, column: 21, scope: !503)
!658 = !DILocation(line: 130, column: 32, scope: !503)
!659 = !DILocation(line: 130, column: 43, scope: !503)
!660 = !DILocation(line: 130, column: 47, scope: !503)
!661 = !DILocation(line: 130, column: 36, scope: !503)
!662 = !DILocation(line: 130, column: 28, scope: !503)
!663 = !DILocation(line: 130, column: 26, scope: !503)
!664 = !DILocation(line: 130, column: 21, scope: !503)
!665 = !DILocation(line: 131, column: 25, scope: !503)
!666 = !DILocation(line: 131, column: 29, scope: !503)
!667 = !DILocation(line: 131, column: 21, scope: !503)
!668 = !DILocation(line: 132, column: 30, scope: !503)
!669 = !DILocation(line: 132, column: 21, scope: !503)
!670 = !DILocation(line: 133, column: 40, scope: !503)
!671 = !DILocation(line: 133, column: 22, scope: !503)
!672 = !DILocation(line: 134, column: 30, scope: !503)
!673 = !DILocation(line: 134, column: 32, scope: !503)
!674 = !DILocation(line: 134, column: 37, scope: !503)
!675 = !DILocation(line: 134, column: 19, scope: !503)
!676 = !DILocation(line: 134, column: 21, scope: !503)
!677 = !DILocation(line: 134, column: 26, scope: !503)
!678 = !DILocation(line: 135, column: 30, scope: !503)
!679 = !DILocation(line: 135, column: 32, scope: !503)
!680 = !DILocation(line: 135, column: 54, scope: !503)
!681 = !DILocation(line: 135, column: 37, scope: !503)
!682 = !DILocation(line: 135, column: 68, scope: !503)
!683 = !DILocation(line: 135, column: 72, scope: !503)
!684 = !DILocation(line: 135, column: 61, scope: !503)
!685 = !DILocation(line: 135, column: 21, scope: !503)
!686 = !DILocation(line: 135, column: 25, scope: !503)
!687 = !DILocation(line: 136, column: 26, scope: !503)
!688 = !DILocation(line: 136, column: 17, scope: !503)
!689 = !DILocation(line: 142, column: 55, scope: !503)
!690 = !DILocation(line: 142, column: 37, scope: !503)
!691 = !DILocation(line: 142, column: 35, scope: !503)
!692 = !DILocation(line: 142, column: 78, scope: !503)
!693 = !DILocation(line: 142, column: 80, scope: !503)
!694 = !DILocation(line: 142, column: 62, scope: !503)
!695 = !DILocation(line: 142, column: 60, scope: !503)
!696 = !DILocation(line: 147, column: 20, scope: !503)
!697 = !DILocation(line: 147, column: 17, scope: !503)
!698 = !DILocation(line: 149, column: 21, scope: !503)
!699 = !DILocation(line: 149, column: 25, scope: !503)
!700 = !DILocation(line: 150, column: 32, scope: !503)
!701 = !DILocation(line: 150, column: 19, scope: !503)
!702 = !DILocation(line: 150, column: 21, scope: !503)
!703 = !DILocation(line: 150, column: 26, scope: !503)
!704 = !DILocation(line: 151, column: 19, scope: !503)
!705 = !DILocation(line: 151, column: 21, scope: !503)
!706 = !DILocation(line: 151, column: 26, scope: !503)
!707 = !DILocation(line: 152, column: 29, scope: !503)
!708 = !DILocation(line: 152, column: 31, scope: !503)
!709 = !DILocation(line: 152, column: 21, scope: !503)
!710 = !DILocation(line: 152, column: 25, scope: !503)
!711 = !DILocation(line: 153, column: 13, scope: !503)
!712 = !DILocation(line: 154, column: 25, scope: !503)
!713 = !DILocation(line: 154, column: 22, scope: !503)
!714 = !DILocation(line: 156, column: 21, scope: !503)
!715 = !DILocation(line: 156, column: 25, scope: !503)
!716 = !DILocation(line: 157, column: 32, scope: !503)
!717 = !DILocation(line: 157, column: 53, scope: !503)
!718 = !DILocation(line: 157, column: 36, scope: !503)
!719 = !DILocation(line: 157, column: 19, scope: !503)
!720 = !DILocation(line: 157, column: 21, scope: !503)
!721 = !DILocation(line: 157, column: 26, scope: !503)
!722 = !DILocation(line: 158, column: 30, scope: !503)
!723 = !DILocation(line: 158, column: 32, scope: !503)
!724 = !DILocation(line: 158, column: 37, scope: !503)
!725 = !DILocation(line: 158, column: 19, scope: !503)
!726 = !DILocation(line: 158, column: 21, scope: !503)
!727 = !DILocation(line: 158, column: 26, scope: !503)
!728 = !DILocation(line: 159, column: 30, scope: !503)
!729 = !DILocation(line: 159, column: 32, scope: !503)
!730 = !DILocation(line: 159, column: 54, scope: !503)
!731 = !DILocation(line: 159, column: 37, scope: !503)
!732 = !DILocation(line: 159, column: 68, scope: !503)
!733 = !DILocation(line: 159, column: 72, scope: !503)
!734 = !DILocation(line: 159, column: 61, scope: !503)
!735 = !DILocation(line: 159, column: 21, scope: !503)
!736 = !DILocation(line: 159, column: 25, scope: !503)
!737 = !DILocation(line: 160, column: 13, scope: !503)
!738 = !DILocation(line: 163, column: 31, scope: !503)
!739 = !DILocation(line: 163, column: 53, scope: !503)
!740 = !DILocation(line: 163, column: 35, scope: !503)
!741 = !DILocation(line: 163, column: 21, scope: !503)
!742 = !DILocation(line: 163, column: 25, scope: !503)
!743 = !DILocation(line: 164, column: 31, scope: !503)
!744 = !DILocation(line: 164, column: 33, scope: !503)
!745 = !DILocation(line: 164, column: 56, scope: !503)
!746 = !DILocation(line: 164, column: 38, scope: !503)
!747 = !DILocation(line: 165, column: 33, scope: !503)
!748 = !DILocation(line: 165, column: 44, scope: !503)
!749 = !DILocation(line: 165, column: 37, scope: !503)
!750 = !DILocation(line: 164, column: 63, scope: !503)
!751 = !DILocation(line: 164, column: 19, scope: !503)
!752 = !DILocation(line: 164, column: 21, scope: !503)
!753 = !DILocation(line: 164, column: 26, scope: !503)
!754 = !DILocation(line: 166, column: 19, scope: !503)
!755 = !DILocation(line: 166, column: 21, scope: !503)
!756 = !DILocation(line: 166, column: 26, scope: !503)
!757 = !DILocation(line: 167, column: 29, scope: !503)
!758 = !DILocation(line: 167, column: 31, scope: !503)
!759 = !DILocation(line: 167, column: 43, scope: !503)
!760 = !DILocation(line: 167, column: 36, scope: !503)
!761 = !DILocation(line: 167, column: 21, scope: !503)
!762 = !DILocation(line: 167, column: 25, scope: !503)
!763 = !DILocation(line: 169, column: 9, scope: !503)
!764 = !DILocation(line: 176, column: 34, scope: !503)
!765 = !DILocation(line: 176, column: 36, scope: !503)
!766 = !DILocation(line: 176, column: 18, scope: !503)
!767 = !DILocation(line: 176, column: 60, scope: !503)
!768 = !DILocation(line: 176, column: 62, scope: !503)
!769 = !DILocation(line: 176, column: 44, scope: !503)
!770 = !DILocation(line: 176, column: 42, scope: !503)
!771 = !DILocation(line: 178, column: 20, scope: !503)
!772 = !DILocation(line: 178, column: 17, scope: !503)
!773 = !DILocation(line: 180, column: 21, scope: !503)
!774 = !DILocation(line: 181, column: 30, scope: !503)
!775 = !DILocation(line: 181, column: 26, scope: !503)
!776 = !DILocation(line: 181, column: 21, scope: !503)
!777 = !DILocation(line: 182, column: 17, scope: !503)
!778 = !DILocation(line: 184, column: 13, scope: !503)
!779 = !DILocation(line: 187, column: 17, scope: !503)
!780 = !DILocation(line: 187, column: 21, scope: !503)
!781 = !DILocation(line: 188, column: 20, scope: !503)
!782 = !DILocation(line: 188, column: 17, scope: !503)
!783 = !DILocation(line: 190, column: 32, scope: !503)
!784 = !DILocation(line: 190, column: 19, scope: !503)
!785 = !DILocation(line: 190, column: 21, scope: !503)
!786 = !DILocation(line: 190, column: 26, scope: !503)
!787 = !DILocation(line: 191, column: 19, scope: !503)
!788 = !DILocation(line: 191, column: 21, scope: !503)
!789 = !DILocation(line: 191, column: 26, scope: !503)
!790 = !DILocation(line: 192, column: 29, scope: !503)
!791 = !DILocation(line: 192, column: 31, scope: !503)
!792 = !DILocation(line: 192, column: 21, scope: !503)
!793 = !DILocation(line: 192, column: 25, scope: !503)
!794 = !DILocation(line: 193, column: 13, scope: !503)
!795 = !DILocation(line: 196, column: 32, scope: !503)
!796 = !DILocation(line: 196, column: 53, scope: !503)
!797 = !DILocation(line: 196, column: 36, scope: !503)
!798 = !DILocation(line: 196, column: 19, scope: !503)
!799 = !DILocation(line: 196, column: 21, scope: !503)
!800 = !DILocation(line: 196, column: 26, scope: !503)
!801 = !DILocation(line: 197, column: 30, scope: !503)
!802 = !DILocation(line: 197, column: 32, scope: !503)
!803 = !DILocation(line: 197, column: 37, scope: !503)
!804 = !DILocation(line: 197, column: 19, scope: !503)
!805 = !DILocation(line: 197, column: 21, scope: !503)
!806 = !DILocation(line: 197, column: 26, scope: !503)
!807 = !DILocation(line: 198, column: 30, scope: !503)
!808 = !DILocation(line: 198, column: 32, scope: !503)
!809 = !DILocation(line: 198, column: 54, scope: !503)
!810 = !DILocation(line: 198, column: 37, scope: !503)
!811 = !DILocation(line: 198, column: 68, scope: !503)
!812 = !DILocation(line: 198, column: 72, scope: !503)
!813 = !DILocation(line: 198, column: 61, scope: !503)
!814 = !DILocation(line: 198, column: 21, scope: !503)
!815 = !DILocation(line: 198, column: 25, scope: !503)
!816 = !DILocation(line: 0, scope: !503)
!817 = !DILocation(line: 209, column: 5, scope: !503)
!818 = !DILocation(line: 209, column: 15, scope: !503)
!819 = !DILocation(line: 212, column: 23, scope: !503)
!820 = !DILocation(line: 212, column: 25, scope: !503)
!821 = !DILocation(line: 212, column: 43, scope: !503)
!822 = !DILocation(line: 212, column: 36, scope: !503)
!823 = !DILocation(line: 212, column: 11, scope: !503)
!824 = !DILocation(line: 212, column: 13, scope: !503)
!825 = !DILocation(line: 212, column: 18, scope: !503)
!826 = !DILocation(line: 213, column: 41, scope: !503)
!827 = !DILocation(line: 213, column: 43, scope: !503)
!828 = !DILocation(line: 213, column: 36, scope: !503)
!829 = !DILocation(line: 213, column: 13, scope: !503)
!830 = !DILocation(line: 213, column: 18, scope: !503)
!831 = !DILocation(line: 214, column: 23, scope: !503)
!832 = !DILocation(line: 214, column: 25, scope: !503)
!833 = !DILocation(line: 214, column: 43, scope: !503)
!834 = !DILocation(line: 214, column: 36, scope: !503)
!835 = !DILocation(line: 214, column: 11, scope: !503)
!836 = !DILocation(line: 214, column: 13, scope: !503)
!837 = !DILocation(line: 214, column: 18, scope: !503)
!838 = !DILocation(line: 215, column: 30, scope: !503)
!839 = !DILocation(line: 215, column: 36, scope: !503)
!840 = !DILocation(line: 215, column: 13, scope: !503)
!841 = !DILocation(line: 215, column: 18, scope: !503)
!842 = !DILocation(line: 223, column: 37, scope: !503)
!843 = !DILocation(line: 223, column: 45, scope: !503)
!844 = !DILocation(line: 223, column: 49, scope: !503)
!845 = !DILocation(line: 225, column: 24, scope: !503)
!846 = !DILocation(line: 225, column: 11, scope: !503)
!847 = !DILocation(line: 225, column: 15, scope: !503)
!848 = !DILocation(line: 226, column: 5, scope: !503)
!849 = !DILocation(line: 224, column: 19, scope: !503)
!850 = !DILocation(line: 224, column: 17, scope: !503)
!851 = !DILocation(line: 209, column: 20, scope: !503)
!852 = distinct !{!852, !817, !848, !190}
!853 = !DILocation(line: 227, column: 16, scope: !503)
!854 = !DILocation(line: 227, column: 20, scope: !503)
!855 = !DILocation(line: 227, column: 28, scope: !503)
!856 = !DILocation(line: 227, column: 26, scope: !503)
!857 = !DILocation(line: 227, column: 7, scope: !503)
!858 = !DILocation(line: 227, column: 11, scope: !503)
!859 = !DILocation(line: 228, column: 9, scope: !503)
!860 = !DILocation(line: 229, column: 18, scope: !503)
!861 = !DILocation(line: 229, column: 14, scope: !503)
!862 = !DILocation(line: 229, column: 9, scope: !503)
!863 = !DILocation(line: 230, column: 14, scope: !503)
!864 = !DILocation(line: 230, column: 5, scope: !503)
!865 = !DILocation(line: 231, column: 1, scope: !503)
!866 = distinct !DISubprogram(name: "__divmoddi4", scope: !62, file: !62, line: 20, type: !261, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !149)
!867 = !DILocation(line: 22, column: 14, scope: !866)
!868 = !DILocation(line: 23, column: 16, scope: !866)
!869 = !DILocation(line: 23, column: 12, scope: !866)
!870 = !DILocation(line: 23, column: 8, scope: !866)
!871 = !DILocation(line: 24, column: 3, scope: !866)
!872 = distinct !DISubprogram(name: "__divmodsi4", scope: !64, file: !64, line: 20, type: !261, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !149)
!873 = !DILocation(line: 22, column: 14, scope: !872)
!874 = !DILocation(line: 23, column: 16, scope: !872)
!875 = !DILocation(line: 23, column: 12, scope: !872)
!876 = !DILocation(line: 23, column: 8, scope: !872)
!877 = !DILocation(line: 24, column: 3, scope: !872)
!878 = distinct !DISubprogram(name: "__divsi3", scope: !66, file: !66, line: 22, type: !261, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !149)
!879 = !DILocation(line: 25, column: 20, scope: !878)
!880 = !DILocation(line: 26, column: 20, scope: !878)
!881 = !DILocation(line: 27, column: 12, scope: !878)
!882 = !DILocation(line: 27, column: 19, scope: !878)
!883 = !DILocation(line: 28, column: 12, scope: !878)
!884 = !DILocation(line: 28, column: 19, scope: !878)
!885 = !DILocation(line: 29, column: 9, scope: !878)
!886 = !DILocation(line: 36, column: 22, scope: !878)
!887 = !DILocation(line: 36, column: 33, scope: !878)
!888 = !DILocation(line: 36, column: 40, scope: !878)
!889 = !DILocation(line: 36, column: 5, scope: !878)
!890 = distinct !DISubprogram(name: "__ffsdi2", scope: !70, file: !70, line: 22, type: !261, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !149)
!891 = !DILocation(line: 25, column: 7, scope: !890)
!892 = !DILocation(line: 25, column: 11, scope: !890)
!893 = !DILocation(line: 26, column: 13, scope: !890)
!894 = !DILocation(line: 26, column: 17, scope: !890)
!895 = !DILocation(line: 26, column: 9, scope: !890)
!896 = !DILocation(line: 28, column: 15, scope: !890)
!897 = !DILocation(line: 28, column: 17, scope: !890)
!898 = !DILocation(line: 28, column: 22, scope: !890)
!899 = !DILocation(line: 28, column: 13, scope: !890)
!900 = !DILocation(line: 29, column: 13, scope: !890)
!901 = !DILocation(line: 30, column: 32, scope: !890)
!902 = !DILocation(line: 30, column: 34, scope: !890)
!903 = !DILocation(line: 30, column: 16, scope: !890)
!904 = !DILocation(line: 30, column: 40, scope: !890)
!905 = !DILocation(line: 30, column: 9, scope: !890)
!906 = !DILocation(line: 32, column: 30, scope: !890)
!907 = !DILocation(line: 32, column: 12, scope: !890)
!908 = !DILocation(line: 32, column: 35, scope: !890)
!909 = !DILocation(line: 32, column: 5, scope: !890)
!910 = !DILocation(line: 0, scope: !890)
!911 = !DILocation(line: 33, column: 1, scope: !890)
!912 = distinct !DISubprogram(name: "__ffssi2", scope: !72, file: !72, line: 22, type: !261, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !149)
!913 = !DILocation(line: 24, column: 11, scope: !912)
!914 = !DILocation(line: 24, column: 9, scope: !912)
!915 = !DILocation(line: 26, column: 9, scope: !912)
!916 = !DILocation(line: 28, column: 12, scope: !912)
!917 = !DILocation(line: 28, column: 29, scope: !912)
!918 = !DILocation(line: 28, column: 5, scope: !912)
!919 = !DILocation(line: 0, scope: !912)
!920 = !DILocation(line: 29, column: 1, scope: !912)
!921 = distinct !DISubprogram(name: "__lshrdi3", scope: !78, file: !78, line: 24, type: !261, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !149)
!922 = !DILocation(line: 29, column: 11, scope: !921)
!923 = !DILocation(line: 29, column: 15, scope: !921)
!924 = !DILocation(line: 30, column: 11, scope: !921)
!925 = !DILocation(line: 30, column: 9, scope: !921)
!926 = !DILocation(line: 32, column: 16, scope: !921)
!927 = !DILocation(line: 32, column: 18, scope: !921)
!928 = !DILocation(line: 32, column: 23, scope: !921)
!929 = !DILocation(line: 33, column: 30, scope: !921)
!930 = !DILocation(line: 33, column: 32, scope: !921)
!931 = !DILocation(line: 33, column: 43, scope: !921)
!932 = !DILocation(line: 33, column: 37, scope: !921)
!933 = !DILocation(line: 33, column: 18, scope: !921)
!934 = !DILocation(line: 33, column: 22, scope: !921)
!935 = !DILocation(line: 34, column: 5, scope: !921)
!936 = !DILocation(line: 37, column: 15, scope: !921)
!937 = !DILocation(line: 37, column: 13, scope: !921)
!938 = !DILocation(line: 38, column: 13, scope: !921)
!939 = !DILocation(line: 39, column: 32, scope: !921)
!940 = !DILocation(line: 39, column: 34, scope: !921)
!941 = !DILocation(line: 39, column: 39, scope: !921)
!942 = !DILocation(line: 39, column: 16, scope: !921)
!943 = !DILocation(line: 39, column: 18, scope: !921)
!944 = !DILocation(line: 39, column: 24, scope: !921)
!945 = !DILocation(line: 40, column: 31, scope: !921)
!946 = !DILocation(line: 40, column: 33, scope: !921)
!947 = !DILocation(line: 40, column: 55, scope: !921)
!948 = !DILocation(line: 40, column: 38, scope: !921)
!949 = !DILocation(line: 40, column: 72, scope: !921)
!950 = !DILocation(line: 40, column: 76, scope: !921)
!951 = !DILocation(line: 40, column: 61, scope: !921)
!952 = !DILocation(line: 40, column: 18, scope: !921)
!953 = !DILocation(line: 40, column: 22, scope: !921)
!954 = !DILocation(line: 42, column: 19, scope: !921)
!955 = !DILocation(line: 42, column: 5, scope: !921)
!956 = !DILocation(line: 0, scope: !921)
!957 = !DILocation(line: 43, column: 1, scope: !921)
!958 = distinct !DISubprogram(name: "__moddi3", scope: !82, file: !82, line: 20, type: !261, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !81, retainedNodes: !149)
!959 = !DILocation(line: 24, column: 17, scope: !958)
!960 = !DILocation(line: 25, column: 11, scope: !958)
!961 = !DILocation(line: 26, column: 12, scope: !958)
!962 = !DILocation(line: 26, column: 17, scope: !958)
!963 = !DILocation(line: 28, column: 5, scope: !958)
!964 = !DILocation(line: 29, column: 21, scope: !958)
!965 = !DILocation(line: 29, column: 23, scope: !958)
!966 = !DILocation(line: 29, column: 28, scope: !958)
!967 = !DILocation(line: 29, column: 5, scope: !958)
!968 = distinct !DISubprogram(name: "__modsi3", scope: !84, file: !84, line: 20, type: !261, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !149)
!969 = !DILocation(line: 22, column: 16, scope: !968)
!970 = !DILocation(line: 22, column: 31, scope: !968)
!971 = !DILocation(line: 22, column: 14, scope: !968)
!972 = !DILocation(line: 22, column: 5, scope: !968)
!973 = distinct !DISubprogram(name: "__mulvdi3", scope: !88, file: !88, line: 22, type: !261, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !87, retainedNodes: !149)
!974 = !DILocation(line: 27, column: 11, scope: !973)
!975 = !DILocation(line: 27, column: 9, scope: !973)
!976 = !DILocation(line: 29, column: 15, scope: !973)
!977 = !DILocation(line: 29, column: 20, scope: !973)
!978 = !DILocation(line: 29, column: 25, scope: !973)
!979 = !DILocation(line: 29, column: 13, scope: !973)
!980 = !DILocation(line: 30, column: 13, scope: !973)
!981 = !DILocation(line: 31, column: 9, scope: !973)
!982 = !DILocation(line: 33, column: 11, scope: !973)
!983 = !DILocation(line: 33, column: 9, scope: !973)
!984 = !DILocation(line: 35, column: 15, scope: !973)
!985 = !DILocation(line: 35, column: 20, scope: !973)
!986 = !DILocation(line: 35, column: 25, scope: !973)
!987 = !DILocation(line: 35, column: 13, scope: !973)
!988 = !DILocation(line: 36, column: 13, scope: !973)
!989 = !DILocation(line: 37, column: 9, scope: !973)
!990 = !DILocation(line: 39, column: 19, scope: !973)
!991 = !DILocation(line: 40, column: 23, scope: !973)
!992 = !DILocation(line: 40, column: 29, scope: !973)
!993 = !DILocation(line: 41, column: 19, scope: !973)
!994 = !DILocation(line: 42, column: 23, scope: !973)
!995 = !DILocation(line: 42, column: 29, scope: !973)
!996 = !DILocation(line: 43, column: 15, scope: !973)
!997 = !DILocation(line: 43, column: 19, scope: !973)
!998 = !DILocation(line: 43, column: 28, scope: !973)
!999 = !DILocation(line: 43, column: 9, scope: !973)
!1000 = !DILocation(line: 44, column: 9, scope: !973)
!1001 = !DILocation(line: 45, column: 12, scope: !973)
!1002 = !DILocation(line: 45, column: 9, scope: !973)
!1003 = !DILocation(line: 47, column: 25, scope: !973)
!1004 = !DILocation(line: 47, column: 19, scope: !973)
!1005 = !DILocation(line: 47, column: 13, scope: !973)
!1006 = !DILocation(line: 48, column: 13, scope: !973)
!1007 = !DILocation(line: 49, column: 5, scope: !973)
!1008 = !DILocation(line: 52, column: 27, scope: !973)
!1009 = !DILocation(line: 52, column: 25, scope: !973)
!1010 = !DILocation(line: 52, column: 19, scope: !973)
!1011 = !DILocation(line: 52, column: 13, scope: !973)
!1012 = !DILocation(line: 53, column: 13, scope: !973)
!1013 = !DILocation(line: 55, column: 5, scope: !973)
!1014 = !DILocation(line: 0, scope: !973)
!1015 = !DILocation(line: 56, column: 1, scope: !973)
!1016 = distinct !DISubprogram(name: "__mulvsi3", scope: !90, file: !90, line: 22, type: !261, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !149)
!1017 = !DILocation(line: 27, column: 11, scope: !1016)
!1018 = !DILocation(line: 27, column: 9, scope: !1016)
!1019 = !DILocation(line: 29, column: 15, scope: !1016)
!1020 = !DILocation(line: 29, column: 20, scope: !1016)
!1021 = !DILocation(line: 29, column: 25, scope: !1016)
!1022 = !DILocation(line: 29, column: 13, scope: !1016)
!1023 = !DILocation(line: 30, column: 13, scope: !1016)
!1024 = !DILocation(line: 31, column: 9, scope: !1016)
!1025 = !DILocation(line: 33, column: 11, scope: !1016)
!1026 = !DILocation(line: 33, column: 9, scope: !1016)
!1027 = !DILocation(line: 35, column: 15, scope: !1016)
!1028 = !DILocation(line: 35, column: 20, scope: !1016)
!1029 = !DILocation(line: 35, column: 25, scope: !1016)
!1030 = !DILocation(line: 35, column: 13, scope: !1016)
!1031 = !DILocation(line: 36, column: 13, scope: !1016)
!1032 = !DILocation(line: 37, column: 9, scope: !1016)
!1033 = !DILocation(line: 39, column: 19, scope: !1016)
!1034 = !DILocation(line: 40, column: 23, scope: !1016)
!1035 = !DILocation(line: 40, column: 29, scope: !1016)
!1036 = !DILocation(line: 41, column: 19, scope: !1016)
!1037 = !DILocation(line: 42, column: 23, scope: !1016)
!1038 = !DILocation(line: 42, column: 29, scope: !1016)
!1039 = !DILocation(line: 43, column: 15, scope: !1016)
!1040 = !DILocation(line: 43, column: 19, scope: !1016)
!1041 = !DILocation(line: 43, column: 28, scope: !1016)
!1042 = !DILocation(line: 43, column: 9, scope: !1016)
!1043 = !DILocation(line: 44, column: 9, scope: !1016)
!1044 = !DILocation(line: 45, column: 12, scope: !1016)
!1045 = !DILocation(line: 45, column: 9, scope: !1016)
!1046 = !DILocation(line: 47, column: 25, scope: !1016)
!1047 = !DILocation(line: 47, column: 19, scope: !1016)
!1048 = !DILocation(line: 47, column: 13, scope: !1016)
!1049 = !DILocation(line: 48, column: 13, scope: !1016)
!1050 = !DILocation(line: 49, column: 5, scope: !1016)
!1051 = !DILocation(line: 52, column: 27, scope: !1016)
!1052 = !DILocation(line: 52, column: 25, scope: !1016)
!1053 = !DILocation(line: 52, column: 19, scope: !1016)
!1054 = !DILocation(line: 52, column: 13, scope: !1016)
!1055 = !DILocation(line: 53, column: 13, scope: !1016)
!1056 = !DILocation(line: 55, column: 5, scope: !1016)
!1057 = !DILocation(line: 0, scope: !1016)
!1058 = !DILocation(line: 56, column: 1, scope: !1016)
!1059 = distinct !DISubprogram(name: "__paritydi2", scope: !94, file: !94, line: 20, type: !261, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !93, retainedNodes: !149)
!1060 = !DILocation(line: 23, column: 7, scope: !1059)
!1061 = !DILocation(line: 23, column: 11, scope: !1059)
!1062 = !DILocation(line: 24, column: 26, scope: !1059)
!1063 = !DILocation(line: 24, column: 28, scope: !1059)
!1064 = !DILocation(line: 24, column: 39, scope: !1059)
!1065 = !DILocation(line: 24, column: 33, scope: !1059)
!1066 = !DILocation(line: 24, column: 12, scope: !1059)
!1067 = !DILocation(line: 24, column: 5, scope: !1059)
!1068 = distinct !DISubprogram(name: "__paritysi2", scope: !96, file: !96, line: 20, type: !261, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !95, retainedNodes: !149)
!1069 = !DILocation(line: 23, column: 12, scope: !1068)
!1070 = !DILocation(line: 23, column: 7, scope: !1068)
!1071 = !DILocation(line: 24, column: 12, scope: !1068)
!1072 = !DILocation(line: 24, column: 7, scope: !1068)
!1073 = !DILocation(line: 25, column: 12, scope: !1068)
!1074 = !DILocation(line: 25, column: 7, scope: !1068)
!1075 = !DILocation(line: 26, column: 26, scope: !1068)
!1076 = !DILocation(line: 26, column: 20, scope: !1068)
!1077 = !DILocation(line: 26, column: 34, scope: !1068)
!1078 = !DILocation(line: 26, column: 5, scope: !1068)
!1079 = distinct !DISubprogram(name: "__popcountdi2", scope: !100, file: !100, line: 20, type: !261, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !149)
!1080 = !DILocation(line: 23, column: 20, scope: !1079)
!1081 = !DILocation(line: 23, column: 26, scope: !1079)
!1082 = !DILocation(line: 23, column: 13, scope: !1079)
!1083 = !DILocation(line: 25, column: 15, scope: !1079)
!1084 = !DILocation(line: 25, column: 21, scope: !1079)
!1085 = !DILocation(line: 25, column: 52, scope: !1079)
!1086 = !DILocation(line: 25, column: 46, scope: !1079)
!1087 = !DILocation(line: 27, column: 20, scope: !1079)
!1088 = !DILocation(line: 27, column: 14, scope: !1079)
!1089 = !DILocation(line: 27, column: 27, scope: !1079)
!1090 = !DILocation(line: 29, column: 34, scope: !1079)
!1091 = !DILocation(line: 29, column: 28, scope: !1079)
!1092 = !DILocation(line: 29, column: 16, scope: !1079)
!1093 = !DILocation(line: 32, column: 16, scope: !1079)
!1094 = !DILocation(line: 32, column: 11, scope: !1079)
!1095 = !DILocation(line: 35, column: 20, scope: !1079)
!1096 = !DILocation(line: 35, column: 15, scope: !1079)
!1097 = !DILocation(line: 35, column: 27, scope: !1079)
!1098 = !DILocation(line: 35, column: 5, scope: !1079)
!1099 = distinct !DISubprogram(name: "__popcountsi2", scope: !102, file: !102, line: 20, type: !261, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !149)
!1100 = !DILocation(line: 23, column: 17, scope: !1099)
!1101 = !DILocation(line: 23, column: 23, scope: !1099)
!1102 = !DILocation(line: 23, column: 11, scope: !1099)
!1103 = !DILocation(line: 25, column: 13, scope: !1099)
!1104 = !DILocation(line: 25, column: 19, scope: !1099)
!1105 = !DILocation(line: 25, column: 38, scope: !1099)
!1106 = !DILocation(line: 25, column: 33, scope: !1099)
!1107 = !DILocation(line: 27, column: 17, scope: !1099)
!1108 = !DILocation(line: 27, column: 12, scope: !1099)
!1109 = !DILocation(line: 27, column: 24, scope: !1099)
!1110 = !DILocation(line: 29, column: 17, scope: !1099)
!1111 = !DILocation(line: 29, column: 12, scope: !1099)
!1112 = !DILocation(line: 32, column: 20, scope: !1099)
!1113 = !DILocation(line: 32, column: 15, scope: !1099)
!1114 = !DILocation(line: 32, column: 27, scope: !1099)
!1115 = !DILocation(line: 32, column: 5, scope: !1099)
!1116 = distinct !DISubprogram(name: "__subvdi3", scope: !106, file: !106, line: 22, type: !261, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !149)
!1117 = !DILocation(line: 24, column: 27, scope: !1116)
!1118 = !DILocation(line: 25, column: 11, scope: !1116)
!1119 = !DILocation(line: 25, column: 9, scope: !1116)
!1120 = !DILocation(line: 27, column: 15, scope: !1116)
!1121 = !DILocation(line: 27, column: 13, scope: !1116)
!1122 = !DILocation(line: 28, column: 13, scope: !1116)
!1123 = !DILocation(line: 29, column: 5, scope: !1116)
!1124 = !DILocation(line: 32, column: 15, scope: !1116)
!1125 = !DILocation(line: 32, column: 13, scope: !1116)
!1126 = !DILocation(line: 33, column: 13, scope: !1116)
!1127 = !DILocation(line: 35, column: 5, scope: !1116)
!1128 = distinct !DISubprogram(name: "__subvsi3", scope: !108, file: !108, line: 22, type: !261, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !107, retainedNodes: !149)
!1129 = !DILocation(line: 24, column: 27, scope: !1128)
!1130 = !DILocation(line: 25, column: 11, scope: !1128)
!1131 = !DILocation(line: 25, column: 9, scope: !1128)
!1132 = !DILocation(line: 27, column: 15, scope: !1128)
!1133 = !DILocation(line: 27, column: 13, scope: !1128)
!1134 = !DILocation(line: 28, column: 13, scope: !1128)
!1135 = !DILocation(line: 29, column: 5, scope: !1128)
!1136 = !DILocation(line: 32, column: 15, scope: !1128)
!1137 = !DILocation(line: 32, column: 13, scope: !1128)
!1138 = !DILocation(line: 33, column: 13, scope: !1128)
!1139 = !DILocation(line: 35, column: 5, scope: !1128)
!1140 = distinct !DISubprogram(name: "__ucmpdi2", scope: !112, file: !112, line: 23, type: !261, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !111, retainedNodes: !149)
!1141 = !DILocation(line: 26, column: 7, scope: !1140)
!1142 = !DILocation(line: 26, column: 11, scope: !1140)
!1143 = !DILocation(line: 28, column: 7, scope: !1140)
!1144 = !DILocation(line: 28, column: 11, scope: !1140)
!1145 = !DILocation(line: 29, column: 11, scope: !1140)
!1146 = !DILocation(line: 29, column: 13, scope: !1140)
!1147 = !DILocation(line: 29, column: 22, scope: !1140)
!1148 = !DILocation(line: 29, column: 24, scope: !1140)
!1149 = !DILocation(line: 29, column: 18, scope: !1140)
!1150 = !DILocation(line: 29, column: 9, scope: !1140)
!1151 = !DILocation(line: 30, column: 9, scope: !1140)
!1152 = !DILocation(line: 31, column: 11, scope: !1140)
!1153 = !DILocation(line: 31, column: 13, scope: !1140)
!1154 = !DILocation(line: 31, column: 22, scope: !1140)
!1155 = !DILocation(line: 31, column: 24, scope: !1140)
!1156 = !DILocation(line: 31, column: 18, scope: !1140)
!1157 = !DILocation(line: 31, column: 9, scope: !1140)
!1158 = !DILocation(line: 32, column: 9, scope: !1140)
!1159 = !DILocation(line: 33, column: 13, scope: !1140)
!1160 = !DILocation(line: 33, column: 23, scope: !1140)
!1161 = !DILocation(line: 33, column: 17, scope: !1140)
!1162 = !DILocation(line: 33, column: 9, scope: !1140)
!1163 = !DILocation(line: 34, column: 9, scope: !1140)
!1164 = !DILocation(line: 35, column: 13, scope: !1140)
!1165 = !DILocation(line: 35, column: 23, scope: !1140)
!1166 = !DILocation(line: 35, column: 17, scope: !1140)
!1167 = !DILocation(line: 35, column: 9, scope: !1140)
!1168 = !DILocation(line: 36, column: 9, scope: !1140)
!1169 = !DILocation(line: 37, column: 5, scope: !1140)
!1170 = !DILocation(line: 0, scope: !1140)
!1171 = !DILocation(line: 38, column: 1, scope: !1140)
!1172 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !112, file: !112, line: 46, type: !261, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !111, retainedNodes: !149)
!1173 = !DILocation(line: 48, column: 9, scope: !1172)
!1174 = !DILocation(line: 48, column: 25, scope: !1172)
!1175 = !DILocation(line: 48, column: 2, scope: !1172)
!1176 = distinct !DISubprogram(name: "__udivdi3", scope: !116, file: !116, line: 20, type: !261, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !149)
!1177 = !DILocation(line: 22, column: 12, scope: !1176)
!1178 = !DILocation(line: 22, column: 5, scope: !1176)
!1179 = distinct !DISubprogram(name: "__udivmodsi4", scope: !120, file: !120, line: 20, type: !261, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !149)
!1180 = !DILocation(line: 22, column: 14, scope: !1179)
!1181 = !DILocation(line: 23, column: 16, scope: !1179)
!1182 = !DILocation(line: 23, column: 12, scope: !1179)
!1183 = !DILocation(line: 23, column: 8, scope: !1179)
!1184 = !DILocation(line: 24, column: 3, scope: !1179)
!1185 = distinct !DISubprogram(name: "__udivsi3", scope: !124, file: !124, line: 25, type: !261, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !149)
!1186 = !DILocation(line: 32, column: 11, scope: !1185)
!1187 = !DILocation(line: 32, column: 9, scope: !1185)
!1188 = !DILocation(line: 33, column: 9, scope: !1185)
!1189 = !DILocation(line: 34, column: 11, scope: !1185)
!1190 = !DILocation(line: 34, column: 9, scope: !1185)
!1191 = !DILocation(line: 35, column: 9, scope: !1185)
!1192 = !DILocation(line: 36, column: 10, scope: !1185)
!1193 = !DILocation(line: 36, column: 29, scope: !1185)
!1194 = !DILocation(line: 36, column: 27, scope: !1185)
!1195 = !DILocation(line: 38, column: 12, scope: !1185)
!1196 = !DILocation(line: 38, column: 9, scope: !1185)
!1197 = !DILocation(line: 39, column: 9, scope: !1185)
!1198 = !DILocation(line: 40, column: 12, scope: !1185)
!1199 = !DILocation(line: 40, column: 9, scope: !1185)
!1200 = !DILocation(line: 41, column: 9, scope: !1185)
!1201 = !DILocation(line: 42, column: 5, scope: !1185)
!1202 = !DILocation(line: 45, column: 28, scope: !1185)
!1203 = !DILocation(line: 45, column: 11, scope: !1185)
!1204 = !DILocation(line: 46, column: 11, scope: !1185)
!1205 = !DILocation(line: 48, column: 5, scope: !1185)
!1206 = !DILocation(line: 0, scope: !1185)
!1207 = !DILocation(line: 48, column: 15, scope: !1185)
!1208 = !DILocation(line: 51, column: 22, scope: !1185)
!1209 = !DILocation(line: 60, column: 41, scope: !1185)
!1210 = !DILocation(line: 63, column: 5, scope: !1185)
!1211 = !DILocation(line: 62, column: 16, scope: !1185)
!1212 = !DILocation(line: 62, column: 11, scope: !1185)
!1213 = !DILocation(line: 61, column: 19, scope: !1185)
!1214 = !DILocation(line: 52, column: 16, scope: !1185)
!1215 = !DILocation(line: 52, column: 22, scope: !1185)
!1216 = !DILocation(line: 48, column: 20, scope: !1185)
!1217 = distinct !{!1217, !1205, !1210, !190}
!1218 = !DILocation(line: 64, column: 12, scope: !1185)
!1219 = !DILocation(line: 64, column: 18, scope: !1185)
!1220 = !DILocation(line: 65, column: 5, scope: !1185)
!1221 = !DILocation(line: 66, column: 1, scope: !1185)
!1222 = distinct !DISubprogram(name: "__umoddi3", scope: !128, file: !128, line: 20, type: !261, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !127, retainedNodes: !149)
!1223 = !DILocation(line: 23, column: 5, scope: !1222)
!1224 = !DILocation(line: 24, column: 12, scope: !1222)
!1225 = !DILocation(line: 24, column: 5, scope: !1222)
!1226 = distinct !DISubprogram(name: "__umodsi3", scope: !130, file: !130, line: 20, type: !261, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !149)
!1227 = !DILocation(line: 22, column: 16, scope: !1226)
!1228 = !DILocation(line: 22, column: 32, scope: !1226)
!1229 = !DILocation(line: 22, column: 14, scope: !1226)
!1230 = !DILocation(line: 22, column: 5, scope: !1226)
!1231 = distinct !DISubprogram(name: "memcpy", scope: !134, file: !134, line: 3, type: !261, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !133, retainedNodes: !149)
!1232 = !DILocation(line: 8, column: 6, scope: !1231)
!1233 = !DILocation(line: 0, scope: !1231)
!1234 = !DILocation(line: 8, column: 19, scope: !1231)
!1235 = !DILocation(line: 8, column: 2, scope: !1231)
!1236 = !DILocation(line: 9, column: 21, scope: !1231)
!1237 = !DILocation(line: 9, column: 3, scope: !1231)
!1238 = !DILocation(line: 9, column: 19, scope: !1231)
!1239 = !DILocation(line: 10, column: 2, scope: !1231)
!1240 = !DILocation(line: 8, column: 26, scope: !1231)
!1241 = distinct !{!1241, !1235, !1239, !190}
!1242 = !DILocation(line: 11, column: 1, scope: !1231)
!1243 = distinct !DISubprogram(name: "memset", scope: !134, file: !134, line: 13, type: !261, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !133, retainedNodes: !149)
!1244 = !DILocation(line: 17, column: 6, scope: !1243)
!1245 = !DILocation(line: 0, scope: !1243)
!1246 = !DILocation(line: 17, column: 19, scope: !1243)
!1247 = !DILocation(line: 17, column: 2, scope: !1243)
!1248 = !DILocation(line: 18, column: 13, scope: !1243)
!1249 = !DILocation(line: 18, column: 3, scope: !1243)
!1250 = !DILocation(line: 18, column: 11, scope: !1243)
!1251 = !DILocation(line: 19, column: 2, scope: !1243)
!1252 = !DILocation(line: 17, column: 26, scope: !1243)
!1253 = distinct !{!1253, !1247, !1251, !190}
!1254 = !DILocation(line: 20, column: 2, scope: !1243)
