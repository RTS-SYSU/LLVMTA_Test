; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%union.dwords = type { i64 }
%struct.anon = type { i32, i32 }

@cover_cnt = internal global i32 0, align 4, !dbg !0
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
define dso_local arm_aapcs_vfpcc void @cover_init() #0 !dbg !131 {
entry:
  store volatile i32 0, i32* @cover_cnt, align 4, !dbg !135
  ret void, !dbg !136
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cover_return() #0 !dbg !137 {
entry:
  %0 = load volatile i32, i32* @cover_cnt, align 4, !dbg !140
  %sub = add nsw i32 %0, -180, !dbg !141
  ret i32 %sub, !dbg !142
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @increment_c(i32 noundef %i) #0 !dbg !143 {
entry:
  call void @llvm.dbg.value(metadata i32 %i, metadata !146, metadata !DIExpression()), !dbg !147
  %inc = add nsw i32 %i, 1, !dbg !148
  call void @llvm.dbg.value(metadata i32 %inc, metadata !146, metadata !DIExpression()), !dbg !147
  ret i32 %inc, !dbg !149
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cover_swi120(i32 noundef %c) #0 !dbg !150 {
entry:
  call void @llvm.dbg.value(metadata i32 %c, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i32 0, metadata !153, metadata !DIExpression()), !dbg !152
  br label %for.cond, !dbg !154

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !156
  %c.addr.0 = phi i32 [ %c, %entry ], [ %call, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %c.addr.0, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !153, metadata !DIExpression()), !dbg !152
  %exitcond.not = icmp eq i32 %i.0, 1, !dbg !157
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !159

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @increment_c(i32 noundef %c.addr.0) #4, !dbg !160
  call void @llvm.dbg.value(metadata i32 %call, metadata !151, metadata !DIExpression()), !dbg !152
  br label %for.inc, !dbg !162

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !163
  call void @llvm.dbg.value(metadata i32 %inc, metadata !153, metadata !DIExpression()), !dbg !152
  br label %for.cond, !dbg !164, !llvm.loop !165

for.end:                                          ; preds = %for.cond
  ret i32 %c.addr.0, !dbg !168
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cover_swi50(i32 noundef %c) #0 !dbg !169 {
entry:
  call void @llvm.dbg.value(metadata i32 %c, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata i32 0, metadata !172, metadata !DIExpression()), !dbg !171
  br label %for.cond, !dbg !173

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !175
  %c.addr.0 = phi i32 [ %c, %entry ], [ %call, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %c.addr.0, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !172, metadata !DIExpression()), !dbg !171
  %exitcond.not = icmp eq i32 %i.0, 1, !dbg !176
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !178

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @increment_c(i32 noundef %c.addr.0) #4, !dbg !179
  call void @llvm.dbg.value(metadata i32 %call, metadata !170, metadata !DIExpression()), !dbg !171
  br label %for.inc, !dbg !181

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !182
  call void @llvm.dbg.value(metadata i32 %inc, metadata !172, metadata !DIExpression()), !dbg !171
  br label %for.cond, !dbg !183, !llvm.loop !184

for.end:                                          ; preds = %for.cond
  ret i32 %c.addr.0, !dbg !186
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cover_swi10(i32 noundef %c) #0 !dbg !187 {
entry:
  call void @llvm.dbg.value(metadata i32 %c, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i32 0, metadata !190, metadata !DIExpression()), !dbg !189
  br label %for.cond, !dbg !191

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !193
  %c.addr.0 = phi i32 [ %c, %entry ], [ %call, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %c.addr.0, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !190, metadata !DIExpression()), !dbg !189
  %exitcond.not = icmp eq i32 %i.0, 1, !dbg !194
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !196

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @increment_c(i32 noundef %c.addr.0) #4, !dbg !197
  call void @llvm.dbg.value(metadata i32 %call, metadata !188, metadata !DIExpression()), !dbg !189
  br label %for.inc, !dbg !199

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !200
  call void @llvm.dbg.value(metadata i32 %inc, metadata !190, metadata !DIExpression()), !dbg !189
  br label %for.cond, !dbg !201, !llvm.loop !202

for.end:                                          ; preds = %for.cond
  ret i32 %c.addr.0, !dbg !204
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cover_main() #0 !dbg !205 {
entry:
  %0 = load volatile i32, i32* @cover_cnt, align 4, !dbg !206
  %call = call arm_aapcs_vfpcc i32 @cover_swi10(i32 noundef %0) #4, !dbg !207
  store volatile i32 %call, i32* @cover_cnt, align 4, !dbg !208
  %1 = load volatile i32, i32* @cover_cnt, align 4, !dbg !209
  %call1 = call arm_aapcs_vfpcc i32 @cover_swi50(i32 noundef %1) #4, !dbg !210
  store volatile i32 %call1, i32* @cover_cnt, align 4, !dbg !211
  %2 = load volatile i32, i32* @cover_cnt, align 4, !dbg !212
  %call2 = call arm_aapcs_vfpcc i32 @cover_swi120(i32 noundef %2) #4, !dbg !213
  store volatile i32 %call2, i32* @cover_cnt, align 4, !dbg !214
  ret void, !dbg !215
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !216 {
entry:
  call arm_aapcs_vfpcc void @cover_init() #4, !dbg !217
  call arm_aapcs_vfpcc void @cover_main() #4, !dbg !218
  %call = call arm_aapcs_vfpcc i32 @cover_return() #4, !dbg !219
  ret i32 %call, !dbg !220
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #1 !dbg !221 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !223
  br i1 %cmp, label %if.then, label %if.end, !dbg !224

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !225
  unreachable, !dbg !225

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !226
  ret i64 %0, !dbg !227
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #2 !dbg !228 {
entry:
  unreachable, !dbg !229
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #1 !dbg !230 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !231
  br i1 %cmp, label %if.then, label %if.end, !dbg !232

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !233
  unreachable, !dbg !233

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !234
  ret i32 %0, !dbg !235
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !236 {
entry:
  %add = add i64 %a, %b, !dbg !237
  %cmp = icmp sgt i64 %b, -1, !dbg !238
  br i1 %cmp, label %if.then, label %if.else, !dbg !239

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !240
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !241

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !242
  unreachable, !dbg !242

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !243

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !244
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !245

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !246
  unreachable, !dbg !246

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !247
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !248 {
entry:
  %add = add i32 %a, %b, !dbg !249
  %cmp = icmp sgt i32 %b, -1, !dbg !250
  br i1 %cmp, label %if.then, label %if.else, !dbg !251

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !252
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !253

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !254
  unreachable, !dbg !254

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !255

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !256
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !257

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !258
  unreachable, !dbg !258

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !259
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #1 !dbg !260 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !261
  store i64 %a, i64* %all, align 8, !dbg !262
  %and = and i32 %b, 32, !dbg !263
  %tobool.not = icmp eq i32 %and, 0, !dbg !263
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !264

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !265
  store i32 0, i32* %low, align 8, !dbg !266
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !267
  %0 = load i32, i32* %low2, align 8, !dbg !267
  %sub = add nsw i32 %b, -32, !dbg !268
  %shl = shl i32 %0, %sub, !dbg !269
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !270
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !271
  store i32 %shl, i32* %high, align 4, !dbg !272
  br label %if.end18, !dbg !273

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !274
  br i1 %cmp, label %if.then4, label %if.end, !dbg !275

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !276

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !277
  %1 = load i32, i32* %low6, align 8, !dbg !277
  %shl7 = shl i32 %1, %b, !dbg !278
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !279
  store i32 %shl7, i32* %low9, align 8, !dbg !280
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !281
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !282
  %2 = load i32, i32* %high11, align 4, !dbg !282
  %shl12 = shl i32 %2, %b, !dbg !283
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !284
  %3 = load i32, i32* %low14, align 8, !dbg !284
  %sub15 = sub nsw i32 32, %b, !dbg !285
  %shr = lshr i32 %3, %sub15, !dbg !286
  %or = or i32 %shl12, %shr, !dbg !287
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !288
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !289
  store i32 %or, i32* %high17, align 4, !dbg !290
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !291
  %4 = load i64, i64* %all19, align 8, !dbg !291
  br label %return, !dbg !292

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !293
  ret i64 %retval.0, !dbg !294
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !295 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !296
  store i64 %a, i64* %all, align 8, !dbg !297
  %and = and i32 %b, 32, !dbg !298
  %tobool.not = icmp eq i32 %and, 0, !dbg !298
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !299

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !300
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !301
  %0 = load i32, i32* %high, align 4, !dbg !301
  %shr = ashr i32 %0, 31, !dbg !302
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !303
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !304
  store i32 %shr, i32* %high2, align 4, !dbg !305
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !306
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !307
  %1 = load i32, i32* %high4, align 4, !dbg !307
  %sub = add nsw i32 %b, -32, !dbg !308
  %shr5 = ashr i32 %1, %sub, !dbg !309
  %low = bitcast %union.dwords* %result to i32*, !dbg !310
  store i32 %shr5, i32* %low, align 8, !dbg !311
  br label %if.end21, !dbg !312

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !313
  br i1 %cmp, label %if.then7, label %if.end, !dbg !314

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !315

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !316
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !317
  %2 = load i32, i32* %high9, align 4, !dbg !317
  %shr10 = ashr i32 %2, %b, !dbg !318
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !319
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !320
  store i32 %shr10, i32* %high12, align 4, !dbg !321
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !322
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !323
  %3 = load i32, i32* %high14, align 4, !dbg !323
  %sub15 = sub nsw i32 32, %b, !dbg !324
  %shl = shl i32 %3, %sub15, !dbg !325
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !326
  %4 = load i32, i32* %low17, align 8, !dbg !326
  %shr18 = lshr i32 %4, %b, !dbg !327
  %or = or i32 %shl, %shr18, !dbg !328
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !329
  store i32 %or, i32* %low20, align 8, !dbg !330
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !331
  %5 = load i64, i64* %all22, align 8, !dbg !331
  br label %return, !dbg !332

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !333
  ret i64 %retval.0, !dbg !334
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #1 !dbg !335 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !336
  store i64 %a, i64* %all, align 8, !dbg !337
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !338
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !339
  %0 = load i32, i32* %high, align 4, !dbg !339
  %cmp = icmp eq i32 %0, 0, !dbg !340
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !341
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !342
  %1 = load i32, i32* %high2, align 4, !dbg !342
  %low = bitcast %union.dwords* %x to i32*, !dbg !343
  %2 = load i32, i32* %low, align 8, !dbg !343
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !344
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !345, !range !346
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !347
  %add = add nuw nsw i32 %4, %and5, !dbg !348
  ret i32 %add, !dbg !349
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #1 !dbg !350 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !351
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !352
  %sub = sub nuw nsw i32 16, %shl, !dbg !353
  %shr = lshr i32 %a, %sub, !dbg !354
  %and1 = and i32 %shr, 65280, !dbg !355
  %cmp2 = icmp eq i32 %and1, 0, !dbg !356
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !357
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !358
  %shr6 = lshr i32 %shr, %sub5, !dbg !359
  %add = or i32 %shl, %shl4, !dbg !360
  %and7 = and i32 %shr6, 240, !dbg !361
  %cmp8 = icmp eq i32 %and7, 0, !dbg !362
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !363
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !364
  %shr12 = lshr i32 %shr6, %sub11, !dbg !365
  %add13 = or i32 %add, %shl10, !dbg !366
  %and14 = and i32 %shr12, 12, !dbg !367
  %cmp15 = icmp eq i32 %and14, 0, !dbg !368
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !369
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !370
  %shr19 = lshr i32 %shr12, %sub18, !dbg !371
  %add20 = or i32 %add13, %shl17, !dbg !372
  %sub21 = sub i32 2, %shr19, !dbg !373
  %and22 = lshr i32 %shr19, 1, !dbg !374
  %0 = or i32 %and22, -2, !dbg !374
  %.neg = add nsw i32 %0, 1, !dbg !374
  %and26 = and i32 %sub21, %.neg, !dbg !375
  %add27 = add i32 %add20, %and26, !dbg !376
  ret i32 %add27, !dbg !377
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !378 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !379
  store i64 %a, i64* %all, align 8, !dbg !380
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !381
  store i64 %b, i64* %all1, align 8, !dbg !382
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !383
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !384
  %0 = load i32, i32* %high, align 4, !dbg !384
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !385
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !386
  %1 = load i32, i32* %high3, align 4, !dbg !386
  %cmp = icmp slt i32 %0, %1, !dbg !387
  br i1 %cmp, label %if.then, label %if.end, !dbg !388

if.then:                                          ; preds = %entry
  br label %return, !dbg !389

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !390
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !391
  %2 = load i32, i32* %high5, align 4, !dbg !391
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !392
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !393
  %3 = load i32, i32* %high7, align 4, !dbg !393
  %cmp8 = icmp sgt i32 %2, %3, !dbg !394
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !395

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !396

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !397
  %4 = load i32, i32* %low, align 8, !dbg !397
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !398
  %5 = load i32, i32* %low13, align 8, !dbg !398
  %cmp14 = icmp ult i32 %4, %5, !dbg !399
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !400

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !401

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !402
  %6 = load i32, i32* %low18, align 8, !dbg !402
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !403
  %7 = load i32, i32* %low20, align 8, !dbg !403
  %cmp21 = icmp ugt i32 %6, %7, !dbg !404
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !405

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !406

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !407

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !408
  ret i32 %retval.0, !dbg !409
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !410 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !411
  %sub = add nsw i32 %call, -1, !dbg !412
  ret i32 %sub, !dbg !413
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #1 !dbg !414 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !415
  store i64 %a, i64* %all, align 8, !dbg !416
  %low = bitcast %union.dwords* %x to i32*, !dbg !417
  %0 = load i32, i32* %low, align 8, !dbg !417
  %cmp = icmp eq i32 %0, 0, !dbg !418
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !419
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !420
  %1 = load i32, i32* %high, align 4, !dbg !420
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !421
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !422, !range !346
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !423
  %add = add nuw nsw i32 %3, %and5, !dbg !424
  ret i32 %add, !dbg !425
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #1 !dbg !426 {
entry:
  %and = and i32 %a, 65535, !dbg !427
  %cmp = icmp eq i32 %and, 0, !dbg !428
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !429
  %shr = lshr i32 %a, %shl, !dbg !430
  %and1 = and i32 %shr, 255, !dbg !431
  %cmp2 = icmp eq i32 %and1, 0, !dbg !432
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !433
  %shr5 = lshr i32 %shr, %shl4, !dbg !434
  %add = or i32 %shl, %shl4, !dbg !435
  %and6 = and i32 %shr5, 15, !dbg !436
  %cmp7 = icmp eq i32 %and6, 0, !dbg !437
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !438
  %shr10 = lshr i32 %shr5, %shl9, !dbg !439
  %add11 = or i32 %add, %shl9, !dbg !440
  %and12 = and i32 %shr10, 3, !dbg !441
  %cmp13 = icmp eq i32 %and12, 0, !dbg !442
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !443
  %shr16 = lshr i32 %shr10, %shl15, !dbg !444
  %add18 = or i32 %add11, %shl15, !dbg !445
  %and17 = lshr i32 %shr16, 1, !dbg !446
  %shr19 = and i32 %and17, 1, !dbg !446
  %sub = sub nuw nsw i32 2, %shr19, !dbg !447
  %0 = or i32 %shr16, -2, !dbg !448
  %.neg = add nsw i32 %0, 1, !dbg !448
  %and24 = and i32 %sub, %.neg, !dbg !449
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !450
  ret i32 %add25, !dbg !451
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !452 {
entry:
  %shr = ashr i64 %a, 63, !dbg !453
  %shr1 = ashr i64 %b, 63, !dbg !454
  %xor = xor i64 %shr, %a, !dbg !455
  %sub = sub nsw i64 %xor, %shr, !dbg !456
  %xor2 = xor i64 %shr1, %b, !dbg !457
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !458
  %xor4 = xor i64 %shr, %shr1, !dbg !459
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !460
  %xor5 = xor i64 %call, %xor4, !dbg !461
  %sub6 = sub i64 %xor5, %xor4, !dbg !462
  ret i64 %sub6, !dbg !463
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !464 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !465
  store i64 %a, i64* %all, align 8, !dbg !466
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !467
  store i64 %b, i64* %all1, align 8, !dbg !468
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !469
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !470
  %0 = load i32, i32* %high, align 4, !dbg !470
  %cmp = icmp eq i32 %0, 0, !dbg !471
  br i1 %cmp, label %if.then, label %if.end23, !dbg !472

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !473
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !474
  %1 = load i32, i32* %high3, align 4, !dbg !474
  %cmp4 = icmp eq i32 %1, 0, !dbg !475
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !476

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !477
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !477

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !478
  %2 = load i32, i32* %low, align 8, !dbg !478
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !479
  %3 = load i32, i32* %low9, align 8, !dbg !479
  %rem10 = urem i32 %2, %3, !dbg !480
  %conv = zext i32 %rem10 to i64, !dbg !481
  store i64 %conv, i64* %rem, align 8, !dbg !482
  br label %if.end, !dbg !483

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !484
  %4 = load i32, i32* %low12, align 8, !dbg !484
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !485
  %5 = load i32, i32* %low14, align 8, !dbg !485
  %div = udiv i32 %4, %5, !dbg !486
  %conv15 = zext i32 %div to i64, !dbg !487
  br label %return, !dbg !488

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !489
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !489

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !490
  %6 = load i32, i32* %low20, align 8, !dbg !490
  %conv21 = zext i32 %6 to i64, !dbg !491
  store i64 %conv21, i64* %rem, align 8, !dbg !492
  br label %if.end22, !dbg !493

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !494

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !495
  %7 = load i32, i32* %low25, align 8, !dbg !495
  %cmp26 = icmp eq i32 %7, 0, !dbg !496
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !497

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !498
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !499
  %8 = load i32, i32* %high30, align 4, !dbg !499
  %cmp31 = icmp eq i32 %8, 0, !dbg !500
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !501

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !502
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !502

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !503
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !504
  %9 = load i32, i32* %high37, align 4, !dbg !504
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !505
  %10 = load i32, i32* %low39, align 8, !dbg !505
  %rem40 = urem i32 %9, %10, !dbg !506
  %conv41 = zext i32 %rem40 to i64, !dbg !507
  store i64 %conv41, i64* %rem, align 8, !dbg !508
  br label %if.end42, !dbg !509

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !510
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !511
  %11 = load i32, i32* %high44, align 4, !dbg !511
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !512
  %12 = load i32, i32* %low46, align 8, !dbg !512
  %div47 = udiv i32 %11, %12, !dbg !513
  %conv48 = zext i32 %div47 to i64, !dbg !514
  br label %return, !dbg !515

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !516
  %13 = load i32, i32* %low51, align 8, !dbg !516
  %cmp52 = icmp eq i32 %13, 0, !dbg !517
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !518

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !519
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !519

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !520
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !521
  %14 = load i32, i32* %high58, align 4, !dbg !521
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !522
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !523
  %15 = load i32, i32* %high60, align 4, !dbg !523
  %rem61 = urem i32 %14, %15, !dbg !524
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !525
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !526
  store i32 %rem61, i32* %high63, align 4, !dbg !527
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !528
  store i32 0, i32* %low65, align 8, !dbg !529
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !530
  %16 = load i64, i64* %all66, align 8, !dbg !530
  store i64 %16, i64* %rem, align 8, !dbg !531
  br label %if.end67, !dbg !532

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !533
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !534
  %17 = load i32, i32* %high69, align 4, !dbg !534
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !535
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !536
  %18 = load i32, i32* %high71, align 4, !dbg !536
  %div72 = udiv i32 %17, %18, !dbg !537
  %conv73 = zext i32 %div72 to i64, !dbg !538
  br label %return, !dbg !539

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !540
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !541
  %19 = load i32, i32* %high76, align 4, !dbg !541
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !542
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !543
  %20 = load i32, i32* %high78, align 4, !dbg !543
  %sub = add i32 %20, -1, !dbg !544
  %and = and i32 %19, %sub, !dbg !545
  %cmp79 = icmp eq i32 %and, 0, !dbg !546
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !547

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !548
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !548

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !549
  %21 = load i32, i32* %low85, align 8, !dbg !549
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !550
  store i32 %21, i32* %low87, align 8, !dbg !551
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !552
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !553
  %22 = load i32, i32* %high89, align 4, !dbg !553
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !554
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !555
  %23 = load i32, i32* %high91, align 4, !dbg !555
  %sub92 = add i32 %23, -1, !dbg !556
  %and93 = and i32 %22, %sub92, !dbg !557
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !558
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !559
  store i32 %and93, i32* %high95, align 4, !dbg !560
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !561
  %24 = load i64, i64* %all96, align 8, !dbg !561
  store i64 %24, i64* %rem, align 8, !dbg !562
  br label %if.end97, !dbg !563

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !564
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !565
  %25 = load i32, i32* %high99, align 4, !dbg !565
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !566
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !567
  %26 = load i32, i32* %high101, align 4, !dbg !567
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !568, !range !346
  %shr = lshr i32 %25, %27, !dbg !569
  %conv102 = zext i32 %shr to i64, !dbg !570
  br label %return, !dbg !571

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !572
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !573
  %28 = load i32, i32* %high105, align 4, !dbg !573
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !574, !range !346
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !575
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !576
  %30 = load i32, i32* %high107, align 4, !dbg !576
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !577, !range !346
  %sub108 = sub nsw i32 %29, %31, !dbg !578
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !579
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !580

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !581
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !581

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !582
  %32 = load i64, i64* %all114, align 8, !dbg !582
  store i64 %32, i64* %rem, align 8, !dbg !583
  br label %if.end115, !dbg !584

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !585

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !586
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !587
  store i32 0, i32* %low118, align 8, !dbg !588
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !589
  %33 = load i32, i32* %low120, align 8, !dbg !589
  %sub121 = sub nsw i32 31, %sub108, !dbg !590
  %shl = shl i32 %33, %sub121, !dbg !591
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !592
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !593
  store i32 %shl, i32* %high123, align 4, !dbg !594
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !595
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !596
  %34 = load i32, i32* %high125, align 4, !dbg !596
  %shr126 = lshr i32 %34, %inc, !dbg !597
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !598
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !599
  store i32 %shr126, i32* %high128, align 4, !dbg !600
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !601
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !602
  %35 = load i32, i32* %high130, align 4, !dbg !602
  %sub131 = sub nsw i32 31, %sub108, !dbg !603
  %shl132 = shl i32 %35, %sub131, !dbg !604
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !605
  %36 = load i32, i32* %low134, align 8, !dbg !605
  %shr135 = lshr i32 %36, %inc, !dbg !606
  %or = or i32 %shl132, %shr135, !dbg !607
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !608
  store i32 %or, i32* %low137, align 8, !dbg !609
  br label %if.end317, !dbg !610

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !611
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !612
  %37 = load i32, i32* %high139, align 4, !dbg !612
  %cmp140 = icmp eq i32 %37, 0, !dbg !613
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !614

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !615
  %38 = load i32, i32* %low144, align 8, !dbg !615
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !616, !range !346
  %cmp149 = icmp ult i32 %39, 2, !dbg !616
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !617

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !618
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !618

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !619
  %40 = load i32, i32* %low155, align 8, !dbg !619
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !620
  %41 = load i32, i32* %low157, align 8, !dbg !620
  %sub158 = add i32 %41, -1, !dbg !621
  %and159 = and i32 %40, %sub158, !dbg !622
  %conv160 = zext i32 %and159 to i64, !dbg !623
  store i64 %conv160, i64* %rem, align 8, !dbg !624
  br label %if.end161, !dbg !625

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !626
  %42 = load i32, i32* %low163, align 8, !dbg !626
  %cmp164 = icmp eq i32 %42, 1, !dbg !627
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !628

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !629
  %43 = load i64, i64* %all167, align 8, !dbg !629
  br label %return, !dbg !630

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !631
  %44 = load i32, i32* %low170, align 8, !dbg !631
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !632, !range !346
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !633
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !634
  %46 = load i32, i32* %high172, align 4, !dbg !634
  %shr173 = lshr i32 %46, %45, !dbg !635
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !636
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !637
  store i32 %shr173, i32* %high175, align 4, !dbg !638
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !639
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !640
  %47 = load i32, i32* %high177, align 4, !dbg !640
  %sub178 = sub nuw nsw i32 32, %45, !dbg !641
  %shl179 = shl i32 %47, %sub178, !dbg !642
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !643
  %48 = load i32, i32* %low181, align 8, !dbg !643
  %shr182 = lshr i32 %48, %45, !dbg !644
  %or183 = or i32 %shl179, %shr182, !dbg !645
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !646
  store i32 %or183, i32* %low185, align 8, !dbg !647
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !648
  %49 = load i64, i64* %all186, align 8, !dbg !648
  br label %return, !dbg !649

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !650
  %50 = load i32, i32* %low189, align 8, !dbg !650
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !651, !range !346
  %add = add nuw nsw i32 %51, 33, !dbg !652
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !653
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !654
  %52 = load i32, i32* %high191, align 4, !dbg !654
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !655, !range !346
  %sub192 = sub nsw i32 %add, %53, !dbg !656
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !657
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !658

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !659
  store i32 0, i32* %low197, align 8, !dbg !660
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !661
  %54 = load i32, i32* %low199, align 8, !dbg !661
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !662
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !663
  store i32 %54, i32* %high201, align 4, !dbg !664
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !665
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !666
  store i32 0, i32* %high203, align 4, !dbg !667
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !668
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !669
  %55 = load i32, i32* %high205, align 4, !dbg !669
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !670
  store i32 %55, i32* %low207, align 8, !dbg !671
  br label %if.end262, !dbg !672

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !673
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !674

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !675
  store i32 0, i32* %low213, align 8, !dbg !676
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !677
  %56 = load i32, i32* %low215, align 8, !dbg !677
  %sub216 = sub nsw i32 32, %sub192, !dbg !678
  %shl217 = shl i32 %56, %sub216, !dbg !679
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !680
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !681
  store i32 %shl217, i32* %high219, align 4, !dbg !682
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !683
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !684
  %57 = load i32, i32* %high221, align 4, !dbg !684
  %shr222 = lshr i32 %57, %sub192, !dbg !685
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !686
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !687
  store i32 %shr222, i32* %high224, align 4, !dbg !688
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !689
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !690
  %58 = load i32, i32* %high226, align 4, !dbg !690
  %sub227 = sub nsw i32 32, %sub192, !dbg !691
  %shl228 = shl i32 %58, %sub227, !dbg !692
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !693
  %59 = load i32, i32* %low230, align 8, !dbg !693
  %shr231 = lshr i32 %59, %sub192, !dbg !694
  %or232 = or i32 %shl228, %shr231, !dbg !695
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !696
  store i32 %or232, i32* %low234, align 8, !dbg !697
  br label %if.end261, !dbg !698

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !699
  %60 = load i32, i32* %low237, align 8, !dbg !699
  %sub238 = sub nsw i32 64, %sub192, !dbg !700
  %shl239 = shl i32 %60, %sub238, !dbg !701
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !702
  store i32 %shl239, i32* %low241, align 8, !dbg !703
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !704
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !705
  %61 = load i32, i32* %high243, align 4, !dbg !705
  %sub244 = sub nsw i32 64, %sub192, !dbg !706
  %shl245 = shl i32 %61, %sub244, !dbg !707
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !708
  %62 = load i32, i32* %low247, align 8, !dbg !708
  %sub248 = add nsw i32 %sub192, -32, !dbg !709
  %shr249 = lshr i32 %62, %sub248, !dbg !710
  %or250 = or i32 %shl245, %shr249, !dbg !711
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !712
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !713
  store i32 %or250, i32* %high252, align 4, !dbg !714
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !715
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !716
  store i32 0, i32* %high254, align 4, !dbg !717
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !718
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !719
  %63 = load i32, i32* %high256, align 4, !dbg !719
  %sub257 = add nsw i32 %sub192, -32, !dbg !720
  %shr258 = lshr i32 %63, %sub257, !dbg !721
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !722
  store i32 %shr258, i32* %low260, align 8, !dbg !723
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !724

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !725
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !726
  %64 = load i32, i32* %high265, align 4, !dbg !726
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !727, !range !346
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !728
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !729
  %66 = load i32, i32* %high267, align 4, !dbg !729
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !730, !range !346
  %sub268 = sub nsw i32 %65, %67, !dbg !731
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !732
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !733

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !734
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !734

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !735
  %68 = load i64, i64* %all274, align 8, !dbg !735
  store i64 %68, i64* %rem, align 8, !dbg !736
  br label %if.end275, !dbg !737

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !738

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !739
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !740
  store i32 0, i32* %low279, align 8, !dbg !741
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !742
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !743

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !744
  %69 = load i32, i32* %low284, align 8, !dbg !744
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !745
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !746
  store i32 %69, i32* %high286, align 4, !dbg !747
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !748
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !749
  store i32 0, i32* %high288, align 4, !dbg !750
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !751
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !752
  %70 = load i32, i32* %high290, align 4, !dbg !752
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !753
  store i32 %70, i32* %low292, align 8, !dbg !754
  br label %if.end315, !dbg !755

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !756
  %71 = load i32, i32* %low295, align 8, !dbg !756
  %sub296 = sub nsw i32 31, %sub268, !dbg !757
  %shl297 = shl i32 %71, %sub296, !dbg !758
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !759
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !760
  store i32 %shl297, i32* %high299, align 4, !dbg !761
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !762
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !763
  %72 = load i32, i32* %high301, align 4, !dbg !763
  %shr302 = lshr i32 %72, %inc277, !dbg !764
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !765
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !766
  store i32 %shr302, i32* %high304, align 4, !dbg !767
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !768
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !769
  %73 = load i32, i32* %high306, align 4, !dbg !769
  %sub307 = sub nsw i32 31, %sub268, !dbg !770
  %shl308 = shl i32 %73, %sub307, !dbg !771
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !772
  %74 = load i32, i32* %low310, align 8, !dbg !772
  %shr311 = lshr i32 %74, %inc277, !dbg !773
  %or312 = or i32 %shl308, %shr311, !dbg !774
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !775
  store i32 %or312, i32* %low314, align 8, !dbg !776
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !777
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !777
  br label %for.cond, !dbg !778

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !777
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !777
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !779
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !778

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !780
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !781
  %75 = load i32, i32* %high321, align 4, !dbg !781
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !782
  %76 = load i32, i32* %low324, align 8, !dbg !782
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !783
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !784
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !785
  store i32 %or326, i32* %high328, align 4, !dbg !786
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !787
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !788
  %77 = load i32, i32* %high333, align 4, !dbg !788
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !789
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !790
  store i32 %or335, i32* %low337, align 8, !dbg !791
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !792
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !793
  %78 = load i32, i32* %high339, align 4, !dbg !793
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !794
  %79 = load i32, i32* %low342, align 8, !dbg !794
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !795
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !796
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !797
  store i32 %or344, i32* %high346, align 4, !dbg !798
  %shl349 = shl i32 %79, 1, !dbg !799
  %or350 = or i32 %shl349, %carry.0, !dbg !800
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !801
  store i32 %or350, i32* %low352, align 8, !dbg !802
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !803
  %80 = load i64, i64* %all354, align 8, !dbg !803
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !804
  %81 = load i64, i64* %all355, align 8, !dbg !804
  %82 = xor i64 %81, -1, !dbg !805
  %sub357 = add i64 %80, %82, !dbg !805
  %isneg = icmp slt i64 %sub357, 0, !dbg !806
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !806
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !807
  %sub364 = sub i64 %81, %and362, !dbg !808
  store i64 %sub364, i64* %all363, align 8, !dbg !808
  br label %for.inc, !dbg !809

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !810
  %conv360 = trunc i64 %and359 to i32, !dbg !811
  %dec = add i32 %sr.2, -1, !dbg !812
  br label %for.cond, !dbg !778, !llvm.loop !813

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !814
  %83 = load i64, i64* %all365, align 8, !dbg !814
  %shl366 = shl i64 %83, 1, !dbg !815
  %conv367 = zext i32 %carry.0 to i64, !dbg !816
  %or368 = or i64 %shl366, %conv367, !dbg !817
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !818
  store i64 %or368, i64* %all369, align 8, !dbg !819
  %tobool370.not = icmp eq i64* %rem, null, !dbg !820
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !820

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !821
  %84 = load i64, i64* %all372, align 8, !dbg !821
  store i64 %84, i64* %rem, align 8, !dbg !822
  br label %if.end373, !dbg !823

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !824
  %85 = load i64, i64* %all374, align 8, !dbg !824
  br label %return, !dbg !825

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !777
  ret i64 %retval.0, !dbg !826
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !827 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !828
  %mul = mul nsw i64 %call, %b, !dbg !829
  %sub = sub nsw i64 %a, %mul, !dbg !830
  store i64 %sub, i64* %rem, align 8, !dbg !831
  ret i64 %call, !dbg !832
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !833 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !834
  %mul = mul nsw i32 %call, %b, !dbg !835
  %sub = sub nsw i32 %a, %mul, !dbg !836
  store i32 %sub, i32* %rem, align 4, !dbg !837
  ret i32 %call, !dbg !838
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !839 {
entry:
  %shr = ashr i32 %a, 31, !dbg !840
  %shr1 = ashr i32 %b, 31, !dbg !841
  %xor = xor i32 %shr, %a, !dbg !842
  %sub = sub nsw i32 %xor, %shr, !dbg !843
  %xor2 = xor i32 %shr1, %b, !dbg !844
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !845
  %xor4 = xor i32 %shr, %shr1, !dbg !846
  %div = udiv i32 %sub, %sub3, !dbg !847
  %xor5 = xor i32 %div, %xor4, !dbg !848
  %sub6 = sub i32 %xor5, %xor4, !dbg !849
  ret i32 %sub6, !dbg !850
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #1 !dbg !851 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !852
  store i64 %a, i64* %all, align 8, !dbg !853
  %low = bitcast %union.dwords* %x to i32*, !dbg !854
  %0 = load i32, i32* %low, align 8, !dbg !854
  %cmp = icmp eq i32 %0, 0, !dbg !855
  br i1 %cmp, label %if.then, label %if.end6, !dbg !856

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !857
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !858
  %1 = load i32, i32* %high, align 4, !dbg !858
  %cmp2 = icmp eq i32 %1, 0, !dbg !859
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !860

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !861

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !862
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !863
  %2 = load i32, i32* %high5, align 4, !dbg !863
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !864, !range !346
  %add = add nuw nsw i32 %3, 33, !dbg !865
  br label %return, !dbg !866

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !867
  %4 = load i32, i32* %low8, align 8, !dbg !867
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !868, !range !346
  %add9 = add nuw nsw i32 %5, 1, !dbg !869
  br label %return, !dbg !870

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !871
  ret i32 %retval.0, !dbg !872
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #1 !dbg !873 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !874
  br i1 %cmp, label %if.then, label %if.end, !dbg !875

if.then:                                          ; preds = %entry
  br label %return, !dbg !876

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !877, !range !346
  %add = add nuw nsw i32 %0, 1, !dbg !878
  br label %return, !dbg !879

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !880
  ret i32 %retval.0, !dbg !881
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !882 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !883
  store i64 %a, i64* %all, align 8, !dbg !884
  %and = and i32 %b, 32, !dbg !885
  %tobool.not = icmp eq i32 %and, 0, !dbg !885
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !886

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !887
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !888
  store i32 0, i32* %high, align 4, !dbg !889
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !890
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !891
  %0 = load i32, i32* %high2, align 4, !dbg !891
  %sub = add nsw i32 %b, -32, !dbg !892
  %shr = lshr i32 %0, %sub, !dbg !893
  %low = bitcast %union.dwords* %result to i32*, !dbg !894
  store i32 %shr, i32* %low, align 8, !dbg !895
  br label %if.end18, !dbg !896

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !897
  br i1 %cmp, label %if.then4, label %if.end, !dbg !898

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !899

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !900
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !901
  %1 = load i32, i32* %high6, align 4, !dbg !901
  %shr7 = lshr i32 %1, %b, !dbg !902
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !903
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !904
  store i32 %shr7, i32* %high9, align 4, !dbg !905
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !906
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !907
  %2 = load i32, i32* %high11, align 4, !dbg !907
  %sub12 = sub nsw i32 32, %b, !dbg !908
  %shl = shl i32 %2, %sub12, !dbg !909
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !910
  %3 = load i32, i32* %low14, align 8, !dbg !910
  %shr15 = lshr i32 %3, %b, !dbg !911
  %or = or i32 %shl, %shr15, !dbg !912
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !913
  store i32 %or, i32* %low17, align 8, !dbg !914
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !915
  %4 = load i64, i64* %all19, align 8, !dbg !915
  br label %return, !dbg !916

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !917
  ret i64 %retval.0, !dbg !918
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !919 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !920
  %shr1 = ashr i64 %a, 63, !dbg !921
  %xor2 = xor i64 %shr1, %a, !dbg !922
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !923
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !924
  %1 = load i64, i64* %r, align 8, !dbg !925
  %xor4 = xor i64 %1, %shr1, !dbg !926
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !927
  ret i64 %sub5, !dbg !928
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !929 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !930
  %mul = mul nsw i32 %call, %b, !dbg !931
  %sub = sub nsw i32 %a, %mul, !dbg !932
  ret i32 %sub, !dbg !933
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !934 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !935
  br i1 %cmp, label %if.then, label %if.end4, !dbg !936

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !937
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !938

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !939
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !940

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !941

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !942
  unreachable, !dbg !942

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !943
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !944

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !945
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !946

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !947
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !948

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !949

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !950
  unreachable, !dbg !950

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !951
  %xor = xor i64 %shr, %a, !dbg !952
  %sub = sub nsw i64 %xor, %shr, !dbg !953
  %shr14 = ashr i64 %b, 63, !dbg !954
  %xor15 = xor i64 %shr14, %b, !dbg !955
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !956
  %cmp17 = icmp slt i64 %sub, 2, !dbg !957
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !958

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !959
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !960

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !961

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !962
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !963

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !964
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !965
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !966

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !967
  unreachable, !dbg !967

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !968

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !969
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !970
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !971
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !972

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !973
  unreachable, !dbg !973

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !974

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !975
  ret i64 %retval.0, !dbg !976
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !977 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !978
  br i1 %cmp, label %if.then, label %if.end4, !dbg !979

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !980
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !981

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !982
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !983

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !984

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !985
  unreachable, !dbg !985

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !986
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !987

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !988
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !989

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !990
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !991

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !992

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !993
  unreachable, !dbg !993

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !994
  %xor = xor i32 %shr, %a, !dbg !995
  %sub = sub nsw i32 %xor, %shr, !dbg !996
  %shr14 = ashr i32 %b, 31, !dbg !997
  %xor15 = xor i32 %shr14, %b, !dbg !998
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !999
  %cmp17 = icmp slt i32 %sub, 2, !dbg !1000
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1001

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !1002
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1003

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1004

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !1005
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1006

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !1007
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !1008
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1009

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1010
  unreachable, !dbg !1010

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1011

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !1012
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !1013
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !1014
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1015

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1016
  unreachable, !dbg !1016

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1017

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !1018
  ret i32 %retval.0, !dbg !1019
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #1 !dbg !1020 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1021
  store i64 %a, i64* %all, align 8, !dbg !1022
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1023
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1024
  %0 = load i32, i32* %high, align 4, !dbg !1024
  %low = bitcast %union.dwords* %x to i32*, !dbg !1025
  %1 = load i32, i32* %low, align 8, !dbg !1025
  %xor = xor i32 %0, %1, !dbg !1026
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !1027
  ret i32 %call, !dbg !1028
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #1 !dbg !1029 {
entry:
  %shr = lshr i32 %a, 16, !dbg !1030
  %xor = xor i32 %shr, %a, !dbg !1031
  %shr1 = lshr i32 %xor, 8, !dbg !1032
  %xor2 = xor i32 %xor, %shr1, !dbg !1033
  %shr3 = lshr i32 %xor2, 4, !dbg !1034
  %xor4 = xor i32 %xor2, %shr3, !dbg !1035
  %and = and i32 %xor4, 15, !dbg !1036
  %shr5 = lshr i32 27030, %and, !dbg !1037
  %and6 = and i32 %shr5, 1, !dbg !1038
  ret i32 %and6, !dbg !1039
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #1 !dbg !1040 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1041
  %and = and i64 %shr, 6148914691236517205, !dbg !1042
  %sub = sub i64 %a, %and, !dbg !1043
  %shr1 = lshr i64 %sub, 2, !dbg !1044
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1045
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1046
  %add = add nuw nsw i64 %and2, %and3, !dbg !1047
  %shr4 = lshr i64 %add, 4, !dbg !1048
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1049
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1050
  %shr7 = lshr i64 %and6, 32, !dbg !1051
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1052
  %conv = trunc i64 %add8 to i32, !dbg !1053
  %shr9 = lshr i32 %conv, 16, !dbg !1054
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1055
  %shr11 = lshr i32 %add10, 8, !dbg !1056
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1057
  %and13 = and i32 %add12, 127, !dbg !1058
  ret i32 %and13, !dbg !1059
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #1 !dbg !1060 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1061
  %and = and i32 %shr, 1431655765, !dbg !1062
  %sub = sub i32 %a, %and, !dbg !1063
  %shr1 = lshr i32 %sub, 2, !dbg !1064
  %and2 = and i32 %shr1, 858993459, !dbg !1065
  %and3 = and i32 %sub, 858993459, !dbg !1066
  %add = add nuw nsw i32 %and2, %and3, !dbg !1067
  %shr4 = lshr i32 %add, 4, !dbg !1068
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1069
  %and6 = and i32 %add5, 252645135, !dbg !1070
  %shr7 = lshr i32 %and6, 16, !dbg !1071
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1072
  %shr9 = lshr i32 %add8, 8, !dbg !1073
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1074
  %and11 = and i32 %add10, 63, !dbg !1075
  ret i32 %and11, !dbg !1076
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1077 {
entry:
  %sub = sub i64 %a, %b, !dbg !1078
  %cmp = icmp sgt i64 %b, -1, !dbg !1079
  br i1 %cmp, label %if.then, label %if.else, !dbg !1080

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1081
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1082

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1083
  unreachable, !dbg !1083

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1084

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1085
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1086

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1087
  unreachable, !dbg !1087

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1088
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1089 {
entry:
  %sub = sub i32 %a, %b, !dbg !1090
  %cmp = icmp sgt i32 %b, -1, !dbg !1091
  br i1 %cmp, label %if.then, label %if.else, !dbg !1092

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1093
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1094

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1095
  unreachable, !dbg !1095

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1096

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1097
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1098

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1099
  unreachable, !dbg !1099

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1100
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !1101 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1102
  store i64 %a, i64* %all, align 8, !dbg !1103
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1104
  store i64 %b, i64* %all1, align 8, !dbg !1105
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1106
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1107
  %0 = load i32, i32* %high, align 4, !dbg !1107
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1108
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1109
  %1 = load i32, i32* %high3, align 4, !dbg !1109
  %cmp = icmp ult i32 %0, %1, !dbg !1110
  br i1 %cmp, label %if.then, label %if.end, !dbg !1111

if.then:                                          ; preds = %entry
  br label %return, !dbg !1112

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1113
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1114
  %2 = load i32, i32* %high5, align 4, !dbg !1114
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1115
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1116
  %3 = load i32, i32* %high7, align 4, !dbg !1116
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1117
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1118

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1119

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1120
  %4 = load i32, i32* %low, align 8, !dbg !1120
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1121
  %5 = load i32, i32* %low13, align 8, !dbg !1121
  %cmp14 = icmp ult i32 %4, %5, !dbg !1122
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1123

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1124

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1125
  %6 = load i32, i32* %low18, align 8, !dbg !1125
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1126
  %7 = load i32, i32* %low20, align 8, !dbg !1126
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1127
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1128

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1129

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1130

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1131
  ret i32 %retval.0, !dbg !1132
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !1133 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1134
  %sub = add nsw i32 %call, -1, !dbg !1135
  ret i32 %sub, !dbg !1136
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1137 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !1138
  ret i64 %call, !dbg !1139
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !1140 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1141
  %mul = mul i32 %call, %b, !dbg !1142
  %sub = sub i32 %a, %mul, !dbg !1143
  store i32 %sub, i32* %rem, align 4, !dbg !1144
  ret i32 %call, !dbg !1145
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #1 !dbg !1146 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1147
  br i1 %cmp, label %if.then, label %if.end, !dbg !1148

if.then:                                          ; preds = %entry
  br label %return, !dbg !1149

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1150
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1151

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1152

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1153, !range !346
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1154, !range !346
  %sub = sub nsw i32 %0, %1, !dbg !1155
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1156
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1157

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1158

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1159
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1160

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1161

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1162
  %sub10 = sub nsw i32 31, %sub, !dbg !1163
  %shl = shl i32 %n, %sub10, !dbg !1164
  %shr = lshr i32 %n, %inc, !dbg !1165
  br label %for.cond, !dbg !1166

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1167
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1167
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1167
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1167
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1168
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1166

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1169
  %2 = xor i32 %or, -1, !dbg !1170
  %sub17 = add i32 %2, %d, !dbg !1170
  br label %for.inc, !dbg !1171

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1172
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1172
  %sub20 = sub i32 %or, %and19, !dbg !1173
  %and = lshr i32 %sub17, 31, !dbg !1174
  %shl14 = shl i32 %q.0, 1, !dbg !1175
  %or15 = or i32 %shl14, %carry.0, !dbg !1176
  %dec = add i32 %sr.0, -1, !dbg !1177
  br label %for.cond, !dbg !1166, !llvm.loop !1178

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1179
  %or22 = or i32 %shl21, %carry.0, !dbg !1180
  br label %return, !dbg !1181

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1167
  ret i32 %retval.0, !dbg !1182
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1183 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !1184
  %0 = load i64, i64* %r, align 8, !dbg !1185
  ret i64 %0, !dbg !1186
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1187 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1188
  %mul = mul i32 %call, %b, !dbg !1189
  %sub = sub i32 %a, %mul, !dbg !1190
  ret i32 %sub, !dbg !1191
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #1 !dbg !1192 {
entry:
  br label %for.cond, !dbg !1193

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1194
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1195
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1196

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1197
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1197
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1198
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1199
  br label %for.inc, !dbg !1200

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1201
  br label %for.cond, !dbg !1196, !llvm.loop !1202

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1203
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #1 !dbg !1204 {
entry:
  br label %for.cond, !dbg !1205

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1206
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1207
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1208

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1209
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1210
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1211
  br label %for.inc, !dbg !1212

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1213
  br label %for.cond, !dbg !1208, !llvm.loop !1214

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1215
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

!llvm.dbg.cu = !{!2, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118}
!llvm.ident = !{!120, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129, !130}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cover_cnt", scope: !2, file: !5, line: 41, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/cover/cover.c", directory: "/workspaces/llvmta/testcases/batchtest/countnegative")
!4 = !{!0}
!5 = !DIFile(filename: "cover/cover.c", directory: "/workspaces/llvmta/testcases/batchtest")
!6 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!59 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!99 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!117 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!119 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!120 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)"}
!121 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!122 = !{i32 7, !"Dwarf Version", i32 5}
!123 = !{i32 2, !"Debug Info Version", i32 3}
!124 = !{i32 1, !"wchar_size", i32 4}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 1, !"branch-target-enforcement", i32 0}
!127 = !{i32 1, !"sign-return-address", i32 0}
!128 = !{i32 1, !"sign-return-address-all", i32 0}
!129 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = distinct !DISubprogram(name: "cover_init", scope: !5, file: !5, line: 48, type: !132, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{null}
!134 = !{}
!135 = !DILocation(line: 50, column: 13, scope: !131)
!136 = !DILocation(line: 51, column: 1, scope: !131)
!137 = distinct !DISubprogram(name: "cover_return", scope: !5, file: !5, line: 54, type: !138, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !134)
!138 = !DISubroutineType(types: !139)
!139 = !{!7}
!140 = !DILocation(line: 56, column: 10, scope: !137)
!141 = !DILocation(line: 56, column: 20, scope: !137)
!142 = !DILocation(line: 56, column: 3, scope: !137)
!143 = distinct !DISubprogram(name: "increment_c", scope: !5, file: !5, line: 60, type: !144, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !134)
!144 = !DISubroutineType(types: !145)
!145 = !{!7, !7}
!146 = !DILocalVariable(name: "i", arg: 1, scope: !143, file: !5, line: 60, type: !7)
!147 = !DILocation(line: 0, scope: !143)
!148 = !DILocation(line: 61, column: 4, scope: !143)
!149 = !DILocation(line: 62, column: 3, scope: !143)
!150 = distinct !DISubprogram(name: "cover_swi120", scope: !5, file: !5, line: 69, type: !144, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !134)
!151 = !DILocalVariable(name: "c", arg: 1, scope: !150, file: !5, line: 69, type: !7)
!152 = !DILocation(line: 0, scope: !150)
!153 = !DILocalVariable(name: "i", scope: !150, file: !5, line: 70, type: !7)
!154 = !DILocation(line: 72, column: 8, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !5, line: 72, column: 3)
!156 = !DILocation(line: 0, scope: !155)
!157 = !DILocation(line: 72, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !5, line: 72, column: 3)
!159 = !DILocation(line: 72, column: 3, scope: !155)
!160 = !DILocation(line: 73, column: 11, scope: !161)
!161 = distinct !DILexicalBlock(scope: !158, file: !5, line: 72, column: 27)
!162 = !DILocation(line: 74, column: 3, scope: !161)
!163 = !DILocation(line: 72, column: 23, scope: !158)
!164 = !DILocation(line: 72, column: 3, scope: !158)
!165 = distinct !{!165, !159, !166, !167}
!166 = !DILocation(line: 74, column: 3, scope: !155)
!167 = !{!"llvm.loop.mustprogress"}
!168 = !DILocation(line: 75, column: 3, scope: !150)
!169 = distinct !DISubprogram(name: "cover_swi50", scope: !5, file: !5, line: 79, type: !144, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !134)
!170 = !DILocalVariable(name: "c", arg: 1, scope: !169, file: !5, line: 79, type: !7)
!171 = !DILocation(line: 0, scope: !169)
!172 = !DILocalVariable(name: "i", scope: !169, file: !5, line: 80, type: !7)
!173 = !DILocation(line: 82, column: 8, scope: !174)
!174 = distinct !DILexicalBlock(scope: !169, file: !5, line: 82, column: 3)
!175 = !DILocation(line: 0, scope: !174)
!176 = !DILocation(line: 82, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !5, line: 82, column: 3)
!178 = !DILocation(line: 82, column: 3, scope: !174)
!179 = !DILocation(line: 83, column: 11, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !5, line: 82, column: 27)
!181 = !DILocation(line: 84, column: 3, scope: !180)
!182 = !DILocation(line: 82, column: 23, scope: !177)
!183 = !DILocation(line: 82, column: 3, scope: !177)
!184 = distinct !{!184, !178, !185, !167}
!185 = !DILocation(line: 84, column: 3, scope: !174)
!186 = !DILocation(line: 85, column: 3, scope: !169)
!187 = distinct !DISubprogram(name: "cover_swi10", scope: !5, file: !5, line: 91, type: !144, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !134)
!188 = !DILocalVariable(name: "c", arg: 1, scope: !187, file: !5, line: 91, type: !7)
!189 = !DILocation(line: 0, scope: !187)
!190 = !DILocalVariable(name: "i", scope: !187, file: !5, line: 92, type: !7)
!191 = !DILocation(line: 94, column: 8, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !5, line: 94, column: 3)
!193 = !DILocation(line: 0, scope: !192)
!194 = !DILocation(line: 94, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !5, line: 94, column: 3)
!196 = !DILocation(line: 94, column: 3, scope: !192)
!197 = !DILocation(line: 95, column: 11, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !5, line: 94, column: 27)
!199 = !DILocation(line: 96, column: 3, scope: !198)
!200 = !DILocation(line: 94, column: 23, scope: !195)
!201 = !DILocation(line: 94, column: 3, scope: !195)
!202 = distinct !{!202, !196, !203, !167}
!203 = !DILocation(line: 96, column: 3, scope: !192)
!204 = !DILocation(line: 97, column: 3, scope: !187)
!205 = distinct !DISubprogram(name: "cover_main", scope: !5, file: !5, line: 101, type: !132, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !134)
!206 = !DILocation(line: 103, column: 28, scope: !205)
!207 = !DILocation(line: 103, column: 15, scope: !205)
!208 = !DILocation(line: 103, column: 13, scope: !205)
!209 = !DILocation(line: 105, column: 28, scope: !205)
!210 = !DILocation(line: 105, column: 15, scope: !205)
!211 = !DILocation(line: 105, column: 13, scope: !205)
!212 = !DILocation(line: 107, column: 29, scope: !205)
!213 = !DILocation(line: 107, column: 15, scope: !205)
!214 = !DILocation(line: 107, column: 13, scope: !205)
!215 = !DILocation(line: 108, column: 1, scope: !205)
!216 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 115, type: !138, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !134)
!217 = !DILocation(line: 117, column: 3, scope: !216)
!218 = !DILocation(line: 118, column: 3, scope: !216)
!219 = !DILocation(line: 120, column: 10, scope: !216)
!220 = !DILocation(line: 120, column: 3, scope: !216)
!221 = distinct !DISubprogram(name: "__absvdi2", scope: !9, file: !9, line: 22, type: !222, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !134)
!222 = !DISubroutineType(types: !134)
!223 = !DILocation(line: 25, column: 11, scope: !221)
!224 = !DILocation(line: 25, column: 9, scope: !221)
!225 = !DILocation(line: 26, column: 9, scope: !221)
!226 = !DILocation(line: 28, column: 20, scope: !221)
!227 = !DILocation(line: 28, column: 5, scope: !221)
!228 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !61, file: !61, line: 57, type: !222, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !134)
!229 = !DILocation(line: 59, column: 1, scope: !228)
!230 = distinct !DISubprogram(name: "__absvsi2", scope: !11, file: !11, line: 22, type: !222, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !134)
!231 = !DILocation(line: 25, column: 11, scope: !230)
!232 = !DILocation(line: 25, column: 9, scope: !230)
!233 = !DILocation(line: 26, column: 9, scope: !230)
!234 = !DILocation(line: 28, column: 20, scope: !230)
!235 = !DILocation(line: 28, column: 5, scope: !230)
!236 = distinct !DISubprogram(name: "__addvdi3", scope: !15, file: !15, line: 22, type: !222, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !134)
!237 = !DILocation(line: 24, column: 27, scope: !236)
!238 = !DILocation(line: 25, column: 11, scope: !236)
!239 = !DILocation(line: 25, column: 9, scope: !236)
!240 = !DILocation(line: 27, column: 15, scope: !236)
!241 = !DILocation(line: 27, column: 13, scope: !236)
!242 = !DILocation(line: 28, column: 13, scope: !236)
!243 = !DILocation(line: 29, column: 5, scope: !236)
!244 = !DILocation(line: 32, column: 15, scope: !236)
!245 = !DILocation(line: 32, column: 13, scope: !236)
!246 = !DILocation(line: 33, column: 13, scope: !236)
!247 = !DILocation(line: 35, column: 5, scope: !236)
!248 = distinct !DISubprogram(name: "__addvsi3", scope: !17, file: !17, line: 22, type: !222, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !134)
!249 = !DILocation(line: 24, column: 27, scope: !248)
!250 = !DILocation(line: 25, column: 11, scope: !248)
!251 = !DILocation(line: 25, column: 9, scope: !248)
!252 = !DILocation(line: 27, column: 15, scope: !248)
!253 = !DILocation(line: 27, column: 13, scope: !248)
!254 = !DILocation(line: 28, column: 13, scope: !248)
!255 = !DILocation(line: 29, column: 5, scope: !248)
!256 = !DILocation(line: 32, column: 15, scope: !248)
!257 = !DILocation(line: 32, column: 13, scope: !248)
!258 = !DILocation(line: 33, column: 13, scope: !248)
!259 = !DILocation(line: 35, column: 5, scope: !248)
!260 = distinct !DISubprogram(name: "__ashldi3", scope: !21, file: !21, line: 24, type: !222, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !134)
!261 = !DILocation(line: 29, column: 11, scope: !260)
!262 = !DILocation(line: 29, column: 15, scope: !260)
!263 = !DILocation(line: 30, column: 11, scope: !260)
!264 = !DILocation(line: 30, column: 9, scope: !260)
!265 = !DILocation(line: 32, column: 18, scope: !260)
!266 = !DILocation(line: 32, column: 22, scope: !260)
!267 = !DILocation(line: 33, column: 33, scope: !260)
!268 = !DILocation(line: 33, column: 43, scope: !260)
!269 = !DILocation(line: 33, column: 37, scope: !260)
!270 = !DILocation(line: 33, column: 16, scope: !260)
!271 = !DILocation(line: 33, column: 18, scope: !260)
!272 = !DILocation(line: 33, column: 23, scope: !260)
!273 = !DILocation(line: 34, column: 5, scope: !260)
!274 = !DILocation(line: 37, column: 15, scope: !260)
!275 = !DILocation(line: 37, column: 13, scope: !260)
!276 = !DILocation(line: 38, column: 13, scope: !260)
!277 = !DILocation(line: 39, column: 33, scope: !260)
!278 = !DILocation(line: 39, column: 37, scope: !260)
!279 = !DILocation(line: 39, column: 18, scope: !260)
!280 = !DILocation(line: 39, column: 23, scope: !260)
!281 = !DILocation(line: 40, column: 32, scope: !260)
!282 = !DILocation(line: 40, column: 34, scope: !260)
!283 = !DILocation(line: 40, column: 39, scope: !260)
!284 = !DILocation(line: 40, column: 56, scope: !260)
!285 = !DILocation(line: 40, column: 77, scope: !260)
!286 = !DILocation(line: 40, column: 60, scope: !260)
!287 = !DILocation(line: 40, column: 45, scope: !260)
!288 = !DILocation(line: 40, column: 16, scope: !260)
!289 = !DILocation(line: 40, column: 18, scope: !260)
!290 = !DILocation(line: 40, column: 23, scope: !260)
!291 = !DILocation(line: 42, column: 19, scope: !260)
!292 = !DILocation(line: 42, column: 5, scope: !260)
!293 = !DILocation(line: 0, scope: !260)
!294 = !DILocation(line: 43, column: 1, scope: !260)
!295 = distinct !DISubprogram(name: "__ashrdi3", scope: !25, file: !25, line: 24, type: !222, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !134)
!296 = !DILocation(line: 29, column: 11, scope: !295)
!297 = !DILocation(line: 29, column: 15, scope: !295)
!298 = !DILocation(line: 30, column: 11, scope: !295)
!299 = !DILocation(line: 30, column: 9, scope: !295)
!300 = !DILocation(line: 33, column: 31, scope: !295)
!301 = !DILocation(line: 33, column: 33, scope: !295)
!302 = !DILocation(line: 33, column: 38, scope: !295)
!303 = !DILocation(line: 33, column: 16, scope: !295)
!304 = !DILocation(line: 33, column: 18, scope: !295)
!305 = !DILocation(line: 33, column: 23, scope: !295)
!306 = !DILocation(line: 34, column: 30, scope: !295)
!307 = !DILocation(line: 34, column: 32, scope: !295)
!308 = !DILocation(line: 34, column: 43, scope: !295)
!309 = !DILocation(line: 34, column: 37, scope: !295)
!310 = !DILocation(line: 34, column: 18, scope: !295)
!311 = !DILocation(line: 34, column: 22, scope: !295)
!312 = !DILocation(line: 35, column: 5, scope: !295)
!313 = !DILocation(line: 38, column: 15, scope: !295)
!314 = !DILocation(line: 38, column: 13, scope: !295)
!315 = !DILocation(line: 39, column: 13, scope: !295)
!316 = !DILocation(line: 40, column: 32, scope: !295)
!317 = !DILocation(line: 40, column: 34, scope: !295)
!318 = !DILocation(line: 40, column: 39, scope: !295)
!319 = !DILocation(line: 40, column: 16, scope: !295)
!320 = !DILocation(line: 40, column: 18, scope: !295)
!321 = !DILocation(line: 40, column: 24, scope: !295)
!322 = !DILocation(line: 41, column: 31, scope: !295)
!323 = !DILocation(line: 41, column: 33, scope: !295)
!324 = !DILocation(line: 41, column: 55, scope: !295)
!325 = !DILocation(line: 41, column: 38, scope: !295)
!326 = !DILocation(line: 41, column: 72, scope: !295)
!327 = !DILocation(line: 41, column: 76, scope: !295)
!328 = !DILocation(line: 41, column: 61, scope: !295)
!329 = !DILocation(line: 41, column: 18, scope: !295)
!330 = !DILocation(line: 41, column: 22, scope: !295)
!331 = !DILocation(line: 43, column: 19, scope: !295)
!332 = !DILocation(line: 43, column: 5, scope: !295)
!333 = !DILocation(line: 0, scope: !295)
!334 = !DILocation(line: 44, column: 1, scope: !295)
!335 = distinct !DISubprogram(name: "__clzdi2", scope: !29, file: !29, line: 22, type: !222, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !134)
!336 = !DILocation(line: 25, column: 7, scope: !335)
!337 = !DILocation(line: 25, column: 11, scope: !335)
!338 = !DILocation(line: 26, column: 26, scope: !335)
!339 = !DILocation(line: 26, column: 28, scope: !335)
!340 = !DILocation(line: 26, column: 33, scope: !335)
!341 = !DILocation(line: 27, column: 29, scope: !335)
!342 = !DILocation(line: 27, column: 31, scope: !335)
!343 = !DILocation(line: 27, column: 49, scope: !335)
!344 = !DILocation(line: 27, column: 42, scope: !335)
!345 = !DILocation(line: 27, column: 12, scope: !335)
!346 = !{i32 0, i32 33}
!347 = !DILocation(line: 28, column: 15, scope: !335)
!348 = !DILocation(line: 27, column: 59, scope: !335)
!349 = !DILocation(line: 27, column: 5, scope: !335)
!350 = distinct !DISubprogram(name: "__clzsi2", scope: !31, file: !31, line: 22, type: !222, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !134)
!351 = !DILocation(line: 25, column: 34, scope: !350)
!352 = !DILocation(line: 25, column: 40, scope: !350)
!353 = !DILocation(line: 26, column: 14, scope: !350)
!354 = !DILocation(line: 26, column: 7, scope: !350)
!355 = !DILocation(line: 29, column: 13, scope: !350)
!356 = !DILocation(line: 29, column: 23, scope: !350)
!357 = !DILocation(line: 29, column: 29, scope: !350)
!358 = !DILocation(line: 30, column: 13, scope: !350)
!359 = !DILocation(line: 30, column: 7, scope: !350)
!360 = !DILocation(line: 31, column: 7, scope: !350)
!361 = !DILocation(line: 33, column: 13, scope: !350)
!362 = !DILocation(line: 33, column: 21, scope: !350)
!363 = !DILocation(line: 33, column: 27, scope: !350)
!364 = !DILocation(line: 34, column: 13, scope: !350)
!365 = !DILocation(line: 34, column: 7, scope: !350)
!366 = !DILocation(line: 35, column: 7, scope: !350)
!367 = !DILocation(line: 37, column: 13, scope: !350)
!368 = !DILocation(line: 37, column: 20, scope: !350)
!369 = !DILocation(line: 37, column: 26, scope: !350)
!370 = !DILocation(line: 38, column: 13, scope: !350)
!371 = !DILocation(line: 38, column: 7, scope: !350)
!372 = !DILocation(line: 39, column: 7, scope: !350)
!373 = !DILocation(line: 52, column: 20, scope: !350)
!374 = !DILocation(line: 52, column: 37, scope: !350)
!375 = !DILocation(line: 52, column: 25, scope: !350)
!376 = !DILocation(line: 52, column: 14, scope: !350)
!377 = !DILocation(line: 52, column: 5, scope: !350)
!378 = distinct !DISubprogram(name: "__cmpdi2", scope: !35, file: !35, line: 23, type: !222, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !134)
!379 = !DILocation(line: 26, column: 7, scope: !378)
!380 = !DILocation(line: 26, column: 11, scope: !378)
!381 = !DILocation(line: 28, column: 7, scope: !378)
!382 = !DILocation(line: 28, column: 11, scope: !378)
!383 = !DILocation(line: 29, column: 11, scope: !378)
!384 = !DILocation(line: 29, column: 13, scope: !378)
!385 = !DILocation(line: 29, column: 22, scope: !378)
!386 = !DILocation(line: 29, column: 24, scope: !378)
!387 = !DILocation(line: 29, column: 18, scope: !378)
!388 = !DILocation(line: 29, column: 9, scope: !378)
!389 = !DILocation(line: 30, column: 9, scope: !378)
!390 = !DILocation(line: 31, column: 11, scope: !378)
!391 = !DILocation(line: 31, column: 13, scope: !378)
!392 = !DILocation(line: 31, column: 22, scope: !378)
!393 = !DILocation(line: 31, column: 24, scope: !378)
!394 = !DILocation(line: 31, column: 18, scope: !378)
!395 = !DILocation(line: 31, column: 9, scope: !378)
!396 = !DILocation(line: 32, column: 9, scope: !378)
!397 = !DILocation(line: 33, column: 13, scope: !378)
!398 = !DILocation(line: 33, column: 23, scope: !378)
!399 = !DILocation(line: 33, column: 17, scope: !378)
!400 = !DILocation(line: 33, column: 9, scope: !378)
!401 = !DILocation(line: 34, column: 9, scope: !378)
!402 = !DILocation(line: 35, column: 13, scope: !378)
!403 = !DILocation(line: 35, column: 23, scope: !378)
!404 = !DILocation(line: 35, column: 17, scope: !378)
!405 = !DILocation(line: 35, column: 9, scope: !378)
!406 = !DILocation(line: 36, column: 9, scope: !378)
!407 = !DILocation(line: 37, column: 5, scope: !378)
!408 = !DILocation(line: 0, scope: !378)
!409 = !DILocation(line: 38, column: 1, scope: !378)
!410 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !35, file: !35, line: 46, type: !222, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !134)
!411 = !DILocation(line: 48, column: 9, scope: !410)
!412 = !DILocation(line: 48, column: 24, scope: !410)
!413 = !DILocation(line: 48, column: 2, scope: !410)
!414 = distinct !DISubprogram(name: "__ctzdi2", scope: !39, file: !39, line: 22, type: !222, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !134)
!415 = !DILocation(line: 25, column: 7, scope: !414)
!416 = !DILocation(line: 25, column: 11, scope: !414)
!417 = !DILocation(line: 26, column: 28, scope: !414)
!418 = !DILocation(line: 26, column: 32, scope: !414)
!419 = !DILocation(line: 27, column: 29, scope: !414)
!420 = !DILocation(line: 27, column: 31, scope: !414)
!421 = !DILocation(line: 27, column: 41, scope: !414)
!422 = !DILocation(line: 27, column: 12, scope: !414)
!423 = !DILocation(line: 28, column: 18, scope: !414)
!424 = !DILocation(line: 27, column: 59, scope: !414)
!425 = !DILocation(line: 27, column: 5, scope: !414)
!426 = distinct !DISubprogram(name: "__ctzsi2", scope: !41, file: !41, line: 22, type: !222, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !134)
!427 = !DILocation(line: 25, column: 20, scope: !426)
!428 = !DILocation(line: 25, column: 34, scope: !426)
!429 = !DILocation(line: 25, column: 40, scope: !426)
!430 = !DILocation(line: 26, column: 7, scope: !426)
!431 = !DILocation(line: 29, column: 13, scope: !426)
!432 = !DILocation(line: 29, column: 23, scope: !426)
!433 = !DILocation(line: 29, column: 29, scope: !426)
!434 = !DILocation(line: 30, column: 7, scope: !426)
!435 = !DILocation(line: 31, column: 7, scope: !426)
!436 = !DILocation(line: 33, column: 13, scope: !426)
!437 = !DILocation(line: 33, column: 21, scope: !426)
!438 = !DILocation(line: 33, column: 27, scope: !426)
!439 = !DILocation(line: 34, column: 7, scope: !426)
!440 = !DILocation(line: 35, column: 7, scope: !426)
!441 = !DILocation(line: 37, column: 13, scope: !426)
!442 = !DILocation(line: 37, column: 20, scope: !426)
!443 = !DILocation(line: 37, column: 26, scope: !426)
!444 = !DILocation(line: 38, column: 7, scope: !426)
!445 = !DILocation(line: 40, column: 7, scope: !426)
!446 = !DILocation(line: 56, column: 25, scope: !426)
!447 = !DILocation(line: 56, column: 20, scope: !426)
!448 = !DILocation(line: 56, column: 44, scope: !426)
!449 = !DILocation(line: 56, column: 32, scope: !426)
!450 = !DILocation(line: 56, column: 14, scope: !426)
!451 = !DILocation(line: 56, column: 5, scope: !426)
!452 = distinct !DISubprogram(name: "__divdi3", scope: !45, file: !45, line: 20, type: !222, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !134)
!453 = !DILocation(line: 23, column: 20, scope: !452)
!454 = !DILocation(line: 24, column: 20, scope: !452)
!455 = !DILocation(line: 25, column: 12, scope: !452)
!456 = !DILocation(line: 25, column: 19, scope: !452)
!457 = !DILocation(line: 26, column: 12, scope: !452)
!458 = !DILocation(line: 26, column: 19, scope: !452)
!459 = !DILocation(line: 27, column: 9, scope: !452)
!460 = !DILocation(line: 28, column: 13, scope: !452)
!461 = !DILocation(line: 28, column: 44, scope: !452)
!462 = !DILocation(line: 28, column: 51, scope: !452)
!463 = !DILocation(line: 28, column: 5, scope: !452)
!464 = distinct !DISubprogram(name: "__udivmoddi4", scope: !103, file: !103, line: 24, type: !222, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !134)
!465 = !DILocation(line: 29, column: 7, scope: !464)
!466 = !DILocation(line: 29, column: 11, scope: !464)
!467 = !DILocation(line: 31, column: 7, scope: !464)
!468 = !DILocation(line: 31, column: 11, scope: !464)
!469 = !DILocation(line: 36, column: 11, scope: !464)
!470 = !DILocation(line: 36, column: 13, scope: !464)
!471 = !DILocation(line: 36, column: 18, scope: !464)
!472 = !DILocation(line: 36, column: 9, scope: !464)
!473 = !DILocation(line: 38, column: 15, scope: !464)
!474 = !DILocation(line: 38, column: 17, scope: !464)
!475 = !DILocation(line: 38, column: 22, scope: !464)
!476 = !DILocation(line: 38, column: 13, scope: !464)
!477 = !DILocation(line: 44, column: 17, scope: !464)
!478 = !DILocation(line: 45, column: 28, scope: !464)
!479 = !DILocation(line: 45, column: 38, scope: !464)
!480 = !DILocation(line: 45, column: 32, scope: !464)
!481 = !DILocation(line: 45, column: 24, scope: !464)
!482 = !DILocation(line: 45, column: 22, scope: !464)
!483 = !DILocation(line: 45, column: 17, scope: !464)
!484 = !DILocation(line: 46, column: 24, scope: !464)
!485 = !DILocation(line: 46, column: 34, scope: !464)
!486 = !DILocation(line: 46, column: 28, scope: !464)
!487 = !DILocation(line: 46, column: 20, scope: !464)
!488 = !DILocation(line: 46, column: 13, scope: !464)
!489 = !DILocation(line: 52, column: 13, scope: !464)
!490 = !DILocation(line: 53, column: 24, scope: !464)
!491 = !DILocation(line: 53, column: 20, scope: !464)
!492 = !DILocation(line: 53, column: 18, scope: !464)
!493 = !DILocation(line: 53, column: 13, scope: !464)
!494 = !DILocation(line: 54, column: 9, scope: !464)
!495 = !DILocation(line: 57, column: 13, scope: !464)
!496 = !DILocation(line: 57, column: 17, scope: !464)
!497 = !DILocation(line: 57, column: 9, scope: !464)
!498 = !DILocation(line: 59, column: 15, scope: !464)
!499 = !DILocation(line: 59, column: 17, scope: !464)
!500 = !DILocation(line: 59, column: 22, scope: !464)
!501 = !DILocation(line: 59, column: 13, scope: !464)
!502 = !DILocation(line: 65, column: 17, scope: !464)
!503 = !DILocation(line: 66, column: 26, scope: !464)
!504 = !DILocation(line: 66, column: 28, scope: !464)
!505 = !DILocation(line: 66, column: 39, scope: !464)
!506 = !DILocation(line: 66, column: 33, scope: !464)
!507 = !DILocation(line: 66, column: 24, scope: !464)
!508 = !DILocation(line: 66, column: 22, scope: !464)
!509 = !DILocation(line: 66, column: 17, scope: !464)
!510 = !DILocation(line: 67, column: 22, scope: !464)
!511 = !DILocation(line: 67, column: 24, scope: !464)
!512 = !DILocation(line: 67, column: 35, scope: !464)
!513 = !DILocation(line: 67, column: 29, scope: !464)
!514 = !DILocation(line: 67, column: 20, scope: !464)
!515 = !DILocation(line: 67, column: 13, scope: !464)
!516 = !DILocation(line: 70, column: 17, scope: !464)
!517 = !DILocation(line: 70, column: 21, scope: !464)
!518 = !DILocation(line: 70, column: 13, scope: !464)
!519 = !DILocation(line: 76, column: 17, scope: !464)
!520 = !DILocation(line: 78, column: 30, scope: !464)
!521 = !DILocation(line: 78, column: 32, scope: !464)
!522 = !DILocation(line: 78, column: 41, scope: !464)
!523 = !DILocation(line: 78, column: 43, scope: !464)
!524 = !DILocation(line: 78, column: 37, scope: !464)
!525 = !DILocation(line: 78, column: 19, scope: !464)
!526 = !DILocation(line: 78, column: 21, scope: !464)
!527 = !DILocation(line: 78, column: 26, scope: !464)
!528 = !DILocation(line: 79, column: 21, scope: !464)
!529 = !DILocation(line: 79, column: 25, scope: !464)
!530 = !DILocation(line: 80, column: 26, scope: !464)
!531 = !DILocation(line: 80, column: 22, scope: !464)
!532 = !DILocation(line: 81, column: 13, scope: !464)
!533 = !DILocation(line: 82, column: 22, scope: !464)
!534 = !DILocation(line: 82, column: 24, scope: !464)
!535 = !DILocation(line: 82, column: 33, scope: !464)
!536 = !DILocation(line: 82, column: 35, scope: !464)
!537 = !DILocation(line: 82, column: 29, scope: !464)
!538 = !DILocation(line: 82, column: 20, scope: !464)
!539 = !DILocation(line: 82, column: 13, scope: !464)
!540 = !DILocation(line: 88, column: 16, scope: !464)
!541 = !DILocation(line: 88, column: 18, scope: !464)
!542 = !DILocation(line: 88, column: 28, scope: !464)
!543 = !DILocation(line: 88, column: 30, scope: !464)
!544 = !DILocation(line: 88, column: 35, scope: !464)
!545 = !DILocation(line: 88, column: 23, scope: !464)
!546 = !DILocation(line: 88, column: 41, scope: !464)
!547 = !DILocation(line: 88, column: 13, scope: !464)
!548 = !DILocation(line: 90, column: 17, scope: !464)
!549 = !DILocation(line: 92, column: 31, scope: !464)
!550 = !DILocation(line: 92, column: 21, scope: !464)
!551 = !DILocation(line: 92, column: 25, scope: !464)
!552 = !DILocation(line: 93, column: 30, scope: !464)
!553 = !DILocation(line: 93, column: 32, scope: !464)
!554 = !DILocation(line: 93, column: 42, scope: !464)
!555 = !DILocation(line: 93, column: 44, scope: !464)
!556 = !DILocation(line: 93, column: 49, scope: !464)
!557 = !DILocation(line: 93, column: 37, scope: !464)
!558 = !DILocation(line: 93, column: 19, scope: !464)
!559 = !DILocation(line: 93, column: 21, scope: !464)
!560 = !DILocation(line: 93, column: 26, scope: !464)
!561 = !DILocation(line: 94, column: 26, scope: !464)
!562 = !DILocation(line: 94, column: 22, scope: !464)
!563 = !DILocation(line: 95, column: 13, scope: !464)
!564 = !DILocation(line: 96, column: 22, scope: !464)
!565 = !DILocation(line: 96, column: 24, scope: !464)
!566 = !DILocation(line: 96, column: 48, scope: !464)
!567 = !DILocation(line: 96, column: 50, scope: !464)
!568 = !DILocation(line: 96, column: 32, scope: !464)
!569 = !DILocation(line: 96, column: 29, scope: !464)
!570 = !DILocation(line: 96, column: 20, scope: !464)
!571 = !DILocation(line: 96, column: 13, scope: !464)
!572 = !DILocation(line: 102, column: 30, scope: !464)
!573 = !DILocation(line: 102, column: 32, scope: !464)
!574 = !DILocation(line: 102, column: 14, scope: !464)
!575 = !DILocation(line: 102, column: 56, scope: !464)
!576 = !DILocation(line: 102, column: 58, scope: !464)
!577 = !DILocation(line: 102, column: 40, scope: !464)
!578 = !DILocation(line: 102, column: 38, scope: !464)
!579 = !DILocation(line: 104, column: 16, scope: !464)
!580 = !DILocation(line: 104, column: 13, scope: !464)
!581 = !DILocation(line: 106, column: 16, scope: !464)
!582 = !DILocation(line: 107, column: 26, scope: !464)
!583 = !DILocation(line: 107, column: 22, scope: !464)
!584 = !DILocation(line: 107, column: 17, scope: !464)
!585 = !DILocation(line: 108, column: 13, scope: !464)
!586 = !DILocation(line: 110, column: 9, scope: !464)
!587 = !DILocation(line: 113, column: 13, scope: !464)
!588 = !DILocation(line: 113, column: 17, scope: !464)
!589 = !DILocation(line: 114, column: 24, scope: !464)
!590 = !DILocation(line: 114, column: 45, scope: !464)
!591 = !DILocation(line: 114, column: 28, scope: !464)
!592 = !DILocation(line: 114, column: 11, scope: !464)
!593 = !DILocation(line: 114, column: 13, scope: !464)
!594 = !DILocation(line: 114, column: 18, scope: !464)
!595 = !DILocation(line: 116, column: 22, scope: !464)
!596 = !DILocation(line: 116, column: 24, scope: !464)
!597 = !DILocation(line: 116, column: 29, scope: !464)
!598 = !DILocation(line: 116, column: 11, scope: !464)
!599 = !DILocation(line: 116, column: 13, scope: !464)
!600 = !DILocation(line: 116, column: 18, scope: !464)
!601 = !DILocation(line: 117, column: 22, scope: !464)
!602 = !DILocation(line: 117, column: 24, scope: !464)
!603 = !DILocation(line: 117, column: 46, scope: !464)
!604 = !DILocation(line: 117, column: 29, scope: !464)
!605 = !DILocation(line: 117, column: 60, scope: !464)
!606 = !DILocation(line: 117, column: 64, scope: !464)
!607 = !DILocation(line: 117, column: 53, scope: !464)
!608 = !DILocation(line: 117, column: 13, scope: !464)
!609 = !DILocation(line: 117, column: 17, scope: !464)
!610 = !DILocation(line: 118, column: 5, scope: !464)
!611 = !DILocation(line: 121, column: 15, scope: !464)
!612 = !DILocation(line: 121, column: 17, scope: !464)
!613 = !DILocation(line: 121, column: 22, scope: !464)
!614 = !DILocation(line: 121, column: 13, scope: !464)
!615 = !DILocation(line: 127, column: 22, scope: !464)
!616 = !DILocation(line: 127, column: 43, scope: !464)
!617 = !DILocation(line: 127, column: 17, scope: !464)
!618 = !DILocation(line: 129, column: 21, scope: !464)
!619 = !DILocation(line: 130, column: 32, scope: !464)
!620 = !DILocation(line: 130, column: 43, scope: !464)
!621 = !DILocation(line: 130, column: 47, scope: !464)
!622 = !DILocation(line: 130, column: 36, scope: !464)
!623 = !DILocation(line: 130, column: 28, scope: !464)
!624 = !DILocation(line: 130, column: 26, scope: !464)
!625 = !DILocation(line: 130, column: 21, scope: !464)
!626 = !DILocation(line: 131, column: 25, scope: !464)
!627 = !DILocation(line: 131, column: 29, scope: !464)
!628 = !DILocation(line: 131, column: 21, scope: !464)
!629 = !DILocation(line: 132, column: 30, scope: !464)
!630 = !DILocation(line: 132, column: 21, scope: !464)
!631 = !DILocation(line: 133, column: 40, scope: !464)
!632 = !DILocation(line: 133, column: 22, scope: !464)
!633 = !DILocation(line: 134, column: 30, scope: !464)
!634 = !DILocation(line: 134, column: 32, scope: !464)
!635 = !DILocation(line: 134, column: 37, scope: !464)
!636 = !DILocation(line: 134, column: 19, scope: !464)
!637 = !DILocation(line: 134, column: 21, scope: !464)
!638 = !DILocation(line: 134, column: 26, scope: !464)
!639 = !DILocation(line: 135, column: 30, scope: !464)
!640 = !DILocation(line: 135, column: 32, scope: !464)
!641 = !DILocation(line: 135, column: 54, scope: !464)
!642 = !DILocation(line: 135, column: 37, scope: !464)
!643 = !DILocation(line: 135, column: 68, scope: !464)
!644 = !DILocation(line: 135, column: 72, scope: !464)
!645 = !DILocation(line: 135, column: 61, scope: !464)
!646 = !DILocation(line: 135, column: 21, scope: !464)
!647 = !DILocation(line: 135, column: 25, scope: !464)
!648 = !DILocation(line: 136, column: 26, scope: !464)
!649 = !DILocation(line: 136, column: 17, scope: !464)
!650 = !DILocation(line: 142, column: 55, scope: !464)
!651 = !DILocation(line: 142, column: 37, scope: !464)
!652 = !DILocation(line: 142, column: 35, scope: !464)
!653 = !DILocation(line: 142, column: 78, scope: !464)
!654 = !DILocation(line: 142, column: 80, scope: !464)
!655 = !DILocation(line: 142, column: 62, scope: !464)
!656 = !DILocation(line: 142, column: 60, scope: !464)
!657 = !DILocation(line: 147, column: 20, scope: !464)
!658 = !DILocation(line: 147, column: 17, scope: !464)
!659 = !DILocation(line: 149, column: 21, scope: !464)
!660 = !DILocation(line: 149, column: 25, scope: !464)
!661 = !DILocation(line: 150, column: 32, scope: !464)
!662 = !DILocation(line: 150, column: 19, scope: !464)
!663 = !DILocation(line: 150, column: 21, scope: !464)
!664 = !DILocation(line: 150, column: 26, scope: !464)
!665 = !DILocation(line: 151, column: 19, scope: !464)
!666 = !DILocation(line: 151, column: 21, scope: !464)
!667 = !DILocation(line: 151, column: 26, scope: !464)
!668 = !DILocation(line: 152, column: 29, scope: !464)
!669 = !DILocation(line: 152, column: 31, scope: !464)
!670 = !DILocation(line: 152, column: 21, scope: !464)
!671 = !DILocation(line: 152, column: 25, scope: !464)
!672 = !DILocation(line: 153, column: 13, scope: !464)
!673 = !DILocation(line: 154, column: 25, scope: !464)
!674 = !DILocation(line: 154, column: 22, scope: !464)
!675 = !DILocation(line: 156, column: 21, scope: !464)
!676 = !DILocation(line: 156, column: 25, scope: !464)
!677 = !DILocation(line: 157, column: 32, scope: !464)
!678 = !DILocation(line: 157, column: 53, scope: !464)
!679 = !DILocation(line: 157, column: 36, scope: !464)
!680 = !DILocation(line: 157, column: 19, scope: !464)
!681 = !DILocation(line: 157, column: 21, scope: !464)
!682 = !DILocation(line: 157, column: 26, scope: !464)
!683 = !DILocation(line: 158, column: 30, scope: !464)
!684 = !DILocation(line: 158, column: 32, scope: !464)
!685 = !DILocation(line: 158, column: 37, scope: !464)
!686 = !DILocation(line: 158, column: 19, scope: !464)
!687 = !DILocation(line: 158, column: 21, scope: !464)
!688 = !DILocation(line: 158, column: 26, scope: !464)
!689 = !DILocation(line: 159, column: 30, scope: !464)
!690 = !DILocation(line: 159, column: 32, scope: !464)
!691 = !DILocation(line: 159, column: 54, scope: !464)
!692 = !DILocation(line: 159, column: 37, scope: !464)
!693 = !DILocation(line: 159, column: 68, scope: !464)
!694 = !DILocation(line: 159, column: 72, scope: !464)
!695 = !DILocation(line: 159, column: 61, scope: !464)
!696 = !DILocation(line: 159, column: 21, scope: !464)
!697 = !DILocation(line: 159, column: 25, scope: !464)
!698 = !DILocation(line: 160, column: 13, scope: !464)
!699 = !DILocation(line: 163, column: 31, scope: !464)
!700 = !DILocation(line: 163, column: 53, scope: !464)
!701 = !DILocation(line: 163, column: 35, scope: !464)
!702 = !DILocation(line: 163, column: 21, scope: !464)
!703 = !DILocation(line: 163, column: 25, scope: !464)
!704 = !DILocation(line: 164, column: 31, scope: !464)
!705 = !DILocation(line: 164, column: 33, scope: !464)
!706 = !DILocation(line: 164, column: 56, scope: !464)
!707 = !DILocation(line: 164, column: 38, scope: !464)
!708 = !DILocation(line: 165, column: 33, scope: !464)
!709 = !DILocation(line: 165, column: 44, scope: !464)
!710 = !DILocation(line: 165, column: 37, scope: !464)
!711 = !DILocation(line: 164, column: 63, scope: !464)
!712 = !DILocation(line: 164, column: 19, scope: !464)
!713 = !DILocation(line: 164, column: 21, scope: !464)
!714 = !DILocation(line: 164, column: 26, scope: !464)
!715 = !DILocation(line: 166, column: 19, scope: !464)
!716 = !DILocation(line: 166, column: 21, scope: !464)
!717 = !DILocation(line: 166, column: 26, scope: !464)
!718 = !DILocation(line: 167, column: 29, scope: !464)
!719 = !DILocation(line: 167, column: 31, scope: !464)
!720 = !DILocation(line: 167, column: 43, scope: !464)
!721 = !DILocation(line: 167, column: 36, scope: !464)
!722 = !DILocation(line: 167, column: 21, scope: !464)
!723 = !DILocation(line: 167, column: 25, scope: !464)
!724 = !DILocation(line: 169, column: 9, scope: !464)
!725 = !DILocation(line: 176, column: 34, scope: !464)
!726 = !DILocation(line: 176, column: 36, scope: !464)
!727 = !DILocation(line: 176, column: 18, scope: !464)
!728 = !DILocation(line: 176, column: 60, scope: !464)
!729 = !DILocation(line: 176, column: 62, scope: !464)
!730 = !DILocation(line: 176, column: 44, scope: !464)
!731 = !DILocation(line: 176, column: 42, scope: !464)
!732 = !DILocation(line: 178, column: 20, scope: !464)
!733 = !DILocation(line: 178, column: 17, scope: !464)
!734 = !DILocation(line: 180, column: 21, scope: !464)
!735 = !DILocation(line: 181, column: 30, scope: !464)
!736 = !DILocation(line: 181, column: 26, scope: !464)
!737 = !DILocation(line: 181, column: 21, scope: !464)
!738 = !DILocation(line: 182, column: 17, scope: !464)
!739 = !DILocation(line: 184, column: 13, scope: !464)
!740 = !DILocation(line: 187, column: 17, scope: !464)
!741 = !DILocation(line: 187, column: 21, scope: !464)
!742 = !DILocation(line: 188, column: 20, scope: !464)
!743 = !DILocation(line: 188, column: 17, scope: !464)
!744 = !DILocation(line: 190, column: 32, scope: !464)
!745 = !DILocation(line: 190, column: 19, scope: !464)
!746 = !DILocation(line: 190, column: 21, scope: !464)
!747 = !DILocation(line: 190, column: 26, scope: !464)
!748 = !DILocation(line: 191, column: 19, scope: !464)
!749 = !DILocation(line: 191, column: 21, scope: !464)
!750 = !DILocation(line: 191, column: 26, scope: !464)
!751 = !DILocation(line: 192, column: 29, scope: !464)
!752 = !DILocation(line: 192, column: 31, scope: !464)
!753 = !DILocation(line: 192, column: 21, scope: !464)
!754 = !DILocation(line: 192, column: 25, scope: !464)
!755 = !DILocation(line: 193, column: 13, scope: !464)
!756 = !DILocation(line: 196, column: 32, scope: !464)
!757 = !DILocation(line: 196, column: 53, scope: !464)
!758 = !DILocation(line: 196, column: 36, scope: !464)
!759 = !DILocation(line: 196, column: 19, scope: !464)
!760 = !DILocation(line: 196, column: 21, scope: !464)
!761 = !DILocation(line: 196, column: 26, scope: !464)
!762 = !DILocation(line: 197, column: 30, scope: !464)
!763 = !DILocation(line: 197, column: 32, scope: !464)
!764 = !DILocation(line: 197, column: 37, scope: !464)
!765 = !DILocation(line: 197, column: 19, scope: !464)
!766 = !DILocation(line: 197, column: 21, scope: !464)
!767 = !DILocation(line: 197, column: 26, scope: !464)
!768 = !DILocation(line: 198, column: 30, scope: !464)
!769 = !DILocation(line: 198, column: 32, scope: !464)
!770 = !DILocation(line: 198, column: 54, scope: !464)
!771 = !DILocation(line: 198, column: 37, scope: !464)
!772 = !DILocation(line: 198, column: 68, scope: !464)
!773 = !DILocation(line: 198, column: 72, scope: !464)
!774 = !DILocation(line: 198, column: 61, scope: !464)
!775 = !DILocation(line: 198, column: 21, scope: !464)
!776 = !DILocation(line: 198, column: 25, scope: !464)
!777 = !DILocation(line: 0, scope: !464)
!778 = !DILocation(line: 209, column: 5, scope: !464)
!779 = !DILocation(line: 209, column: 15, scope: !464)
!780 = !DILocation(line: 212, column: 23, scope: !464)
!781 = !DILocation(line: 212, column: 25, scope: !464)
!782 = !DILocation(line: 212, column: 43, scope: !464)
!783 = !DILocation(line: 212, column: 36, scope: !464)
!784 = !DILocation(line: 212, column: 11, scope: !464)
!785 = !DILocation(line: 212, column: 13, scope: !464)
!786 = !DILocation(line: 212, column: 18, scope: !464)
!787 = !DILocation(line: 213, column: 41, scope: !464)
!788 = !DILocation(line: 213, column: 43, scope: !464)
!789 = !DILocation(line: 213, column: 36, scope: !464)
!790 = !DILocation(line: 213, column: 13, scope: !464)
!791 = !DILocation(line: 213, column: 18, scope: !464)
!792 = !DILocation(line: 214, column: 23, scope: !464)
!793 = !DILocation(line: 214, column: 25, scope: !464)
!794 = !DILocation(line: 214, column: 43, scope: !464)
!795 = !DILocation(line: 214, column: 36, scope: !464)
!796 = !DILocation(line: 214, column: 11, scope: !464)
!797 = !DILocation(line: 214, column: 13, scope: !464)
!798 = !DILocation(line: 214, column: 18, scope: !464)
!799 = !DILocation(line: 215, column: 30, scope: !464)
!800 = !DILocation(line: 215, column: 36, scope: !464)
!801 = !DILocation(line: 215, column: 13, scope: !464)
!802 = !DILocation(line: 215, column: 18, scope: !464)
!803 = !DILocation(line: 223, column: 37, scope: !464)
!804 = !DILocation(line: 223, column: 45, scope: !464)
!805 = !DILocation(line: 223, column: 49, scope: !464)
!806 = !DILocation(line: 225, column: 24, scope: !464)
!807 = !DILocation(line: 225, column: 11, scope: !464)
!808 = !DILocation(line: 225, column: 15, scope: !464)
!809 = !DILocation(line: 226, column: 5, scope: !464)
!810 = !DILocation(line: 224, column: 19, scope: !464)
!811 = !DILocation(line: 224, column: 17, scope: !464)
!812 = !DILocation(line: 209, column: 20, scope: !464)
!813 = distinct !{!813, !778, !809, !167}
!814 = !DILocation(line: 227, column: 16, scope: !464)
!815 = !DILocation(line: 227, column: 20, scope: !464)
!816 = !DILocation(line: 227, column: 28, scope: !464)
!817 = !DILocation(line: 227, column: 26, scope: !464)
!818 = !DILocation(line: 227, column: 7, scope: !464)
!819 = !DILocation(line: 227, column: 11, scope: !464)
!820 = !DILocation(line: 228, column: 9, scope: !464)
!821 = !DILocation(line: 229, column: 18, scope: !464)
!822 = !DILocation(line: 229, column: 14, scope: !464)
!823 = !DILocation(line: 229, column: 9, scope: !464)
!824 = !DILocation(line: 230, column: 14, scope: !464)
!825 = !DILocation(line: 230, column: 5, scope: !464)
!826 = !DILocation(line: 231, column: 1, scope: !464)
!827 = distinct !DISubprogram(name: "__divmoddi4", scope: !47, file: !47, line: 20, type: !222, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !134)
!828 = !DILocation(line: 22, column: 14, scope: !827)
!829 = !DILocation(line: 23, column: 16, scope: !827)
!830 = !DILocation(line: 23, column: 12, scope: !827)
!831 = !DILocation(line: 23, column: 8, scope: !827)
!832 = !DILocation(line: 24, column: 3, scope: !827)
!833 = distinct !DISubprogram(name: "__divmodsi4", scope: !49, file: !49, line: 20, type: !222, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !134)
!834 = !DILocation(line: 22, column: 14, scope: !833)
!835 = !DILocation(line: 23, column: 16, scope: !833)
!836 = !DILocation(line: 23, column: 12, scope: !833)
!837 = !DILocation(line: 23, column: 8, scope: !833)
!838 = !DILocation(line: 24, column: 3, scope: !833)
!839 = distinct !DISubprogram(name: "__divsi3", scope: !51, file: !51, line: 22, type: !222, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !134)
!840 = !DILocation(line: 25, column: 20, scope: !839)
!841 = !DILocation(line: 26, column: 20, scope: !839)
!842 = !DILocation(line: 27, column: 12, scope: !839)
!843 = !DILocation(line: 27, column: 19, scope: !839)
!844 = !DILocation(line: 28, column: 12, scope: !839)
!845 = !DILocation(line: 28, column: 19, scope: !839)
!846 = !DILocation(line: 29, column: 9, scope: !839)
!847 = !DILocation(line: 36, column: 22, scope: !839)
!848 = !DILocation(line: 36, column: 33, scope: !839)
!849 = !DILocation(line: 36, column: 40, scope: !839)
!850 = !DILocation(line: 36, column: 5, scope: !839)
!851 = distinct !DISubprogram(name: "__ffsdi2", scope: !55, file: !55, line: 22, type: !222, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !134)
!852 = !DILocation(line: 25, column: 7, scope: !851)
!853 = !DILocation(line: 25, column: 11, scope: !851)
!854 = !DILocation(line: 26, column: 13, scope: !851)
!855 = !DILocation(line: 26, column: 17, scope: !851)
!856 = !DILocation(line: 26, column: 9, scope: !851)
!857 = !DILocation(line: 28, column: 15, scope: !851)
!858 = !DILocation(line: 28, column: 17, scope: !851)
!859 = !DILocation(line: 28, column: 22, scope: !851)
!860 = !DILocation(line: 28, column: 13, scope: !851)
!861 = !DILocation(line: 29, column: 13, scope: !851)
!862 = !DILocation(line: 30, column: 32, scope: !851)
!863 = !DILocation(line: 30, column: 34, scope: !851)
!864 = !DILocation(line: 30, column: 16, scope: !851)
!865 = !DILocation(line: 30, column: 40, scope: !851)
!866 = !DILocation(line: 30, column: 9, scope: !851)
!867 = !DILocation(line: 32, column: 30, scope: !851)
!868 = !DILocation(line: 32, column: 12, scope: !851)
!869 = !DILocation(line: 32, column: 35, scope: !851)
!870 = !DILocation(line: 32, column: 5, scope: !851)
!871 = !DILocation(line: 0, scope: !851)
!872 = !DILocation(line: 33, column: 1, scope: !851)
!873 = distinct !DISubprogram(name: "__ffssi2", scope: !57, file: !57, line: 22, type: !222, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !134)
!874 = !DILocation(line: 24, column: 11, scope: !873)
!875 = !DILocation(line: 24, column: 9, scope: !873)
!876 = !DILocation(line: 26, column: 9, scope: !873)
!877 = !DILocation(line: 28, column: 12, scope: !873)
!878 = !DILocation(line: 28, column: 29, scope: !873)
!879 = !DILocation(line: 28, column: 5, scope: !873)
!880 = !DILocation(line: 0, scope: !873)
!881 = !DILocation(line: 29, column: 1, scope: !873)
!882 = distinct !DISubprogram(name: "__lshrdi3", scope: !63, file: !63, line: 24, type: !222, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !134)
!883 = !DILocation(line: 29, column: 11, scope: !882)
!884 = !DILocation(line: 29, column: 15, scope: !882)
!885 = !DILocation(line: 30, column: 11, scope: !882)
!886 = !DILocation(line: 30, column: 9, scope: !882)
!887 = !DILocation(line: 32, column: 16, scope: !882)
!888 = !DILocation(line: 32, column: 18, scope: !882)
!889 = !DILocation(line: 32, column: 23, scope: !882)
!890 = !DILocation(line: 33, column: 30, scope: !882)
!891 = !DILocation(line: 33, column: 32, scope: !882)
!892 = !DILocation(line: 33, column: 43, scope: !882)
!893 = !DILocation(line: 33, column: 37, scope: !882)
!894 = !DILocation(line: 33, column: 18, scope: !882)
!895 = !DILocation(line: 33, column: 22, scope: !882)
!896 = !DILocation(line: 34, column: 5, scope: !882)
!897 = !DILocation(line: 37, column: 15, scope: !882)
!898 = !DILocation(line: 37, column: 13, scope: !882)
!899 = !DILocation(line: 38, column: 13, scope: !882)
!900 = !DILocation(line: 39, column: 32, scope: !882)
!901 = !DILocation(line: 39, column: 34, scope: !882)
!902 = !DILocation(line: 39, column: 39, scope: !882)
!903 = !DILocation(line: 39, column: 16, scope: !882)
!904 = !DILocation(line: 39, column: 18, scope: !882)
!905 = !DILocation(line: 39, column: 24, scope: !882)
!906 = !DILocation(line: 40, column: 31, scope: !882)
!907 = !DILocation(line: 40, column: 33, scope: !882)
!908 = !DILocation(line: 40, column: 55, scope: !882)
!909 = !DILocation(line: 40, column: 38, scope: !882)
!910 = !DILocation(line: 40, column: 72, scope: !882)
!911 = !DILocation(line: 40, column: 76, scope: !882)
!912 = !DILocation(line: 40, column: 61, scope: !882)
!913 = !DILocation(line: 40, column: 18, scope: !882)
!914 = !DILocation(line: 40, column: 22, scope: !882)
!915 = !DILocation(line: 42, column: 19, scope: !882)
!916 = !DILocation(line: 42, column: 5, scope: !882)
!917 = !DILocation(line: 0, scope: !882)
!918 = !DILocation(line: 43, column: 1, scope: !882)
!919 = distinct !DISubprogram(name: "__moddi3", scope: !67, file: !67, line: 20, type: !222, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !134)
!920 = !DILocation(line: 24, column: 17, scope: !919)
!921 = !DILocation(line: 25, column: 11, scope: !919)
!922 = !DILocation(line: 26, column: 12, scope: !919)
!923 = !DILocation(line: 26, column: 17, scope: !919)
!924 = !DILocation(line: 28, column: 5, scope: !919)
!925 = !DILocation(line: 29, column: 21, scope: !919)
!926 = !DILocation(line: 29, column: 23, scope: !919)
!927 = !DILocation(line: 29, column: 28, scope: !919)
!928 = !DILocation(line: 29, column: 5, scope: !919)
!929 = distinct !DISubprogram(name: "__modsi3", scope: !69, file: !69, line: 20, type: !222, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !134)
!930 = !DILocation(line: 22, column: 16, scope: !929)
!931 = !DILocation(line: 22, column: 31, scope: !929)
!932 = !DILocation(line: 22, column: 14, scope: !929)
!933 = !DILocation(line: 22, column: 5, scope: !929)
!934 = distinct !DISubprogram(name: "__mulvdi3", scope: !73, file: !73, line: 22, type: !222, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !134)
!935 = !DILocation(line: 27, column: 11, scope: !934)
!936 = !DILocation(line: 27, column: 9, scope: !934)
!937 = !DILocation(line: 29, column: 15, scope: !934)
!938 = !DILocation(line: 29, column: 20, scope: !934)
!939 = !DILocation(line: 29, column: 25, scope: !934)
!940 = !DILocation(line: 29, column: 13, scope: !934)
!941 = !DILocation(line: 30, column: 13, scope: !934)
!942 = !DILocation(line: 31, column: 9, scope: !934)
!943 = !DILocation(line: 33, column: 11, scope: !934)
!944 = !DILocation(line: 33, column: 9, scope: !934)
!945 = !DILocation(line: 35, column: 15, scope: !934)
!946 = !DILocation(line: 35, column: 20, scope: !934)
!947 = !DILocation(line: 35, column: 25, scope: !934)
!948 = !DILocation(line: 35, column: 13, scope: !934)
!949 = !DILocation(line: 36, column: 13, scope: !934)
!950 = !DILocation(line: 37, column: 9, scope: !934)
!951 = !DILocation(line: 39, column: 19, scope: !934)
!952 = !DILocation(line: 40, column: 23, scope: !934)
!953 = !DILocation(line: 40, column: 29, scope: !934)
!954 = !DILocation(line: 41, column: 19, scope: !934)
!955 = !DILocation(line: 42, column: 23, scope: !934)
!956 = !DILocation(line: 42, column: 29, scope: !934)
!957 = !DILocation(line: 43, column: 15, scope: !934)
!958 = !DILocation(line: 43, column: 19, scope: !934)
!959 = !DILocation(line: 43, column: 28, scope: !934)
!960 = !DILocation(line: 43, column: 9, scope: !934)
!961 = !DILocation(line: 44, column: 9, scope: !934)
!962 = !DILocation(line: 45, column: 12, scope: !934)
!963 = !DILocation(line: 45, column: 9, scope: !934)
!964 = !DILocation(line: 47, column: 25, scope: !934)
!965 = !DILocation(line: 47, column: 19, scope: !934)
!966 = !DILocation(line: 47, column: 13, scope: !934)
!967 = !DILocation(line: 48, column: 13, scope: !934)
!968 = !DILocation(line: 49, column: 5, scope: !934)
!969 = !DILocation(line: 52, column: 27, scope: !934)
!970 = !DILocation(line: 52, column: 25, scope: !934)
!971 = !DILocation(line: 52, column: 19, scope: !934)
!972 = !DILocation(line: 52, column: 13, scope: !934)
!973 = !DILocation(line: 53, column: 13, scope: !934)
!974 = !DILocation(line: 55, column: 5, scope: !934)
!975 = !DILocation(line: 0, scope: !934)
!976 = !DILocation(line: 56, column: 1, scope: !934)
!977 = distinct !DISubprogram(name: "__mulvsi3", scope: !75, file: !75, line: 22, type: !222, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !134)
!978 = !DILocation(line: 27, column: 11, scope: !977)
!979 = !DILocation(line: 27, column: 9, scope: !977)
!980 = !DILocation(line: 29, column: 15, scope: !977)
!981 = !DILocation(line: 29, column: 20, scope: !977)
!982 = !DILocation(line: 29, column: 25, scope: !977)
!983 = !DILocation(line: 29, column: 13, scope: !977)
!984 = !DILocation(line: 30, column: 13, scope: !977)
!985 = !DILocation(line: 31, column: 9, scope: !977)
!986 = !DILocation(line: 33, column: 11, scope: !977)
!987 = !DILocation(line: 33, column: 9, scope: !977)
!988 = !DILocation(line: 35, column: 15, scope: !977)
!989 = !DILocation(line: 35, column: 20, scope: !977)
!990 = !DILocation(line: 35, column: 25, scope: !977)
!991 = !DILocation(line: 35, column: 13, scope: !977)
!992 = !DILocation(line: 36, column: 13, scope: !977)
!993 = !DILocation(line: 37, column: 9, scope: !977)
!994 = !DILocation(line: 39, column: 19, scope: !977)
!995 = !DILocation(line: 40, column: 23, scope: !977)
!996 = !DILocation(line: 40, column: 29, scope: !977)
!997 = !DILocation(line: 41, column: 19, scope: !977)
!998 = !DILocation(line: 42, column: 23, scope: !977)
!999 = !DILocation(line: 42, column: 29, scope: !977)
!1000 = !DILocation(line: 43, column: 15, scope: !977)
!1001 = !DILocation(line: 43, column: 19, scope: !977)
!1002 = !DILocation(line: 43, column: 28, scope: !977)
!1003 = !DILocation(line: 43, column: 9, scope: !977)
!1004 = !DILocation(line: 44, column: 9, scope: !977)
!1005 = !DILocation(line: 45, column: 12, scope: !977)
!1006 = !DILocation(line: 45, column: 9, scope: !977)
!1007 = !DILocation(line: 47, column: 25, scope: !977)
!1008 = !DILocation(line: 47, column: 19, scope: !977)
!1009 = !DILocation(line: 47, column: 13, scope: !977)
!1010 = !DILocation(line: 48, column: 13, scope: !977)
!1011 = !DILocation(line: 49, column: 5, scope: !977)
!1012 = !DILocation(line: 52, column: 27, scope: !977)
!1013 = !DILocation(line: 52, column: 25, scope: !977)
!1014 = !DILocation(line: 52, column: 19, scope: !977)
!1015 = !DILocation(line: 52, column: 13, scope: !977)
!1016 = !DILocation(line: 53, column: 13, scope: !977)
!1017 = !DILocation(line: 55, column: 5, scope: !977)
!1018 = !DILocation(line: 0, scope: !977)
!1019 = !DILocation(line: 56, column: 1, scope: !977)
!1020 = distinct !DISubprogram(name: "__paritydi2", scope: !79, file: !79, line: 20, type: !222, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !134)
!1021 = !DILocation(line: 23, column: 7, scope: !1020)
!1022 = !DILocation(line: 23, column: 11, scope: !1020)
!1023 = !DILocation(line: 24, column: 26, scope: !1020)
!1024 = !DILocation(line: 24, column: 28, scope: !1020)
!1025 = !DILocation(line: 24, column: 39, scope: !1020)
!1026 = !DILocation(line: 24, column: 33, scope: !1020)
!1027 = !DILocation(line: 24, column: 12, scope: !1020)
!1028 = !DILocation(line: 24, column: 5, scope: !1020)
!1029 = distinct !DISubprogram(name: "__paritysi2", scope: !81, file: !81, line: 20, type: !222, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !134)
!1030 = !DILocation(line: 23, column: 12, scope: !1029)
!1031 = !DILocation(line: 23, column: 7, scope: !1029)
!1032 = !DILocation(line: 24, column: 12, scope: !1029)
!1033 = !DILocation(line: 24, column: 7, scope: !1029)
!1034 = !DILocation(line: 25, column: 12, scope: !1029)
!1035 = !DILocation(line: 25, column: 7, scope: !1029)
!1036 = !DILocation(line: 26, column: 26, scope: !1029)
!1037 = !DILocation(line: 26, column: 20, scope: !1029)
!1038 = !DILocation(line: 26, column: 34, scope: !1029)
!1039 = !DILocation(line: 26, column: 5, scope: !1029)
!1040 = distinct !DISubprogram(name: "__popcountdi2", scope: !85, file: !85, line: 20, type: !222, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !134)
!1041 = !DILocation(line: 23, column: 20, scope: !1040)
!1042 = !DILocation(line: 23, column: 26, scope: !1040)
!1043 = !DILocation(line: 23, column: 13, scope: !1040)
!1044 = !DILocation(line: 25, column: 15, scope: !1040)
!1045 = !DILocation(line: 25, column: 21, scope: !1040)
!1046 = !DILocation(line: 25, column: 52, scope: !1040)
!1047 = !DILocation(line: 25, column: 46, scope: !1040)
!1048 = !DILocation(line: 27, column: 20, scope: !1040)
!1049 = !DILocation(line: 27, column: 14, scope: !1040)
!1050 = !DILocation(line: 27, column: 27, scope: !1040)
!1051 = !DILocation(line: 29, column: 34, scope: !1040)
!1052 = !DILocation(line: 29, column: 28, scope: !1040)
!1053 = !DILocation(line: 29, column: 16, scope: !1040)
!1054 = !DILocation(line: 32, column: 16, scope: !1040)
!1055 = !DILocation(line: 32, column: 11, scope: !1040)
!1056 = !DILocation(line: 35, column: 20, scope: !1040)
!1057 = !DILocation(line: 35, column: 15, scope: !1040)
!1058 = !DILocation(line: 35, column: 27, scope: !1040)
!1059 = !DILocation(line: 35, column: 5, scope: !1040)
!1060 = distinct !DISubprogram(name: "__popcountsi2", scope: !87, file: !87, line: 20, type: !222, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !134)
!1061 = !DILocation(line: 23, column: 17, scope: !1060)
!1062 = !DILocation(line: 23, column: 23, scope: !1060)
!1063 = !DILocation(line: 23, column: 11, scope: !1060)
!1064 = !DILocation(line: 25, column: 13, scope: !1060)
!1065 = !DILocation(line: 25, column: 19, scope: !1060)
!1066 = !DILocation(line: 25, column: 38, scope: !1060)
!1067 = !DILocation(line: 25, column: 33, scope: !1060)
!1068 = !DILocation(line: 27, column: 17, scope: !1060)
!1069 = !DILocation(line: 27, column: 12, scope: !1060)
!1070 = !DILocation(line: 27, column: 24, scope: !1060)
!1071 = !DILocation(line: 29, column: 17, scope: !1060)
!1072 = !DILocation(line: 29, column: 12, scope: !1060)
!1073 = !DILocation(line: 32, column: 20, scope: !1060)
!1074 = !DILocation(line: 32, column: 15, scope: !1060)
!1075 = !DILocation(line: 32, column: 27, scope: !1060)
!1076 = !DILocation(line: 32, column: 5, scope: !1060)
!1077 = distinct !DISubprogram(name: "__subvdi3", scope: !91, file: !91, line: 22, type: !222, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !134)
!1078 = !DILocation(line: 24, column: 27, scope: !1077)
!1079 = !DILocation(line: 25, column: 11, scope: !1077)
!1080 = !DILocation(line: 25, column: 9, scope: !1077)
!1081 = !DILocation(line: 27, column: 15, scope: !1077)
!1082 = !DILocation(line: 27, column: 13, scope: !1077)
!1083 = !DILocation(line: 28, column: 13, scope: !1077)
!1084 = !DILocation(line: 29, column: 5, scope: !1077)
!1085 = !DILocation(line: 32, column: 15, scope: !1077)
!1086 = !DILocation(line: 32, column: 13, scope: !1077)
!1087 = !DILocation(line: 33, column: 13, scope: !1077)
!1088 = !DILocation(line: 35, column: 5, scope: !1077)
!1089 = distinct !DISubprogram(name: "__subvsi3", scope: !93, file: !93, line: 22, type: !222, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !92, retainedNodes: !134)
!1090 = !DILocation(line: 24, column: 27, scope: !1089)
!1091 = !DILocation(line: 25, column: 11, scope: !1089)
!1092 = !DILocation(line: 25, column: 9, scope: !1089)
!1093 = !DILocation(line: 27, column: 15, scope: !1089)
!1094 = !DILocation(line: 27, column: 13, scope: !1089)
!1095 = !DILocation(line: 28, column: 13, scope: !1089)
!1096 = !DILocation(line: 29, column: 5, scope: !1089)
!1097 = !DILocation(line: 32, column: 15, scope: !1089)
!1098 = !DILocation(line: 32, column: 13, scope: !1089)
!1099 = !DILocation(line: 33, column: 13, scope: !1089)
!1100 = !DILocation(line: 35, column: 5, scope: !1089)
!1101 = distinct !DISubprogram(name: "__ucmpdi2", scope: !97, file: !97, line: 23, type: !222, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !134)
!1102 = !DILocation(line: 26, column: 7, scope: !1101)
!1103 = !DILocation(line: 26, column: 11, scope: !1101)
!1104 = !DILocation(line: 28, column: 7, scope: !1101)
!1105 = !DILocation(line: 28, column: 11, scope: !1101)
!1106 = !DILocation(line: 29, column: 11, scope: !1101)
!1107 = !DILocation(line: 29, column: 13, scope: !1101)
!1108 = !DILocation(line: 29, column: 22, scope: !1101)
!1109 = !DILocation(line: 29, column: 24, scope: !1101)
!1110 = !DILocation(line: 29, column: 18, scope: !1101)
!1111 = !DILocation(line: 29, column: 9, scope: !1101)
!1112 = !DILocation(line: 30, column: 9, scope: !1101)
!1113 = !DILocation(line: 31, column: 11, scope: !1101)
!1114 = !DILocation(line: 31, column: 13, scope: !1101)
!1115 = !DILocation(line: 31, column: 22, scope: !1101)
!1116 = !DILocation(line: 31, column: 24, scope: !1101)
!1117 = !DILocation(line: 31, column: 18, scope: !1101)
!1118 = !DILocation(line: 31, column: 9, scope: !1101)
!1119 = !DILocation(line: 32, column: 9, scope: !1101)
!1120 = !DILocation(line: 33, column: 13, scope: !1101)
!1121 = !DILocation(line: 33, column: 23, scope: !1101)
!1122 = !DILocation(line: 33, column: 17, scope: !1101)
!1123 = !DILocation(line: 33, column: 9, scope: !1101)
!1124 = !DILocation(line: 34, column: 9, scope: !1101)
!1125 = !DILocation(line: 35, column: 13, scope: !1101)
!1126 = !DILocation(line: 35, column: 23, scope: !1101)
!1127 = !DILocation(line: 35, column: 17, scope: !1101)
!1128 = !DILocation(line: 35, column: 9, scope: !1101)
!1129 = !DILocation(line: 36, column: 9, scope: !1101)
!1130 = !DILocation(line: 37, column: 5, scope: !1101)
!1131 = !DILocation(line: 0, scope: !1101)
!1132 = !DILocation(line: 38, column: 1, scope: !1101)
!1133 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !97, file: !97, line: 46, type: !222, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !134)
!1134 = !DILocation(line: 48, column: 9, scope: !1133)
!1135 = !DILocation(line: 48, column: 25, scope: !1133)
!1136 = !DILocation(line: 48, column: 2, scope: !1133)
!1137 = distinct !DISubprogram(name: "__udivdi3", scope: !101, file: !101, line: 20, type: !222, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !134)
!1138 = !DILocation(line: 22, column: 12, scope: !1137)
!1139 = !DILocation(line: 22, column: 5, scope: !1137)
!1140 = distinct !DISubprogram(name: "__udivmodsi4", scope: !105, file: !105, line: 20, type: !222, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !134)
!1141 = !DILocation(line: 22, column: 14, scope: !1140)
!1142 = !DILocation(line: 23, column: 16, scope: !1140)
!1143 = !DILocation(line: 23, column: 12, scope: !1140)
!1144 = !DILocation(line: 23, column: 8, scope: !1140)
!1145 = !DILocation(line: 24, column: 3, scope: !1140)
!1146 = distinct !DISubprogram(name: "__udivsi3", scope: !109, file: !109, line: 25, type: !222, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !134)
!1147 = !DILocation(line: 32, column: 11, scope: !1146)
!1148 = !DILocation(line: 32, column: 9, scope: !1146)
!1149 = !DILocation(line: 33, column: 9, scope: !1146)
!1150 = !DILocation(line: 34, column: 11, scope: !1146)
!1151 = !DILocation(line: 34, column: 9, scope: !1146)
!1152 = !DILocation(line: 35, column: 9, scope: !1146)
!1153 = !DILocation(line: 36, column: 10, scope: !1146)
!1154 = !DILocation(line: 36, column: 29, scope: !1146)
!1155 = !DILocation(line: 36, column: 27, scope: !1146)
!1156 = !DILocation(line: 38, column: 12, scope: !1146)
!1157 = !DILocation(line: 38, column: 9, scope: !1146)
!1158 = !DILocation(line: 39, column: 9, scope: !1146)
!1159 = !DILocation(line: 40, column: 12, scope: !1146)
!1160 = !DILocation(line: 40, column: 9, scope: !1146)
!1161 = !DILocation(line: 41, column: 9, scope: !1146)
!1162 = !DILocation(line: 42, column: 5, scope: !1146)
!1163 = !DILocation(line: 45, column: 28, scope: !1146)
!1164 = !DILocation(line: 45, column: 11, scope: !1146)
!1165 = !DILocation(line: 46, column: 11, scope: !1146)
!1166 = !DILocation(line: 48, column: 5, scope: !1146)
!1167 = !DILocation(line: 0, scope: !1146)
!1168 = !DILocation(line: 48, column: 15, scope: !1146)
!1169 = !DILocation(line: 51, column: 22, scope: !1146)
!1170 = !DILocation(line: 60, column: 41, scope: !1146)
!1171 = !DILocation(line: 63, column: 5, scope: !1146)
!1172 = !DILocation(line: 62, column: 16, scope: !1146)
!1173 = !DILocation(line: 62, column: 11, scope: !1146)
!1174 = !DILocation(line: 61, column: 19, scope: !1146)
!1175 = !DILocation(line: 52, column: 16, scope: !1146)
!1176 = !DILocation(line: 52, column: 22, scope: !1146)
!1177 = !DILocation(line: 48, column: 20, scope: !1146)
!1178 = distinct !{!1178, !1166, !1171, !167}
!1179 = !DILocation(line: 64, column: 12, scope: !1146)
!1180 = !DILocation(line: 64, column: 18, scope: !1146)
!1181 = !DILocation(line: 65, column: 5, scope: !1146)
!1182 = !DILocation(line: 66, column: 1, scope: !1146)
!1183 = distinct !DISubprogram(name: "__umoddi3", scope: !113, file: !113, line: 20, type: !222, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !134)
!1184 = !DILocation(line: 23, column: 5, scope: !1183)
!1185 = !DILocation(line: 24, column: 12, scope: !1183)
!1186 = !DILocation(line: 24, column: 5, scope: !1183)
!1187 = distinct !DISubprogram(name: "__umodsi3", scope: !115, file: !115, line: 20, type: !222, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !134)
!1188 = !DILocation(line: 22, column: 16, scope: !1187)
!1189 = !DILocation(line: 22, column: 32, scope: !1187)
!1190 = !DILocation(line: 22, column: 14, scope: !1187)
!1191 = !DILocation(line: 22, column: 5, scope: !1187)
!1192 = distinct !DISubprogram(name: "memcpy", scope: !119, file: !119, line: 3, type: !222, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !134)
!1193 = !DILocation(line: 8, column: 6, scope: !1192)
!1194 = !DILocation(line: 0, scope: !1192)
!1195 = !DILocation(line: 8, column: 19, scope: !1192)
!1196 = !DILocation(line: 8, column: 2, scope: !1192)
!1197 = !DILocation(line: 9, column: 21, scope: !1192)
!1198 = !DILocation(line: 9, column: 3, scope: !1192)
!1199 = !DILocation(line: 9, column: 19, scope: !1192)
!1200 = !DILocation(line: 10, column: 2, scope: !1192)
!1201 = !DILocation(line: 8, column: 26, scope: !1192)
!1202 = distinct !{!1202, !1196, !1200, !167}
!1203 = !DILocation(line: 11, column: 1, scope: !1192)
!1204 = distinct !DISubprogram(name: "memset", scope: !119, file: !119, line: 13, type: !222, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !134)
!1205 = !DILocation(line: 17, column: 6, scope: !1204)
!1206 = !DILocation(line: 0, scope: !1204)
!1207 = !DILocation(line: 17, column: 19, scope: !1204)
!1208 = !DILocation(line: 17, column: 2, scope: !1204)
!1209 = !DILocation(line: 18, column: 13, scope: !1204)
!1210 = !DILocation(line: 18, column: 3, scope: !1204)
!1211 = !DILocation(line: 18, column: 11, scope: !1204)
!1212 = !DILocation(line: 19, column: 2, scope: !1204)
!1213 = !DILocation(line: 17, column: 26, scope: !1204)
!1214 = distinct !{!1214, !1208, !1212, !167}
!1215 = !DILocation(line: 20, column: 2, scope: !1204)
