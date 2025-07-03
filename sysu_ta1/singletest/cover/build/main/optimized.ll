; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%union.dwords = type { i64 }
%struct.anon = type { i32, i32 }

@cover_cnt = internal global i32 0, align 4
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
define dso_local arm_aapcs_vfpcc void @cover_init() #0 !dbg !125 {
entry:
  store volatile i32 0, i32* @cover_cnt, align 4, !dbg !129
  ret void, !dbg !130
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cover_return() #0 !dbg !131 {
entry:
  %0 = load volatile i32, i32* @cover_cnt, align 4, !dbg !132
  %sub = add nsw i32 %0, -180, !dbg !133
  ret i32 %sub, !dbg !134
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @increment_c(i32 noundef %i) #0 !dbg !135 {
entry:
  %inc = add nsw i32 %i, 1, !dbg !136
  ret i32 %inc, !dbg !137
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cover_swi120(i32 noundef %c) #0 !dbg !138 {
entry:
  br label %for.cond, !dbg !139

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !140
  %c.addr.0 = phi i32 [ %c, %entry ], [ %call, %for.inc ]
  %exitcond.not = icmp eq i32 %i.0, 1, !dbg !141
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !142

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @increment_c(i32 noundef %c.addr.0) #4, !dbg !143
  br label %for.inc, !dbg !144

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !145
  br label %for.cond, !dbg !142, !llvm.loop !146

for.end:                                          ; preds = %for.cond
  ret i32 %c.addr.0, !dbg !148
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cover_swi50(i32 noundef %c) #0 !dbg !149 {
entry:
  br label %for.cond, !dbg !150

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !151
  %c.addr.0 = phi i32 [ %c, %entry ], [ %call, %for.inc ]
  %exitcond.not = icmp eq i32 %i.0, 1, !dbg !152
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !153

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @increment_c(i32 noundef %c.addr.0) #4, !dbg !154
  br label %for.inc, !dbg !155

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !156
  br label %for.cond, !dbg !153, !llvm.loop !157

for.end:                                          ; preds = %for.cond
  ret i32 %c.addr.0, !dbg !158
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cover_swi10(i32 noundef %c) #0 !dbg !159 {
entry:
  br label %for.cond, !dbg !160

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !161
  %c.addr.0 = phi i32 [ %c, %entry ], [ %call, %for.inc ]
  %exitcond.not = icmp eq i32 %i.0, 1, !dbg !162
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !163

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @increment_c(i32 noundef %c.addr.0) #4, !dbg !164
  br label %for.inc, !dbg !165

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !166
  br label %for.cond, !dbg !163, !llvm.loop !167

for.end:                                          ; preds = %for.cond
  ret i32 %c.addr.0, !dbg !168
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cover_main() #0 !dbg !169 {
entry:
  %0 = load volatile i32, i32* @cover_cnt, align 4, !dbg !170
  %call = call arm_aapcs_vfpcc i32 @cover_swi10(i32 noundef %0) #4, !dbg !171
  store volatile i32 %call, i32* @cover_cnt, align 4, !dbg !172
  %1 = load volatile i32, i32* @cover_cnt, align 4, !dbg !173
  %call1 = call arm_aapcs_vfpcc i32 @cover_swi50(i32 noundef %1) #4, !dbg !174
  store volatile i32 %call1, i32* @cover_cnt, align 4, !dbg !175
  %2 = load volatile i32, i32* @cover_cnt, align 4, !dbg !176
  %call2 = call arm_aapcs_vfpcc i32 @cover_swi120(i32 noundef %2) #4, !dbg !177
  store volatile i32 %call2, i32* @cover_cnt, align 4, !dbg !178
  ret void, !dbg !179
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !180 {
entry:
  call arm_aapcs_vfpcc void @cover_init() #4, !dbg !181
  call arm_aapcs_vfpcc void @cover_main() #4, !dbg !182
  %call = call arm_aapcs_vfpcc i32 @cover_return() #4, !dbg !183
  ret i32 %call, !dbg !184
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #1 !dbg !185 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !186
  br i1 %cmp, label %if.then, label %if.end, !dbg !187

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !188
  unreachable, !dbg !188

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !189
  ret i64 %0, !dbg !190
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #2 !dbg !191 {
entry:
  unreachable, !dbg !192
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #1 !dbg !193 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !194
  br i1 %cmp, label %if.then, label %if.end, !dbg !195

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !196
  unreachable, !dbg !196

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !197
  ret i32 %0, !dbg !198
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !199 {
entry:
  %add = add i64 %a, %b, !dbg !200
  %cmp = icmp sgt i64 %b, -1, !dbg !201
  br i1 %cmp, label %if.then, label %if.else, !dbg !202

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !203
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !204

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !205
  unreachable, !dbg !205

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !206

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !207
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !208

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !209
  unreachable, !dbg !209

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !210
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !211 {
entry:
  %add = add i32 %a, %b, !dbg !212
  %cmp = icmp sgt i32 %b, -1, !dbg !213
  br i1 %cmp, label %if.then, label %if.else, !dbg !214

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !215
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !216

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !217
  unreachable, !dbg !217

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !218

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !219
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !220

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !221
  unreachable, !dbg !221

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !222
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #1 !dbg !223 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !224
  store i64 %a, i64* %all, align 8, !dbg !225
  %and = and i32 %b, 32, !dbg !226
  %tobool.not = icmp eq i32 %and, 0, !dbg !226
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !227

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !228
  store i32 0, i32* %low, align 8, !dbg !229
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !230
  %0 = load i32, i32* %low2, align 8, !dbg !230
  %sub = add nsw i32 %b, -32, !dbg !231
  %shl = shl i32 %0, %sub, !dbg !232
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !233
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !234
  store i32 %shl, i32* %high, align 4, !dbg !235
  br label %if.end18, !dbg !236

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !237
  br i1 %cmp, label %if.then4, label %if.end, !dbg !238

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !239

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !240
  %1 = load i32, i32* %low6, align 8, !dbg !240
  %shl7 = shl i32 %1, %b, !dbg !241
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !242
  store i32 %shl7, i32* %low9, align 8, !dbg !243
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !244
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !245
  %2 = load i32, i32* %high11, align 4, !dbg !245
  %shl12 = shl i32 %2, %b, !dbg !246
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !247
  %3 = load i32, i32* %low14, align 8, !dbg !247
  %sub15 = sub nsw i32 32, %b, !dbg !248
  %shr = lshr i32 %3, %sub15, !dbg !249
  %or = or i32 %shl12, %shr, !dbg !250
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !251
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !252
  store i32 %or, i32* %high17, align 4, !dbg !253
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !254
  %4 = load i64, i64* %all19, align 8, !dbg !254
  br label %return, !dbg !255

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !256
  ret i64 %retval.0, !dbg !257
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !258 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !259
  store i64 %a, i64* %all, align 8, !dbg !260
  %and = and i32 %b, 32, !dbg !261
  %tobool.not = icmp eq i32 %and, 0, !dbg !261
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !262

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !263
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !264
  %0 = load i32, i32* %high, align 4, !dbg !264
  %shr = ashr i32 %0, 31, !dbg !265
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !266
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !267
  store i32 %shr, i32* %high2, align 4, !dbg !268
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !269
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !270
  %1 = load i32, i32* %high4, align 4, !dbg !270
  %sub = add nsw i32 %b, -32, !dbg !271
  %shr5 = ashr i32 %1, %sub, !dbg !272
  %low = bitcast %union.dwords* %result to i32*, !dbg !273
  store i32 %shr5, i32* %low, align 8, !dbg !274
  br label %if.end21, !dbg !275

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !276
  br i1 %cmp, label %if.then7, label %if.end, !dbg !277

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !278

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !279
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !280
  %2 = load i32, i32* %high9, align 4, !dbg !280
  %shr10 = ashr i32 %2, %b, !dbg !281
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !282
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !283
  store i32 %shr10, i32* %high12, align 4, !dbg !284
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !285
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !286
  %3 = load i32, i32* %high14, align 4, !dbg !286
  %sub15 = sub nsw i32 32, %b, !dbg !287
  %shl = shl i32 %3, %sub15, !dbg !288
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !289
  %4 = load i32, i32* %low17, align 8, !dbg !289
  %shr18 = lshr i32 %4, %b, !dbg !290
  %or = or i32 %shl, %shr18, !dbg !291
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !292
  store i32 %or, i32* %low20, align 8, !dbg !293
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !294
  %5 = load i64, i64* %all22, align 8, !dbg !294
  br label %return, !dbg !295

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !296
  ret i64 %retval.0, !dbg !297
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #1 !dbg !298 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !299
  store i64 %a, i64* %all, align 8, !dbg !300
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !301
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !302
  %0 = load i32, i32* %high, align 4, !dbg !302
  %cmp = icmp eq i32 %0, 0, !dbg !303
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !304
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !305
  %1 = load i32, i32* %high2, align 4, !dbg !305
  %low = bitcast %union.dwords* %x to i32*, !dbg !306
  %2 = load i32, i32* %low, align 8, !dbg !306
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !307
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !308, !range !309
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !310
  %add = add nuw nsw i32 %4, %and5, !dbg !311
  ret i32 %add, !dbg !312
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #1 !dbg !313 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !314
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !315
  %sub = sub nuw nsw i32 16, %shl, !dbg !316
  %shr = lshr i32 %a, %sub, !dbg !317
  %and1 = and i32 %shr, 65280, !dbg !318
  %cmp2 = icmp eq i32 %and1, 0, !dbg !319
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !320
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !321
  %shr6 = lshr i32 %shr, %sub5, !dbg !322
  %add = or i32 %shl, %shl4, !dbg !323
  %and7 = and i32 %shr6, 240, !dbg !324
  %cmp8 = icmp eq i32 %and7, 0, !dbg !325
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !326
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !327
  %shr12 = lshr i32 %shr6, %sub11, !dbg !328
  %add13 = or i32 %add, %shl10, !dbg !329
  %and14 = and i32 %shr12, 12, !dbg !330
  %cmp15 = icmp eq i32 %and14, 0, !dbg !331
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !332
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !333
  %shr19 = lshr i32 %shr12, %sub18, !dbg !334
  %add20 = or i32 %add13, %shl17, !dbg !335
  %sub21 = sub i32 2, %shr19, !dbg !336
  %and22 = lshr i32 %shr19, 1, !dbg !337
  %0 = or i32 %and22, -2, !dbg !337
  %.neg = add nsw i32 %0, 1, !dbg !337
  %and26 = and i32 %sub21, %.neg, !dbg !338
  %add27 = add i32 %add20, %and26, !dbg !339
  ret i32 %add27, !dbg !340
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !341 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !342
  store i64 %a, i64* %all, align 8, !dbg !343
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !344
  store i64 %b, i64* %all1, align 8, !dbg !345
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !346
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !347
  %0 = load i32, i32* %high, align 4, !dbg !347
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !348
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !349
  %1 = load i32, i32* %high3, align 4, !dbg !349
  %cmp = icmp slt i32 %0, %1, !dbg !350
  br i1 %cmp, label %if.then, label %if.end, !dbg !351

if.then:                                          ; preds = %entry
  br label %return, !dbg !352

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !353
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !354
  %2 = load i32, i32* %high5, align 4, !dbg !354
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !355
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !356
  %3 = load i32, i32* %high7, align 4, !dbg !356
  %cmp8 = icmp sgt i32 %2, %3, !dbg !357
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !358

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !359

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !360
  %4 = load i32, i32* %low, align 8, !dbg !360
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !361
  %5 = load i32, i32* %low13, align 8, !dbg !361
  %cmp14 = icmp ult i32 %4, %5, !dbg !362
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !363

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !364

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !365
  %6 = load i32, i32* %low18, align 8, !dbg !365
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !366
  %7 = load i32, i32* %low20, align 8, !dbg !366
  %cmp21 = icmp ugt i32 %6, %7, !dbg !367
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !368

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !369

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !370

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !371
  ret i32 %retval.0, !dbg !372
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !373 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !374
  %sub = add nsw i32 %call, -1, !dbg !375
  ret i32 %sub, !dbg !376
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #1 !dbg !377 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !378
  store i64 %a, i64* %all, align 8, !dbg !379
  %low = bitcast %union.dwords* %x to i32*, !dbg !380
  %0 = load i32, i32* %low, align 8, !dbg !380
  %cmp = icmp eq i32 %0, 0, !dbg !381
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !382
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !383
  %1 = load i32, i32* %high, align 4, !dbg !383
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !384
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !385, !range !309
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !386
  %add = add nuw nsw i32 %3, %and5, !dbg !387
  ret i32 %add, !dbg !388
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #1 !dbg !389 {
entry:
  %and = and i32 %a, 65535, !dbg !390
  %cmp = icmp eq i32 %and, 0, !dbg !391
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !392
  %shr = lshr i32 %a, %shl, !dbg !393
  %and1 = and i32 %shr, 255, !dbg !394
  %cmp2 = icmp eq i32 %and1, 0, !dbg !395
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !396
  %shr5 = lshr i32 %shr, %shl4, !dbg !397
  %add = or i32 %shl, %shl4, !dbg !398
  %and6 = and i32 %shr5, 15, !dbg !399
  %cmp7 = icmp eq i32 %and6, 0, !dbg !400
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !401
  %shr10 = lshr i32 %shr5, %shl9, !dbg !402
  %add11 = or i32 %add, %shl9, !dbg !403
  %and12 = and i32 %shr10, 3, !dbg !404
  %cmp13 = icmp eq i32 %and12, 0, !dbg !405
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !406
  %shr16 = lshr i32 %shr10, %shl15, !dbg !407
  %add18 = or i32 %add11, %shl15, !dbg !408
  %and17 = lshr i32 %shr16, 1, !dbg !409
  %shr19 = and i32 %and17, 1, !dbg !409
  %sub = sub nuw nsw i32 2, %shr19, !dbg !410
  %0 = or i32 %shr16, -2, !dbg !411
  %.neg = add nsw i32 %0, 1, !dbg !411
  %and24 = and i32 %sub, %.neg, !dbg !412
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !413
  ret i32 %add25, !dbg !414
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !415 {
entry:
  %shr = ashr i64 %a, 63, !dbg !416
  %shr1 = ashr i64 %b, 63, !dbg !417
  %xor = xor i64 %shr, %a, !dbg !418
  %sub = sub nsw i64 %xor, %shr, !dbg !419
  %xor2 = xor i64 %shr1, %b, !dbg !420
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !421
  %xor4 = xor i64 %shr, %shr1, !dbg !422
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !423
  %xor5 = xor i64 %call, %xor4, !dbg !424
  %sub6 = sub i64 %xor5, %xor4, !dbg !425
  ret i64 %sub6, !dbg !426
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !427 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !428
  store i64 %a, i64* %all, align 8, !dbg !429
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !430
  store i64 %b, i64* %all1, align 8, !dbg !431
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !432
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !433
  %0 = load i32, i32* %high, align 4, !dbg !433
  %cmp = icmp eq i32 %0, 0, !dbg !434
  br i1 %cmp, label %if.then, label %if.end23, !dbg !435

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !436
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !437
  %1 = load i32, i32* %high3, align 4, !dbg !437
  %cmp4 = icmp eq i32 %1, 0, !dbg !438
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !439

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !440
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !440

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !441
  %2 = load i32, i32* %low, align 8, !dbg !441
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !442
  %3 = load i32, i32* %low9, align 8, !dbg !442
  %rem10 = urem i32 %2, %3, !dbg !443
  %conv = zext i32 %rem10 to i64, !dbg !444
  store i64 %conv, i64* %rem, align 8, !dbg !445
  br label %if.end, !dbg !446

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !447
  %4 = load i32, i32* %low12, align 8, !dbg !447
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !448
  %5 = load i32, i32* %low14, align 8, !dbg !448
  %div = udiv i32 %4, %5, !dbg !449
  %conv15 = zext i32 %div to i64, !dbg !450
  br label %return, !dbg !451

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !452
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !452

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !453
  %6 = load i32, i32* %low20, align 8, !dbg !453
  %conv21 = zext i32 %6 to i64, !dbg !454
  store i64 %conv21, i64* %rem, align 8, !dbg !455
  br label %if.end22, !dbg !456

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !457

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !458
  %7 = load i32, i32* %low25, align 8, !dbg !458
  %cmp26 = icmp eq i32 %7, 0, !dbg !459
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !460

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !461
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !462
  %8 = load i32, i32* %high30, align 4, !dbg !462
  %cmp31 = icmp eq i32 %8, 0, !dbg !463
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !464

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !465
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !465

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !466
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !467
  %9 = load i32, i32* %high37, align 4, !dbg !467
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !468
  %10 = load i32, i32* %low39, align 8, !dbg !468
  %rem40 = urem i32 %9, %10, !dbg !469
  %conv41 = zext i32 %rem40 to i64, !dbg !470
  store i64 %conv41, i64* %rem, align 8, !dbg !471
  br label %if.end42, !dbg !472

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !473
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !474
  %11 = load i32, i32* %high44, align 4, !dbg !474
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !475
  %12 = load i32, i32* %low46, align 8, !dbg !475
  %div47 = udiv i32 %11, %12, !dbg !476
  %conv48 = zext i32 %div47 to i64, !dbg !477
  br label %return, !dbg !478

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !479
  %13 = load i32, i32* %low51, align 8, !dbg !479
  %cmp52 = icmp eq i32 %13, 0, !dbg !480
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !481

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !482
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !482

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !483
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !484
  %14 = load i32, i32* %high58, align 4, !dbg !484
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !485
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !486
  %15 = load i32, i32* %high60, align 4, !dbg !486
  %rem61 = urem i32 %14, %15, !dbg !487
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !488
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !489
  store i32 %rem61, i32* %high63, align 4, !dbg !490
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !491
  store i32 0, i32* %low65, align 8, !dbg !492
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !493
  %16 = load i64, i64* %all66, align 8, !dbg !493
  store i64 %16, i64* %rem, align 8, !dbg !494
  br label %if.end67, !dbg !495

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !496
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !497
  %17 = load i32, i32* %high69, align 4, !dbg !497
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !498
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !499
  %18 = load i32, i32* %high71, align 4, !dbg !499
  %div72 = udiv i32 %17, %18, !dbg !500
  %conv73 = zext i32 %div72 to i64, !dbg !501
  br label %return, !dbg !502

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !503
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !504
  %19 = load i32, i32* %high76, align 4, !dbg !504
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !505
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !506
  %20 = load i32, i32* %high78, align 4, !dbg !506
  %sub = add i32 %20, -1, !dbg !507
  %and = and i32 %19, %sub, !dbg !508
  %cmp79 = icmp eq i32 %and, 0, !dbg !509
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !510

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !511
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !511

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !512
  %21 = load i32, i32* %low85, align 8, !dbg !512
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !513
  store i32 %21, i32* %low87, align 8, !dbg !514
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !515
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !516
  %22 = load i32, i32* %high89, align 4, !dbg !516
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !517
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !518
  %23 = load i32, i32* %high91, align 4, !dbg !518
  %sub92 = add i32 %23, -1, !dbg !519
  %and93 = and i32 %22, %sub92, !dbg !520
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !521
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !522
  store i32 %and93, i32* %high95, align 4, !dbg !523
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !524
  %24 = load i64, i64* %all96, align 8, !dbg !524
  store i64 %24, i64* %rem, align 8, !dbg !525
  br label %if.end97, !dbg !526

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !527
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !528
  %25 = load i32, i32* %high99, align 4, !dbg !528
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !529
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !530
  %26 = load i32, i32* %high101, align 4, !dbg !530
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !531, !range !309
  %shr = lshr i32 %25, %27, !dbg !532
  %conv102 = zext i32 %shr to i64, !dbg !533
  br label %return, !dbg !534

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !535
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !536
  %28 = load i32, i32* %high105, align 4, !dbg !536
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !537, !range !309
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !538
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !539
  %30 = load i32, i32* %high107, align 4, !dbg !539
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !540, !range !309
  %sub108 = sub nsw i32 %29, %31, !dbg !541
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !542
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !543

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !544
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !544

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !545
  %32 = load i64, i64* %all114, align 8, !dbg !545
  store i64 %32, i64* %rem, align 8, !dbg !546
  br label %if.end115, !dbg !547

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !548

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !549
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !550
  store i32 0, i32* %low118, align 8, !dbg !551
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !552
  %33 = load i32, i32* %low120, align 8, !dbg !552
  %sub121 = sub nsw i32 31, %sub108, !dbg !553
  %shl = shl i32 %33, %sub121, !dbg !554
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !555
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !556
  store i32 %shl, i32* %high123, align 4, !dbg !557
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !558
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !559
  %34 = load i32, i32* %high125, align 4, !dbg !559
  %shr126 = lshr i32 %34, %inc, !dbg !560
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !561
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !562
  store i32 %shr126, i32* %high128, align 4, !dbg !563
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !564
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !565
  %35 = load i32, i32* %high130, align 4, !dbg !565
  %sub131 = sub nsw i32 31, %sub108, !dbg !566
  %shl132 = shl i32 %35, %sub131, !dbg !567
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !568
  %36 = load i32, i32* %low134, align 8, !dbg !568
  %shr135 = lshr i32 %36, %inc, !dbg !569
  %or = or i32 %shl132, %shr135, !dbg !570
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !571
  store i32 %or, i32* %low137, align 8, !dbg !572
  br label %if.end317, !dbg !573

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !574
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !575
  %37 = load i32, i32* %high139, align 4, !dbg !575
  %cmp140 = icmp eq i32 %37, 0, !dbg !576
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !577

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !578
  %38 = load i32, i32* %low144, align 8, !dbg !578
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !579, !range !309
  %cmp149 = icmp ult i32 %39, 2, !dbg !579
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !580

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !581
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !581

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !582
  %40 = load i32, i32* %low155, align 8, !dbg !582
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !583
  %41 = load i32, i32* %low157, align 8, !dbg !583
  %sub158 = add i32 %41, -1, !dbg !584
  %and159 = and i32 %40, %sub158, !dbg !585
  %conv160 = zext i32 %and159 to i64, !dbg !586
  store i64 %conv160, i64* %rem, align 8, !dbg !587
  br label %if.end161, !dbg !588

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !589
  %42 = load i32, i32* %low163, align 8, !dbg !589
  %cmp164 = icmp eq i32 %42, 1, !dbg !590
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !591

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !592
  %43 = load i64, i64* %all167, align 8, !dbg !592
  br label %return, !dbg !593

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !594
  %44 = load i32, i32* %low170, align 8, !dbg !594
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !595, !range !309
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !596
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !597
  %46 = load i32, i32* %high172, align 4, !dbg !597
  %shr173 = lshr i32 %46, %45, !dbg !598
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !599
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !600
  store i32 %shr173, i32* %high175, align 4, !dbg !601
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !602
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !603
  %47 = load i32, i32* %high177, align 4, !dbg !603
  %sub178 = sub nuw nsw i32 32, %45, !dbg !604
  %shl179 = shl i32 %47, %sub178, !dbg !605
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !606
  %48 = load i32, i32* %low181, align 8, !dbg !606
  %shr182 = lshr i32 %48, %45, !dbg !607
  %or183 = or i32 %shl179, %shr182, !dbg !608
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !609
  store i32 %or183, i32* %low185, align 8, !dbg !610
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !611
  %49 = load i64, i64* %all186, align 8, !dbg !611
  br label %return, !dbg !612

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !613
  %50 = load i32, i32* %low189, align 8, !dbg !613
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !614, !range !309
  %add = add nuw nsw i32 %51, 33, !dbg !615
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !616
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !617
  %52 = load i32, i32* %high191, align 4, !dbg !617
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !618, !range !309
  %sub192 = sub nsw i32 %add, %53, !dbg !619
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !620
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !621

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !622
  store i32 0, i32* %low197, align 8, !dbg !623
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !624
  %54 = load i32, i32* %low199, align 8, !dbg !624
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !625
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !626
  store i32 %54, i32* %high201, align 4, !dbg !627
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !628
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !629
  store i32 0, i32* %high203, align 4, !dbg !630
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !631
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !632
  %55 = load i32, i32* %high205, align 4, !dbg !632
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !633
  store i32 %55, i32* %low207, align 8, !dbg !634
  br label %if.end262, !dbg !635

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !636
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !637

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !638
  store i32 0, i32* %low213, align 8, !dbg !639
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !640
  %56 = load i32, i32* %low215, align 8, !dbg !640
  %sub216 = sub nsw i32 32, %sub192, !dbg !641
  %shl217 = shl i32 %56, %sub216, !dbg !642
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !643
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !644
  store i32 %shl217, i32* %high219, align 4, !dbg !645
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !646
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !647
  %57 = load i32, i32* %high221, align 4, !dbg !647
  %shr222 = lshr i32 %57, %sub192, !dbg !648
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !649
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !650
  store i32 %shr222, i32* %high224, align 4, !dbg !651
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !652
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !653
  %58 = load i32, i32* %high226, align 4, !dbg !653
  %sub227 = sub nsw i32 32, %sub192, !dbg !654
  %shl228 = shl i32 %58, %sub227, !dbg !655
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !656
  %59 = load i32, i32* %low230, align 8, !dbg !656
  %shr231 = lshr i32 %59, %sub192, !dbg !657
  %or232 = or i32 %shl228, %shr231, !dbg !658
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !659
  store i32 %or232, i32* %low234, align 8, !dbg !660
  br label %if.end261, !dbg !661

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !662
  %60 = load i32, i32* %low237, align 8, !dbg !662
  %sub238 = sub nsw i32 64, %sub192, !dbg !663
  %shl239 = shl i32 %60, %sub238, !dbg !664
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !665
  store i32 %shl239, i32* %low241, align 8, !dbg !666
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !667
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !668
  %61 = load i32, i32* %high243, align 4, !dbg !668
  %sub244 = sub nsw i32 64, %sub192, !dbg !669
  %shl245 = shl i32 %61, %sub244, !dbg !670
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !671
  %62 = load i32, i32* %low247, align 8, !dbg !671
  %sub248 = add nsw i32 %sub192, -32, !dbg !672
  %shr249 = lshr i32 %62, %sub248, !dbg !673
  %or250 = or i32 %shl245, %shr249, !dbg !674
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !675
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !676
  store i32 %or250, i32* %high252, align 4, !dbg !677
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !678
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !679
  store i32 0, i32* %high254, align 4, !dbg !680
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !681
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !682
  %63 = load i32, i32* %high256, align 4, !dbg !682
  %sub257 = add nsw i32 %sub192, -32, !dbg !683
  %shr258 = lshr i32 %63, %sub257, !dbg !684
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !685
  store i32 %shr258, i32* %low260, align 8, !dbg !686
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !687

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !688
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !689
  %64 = load i32, i32* %high265, align 4, !dbg !689
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !690, !range !309
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !691
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !692
  %66 = load i32, i32* %high267, align 4, !dbg !692
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !693, !range !309
  %sub268 = sub nsw i32 %65, %67, !dbg !694
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !695
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !696

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !697
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !697

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !698
  %68 = load i64, i64* %all274, align 8, !dbg !698
  store i64 %68, i64* %rem, align 8, !dbg !699
  br label %if.end275, !dbg !700

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !701

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !702
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !703
  store i32 0, i32* %low279, align 8, !dbg !704
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !705
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !706

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !707
  %69 = load i32, i32* %low284, align 8, !dbg !707
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !708
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !709
  store i32 %69, i32* %high286, align 4, !dbg !710
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !711
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !712
  store i32 0, i32* %high288, align 4, !dbg !713
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !714
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !715
  %70 = load i32, i32* %high290, align 4, !dbg !715
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !716
  store i32 %70, i32* %low292, align 8, !dbg !717
  br label %if.end315, !dbg !718

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !719
  %71 = load i32, i32* %low295, align 8, !dbg !719
  %sub296 = sub nsw i32 31, %sub268, !dbg !720
  %shl297 = shl i32 %71, %sub296, !dbg !721
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !722
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !723
  store i32 %shl297, i32* %high299, align 4, !dbg !724
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !725
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !726
  %72 = load i32, i32* %high301, align 4, !dbg !726
  %shr302 = lshr i32 %72, %inc277, !dbg !727
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !728
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !729
  store i32 %shr302, i32* %high304, align 4, !dbg !730
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !731
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !732
  %73 = load i32, i32* %high306, align 4, !dbg !732
  %sub307 = sub nsw i32 31, %sub268, !dbg !733
  %shl308 = shl i32 %73, %sub307, !dbg !734
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !735
  %74 = load i32, i32* %low310, align 8, !dbg !735
  %shr311 = lshr i32 %74, %inc277, !dbg !736
  %or312 = or i32 %shl308, %shr311, !dbg !737
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !738
  store i32 %or312, i32* %low314, align 8, !dbg !739
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !740
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !740
  br label %for.cond, !dbg !741

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !740
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !740
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !742
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !741

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !743
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !744
  %75 = load i32, i32* %high321, align 4, !dbg !744
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !745
  %76 = load i32, i32* %low324, align 8, !dbg !745
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !746
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !747
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !748
  store i32 %or326, i32* %high328, align 4, !dbg !749
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !750
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !751
  %77 = load i32, i32* %high333, align 4, !dbg !751
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !752
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !753
  store i32 %or335, i32* %low337, align 8, !dbg !754
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !755
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !756
  %78 = load i32, i32* %high339, align 4, !dbg !756
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !757
  %79 = load i32, i32* %low342, align 8, !dbg !757
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !758
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !759
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !760
  store i32 %or344, i32* %high346, align 4, !dbg !761
  %shl349 = shl i32 %79, 1, !dbg !762
  %or350 = or i32 %shl349, %carry.0, !dbg !763
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !764
  store i32 %or350, i32* %low352, align 8, !dbg !765
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !766
  %80 = load i64, i64* %all354, align 8, !dbg !766
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !767
  %81 = load i64, i64* %all355, align 8, !dbg !767
  %82 = xor i64 %81, -1, !dbg !768
  %sub357 = add i64 %80, %82, !dbg !768
  %isneg = icmp slt i64 %sub357, 0, !dbg !769
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !769
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !770
  %sub364 = sub i64 %81, %and362, !dbg !771
  store i64 %sub364, i64* %all363, align 8, !dbg !771
  br label %for.inc, !dbg !772

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !773
  %conv360 = trunc i64 %and359 to i32, !dbg !774
  %dec = add i32 %sr.2, -1, !dbg !775
  br label %for.cond, !dbg !741, !llvm.loop !776

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !777
  %83 = load i64, i64* %all365, align 8, !dbg !777
  %shl366 = shl i64 %83, 1, !dbg !778
  %conv367 = zext i32 %carry.0 to i64, !dbg !779
  %or368 = or i64 %shl366, %conv367, !dbg !780
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !781
  store i64 %or368, i64* %all369, align 8, !dbg !782
  %tobool370.not = icmp eq i64* %rem, null, !dbg !783
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !783

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !784
  %84 = load i64, i64* %all372, align 8, !dbg !784
  store i64 %84, i64* %rem, align 8, !dbg !785
  br label %if.end373, !dbg !786

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !787
  %85 = load i64, i64* %all374, align 8, !dbg !787
  br label %return, !dbg !788

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !740
  ret i64 %retval.0, !dbg !789
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !790 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !791
  %mul = mul nsw i64 %call, %b, !dbg !792
  %sub = sub nsw i64 %a, %mul, !dbg !793
  store i64 %sub, i64* %rem, align 8, !dbg !794
  ret i64 %call, !dbg !795
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !796 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !797
  %mul = mul nsw i32 %call, %b, !dbg !798
  %sub = sub nsw i32 %a, %mul, !dbg !799
  store i32 %sub, i32* %rem, align 4, !dbg !800
  ret i32 %call, !dbg !801
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !802 {
entry:
  %shr = ashr i32 %a, 31, !dbg !803
  %shr1 = ashr i32 %b, 31, !dbg !804
  %xor = xor i32 %shr, %a, !dbg !805
  %sub = sub nsw i32 %xor, %shr, !dbg !806
  %xor2 = xor i32 %shr1, %b, !dbg !807
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !808
  %xor4 = xor i32 %shr, %shr1, !dbg !809
  %div = udiv i32 %sub, %sub3, !dbg !810
  %xor5 = xor i32 %div, %xor4, !dbg !811
  %sub6 = sub i32 %xor5, %xor4, !dbg !812
  ret i32 %sub6, !dbg !813
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #1 !dbg !814 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !815
  store i64 %a, i64* %all, align 8, !dbg !816
  %low = bitcast %union.dwords* %x to i32*, !dbg !817
  %0 = load i32, i32* %low, align 8, !dbg !817
  %cmp = icmp eq i32 %0, 0, !dbg !818
  br i1 %cmp, label %if.then, label %if.end6, !dbg !819

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !820
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !821
  %1 = load i32, i32* %high, align 4, !dbg !821
  %cmp2 = icmp eq i32 %1, 0, !dbg !822
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !823

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !824

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !825
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !826
  %2 = load i32, i32* %high5, align 4, !dbg !826
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !827, !range !309
  %add = add nuw nsw i32 %3, 33, !dbg !828
  br label %return, !dbg !829

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !830
  %4 = load i32, i32* %low8, align 8, !dbg !830
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !831, !range !309
  %add9 = add nuw nsw i32 %5, 1, !dbg !832
  br label %return, !dbg !833

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !834
  ret i32 %retval.0, !dbg !835
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #1 !dbg !836 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !837
  br i1 %cmp, label %if.then, label %if.end, !dbg !838

if.then:                                          ; preds = %entry
  br label %return, !dbg !839

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !840, !range !309
  %add = add nuw nsw i32 %0, 1, !dbg !841
  br label %return, !dbg !842

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !843
  ret i32 %retval.0, !dbg !844
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !845 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !846
  store i64 %a, i64* %all, align 8, !dbg !847
  %and = and i32 %b, 32, !dbg !848
  %tobool.not = icmp eq i32 %and, 0, !dbg !848
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !849

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !850
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !851
  store i32 0, i32* %high, align 4, !dbg !852
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !853
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !854
  %0 = load i32, i32* %high2, align 4, !dbg !854
  %sub = add nsw i32 %b, -32, !dbg !855
  %shr = lshr i32 %0, %sub, !dbg !856
  %low = bitcast %union.dwords* %result to i32*, !dbg !857
  store i32 %shr, i32* %low, align 8, !dbg !858
  br label %if.end18, !dbg !859

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !860
  br i1 %cmp, label %if.then4, label %if.end, !dbg !861

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !862

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !863
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !864
  %1 = load i32, i32* %high6, align 4, !dbg !864
  %shr7 = lshr i32 %1, %b, !dbg !865
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !866
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !867
  store i32 %shr7, i32* %high9, align 4, !dbg !868
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !869
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !870
  %2 = load i32, i32* %high11, align 4, !dbg !870
  %sub12 = sub nsw i32 32, %b, !dbg !871
  %shl = shl i32 %2, %sub12, !dbg !872
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !873
  %3 = load i32, i32* %low14, align 8, !dbg !873
  %shr15 = lshr i32 %3, %b, !dbg !874
  %or = or i32 %shl, %shr15, !dbg !875
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !876
  store i32 %or, i32* %low17, align 8, !dbg !877
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !878
  %4 = load i64, i64* %all19, align 8, !dbg !878
  br label %return, !dbg !879

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !880
  ret i64 %retval.0, !dbg !881
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !882 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !883
  %shr1 = ashr i64 %a, 63, !dbg !884
  %xor2 = xor i64 %shr1, %a, !dbg !885
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !886
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !887
  %1 = load i64, i64* %r, align 8, !dbg !888
  %xor4 = xor i64 %1, %shr1, !dbg !889
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !890
  ret i64 %sub5, !dbg !891
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !892 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !893
  %mul = mul nsw i32 %call, %b, !dbg !894
  %sub = sub nsw i32 %a, %mul, !dbg !895
  ret i32 %sub, !dbg !896
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !897 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !898
  br i1 %cmp, label %if.then, label %if.end4, !dbg !899

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !900
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !901

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !902
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !903

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !904

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !905
  unreachable, !dbg !905

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !906
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !907

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !908
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !909

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !910
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !911

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !912

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !913
  unreachable, !dbg !913

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !914
  %xor = xor i64 %shr, %a, !dbg !915
  %sub = sub nsw i64 %xor, %shr, !dbg !916
  %shr14 = ashr i64 %b, 63, !dbg !917
  %xor15 = xor i64 %shr14, %b, !dbg !918
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !919
  %cmp17 = icmp slt i64 %sub, 2, !dbg !920
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !921

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !922
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !923

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !924

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !925
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !926

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !927
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !928
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !929

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !930
  unreachable, !dbg !930

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !931

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !932
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !933
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !934
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !935

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !936
  unreachable, !dbg !936

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !937

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !938
  ret i64 %retval.0, !dbg !939
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !940 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !941
  br i1 %cmp, label %if.then, label %if.end4, !dbg !942

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !943
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !944

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !945
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !946

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !947

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !948
  unreachable, !dbg !948

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !949
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !950

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !951
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !952

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !953
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !954

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !955

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !956
  unreachable, !dbg !956

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !957
  %xor = xor i32 %shr, %a, !dbg !958
  %sub = sub nsw i32 %xor, %shr, !dbg !959
  %shr14 = ashr i32 %b, 31, !dbg !960
  %xor15 = xor i32 %shr14, %b, !dbg !961
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !962
  %cmp17 = icmp slt i32 %sub, 2, !dbg !963
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !964

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !965
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !966

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !967

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !968
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !969

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !970
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !971
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !972

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !973
  unreachable, !dbg !973

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !974

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !975
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !976
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !977
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !978

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !979
  unreachable, !dbg !979

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !980

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !981
  ret i32 %retval.0, !dbg !982
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #1 !dbg !983 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !984
  store i64 %a, i64* %all, align 8, !dbg !985
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !986
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !987
  %0 = load i32, i32* %high, align 4, !dbg !987
  %low = bitcast %union.dwords* %x to i32*, !dbg !988
  %1 = load i32, i32* %low, align 8, !dbg !988
  %xor = xor i32 %0, %1, !dbg !989
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !990
  ret i32 %call, !dbg !991
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #1 !dbg !992 {
entry:
  %shr = lshr i32 %a, 16, !dbg !993
  %xor = xor i32 %shr, %a, !dbg !994
  %shr1 = lshr i32 %xor, 8, !dbg !995
  %xor2 = xor i32 %xor, %shr1, !dbg !996
  %shr3 = lshr i32 %xor2, 4, !dbg !997
  %xor4 = xor i32 %xor2, %shr3, !dbg !998
  %and = and i32 %xor4, 15, !dbg !999
  %shr5 = lshr i32 27030, %and, !dbg !1000
  %and6 = and i32 %shr5, 1, !dbg !1001
  ret i32 %and6, !dbg !1002
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #1 !dbg !1003 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1004
  %and = and i64 %shr, 6148914691236517205, !dbg !1005
  %sub = sub i64 %a, %and, !dbg !1006
  %shr1 = lshr i64 %sub, 2, !dbg !1007
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1008
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1009
  %add = add nuw nsw i64 %and2, %and3, !dbg !1010
  %shr4 = lshr i64 %add, 4, !dbg !1011
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1012
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1013
  %shr7 = lshr i64 %and6, 32, !dbg !1014
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1015
  %conv = trunc i64 %add8 to i32, !dbg !1016
  %shr9 = lshr i32 %conv, 16, !dbg !1017
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1018
  %shr11 = lshr i32 %add10, 8, !dbg !1019
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1020
  %and13 = and i32 %add12, 127, !dbg !1021
  ret i32 %and13, !dbg !1022
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #1 !dbg !1023 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1024
  %and = and i32 %shr, 1431655765, !dbg !1025
  %sub = sub i32 %a, %and, !dbg !1026
  %shr1 = lshr i32 %sub, 2, !dbg !1027
  %and2 = and i32 %shr1, 858993459, !dbg !1028
  %and3 = and i32 %sub, 858993459, !dbg !1029
  %add = add nuw nsw i32 %and2, %and3, !dbg !1030
  %shr4 = lshr i32 %add, 4, !dbg !1031
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1032
  %and6 = and i32 %add5, 252645135, !dbg !1033
  %shr7 = lshr i32 %and6, 16, !dbg !1034
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1035
  %shr9 = lshr i32 %add8, 8, !dbg !1036
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1037
  %and11 = and i32 %add10, 63, !dbg !1038
  ret i32 %and11, !dbg !1039
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1040 {
entry:
  %sub = sub i64 %a, %b, !dbg !1041
  %cmp = icmp sgt i64 %b, -1, !dbg !1042
  br i1 %cmp, label %if.then, label %if.else, !dbg !1043

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1044
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1045

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1046
  unreachable, !dbg !1046

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1047

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1048
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1049

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1050
  unreachable, !dbg !1050

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1051
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1052 {
entry:
  %sub = sub i32 %a, %b, !dbg !1053
  %cmp = icmp sgt i32 %b, -1, !dbg !1054
  br i1 %cmp, label %if.then, label %if.else, !dbg !1055

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1056
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1057

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1058
  unreachable, !dbg !1058

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1059

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1060
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1061

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1062
  unreachable, !dbg !1062

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1063
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !1064 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1065
  store i64 %a, i64* %all, align 8, !dbg !1066
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1067
  store i64 %b, i64* %all1, align 8, !dbg !1068
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1069
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1070
  %0 = load i32, i32* %high, align 4, !dbg !1070
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1071
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1072
  %1 = load i32, i32* %high3, align 4, !dbg !1072
  %cmp = icmp ult i32 %0, %1, !dbg !1073
  br i1 %cmp, label %if.then, label %if.end, !dbg !1074

if.then:                                          ; preds = %entry
  br label %return, !dbg !1075

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1076
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1077
  %2 = load i32, i32* %high5, align 4, !dbg !1077
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1078
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1079
  %3 = load i32, i32* %high7, align 4, !dbg !1079
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1080
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1081

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1082

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1083
  %4 = load i32, i32* %low, align 8, !dbg !1083
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1084
  %5 = load i32, i32* %low13, align 8, !dbg !1084
  %cmp14 = icmp ult i32 %4, %5, !dbg !1085
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1086

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1087

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1088
  %6 = load i32, i32* %low18, align 8, !dbg !1088
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1089
  %7 = load i32, i32* %low20, align 8, !dbg !1089
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1090
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1091

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1092

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1093

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1094
  ret i32 %retval.0, !dbg !1095
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !1096 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1097
  %sub = add nsw i32 %call, -1, !dbg !1098
  ret i32 %sub, !dbg !1099
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1100 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !1101
  ret i64 %call, !dbg !1102
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !1103 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1104
  %mul = mul i32 %call, %b, !dbg !1105
  %sub = sub i32 %a, %mul, !dbg !1106
  store i32 %sub, i32* %rem, align 4, !dbg !1107
  ret i32 %call, !dbg !1108
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #1 !dbg !1109 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1110
  br i1 %cmp, label %if.then, label %if.end, !dbg !1111

if.then:                                          ; preds = %entry
  br label %return, !dbg !1112

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1113
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1114

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1115

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1116, !range !309
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1117, !range !309
  %sub = sub nsw i32 %0, %1, !dbg !1118
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1119
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1120

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1121

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1122
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1123

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1124

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1125
  %sub10 = sub nsw i32 31, %sub, !dbg !1126
  %shl = shl i32 %n, %sub10, !dbg !1127
  %shr = lshr i32 %n, %inc, !dbg !1128
  br label %for.cond, !dbg !1129

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1130
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1130
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1130
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1130
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1131
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1129

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1132
  %2 = xor i32 %or, -1, !dbg !1133
  %sub17 = add i32 %2, %d, !dbg !1133
  br label %for.inc, !dbg !1134

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1135
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1135
  %sub20 = sub i32 %or, %and19, !dbg !1136
  %and = lshr i32 %sub17, 31, !dbg !1137
  %shl14 = shl i32 %q.0, 1, !dbg !1138
  %or15 = or i32 %shl14, %carry.0, !dbg !1139
  %dec = add i32 %sr.0, -1, !dbg !1140
  br label %for.cond, !dbg !1129, !llvm.loop !1141

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1142
  %or22 = or i32 %shl21, %carry.0, !dbg !1143
  br label %return, !dbg !1144

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1130
  ret i32 %retval.0, !dbg !1145
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1146 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !1147
  %0 = load i64, i64* %r, align 8, !dbg !1148
  ret i64 %0, !dbg !1149
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1150 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1151
  %mul = mul i32 %call, %b, !dbg !1152
  %sub = sub i32 %a, %mul, !dbg !1153
  ret i32 %sub, !dbg !1154
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #1 !dbg !1155 {
entry:
  br label %for.cond, !dbg !1156

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1157
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1158
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1159

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1160
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1160
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1161
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1162
  br label %for.inc, !dbg !1163

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1164
  br label %for.cond, !dbg !1159, !llvm.loop !1165

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1166
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #1 !dbg !1167 {
entry:
  br label %for.cond, !dbg !1168

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1169
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1170
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1171

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1172
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1173
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1174
  br label %for.inc, !dbg !1175

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1176
  br label %for.cond, !dbg !1171, !llvm.loop !1177

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1178
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
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/cover/cover.c", directory: "/workspaces/llvmta/testcases/tmp.3MTEHdKd5Y", checksumkind: CSK_MD5, checksum: "b20439d968218da77f6a9051b6098546")
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
!125 = distinct !DISubprogram(name: "cover_init", scope: !126, file: !126, line: 48, type: !127, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!126 = !DIFile(filename: "batchtest/cover/cover.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "b20439d968218da77f6a9051b6098546")
!127 = !DISubroutineType(types: !128)
!128 = !{}
!129 = !DILocation(line: 50, column: 13, scope: !125)
!130 = !DILocation(line: 51, column: 1, scope: !125)
!131 = distinct !DISubprogram(name: "cover_return", scope: !126, file: !126, line: 54, type: !127, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!132 = !DILocation(line: 56, column: 10, scope: !131)
!133 = !DILocation(line: 56, column: 20, scope: !131)
!134 = !DILocation(line: 56, column: 3, scope: !131)
!135 = distinct !DISubprogram(name: "increment_c", scope: !126, file: !126, line: 60, type: !127, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!136 = !DILocation(line: 61, column: 4, scope: !135)
!137 = !DILocation(line: 62, column: 3, scope: !135)
!138 = distinct !DISubprogram(name: "cover_swi120", scope: !126, file: !126, line: 69, type: !127, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!139 = !DILocation(line: 72, column: 8, scope: !138)
!140 = !DILocation(line: 0, scope: !138)
!141 = !DILocation(line: 72, column: 17, scope: !138)
!142 = !DILocation(line: 72, column: 3, scope: !138)
!143 = !DILocation(line: 73, column: 11, scope: !138)
!144 = !DILocation(line: 74, column: 3, scope: !138)
!145 = !DILocation(line: 72, column: 23, scope: !138)
!146 = distinct !{!146, !142, !144, !147}
!147 = !{!"llvm.loop.mustprogress"}
!148 = !DILocation(line: 75, column: 3, scope: !138)
!149 = distinct !DISubprogram(name: "cover_swi50", scope: !126, file: !126, line: 79, type: !127, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!150 = !DILocation(line: 82, column: 8, scope: !149)
!151 = !DILocation(line: 0, scope: !149)
!152 = !DILocation(line: 82, column: 17, scope: !149)
!153 = !DILocation(line: 82, column: 3, scope: !149)
!154 = !DILocation(line: 83, column: 11, scope: !149)
!155 = !DILocation(line: 84, column: 3, scope: !149)
!156 = !DILocation(line: 82, column: 23, scope: !149)
!157 = distinct !{!157, !153, !155, !147}
!158 = !DILocation(line: 85, column: 3, scope: !149)
!159 = distinct !DISubprogram(name: "cover_swi10", scope: !126, file: !126, line: 91, type: !127, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!160 = !DILocation(line: 94, column: 8, scope: !159)
!161 = !DILocation(line: 0, scope: !159)
!162 = !DILocation(line: 94, column: 17, scope: !159)
!163 = !DILocation(line: 94, column: 3, scope: !159)
!164 = !DILocation(line: 95, column: 11, scope: !159)
!165 = !DILocation(line: 96, column: 3, scope: !159)
!166 = !DILocation(line: 94, column: 23, scope: !159)
!167 = distinct !{!167, !163, !165, !147}
!168 = !DILocation(line: 97, column: 3, scope: !159)
!169 = distinct !DISubprogram(name: "cover_main", scope: !126, file: !126, line: 101, type: !127, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!170 = !DILocation(line: 103, column: 28, scope: !169)
!171 = !DILocation(line: 103, column: 15, scope: !169)
!172 = !DILocation(line: 103, column: 13, scope: !169)
!173 = !DILocation(line: 105, column: 28, scope: !169)
!174 = !DILocation(line: 105, column: 15, scope: !169)
!175 = !DILocation(line: 105, column: 13, scope: !169)
!176 = !DILocation(line: 107, column: 29, scope: !169)
!177 = !DILocation(line: 107, column: 15, scope: !169)
!178 = !DILocation(line: 107, column: 13, scope: !169)
!179 = !DILocation(line: 108, column: 1, scope: !169)
!180 = distinct !DISubprogram(name: "main", scope: !126, file: !126, line: 115, type: !127, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!181 = !DILocation(line: 117, column: 3, scope: !180)
!182 = !DILocation(line: 118, column: 3, scope: !180)
!183 = !DILocation(line: 120, column: 10, scope: !180)
!184 = !DILocation(line: 120, column: 3, scope: !180)
!185 = distinct !DISubprogram(name: "__absvdi2", scope: !3, file: !3, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !128)
!186 = !DILocation(line: 25, column: 11, scope: !185)
!187 = !DILocation(line: 25, column: 9, scope: !185)
!188 = !DILocation(line: 26, column: 9, scope: !185)
!189 = !DILocation(line: 28, column: 20, scope: !185)
!190 = !DILocation(line: 28, column: 5, scope: !185)
!191 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !55, file: !55, line: 57, type: !127, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !128)
!192 = !DILocation(line: 59, column: 1, scope: !191)
!193 = distinct !DISubprogram(name: "__absvsi2", scope: !5, file: !5, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !128)
!194 = !DILocation(line: 25, column: 11, scope: !193)
!195 = !DILocation(line: 25, column: 9, scope: !193)
!196 = !DILocation(line: 26, column: 9, scope: !193)
!197 = !DILocation(line: 28, column: 20, scope: !193)
!198 = !DILocation(line: 28, column: 5, scope: !193)
!199 = distinct !DISubprogram(name: "__addvdi3", scope: !9, file: !9, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !128)
!200 = !DILocation(line: 24, column: 27, scope: !199)
!201 = !DILocation(line: 25, column: 11, scope: !199)
!202 = !DILocation(line: 25, column: 9, scope: !199)
!203 = !DILocation(line: 27, column: 15, scope: !199)
!204 = !DILocation(line: 27, column: 13, scope: !199)
!205 = !DILocation(line: 28, column: 13, scope: !199)
!206 = !DILocation(line: 29, column: 5, scope: !199)
!207 = !DILocation(line: 32, column: 15, scope: !199)
!208 = !DILocation(line: 32, column: 13, scope: !199)
!209 = !DILocation(line: 33, column: 13, scope: !199)
!210 = !DILocation(line: 35, column: 5, scope: !199)
!211 = distinct !DISubprogram(name: "__addvsi3", scope: !11, file: !11, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !128)
!212 = !DILocation(line: 24, column: 27, scope: !211)
!213 = !DILocation(line: 25, column: 11, scope: !211)
!214 = !DILocation(line: 25, column: 9, scope: !211)
!215 = !DILocation(line: 27, column: 15, scope: !211)
!216 = !DILocation(line: 27, column: 13, scope: !211)
!217 = !DILocation(line: 28, column: 13, scope: !211)
!218 = !DILocation(line: 29, column: 5, scope: !211)
!219 = !DILocation(line: 32, column: 15, scope: !211)
!220 = !DILocation(line: 32, column: 13, scope: !211)
!221 = !DILocation(line: 33, column: 13, scope: !211)
!222 = !DILocation(line: 35, column: 5, scope: !211)
!223 = distinct !DISubprogram(name: "__ashldi3", scope: !15, file: !15, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !128)
!224 = !DILocation(line: 29, column: 11, scope: !223)
!225 = !DILocation(line: 29, column: 15, scope: !223)
!226 = !DILocation(line: 30, column: 11, scope: !223)
!227 = !DILocation(line: 30, column: 9, scope: !223)
!228 = !DILocation(line: 32, column: 18, scope: !223)
!229 = !DILocation(line: 32, column: 22, scope: !223)
!230 = !DILocation(line: 33, column: 33, scope: !223)
!231 = !DILocation(line: 33, column: 43, scope: !223)
!232 = !DILocation(line: 33, column: 37, scope: !223)
!233 = !DILocation(line: 33, column: 16, scope: !223)
!234 = !DILocation(line: 33, column: 18, scope: !223)
!235 = !DILocation(line: 33, column: 23, scope: !223)
!236 = !DILocation(line: 34, column: 5, scope: !223)
!237 = !DILocation(line: 37, column: 15, scope: !223)
!238 = !DILocation(line: 37, column: 13, scope: !223)
!239 = !DILocation(line: 38, column: 13, scope: !223)
!240 = !DILocation(line: 39, column: 33, scope: !223)
!241 = !DILocation(line: 39, column: 37, scope: !223)
!242 = !DILocation(line: 39, column: 18, scope: !223)
!243 = !DILocation(line: 39, column: 23, scope: !223)
!244 = !DILocation(line: 40, column: 32, scope: !223)
!245 = !DILocation(line: 40, column: 34, scope: !223)
!246 = !DILocation(line: 40, column: 39, scope: !223)
!247 = !DILocation(line: 40, column: 56, scope: !223)
!248 = !DILocation(line: 40, column: 77, scope: !223)
!249 = !DILocation(line: 40, column: 60, scope: !223)
!250 = !DILocation(line: 40, column: 45, scope: !223)
!251 = !DILocation(line: 40, column: 16, scope: !223)
!252 = !DILocation(line: 40, column: 18, scope: !223)
!253 = !DILocation(line: 40, column: 23, scope: !223)
!254 = !DILocation(line: 42, column: 19, scope: !223)
!255 = !DILocation(line: 42, column: 5, scope: !223)
!256 = !DILocation(line: 0, scope: !223)
!257 = !DILocation(line: 43, column: 1, scope: !223)
!258 = distinct !DISubprogram(name: "__ashrdi3", scope: !19, file: !19, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !128)
!259 = !DILocation(line: 29, column: 11, scope: !258)
!260 = !DILocation(line: 29, column: 15, scope: !258)
!261 = !DILocation(line: 30, column: 11, scope: !258)
!262 = !DILocation(line: 30, column: 9, scope: !258)
!263 = !DILocation(line: 33, column: 31, scope: !258)
!264 = !DILocation(line: 33, column: 33, scope: !258)
!265 = !DILocation(line: 33, column: 38, scope: !258)
!266 = !DILocation(line: 33, column: 16, scope: !258)
!267 = !DILocation(line: 33, column: 18, scope: !258)
!268 = !DILocation(line: 33, column: 23, scope: !258)
!269 = !DILocation(line: 34, column: 30, scope: !258)
!270 = !DILocation(line: 34, column: 32, scope: !258)
!271 = !DILocation(line: 34, column: 43, scope: !258)
!272 = !DILocation(line: 34, column: 37, scope: !258)
!273 = !DILocation(line: 34, column: 18, scope: !258)
!274 = !DILocation(line: 34, column: 22, scope: !258)
!275 = !DILocation(line: 35, column: 5, scope: !258)
!276 = !DILocation(line: 38, column: 15, scope: !258)
!277 = !DILocation(line: 38, column: 13, scope: !258)
!278 = !DILocation(line: 39, column: 13, scope: !258)
!279 = !DILocation(line: 40, column: 32, scope: !258)
!280 = !DILocation(line: 40, column: 34, scope: !258)
!281 = !DILocation(line: 40, column: 39, scope: !258)
!282 = !DILocation(line: 40, column: 16, scope: !258)
!283 = !DILocation(line: 40, column: 18, scope: !258)
!284 = !DILocation(line: 40, column: 24, scope: !258)
!285 = !DILocation(line: 41, column: 31, scope: !258)
!286 = !DILocation(line: 41, column: 33, scope: !258)
!287 = !DILocation(line: 41, column: 55, scope: !258)
!288 = !DILocation(line: 41, column: 38, scope: !258)
!289 = !DILocation(line: 41, column: 72, scope: !258)
!290 = !DILocation(line: 41, column: 76, scope: !258)
!291 = !DILocation(line: 41, column: 61, scope: !258)
!292 = !DILocation(line: 41, column: 18, scope: !258)
!293 = !DILocation(line: 41, column: 22, scope: !258)
!294 = !DILocation(line: 43, column: 19, scope: !258)
!295 = !DILocation(line: 43, column: 5, scope: !258)
!296 = !DILocation(line: 0, scope: !258)
!297 = !DILocation(line: 44, column: 1, scope: !258)
!298 = distinct !DISubprogram(name: "__clzdi2", scope: !23, file: !23, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !128)
!299 = !DILocation(line: 25, column: 7, scope: !298)
!300 = !DILocation(line: 25, column: 11, scope: !298)
!301 = !DILocation(line: 26, column: 26, scope: !298)
!302 = !DILocation(line: 26, column: 28, scope: !298)
!303 = !DILocation(line: 26, column: 33, scope: !298)
!304 = !DILocation(line: 27, column: 29, scope: !298)
!305 = !DILocation(line: 27, column: 31, scope: !298)
!306 = !DILocation(line: 27, column: 49, scope: !298)
!307 = !DILocation(line: 27, column: 42, scope: !298)
!308 = !DILocation(line: 27, column: 12, scope: !298)
!309 = !{i32 0, i32 33}
!310 = !DILocation(line: 28, column: 15, scope: !298)
!311 = !DILocation(line: 27, column: 59, scope: !298)
!312 = !DILocation(line: 27, column: 5, scope: !298)
!313 = distinct !DISubprogram(name: "__clzsi2", scope: !25, file: !25, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !128)
!314 = !DILocation(line: 25, column: 34, scope: !313)
!315 = !DILocation(line: 25, column: 40, scope: !313)
!316 = !DILocation(line: 26, column: 14, scope: !313)
!317 = !DILocation(line: 26, column: 7, scope: !313)
!318 = !DILocation(line: 29, column: 13, scope: !313)
!319 = !DILocation(line: 29, column: 23, scope: !313)
!320 = !DILocation(line: 29, column: 29, scope: !313)
!321 = !DILocation(line: 30, column: 13, scope: !313)
!322 = !DILocation(line: 30, column: 7, scope: !313)
!323 = !DILocation(line: 31, column: 7, scope: !313)
!324 = !DILocation(line: 33, column: 13, scope: !313)
!325 = !DILocation(line: 33, column: 21, scope: !313)
!326 = !DILocation(line: 33, column: 27, scope: !313)
!327 = !DILocation(line: 34, column: 13, scope: !313)
!328 = !DILocation(line: 34, column: 7, scope: !313)
!329 = !DILocation(line: 35, column: 7, scope: !313)
!330 = !DILocation(line: 37, column: 13, scope: !313)
!331 = !DILocation(line: 37, column: 20, scope: !313)
!332 = !DILocation(line: 37, column: 26, scope: !313)
!333 = !DILocation(line: 38, column: 13, scope: !313)
!334 = !DILocation(line: 38, column: 7, scope: !313)
!335 = !DILocation(line: 39, column: 7, scope: !313)
!336 = !DILocation(line: 52, column: 20, scope: !313)
!337 = !DILocation(line: 52, column: 37, scope: !313)
!338 = !DILocation(line: 52, column: 25, scope: !313)
!339 = !DILocation(line: 52, column: 14, scope: !313)
!340 = !DILocation(line: 52, column: 5, scope: !313)
!341 = distinct !DISubprogram(name: "__cmpdi2", scope: !29, file: !29, line: 23, type: !127, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !128)
!342 = !DILocation(line: 26, column: 7, scope: !341)
!343 = !DILocation(line: 26, column: 11, scope: !341)
!344 = !DILocation(line: 28, column: 7, scope: !341)
!345 = !DILocation(line: 28, column: 11, scope: !341)
!346 = !DILocation(line: 29, column: 11, scope: !341)
!347 = !DILocation(line: 29, column: 13, scope: !341)
!348 = !DILocation(line: 29, column: 22, scope: !341)
!349 = !DILocation(line: 29, column: 24, scope: !341)
!350 = !DILocation(line: 29, column: 18, scope: !341)
!351 = !DILocation(line: 29, column: 9, scope: !341)
!352 = !DILocation(line: 30, column: 9, scope: !341)
!353 = !DILocation(line: 31, column: 11, scope: !341)
!354 = !DILocation(line: 31, column: 13, scope: !341)
!355 = !DILocation(line: 31, column: 22, scope: !341)
!356 = !DILocation(line: 31, column: 24, scope: !341)
!357 = !DILocation(line: 31, column: 18, scope: !341)
!358 = !DILocation(line: 31, column: 9, scope: !341)
!359 = !DILocation(line: 32, column: 9, scope: !341)
!360 = !DILocation(line: 33, column: 13, scope: !341)
!361 = !DILocation(line: 33, column: 23, scope: !341)
!362 = !DILocation(line: 33, column: 17, scope: !341)
!363 = !DILocation(line: 33, column: 9, scope: !341)
!364 = !DILocation(line: 34, column: 9, scope: !341)
!365 = !DILocation(line: 35, column: 13, scope: !341)
!366 = !DILocation(line: 35, column: 23, scope: !341)
!367 = !DILocation(line: 35, column: 17, scope: !341)
!368 = !DILocation(line: 35, column: 9, scope: !341)
!369 = !DILocation(line: 36, column: 9, scope: !341)
!370 = !DILocation(line: 37, column: 5, scope: !341)
!371 = !DILocation(line: 0, scope: !341)
!372 = !DILocation(line: 38, column: 1, scope: !341)
!373 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !29, file: !29, line: 46, type: !127, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !128)
!374 = !DILocation(line: 48, column: 9, scope: !373)
!375 = !DILocation(line: 48, column: 24, scope: !373)
!376 = !DILocation(line: 48, column: 2, scope: !373)
!377 = distinct !DISubprogram(name: "__ctzdi2", scope: !33, file: !33, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !128)
!378 = !DILocation(line: 25, column: 7, scope: !377)
!379 = !DILocation(line: 25, column: 11, scope: !377)
!380 = !DILocation(line: 26, column: 28, scope: !377)
!381 = !DILocation(line: 26, column: 32, scope: !377)
!382 = !DILocation(line: 27, column: 29, scope: !377)
!383 = !DILocation(line: 27, column: 31, scope: !377)
!384 = !DILocation(line: 27, column: 41, scope: !377)
!385 = !DILocation(line: 27, column: 12, scope: !377)
!386 = !DILocation(line: 28, column: 18, scope: !377)
!387 = !DILocation(line: 27, column: 59, scope: !377)
!388 = !DILocation(line: 27, column: 5, scope: !377)
!389 = distinct !DISubprogram(name: "__ctzsi2", scope: !35, file: !35, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !128)
!390 = !DILocation(line: 25, column: 20, scope: !389)
!391 = !DILocation(line: 25, column: 34, scope: !389)
!392 = !DILocation(line: 25, column: 40, scope: !389)
!393 = !DILocation(line: 26, column: 7, scope: !389)
!394 = !DILocation(line: 29, column: 13, scope: !389)
!395 = !DILocation(line: 29, column: 23, scope: !389)
!396 = !DILocation(line: 29, column: 29, scope: !389)
!397 = !DILocation(line: 30, column: 7, scope: !389)
!398 = !DILocation(line: 31, column: 7, scope: !389)
!399 = !DILocation(line: 33, column: 13, scope: !389)
!400 = !DILocation(line: 33, column: 21, scope: !389)
!401 = !DILocation(line: 33, column: 27, scope: !389)
!402 = !DILocation(line: 34, column: 7, scope: !389)
!403 = !DILocation(line: 35, column: 7, scope: !389)
!404 = !DILocation(line: 37, column: 13, scope: !389)
!405 = !DILocation(line: 37, column: 20, scope: !389)
!406 = !DILocation(line: 37, column: 26, scope: !389)
!407 = !DILocation(line: 38, column: 7, scope: !389)
!408 = !DILocation(line: 40, column: 7, scope: !389)
!409 = !DILocation(line: 56, column: 25, scope: !389)
!410 = !DILocation(line: 56, column: 20, scope: !389)
!411 = !DILocation(line: 56, column: 44, scope: !389)
!412 = !DILocation(line: 56, column: 32, scope: !389)
!413 = !DILocation(line: 56, column: 14, scope: !389)
!414 = !DILocation(line: 56, column: 5, scope: !389)
!415 = distinct !DISubprogram(name: "__divdi3", scope: !39, file: !39, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !128)
!416 = !DILocation(line: 23, column: 20, scope: !415)
!417 = !DILocation(line: 24, column: 20, scope: !415)
!418 = !DILocation(line: 25, column: 12, scope: !415)
!419 = !DILocation(line: 25, column: 19, scope: !415)
!420 = !DILocation(line: 26, column: 12, scope: !415)
!421 = !DILocation(line: 26, column: 19, scope: !415)
!422 = !DILocation(line: 27, column: 9, scope: !415)
!423 = !DILocation(line: 28, column: 13, scope: !415)
!424 = !DILocation(line: 28, column: 44, scope: !415)
!425 = !DILocation(line: 28, column: 51, scope: !415)
!426 = !DILocation(line: 28, column: 5, scope: !415)
!427 = distinct !DISubprogram(name: "__udivmoddi4", scope: !97, file: !97, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !128)
!428 = !DILocation(line: 29, column: 7, scope: !427)
!429 = !DILocation(line: 29, column: 11, scope: !427)
!430 = !DILocation(line: 31, column: 7, scope: !427)
!431 = !DILocation(line: 31, column: 11, scope: !427)
!432 = !DILocation(line: 36, column: 11, scope: !427)
!433 = !DILocation(line: 36, column: 13, scope: !427)
!434 = !DILocation(line: 36, column: 18, scope: !427)
!435 = !DILocation(line: 36, column: 9, scope: !427)
!436 = !DILocation(line: 38, column: 15, scope: !427)
!437 = !DILocation(line: 38, column: 17, scope: !427)
!438 = !DILocation(line: 38, column: 22, scope: !427)
!439 = !DILocation(line: 38, column: 13, scope: !427)
!440 = !DILocation(line: 44, column: 17, scope: !427)
!441 = !DILocation(line: 45, column: 28, scope: !427)
!442 = !DILocation(line: 45, column: 38, scope: !427)
!443 = !DILocation(line: 45, column: 32, scope: !427)
!444 = !DILocation(line: 45, column: 24, scope: !427)
!445 = !DILocation(line: 45, column: 22, scope: !427)
!446 = !DILocation(line: 45, column: 17, scope: !427)
!447 = !DILocation(line: 46, column: 24, scope: !427)
!448 = !DILocation(line: 46, column: 34, scope: !427)
!449 = !DILocation(line: 46, column: 28, scope: !427)
!450 = !DILocation(line: 46, column: 20, scope: !427)
!451 = !DILocation(line: 46, column: 13, scope: !427)
!452 = !DILocation(line: 52, column: 13, scope: !427)
!453 = !DILocation(line: 53, column: 24, scope: !427)
!454 = !DILocation(line: 53, column: 20, scope: !427)
!455 = !DILocation(line: 53, column: 18, scope: !427)
!456 = !DILocation(line: 53, column: 13, scope: !427)
!457 = !DILocation(line: 54, column: 9, scope: !427)
!458 = !DILocation(line: 57, column: 13, scope: !427)
!459 = !DILocation(line: 57, column: 17, scope: !427)
!460 = !DILocation(line: 57, column: 9, scope: !427)
!461 = !DILocation(line: 59, column: 15, scope: !427)
!462 = !DILocation(line: 59, column: 17, scope: !427)
!463 = !DILocation(line: 59, column: 22, scope: !427)
!464 = !DILocation(line: 59, column: 13, scope: !427)
!465 = !DILocation(line: 65, column: 17, scope: !427)
!466 = !DILocation(line: 66, column: 26, scope: !427)
!467 = !DILocation(line: 66, column: 28, scope: !427)
!468 = !DILocation(line: 66, column: 39, scope: !427)
!469 = !DILocation(line: 66, column: 33, scope: !427)
!470 = !DILocation(line: 66, column: 24, scope: !427)
!471 = !DILocation(line: 66, column: 22, scope: !427)
!472 = !DILocation(line: 66, column: 17, scope: !427)
!473 = !DILocation(line: 67, column: 22, scope: !427)
!474 = !DILocation(line: 67, column: 24, scope: !427)
!475 = !DILocation(line: 67, column: 35, scope: !427)
!476 = !DILocation(line: 67, column: 29, scope: !427)
!477 = !DILocation(line: 67, column: 20, scope: !427)
!478 = !DILocation(line: 67, column: 13, scope: !427)
!479 = !DILocation(line: 70, column: 17, scope: !427)
!480 = !DILocation(line: 70, column: 21, scope: !427)
!481 = !DILocation(line: 70, column: 13, scope: !427)
!482 = !DILocation(line: 76, column: 17, scope: !427)
!483 = !DILocation(line: 78, column: 30, scope: !427)
!484 = !DILocation(line: 78, column: 32, scope: !427)
!485 = !DILocation(line: 78, column: 41, scope: !427)
!486 = !DILocation(line: 78, column: 43, scope: !427)
!487 = !DILocation(line: 78, column: 37, scope: !427)
!488 = !DILocation(line: 78, column: 19, scope: !427)
!489 = !DILocation(line: 78, column: 21, scope: !427)
!490 = !DILocation(line: 78, column: 26, scope: !427)
!491 = !DILocation(line: 79, column: 21, scope: !427)
!492 = !DILocation(line: 79, column: 25, scope: !427)
!493 = !DILocation(line: 80, column: 26, scope: !427)
!494 = !DILocation(line: 80, column: 22, scope: !427)
!495 = !DILocation(line: 81, column: 13, scope: !427)
!496 = !DILocation(line: 82, column: 22, scope: !427)
!497 = !DILocation(line: 82, column: 24, scope: !427)
!498 = !DILocation(line: 82, column: 33, scope: !427)
!499 = !DILocation(line: 82, column: 35, scope: !427)
!500 = !DILocation(line: 82, column: 29, scope: !427)
!501 = !DILocation(line: 82, column: 20, scope: !427)
!502 = !DILocation(line: 82, column: 13, scope: !427)
!503 = !DILocation(line: 88, column: 16, scope: !427)
!504 = !DILocation(line: 88, column: 18, scope: !427)
!505 = !DILocation(line: 88, column: 28, scope: !427)
!506 = !DILocation(line: 88, column: 30, scope: !427)
!507 = !DILocation(line: 88, column: 35, scope: !427)
!508 = !DILocation(line: 88, column: 23, scope: !427)
!509 = !DILocation(line: 88, column: 41, scope: !427)
!510 = !DILocation(line: 88, column: 13, scope: !427)
!511 = !DILocation(line: 90, column: 17, scope: !427)
!512 = !DILocation(line: 92, column: 31, scope: !427)
!513 = !DILocation(line: 92, column: 21, scope: !427)
!514 = !DILocation(line: 92, column: 25, scope: !427)
!515 = !DILocation(line: 93, column: 30, scope: !427)
!516 = !DILocation(line: 93, column: 32, scope: !427)
!517 = !DILocation(line: 93, column: 42, scope: !427)
!518 = !DILocation(line: 93, column: 44, scope: !427)
!519 = !DILocation(line: 93, column: 49, scope: !427)
!520 = !DILocation(line: 93, column: 37, scope: !427)
!521 = !DILocation(line: 93, column: 19, scope: !427)
!522 = !DILocation(line: 93, column: 21, scope: !427)
!523 = !DILocation(line: 93, column: 26, scope: !427)
!524 = !DILocation(line: 94, column: 26, scope: !427)
!525 = !DILocation(line: 94, column: 22, scope: !427)
!526 = !DILocation(line: 95, column: 13, scope: !427)
!527 = !DILocation(line: 96, column: 22, scope: !427)
!528 = !DILocation(line: 96, column: 24, scope: !427)
!529 = !DILocation(line: 96, column: 48, scope: !427)
!530 = !DILocation(line: 96, column: 50, scope: !427)
!531 = !DILocation(line: 96, column: 32, scope: !427)
!532 = !DILocation(line: 96, column: 29, scope: !427)
!533 = !DILocation(line: 96, column: 20, scope: !427)
!534 = !DILocation(line: 96, column: 13, scope: !427)
!535 = !DILocation(line: 102, column: 30, scope: !427)
!536 = !DILocation(line: 102, column: 32, scope: !427)
!537 = !DILocation(line: 102, column: 14, scope: !427)
!538 = !DILocation(line: 102, column: 56, scope: !427)
!539 = !DILocation(line: 102, column: 58, scope: !427)
!540 = !DILocation(line: 102, column: 40, scope: !427)
!541 = !DILocation(line: 102, column: 38, scope: !427)
!542 = !DILocation(line: 104, column: 16, scope: !427)
!543 = !DILocation(line: 104, column: 13, scope: !427)
!544 = !DILocation(line: 106, column: 16, scope: !427)
!545 = !DILocation(line: 107, column: 26, scope: !427)
!546 = !DILocation(line: 107, column: 22, scope: !427)
!547 = !DILocation(line: 107, column: 17, scope: !427)
!548 = !DILocation(line: 108, column: 13, scope: !427)
!549 = !DILocation(line: 110, column: 9, scope: !427)
!550 = !DILocation(line: 113, column: 13, scope: !427)
!551 = !DILocation(line: 113, column: 17, scope: !427)
!552 = !DILocation(line: 114, column: 24, scope: !427)
!553 = !DILocation(line: 114, column: 45, scope: !427)
!554 = !DILocation(line: 114, column: 28, scope: !427)
!555 = !DILocation(line: 114, column: 11, scope: !427)
!556 = !DILocation(line: 114, column: 13, scope: !427)
!557 = !DILocation(line: 114, column: 18, scope: !427)
!558 = !DILocation(line: 116, column: 22, scope: !427)
!559 = !DILocation(line: 116, column: 24, scope: !427)
!560 = !DILocation(line: 116, column: 29, scope: !427)
!561 = !DILocation(line: 116, column: 11, scope: !427)
!562 = !DILocation(line: 116, column: 13, scope: !427)
!563 = !DILocation(line: 116, column: 18, scope: !427)
!564 = !DILocation(line: 117, column: 22, scope: !427)
!565 = !DILocation(line: 117, column: 24, scope: !427)
!566 = !DILocation(line: 117, column: 46, scope: !427)
!567 = !DILocation(line: 117, column: 29, scope: !427)
!568 = !DILocation(line: 117, column: 60, scope: !427)
!569 = !DILocation(line: 117, column: 64, scope: !427)
!570 = !DILocation(line: 117, column: 53, scope: !427)
!571 = !DILocation(line: 117, column: 13, scope: !427)
!572 = !DILocation(line: 117, column: 17, scope: !427)
!573 = !DILocation(line: 118, column: 5, scope: !427)
!574 = !DILocation(line: 121, column: 15, scope: !427)
!575 = !DILocation(line: 121, column: 17, scope: !427)
!576 = !DILocation(line: 121, column: 22, scope: !427)
!577 = !DILocation(line: 121, column: 13, scope: !427)
!578 = !DILocation(line: 127, column: 22, scope: !427)
!579 = !DILocation(line: 127, column: 43, scope: !427)
!580 = !DILocation(line: 127, column: 17, scope: !427)
!581 = !DILocation(line: 129, column: 21, scope: !427)
!582 = !DILocation(line: 130, column: 32, scope: !427)
!583 = !DILocation(line: 130, column: 43, scope: !427)
!584 = !DILocation(line: 130, column: 47, scope: !427)
!585 = !DILocation(line: 130, column: 36, scope: !427)
!586 = !DILocation(line: 130, column: 28, scope: !427)
!587 = !DILocation(line: 130, column: 26, scope: !427)
!588 = !DILocation(line: 130, column: 21, scope: !427)
!589 = !DILocation(line: 131, column: 25, scope: !427)
!590 = !DILocation(line: 131, column: 29, scope: !427)
!591 = !DILocation(line: 131, column: 21, scope: !427)
!592 = !DILocation(line: 132, column: 30, scope: !427)
!593 = !DILocation(line: 132, column: 21, scope: !427)
!594 = !DILocation(line: 133, column: 40, scope: !427)
!595 = !DILocation(line: 133, column: 22, scope: !427)
!596 = !DILocation(line: 134, column: 30, scope: !427)
!597 = !DILocation(line: 134, column: 32, scope: !427)
!598 = !DILocation(line: 134, column: 37, scope: !427)
!599 = !DILocation(line: 134, column: 19, scope: !427)
!600 = !DILocation(line: 134, column: 21, scope: !427)
!601 = !DILocation(line: 134, column: 26, scope: !427)
!602 = !DILocation(line: 135, column: 30, scope: !427)
!603 = !DILocation(line: 135, column: 32, scope: !427)
!604 = !DILocation(line: 135, column: 54, scope: !427)
!605 = !DILocation(line: 135, column: 37, scope: !427)
!606 = !DILocation(line: 135, column: 68, scope: !427)
!607 = !DILocation(line: 135, column: 72, scope: !427)
!608 = !DILocation(line: 135, column: 61, scope: !427)
!609 = !DILocation(line: 135, column: 21, scope: !427)
!610 = !DILocation(line: 135, column: 25, scope: !427)
!611 = !DILocation(line: 136, column: 26, scope: !427)
!612 = !DILocation(line: 136, column: 17, scope: !427)
!613 = !DILocation(line: 142, column: 55, scope: !427)
!614 = !DILocation(line: 142, column: 37, scope: !427)
!615 = !DILocation(line: 142, column: 35, scope: !427)
!616 = !DILocation(line: 142, column: 78, scope: !427)
!617 = !DILocation(line: 142, column: 80, scope: !427)
!618 = !DILocation(line: 142, column: 62, scope: !427)
!619 = !DILocation(line: 142, column: 60, scope: !427)
!620 = !DILocation(line: 147, column: 20, scope: !427)
!621 = !DILocation(line: 147, column: 17, scope: !427)
!622 = !DILocation(line: 149, column: 21, scope: !427)
!623 = !DILocation(line: 149, column: 25, scope: !427)
!624 = !DILocation(line: 150, column: 32, scope: !427)
!625 = !DILocation(line: 150, column: 19, scope: !427)
!626 = !DILocation(line: 150, column: 21, scope: !427)
!627 = !DILocation(line: 150, column: 26, scope: !427)
!628 = !DILocation(line: 151, column: 19, scope: !427)
!629 = !DILocation(line: 151, column: 21, scope: !427)
!630 = !DILocation(line: 151, column: 26, scope: !427)
!631 = !DILocation(line: 152, column: 29, scope: !427)
!632 = !DILocation(line: 152, column: 31, scope: !427)
!633 = !DILocation(line: 152, column: 21, scope: !427)
!634 = !DILocation(line: 152, column: 25, scope: !427)
!635 = !DILocation(line: 153, column: 13, scope: !427)
!636 = !DILocation(line: 154, column: 25, scope: !427)
!637 = !DILocation(line: 154, column: 22, scope: !427)
!638 = !DILocation(line: 156, column: 21, scope: !427)
!639 = !DILocation(line: 156, column: 25, scope: !427)
!640 = !DILocation(line: 157, column: 32, scope: !427)
!641 = !DILocation(line: 157, column: 53, scope: !427)
!642 = !DILocation(line: 157, column: 36, scope: !427)
!643 = !DILocation(line: 157, column: 19, scope: !427)
!644 = !DILocation(line: 157, column: 21, scope: !427)
!645 = !DILocation(line: 157, column: 26, scope: !427)
!646 = !DILocation(line: 158, column: 30, scope: !427)
!647 = !DILocation(line: 158, column: 32, scope: !427)
!648 = !DILocation(line: 158, column: 37, scope: !427)
!649 = !DILocation(line: 158, column: 19, scope: !427)
!650 = !DILocation(line: 158, column: 21, scope: !427)
!651 = !DILocation(line: 158, column: 26, scope: !427)
!652 = !DILocation(line: 159, column: 30, scope: !427)
!653 = !DILocation(line: 159, column: 32, scope: !427)
!654 = !DILocation(line: 159, column: 54, scope: !427)
!655 = !DILocation(line: 159, column: 37, scope: !427)
!656 = !DILocation(line: 159, column: 68, scope: !427)
!657 = !DILocation(line: 159, column: 72, scope: !427)
!658 = !DILocation(line: 159, column: 61, scope: !427)
!659 = !DILocation(line: 159, column: 21, scope: !427)
!660 = !DILocation(line: 159, column: 25, scope: !427)
!661 = !DILocation(line: 160, column: 13, scope: !427)
!662 = !DILocation(line: 163, column: 31, scope: !427)
!663 = !DILocation(line: 163, column: 53, scope: !427)
!664 = !DILocation(line: 163, column: 35, scope: !427)
!665 = !DILocation(line: 163, column: 21, scope: !427)
!666 = !DILocation(line: 163, column: 25, scope: !427)
!667 = !DILocation(line: 164, column: 31, scope: !427)
!668 = !DILocation(line: 164, column: 33, scope: !427)
!669 = !DILocation(line: 164, column: 56, scope: !427)
!670 = !DILocation(line: 164, column: 38, scope: !427)
!671 = !DILocation(line: 165, column: 33, scope: !427)
!672 = !DILocation(line: 165, column: 44, scope: !427)
!673 = !DILocation(line: 165, column: 37, scope: !427)
!674 = !DILocation(line: 164, column: 63, scope: !427)
!675 = !DILocation(line: 164, column: 19, scope: !427)
!676 = !DILocation(line: 164, column: 21, scope: !427)
!677 = !DILocation(line: 164, column: 26, scope: !427)
!678 = !DILocation(line: 166, column: 19, scope: !427)
!679 = !DILocation(line: 166, column: 21, scope: !427)
!680 = !DILocation(line: 166, column: 26, scope: !427)
!681 = !DILocation(line: 167, column: 29, scope: !427)
!682 = !DILocation(line: 167, column: 31, scope: !427)
!683 = !DILocation(line: 167, column: 43, scope: !427)
!684 = !DILocation(line: 167, column: 36, scope: !427)
!685 = !DILocation(line: 167, column: 21, scope: !427)
!686 = !DILocation(line: 167, column: 25, scope: !427)
!687 = !DILocation(line: 169, column: 9, scope: !427)
!688 = !DILocation(line: 176, column: 34, scope: !427)
!689 = !DILocation(line: 176, column: 36, scope: !427)
!690 = !DILocation(line: 176, column: 18, scope: !427)
!691 = !DILocation(line: 176, column: 60, scope: !427)
!692 = !DILocation(line: 176, column: 62, scope: !427)
!693 = !DILocation(line: 176, column: 44, scope: !427)
!694 = !DILocation(line: 176, column: 42, scope: !427)
!695 = !DILocation(line: 178, column: 20, scope: !427)
!696 = !DILocation(line: 178, column: 17, scope: !427)
!697 = !DILocation(line: 180, column: 21, scope: !427)
!698 = !DILocation(line: 181, column: 30, scope: !427)
!699 = !DILocation(line: 181, column: 26, scope: !427)
!700 = !DILocation(line: 181, column: 21, scope: !427)
!701 = !DILocation(line: 182, column: 17, scope: !427)
!702 = !DILocation(line: 184, column: 13, scope: !427)
!703 = !DILocation(line: 187, column: 17, scope: !427)
!704 = !DILocation(line: 187, column: 21, scope: !427)
!705 = !DILocation(line: 188, column: 20, scope: !427)
!706 = !DILocation(line: 188, column: 17, scope: !427)
!707 = !DILocation(line: 190, column: 32, scope: !427)
!708 = !DILocation(line: 190, column: 19, scope: !427)
!709 = !DILocation(line: 190, column: 21, scope: !427)
!710 = !DILocation(line: 190, column: 26, scope: !427)
!711 = !DILocation(line: 191, column: 19, scope: !427)
!712 = !DILocation(line: 191, column: 21, scope: !427)
!713 = !DILocation(line: 191, column: 26, scope: !427)
!714 = !DILocation(line: 192, column: 29, scope: !427)
!715 = !DILocation(line: 192, column: 31, scope: !427)
!716 = !DILocation(line: 192, column: 21, scope: !427)
!717 = !DILocation(line: 192, column: 25, scope: !427)
!718 = !DILocation(line: 193, column: 13, scope: !427)
!719 = !DILocation(line: 196, column: 32, scope: !427)
!720 = !DILocation(line: 196, column: 53, scope: !427)
!721 = !DILocation(line: 196, column: 36, scope: !427)
!722 = !DILocation(line: 196, column: 19, scope: !427)
!723 = !DILocation(line: 196, column: 21, scope: !427)
!724 = !DILocation(line: 196, column: 26, scope: !427)
!725 = !DILocation(line: 197, column: 30, scope: !427)
!726 = !DILocation(line: 197, column: 32, scope: !427)
!727 = !DILocation(line: 197, column: 37, scope: !427)
!728 = !DILocation(line: 197, column: 19, scope: !427)
!729 = !DILocation(line: 197, column: 21, scope: !427)
!730 = !DILocation(line: 197, column: 26, scope: !427)
!731 = !DILocation(line: 198, column: 30, scope: !427)
!732 = !DILocation(line: 198, column: 32, scope: !427)
!733 = !DILocation(line: 198, column: 54, scope: !427)
!734 = !DILocation(line: 198, column: 37, scope: !427)
!735 = !DILocation(line: 198, column: 68, scope: !427)
!736 = !DILocation(line: 198, column: 72, scope: !427)
!737 = !DILocation(line: 198, column: 61, scope: !427)
!738 = !DILocation(line: 198, column: 21, scope: !427)
!739 = !DILocation(line: 198, column: 25, scope: !427)
!740 = !DILocation(line: 0, scope: !427)
!741 = !DILocation(line: 209, column: 5, scope: !427)
!742 = !DILocation(line: 209, column: 15, scope: !427)
!743 = !DILocation(line: 212, column: 23, scope: !427)
!744 = !DILocation(line: 212, column: 25, scope: !427)
!745 = !DILocation(line: 212, column: 43, scope: !427)
!746 = !DILocation(line: 212, column: 36, scope: !427)
!747 = !DILocation(line: 212, column: 11, scope: !427)
!748 = !DILocation(line: 212, column: 13, scope: !427)
!749 = !DILocation(line: 212, column: 18, scope: !427)
!750 = !DILocation(line: 213, column: 41, scope: !427)
!751 = !DILocation(line: 213, column: 43, scope: !427)
!752 = !DILocation(line: 213, column: 36, scope: !427)
!753 = !DILocation(line: 213, column: 13, scope: !427)
!754 = !DILocation(line: 213, column: 18, scope: !427)
!755 = !DILocation(line: 214, column: 23, scope: !427)
!756 = !DILocation(line: 214, column: 25, scope: !427)
!757 = !DILocation(line: 214, column: 43, scope: !427)
!758 = !DILocation(line: 214, column: 36, scope: !427)
!759 = !DILocation(line: 214, column: 11, scope: !427)
!760 = !DILocation(line: 214, column: 13, scope: !427)
!761 = !DILocation(line: 214, column: 18, scope: !427)
!762 = !DILocation(line: 215, column: 30, scope: !427)
!763 = !DILocation(line: 215, column: 36, scope: !427)
!764 = !DILocation(line: 215, column: 13, scope: !427)
!765 = !DILocation(line: 215, column: 18, scope: !427)
!766 = !DILocation(line: 223, column: 37, scope: !427)
!767 = !DILocation(line: 223, column: 45, scope: !427)
!768 = !DILocation(line: 223, column: 49, scope: !427)
!769 = !DILocation(line: 225, column: 24, scope: !427)
!770 = !DILocation(line: 225, column: 11, scope: !427)
!771 = !DILocation(line: 225, column: 15, scope: !427)
!772 = !DILocation(line: 226, column: 5, scope: !427)
!773 = !DILocation(line: 224, column: 19, scope: !427)
!774 = !DILocation(line: 224, column: 17, scope: !427)
!775 = !DILocation(line: 209, column: 20, scope: !427)
!776 = distinct !{!776, !741, !772, !147}
!777 = !DILocation(line: 227, column: 16, scope: !427)
!778 = !DILocation(line: 227, column: 20, scope: !427)
!779 = !DILocation(line: 227, column: 28, scope: !427)
!780 = !DILocation(line: 227, column: 26, scope: !427)
!781 = !DILocation(line: 227, column: 7, scope: !427)
!782 = !DILocation(line: 227, column: 11, scope: !427)
!783 = !DILocation(line: 228, column: 9, scope: !427)
!784 = !DILocation(line: 229, column: 18, scope: !427)
!785 = !DILocation(line: 229, column: 14, scope: !427)
!786 = !DILocation(line: 229, column: 9, scope: !427)
!787 = !DILocation(line: 230, column: 14, scope: !427)
!788 = !DILocation(line: 230, column: 5, scope: !427)
!789 = !DILocation(line: 231, column: 1, scope: !427)
!790 = distinct !DISubprogram(name: "__divmoddi4", scope: !41, file: !41, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !128)
!791 = !DILocation(line: 22, column: 14, scope: !790)
!792 = !DILocation(line: 23, column: 16, scope: !790)
!793 = !DILocation(line: 23, column: 12, scope: !790)
!794 = !DILocation(line: 23, column: 8, scope: !790)
!795 = !DILocation(line: 24, column: 3, scope: !790)
!796 = distinct !DISubprogram(name: "__divmodsi4", scope: !43, file: !43, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !128)
!797 = !DILocation(line: 22, column: 14, scope: !796)
!798 = !DILocation(line: 23, column: 16, scope: !796)
!799 = !DILocation(line: 23, column: 12, scope: !796)
!800 = !DILocation(line: 23, column: 8, scope: !796)
!801 = !DILocation(line: 24, column: 3, scope: !796)
!802 = distinct !DISubprogram(name: "__divsi3", scope: !45, file: !45, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !128)
!803 = !DILocation(line: 25, column: 20, scope: !802)
!804 = !DILocation(line: 26, column: 20, scope: !802)
!805 = !DILocation(line: 27, column: 12, scope: !802)
!806 = !DILocation(line: 27, column: 19, scope: !802)
!807 = !DILocation(line: 28, column: 12, scope: !802)
!808 = !DILocation(line: 28, column: 19, scope: !802)
!809 = !DILocation(line: 29, column: 9, scope: !802)
!810 = !DILocation(line: 36, column: 22, scope: !802)
!811 = !DILocation(line: 36, column: 33, scope: !802)
!812 = !DILocation(line: 36, column: 40, scope: !802)
!813 = !DILocation(line: 36, column: 5, scope: !802)
!814 = distinct !DISubprogram(name: "__ffsdi2", scope: !49, file: !49, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !128)
!815 = !DILocation(line: 25, column: 7, scope: !814)
!816 = !DILocation(line: 25, column: 11, scope: !814)
!817 = !DILocation(line: 26, column: 13, scope: !814)
!818 = !DILocation(line: 26, column: 17, scope: !814)
!819 = !DILocation(line: 26, column: 9, scope: !814)
!820 = !DILocation(line: 28, column: 15, scope: !814)
!821 = !DILocation(line: 28, column: 17, scope: !814)
!822 = !DILocation(line: 28, column: 22, scope: !814)
!823 = !DILocation(line: 28, column: 13, scope: !814)
!824 = !DILocation(line: 29, column: 13, scope: !814)
!825 = !DILocation(line: 30, column: 32, scope: !814)
!826 = !DILocation(line: 30, column: 34, scope: !814)
!827 = !DILocation(line: 30, column: 16, scope: !814)
!828 = !DILocation(line: 30, column: 40, scope: !814)
!829 = !DILocation(line: 30, column: 9, scope: !814)
!830 = !DILocation(line: 32, column: 30, scope: !814)
!831 = !DILocation(line: 32, column: 12, scope: !814)
!832 = !DILocation(line: 32, column: 35, scope: !814)
!833 = !DILocation(line: 32, column: 5, scope: !814)
!834 = !DILocation(line: 0, scope: !814)
!835 = !DILocation(line: 33, column: 1, scope: !814)
!836 = distinct !DISubprogram(name: "__ffssi2", scope: !51, file: !51, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !128)
!837 = !DILocation(line: 24, column: 11, scope: !836)
!838 = !DILocation(line: 24, column: 9, scope: !836)
!839 = !DILocation(line: 26, column: 9, scope: !836)
!840 = !DILocation(line: 28, column: 12, scope: !836)
!841 = !DILocation(line: 28, column: 29, scope: !836)
!842 = !DILocation(line: 28, column: 5, scope: !836)
!843 = !DILocation(line: 0, scope: !836)
!844 = !DILocation(line: 29, column: 1, scope: !836)
!845 = distinct !DISubprogram(name: "__lshrdi3", scope: !57, file: !57, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !128)
!846 = !DILocation(line: 29, column: 11, scope: !845)
!847 = !DILocation(line: 29, column: 15, scope: !845)
!848 = !DILocation(line: 30, column: 11, scope: !845)
!849 = !DILocation(line: 30, column: 9, scope: !845)
!850 = !DILocation(line: 32, column: 16, scope: !845)
!851 = !DILocation(line: 32, column: 18, scope: !845)
!852 = !DILocation(line: 32, column: 23, scope: !845)
!853 = !DILocation(line: 33, column: 30, scope: !845)
!854 = !DILocation(line: 33, column: 32, scope: !845)
!855 = !DILocation(line: 33, column: 43, scope: !845)
!856 = !DILocation(line: 33, column: 37, scope: !845)
!857 = !DILocation(line: 33, column: 18, scope: !845)
!858 = !DILocation(line: 33, column: 22, scope: !845)
!859 = !DILocation(line: 34, column: 5, scope: !845)
!860 = !DILocation(line: 37, column: 15, scope: !845)
!861 = !DILocation(line: 37, column: 13, scope: !845)
!862 = !DILocation(line: 38, column: 13, scope: !845)
!863 = !DILocation(line: 39, column: 32, scope: !845)
!864 = !DILocation(line: 39, column: 34, scope: !845)
!865 = !DILocation(line: 39, column: 39, scope: !845)
!866 = !DILocation(line: 39, column: 16, scope: !845)
!867 = !DILocation(line: 39, column: 18, scope: !845)
!868 = !DILocation(line: 39, column: 24, scope: !845)
!869 = !DILocation(line: 40, column: 31, scope: !845)
!870 = !DILocation(line: 40, column: 33, scope: !845)
!871 = !DILocation(line: 40, column: 55, scope: !845)
!872 = !DILocation(line: 40, column: 38, scope: !845)
!873 = !DILocation(line: 40, column: 72, scope: !845)
!874 = !DILocation(line: 40, column: 76, scope: !845)
!875 = !DILocation(line: 40, column: 61, scope: !845)
!876 = !DILocation(line: 40, column: 18, scope: !845)
!877 = !DILocation(line: 40, column: 22, scope: !845)
!878 = !DILocation(line: 42, column: 19, scope: !845)
!879 = !DILocation(line: 42, column: 5, scope: !845)
!880 = !DILocation(line: 0, scope: !845)
!881 = !DILocation(line: 43, column: 1, scope: !845)
!882 = distinct !DISubprogram(name: "__moddi3", scope: !61, file: !61, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !128)
!883 = !DILocation(line: 24, column: 17, scope: !882)
!884 = !DILocation(line: 25, column: 11, scope: !882)
!885 = !DILocation(line: 26, column: 12, scope: !882)
!886 = !DILocation(line: 26, column: 17, scope: !882)
!887 = !DILocation(line: 28, column: 5, scope: !882)
!888 = !DILocation(line: 29, column: 21, scope: !882)
!889 = !DILocation(line: 29, column: 23, scope: !882)
!890 = !DILocation(line: 29, column: 28, scope: !882)
!891 = !DILocation(line: 29, column: 5, scope: !882)
!892 = distinct !DISubprogram(name: "__modsi3", scope: !63, file: !63, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !128)
!893 = !DILocation(line: 22, column: 16, scope: !892)
!894 = !DILocation(line: 22, column: 31, scope: !892)
!895 = !DILocation(line: 22, column: 14, scope: !892)
!896 = !DILocation(line: 22, column: 5, scope: !892)
!897 = distinct !DISubprogram(name: "__mulvdi3", scope: !67, file: !67, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !128)
!898 = !DILocation(line: 27, column: 11, scope: !897)
!899 = !DILocation(line: 27, column: 9, scope: !897)
!900 = !DILocation(line: 29, column: 15, scope: !897)
!901 = !DILocation(line: 29, column: 20, scope: !897)
!902 = !DILocation(line: 29, column: 25, scope: !897)
!903 = !DILocation(line: 29, column: 13, scope: !897)
!904 = !DILocation(line: 30, column: 13, scope: !897)
!905 = !DILocation(line: 31, column: 9, scope: !897)
!906 = !DILocation(line: 33, column: 11, scope: !897)
!907 = !DILocation(line: 33, column: 9, scope: !897)
!908 = !DILocation(line: 35, column: 15, scope: !897)
!909 = !DILocation(line: 35, column: 20, scope: !897)
!910 = !DILocation(line: 35, column: 25, scope: !897)
!911 = !DILocation(line: 35, column: 13, scope: !897)
!912 = !DILocation(line: 36, column: 13, scope: !897)
!913 = !DILocation(line: 37, column: 9, scope: !897)
!914 = !DILocation(line: 39, column: 19, scope: !897)
!915 = !DILocation(line: 40, column: 23, scope: !897)
!916 = !DILocation(line: 40, column: 29, scope: !897)
!917 = !DILocation(line: 41, column: 19, scope: !897)
!918 = !DILocation(line: 42, column: 23, scope: !897)
!919 = !DILocation(line: 42, column: 29, scope: !897)
!920 = !DILocation(line: 43, column: 15, scope: !897)
!921 = !DILocation(line: 43, column: 19, scope: !897)
!922 = !DILocation(line: 43, column: 28, scope: !897)
!923 = !DILocation(line: 43, column: 9, scope: !897)
!924 = !DILocation(line: 44, column: 9, scope: !897)
!925 = !DILocation(line: 45, column: 12, scope: !897)
!926 = !DILocation(line: 45, column: 9, scope: !897)
!927 = !DILocation(line: 47, column: 25, scope: !897)
!928 = !DILocation(line: 47, column: 19, scope: !897)
!929 = !DILocation(line: 47, column: 13, scope: !897)
!930 = !DILocation(line: 48, column: 13, scope: !897)
!931 = !DILocation(line: 49, column: 5, scope: !897)
!932 = !DILocation(line: 52, column: 27, scope: !897)
!933 = !DILocation(line: 52, column: 25, scope: !897)
!934 = !DILocation(line: 52, column: 19, scope: !897)
!935 = !DILocation(line: 52, column: 13, scope: !897)
!936 = !DILocation(line: 53, column: 13, scope: !897)
!937 = !DILocation(line: 55, column: 5, scope: !897)
!938 = !DILocation(line: 0, scope: !897)
!939 = !DILocation(line: 56, column: 1, scope: !897)
!940 = distinct !DISubprogram(name: "__mulvsi3", scope: !69, file: !69, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !128)
!941 = !DILocation(line: 27, column: 11, scope: !940)
!942 = !DILocation(line: 27, column: 9, scope: !940)
!943 = !DILocation(line: 29, column: 15, scope: !940)
!944 = !DILocation(line: 29, column: 20, scope: !940)
!945 = !DILocation(line: 29, column: 25, scope: !940)
!946 = !DILocation(line: 29, column: 13, scope: !940)
!947 = !DILocation(line: 30, column: 13, scope: !940)
!948 = !DILocation(line: 31, column: 9, scope: !940)
!949 = !DILocation(line: 33, column: 11, scope: !940)
!950 = !DILocation(line: 33, column: 9, scope: !940)
!951 = !DILocation(line: 35, column: 15, scope: !940)
!952 = !DILocation(line: 35, column: 20, scope: !940)
!953 = !DILocation(line: 35, column: 25, scope: !940)
!954 = !DILocation(line: 35, column: 13, scope: !940)
!955 = !DILocation(line: 36, column: 13, scope: !940)
!956 = !DILocation(line: 37, column: 9, scope: !940)
!957 = !DILocation(line: 39, column: 19, scope: !940)
!958 = !DILocation(line: 40, column: 23, scope: !940)
!959 = !DILocation(line: 40, column: 29, scope: !940)
!960 = !DILocation(line: 41, column: 19, scope: !940)
!961 = !DILocation(line: 42, column: 23, scope: !940)
!962 = !DILocation(line: 42, column: 29, scope: !940)
!963 = !DILocation(line: 43, column: 15, scope: !940)
!964 = !DILocation(line: 43, column: 19, scope: !940)
!965 = !DILocation(line: 43, column: 28, scope: !940)
!966 = !DILocation(line: 43, column: 9, scope: !940)
!967 = !DILocation(line: 44, column: 9, scope: !940)
!968 = !DILocation(line: 45, column: 12, scope: !940)
!969 = !DILocation(line: 45, column: 9, scope: !940)
!970 = !DILocation(line: 47, column: 25, scope: !940)
!971 = !DILocation(line: 47, column: 19, scope: !940)
!972 = !DILocation(line: 47, column: 13, scope: !940)
!973 = !DILocation(line: 48, column: 13, scope: !940)
!974 = !DILocation(line: 49, column: 5, scope: !940)
!975 = !DILocation(line: 52, column: 27, scope: !940)
!976 = !DILocation(line: 52, column: 25, scope: !940)
!977 = !DILocation(line: 52, column: 19, scope: !940)
!978 = !DILocation(line: 52, column: 13, scope: !940)
!979 = !DILocation(line: 53, column: 13, scope: !940)
!980 = !DILocation(line: 55, column: 5, scope: !940)
!981 = !DILocation(line: 0, scope: !940)
!982 = !DILocation(line: 56, column: 1, scope: !940)
!983 = distinct !DISubprogram(name: "__paritydi2", scope: !73, file: !73, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !128)
!984 = !DILocation(line: 23, column: 7, scope: !983)
!985 = !DILocation(line: 23, column: 11, scope: !983)
!986 = !DILocation(line: 24, column: 26, scope: !983)
!987 = !DILocation(line: 24, column: 28, scope: !983)
!988 = !DILocation(line: 24, column: 39, scope: !983)
!989 = !DILocation(line: 24, column: 33, scope: !983)
!990 = !DILocation(line: 24, column: 12, scope: !983)
!991 = !DILocation(line: 24, column: 5, scope: !983)
!992 = distinct !DISubprogram(name: "__paritysi2", scope: !75, file: !75, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !128)
!993 = !DILocation(line: 23, column: 12, scope: !992)
!994 = !DILocation(line: 23, column: 7, scope: !992)
!995 = !DILocation(line: 24, column: 12, scope: !992)
!996 = !DILocation(line: 24, column: 7, scope: !992)
!997 = !DILocation(line: 25, column: 12, scope: !992)
!998 = !DILocation(line: 25, column: 7, scope: !992)
!999 = !DILocation(line: 26, column: 26, scope: !992)
!1000 = !DILocation(line: 26, column: 20, scope: !992)
!1001 = !DILocation(line: 26, column: 34, scope: !992)
!1002 = !DILocation(line: 26, column: 5, scope: !992)
!1003 = distinct !DISubprogram(name: "__popcountdi2", scope: !79, file: !79, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !128)
!1004 = !DILocation(line: 23, column: 20, scope: !1003)
!1005 = !DILocation(line: 23, column: 26, scope: !1003)
!1006 = !DILocation(line: 23, column: 13, scope: !1003)
!1007 = !DILocation(line: 25, column: 15, scope: !1003)
!1008 = !DILocation(line: 25, column: 21, scope: !1003)
!1009 = !DILocation(line: 25, column: 52, scope: !1003)
!1010 = !DILocation(line: 25, column: 46, scope: !1003)
!1011 = !DILocation(line: 27, column: 20, scope: !1003)
!1012 = !DILocation(line: 27, column: 14, scope: !1003)
!1013 = !DILocation(line: 27, column: 27, scope: !1003)
!1014 = !DILocation(line: 29, column: 34, scope: !1003)
!1015 = !DILocation(line: 29, column: 28, scope: !1003)
!1016 = !DILocation(line: 29, column: 16, scope: !1003)
!1017 = !DILocation(line: 32, column: 16, scope: !1003)
!1018 = !DILocation(line: 32, column: 11, scope: !1003)
!1019 = !DILocation(line: 35, column: 20, scope: !1003)
!1020 = !DILocation(line: 35, column: 15, scope: !1003)
!1021 = !DILocation(line: 35, column: 27, scope: !1003)
!1022 = !DILocation(line: 35, column: 5, scope: !1003)
!1023 = distinct !DISubprogram(name: "__popcountsi2", scope: !81, file: !81, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !128)
!1024 = !DILocation(line: 23, column: 17, scope: !1023)
!1025 = !DILocation(line: 23, column: 23, scope: !1023)
!1026 = !DILocation(line: 23, column: 11, scope: !1023)
!1027 = !DILocation(line: 25, column: 13, scope: !1023)
!1028 = !DILocation(line: 25, column: 19, scope: !1023)
!1029 = !DILocation(line: 25, column: 38, scope: !1023)
!1030 = !DILocation(line: 25, column: 33, scope: !1023)
!1031 = !DILocation(line: 27, column: 17, scope: !1023)
!1032 = !DILocation(line: 27, column: 12, scope: !1023)
!1033 = !DILocation(line: 27, column: 24, scope: !1023)
!1034 = !DILocation(line: 29, column: 17, scope: !1023)
!1035 = !DILocation(line: 29, column: 12, scope: !1023)
!1036 = !DILocation(line: 32, column: 20, scope: !1023)
!1037 = !DILocation(line: 32, column: 15, scope: !1023)
!1038 = !DILocation(line: 32, column: 27, scope: !1023)
!1039 = !DILocation(line: 32, column: 5, scope: !1023)
!1040 = distinct !DISubprogram(name: "__subvdi3", scope: !85, file: !85, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !128)
!1041 = !DILocation(line: 24, column: 27, scope: !1040)
!1042 = !DILocation(line: 25, column: 11, scope: !1040)
!1043 = !DILocation(line: 25, column: 9, scope: !1040)
!1044 = !DILocation(line: 27, column: 15, scope: !1040)
!1045 = !DILocation(line: 27, column: 13, scope: !1040)
!1046 = !DILocation(line: 28, column: 13, scope: !1040)
!1047 = !DILocation(line: 29, column: 5, scope: !1040)
!1048 = !DILocation(line: 32, column: 15, scope: !1040)
!1049 = !DILocation(line: 32, column: 13, scope: !1040)
!1050 = !DILocation(line: 33, column: 13, scope: !1040)
!1051 = !DILocation(line: 35, column: 5, scope: !1040)
!1052 = distinct !DISubprogram(name: "__subvsi3", scope: !87, file: !87, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !128)
!1053 = !DILocation(line: 24, column: 27, scope: !1052)
!1054 = !DILocation(line: 25, column: 11, scope: !1052)
!1055 = !DILocation(line: 25, column: 9, scope: !1052)
!1056 = !DILocation(line: 27, column: 15, scope: !1052)
!1057 = !DILocation(line: 27, column: 13, scope: !1052)
!1058 = !DILocation(line: 28, column: 13, scope: !1052)
!1059 = !DILocation(line: 29, column: 5, scope: !1052)
!1060 = !DILocation(line: 32, column: 15, scope: !1052)
!1061 = !DILocation(line: 32, column: 13, scope: !1052)
!1062 = !DILocation(line: 33, column: 13, scope: !1052)
!1063 = !DILocation(line: 35, column: 5, scope: !1052)
!1064 = distinct !DISubprogram(name: "__ucmpdi2", scope: !91, file: !91, line: 23, type: !127, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !128)
!1065 = !DILocation(line: 26, column: 7, scope: !1064)
!1066 = !DILocation(line: 26, column: 11, scope: !1064)
!1067 = !DILocation(line: 28, column: 7, scope: !1064)
!1068 = !DILocation(line: 28, column: 11, scope: !1064)
!1069 = !DILocation(line: 29, column: 11, scope: !1064)
!1070 = !DILocation(line: 29, column: 13, scope: !1064)
!1071 = !DILocation(line: 29, column: 22, scope: !1064)
!1072 = !DILocation(line: 29, column: 24, scope: !1064)
!1073 = !DILocation(line: 29, column: 18, scope: !1064)
!1074 = !DILocation(line: 29, column: 9, scope: !1064)
!1075 = !DILocation(line: 30, column: 9, scope: !1064)
!1076 = !DILocation(line: 31, column: 11, scope: !1064)
!1077 = !DILocation(line: 31, column: 13, scope: !1064)
!1078 = !DILocation(line: 31, column: 22, scope: !1064)
!1079 = !DILocation(line: 31, column: 24, scope: !1064)
!1080 = !DILocation(line: 31, column: 18, scope: !1064)
!1081 = !DILocation(line: 31, column: 9, scope: !1064)
!1082 = !DILocation(line: 32, column: 9, scope: !1064)
!1083 = !DILocation(line: 33, column: 13, scope: !1064)
!1084 = !DILocation(line: 33, column: 23, scope: !1064)
!1085 = !DILocation(line: 33, column: 17, scope: !1064)
!1086 = !DILocation(line: 33, column: 9, scope: !1064)
!1087 = !DILocation(line: 34, column: 9, scope: !1064)
!1088 = !DILocation(line: 35, column: 13, scope: !1064)
!1089 = !DILocation(line: 35, column: 23, scope: !1064)
!1090 = !DILocation(line: 35, column: 17, scope: !1064)
!1091 = !DILocation(line: 35, column: 9, scope: !1064)
!1092 = !DILocation(line: 36, column: 9, scope: !1064)
!1093 = !DILocation(line: 37, column: 5, scope: !1064)
!1094 = !DILocation(line: 0, scope: !1064)
!1095 = !DILocation(line: 38, column: 1, scope: !1064)
!1096 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !91, file: !91, line: 46, type: !127, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !128)
!1097 = !DILocation(line: 48, column: 9, scope: !1096)
!1098 = !DILocation(line: 48, column: 25, scope: !1096)
!1099 = !DILocation(line: 48, column: 2, scope: !1096)
!1100 = distinct !DISubprogram(name: "__udivdi3", scope: !95, file: !95, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !128)
!1101 = !DILocation(line: 22, column: 12, scope: !1100)
!1102 = !DILocation(line: 22, column: 5, scope: !1100)
!1103 = distinct !DISubprogram(name: "__udivmodsi4", scope: !99, file: !99, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !128)
!1104 = !DILocation(line: 22, column: 14, scope: !1103)
!1105 = !DILocation(line: 23, column: 16, scope: !1103)
!1106 = !DILocation(line: 23, column: 12, scope: !1103)
!1107 = !DILocation(line: 23, column: 8, scope: !1103)
!1108 = !DILocation(line: 24, column: 3, scope: !1103)
!1109 = distinct !DISubprogram(name: "__udivsi3", scope: !103, file: !103, line: 25, type: !127, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !128)
!1110 = !DILocation(line: 32, column: 11, scope: !1109)
!1111 = !DILocation(line: 32, column: 9, scope: !1109)
!1112 = !DILocation(line: 33, column: 9, scope: !1109)
!1113 = !DILocation(line: 34, column: 11, scope: !1109)
!1114 = !DILocation(line: 34, column: 9, scope: !1109)
!1115 = !DILocation(line: 35, column: 9, scope: !1109)
!1116 = !DILocation(line: 36, column: 10, scope: !1109)
!1117 = !DILocation(line: 36, column: 29, scope: !1109)
!1118 = !DILocation(line: 36, column: 27, scope: !1109)
!1119 = !DILocation(line: 38, column: 12, scope: !1109)
!1120 = !DILocation(line: 38, column: 9, scope: !1109)
!1121 = !DILocation(line: 39, column: 9, scope: !1109)
!1122 = !DILocation(line: 40, column: 12, scope: !1109)
!1123 = !DILocation(line: 40, column: 9, scope: !1109)
!1124 = !DILocation(line: 41, column: 9, scope: !1109)
!1125 = !DILocation(line: 42, column: 5, scope: !1109)
!1126 = !DILocation(line: 45, column: 28, scope: !1109)
!1127 = !DILocation(line: 45, column: 11, scope: !1109)
!1128 = !DILocation(line: 46, column: 11, scope: !1109)
!1129 = !DILocation(line: 48, column: 5, scope: !1109)
!1130 = !DILocation(line: 0, scope: !1109)
!1131 = !DILocation(line: 48, column: 15, scope: !1109)
!1132 = !DILocation(line: 51, column: 22, scope: !1109)
!1133 = !DILocation(line: 60, column: 41, scope: !1109)
!1134 = !DILocation(line: 63, column: 5, scope: !1109)
!1135 = !DILocation(line: 62, column: 16, scope: !1109)
!1136 = !DILocation(line: 62, column: 11, scope: !1109)
!1137 = !DILocation(line: 61, column: 19, scope: !1109)
!1138 = !DILocation(line: 52, column: 16, scope: !1109)
!1139 = !DILocation(line: 52, column: 22, scope: !1109)
!1140 = !DILocation(line: 48, column: 20, scope: !1109)
!1141 = distinct !{!1141, !1129, !1134, !147}
!1142 = !DILocation(line: 64, column: 12, scope: !1109)
!1143 = !DILocation(line: 64, column: 18, scope: !1109)
!1144 = !DILocation(line: 65, column: 5, scope: !1109)
!1145 = !DILocation(line: 66, column: 1, scope: !1109)
!1146 = distinct !DISubprogram(name: "__umoddi3", scope: !107, file: !107, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !128)
!1147 = !DILocation(line: 23, column: 5, scope: !1146)
!1148 = !DILocation(line: 24, column: 12, scope: !1146)
!1149 = !DILocation(line: 24, column: 5, scope: !1146)
!1150 = distinct !DISubprogram(name: "__umodsi3", scope: !109, file: !109, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !128)
!1151 = !DILocation(line: 22, column: 16, scope: !1150)
!1152 = !DILocation(line: 22, column: 32, scope: !1150)
!1153 = !DILocation(line: 22, column: 14, scope: !1150)
!1154 = !DILocation(line: 22, column: 5, scope: !1150)
!1155 = distinct !DISubprogram(name: "memcpy", scope: !113, file: !113, line: 3, type: !127, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !128)
!1156 = !DILocation(line: 8, column: 6, scope: !1155)
!1157 = !DILocation(line: 0, scope: !1155)
!1158 = !DILocation(line: 8, column: 19, scope: !1155)
!1159 = !DILocation(line: 8, column: 2, scope: !1155)
!1160 = !DILocation(line: 9, column: 21, scope: !1155)
!1161 = !DILocation(line: 9, column: 3, scope: !1155)
!1162 = !DILocation(line: 9, column: 19, scope: !1155)
!1163 = !DILocation(line: 10, column: 2, scope: !1155)
!1164 = !DILocation(line: 8, column: 26, scope: !1155)
!1165 = distinct !{!1165, !1159, !1163, !147}
!1166 = !DILocation(line: 11, column: 1, scope: !1155)
!1167 = distinct !DISubprogram(name: "memset", scope: !113, file: !113, line: 13, type: !127, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !128)
!1168 = !DILocation(line: 17, column: 6, scope: !1167)
!1169 = !DILocation(line: 0, scope: !1167)
!1170 = !DILocation(line: 17, column: 19, scope: !1167)
!1171 = !DILocation(line: 17, column: 2, scope: !1167)
!1172 = !DILocation(line: 18, column: 13, scope: !1167)
!1173 = !DILocation(line: 18, column: 3, scope: !1167)
!1174 = !DILocation(line: 18, column: 11, scope: !1167)
!1175 = !DILocation(line: 19, column: 2, scope: !1167)
!1176 = !DILocation(line: 17, column: 26, scope: !1167)
!1177 = distinct !{!1177, !1171, !1175, !147}
!1178 = !DILocation(line: 20, column: 2, scope: !1167)
