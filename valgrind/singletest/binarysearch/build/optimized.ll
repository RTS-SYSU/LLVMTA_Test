; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.binarysearch_DATA = type { i32, i32 }
%union.dwords = type { i64 }

@binarysearch_seed = dso_local global i32 0, align 4
@binarysearch_data = dso_local global [15 x %struct.binarysearch_DATA] zeroinitializer, align 4
@binarysearch_result = dso_local global i32 0, align 4
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
define dso_local arm_aapcs_vfpcc void @binarysearch_initSeed() #0 !dbg !125 {
entry:
  store volatile i32 0, i32* @binarysearch_seed, align 4, !dbg !129
  ret void, !dbg !130
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binarysearch_randomInteger() #0 !dbg !131 {
entry:
  %0 = load volatile i32, i32* @binarysearch_seed, align 4, !dbg !132
  %mul = mul nsw i32 %0, 133, !dbg !133
  %add = add nsw i32 %mul, 81, !dbg !134
  %rem = srem i32 %add, 8095, !dbg !135
  store volatile i32 %rem, i32* @binarysearch_seed, align 4, !dbg !136
  %1 = load volatile i32, i32* @binarysearch_seed, align 4, !dbg !137
  ret i32 %1, !dbg !138
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @binarysearch_init() #0 !dbg !139 {
entry:
  call arm_aapcs_vfpcc void @binarysearch_initSeed() #4, !dbg !140
  br label %for.cond, !dbg !141

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !142
  %exitcond.not = icmp eq i32 %i.0, 15, !dbg !143
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !144

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @binarysearch_randomInteger() #4, !dbg !145
  %key = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %i.0, i32 0, !dbg !146
  store i32 %call, i32* %key, align 4, !dbg !147
  %call1 = call arm_aapcs_vfpcc i32 @binarysearch_randomInteger() #4, !dbg !148
  %value = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %i.0, i32 1, !dbg !149
  store i32 %call1, i32* %value, align 4, !dbg !150
  br label %for.inc, !dbg !151

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !152
  br label %for.cond, !dbg !144, !llvm.loop !153

for.end:                                          ; preds = %for.cond
  ret void, !dbg !155
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binarysearch_return() #0 !dbg !156 {
entry:
  %0 = load i32, i32* @binarysearch_result, align 4, !dbg !157
  ret i32 %0, !dbg !158
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binarysearch_binary_search(i32 noundef %x) #0 !dbg !159 {
entry:
  br label %while.cond, !dbg !160

while.cond:                                       ; preds = %if.end10, %entry
  %up.0 = phi i32 [ 14, %entry ], [ %up.2, %if.end10 ], !dbg !161
  %fvalue.0 = phi i32 [ -1, %entry ], [ %fvalue.1, %if.end10 ], !dbg !161
  %low.0 = phi i32 [ 0, %entry ], [ %add11, %if.end10 ], !dbg !161
  %cmp.not = icmp sgt i32 %low.0, %up.0, !dbg !162
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !160

while.body:                                       ; preds = %while.cond
  %add = add nsw i32 %low.0, %up.0, !dbg !163
  %shr = ashr i32 %add, 1, !dbg !164
  %key = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %shr, i32 0, !dbg !165
  %0 = load i32, i32* %key, align 4, !dbg !165
  %cmp1 = icmp eq i32 %0, %x, !dbg !166
  br i1 %cmp1, label %if.then, label %if.else, !dbg !167

if.then:                                          ; preds = %while.body
  %sub = add nsw i32 %low.0, -1, !dbg !168
  %value = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %shr, i32 1, !dbg !169
  %1 = load i32, i32* %value, align 4, !dbg !169
  br label %if.end10, !dbg !170

if.else:                                          ; preds = %while.body
  %key4 = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %shr, i32 0, !dbg !171
  %2 = load i32, i32* %key4, align 4, !dbg !171
  %cmp5 = icmp sgt i32 %2, %x, !dbg !172
  br i1 %cmp5, label %if.then6, label %if.else8, !dbg !173

if.then6:                                         ; preds = %if.else
  %sub7 = add nsw i32 %shr, -1, !dbg !174
  br label %if.end, !dbg !175

if.else8:                                         ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then6
  %up.1 = phi i32 [ %sub7, %if.then6 ], [ %up.0, %if.else8 ], !dbg !161
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %up.2 = phi i32 [ %sub, %if.then ], [ %up.1, %if.end ], !dbg !161
  %fvalue.1 = phi i32 [ %1, %if.then ], [ %fvalue.0, %if.end ], !dbg !161
  %add11 = add nsw i32 %up.2, 1, !dbg !176
  br label %while.cond, !dbg !160, !llvm.loop !177

while.end:                                        ; preds = %while.cond
  ret i32 %fvalue.0, !dbg !179
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @binarysearch_main() #0 !dbg !180 {
entry:
  %call = call arm_aapcs_vfpcc i32 @binarysearch_binary_search(i32 noundef 8) #4, !dbg !181
  store i32 %call, i32* @binarysearch_result, align 4, !dbg !182
  ret void, !dbg !183
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !184 {
entry:
  call arm_aapcs_vfpcc void @binarysearch_init() #4, !dbg !185
  call arm_aapcs_vfpcc void @binarysearch_main() #4, !dbg !186
  %call = call arm_aapcs_vfpcc i32 @binarysearch_return() #4, !dbg !187
  %cmp = icmp ne i32 %call, -1, !dbg !188
  %conv = zext i1 %cmp to i32, !dbg !188
  ret i32 %conv, !dbg !189
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #1 !dbg !190 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !191
  br i1 %cmp, label %if.then, label %if.end, !dbg !192

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !193
  unreachable, !dbg !193

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !194
  ret i64 %0, !dbg !195
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #2 !dbg !196 {
entry:
  unreachable, !dbg !197
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #1 !dbg !198 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !199
  br i1 %cmp, label %if.then, label %if.end, !dbg !200

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !201
  unreachable, !dbg !201

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !202
  ret i32 %0, !dbg !203
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !204 {
entry:
  %add = add i64 %a, %b, !dbg !205
  %cmp = icmp sgt i64 %b, -1, !dbg !206
  br i1 %cmp, label %if.then, label %if.else, !dbg !207

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !208
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !209

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !210
  unreachable, !dbg !210

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !211

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !212
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !213

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !214
  unreachable, !dbg !214

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !215
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !216 {
entry:
  %add = add i32 %a, %b, !dbg !217
  %cmp = icmp sgt i32 %b, -1, !dbg !218
  br i1 %cmp, label %if.then, label %if.else, !dbg !219

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !220
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !221

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !222
  unreachable, !dbg !222

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !223

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !224
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !225

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !226
  unreachable, !dbg !226

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !227
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #1 !dbg !228 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !229
  store i64 %a, i64* %all, align 8, !dbg !230
  %and = and i32 %b, 32, !dbg !231
  %tobool.not = icmp eq i32 %and, 0, !dbg !231
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !232

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !233
  store i32 0, i32* %low, align 8, !dbg !234
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !235
  %0 = load i32, i32* %low2, align 8, !dbg !235
  %sub = add nsw i32 %b, -32, !dbg !236
  %shl = shl i32 %0, %sub, !dbg !237
  %s3 = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !238
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s3, i32 0, i32 1, !dbg !239
  store i32 %shl, i32* %high, align 4, !dbg !240
  br label %if.end18, !dbg !241

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !242
  br i1 %cmp, label %if.then4, label %if.end, !dbg !243

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !244

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !245
  %1 = load i32, i32* %low6, align 8, !dbg !245
  %shl7 = shl i32 %1, %b, !dbg !246
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !247
  store i32 %shl7, i32* %low9, align 8, !dbg !248
  %s10 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !249
  %high11 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s10, i32 0, i32 1, !dbg !250
  %2 = load i32, i32* %high11, align 4, !dbg !250
  %shl12 = shl i32 %2, %b, !dbg !251
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !252
  %3 = load i32, i32* %low14, align 8, !dbg !252
  %sub15 = sub nsw i32 32, %b, !dbg !253
  %shr = lshr i32 %3, %sub15, !dbg !254
  %or = or i32 %shl12, %shr, !dbg !255
  %s16 = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !256
  %high17 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s16, i32 0, i32 1, !dbg !257
  store i32 %or, i32* %high17, align 4, !dbg !258
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !259
  %4 = load i64, i64* %all19, align 8, !dbg !259
  br label %return, !dbg !260

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !261
  ret i64 %retval.0, !dbg !262
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !263 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !264
  store i64 %a, i64* %all, align 8, !dbg !265
  %and = and i32 %b, 32, !dbg !266
  %tobool.not = icmp eq i32 %and, 0, !dbg !266
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !267

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !268
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !269
  %0 = load i32, i32* %high, align 4, !dbg !269
  %shr = ashr i32 %0, 31, !dbg !270
  %s1 = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !271
  %high2 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s1, i32 0, i32 1, !dbg !272
  store i32 %shr, i32* %high2, align 4, !dbg !273
  %s3 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !274
  %high4 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s3, i32 0, i32 1, !dbg !275
  %1 = load i32, i32* %high4, align 4, !dbg !275
  %sub = add nsw i32 %b, -32, !dbg !276
  %shr5 = ashr i32 %1, %sub, !dbg !277
  %low = bitcast %union.dwords* %result to i32*, !dbg !278
  store i32 %shr5, i32* %low, align 8, !dbg !279
  br label %if.end21, !dbg !280

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !281
  br i1 %cmp, label %if.then7, label %if.end, !dbg !282

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !283

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !284
  %high9 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s8, i32 0, i32 1, !dbg !285
  %2 = load i32, i32* %high9, align 4, !dbg !285
  %shr10 = ashr i32 %2, %b, !dbg !286
  %s11 = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !287
  %high12 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s11, i32 0, i32 1, !dbg !288
  store i32 %shr10, i32* %high12, align 4, !dbg !289
  %s13 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !290
  %high14 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s13, i32 0, i32 1, !dbg !291
  %3 = load i32, i32* %high14, align 4, !dbg !291
  %sub15 = sub nsw i32 32, %b, !dbg !292
  %shl = shl i32 %3, %sub15, !dbg !293
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !294
  %4 = load i32, i32* %low17, align 8, !dbg !294
  %shr18 = lshr i32 %4, %b, !dbg !295
  %or = or i32 %shl, %shr18, !dbg !296
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !297
  store i32 %or, i32* %low20, align 8, !dbg !298
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !299
  %5 = load i64, i64* %all22, align 8, !dbg !299
  br label %return, !dbg !300

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !301
  ret i64 %retval.0, !dbg !302
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #1 !dbg !303 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !304
  store i64 %a, i64* %all, align 8, !dbg !305
  %s = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !306
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !307
  %0 = load i32, i32* %high, align 4, !dbg !307
  %cmp = icmp eq i32 %0, 0, !dbg !308
  %s1 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !309
  %high2 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s1, i32 0, i32 1, !dbg !310
  %1 = load i32, i32* %high2, align 4, !dbg !310
  %low = bitcast %union.dwords* %x to i32*, !dbg !311
  %2 = load i32, i32* %low, align 8, !dbg !311
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !312
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !313, !range !314
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !315
  %add = add nuw nsw i32 %4, %and5, !dbg !316
  ret i32 %add, !dbg !317
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #1 !dbg !318 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !319
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !320
  %sub = sub nuw nsw i32 16, %shl, !dbg !321
  %shr = lshr i32 %a, %sub, !dbg !322
  %and1 = and i32 %shr, 65280, !dbg !323
  %cmp2 = icmp eq i32 %and1, 0, !dbg !324
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !325
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !326
  %shr6 = lshr i32 %shr, %sub5, !dbg !327
  %add = or i32 %shl, %shl4, !dbg !328
  %and7 = and i32 %shr6, 240, !dbg !329
  %cmp8 = icmp eq i32 %and7, 0, !dbg !330
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !331
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !332
  %shr12 = lshr i32 %shr6, %sub11, !dbg !333
  %add13 = or i32 %add, %shl10, !dbg !334
  %and14 = and i32 %shr12, 12, !dbg !335
  %cmp15 = icmp eq i32 %and14, 0, !dbg !336
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !337
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !338
  %shr19 = lshr i32 %shr12, %sub18, !dbg !339
  %add20 = or i32 %add13, %shl17, !dbg !340
  %sub21 = sub i32 2, %shr19, !dbg !341
  %and22 = lshr i32 %shr19, 1, !dbg !342
  %0 = or i32 %and22, -2, !dbg !342
  %.neg = add nsw i32 %0, 1, !dbg !342
  %and26 = and i32 %sub21, %.neg, !dbg !343
  %add27 = add i32 %add20, %and26, !dbg !344
  ret i32 %add27, !dbg !345
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !346 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !347
  store i64 %a, i64* %all, align 8, !dbg !348
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !349
  store i64 %b, i64* %all1, align 8, !dbg !350
  %s = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !351
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !352
  %0 = load i32, i32* %high, align 4, !dbg !352
  %s2 = bitcast %union.dwords* %y to %struct.binarysearch_DATA*, !dbg !353
  %high3 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s2, i32 0, i32 1, !dbg !354
  %1 = load i32, i32* %high3, align 4, !dbg !354
  %cmp = icmp slt i32 %0, %1, !dbg !355
  br i1 %cmp, label %if.then, label %if.end, !dbg !356

if.then:                                          ; preds = %entry
  br label %return, !dbg !357

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !358
  %high5 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s4, i32 0, i32 1, !dbg !359
  %2 = load i32, i32* %high5, align 4, !dbg !359
  %s6 = bitcast %union.dwords* %y to %struct.binarysearch_DATA*, !dbg !360
  %high7 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s6, i32 0, i32 1, !dbg !361
  %3 = load i32, i32* %high7, align 4, !dbg !361
  %cmp8 = icmp sgt i32 %2, %3, !dbg !362
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !363

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !364

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !365
  %4 = load i32, i32* %low, align 8, !dbg !365
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !366
  %5 = load i32, i32* %low13, align 8, !dbg !366
  %cmp14 = icmp ult i32 %4, %5, !dbg !367
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !368

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !369

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !370
  %6 = load i32, i32* %low18, align 8, !dbg !370
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !371
  %7 = load i32, i32* %low20, align 8, !dbg !371
  %cmp21 = icmp ugt i32 %6, %7, !dbg !372
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !373

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !374

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !375

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !376
  ret i32 %retval.0, !dbg !377
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !378 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !379
  %sub = add nsw i32 %call, -1, !dbg !380
  ret i32 %sub, !dbg !381
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #1 !dbg !382 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !383
  store i64 %a, i64* %all, align 8, !dbg !384
  %low = bitcast %union.dwords* %x to i32*, !dbg !385
  %0 = load i32, i32* %low, align 8, !dbg !385
  %cmp = icmp eq i32 %0, 0, !dbg !386
  %s1 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !387
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s1, i32 0, i32 1, !dbg !388
  %1 = load i32, i32* %high, align 4, !dbg !388
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !389
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !390, !range !314
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !391
  %add = add nuw nsw i32 %3, %and5, !dbg !392
  ret i32 %add, !dbg !393
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #1 !dbg !394 {
entry:
  %and = and i32 %a, 65535, !dbg !395
  %cmp = icmp eq i32 %and, 0, !dbg !396
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !397
  %shr = lshr i32 %a, %shl, !dbg !398
  %and1 = and i32 %shr, 255, !dbg !399
  %cmp2 = icmp eq i32 %and1, 0, !dbg !400
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !401
  %shr5 = lshr i32 %shr, %shl4, !dbg !402
  %add = or i32 %shl, %shl4, !dbg !403
  %and6 = and i32 %shr5, 15, !dbg !404
  %cmp7 = icmp eq i32 %and6, 0, !dbg !405
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !406
  %shr10 = lshr i32 %shr5, %shl9, !dbg !407
  %add11 = or i32 %add, %shl9, !dbg !408
  %and12 = and i32 %shr10, 3, !dbg !409
  %cmp13 = icmp eq i32 %and12, 0, !dbg !410
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !411
  %shr16 = lshr i32 %shr10, %shl15, !dbg !412
  %add18 = or i32 %add11, %shl15, !dbg !413
  %and17 = lshr i32 %shr16, 1, !dbg !414
  %shr19 = and i32 %and17, 1, !dbg !414
  %sub = sub nuw nsw i32 2, %shr19, !dbg !415
  %0 = or i32 %shr16, -2, !dbg !416
  %.neg = add nsw i32 %0, 1, !dbg !416
  %and24 = and i32 %sub, %.neg, !dbg !417
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !418
  ret i32 %add25, !dbg !419
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !420 {
entry:
  %shr = ashr i64 %a, 63, !dbg !421
  %shr1 = ashr i64 %b, 63, !dbg !422
  %xor = xor i64 %shr, %a, !dbg !423
  %sub = sub nsw i64 %xor, %shr, !dbg !424
  %xor2 = xor i64 %shr1, %b, !dbg !425
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !426
  %xor4 = xor i64 %shr, %shr1, !dbg !427
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !428
  %xor5 = xor i64 %call, %xor4, !dbg !429
  %sub6 = sub i64 %xor5, %xor4, !dbg !430
  ret i64 %sub6, !dbg !431
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !432 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !433
  store i64 %a, i64* %all, align 8, !dbg !434
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !435
  store i64 %b, i64* %all1, align 8, !dbg !436
  %s = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !437
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !438
  %0 = load i32, i32* %high, align 4, !dbg !438
  %cmp = icmp eq i32 %0, 0, !dbg !439
  br i1 %cmp, label %if.then, label %if.end23, !dbg !440

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !441
  %high3 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s2, i32 0, i32 1, !dbg !442
  %1 = load i32, i32* %high3, align 4, !dbg !442
  %cmp4 = icmp eq i32 %1, 0, !dbg !443
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !444

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !445
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !445

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !446
  %2 = load i32, i32* %low, align 8, !dbg !446
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !447
  %3 = load i32, i32* %low9, align 8, !dbg !447
  %rem10 = urem i32 %2, %3, !dbg !448
  %conv = zext i32 %rem10 to i64, !dbg !449
  store i64 %conv, i64* %rem, align 8, !dbg !450
  br label %if.end, !dbg !451

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !452
  %4 = load i32, i32* %low12, align 8, !dbg !452
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !453
  %5 = load i32, i32* %low14, align 8, !dbg !453
  %div = udiv i32 %4, %5, !dbg !454
  %conv15 = zext i32 %div to i64, !dbg !455
  br label %return, !dbg !456

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !457
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !457

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !458
  %6 = load i32, i32* %low20, align 8, !dbg !458
  %conv21 = zext i32 %6 to i64, !dbg !459
  store i64 %conv21, i64* %rem, align 8, !dbg !460
  br label %if.end22, !dbg !461

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !462

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !463
  %7 = load i32, i32* %low25, align 8, !dbg !463
  %cmp26 = icmp eq i32 %7, 0, !dbg !464
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !465

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !466
  %high30 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s29, i32 0, i32 1, !dbg !467
  %8 = load i32, i32* %high30, align 4, !dbg !467
  %cmp31 = icmp eq i32 %8, 0, !dbg !468
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !469

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !470
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !470

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !471
  %high37 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s36, i32 0, i32 1, !dbg !472
  %9 = load i32, i32* %high37, align 4, !dbg !472
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !473
  %10 = load i32, i32* %low39, align 8, !dbg !473
  %rem40 = urem i32 %9, %10, !dbg !474
  %conv41 = zext i32 %rem40 to i64, !dbg !475
  store i64 %conv41, i64* %rem, align 8, !dbg !476
  br label %if.end42, !dbg !477

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !478
  %high44 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s43, i32 0, i32 1, !dbg !479
  %11 = load i32, i32* %high44, align 4, !dbg !479
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !480
  %12 = load i32, i32* %low46, align 8, !dbg !480
  %div47 = udiv i32 %11, %12, !dbg !481
  %conv48 = zext i32 %div47 to i64, !dbg !482
  br label %return, !dbg !483

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !484
  %13 = load i32, i32* %low51, align 8, !dbg !484
  %cmp52 = icmp eq i32 %13, 0, !dbg !485
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !486

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !487
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !487

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !488
  %high58 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s57, i32 0, i32 1, !dbg !489
  %14 = load i32, i32* %high58, align 4, !dbg !489
  %s59 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !490
  %high60 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s59, i32 0, i32 1, !dbg !491
  %15 = load i32, i32* %high60, align 4, !dbg !491
  %rem61 = urem i32 %14, %15, !dbg !492
  %s62 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !493
  %high63 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s62, i32 0, i32 1, !dbg !494
  store i32 %rem61, i32* %high63, align 4, !dbg !495
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !496
  store i32 0, i32* %low65, align 8, !dbg !497
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !498
  %16 = load i64, i64* %all66, align 8, !dbg !498
  store i64 %16, i64* %rem, align 8, !dbg !499
  br label %if.end67, !dbg !500

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !501
  %high69 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s68, i32 0, i32 1, !dbg !502
  %17 = load i32, i32* %high69, align 4, !dbg !502
  %s70 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !503
  %high71 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s70, i32 0, i32 1, !dbg !504
  %18 = load i32, i32* %high71, align 4, !dbg !504
  %div72 = udiv i32 %17, %18, !dbg !505
  %conv73 = zext i32 %div72 to i64, !dbg !506
  br label %return, !dbg !507

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !508
  %high76 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s75, i32 0, i32 1, !dbg !509
  %19 = load i32, i32* %high76, align 4, !dbg !509
  %s77 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !510
  %high78 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s77, i32 0, i32 1, !dbg !511
  %20 = load i32, i32* %high78, align 4, !dbg !511
  %sub = add i32 %20, -1, !dbg !512
  %and = and i32 %19, %sub, !dbg !513
  %cmp79 = icmp eq i32 %and, 0, !dbg !514
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !515

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !516
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !516

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !517
  %21 = load i32, i32* %low85, align 8, !dbg !517
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !518
  store i32 %21, i32* %low87, align 8, !dbg !519
  %s88 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !520
  %high89 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s88, i32 0, i32 1, !dbg !521
  %22 = load i32, i32* %high89, align 4, !dbg !521
  %s90 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !522
  %high91 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s90, i32 0, i32 1, !dbg !523
  %23 = load i32, i32* %high91, align 4, !dbg !523
  %sub92 = add i32 %23, -1, !dbg !524
  %and93 = and i32 %22, %sub92, !dbg !525
  %s94 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !526
  %high95 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s94, i32 0, i32 1, !dbg !527
  store i32 %and93, i32* %high95, align 4, !dbg !528
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !529
  %24 = load i64, i64* %all96, align 8, !dbg !529
  store i64 %24, i64* %rem, align 8, !dbg !530
  br label %if.end97, !dbg !531

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !532
  %high99 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s98, i32 0, i32 1, !dbg !533
  %25 = load i32, i32* %high99, align 4, !dbg !533
  %s100 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !534
  %high101 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s100, i32 0, i32 1, !dbg !535
  %26 = load i32, i32* %high101, align 4, !dbg !535
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !536, !range !314
  %shr = lshr i32 %25, %27, !dbg !537
  %conv102 = zext i32 %shr to i64, !dbg !538
  br label %return, !dbg !539

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !540
  %high105 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s104, i32 0, i32 1, !dbg !541
  %28 = load i32, i32* %high105, align 4, !dbg !541
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !542, !range !314
  %s106 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !543
  %high107 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s106, i32 0, i32 1, !dbg !544
  %30 = load i32, i32* %high107, align 4, !dbg !544
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !545, !range !314
  %sub108 = sub nsw i32 %29, %31, !dbg !546
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !547
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !548

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !549
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !549

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !550
  %32 = load i64, i64* %all114, align 8, !dbg !550
  store i64 %32, i64* %rem, align 8, !dbg !551
  br label %if.end115, !dbg !552

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !553

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !554
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !555
  store i32 0, i32* %low118, align 8, !dbg !556
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !557
  %33 = load i32, i32* %low120, align 8, !dbg !557
  %sub121 = sub nsw i32 31, %sub108, !dbg !558
  %shl = shl i32 %33, %sub121, !dbg !559
  %s122 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !560
  %high123 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s122, i32 0, i32 1, !dbg !561
  store i32 %shl, i32* %high123, align 4, !dbg !562
  %s124 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !563
  %high125 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s124, i32 0, i32 1, !dbg !564
  %34 = load i32, i32* %high125, align 4, !dbg !564
  %shr126 = lshr i32 %34, %inc, !dbg !565
  %s127 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !566
  %high128 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s127, i32 0, i32 1, !dbg !567
  store i32 %shr126, i32* %high128, align 4, !dbg !568
  %s129 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !569
  %high130 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s129, i32 0, i32 1, !dbg !570
  %35 = load i32, i32* %high130, align 4, !dbg !570
  %sub131 = sub nsw i32 31, %sub108, !dbg !571
  %shl132 = shl i32 %35, %sub131, !dbg !572
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !573
  %36 = load i32, i32* %low134, align 8, !dbg !573
  %shr135 = lshr i32 %36, %inc, !dbg !574
  %or = or i32 %shl132, %shr135, !dbg !575
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !576
  store i32 %or, i32* %low137, align 8, !dbg !577
  br label %if.end317, !dbg !578

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !579
  %high139 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s138, i32 0, i32 1, !dbg !580
  %37 = load i32, i32* %high139, align 4, !dbg !580
  %cmp140 = icmp eq i32 %37, 0, !dbg !581
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !582

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !583
  %38 = load i32, i32* %low144, align 8, !dbg !583
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !584, !range !314
  %cmp149 = icmp ult i32 %39, 2, !dbg !584
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !585

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !586
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !586

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !587
  %40 = load i32, i32* %low155, align 8, !dbg !587
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !588
  %41 = load i32, i32* %low157, align 8, !dbg !588
  %sub158 = add i32 %41, -1, !dbg !589
  %and159 = and i32 %40, %sub158, !dbg !590
  %conv160 = zext i32 %and159 to i64, !dbg !591
  store i64 %conv160, i64* %rem, align 8, !dbg !592
  br label %if.end161, !dbg !593

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !594
  %42 = load i32, i32* %low163, align 8, !dbg !594
  %cmp164 = icmp eq i32 %42, 1, !dbg !595
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !596

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !597
  %43 = load i64, i64* %all167, align 8, !dbg !597
  br label %return, !dbg !598

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !599
  %44 = load i32, i32* %low170, align 8, !dbg !599
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !600, !range !314
  %s171 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !601
  %high172 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s171, i32 0, i32 1, !dbg !602
  %46 = load i32, i32* %high172, align 4, !dbg !602
  %shr173 = lshr i32 %46, %45, !dbg !603
  %s174 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !604
  %high175 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s174, i32 0, i32 1, !dbg !605
  store i32 %shr173, i32* %high175, align 4, !dbg !606
  %s176 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !607
  %high177 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s176, i32 0, i32 1, !dbg !608
  %47 = load i32, i32* %high177, align 4, !dbg !608
  %sub178 = sub nuw nsw i32 32, %45, !dbg !609
  %shl179 = shl i32 %47, %sub178, !dbg !610
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !611
  %48 = load i32, i32* %low181, align 8, !dbg !611
  %shr182 = lshr i32 %48, %45, !dbg !612
  %or183 = or i32 %shl179, %shr182, !dbg !613
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !614
  store i32 %or183, i32* %low185, align 8, !dbg !615
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !616
  %49 = load i64, i64* %all186, align 8, !dbg !616
  br label %return, !dbg !617

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !618
  %50 = load i32, i32* %low189, align 8, !dbg !618
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !619, !range !314
  %add = add nuw nsw i32 %51, 33, !dbg !620
  %s190 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !621
  %high191 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s190, i32 0, i32 1, !dbg !622
  %52 = load i32, i32* %high191, align 4, !dbg !622
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !623, !range !314
  %sub192 = sub nsw i32 %add, %53, !dbg !624
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !625
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !626

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !627
  store i32 0, i32* %low197, align 8, !dbg !628
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !629
  %54 = load i32, i32* %low199, align 8, !dbg !629
  %s200 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !630
  %high201 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s200, i32 0, i32 1, !dbg !631
  store i32 %54, i32* %high201, align 4, !dbg !632
  %s202 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !633
  %high203 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s202, i32 0, i32 1, !dbg !634
  store i32 0, i32* %high203, align 4, !dbg !635
  %s204 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !636
  %high205 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s204, i32 0, i32 1, !dbg !637
  %55 = load i32, i32* %high205, align 4, !dbg !637
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !638
  store i32 %55, i32* %low207, align 8, !dbg !639
  br label %if.end262, !dbg !640

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !641
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !642

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !643
  store i32 0, i32* %low213, align 8, !dbg !644
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !645
  %56 = load i32, i32* %low215, align 8, !dbg !645
  %sub216 = sub nsw i32 32, %sub192, !dbg !646
  %shl217 = shl i32 %56, %sub216, !dbg !647
  %s218 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !648
  %high219 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s218, i32 0, i32 1, !dbg !649
  store i32 %shl217, i32* %high219, align 4, !dbg !650
  %s220 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !651
  %high221 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s220, i32 0, i32 1, !dbg !652
  %57 = load i32, i32* %high221, align 4, !dbg !652
  %shr222 = lshr i32 %57, %sub192, !dbg !653
  %s223 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !654
  %high224 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s223, i32 0, i32 1, !dbg !655
  store i32 %shr222, i32* %high224, align 4, !dbg !656
  %s225 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !657
  %high226 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s225, i32 0, i32 1, !dbg !658
  %58 = load i32, i32* %high226, align 4, !dbg !658
  %sub227 = sub nsw i32 32, %sub192, !dbg !659
  %shl228 = shl i32 %58, %sub227, !dbg !660
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !661
  %59 = load i32, i32* %low230, align 8, !dbg !661
  %shr231 = lshr i32 %59, %sub192, !dbg !662
  %or232 = or i32 %shl228, %shr231, !dbg !663
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !664
  store i32 %or232, i32* %low234, align 8, !dbg !665
  br label %if.end261, !dbg !666

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !667
  %60 = load i32, i32* %low237, align 8, !dbg !667
  %sub238 = sub nsw i32 64, %sub192, !dbg !668
  %shl239 = shl i32 %60, %sub238, !dbg !669
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !670
  store i32 %shl239, i32* %low241, align 8, !dbg !671
  %s242 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !672
  %high243 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s242, i32 0, i32 1, !dbg !673
  %61 = load i32, i32* %high243, align 4, !dbg !673
  %sub244 = sub nsw i32 64, %sub192, !dbg !674
  %shl245 = shl i32 %61, %sub244, !dbg !675
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !676
  %62 = load i32, i32* %low247, align 8, !dbg !676
  %sub248 = add nsw i32 %sub192, -32, !dbg !677
  %shr249 = lshr i32 %62, %sub248, !dbg !678
  %or250 = or i32 %shl245, %shr249, !dbg !679
  %s251 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !680
  %high252 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s251, i32 0, i32 1, !dbg !681
  store i32 %or250, i32* %high252, align 4, !dbg !682
  %s253 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !683
  %high254 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s253, i32 0, i32 1, !dbg !684
  store i32 0, i32* %high254, align 4, !dbg !685
  %s255 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !686
  %high256 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s255, i32 0, i32 1, !dbg !687
  %63 = load i32, i32* %high256, align 4, !dbg !687
  %sub257 = add nsw i32 %sub192, -32, !dbg !688
  %shr258 = lshr i32 %63, %sub257, !dbg !689
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !690
  store i32 %shr258, i32* %low260, align 8, !dbg !691
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !692

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !693
  %high265 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s264, i32 0, i32 1, !dbg !694
  %64 = load i32, i32* %high265, align 4, !dbg !694
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !695, !range !314
  %s266 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !696
  %high267 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s266, i32 0, i32 1, !dbg !697
  %66 = load i32, i32* %high267, align 4, !dbg !697
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !698, !range !314
  %sub268 = sub nsw i32 %65, %67, !dbg !699
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !700
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !701

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !702
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !702

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !703
  %68 = load i64, i64* %all274, align 8, !dbg !703
  store i64 %68, i64* %rem, align 8, !dbg !704
  br label %if.end275, !dbg !705

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !706

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !707
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !708
  store i32 0, i32* %low279, align 8, !dbg !709
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !710
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !711

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !712
  %69 = load i32, i32* %low284, align 8, !dbg !712
  %s285 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !713
  %high286 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s285, i32 0, i32 1, !dbg !714
  store i32 %69, i32* %high286, align 4, !dbg !715
  %s287 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !716
  %high288 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s287, i32 0, i32 1, !dbg !717
  store i32 0, i32* %high288, align 4, !dbg !718
  %s289 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !719
  %high290 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s289, i32 0, i32 1, !dbg !720
  %70 = load i32, i32* %high290, align 4, !dbg !720
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !721
  store i32 %70, i32* %low292, align 8, !dbg !722
  br label %if.end315, !dbg !723

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !724
  %71 = load i32, i32* %low295, align 8, !dbg !724
  %sub296 = sub nsw i32 31, %sub268, !dbg !725
  %shl297 = shl i32 %71, %sub296, !dbg !726
  %s298 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !727
  %high299 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s298, i32 0, i32 1, !dbg !728
  store i32 %shl297, i32* %high299, align 4, !dbg !729
  %s300 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !730
  %high301 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s300, i32 0, i32 1, !dbg !731
  %72 = load i32, i32* %high301, align 4, !dbg !731
  %shr302 = lshr i32 %72, %inc277, !dbg !732
  %s303 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !733
  %high304 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s303, i32 0, i32 1, !dbg !734
  store i32 %shr302, i32* %high304, align 4, !dbg !735
  %s305 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !736
  %high306 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s305, i32 0, i32 1, !dbg !737
  %73 = load i32, i32* %high306, align 4, !dbg !737
  %sub307 = sub nsw i32 31, %sub268, !dbg !738
  %shl308 = shl i32 %73, %sub307, !dbg !739
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !740
  %74 = load i32, i32* %low310, align 8, !dbg !740
  %shr311 = lshr i32 %74, %inc277, !dbg !741
  %or312 = or i32 %shl308, %shr311, !dbg !742
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !743
  store i32 %or312, i32* %low314, align 8, !dbg !744
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !745
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !745
  br label %for.cond, !dbg !746

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !745
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !745
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !747
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !746

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !748
  %high321 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s320, i32 0, i32 1, !dbg !749
  %75 = load i32, i32* %high321, align 4, !dbg !749
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !750
  %76 = load i32, i32* %low324, align 8, !dbg !750
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !751
  %s327 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !752
  %high328 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s327, i32 0, i32 1, !dbg !753
  store i32 %or326, i32* %high328, align 4, !dbg !754
  %s332 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !755
  %high333 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s332, i32 0, i32 1, !dbg !756
  %77 = load i32, i32* %high333, align 4, !dbg !756
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !757
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !758
  store i32 %or335, i32* %low337, align 8, !dbg !759
  %s338 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !760
  %high339 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s338, i32 0, i32 1, !dbg !761
  %78 = load i32, i32* %high339, align 4, !dbg !761
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !762
  %79 = load i32, i32* %low342, align 8, !dbg !762
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !763
  %s345 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !764
  %high346 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s345, i32 0, i32 1, !dbg !765
  store i32 %or344, i32* %high346, align 4, !dbg !766
  %shl349 = shl i32 %79, 1, !dbg !767
  %or350 = or i32 %shl349, %carry.0, !dbg !768
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !769
  store i32 %or350, i32* %low352, align 8, !dbg !770
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !771
  %80 = load i64, i64* %all354, align 8, !dbg !771
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !772
  %81 = load i64, i64* %all355, align 8, !dbg !772
  %82 = xor i64 %81, -1, !dbg !773
  %sub357 = add i64 %80, %82, !dbg !773
  %isneg = icmp slt i64 %sub357, 0, !dbg !774
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !774
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !775
  %sub364 = sub i64 %81, %and362, !dbg !776
  store i64 %sub364, i64* %all363, align 8, !dbg !776
  br label %for.inc, !dbg !777

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !778
  %conv360 = trunc i64 %and359 to i32, !dbg !779
  %dec = add i32 %sr.2, -1, !dbg !780
  br label %for.cond, !dbg !746, !llvm.loop !781

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !782
  %83 = load i64, i64* %all365, align 8, !dbg !782
  %shl366 = shl i64 %83, 1, !dbg !783
  %conv367 = zext i32 %carry.0 to i64, !dbg !784
  %or368 = or i64 %shl366, %conv367, !dbg !785
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !786
  store i64 %or368, i64* %all369, align 8, !dbg !787
  %tobool370.not = icmp eq i64* %rem, null, !dbg !788
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !788

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !789
  %84 = load i64, i64* %all372, align 8, !dbg !789
  store i64 %84, i64* %rem, align 8, !dbg !790
  br label %if.end373, !dbg !791

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !792
  %85 = load i64, i64* %all374, align 8, !dbg !792
  br label %return, !dbg !793

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !745
  ret i64 %retval.0, !dbg !794
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !795 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !796
  %mul = mul nsw i64 %call, %b, !dbg !797
  %sub = sub nsw i64 %a, %mul, !dbg !798
  store i64 %sub, i64* %rem, align 8, !dbg !799
  ret i64 %call, !dbg !800
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !801 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !802
  %mul = mul nsw i32 %call, %b, !dbg !803
  %sub = sub nsw i32 %a, %mul, !dbg !804
  store i32 %sub, i32* %rem, align 4, !dbg !805
  ret i32 %call, !dbg !806
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !807 {
entry:
  %shr = ashr i32 %a, 31, !dbg !808
  %shr1 = ashr i32 %b, 31, !dbg !809
  %xor = xor i32 %shr, %a, !dbg !810
  %sub = sub nsw i32 %xor, %shr, !dbg !811
  %xor2 = xor i32 %shr1, %b, !dbg !812
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !813
  %xor4 = xor i32 %shr, %shr1, !dbg !814
  %div = udiv i32 %sub, %sub3, !dbg !815
  %xor5 = xor i32 %div, %xor4, !dbg !816
  %sub6 = sub i32 %xor5, %xor4, !dbg !817
  ret i32 %sub6, !dbg !818
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #1 !dbg !819 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !820
  store i64 %a, i64* %all, align 8, !dbg !821
  %low = bitcast %union.dwords* %x to i32*, !dbg !822
  %0 = load i32, i32* %low, align 8, !dbg !822
  %cmp = icmp eq i32 %0, 0, !dbg !823
  br i1 %cmp, label %if.then, label %if.end6, !dbg !824

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !825
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s1, i32 0, i32 1, !dbg !826
  %1 = load i32, i32* %high, align 4, !dbg !826
  %cmp2 = icmp eq i32 %1, 0, !dbg !827
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !828

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !829

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !830
  %high5 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s4, i32 0, i32 1, !dbg !831
  %2 = load i32, i32* %high5, align 4, !dbg !831
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !832, !range !314
  %add = add nuw nsw i32 %3, 33, !dbg !833
  br label %return, !dbg !834

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !835
  %4 = load i32, i32* %low8, align 8, !dbg !835
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !836, !range !314
  %add9 = add nuw nsw i32 %5, 1, !dbg !837
  br label %return, !dbg !838

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !839
  ret i32 %retval.0, !dbg !840
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #1 !dbg !841 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !842
  br i1 %cmp, label %if.then, label %if.end, !dbg !843

if.then:                                          ; preds = %entry
  br label %return, !dbg !844

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !845, !range !314
  %add = add nuw nsw i32 %0, 1, !dbg !846
  br label %return, !dbg !847

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !848
  ret i32 %retval.0, !dbg !849
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !850 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !851
  store i64 %a, i64* %all, align 8, !dbg !852
  %and = and i32 %b, 32, !dbg !853
  %tobool.not = icmp eq i32 %and, 0, !dbg !853
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !854

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !855
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !856
  store i32 0, i32* %high, align 4, !dbg !857
  %s1 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !858
  %high2 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s1, i32 0, i32 1, !dbg !859
  %0 = load i32, i32* %high2, align 4, !dbg !859
  %sub = add nsw i32 %b, -32, !dbg !860
  %shr = lshr i32 %0, %sub, !dbg !861
  %low = bitcast %union.dwords* %result to i32*, !dbg !862
  store i32 %shr, i32* %low, align 8, !dbg !863
  br label %if.end18, !dbg !864

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !865
  br i1 %cmp, label %if.then4, label %if.end, !dbg !866

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !867

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !868
  %high6 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s5, i32 0, i32 1, !dbg !869
  %1 = load i32, i32* %high6, align 4, !dbg !869
  %shr7 = lshr i32 %1, %b, !dbg !870
  %s8 = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !871
  %high9 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s8, i32 0, i32 1, !dbg !872
  store i32 %shr7, i32* %high9, align 4, !dbg !873
  %s10 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !874
  %high11 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s10, i32 0, i32 1, !dbg !875
  %2 = load i32, i32* %high11, align 4, !dbg !875
  %sub12 = sub nsw i32 32, %b, !dbg !876
  %shl = shl i32 %2, %sub12, !dbg !877
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !878
  %3 = load i32, i32* %low14, align 8, !dbg !878
  %shr15 = lshr i32 %3, %b, !dbg !879
  %or = or i32 %shl, %shr15, !dbg !880
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !881
  store i32 %or, i32* %low17, align 8, !dbg !882
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !883
  %4 = load i64, i64* %all19, align 8, !dbg !883
  br label %return, !dbg !884

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !885
  ret i64 %retval.0, !dbg !886
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !887 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !888
  %shr1 = ashr i64 %a, 63, !dbg !889
  %xor2 = xor i64 %shr1, %a, !dbg !890
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !891
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !892
  %1 = load i64, i64* %r, align 8, !dbg !893
  %xor4 = xor i64 %1, %shr1, !dbg !894
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !895
  ret i64 %sub5, !dbg !896
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !897 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !898
  %mul = mul nsw i32 %call, %b, !dbg !899
  %sub = sub nsw i32 %a, %mul, !dbg !900
  ret i32 %sub, !dbg !901
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !902 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !903
  br i1 %cmp, label %if.then, label %if.end4, !dbg !904

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !905
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !906

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !907
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !908

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !909

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !910
  unreachable, !dbg !910

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !911
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !912

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !913
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !914

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !915
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !916

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !917

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !918
  unreachable, !dbg !918

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !919
  %xor = xor i64 %shr, %a, !dbg !920
  %sub = sub nsw i64 %xor, %shr, !dbg !921
  %shr14 = ashr i64 %b, 63, !dbg !922
  %xor15 = xor i64 %shr14, %b, !dbg !923
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !924
  %cmp17 = icmp slt i64 %sub, 2, !dbg !925
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !926

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !927
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !928

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !929

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !930
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !931

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !932
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !933
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !934

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !935
  unreachable, !dbg !935

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !936

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !937
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !938
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !939
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !940

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !941
  unreachable, !dbg !941

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !942

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !943
  ret i64 %retval.0, !dbg !944
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !945 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !946
  br i1 %cmp, label %if.then, label %if.end4, !dbg !947

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !948
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !949

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !950
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !951

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !952

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !953
  unreachable, !dbg !953

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !954
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !955

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !956
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !957

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !958
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !959

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !960

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !961
  unreachable, !dbg !961

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !962
  %xor = xor i32 %shr, %a, !dbg !963
  %sub = sub nsw i32 %xor, %shr, !dbg !964
  %shr14 = ashr i32 %b, 31, !dbg !965
  %xor15 = xor i32 %shr14, %b, !dbg !966
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !967
  %cmp17 = icmp slt i32 %sub, 2, !dbg !968
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !969

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !970
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !971

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !972

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !973
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !974

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !975
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !976
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !977

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !978
  unreachable, !dbg !978

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !979

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !980
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !981
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !982
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !983

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !984
  unreachable, !dbg !984

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !985

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !986
  ret i32 %retval.0, !dbg !987
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #1 !dbg !988 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !989
  store i64 %a, i64* %all, align 8, !dbg !990
  %s = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !991
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !992
  %0 = load i32, i32* %high, align 4, !dbg !992
  %low = bitcast %union.dwords* %x to i32*, !dbg !993
  %1 = load i32, i32* %low, align 8, !dbg !993
  %xor = xor i32 %0, %1, !dbg !994
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !995
  ret i32 %call, !dbg !996
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #1 !dbg !997 {
entry:
  %shr = lshr i32 %a, 16, !dbg !998
  %xor = xor i32 %shr, %a, !dbg !999
  %shr1 = lshr i32 %xor, 8, !dbg !1000
  %xor2 = xor i32 %xor, %shr1, !dbg !1001
  %shr3 = lshr i32 %xor2, 4, !dbg !1002
  %xor4 = xor i32 %xor2, %shr3, !dbg !1003
  %and = and i32 %xor4, 15, !dbg !1004
  %shr5 = lshr i32 27030, %and, !dbg !1005
  %and6 = and i32 %shr5, 1, !dbg !1006
  ret i32 %and6, !dbg !1007
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #1 !dbg !1008 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1009
  %and = and i64 %shr, 6148914691236517205, !dbg !1010
  %sub = sub i64 %a, %and, !dbg !1011
  %shr1 = lshr i64 %sub, 2, !dbg !1012
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1013
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1014
  %add = add nuw nsw i64 %and2, %and3, !dbg !1015
  %shr4 = lshr i64 %add, 4, !dbg !1016
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1017
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1018
  %shr7 = lshr i64 %and6, 32, !dbg !1019
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1020
  %conv = trunc i64 %add8 to i32, !dbg !1021
  %shr9 = lshr i32 %conv, 16, !dbg !1022
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1023
  %shr11 = lshr i32 %add10, 8, !dbg !1024
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1025
  %and13 = and i32 %add12, 127, !dbg !1026
  ret i32 %and13, !dbg !1027
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #1 !dbg !1028 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1029
  %and = and i32 %shr, 1431655765, !dbg !1030
  %sub = sub i32 %a, %and, !dbg !1031
  %shr1 = lshr i32 %sub, 2, !dbg !1032
  %and2 = and i32 %shr1, 858993459, !dbg !1033
  %and3 = and i32 %sub, 858993459, !dbg !1034
  %add = add nuw nsw i32 %and2, %and3, !dbg !1035
  %shr4 = lshr i32 %add, 4, !dbg !1036
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1037
  %and6 = and i32 %add5, 252645135, !dbg !1038
  %shr7 = lshr i32 %and6, 16, !dbg !1039
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1040
  %shr9 = lshr i32 %add8, 8, !dbg !1041
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1042
  %and11 = and i32 %add10, 63, !dbg !1043
  ret i32 %and11, !dbg !1044
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1045 {
entry:
  %sub = sub i64 %a, %b, !dbg !1046
  %cmp = icmp sgt i64 %b, -1, !dbg !1047
  br i1 %cmp, label %if.then, label %if.else, !dbg !1048

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1049
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1050

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1051
  unreachable, !dbg !1051

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1052

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1053
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1054

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1055
  unreachable, !dbg !1055

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1056
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1057 {
entry:
  %sub = sub i32 %a, %b, !dbg !1058
  %cmp = icmp sgt i32 %b, -1, !dbg !1059
  br i1 %cmp, label %if.then, label %if.else, !dbg !1060

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1061
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1062

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1063
  unreachable, !dbg !1063

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1064

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1065
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1066

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1067
  unreachable, !dbg !1067

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1068
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !1069 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1070
  store i64 %a, i64* %all, align 8, !dbg !1071
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1072
  store i64 %b, i64* %all1, align 8, !dbg !1073
  %s = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !1074
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !1075
  %0 = load i32, i32* %high, align 4, !dbg !1075
  %s2 = bitcast %union.dwords* %y to %struct.binarysearch_DATA*, !dbg !1076
  %high3 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s2, i32 0, i32 1, !dbg !1077
  %1 = load i32, i32* %high3, align 4, !dbg !1077
  %cmp = icmp ult i32 %0, %1, !dbg !1078
  br i1 %cmp, label %if.then, label %if.end, !dbg !1079

if.then:                                          ; preds = %entry
  br label %return, !dbg !1080

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !1081
  %high5 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s4, i32 0, i32 1, !dbg !1082
  %2 = load i32, i32* %high5, align 4, !dbg !1082
  %s6 = bitcast %union.dwords* %y to %struct.binarysearch_DATA*, !dbg !1083
  %high7 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s6, i32 0, i32 1, !dbg !1084
  %3 = load i32, i32* %high7, align 4, !dbg !1084
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1085
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1086

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1087

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1088
  %4 = load i32, i32* %low, align 8, !dbg !1088
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1089
  %5 = load i32, i32* %low13, align 8, !dbg !1089
  %cmp14 = icmp ult i32 %4, %5, !dbg !1090
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1091

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1092

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1093
  %6 = load i32, i32* %low18, align 8, !dbg !1093
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1094
  %7 = load i32, i32* %low20, align 8, !dbg !1094
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1095
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1096

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1097

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1098

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1099
  ret i32 %retval.0, !dbg !1100
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !1101 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1102
  %sub = add nsw i32 %call, -1, !dbg !1103
  ret i32 %sub, !dbg !1104
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1105 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !1106
  ret i64 %call, !dbg !1107
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !1108 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1109
  %mul = mul i32 %call, %b, !dbg !1110
  %sub = sub i32 %a, %mul, !dbg !1111
  store i32 %sub, i32* %rem, align 4, !dbg !1112
  ret i32 %call, !dbg !1113
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #1 !dbg !1114 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1115
  br i1 %cmp, label %if.then, label %if.end, !dbg !1116

if.then:                                          ; preds = %entry
  br label %return, !dbg !1117

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1118
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1119

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1120

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1121, !range !314
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1122, !range !314
  %sub = sub nsw i32 %0, %1, !dbg !1123
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1124
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1125

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1126

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1127
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1128

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1129

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1130
  %sub10 = sub nsw i32 31, %sub, !dbg !1131
  %shl = shl i32 %n, %sub10, !dbg !1132
  %shr = lshr i32 %n, %inc, !dbg !1133
  br label %for.cond, !dbg !1134

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1135
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1135
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1135
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1135
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1136
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1134

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1137
  %2 = xor i32 %or, -1, !dbg !1138
  %sub17 = add i32 %2, %d, !dbg !1138
  br label %for.inc, !dbg !1139

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1140
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1140
  %sub20 = sub i32 %or, %and19, !dbg !1141
  %and = lshr i32 %sub17, 31, !dbg !1142
  %shl14 = shl i32 %q.0, 1, !dbg !1143
  %or15 = or i32 %shl14, %carry.0, !dbg !1144
  %dec = add i32 %sr.0, -1, !dbg !1145
  br label %for.cond, !dbg !1134, !llvm.loop !1146

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1147
  %or22 = or i32 %shl21, %carry.0, !dbg !1148
  br label %return, !dbg !1149

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1135
  ret i32 %retval.0, !dbg !1150
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1151 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !1152
  %0 = load i64, i64* %r, align 8, !dbg !1153
  ret i64 %0, !dbg !1154
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1155 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1156
  %mul = mul i32 %call, %b, !dbg !1157
  %sub = sub i32 %a, %mul, !dbg !1158
  ret i32 %sub, !dbg !1159
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #1 !dbg !1160 {
entry:
  br label %for.cond, !dbg !1161

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1162
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1163
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1164

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1165
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1165
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1166
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1167
  br label %for.inc, !dbg !1168

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1169
  br label %for.cond, !dbg !1164, !llvm.loop !1170

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1171
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #1 !dbg !1172 {
entry:
  br label %for.cond, !dbg !1173

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1174
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1175
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1176

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1177
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1178
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1179
  br label %for.inc, !dbg !1180

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1181
  br label %for.cond, !dbg !1176, !llvm.loop !1182

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1183
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
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/binarysearch/binarysearch.c", directory: "/workspaces/llvmta/testcases/tmp.vtgUQSpL55", checksumkind: CSK_MD5, checksum: "3bc3ff15f6761d6b4a9e5d6c3cacb837")
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
!125 = distinct !DISubprogram(name: "binarysearch_initSeed", scope: !126, file: !126, line: 68, type: !127, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!126 = !DIFile(filename: "batchtest/binarysearch/binarysearch.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "3bc3ff15f6761d6b4a9e5d6c3cacb837")
!127 = !DISubroutineType(types: !128)
!128 = !{}
!129 = !DILocation(line: 68, column: 54, scope: !125)
!130 = !DILocation(line: 68, column: 59, scope: !125)
!131 = distinct !DISubprogram(name: "binarysearch_randomInteger", scope: !126, file: !126, line: 73, type: !127, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!132 = !DILocation(line: 74, column: 25, scope: !131)
!133 = !DILocation(line: 74, column: 43, scope: !131)
!134 = !DILocation(line: 74, column: 50, scope: !131)
!135 = !DILocation(line: 74, column: 56, scope: !131)
!136 = !DILocation(line: 74, column: 21, scope: !131)
!137 = !DILocation(line: 75, column: 11, scope: !131)
!138 = !DILocation(line: 75, column: 3, scope: !131)
!139 = distinct !DISubprogram(name: "binarysearch_init", scope: !126, file: !126, line: 78, type: !127, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!140 = !DILocation(line: 81, column: 3, scope: !139)
!141 = !DILocation(line: 83, column: 43, scope: !139)
!142 = !DILocation(line: 0, scope: !139)
!143 = !DILocation(line: 83, column: 52, scope: !139)
!144 = !DILocation(line: 83, column: 38, scope: !139)
!145 = !DILocation(line: 84, column: 32, scope: !139)
!146 = !DILocation(line: 84, column: 26, scope: !139)
!147 = !DILocation(line: 84, column: 30, scope: !139)
!148 = !DILocation(line: 85, column: 34, scope: !139)
!149 = !DILocation(line: 85, column: 26, scope: !139)
!150 = !DILocation(line: 85, column: 32, scope: !139)
!151 = !DILocation(line: 86, column: 3, scope: !139)
!152 = !DILocation(line: 83, column: 58, scope: !139)
!153 = distinct !{!153, !144, !151, !154}
!154 = !{!"llvm.loop.mustprogress"}
!155 = !DILocation(line: 87, column: 1, scope: !139)
!156 = distinct !DISubprogram(name: "binarysearch_return", scope: !126, file: !126, line: 89, type: !127, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!157 = !DILocation(line: 89, column: 41, scope: !156)
!158 = !DILocation(line: 89, column: 33, scope: !156)
!159 = distinct !DISubprogram(name: "binarysearch_binary_search", scope: !126, file: !126, line: 95, type: !127, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!160 = !DILocation(line: 102, column: 36, scope: !159)
!161 = !DILocation(line: 0, scope: !159)
!162 = !DILocation(line: 102, column: 47, scope: !159)
!163 = !DILocation(line: 103, column: 16, scope: !159)
!164 = !DILocation(line: 103, column: 22, scope: !159)
!165 = !DILocation(line: 105, column: 32, scope: !159)
!166 = !DILocation(line: 105, column: 36, scope: !159)
!167 = !DILocation(line: 105, column: 9, scope: !159)
!168 = !DILocation(line: 107, column: 16, scope: !159)
!169 = !DILocation(line: 108, column: 39, scope: !159)
!170 = !DILocation(line: 109, column: 5, scope: !159)
!171 = !DILocation(line: 109, column: 39, scope: !159)
!172 = !DILocation(line: 109, column: 43, scope: !159)
!173 = !DILocation(line: 109, column: 16, scope: !159)
!174 = !DILocation(line: 111, column: 16, scope: !159)
!175 = !DILocation(line: 111, column: 7, scope: !159)
!176 = !DILocation(line: 114, column: 14, scope: !159)
!177 = distinct !{!177, !160, !178, !154}
!178 = !DILocation(line: 115, column: 3, scope: !159)
!179 = !DILocation(line: 117, column: 3, scope: !159)
!180 = distinct !DISubprogram(name: "binarysearch_main", scope: !126, file: !126, line: 124, type: !127, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!181 = !DILocation(line: 125, column: 25, scope: !180)
!182 = !DILocation(line: 125, column: 23, scope: !180)
!183 = !DILocation(line: 126, column: 1, scope: !180)
!184 = distinct !DISubprogram(name: "main", scope: !126, file: !126, line: 128, type: !127, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!185 = !DILocation(line: 129, column: 3, scope: !184)
!186 = !DILocation(line: 130, column: 3, scope: !184)
!187 = !DILocation(line: 132, column: 11, scope: !184)
!188 = !DILocation(line: 132, column: 40, scope: !184)
!189 = !DILocation(line: 132, column: 3, scope: !184)
!190 = distinct !DISubprogram(name: "__absvdi2", scope: !3, file: !3, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !128)
!191 = !DILocation(line: 25, column: 11, scope: !190)
!192 = !DILocation(line: 25, column: 9, scope: !190)
!193 = !DILocation(line: 26, column: 9, scope: !190)
!194 = !DILocation(line: 28, column: 20, scope: !190)
!195 = !DILocation(line: 28, column: 5, scope: !190)
!196 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !55, file: !55, line: 57, type: !127, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !128)
!197 = !DILocation(line: 59, column: 1, scope: !196)
!198 = distinct !DISubprogram(name: "__absvsi2", scope: !5, file: !5, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !128)
!199 = !DILocation(line: 25, column: 11, scope: !198)
!200 = !DILocation(line: 25, column: 9, scope: !198)
!201 = !DILocation(line: 26, column: 9, scope: !198)
!202 = !DILocation(line: 28, column: 20, scope: !198)
!203 = !DILocation(line: 28, column: 5, scope: !198)
!204 = distinct !DISubprogram(name: "__addvdi3", scope: !9, file: !9, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !128)
!205 = !DILocation(line: 24, column: 27, scope: !204)
!206 = !DILocation(line: 25, column: 11, scope: !204)
!207 = !DILocation(line: 25, column: 9, scope: !204)
!208 = !DILocation(line: 27, column: 15, scope: !204)
!209 = !DILocation(line: 27, column: 13, scope: !204)
!210 = !DILocation(line: 28, column: 13, scope: !204)
!211 = !DILocation(line: 29, column: 5, scope: !204)
!212 = !DILocation(line: 32, column: 15, scope: !204)
!213 = !DILocation(line: 32, column: 13, scope: !204)
!214 = !DILocation(line: 33, column: 13, scope: !204)
!215 = !DILocation(line: 35, column: 5, scope: !204)
!216 = distinct !DISubprogram(name: "__addvsi3", scope: !11, file: !11, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !128)
!217 = !DILocation(line: 24, column: 27, scope: !216)
!218 = !DILocation(line: 25, column: 11, scope: !216)
!219 = !DILocation(line: 25, column: 9, scope: !216)
!220 = !DILocation(line: 27, column: 15, scope: !216)
!221 = !DILocation(line: 27, column: 13, scope: !216)
!222 = !DILocation(line: 28, column: 13, scope: !216)
!223 = !DILocation(line: 29, column: 5, scope: !216)
!224 = !DILocation(line: 32, column: 15, scope: !216)
!225 = !DILocation(line: 32, column: 13, scope: !216)
!226 = !DILocation(line: 33, column: 13, scope: !216)
!227 = !DILocation(line: 35, column: 5, scope: !216)
!228 = distinct !DISubprogram(name: "__ashldi3", scope: !15, file: !15, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !128)
!229 = !DILocation(line: 29, column: 11, scope: !228)
!230 = !DILocation(line: 29, column: 15, scope: !228)
!231 = !DILocation(line: 30, column: 11, scope: !228)
!232 = !DILocation(line: 30, column: 9, scope: !228)
!233 = !DILocation(line: 32, column: 18, scope: !228)
!234 = !DILocation(line: 32, column: 22, scope: !228)
!235 = !DILocation(line: 33, column: 33, scope: !228)
!236 = !DILocation(line: 33, column: 43, scope: !228)
!237 = !DILocation(line: 33, column: 37, scope: !228)
!238 = !DILocation(line: 33, column: 16, scope: !228)
!239 = !DILocation(line: 33, column: 18, scope: !228)
!240 = !DILocation(line: 33, column: 23, scope: !228)
!241 = !DILocation(line: 34, column: 5, scope: !228)
!242 = !DILocation(line: 37, column: 15, scope: !228)
!243 = !DILocation(line: 37, column: 13, scope: !228)
!244 = !DILocation(line: 38, column: 13, scope: !228)
!245 = !DILocation(line: 39, column: 33, scope: !228)
!246 = !DILocation(line: 39, column: 37, scope: !228)
!247 = !DILocation(line: 39, column: 18, scope: !228)
!248 = !DILocation(line: 39, column: 23, scope: !228)
!249 = !DILocation(line: 40, column: 32, scope: !228)
!250 = !DILocation(line: 40, column: 34, scope: !228)
!251 = !DILocation(line: 40, column: 39, scope: !228)
!252 = !DILocation(line: 40, column: 56, scope: !228)
!253 = !DILocation(line: 40, column: 77, scope: !228)
!254 = !DILocation(line: 40, column: 60, scope: !228)
!255 = !DILocation(line: 40, column: 45, scope: !228)
!256 = !DILocation(line: 40, column: 16, scope: !228)
!257 = !DILocation(line: 40, column: 18, scope: !228)
!258 = !DILocation(line: 40, column: 23, scope: !228)
!259 = !DILocation(line: 42, column: 19, scope: !228)
!260 = !DILocation(line: 42, column: 5, scope: !228)
!261 = !DILocation(line: 0, scope: !228)
!262 = !DILocation(line: 43, column: 1, scope: !228)
!263 = distinct !DISubprogram(name: "__ashrdi3", scope: !19, file: !19, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !128)
!264 = !DILocation(line: 29, column: 11, scope: !263)
!265 = !DILocation(line: 29, column: 15, scope: !263)
!266 = !DILocation(line: 30, column: 11, scope: !263)
!267 = !DILocation(line: 30, column: 9, scope: !263)
!268 = !DILocation(line: 33, column: 31, scope: !263)
!269 = !DILocation(line: 33, column: 33, scope: !263)
!270 = !DILocation(line: 33, column: 38, scope: !263)
!271 = !DILocation(line: 33, column: 16, scope: !263)
!272 = !DILocation(line: 33, column: 18, scope: !263)
!273 = !DILocation(line: 33, column: 23, scope: !263)
!274 = !DILocation(line: 34, column: 30, scope: !263)
!275 = !DILocation(line: 34, column: 32, scope: !263)
!276 = !DILocation(line: 34, column: 43, scope: !263)
!277 = !DILocation(line: 34, column: 37, scope: !263)
!278 = !DILocation(line: 34, column: 18, scope: !263)
!279 = !DILocation(line: 34, column: 22, scope: !263)
!280 = !DILocation(line: 35, column: 5, scope: !263)
!281 = !DILocation(line: 38, column: 15, scope: !263)
!282 = !DILocation(line: 38, column: 13, scope: !263)
!283 = !DILocation(line: 39, column: 13, scope: !263)
!284 = !DILocation(line: 40, column: 32, scope: !263)
!285 = !DILocation(line: 40, column: 34, scope: !263)
!286 = !DILocation(line: 40, column: 39, scope: !263)
!287 = !DILocation(line: 40, column: 16, scope: !263)
!288 = !DILocation(line: 40, column: 18, scope: !263)
!289 = !DILocation(line: 40, column: 24, scope: !263)
!290 = !DILocation(line: 41, column: 31, scope: !263)
!291 = !DILocation(line: 41, column: 33, scope: !263)
!292 = !DILocation(line: 41, column: 55, scope: !263)
!293 = !DILocation(line: 41, column: 38, scope: !263)
!294 = !DILocation(line: 41, column: 72, scope: !263)
!295 = !DILocation(line: 41, column: 76, scope: !263)
!296 = !DILocation(line: 41, column: 61, scope: !263)
!297 = !DILocation(line: 41, column: 18, scope: !263)
!298 = !DILocation(line: 41, column: 22, scope: !263)
!299 = !DILocation(line: 43, column: 19, scope: !263)
!300 = !DILocation(line: 43, column: 5, scope: !263)
!301 = !DILocation(line: 0, scope: !263)
!302 = !DILocation(line: 44, column: 1, scope: !263)
!303 = distinct !DISubprogram(name: "__clzdi2", scope: !23, file: !23, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !128)
!304 = !DILocation(line: 25, column: 7, scope: !303)
!305 = !DILocation(line: 25, column: 11, scope: !303)
!306 = !DILocation(line: 26, column: 26, scope: !303)
!307 = !DILocation(line: 26, column: 28, scope: !303)
!308 = !DILocation(line: 26, column: 33, scope: !303)
!309 = !DILocation(line: 27, column: 29, scope: !303)
!310 = !DILocation(line: 27, column: 31, scope: !303)
!311 = !DILocation(line: 27, column: 49, scope: !303)
!312 = !DILocation(line: 27, column: 42, scope: !303)
!313 = !DILocation(line: 27, column: 12, scope: !303)
!314 = !{i32 0, i32 33}
!315 = !DILocation(line: 28, column: 15, scope: !303)
!316 = !DILocation(line: 27, column: 59, scope: !303)
!317 = !DILocation(line: 27, column: 5, scope: !303)
!318 = distinct !DISubprogram(name: "__clzsi2", scope: !25, file: !25, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !128)
!319 = !DILocation(line: 25, column: 34, scope: !318)
!320 = !DILocation(line: 25, column: 40, scope: !318)
!321 = !DILocation(line: 26, column: 14, scope: !318)
!322 = !DILocation(line: 26, column: 7, scope: !318)
!323 = !DILocation(line: 29, column: 13, scope: !318)
!324 = !DILocation(line: 29, column: 23, scope: !318)
!325 = !DILocation(line: 29, column: 29, scope: !318)
!326 = !DILocation(line: 30, column: 13, scope: !318)
!327 = !DILocation(line: 30, column: 7, scope: !318)
!328 = !DILocation(line: 31, column: 7, scope: !318)
!329 = !DILocation(line: 33, column: 13, scope: !318)
!330 = !DILocation(line: 33, column: 21, scope: !318)
!331 = !DILocation(line: 33, column: 27, scope: !318)
!332 = !DILocation(line: 34, column: 13, scope: !318)
!333 = !DILocation(line: 34, column: 7, scope: !318)
!334 = !DILocation(line: 35, column: 7, scope: !318)
!335 = !DILocation(line: 37, column: 13, scope: !318)
!336 = !DILocation(line: 37, column: 20, scope: !318)
!337 = !DILocation(line: 37, column: 26, scope: !318)
!338 = !DILocation(line: 38, column: 13, scope: !318)
!339 = !DILocation(line: 38, column: 7, scope: !318)
!340 = !DILocation(line: 39, column: 7, scope: !318)
!341 = !DILocation(line: 52, column: 20, scope: !318)
!342 = !DILocation(line: 52, column: 37, scope: !318)
!343 = !DILocation(line: 52, column: 25, scope: !318)
!344 = !DILocation(line: 52, column: 14, scope: !318)
!345 = !DILocation(line: 52, column: 5, scope: !318)
!346 = distinct !DISubprogram(name: "__cmpdi2", scope: !29, file: !29, line: 23, type: !127, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !128)
!347 = !DILocation(line: 26, column: 7, scope: !346)
!348 = !DILocation(line: 26, column: 11, scope: !346)
!349 = !DILocation(line: 28, column: 7, scope: !346)
!350 = !DILocation(line: 28, column: 11, scope: !346)
!351 = !DILocation(line: 29, column: 11, scope: !346)
!352 = !DILocation(line: 29, column: 13, scope: !346)
!353 = !DILocation(line: 29, column: 22, scope: !346)
!354 = !DILocation(line: 29, column: 24, scope: !346)
!355 = !DILocation(line: 29, column: 18, scope: !346)
!356 = !DILocation(line: 29, column: 9, scope: !346)
!357 = !DILocation(line: 30, column: 9, scope: !346)
!358 = !DILocation(line: 31, column: 11, scope: !346)
!359 = !DILocation(line: 31, column: 13, scope: !346)
!360 = !DILocation(line: 31, column: 22, scope: !346)
!361 = !DILocation(line: 31, column: 24, scope: !346)
!362 = !DILocation(line: 31, column: 18, scope: !346)
!363 = !DILocation(line: 31, column: 9, scope: !346)
!364 = !DILocation(line: 32, column: 9, scope: !346)
!365 = !DILocation(line: 33, column: 13, scope: !346)
!366 = !DILocation(line: 33, column: 23, scope: !346)
!367 = !DILocation(line: 33, column: 17, scope: !346)
!368 = !DILocation(line: 33, column: 9, scope: !346)
!369 = !DILocation(line: 34, column: 9, scope: !346)
!370 = !DILocation(line: 35, column: 13, scope: !346)
!371 = !DILocation(line: 35, column: 23, scope: !346)
!372 = !DILocation(line: 35, column: 17, scope: !346)
!373 = !DILocation(line: 35, column: 9, scope: !346)
!374 = !DILocation(line: 36, column: 9, scope: !346)
!375 = !DILocation(line: 37, column: 5, scope: !346)
!376 = !DILocation(line: 0, scope: !346)
!377 = !DILocation(line: 38, column: 1, scope: !346)
!378 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !29, file: !29, line: 46, type: !127, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !128)
!379 = !DILocation(line: 48, column: 9, scope: !378)
!380 = !DILocation(line: 48, column: 24, scope: !378)
!381 = !DILocation(line: 48, column: 2, scope: !378)
!382 = distinct !DISubprogram(name: "__ctzdi2", scope: !33, file: !33, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !128)
!383 = !DILocation(line: 25, column: 7, scope: !382)
!384 = !DILocation(line: 25, column: 11, scope: !382)
!385 = !DILocation(line: 26, column: 28, scope: !382)
!386 = !DILocation(line: 26, column: 32, scope: !382)
!387 = !DILocation(line: 27, column: 29, scope: !382)
!388 = !DILocation(line: 27, column: 31, scope: !382)
!389 = !DILocation(line: 27, column: 41, scope: !382)
!390 = !DILocation(line: 27, column: 12, scope: !382)
!391 = !DILocation(line: 28, column: 18, scope: !382)
!392 = !DILocation(line: 27, column: 59, scope: !382)
!393 = !DILocation(line: 27, column: 5, scope: !382)
!394 = distinct !DISubprogram(name: "__ctzsi2", scope: !35, file: !35, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !128)
!395 = !DILocation(line: 25, column: 20, scope: !394)
!396 = !DILocation(line: 25, column: 34, scope: !394)
!397 = !DILocation(line: 25, column: 40, scope: !394)
!398 = !DILocation(line: 26, column: 7, scope: !394)
!399 = !DILocation(line: 29, column: 13, scope: !394)
!400 = !DILocation(line: 29, column: 23, scope: !394)
!401 = !DILocation(line: 29, column: 29, scope: !394)
!402 = !DILocation(line: 30, column: 7, scope: !394)
!403 = !DILocation(line: 31, column: 7, scope: !394)
!404 = !DILocation(line: 33, column: 13, scope: !394)
!405 = !DILocation(line: 33, column: 21, scope: !394)
!406 = !DILocation(line: 33, column: 27, scope: !394)
!407 = !DILocation(line: 34, column: 7, scope: !394)
!408 = !DILocation(line: 35, column: 7, scope: !394)
!409 = !DILocation(line: 37, column: 13, scope: !394)
!410 = !DILocation(line: 37, column: 20, scope: !394)
!411 = !DILocation(line: 37, column: 26, scope: !394)
!412 = !DILocation(line: 38, column: 7, scope: !394)
!413 = !DILocation(line: 40, column: 7, scope: !394)
!414 = !DILocation(line: 56, column: 25, scope: !394)
!415 = !DILocation(line: 56, column: 20, scope: !394)
!416 = !DILocation(line: 56, column: 44, scope: !394)
!417 = !DILocation(line: 56, column: 32, scope: !394)
!418 = !DILocation(line: 56, column: 14, scope: !394)
!419 = !DILocation(line: 56, column: 5, scope: !394)
!420 = distinct !DISubprogram(name: "__divdi3", scope: !39, file: !39, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !128)
!421 = !DILocation(line: 23, column: 20, scope: !420)
!422 = !DILocation(line: 24, column: 20, scope: !420)
!423 = !DILocation(line: 25, column: 12, scope: !420)
!424 = !DILocation(line: 25, column: 19, scope: !420)
!425 = !DILocation(line: 26, column: 12, scope: !420)
!426 = !DILocation(line: 26, column: 19, scope: !420)
!427 = !DILocation(line: 27, column: 9, scope: !420)
!428 = !DILocation(line: 28, column: 13, scope: !420)
!429 = !DILocation(line: 28, column: 44, scope: !420)
!430 = !DILocation(line: 28, column: 51, scope: !420)
!431 = !DILocation(line: 28, column: 5, scope: !420)
!432 = distinct !DISubprogram(name: "__udivmoddi4", scope: !97, file: !97, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !128)
!433 = !DILocation(line: 29, column: 7, scope: !432)
!434 = !DILocation(line: 29, column: 11, scope: !432)
!435 = !DILocation(line: 31, column: 7, scope: !432)
!436 = !DILocation(line: 31, column: 11, scope: !432)
!437 = !DILocation(line: 36, column: 11, scope: !432)
!438 = !DILocation(line: 36, column: 13, scope: !432)
!439 = !DILocation(line: 36, column: 18, scope: !432)
!440 = !DILocation(line: 36, column: 9, scope: !432)
!441 = !DILocation(line: 38, column: 15, scope: !432)
!442 = !DILocation(line: 38, column: 17, scope: !432)
!443 = !DILocation(line: 38, column: 22, scope: !432)
!444 = !DILocation(line: 38, column: 13, scope: !432)
!445 = !DILocation(line: 44, column: 17, scope: !432)
!446 = !DILocation(line: 45, column: 28, scope: !432)
!447 = !DILocation(line: 45, column: 38, scope: !432)
!448 = !DILocation(line: 45, column: 32, scope: !432)
!449 = !DILocation(line: 45, column: 24, scope: !432)
!450 = !DILocation(line: 45, column: 22, scope: !432)
!451 = !DILocation(line: 45, column: 17, scope: !432)
!452 = !DILocation(line: 46, column: 24, scope: !432)
!453 = !DILocation(line: 46, column: 34, scope: !432)
!454 = !DILocation(line: 46, column: 28, scope: !432)
!455 = !DILocation(line: 46, column: 20, scope: !432)
!456 = !DILocation(line: 46, column: 13, scope: !432)
!457 = !DILocation(line: 52, column: 13, scope: !432)
!458 = !DILocation(line: 53, column: 24, scope: !432)
!459 = !DILocation(line: 53, column: 20, scope: !432)
!460 = !DILocation(line: 53, column: 18, scope: !432)
!461 = !DILocation(line: 53, column: 13, scope: !432)
!462 = !DILocation(line: 54, column: 9, scope: !432)
!463 = !DILocation(line: 57, column: 13, scope: !432)
!464 = !DILocation(line: 57, column: 17, scope: !432)
!465 = !DILocation(line: 57, column: 9, scope: !432)
!466 = !DILocation(line: 59, column: 15, scope: !432)
!467 = !DILocation(line: 59, column: 17, scope: !432)
!468 = !DILocation(line: 59, column: 22, scope: !432)
!469 = !DILocation(line: 59, column: 13, scope: !432)
!470 = !DILocation(line: 65, column: 17, scope: !432)
!471 = !DILocation(line: 66, column: 26, scope: !432)
!472 = !DILocation(line: 66, column: 28, scope: !432)
!473 = !DILocation(line: 66, column: 39, scope: !432)
!474 = !DILocation(line: 66, column: 33, scope: !432)
!475 = !DILocation(line: 66, column: 24, scope: !432)
!476 = !DILocation(line: 66, column: 22, scope: !432)
!477 = !DILocation(line: 66, column: 17, scope: !432)
!478 = !DILocation(line: 67, column: 22, scope: !432)
!479 = !DILocation(line: 67, column: 24, scope: !432)
!480 = !DILocation(line: 67, column: 35, scope: !432)
!481 = !DILocation(line: 67, column: 29, scope: !432)
!482 = !DILocation(line: 67, column: 20, scope: !432)
!483 = !DILocation(line: 67, column: 13, scope: !432)
!484 = !DILocation(line: 70, column: 17, scope: !432)
!485 = !DILocation(line: 70, column: 21, scope: !432)
!486 = !DILocation(line: 70, column: 13, scope: !432)
!487 = !DILocation(line: 76, column: 17, scope: !432)
!488 = !DILocation(line: 78, column: 30, scope: !432)
!489 = !DILocation(line: 78, column: 32, scope: !432)
!490 = !DILocation(line: 78, column: 41, scope: !432)
!491 = !DILocation(line: 78, column: 43, scope: !432)
!492 = !DILocation(line: 78, column: 37, scope: !432)
!493 = !DILocation(line: 78, column: 19, scope: !432)
!494 = !DILocation(line: 78, column: 21, scope: !432)
!495 = !DILocation(line: 78, column: 26, scope: !432)
!496 = !DILocation(line: 79, column: 21, scope: !432)
!497 = !DILocation(line: 79, column: 25, scope: !432)
!498 = !DILocation(line: 80, column: 26, scope: !432)
!499 = !DILocation(line: 80, column: 22, scope: !432)
!500 = !DILocation(line: 81, column: 13, scope: !432)
!501 = !DILocation(line: 82, column: 22, scope: !432)
!502 = !DILocation(line: 82, column: 24, scope: !432)
!503 = !DILocation(line: 82, column: 33, scope: !432)
!504 = !DILocation(line: 82, column: 35, scope: !432)
!505 = !DILocation(line: 82, column: 29, scope: !432)
!506 = !DILocation(line: 82, column: 20, scope: !432)
!507 = !DILocation(line: 82, column: 13, scope: !432)
!508 = !DILocation(line: 88, column: 16, scope: !432)
!509 = !DILocation(line: 88, column: 18, scope: !432)
!510 = !DILocation(line: 88, column: 28, scope: !432)
!511 = !DILocation(line: 88, column: 30, scope: !432)
!512 = !DILocation(line: 88, column: 35, scope: !432)
!513 = !DILocation(line: 88, column: 23, scope: !432)
!514 = !DILocation(line: 88, column: 41, scope: !432)
!515 = !DILocation(line: 88, column: 13, scope: !432)
!516 = !DILocation(line: 90, column: 17, scope: !432)
!517 = !DILocation(line: 92, column: 31, scope: !432)
!518 = !DILocation(line: 92, column: 21, scope: !432)
!519 = !DILocation(line: 92, column: 25, scope: !432)
!520 = !DILocation(line: 93, column: 30, scope: !432)
!521 = !DILocation(line: 93, column: 32, scope: !432)
!522 = !DILocation(line: 93, column: 42, scope: !432)
!523 = !DILocation(line: 93, column: 44, scope: !432)
!524 = !DILocation(line: 93, column: 49, scope: !432)
!525 = !DILocation(line: 93, column: 37, scope: !432)
!526 = !DILocation(line: 93, column: 19, scope: !432)
!527 = !DILocation(line: 93, column: 21, scope: !432)
!528 = !DILocation(line: 93, column: 26, scope: !432)
!529 = !DILocation(line: 94, column: 26, scope: !432)
!530 = !DILocation(line: 94, column: 22, scope: !432)
!531 = !DILocation(line: 95, column: 13, scope: !432)
!532 = !DILocation(line: 96, column: 22, scope: !432)
!533 = !DILocation(line: 96, column: 24, scope: !432)
!534 = !DILocation(line: 96, column: 48, scope: !432)
!535 = !DILocation(line: 96, column: 50, scope: !432)
!536 = !DILocation(line: 96, column: 32, scope: !432)
!537 = !DILocation(line: 96, column: 29, scope: !432)
!538 = !DILocation(line: 96, column: 20, scope: !432)
!539 = !DILocation(line: 96, column: 13, scope: !432)
!540 = !DILocation(line: 102, column: 30, scope: !432)
!541 = !DILocation(line: 102, column: 32, scope: !432)
!542 = !DILocation(line: 102, column: 14, scope: !432)
!543 = !DILocation(line: 102, column: 56, scope: !432)
!544 = !DILocation(line: 102, column: 58, scope: !432)
!545 = !DILocation(line: 102, column: 40, scope: !432)
!546 = !DILocation(line: 102, column: 38, scope: !432)
!547 = !DILocation(line: 104, column: 16, scope: !432)
!548 = !DILocation(line: 104, column: 13, scope: !432)
!549 = !DILocation(line: 106, column: 16, scope: !432)
!550 = !DILocation(line: 107, column: 26, scope: !432)
!551 = !DILocation(line: 107, column: 22, scope: !432)
!552 = !DILocation(line: 107, column: 17, scope: !432)
!553 = !DILocation(line: 108, column: 13, scope: !432)
!554 = !DILocation(line: 110, column: 9, scope: !432)
!555 = !DILocation(line: 113, column: 13, scope: !432)
!556 = !DILocation(line: 113, column: 17, scope: !432)
!557 = !DILocation(line: 114, column: 24, scope: !432)
!558 = !DILocation(line: 114, column: 45, scope: !432)
!559 = !DILocation(line: 114, column: 28, scope: !432)
!560 = !DILocation(line: 114, column: 11, scope: !432)
!561 = !DILocation(line: 114, column: 13, scope: !432)
!562 = !DILocation(line: 114, column: 18, scope: !432)
!563 = !DILocation(line: 116, column: 22, scope: !432)
!564 = !DILocation(line: 116, column: 24, scope: !432)
!565 = !DILocation(line: 116, column: 29, scope: !432)
!566 = !DILocation(line: 116, column: 11, scope: !432)
!567 = !DILocation(line: 116, column: 13, scope: !432)
!568 = !DILocation(line: 116, column: 18, scope: !432)
!569 = !DILocation(line: 117, column: 22, scope: !432)
!570 = !DILocation(line: 117, column: 24, scope: !432)
!571 = !DILocation(line: 117, column: 46, scope: !432)
!572 = !DILocation(line: 117, column: 29, scope: !432)
!573 = !DILocation(line: 117, column: 60, scope: !432)
!574 = !DILocation(line: 117, column: 64, scope: !432)
!575 = !DILocation(line: 117, column: 53, scope: !432)
!576 = !DILocation(line: 117, column: 13, scope: !432)
!577 = !DILocation(line: 117, column: 17, scope: !432)
!578 = !DILocation(line: 118, column: 5, scope: !432)
!579 = !DILocation(line: 121, column: 15, scope: !432)
!580 = !DILocation(line: 121, column: 17, scope: !432)
!581 = !DILocation(line: 121, column: 22, scope: !432)
!582 = !DILocation(line: 121, column: 13, scope: !432)
!583 = !DILocation(line: 127, column: 22, scope: !432)
!584 = !DILocation(line: 127, column: 43, scope: !432)
!585 = !DILocation(line: 127, column: 17, scope: !432)
!586 = !DILocation(line: 129, column: 21, scope: !432)
!587 = !DILocation(line: 130, column: 32, scope: !432)
!588 = !DILocation(line: 130, column: 43, scope: !432)
!589 = !DILocation(line: 130, column: 47, scope: !432)
!590 = !DILocation(line: 130, column: 36, scope: !432)
!591 = !DILocation(line: 130, column: 28, scope: !432)
!592 = !DILocation(line: 130, column: 26, scope: !432)
!593 = !DILocation(line: 130, column: 21, scope: !432)
!594 = !DILocation(line: 131, column: 25, scope: !432)
!595 = !DILocation(line: 131, column: 29, scope: !432)
!596 = !DILocation(line: 131, column: 21, scope: !432)
!597 = !DILocation(line: 132, column: 30, scope: !432)
!598 = !DILocation(line: 132, column: 21, scope: !432)
!599 = !DILocation(line: 133, column: 40, scope: !432)
!600 = !DILocation(line: 133, column: 22, scope: !432)
!601 = !DILocation(line: 134, column: 30, scope: !432)
!602 = !DILocation(line: 134, column: 32, scope: !432)
!603 = !DILocation(line: 134, column: 37, scope: !432)
!604 = !DILocation(line: 134, column: 19, scope: !432)
!605 = !DILocation(line: 134, column: 21, scope: !432)
!606 = !DILocation(line: 134, column: 26, scope: !432)
!607 = !DILocation(line: 135, column: 30, scope: !432)
!608 = !DILocation(line: 135, column: 32, scope: !432)
!609 = !DILocation(line: 135, column: 54, scope: !432)
!610 = !DILocation(line: 135, column: 37, scope: !432)
!611 = !DILocation(line: 135, column: 68, scope: !432)
!612 = !DILocation(line: 135, column: 72, scope: !432)
!613 = !DILocation(line: 135, column: 61, scope: !432)
!614 = !DILocation(line: 135, column: 21, scope: !432)
!615 = !DILocation(line: 135, column: 25, scope: !432)
!616 = !DILocation(line: 136, column: 26, scope: !432)
!617 = !DILocation(line: 136, column: 17, scope: !432)
!618 = !DILocation(line: 142, column: 55, scope: !432)
!619 = !DILocation(line: 142, column: 37, scope: !432)
!620 = !DILocation(line: 142, column: 35, scope: !432)
!621 = !DILocation(line: 142, column: 78, scope: !432)
!622 = !DILocation(line: 142, column: 80, scope: !432)
!623 = !DILocation(line: 142, column: 62, scope: !432)
!624 = !DILocation(line: 142, column: 60, scope: !432)
!625 = !DILocation(line: 147, column: 20, scope: !432)
!626 = !DILocation(line: 147, column: 17, scope: !432)
!627 = !DILocation(line: 149, column: 21, scope: !432)
!628 = !DILocation(line: 149, column: 25, scope: !432)
!629 = !DILocation(line: 150, column: 32, scope: !432)
!630 = !DILocation(line: 150, column: 19, scope: !432)
!631 = !DILocation(line: 150, column: 21, scope: !432)
!632 = !DILocation(line: 150, column: 26, scope: !432)
!633 = !DILocation(line: 151, column: 19, scope: !432)
!634 = !DILocation(line: 151, column: 21, scope: !432)
!635 = !DILocation(line: 151, column: 26, scope: !432)
!636 = !DILocation(line: 152, column: 29, scope: !432)
!637 = !DILocation(line: 152, column: 31, scope: !432)
!638 = !DILocation(line: 152, column: 21, scope: !432)
!639 = !DILocation(line: 152, column: 25, scope: !432)
!640 = !DILocation(line: 153, column: 13, scope: !432)
!641 = !DILocation(line: 154, column: 25, scope: !432)
!642 = !DILocation(line: 154, column: 22, scope: !432)
!643 = !DILocation(line: 156, column: 21, scope: !432)
!644 = !DILocation(line: 156, column: 25, scope: !432)
!645 = !DILocation(line: 157, column: 32, scope: !432)
!646 = !DILocation(line: 157, column: 53, scope: !432)
!647 = !DILocation(line: 157, column: 36, scope: !432)
!648 = !DILocation(line: 157, column: 19, scope: !432)
!649 = !DILocation(line: 157, column: 21, scope: !432)
!650 = !DILocation(line: 157, column: 26, scope: !432)
!651 = !DILocation(line: 158, column: 30, scope: !432)
!652 = !DILocation(line: 158, column: 32, scope: !432)
!653 = !DILocation(line: 158, column: 37, scope: !432)
!654 = !DILocation(line: 158, column: 19, scope: !432)
!655 = !DILocation(line: 158, column: 21, scope: !432)
!656 = !DILocation(line: 158, column: 26, scope: !432)
!657 = !DILocation(line: 159, column: 30, scope: !432)
!658 = !DILocation(line: 159, column: 32, scope: !432)
!659 = !DILocation(line: 159, column: 54, scope: !432)
!660 = !DILocation(line: 159, column: 37, scope: !432)
!661 = !DILocation(line: 159, column: 68, scope: !432)
!662 = !DILocation(line: 159, column: 72, scope: !432)
!663 = !DILocation(line: 159, column: 61, scope: !432)
!664 = !DILocation(line: 159, column: 21, scope: !432)
!665 = !DILocation(line: 159, column: 25, scope: !432)
!666 = !DILocation(line: 160, column: 13, scope: !432)
!667 = !DILocation(line: 163, column: 31, scope: !432)
!668 = !DILocation(line: 163, column: 53, scope: !432)
!669 = !DILocation(line: 163, column: 35, scope: !432)
!670 = !DILocation(line: 163, column: 21, scope: !432)
!671 = !DILocation(line: 163, column: 25, scope: !432)
!672 = !DILocation(line: 164, column: 31, scope: !432)
!673 = !DILocation(line: 164, column: 33, scope: !432)
!674 = !DILocation(line: 164, column: 56, scope: !432)
!675 = !DILocation(line: 164, column: 38, scope: !432)
!676 = !DILocation(line: 165, column: 33, scope: !432)
!677 = !DILocation(line: 165, column: 44, scope: !432)
!678 = !DILocation(line: 165, column: 37, scope: !432)
!679 = !DILocation(line: 164, column: 63, scope: !432)
!680 = !DILocation(line: 164, column: 19, scope: !432)
!681 = !DILocation(line: 164, column: 21, scope: !432)
!682 = !DILocation(line: 164, column: 26, scope: !432)
!683 = !DILocation(line: 166, column: 19, scope: !432)
!684 = !DILocation(line: 166, column: 21, scope: !432)
!685 = !DILocation(line: 166, column: 26, scope: !432)
!686 = !DILocation(line: 167, column: 29, scope: !432)
!687 = !DILocation(line: 167, column: 31, scope: !432)
!688 = !DILocation(line: 167, column: 43, scope: !432)
!689 = !DILocation(line: 167, column: 36, scope: !432)
!690 = !DILocation(line: 167, column: 21, scope: !432)
!691 = !DILocation(line: 167, column: 25, scope: !432)
!692 = !DILocation(line: 169, column: 9, scope: !432)
!693 = !DILocation(line: 176, column: 34, scope: !432)
!694 = !DILocation(line: 176, column: 36, scope: !432)
!695 = !DILocation(line: 176, column: 18, scope: !432)
!696 = !DILocation(line: 176, column: 60, scope: !432)
!697 = !DILocation(line: 176, column: 62, scope: !432)
!698 = !DILocation(line: 176, column: 44, scope: !432)
!699 = !DILocation(line: 176, column: 42, scope: !432)
!700 = !DILocation(line: 178, column: 20, scope: !432)
!701 = !DILocation(line: 178, column: 17, scope: !432)
!702 = !DILocation(line: 180, column: 21, scope: !432)
!703 = !DILocation(line: 181, column: 30, scope: !432)
!704 = !DILocation(line: 181, column: 26, scope: !432)
!705 = !DILocation(line: 181, column: 21, scope: !432)
!706 = !DILocation(line: 182, column: 17, scope: !432)
!707 = !DILocation(line: 184, column: 13, scope: !432)
!708 = !DILocation(line: 187, column: 17, scope: !432)
!709 = !DILocation(line: 187, column: 21, scope: !432)
!710 = !DILocation(line: 188, column: 20, scope: !432)
!711 = !DILocation(line: 188, column: 17, scope: !432)
!712 = !DILocation(line: 190, column: 32, scope: !432)
!713 = !DILocation(line: 190, column: 19, scope: !432)
!714 = !DILocation(line: 190, column: 21, scope: !432)
!715 = !DILocation(line: 190, column: 26, scope: !432)
!716 = !DILocation(line: 191, column: 19, scope: !432)
!717 = !DILocation(line: 191, column: 21, scope: !432)
!718 = !DILocation(line: 191, column: 26, scope: !432)
!719 = !DILocation(line: 192, column: 29, scope: !432)
!720 = !DILocation(line: 192, column: 31, scope: !432)
!721 = !DILocation(line: 192, column: 21, scope: !432)
!722 = !DILocation(line: 192, column: 25, scope: !432)
!723 = !DILocation(line: 193, column: 13, scope: !432)
!724 = !DILocation(line: 196, column: 32, scope: !432)
!725 = !DILocation(line: 196, column: 53, scope: !432)
!726 = !DILocation(line: 196, column: 36, scope: !432)
!727 = !DILocation(line: 196, column: 19, scope: !432)
!728 = !DILocation(line: 196, column: 21, scope: !432)
!729 = !DILocation(line: 196, column: 26, scope: !432)
!730 = !DILocation(line: 197, column: 30, scope: !432)
!731 = !DILocation(line: 197, column: 32, scope: !432)
!732 = !DILocation(line: 197, column: 37, scope: !432)
!733 = !DILocation(line: 197, column: 19, scope: !432)
!734 = !DILocation(line: 197, column: 21, scope: !432)
!735 = !DILocation(line: 197, column: 26, scope: !432)
!736 = !DILocation(line: 198, column: 30, scope: !432)
!737 = !DILocation(line: 198, column: 32, scope: !432)
!738 = !DILocation(line: 198, column: 54, scope: !432)
!739 = !DILocation(line: 198, column: 37, scope: !432)
!740 = !DILocation(line: 198, column: 68, scope: !432)
!741 = !DILocation(line: 198, column: 72, scope: !432)
!742 = !DILocation(line: 198, column: 61, scope: !432)
!743 = !DILocation(line: 198, column: 21, scope: !432)
!744 = !DILocation(line: 198, column: 25, scope: !432)
!745 = !DILocation(line: 0, scope: !432)
!746 = !DILocation(line: 209, column: 5, scope: !432)
!747 = !DILocation(line: 209, column: 15, scope: !432)
!748 = !DILocation(line: 212, column: 23, scope: !432)
!749 = !DILocation(line: 212, column: 25, scope: !432)
!750 = !DILocation(line: 212, column: 43, scope: !432)
!751 = !DILocation(line: 212, column: 36, scope: !432)
!752 = !DILocation(line: 212, column: 11, scope: !432)
!753 = !DILocation(line: 212, column: 13, scope: !432)
!754 = !DILocation(line: 212, column: 18, scope: !432)
!755 = !DILocation(line: 213, column: 41, scope: !432)
!756 = !DILocation(line: 213, column: 43, scope: !432)
!757 = !DILocation(line: 213, column: 36, scope: !432)
!758 = !DILocation(line: 213, column: 13, scope: !432)
!759 = !DILocation(line: 213, column: 18, scope: !432)
!760 = !DILocation(line: 214, column: 23, scope: !432)
!761 = !DILocation(line: 214, column: 25, scope: !432)
!762 = !DILocation(line: 214, column: 43, scope: !432)
!763 = !DILocation(line: 214, column: 36, scope: !432)
!764 = !DILocation(line: 214, column: 11, scope: !432)
!765 = !DILocation(line: 214, column: 13, scope: !432)
!766 = !DILocation(line: 214, column: 18, scope: !432)
!767 = !DILocation(line: 215, column: 30, scope: !432)
!768 = !DILocation(line: 215, column: 36, scope: !432)
!769 = !DILocation(line: 215, column: 13, scope: !432)
!770 = !DILocation(line: 215, column: 18, scope: !432)
!771 = !DILocation(line: 223, column: 37, scope: !432)
!772 = !DILocation(line: 223, column: 45, scope: !432)
!773 = !DILocation(line: 223, column: 49, scope: !432)
!774 = !DILocation(line: 225, column: 24, scope: !432)
!775 = !DILocation(line: 225, column: 11, scope: !432)
!776 = !DILocation(line: 225, column: 15, scope: !432)
!777 = !DILocation(line: 226, column: 5, scope: !432)
!778 = !DILocation(line: 224, column: 19, scope: !432)
!779 = !DILocation(line: 224, column: 17, scope: !432)
!780 = !DILocation(line: 209, column: 20, scope: !432)
!781 = distinct !{!781, !746, !777, !154}
!782 = !DILocation(line: 227, column: 16, scope: !432)
!783 = !DILocation(line: 227, column: 20, scope: !432)
!784 = !DILocation(line: 227, column: 28, scope: !432)
!785 = !DILocation(line: 227, column: 26, scope: !432)
!786 = !DILocation(line: 227, column: 7, scope: !432)
!787 = !DILocation(line: 227, column: 11, scope: !432)
!788 = !DILocation(line: 228, column: 9, scope: !432)
!789 = !DILocation(line: 229, column: 18, scope: !432)
!790 = !DILocation(line: 229, column: 14, scope: !432)
!791 = !DILocation(line: 229, column: 9, scope: !432)
!792 = !DILocation(line: 230, column: 14, scope: !432)
!793 = !DILocation(line: 230, column: 5, scope: !432)
!794 = !DILocation(line: 231, column: 1, scope: !432)
!795 = distinct !DISubprogram(name: "__divmoddi4", scope: !41, file: !41, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !128)
!796 = !DILocation(line: 22, column: 14, scope: !795)
!797 = !DILocation(line: 23, column: 16, scope: !795)
!798 = !DILocation(line: 23, column: 12, scope: !795)
!799 = !DILocation(line: 23, column: 8, scope: !795)
!800 = !DILocation(line: 24, column: 3, scope: !795)
!801 = distinct !DISubprogram(name: "__divmodsi4", scope: !43, file: !43, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !128)
!802 = !DILocation(line: 22, column: 14, scope: !801)
!803 = !DILocation(line: 23, column: 16, scope: !801)
!804 = !DILocation(line: 23, column: 12, scope: !801)
!805 = !DILocation(line: 23, column: 8, scope: !801)
!806 = !DILocation(line: 24, column: 3, scope: !801)
!807 = distinct !DISubprogram(name: "__divsi3", scope: !45, file: !45, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !128)
!808 = !DILocation(line: 25, column: 20, scope: !807)
!809 = !DILocation(line: 26, column: 20, scope: !807)
!810 = !DILocation(line: 27, column: 12, scope: !807)
!811 = !DILocation(line: 27, column: 19, scope: !807)
!812 = !DILocation(line: 28, column: 12, scope: !807)
!813 = !DILocation(line: 28, column: 19, scope: !807)
!814 = !DILocation(line: 29, column: 9, scope: !807)
!815 = !DILocation(line: 36, column: 22, scope: !807)
!816 = !DILocation(line: 36, column: 33, scope: !807)
!817 = !DILocation(line: 36, column: 40, scope: !807)
!818 = !DILocation(line: 36, column: 5, scope: !807)
!819 = distinct !DISubprogram(name: "__ffsdi2", scope: !49, file: !49, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !128)
!820 = !DILocation(line: 25, column: 7, scope: !819)
!821 = !DILocation(line: 25, column: 11, scope: !819)
!822 = !DILocation(line: 26, column: 13, scope: !819)
!823 = !DILocation(line: 26, column: 17, scope: !819)
!824 = !DILocation(line: 26, column: 9, scope: !819)
!825 = !DILocation(line: 28, column: 15, scope: !819)
!826 = !DILocation(line: 28, column: 17, scope: !819)
!827 = !DILocation(line: 28, column: 22, scope: !819)
!828 = !DILocation(line: 28, column: 13, scope: !819)
!829 = !DILocation(line: 29, column: 13, scope: !819)
!830 = !DILocation(line: 30, column: 32, scope: !819)
!831 = !DILocation(line: 30, column: 34, scope: !819)
!832 = !DILocation(line: 30, column: 16, scope: !819)
!833 = !DILocation(line: 30, column: 40, scope: !819)
!834 = !DILocation(line: 30, column: 9, scope: !819)
!835 = !DILocation(line: 32, column: 30, scope: !819)
!836 = !DILocation(line: 32, column: 12, scope: !819)
!837 = !DILocation(line: 32, column: 35, scope: !819)
!838 = !DILocation(line: 32, column: 5, scope: !819)
!839 = !DILocation(line: 0, scope: !819)
!840 = !DILocation(line: 33, column: 1, scope: !819)
!841 = distinct !DISubprogram(name: "__ffssi2", scope: !51, file: !51, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !128)
!842 = !DILocation(line: 24, column: 11, scope: !841)
!843 = !DILocation(line: 24, column: 9, scope: !841)
!844 = !DILocation(line: 26, column: 9, scope: !841)
!845 = !DILocation(line: 28, column: 12, scope: !841)
!846 = !DILocation(line: 28, column: 29, scope: !841)
!847 = !DILocation(line: 28, column: 5, scope: !841)
!848 = !DILocation(line: 0, scope: !841)
!849 = !DILocation(line: 29, column: 1, scope: !841)
!850 = distinct !DISubprogram(name: "__lshrdi3", scope: !57, file: !57, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !128)
!851 = !DILocation(line: 29, column: 11, scope: !850)
!852 = !DILocation(line: 29, column: 15, scope: !850)
!853 = !DILocation(line: 30, column: 11, scope: !850)
!854 = !DILocation(line: 30, column: 9, scope: !850)
!855 = !DILocation(line: 32, column: 16, scope: !850)
!856 = !DILocation(line: 32, column: 18, scope: !850)
!857 = !DILocation(line: 32, column: 23, scope: !850)
!858 = !DILocation(line: 33, column: 30, scope: !850)
!859 = !DILocation(line: 33, column: 32, scope: !850)
!860 = !DILocation(line: 33, column: 43, scope: !850)
!861 = !DILocation(line: 33, column: 37, scope: !850)
!862 = !DILocation(line: 33, column: 18, scope: !850)
!863 = !DILocation(line: 33, column: 22, scope: !850)
!864 = !DILocation(line: 34, column: 5, scope: !850)
!865 = !DILocation(line: 37, column: 15, scope: !850)
!866 = !DILocation(line: 37, column: 13, scope: !850)
!867 = !DILocation(line: 38, column: 13, scope: !850)
!868 = !DILocation(line: 39, column: 32, scope: !850)
!869 = !DILocation(line: 39, column: 34, scope: !850)
!870 = !DILocation(line: 39, column: 39, scope: !850)
!871 = !DILocation(line: 39, column: 16, scope: !850)
!872 = !DILocation(line: 39, column: 18, scope: !850)
!873 = !DILocation(line: 39, column: 24, scope: !850)
!874 = !DILocation(line: 40, column: 31, scope: !850)
!875 = !DILocation(line: 40, column: 33, scope: !850)
!876 = !DILocation(line: 40, column: 55, scope: !850)
!877 = !DILocation(line: 40, column: 38, scope: !850)
!878 = !DILocation(line: 40, column: 72, scope: !850)
!879 = !DILocation(line: 40, column: 76, scope: !850)
!880 = !DILocation(line: 40, column: 61, scope: !850)
!881 = !DILocation(line: 40, column: 18, scope: !850)
!882 = !DILocation(line: 40, column: 22, scope: !850)
!883 = !DILocation(line: 42, column: 19, scope: !850)
!884 = !DILocation(line: 42, column: 5, scope: !850)
!885 = !DILocation(line: 0, scope: !850)
!886 = !DILocation(line: 43, column: 1, scope: !850)
!887 = distinct !DISubprogram(name: "__moddi3", scope: !61, file: !61, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !128)
!888 = !DILocation(line: 24, column: 17, scope: !887)
!889 = !DILocation(line: 25, column: 11, scope: !887)
!890 = !DILocation(line: 26, column: 12, scope: !887)
!891 = !DILocation(line: 26, column: 17, scope: !887)
!892 = !DILocation(line: 28, column: 5, scope: !887)
!893 = !DILocation(line: 29, column: 21, scope: !887)
!894 = !DILocation(line: 29, column: 23, scope: !887)
!895 = !DILocation(line: 29, column: 28, scope: !887)
!896 = !DILocation(line: 29, column: 5, scope: !887)
!897 = distinct !DISubprogram(name: "__modsi3", scope: !63, file: !63, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !128)
!898 = !DILocation(line: 22, column: 16, scope: !897)
!899 = !DILocation(line: 22, column: 31, scope: !897)
!900 = !DILocation(line: 22, column: 14, scope: !897)
!901 = !DILocation(line: 22, column: 5, scope: !897)
!902 = distinct !DISubprogram(name: "__mulvdi3", scope: !67, file: !67, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !128)
!903 = !DILocation(line: 27, column: 11, scope: !902)
!904 = !DILocation(line: 27, column: 9, scope: !902)
!905 = !DILocation(line: 29, column: 15, scope: !902)
!906 = !DILocation(line: 29, column: 20, scope: !902)
!907 = !DILocation(line: 29, column: 25, scope: !902)
!908 = !DILocation(line: 29, column: 13, scope: !902)
!909 = !DILocation(line: 30, column: 13, scope: !902)
!910 = !DILocation(line: 31, column: 9, scope: !902)
!911 = !DILocation(line: 33, column: 11, scope: !902)
!912 = !DILocation(line: 33, column: 9, scope: !902)
!913 = !DILocation(line: 35, column: 15, scope: !902)
!914 = !DILocation(line: 35, column: 20, scope: !902)
!915 = !DILocation(line: 35, column: 25, scope: !902)
!916 = !DILocation(line: 35, column: 13, scope: !902)
!917 = !DILocation(line: 36, column: 13, scope: !902)
!918 = !DILocation(line: 37, column: 9, scope: !902)
!919 = !DILocation(line: 39, column: 19, scope: !902)
!920 = !DILocation(line: 40, column: 23, scope: !902)
!921 = !DILocation(line: 40, column: 29, scope: !902)
!922 = !DILocation(line: 41, column: 19, scope: !902)
!923 = !DILocation(line: 42, column: 23, scope: !902)
!924 = !DILocation(line: 42, column: 29, scope: !902)
!925 = !DILocation(line: 43, column: 15, scope: !902)
!926 = !DILocation(line: 43, column: 19, scope: !902)
!927 = !DILocation(line: 43, column: 28, scope: !902)
!928 = !DILocation(line: 43, column: 9, scope: !902)
!929 = !DILocation(line: 44, column: 9, scope: !902)
!930 = !DILocation(line: 45, column: 12, scope: !902)
!931 = !DILocation(line: 45, column: 9, scope: !902)
!932 = !DILocation(line: 47, column: 25, scope: !902)
!933 = !DILocation(line: 47, column: 19, scope: !902)
!934 = !DILocation(line: 47, column: 13, scope: !902)
!935 = !DILocation(line: 48, column: 13, scope: !902)
!936 = !DILocation(line: 49, column: 5, scope: !902)
!937 = !DILocation(line: 52, column: 27, scope: !902)
!938 = !DILocation(line: 52, column: 25, scope: !902)
!939 = !DILocation(line: 52, column: 19, scope: !902)
!940 = !DILocation(line: 52, column: 13, scope: !902)
!941 = !DILocation(line: 53, column: 13, scope: !902)
!942 = !DILocation(line: 55, column: 5, scope: !902)
!943 = !DILocation(line: 0, scope: !902)
!944 = !DILocation(line: 56, column: 1, scope: !902)
!945 = distinct !DISubprogram(name: "__mulvsi3", scope: !69, file: !69, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !128)
!946 = !DILocation(line: 27, column: 11, scope: !945)
!947 = !DILocation(line: 27, column: 9, scope: !945)
!948 = !DILocation(line: 29, column: 15, scope: !945)
!949 = !DILocation(line: 29, column: 20, scope: !945)
!950 = !DILocation(line: 29, column: 25, scope: !945)
!951 = !DILocation(line: 29, column: 13, scope: !945)
!952 = !DILocation(line: 30, column: 13, scope: !945)
!953 = !DILocation(line: 31, column: 9, scope: !945)
!954 = !DILocation(line: 33, column: 11, scope: !945)
!955 = !DILocation(line: 33, column: 9, scope: !945)
!956 = !DILocation(line: 35, column: 15, scope: !945)
!957 = !DILocation(line: 35, column: 20, scope: !945)
!958 = !DILocation(line: 35, column: 25, scope: !945)
!959 = !DILocation(line: 35, column: 13, scope: !945)
!960 = !DILocation(line: 36, column: 13, scope: !945)
!961 = !DILocation(line: 37, column: 9, scope: !945)
!962 = !DILocation(line: 39, column: 19, scope: !945)
!963 = !DILocation(line: 40, column: 23, scope: !945)
!964 = !DILocation(line: 40, column: 29, scope: !945)
!965 = !DILocation(line: 41, column: 19, scope: !945)
!966 = !DILocation(line: 42, column: 23, scope: !945)
!967 = !DILocation(line: 42, column: 29, scope: !945)
!968 = !DILocation(line: 43, column: 15, scope: !945)
!969 = !DILocation(line: 43, column: 19, scope: !945)
!970 = !DILocation(line: 43, column: 28, scope: !945)
!971 = !DILocation(line: 43, column: 9, scope: !945)
!972 = !DILocation(line: 44, column: 9, scope: !945)
!973 = !DILocation(line: 45, column: 12, scope: !945)
!974 = !DILocation(line: 45, column: 9, scope: !945)
!975 = !DILocation(line: 47, column: 25, scope: !945)
!976 = !DILocation(line: 47, column: 19, scope: !945)
!977 = !DILocation(line: 47, column: 13, scope: !945)
!978 = !DILocation(line: 48, column: 13, scope: !945)
!979 = !DILocation(line: 49, column: 5, scope: !945)
!980 = !DILocation(line: 52, column: 27, scope: !945)
!981 = !DILocation(line: 52, column: 25, scope: !945)
!982 = !DILocation(line: 52, column: 19, scope: !945)
!983 = !DILocation(line: 52, column: 13, scope: !945)
!984 = !DILocation(line: 53, column: 13, scope: !945)
!985 = !DILocation(line: 55, column: 5, scope: !945)
!986 = !DILocation(line: 0, scope: !945)
!987 = !DILocation(line: 56, column: 1, scope: !945)
!988 = distinct !DISubprogram(name: "__paritydi2", scope: !73, file: !73, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !128)
!989 = !DILocation(line: 23, column: 7, scope: !988)
!990 = !DILocation(line: 23, column: 11, scope: !988)
!991 = !DILocation(line: 24, column: 26, scope: !988)
!992 = !DILocation(line: 24, column: 28, scope: !988)
!993 = !DILocation(line: 24, column: 39, scope: !988)
!994 = !DILocation(line: 24, column: 33, scope: !988)
!995 = !DILocation(line: 24, column: 12, scope: !988)
!996 = !DILocation(line: 24, column: 5, scope: !988)
!997 = distinct !DISubprogram(name: "__paritysi2", scope: !75, file: !75, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !128)
!998 = !DILocation(line: 23, column: 12, scope: !997)
!999 = !DILocation(line: 23, column: 7, scope: !997)
!1000 = !DILocation(line: 24, column: 12, scope: !997)
!1001 = !DILocation(line: 24, column: 7, scope: !997)
!1002 = !DILocation(line: 25, column: 12, scope: !997)
!1003 = !DILocation(line: 25, column: 7, scope: !997)
!1004 = !DILocation(line: 26, column: 26, scope: !997)
!1005 = !DILocation(line: 26, column: 20, scope: !997)
!1006 = !DILocation(line: 26, column: 34, scope: !997)
!1007 = !DILocation(line: 26, column: 5, scope: !997)
!1008 = distinct !DISubprogram(name: "__popcountdi2", scope: !79, file: !79, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !128)
!1009 = !DILocation(line: 23, column: 20, scope: !1008)
!1010 = !DILocation(line: 23, column: 26, scope: !1008)
!1011 = !DILocation(line: 23, column: 13, scope: !1008)
!1012 = !DILocation(line: 25, column: 15, scope: !1008)
!1013 = !DILocation(line: 25, column: 21, scope: !1008)
!1014 = !DILocation(line: 25, column: 52, scope: !1008)
!1015 = !DILocation(line: 25, column: 46, scope: !1008)
!1016 = !DILocation(line: 27, column: 20, scope: !1008)
!1017 = !DILocation(line: 27, column: 14, scope: !1008)
!1018 = !DILocation(line: 27, column: 27, scope: !1008)
!1019 = !DILocation(line: 29, column: 34, scope: !1008)
!1020 = !DILocation(line: 29, column: 28, scope: !1008)
!1021 = !DILocation(line: 29, column: 16, scope: !1008)
!1022 = !DILocation(line: 32, column: 16, scope: !1008)
!1023 = !DILocation(line: 32, column: 11, scope: !1008)
!1024 = !DILocation(line: 35, column: 20, scope: !1008)
!1025 = !DILocation(line: 35, column: 15, scope: !1008)
!1026 = !DILocation(line: 35, column: 27, scope: !1008)
!1027 = !DILocation(line: 35, column: 5, scope: !1008)
!1028 = distinct !DISubprogram(name: "__popcountsi2", scope: !81, file: !81, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !128)
!1029 = !DILocation(line: 23, column: 17, scope: !1028)
!1030 = !DILocation(line: 23, column: 23, scope: !1028)
!1031 = !DILocation(line: 23, column: 11, scope: !1028)
!1032 = !DILocation(line: 25, column: 13, scope: !1028)
!1033 = !DILocation(line: 25, column: 19, scope: !1028)
!1034 = !DILocation(line: 25, column: 38, scope: !1028)
!1035 = !DILocation(line: 25, column: 33, scope: !1028)
!1036 = !DILocation(line: 27, column: 17, scope: !1028)
!1037 = !DILocation(line: 27, column: 12, scope: !1028)
!1038 = !DILocation(line: 27, column: 24, scope: !1028)
!1039 = !DILocation(line: 29, column: 17, scope: !1028)
!1040 = !DILocation(line: 29, column: 12, scope: !1028)
!1041 = !DILocation(line: 32, column: 20, scope: !1028)
!1042 = !DILocation(line: 32, column: 15, scope: !1028)
!1043 = !DILocation(line: 32, column: 27, scope: !1028)
!1044 = !DILocation(line: 32, column: 5, scope: !1028)
!1045 = distinct !DISubprogram(name: "__subvdi3", scope: !85, file: !85, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !128)
!1046 = !DILocation(line: 24, column: 27, scope: !1045)
!1047 = !DILocation(line: 25, column: 11, scope: !1045)
!1048 = !DILocation(line: 25, column: 9, scope: !1045)
!1049 = !DILocation(line: 27, column: 15, scope: !1045)
!1050 = !DILocation(line: 27, column: 13, scope: !1045)
!1051 = !DILocation(line: 28, column: 13, scope: !1045)
!1052 = !DILocation(line: 29, column: 5, scope: !1045)
!1053 = !DILocation(line: 32, column: 15, scope: !1045)
!1054 = !DILocation(line: 32, column: 13, scope: !1045)
!1055 = !DILocation(line: 33, column: 13, scope: !1045)
!1056 = !DILocation(line: 35, column: 5, scope: !1045)
!1057 = distinct !DISubprogram(name: "__subvsi3", scope: !87, file: !87, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !128)
!1058 = !DILocation(line: 24, column: 27, scope: !1057)
!1059 = !DILocation(line: 25, column: 11, scope: !1057)
!1060 = !DILocation(line: 25, column: 9, scope: !1057)
!1061 = !DILocation(line: 27, column: 15, scope: !1057)
!1062 = !DILocation(line: 27, column: 13, scope: !1057)
!1063 = !DILocation(line: 28, column: 13, scope: !1057)
!1064 = !DILocation(line: 29, column: 5, scope: !1057)
!1065 = !DILocation(line: 32, column: 15, scope: !1057)
!1066 = !DILocation(line: 32, column: 13, scope: !1057)
!1067 = !DILocation(line: 33, column: 13, scope: !1057)
!1068 = !DILocation(line: 35, column: 5, scope: !1057)
!1069 = distinct !DISubprogram(name: "__ucmpdi2", scope: !91, file: !91, line: 23, type: !127, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !128)
!1070 = !DILocation(line: 26, column: 7, scope: !1069)
!1071 = !DILocation(line: 26, column: 11, scope: !1069)
!1072 = !DILocation(line: 28, column: 7, scope: !1069)
!1073 = !DILocation(line: 28, column: 11, scope: !1069)
!1074 = !DILocation(line: 29, column: 11, scope: !1069)
!1075 = !DILocation(line: 29, column: 13, scope: !1069)
!1076 = !DILocation(line: 29, column: 22, scope: !1069)
!1077 = !DILocation(line: 29, column: 24, scope: !1069)
!1078 = !DILocation(line: 29, column: 18, scope: !1069)
!1079 = !DILocation(line: 29, column: 9, scope: !1069)
!1080 = !DILocation(line: 30, column: 9, scope: !1069)
!1081 = !DILocation(line: 31, column: 11, scope: !1069)
!1082 = !DILocation(line: 31, column: 13, scope: !1069)
!1083 = !DILocation(line: 31, column: 22, scope: !1069)
!1084 = !DILocation(line: 31, column: 24, scope: !1069)
!1085 = !DILocation(line: 31, column: 18, scope: !1069)
!1086 = !DILocation(line: 31, column: 9, scope: !1069)
!1087 = !DILocation(line: 32, column: 9, scope: !1069)
!1088 = !DILocation(line: 33, column: 13, scope: !1069)
!1089 = !DILocation(line: 33, column: 23, scope: !1069)
!1090 = !DILocation(line: 33, column: 17, scope: !1069)
!1091 = !DILocation(line: 33, column: 9, scope: !1069)
!1092 = !DILocation(line: 34, column: 9, scope: !1069)
!1093 = !DILocation(line: 35, column: 13, scope: !1069)
!1094 = !DILocation(line: 35, column: 23, scope: !1069)
!1095 = !DILocation(line: 35, column: 17, scope: !1069)
!1096 = !DILocation(line: 35, column: 9, scope: !1069)
!1097 = !DILocation(line: 36, column: 9, scope: !1069)
!1098 = !DILocation(line: 37, column: 5, scope: !1069)
!1099 = !DILocation(line: 0, scope: !1069)
!1100 = !DILocation(line: 38, column: 1, scope: !1069)
!1101 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !91, file: !91, line: 46, type: !127, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !128)
!1102 = !DILocation(line: 48, column: 9, scope: !1101)
!1103 = !DILocation(line: 48, column: 25, scope: !1101)
!1104 = !DILocation(line: 48, column: 2, scope: !1101)
!1105 = distinct !DISubprogram(name: "__udivdi3", scope: !95, file: !95, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !128)
!1106 = !DILocation(line: 22, column: 12, scope: !1105)
!1107 = !DILocation(line: 22, column: 5, scope: !1105)
!1108 = distinct !DISubprogram(name: "__udivmodsi4", scope: !99, file: !99, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !128)
!1109 = !DILocation(line: 22, column: 14, scope: !1108)
!1110 = !DILocation(line: 23, column: 16, scope: !1108)
!1111 = !DILocation(line: 23, column: 12, scope: !1108)
!1112 = !DILocation(line: 23, column: 8, scope: !1108)
!1113 = !DILocation(line: 24, column: 3, scope: !1108)
!1114 = distinct !DISubprogram(name: "__udivsi3", scope: !103, file: !103, line: 25, type: !127, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !128)
!1115 = !DILocation(line: 32, column: 11, scope: !1114)
!1116 = !DILocation(line: 32, column: 9, scope: !1114)
!1117 = !DILocation(line: 33, column: 9, scope: !1114)
!1118 = !DILocation(line: 34, column: 11, scope: !1114)
!1119 = !DILocation(line: 34, column: 9, scope: !1114)
!1120 = !DILocation(line: 35, column: 9, scope: !1114)
!1121 = !DILocation(line: 36, column: 10, scope: !1114)
!1122 = !DILocation(line: 36, column: 29, scope: !1114)
!1123 = !DILocation(line: 36, column: 27, scope: !1114)
!1124 = !DILocation(line: 38, column: 12, scope: !1114)
!1125 = !DILocation(line: 38, column: 9, scope: !1114)
!1126 = !DILocation(line: 39, column: 9, scope: !1114)
!1127 = !DILocation(line: 40, column: 12, scope: !1114)
!1128 = !DILocation(line: 40, column: 9, scope: !1114)
!1129 = !DILocation(line: 41, column: 9, scope: !1114)
!1130 = !DILocation(line: 42, column: 5, scope: !1114)
!1131 = !DILocation(line: 45, column: 28, scope: !1114)
!1132 = !DILocation(line: 45, column: 11, scope: !1114)
!1133 = !DILocation(line: 46, column: 11, scope: !1114)
!1134 = !DILocation(line: 48, column: 5, scope: !1114)
!1135 = !DILocation(line: 0, scope: !1114)
!1136 = !DILocation(line: 48, column: 15, scope: !1114)
!1137 = !DILocation(line: 51, column: 22, scope: !1114)
!1138 = !DILocation(line: 60, column: 41, scope: !1114)
!1139 = !DILocation(line: 63, column: 5, scope: !1114)
!1140 = !DILocation(line: 62, column: 16, scope: !1114)
!1141 = !DILocation(line: 62, column: 11, scope: !1114)
!1142 = !DILocation(line: 61, column: 19, scope: !1114)
!1143 = !DILocation(line: 52, column: 16, scope: !1114)
!1144 = !DILocation(line: 52, column: 22, scope: !1114)
!1145 = !DILocation(line: 48, column: 20, scope: !1114)
!1146 = distinct !{!1146, !1134, !1139, !154}
!1147 = !DILocation(line: 64, column: 12, scope: !1114)
!1148 = !DILocation(line: 64, column: 18, scope: !1114)
!1149 = !DILocation(line: 65, column: 5, scope: !1114)
!1150 = !DILocation(line: 66, column: 1, scope: !1114)
!1151 = distinct !DISubprogram(name: "__umoddi3", scope: !107, file: !107, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !128)
!1152 = !DILocation(line: 23, column: 5, scope: !1151)
!1153 = !DILocation(line: 24, column: 12, scope: !1151)
!1154 = !DILocation(line: 24, column: 5, scope: !1151)
!1155 = distinct !DISubprogram(name: "__umodsi3", scope: !109, file: !109, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !128)
!1156 = !DILocation(line: 22, column: 16, scope: !1155)
!1157 = !DILocation(line: 22, column: 32, scope: !1155)
!1158 = !DILocation(line: 22, column: 14, scope: !1155)
!1159 = !DILocation(line: 22, column: 5, scope: !1155)
!1160 = distinct !DISubprogram(name: "memcpy", scope: !113, file: !113, line: 3, type: !127, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !128)
!1161 = !DILocation(line: 8, column: 6, scope: !1160)
!1162 = !DILocation(line: 0, scope: !1160)
!1163 = !DILocation(line: 8, column: 19, scope: !1160)
!1164 = !DILocation(line: 8, column: 2, scope: !1160)
!1165 = !DILocation(line: 9, column: 21, scope: !1160)
!1166 = !DILocation(line: 9, column: 3, scope: !1160)
!1167 = !DILocation(line: 9, column: 19, scope: !1160)
!1168 = !DILocation(line: 10, column: 2, scope: !1160)
!1169 = !DILocation(line: 8, column: 26, scope: !1160)
!1170 = distinct !{!1170, !1164, !1168, !154}
!1171 = !DILocation(line: 11, column: 1, scope: !1160)
!1172 = distinct !DISubprogram(name: "memset", scope: !113, file: !113, line: 13, type: !127, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !128)
!1173 = !DILocation(line: 17, column: 6, scope: !1172)
!1174 = !DILocation(line: 0, scope: !1172)
!1175 = !DILocation(line: 17, column: 19, scope: !1172)
!1176 = !DILocation(line: 17, column: 2, scope: !1172)
!1177 = !DILocation(line: 18, column: 13, scope: !1172)
!1178 = !DILocation(line: 18, column: 3, scope: !1172)
!1179 = !DILocation(line: 18, column: 11, scope: !1172)
!1180 = !DILocation(line: 19, column: 2, scope: !1172)
!1181 = !DILocation(line: 17, column: 26, scope: !1172)
!1182 = distinct !{!1182, !1176, !1180, !154}
!1183 = !DILocation(line: 20, column: 2, scope: !1172)
