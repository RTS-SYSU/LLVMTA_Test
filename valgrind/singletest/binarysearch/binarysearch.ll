; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.binarysearch_DATA = type { i32, i32 }
%union.dwords = type { i64 }

@binarysearch_seed = dso_local global i32 0, align 4, !dbg !0
@binarysearch_data = dso_local global [15 x %struct.binarysearch_DATA] zeroinitializer, align 4, !dbg !5
@binarysearch_result = dso_local global i32 0, align 4, !dbg !16
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
define dso_local arm_aapcs_vfpcc void @binarysearch_initSeed() #0 !dbg !142 {
entry:
  store volatile i32 0, i32* @binarysearch_seed, align 4, !dbg !146
  ret void, !dbg !147
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binarysearch_randomInteger() #0 !dbg !148 {
entry:
  %0 = load volatile i32, i32* @binarysearch_seed, align 4, !dbg !152
  %mul = mul nsw i32 %0, 133, !dbg !153
  %add = add nsw i32 %mul, 81, !dbg !154
  %rem = srem i32 %add, 8095, !dbg !155
  store volatile i32 %rem, i32* @binarysearch_seed, align 4, !dbg !156
  %1 = load volatile i32, i32* @binarysearch_seed, align 4, !dbg !157
  ret i32 %1, !dbg !158
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @binarysearch_init() #0 !dbg !159 {
entry:
  call arm_aapcs_vfpcc void @binarysearch_initSeed() #4, !dbg !160
  call void @llvm.dbg.value(metadata i32 0, metadata !161, metadata !DIExpression()), !dbg !162
  br label %for.cond, !dbg !163

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !165
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !161, metadata !DIExpression()), !dbg !162
  %exitcond.not = icmp eq i32 %i.0, 15, !dbg !166
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !168

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @binarysearch_randomInteger() #4, !dbg !169
  %key = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %i.0, i32 0, !dbg !171
  store i32 %call, i32* %key, align 4, !dbg !172
  %call1 = call arm_aapcs_vfpcc i32 @binarysearch_randomInteger() #4, !dbg !173
  %value = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %i.0, i32 1, !dbg !174
  store i32 %call1, i32* %value, align 4, !dbg !175
  br label %for.inc, !dbg !176

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !177
  call void @llvm.dbg.value(metadata i32 %inc, metadata !161, metadata !DIExpression()), !dbg !162
  br label %for.cond, !dbg !178, !llvm.loop !179

for.end:                                          ; preds = %for.cond
  ret void, !dbg !182
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binarysearch_return() #0 !dbg !183 {
entry:
  %0 = load i32, i32* @binarysearch_result, align 4, !dbg !186
  ret i32 %0, !dbg !187
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binarysearch_binary_search(i32 noundef %x) #0 !dbg !188 {
entry:
  call void @llvm.dbg.value(metadata i32 %x, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 0, metadata !193, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 14, metadata !194, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 -1, metadata !195, metadata !DIExpression()), !dbg !192
  br label %while.cond, !dbg !196

while.cond:                                       ; preds = %if.end10, %entry
  %up.0 = phi i32 [ 14, %entry ], [ %up.2, %if.end10 ], !dbg !192
  %fvalue.0 = phi i32 [ -1, %entry ], [ %fvalue.1, %if.end10 ], !dbg !192
  %low.0 = phi i32 [ 0, %entry ], [ %add11, %if.end10 ], !dbg !192
  call void @llvm.dbg.value(metadata i32 %low.0, metadata !193, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 %fvalue.0, metadata !195, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 %up.0, metadata !194, metadata !DIExpression()), !dbg !192
  %cmp.not = icmp sgt i32 %low.0, %up.0, !dbg !197
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !196

while.body:                                       ; preds = %while.cond
  %add = add nsw i32 %low.0, %up.0, !dbg !198
  %shr = ashr i32 %add, 1, !dbg !200
  call void @llvm.dbg.value(metadata i32 %shr, metadata !201, metadata !DIExpression()), !dbg !192
  %key = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %shr, i32 0, !dbg !202
  %0 = load i32, i32* %key, align 4, !dbg !202
  %cmp1 = icmp eq i32 %0, %x, !dbg !204
  br i1 %cmp1, label %if.then, label %if.else, !dbg !205

if.then:                                          ; preds = %while.body
  %sub = add nsw i32 %low.0, -1, !dbg !206
  call void @llvm.dbg.value(metadata i32 %sub, metadata !194, metadata !DIExpression()), !dbg !192
  %value = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %shr, i32 1, !dbg !208
  %1 = load i32, i32* %value, align 4, !dbg !208
  call void @llvm.dbg.value(metadata i32 %1, metadata !195, metadata !DIExpression()), !dbg !192
  br label %if.end10, !dbg !209

if.else:                                          ; preds = %while.body
  %key4 = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %shr, i32 0, !dbg !210
  %2 = load i32, i32* %key4, align 4, !dbg !210
  %cmp5 = icmp sgt i32 %2, %x, !dbg !212
  br i1 %cmp5, label %if.then6, label %if.else8, !dbg !213

if.then6:                                         ; preds = %if.else
  %sub7 = add nsw i32 %shr, -1, !dbg !214
  call void @llvm.dbg.value(metadata i32 %sub7, metadata !194, metadata !DIExpression()), !dbg !192
  br label %if.end, !dbg !215

if.else8:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 %shr, metadata !193, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !192
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then6
  %up.1 = phi i32 [ %sub7, %if.then6 ], [ %up.0, %if.else8 ], !dbg !192
  call void @llvm.dbg.value(metadata i32 %up.1, metadata !194, metadata !DIExpression()), !dbg !192
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %up.2 = phi i32 [ %sub, %if.then ], [ %up.1, %if.end ], !dbg !216
  %fvalue.1 = phi i32 [ %1, %if.then ], [ %fvalue.0, %if.end ], !dbg !192
  call void @llvm.dbg.value(metadata i32 %fvalue.1, metadata !195, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 %up.2, metadata !194, metadata !DIExpression()), !dbg !192
  %add11 = add nsw i32 %up.2, 1, !dbg !217
  call void @llvm.dbg.value(metadata i32 %add11, metadata !193, metadata !DIExpression()), !dbg !192
  br label %while.cond, !dbg !196, !llvm.loop !218

while.end:                                        ; preds = %while.cond
  ret i32 %fvalue.0, !dbg !220
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @binarysearch_main() #0 !dbg !221 {
entry:
  %call = call arm_aapcs_vfpcc i32 @binarysearch_binary_search(i32 noundef 8) #4, !dbg !222
  store i32 %call, i32* @binarysearch_result, align 4, !dbg !223
  ret void, !dbg !224
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !225 {
entry:
  call arm_aapcs_vfpcc void @binarysearch_init() #4, !dbg !226
  call arm_aapcs_vfpcc void @binarysearch_main() #4, !dbg !227
  %call = call arm_aapcs_vfpcc i32 @binarysearch_return() #4, !dbg !228
  %cmp = icmp ne i32 %call, -1, !dbg !229
  %conv = zext i1 %cmp to i32, !dbg !229
  ret i32 %conv, !dbg !230
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #1 !dbg !231 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !233
  br i1 %cmp, label %if.then, label %if.end, !dbg !234

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !235
  unreachable, !dbg !235

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !236
  ret i64 %0, !dbg !237
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #2 !dbg !238 {
entry:
  unreachable, !dbg !239
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #1 !dbg !240 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !241
  br i1 %cmp, label %if.then, label %if.end, !dbg !242

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !243
  unreachable, !dbg !243

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !244
  ret i32 %0, !dbg !245
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !246 {
entry:
  %add = add i64 %a, %b, !dbg !247
  %cmp = icmp sgt i64 %b, -1, !dbg !248
  br i1 %cmp, label %if.then, label %if.else, !dbg !249

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !250
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !251

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !252
  unreachable, !dbg !252

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !253

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !254
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !255

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !256
  unreachable, !dbg !256

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !257
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !258 {
entry:
  %add = add i32 %a, %b, !dbg !259
  %cmp = icmp sgt i32 %b, -1, !dbg !260
  br i1 %cmp, label %if.then, label %if.else, !dbg !261

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !262
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !263

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !264
  unreachable, !dbg !264

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !265

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !266
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !267

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !268
  unreachable, !dbg !268

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !269
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #1 !dbg !270 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !271
  store i64 %a, i64* %all, align 8, !dbg !272
  %and = and i32 %b, 32, !dbg !273
  %tobool.not = icmp eq i32 %and, 0, !dbg !273
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !274

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !275
  store i32 0, i32* %low, align 8, !dbg !276
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !277
  %0 = load i32, i32* %low2, align 8, !dbg !277
  %sub = add nsw i32 %b, -32, !dbg !278
  %shl = shl i32 %0, %sub, !dbg !279
  %s3 = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !280
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s3, i32 0, i32 1, !dbg !281
  store i32 %shl, i32* %high, align 4, !dbg !282
  br label %if.end18, !dbg !283

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !284
  br i1 %cmp, label %if.then4, label %if.end, !dbg !285

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !286

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !287
  %1 = load i32, i32* %low6, align 8, !dbg !287
  %shl7 = shl i32 %1, %b, !dbg !288
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !289
  store i32 %shl7, i32* %low9, align 8, !dbg !290
  %s10 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !291
  %high11 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s10, i32 0, i32 1, !dbg !292
  %2 = load i32, i32* %high11, align 4, !dbg !292
  %shl12 = shl i32 %2, %b, !dbg !293
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !294
  %3 = load i32, i32* %low14, align 8, !dbg !294
  %sub15 = sub nsw i32 32, %b, !dbg !295
  %shr = lshr i32 %3, %sub15, !dbg !296
  %or = or i32 %shl12, %shr, !dbg !297
  %s16 = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !298
  %high17 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s16, i32 0, i32 1, !dbg !299
  store i32 %or, i32* %high17, align 4, !dbg !300
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !301
  %4 = load i64, i64* %all19, align 8, !dbg !301
  br label %return, !dbg !302

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !303
  ret i64 %retval.0, !dbg !304
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !305 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !306
  store i64 %a, i64* %all, align 8, !dbg !307
  %and = and i32 %b, 32, !dbg !308
  %tobool.not = icmp eq i32 %and, 0, !dbg !308
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !309

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !310
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !311
  %0 = load i32, i32* %high, align 4, !dbg !311
  %shr = ashr i32 %0, 31, !dbg !312
  %s1 = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !313
  %high2 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s1, i32 0, i32 1, !dbg !314
  store i32 %shr, i32* %high2, align 4, !dbg !315
  %s3 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !316
  %high4 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s3, i32 0, i32 1, !dbg !317
  %1 = load i32, i32* %high4, align 4, !dbg !317
  %sub = add nsw i32 %b, -32, !dbg !318
  %shr5 = ashr i32 %1, %sub, !dbg !319
  %low = bitcast %union.dwords* %result to i32*, !dbg !320
  store i32 %shr5, i32* %low, align 8, !dbg !321
  br label %if.end21, !dbg !322

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !323
  br i1 %cmp, label %if.then7, label %if.end, !dbg !324

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !325

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !326
  %high9 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s8, i32 0, i32 1, !dbg !327
  %2 = load i32, i32* %high9, align 4, !dbg !327
  %shr10 = ashr i32 %2, %b, !dbg !328
  %s11 = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !329
  %high12 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s11, i32 0, i32 1, !dbg !330
  store i32 %shr10, i32* %high12, align 4, !dbg !331
  %s13 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !332
  %high14 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s13, i32 0, i32 1, !dbg !333
  %3 = load i32, i32* %high14, align 4, !dbg !333
  %sub15 = sub nsw i32 32, %b, !dbg !334
  %shl = shl i32 %3, %sub15, !dbg !335
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !336
  %4 = load i32, i32* %low17, align 8, !dbg !336
  %shr18 = lshr i32 %4, %b, !dbg !337
  %or = or i32 %shl, %shr18, !dbg !338
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !339
  store i32 %or, i32* %low20, align 8, !dbg !340
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !341
  %5 = load i64, i64* %all22, align 8, !dbg !341
  br label %return, !dbg !342

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !343
  ret i64 %retval.0, !dbg !344
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #1 !dbg !345 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !346
  store i64 %a, i64* %all, align 8, !dbg !347
  %s = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !348
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !349
  %0 = load i32, i32* %high, align 4, !dbg !349
  %cmp = icmp eq i32 %0, 0, !dbg !350
  %s1 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !351
  %high2 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s1, i32 0, i32 1, !dbg !352
  %1 = load i32, i32* %high2, align 4, !dbg !352
  %low = bitcast %union.dwords* %x to i32*, !dbg !353
  %2 = load i32, i32* %low, align 8, !dbg !353
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !354
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !355, !range !356
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !357
  %add = add nuw nsw i32 %4, %and5, !dbg !358
  ret i32 %add, !dbg !359
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #1 !dbg !360 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !361
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !362
  %sub = sub nuw nsw i32 16, %shl, !dbg !363
  %shr = lshr i32 %a, %sub, !dbg !364
  %and1 = and i32 %shr, 65280, !dbg !365
  %cmp2 = icmp eq i32 %and1, 0, !dbg !366
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !367
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !368
  %shr6 = lshr i32 %shr, %sub5, !dbg !369
  %add = or i32 %shl, %shl4, !dbg !370
  %and7 = and i32 %shr6, 240, !dbg !371
  %cmp8 = icmp eq i32 %and7, 0, !dbg !372
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !373
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !374
  %shr12 = lshr i32 %shr6, %sub11, !dbg !375
  %add13 = or i32 %add, %shl10, !dbg !376
  %and14 = and i32 %shr12, 12, !dbg !377
  %cmp15 = icmp eq i32 %and14, 0, !dbg !378
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !379
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !380
  %shr19 = lshr i32 %shr12, %sub18, !dbg !381
  %add20 = or i32 %add13, %shl17, !dbg !382
  %sub21 = sub i32 2, %shr19, !dbg !383
  %and22 = lshr i32 %shr19, 1, !dbg !384
  %0 = or i32 %and22, -2, !dbg !384
  %.neg = add nsw i32 %0, 1, !dbg !384
  %and26 = and i32 %sub21, %.neg, !dbg !385
  %add27 = add i32 %add20, %and26, !dbg !386
  ret i32 %add27, !dbg !387
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !388 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !389
  store i64 %a, i64* %all, align 8, !dbg !390
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !391
  store i64 %b, i64* %all1, align 8, !dbg !392
  %s = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !393
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !394
  %0 = load i32, i32* %high, align 4, !dbg !394
  %s2 = bitcast %union.dwords* %y to %struct.binarysearch_DATA*, !dbg !395
  %high3 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s2, i32 0, i32 1, !dbg !396
  %1 = load i32, i32* %high3, align 4, !dbg !396
  %cmp = icmp slt i32 %0, %1, !dbg !397
  br i1 %cmp, label %if.then, label %if.end, !dbg !398

if.then:                                          ; preds = %entry
  br label %return, !dbg !399

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !400
  %high5 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s4, i32 0, i32 1, !dbg !401
  %2 = load i32, i32* %high5, align 4, !dbg !401
  %s6 = bitcast %union.dwords* %y to %struct.binarysearch_DATA*, !dbg !402
  %high7 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s6, i32 0, i32 1, !dbg !403
  %3 = load i32, i32* %high7, align 4, !dbg !403
  %cmp8 = icmp sgt i32 %2, %3, !dbg !404
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !405

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !406

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !407
  %4 = load i32, i32* %low, align 8, !dbg !407
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !408
  %5 = load i32, i32* %low13, align 8, !dbg !408
  %cmp14 = icmp ult i32 %4, %5, !dbg !409
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !410

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !411

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !412
  %6 = load i32, i32* %low18, align 8, !dbg !412
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !413
  %7 = load i32, i32* %low20, align 8, !dbg !413
  %cmp21 = icmp ugt i32 %6, %7, !dbg !414
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !415

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !416

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !417

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !418
  ret i32 %retval.0, !dbg !419
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !420 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !421
  %sub = add nsw i32 %call, -1, !dbg !422
  ret i32 %sub, !dbg !423
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #1 !dbg !424 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !425
  store i64 %a, i64* %all, align 8, !dbg !426
  %low = bitcast %union.dwords* %x to i32*, !dbg !427
  %0 = load i32, i32* %low, align 8, !dbg !427
  %cmp = icmp eq i32 %0, 0, !dbg !428
  %s1 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !429
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s1, i32 0, i32 1, !dbg !430
  %1 = load i32, i32* %high, align 4, !dbg !430
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !431
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !432, !range !356
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !433
  %add = add nuw nsw i32 %3, %and5, !dbg !434
  ret i32 %add, !dbg !435
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #1 !dbg !436 {
entry:
  %and = and i32 %a, 65535, !dbg !437
  %cmp = icmp eq i32 %and, 0, !dbg !438
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !439
  %shr = lshr i32 %a, %shl, !dbg !440
  %and1 = and i32 %shr, 255, !dbg !441
  %cmp2 = icmp eq i32 %and1, 0, !dbg !442
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !443
  %shr5 = lshr i32 %shr, %shl4, !dbg !444
  %add = or i32 %shl, %shl4, !dbg !445
  %and6 = and i32 %shr5, 15, !dbg !446
  %cmp7 = icmp eq i32 %and6, 0, !dbg !447
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !448
  %shr10 = lshr i32 %shr5, %shl9, !dbg !449
  %add11 = or i32 %add, %shl9, !dbg !450
  %and12 = and i32 %shr10, 3, !dbg !451
  %cmp13 = icmp eq i32 %and12, 0, !dbg !452
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !453
  %shr16 = lshr i32 %shr10, %shl15, !dbg !454
  %add18 = or i32 %add11, %shl15, !dbg !455
  %and17 = lshr i32 %shr16, 1, !dbg !456
  %shr19 = and i32 %and17, 1, !dbg !456
  %sub = sub nuw nsw i32 2, %shr19, !dbg !457
  %0 = or i32 %shr16, -2, !dbg !458
  %.neg = add nsw i32 %0, 1, !dbg !458
  %and24 = and i32 %sub, %.neg, !dbg !459
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !460
  ret i32 %add25, !dbg !461
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !462 {
entry:
  %shr = ashr i64 %a, 63, !dbg !463
  %shr1 = ashr i64 %b, 63, !dbg !464
  %xor = xor i64 %shr, %a, !dbg !465
  %sub = sub nsw i64 %xor, %shr, !dbg !466
  %xor2 = xor i64 %shr1, %b, !dbg !467
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !468
  %xor4 = xor i64 %shr, %shr1, !dbg !469
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !470
  %xor5 = xor i64 %call, %xor4, !dbg !471
  %sub6 = sub i64 %xor5, %xor4, !dbg !472
  ret i64 %sub6, !dbg !473
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !474 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !475
  store i64 %a, i64* %all, align 8, !dbg !476
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !477
  store i64 %b, i64* %all1, align 8, !dbg !478
  %s = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !479
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !480
  %0 = load i32, i32* %high, align 4, !dbg !480
  %cmp = icmp eq i32 %0, 0, !dbg !481
  br i1 %cmp, label %if.then, label %if.end23, !dbg !482

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !483
  %high3 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s2, i32 0, i32 1, !dbg !484
  %1 = load i32, i32* %high3, align 4, !dbg !484
  %cmp4 = icmp eq i32 %1, 0, !dbg !485
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !486

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !487
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !487

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !488
  %2 = load i32, i32* %low, align 8, !dbg !488
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !489
  %3 = load i32, i32* %low9, align 8, !dbg !489
  %rem10 = urem i32 %2, %3, !dbg !490
  %conv = zext i32 %rem10 to i64, !dbg !491
  store i64 %conv, i64* %rem, align 8, !dbg !492
  br label %if.end, !dbg !493

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !494
  %4 = load i32, i32* %low12, align 8, !dbg !494
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !495
  %5 = load i32, i32* %low14, align 8, !dbg !495
  %div = udiv i32 %4, %5, !dbg !496
  %conv15 = zext i32 %div to i64, !dbg !497
  br label %return, !dbg !498

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !499
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !499

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !500
  %6 = load i32, i32* %low20, align 8, !dbg !500
  %conv21 = zext i32 %6 to i64, !dbg !501
  store i64 %conv21, i64* %rem, align 8, !dbg !502
  br label %if.end22, !dbg !503

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !504

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !505
  %7 = load i32, i32* %low25, align 8, !dbg !505
  %cmp26 = icmp eq i32 %7, 0, !dbg !506
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !507

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !508
  %high30 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s29, i32 0, i32 1, !dbg !509
  %8 = load i32, i32* %high30, align 4, !dbg !509
  %cmp31 = icmp eq i32 %8, 0, !dbg !510
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !511

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !512
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !512

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !513
  %high37 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s36, i32 0, i32 1, !dbg !514
  %9 = load i32, i32* %high37, align 4, !dbg !514
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !515
  %10 = load i32, i32* %low39, align 8, !dbg !515
  %rem40 = urem i32 %9, %10, !dbg !516
  %conv41 = zext i32 %rem40 to i64, !dbg !517
  store i64 %conv41, i64* %rem, align 8, !dbg !518
  br label %if.end42, !dbg !519

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !520
  %high44 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s43, i32 0, i32 1, !dbg !521
  %11 = load i32, i32* %high44, align 4, !dbg !521
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !522
  %12 = load i32, i32* %low46, align 8, !dbg !522
  %div47 = udiv i32 %11, %12, !dbg !523
  %conv48 = zext i32 %div47 to i64, !dbg !524
  br label %return, !dbg !525

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !526
  %13 = load i32, i32* %low51, align 8, !dbg !526
  %cmp52 = icmp eq i32 %13, 0, !dbg !527
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !528

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !529
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !529

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !530
  %high58 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s57, i32 0, i32 1, !dbg !531
  %14 = load i32, i32* %high58, align 4, !dbg !531
  %s59 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !532
  %high60 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s59, i32 0, i32 1, !dbg !533
  %15 = load i32, i32* %high60, align 4, !dbg !533
  %rem61 = urem i32 %14, %15, !dbg !534
  %s62 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !535
  %high63 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s62, i32 0, i32 1, !dbg !536
  store i32 %rem61, i32* %high63, align 4, !dbg !537
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !538
  store i32 0, i32* %low65, align 8, !dbg !539
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !540
  %16 = load i64, i64* %all66, align 8, !dbg !540
  store i64 %16, i64* %rem, align 8, !dbg !541
  br label %if.end67, !dbg !542

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !543
  %high69 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s68, i32 0, i32 1, !dbg !544
  %17 = load i32, i32* %high69, align 4, !dbg !544
  %s70 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !545
  %high71 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s70, i32 0, i32 1, !dbg !546
  %18 = load i32, i32* %high71, align 4, !dbg !546
  %div72 = udiv i32 %17, %18, !dbg !547
  %conv73 = zext i32 %div72 to i64, !dbg !548
  br label %return, !dbg !549

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !550
  %high76 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s75, i32 0, i32 1, !dbg !551
  %19 = load i32, i32* %high76, align 4, !dbg !551
  %s77 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !552
  %high78 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s77, i32 0, i32 1, !dbg !553
  %20 = load i32, i32* %high78, align 4, !dbg !553
  %sub = add i32 %20, -1, !dbg !554
  %and = and i32 %19, %sub, !dbg !555
  %cmp79 = icmp eq i32 %and, 0, !dbg !556
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !557

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !558
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !558

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !559
  %21 = load i32, i32* %low85, align 8, !dbg !559
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !560
  store i32 %21, i32* %low87, align 8, !dbg !561
  %s88 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !562
  %high89 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s88, i32 0, i32 1, !dbg !563
  %22 = load i32, i32* %high89, align 4, !dbg !563
  %s90 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !564
  %high91 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s90, i32 0, i32 1, !dbg !565
  %23 = load i32, i32* %high91, align 4, !dbg !565
  %sub92 = add i32 %23, -1, !dbg !566
  %and93 = and i32 %22, %sub92, !dbg !567
  %s94 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !568
  %high95 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s94, i32 0, i32 1, !dbg !569
  store i32 %and93, i32* %high95, align 4, !dbg !570
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !571
  %24 = load i64, i64* %all96, align 8, !dbg !571
  store i64 %24, i64* %rem, align 8, !dbg !572
  br label %if.end97, !dbg !573

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !574
  %high99 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s98, i32 0, i32 1, !dbg !575
  %25 = load i32, i32* %high99, align 4, !dbg !575
  %s100 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !576
  %high101 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s100, i32 0, i32 1, !dbg !577
  %26 = load i32, i32* %high101, align 4, !dbg !577
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !578, !range !356
  %shr = lshr i32 %25, %27, !dbg !579
  %conv102 = zext i32 %shr to i64, !dbg !580
  br label %return, !dbg !581

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !582
  %high105 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s104, i32 0, i32 1, !dbg !583
  %28 = load i32, i32* %high105, align 4, !dbg !583
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !584, !range !356
  %s106 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !585
  %high107 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s106, i32 0, i32 1, !dbg !586
  %30 = load i32, i32* %high107, align 4, !dbg !586
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !587, !range !356
  %sub108 = sub nsw i32 %29, %31, !dbg !588
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !589
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !590

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !591
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !591

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !592
  %32 = load i64, i64* %all114, align 8, !dbg !592
  store i64 %32, i64* %rem, align 8, !dbg !593
  br label %if.end115, !dbg !594

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !595

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !596
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !597
  store i32 0, i32* %low118, align 8, !dbg !598
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !599
  %33 = load i32, i32* %low120, align 8, !dbg !599
  %sub121 = sub nsw i32 31, %sub108, !dbg !600
  %shl = shl i32 %33, %sub121, !dbg !601
  %s122 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !602
  %high123 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s122, i32 0, i32 1, !dbg !603
  store i32 %shl, i32* %high123, align 4, !dbg !604
  %s124 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !605
  %high125 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s124, i32 0, i32 1, !dbg !606
  %34 = load i32, i32* %high125, align 4, !dbg !606
  %shr126 = lshr i32 %34, %inc, !dbg !607
  %s127 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !608
  %high128 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s127, i32 0, i32 1, !dbg !609
  store i32 %shr126, i32* %high128, align 4, !dbg !610
  %s129 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !611
  %high130 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s129, i32 0, i32 1, !dbg !612
  %35 = load i32, i32* %high130, align 4, !dbg !612
  %sub131 = sub nsw i32 31, %sub108, !dbg !613
  %shl132 = shl i32 %35, %sub131, !dbg !614
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !615
  %36 = load i32, i32* %low134, align 8, !dbg !615
  %shr135 = lshr i32 %36, %inc, !dbg !616
  %or = or i32 %shl132, %shr135, !dbg !617
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !618
  store i32 %or, i32* %low137, align 8, !dbg !619
  br label %if.end317, !dbg !620

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !621
  %high139 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s138, i32 0, i32 1, !dbg !622
  %37 = load i32, i32* %high139, align 4, !dbg !622
  %cmp140 = icmp eq i32 %37, 0, !dbg !623
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !624

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !625
  %38 = load i32, i32* %low144, align 8, !dbg !625
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !626, !range !356
  %cmp149 = icmp ult i32 %39, 2, !dbg !626
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !627

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !628
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !628

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !629
  %40 = load i32, i32* %low155, align 8, !dbg !629
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !630
  %41 = load i32, i32* %low157, align 8, !dbg !630
  %sub158 = add i32 %41, -1, !dbg !631
  %and159 = and i32 %40, %sub158, !dbg !632
  %conv160 = zext i32 %and159 to i64, !dbg !633
  store i64 %conv160, i64* %rem, align 8, !dbg !634
  br label %if.end161, !dbg !635

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !636
  %42 = load i32, i32* %low163, align 8, !dbg !636
  %cmp164 = icmp eq i32 %42, 1, !dbg !637
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !638

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !639
  %43 = load i64, i64* %all167, align 8, !dbg !639
  br label %return, !dbg !640

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !641
  %44 = load i32, i32* %low170, align 8, !dbg !641
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !642, !range !356
  %s171 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !643
  %high172 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s171, i32 0, i32 1, !dbg !644
  %46 = load i32, i32* %high172, align 4, !dbg !644
  %shr173 = lshr i32 %46, %45, !dbg !645
  %s174 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !646
  %high175 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s174, i32 0, i32 1, !dbg !647
  store i32 %shr173, i32* %high175, align 4, !dbg !648
  %s176 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !649
  %high177 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s176, i32 0, i32 1, !dbg !650
  %47 = load i32, i32* %high177, align 4, !dbg !650
  %sub178 = sub nuw nsw i32 32, %45, !dbg !651
  %shl179 = shl i32 %47, %sub178, !dbg !652
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !653
  %48 = load i32, i32* %low181, align 8, !dbg !653
  %shr182 = lshr i32 %48, %45, !dbg !654
  %or183 = or i32 %shl179, %shr182, !dbg !655
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !656
  store i32 %or183, i32* %low185, align 8, !dbg !657
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !658
  %49 = load i64, i64* %all186, align 8, !dbg !658
  br label %return, !dbg !659

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !660
  %50 = load i32, i32* %low189, align 8, !dbg !660
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !661, !range !356
  %add = add nuw nsw i32 %51, 33, !dbg !662
  %s190 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !663
  %high191 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s190, i32 0, i32 1, !dbg !664
  %52 = load i32, i32* %high191, align 4, !dbg !664
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !665, !range !356
  %sub192 = sub nsw i32 %add, %53, !dbg !666
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !667
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !668

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !669
  store i32 0, i32* %low197, align 8, !dbg !670
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !671
  %54 = load i32, i32* %low199, align 8, !dbg !671
  %s200 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !672
  %high201 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s200, i32 0, i32 1, !dbg !673
  store i32 %54, i32* %high201, align 4, !dbg !674
  %s202 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !675
  %high203 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s202, i32 0, i32 1, !dbg !676
  store i32 0, i32* %high203, align 4, !dbg !677
  %s204 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !678
  %high205 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s204, i32 0, i32 1, !dbg !679
  %55 = load i32, i32* %high205, align 4, !dbg !679
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !680
  store i32 %55, i32* %low207, align 8, !dbg !681
  br label %if.end262, !dbg !682

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !683
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !684

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !685
  store i32 0, i32* %low213, align 8, !dbg !686
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !687
  %56 = load i32, i32* %low215, align 8, !dbg !687
  %sub216 = sub nsw i32 32, %sub192, !dbg !688
  %shl217 = shl i32 %56, %sub216, !dbg !689
  %s218 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !690
  %high219 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s218, i32 0, i32 1, !dbg !691
  store i32 %shl217, i32* %high219, align 4, !dbg !692
  %s220 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !693
  %high221 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s220, i32 0, i32 1, !dbg !694
  %57 = load i32, i32* %high221, align 4, !dbg !694
  %shr222 = lshr i32 %57, %sub192, !dbg !695
  %s223 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !696
  %high224 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s223, i32 0, i32 1, !dbg !697
  store i32 %shr222, i32* %high224, align 4, !dbg !698
  %s225 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !699
  %high226 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s225, i32 0, i32 1, !dbg !700
  %58 = load i32, i32* %high226, align 4, !dbg !700
  %sub227 = sub nsw i32 32, %sub192, !dbg !701
  %shl228 = shl i32 %58, %sub227, !dbg !702
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !703
  %59 = load i32, i32* %low230, align 8, !dbg !703
  %shr231 = lshr i32 %59, %sub192, !dbg !704
  %or232 = or i32 %shl228, %shr231, !dbg !705
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !706
  store i32 %or232, i32* %low234, align 8, !dbg !707
  br label %if.end261, !dbg !708

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !709
  %60 = load i32, i32* %low237, align 8, !dbg !709
  %sub238 = sub nsw i32 64, %sub192, !dbg !710
  %shl239 = shl i32 %60, %sub238, !dbg !711
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !712
  store i32 %shl239, i32* %low241, align 8, !dbg !713
  %s242 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !714
  %high243 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s242, i32 0, i32 1, !dbg !715
  %61 = load i32, i32* %high243, align 4, !dbg !715
  %sub244 = sub nsw i32 64, %sub192, !dbg !716
  %shl245 = shl i32 %61, %sub244, !dbg !717
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !718
  %62 = load i32, i32* %low247, align 8, !dbg !718
  %sub248 = add nsw i32 %sub192, -32, !dbg !719
  %shr249 = lshr i32 %62, %sub248, !dbg !720
  %or250 = or i32 %shl245, %shr249, !dbg !721
  %s251 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !722
  %high252 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s251, i32 0, i32 1, !dbg !723
  store i32 %or250, i32* %high252, align 4, !dbg !724
  %s253 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !725
  %high254 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s253, i32 0, i32 1, !dbg !726
  store i32 0, i32* %high254, align 4, !dbg !727
  %s255 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !728
  %high256 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s255, i32 0, i32 1, !dbg !729
  %63 = load i32, i32* %high256, align 4, !dbg !729
  %sub257 = add nsw i32 %sub192, -32, !dbg !730
  %shr258 = lshr i32 %63, %sub257, !dbg !731
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !732
  store i32 %shr258, i32* %low260, align 8, !dbg !733
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !734

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !735
  %high265 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s264, i32 0, i32 1, !dbg !736
  %64 = load i32, i32* %high265, align 4, !dbg !736
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !737, !range !356
  %s266 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !738
  %high267 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s266, i32 0, i32 1, !dbg !739
  %66 = load i32, i32* %high267, align 4, !dbg !739
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !740, !range !356
  %sub268 = sub nsw i32 %65, %67, !dbg !741
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !742
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !743

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !744
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !744

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !745
  %68 = load i64, i64* %all274, align 8, !dbg !745
  store i64 %68, i64* %rem, align 8, !dbg !746
  br label %if.end275, !dbg !747

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !748

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !749
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !750
  store i32 0, i32* %low279, align 8, !dbg !751
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !752
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !753

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !754
  %69 = load i32, i32* %low284, align 8, !dbg !754
  %s285 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !755
  %high286 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s285, i32 0, i32 1, !dbg !756
  store i32 %69, i32* %high286, align 4, !dbg !757
  %s287 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !758
  %high288 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s287, i32 0, i32 1, !dbg !759
  store i32 0, i32* %high288, align 4, !dbg !760
  %s289 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !761
  %high290 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s289, i32 0, i32 1, !dbg !762
  %70 = load i32, i32* %high290, align 4, !dbg !762
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !763
  store i32 %70, i32* %low292, align 8, !dbg !764
  br label %if.end315, !dbg !765

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !766
  %71 = load i32, i32* %low295, align 8, !dbg !766
  %sub296 = sub nsw i32 31, %sub268, !dbg !767
  %shl297 = shl i32 %71, %sub296, !dbg !768
  %s298 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !769
  %high299 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s298, i32 0, i32 1, !dbg !770
  store i32 %shl297, i32* %high299, align 4, !dbg !771
  %s300 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !772
  %high301 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s300, i32 0, i32 1, !dbg !773
  %72 = load i32, i32* %high301, align 4, !dbg !773
  %shr302 = lshr i32 %72, %inc277, !dbg !774
  %s303 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !775
  %high304 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s303, i32 0, i32 1, !dbg !776
  store i32 %shr302, i32* %high304, align 4, !dbg !777
  %s305 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !778
  %high306 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s305, i32 0, i32 1, !dbg !779
  %73 = load i32, i32* %high306, align 4, !dbg !779
  %sub307 = sub nsw i32 31, %sub268, !dbg !780
  %shl308 = shl i32 %73, %sub307, !dbg !781
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !782
  %74 = load i32, i32* %low310, align 8, !dbg !782
  %shr311 = lshr i32 %74, %inc277, !dbg !783
  %or312 = or i32 %shl308, %shr311, !dbg !784
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !785
  store i32 %or312, i32* %low314, align 8, !dbg !786
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !787
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !787
  br label %for.cond, !dbg !788

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !787
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !787
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !789
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !788

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !790
  %high321 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s320, i32 0, i32 1, !dbg !791
  %75 = load i32, i32* %high321, align 4, !dbg !791
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !792
  %76 = load i32, i32* %low324, align 8, !dbg !792
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !793
  %s327 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !794
  %high328 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s327, i32 0, i32 1, !dbg !795
  store i32 %or326, i32* %high328, align 4, !dbg !796
  %s332 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !797
  %high333 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s332, i32 0, i32 1, !dbg !798
  %77 = load i32, i32* %high333, align 4, !dbg !798
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !799
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !800
  store i32 %or335, i32* %low337, align 8, !dbg !801
  %s338 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !802
  %high339 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s338, i32 0, i32 1, !dbg !803
  %78 = load i32, i32* %high339, align 4, !dbg !803
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !804
  %79 = load i32, i32* %low342, align 8, !dbg !804
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !805
  %s345 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !806
  %high346 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s345, i32 0, i32 1, !dbg !807
  store i32 %or344, i32* %high346, align 4, !dbg !808
  %shl349 = shl i32 %79, 1, !dbg !809
  %or350 = or i32 %shl349, %carry.0, !dbg !810
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !811
  store i32 %or350, i32* %low352, align 8, !dbg !812
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !813
  %80 = load i64, i64* %all354, align 8, !dbg !813
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !814
  %81 = load i64, i64* %all355, align 8, !dbg !814
  %82 = xor i64 %81, -1, !dbg !815
  %sub357 = add i64 %80, %82, !dbg !815
  %isneg = icmp slt i64 %sub357, 0, !dbg !816
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !816
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !817
  %sub364 = sub i64 %81, %and362, !dbg !818
  store i64 %sub364, i64* %all363, align 8, !dbg !818
  br label %for.inc, !dbg !819

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !820
  %conv360 = trunc i64 %and359 to i32, !dbg !821
  %dec = add i32 %sr.2, -1, !dbg !822
  br label %for.cond, !dbg !788, !llvm.loop !823

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !824
  %83 = load i64, i64* %all365, align 8, !dbg !824
  %shl366 = shl i64 %83, 1, !dbg !825
  %conv367 = zext i32 %carry.0 to i64, !dbg !826
  %or368 = or i64 %shl366, %conv367, !dbg !827
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !828
  store i64 %or368, i64* %all369, align 8, !dbg !829
  %tobool370.not = icmp eq i64* %rem, null, !dbg !830
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !830

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !831
  %84 = load i64, i64* %all372, align 8, !dbg !831
  store i64 %84, i64* %rem, align 8, !dbg !832
  br label %if.end373, !dbg !833

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !834
  %85 = load i64, i64* %all374, align 8, !dbg !834
  br label %return, !dbg !835

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !787
  ret i64 %retval.0, !dbg !836
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !837 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !838
  %mul = mul nsw i64 %call, %b, !dbg !839
  %sub = sub nsw i64 %a, %mul, !dbg !840
  store i64 %sub, i64* %rem, align 8, !dbg !841
  ret i64 %call, !dbg !842
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !843 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !844
  %mul = mul nsw i32 %call, %b, !dbg !845
  %sub = sub nsw i32 %a, %mul, !dbg !846
  store i32 %sub, i32* %rem, align 4, !dbg !847
  ret i32 %call, !dbg !848
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !849 {
entry:
  %shr = ashr i32 %a, 31, !dbg !850
  %shr1 = ashr i32 %b, 31, !dbg !851
  %xor = xor i32 %shr, %a, !dbg !852
  %sub = sub nsw i32 %xor, %shr, !dbg !853
  %xor2 = xor i32 %shr1, %b, !dbg !854
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !855
  %xor4 = xor i32 %shr, %shr1, !dbg !856
  %div = udiv i32 %sub, %sub3, !dbg !857
  %xor5 = xor i32 %div, %xor4, !dbg !858
  %sub6 = sub i32 %xor5, %xor4, !dbg !859
  ret i32 %sub6, !dbg !860
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #1 !dbg !861 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !862
  store i64 %a, i64* %all, align 8, !dbg !863
  %low = bitcast %union.dwords* %x to i32*, !dbg !864
  %0 = load i32, i32* %low, align 8, !dbg !864
  %cmp = icmp eq i32 %0, 0, !dbg !865
  br i1 %cmp, label %if.then, label %if.end6, !dbg !866

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !867
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s1, i32 0, i32 1, !dbg !868
  %1 = load i32, i32* %high, align 4, !dbg !868
  %cmp2 = icmp eq i32 %1, 0, !dbg !869
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !870

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !871

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !872
  %high5 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s4, i32 0, i32 1, !dbg !873
  %2 = load i32, i32* %high5, align 4, !dbg !873
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !874, !range !356
  %add = add nuw nsw i32 %3, 33, !dbg !875
  br label %return, !dbg !876

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !877
  %4 = load i32, i32* %low8, align 8, !dbg !877
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !878, !range !356
  %add9 = add nuw nsw i32 %5, 1, !dbg !879
  br label %return, !dbg !880

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !881
  ret i32 %retval.0, !dbg !882
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #1 !dbg !883 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !884
  br i1 %cmp, label %if.then, label %if.end, !dbg !885

if.then:                                          ; preds = %entry
  br label %return, !dbg !886

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !887, !range !356
  %add = add nuw nsw i32 %0, 1, !dbg !888
  br label %return, !dbg !889

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !890
  ret i32 %retval.0, !dbg !891
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !892 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !893
  store i64 %a, i64* %all, align 8, !dbg !894
  %and = and i32 %b, 32, !dbg !895
  %tobool.not = icmp eq i32 %and, 0, !dbg !895
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !896

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !897
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !898
  store i32 0, i32* %high, align 4, !dbg !899
  %s1 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !900
  %high2 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s1, i32 0, i32 1, !dbg !901
  %0 = load i32, i32* %high2, align 4, !dbg !901
  %sub = add nsw i32 %b, -32, !dbg !902
  %shr = lshr i32 %0, %sub, !dbg !903
  %low = bitcast %union.dwords* %result to i32*, !dbg !904
  store i32 %shr, i32* %low, align 8, !dbg !905
  br label %if.end18, !dbg !906

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !907
  br i1 %cmp, label %if.then4, label %if.end, !dbg !908

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !909

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !910
  %high6 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s5, i32 0, i32 1, !dbg !911
  %1 = load i32, i32* %high6, align 4, !dbg !911
  %shr7 = lshr i32 %1, %b, !dbg !912
  %s8 = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !913
  %high9 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s8, i32 0, i32 1, !dbg !914
  store i32 %shr7, i32* %high9, align 4, !dbg !915
  %s10 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !916
  %high11 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s10, i32 0, i32 1, !dbg !917
  %2 = load i32, i32* %high11, align 4, !dbg !917
  %sub12 = sub nsw i32 32, %b, !dbg !918
  %shl = shl i32 %2, %sub12, !dbg !919
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !920
  %3 = load i32, i32* %low14, align 8, !dbg !920
  %shr15 = lshr i32 %3, %b, !dbg !921
  %or = or i32 %shl, %shr15, !dbg !922
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !923
  store i32 %or, i32* %low17, align 8, !dbg !924
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !925
  %4 = load i64, i64* %all19, align 8, !dbg !925
  br label %return, !dbg !926

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !927
  ret i64 %retval.0, !dbg !928
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !929 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !930
  %shr1 = ashr i64 %a, 63, !dbg !931
  %xor2 = xor i64 %shr1, %a, !dbg !932
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !933
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !934
  %1 = load i64, i64* %r, align 8, !dbg !935
  %xor4 = xor i64 %1, %shr1, !dbg !936
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !937
  ret i64 %sub5, !dbg !938
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !939 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !940
  %mul = mul nsw i32 %call, %b, !dbg !941
  %sub = sub nsw i32 %a, %mul, !dbg !942
  ret i32 %sub, !dbg !943
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !944 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !945
  br i1 %cmp, label %if.then, label %if.end4, !dbg !946

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !947
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !948

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !949
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !950

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !951

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !952
  unreachable, !dbg !952

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !953
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !954

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !955
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !956

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !957
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !958

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !959

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !960
  unreachable, !dbg !960

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !961
  %xor = xor i64 %shr, %a, !dbg !962
  %sub = sub nsw i64 %xor, %shr, !dbg !963
  %shr14 = ashr i64 %b, 63, !dbg !964
  %xor15 = xor i64 %shr14, %b, !dbg !965
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !966
  %cmp17 = icmp slt i64 %sub, 2, !dbg !967
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !968

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !969
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !970

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !971

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !972
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !973

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !974
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !975
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !976

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !977
  unreachable, !dbg !977

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !978

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !979
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !980
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !981
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !982

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !983
  unreachable, !dbg !983

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !984

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !985
  ret i64 %retval.0, !dbg !986
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !987 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !988
  br i1 %cmp, label %if.then, label %if.end4, !dbg !989

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !990
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !991

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !992
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !993

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !994

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !995
  unreachable, !dbg !995

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !996
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !997

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !998
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !999

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !1000
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1001

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1002

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1003
  unreachable, !dbg !1003

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !1004
  %xor = xor i32 %shr, %a, !dbg !1005
  %sub = sub nsw i32 %xor, %shr, !dbg !1006
  %shr14 = ashr i32 %b, 31, !dbg !1007
  %xor15 = xor i32 %shr14, %b, !dbg !1008
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !1009
  %cmp17 = icmp slt i32 %sub, 2, !dbg !1010
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1011

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !1012
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1013

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1014

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !1015
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1016

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !1017
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !1018
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1019

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1020
  unreachable, !dbg !1020

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1021

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !1022
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !1023
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !1024
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1025

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1026
  unreachable, !dbg !1026

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1027

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !1028
  ret i32 %retval.0, !dbg !1029
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #1 !dbg !1030 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1031
  store i64 %a, i64* %all, align 8, !dbg !1032
  %s = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !1033
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !1034
  %0 = load i32, i32* %high, align 4, !dbg !1034
  %low = bitcast %union.dwords* %x to i32*, !dbg !1035
  %1 = load i32, i32* %low, align 8, !dbg !1035
  %xor = xor i32 %0, %1, !dbg !1036
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !1037
  ret i32 %call, !dbg !1038
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #1 !dbg !1039 {
entry:
  %shr = lshr i32 %a, 16, !dbg !1040
  %xor = xor i32 %shr, %a, !dbg !1041
  %shr1 = lshr i32 %xor, 8, !dbg !1042
  %xor2 = xor i32 %xor, %shr1, !dbg !1043
  %shr3 = lshr i32 %xor2, 4, !dbg !1044
  %xor4 = xor i32 %xor2, %shr3, !dbg !1045
  %and = and i32 %xor4, 15, !dbg !1046
  %shr5 = lshr i32 27030, %and, !dbg !1047
  %and6 = and i32 %shr5, 1, !dbg !1048
  ret i32 %and6, !dbg !1049
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #1 !dbg !1050 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1051
  %and = and i64 %shr, 6148914691236517205, !dbg !1052
  %sub = sub i64 %a, %and, !dbg !1053
  %shr1 = lshr i64 %sub, 2, !dbg !1054
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1055
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1056
  %add = add nuw nsw i64 %and2, %and3, !dbg !1057
  %shr4 = lshr i64 %add, 4, !dbg !1058
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1059
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1060
  %shr7 = lshr i64 %and6, 32, !dbg !1061
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1062
  %conv = trunc i64 %add8 to i32, !dbg !1063
  %shr9 = lshr i32 %conv, 16, !dbg !1064
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1065
  %shr11 = lshr i32 %add10, 8, !dbg !1066
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1067
  %and13 = and i32 %add12, 127, !dbg !1068
  ret i32 %and13, !dbg !1069
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #1 !dbg !1070 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1071
  %and = and i32 %shr, 1431655765, !dbg !1072
  %sub = sub i32 %a, %and, !dbg !1073
  %shr1 = lshr i32 %sub, 2, !dbg !1074
  %and2 = and i32 %shr1, 858993459, !dbg !1075
  %and3 = and i32 %sub, 858993459, !dbg !1076
  %add = add nuw nsw i32 %and2, %and3, !dbg !1077
  %shr4 = lshr i32 %add, 4, !dbg !1078
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1079
  %and6 = and i32 %add5, 252645135, !dbg !1080
  %shr7 = lshr i32 %and6, 16, !dbg !1081
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1082
  %shr9 = lshr i32 %add8, 8, !dbg !1083
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1084
  %and11 = and i32 %add10, 63, !dbg !1085
  ret i32 %and11, !dbg !1086
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1087 {
entry:
  %sub = sub i64 %a, %b, !dbg !1088
  %cmp = icmp sgt i64 %b, -1, !dbg !1089
  br i1 %cmp, label %if.then, label %if.else, !dbg !1090

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1091
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1092

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1093
  unreachable, !dbg !1093

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1094

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1095
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1096

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1097
  unreachable, !dbg !1097

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1098
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1099 {
entry:
  %sub = sub i32 %a, %b, !dbg !1100
  %cmp = icmp sgt i32 %b, -1, !dbg !1101
  br i1 %cmp, label %if.then, label %if.else, !dbg !1102

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1103
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1104

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1105
  unreachable, !dbg !1105

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1106

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1107
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1108

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1109
  unreachable, !dbg !1109

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1110
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !1111 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1112
  store i64 %a, i64* %all, align 8, !dbg !1113
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1114
  store i64 %b, i64* %all1, align 8, !dbg !1115
  %s = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !1116
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !1117
  %0 = load i32, i32* %high, align 4, !dbg !1117
  %s2 = bitcast %union.dwords* %y to %struct.binarysearch_DATA*, !dbg !1118
  %high3 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s2, i32 0, i32 1, !dbg !1119
  %1 = load i32, i32* %high3, align 4, !dbg !1119
  %cmp = icmp ult i32 %0, %1, !dbg !1120
  br i1 %cmp, label %if.then, label %if.end, !dbg !1121

if.then:                                          ; preds = %entry
  br label %return, !dbg !1122

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !1123
  %high5 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s4, i32 0, i32 1, !dbg !1124
  %2 = load i32, i32* %high5, align 4, !dbg !1124
  %s6 = bitcast %union.dwords* %y to %struct.binarysearch_DATA*, !dbg !1125
  %high7 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s6, i32 0, i32 1, !dbg !1126
  %3 = load i32, i32* %high7, align 4, !dbg !1126
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1127
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1128

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1129

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1130
  %4 = load i32, i32* %low, align 8, !dbg !1130
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1131
  %5 = load i32, i32* %low13, align 8, !dbg !1131
  %cmp14 = icmp ult i32 %4, %5, !dbg !1132
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1133

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1134

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1135
  %6 = load i32, i32* %low18, align 8, !dbg !1135
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1136
  %7 = load i32, i32* %low20, align 8, !dbg !1136
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1137
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1138

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1139

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1140

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1141
  ret i32 %retval.0, !dbg !1142
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !1143 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1144
  %sub = add nsw i32 %call, -1, !dbg !1145
  ret i32 %sub, !dbg !1146
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1147 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !1148
  ret i64 %call, !dbg !1149
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !1150 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1151
  %mul = mul i32 %call, %b, !dbg !1152
  %sub = sub i32 %a, %mul, !dbg !1153
  store i32 %sub, i32* %rem, align 4, !dbg !1154
  ret i32 %call, !dbg !1155
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #1 !dbg !1156 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1157
  br i1 %cmp, label %if.then, label %if.end, !dbg !1158

if.then:                                          ; preds = %entry
  br label %return, !dbg !1159

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1160
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1161

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1162

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1163, !range !356
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1164, !range !356
  %sub = sub nsw i32 %0, %1, !dbg !1165
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1166
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1167

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1168

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1169
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1170

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1171

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1172
  %sub10 = sub nsw i32 31, %sub, !dbg !1173
  %shl = shl i32 %n, %sub10, !dbg !1174
  %shr = lshr i32 %n, %inc, !dbg !1175
  br label %for.cond, !dbg !1176

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1177
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1177
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1177
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1177
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1178
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1176

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1179
  %2 = xor i32 %or, -1, !dbg !1180
  %sub17 = add i32 %2, %d, !dbg !1180
  br label %for.inc, !dbg !1181

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1182
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1182
  %sub20 = sub i32 %or, %and19, !dbg !1183
  %and = lshr i32 %sub17, 31, !dbg !1184
  %shl14 = shl i32 %q.0, 1, !dbg !1185
  %or15 = or i32 %shl14, %carry.0, !dbg !1186
  %dec = add i32 %sr.0, -1, !dbg !1187
  br label %for.cond, !dbg !1176, !llvm.loop !1188

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1189
  %or22 = or i32 %shl21, %carry.0, !dbg !1190
  br label %return, !dbg !1191

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1177
  ret i32 %retval.0, !dbg !1192
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1193 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !1194
  %0 = load i64, i64* %r, align 8, !dbg !1195
  ret i64 %0, !dbg !1196
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1197 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1198
  %mul = mul i32 %call, %b, !dbg !1199
  %sub = sub i32 %a, %mul, !dbg !1200
  ret i32 %sub, !dbg !1201
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #1 !dbg !1202 {
entry:
  br label %for.cond, !dbg !1203

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1204
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1205
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1206

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1207
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1207
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1208
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1209
  br label %for.inc, !dbg !1210

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1211
  br label %for.cond, !dbg !1206, !llvm.loop !1212

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1213
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #1 !dbg !1214 {
entry:
  br label %for.cond, !dbg !1215

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1216
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1217
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1218

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1219
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1220
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1221
  br label %for.inc, !dbg !1222

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1223
  br label %for.cond, !dbg !1218, !llvm.loop !1224

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1225
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

!llvm.dbg.cu = !{!2, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129}
!llvm.ident = !{!131, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140, !141}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "binarysearch_seed", scope: !2, file: !7, line: 49, type: !18, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/binarysearch/binarysearch.c", directory: "/workspaces/llvmta/testcases/batchtest")
!4 = !{!0, !5, !16}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "binarysearch_data", scope: !2, file: !7, line: 56, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "binarysearch/binarysearch.c", directory: "/workspaces/llvmta/testcases/batchtest")
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 960, elements: !14)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "binarysearch_DATA", file: !7, line: 51, size: 64, elements: !10)
!10 = !{!11, !13}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !9, file: !7, line: 52, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !9, file: !7, line: 53, baseType: !12, size: 32, offset: 32)
!14 = !{!15}
!15 = !DISubrange(count: 15)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "binarysearch_result", scope: !2, file: !7, line: 58, type: !12, isLocal: false, isDefinition: true)
!18 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!26 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !28, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!28 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!29 = distinct !DICompileUnit(language: DW_LANG_C99, file: !30, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!30 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!32 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!34 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!35 = distinct !DICompileUnit(language: DW_LANG_C99, file: !36, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!38 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!39 = distinct !DICompileUnit(language: DW_LANG_C99, file: !40, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!40 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!42 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!43 = distinct !DICompileUnit(language: DW_LANG_C99, file: !44, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!44 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!45 = distinct !DICompileUnit(language: DW_LANG_C99, file: !46, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!46 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!49 = distinct !DICompileUnit(language: DW_LANG_C99, file: !50, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!50 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!52 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!54 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !60, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!60 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!62 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!64 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!66 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!68 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!70 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!72 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!74 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!76 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!78 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!80 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!82 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!84 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!86 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!88 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !90, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!90 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!92 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!94 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!96 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!98 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!99 = distinct !DICompileUnit(language: DW_LANG_C99, file: !100, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!100 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!102 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !104, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!104 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!106 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!108 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!109 = distinct !DICompileUnit(language: DW_LANG_C99, file: !110, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!110 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!112 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!113 = distinct !DICompileUnit(language: DW_LANG_C99, file: !114, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!114 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!115 = distinct !DICompileUnit(language: DW_LANG_C99, file: !116, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!116 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!117 = distinct !DICompileUnit(language: DW_LANG_C99, file: !118, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!118 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!120 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!122 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !124, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!124 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !126, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!126 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!127 = distinct !DICompileUnit(language: DW_LANG_C99, file: !128, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!128 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!129 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!130 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!131 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)"}
!132 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!133 = !{i32 7, !"Dwarf Version", i32 5}
!134 = !{i32 2, !"Debug Info Version", i32 3}
!135 = !{i32 1, !"wchar_size", i32 4}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 1, !"branch-target-enforcement", i32 0}
!138 = !{i32 1, !"sign-return-address", i32 0}
!139 = !{i32 1, !"sign-return-address-all", i32 0}
!140 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = distinct !DISubprogram(name: "binarysearch_initSeed", scope: !7, file: !7, line: 68, type: !143, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!143 = !DISubroutineType(types: !144)
!144 = !{null}
!145 = !{}
!146 = !DILocation(line: 68, column: 54, scope: !142)
!147 = !DILocation(line: 68, column: 59, scope: !142)
!148 = distinct !DISubprogram(name: "binarysearch_randomInteger", scope: !7, file: !7, line: 73, type: !149, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!149 = !DISubroutineType(types: !150)
!150 = !{!151}
!151 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!152 = !DILocation(line: 74, column: 25, scope: !148)
!153 = !DILocation(line: 74, column: 43, scope: !148)
!154 = !DILocation(line: 74, column: 50, scope: !148)
!155 = !DILocation(line: 74, column: 56, scope: !148)
!156 = !DILocation(line: 74, column: 21, scope: !148)
!157 = !DILocation(line: 75, column: 11, scope: !148)
!158 = !DILocation(line: 75, column: 3, scope: !148)
!159 = distinct !DISubprogram(name: "binarysearch_init", scope: !7, file: !7, line: 78, type: !143, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!160 = !DILocation(line: 81, column: 3, scope: !159)
!161 = !DILocalVariable(name: "i", scope: !159, file: !7, line: 79, type: !12)
!162 = !DILocation(line: 0, scope: !159)
!163 = !DILocation(line: 83, column: 43, scope: !164)
!164 = distinct !DILexicalBlock(scope: !159, file: !7, line: 83, column: 38)
!165 = !DILocation(line: 0, scope: !164)
!166 = !DILocation(line: 83, column: 52, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !7, line: 83, column: 38)
!168 = !DILocation(line: 83, column: 38, scope: !164)
!169 = !DILocation(line: 84, column: 32, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !7, line: 83, column: 63)
!171 = !DILocation(line: 84, column: 26, scope: !170)
!172 = !DILocation(line: 84, column: 30, scope: !170)
!173 = !DILocation(line: 85, column: 34, scope: !170)
!174 = !DILocation(line: 85, column: 26, scope: !170)
!175 = !DILocation(line: 85, column: 32, scope: !170)
!176 = !DILocation(line: 86, column: 3, scope: !170)
!177 = !DILocation(line: 83, column: 58, scope: !167)
!178 = !DILocation(line: 83, column: 38, scope: !167)
!179 = distinct !{!179, !168, !180, !181}
!180 = !DILocation(line: 86, column: 3, scope: !164)
!181 = !{!"llvm.loop.mustprogress"}
!182 = !DILocation(line: 87, column: 1, scope: !159)
!183 = distinct !DISubprogram(name: "binarysearch_return", scope: !7, file: !7, line: 89, type: !184, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!184 = !DISubroutineType(types: !185)
!185 = !{!12}
!186 = !DILocation(line: 89, column: 41, scope: !183)
!187 = !DILocation(line: 89, column: 33, scope: !183)
!188 = distinct !DISubprogram(name: "binarysearch_binary_search", scope: !7, file: !7, line: 95, type: !189, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!189 = !DISubroutineType(types: !190)
!190 = !{!12, !12}
!191 = !DILocalVariable(name: "x", arg: 1, scope: !188, file: !7, line: 95, type: !12)
!192 = !DILocation(line: 0, scope: !188)
!193 = !DILocalVariable(name: "low", scope: !188, file: !7, line: 96, type: !12)
!194 = !DILocalVariable(name: "up", scope: !188, file: !7, line: 96, type: !12)
!195 = !DILocalVariable(name: "fvalue", scope: !188, file: !7, line: 96, type: !12)
!196 = !DILocation(line: 102, column: 36, scope: !188)
!197 = !DILocation(line: 102, column: 47, scope: !188)
!198 = !DILocation(line: 103, column: 16, scope: !199)
!199 = distinct !DILexicalBlock(scope: !188, file: !7, line: 102, column: 54)
!200 = !DILocation(line: 103, column: 22, scope: !199)
!201 = !DILocalVariable(name: "mid", scope: !188, file: !7, line: 96, type: !12)
!202 = !DILocation(line: 105, column: 32, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !7, line: 105, column: 9)
!204 = !DILocation(line: 105, column: 36, scope: !203)
!205 = !DILocation(line: 105, column: 9, scope: !199)
!206 = !DILocation(line: 107, column: 16, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !7, line: 105, column: 42)
!208 = !DILocation(line: 108, column: 39, scope: !207)
!209 = !DILocation(line: 109, column: 5, scope: !207)
!210 = !DILocation(line: 109, column: 39, scope: !211)
!211 = distinct !DILexicalBlock(scope: !203, file: !7, line: 109, column: 16)
!212 = !DILocation(line: 109, column: 43, scope: !211)
!213 = !DILocation(line: 109, column: 16, scope: !203)
!214 = !DILocation(line: 111, column: 16, scope: !211)
!215 = !DILocation(line: 111, column: 7, scope: !211)
!216 = !DILocation(line: 0, scope: !203)
!217 = !DILocation(line: 114, column: 14, scope: !199)
!218 = distinct !{!218, !196, !219, !181}
!219 = !DILocation(line: 115, column: 3, scope: !188)
!220 = !DILocation(line: 117, column: 3, scope: !188)
!221 = distinct !DISubprogram(name: "binarysearch_main", scope: !7, file: !7, line: 124, type: !143, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!222 = !DILocation(line: 125, column: 25, scope: !221)
!223 = !DILocation(line: 125, column: 23, scope: !221)
!224 = !DILocation(line: 126, column: 1, scope: !221)
!225 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 128, type: !184, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!226 = !DILocation(line: 129, column: 3, scope: !225)
!227 = !DILocation(line: 130, column: 3, scope: !225)
!228 = !DILocation(line: 132, column: 11, scope: !225)
!229 = !DILocation(line: 132, column: 40, scope: !225)
!230 = !DILocation(line: 132, column: 3, scope: !225)
!231 = distinct !DISubprogram(name: "__absvdi2", scope: !20, file: !20, line: 22, type: !232, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !145)
!232 = !DISubroutineType(types: !145)
!233 = !DILocation(line: 25, column: 11, scope: !231)
!234 = !DILocation(line: 25, column: 9, scope: !231)
!235 = !DILocation(line: 26, column: 9, scope: !231)
!236 = !DILocation(line: 28, column: 20, scope: !231)
!237 = !DILocation(line: 28, column: 5, scope: !231)
!238 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !72, file: !72, line: 57, type: !232, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !145)
!239 = !DILocation(line: 59, column: 1, scope: !238)
!240 = distinct !DISubprogram(name: "__absvsi2", scope: !22, file: !22, line: 22, type: !232, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !145)
!241 = !DILocation(line: 25, column: 11, scope: !240)
!242 = !DILocation(line: 25, column: 9, scope: !240)
!243 = !DILocation(line: 26, column: 9, scope: !240)
!244 = !DILocation(line: 28, column: 20, scope: !240)
!245 = !DILocation(line: 28, column: 5, scope: !240)
!246 = distinct !DISubprogram(name: "__addvdi3", scope: !26, file: !26, line: 22, type: !232, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !145)
!247 = !DILocation(line: 24, column: 27, scope: !246)
!248 = !DILocation(line: 25, column: 11, scope: !246)
!249 = !DILocation(line: 25, column: 9, scope: !246)
!250 = !DILocation(line: 27, column: 15, scope: !246)
!251 = !DILocation(line: 27, column: 13, scope: !246)
!252 = !DILocation(line: 28, column: 13, scope: !246)
!253 = !DILocation(line: 29, column: 5, scope: !246)
!254 = !DILocation(line: 32, column: 15, scope: !246)
!255 = !DILocation(line: 32, column: 13, scope: !246)
!256 = !DILocation(line: 33, column: 13, scope: !246)
!257 = !DILocation(line: 35, column: 5, scope: !246)
!258 = distinct !DISubprogram(name: "__addvsi3", scope: !28, file: !28, line: 22, type: !232, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !145)
!259 = !DILocation(line: 24, column: 27, scope: !258)
!260 = !DILocation(line: 25, column: 11, scope: !258)
!261 = !DILocation(line: 25, column: 9, scope: !258)
!262 = !DILocation(line: 27, column: 15, scope: !258)
!263 = !DILocation(line: 27, column: 13, scope: !258)
!264 = !DILocation(line: 28, column: 13, scope: !258)
!265 = !DILocation(line: 29, column: 5, scope: !258)
!266 = !DILocation(line: 32, column: 15, scope: !258)
!267 = !DILocation(line: 32, column: 13, scope: !258)
!268 = !DILocation(line: 33, column: 13, scope: !258)
!269 = !DILocation(line: 35, column: 5, scope: !258)
!270 = distinct !DISubprogram(name: "__ashldi3", scope: !32, file: !32, line: 24, type: !232, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !145)
!271 = !DILocation(line: 29, column: 11, scope: !270)
!272 = !DILocation(line: 29, column: 15, scope: !270)
!273 = !DILocation(line: 30, column: 11, scope: !270)
!274 = !DILocation(line: 30, column: 9, scope: !270)
!275 = !DILocation(line: 32, column: 18, scope: !270)
!276 = !DILocation(line: 32, column: 22, scope: !270)
!277 = !DILocation(line: 33, column: 33, scope: !270)
!278 = !DILocation(line: 33, column: 43, scope: !270)
!279 = !DILocation(line: 33, column: 37, scope: !270)
!280 = !DILocation(line: 33, column: 16, scope: !270)
!281 = !DILocation(line: 33, column: 18, scope: !270)
!282 = !DILocation(line: 33, column: 23, scope: !270)
!283 = !DILocation(line: 34, column: 5, scope: !270)
!284 = !DILocation(line: 37, column: 15, scope: !270)
!285 = !DILocation(line: 37, column: 13, scope: !270)
!286 = !DILocation(line: 38, column: 13, scope: !270)
!287 = !DILocation(line: 39, column: 33, scope: !270)
!288 = !DILocation(line: 39, column: 37, scope: !270)
!289 = !DILocation(line: 39, column: 18, scope: !270)
!290 = !DILocation(line: 39, column: 23, scope: !270)
!291 = !DILocation(line: 40, column: 32, scope: !270)
!292 = !DILocation(line: 40, column: 34, scope: !270)
!293 = !DILocation(line: 40, column: 39, scope: !270)
!294 = !DILocation(line: 40, column: 56, scope: !270)
!295 = !DILocation(line: 40, column: 77, scope: !270)
!296 = !DILocation(line: 40, column: 60, scope: !270)
!297 = !DILocation(line: 40, column: 45, scope: !270)
!298 = !DILocation(line: 40, column: 16, scope: !270)
!299 = !DILocation(line: 40, column: 18, scope: !270)
!300 = !DILocation(line: 40, column: 23, scope: !270)
!301 = !DILocation(line: 42, column: 19, scope: !270)
!302 = !DILocation(line: 42, column: 5, scope: !270)
!303 = !DILocation(line: 0, scope: !270)
!304 = !DILocation(line: 43, column: 1, scope: !270)
!305 = distinct !DISubprogram(name: "__ashrdi3", scope: !36, file: !36, line: 24, type: !232, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !145)
!306 = !DILocation(line: 29, column: 11, scope: !305)
!307 = !DILocation(line: 29, column: 15, scope: !305)
!308 = !DILocation(line: 30, column: 11, scope: !305)
!309 = !DILocation(line: 30, column: 9, scope: !305)
!310 = !DILocation(line: 33, column: 31, scope: !305)
!311 = !DILocation(line: 33, column: 33, scope: !305)
!312 = !DILocation(line: 33, column: 38, scope: !305)
!313 = !DILocation(line: 33, column: 16, scope: !305)
!314 = !DILocation(line: 33, column: 18, scope: !305)
!315 = !DILocation(line: 33, column: 23, scope: !305)
!316 = !DILocation(line: 34, column: 30, scope: !305)
!317 = !DILocation(line: 34, column: 32, scope: !305)
!318 = !DILocation(line: 34, column: 43, scope: !305)
!319 = !DILocation(line: 34, column: 37, scope: !305)
!320 = !DILocation(line: 34, column: 18, scope: !305)
!321 = !DILocation(line: 34, column: 22, scope: !305)
!322 = !DILocation(line: 35, column: 5, scope: !305)
!323 = !DILocation(line: 38, column: 15, scope: !305)
!324 = !DILocation(line: 38, column: 13, scope: !305)
!325 = !DILocation(line: 39, column: 13, scope: !305)
!326 = !DILocation(line: 40, column: 32, scope: !305)
!327 = !DILocation(line: 40, column: 34, scope: !305)
!328 = !DILocation(line: 40, column: 39, scope: !305)
!329 = !DILocation(line: 40, column: 16, scope: !305)
!330 = !DILocation(line: 40, column: 18, scope: !305)
!331 = !DILocation(line: 40, column: 24, scope: !305)
!332 = !DILocation(line: 41, column: 31, scope: !305)
!333 = !DILocation(line: 41, column: 33, scope: !305)
!334 = !DILocation(line: 41, column: 55, scope: !305)
!335 = !DILocation(line: 41, column: 38, scope: !305)
!336 = !DILocation(line: 41, column: 72, scope: !305)
!337 = !DILocation(line: 41, column: 76, scope: !305)
!338 = !DILocation(line: 41, column: 61, scope: !305)
!339 = !DILocation(line: 41, column: 18, scope: !305)
!340 = !DILocation(line: 41, column: 22, scope: !305)
!341 = !DILocation(line: 43, column: 19, scope: !305)
!342 = !DILocation(line: 43, column: 5, scope: !305)
!343 = !DILocation(line: 0, scope: !305)
!344 = !DILocation(line: 44, column: 1, scope: !305)
!345 = distinct !DISubprogram(name: "__clzdi2", scope: !40, file: !40, line: 22, type: !232, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !145)
!346 = !DILocation(line: 25, column: 7, scope: !345)
!347 = !DILocation(line: 25, column: 11, scope: !345)
!348 = !DILocation(line: 26, column: 26, scope: !345)
!349 = !DILocation(line: 26, column: 28, scope: !345)
!350 = !DILocation(line: 26, column: 33, scope: !345)
!351 = !DILocation(line: 27, column: 29, scope: !345)
!352 = !DILocation(line: 27, column: 31, scope: !345)
!353 = !DILocation(line: 27, column: 49, scope: !345)
!354 = !DILocation(line: 27, column: 42, scope: !345)
!355 = !DILocation(line: 27, column: 12, scope: !345)
!356 = !{i32 0, i32 33}
!357 = !DILocation(line: 28, column: 15, scope: !345)
!358 = !DILocation(line: 27, column: 59, scope: !345)
!359 = !DILocation(line: 27, column: 5, scope: !345)
!360 = distinct !DISubprogram(name: "__clzsi2", scope: !42, file: !42, line: 22, type: !232, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !145)
!361 = !DILocation(line: 25, column: 34, scope: !360)
!362 = !DILocation(line: 25, column: 40, scope: !360)
!363 = !DILocation(line: 26, column: 14, scope: !360)
!364 = !DILocation(line: 26, column: 7, scope: !360)
!365 = !DILocation(line: 29, column: 13, scope: !360)
!366 = !DILocation(line: 29, column: 23, scope: !360)
!367 = !DILocation(line: 29, column: 29, scope: !360)
!368 = !DILocation(line: 30, column: 13, scope: !360)
!369 = !DILocation(line: 30, column: 7, scope: !360)
!370 = !DILocation(line: 31, column: 7, scope: !360)
!371 = !DILocation(line: 33, column: 13, scope: !360)
!372 = !DILocation(line: 33, column: 21, scope: !360)
!373 = !DILocation(line: 33, column: 27, scope: !360)
!374 = !DILocation(line: 34, column: 13, scope: !360)
!375 = !DILocation(line: 34, column: 7, scope: !360)
!376 = !DILocation(line: 35, column: 7, scope: !360)
!377 = !DILocation(line: 37, column: 13, scope: !360)
!378 = !DILocation(line: 37, column: 20, scope: !360)
!379 = !DILocation(line: 37, column: 26, scope: !360)
!380 = !DILocation(line: 38, column: 13, scope: !360)
!381 = !DILocation(line: 38, column: 7, scope: !360)
!382 = !DILocation(line: 39, column: 7, scope: !360)
!383 = !DILocation(line: 52, column: 20, scope: !360)
!384 = !DILocation(line: 52, column: 37, scope: !360)
!385 = !DILocation(line: 52, column: 25, scope: !360)
!386 = !DILocation(line: 52, column: 14, scope: !360)
!387 = !DILocation(line: 52, column: 5, scope: !360)
!388 = distinct !DISubprogram(name: "__cmpdi2", scope: !46, file: !46, line: 23, type: !232, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !145)
!389 = !DILocation(line: 26, column: 7, scope: !388)
!390 = !DILocation(line: 26, column: 11, scope: !388)
!391 = !DILocation(line: 28, column: 7, scope: !388)
!392 = !DILocation(line: 28, column: 11, scope: !388)
!393 = !DILocation(line: 29, column: 11, scope: !388)
!394 = !DILocation(line: 29, column: 13, scope: !388)
!395 = !DILocation(line: 29, column: 22, scope: !388)
!396 = !DILocation(line: 29, column: 24, scope: !388)
!397 = !DILocation(line: 29, column: 18, scope: !388)
!398 = !DILocation(line: 29, column: 9, scope: !388)
!399 = !DILocation(line: 30, column: 9, scope: !388)
!400 = !DILocation(line: 31, column: 11, scope: !388)
!401 = !DILocation(line: 31, column: 13, scope: !388)
!402 = !DILocation(line: 31, column: 22, scope: !388)
!403 = !DILocation(line: 31, column: 24, scope: !388)
!404 = !DILocation(line: 31, column: 18, scope: !388)
!405 = !DILocation(line: 31, column: 9, scope: !388)
!406 = !DILocation(line: 32, column: 9, scope: !388)
!407 = !DILocation(line: 33, column: 13, scope: !388)
!408 = !DILocation(line: 33, column: 23, scope: !388)
!409 = !DILocation(line: 33, column: 17, scope: !388)
!410 = !DILocation(line: 33, column: 9, scope: !388)
!411 = !DILocation(line: 34, column: 9, scope: !388)
!412 = !DILocation(line: 35, column: 13, scope: !388)
!413 = !DILocation(line: 35, column: 23, scope: !388)
!414 = !DILocation(line: 35, column: 17, scope: !388)
!415 = !DILocation(line: 35, column: 9, scope: !388)
!416 = !DILocation(line: 36, column: 9, scope: !388)
!417 = !DILocation(line: 37, column: 5, scope: !388)
!418 = !DILocation(line: 0, scope: !388)
!419 = !DILocation(line: 38, column: 1, scope: !388)
!420 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !46, file: !46, line: 46, type: !232, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !145)
!421 = !DILocation(line: 48, column: 9, scope: !420)
!422 = !DILocation(line: 48, column: 24, scope: !420)
!423 = !DILocation(line: 48, column: 2, scope: !420)
!424 = distinct !DISubprogram(name: "__ctzdi2", scope: !50, file: !50, line: 22, type: !232, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !145)
!425 = !DILocation(line: 25, column: 7, scope: !424)
!426 = !DILocation(line: 25, column: 11, scope: !424)
!427 = !DILocation(line: 26, column: 28, scope: !424)
!428 = !DILocation(line: 26, column: 32, scope: !424)
!429 = !DILocation(line: 27, column: 29, scope: !424)
!430 = !DILocation(line: 27, column: 31, scope: !424)
!431 = !DILocation(line: 27, column: 41, scope: !424)
!432 = !DILocation(line: 27, column: 12, scope: !424)
!433 = !DILocation(line: 28, column: 18, scope: !424)
!434 = !DILocation(line: 27, column: 59, scope: !424)
!435 = !DILocation(line: 27, column: 5, scope: !424)
!436 = distinct !DISubprogram(name: "__ctzsi2", scope: !52, file: !52, line: 22, type: !232, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !145)
!437 = !DILocation(line: 25, column: 20, scope: !436)
!438 = !DILocation(line: 25, column: 34, scope: !436)
!439 = !DILocation(line: 25, column: 40, scope: !436)
!440 = !DILocation(line: 26, column: 7, scope: !436)
!441 = !DILocation(line: 29, column: 13, scope: !436)
!442 = !DILocation(line: 29, column: 23, scope: !436)
!443 = !DILocation(line: 29, column: 29, scope: !436)
!444 = !DILocation(line: 30, column: 7, scope: !436)
!445 = !DILocation(line: 31, column: 7, scope: !436)
!446 = !DILocation(line: 33, column: 13, scope: !436)
!447 = !DILocation(line: 33, column: 21, scope: !436)
!448 = !DILocation(line: 33, column: 27, scope: !436)
!449 = !DILocation(line: 34, column: 7, scope: !436)
!450 = !DILocation(line: 35, column: 7, scope: !436)
!451 = !DILocation(line: 37, column: 13, scope: !436)
!452 = !DILocation(line: 37, column: 20, scope: !436)
!453 = !DILocation(line: 37, column: 26, scope: !436)
!454 = !DILocation(line: 38, column: 7, scope: !436)
!455 = !DILocation(line: 40, column: 7, scope: !436)
!456 = !DILocation(line: 56, column: 25, scope: !436)
!457 = !DILocation(line: 56, column: 20, scope: !436)
!458 = !DILocation(line: 56, column: 44, scope: !436)
!459 = !DILocation(line: 56, column: 32, scope: !436)
!460 = !DILocation(line: 56, column: 14, scope: !436)
!461 = !DILocation(line: 56, column: 5, scope: !436)
!462 = distinct !DISubprogram(name: "__divdi3", scope: !56, file: !56, line: 20, type: !232, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !145)
!463 = !DILocation(line: 23, column: 20, scope: !462)
!464 = !DILocation(line: 24, column: 20, scope: !462)
!465 = !DILocation(line: 25, column: 12, scope: !462)
!466 = !DILocation(line: 25, column: 19, scope: !462)
!467 = !DILocation(line: 26, column: 12, scope: !462)
!468 = !DILocation(line: 26, column: 19, scope: !462)
!469 = !DILocation(line: 27, column: 9, scope: !462)
!470 = !DILocation(line: 28, column: 13, scope: !462)
!471 = !DILocation(line: 28, column: 44, scope: !462)
!472 = !DILocation(line: 28, column: 51, scope: !462)
!473 = !DILocation(line: 28, column: 5, scope: !462)
!474 = distinct !DISubprogram(name: "__udivmoddi4", scope: !114, file: !114, line: 24, type: !232, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !145)
!475 = !DILocation(line: 29, column: 7, scope: !474)
!476 = !DILocation(line: 29, column: 11, scope: !474)
!477 = !DILocation(line: 31, column: 7, scope: !474)
!478 = !DILocation(line: 31, column: 11, scope: !474)
!479 = !DILocation(line: 36, column: 11, scope: !474)
!480 = !DILocation(line: 36, column: 13, scope: !474)
!481 = !DILocation(line: 36, column: 18, scope: !474)
!482 = !DILocation(line: 36, column: 9, scope: !474)
!483 = !DILocation(line: 38, column: 15, scope: !474)
!484 = !DILocation(line: 38, column: 17, scope: !474)
!485 = !DILocation(line: 38, column: 22, scope: !474)
!486 = !DILocation(line: 38, column: 13, scope: !474)
!487 = !DILocation(line: 44, column: 17, scope: !474)
!488 = !DILocation(line: 45, column: 28, scope: !474)
!489 = !DILocation(line: 45, column: 38, scope: !474)
!490 = !DILocation(line: 45, column: 32, scope: !474)
!491 = !DILocation(line: 45, column: 24, scope: !474)
!492 = !DILocation(line: 45, column: 22, scope: !474)
!493 = !DILocation(line: 45, column: 17, scope: !474)
!494 = !DILocation(line: 46, column: 24, scope: !474)
!495 = !DILocation(line: 46, column: 34, scope: !474)
!496 = !DILocation(line: 46, column: 28, scope: !474)
!497 = !DILocation(line: 46, column: 20, scope: !474)
!498 = !DILocation(line: 46, column: 13, scope: !474)
!499 = !DILocation(line: 52, column: 13, scope: !474)
!500 = !DILocation(line: 53, column: 24, scope: !474)
!501 = !DILocation(line: 53, column: 20, scope: !474)
!502 = !DILocation(line: 53, column: 18, scope: !474)
!503 = !DILocation(line: 53, column: 13, scope: !474)
!504 = !DILocation(line: 54, column: 9, scope: !474)
!505 = !DILocation(line: 57, column: 13, scope: !474)
!506 = !DILocation(line: 57, column: 17, scope: !474)
!507 = !DILocation(line: 57, column: 9, scope: !474)
!508 = !DILocation(line: 59, column: 15, scope: !474)
!509 = !DILocation(line: 59, column: 17, scope: !474)
!510 = !DILocation(line: 59, column: 22, scope: !474)
!511 = !DILocation(line: 59, column: 13, scope: !474)
!512 = !DILocation(line: 65, column: 17, scope: !474)
!513 = !DILocation(line: 66, column: 26, scope: !474)
!514 = !DILocation(line: 66, column: 28, scope: !474)
!515 = !DILocation(line: 66, column: 39, scope: !474)
!516 = !DILocation(line: 66, column: 33, scope: !474)
!517 = !DILocation(line: 66, column: 24, scope: !474)
!518 = !DILocation(line: 66, column: 22, scope: !474)
!519 = !DILocation(line: 66, column: 17, scope: !474)
!520 = !DILocation(line: 67, column: 22, scope: !474)
!521 = !DILocation(line: 67, column: 24, scope: !474)
!522 = !DILocation(line: 67, column: 35, scope: !474)
!523 = !DILocation(line: 67, column: 29, scope: !474)
!524 = !DILocation(line: 67, column: 20, scope: !474)
!525 = !DILocation(line: 67, column: 13, scope: !474)
!526 = !DILocation(line: 70, column: 17, scope: !474)
!527 = !DILocation(line: 70, column: 21, scope: !474)
!528 = !DILocation(line: 70, column: 13, scope: !474)
!529 = !DILocation(line: 76, column: 17, scope: !474)
!530 = !DILocation(line: 78, column: 30, scope: !474)
!531 = !DILocation(line: 78, column: 32, scope: !474)
!532 = !DILocation(line: 78, column: 41, scope: !474)
!533 = !DILocation(line: 78, column: 43, scope: !474)
!534 = !DILocation(line: 78, column: 37, scope: !474)
!535 = !DILocation(line: 78, column: 19, scope: !474)
!536 = !DILocation(line: 78, column: 21, scope: !474)
!537 = !DILocation(line: 78, column: 26, scope: !474)
!538 = !DILocation(line: 79, column: 21, scope: !474)
!539 = !DILocation(line: 79, column: 25, scope: !474)
!540 = !DILocation(line: 80, column: 26, scope: !474)
!541 = !DILocation(line: 80, column: 22, scope: !474)
!542 = !DILocation(line: 81, column: 13, scope: !474)
!543 = !DILocation(line: 82, column: 22, scope: !474)
!544 = !DILocation(line: 82, column: 24, scope: !474)
!545 = !DILocation(line: 82, column: 33, scope: !474)
!546 = !DILocation(line: 82, column: 35, scope: !474)
!547 = !DILocation(line: 82, column: 29, scope: !474)
!548 = !DILocation(line: 82, column: 20, scope: !474)
!549 = !DILocation(line: 82, column: 13, scope: !474)
!550 = !DILocation(line: 88, column: 16, scope: !474)
!551 = !DILocation(line: 88, column: 18, scope: !474)
!552 = !DILocation(line: 88, column: 28, scope: !474)
!553 = !DILocation(line: 88, column: 30, scope: !474)
!554 = !DILocation(line: 88, column: 35, scope: !474)
!555 = !DILocation(line: 88, column: 23, scope: !474)
!556 = !DILocation(line: 88, column: 41, scope: !474)
!557 = !DILocation(line: 88, column: 13, scope: !474)
!558 = !DILocation(line: 90, column: 17, scope: !474)
!559 = !DILocation(line: 92, column: 31, scope: !474)
!560 = !DILocation(line: 92, column: 21, scope: !474)
!561 = !DILocation(line: 92, column: 25, scope: !474)
!562 = !DILocation(line: 93, column: 30, scope: !474)
!563 = !DILocation(line: 93, column: 32, scope: !474)
!564 = !DILocation(line: 93, column: 42, scope: !474)
!565 = !DILocation(line: 93, column: 44, scope: !474)
!566 = !DILocation(line: 93, column: 49, scope: !474)
!567 = !DILocation(line: 93, column: 37, scope: !474)
!568 = !DILocation(line: 93, column: 19, scope: !474)
!569 = !DILocation(line: 93, column: 21, scope: !474)
!570 = !DILocation(line: 93, column: 26, scope: !474)
!571 = !DILocation(line: 94, column: 26, scope: !474)
!572 = !DILocation(line: 94, column: 22, scope: !474)
!573 = !DILocation(line: 95, column: 13, scope: !474)
!574 = !DILocation(line: 96, column: 22, scope: !474)
!575 = !DILocation(line: 96, column: 24, scope: !474)
!576 = !DILocation(line: 96, column: 48, scope: !474)
!577 = !DILocation(line: 96, column: 50, scope: !474)
!578 = !DILocation(line: 96, column: 32, scope: !474)
!579 = !DILocation(line: 96, column: 29, scope: !474)
!580 = !DILocation(line: 96, column: 20, scope: !474)
!581 = !DILocation(line: 96, column: 13, scope: !474)
!582 = !DILocation(line: 102, column: 30, scope: !474)
!583 = !DILocation(line: 102, column: 32, scope: !474)
!584 = !DILocation(line: 102, column: 14, scope: !474)
!585 = !DILocation(line: 102, column: 56, scope: !474)
!586 = !DILocation(line: 102, column: 58, scope: !474)
!587 = !DILocation(line: 102, column: 40, scope: !474)
!588 = !DILocation(line: 102, column: 38, scope: !474)
!589 = !DILocation(line: 104, column: 16, scope: !474)
!590 = !DILocation(line: 104, column: 13, scope: !474)
!591 = !DILocation(line: 106, column: 16, scope: !474)
!592 = !DILocation(line: 107, column: 26, scope: !474)
!593 = !DILocation(line: 107, column: 22, scope: !474)
!594 = !DILocation(line: 107, column: 17, scope: !474)
!595 = !DILocation(line: 108, column: 13, scope: !474)
!596 = !DILocation(line: 110, column: 9, scope: !474)
!597 = !DILocation(line: 113, column: 13, scope: !474)
!598 = !DILocation(line: 113, column: 17, scope: !474)
!599 = !DILocation(line: 114, column: 24, scope: !474)
!600 = !DILocation(line: 114, column: 45, scope: !474)
!601 = !DILocation(line: 114, column: 28, scope: !474)
!602 = !DILocation(line: 114, column: 11, scope: !474)
!603 = !DILocation(line: 114, column: 13, scope: !474)
!604 = !DILocation(line: 114, column: 18, scope: !474)
!605 = !DILocation(line: 116, column: 22, scope: !474)
!606 = !DILocation(line: 116, column: 24, scope: !474)
!607 = !DILocation(line: 116, column: 29, scope: !474)
!608 = !DILocation(line: 116, column: 11, scope: !474)
!609 = !DILocation(line: 116, column: 13, scope: !474)
!610 = !DILocation(line: 116, column: 18, scope: !474)
!611 = !DILocation(line: 117, column: 22, scope: !474)
!612 = !DILocation(line: 117, column: 24, scope: !474)
!613 = !DILocation(line: 117, column: 46, scope: !474)
!614 = !DILocation(line: 117, column: 29, scope: !474)
!615 = !DILocation(line: 117, column: 60, scope: !474)
!616 = !DILocation(line: 117, column: 64, scope: !474)
!617 = !DILocation(line: 117, column: 53, scope: !474)
!618 = !DILocation(line: 117, column: 13, scope: !474)
!619 = !DILocation(line: 117, column: 17, scope: !474)
!620 = !DILocation(line: 118, column: 5, scope: !474)
!621 = !DILocation(line: 121, column: 15, scope: !474)
!622 = !DILocation(line: 121, column: 17, scope: !474)
!623 = !DILocation(line: 121, column: 22, scope: !474)
!624 = !DILocation(line: 121, column: 13, scope: !474)
!625 = !DILocation(line: 127, column: 22, scope: !474)
!626 = !DILocation(line: 127, column: 43, scope: !474)
!627 = !DILocation(line: 127, column: 17, scope: !474)
!628 = !DILocation(line: 129, column: 21, scope: !474)
!629 = !DILocation(line: 130, column: 32, scope: !474)
!630 = !DILocation(line: 130, column: 43, scope: !474)
!631 = !DILocation(line: 130, column: 47, scope: !474)
!632 = !DILocation(line: 130, column: 36, scope: !474)
!633 = !DILocation(line: 130, column: 28, scope: !474)
!634 = !DILocation(line: 130, column: 26, scope: !474)
!635 = !DILocation(line: 130, column: 21, scope: !474)
!636 = !DILocation(line: 131, column: 25, scope: !474)
!637 = !DILocation(line: 131, column: 29, scope: !474)
!638 = !DILocation(line: 131, column: 21, scope: !474)
!639 = !DILocation(line: 132, column: 30, scope: !474)
!640 = !DILocation(line: 132, column: 21, scope: !474)
!641 = !DILocation(line: 133, column: 40, scope: !474)
!642 = !DILocation(line: 133, column: 22, scope: !474)
!643 = !DILocation(line: 134, column: 30, scope: !474)
!644 = !DILocation(line: 134, column: 32, scope: !474)
!645 = !DILocation(line: 134, column: 37, scope: !474)
!646 = !DILocation(line: 134, column: 19, scope: !474)
!647 = !DILocation(line: 134, column: 21, scope: !474)
!648 = !DILocation(line: 134, column: 26, scope: !474)
!649 = !DILocation(line: 135, column: 30, scope: !474)
!650 = !DILocation(line: 135, column: 32, scope: !474)
!651 = !DILocation(line: 135, column: 54, scope: !474)
!652 = !DILocation(line: 135, column: 37, scope: !474)
!653 = !DILocation(line: 135, column: 68, scope: !474)
!654 = !DILocation(line: 135, column: 72, scope: !474)
!655 = !DILocation(line: 135, column: 61, scope: !474)
!656 = !DILocation(line: 135, column: 21, scope: !474)
!657 = !DILocation(line: 135, column: 25, scope: !474)
!658 = !DILocation(line: 136, column: 26, scope: !474)
!659 = !DILocation(line: 136, column: 17, scope: !474)
!660 = !DILocation(line: 142, column: 55, scope: !474)
!661 = !DILocation(line: 142, column: 37, scope: !474)
!662 = !DILocation(line: 142, column: 35, scope: !474)
!663 = !DILocation(line: 142, column: 78, scope: !474)
!664 = !DILocation(line: 142, column: 80, scope: !474)
!665 = !DILocation(line: 142, column: 62, scope: !474)
!666 = !DILocation(line: 142, column: 60, scope: !474)
!667 = !DILocation(line: 147, column: 20, scope: !474)
!668 = !DILocation(line: 147, column: 17, scope: !474)
!669 = !DILocation(line: 149, column: 21, scope: !474)
!670 = !DILocation(line: 149, column: 25, scope: !474)
!671 = !DILocation(line: 150, column: 32, scope: !474)
!672 = !DILocation(line: 150, column: 19, scope: !474)
!673 = !DILocation(line: 150, column: 21, scope: !474)
!674 = !DILocation(line: 150, column: 26, scope: !474)
!675 = !DILocation(line: 151, column: 19, scope: !474)
!676 = !DILocation(line: 151, column: 21, scope: !474)
!677 = !DILocation(line: 151, column: 26, scope: !474)
!678 = !DILocation(line: 152, column: 29, scope: !474)
!679 = !DILocation(line: 152, column: 31, scope: !474)
!680 = !DILocation(line: 152, column: 21, scope: !474)
!681 = !DILocation(line: 152, column: 25, scope: !474)
!682 = !DILocation(line: 153, column: 13, scope: !474)
!683 = !DILocation(line: 154, column: 25, scope: !474)
!684 = !DILocation(line: 154, column: 22, scope: !474)
!685 = !DILocation(line: 156, column: 21, scope: !474)
!686 = !DILocation(line: 156, column: 25, scope: !474)
!687 = !DILocation(line: 157, column: 32, scope: !474)
!688 = !DILocation(line: 157, column: 53, scope: !474)
!689 = !DILocation(line: 157, column: 36, scope: !474)
!690 = !DILocation(line: 157, column: 19, scope: !474)
!691 = !DILocation(line: 157, column: 21, scope: !474)
!692 = !DILocation(line: 157, column: 26, scope: !474)
!693 = !DILocation(line: 158, column: 30, scope: !474)
!694 = !DILocation(line: 158, column: 32, scope: !474)
!695 = !DILocation(line: 158, column: 37, scope: !474)
!696 = !DILocation(line: 158, column: 19, scope: !474)
!697 = !DILocation(line: 158, column: 21, scope: !474)
!698 = !DILocation(line: 158, column: 26, scope: !474)
!699 = !DILocation(line: 159, column: 30, scope: !474)
!700 = !DILocation(line: 159, column: 32, scope: !474)
!701 = !DILocation(line: 159, column: 54, scope: !474)
!702 = !DILocation(line: 159, column: 37, scope: !474)
!703 = !DILocation(line: 159, column: 68, scope: !474)
!704 = !DILocation(line: 159, column: 72, scope: !474)
!705 = !DILocation(line: 159, column: 61, scope: !474)
!706 = !DILocation(line: 159, column: 21, scope: !474)
!707 = !DILocation(line: 159, column: 25, scope: !474)
!708 = !DILocation(line: 160, column: 13, scope: !474)
!709 = !DILocation(line: 163, column: 31, scope: !474)
!710 = !DILocation(line: 163, column: 53, scope: !474)
!711 = !DILocation(line: 163, column: 35, scope: !474)
!712 = !DILocation(line: 163, column: 21, scope: !474)
!713 = !DILocation(line: 163, column: 25, scope: !474)
!714 = !DILocation(line: 164, column: 31, scope: !474)
!715 = !DILocation(line: 164, column: 33, scope: !474)
!716 = !DILocation(line: 164, column: 56, scope: !474)
!717 = !DILocation(line: 164, column: 38, scope: !474)
!718 = !DILocation(line: 165, column: 33, scope: !474)
!719 = !DILocation(line: 165, column: 44, scope: !474)
!720 = !DILocation(line: 165, column: 37, scope: !474)
!721 = !DILocation(line: 164, column: 63, scope: !474)
!722 = !DILocation(line: 164, column: 19, scope: !474)
!723 = !DILocation(line: 164, column: 21, scope: !474)
!724 = !DILocation(line: 164, column: 26, scope: !474)
!725 = !DILocation(line: 166, column: 19, scope: !474)
!726 = !DILocation(line: 166, column: 21, scope: !474)
!727 = !DILocation(line: 166, column: 26, scope: !474)
!728 = !DILocation(line: 167, column: 29, scope: !474)
!729 = !DILocation(line: 167, column: 31, scope: !474)
!730 = !DILocation(line: 167, column: 43, scope: !474)
!731 = !DILocation(line: 167, column: 36, scope: !474)
!732 = !DILocation(line: 167, column: 21, scope: !474)
!733 = !DILocation(line: 167, column: 25, scope: !474)
!734 = !DILocation(line: 169, column: 9, scope: !474)
!735 = !DILocation(line: 176, column: 34, scope: !474)
!736 = !DILocation(line: 176, column: 36, scope: !474)
!737 = !DILocation(line: 176, column: 18, scope: !474)
!738 = !DILocation(line: 176, column: 60, scope: !474)
!739 = !DILocation(line: 176, column: 62, scope: !474)
!740 = !DILocation(line: 176, column: 44, scope: !474)
!741 = !DILocation(line: 176, column: 42, scope: !474)
!742 = !DILocation(line: 178, column: 20, scope: !474)
!743 = !DILocation(line: 178, column: 17, scope: !474)
!744 = !DILocation(line: 180, column: 21, scope: !474)
!745 = !DILocation(line: 181, column: 30, scope: !474)
!746 = !DILocation(line: 181, column: 26, scope: !474)
!747 = !DILocation(line: 181, column: 21, scope: !474)
!748 = !DILocation(line: 182, column: 17, scope: !474)
!749 = !DILocation(line: 184, column: 13, scope: !474)
!750 = !DILocation(line: 187, column: 17, scope: !474)
!751 = !DILocation(line: 187, column: 21, scope: !474)
!752 = !DILocation(line: 188, column: 20, scope: !474)
!753 = !DILocation(line: 188, column: 17, scope: !474)
!754 = !DILocation(line: 190, column: 32, scope: !474)
!755 = !DILocation(line: 190, column: 19, scope: !474)
!756 = !DILocation(line: 190, column: 21, scope: !474)
!757 = !DILocation(line: 190, column: 26, scope: !474)
!758 = !DILocation(line: 191, column: 19, scope: !474)
!759 = !DILocation(line: 191, column: 21, scope: !474)
!760 = !DILocation(line: 191, column: 26, scope: !474)
!761 = !DILocation(line: 192, column: 29, scope: !474)
!762 = !DILocation(line: 192, column: 31, scope: !474)
!763 = !DILocation(line: 192, column: 21, scope: !474)
!764 = !DILocation(line: 192, column: 25, scope: !474)
!765 = !DILocation(line: 193, column: 13, scope: !474)
!766 = !DILocation(line: 196, column: 32, scope: !474)
!767 = !DILocation(line: 196, column: 53, scope: !474)
!768 = !DILocation(line: 196, column: 36, scope: !474)
!769 = !DILocation(line: 196, column: 19, scope: !474)
!770 = !DILocation(line: 196, column: 21, scope: !474)
!771 = !DILocation(line: 196, column: 26, scope: !474)
!772 = !DILocation(line: 197, column: 30, scope: !474)
!773 = !DILocation(line: 197, column: 32, scope: !474)
!774 = !DILocation(line: 197, column: 37, scope: !474)
!775 = !DILocation(line: 197, column: 19, scope: !474)
!776 = !DILocation(line: 197, column: 21, scope: !474)
!777 = !DILocation(line: 197, column: 26, scope: !474)
!778 = !DILocation(line: 198, column: 30, scope: !474)
!779 = !DILocation(line: 198, column: 32, scope: !474)
!780 = !DILocation(line: 198, column: 54, scope: !474)
!781 = !DILocation(line: 198, column: 37, scope: !474)
!782 = !DILocation(line: 198, column: 68, scope: !474)
!783 = !DILocation(line: 198, column: 72, scope: !474)
!784 = !DILocation(line: 198, column: 61, scope: !474)
!785 = !DILocation(line: 198, column: 21, scope: !474)
!786 = !DILocation(line: 198, column: 25, scope: !474)
!787 = !DILocation(line: 0, scope: !474)
!788 = !DILocation(line: 209, column: 5, scope: !474)
!789 = !DILocation(line: 209, column: 15, scope: !474)
!790 = !DILocation(line: 212, column: 23, scope: !474)
!791 = !DILocation(line: 212, column: 25, scope: !474)
!792 = !DILocation(line: 212, column: 43, scope: !474)
!793 = !DILocation(line: 212, column: 36, scope: !474)
!794 = !DILocation(line: 212, column: 11, scope: !474)
!795 = !DILocation(line: 212, column: 13, scope: !474)
!796 = !DILocation(line: 212, column: 18, scope: !474)
!797 = !DILocation(line: 213, column: 41, scope: !474)
!798 = !DILocation(line: 213, column: 43, scope: !474)
!799 = !DILocation(line: 213, column: 36, scope: !474)
!800 = !DILocation(line: 213, column: 13, scope: !474)
!801 = !DILocation(line: 213, column: 18, scope: !474)
!802 = !DILocation(line: 214, column: 23, scope: !474)
!803 = !DILocation(line: 214, column: 25, scope: !474)
!804 = !DILocation(line: 214, column: 43, scope: !474)
!805 = !DILocation(line: 214, column: 36, scope: !474)
!806 = !DILocation(line: 214, column: 11, scope: !474)
!807 = !DILocation(line: 214, column: 13, scope: !474)
!808 = !DILocation(line: 214, column: 18, scope: !474)
!809 = !DILocation(line: 215, column: 30, scope: !474)
!810 = !DILocation(line: 215, column: 36, scope: !474)
!811 = !DILocation(line: 215, column: 13, scope: !474)
!812 = !DILocation(line: 215, column: 18, scope: !474)
!813 = !DILocation(line: 223, column: 37, scope: !474)
!814 = !DILocation(line: 223, column: 45, scope: !474)
!815 = !DILocation(line: 223, column: 49, scope: !474)
!816 = !DILocation(line: 225, column: 24, scope: !474)
!817 = !DILocation(line: 225, column: 11, scope: !474)
!818 = !DILocation(line: 225, column: 15, scope: !474)
!819 = !DILocation(line: 226, column: 5, scope: !474)
!820 = !DILocation(line: 224, column: 19, scope: !474)
!821 = !DILocation(line: 224, column: 17, scope: !474)
!822 = !DILocation(line: 209, column: 20, scope: !474)
!823 = distinct !{!823, !788, !819, !181}
!824 = !DILocation(line: 227, column: 16, scope: !474)
!825 = !DILocation(line: 227, column: 20, scope: !474)
!826 = !DILocation(line: 227, column: 28, scope: !474)
!827 = !DILocation(line: 227, column: 26, scope: !474)
!828 = !DILocation(line: 227, column: 7, scope: !474)
!829 = !DILocation(line: 227, column: 11, scope: !474)
!830 = !DILocation(line: 228, column: 9, scope: !474)
!831 = !DILocation(line: 229, column: 18, scope: !474)
!832 = !DILocation(line: 229, column: 14, scope: !474)
!833 = !DILocation(line: 229, column: 9, scope: !474)
!834 = !DILocation(line: 230, column: 14, scope: !474)
!835 = !DILocation(line: 230, column: 5, scope: !474)
!836 = !DILocation(line: 231, column: 1, scope: !474)
!837 = distinct !DISubprogram(name: "__divmoddi4", scope: !58, file: !58, line: 20, type: !232, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !145)
!838 = !DILocation(line: 22, column: 14, scope: !837)
!839 = !DILocation(line: 23, column: 16, scope: !837)
!840 = !DILocation(line: 23, column: 12, scope: !837)
!841 = !DILocation(line: 23, column: 8, scope: !837)
!842 = !DILocation(line: 24, column: 3, scope: !837)
!843 = distinct !DISubprogram(name: "__divmodsi4", scope: !60, file: !60, line: 20, type: !232, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !145)
!844 = !DILocation(line: 22, column: 14, scope: !843)
!845 = !DILocation(line: 23, column: 16, scope: !843)
!846 = !DILocation(line: 23, column: 12, scope: !843)
!847 = !DILocation(line: 23, column: 8, scope: !843)
!848 = !DILocation(line: 24, column: 3, scope: !843)
!849 = distinct !DISubprogram(name: "__divsi3", scope: !62, file: !62, line: 22, type: !232, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !145)
!850 = !DILocation(line: 25, column: 20, scope: !849)
!851 = !DILocation(line: 26, column: 20, scope: !849)
!852 = !DILocation(line: 27, column: 12, scope: !849)
!853 = !DILocation(line: 27, column: 19, scope: !849)
!854 = !DILocation(line: 28, column: 12, scope: !849)
!855 = !DILocation(line: 28, column: 19, scope: !849)
!856 = !DILocation(line: 29, column: 9, scope: !849)
!857 = !DILocation(line: 36, column: 22, scope: !849)
!858 = !DILocation(line: 36, column: 33, scope: !849)
!859 = !DILocation(line: 36, column: 40, scope: !849)
!860 = !DILocation(line: 36, column: 5, scope: !849)
!861 = distinct !DISubprogram(name: "__ffsdi2", scope: !66, file: !66, line: 22, type: !232, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !145)
!862 = !DILocation(line: 25, column: 7, scope: !861)
!863 = !DILocation(line: 25, column: 11, scope: !861)
!864 = !DILocation(line: 26, column: 13, scope: !861)
!865 = !DILocation(line: 26, column: 17, scope: !861)
!866 = !DILocation(line: 26, column: 9, scope: !861)
!867 = !DILocation(line: 28, column: 15, scope: !861)
!868 = !DILocation(line: 28, column: 17, scope: !861)
!869 = !DILocation(line: 28, column: 22, scope: !861)
!870 = !DILocation(line: 28, column: 13, scope: !861)
!871 = !DILocation(line: 29, column: 13, scope: !861)
!872 = !DILocation(line: 30, column: 32, scope: !861)
!873 = !DILocation(line: 30, column: 34, scope: !861)
!874 = !DILocation(line: 30, column: 16, scope: !861)
!875 = !DILocation(line: 30, column: 40, scope: !861)
!876 = !DILocation(line: 30, column: 9, scope: !861)
!877 = !DILocation(line: 32, column: 30, scope: !861)
!878 = !DILocation(line: 32, column: 12, scope: !861)
!879 = !DILocation(line: 32, column: 35, scope: !861)
!880 = !DILocation(line: 32, column: 5, scope: !861)
!881 = !DILocation(line: 0, scope: !861)
!882 = !DILocation(line: 33, column: 1, scope: !861)
!883 = distinct !DISubprogram(name: "__ffssi2", scope: !68, file: !68, line: 22, type: !232, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !145)
!884 = !DILocation(line: 24, column: 11, scope: !883)
!885 = !DILocation(line: 24, column: 9, scope: !883)
!886 = !DILocation(line: 26, column: 9, scope: !883)
!887 = !DILocation(line: 28, column: 12, scope: !883)
!888 = !DILocation(line: 28, column: 29, scope: !883)
!889 = !DILocation(line: 28, column: 5, scope: !883)
!890 = !DILocation(line: 0, scope: !883)
!891 = !DILocation(line: 29, column: 1, scope: !883)
!892 = distinct !DISubprogram(name: "__lshrdi3", scope: !74, file: !74, line: 24, type: !232, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !145)
!893 = !DILocation(line: 29, column: 11, scope: !892)
!894 = !DILocation(line: 29, column: 15, scope: !892)
!895 = !DILocation(line: 30, column: 11, scope: !892)
!896 = !DILocation(line: 30, column: 9, scope: !892)
!897 = !DILocation(line: 32, column: 16, scope: !892)
!898 = !DILocation(line: 32, column: 18, scope: !892)
!899 = !DILocation(line: 32, column: 23, scope: !892)
!900 = !DILocation(line: 33, column: 30, scope: !892)
!901 = !DILocation(line: 33, column: 32, scope: !892)
!902 = !DILocation(line: 33, column: 43, scope: !892)
!903 = !DILocation(line: 33, column: 37, scope: !892)
!904 = !DILocation(line: 33, column: 18, scope: !892)
!905 = !DILocation(line: 33, column: 22, scope: !892)
!906 = !DILocation(line: 34, column: 5, scope: !892)
!907 = !DILocation(line: 37, column: 15, scope: !892)
!908 = !DILocation(line: 37, column: 13, scope: !892)
!909 = !DILocation(line: 38, column: 13, scope: !892)
!910 = !DILocation(line: 39, column: 32, scope: !892)
!911 = !DILocation(line: 39, column: 34, scope: !892)
!912 = !DILocation(line: 39, column: 39, scope: !892)
!913 = !DILocation(line: 39, column: 16, scope: !892)
!914 = !DILocation(line: 39, column: 18, scope: !892)
!915 = !DILocation(line: 39, column: 24, scope: !892)
!916 = !DILocation(line: 40, column: 31, scope: !892)
!917 = !DILocation(line: 40, column: 33, scope: !892)
!918 = !DILocation(line: 40, column: 55, scope: !892)
!919 = !DILocation(line: 40, column: 38, scope: !892)
!920 = !DILocation(line: 40, column: 72, scope: !892)
!921 = !DILocation(line: 40, column: 76, scope: !892)
!922 = !DILocation(line: 40, column: 61, scope: !892)
!923 = !DILocation(line: 40, column: 18, scope: !892)
!924 = !DILocation(line: 40, column: 22, scope: !892)
!925 = !DILocation(line: 42, column: 19, scope: !892)
!926 = !DILocation(line: 42, column: 5, scope: !892)
!927 = !DILocation(line: 0, scope: !892)
!928 = !DILocation(line: 43, column: 1, scope: !892)
!929 = distinct !DISubprogram(name: "__moddi3", scope: !78, file: !78, line: 20, type: !232, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !145)
!930 = !DILocation(line: 24, column: 17, scope: !929)
!931 = !DILocation(line: 25, column: 11, scope: !929)
!932 = !DILocation(line: 26, column: 12, scope: !929)
!933 = !DILocation(line: 26, column: 17, scope: !929)
!934 = !DILocation(line: 28, column: 5, scope: !929)
!935 = !DILocation(line: 29, column: 21, scope: !929)
!936 = !DILocation(line: 29, column: 23, scope: !929)
!937 = !DILocation(line: 29, column: 28, scope: !929)
!938 = !DILocation(line: 29, column: 5, scope: !929)
!939 = distinct !DISubprogram(name: "__modsi3", scope: !80, file: !80, line: 20, type: !232, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !145)
!940 = !DILocation(line: 22, column: 16, scope: !939)
!941 = !DILocation(line: 22, column: 31, scope: !939)
!942 = !DILocation(line: 22, column: 14, scope: !939)
!943 = !DILocation(line: 22, column: 5, scope: !939)
!944 = distinct !DISubprogram(name: "__mulvdi3", scope: !84, file: !84, line: 22, type: !232, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !145)
!945 = !DILocation(line: 27, column: 11, scope: !944)
!946 = !DILocation(line: 27, column: 9, scope: !944)
!947 = !DILocation(line: 29, column: 15, scope: !944)
!948 = !DILocation(line: 29, column: 20, scope: !944)
!949 = !DILocation(line: 29, column: 25, scope: !944)
!950 = !DILocation(line: 29, column: 13, scope: !944)
!951 = !DILocation(line: 30, column: 13, scope: !944)
!952 = !DILocation(line: 31, column: 9, scope: !944)
!953 = !DILocation(line: 33, column: 11, scope: !944)
!954 = !DILocation(line: 33, column: 9, scope: !944)
!955 = !DILocation(line: 35, column: 15, scope: !944)
!956 = !DILocation(line: 35, column: 20, scope: !944)
!957 = !DILocation(line: 35, column: 25, scope: !944)
!958 = !DILocation(line: 35, column: 13, scope: !944)
!959 = !DILocation(line: 36, column: 13, scope: !944)
!960 = !DILocation(line: 37, column: 9, scope: !944)
!961 = !DILocation(line: 39, column: 19, scope: !944)
!962 = !DILocation(line: 40, column: 23, scope: !944)
!963 = !DILocation(line: 40, column: 29, scope: !944)
!964 = !DILocation(line: 41, column: 19, scope: !944)
!965 = !DILocation(line: 42, column: 23, scope: !944)
!966 = !DILocation(line: 42, column: 29, scope: !944)
!967 = !DILocation(line: 43, column: 15, scope: !944)
!968 = !DILocation(line: 43, column: 19, scope: !944)
!969 = !DILocation(line: 43, column: 28, scope: !944)
!970 = !DILocation(line: 43, column: 9, scope: !944)
!971 = !DILocation(line: 44, column: 9, scope: !944)
!972 = !DILocation(line: 45, column: 12, scope: !944)
!973 = !DILocation(line: 45, column: 9, scope: !944)
!974 = !DILocation(line: 47, column: 25, scope: !944)
!975 = !DILocation(line: 47, column: 19, scope: !944)
!976 = !DILocation(line: 47, column: 13, scope: !944)
!977 = !DILocation(line: 48, column: 13, scope: !944)
!978 = !DILocation(line: 49, column: 5, scope: !944)
!979 = !DILocation(line: 52, column: 27, scope: !944)
!980 = !DILocation(line: 52, column: 25, scope: !944)
!981 = !DILocation(line: 52, column: 19, scope: !944)
!982 = !DILocation(line: 52, column: 13, scope: !944)
!983 = !DILocation(line: 53, column: 13, scope: !944)
!984 = !DILocation(line: 55, column: 5, scope: !944)
!985 = !DILocation(line: 0, scope: !944)
!986 = !DILocation(line: 56, column: 1, scope: !944)
!987 = distinct !DISubprogram(name: "__mulvsi3", scope: !86, file: !86, line: 22, type: !232, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !85, retainedNodes: !145)
!988 = !DILocation(line: 27, column: 11, scope: !987)
!989 = !DILocation(line: 27, column: 9, scope: !987)
!990 = !DILocation(line: 29, column: 15, scope: !987)
!991 = !DILocation(line: 29, column: 20, scope: !987)
!992 = !DILocation(line: 29, column: 25, scope: !987)
!993 = !DILocation(line: 29, column: 13, scope: !987)
!994 = !DILocation(line: 30, column: 13, scope: !987)
!995 = !DILocation(line: 31, column: 9, scope: !987)
!996 = !DILocation(line: 33, column: 11, scope: !987)
!997 = !DILocation(line: 33, column: 9, scope: !987)
!998 = !DILocation(line: 35, column: 15, scope: !987)
!999 = !DILocation(line: 35, column: 20, scope: !987)
!1000 = !DILocation(line: 35, column: 25, scope: !987)
!1001 = !DILocation(line: 35, column: 13, scope: !987)
!1002 = !DILocation(line: 36, column: 13, scope: !987)
!1003 = !DILocation(line: 37, column: 9, scope: !987)
!1004 = !DILocation(line: 39, column: 19, scope: !987)
!1005 = !DILocation(line: 40, column: 23, scope: !987)
!1006 = !DILocation(line: 40, column: 29, scope: !987)
!1007 = !DILocation(line: 41, column: 19, scope: !987)
!1008 = !DILocation(line: 42, column: 23, scope: !987)
!1009 = !DILocation(line: 42, column: 29, scope: !987)
!1010 = !DILocation(line: 43, column: 15, scope: !987)
!1011 = !DILocation(line: 43, column: 19, scope: !987)
!1012 = !DILocation(line: 43, column: 28, scope: !987)
!1013 = !DILocation(line: 43, column: 9, scope: !987)
!1014 = !DILocation(line: 44, column: 9, scope: !987)
!1015 = !DILocation(line: 45, column: 12, scope: !987)
!1016 = !DILocation(line: 45, column: 9, scope: !987)
!1017 = !DILocation(line: 47, column: 25, scope: !987)
!1018 = !DILocation(line: 47, column: 19, scope: !987)
!1019 = !DILocation(line: 47, column: 13, scope: !987)
!1020 = !DILocation(line: 48, column: 13, scope: !987)
!1021 = !DILocation(line: 49, column: 5, scope: !987)
!1022 = !DILocation(line: 52, column: 27, scope: !987)
!1023 = !DILocation(line: 52, column: 25, scope: !987)
!1024 = !DILocation(line: 52, column: 19, scope: !987)
!1025 = !DILocation(line: 52, column: 13, scope: !987)
!1026 = !DILocation(line: 53, column: 13, scope: !987)
!1027 = !DILocation(line: 55, column: 5, scope: !987)
!1028 = !DILocation(line: 0, scope: !987)
!1029 = !DILocation(line: 56, column: 1, scope: !987)
!1030 = distinct !DISubprogram(name: "__paritydi2", scope: !90, file: !90, line: 20, type: !232, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !145)
!1031 = !DILocation(line: 23, column: 7, scope: !1030)
!1032 = !DILocation(line: 23, column: 11, scope: !1030)
!1033 = !DILocation(line: 24, column: 26, scope: !1030)
!1034 = !DILocation(line: 24, column: 28, scope: !1030)
!1035 = !DILocation(line: 24, column: 39, scope: !1030)
!1036 = !DILocation(line: 24, column: 33, scope: !1030)
!1037 = !DILocation(line: 24, column: 12, scope: !1030)
!1038 = !DILocation(line: 24, column: 5, scope: !1030)
!1039 = distinct !DISubprogram(name: "__paritysi2", scope: !92, file: !92, line: 20, type: !232, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !91, retainedNodes: !145)
!1040 = !DILocation(line: 23, column: 12, scope: !1039)
!1041 = !DILocation(line: 23, column: 7, scope: !1039)
!1042 = !DILocation(line: 24, column: 12, scope: !1039)
!1043 = !DILocation(line: 24, column: 7, scope: !1039)
!1044 = !DILocation(line: 25, column: 12, scope: !1039)
!1045 = !DILocation(line: 25, column: 7, scope: !1039)
!1046 = !DILocation(line: 26, column: 26, scope: !1039)
!1047 = !DILocation(line: 26, column: 20, scope: !1039)
!1048 = !DILocation(line: 26, column: 34, scope: !1039)
!1049 = !DILocation(line: 26, column: 5, scope: !1039)
!1050 = distinct !DISubprogram(name: "__popcountdi2", scope: !96, file: !96, line: 20, type: !232, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !95, retainedNodes: !145)
!1051 = !DILocation(line: 23, column: 20, scope: !1050)
!1052 = !DILocation(line: 23, column: 26, scope: !1050)
!1053 = !DILocation(line: 23, column: 13, scope: !1050)
!1054 = !DILocation(line: 25, column: 15, scope: !1050)
!1055 = !DILocation(line: 25, column: 21, scope: !1050)
!1056 = !DILocation(line: 25, column: 52, scope: !1050)
!1057 = !DILocation(line: 25, column: 46, scope: !1050)
!1058 = !DILocation(line: 27, column: 20, scope: !1050)
!1059 = !DILocation(line: 27, column: 14, scope: !1050)
!1060 = !DILocation(line: 27, column: 27, scope: !1050)
!1061 = !DILocation(line: 29, column: 34, scope: !1050)
!1062 = !DILocation(line: 29, column: 28, scope: !1050)
!1063 = !DILocation(line: 29, column: 16, scope: !1050)
!1064 = !DILocation(line: 32, column: 16, scope: !1050)
!1065 = !DILocation(line: 32, column: 11, scope: !1050)
!1066 = !DILocation(line: 35, column: 20, scope: !1050)
!1067 = !DILocation(line: 35, column: 15, scope: !1050)
!1068 = !DILocation(line: 35, column: 27, scope: !1050)
!1069 = !DILocation(line: 35, column: 5, scope: !1050)
!1070 = distinct !DISubprogram(name: "__popcountsi2", scope: !98, file: !98, line: 20, type: !232, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !97, retainedNodes: !145)
!1071 = !DILocation(line: 23, column: 17, scope: !1070)
!1072 = !DILocation(line: 23, column: 23, scope: !1070)
!1073 = !DILocation(line: 23, column: 11, scope: !1070)
!1074 = !DILocation(line: 25, column: 13, scope: !1070)
!1075 = !DILocation(line: 25, column: 19, scope: !1070)
!1076 = !DILocation(line: 25, column: 38, scope: !1070)
!1077 = !DILocation(line: 25, column: 33, scope: !1070)
!1078 = !DILocation(line: 27, column: 17, scope: !1070)
!1079 = !DILocation(line: 27, column: 12, scope: !1070)
!1080 = !DILocation(line: 27, column: 24, scope: !1070)
!1081 = !DILocation(line: 29, column: 17, scope: !1070)
!1082 = !DILocation(line: 29, column: 12, scope: !1070)
!1083 = !DILocation(line: 32, column: 20, scope: !1070)
!1084 = !DILocation(line: 32, column: 15, scope: !1070)
!1085 = !DILocation(line: 32, column: 27, scope: !1070)
!1086 = !DILocation(line: 32, column: 5, scope: !1070)
!1087 = distinct !DISubprogram(name: "__subvdi3", scope: !102, file: !102, line: 22, type: !232, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !145)
!1088 = !DILocation(line: 24, column: 27, scope: !1087)
!1089 = !DILocation(line: 25, column: 11, scope: !1087)
!1090 = !DILocation(line: 25, column: 9, scope: !1087)
!1091 = !DILocation(line: 27, column: 15, scope: !1087)
!1092 = !DILocation(line: 27, column: 13, scope: !1087)
!1093 = !DILocation(line: 28, column: 13, scope: !1087)
!1094 = !DILocation(line: 29, column: 5, scope: !1087)
!1095 = !DILocation(line: 32, column: 15, scope: !1087)
!1096 = !DILocation(line: 32, column: 13, scope: !1087)
!1097 = !DILocation(line: 33, column: 13, scope: !1087)
!1098 = !DILocation(line: 35, column: 5, scope: !1087)
!1099 = distinct !DISubprogram(name: "__subvsi3", scope: !104, file: !104, line: 22, type: !232, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !145)
!1100 = !DILocation(line: 24, column: 27, scope: !1099)
!1101 = !DILocation(line: 25, column: 11, scope: !1099)
!1102 = !DILocation(line: 25, column: 9, scope: !1099)
!1103 = !DILocation(line: 27, column: 15, scope: !1099)
!1104 = !DILocation(line: 27, column: 13, scope: !1099)
!1105 = !DILocation(line: 28, column: 13, scope: !1099)
!1106 = !DILocation(line: 29, column: 5, scope: !1099)
!1107 = !DILocation(line: 32, column: 15, scope: !1099)
!1108 = !DILocation(line: 32, column: 13, scope: !1099)
!1109 = !DILocation(line: 33, column: 13, scope: !1099)
!1110 = !DILocation(line: 35, column: 5, scope: !1099)
!1111 = distinct !DISubprogram(name: "__ucmpdi2", scope: !108, file: !108, line: 23, type: !232, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !107, retainedNodes: !145)
!1112 = !DILocation(line: 26, column: 7, scope: !1111)
!1113 = !DILocation(line: 26, column: 11, scope: !1111)
!1114 = !DILocation(line: 28, column: 7, scope: !1111)
!1115 = !DILocation(line: 28, column: 11, scope: !1111)
!1116 = !DILocation(line: 29, column: 11, scope: !1111)
!1117 = !DILocation(line: 29, column: 13, scope: !1111)
!1118 = !DILocation(line: 29, column: 22, scope: !1111)
!1119 = !DILocation(line: 29, column: 24, scope: !1111)
!1120 = !DILocation(line: 29, column: 18, scope: !1111)
!1121 = !DILocation(line: 29, column: 9, scope: !1111)
!1122 = !DILocation(line: 30, column: 9, scope: !1111)
!1123 = !DILocation(line: 31, column: 11, scope: !1111)
!1124 = !DILocation(line: 31, column: 13, scope: !1111)
!1125 = !DILocation(line: 31, column: 22, scope: !1111)
!1126 = !DILocation(line: 31, column: 24, scope: !1111)
!1127 = !DILocation(line: 31, column: 18, scope: !1111)
!1128 = !DILocation(line: 31, column: 9, scope: !1111)
!1129 = !DILocation(line: 32, column: 9, scope: !1111)
!1130 = !DILocation(line: 33, column: 13, scope: !1111)
!1131 = !DILocation(line: 33, column: 23, scope: !1111)
!1132 = !DILocation(line: 33, column: 17, scope: !1111)
!1133 = !DILocation(line: 33, column: 9, scope: !1111)
!1134 = !DILocation(line: 34, column: 9, scope: !1111)
!1135 = !DILocation(line: 35, column: 13, scope: !1111)
!1136 = !DILocation(line: 35, column: 23, scope: !1111)
!1137 = !DILocation(line: 35, column: 17, scope: !1111)
!1138 = !DILocation(line: 35, column: 9, scope: !1111)
!1139 = !DILocation(line: 36, column: 9, scope: !1111)
!1140 = !DILocation(line: 37, column: 5, scope: !1111)
!1141 = !DILocation(line: 0, scope: !1111)
!1142 = !DILocation(line: 38, column: 1, scope: !1111)
!1143 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !108, file: !108, line: 46, type: !232, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !107, retainedNodes: !145)
!1144 = !DILocation(line: 48, column: 9, scope: !1143)
!1145 = !DILocation(line: 48, column: 25, scope: !1143)
!1146 = !DILocation(line: 48, column: 2, scope: !1143)
!1147 = distinct !DISubprogram(name: "__udivdi3", scope: !112, file: !112, line: 20, type: !232, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !111, retainedNodes: !145)
!1148 = !DILocation(line: 22, column: 12, scope: !1147)
!1149 = !DILocation(line: 22, column: 5, scope: !1147)
!1150 = distinct !DISubprogram(name: "__udivmodsi4", scope: !116, file: !116, line: 20, type: !232, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !145)
!1151 = !DILocation(line: 22, column: 14, scope: !1150)
!1152 = !DILocation(line: 23, column: 16, scope: !1150)
!1153 = !DILocation(line: 23, column: 12, scope: !1150)
!1154 = !DILocation(line: 23, column: 8, scope: !1150)
!1155 = !DILocation(line: 24, column: 3, scope: !1150)
!1156 = distinct !DISubprogram(name: "__udivsi3", scope: !120, file: !120, line: 25, type: !232, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !145)
!1157 = !DILocation(line: 32, column: 11, scope: !1156)
!1158 = !DILocation(line: 32, column: 9, scope: !1156)
!1159 = !DILocation(line: 33, column: 9, scope: !1156)
!1160 = !DILocation(line: 34, column: 11, scope: !1156)
!1161 = !DILocation(line: 34, column: 9, scope: !1156)
!1162 = !DILocation(line: 35, column: 9, scope: !1156)
!1163 = !DILocation(line: 36, column: 10, scope: !1156)
!1164 = !DILocation(line: 36, column: 29, scope: !1156)
!1165 = !DILocation(line: 36, column: 27, scope: !1156)
!1166 = !DILocation(line: 38, column: 12, scope: !1156)
!1167 = !DILocation(line: 38, column: 9, scope: !1156)
!1168 = !DILocation(line: 39, column: 9, scope: !1156)
!1169 = !DILocation(line: 40, column: 12, scope: !1156)
!1170 = !DILocation(line: 40, column: 9, scope: !1156)
!1171 = !DILocation(line: 41, column: 9, scope: !1156)
!1172 = !DILocation(line: 42, column: 5, scope: !1156)
!1173 = !DILocation(line: 45, column: 28, scope: !1156)
!1174 = !DILocation(line: 45, column: 11, scope: !1156)
!1175 = !DILocation(line: 46, column: 11, scope: !1156)
!1176 = !DILocation(line: 48, column: 5, scope: !1156)
!1177 = !DILocation(line: 0, scope: !1156)
!1178 = !DILocation(line: 48, column: 15, scope: !1156)
!1179 = !DILocation(line: 51, column: 22, scope: !1156)
!1180 = !DILocation(line: 60, column: 41, scope: !1156)
!1181 = !DILocation(line: 63, column: 5, scope: !1156)
!1182 = !DILocation(line: 62, column: 16, scope: !1156)
!1183 = !DILocation(line: 62, column: 11, scope: !1156)
!1184 = !DILocation(line: 61, column: 19, scope: !1156)
!1185 = !DILocation(line: 52, column: 16, scope: !1156)
!1186 = !DILocation(line: 52, column: 22, scope: !1156)
!1187 = !DILocation(line: 48, column: 20, scope: !1156)
!1188 = distinct !{!1188, !1176, !1181, !181}
!1189 = !DILocation(line: 64, column: 12, scope: !1156)
!1190 = !DILocation(line: 64, column: 18, scope: !1156)
!1191 = !DILocation(line: 65, column: 5, scope: !1156)
!1192 = !DILocation(line: 66, column: 1, scope: !1156)
!1193 = distinct !DISubprogram(name: "__umoddi3", scope: !124, file: !124, line: 20, type: !232, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !145)
!1194 = !DILocation(line: 23, column: 5, scope: !1193)
!1195 = !DILocation(line: 24, column: 12, scope: !1193)
!1196 = !DILocation(line: 24, column: 5, scope: !1193)
!1197 = distinct !DISubprogram(name: "__umodsi3", scope: !126, file: !126, line: 20, type: !232, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !125, retainedNodes: !145)
!1198 = !DILocation(line: 22, column: 16, scope: !1197)
!1199 = !DILocation(line: 22, column: 32, scope: !1197)
!1200 = !DILocation(line: 22, column: 14, scope: !1197)
!1201 = !DILocation(line: 22, column: 5, scope: !1197)
!1202 = distinct !DISubprogram(name: "memcpy", scope: !130, file: !130, line: 3, type: !232, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !145)
!1203 = !DILocation(line: 8, column: 6, scope: !1202)
!1204 = !DILocation(line: 0, scope: !1202)
!1205 = !DILocation(line: 8, column: 19, scope: !1202)
!1206 = !DILocation(line: 8, column: 2, scope: !1202)
!1207 = !DILocation(line: 9, column: 21, scope: !1202)
!1208 = !DILocation(line: 9, column: 3, scope: !1202)
!1209 = !DILocation(line: 9, column: 19, scope: !1202)
!1210 = !DILocation(line: 10, column: 2, scope: !1202)
!1211 = !DILocation(line: 8, column: 26, scope: !1202)
!1212 = distinct !{!1212, !1206, !1210, !181}
!1213 = !DILocation(line: 11, column: 1, scope: !1202)
!1214 = distinct !DISubprogram(name: "memset", scope: !130, file: !130, line: 13, type: !232, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !145)
!1215 = !DILocation(line: 17, column: 6, scope: !1214)
!1216 = !DILocation(line: 0, scope: !1214)
!1217 = !DILocation(line: 17, column: 19, scope: !1214)
!1218 = !DILocation(line: 17, column: 2, scope: !1214)
!1219 = !DILocation(line: 18, column: 13, scope: !1214)
!1220 = !DILocation(line: 18, column: 3, scope: !1214)
!1221 = !DILocation(line: 18, column: 11, scope: !1214)
!1222 = !DILocation(line: 19, column: 2, scope: !1214)
!1223 = !DILocation(line: 17, column: 26, scope: !1214)
!1224 = distinct !{!1224, !1218, !1222, !181}
!1225 = !DILocation(line: 20, column: 2, scope: !1214)
