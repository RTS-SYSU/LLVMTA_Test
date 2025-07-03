; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.DATA = type { i32, i32 }
%union.dwords = type { i64 }

@data = dso_local global [15 x %struct.DATA] [%struct.DATA { i32 1, i32 100 }, %struct.DATA { i32 5, i32 200 }, %struct.DATA { i32 6, i32 300 }, %struct.DATA { i32 7, i32 700 }, %struct.DATA { i32 8, i32 900 }, %struct.DATA { i32 9, i32 250 }, %struct.DATA { i32 10, i32 400 }, %struct.DATA { i32 11, i32 600 }, %struct.DATA { i32 12, i32 800 }, %struct.DATA { i32 13, i32 1500 }, %struct.DATA { i32 14, i32 1200 }, %struct.DATA { i32 15, i32 110 }, %struct.DATA { i32 16, i32 140 }, %struct.DATA { i32 17, i32 133 }, %struct.DATA { i32 18, i32 10 }], align 4
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
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !125 {
entry:
  %call = call arm_aapcs_vfpcc i32 @binary_search(i32 noundef 8) #4, !dbg !129
  ret i32 %call, !dbg !130
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binary_search(i32 noundef %x) #0 !dbg !131 {
entry:
  br label %while.cond, !dbg !132

while.cond:                                       ; preds = %while.body, %entry
  br i1 false, label %while.body, label %while.end, !dbg !132

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !132, !llvm.loop !133

while.end:                                        ; preds = %while.cond
  ret i32 0, !dbg !136
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #1 !dbg !137 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !138
  br i1 %cmp, label %if.then, label %if.end, !dbg !139

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !140
  unreachable, !dbg !140

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !141
  ret i64 %0, !dbg !142
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #2 !dbg !143 {
entry:
  unreachable, !dbg !144
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #1 !dbg !145 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !146
  br i1 %cmp, label %if.then, label %if.end, !dbg !147

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !148
  unreachable, !dbg !148

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !149
  ret i32 %0, !dbg !150
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !151 {
entry:
  %add = add i64 %a, %b, !dbg !152
  %cmp = icmp sgt i64 %b, -1, !dbg !153
  br i1 %cmp, label %if.then, label %if.else, !dbg !154

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !155
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !156

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !157
  unreachable, !dbg !157

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !158

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !159
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !160

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !161
  unreachable, !dbg !161

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !162
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !163 {
entry:
  %add = add i32 %a, %b, !dbg !164
  %cmp = icmp sgt i32 %b, -1, !dbg !165
  br i1 %cmp, label %if.then, label %if.else, !dbg !166

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !167
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !168

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !169
  unreachable, !dbg !169

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !170

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !171
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !172

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !173
  unreachable, !dbg !173

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !174
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #1 !dbg !175 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !176
  store i64 %a, i64* %all, align 8, !dbg !177
  %and = and i32 %b, 32, !dbg !178
  %tobool.not = icmp eq i32 %and, 0, !dbg !178
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !179

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !180
  store i32 0, i32* %low, align 8, !dbg !181
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !182
  %0 = load i32, i32* %low2, align 8, !dbg !182
  %sub = add nsw i32 %b, -32, !dbg !183
  %shl = shl i32 %0, %sub, !dbg !184
  %s3 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !185
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s3, i32 0, i32 1, !dbg !186
  store i32 %shl, i32* %high, align 4, !dbg !187
  br label %if.end18, !dbg !188

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !189
  br i1 %cmp, label %if.then4, label %if.end, !dbg !190

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !191

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !192
  %1 = load i32, i32* %low6, align 8, !dbg !192
  %shl7 = shl i32 %1, %b, !dbg !193
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !194
  store i32 %shl7, i32* %low9, align 8, !dbg !195
  %s10 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !196
  %high11 = getelementptr inbounds %struct.DATA, %struct.DATA* %s10, i32 0, i32 1, !dbg !197
  %2 = load i32, i32* %high11, align 4, !dbg !197
  %shl12 = shl i32 %2, %b, !dbg !198
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !199
  %3 = load i32, i32* %low14, align 8, !dbg !199
  %sub15 = sub nsw i32 32, %b, !dbg !200
  %shr = lshr i32 %3, %sub15, !dbg !201
  %or = or i32 %shl12, %shr, !dbg !202
  %s16 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !203
  %high17 = getelementptr inbounds %struct.DATA, %struct.DATA* %s16, i32 0, i32 1, !dbg !204
  store i32 %or, i32* %high17, align 4, !dbg !205
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !206
  %4 = load i64, i64* %all19, align 8, !dbg !206
  br label %return, !dbg !207

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !208
  ret i64 %retval.0, !dbg !209
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !210 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !211
  store i64 %a, i64* %all, align 8, !dbg !212
  %and = and i32 %b, 32, !dbg !213
  %tobool.not = icmp eq i32 %and, 0, !dbg !213
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !214

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.DATA*, !dbg !215
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !216
  %0 = load i32, i32* %high, align 4, !dbg !216
  %shr = ashr i32 %0, 31, !dbg !217
  %s1 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !218
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !219
  store i32 %shr, i32* %high2, align 4, !dbg !220
  %s3 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !221
  %high4 = getelementptr inbounds %struct.DATA, %struct.DATA* %s3, i32 0, i32 1, !dbg !222
  %1 = load i32, i32* %high4, align 4, !dbg !222
  %sub = add nsw i32 %b, -32, !dbg !223
  %shr5 = ashr i32 %1, %sub, !dbg !224
  %low = bitcast %union.dwords* %result to i32*, !dbg !225
  store i32 %shr5, i32* %low, align 8, !dbg !226
  br label %if.end21, !dbg !227

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !228
  br i1 %cmp, label %if.then7, label %if.end, !dbg !229

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !230

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !231
  %high9 = getelementptr inbounds %struct.DATA, %struct.DATA* %s8, i32 0, i32 1, !dbg !232
  %2 = load i32, i32* %high9, align 4, !dbg !232
  %shr10 = ashr i32 %2, %b, !dbg !233
  %s11 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !234
  %high12 = getelementptr inbounds %struct.DATA, %struct.DATA* %s11, i32 0, i32 1, !dbg !235
  store i32 %shr10, i32* %high12, align 4, !dbg !236
  %s13 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !237
  %high14 = getelementptr inbounds %struct.DATA, %struct.DATA* %s13, i32 0, i32 1, !dbg !238
  %3 = load i32, i32* %high14, align 4, !dbg !238
  %sub15 = sub nsw i32 32, %b, !dbg !239
  %shl = shl i32 %3, %sub15, !dbg !240
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !241
  %4 = load i32, i32* %low17, align 8, !dbg !241
  %shr18 = lshr i32 %4, %b, !dbg !242
  %or = or i32 %shl, %shr18, !dbg !243
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !244
  store i32 %or, i32* %low20, align 8, !dbg !245
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !246
  %5 = load i64, i64* %all22, align 8, !dbg !246
  br label %return, !dbg !247

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !248
  ret i64 %retval.0, !dbg !249
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #1 !dbg !250 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !251
  store i64 %a, i64* %all, align 8, !dbg !252
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !253
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !254
  %0 = load i32, i32* %high, align 4, !dbg !254
  %cmp = icmp eq i32 %0, 0, !dbg !255
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !256
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !257
  %1 = load i32, i32* %high2, align 4, !dbg !257
  %low = bitcast %union.dwords* %x to i32*, !dbg !258
  %2 = load i32, i32* %low, align 8, !dbg !258
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !259
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !260, !range !261
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !262
  %add = add nuw nsw i32 %4, %and5, !dbg !263
  ret i32 %add, !dbg !264
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #1 !dbg !265 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !266
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !267
  %sub = sub nuw nsw i32 16, %shl, !dbg !268
  %shr = lshr i32 %a, %sub, !dbg !269
  %and1 = and i32 %shr, 65280, !dbg !270
  %cmp2 = icmp eq i32 %and1, 0, !dbg !271
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !272
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !273
  %shr6 = lshr i32 %shr, %sub5, !dbg !274
  %add = or i32 %shl, %shl4, !dbg !275
  %and7 = and i32 %shr6, 240, !dbg !276
  %cmp8 = icmp eq i32 %and7, 0, !dbg !277
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !278
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !279
  %shr12 = lshr i32 %shr6, %sub11, !dbg !280
  %add13 = or i32 %add, %shl10, !dbg !281
  %and14 = and i32 %shr12, 12, !dbg !282
  %cmp15 = icmp eq i32 %and14, 0, !dbg !283
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !284
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !285
  %shr19 = lshr i32 %shr12, %sub18, !dbg !286
  %add20 = or i32 %add13, %shl17, !dbg !287
  %sub21 = sub i32 2, %shr19, !dbg !288
  %and22 = lshr i32 %shr19, 1, !dbg !289
  %0 = or i32 %and22, -2, !dbg !289
  %.neg = add nsw i32 %0, 1, !dbg !289
  %and26 = and i32 %sub21, %.neg, !dbg !290
  %add27 = add i32 %add20, %and26, !dbg !291
  ret i32 %add27, !dbg !292
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !293 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !294
  store i64 %a, i64* %all, align 8, !dbg !295
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !296
  store i64 %b, i64* %all1, align 8, !dbg !297
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !298
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !299
  %0 = load i32, i32* %high, align 4, !dbg !299
  %s2 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !300
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !301
  %1 = load i32, i32* %high3, align 4, !dbg !301
  %cmp = icmp slt i32 %0, %1, !dbg !302
  br i1 %cmp, label %if.then, label %if.end, !dbg !303

if.then:                                          ; preds = %entry
  br label %return, !dbg !304

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !305
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !306
  %2 = load i32, i32* %high5, align 4, !dbg !306
  %s6 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !307
  %high7 = getelementptr inbounds %struct.DATA, %struct.DATA* %s6, i32 0, i32 1, !dbg !308
  %3 = load i32, i32* %high7, align 4, !dbg !308
  %cmp8 = icmp sgt i32 %2, %3, !dbg !309
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !310

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !311

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !312
  %4 = load i32, i32* %low, align 8, !dbg !312
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !313
  %5 = load i32, i32* %low13, align 8, !dbg !313
  %cmp14 = icmp ult i32 %4, %5, !dbg !314
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !315

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !316

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !317
  %6 = load i32, i32* %low18, align 8, !dbg !317
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !318
  %7 = load i32, i32* %low20, align 8, !dbg !318
  %cmp21 = icmp ugt i32 %6, %7, !dbg !319
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !320

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !321

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !322

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !323
  ret i32 %retval.0, !dbg !324
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !325 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !326
  %sub = add nsw i32 %call, -1, !dbg !327
  ret i32 %sub, !dbg !328
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #1 !dbg !329 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !330
  store i64 %a, i64* %all, align 8, !dbg !331
  %low = bitcast %union.dwords* %x to i32*, !dbg !332
  %0 = load i32, i32* %low, align 8, !dbg !332
  %cmp = icmp eq i32 %0, 0, !dbg !333
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !334
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !335
  %1 = load i32, i32* %high, align 4, !dbg !335
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !336
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !337, !range !261
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !338
  %add = add nuw nsw i32 %3, %and5, !dbg !339
  ret i32 %add, !dbg !340
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #1 !dbg !341 {
entry:
  %and = and i32 %a, 65535, !dbg !342
  %cmp = icmp eq i32 %and, 0, !dbg !343
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !344
  %shr = lshr i32 %a, %shl, !dbg !345
  %and1 = and i32 %shr, 255, !dbg !346
  %cmp2 = icmp eq i32 %and1, 0, !dbg !347
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !348
  %shr5 = lshr i32 %shr, %shl4, !dbg !349
  %add = or i32 %shl, %shl4, !dbg !350
  %and6 = and i32 %shr5, 15, !dbg !351
  %cmp7 = icmp eq i32 %and6, 0, !dbg !352
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !353
  %shr10 = lshr i32 %shr5, %shl9, !dbg !354
  %add11 = or i32 %add, %shl9, !dbg !355
  %and12 = and i32 %shr10, 3, !dbg !356
  %cmp13 = icmp eq i32 %and12, 0, !dbg !357
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !358
  %shr16 = lshr i32 %shr10, %shl15, !dbg !359
  %add18 = or i32 %add11, %shl15, !dbg !360
  %and17 = lshr i32 %shr16, 1, !dbg !361
  %shr19 = and i32 %and17, 1, !dbg !361
  %sub = sub nuw nsw i32 2, %shr19, !dbg !362
  %0 = or i32 %shr16, -2, !dbg !363
  %.neg = add nsw i32 %0, 1, !dbg !363
  %and24 = and i32 %sub, %.neg, !dbg !364
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !365
  ret i32 %add25, !dbg !366
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !367 {
entry:
  %shr = ashr i64 %a, 63, !dbg !368
  %shr1 = ashr i64 %b, 63, !dbg !369
  %xor = xor i64 %shr, %a, !dbg !370
  %sub = sub nsw i64 %xor, %shr, !dbg !371
  %xor2 = xor i64 %shr1, %b, !dbg !372
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !373
  %xor4 = xor i64 %shr, %shr1, !dbg !374
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !375
  %xor5 = xor i64 %call, %xor4, !dbg !376
  %sub6 = sub i64 %xor5, %xor4, !dbg !377
  ret i64 %sub6, !dbg !378
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !379 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !380
  store i64 %a, i64* %all, align 8, !dbg !381
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !382
  store i64 %b, i64* %all1, align 8, !dbg !383
  %s = bitcast %union.dwords* %n to %struct.DATA*, !dbg !384
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !385
  %0 = load i32, i32* %high, align 4, !dbg !385
  %cmp = icmp eq i32 %0, 0, !dbg !386
  br i1 %cmp, label %if.then, label %if.end23, !dbg !387

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !388
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !389
  %1 = load i32, i32* %high3, align 4, !dbg !389
  %cmp4 = icmp eq i32 %1, 0, !dbg !390
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !391

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !392
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !392

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !393
  %2 = load i32, i32* %low, align 8, !dbg !393
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !394
  %3 = load i32, i32* %low9, align 8, !dbg !394
  %rem10 = urem i32 %2, %3, !dbg !395
  %conv = zext i32 %rem10 to i64, !dbg !396
  store i64 %conv, i64* %rem, align 8, !dbg !397
  br label %if.end, !dbg !398

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !399
  %4 = load i32, i32* %low12, align 8, !dbg !399
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !400
  %5 = load i32, i32* %low14, align 8, !dbg !400
  %div = udiv i32 %4, %5, !dbg !401
  %conv15 = zext i32 %div to i64, !dbg !402
  br label %return, !dbg !403

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !404
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !404

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !405
  %6 = load i32, i32* %low20, align 8, !dbg !405
  %conv21 = zext i32 %6 to i64, !dbg !406
  store i64 %conv21, i64* %rem, align 8, !dbg !407
  br label %if.end22, !dbg !408

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !409

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !410
  %7 = load i32, i32* %low25, align 8, !dbg !410
  %cmp26 = icmp eq i32 %7, 0, !dbg !411
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !412

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !413
  %high30 = getelementptr inbounds %struct.DATA, %struct.DATA* %s29, i32 0, i32 1, !dbg !414
  %8 = load i32, i32* %high30, align 4, !dbg !414
  %cmp31 = icmp eq i32 %8, 0, !dbg !415
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !416

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !417
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !417

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !418
  %high37 = getelementptr inbounds %struct.DATA, %struct.DATA* %s36, i32 0, i32 1, !dbg !419
  %9 = load i32, i32* %high37, align 4, !dbg !419
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !420
  %10 = load i32, i32* %low39, align 8, !dbg !420
  %rem40 = urem i32 %9, %10, !dbg !421
  %conv41 = zext i32 %rem40 to i64, !dbg !422
  store i64 %conv41, i64* %rem, align 8, !dbg !423
  br label %if.end42, !dbg !424

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !425
  %high44 = getelementptr inbounds %struct.DATA, %struct.DATA* %s43, i32 0, i32 1, !dbg !426
  %11 = load i32, i32* %high44, align 4, !dbg !426
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !427
  %12 = load i32, i32* %low46, align 8, !dbg !427
  %div47 = udiv i32 %11, %12, !dbg !428
  %conv48 = zext i32 %div47 to i64, !dbg !429
  br label %return, !dbg !430

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !431
  %13 = load i32, i32* %low51, align 8, !dbg !431
  %cmp52 = icmp eq i32 %13, 0, !dbg !432
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !433

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !434
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !434

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !435
  %high58 = getelementptr inbounds %struct.DATA, %struct.DATA* %s57, i32 0, i32 1, !dbg !436
  %14 = load i32, i32* %high58, align 4, !dbg !436
  %s59 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !437
  %high60 = getelementptr inbounds %struct.DATA, %struct.DATA* %s59, i32 0, i32 1, !dbg !438
  %15 = load i32, i32* %high60, align 4, !dbg !438
  %rem61 = urem i32 %14, %15, !dbg !439
  %s62 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !440
  %high63 = getelementptr inbounds %struct.DATA, %struct.DATA* %s62, i32 0, i32 1, !dbg !441
  store i32 %rem61, i32* %high63, align 4, !dbg !442
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !443
  store i32 0, i32* %low65, align 8, !dbg !444
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !445
  %16 = load i64, i64* %all66, align 8, !dbg !445
  store i64 %16, i64* %rem, align 8, !dbg !446
  br label %if.end67, !dbg !447

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !448
  %high69 = getelementptr inbounds %struct.DATA, %struct.DATA* %s68, i32 0, i32 1, !dbg !449
  %17 = load i32, i32* %high69, align 4, !dbg !449
  %s70 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !450
  %high71 = getelementptr inbounds %struct.DATA, %struct.DATA* %s70, i32 0, i32 1, !dbg !451
  %18 = load i32, i32* %high71, align 4, !dbg !451
  %div72 = udiv i32 %17, %18, !dbg !452
  %conv73 = zext i32 %div72 to i64, !dbg !453
  br label %return, !dbg !454

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !455
  %high76 = getelementptr inbounds %struct.DATA, %struct.DATA* %s75, i32 0, i32 1, !dbg !456
  %19 = load i32, i32* %high76, align 4, !dbg !456
  %s77 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !457
  %high78 = getelementptr inbounds %struct.DATA, %struct.DATA* %s77, i32 0, i32 1, !dbg !458
  %20 = load i32, i32* %high78, align 4, !dbg !458
  %sub = add i32 %20, -1, !dbg !459
  %and = and i32 %19, %sub, !dbg !460
  %cmp79 = icmp eq i32 %and, 0, !dbg !461
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !462

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !463
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !463

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !464
  %21 = load i32, i32* %low85, align 8, !dbg !464
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !465
  store i32 %21, i32* %low87, align 8, !dbg !466
  %s88 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !467
  %high89 = getelementptr inbounds %struct.DATA, %struct.DATA* %s88, i32 0, i32 1, !dbg !468
  %22 = load i32, i32* %high89, align 4, !dbg !468
  %s90 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !469
  %high91 = getelementptr inbounds %struct.DATA, %struct.DATA* %s90, i32 0, i32 1, !dbg !470
  %23 = load i32, i32* %high91, align 4, !dbg !470
  %sub92 = add i32 %23, -1, !dbg !471
  %and93 = and i32 %22, %sub92, !dbg !472
  %s94 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !473
  %high95 = getelementptr inbounds %struct.DATA, %struct.DATA* %s94, i32 0, i32 1, !dbg !474
  store i32 %and93, i32* %high95, align 4, !dbg !475
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !476
  %24 = load i64, i64* %all96, align 8, !dbg !476
  store i64 %24, i64* %rem, align 8, !dbg !477
  br label %if.end97, !dbg !478

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !479
  %high99 = getelementptr inbounds %struct.DATA, %struct.DATA* %s98, i32 0, i32 1, !dbg !480
  %25 = load i32, i32* %high99, align 4, !dbg !480
  %s100 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !481
  %high101 = getelementptr inbounds %struct.DATA, %struct.DATA* %s100, i32 0, i32 1, !dbg !482
  %26 = load i32, i32* %high101, align 4, !dbg !482
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !483, !range !261
  %shr = lshr i32 %25, %27, !dbg !484
  %conv102 = zext i32 %shr to i64, !dbg !485
  br label %return, !dbg !486

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !487
  %high105 = getelementptr inbounds %struct.DATA, %struct.DATA* %s104, i32 0, i32 1, !dbg !488
  %28 = load i32, i32* %high105, align 4, !dbg !488
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !489, !range !261
  %s106 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !490
  %high107 = getelementptr inbounds %struct.DATA, %struct.DATA* %s106, i32 0, i32 1, !dbg !491
  %30 = load i32, i32* %high107, align 4, !dbg !491
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !492, !range !261
  %sub108 = sub nsw i32 %29, %31, !dbg !493
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !494
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !495

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !496
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !496

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !497
  %32 = load i64, i64* %all114, align 8, !dbg !497
  store i64 %32, i64* %rem, align 8, !dbg !498
  br label %if.end115, !dbg !499

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !500

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !501
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !502
  store i32 0, i32* %low118, align 8, !dbg !503
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !504
  %33 = load i32, i32* %low120, align 8, !dbg !504
  %sub121 = sub nsw i32 31, %sub108, !dbg !505
  %shl = shl i32 %33, %sub121, !dbg !506
  %s122 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !507
  %high123 = getelementptr inbounds %struct.DATA, %struct.DATA* %s122, i32 0, i32 1, !dbg !508
  store i32 %shl, i32* %high123, align 4, !dbg !509
  %s124 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !510
  %high125 = getelementptr inbounds %struct.DATA, %struct.DATA* %s124, i32 0, i32 1, !dbg !511
  %34 = load i32, i32* %high125, align 4, !dbg !511
  %shr126 = lshr i32 %34, %inc, !dbg !512
  %s127 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !513
  %high128 = getelementptr inbounds %struct.DATA, %struct.DATA* %s127, i32 0, i32 1, !dbg !514
  store i32 %shr126, i32* %high128, align 4, !dbg !515
  %s129 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !516
  %high130 = getelementptr inbounds %struct.DATA, %struct.DATA* %s129, i32 0, i32 1, !dbg !517
  %35 = load i32, i32* %high130, align 4, !dbg !517
  %sub131 = sub nsw i32 31, %sub108, !dbg !518
  %shl132 = shl i32 %35, %sub131, !dbg !519
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !520
  %36 = load i32, i32* %low134, align 8, !dbg !520
  %shr135 = lshr i32 %36, %inc, !dbg !521
  %or = or i32 %shl132, %shr135, !dbg !522
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !523
  store i32 %or, i32* %low137, align 8, !dbg !524
  br label %if.end317, !dbg !525

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !526
  %high139 = getelementptr inbounds %struct.DATA, %struct.DATA* %s138, i32 0, i32 1, !dbg !527
  %37 = load i32, i32* %high139, align 4, !dbg !527
  %cmp140 = icmp eq i32 %37, 0, !dbg !528
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !529

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !530
  %38 = load i32, i32* %low144, align 8, !dbg !530
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !531, !range !261
  %cmp149 = icmp ult i32 %39, 2, !dbg !531
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !532

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !533
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !533

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !534
  %40 = load i32, i32* %low155, align 8, !dbg !534
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !535
  %41 = load i32, i32* %low157, align 8, !dbg !535
  %sub158 = add i32 %41, -1, !dbg !536
  %and159 = and i32 %40, %sub158, !dbg !537
  %conv160 = zext i32 %and159 to i64, !dbg !538
  store i64 %conv160, i64* %rem, align 8, !dbg !539
  br label %if.end161, !dbg !540

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !541
  %42 = load i32, i32* %low163, align 8, !dbg !541
  %cmp164 = icmp eq i32 %42, 1, !dbg !542
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !543

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !544
  %43 = load i64, i64* %all167, align 8, !dbg !544
  br label %return, !dbg !545

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !546
  %44 = load i32, i32* %low170, align 8, !dbg !546
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !547, !range !261
  %s171 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !548
  %high172 = getelementptr inbounds %struct.DATA, %struct.DATA* %s171, i32 0, i32 1, !dbg !549
  %46 = load i32, i32* %high172, align 4, !dbg !549
  %shr173 = lshr i32 %46, %45, !dbg !550
  %s174 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !551
  %high175 = getelementptr inbounds %struct.DATA, %struct.DATA* %s174, i32 0, i32 1, !dbg !552
  store i32 %shr173, i32* %high175, align 4, !dbg !553
  %s176 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !554
  %high177 = getelementptr inbounds %struct.DATA, %struct.DATA* %s176, i32 0, i32 1, !dbg !555
  %47 = load i32, i32* %high177, align 4, !dbg !555
  %sub178 = sub nuw nsw i32 32, %45, !dbg !556
  %shl179 = shl i32 %47, %sub178, !dbg !557
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !558
  %48 = load i32, i32* %low181, align 8, !dbg !558
  %shr182 = lshr i32 %48, %45, !dbg !559
  %or183 = or i32 %shl179, %shr182, !dbg !560
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !561
  store i32 %or183, i32* %low185, align 8, !dbg !562
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !563
  %49 = load i64, i64* %all186, align 8, !dbg !563
  br label %return, !dbg !564

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !565
  %50 = load i32, i32* %low189, align 8, !dbg !565
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !566, !range !261
  %add = add nuw nsw i32 %51, 33, !dbg !567
  %s190 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !568
  %high191 = getelementptr inbounds %struct.DATA, %struct.DATA* %s190, i32 0, i32 1, !dbg !569
  %52 = load i32, i32* %high191, align 4, !dbg !569
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !570, !range !261
  %sub192 = sub nsw i32 %add, %53, !dbg !571
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !572
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !573

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !574
  store i32 0, i32* %low197, align 8, !dbg !575
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !576
  %54 = load i32, i32* %low199, align 8, !dbg !576
  %s200 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !577
  %high201 = getelementptr inbounds %struct.DATA, %struct.DATA* %s200, i32 0, i32 1, !dbg !578
  store i32 %54, i32* %high201, align 4, !dbg !579
  %s202 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !580
  %high203 = getelementptr inbounds %struct.DATA, %struct.DATA* %s202, i32 0, i32 1, !dbg !581
  store i32 0, i32* %high203, align 4, !dbg !582
  %s204 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !583
  %high205 = getelementptr inbounds %struct.DATA, %struct.DATA* %s204, i32 0, i32 1, !dbg !584
  %55 = load i32, i32* %high205, align 4, !dbg !584
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !585
  store i32 %55, i32* %low207, align 8, !dbg !586
  br label %if.end262, !dbg !587

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !588
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !589

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !590
  store i32 0, i32* %low213, align 8, !dbg !591
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !592
  %56 = load i32, i32* %low215, align 8, !dbg !592
  %sub216 = sub nsw i32 32, %sub192, !dbg !593
  %shl217 = shl i32 %56, %sub216, !dbg !594
  %s218 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !595
  %high219 = getelementptr inbounds %struct.DATA, %struct.DATA* %s218, i32 0, i32 1, !dbg !596
  store i32 %shl217, i32* %high219, align 4, !dbg !597
  %s220 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !598
  %high221 = getelementptr inbounds %struct.DATA, %struct.DATA* %s220, i32 0, i32 1, !dbg !599
  %57 = load i32, i32* %high221, align 4, !dbg !599
  %shr222 = lshr i32 %57, %sub192, !dbg !600
  %s223 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !601
  %high224 = getelementptr inbounds %struct.DATA, %struct.DATA* %s223, i32 0, i32 1, !dbg !602
  store i32 %shr222, i32* %high224, align 4, !dbg !603
  %s225 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !604
  %high226 = getelementptr inbounds %struct.DATA, %struct.DATA* %s225, i32 0, i32 1, !dbg !605
  %58 = load i32, i32* %high226, align 4, !dbg !605
  %sub227 = sub nsw i32 32, %sub192, !dbg !606
  %shl228 = shl i32 %58, %sub227, !dbg !607
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !608
  %59 = load i32, i32* %low230, align 8, !dbg !608
  %shr231 = lshr i32 %59, %sub192, !dbg !609
  %or232 = or i32 %shl228, %shr231, !dbg !610
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !611
  store i32 %or232, i32* %low234, align 8, !dbg !612
  br label %if.end261, !dbg !613

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !614
  %60 = load i32, i32* %low237, align 8, !dbg !614
  %sub238 = sub nsw i32 64, %sub192, !dbg !615
  %shl239 = shl i32 %60, %sub238, !dbg !616
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !617
  store i32 %shl239, i32* %low241, align 8, !dbg !618
  %s242 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !619
  %high243 = getelementptr inbounds %struct.DATA, %struct.DATA* %s242, i32 0, i32 1, !dbg !620
  %61 = load i32, i32* %high243, align 4, !dbg !620
  %sub244 = sub nsw i32 64, %sub192, !dbg !621
  %shl245 = shl i32 %61, %sub244, !dbg !622
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !623
  %62 = load i32, i32* %low247, align 8, !dbg !623
  %sub248 = add nsw i32 %sub192, -32, !dbg !624
  %shr249 = lshr i32 %62, %sub248, !dbg !625
  %or250 = or i32 %shl245, %shr249, !dbg !626
  %s251 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !627
  %high252 = getelementptr inbounds %struct.DATA, %struct.DATA* %s251, i32 0, i32 1, !dbg !628
  store i32 %or250, i32* %high252, align 4, !dbg !629
  %s253 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !630
  %high254 = getelementptr inbounds %struct.DATA, %struct.DATA* %s253, i32 0, i32 1, !dbg !631
  store i32 0, i32* %high254, align 4, !dbg !632
  %s255 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !633
  %high256 = getelementptr inbounds %struct.DATA, %struct.DATA* %s255, i32 0, i32 1, !dbg !634
  %63 = load i32, i32* %high256, align 4, !dbg !634
  %sub257 = add nsw i32 %sub192, -32, !dbg !635
  %shr258 = lshr i32 %63, %sub257, !dbg !636
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !637
  store i32 %shr258, i32* %low260, align 8, !dbg !638
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !639

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !640
  %high265 = getelementptr inbounds %struct.DATA, %struct.DATA* %s264, i32 0, i32 1, !dbg !641
  %64 = load i32, i32* %high265, align 4, !dbg !641
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !642, !range !261
  %s266 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !643
  %high267 = getelementptr inbounds %struct.DATA, %struct.DATA* %s266, i32 0, i32 1, !dbg !644
  %66 = load i32, i32* %high267, align 4, !dbg !644
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !645, !range !261
  %sub268 = sub nsw i32 %65, %67, !dbg !646
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !647
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !648

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !649
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !649

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !650
  %68 = load i64, i64* %all274, align 8, !dbg !650
  store i64 %68, i64* %rem, align 8, !dbg !651
  br label %if.end275, !dbg !652

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !653

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !654
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !655
  store i32 0, i32* %low279, align 8, !dbg !656
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !657
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !658

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !659
  %69 = load i32, i32* %low284, align 8, !dbg !659
  %s285 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !660
  %high286 = getelementptr inbounds %struct.DATA, %struct.DATA* %s285, i32 0, i32 1, !dbg !661
  store i32 %69, i32* %high286, align 4, !dbg !662
  %s287 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !663
  %high288 = getelementptr inbounds %struct.DATA, %struct.DATA* %s287, i32 0, i32 1, !dbg !664
  store i32 0, i32* %high288, align 4, !dbg !665
  %s289 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !666
  %high290 = getelementptr inbounds %struct.DATA, %struct.DATA* %s289, i32 0, i32 1, !dbg !667
  %70 = load i32, i32* %high290, align 4, !dbg !667
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !668
  store i32 %70, i32* %low292, align 8, !dbg !669
  br label %if.end315, !dbg !670

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !671
  %71 = load i32, i32* %low295, align 8, !dbg !671
  %sub296 = sub nsw i32 31, %sub268, !dbg !672
  %shl297 = shl i32 %71, %sub296, !dbg !673
  %s298 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !674
  %high299 = getelementptr inbounds %struct.DATA, %struct.DATA* %s298, i32 0, i32 1, !dbg !675
  store i32 %shl297, i32* %high299, align 4, !dbg !676
  %s300 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !677
  %high301 = getelementptr inbounds %struct.DATA, %struct.DATA* %s300, i32 0, i32 1, !dbg !678
  %72 = load i32, i32* %high301, align 4, !dbg !678
  %shr302 = lshr i32 %72, %inc277, !dbg !679
  %s303 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !680
  %high304 = getelementptr inbounds %struct.DATA, %struct.DATA* %s303, i32 0, i32 1, !dbg !681
  store i32 %shr302, i32* %high304, align 4, !dbg !682
  %s305 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !683
  %high306 = getelementptr inbounds %struct.DATA, %struct.DATA* %s305, i32 0, i32 1, !dbg !684
  %73 = load i32, i32* %high306, align 4, !dbg !684
  %sub307 = sub nsw i32 31, %sub268, !dbg !685
  %shl308 = shl i32 %73, %sub307, !dbg !686
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !687
  %74 = load i32, i32* %low310, align 8, !dbg !687
  %shr311 = lshr i32 %74, %inc277, !dbg !688
  %or312 = or i32 %shl308, %shr311, !dbg !689
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !690
  store i32 %or312, i32* %low314, align 8, !dbg !691
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !692
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !692
  br label %for.cond, !dbg !693

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !692
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !692
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !694
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !693

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !695
  %high321 = getelementptr inbounds %struct.DATA, %struct.DATA* %s320, i32 0, i32 1, !dbg !696
  %75 = load i32, i32* %high321, align 4, !dbg !696
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !697
  %76 = load i32, i32* %low324, align 8, !dbg !697
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !698
  %s327 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !699
  %high328 = getelementptr inbounds %struct.DATA, %struct.DATA* %s327, i32 0, i32 1, !dbg !700
  store i32 %or326, i32* %high328, align 4, !dbg !701
  %s332 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !702
  %high333 = getelementptr inbounds %struct.DATA, %struct.DATA* %s332, i32 0, i32 1, !dbg !703
  %77 = load i32, i32* %high333, align 4, !dbg !703
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !704
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !705
  store i32 %or335, i32* %low337, align 8, !dbg !706
  %s338 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !707
  %high339 = getelementptr inbounds %struct.DATA, %struct.DATA* %s338, i32 0, i32 1, !dbg !708
  %78 = load i32, i32* %high339, align 4, !dbg !708
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !709
  %79 = load i32, i32* %low342, align 8, !dbg !709
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !710
  %s345 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !711
  %high346 = getelementptr inbounds %struct.DATA, %struct.DATA* %s345, i32 0, i32 1, !dbg !712
  store i32 %or344, i32* %high346, align 4, !dbg !713
  %shl349 = shl i32 %79, 1, !dbg !714
  %or350 = or i32 %shl349, %carry.0, !dbg !715
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !716
  store i32 %or350, i32* %low352, align 8, !dbg !717
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !718
  %80 = load i64, i64* %all354, align 8, !dbg !718
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !719
  %81 = load i64, i64* %all355, align 8, !dbg !719
  %82 = xor i64 %81, -1, !dbg !720
  %sub357 = add i64 %80, %82, !dbg !720
  %isneg = icmp slt i64 %sub357, 0, !dbg !721
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !721
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !722
  %sub364 = sub i64 %81, %and362, !dbg !723
  store i64 %sub364, i64* %all363, align 8, !dbg !723
  br label %for.inc, !dbg !724

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !725
  %conv360 = trunc i64 %and359 to i32, !dbg !726
  %dec = add i32 %sr.2, -1, !dbg !727
  br label %for.cond, !dbg !693, !llvm.loop !728

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !729
  %83 = load i64, i64* %all365, align 8, !dbg !729
  %shl366 = shl i64 %83, 1, !dbg !730
  %conv367 = zext i32 %carry.0 to i64, !dbg !731
  %or368 = or i64 %shl366, %conv367, !dbg !732
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !733
  store i64 %or368, i64* %all369, align 8, !dbg !734
  %tobool370.not = icmp eq i64* %rem, null, !dbg !735
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !735

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !736
  %84 = load i64, i64* %all372, align 8, !dbg !736
  store i64 %84, i64* %rem, align 8, !dbg !737
  br label %if.end373, !dbg !738

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !739
  %85 = load i64, i64* %all374, align 8, !dbg !739
  br label %return, !dbg !740

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !692
  ret i64 %retval.0, !dbg !741
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !742 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !743
  %mul = mul nsw i64 %call, %b, !dbg !744
  %sub = sub nsw i64 %a, %mul, !dbg !745
  store i64 %sub, i64* %rem, align 8, !dbg !746
  ret i64 %call, !dbg !747
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !748 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !749
  %mul = mul nsw i32 %call, %b, !dbg !750
  %sub = sub nsw i32 %a, %mul, !dbg !751
  store i32 %sub, i32* %rem, align 4, !dbg !752
  ret i32 %call, !dbg !753
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !754 {
entry:
  %shr = ashr i32 %a, 31, !dbg !755
  %shr1 = ashr i32 %b, 31, !dbg !756
  %xor = xor i32 %shr, %a, !dbg !757
  %sub = sub nsw i32 %xor, %shr, !dbg !758
  %xor2 = xor i32 %shr1, %b, !dbg !759
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !760
  %xor4 = xor i32 %shr, %shr1, !dbg !761
  %div = udiv i32 %sub, %sub3, !dbg !762
  %xor5 = xor i32 %div, %xor4, !dbg !763
  %sub6 = sub i32 %xor5, %xor4, !dbg !764
  ret i32 %sub6, !dbg !765
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #1 !dbg !766 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !767
  store i64 %a, i64* %all, align 8, !dbg !768
  %low = bitcast %union.dwords* %x to i32*, !dbg !769
  %0 = load i32, i32* %low, align 8, !dbg !769
  %cmp = icmp eq i32 %0, 0, !dbg !770
  br i1 %cmp, label %if.then, label %if.end6, !dbg !771

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !772
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !773
  %1 = load i32, i32* %high, align 4, !dbg !773
  %cmp2 = icmp eq i32 %1, 0, !dbg !774
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !775

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !776

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !777
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !778
  %2 = load i32, i32* %high5, align 4, !dbg !778
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !779, !range !261
  %add = add nuw nsw i32 %3, 33, !dbg !780
  br label %return, !dbg !781

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !782
  %4 = load i32, i32* %low8, align 8, !dbg !782
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !783, !range !261
  %add9 = add nuw nsw i32 %5, 1, !dbg !784
  br label %return, !dbg !785

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !786
  ret i32 %retval.0, !dbg !787
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #1 !dbg !788 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !789
  br i1 %cmp, label %if.then, label %if.end, !dbg !790

if.then:                                          ; preds = %entry
  br label %return, !dbg !791

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !792, !range !261
  %add = add nuw nsw i32 %0, 1, !dbg !793
  br label %return, !dbg !794

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !795
  ret i32 %retval.0, !dbg !796
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !797 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !798
  store i64 %a, i64* %all, align 8, !dbg !799
  %and = and i32 %b, 32, !dbg !800
  %tobool.not = icmp eq i32 %and, 0, !dbg !800
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !801

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.DATA*, !dbg !802
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !803
  store i32 0, i32* %high, align 4, !dbg !804
  %s1 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !805
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !806
  %0 = load i32, i32* %high2, align 4, !dbg !806
  %sub = add nsw i32 %b, -32, !dbg !807
  %shr = lshr i32 %0, %sub, !dbg !808
  %low = bitcast %union.dwords* %result to i32*, !dbg !809
  store i32 %shr, i32* %low, align 8, !dbg !810
  br label %if.end18, !dbg !811

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !812
  br i1 %cmp, label %if.then4, label %if.end, !dbg !813

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !814

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !815
  %high6 = getelementptr inbounds %struct.DATA, %struct.DATA* %s5, i32 0, i32 1, !dbg !816
  %1 = load i32, i32* %high6, align 4, !dbg !816
  %shr7 = lshr i32 %1, %b, !dbg !817
  %s8 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !818
  %high9 = getelementptr inbounds %struct.DATA, %struct.DATA* %s8, i32 0, i32 1, !dbg !819
  store i32 %shr7, i32* %high9, align 4, !dbg !820
  %s10 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !821
  %high11 = getelementptr inbounds %struct.DATA, %struct.DATA* %s10, i32 0, i32 1, !dbg !822
  %2 = load i32, i32* %high11, align 4, !dbg !822
  %sub12 = sub nsw i32 32, %b, !dbg !823
  %shl = shl i32 %2, %sub12, !dbg !824
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !825
  %3 = load i32, i32* %low14, align 8, !dbg !825
  %shr15 = lshr i32 %3, %b, !dbg !826
  %or = or i32 %shl, %shr15, !dbg !827
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !828
  store i32 %or, i32* %low17, align 8, !dbg !829
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !830
  %4 = load i64, i64* %all19, align 8, !dbg !830
  br label %return, !dbg !831

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !832
  ret i64 %retval.0, !dbg !833
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !834 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !835
  %shr1 = ashr i64 %a, 63, !dbg !836
  %xor2 = xor i64 %shr1, %a, !dbg !837
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !838
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !839
  %1 = load i64, i64* %r, align 8, !dbg !840
  %xor4 = xor i64 %1, %shr1, !dbg !841
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !842
  ret i64 %sub5, !dbg !843
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !844 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !845
  %mul = mul nsw i32 %call, %b, !dbg !846
  %sub = sub nsw i32 %a, %mul, !dbg !847
  ret i32 %sub, !dbg !848
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !849 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !850
  br i1 %cmp, label %if.then, label %if.end4, !dbg !851

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !852
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !853

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !854
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !855

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !856

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !857
  unreachable, !dbg !857

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !858
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !859

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !860
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !861

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !862
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !863

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !864

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !865
  unreachable, !dbg !865

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !866
  %xor = xor i64 %shr, %a, !dbg !867
  %sub = sub nsw i64 %xor, %shr, !dbg !868
  %shr14 = ashr i64 %b, 63, !dbg !869
  %xor15 = xor i64 %shr14, %b, !dbg !870
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !871
  %cmp17 = icmp slt i64 %sub, 2, !dbg !872
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !873

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !874
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !875

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !876

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !877
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !878

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !879
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !880
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !881

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !882
  unreachable, !dbg !882

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !883

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !884
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !885
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !886
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !887

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !888
  unreachable, !dbg !888

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !889

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !890
  ret i64 %retval.0, !dbg !891
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !892 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !893
  br i1 %cmp, label %if.then, label %if.end4, !dbg !894

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !895
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !896

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !897
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !898

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !899

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !900
  unreachable, !dbg !900

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !901
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !902

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !903
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !904

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !905
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !906

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !907

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !908
  unreachable, !dbg !908

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !909
  %xor = xor i32 %shr, %a, !dbg !910
  %sub = sub nsw i32 %xor, %shr, !dbg !911
  %shr14 = ashr i32 %b, 31, !dbg !912
  %xor15 = xor i32 %shr14, %b, !dbg !913
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !914
  %cmp17 = icmp slt i32 %sub, 2, !dbg !915
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !916

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !917
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !918

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !919

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !920
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !921

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !922
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !923
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !924

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !925
  unreachable, !dbg !925

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !926

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !927
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !928
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !929
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !930

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !931
  unreachable, !dbg !931

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !932

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !933
  ret i32 %retval.0, !dbg !934
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #1 !dbg !935 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !936
  store i64 %a, i64* %all, align 8, !dbg !937
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !938
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !939
  %0 = load i32, i32* %high, align 4, !dbg !939
  %low = bitcast %union.dwords* %x to i32*, !dbg !940
  %1 = load i32, i32* %low, align 8, !dbg !940
  %xor = xor i32 %0, %1, !dbg !941
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !942
  ret i32 %call, !dbg !943
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #1 !dbg !944 {
entry:
  %shr = lshr i32 %a, 16, !dbg !945
  %xor = xor i32 %shr, %a, !dbg !946
  %shr1 = lshr i32 %xor, 8, !dbg !947
  %xor2 = xor i32 %xor, %shr1, !dbg !948
  %shr3 = lshr i32 %xor2, 4, !dbg !949
  %xor4 = xor i32 %xor2, %shr3, !dbg !950
  %and = and i32 %xor4, 15, !dbg !951
  %shr5 = lshr i32 27030, %and, !dbg !952
  %and6 = and i32 %shr5, 1, !dbg !953
  ret i32 %and6, !dbg !954
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #1 !dbg !955 {
entry:
  %shr = lshr i64 %a, 1, !dbg !956
  %and = and i64 %shr, 6148914691236517205, !dbg !957
  %sub = sub i64 %a, %and, !dbg !958
  %shr1 = lshr i64 %sub, 2, !dbg !959
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !960
  %and3 = and i64 %sub, 3689348814741910323, !dbg !961
  %add = add nuw nsw i64 %and2, %and3, !dbg !962
  %shr4 = lshr i64 %add, 4, !dbg !963
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !964
  %and6 = and i64 %add5, 1085102592571150095, !dbg !965
  %shr7 = lshr i64 %and6, 32, !dbg !966
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !967
  %conv = trunc i64 %add8 to i32, !dbg !968
  %shr9 = lshr i32 %conv, 16, !dbg !969
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !970
  %shr11 = lshr i32 %add10, 8, !dbg !971
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !972
  %and13 = and i32 %add12, 127, !dbg !973
  ret i32 %and13, !dbg !974
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #1 !dbg !975 {
entry:
  %shr = lshr i32 %a, 1, !dbg !976
  %and = and i32 %shr, 1431655765, !dbg !977
  %sub = sub i32 %a, %and, !dbg !978
  %shr1 = lshr i32 %sub, 2, !dbg !979
  %and2 = and i32 %shr1, 858993459, !dbg !980
  %and3 = and i32 %sub, 858993459, !dbg !981
  %add = add nuw nsw i32 %and2, %and3, !dbg !982
  %shr4 = lshr i32 %add, 4, !dbg !983
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !984
  %and6 = and i32 %add5, 252645135, !dbg !985
  %shr7 = lshr i32 %and6, 16, !dbg !986
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !987
  %shr9 = lshr i32 %add8, 8, !dbg !988
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !989
  %and11 = and i32 %add10, 63, !dbg !990
  ret i32 %and11, !dbg !991
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !992 {
entry:
  %sub = sub i64 %a, %b, !dbg !993
  %cmp = icmp sgt i64 %b, -1, !dbg !994
  br i1 %cmp, label %if.then, label %if.else, !dbg !995

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !996
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !997

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !998
  unreachable, !dbg !998

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !999

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1000
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1001

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1002
  unreachable, !dbg !1002

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1003
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1004 {
entry:
  %sub = sub i32 %a, %b, !dbg !1005
  %cmp = icmp sgt i32 %b, -1, !dbg !1006
  br i1 %cmp, label %if.then, label %if.else, !dbg !1007

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1008
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1009

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1010
  unreachable, !dbg !1010

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1011

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1012
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1013

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1014
  unreachable, !dbg !1014

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1015
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !1016 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1017
  store i64 %a, i64* %all, align 8, !dbg !1018
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1019
  store i64 %b, i64* %all1, align 8, !dbg !1020
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1021
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1022
  %0 = load i32, i32* %high, align 4, !dbg !1022
  %s2 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !1023
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !1024
  %1 = load i32, i32* %high3, align 4, !dbg !1024
  %cmp = icmp ult i32 %0, %1, !dbg !1025
  br i1 %cmp, label %if.then, label %if.end, !dbg !1026

if.then:                                          ; preds = %entry
  br label %return, !dbg !1027

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1028
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !1029
  %2 = load i32, i32* %high5, align 4, !dbg !1029
  %s6 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !1030
  %high7 = getelementptr inbounds %struct.DATA, %struct.DATA* %s6, i32 0, i32 1, !dbg !1031
  %3 = load i32, i32* %high7, align 4, !dbg !1031
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1032
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1033

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1034

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1035
  %4 = load i32, i32* %low, align 8, !dbg !1035
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1036
  %5 = load i32, i32* %low13, align 8, !dbg !1036
  %cmp14 = icmp ult i32 %4, %5, !dbg !1037
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1038

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1039

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1040
  %6 = load i32, i32* %low18, align 8, !dbg !1040
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1041
  %7 = load i32, i32* %low20, align 8, !dbg !1041
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1042
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1043

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1044

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1045

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1046
  ret i32 %retval.0, !dbg !1047
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !1048 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1049
  %sub = add nsw i32 %call, -1, !dbg !1050
  ret i32 %sub, !dbg !1051
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1052 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !1053
  ret i64 %call, !dbg !1054
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !1055 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1056
  %mul = mul i32 %call, %b, !dbg !1057
  %sub = sub i32 %a, %mul, !dbg !1058
  store i32 %sub, i32* %rem, align 4, !dbg !1059
  ret i32 %call, !dbg !1060
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #1 !dbg !1061 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1062
  br i1 %cmp, label %if.then, label %if.end, !dbg !1063

if.then:                                          ; preds = %entry
  br label %return, !dbg !1064

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1065
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1066

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1067

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1068, !range !261
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1069, !range !261
  %sub = sub nsw i32 %0, %1, !dbg !1070
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1071
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1072

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1073

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1074
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1075

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1076

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1077
  %sub10 = sub nsw i32 31, %sub, !dbg !1078
  %shl = shl i32 %n, %sub10, !dbg !1079
  %shr = lshr i32 %n, %inc, !dbg !1080
  br label %for.cond, !dbg !1081

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1082
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1082
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1082
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1082
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1083
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1081

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1084
  %2 = xor i32 %or, -1, !dbg !1085
  %sub17 = add i32 %2, %d, !dbg !1085
  br label %for.inc, !dbg !1086

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1087
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1087
  %sub20 = sub i32 %or, %and19, !dbg !1088
  %and = lshr i32 %sub17, 31, !dbg !1089
  %shl14 = shl i32 %q.0, 1, !dbg !1090
  %or15 = or i32 %shl14, %carry.0, !dbg !1091
  %dec = add i32 %sr.0, -1, !dbg !1092
  br label %for.cond, !dbg !1081, !llvm.loop !1093

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1094
  %or22 = or i32 %shl21, %carry.0, !dbg !1095
  br label %return, !dbg !1096

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1082
  ret i32 %retval.0, !dbg !1097
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1098 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !1099
  %0 = load i64, i64* %r, align 8, !dbg !1100
  ret i64 %0, !dbg !1101
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1102 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1103
  %mul = mul i32 %call, %b, !dbg !1104
  %sub = sub i32 %a, %mul, !dbg !1105
  ret i32 %sub, !dbg !1106
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #1 !dbg !1107 {
entry:
  br label %for.cond, !dbg !1108

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1109
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1110
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1111

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1112
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1112
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1113
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1114
  br label %for.inc, !dbg !1115

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1116
  br label %for.cond, !dbg !1111, !llvm.loop !1117

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1118
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #1 !dbg !1119 {
entry:
  br label %for.cond, !dbg !1120

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1121
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1122
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1123

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1124
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1125
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1126
  br label %for.inc, !dbg !1127

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1128
  br label %for.cond, !dbg !1123, !llvm.loop !1129

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1130
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
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/bs/bs.c", directory: "/workspaces/llvmta/testcases/tmp.J31bulgsIc", checksumkind: CSK_MD5, checksum: "397084cb5459d39a0e31b94ef2938cc6")
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
!125 = distinct !DISubprogram(name: "main", scope: !126, file: !126, line: 59, type: !127, scopeLine: 59, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!126 = !DIFile(filename: "batchtest/bs/bs.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "397084cb5459d39a0e31b94ef2938cc6")
!127 = !DISubroutineType(types: !128)
!128 = !{}
!129 = !DILocation(line: 59, column: 21, scope: !125)
!130 = !DILocation(line: 59, column: 14, scope: !125)
!131 = distinct !DISubprogram(name: "binary_search", scope: !126, file: !126, line: 61, type: !127, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!132 = !DILocation(line: 67, column: 3, scope: !131)
!133 = distinct !{!133, !132, !134, !135}
!134 = !DILocation(line: 70, column: 3, scope: !131)
!135 = !{!"llvm.loop.mustprogress"}
!136 = !DILocation(line: 71, column: 3, scope: !131)
!137 = distinct !DISubprogram(name: "__absvdi2", scope: !3, file: !3, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !128)
!138 = !DILocation(line: 25, column: 11, scope: !137)
!139 = !DILocation(line: 25, column: 9, scope: !137)
!140 = !DILocation(line: 26, column: 9, scope: !137)
!141 = !DILocation(line: 28, column: 20, scope: !137)
!142 = !DILocation(line: 28, column: 5, scope: !137)
!143 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !55, file: !55, line: 57, type: !127, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !128)
!144 = !DILocation(line: 59, column: 1, scope: !143)
!145 = distinct !DISubprogram(name: "__absvsi2", scope: !5, file: !5, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !128)
!146 = !DILocation(line: 25, column: 11, scope: !145)
!147 = !DILocation(line: 25, column: 9, scope: !145)
!148 = !DILocation(line: 26, column: 9, scope: !145)
!149 = !DILocation(line: 28, column: 20, scope: !145)
!150 = !DILocation(line: 28, column: 5, scope: !145)
!151 = distinct !DISubprogram(name: "__addvdi3", scope: !9, file: !9, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !128)
!152 = !DILocation(line: 24, column: 27, scope: !151)
!153 = !DILocation(line: 25, column: 11, scope: !151)
!154 = !DILocation(line: 25, column: 9, scope: !151)
!155 = !DILocation(line: 27, column: 15, scope: !151)
!156 = !DILocation(line: 27, column: 13, scope: !151)
!157 = !DILocation(line: 28, column: 13, scope: !151)
!158 = !DILocation(line: 29, column: 5, scope: !151)
!159 = !DILocation(line: 32, column: 15, scope: !151)
!160 = !DILocation(line: 32, column: 13, scope: !151)
!161 = !DILocation(line: 33, column: 13, scope: !151)
!162 = !DILocation(line: 35, column: 5, scope: !151)
!163 = distinct !DISubprogram(name: "__addvsi3", scope: !11, file: !11, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !128)
!164 = !DILocation(line: 24, column: 27, scope: !163)
!165 = !DILocation(line: 25, column: 11, scope: !163)
!166 = !DILocation(line: 25, column: 9, scope: !163)
!167 = !DILocation(line: 27, column: 15, scope: !163)
!168 = !DILocation(line: 27, column: 13, scope: !163)
!169 = !DILocation(line: 28, column: 13, scope: !163)
!170 = !DILocation(line: 29, column: 5, scope: !163)
!171 = !DILocation(line: 32, column: 15, scope: !163)
!172 = !DILocation(line: 32, column: 13, scope: !163)
!173 = !DILocation(line: 33, column: 13, scope: !163)
!174 = !DILocation(line: 35, column: 5, scope: !163)
!175 = distinct !DISubprogram(name: "__ashldi3", scope: !15, file: !15, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !128)
!176 = !DILocation(line: 29, column: 11, scope: !175)
!177 = !DILocation(line: 29, column: 15, scope: !175)
!178 = !DILocation(line: 30, column: 11, scope: !175)
!179 = !DILocation(line: 30, column: 9, scope: !175)
!180 = !DILocation(line: 32, column: 18, scope: !175)
!181 = !DILocation(line: 32, column: 22, scope: !175)
!182 = !DILocation(line: 33, column: 33, scope: !175)
!183 = !DILocation(line: 33, column: 43, scope: !175)
!184 = !DILocation(line: 33, column: 37, scope: !175)
!185 = !DILocation(line: 33, column: 16, scope: !175)
!186 = !DILocation(line: 33, column: 18, scope: !175)
!187 = !DILocation(line: 33, column: 23, scope: !175)
!188 = !DILocation(line: 34, column: 5, scope: !175)
!189 = !DILocation(line: 37, column: 15, scope: !175)
!190 = !DILocation(line: 37, column: 13, scope: !175)
!191 = !DILocation(line: 38, column: 13, scope: !175)
!192 = !DILocation(line: 39, column: 33, scope: !175)
!193 = !DILocation(line: 39, column: 37, scope: !175)
!194 = !DILocation(line: 39, column: 18, scope: !175)
!195 = !DILocation(line: 39, column: 23, scope: !175)
!196 = !DILocation(line: 40, column: 32, scope: !175)
!197 = !DILocation(line: 40, column: 34, scope: !175)
!198 = !DILocation(line: 40, column: 39, scope: !175)
!199 = !DILocation(line: 40, column: 56, scope: !175)
!200 = !DILocation(line: 40, column: 77, scope: !175)
!201 = !DILocation(line: 40, column: 60, scope: !175)
!202 = !DILocation(line: 40, column: 45, scope: !175)
!203 = !DILocation(line: 40, column: 16, scope: !175)
!204 = !DILocation(line: 40, column: 18, scope: !175)
!205 = !DILocation(line: 40, column: 23, scope: !175)
!206 = !DILocation(line: 42, column: 19, scope: !175)
!207 = !DILocation(line: 42, column: 5, scope: !175)
!208 = !DILocation(line: 0, scope: !175)
!209 = !DILocation(line: 43, column: 1, scope: !175)
!210 = distinct !DISubprogram(name: "__ashrdi3", scope: !19, file: !19, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !128)
!211 = !DILocation(line: 29, column: 11, scope: !210)
!212 = !DILocation(line: 29, column: 15, scope: !210)
!213 = !DILocation(line: 30, column: 11, scope: !210)
!214 = !DILocation(line: 30, column: 9, scope: !210)
!215 = !DILocation(line: 33, column: 31, scope: !210)
!216 = !DILocation(line: 33, column: 33, scope: !210)
!217 = !DILocation(line: 33, column: 38, scope: !210)
!218 = !DILocation(line: 33, column: 16, scope: !210)
!219 = !DILocation(line: 33, column: 18, scope: !210)
!220 = !DILocation(line: 33, column: 23, scope: !210)
!221 = !DILocation(line: 34, column: 30, scope: !210)
!222 = !DILocation(line: 34, column: 32, scope: !210)
!223 = !DILocation(line: 34, column: 43, scope: !210)
!224 = !DILocation(line: 34, column: 37, scope: !210)
!225 = !DILocation(line: 34, column: 18, scope: !210)
!226 = !DILocation(line: 34, column: 22, scope: !210)
!227 = !DILocation(line: 35, column: 5, scope: !210)
!228 = !DILocation(line: 38, column: 15, scope: !210)
!229 = !DILocation(line: 38, column: 13, scope: !210)
!230 = !DILocation(line: 39, column: 13, scope: !210)
!231 = !DILocation(line: 40, column: 32, scope: !210)
!232 = !DILocation(line: 40, column: 34, scope: !210)
!233 = !DILocation(line: 40, column: 39, scope: !210)
!234 = !DILocation(line: 40, column: 16, scope: !210)
!235 = !DILocation(line: 40, column: 18, scope: !210)
!236 = !DILocation(line: 40, column: 24, scope: !210)
!237 = !DILocation(line: 41, column: 31, scope: !210)
!238 = !DILocation(line: 41, column: 33, scope: !210)
!239 = !DILocation(line: 41, column: 55, scope: !210)
!240 = !DILocation(line: 41, column: 38, scope: !210)
!241 = !DILocation(line: 41, column: 72, scope: !210)
!242 = !DILocation(line: 41, column: 76, scope: !210)
!243 = !DILocation(line: 41, column: 61, scope: !210)
!244 = !DILocation(line: 41, column: 18, scope: !210)
!245 = !DILocation(line: 41, column: 22, scope: !210)
!246 = !DILocation(line: 43, column: 19, scope: !210)
!247 = !DILocation(line: 43, column: 5, scope: !210)
!248 = !DILocation(line: 0, scope: !210)
!249 = !DILocation(line: 44, column: 1, scope: !210)
!250 = distinct !DISubprogram(name: "__clzdi2", scope: !23, file: !23, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !128)
!251 = !DILocation(line: 25, column: 7, scope: !250)
!252 = !DILocation(line: 25, column: 11, scope: !250)
!253 = !DILocation(line: 26, column: 26, scope: !250)
!254 = !DILocation(line: 26, column: 28, scope: !250)
!255 = !DILocation(line: 26, column: 33, scope: !250)
!256 = !DILocation(line: 27, column: 29, scope: !250)
!257 = !DILocation(line: 27, column: 31, scope: !250)
!258 = !DILocation(line: 27, column: 49, scope: !250)
!259 = !DILocation(line: 27, column: 42, scope: !250)
!260 = !DILocation(line: 27, column: 12, scope: !250)
!261 = !{i32 0, i32 33}
!262 = !DILocation(line: 28, column: 15, scope: !250)
!263 = !DILocation(line: 27, column: 59, scope: !250)
!264 = !DILocation(line: 27, column: 5, scope: !250)
!265 = distinct !DISubprogram(name: "__clzsi2", scope: !25, file: !25, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !128)
!266 = !DILocation(line: 25, column: 34, scope: !265)
!267 = !DILocation(line: 25, column: 40, scope: !265)
!268 = !DILocation(line: 26, column: 14, scope: !265)
!269 = !DILocation(line: 26, column: 7, scope: !265)
!270 = !DILocation(line: 29, column: 13, scope: !265)
!271 = !DILocation(line: 29, column: 23, scope: !265)
!272 = !DILocation(line: 29, column: 29, scope: !265)
!273 = !DILocation(line: 30, column: 13, scope: !265)
!274 = !DILocation(line: 30, column: 7, scope: !265)
!275 = !DILocation(line: 31, column: 7, scope: !265)
!276 = !DILocation(line: 33, column: 13, scope: !265)
!277 = !DILocation(line: 33, column: 21, scope: !265)
!278 = !DILocation(line: 33, column: 27, scope: !265)
!279 = !DILocation(line: 34, column: 13, scope: !265)
!280 = !DILocation(line: 34, column: 7, scope: !265)
!281 = !DILocation(line: 35, column: 7, scope: !265)
!282 = !DILocation(line: 37, column: 13, scope: !265)
!283 = !DILocation(line: 37, column: 20, scope: !265)
!284 = !DILocation(line: 37, column: 26, scope: !265)
!285 = !DILocation(line: 38, column: 13, scope: !265)
!286 = !DILocation(line: 38, column: 7, scope: !265)
!287 = !DILocation(line: 39, column: 7, scope: !265)
!288 = !DILocation(line: 52, column: 20, scope: !265)
!289 = !DILocation(line: 52, column: 37, scope: !265)
!290 = !DILocation(line: 52, column: 25, scope: !265)
!291 = !DILocation(line: 52, column: 14, scope: !265)
!292 = !DILocation(line: 52, column: 5, scope: !265)
!293 = distinct !DISubprogram(name: "__cmpdi2", scope: !29, file: !29, line: 23, type: !127, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !128)
!294 = !DILocation(line: 26, column: 7, scope: !293)
!295 = !DILocation(line: 26, column: 11, scope: !293)
!296 = !DILocation(line: 28, column: 7, scope: !293)
!297 = !DILocation(line: 28, column: 11, scope: !293)
!298 = !DILocation(line: 29, column: 11, scope: !293)
!299 = !DILocation(line: 29, column: 13, scope: !293)
!300 = !DILocation(line: 29, column: 22, scope: !293)
!301 = !DILocation(line: 29, column: 24, scope: !293)
!302 = !DILocation(line: 29, column: 18, scope: !293)
!303 = !DILocation(line: 29, column: 9, scope: !293)
!304 = !DILocation(line: 30, column: 9, scope: !293)
!305 = !DILocation(line: 31, column: 11, scope: !293)
!306 = !DILocation(line: 31, column: 13, scope: !293)
!307 = !DILocation(line: 31, column: 22, scope: !293)
!308 = !DILocation(line: 31, column: 24, scope: !293)
!309 = !DILocation(line: 31, column: 18, scope: !293)
!310 = !DILocation(line: 31, column: 9, scope: !293)
!311 = !DILocation(line: 32, column: 9, scope: !293)
!312 = !DILocation(line: 33, column: 13, scope: !293)
!313 = !DILocation(line: 33, column: 23, scope: !293)
!314 = !DILocation(line: 33, column: 17, scope: !293)
!315 = !DILocation(line: 33, column: 9, scope: !293)
!316 = !DILocation(line: 34, column: 9, scope: !293)
!317 = !DILocation(line: 35, column: 13, scope: !293)
!318 = !DILocation(line: 35, column: 23, scope: !293)
!319 = !DILocation(line: 35, column: 17, scope: !293)
!320 = !DILocation(line: 35, column: 9, scope: !293)
!321 = !DILocation(line: 36, column: 9, scope: !293)
!322 = !DILocation(line: 37, column: 5, scope: !293)
!323 = !DILocation(line: 0, scope: !293)
!324 = !DILocation(line: 38, column: 1, scope: !293)
!325 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !29, file: !29, line: 46, type: !127, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !128)
!326 = !DILocation(line: 48, column: 9, scope: !325)
!327 = !DILocation(line: 48, column: 24, scope: !325)
!328 = !DILocation(line: 48, column: 2, scope: !325)
!329 = distinct !DISubprogram(name: "__ctzdi2", scope: !33, file: !33, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !128)
!330 = !DILocation(line: 25, column: 7, scope: !329)
!331 = !DILocation(line: 25, column: 11, scope: !329)
!332 = !DILocation(line: 26, column: 28, scope: !329)
!333 = !DILocation(line: 26, column: 32, scope: !329)
!334 = !DILocation(line: 27, column: 29, scope: !329)
!335 = !DILocation(line: 27, column: 31, scope: !329)
!336 = !DILocation(line: 27, column: 41, scope: !329)
!337 = !DILocation(line: 27, column: 12, scope: !329)
!338 = !DILocation(line: 28, column: 18, scope: !329)
!339 = !DILocation(line: 27, column: 59, scope: !329)
!340 = !DILocation(line: 27, column: 5, scope: !329)
!341 = distinct !DISubprogram(name: "__ctzsi2", scope: !35, file: !35, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !128)
!342 = !DILocation(line: 25, column: 20, scope: !341)
!343 = !DILocation(line: 25, column: 34, scope: !341)
!344 = !DILocation(line: 25, column: 40, scope: !341)
!345 = !DILocation(line: 26, column: 7, scope: !341)
!346 = !DILocation(line: 29, column: 13, scope: !341)
!347 = !DILocation(line: 29, column: 23, scope: !341)
!348 = !DILocation(line: 29, column: 29, scope: !341)
!349 = !DILocation(line: 30, column: 7, scope: !341)
!350 = !DILocation(line: 31, column: 7, scope: !341)
!351 = !DILocation(line: 33, column: 13, scope: !341)
!352 = !DILocation(line: 33, column: 21, scope: !341)
!353 = !DILocation(line: 33, column: 27, scope: !341)
!354 = !DILocation(line: 34, column: 7, scope: !341)
!355 = !DILocation(line: 35, column: 7, scope: !341)
!356 = !DILocation(line: 37, column: 13, scope: !341)
!357 = !DILocation(line: 37, column: 20, scope: !341)
!358 = !DILocation(line: 37, column: 26, scope: !341)
!359 = !DILocation(line: 38, column: 7, scope: !341)
!360 = !DILocation(line: 40, column: 7, scope: !341)
!361 = !DILocation(line: 56, column: 25, scope: !341)
!362 = !DILocation(line: 56, column: 20, scope: !341)
!363 = !DILocation(line: 56, column: 44, scope: !341)
!364 = !DILocation(line: 56, column: 32, scope: !341)
!365 = !DILocation(line: 56, column: 14, scope: !341)
!366 = !DILocation(line: 56, column: 5, scope: !341)
!367 = distinct !DISubprogram(name: "__divdi3", scope: !39, file: !39, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !128)
!368 = !DILocation(line: 23, column: 20, scope: !367)
!369 = !DILocation(line: 24, column: 20, scope: !367)
!370 = !DILocation(line: 25, column: 12, scope: !367)
!371 = !DILocation(line: 25, column: 19, scope: !367)
!372 = !DILocation(line: 26, column: 12, scope: !367)
!373 = !DILocation(line: 26, column: 19, scope: !367)
!374 = !DILocation(line: 27, column: 9, scope: !367)
!375 = !DILocation(line: 28, column: 13, scope: !367)
!376 = !DILocation(line: 28, column: 44, scope: !367)
!377 = !DILocation(line: 28, column: 51, scope: !367)
!378 = !DILocation(line: 28, column: 5, scope: !367)
!379 = distinct !DISubprogram(name: "__udivmoddi4", scope: !97, file: !97, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !128)
!380 = !DILocation(line: 29, column: 7, scope: !379)
!381 = !DILocation(line: 29, column: 11, scope: !379)
!382 = !DILocation(line: 31, column: 7, scope: !379)
!383 = !DILocation(line: 31, column: 11, scope: !379)
!384 = !DILocation(line: 36, column: 11, scope: !379)
!385 = !DILocation(line: 36, column: 13, scope: !379)
!386 = !DILocation(line: 36, column: 18, scope: !379)
!387 = !DILocation(line: 36, column: 9, scope: !379)
!388 = !DILocation(line: 38, column: 15, scope: !379)
!389 = !DILocation(line: 38, column: 17, scope: !379)
!390 = !DILocation(line: 38, column: 22, scope: !379)
!391 = !DILocation(line: 38, column: 13, scope: !379)
!392 = !DILocation(line: 44, column: 17, scope: !379)
!393 = !DILocation(line: 45, column: 28, scope: !379)
!394 = !DILocation(line: 45, column: 38, scope: !379)
!395 = !DILocation(line: 45, column: 32, scope: !379)
!396 = !DILocation(line: 45, column: 24, scope: !379)
!397 = !DILocation(line: 45, column: 22, scope: !379)
!398 = !DILocation(line: 45, column: 17, scope: !379)
!399 = !DILocation(line: 46, column: 24, scope: !379)
!400 = !DILocation(line: 46, column: 34, scope: !379)
!401 = !DILocation(line: 46, column: 28, scope: !379)
!402 = !DILocation(line: 46, column: 20, scope: !379)
!403 = !DILocation(line: 46, column: 13, scope: !379)
!404 = !DILocation(line: 52, column: 13, scope: !379)
!405 = !DILocation(line: 53, column: 24, scope: !379)
!406 = !DILocation(line: 53, column: 20, scope: !379)
!407 = !DILocation(line: 53, column: 18, scope: !379)
!408 = !DILocation(line: 53, column: 13, scope: !379)
!409 = !DILocation(line: 54, column: 9, scope: !379)
!410 = !DILocation(line: 57, column: 13, scope: !379)
!411 = !DILocation(line: 57, column: 17, scope: !379)
!412 = !DILocation(line: 57, column: 9, scope: !379)
!413 = !DILocation(line: 59, column: 15, scope: !379)
!414 = !DILocation(line: 59, column: 17, scope: !379)
!415 = !DILocation(line: 59, column: 22, scope: !379)
!416 = !DILocation(line: 59, column: 13, scope: !379)
!417 = !DILocation(line: 65, column: 17, scope: !379)
!418 = !DILocation(line: 66, column: 26, scope: !379)
!419 = !DILocation(line: 66, column: 28, scope: !379)
!420 = !DILocation(line: 66, column: 39, scope: !379)
!421 = !DILocation(line: 66, column: 33, scope: !379)
!422 = !DILocation(line: 66, column: 24, scope: !379)
!423 = !DILocation(line: 66, column: 22, scope: !379)
!424 = !DILocation(line: 66, column: 17, scope: !379)
!425 = !DILocation(line: 67, column: 22, scope: !379)
!426 = !DILocation(line: 67, column: 24, scope: !379)
!427 = !DILocation(line: 67, column: 35, scope: !379)
!428 = !DILocation(line: 67, column: 29, scope: !379)
!429 = !DILocation(line: 67, column: 20, scope: !379)
!430 = !DILocation(line: 67, column: 13, scope: !379)
!431 = !DILocation(line: 70, column: 17, scope: !379)
!432 = !DILocation(line: 70, column: 21, scope: !379)
!433 = !DILocation(line: 70, column: 13, scope: !379)
!434 = !DILocation(line: 76, column: 17, scope: !379)
!435 = !DILocation(line: 78, column: 30, scope: !379)
!436 = !DILocation(line: 78, column: 32, scope: !379)
!437 = !DILocation(line: 78, column: 41, scope: !379)
!438 = !DILocation(line: 78, column: 43, scope: !379)
!439 = !DILocation(line: 78, column: 37, scope: !379)
!440 = !DILocation(line: 78, column: 19, scope: !379)
!441 = !DILocation(line: 78, column: 21, scope: !379)
!442 = !DILocation(line: 78, column: 26, scope: !379)
!443 = !DILocation(line: 79, column: 21, scope: !379)
!444 = !DILocation(line: 79, column: 25, scope: !379)
!445 = !DILocation(line: 80, column: 26, scope: !379)
!446 = !DILocation(line: 80, column: 22, scope: !379)
!447 = !DILocation(line: 81, column: 13, scope: !379)
!448 = !DILocation(line: 82, column: 22, scope: !379)
!449 = !DILocation(line: 82, column: 24, scope: !379)
!450 = !DILocation(line: 82, column: 33, scope: !379)
!451 = !DILocation(line: 82, column: 35, scope: !379)
!452 = !DILocation(line: 82, column: 29, scope: !379)
!453 = !DILocation(line: 82, column: 20, scope: !379)
!454 = !DILocation(line: 82, column: 13, scope: !379)
!455 = !DILocation(line: 88, column: 16, scope: !379)
!456 = !DILocation(line: 88, column: 18, scope: !379)
!457 = !DILocation(line: 88, column: 28, scope: !379)
!458 = !DILocation(line: 88, column: 30, scope: !379)
!459 = !DILocation(line: 88, column: 35, scope: !379)
!460 = !DILocation(line: 88, column: 23, scope: !379)
!461 = !DILocation(line: 88, column: 41, scope: !379)
!462 = !DILocation(line: 88, column: 13, scope: !379)
!463 = !DILocation(line: 90, column: 17, scope: !379)
!464 = !DILocation(line: 92, column: 31, scope: !379)
!465 = !DILocation(line: 92, column: 21, scope: !379)
!466 = !DILocation(line: 92, column: 25, scope: !379)
!467 = !DILocation(line: 93, column: 30, scope: !379)
!468 = !DILocation(line: 93, column: 32, scope: !379)
!469 = !DILocation(line: 93, column: 42, scope: !379)
!470 = !DILocation(line: 93, column: 44, scope: !379)
!471 = !DILocation(line: 93, column: 49, scope: !379)
!472 = !DILocation(line: 93, column: 37, scope: !379)
!473 = !DILocation(line: 93, column: 19, scope: !379)
!474 = !DILocation(line: 93, column: 21, scope: !379)
!475 = !DILocation(line: 93, column: 26, scope: !379)
!476 = !DILocation(line: 94, column: 26, scope: !379)
!477 = !DILocation(line: 94, column: 22, scope: !379)
!478 = !DILocation(line: 95, column: 13, scope: !379)
!479 = !DILocation(line: 96, column: 22, scope: !379)
!480 = !DILocation(line: 96, column: 24, scope: !379)
!481 = !DILocation(line: 96, column: 48, scope: !379)
!482 = !DILocation(line: 96, column: 50, scope: !379)
!483 = !DILocation(line: 96, column: 32, scope: !379)
!484 = !DILocation(line: 96, column: 29, scope: !379)
!485 = !DILocation(line: 96, column: 20, scope: !379)
!486 = !DILocation(line: 96, column: 13, scope: !379)
!487 = !DILocation(line: 102, column: 30, scope: !379)
!488 = !DILocation(line: 102, column: 32, scope: !379)
!489 = !DILocation(line: 102, column: 14, scope: !379)
!490 = !DILocation(line: 102, column: 56, scope: !379)
!491 = !DILocation(line: 102, column: 58, scope: !379)
!492 = !DILocation(line: 102, column: 40, scope: !379)
!493 = !DILocation(line: 102, column: 38, scope: !379)
!494 = !DILocation(line: 104, column: 16, scope: !379)
!495 = !DILocation(line: 104, column: 13, scope: !379)
!496 = !DILocation(line: 106, column: 16, scope: !379)
!497 = !DILocation(line: 107, column: 26, scope: !379)
!498 = !DILocation(line: 107, column: 22, scope: !379)
!499 = !DILocation(line: 107, column: 17, scope: !379)
!500 = !DILocation(line: 108, column: 13, scope: !379)
!501 = !DILocation(line: 110, column: 9, scope: !379)
!502 = !DILocation(line: 113, column: 13, scope: !379)
!503 = !DILocation(line: 113, column: 17, scope: !379)
!504 = !DILocation(line: 114, column: 24, scope: !379)
!505 = !DILocation(line: 114, column: 45, scope: !379)
!506 = !DILocation(line: 114, column: 28, scope: !379)
!507 = !DILocation(line: 114, column: 11, scope: !379)
!508 = !DILocation(line: 114, column: 13, scope: !379)
!509 = !DILocation(line: 114, column: 18, scope: !379)
!510 = !DILocation(line: 116, column: 22, scope: !379)
!511 = !DILocation(line: 116, column: 24, scope: !379)
!512 = !DILocation(line: 116, column: 29, scope: !379)
!513 = !DILocation(line: 116, column: 11, scope: !379)
!514 = !DILocation(line: 116, column: 13, scope: !379)
!515 = !DILocation(line: 116, column: 18, scope: !379)
!516 = !DILocation(line: 117, column: 22, scope: !379)
!517 = !DILocation(line: 117, column: 24, scope: !379)
!518 = !DILocation(line: 117, column: 46, scope: !379)
!519 = !DILocation(line: 117, column: 29, scope: !379)
!520 = !DILocation(line: 117, column: 60, scope: !379)
!521 = !DILocation(line: 117, column: 64, scope: !379)
!522 = !DILocation(line: 117, column: 53, scope: !379)
!523 = !DILocation(line: 117, column: 13, scope: !379)
!524 = !DILocation(line: 117, column: 17, scope: !379)
!525 = !DILocation(line: 118, column: 5, scope: !379)
!526 = !DILocation(line: 121, column: 15, scope: !379)
!527 = !DILocation(line: 121, column: 17, scope: !379)
!528 = !DILocation(line: 121, column: 22, scope: !379)
!529 = !DILocation(line: 121, column: 13, scope: !379)
!530 = !DILocation(line: 127, column: 22, scope: !379)
!531 = !DILocation(line: 127, column: 43, scope: !379)
!532 = !DILocation(line: 127, column: 17, scope: !379)
!533 = !DILocation(line: 129, column: 21, scope: !379)
!534 = !DILocation(line: 130, column: 32, scope: !379)
!535 = !DILocation(line: 130, column: 43, scope: !379)
!536 = !DILocation(line: 130, column: 47, scope: !379)
!537 = !DILocation(line: 130, column: 36, scope: !379)
!538 = !DILocation(line: 130, column: 28, scope: !379)
!539 = !DILocation(line: 130, column: 26, scope: !379)
!540 = !DILocation(line: 130, column: 21, scope: !379)
!541 = !DILocation(line: 131, column: 25, scope: !379)
!542 = !DILocation(line: 131, column: 29, scope: !379)
!543 = !DILocation(line: 131, column: 21, scope: !379)
!544 = !DILocation(line: 132, column: 30, scope: !379)
!545 = !DILocation(line: 132, column: 21, scope: !379)
!546 = !DILocation(line: 133, column: 40, scope: !379)
!547 = !DILocation(line: 133, column: 22, scope: !379)
!548 = !DILocation(line: 134, column: 30, scope: !379)
!549 = !DILocation(line: 134, column: 32, scope: !379)
!550 = !DILocation(line: 134, column: 37, scope: !379)
!551 = !DILocation(line: 134, column: 19, scope: !379)
!552 = !DILocation(line: 134, column: 21, scope: !379)
!553 = !DILocation(line: 134, column: 26, scope: !379)
!554 = !DILocation(line: 135, column: 30, scope: !379)
!555 = !DILocation(line: 135, column: 32, scope: !379)
!556 = !DILocation(line: 135, column: 54, scope: !379)
!557 = !DILocation(line: 135, column: 37, scope: !379)
!558 = !DILocation(line: 135, column: 68, scope: !379)
!559 = !DILocation(line: 135, column: 72, scope: !379)
!560 = !DILocation(line: 135, column: 61, scope: !379)
!561 = !DILocation(line: 135, column: 21, scope: !379)
!562 = !DILocation(line: 135, column: 25, scope: !379)
!563 = !DILocation(line: 136, column: 26, scope: !379)
!564 = !DILocation(line: 136, column: 17, scope: !379)
!565 = !DILocation(line: 142, column: 55, scope: !379)
!566 = !DILocation(line: 142, column: 37, scope: !379)
!567 = !DILocation(line: 142, column: 35, scope: !379)
!568 = !DILocation(line: 142, column: 78, scope: !379)
!569 = !DILocation(line: 142, column: 80, scope: !379)
!570 = !DILocation(line: 142, column: 62, scope: !379)
!571 = !DILocation(line: 142, column: 60, scope: !379)
!572 = !DILocation(line: 147, column: 20, scope: !379)
!573 = !DILocation(line: 147, column: 17, scope: !379)
!574 = !DILocation(line: 149, column: 21, scope: !379)
!575 = !DILocation(line: 149, column: 25, scope: !379)
!576 = !DILocation(line: 150, column: 32, scope: !379)
!577 = !DILocation(line: 150, column: 19, scope: !379)
!578 = !DILocation(line: 150, column: 21, scope: !379)
!579 = !DILocation(line: 150, column: 26, scope: !379)
!580 = !DILocation(line: 151, column: 19, scope: !379)
!581 = !DILocation(line: 151, column: 21, scope: !379)
!582 = !DILocation(line: 151, column: 26, scope: !379)
!583 = !DILocation(line: 152, column: 29, scope: !379)
!584 = !DILocation(line: 152, column: 31, scope: !379)
!585 = !DILocation(line: 152, column: 21, scope: !379)
!586 = !DILocation(line: 152, column: 25, scope: !379)
!587 = !DILocation(line: 153, column: 13, scope: !379)
!588 = !DILocation(line: 154, column: 25, scope: !379)
!589 = !DILocation(line: 154, column: 22, scope: !379)
!590 = !DILocation(line: 156, column: 21, scope: !379)
!591 = !DILocation(line: 156, column: 25, scope: !379)
!592 = !DILocation(line: 157, column: 32, scope: !379)
!593 = !DILocation(line: 157, column: 53, scope: !379)
!594 = !DILocation(line: 157, column: 36, scope: !379)
!595 = !DILocation(line: 157, column: 19, scope: !379)
!596 = !DILocation(line: 157, column: 21, scope: !379)
!597 = !DILocation(line: 157, column: 26, scope: !379)
!598 = !DILocation(line: 158, column: 30, scope: !379)
!599 = !DILocation(line: 158, column: 32, scope: !379)
!600 = !DILocation(line: 158, column: 37, scope: !379)
!601 = !DILocation(line: 158, column: 19, scope: !379)
!602 = !DILocation(line: 158, column: 21, scope: !379)
!603 = !DILocation(line: 158, column: 26, scope: !379)
!604 = !DILocation(line: 159, column: 30, scope: !379)
!605 = !DILocation(line: 159, column: 32, scope: !379)
!606 = !DILocation(line: 159, column: 54, scope: !379)
!607 = !DILocation(line: 159, column: 37, scope: !379)
!608 = !DILocation(line: 159, column: 68, scope: !379)
!609 = !DILocation(line: 159, column: 72, scope: !379)
!610 = !DILocation(line: 159, column: 61, scope: !379)
!611 = !DILocation(line: 159, column: 21, scope: !379)
!612 = !DILocation(line: 159, column: 25, scope: !379)
!613 = !DILocation(line: 160, column: 13, scope: !379)
!614 = !DILocation(line: 163, column: 31, scope: !379)
!615 = !DILocation(line: 163, column: 53, scope: !379)
!616 = !DILocation(line: 163, column: 35, scope: !379)
!617 = !DILocation(line: 163, column: 21, scope: !379)
!618 = !DILocation(line: 163, column: 25, scope: !379)
!619 = !DILocation(line: 164, column: 31, scope: !379)
!620 = !DILocation(line: 164, column: 33, scope: !379)
!621 = !DILocation(line: 164, column: 56, scope: !379)
!622 = !DILocation(line: 164, column: 38, scope: !379)
!623 = !DILocation(line: 165, column: 33, scope: !379)
!624 = !DILocation(line: 165, column: 44, scope: !379)
!625 = !DILocation(line: 165, column: 37, scope: !379)
!626 = !DILocation(line: 164, column: 63, scope: !379)
!627 = !DILocation(line: 164, column: 19, scope: !379)
!628 = !DILocation(line: 164, column: 21, scope: !379)
!629 = !DILocation(line: 164, column: 26, scope: !379)
!630 = !DILocation(line: 166, column: 19, scope: !379)
!631 = !DILocation(line: 166, column: 21, scope: !379)
!632 = !DILocation(line: 166, column: 26, scope: !379)
!633 = !DILocation(line: 167, column: 29, scope: !379)
!634 = !DILocation(line: 167, column: 31, scope: !379)
!635 = !DILocation(line: 167, column: 43, scope: !379)
!636 = !DILocation(line: 167, column: 36, scope: !379)
!637 = !DILocation(line: 167, column: 21, scope: !379)
!638 = !DILocation(line: 167, column: 25, scope: !379)
!639 = !DILocation(line: 169, column: 9, scope: !379)
!640 = !DILocation(line: 176, column: 34, scope: !379)
!641 = !DILocation(line: 176, column: 36, scope: !379)
!642 = !DILocation(line: 176, column: 18, scope: !379)
!643 = !DILocation(line: 176, column: 60, scope: !379)
!644 = !DILocation(line: 176, column: 62, scope: !379)
!645 = !DILocation(line: 176, column: 44, scope: !379)
!646 = !DILocation(line: 176, column: 42, scope: !379)
!647 = !DILocation(line: 178, column: 20, scope: !379)
!648 = !DILocation(line: 178, column: 17, scope: !379)
!649 = !DILocation(line: 180, column: 21, scope: !379)
!650 = !DILocation(line: 181, column: 30, scope: !379)
!651 = !DILocation(line: 181, column: 26, scope: !379)
!652 = !DILocation(line: 181, column: 21, scope: !379)
!653 = !DILocation(line: 182, column: 17, scope: !379)
!654 = !DILocation(line: 184, column: 13, scope: !379)
!655 = !DILocation(line: 187, column: 17, scope: !379)
!656 = !DILocation(line: 187, column: 21, scope: !379)
!657 = !DILocation(line: 188, column: 20, scope: !379)
!658 = !DILocation(line: 188, column: 17, scope: !379)
!659 = !DILocation(line: 190, column: 32, scope: !379)
!660 = !DILocation(line: 190, column: 19, scope: !379)
!661 = !DILocation(line: 190, column: 21, scope: !379)
!662 = !DILocation(line: 190, column: 26, scope: !379)
!663 = !DILocation(line: 191, column: 19, scope: !379)
!664 = !DILocation(line: 191, column: 21, scope: !379)
!665 = !DILocation(line: 191, column: 26, scope: !379)
!666 = !DILocation(line: 192, column: 29, scope: !379)
!667 = !DILocation(line: 192, column: 31, scope: !379)
!668 = !DILocation(line: 192, column: 21, scope: !379)
!669 = !DILocation(line: 192, column: 25, scope: !379)
!670 = !DILocation(line: 193, column: 13, scope: !379)
!671 = !DILocation(line: 196, column: 32, scope: !379)
!672 = !DILocation(line: 196, column: 53, scope: !379)
!673 = !DILocation(line: 196, column: 36, scope: !379)
!674 = !DILocation(line: 196, column: 19, scope: !379)
!675 = !DILocation(line: 196, column: 21, scope: !379)
!676 = !DILocation(line: 196, column: 26, scope: !379)
!677 = !DILocation(line: 197, column: 30, scope: !379)
!678 = !DILocation(line: 197, column: 32, scope: !379)
!679 = !DILocation(line: 197, column: 37, scope: !379)
!680 = !DILocation(line: 197, column: 19, scope: !379)
!681 = !DILocation(line: 197, column: 21, scope: !379)
!682 = !DILocation(line: 197, column: 26, scope: !379)
!683 = !DILocation(line: 198, column: 30, scope: !379)
!684 = !DILocation(line: 198, column: 32, scope: !379)
!685 = !DILocation(line: 198, column: 54, scope: !379)
!686 = !DILocation(line: 198, column: 37, scope: !379)
!687 = !DILocation(line: 198, column: 68, scope: !379)
!688 = !DILocation(line: 198, column: 72, scope: !379)
!689 = !DILocation(line: 198, column: 61, scope: !379)
!690 = !DILocation(line: 198, column: 21, scope: !379)
!691 = !DILocation(line: 198, column: 25, scope: !379)
!692 = !DILocation(line: 0, scope: !379)
!693 = !DILocation(line: 209, column: 5, scope: !379)
!694 = !DILocation(line: 209, column: 15, scope: !379)
!695 = !DILocation(line: 212, column: 23, scope: !379)
!696 = !DILocation(line: 212, column: 25, scope: !379)
!697 = !DILocation(line: 212, column: 43, scope: !379)
!698 = !DILocation(line: 212, column: 36, scope: !379)
!699 = !DILocation(line: 212, column: 11, scope: !379)
!700 = !DILocation(line: 212, column: 13, scope: !379)
!701 = !DILocation(line: 212, column: 18, scope: !379)
!702 = !DILocation(line: 213, column: 41, scope: !379)
!703 = !DILocation(line: 213, column: 43, scope: !379)
!704 = !DILocation(line: 213, column: 36, scope: !379)
!705 = !DILocation(line: 213, column: 13, scope: !379)
!706 = !DILocation(line: 213, column: 18, scope: !379)
!707 = !DILocation(line: 214, column: 23, scope: !379)
!708 = !DILocation(line: 214, column: 25, scope: !379)
!709 = !DILocation(line: 214, column: 43, scope: !379)
!710 = !DILocation(line: 214, column: 36, scope: !379)
!711 = !DILocation(line: 214, column: 11, scope: !379)
!712 = !DILocation(line: 214, column: 13, scope: !379)
!713 = !DILocation(line: 214, column: 18, scope: !379)
!714 = !DILocation(line: 215, column: 30, scope: !379)
!715 = !DILocation(line: 215, column: 36, scope: !379)
!716 = !DILocation(line: 215, column: 13, scope: !379)
!717 = !DILocation(line: 215, column: 18, scope: !379)
!718 = !DILocation(line: 223, column: 37, scope: !379)
!719 = !DILocation(line: 223, column: 45, scope: !379)
!720 = !DILocation(line: 223, column: 49, scope: !379)
!721 = !DILocation(line: 225, column: 24, scope: !379)
!722 = !DILocation(line: 225, column: 11, scope: !379)
!723 = !DILocation(line: 225, column: 15, scope: !379)
!724 = !DILocation(line: 226, column: 5, scope: !379)
!725 = !DILocation(line: 224, column: 19, scope: !379)
!726 = !DILocation(line: 224, column: 17, scope: !379)
!727 = !DILocation(line: 209, column: 20, scope: !379)
!728 = distinct !{!728, !693, !724, !135}
!729 = !DILocation(line: 227, column: 16, scope: !379)
!730 = !DILocation(line: 227, column: 20, scope: !379)
!731 = !DILocation(line: 227, column: 28, scope: !379)
!732 = !DILocation(line: 227, column: 26, scope: !379)
!733 = !DILocation(line: 227, column: 7, scope: !379)
!734 = !DILocation(line: 227, column: 11, scope: !379)
!735 = !DILocation(line: 228, column: 9, scope: !379)
!736 = !DILocation(line: 229, column: 18, scope: !379)
!737 = !DILocation(line: 229, column: 14, scope: !379)
!738 = !DILocation(line: 229, column: 9, scope: !379)
!739 = !DILocation(line: 230, column: 14, scope: !379)
!740 = !DILocation(line: 230, column: 5, scope: !379)
!741 = !DILocation(line: 231, column: 1, scope: !379)
!742 = distinct !DISubprogram(name: "__divmoddi4", scope: !41, file: !41, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !128)
!743 = !DILocation(line: 22, column: 14, scope: !742)
!744 = !DILocation(line: 23, column: 16, scope: !742)
!745 = !DILocation(line: 23, column: 12, scope: !742)
!746 = !DILocation(line: 23, column: 8, scope: !742)
!747 = !DILocation(line: 24, column: 3, scope: !742)
!748 = distinct !DISubprogram(name: "__divmodsi4", scope: !43, file: !43, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !128)
!749 = !DILocation(line: 22, column: 14, scope: !748)
!750 = !DILocation(line: 23, column: 16, scope: !748)
!751 = !DILocation(line: 23, column: 12, scope: !748)
!752 = !DILocation(line: 23, column: 8, scope: !748)
!753 = !DILocation(line: 24, column: 3, scope: !748)
!754 = distinct !DISubprogram(name: "__divsi3", scope: !45, file: !45, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !128)
!755 = !DILocation(line: 25, column: 20, scope: !754)
!756 = !DILocation(line: 26, column: 20, scope: !754)
!757 = !DILocation(line: 27, column: 12, scope: !754)
!758 = !DILocation(line: 27, column: 19, scope: !754)
!759 = !DILocation(line: 28, column: 12, scope: !754)
!760 = !DILocation(line: 28, column: 19, scope: !754)
!761 = !DILocation(line: 29, column: 9, scope: !754)
!762 = !DILocation(line: 36, column: 22, scope: !754)
!763 = !DILocation(line: 36, column: 33, scope: !754)
!764 = !DILocation(line: 36, column: 40, scope: !754)
!765 = !DILocation(line: 36, column: 5, scope: !754)
!766 = distinct !DISubprogram(name: "__ffsdi2", scope: !49, file: !49, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !128)
!767 = !DILocation(line: 25, column: 7, scope: !766)
!768 = !DILocation(line: 25, column: 11, scope: !766)
!769 = !DILocation(line: 26, column: 13, scope: !766)
!770 = !DILocation(line: 26, column: 17, scope: !766)
!771 = !DILocation(line: 26, column: 9, scope: !766)
!772 = !DILocation(line: 28, column: 15, scope: !766)
!773 = !DILocation(line: 28, column: 17, scope: !766)
!774 = !DILocation(line: 28, column: 22, scope: !766)
!775 = !DILocation(line: 28, column: 13, scope: !766)
!776 = !DILocation(line: 29, column: 13, scope: !766)
!777 = !DILocation(line: 30, column: 32, scope: !766)
!778 = !DILocation(line: 30, column: 34, scope: !766)
!779 = !DILocation(line: 30, column: 16, scope: !766)
!780 = !DILocation(line: 30, column: 40, scope: !766)
!781 = !DILocation(line: 30, column: 9, scope: !766)
!782 = !DILocation(line: 32, column: 30, scope: !766)
!783 = !DILocation(line: 32, column: 12, scope: !766)
!784 = !DILocation(line: 32, column: 35, scope: !766)
!785 = !DILocation(line: 32, column: 5, scope: !766)
!786 = !DILocation(line: 0, scope: !766)
!787 = !DILocation(line: 33, column: 1, scope: !766)
!788 = distinct !DISubprogram(name: "__ffssi2", scope: !51, file: !51, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !128)
!789 = !DILocation(line: 24, column: 11, scope: !788)
!790 = !DILocation(line: 24, column: 9, scope: !788)
!791 = !DILocation(line: 26, column: 9, scope: !788)
!792 = !DILocation(line: 28, column: 12, scope: !788)
!793 = !DILocation(line: 28, column: 29, scope: !788)
!794 = !DILocation(line: 28, column: 5, scope: !788)
!795 = !DILocation(line: 0, scope: !788)
!796 = !DILocation(line: 29, column: 1, scope: !788)
!797 = distinct !DISubprogram(name: "__lshrdi3", scope: !57, file: !57, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !128)
!798 = !DILocation(line: 29, column: 11, scope: !797)
!799 = !DILocation(line: 29, column: 15, scope: !797)
!800 = !DILocation(line: 30, column: 11, scope: !797)
!801 = !DILocation(line: 30, column: 9, scope: !797)
!802 = !DILocation(line: 32, column: 16, scope: !797)
!803 = !DILocation(line: 32, column: 18, scope: !797)
!804 = !DILocation(line: 32, column: 23, scope: !797)
!805 = !DILocation(line: 33, column: 30, scope: !797)
!806 = !DILocation(line: 33, column: 32, scope: !797)
!807 = !DILocation(line: 33, column: 43, scope: !797)
!808 = !DILocation(line: 33, column: 37, scope: !797)
!809 = !DILocation(line: 33, column: 18, scope: !797)
!810 = !DILocation(line: 33, column: 22, scope: !797)
!811 = !DILocation(line: 34, column: 5, scope: !797)
!812 = !DILocation(line: 37, column: 15, scope: !797)
!813 = !DILocation(line: 37, column: 13, scope: !797)
!814 = !DILocation(line: 38, column: 13, scope: !797)
!815 = !DILocation(line: 39, column: 32, scope: !797)
!816 = !DILocation(line: 39, column: 34, scope: !797)
!817 = !DILocation(line: 39, column: 39, scope: !797)
!818 = !DILocation(line: 39, column: 16, scope: !797)
!819 = !DILocation(line: 39, column: 18, scope: !797)
!820 = !DILocation(line: 39, column: 24, scope: !797)
!821 = !DILocation(line: 40, column: 31, scope: !797)
!822 = !DILocation(line: 40, column: 33, scope: !797)
!823 = !DILocation(line: 40, column: 55, scope: !797)
!824 = !DILocation(line: 40, column: 38, scope: !797)
!825 = !DILocation(line: 40, column: 72, scope: !797)
!826 = !DILocation(line: 40, column: 76, scope: !797)
!827 = !DILocation(line: 40, column: 61, scope: !797)
!828 = !DILocation(line: 40, column: 18, scope: !797)
!829 = !DILocation(line: 40, column: 22, scope: !797)
!830 = !DILocation(line: 42, column: 19, scope: !797)
!831 = !DILocation(line: 42, column: 5, scope: !797)
!832 = !DILocation(line: 0, scope: !797)
!833 = !DILocation(line: 43, column: 1, scope: !797)
!834 = distinct !DISubprogram(name: "__moddi3", scope: !61, file: !61, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !128)
!835 = !DILocation(line: 24, column: 17, scope: !834)
!836 = !DILocation(line: 25, column: 11, scope: !834)
!837 = !DILocation(line: 26, column: 12, scope: !834)
!838 = !DILocation(line: 26, column: 17, scope: !834)
!839 = !DILocation(line: 28, column: 5, scope: !834)
!840 = !DILocation(line: 29, column: 21, scope: !834)
!841 = !DILocation(line: 29, column: 23, scope: !834)
!842 = !DILocation(line: 29, column: 28, scope: !834)
!843 = !DILocation(line: 29, column: 5, scope: !834)
!844 = distinct !DISubprogram(name: "__modsi3", scope: !63, file: !63, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !128)
!845 = !DILocation(line: 22, column: 16, scope: !844)
!846 = !DILocation(line: 22, column: 31, scope: !844)
!847 = !DILocation(line: 22, column: 14, scope: !844)
!848 = !DILocation(line: 22, column: 5, scope: !844)
!849 = distinct !DISubprogram(name: "__mulvdi3", scope: !67, file: !67, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !128)
!850 = !DILocation(line: 27, column: 11, scope: !849)
!851 = !DILocation(line: 27, column: 9, scope: !849)
!852 = !DILocation(line: 29, column: 15, scope: !849)
!853 = !DILocation(line: 29, column: 20, scope: !849)
!854 = !DILocation(line: 29, column: 25, scope: !849)
!855 = !DILocation(line: 29, column: 13, scope: !849)
!856 = !DILocation(line: 30, column: 13, scope: !849)
!857 = !DILocation(line: 31, column: 9, scope: !849)
!858 = !DILocation(line: 33, column: 11, scope: !849)
!859 = !DILocation(line: 33, column: 9, scope: !849)
!860 = !DILocation(line: 35, column: 15, scope: !849)
!861 = !DILocation(line: 35, column: 20, scope: !849)
!862 = !DILocation(line: 35, column: 25, scope: !849)
!863 = !DILocation(line: 35, column: 13, scope: !849)
!864 = !DILocation(line: 36, column: 13, scope: !849)
!865 = !DILocation(line: 37, column: 9, scope: !849)
!866 = !DILocation(line: 39, column: 19, scope: !849)
!867 = !DILocation(line: 40, column: 23, scope: !849)
!868 = !DILocation(line: 40, column: 29, scope: !849)
!869 = !DILocation(line: 41, column: 19, scope: !849)
!870 = !DILocation(line: 42, column: 23, scope: !849)
!871 = !DILocation(line: 42, column: 29, scope: !849)
!872 = !DILocation(line: 43, column: 15, scope: !849)
!873 = !DILocation(line: 43, column: 19, scope: !849)
!874 = !DILocation(line: 43, column: 28, scope: !849)
!875 = !DILocation(line: 43, column: 9, scope: !849)
!876 = !DILocation(line: 44, column: 9, scope: !849)
!877 = !DILocation(line: 45, column: 12, scope: !849)
!878 = !DILocation(line: 45, column: 9, scope: !849)
!879 = !DILocation(line: 47, column: 25, scope: !849)
!880 = !DILocation(line: 47, column: 19, scope: !849)
!881 = !DILocation(line: 47, column: 13, scope: !849)
!882 = !DILocation(line: 48, column: 13, scope: !849)
!883 = !DILocation(line: 49, column: 5, scope: !849)
!884 = !DILocation(line: 52, column: 27, scope: !849)
!885 = !DILocation(line: 52, column: 25, scope: !849)
!886 = !DILocation(line: 52, column: 19, scope: !849)
!887 = !DILocation(line: 52, column: 13, scope: !849)
!888 = !DILocation(line: 53, column: 13, scope: !849)
!889 = !DILocation(line: 55, column: 5, scope: !849)
!890 = !DILocation(line: 0, scope: !849)
!891 = !DILocation(line: 56, column: 1, scope: !849)
!892 = distinct !DISubprogram(name: "__mulvsi3", scope: !69, file: !69, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !128)
!893 = !DILocation(line: 27, column: 11, scope: !892)
!894 = !DILocation(line: 27, column: 9, scope: !892)
!895 = !DILocation(line: 29, column: 15, scope: !892)
!896 = !DILocation(line: 29, column: 20, scope: !892)
!897 = !DILocation(line: 29, column: 25, scope: !892)
!898 = !DILocation(line: 29, column: 13, scope: !892)
!899 = !DILocation(line: 30, column: 13, scope: !892)
!900 = !DILocation(line: 31, column: 9, scope: !892)
!901 = !DILocation(line: 33, column: 11, scope: !892)
!902 = !DILocation(line: 33, column: 9, scope: !892)
!903 = !DILocation(line: 35, column: 15, scope: !892)
!904 = !DILocation(line: 35, column: 20, scope: !892)
!905 = !DILocation(line: 35, column: 25, scope: !892)
!906 = !DILocation(line: 35, column: 13, scope: !892)
!907 = !DILocation(line: 36, column: 13, scope: !892)
!908 = !DILocation(line: 37, column: 9, scope: !892)
!909 = !DILocation(line: 39, column: 19, scope: !892)
!910 = !DILocation(line: 40, column: 23, scope: !892)
!911 = !DILocation(line: 40, column: 29, scope: !892)
!912 = !DILocation(line: 41, column: 19, scope: !892)
!913 = !DILocation(line: 42, column: 23, scope: !892)
!914 = !DILocation(line: 42, column: 29, scope: !892)
!915 = !DILocation(line: 43, column: 15, scope: !892)
!916 = !DILocation(line: 43, column: 19, scope: !892)
!917 = !DILocation(line: 43, column: 28, scope: !892)
!918 = !DILocation(line: 43, column: 9, scope: !892)
!919 = !DILocation(line: 44, column: 9, scope: !892)
!920 = !DILocation(line: 45, column: 12, scope: !892)
!921 = !DILocation(line: 45, column: 9, scope: !892)
!922 = !DILocation(line: 47, column: 25, scope: !892)
!923 = !DILocation(line: 47, column: 19, scope: !892)
!924 = !DILocation(line: 47, column: 13, scope: !892)
!925 = !DILocation(line: 48, column: 13, scope: !892)
!926 = !DILocation(line: 49, column: 5, scope: !892)
!927 = !DILocation(line: 52, column: 27, scope: !892)
!928 = !DILocation(line: 52, column: 25, scope: !892)
!929 = !DILocation(line: 52, column: 19, scope: !892)
!930 = !DILocation(line: 52, column: 13, scope: !892)
!931 = !DILocation(line: 53, column: 13, scope: !892)
!932 = !DILocation(line: 55, column: 5, scope: !892)
!933 = !DILocation(line: 0, scope: !892)
!934 = !DILocation(line: 56, column: 1, scope: !892)
!935 = distinct !DISubprogram(name: "__paritydi2", scope: !73, file: !73, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !128)
!936 = !DILocation(line: 23, column: 7, scope: !935)
!937 = !DILocation(line: 23, column: 11, scope: !935)
!938 = !DILocation(line: 24, column: 26, scope: !935)
!939 = !DILocation(line: 24, column: 28, scope: !935)
!940 = !DILocation(line: 24, column: 39, scope: !935)
!941 = !DILocation(line: 24, column: 33, scope: !935)
!942 = !DILocation(line: 24, column: 12, scope: !935)
!943 = !DILocation(line: 24, column: 5, scope: !935)
!944 = distinct !DISubprogram(name: "__paritysi2", scope: !75, file: !75, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !128)
!945 = !DILocation(line: 23, column: 12, scope: !944)
!946 = !DILocation(line: 23, column: 7, scope: !944)
!947 = !DILocation(line: 24, column: 12, scope: !944)
!948 = !DILocation(line: 24, column: 7, scope: !944)
!949 = !DILocation(line: 25, column: 12, scope: !944)
!950 = !DILocation(line: 25, column: 7, scope: !944)
!951 = !DILocation(line: 26, column: 26, scope: !944)
!952 = !DILocation(line: 26, column: 20, scope: !944)
!953 = !DILocation(line: 26, column: 34, scope: !944)
!954 = !DILocation(line: 26, column: 5, scope: !944)
!955 = distinct !DISubprogram(name: "__popcountdi2", scope: !79, file: !79, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !128)
!956 = !DILocation(line: 23, column: 20, scope: !955)
!957 = !DILocation(line: 23, column: 26, scope: !955)
!958 = !DILocation(line: 23, column: 13, scope: !955)
!959 = !DILocation(line: 25, column: 15, scope: !955)
!960 = !DILocation(line: 25, column: 21, scope: !955)
!961 = !DILocation(line: 25, column: 52, scope: !955)
!962 = !DILocation(line: 25, column: 46, scope: !955)
!963 = !DILocation(line: 27, column: 20, scope: !955)
!964 = !DILocation(line: 27, column: 14, scope: !955)
!965 = !DILocation(line: 27, column: 27, scope: !955)
!966 = !DILocation(line: 29, column: 34, scope: !955)
!967 = !DILocation(line: 29, column: 28, scope: !955)
!968 = !DILocation(line: 29, column: 16, scope: !955)
!969 = !DILocation(line: 32, column: 16, scope: !955)
!970 = !DILocation(line: 32, column: 11, scope: !955)
!971 = !DILocation(line: 35, column: 20, scope: !955)
!972 = !DILocation(line: 35, column: 15, scope: !955)
!973 = !DILocation(line: 35, column: 27, scope: !955)
!974 = !DILocation(line: 35, column: 5, scope: !955)
!975 = distinct !DISubprogram(name: "__popcountsi2", scope: !81, file: !81, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !128)
!976 = !DILocation(line: 23, column: 17, scope: !975)
!977 = !DILocation(line: 23, column: 23, scope: !975)
!978 = !DILocation(line: 23, column: 11, scope: !975)
!979 = !DILocation(line: 25, column: 13, scope: !975)
!980 = !DILocation(line: 25, column: 19, scope: !975)
!981 = !DILocation(line: 25, column: 38, scope: !975)
!982 = !DILocation(line: 25, column: 33, scope: !975)
!983 = !DILocation(line: 27, column: 17, scope: !975)
!984 = !DILocation(line: 27, column: 12, scope: !975)
!985 = !DILocation(line: 27, column: 24, scope: !975)
!986 = !DILocation(line: 29, column: 17, scope: !975)
!987 = !DILocation(line: 29, column: 12, scope: !975)
!988 = !DILocation(line: 32, column: 20, scope: !975)
!989 = !DILocation(line: 32, column: 15, scope: !975)
!990 = !DILocation(line: 32, column: 27, scope: !975)
!991 = !DILocation(line: 32, column: 5, scope: !975)
!992 = distinct !DISubprogram(name: "__subvdi3", scope: !85, file: !85, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !128)
!993 = !DILocation(line: 24, column: 27, scope: !992)
!994 = !DILocation(line: 25, column: 11, scope: !992)
!995 = !DILocation(line: 25, column: 9, scope: !992)
!996 = !DILocation(line: 27, column: 15, scope: !992)
!997 = !DILocation(line: 27, column: 13, scope: !992)
!998 = !DILocation(line: 28, column: 13, scope: !992)
!999 = !DILocation(line: 29, column: 5, scope: !992)
!1000 = !DILocation(line: 32, column: 15, scope: !992)
!1001 = !DILocation(line: 32, column: 13, scope: !992)
!1002 = !DILocation(line: 33, column: 13, scope: !992)
!1003 = !DILocation(line: 35, column: 5, scope: !992)
!1004 = distinct !DISubprogram(name: "__subvsi3", scope: !87, file: !87, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !128)
!1005 = !DILocation(line: 24, column: 27, scope: !1004)
!1006 = !DILocation(line: 25, column: 11, scope: !1004)
!1007 = !DILocation(line: 25, column: 9, scope: !1004)
!1008 = !DILocation(line: 27, column: 15, scope: !1004)
!1009 = !DILocation(line: 27, column: 13, scope: !1004)
!1010 = !DILocation(line: 28, column: 13, scope: !1004)
!1011 = !DILocation(line: 29, column: 5, scope: !1004)
!1012 = !DILocation(line: 32, column: 15, scope: !1004)
!1013 = !DILocation(line: 32, column: 13, scope: !1004)
!1014 = !DILocation(line: 33, column: 13, scope: !1004)
!1015 = !DILocation(line: 35, column: 5, scope: !1004)
!1016 = distinct !DISubprogram(name: "__ucmpdi2", scope: !91, file: !91, line: 23, type: !127, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !128)
!1017 = !DILocation(line: 26, column: 7, scope: !1016)
!1018 = !DILocation(line: 26, column: 11, scope: !1016)
!1019 = !DILocation(line: 28, column: 7, scope: !1016)
!1020 = !DILocation(line: 28, column: 11, scope: !1016)
!1021 = !DILocation(line: 29, column: 11, scope: !1016)
!1022 = !DILocation(line: 29, column: 13, scope: !1016)
!1023 = !DILocation(line: 29, column: 22, scope: !1016)
!1024 = !DILocation(line: 29, column: 24, scope: !1016)
!1025 = !DILocation(line: 29, column: 18, scope: !1016)
!1026 = !DILocation(line: 29, column: 9, scope: !1016)
!1027 = !DILocation(line: 30, column: 9, scope: !1016)
!1028 = !DILocation(line: 31, column: 11, scope: !1016)
!1029 = !DILocation(line: 31, column: 13, scope: !1016)
!1030 = !DILocation(line: 31, column: 22, scope: !1016)
!1031 = !DILocation(line: 31, column: 24, scope: !1016)
!1032 = !DILocation(line: 31, column: 18, scope: !1016)
!1033 = !DILocation(line: 31, column: 9, scope: !1016)
!1034 = !DILocation(line: 32, column: 9, scope: !1016)
!1035 = !DILocation(line: 33, column: 13, scope: !1016)
!1036 = !DILocation(line: 33, column: 23, scope: !1016)
!1037 = !DILocation(line: 33, column: 17, scope: !1016)
!1038 = !DILocation(line: 33, column: 9, scope: !1016)
!1039 = !DILocation(line: 34, column: 9, scope: !1016)
!1040 = !DILocation(line: 35, column: 13, scope: !1016)
!1041 = !DILocation(line: 35, column: 23, scope: !1016)
!1042 = !DILocation(line: 35, column: 17, scope: !1016)
!1043 = !DILocation(line: 35, column: 9, scope: !1016)
!1044 = !DILocation(line: 36, column: 9, scope: !1016)
!1045 = !DILocation(line: 37, column: 5, scope: !1016)
!1046 = !DILocation(line: 0, scope: !1016)
!1047 = !DILocation(line: 38, column: 1, scope: !1016)
!1048 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !91, file: !91, line: 46, type: !127, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !128)
!1049 = !DILocation(line: 48, column: 9, scope: !1048)
!1050 = !DILocation(line: 48, column: 25, scope: !1048)
!1051 = !DILocation(line: 48, column: 2, scope: !1048)
!1052 = distinct !DISubprogram(name: "__udivdi3", scope: !95, file: !95, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !128)
!1053 = !DILocation(line: 22, column: 12, scope: !1052)
!1054 = !DILocation(line: 22, column: 5, scope: !1052)
!1055 = distinct !DISubprogram(name: "__udivmodsi4", scope: !99, file: !99, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !128)
!1056 = !DILocation(line: 22, column: 14, scope: !1055)
!1057 = !DILocation(line: 23, column: 16, scope: !1055)
!1058 = !DILocation(line: 23, column: 12, scope: !1055)
!1059 = !DILocation(line: 23, column: 8, scope: !1055)
!1060 = !DILocation(line: 24, column: 3, scope: !1055)
!1061 = distinct !DISubprogram(name: "__udivsi3", scope: !103, file: !103, line: 25, type: !127, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !128)
!1062 = !DILocation(line: 32, column: 11, scope: !1061)
!1063 = !DILocation(line: 32, column: 9, scope: !1061)
!1064 = !DILocation(line: 33, column: 9, scope: !1061)
!1065 = !DILocation(line: 34, column: 11, scope: !1061)
!1066 = !DILocation(line: 34, column: 9, scope: !1061)
!1067 = !DILocation(line: 35, column: 9, scope: !1061)
!1068 = !DILocation(line: 36, column: 10, scope: !1061)
!1069 = !DILocation(line: 36, column: 29, scope: !1061)
!1070 = !DILocation(line: 36, column: 27, scope: !1061)
!1071 = !DILocation(line: 38, column: 12, scope: !1061)
!1072 = !DILocation(line: 38, column: 9, scope: !1061)
!1073 = !DILocation(line: 39, column: 9, scope: !1061)
!1074 = !DILocation(line: 40, column: 12, scope: !1061)
!1075 = !DILocation(line: 40, column: 9, scope: !1061)
!1076 = !DILocation(line: 41, column: 9, scope: !1061)
!1077 = !DILocation(line: 42, column: 5, scope: !1061)
!1078 = !DILocation(line: 45, column: 28, scope: !1061)
!1079 = !DILocation(line: 45, column: 11, scope: !1061)
!1080 = !DILocation(line: 46, column: 11, scope: !1061)
!1081 = !DILocation(line: 48, column: 5, scope: !1061)
!1082 = !DILocation(line: 0, scope: !1061)
!1083 = !DILocation(line: 48, column: 15, scope: !1061)
!1084 = !DILocation(line: 51, column: 22, scope: !1061)
!1085 = !DILocation(line: 60, column: 41, scope: !1061)
!1086 = !DILocation(line: 63, column: 5, scope: !1061)
!1087 = !DILocation(line: 62, column: 16, scope: !1061)
!1088 = !DILocation(line: 62, column: 11, scope: !1061)
!1089 = !DILocation(line: 61, column: 19, scope: !1061)
!1090 = !DILocation(line: 52, column: 16, scope: !1061)
!1091 = !DILocation(line: 52, column: 22, scope: !1061)
!1092 = !DILocation(line: 48, column: 20, scope: !1061)
!1093 = distinct !{!1093, !1081, !1086, !135}
!1094 = !DILocation(line: 64, column: 12, scope: !1061)
!1095 = !DILocation(line: 64, column: 18, scope: !1061)
!1096 = !DILocation(line: 65, column: 5, scope: !1061)
!1097 = !DILocation(line: 66, column: 1, scope: !1061)
!1098 = distinct !DISubprogram(name: "__umoddi3", scope: !107, file: !107, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !128)
!1099 = !DILocation(line: 23, column: 5, scope: !1098)
!1100 = !DILocation(line: 24, column: 12, scope: !1098)
!1101 = !DILocation(line: 24, column: 5, scope: !1098)
!1102 = distinct !DISubprogram(name: "__umodsi3", scope: !109, file: !109, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !128)
!1103 = !DILocation(line: 22, column: 16, scope: !1102)
!1104 = !DILocation(line: 22, column: 32, scope: !1102)
!1105 = !DILocation(line: 22, column: 14, scope: !1102)
!1106 = !DILocation(line: 22, column: 5, scope: !1102)
!1107 = distinct !DISubprogram(name: "memcpy", scope: !113, file: !113, line: 3, type: !127, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !128)
!1108 = !DILocation(line: 8, column: 6, scope: !1107)
!1109 = !DILocation(line: 0, scope: !1107)
!1110 = !DILocation(line: 8, column: 19, scope: !1107)
!1111 = !DILocation(line: 8, column: 2, scope: !1107)
!1112 = !DILocation(line: 9, column: 21, scope: !1107)
!1113 = !DILocation(line: 9, column: 3, scope: !1107)
!1114 = !DILocation(line: 9, column: 19, scope: !1107)
!1115 = !DILocation(line: 10, column: 2, scope: !1107)
!1116 = !DILocation(line: 8, column: 26, scope: !1107)
!1117 = distinct !{!1117, !1111, !1115, !135}
!1118 = !DILocation(line: 11, column: 1, scope: !1107)
!1119 = distinct !DISubprogram(name: "memset", scope: !113, file: !113, line: 13, type: !127, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !128)
!1120 = !DILocation(line: 17, column: 6, scope: !1119)
!1121 = !DILocation(line: 0, scope: !1119)
!1122 = !DILocation(line: 17, column: 19, scope: !1119)
!1123 = !DILocation(line: 17, column: 2, scope: !1119)
!1124 = !DILocation(line: 18, column: 13, scope: !1119)
!1125 = !DILocation(line: 18, column: 3, scope: !1119)
!1126 = !DILocation(line: 18, column: 11, scope: !1119)
!1127 = !DILocation(line: 19, column: 2, scope: !1119)
!1128 = !DILocation(line: 17, column: 26, scope: !1119)
!1129 = distinct !{!1129, !1123, !1127, !135}
!1130 = !DILocation(line: 20, column: 2, scope: !1119)
