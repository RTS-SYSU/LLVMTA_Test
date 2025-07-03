; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.DATA = type { i32, i32 }
%union.dwords = type { i64 }

@data = dso_local global [15 x %struct.DATA] [%struct.DATA { i32 1, i32 100 }, %struct.DATA { i32 5, i32 200 }, %struct.DATA { i32 6, i32 300 }, %struct.DATA { i32 7, i32 700 }, %struct.DATA { i32 8, i32 900 }, %struct.DATA { i32 9, i32 250 }, %struct.DATA { i32 10, i32 400 }, %struct.DATA { i32 11, i32 600 }, %struct.DATA { i32 12, i32 800 }, %struct.DATA { i32 13, i32 1500 }, %struct.DATA { i32 14, i32 1200 }, %struct.DATA { i32 15, i32 110 }, %struct.DATA { i32 16, i32 140 }, %struct.DATA { i32 17, i32 133 }, %struct.DATA { i32 18, i32 10 }], align 4, !dbg !0
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
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !137 {
entry:
  %call = call arm_aapcs_vfpcc i32 @binary_search(i32 noundef 8) #4, !dbg !141
  ret i32 %call, !dbg !142
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binary_search(i32 noundef %x) #0 !dbg !143 {
entry:
  call void @llvm.dbg.value(metadata i32 %x, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 0, metadata !148, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 14, metadata !149, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 0, metadata !150, metadata !DIExpression()), !dbg !147
  br label %while.cond, !dbg !151

while.cond:                                       ; preds = %while.body, %entry
  call void @llvm.dbg.value(metadata i32 undef, metadata !149, metadata !DIExpression()), !dbg !147
  br i1 false, label %while.body, label %while.end, !dbg !151

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !151, !llvm.loop !152

while.end:                                        ; preds = %while.cond
  ret i32 0, !dbg !155
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #1 !dbg !156 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !158
  br i1 %cmp, label %if.then, label %if.end, !dbg !159

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !160
  unreachable, !dbg !160

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !161
  ret i64 %0, !dbg !162
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #2 !dbg !163 {
entry:
  unreachable, !dbg !164
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #1 !dbg !165 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !166
  br i1 %cmp, label %if.then, label %if.end, !dbg !167

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !168
  unreachable, !dbg !168

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !169
  ret i32 %0, !dbg !170
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !171 {
entry:
  %add = add i64 %a, %b, !dbg !172
  %cmp = icmp sgt i64 %b, -1, !dbg !173
  br i1 %cmp, label %if.then, label %if.else, !dbg !174

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !175
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !176

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !177
  unreachable, !dbg !177

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !178

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !179
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !180

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !181
  unreachable, !dbg !181

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !182
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !183 {
entry:
  %add = add i32 %a, %b, !dbg !184
  %cmp = icmp sgt i32 %b, -1, !dbg !185
  br i1 %cmp, label %if.then, label %if.else, !dbg !186

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !187
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !188

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !189
  unreachable, !dbg !189

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !190

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !191
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !192

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !193
  unreachable, !dbg !193

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !194
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #1 !dbg !195 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !196
  store i64 %a, i64* %all, align 8, !dbg !197
  %and = and i32 %b, 32, !dbg !198
  %tobool.not = icmp eq i32 %and, 0, !dbg !198
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !199

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !200
  store i32 0, i32* %low, align 8, !dbg !201
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !202
  %0 = load i32, i32* %low2, align 8, !dbg !202
  %sub = add nsw i32 %b, -32, !dbg !203
  %shl = shl i32 %0, %sub, !dbg !204
  %s3 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !205
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s3, i32 0, i32 1, !dbg !206
  store i32 %shl, i32* %high, align 4, !dbg !207
  br label %if.end18, !dbg !208

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !209
  br i1 %cmp, label %if.then4, label %if.end, !dbg !210

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !211

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !212
  %1 = load i32, i32* %low6, align 8, !dbg !212
  %shl7 = shl i32 %1, %b, !dbg !213
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !214
  store i32 %shl7, i32* %low9, align 8, !dbg !215
  %s10 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !216
  %high11 = getelementptr inbounds %struct.DATA, %struct.DATA* %s10, i32 0, i32 1, !dbg !217
  %2 = load i32, i32* %high11, align 4, !dbg !217
  %shl12 = shl i32 %2, %b, !dbg !218
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !219
  %3 = load i32, i32* %low14, align 8, !dbg !219
  %sub15 = sub nsw i32 32, %b, !dbg !220
  %shr = lshr i32 %3, %sub15, !dbg !221
  %or = or i32 %shl12, %shr, !dbg !222
  %s16 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !223
  %high17 = getelementptr inbounds %struct.DATA, %struct.DATA* %s16, i32 0, i32 1, !dbg !224
  store i32 %or, i32* %high17, align 4, !dbg !225
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !226
  %4 = load i64, i64* %all19, align 8, !dbg !226
  br label %return, !dbg !227

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !228
  ret i64 %retval.0, !dbg !229
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !230 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !231
  store i64 %a, i64* %all, align 8, !dbg !232
  %and = and i32 %b, 32, !dbg !233
  %tobool.not = icmp eq i32 %and, 0, !dbg !233
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !234

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.DATA*, !dbg !235
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !236
  %0 = load i32, i32* %high, align 4, !dbg !236
  %shr = ashr i32 %0, 31, !dbg !237
  %s1 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !238
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !239
  store i32 %shr, i32* %high2, align 4, !dbg !240
  %s3 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !241
  %high4 = getelementptr inbounds %struct.DATA, %struct.DATA* %s3, i32 0, i32 1, !dbg !242
  %1 = load i32, i32* %high4, align 4, !dbg !242
  %sub = add nsw i32 %b, -32, !dbg !243
  %shr5 = ashr i32 %1, %sub, !dbg !244
  %low = bitcast %union.dwords* %result to i32*, !dbg !245
  store i32 %shr5, i32* %low, align 8, !dbg !246
  br label %if.end21, !dbg !247

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !248
  br i1 %cmp, label %if.then7, label %if.end, !dbg !249

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !250

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !251
  %high9 = getelementptr inbounds %struct.DATA, %struct.DATA* %s8, i32 0, i32 1, !dbg !252
  %2 = load i32, i32* %high9, align 4, !dbg !252
  %shr10 = ashr i32 %2, %b, !dbg !253
  %s11 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !254
  %high12 = getelementptr inbounds %struct.DATA, %struct.DATA* %s11, i32 0, i32 1, !dbg !255
  store i32 %shr10, i32* %high12, align 4, !dbg !256
  %s13 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !257
  %high14 = getelementptr inbounds %struct.DATA, %struct.DATA* %s13, i32 0, i32 1, !dbg !258
  %3 = load i32, i32* %high14, align 4, !dbg !258
  %sub15 = sub nsw i32 32, %b, !dbg !259
  %shl = shl i32 %3, %sub15, !dbg !260
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !261
  %4 = load i32, i32* %low17, align 8, !dbg !261
  %shr18 = lshr i32 %4, %b, !dbg !262
  %or = or i32 %shl, %shr18, !dbg !263
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !264
  store i32 %or, i32* %low20, align 8, !dbg !265
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !266
  %5 = load i64, i64* %all22, align 8, !dbg !266
  br label %return, !dbg !267

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !268
  ret i64 %retval.0, !dbg !269
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #1 !dbg !270 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !271
  store i64 %a, i64* %all, align 8, !dbg !272
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !273
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !274
  %0 = load i32, i32* %high, align 4, !dbg !274
  %cmp = icmp eq i32 %0, 0, !dbg !275
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !276
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !277
  %1 = load i32, i32* %high2, align 4, !dbg !277
  %low = bitcast %union.dwords* %x to i32*, !dbg !278
  %2 = load i32, i32* %low, align 8, !dbg !278
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !279
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !280, !range !281
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !282
  %add = add nuw nsw i32 %4, %and5, !dbg !283
  ret i32 %add, !dbg !284
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #1 !dbg !285 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !286
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !287
  %sub = sub nuw nsw i32 16, %shl, !dbg !288
  %shr = lshr i32 %a, %sub, !dbg !289
  %and1 = and i32 %shr, 65280, !dbg !290
  %cmp2 = icmp eq i32 %and1, 0, !dbg !291
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !292
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !293
  %shr6 = lshr i32 %shr, %sub5, !dbg !294
  %add = or i32 %shl, %shl4, !dbg !295
  %and7 = and i32 %shr6, 240, !dbg !296
  %cmp8 = icmp eq i32 %and7, 0, !dbg !297
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !298
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !299
  %shr12 = lshr i32 %shr6, %sub11, !dbg !300
  %add13 = or i32 %add, %shl10, !dbg !301
  %and14 = and i32 %shr12, 12, !dbg !302
  %cmp15 = icmp eq i32 %and14, 0, !dbg !303
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !304
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !305
  %shr19 = lshr i32 %shr12, %sub18, !dbg !306
  %add20 = or i32 %add13, %shl17, !dbg !307
  %sub21 = sub i32 2, %shr19, !dbg !308
  %and22 = lshr i32 %shr19, 1, !dbg !309
  %0 = or i32 %and22, -2, !dbg !309
  %.neg = add nsw i32 %0, 1, !dbg !309
  %and26 = and i32 %sub21, %.neg, !dbg !310
  %add27 = add i32 %add20, %and26, !dbg !311
  ret i32 %add27, !dbg !312
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !313 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !314
  store i64 %a, i64* %all, align 8, !dbg !315
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !316
  store i64 %b, i64* %all1, align 8, !dbg !317
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !318
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !319
  %0 = load i32, i32* %high, align 4, !dbg !319
  %s2 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !320
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !321
  %1 = load i32, i32* %high3, align 4, !dbg !321
  %cmp = icmp slt i32 %0, %1, !dbg !322
  br i1 %cmp, label %if.then, label %if.end, !dbg !323

if.then:                                          ; preds = %entry
  br label %return, !dbg !324

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !325
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !326
  %2 = load i32, i32* %high5, align 4, !dbg !326
  %s6 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !327
  %high7 = getelementptr inbounds %struct.DATA, %struct.DATA* %s6, i32 0, i32 1, !dbg !328
  %3 = load i32, i32* %high7, align 4, !dbg !328
  %cmp8 = icmp sgt i32 %2, %3, !dbg !329
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !330

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !331

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !332
  %4 = load i32, i32* %low, align 8, !dbg !332
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !333
  %5 = load i32, i32* %low13, align 8, !dbg !333
  %cmp14 = icmp ult i32 %4, %5, !dbg !334
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !335

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !336

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !337
  %6 = load i32, i32* %low18, align 8, !dbg !337
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !338
  %7 = load i32, i32* %low20, align 8, !dbg !338
  %cmp21 = icmp ugt i32 %6, %7, !dbg !339
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !340

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !341

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !342

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !343
  ret i32 %retval.0, !dbg !344
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !345 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !346
  %sub = add nsw i32 %call, -1, !dbg !347
  ret i32 %sub, !dbg !348
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #1 !dbg !349 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !350
  store i64 %a, i64* %all, align 8, !dbg !351
  %low = bitcast %union.dwords* %x to i32*, !dbg !352
  %0 = load i32, i32* %low, align 8, !dbg !352
  %cmp = icmp eq i32 %0, 0, !dbg !353
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !354
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !355
  %1 = load i32, i32* %high, align 4, !dbg !355
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !356
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !357, !range !281
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !358
  %add = add nuw nsw i32 %3, %and5, !dbg !359
  ret i32 %add, !dbg !360
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #1 !dbg !361 {
entry:
  %and = and i32 %a, 65535, !dbg !362
  %cmp = icmp eq i32 %and, 0, !dbg !363
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !364
  %shr = lshr i32 %a, %shl, !dbg !365
  %and1 = and i32 %shr, 255, !dbg !366
  %cmp2 = icmp eq i32 %and1, 0, !dbg !367
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !368
  %shr5 = lshr i32 %shr, %shl4, !dbg !369
  %add = or i32 %shl, %shl4, !dbg !370
  %and6 = and i32 %shr5, 15, !dbg !371
  %cmp7 = icmp eq i32 %and6, 0, !dbg !372
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !373
  %shr10 = lshr i32 %shr5, %shl9, !dbg !374
  %add11 = or i32 %add, %shl9, !dbg !375
  %and12 = and i32 %shr10, 3, !dbg !376
  %cmp13 = icmp eq i32 %and12, 0, !dbg !377
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !378
  %shr16 = lshr i32 %shr10, %shl15, !dbg !379
  %add18 = or i32 %add11, %shl15, !dbg !380
  %and17 = lshr i32 %shr16, 1, !dbg !381
  %shr19 = and i32 %and17, 1, !dbg !381
  %sub = sub nuw nsw i32 2, %shr19, !dbg !382
  %0 = or i32 %shr16, -2, !dbg !383
  %.neg = add nsw i32 %0, 1, !dbg !383
  %and24 = and i32 %sub, %.neg, !dbg !384
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !385
  ret i32 %add25, !dbg !386
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !387 {
entry:
  %shr = ashr i64 %a, 63, !dbg !388
  %shr1 = ashr i64 %b, 63, !dbg !389
  %xor = xor i64 %shr, %a, !dbg !390
  %sub = sub nsw i64 %xor, %shr, !dbg !391
  %xor2 = xor i64 %shr1, %b, !dbg !392
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !393
  %xor4 = xor i64 %shr, %shr1, !dbg !394
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !395
  %xor5 = xor i64 %call, %xor4, !dbg !396
  %sub6 = sub i64 %xor5, %xor4, !dbg !397
  ret i64 %sub6, !dbg !398
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !399 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !400
  store i64 %a, i64* %all, align 8, !dbg !401
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !402
  store i64 %b, i64* %all1, align 8, !dbg !403
  %s = bitcast %union.dwords* %n to %struct.DATA*, !dbg !404
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !405
  %0 = load i32, i32* %high, align 4, !dbg !405
  %cmp = icmp eq i32 %0, 0, !dbg !406
  br i1 %cmp, label %if.then, label %if.end23, !dbg !407

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !408
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !409
  %1 = load i32, i32* %high3, align 4, !dbg !409
  %cmp4 = icmp eq i32 %1, 0, !dbg !410
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !411

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !412
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !412

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !413
  %2 = load i32, i32* %low, align 8, !dbg !413
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !414
  %3 = load i32, i32* %low9, align 8, !dbg !414
  %rem10 = urem i32 %2, %3, !dbg !415
  %conv = zext i32 %rem10 to i64, !dbg !416
  store i64 %conv, i64* %rem, align 8, !dbg !417
  br label %if.end, !dbg !418

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !419
  %4 = load i32, i32* %low12, align 8, !dbg !419
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !420
  %5 = load i32, i32* %low14, align 8, !dbg !420
  %div = udiv i32 %4, %5, !dbg !421
  %conv15 = zext i32 %div to i64, !dbg !422
  br label %return, !dbg !423

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !424
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !424

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !425
  %6 = load i32, i32* %low20, align 8, !dbg !425
  %conv21 = zext i32 %6 to i64, !dbg !426
  store i64 %conv21, i64* %rem, align 8, !dbg !427
  br label %if.end22, !dbg !428

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !429

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !430
  %7 = load i32, i32* %low25, align 8, !dbg !430
  %cmp26 = icmp eq i32 %7, 0, !dbg !431
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !432

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !433
  %high30 = getelementptr inbounds %struct.DATA, %struct.DATA* %s29, i32 0, i32 1, !dbg !434
  %8 = load i32, i32* %high30, align 4, !dbg !434
  %cmp31 = icmp eq i32 %8, 0, !dbg !435
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !436

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !437
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !437

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !438
  %high37 = getelementptr inbounds %struct.DATA, %struct.DATA* %s36, i32 0, i32 1, !dbg !439
  %9 = load i32, i32* %high37, align 4, !dbg !439
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !440
  %10 = load i32, i32* %low39, align 8, !dbg !440
  %rem40 = urem i32 %9, %10, !dbg !441
  %conv41 = zext i32 %rem40 to i64, !dbg !442
  store i64 %conv41, i64* %rem, align 8, !dbg !443
  br label %if.end42, !dbg !444

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !445
  %high44 = getelementptr inbounds %struct.DATA, %struct.DATA* %s43, i32 0, i32 1, !dbg !446
  %11 = load i32, i32* %high44, align 4, !dbg !446
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !447
  %12 = load i32, i32* %low46, align 8, !dbg !447
  %div47 = udiv i32 %11, %12, !dbg !448
  %conv48 = zext i32 %div47 to i64, !dbg !449
  br label %return, !dbg !450

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !451
  %13 = load i32, i32* %low51, align 8, !dbg !451
  %cmp52 = icmp eq i32 %13, 0, !dbg !452
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !453

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !454
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !454

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !455
  %high58 = getelementptr inbounds %struct.DATA, %struct.DATA* %s57, i32 0, i32 1, !dbg !456
  %14 = load i32, i32* %high58, align 4, !dbg !456
  %s59 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !457
  %high60 = getelementptr inbounds %struct.DATA, %struct.DATA* %s59, i32 0, i32 1, !dbg !458
  %15 = load i32, i32* %high60, align 4, !dbg !458
  %rem61 = urem i32 %14, %15, !dbg !459
  %s62 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !460
  %high63 = getelementptr inbounds %struct.DATA, %struct.DATA* %s62, i32 0, i32 1, !dbg !461
  store i32 %rem61, i32* %high63, align 4, !dbg !462
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !463
  store i32 0, i32* %low65, align 8, !dbg !464
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !465
  %16 = load i64, i64* %all66, align 8, !dbg !465
  store i64 %16, i64* %rem, align 8, !dbg !466
  br label %if.end67, !dbg !467

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !468
  %high69 = getelementptr inbounds %struct.DATA, %struct.DATA* %s68, i32 0, i32 1, !dbg !469
  %17 = load i32, i32* %high69, align 4, !dbg !469
  %s70 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !470
  %high71 = getelementptr inbounds %struct.DATA, %struct.DATA* %s70, i32 0, i32 1, !dbg !471
  %18 = load i32, i32* %high71, align 4, !dbg !471
  %div72 = udiv i32 %17, %18, !dbg !472
  %conv73 = zext i32 %div72 to i64, !dbg !473
  br label %return, !dbg !474

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !475
  %high76 = getelementptr inbounds %struct.DATA, %struct.DATA* %s75, i32 0, i32 1, !dbg !476
  %19 = load i32, i32* %high76, align 4, !dbg !476
  %s77 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !477
  %high78 = getelementptr inbounds %struct.DATA, %struct.DATA* %s77, i32 0, i32 1, !dbg !478
  %20 = load i32, i32* %high78, align 4, !dbg !478
  %sub = add i32 %20, -1, !dbg !479
  %and = and i32 %19, %sub, !dbg !480
  %cmp79 = icmp eq i32 %and, 0, !dbg !481
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !482

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !483
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !483

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !484
  %21 = load i32, i32* %low85, align 8, !dbg !484
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !485
  store i32 %21, i32* %low87, align 8, !dbg !486
  %s88 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !487
  %high89 = getelementptr inbounds %struct.DATA, %struct.DATA* %s88, i32 0, i32 1, !dbg !488
  %22 = load i32, i32* %high89, align 4, !dbg !488
  %s90 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !489
  %high91 = getelementptr inbounds %struct.DATA, %struct.DATA* %s90, i32 0, i32 1, !dbg !490
  %23 = load i32, i32* %high91, align 4, !dbg !490
  %sub92 = add i32 %23, -1, !dbg !491
  %and93 = and i32 %22, %sub92, !dbg !492
  %s94 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !493
  %high95 = getelementptr inbounds %struct.DATA, %struct.DATA* %s94, i32 0, i32 1, !dbg !494
  store i32 %and93, i32* %high95, align 4, !dbg !495
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !496
  %24 = load i64, i64* %all96, align 8, !dbg !496
  store i64 %24, i64* %rem, align 8, !dbg !497
  br label %if.end97, !dbg !498

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !499
  %high99 = getelementptr inbounds %struct.DATA, %struct.DATA* %s98, i32 0, i32 1, !dbg !500
  %25 = load i32, i32* %high99, align 4, !dbg !500
  %s100 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !501
  %high101 = getelementptr inbounds %struct.DATA, %struct.DATA* %s100, i32 0, i32 1, !dbg !502
  %26 = load i32, i32* %high101, align 4, !dbg !502
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !503, !range !281
  %shr = lshr i32 %25, %27, !dbg !504
  %conv102 = zext i32 %shr to i64, !dbg !505
  br label %return, !dbg !506

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !507
  %high105 = getelementptr inbounds %struct.DATA, %struct.DATA* %s104, i32 0, i32 1, !dbg !508
  %28 = load i32, i32* %high105, align 4, !dbg !508
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !509, !range !281
  %s106 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !510
  %high107 = getelementptr inbounds %struct.DATA, %struct.DATA* %s106, i32 0, i32 1, !dbg !511
  %30 = load i32, i32* %high107, align 4, !dbg !511
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !512, !range !281
  %sub108 = sub nsw i32 %29, %31, !dbg !513
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !514
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !515

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !516
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !516

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !517
  %32 = load i64, i64* %all114, align 8, !dbg !517
  store i64 %32, i64* %rem, align 8, !dbg !518
  br label %if.end115, !dbg !519

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !520

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !521
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !522
  store i32 0, i32* %low118, align 8, !dbg !523
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !524
  %33 = load i32, i32* %low120, align 8, !dbg !524
  %sub121 = sub nsw i32 31, %sub108, !dbg !525
  %shl = shl i32 %33, %sub121, !dbg !526
  %s122 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !527
  %high123 = getelementptr inbounds %struct.DATA, %struct.DATA* %s122, i32 0, i32 1, !dbg !528
  store i32 %shl, i32* %high123, align 4, !dbg !529
  %s124 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !530
  %high125 = getelementptr inbounds %struct.DATA, %struct.DATA* %s124, i32 0, i32 1, !dbg !531
  %34 = load i32, i32* %high125, align 4, !dbg !531
  %shr126 = lshr i32 %34, %inc, !dbg !532
  %s127 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !533
  %high128 = getelementptr inbounds %struct.DATA, %struct.DATA* %s127, i32 0, i32 1, !dbg !534
  store i32 %shr126, i32* %high128, align 4, !dbg !535
  %s129 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !536
  %high130 = getelementptr inbounds %struct.DATA, %struct.DATA* %s129, i32 0, i32 1, !dbg !537
  %35 = load i32, i32* %high130, align 4, !dbg !537
  %sub131 = sub nsw i32 31, %sub108, !dbg !538
  %shl132 = shl i32 %35, %sub131, !dbg !539
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !540
  %36 = load i32, i32* %low134, align 8, !dbg !540
  %shr135 = lshr i32 %36, %inc, !dbg !541
  %or = or i32 %shl132, %shr135, !dbg !542
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !543
  store i32 %or, i32* %low137, align 8, !dbg !544
  br label %if.end317, !dbg !545

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !546
  %high139 = getelementptr inbounds %struct.DATA, %struct.DATA* %s138, i32 0, i32 1, !dbg !547
  %37 = load i32, i32* %high139, align 4, !dbg !547
  %cmp140 = icmp eq i32 %37, 0, !dbg !548
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !549

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !550
  %38 = load i32, i32* %low144, align 8, !dbg !550
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !551, !range !281
  %cmp149 = icmp ult i32 %39, 2, !dbg !551
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !552

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !553
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !553

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !554
  %40 = load i32, i32* %low155, align 8, !dbg !554
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !555
  %41 = load i32, i32* %low157, align 8, !dbg !555
  %sub158 = add i32 %41, -1, !dbg !556
  %and159 = and i32 %40, %sub158, !dbg !557
  %conv160 = zext i32 %and159 to i64, !dbg !558
  store i64 %conv160, i64* %rem, align 8, !dbg !559
  br label %if.end161, !dbg !560

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !561
  %42 = load i32, i32* %low163, align 8, !dbg !561
  %cmp164 = icmp eq i32 %42, 1, !dbg !562
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !563

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !564
  %43 = load i64, i64* %all167, align 8, !dbg !564
  br label %return, !dbg !565

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !566
  %44 = load i32, i32* %low170, align 8, !dbg !566
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !567, !range !281
  %s171 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !568
  %high172 = getelementptr inbounds %struct.DATA, %struct.DATA* %s171, i32 0, i32 1, !dbg !569
  %46 = load i32, i32* %high172, align 4, !dbg !569
  %shr173 = lshr i32 %46, %45, !dbg !570
  %s174 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !571
  %high175 = getelementptr inbounds %struct.DATA, %struct.DATA* %s174, i32 0, i32 1, !dbg !572
  store i32 %shr173, i32* %high175, align 4, !dbg !573
  %s176 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !574
  %high177 = getelementptr inbounds %struct.DATA, %struct.DATA* %s176, i32 0, i32 1, !dbg !575
  %47 = load i32, i32* %high177, align 4, !dbg !575
  %sub178 = sub nuw nsw i32 32, %45, !dbg !576
  %shl179 = shl i32 %47, %sub178, !dbg !577
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !578
  %48 = load i32, i32* %low181, align 8, !dbg !578
  %shr182 = lshr i32 %48, %45, !dbg !579
  %or183 = or i32 %shl179, %shr182, !dbg !580
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !581
  store i32 %or183, i32* %low185, align 8, !dbg !582
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !583
  %49 = load i64, i64* %all186, align 8, !dbg !583
  br label %return, !dbg !584

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !585
  %50 = load i32, i32* %low189, align 8, !dbg !585
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !586, !range !281
  %add = add nuw nsw i32 %51, 33, !dbg !587
  %s190 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !588
  %high191 = getelementptr inbounds %struct.DATA, %struct.DATA* %s190, i32 0, i32 1, !dbg !589
  %52 = load i32, i32* %high191, align 4, !dbg !589
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !590, !range !281
  %sub192 = sub nsw i32 %add, %53, !dbg !591
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !592
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !593

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !594
  store i32 0, i32* %low197, align 8, !dbg !595
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !596
  %54 = load i32, i32* %low199, align 8, !dbg !596
  %s200 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !597
  %high201 = getelementptr inbounds %struct.DATA, %struct.DATA* %s200, i32 0, i32 1, !dbg !598
  store i32 %54, i32* %high201, align 4, !dbg !599
  %s202 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !600
  %high203 = getelementptr inbounds %struct.DATA, %struct.DATA* %s202, i32 0, i32 1, !dbg !601
  store i32 0, i32* %high203, align 4, !dbg !602
  %s204 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !603
  %high205 = getelementptr inbounds %struct.DATA, %struct.DATA* %s204, i32 0, i32 1, !dbg !604
  %55 = load i32, i32* %high205, align 4, !dbg !604
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !605
  store i32 %55, i32* %low207, align 8, !dbg !606
  br label %if.end262, !dbg !607

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !608
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !609

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !610
  store i32 0, i32* %low213, align 8, !dbg !611
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !612
  %56 = load i32, i32* %low215, align 8, !dbg !612
  %sub216 = sub nsw i32 32, %sub192, !dbg !613
  %shl217 = shl i32 %56, %sub216, !dbg !614
  %s218 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !615
  %high219 = getelementptr inbounds %struct.DATA, %struct.DATA* %s218, i32 0, i32 1, !dbg !616
  store i32 %shl217, i32* %high219, align 4, !dbg !617
  %s220 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !618
  %high221 = getelementptr inbounds %struct.DATA, %struct.DATA* %s220, i32 0, i32 1, !dbg !619
  %57 = load i32, i32* %high221, align 4, !dbg !619
  %shr222 = lshr i32 %57, %sub192, !dbg !620
  %s223 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !621
  %high224 = getelementptr inbounds %struct.DATA, %struct.DATA* %s223, i32 0, i32 1, !dbg !622
  store i32 %shr222, i32* %high224, align 4, !dbg !623
  %s225 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !624
  %high226 = getelementptr inbounds %struct.DATA, %struct.DATA* %s225, i32 0, i32 1, !dbg !625
  %58 = load i32, i32* %high226, align 4, !dbg !625
  %sub227 = sub nsw i32 32, %sub192, !dbg !626
  %shl228 = shl i32 %58, %sub227, !dbg !627
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !628
  %59 = load i32, i32* %low230, align 8, !dbg !628
  %shr231 = lshr i32 %59, %sub192, !dbg !629
  %or232 = or i32 %shl228, %shr231, !dbg !630
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !631
  store i32 %or232, i32* %low234, align 8, !dbg !632
  br label %if.end261, !dbg !633

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !634
  %60 = load i32, i32* %low237, align 8, !dbg !634
  %sub238 = sub nsw i32 64, %sub192, !dbg !635
  %shl239 = shl i32 %60, %sub238, !dbg !636
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !637
  store i32 %shl239, i32* %low241, align 8, !dbg !638
  %s242 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !639
  %high243 = getelementptr inbounds %struct.DATA, %struct.DATA* %s242, i32 0, i32 1, !dbg !640
  %61 = load i32, i32* %high243, align 4, !dbg !640
  %sub244 = sub nsw i32 64, %sub192, !dbg !641
  %shl245 = shl i32 %61, %sub244, !dbg !642
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !643
  %62 = load i32, i32* %low247, align 8, !dbg !643
  %sub248 = add nsw i32 %sub192, -32, !dbg !644
  %shr249 = lshr i32 %62, %sub248, !dbg !645
  %or250 = or i32 %shl245, %shr249, !dbg !646
  %s251 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !647
  %high252 = getelementptr inbounds %struct.DATA, %struct.DATA* %s251, i32 0, i32 1, !dbg !648
  store i32 %or250, i32* %high252, align 4, !dbg !649
  %s253 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !650
  %high254 = getelementptr inbounds %struct.DATA, %struct.DATA* %s253, i32 0, i32 1, !dbg !651
  store i32 0, i32* %high254, align 4, !dbg !652
  %s255 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !653
  %high256 = getelementptr inbounds %struct.DATA, %struct.DATA* %s255, i32 0, i32 1, !dbg !654
  %63 = load i32, i32* %high256, align 4, !dbg !654
  %sub257 = add nsw i32 %sub192, -32, !dbg !655
  %shr258 = lshr i32 %63, %sub257, !dbg !656
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !657
  store i32 %shr258, i32* %low260, align 8, !dbg !658
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !659

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !660
  %high265 = getelementptr inbounds %struct.DATA, %struct.DATA* %s264, i32 0, i32 1, !dbg !661
  %64 = load i32, i32* %high265, align 4, !dbg !661
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !662, !range !281
  %s266 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !663
  %high267 = getelementptr inbounds %struct.DATA, %struct.DATA* %s266, i32 0, i32 1, !dbg !664
  %66 = load i32, i32* %high267, align 4, !dbg !664
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !665, !range !281
  %sub268 = sub nsw i32 %65, %67, !dbg !666
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !667
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !668

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !669
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !669

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !670
  %68 = load i64, i64* %all274, align 8, !dbg !670
  store i64 %68, i64* %rem, align 8, !dbg !671
  br label %if.end275, !dbg !672

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !673

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !674
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !675
  store i32 0, i32* %low279, align 8, !dbg !676
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !677
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !678

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !679
  %69 = load i32, i32* %low284, align 8, !dbg !679
  %s285 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !680
  %high286 = getelementptr inbounds %struct.DATA, %struct.DATA* %s285, i32 0, i32 1, !dbg !681
  store i32 %69, i32* %high286, align 4, !dbg !682
  %s287 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !683
  %high288 = getelementptr inbounds %struct.DATA, %struct.DATA* %s287, i32 0, i32 1, !dbg !684
  store i32 0, i32* %high288, align 4, !dbg !685
  %s289 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !686
  %high290 = getelementptr inbounds %struct.DATA, %struct.DATA* %s289, i32 0, i32 1, !dbg !687
  %70 = load i32, i32* %high290, align 4, !dbg !687
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !688
  store i32 %70, i32* %low292, align 8, !dbg !689
  br label %if.end315, !dbg !690

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !691
  %71 = load i32, i32* %low295, align 8, !dbg !691
  %sub296 = sub nsw i32 31, %sub268, !dbg !692
  %shl297 = shl i32 %71, %sub296, !dbg !693
  %s298 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !694
  %high299 = getelementptr inbounds %struct.DATA, %struct.DATA* %s298, i32 0, i32 1, !dbg !695
  store i32 %shl297, i32* %high299, align 4, !dbg !696
  %s300 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !697
  %high301 = getelementptr inbounds %struct.DATA, %struct.DATA* %s300, i32 0, i32 1, !dbg !698
  %72 = load i32, i32* %high301, align 4, !dbg !698
  %shr302 = lshr i32 %72, %inc277, !dbg !699
  %s303 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !700
  %high304 = getelementptr inbounds %struct.DATA, %struct.DATA* %s303, i32 0, i32 1, !dbg !701
  store i32 %shr302, i32* %high304, align 4, !dbg !702
  %s305 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !703
  %high306 = getelementptr inbounds %struct.DATA, %struct.DATA* %s305, i32 0, i32 1, !dbg !704
  %73 = load i32, i32* %high306, align 4, !dbg !704
  %sub307 = sub nsw i32 31, %sub268, !dbg !705
  %shl308 = shl i32 %73, %sub307, !dbg !706
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !707
  %74 = load i32, i32* %low310, align 8, !dbg !707
  %shr311 = lshr i32 %74, %inc277, !dbg !708
  %or312 = or i32 %shl308, %shr311, !dbg !709
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !710
  store i32 %or312, i32* %low314, align 8, !dbg !711
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !712
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !712
  br label %for.cond, !dbg !713

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !712
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !712
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !714
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !713

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !715
  %high321 = getelementptr inbounds %struct.DATA, %struct.DATA* %s320, i32 0, i32 1, !dbg !716
  %75 = load i32, i32* %high321, align 4, !dbg !716
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !717
  %76 = load i32, i32* %low324, align 8, !dbg !717
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !718
  %s327 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !719
  %high328 = getelementptr inbounds %struct.DATA, %struct.DATA* %s327, i32 0, i32 1, !dbg !720
  store i32 %or326, i32* %high328, align 4, !dbg !721
  %s332 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !722
  %high333 = getelementptr inbounds %struct.DATA, %struct.DATA* %s332, i32 0, i32 1, !dbg !723
  %77 = load i32, i32* %high333, align 4, !dbg !723
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !724
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !725
  store i32 %or335, i32* %low337, align 8, !dbg !726
  %s338 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !727
  %high339 = getelementptr inbounds %struct.DATA, %struct.DATA* %s338, i32 0, i32 1, !dbg !728
  %78 = load i32, i32* %high339, align 4, !dbg !728
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !729
  %79 = load i32, i32* %low342, align 8, !dbg !729
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !730
  %s345 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !731
  %high346 = getelementptr inbounds %struct.DATA, %struct.DATA* %s345, i32 0, i32 1, !dbg !732
  store i32 %or344, i32* %high346, align 4, !dbg !733
  %shl349 = shl i32 %79, 1, !dbg !734
  %or350 = or i32 %shl349, %carry.0, !dbg !735
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !736
  store i32 %or350, i32* %low352, align 8, !dbg !737
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !738
  %80 = load i64, i64* %all354, align 8, !dbg !738
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !739
  %81 = load i64, i64* %all355, align 8, !dbg !739
  %82 = xor i64 %81, -1, !dbg !740
  %sub357 = add i64 %80, %82, !dbg !740
  %isneg = icmp slt i64 %sub357, 0, !dbg !741
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !741
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !742
  %sub364 = sub i64 %81, %and362, !dbg !743
  store i64 %sub364, i64* %all363, align 8, !dbg !743
  br label %for.inc, !dbg !744

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !745
  %conv360 = trunc i64 %and359 to i32, !dbg !746
  %dec = add i32 %sr.2, -1, !dbg !747
  br label %for.cond, !dbg !713, !llvm.loop !748

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !749
  %83 = load i64, i64* %all365, align 8, !dbg !749
  %shl366 = shl i64 %83, 1, !dbg !750
  %conv367 = zext i32 %carry.0 to i64, !dbg !751
  %or368 = or i64 %shl366, %conv367, !dbg !752
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !753
  store i64 %or368, i64* %all369, align 8, !dbg !754
  %tobool370.not = icmp eq i64* %rem, null, !dbg !755
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !755

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !756
  %84 = load i64, i64* %all372, align 8, !dbg !756
  store i64 %84, i64* %rem, align 8, !dbg !757
  br label %if.end373, !dbg !758

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !759
  %85 = load i64, i64* %all374, align 8, !dbg !759
  br label %return, !dbg !760

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !712
  ret i64 %retval.0, !dbg !761
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !762 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !763
  %mul = mul nsw i64 %call, %b, !dbg !764
  %sub = sub nsw i64 %a, %mul, !dbg !765
  store i64 %sub, i64* %rem, align 8, !dbg !766
  ret i64 %call, !dbg !767
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !768 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !769
  %mul = mul nsw i32 %call, %b, !dbg !770
  %sub = sub nsw i32 %a, %mul, !dbg !771
  store i32 %sub, i32* %rem, align 4, !dbg !772
  ret i32 %call, !dbg !773
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !774 {
entry:
  %shr = ashr i32 %a, 31, !dbg !775
  %shr1 = ashr i32 %b, 31, !dbg !776
  %xor = xor i32 %shr, %a, !dbg !777
  %sub = sub nsw i32 %xor, %shr, !dbg !778
  %xor2 = xor i32 %shr1, %b, !dbg !779
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !780
  %xor4 = xor i32 %shr, %shr1, !dbg !781
  %div = udiv i32 %sub, %sub3, !dbg !782
  %xor5 = xor i32 %div, %xor4, !dbg !783
  %sub6 = sub i32 %xor5, %xor4, !dbg !784
  ret i32 %sub6, !dbg !785
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #1 !dbg !786 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !787
  store i64 %a, i64* %all, align 8, !dbg !788
  %low = bitcast %union.dwords* %x to i32*, !dbg !789
  %0 = load i32, i32* %low, align 8, !dbg !789
  %cmp = icmp eq i32 %0, 0, !dbg !790
  br i1 %cmp, label %if.then, label %if.end6, !dbg !791

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !792
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !793
  %1 = load i32, i32* %high, align 4, !dbg !793
  %cmp2 = icmp eq i32 %1, 0, !dbg !794
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !795

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !796

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !797
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !798
  %2 = load i32, i32* %high5, align 4, !dbg !798
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !799, !range !281
  %add = add nuw nsw i32 %3, 33, !dbg !800
  br label %return, !dbg !801

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !802
  %4 = load i32, i32* %low8, align 8, !dbg !802
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !803, !range !281
  %add9 = add nuw nsw i32 %5, 1, !dbg !804
  br label %return, !dbg !805

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !806
  ret i32 %retval.0, !dbg !807
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #1 !dbg !808 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !809
  br i1 %cmp, label %if.then, label %if.end, !dbg !810

if.then:                                          ; preds = %entry
  br label %return, !dbg !811

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !812, !range !281
  %add = add nuw nsw i32 %0, 1, !dbg !813
  br label %return, !dbg !814

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !815
  ret i32 %retval.0, !dbg !816
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !817 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !818
  store i64 %a, i64* %all, align 8, !dbg !819
  %and = and i32 %b, 32, !dbg !820
  %tobool.not = icmp eq i32 %and, 0, !dbg !820
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !821

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.DATA*, !dbg !822
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !823
  store i32 0, i32* %high, align 4, !dbg !824
  %s1 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !825
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !826
  %0 = load i32, i32* %high2, align 4, !dbg !826
  %sub = add nsw i32 %b, -32, !dbg !827
  %shr = lshr i32 %0, %sub, !dbg !828
  %low = bitcast %union.dwords* %result to i32*, !dbg !829
  store i32 %shr, i32* %low, align 8, !dbg !830
  br label %if.end18, !dbg !831

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !832
  br i1 %cmp, label %if.then4, label %if.end, !dbg !833

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !834

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !835
  %high6 = getelementptr inbounds %struct.DATA, %struct.DATA* %s5, i32 0, i32 1, !dbg !836
  %1 = load i32, i32* %high6, align 4, !dbg !836
  %shr7 = lshr i32 %1, %b, !dbg !837
  %s8 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !838
  %high9 = getelementptr inbounds %struct.DATA, %struct.DATA* %s8, i32 0, i32 1, !dbg !839
  store i32 %shr7, i32* %high9, align 4, !dbg !840
  %s10 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !841
  %high11 = getelementptr inbounds %struct.DATA, %struct.DATA* %s10, i32 0, i32 1, !dbg !842
  %2 = load i32, i32* %high11, align 4, !dbg !842
  %sub12 = sub nsw i32 32, %b, !dbg !843
  %shl = shl i32 %2, %sub12, !dbg !844
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !845
  %3 = load i32, i32* %low14, align 8, !dbg !845
  %shr15 = lshr i32 %3, %b, !dbg !846
  %or = or i32 %shl, %shr15, !dbg !847
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !848
  store i32 %or, i32* %low17, align 8, !dbg !849
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !850
  %4 = load i64, i64* %all19, align 8, !dbg !850
  br label %return, !dbg !851

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !852
  ret i64 %retval.0, !dbg !853
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !854 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !855
  %shr1 = ashr i64 %a, 63, !dbg !856
  %xor2 = xor i64 %shr1, %a, !dbg !857
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !858
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !859
  %1 = load i64, i64* %r, align 8, !dbg !860
  %xor4 = xor i64 %1, %shr1, !dbg !861
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !862
  ret i64 %sub5, !dbg !863
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !864 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !865
  %mul = mul nsw i32 %call, %b, !dbg !866
  %sub = sub nsw i32 %a, %mul, !dbg !867
  ret i32 %sub, !dbg !868
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !869 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !870
  br i1 %cmp, label %if.then, label %if.end4, !dbg !871

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !872
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !873

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !874
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !875

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !876

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !877
  unreachable, !dbg !877

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !878
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !879

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !880
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !881

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !882
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !883

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !884

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !885
  unreachable, !dbg !885

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !886
  %xor = xor i64 %shr, %a, !dbg !887
  %sub = sub nsw i64 %xor, %shr, !dbg !888
  %shr14 = ashr i64 %b, 63, !dbg !889
  %xor15 = xor i64 %shr14, %b, !dbg !890
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !891
  %cmp17 = icmp slt i64 %sub, 2, !dbg !892
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !893

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !894
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !895

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !896

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !897
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !898

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !899
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !900
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !901

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !902
  unreachable, !dbg !902

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !903

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !904
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !905
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !906
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !907

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !908
  unreachable, !dbg !908

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !909

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !910
  ret i64 %retval.0, !dbg !911
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !912 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !913
  br i1 %cmp, label %if.then, label %if.end4, !dbg !914

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !915
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !916

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !917
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !918

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !919

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !920
  unreachable, !dbg !920

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !921
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !922

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !923
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !924

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !925
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !926

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !927

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !928
  unreachable, !dbg !928

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !929
  %xor = xor i32 %shr, %a, !dbg !930
  %sub = sub nsw i32 %xor, %shr, !dbg !931
  %shr14 = ashr i32 %b, 31, !dbg !932
  %xor15 = xor i32 %shr14, %b, !dbg !933
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !934
  %cmp17 = icmp slt i32 %sub, 2, !dbg !935
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !936

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !937
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !938

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !939

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !940
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !941

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !942
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !943
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !944

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !945
  unreachable, !dbg !945

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !946

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !947
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !948
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !949
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !950

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !951
  unreachable, !dbg !951

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !952

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !953
  ret i32 %retval.0, !dbg !954
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #1 !dbg !955 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !956
  store i64 %a, i64* %all, align 8, !dbg !957
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !958
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !959
  %0 = load i32, i32* %high, align 4, !dbg !959
  %low = bitcast %union.dwords* %x to i32*, !dbg !960
  %1 = load i32, i32* %low, align 8, !dbg !960
  %xor = xor i32 %0, %1, !dbg !961
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !962
  ret i32 %call, !dbg !963
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #1 !dbg !964 {
entry:
  %shr = lshr i32 %a, 16, !dbg !965
  %xor = xor i32 %shr, %a, !dbg !966
  %shr1 = lshr i32 %xor, 8, !dbg !967
  %xor2 = xor i32 %xor, %shr1, !dbg !968
  %shr3 = lshr i32 %xor2, 4, !dbg !969
  %xor4 = xor i32 %xor2, %shr3, !dbg !970
  %and = and i32 %xor4, 15, !dbg !971
  %shr5 = lshr i32 27030, %and, !dbg !972
  %and6 = and i32 %shr5, 1, !dbg !973
  ret i32 %and6, !dbg !974
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #1 !dbg !975 {
entry:
  %shr = lshr i64 %a, 1, !dbg !976
  %and = and i64 %shr, 6148914691236517205, !dbg !977
  %sub = sub i64 %a, %and, !dbg !978
  %shr1 = lshr i64 %sub, 2, !dbg !979
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !980
  %and3 = and i64 %sub, 3689348814741910323, !dbg !981
  %add = add nuw nsw i64 %and2, %and3, !dbg !982
  %shr4 = lshr i64 %add, 4, !dbg !983
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !984
  %and6 = and i64 %add5, 1085102592571150095, !dbg !985
  %shr7 = lshr i64 %and6, 32, !dbg !986
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !987
  %conv = trunc i64 %add8 to i32, !dbg !988
  %shr9 = lshr i32 %conv, 16, !dbg !989
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !990
  %shr11 = lshr i32 %add10, 8, !dbg !991
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !992
  %and13 = and i32 %add12, 127, !dbg !993
  ret i32 %and13, !dbg !994
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #1 !dbg !995 {
entry:
  %shr = lshr i32 %a, 1, !dbg !996
  %and = and i32 %shr, 1431655765, !dbg !997
  %sub = sub i32 %a, %and, !dbg !998
  %shr1 = lshr i32 %sub, 2, !dbg !999
  %and2 = and i32 %shr1, 858993459, !dbg !1000
  %and3 = and i32 %sub, 858993459, !dbg !1001
  %add = add nuw nsw i32 %and2, %and3, !dbg !1002
  %shr4 = lshr i32 %add, 4, !dbg !1003
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1004
  %and6 = and i32 %add5, 252645135, !dbg !1005
  %shr7 = lshr i32 %and6, 16, !dbg !1006
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1007
  %shr9 = lshr i32 %add8, 8, !dbg !1008
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1009
  %and11 = and i32 %add10, 63, !dbg !1010
  ret i32 %and11, !dbg !1011
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1012 {
entry:
  %sub = sub i64 %a, %b, !dbg !1013
  %cmp = icmp sgt i64 %b, -1, !dbg !1014
  br i1 %cmp, label %if.then, label %if.else, !dbg !1015

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1016
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1017

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1018
  unreachable, !dbg !1018

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1019

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1020
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1021

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1022
  unreachable, !dbg !1022

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1023
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1024 {
entry:
  %sub = sub i32 %a, %b, !dbg !1025
  %cmp = icmp sgt i32 %b, -1, !dbg !1026
  br i1 %cmp, label %if.then, label %if.else, !dbg !1027

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1028
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1029

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1030
  unreachable, !dbg !1030

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1031

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1032
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1033

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1034
  unreachable, !dbg !1034

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1035
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !1036 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1037
  store i64 %a, i64* %all, align 8, !dbg !1038
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1039
  store i64 %b, i64* %all1, align 8, !dbg !1040
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1041
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1042
  %0 = load i32, i32* %high, align 4, !dbg !1042
  %s2 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !1043
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !1044
  %1 = load i32, i32* %high3, align 4, !dbg !1044
  %cmp = icmp ult i32 %0, %1, !dbg !1045
  br i1 %cmp, label %if.then, label %if.end, !dbg !1046

if.then:                                          ; preds = %entry
  br label %return, !dbg !1047

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1048
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !1049
  %2 = load i32, i32* %high5, align 4, !dbg !1049
  %s6 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !1050
  %high7 = getelementptr inbounds %struct.DATA, %struct.DATA* %s6, i32 0, i32 1, !dbg !1051
  %3 = load i32, i32* %high7, align 4, !dbg !1051
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1052
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1053

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1054

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1055
  %4 = load i32, i32* %low, align 8, !dbg !1055
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1056
  %5 = load i32, i32* %low13, align 8, !dbg !1056
  %cmp14 = icmp ult i32 %4, %5, !dbg !1057
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1058

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1059

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1060
  %6 = load i32, i32* %low18, align 8, !dbg !1060
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1061
  %7 = load i32, i32* %low20, align 8, !dbg !1061
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1062
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1063

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1064

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1065

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1066
  ret i32 %retval.0, !dbg !1067
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !1068 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1069
  %sub = add nsw i32 %call, -1, !dbg !1070
  ret i32 %sub, !dbg !1071
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1072 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !1073
  ret i64 %call, !dbg !1074
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !1075 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1076
  %mul = mul i32 %call, %b, !dbg !1077
  %sub = sub i32 %a, %mul, !dbg !1078
  store i32 %sub, i32* %rem, align 4, !dbg !1079
  ret i32 %call, !dbg !1080
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #1 !dbg !1081 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1082
  br i1 %cmp, label %if.then, label %if.end, !dbg !1083

if.then:                                          ; preds = %entry
  br label %return, !dbg !1084

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1085
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1086

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1087

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1088, !range !281
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1089, !range !281
  %sub = sub nsw i32 %0, %1, !dbg !1090
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1091
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1092

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1093

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1094
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1095

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1096

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1097
  %sub10 = sub nsw i32 31, %sub, !dbg !1098
  %shl = shl i32 %n, %sub10, !dbg !1099
  %shr = lshr i32 %n, %inc, !dbg !1100
  br label %for.cond, !dbg !1101

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1102
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1102
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1102
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1102
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1103
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1101

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1104
  %2 = xor i32 %or, -1, !dbg !1105
  %sub17 = add i32 %2, %d, !dbg !1105
  br label %for.inc, !dbg !1106

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1107
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1107
  %sub20 = sub i32 %or, %and19, !dbg !1108
  %and = lshr i32 %sub17, 31, !dbg !1109
  %shl14 = shl i32 %q.0, 1, !dbg !1110
  %or15 = or i32 %shl14, %carry.0, !dbg !1111
  %dec = add i32 %sr.0, -1, !dbg !1112
  br label %for.cond, !dbg !1101, !llvm.loop !1113

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1114
  %or22 = or i32 %shl21, %carry.0, !dbg !1115
  br label %return, !dbg !1116

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1102
  ret i32 %retval.0, !dbg !1117
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1118 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !1119
  %0 = load i64, i64* %r, align 8, !dbg !1120
  ret i64 %0, !dbg !1121
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1122 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1123
  %mul = mul i32 %call, %b, !dbg !1124
  %sub = sub i32 %a, %mul, !dbg !1125
  ret i32 %sub, !dbg !1126
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #1 !dbg !1127 {
entry:
  br label %for.cond, !dbg !1128

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1129
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1130
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1131

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1132
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1132
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1133
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1134
  br label %for.inc, !dbg !1135

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1136
  br label %for.cond, !dbg !1131, !llvm.loop !1137

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1138
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #1 !dbg !1139 {
entry:
  br label %for.cond, !dbg !1140

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1141
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1142
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1143

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1144
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1145
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1146
  br label %for.inc, !dbg !1147

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1148
  br label %for.cond, !dbg !1143, !llvm.loop !1149

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1150
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

!llvm.dbg.cu = !{!2, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124}
!llvm.ident = !{!126, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135, !136}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "data", scope: !2, file: !5, line: 53, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/bs/bs.c", directory: "/workspaces/llvmta/testcases/batchtest/binarysearch")
!4 = !{!0}
!5 = !DIFile(filename: "bs/bs.c", directory: "/workspaces/llvmta/testcases/batchtest")
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 960, elements: !12)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DATA", file: !5, line: 44, size: 64, elements: !8)
!8 = !{!9, !11}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !7, file: !5, line: 45, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !7, file: !5, line: 46, baseType: !10, size: 32, offset: 32)
!12 = !{!13}
!13 = !DISubrange(count: 15)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!59 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!99 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!117 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!119 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!121 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!123 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!125 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!126 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)"}
!127 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!128 = !{i32 7, !"Dwarf Version", i32 5}
!129 = !{i32 2, !"Debug Info Version", i32 3}
!130 = !{i32 1, !"wchar_size", i32 4}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 1, !"branch-target-enforcement", i32 0}
!133 = !{i32 1, !"sign-return-address", i32 0}
!134 = !{i32 1, !"sign-return-address-all", i32 0}
!135 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 59, type: !138, scopeLine: 59, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!138 = !DISubroutineType(types: !139)
!139 = !{!10}
!140 = !{}
!141 = !DILocation(line: 59, column: 21, scope: !137)
!142 = !DILocation(line: 59, column: 14, scope: !137)
!143 = distinct !DISubprogram(name: "binary_search", scope: !5, file: !5, line: 61, type: !144, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!144 = !DISubroutineType(types: !145)
!145 = !{!10, !10}
!146 = !DILocalVariable(name: "x", arg: 1, scope: !143, file: !5, line: 61, type: !10)
!147 = !DILocation(line: 0, scope: !143)
!148 = !DILocalVariable(name: "low", scope: !143, file: !5, line: 62, type: !10)
!149 = !DILocalVariable(name: "up", scope: !143, file: !5, line: 62, type: !10)
!150 = !DILocalVariable(name: "fvalue", scope: !143, file: !5, line: 62, type: !10)
!151 = !DILocation(line: 67, column: 3, scope: !143)
!152 = distinct !{!152, !151, !153, !154}
!153 = !DILocation(line: 70, column: 3, scope: !143)
!154 = !{!"llvm.loop.mustprogress"}
!155 = !DILocation(line: 71, column: 3, scope: !143)
!156 = distinct !DISubprogram(name: "__absvdi2", scope: !15, file: !15, line: 22, type: !157, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !140)
!157 = !DISubroutineType(types: !140)
!158 = !DILocation(line: 25, column: 11, scope: !156)
!159 = !DILocation(line: 25, column: 9, scope: !156)
!160 = !DILocation(line: 26, column: 9, scope: !156)
!161 = !DILocation(line: 28, column: 20, scope: !156)
!162 = !DILocation(line: 28, column: 5, scope: !156)
!163 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !67, file: !67, line: 57, type: !157, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !140)
!164 = !DILocation(line: 59, column: 1, scope: !163)
!165 = distinct !DISubprogram(name: "__absvsi2", scope: !17, file: !17, line: 22, type: !157, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !140)
!166 = !DILocation(line: 25, column: 11, scope: !165)
!167 = !DILocation(line: 25, column: 9, scope: !165)
!168 = !DILocation(line: 26, column: 9, scope: !165)
!169 = !DILocation(line: 28, column: 20, scope: !165)
!170 = !DILocation(line: 28, column: 5, scope: !165)
!171 = distinct !DISubprogram(name: "__addvdi3", scope: !21, file: !21, line: 22, type: !157, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !140)
!172 = !DILocation(line: 24, column: 27, scope: !171)
!173 = !DILocation(line: 25, column: 11, scope: !171)
!174 = !DILocation(line: 25, column: 9, scope: !171)
!175 = !DILocation(line: 27, column: 15, scope: !171)
!176 = !DILocation(line: 27, column: 13, scope: !171)
!177 = !DILocation(line: 28, column: 13, scope: !171)
!178 = !DILocation(line: 29, column: 5, scope: !171)
!179 = !DILocation(line: 32, column: 15, scope: !171)
!180 = !DILocation(line: 32, column: 13, scope: !171)
!181 = !DILocation(line: 33, column: 13, scope: !171)
!182 = !DILocation(line: 35, column: 5, scope: !171)
!183 = distinct !DISubprogram(name: "__addvsi3", scope: !23, file: !23, line: 22, type: !157, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !140)
!184 = !DILocation(line: 24, column: 27, scope: !183)
!185 = !DILocation(line: 25, column: 11, scope: !183)
!186 = !DILocation(line: 25, column: 9, scope: !183)
!187 = !DILocation(line: 27, column: 15, scope: !183)
!188 = !DILocation(line: 27, column: 13, scope: !183)
!189 = !DILocation(line: 28, column: 13, scope: !183)
!190 = !DILocation(line: 29, column: 5, scope: !183)
!191 = !DILocation(line: 32, column: 15, scope: !183)
!192 = !DILocation(line: 32, column: 13, scope: !183)
!193 = !DILocation(line: 33, column: 13, scope: !183)
!194 = !DILocation(line: 35, column: 5, scope: !183)
!195 = distinct !DISubprogram(name: "__ashldi3", scope: !27, file: !27, line: 24, type: !157, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !140)
!196 = !DILocation(line: 29, column: 11, scope: !195)
!197 = !DILocation(line: 29, column: 15, scope: !195)
!198 = !DILocation(line: 30, column: 11, scope: !195)
!199 = !DILocation(line: 30, column: 9, scope: !195)
!200 = !DILocation(line: 32, column: 18, scope: !195)
!201 = !DILocation(line: 32, column: 22, scope: !195)
!202 = !DILocation(line: 33, column: 33, scope: !195)
!203 = !DILocation(line: 33, column: 43, scope: !195)
!204 = !DILocation(line: 33, column: 37, scope: !195)
!205 = !DILocation(line: 33, column: 16, scope: !195)
!206 = !DILocation(line: 33, column: 18, scope: !195)
!207 = !DILocation(line: 33, column: 23, scope: !195)
!208 = !DILocation(line: 34, column: 5, scope: !195)
!209 = !DILocation(line: 37, column: 15, scope: !195)
!210 = !DILocation(line: 37, column: 13, scope: !195)
!211 = !DILocation(line: 38, column: 13, scope: !195)
!212 = !DILocation(line: 39, column: 33, scope: !195)
!213 = !DILocation(line: 39, column: 37, scope: !195)
!214 = !DILocation(line: 39, column: 18, scope: !195)
!215 = !DILocation(line: 39, column: 23, scope: !195)
!216 = !DILocation(line: 40, column: 32, scope: !195)
!217 = !DILocation(line: 40, column: 34, scope: !195)
!218 = !DILocation(line: 40, column: 39, scope: !195)
!219 = !DILocation(line: 40, column: 56, scope: !195)
!220 = !DILocation(line: 40, column: 77, scope: !195)
!221 = !DILocation(line: 40, column: 60, scope: !195)
!222 = !DILocation(line: 40, column: 45, scope: !195)
!223 = !DILocation(line: 40, column: 16, scope: !195)
!224 = !DILocation(line: 40, column: 18, scope: !195)
!225 = !DILocation(line: 40, column: 23, scope: !195)
!226 = !DILocation(line: 42, column: 19, scope: !195)
!227 = !DILocation(line: 42, column: 5, scope: !195)
!228 = !DILocation(line: 0, scope: !195)
!229 = !DILocation(line: 43, column: 1, scope: !195)
!230 = distinct !DISubprogram(name: "__ashrdi3", scope: !31, file: !31, line: 24, type: !157, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !140)
!231 = !DILocation(line: 29, column: 11, scope: !230)
!232 = !DILocation(line: 29, column: 15, scope: !230)
!233 = !DILocation(line: 30, column: 11, scope: !230)
!234 = !DILocation(line: 30, column: 9, scope: !230)
!235 = !DILocation(line: 33, column: 31, scope: !230)
!236 = !DILocation(line: 33, column: 33, scope: !230)
!237 = !DILocation(line: 33, column: 38, scope: !230)
!238 = !DILocation(line: 33, column: 16, scope: !230)
!239 = !DILocation(line: 33, column: 18, scope: !230)
!240 = !DILocation(line: 33, column: 23, scope: !230)
!241 = !DILocation(line: 34, column: 30, scope: !230)
!242 = !DILocation(line: 34, column: 32, scope: !230)
!243 = !DILocation(line: 34, column: 43, scope: !230)
!244 = !DILocation(line: 34, column: 37, scope: !230)
!245 = !DILocation(line: 34, column: 18, scope: !230)
!246 = !DILocation(line: 34, column: 22, scope: !230)
!247 = !DILocation(line: 35, column: 5, scope: !230)
!248 = !DILocation(line: 38, column: 15, scope: !230)
!249 = !DILocation(line: 38, column: 13, scope: !230)
!250 = !DILocation(line: 39, column: 13, scope: !230)
!251 = !DILocation(line: 40, column: 32, scope: !230)
!252 = !DILocation(line: 40, column: 34, scope: !230)
!253 = !DILocation(line: 40, column: 39, scope: !230)
!254 = !DILocation(line: 40, column: 16, scope: !230)
!255 = !DILocation(line: 40, column: 18, scope: !230)
!256 = !DILocation(line: 40, column: 24, scope: !230)
!257 = !DILocation(line: 41, column: 31, scope: !230)
!258 = !DILocation(line: 41, column: 33, scope: !230)
!259 = !DILocation(line: 41, column: 55, scope: !230)
!260 = !DILocation(line: 41, column: 38, scope: !230)
!261 = !DILocation(line: 41, column: 72, scope: !230)
!262 = !DILocation(line: 41, column: 76, scope: !230)
!263 = !DILocation(line: 41, column: 61, scope: !230)
!264 = !DILocation(line: 41, column: 18, scope: !230)
!265 = !DILocation(line: 41, column: 22, scope: !230)
!266 = !DILocation(line: 43, column: 19, scope: !230)
!267 = !DILocation(line: 43, column: 5, scope: !230)
!268 = !DILocation(line: 0, scope: !230)
!269 = !DILocation(line: 44, column: 1, scope: !230)
!270 = distinct !DISubprogram(name: "__clzdi2", scope: !35, file: !35, line: 22, type: !157, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !140)
!271 = !DILocation(line: 25, column: 7, scope: !270)
!272 = !DILocation(line: 25, column: 11, scope: !270)
!273 = !DILocation(line: 26, column: 26, scope: !270)
!274 = !DILocation(line: 26, column: 28, scope: !270)
!275 = !DILocation(line: 26, column: 33, scope: !270)
!276 = !DILocation(line: 27, column: 29, scope: !270)
!277 = !DILocation(line: 27, column: 31, scope: !270)
!278 = !DILocation(line: 27, column: 49, scope: !270)
!279 = !DILocation(line: 27, column: 42, scope: !270)
!280 = !DILocation(line: 27, column: 12, scope: !270)
!281 = !{i32 0, i32 33}
!282 = !DILocation(line: 28, column: 15, scope: !270)
!283 = !DILocation(line: 27, column: 59, scope: !270)
!284 = !DILocation(line: 27, column: 5, scope: !270)
!285 = distinct !DISubprogram(name: "__clzsi2", scope: !37, file: !37, line: 22, type: !157, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !140)
!286 = !DILocation(line: 25, column: 34, scope: !285)
!287 = !DILocation(line: 25, column: 40, scope: !285)
!288 = !DILocation(line: 26, column: 14, scope: !285)
!289 = !DILocation(line: 26, column: 7, scope: !285)
!290 = !DILocation(line: 29, column: 13, scope: !285)
!291 = !DILocation(line: 29, column: 23, scope: !285)
!292 = !DILocation(line: 29, column: 29, scope: !285)
!293 = !DILocation(line: 30, column: 13, scope: !285)
!294 = !DILocation(line: 30, column: 7, scope: !285)
!295 = !DILocation(line: 31, column: 7, scope: !285)
!296 = !DILocation(line: 33, column: 13, scope: !285)
!297 = !DILocation(line: 33, column: 21, scope: !285)
!298 = !DILocation(line: 33, column: 27, scope: !285)
!299 = !DILocation(line: 34, column: 13, scope: !285)
!300 = !DILocation(line: 34, column: 7, scope: !285)
!301 = !DILocation(line: 35, column: 7, scope: !285)
!302 = !DILocation(line: 37, column: 13, scope: !285)
!303 = !DILocation(line: 37, column: 20, scope: !285)
!304 = !DILocation(line: 37, column: 26, scope: !285)
!305 = !DILocation(line: 38, column: 13, scope: !285)
!306 = !DILocation(line: 38, column: 7, scope: !285)
!307 = !DILocation(line: 39, column: 7, scope: !285)
!308 = !DILocation(line: 52, column: 20, scope: !285)
!309 = !DILocation(line: 52, column: 37, scope: !285)
!310 = !DILocation(line: 52, column: 25, scope: !285)
!311 = !DILocation(line: 52, column: 14, scope: !285)
!312 = !DILocation(line: 52, column: 5, scope: !285)
!313 = distinct !DISubprogram(name: "__cmpdi2", scope: !41, file: !41, line: 23, type: !157, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !140)
!314 = !DILocation(line: 26, column: 7, scope: !313)
!315 = !DILocation(line: 26, column: 11, scope: !313)
!316 = !DILocation(line: 28, column: 7, scope: !313)
!317 = !DILocation(line: 28, column: 11, scope: !313)
!318 = !DILocation(line: 29, column: 11, scope: !313)
!319 = !DILocation(line: 29, column: 13, scope: !313)
!320 = !DILocation(line: 29, column: 22, scope: !313)
!321 = !DILocation(line: 29, column: 24, scope: !313)
!322 = !DILocation(line: 29, column: 18, scope: !313)
!323 = !DILocation(line: 29, column: 9, scope: !313)
!324 = !DILocation(line: 30, column: 9, scope: !313)
!325 = !DILocation(line: 31, column: 11, scope: !313)
!326 = !DILocation(line: 31, column: 13, scope: !313)
!327 = !DILocation(line: 31, column: 22, scope: !313)
!328 = !DILocation(line: 31, column: 24, scope: !313)
!329 = !DILocation(line: 31, column: 18, scope: !313)
!330 = !DILocation(line: 31, column: 9, scope: !313)
!331 = !DILocation(line: 32, column: 9, scope: !313)
!332 = !DILocation(line: 33, column: 13, scope: !313)
!333 = !DILocation(line: 33, column: 23, scope: !313)
!334 = !DILocation(line: 33, column: 17, scope: !313)
!335 = !DILocation(line: 33, column: 9, scope: !313)
!336 = !DILocation(line: 34, column: 9, scope: !313)
!337 = !DILocation(line: 35, column: 13, scope: !313)
!338 = !DILocation(line: 35, column: 23, scope: !313)
!339 = !DILocation(line: 35, column: 17, scope: !313)
!340 = !DILocation(line: 35, column: 9, scope: !313)
!341 = !DILocation(line: 36, column: 9, scope: !313)
!342 = !DILocation(line: 37, column: 5, scope: !313)
!343 = !DILocation(line: 0, scope: !313)
!344 = !DILocation(line: 38, column: 1, scope: !313)
!345 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !41, file: !41, line: 46, type: !157, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !140)
!346 = !DILocation(line: 48, column: 9, scope: !345)
!347 = !DILocation(line: 48, column: 24, scope: !345)
!348 = !DILocation(line: 48, column: 2, scope: !345)
!349 = distinct !DISubprogram(name: "__ctzdi2", scope: !45, file: !45, line: 22, type: !157, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !140)
!350 = !DILocation(line: 25, column: 7, scope: !349)
!351 = !DILocation(line: 25, column: 11, scope: !349)
!352 = !DILocation(line: 26, column: 28, scope: !349)
!353 = !DILocation(line: 26, column: 32, scope: !349)
!354 = !DILocation(line: 27, column: 29, scope: !349)
!355 = !DILocation(line: 27, column: 31, scope: !349)
!356 = !DILocation(line: 27, column: 41, scope: !349)
!357 = !DILocation(line: 27, column: 12, scope: !349)
!358 = !DILocation(line: 28, column: 18, scope: !349)
!359 = !DILocation(line: 27, column: 59, scope: !349)
!360 = !DILocation(line: 27, column: 5, scope: !349)
!361 = distinct !DISubprogram(name: "__ctzsi2", scope: !47, file: !47, line: 22, type: !157, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !140)
!362 = !DILocation(line: 25, column: 20, scope: !361)
!363 = !DILocation(line: 25, column: 34, scope: !361)
!364 = !DILocation(line: 25, column: 40, scope: !361)
!365 = !DILocation(line: 26, column: 7, scope: !361)
!366 = !DILocation(line: 29, column: 13, scope: !361)
!367 = !DILocation(line: 29, column: 23, scope: !361)
!368 = !DILocation(line: 29, column: 29, scope: !361)
!369 = !DILocation(line: 30, column: 7, scope: !361)
!370 = !DILocation(line: 31, column: 7, scope: !361)
!371 = !DILocation(line: 33, column: 13, scope: !361)
!372 = !DILocation(line: 33, column: 21, scope: !361)
!373 = !DILocation(line: 33, column: 27, scope: !361)
!374 = !DILocation(line: 34, column: 7, scope: !361)
!375 = !DILocation(line: 35, column: 7, scope: !361)
!376 = !DILocation(line: 37, column: 13, scope: !361)
!377 = !DILocation(line: 37, column: 20, scope: !361)
!378 = !DILocation(line: 37, column: 26, scope: !361)
!379 = !DILocation(line: 38, column: 7, scope: !361)
!380 = !DILocation(line: 40, column: 7, scope: !361)
!381 = !DILocation(line: 56, column: 25, scope: !361)
!382 = !DILocation(line: 56, column: 20, scope: !361)
!383 = !DILocation(line: 56, column: 44, scope: !361)
!384 = !DILocation(line: 56, column: 32, scope: !361)
!385 = !DILocation(line: 56, column: 14, scope: !361)
!386 = !DILocation(line: 56, column: 5, scope: !361)
!387 = distinct !DISubprogram(name: "__divdi3", scope: !51, file: !51, line: 20, type: !157, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !140)
!388 = !DILocation(line: 23, column: 20, scope: !387)
!389 = !DILocation(line: 24, column: 20, scope: !387)
!390 = !DILocation(line: 25, column: 12, scope: !387)
!391 = !DILocation(line: 25, column: 19, scope: !387)
!392 = !DILocation(line: 26, column: 12, scope: !387)
!393 = !DILocation(line: 26, column: 19, scope: !387)
!394 = !DILocation(line: 27, column: 9, scope: !387)
!395 = !DILocation(line: 28, column: 13, scope: !387)
!396 = !DILocation(line: 28, column: 44, scope: !387)
!397 = !DILocation(line: 28, column: 51, scope: !387)
!398 = !DILocation(line: 28, column: 5, scope: !387)
!399 = distinct !DISubprogram(name: "__udivmoddi4", scope: !109, file: !109, line: 24, type: !157, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !140)
!400 = !DILocation(line: 29, column: 7, scope: !399)
!401 = !DILocation(line: 29, column: 11, scope: !399)
!402 = !DILocation(line: 31, column: 7, scope: !399)
!403 = !DILocation(line: 31, column: 11, scope: !399)
!404 = !DILocation(line: 36, column: 11, scope: !399)
!405 = !DILocation(line: 36, column: 13, scope: !399)
!406 = !DILocation(line: 36, column: 18, scope: !399)
!407 = !DILocation(line: 36, column: 9, scope: !399)
!408 = !DILocation(line: 38, column: 15, scope: !399)
!409 = !DILocation(line: 38, column: 17, scope: !399)
!410 = !DILocation(line: 38, column: 22, scope: !399)
!411 = !DILocation(line: 38, column: 13, scope: !399)
!412 = !DILocation(line: 44, column: 17, scope: !399)
!413 = !DILocation(line: 45, column: 28, scope: !399)
!414 = !DILocation(line: 45, column: 38, scope: !399)
!415 = !DILocation(line: 45, column: 32, scope: !399)
!416 = !DILocation(line: 45, column: 24, scope: !399)
!417 = !DILocation(line: 45, column: 22, scope: !399)
!418 = !DILocation(line: 45, column: 17, scope: !399)
!419 = !DILocation(line: 46, column: 24, scope: !399)
!420 = !DILocation(line: 46, column: 34, scope: !399)
!421 = !DILocation(line: 46, column: 28, scope: !399)
!422 = !DILocation(line: 46, column: 20, scope: !399)
!423 = !DILocation(line: 46, column: 13, scope: !399)
!424 = !DILocation(line: 52, column: 13, scope: !399)
!425 = !DILocation(line: 53, column: 24, scope: !399)
!426 = !DILocation(line: 53, column: 20, scope: !399)
!427 = !DILocation(line: 53, column: 18, scope: !399)
!428 = !DILocation(line: 53, column: 13, scope: !399)
!429 = !DILocation(line: 54, column: 9, scope: !399)
!430 = !DILocation(line: 57, column: 13, scope: !399)
!431 = !DILocation(line: 57, column: 17, scope: !399)
!432 = !DILocation(line: 57, column: 9, scope: !399)
!433 = !DILocation(line: 59, column: 15, scope: !399)
!434 = !DILocation(line: 59, column: 17, scope: !399)
!435 = !DILocation(line: 59, column: 22, scope: !399)
!436 = !DILocation(line: 59, column: 13, scope: !399)
!437 = !DILocation(line: 65, column: 17, scope: !399)
!438 = !DILocation(line: 66, column: 26, scope: !399)
!439 = !DILocation(line: 66, column: 28, scope: !399)
!440 = !DILocation(line: 66, column: 39, scope: !399)
!441 = !DILocation(line: 66, column: 33, scope: !399)
!442 = !DILocation(line: 66, column: 24, scope: !399)
!443 = !DILocation(line: 66, column: 22, scope: !399)
!444 = !DILocation(line: 66, column: 17, scope: !399)
!445 = !DILocation(line: 67, column: 22, scope: !399)
!446 = !DILocation(line: 67, column: 24, scope: !399)
!447 = !DILocation(line: 67, column: 35, scope: !399)
!448 = !DILocation(line: 67, column: 29, scope: !399)
!449 = !DILocation(line: 67, column: 20, scope: !399)
!450 = !DILocation(line: 67, column: 13, scope: !399)
!451 = !DILocation(line: 70, column: 17, scope: !399)
!452 = !DILocation(line: 70, column: 21, scope: !399)
!453 = !DILocation(line: 70, column: 13, scope: !399)
!454 = !DILocation(line: 76, column: 17, scope: !399)
!455 = !DILocation(line: 78, column: 30, scope: !399)
!456 = !DILocation(line: 78, column: 32, scope: !399)
!457 = !DILocation(line: 78, column: 41, scope: !399)
!458 = !DILocation(line: 78, column: 43, scope: !399)
!459 = !DILocation(line: 78, column: 37, scope: !399)
!460 = !DILocation(line: 78, column: 19, scope: !399)
!461 = !DILocation(line: 78, column: 21, scope: !399)
!462 = !DILocation(line: 78, column: 26, scope: !399)
!463 = !DILocation(line: 79, column: 21, scope: !399)
!464 = !DILocation(line: 79, column: 25, scope: !399)
!465 = !DILocation(line: 80, column: 26, scope: !399)
!466 = !DILocation(line: 80, column: 22, scope: !399)
!467 = !DILocation(line: 81, column: 13, scope: !399)
!468 = !DILocation(line: 82, column: 22, scope: !399)
!469 = !DILocation(line: 82, column: 24, scope: !399)
!470 = !DILocation(line: 82, column: 33, scope: !399)
!471 = !DILocation(line: 82, column: 35, scope: !399)
!472 = !DILocation(line: 82, column: 29, scope: !399)
!473 = !DILocation(line: 82, column: 20, scope: !399)
!474 = !DILocation(line: 82, column: 13, scope: !399)
!475 = !DILocation(line: 88, column: 16, scope: !399)
!476 = !DILocation(line: 88, column: 18, scope: !399)
!477 = !DILocation(line: 88, column: 28, scope: !399)
!478 = !DILocation(line: 88, column: 30, scope: !399)
!479 = !DILocation(line: 88, column: 35, scope: !399)
!480 = !DILocation(line: 88, column: 23, scope: !399)
!481 = !DILocation(line: 88, column: 41, scope: !399)
!482 = !DILocation(line: 88, column: 13, scope: !399)
!483 = !DILocation(line: 90, column: 17, scope: !399)
!484 = !DILocation(line: 92, column: 31, scope: !399)
!485 = !DILocation(line: 92, column: 21, scope: !399)
!486 = !DILocation(line: 92, column: 25, scope: !399)
!487 = !DILocation(line: 93, column: 30, scope: !399)
!488 = !DILocation(line: 93, column: 32, scope: !399)
!489 = !DILocation(line: 93, column: 42, scope: !399)
!490 = !DILocation(line: 93, column: 44, scope: !399)
!491 = !DILocation(line: 93, column: 49, scope: !399)
!492 = !DILocation(line: 93, column: 37, scope: !399)
!493 = !DILocation(line: 93, column: 19, scope: !399)
!494 = !DILocation(line: 93, column: 21, scope: !399)
!495 = !DILocation(line: 93, column: 26, scope: !399)
!496 = !DILocation(line: 94, column: 26, scope: !399)
!497 = !DILocation(line: 94, column: 22, scope: !399)
!498 = !DILocation(line: 95, column: 13, scope: !399)
!499 = !DILocation(line: 96, column: 22, scope: !399)
!500 = !DILocation(line: 96, column: 24, scope: !399)
!501 = !DILocation(line: 96, column: 48, scope: !399)
!502 = !DILocation(line: 96, column: 50, scope: !399)
!503 = !DILocation(line: 96, column: 32, scope: !399)
!504 = !DILocation(line: 96, column: 29, scope: !399)
!505 = !DILocation(line: 96, column: 20, scope: !399)
!506 = !DILocation(line: 96, column: 13, scope: !399)
!507 = !DILocation(line: 102, column: 30, scope: !399)
!508 = !DILocation(line: 102, column: 32, scope: !399)
!509 = !DILocation(line: 102, column: 14, scope: !399)
!510 = !DILocation(line: 102, column: 56, scope: !399)
!511 = !DILocation(line: 102, column: 58, scope: !399)
!512 = !DILocation(line: 102, column: 40, scope: !399)
!513 = !DILocation(line: 102, column: 38, scope: !399)
!514 = !DILocation(line: 104, column: 16, scope: !399)
!515 = !DILocation(line: 104, column: 13, scope: !399)
!516 = !DILocation(line: 106, column: 16, scope: !399)
!517 = !DILocation(line: 107, column: 26, scope: !399)
!518 = !DILocation(line: 107, column: 22, scope: !399)
!519 = !DILocation(line: 107, column: 17, scope: !399)
!520 = !DILocation(line: 108, column: 13, scope: !399)
!521 = !DILocation(line: 110, column: 9, scope: !399)
!522 = !DILocation(line: 113, column: 13, scope: !399)
!523 = !DILocation(line: 113, column: 17, scope: !399)
!524 = !DILocation(line: 114, column: 24, scope: !399)
!525 = !DILocation(line: 114, column: 45, scope: !399)
!526 = !DILocation(line: 114, column: 28, scope: !399)
!527 = !DILocation(line: 114, column: 11, scope: !399)
!528 = !DILocation(line: 114, column: 13, scope: !399)
!529 = !DILocation(line: 114, column: 18, scope: !399)
!530 = !DILocation(line: 116, column: 22, scope: !399)
!531 = !DILocation(line: 116, column: 24, scope: !399)
!532 = !DILocation(line: 116, column: 29, scope: !399)
!533 = !DILocation(line: 116, column: 11, scope: !399)
!534 = !DILocation(line: 116, column: 13, scope: !399)
!535 = !DILocation(line: 116, column: 18, scope: !399)
!536 = !DILocation(line: 117, column: 22, scope: !399)
!537 = !DILocation(line: 117, column: 24, scope: !399)
!538 = !DILocation(line: 117, column: 46, scope: !399)
!539 = !DILocation(line: 117, column: 29, scope: !399)
!540 = !DILocation(line: 117, column: 60, scope: !399)
!541 = !DILocation(line: 117, column: 64, scope: !399)
!542 = !DILocation(line: 117, column: 53, scope: !399)
!543 = !DILocation(line: 117, column: 13, scope: !399)
!544 = !DILocation(line: 117, column: 17, scope: !399)
!545 = !DILocation(line: 118, column: 5, scope: !399)
!546 = !DILocation(line: 121, column: 15, scope: !399)
!547 = !DILocation(line: 121, column: 17, scope: !399)
!548 = !DILocation(line: 121, column: 22, scope: !399)
!549 = !DILocation(line: 121, column: 13, scope: !399)
!550 = !DILocation(line: 127, column: 22, scope: !399)
!551 = !DILocation(line: 127, column: 43, scope: !399)
!552 = !DILocation(line: 127, column: 17, scope: !399)
!553 = !DILocation(line: 129, column: 21, scope: !399)
!554 = !DILocation(line: 130, column: 32, scope: !399)
!555 = !DILocation(line: 130, column: 43, scope: !399)
!556 = !DILocation(line: 130, column: 47, scope: !399)
!557 = !DILocation(line: 130, column: 36, scope: !399)
!558 = !DILocation(line: 130, column: 28, scope: !399)
!559 = !DILocation(line: 130, column: 26, scope: !399)
!560 = !DILocation(line: 130, column: 21, scope: !399)
!561 = !DILocation(line: 131, column: 25, scope: !399)
!562 = !DILocation(line: 131, column: 29, scope: !399)
!563 = !DILocation(line: 131, column: 21, scope: !399)
!564 = !DILocation(line: 132, column: 30, scope: !399)
!565 = !DILocation(line: 132, column: 21, scope: !399)
!566 = !DILocation(line: 133, column: 40, scope: !399)
!567 = !DILocation(line: 133, column: 22, scope: !399)
!568 = !DILocation(line: 134, column: 30, scope: !399)
!569 = !DILocation(line: 134, column: 32, scope: !399)
!570 = !DILocation(line: 134, column: 37, scope: !399)
!571 = !DILocation(line: 134, column: 19, scope: !399)
!572 = !DILocation(line: 134, column: 21, scope: !399)
!573 = !DILocation(line: 134, column: 26, scope: !399)
!574 = !DILocation(line: 135, column: 30, scope: !399)
!575 = !DILocation(line: 135, column: 32, scope: !399)
!576 = !DILocation(line: 135, column: 54, scope: !399)
!577 = !DILocation(line: 135, column: 37, scope: !399)
!578 = !DILocation(line: 135, column: 68, scope: !399)
!579 = !DILocation(line: 135, column: 72, scope: !399)
!580 = !DILocation(line: 135, column: 61, scope: !399)
!581 = !DILocation(line: 135, column: 21, scope: !399)
!582 = !DILocation(line: 135, column: 25, scope: !399)
!583 = !DILocation(line: 136, column: 26, scope: !399)
!584 = !DILocation(line: 136, column: 17, scope: !399)
!585 = !DILocation(line: 142, column: 55, scope: !399)
!586 = !DILocation(line: 142, column: 37, scope: !399)
!587 = !DILocation(line: 142, column: 35, scope: !399)
!588 = !DILocation(line: 142, column: 78, scope: !399)
!589 = !DILocation(line: 142, column: 80, scope: !399)
!590 = !DILocation(line: 142, column: 62, scope: !399)
!591 = !DILocation(line: 142, column: 60, scope: !399)
!592 = !DILocation(line: 147, column: 20, scope: !399)
!593 = !DILocation(line: 147, column: 17, scope: !399)
!594 = !DILocation(line: 149, column: 21, scope: !399)
!595 = !DILocation(line: 149, column: 25, scope: !399)
!596 = !DILocation(line: 150, column: 32, scope: !399)
!597 = !DILocation(line: 150, column: 19, scope: !399)
!598 = !DILocation(line: 150, column: 21, scope: !399)
!599 = !DILocation(line: 150, column: 26, scope: !399)
!600 = !DILocation(line: 151, column: 19, scope: !399)
!601 = !DILocation(line: 151, column: 21, scope: !399)
!602 = !DILocation(line: 151, column: 26, scope: !399)
!603 = !DILocation(line: 152, column: 29, scope: !399)
!604 = !DILocation(line: 152, column: 31, scope: !399)
!605 = !DILocation(line: 152, column: 21, scope: !399)
!606 = !DILocation(line: 152, column: 25, scope: !399)
!607 = !DILocation(line: 153, column: 13, scope: !399)
!608 = !DILocation(line: 154, column: 25, scope: !399)
!609 = !DILocation(line: 154, column: 22, scope: !399)
!610 = !DILocation(line: 156, column: 21, scope: !399)
!611 = !DILocation(line: 156, column: 25, scope: !399)
!612 = !DILocation(line: 157, column: 32, scope: !399)
!613 = !DILocation(line: 157, column: 53, scope: !399)
!614 = !DILocation(line: 157, column: 36, scope: !399)
!615 = !DILocation(line: 157, column: 19, scope: !399)
!616 = !DILocation(line: 157, column: 21, scope: !399)
!617 = !DILocation(line: 157, column: 26, scope: !399)
!618 = !DILocation(line: 158, column: 30, scope: !399)
!619 = !DILocation(line: 158, column: 32, scope: !399)
!620 = !DILocation(line: 158, column: 37, scope: !399)
!621 = !DILocation(line: 158, column: 19, scope: !399)
!622 = !DILocation(line: 158, column: 21, scope: !399)
!623 = !DILocation(line: 158, column: 26, scope: !399)
!624 = !DILocation(line: 159, column: 30, scope: !399)
!625 = !DILocation(line: 159, column: 32, scope: !399)
!626 = !DILocation(line: 159, column: 54, scope: !399)
!627 = !DILocation(line: 159, column: 37, scope: !399)
!628 = !DILocation(line: 159, column: 68, scope: !399)
!629 = !DILocation(line: 159, column: 72, scope: !399)
!630 = !DILocation(line: 159, column: 61, scope: !399)
!631 = !DILocation(line: 159, column: 21, scope: !399)
!632 = !DILocation(line: 159, column: 25, scope: !399)
!633 = !DILocation(line: 160, column: 13, scope: !399)
!634 = !DILocation(line: 163, column: 31, scope: !399)
!635 = !DILocation(line: 163, column: 53, scope: !399)
!636 = !DILocation(line: 163, column: 35, scope: !399)
!637 = !DILocation(line: 163, column: 21, scope: !399)
!638 = !DILocation(line: 163, column: 25, scope: !399)
!639 = !DILocation(line: 164, column: 31, scope: !399)
!640 = !DILocation(line: 164, column: 33, scope: !399)
!641 = !DILocation(line: 164, column: 56, scope: !399)
!642 = !DILocation(line: 164, column: 38, scope: !399)
!643 = !DILocation(line: 165, column: 33, scope: !399)
!644 = !DILocation(line: 165, column: 44, scope: !399)
!645 = !DILocation(line: 165, column: 37, scope: !399)
!646 = !DILocation(line: 164, column: 63, scope: !399)
!647 = !DILocation(line: 164, column: 19, scope: !399)
!648 = !DILocation(line: 164, column: 21, scope: !399)
!649 = !DILocation(line: 164, column: 26, scope: !399)
!650 = !DILocation(line: 166, column: 19, scope: !399)
!651 = !DILocation(line: 166, column: 21, scope: !399)
!652 = !DILocation(line: 166, column: 26, scope: !399)
!653 = !DILocation(line: 167, column: 29, scope: !399)
!654 = !DILocation(line: 167, column: 31, scope: !399)
!655 = !DILocation(line: 167, column: 43, scope: !399)
!656 = !DILocation(line: 167, column: 36, scope: !399)
!657 = !DILocation(line: 167, column: 21, scope: !399)
!658 = !DILocation(line: 167, column: 25, scope: !399)
!659 = !DILocation(line: 169, column: 9, scope: !399)
!660 = !DILocation(line: 176, column: 34, scope: !399)
!661 = !DILocation(line: 176, column: 36, scope: !399)
!662 = !DILocation(line: 176, column: 18, scope: !399)
!663 = !DILocation(line: 176, column: 60, scope: !399)
!664 = !DILocation(line: 176, column: 62, scope: !399)
!665 = !DILocation(line: 176, column: 44, scope: !399)
!666 = !DILocation(line: 176, column: 42, scope: !399)
!667 = !DILocation(line: 178, column: 20, scope: !399)
!668 = !DILocation(line: 178, column: 17, scope: !399)
!669 = !DILocation(line: 180, column: 21, scope: !399)
!670 = !DILocation(line: 181, column: 30, scope: !399)
!671 = !DILocation(line: 181, column: 26, scope: !399)
!672 = !DILocation(line: 181, column: 21, scope: !399)
!673 = !DILocation(line: 182, column: 17, scope: !399)
!674 = !DILocation(line: 184, column: 13, scope: !399)
!675 = !DILocation(line: 187, column: 17, scope: !399)
!676 = !DILocation(line: 187, column: 21, scope: !399)
!677 = !DILocation(line: 188, column: 20, scope: !399)
!678 = !DILocation(line: 188, column: 17, scope: !399)
!679 = !DILocation(line: 190, column: 32, scope: !399)
!680 = !DILocation(line: 190, column: 19, scope: !399)
!681 = !DILocation(line: 190, column: 21, scope: !399)
!682 = !DILocation(line: 190, column: 26, scope: !399)
!683 = !DILocation(line: 191, column: 19, scope: !399)
!684 = !DILocation(line: 191, column: 21, scope: !399)
!685 = !DILocation(line: 191, column: 26, scope: !399)
!686 = !DILocation(line: 192, column: 29, scope: !399)
!687 = !DILocation(line: 192, column: 31, scope: !399)
!688 = !DILocation(line: 192, column: 21, scope: !399)
!689 = !DILocation(line: 192, column: 25, scope: !399)
!690 = !DILocation(line: 193, column: 13, scope: !399)
!691 = !DILocation(line: 196, column: 32, scope: !399)
!692 = !DILocation(line: 196, column: 53, scope: !399)
!693 = !DILocation(line: 196, column: 36, scope: !399)
!694 = !DILocation(line: 196, column: 19, scope: !399)
!695 = !DILocation(line: 196, column: 21, scope: !399)
!696 = !DILocation(line: 196, column: 26, scope: !399)
!697 = !DILocation(line: 197, column: 30, scope: !399)
!698 = !DILocation(line: 197, column: 32, scope: !399)
!699 = !DILocation(line: 197, column: 37, scope: !399)
!700 = !DILocation(line: 197, column: 19, scope: !399)
!701 = !DILocation(line: 197, column: 21, scope: !399)
!702 = !DILocation(line: 197, column: 26, scope: !399)
!703 = !DILocation(line: 198, column: 30, scope: !399)
!704 = !DILocation(line: 198, column: 32, scope: !399)
!705 = !DILocation(line: 198, column: 54, scope: !399)
!706 = !DILocation(line: 198, column: 37, scope: !399)
!707 = !DILocation(line: 198, column: 68, scope: !399)
!708 = !DILocation(line: 198, column: 72, scope: !399)
!709 = !DILocation(line: 198, column: 61, scope: !399)
!710 = !DILocation(line: 198, column: 21, scope: !399)
!711 = !DILocation(line: 198, column: 25, scope: !399)
!712 = !DILocation(line: 0, scope: !399)
!713 = !DILocation(line: 209, column: 5, scope: !399)
!714 = !DILocation(line: 209, column: 15, scope: !399)
!715 = !DILocation(line: 212, column: 23, scope: !399)
!716 = !DILocation(line: 212, column: 25, scope: !399)
!717 = !DILocation(line: 212, column: 43, scope: !399)
!718 = !DILocation(line: 212, column: 36, scope: !399)
!719 = !DILocation(line: 212, column: 11, scope: !399)
!720 = !DILocation(line: 212, column: 13, scope: !399)
!721 = !DILocation(line: 212, column: 18, scope: !399)
!722 = !DILocation(line: 213, column: 41, scope: !399)
!723 = !DILocation(line: 213, column: 43, scope: !399)
!724 = !DILocation(line: 213, column: 36, scope: !399)
!725 = !DILocation(line: 213, column: 13, scope: !399)
!726 = !DILocation(line: 213, column: 18, scope: !399)
!727 = !DILocation(line: 214, column: 23, scope: !399)
!728 = !DILocation(line: 214, column: 25, scope: !399)
!729 = !DILocation(line: 214, column: 43, scope: !399)
!730 = !DILocation(line: 214, column: 36, scope: !399)
!731 = !DILocation(line: 214, column: 11, scope: !399)
!732 = !DILocation(line: 214, column: 13, scope: !399)
!733 = !DILocation(line: 214, column: 18, scope: !399)
!734 = !DILocation(line: 215, column: 30, scope: !399)
!735 = !DILocation(line: 215, column: 36, scope: !399)
!736 = !DILocation(line: 215, column: 13, scope: !399)
!737 = !DILocation(line: 215, column: 18, scope: !399)
!738 = !DILocation(line: 223, column: 37, scope: !399)
!739 = !DILocation(line: 223, column: 45, scope: !399)
!740 = !DILocation(line: 223, column: 49, scope: !399)
!741 = !DILocation(line: 225, column: 24, scope: !399)
!742 = !DILocation(line: 225, column: 11, scope: !399)
!743 = !DILocation(line: 225, column: 15, scope: !399)
!744 = !DILocation(line: 226, column: 5, scope: !399)
!745 = !DILocation(line: 224, column: 19, scope: !399)
!746 = !DILocation(line: 224, column: 17, scope: !399)
!747 = !DILocation(line: 209, column: 20, scope: !399)
!748 = distinct !{!748, !713, !744, !154}
!749 = !DILocation(line: 227, column: 16, scope: !399)
!750 = !DILocation(line: 227, column: 20, scope: !399)
!751 = !DILocation(line: 227, column: 28, scope: !399)
!752 = !DILocation(line: 227, column: 26, scope: !399)
!753 = !DILocation(line: 227, column: 7, scope: !399)
!754 = !DILocation(line: 227, column: 11, scope: !399)
!755 = !DILocation(line: 228, column: 9, scope: !399)
!756 = !DILocation(line: 229, column: 18, scope: !399)
!757 = !DILocation(line: 229, column: 14, scope: !399)
!758 = !DILocation(line: 229, column: 9, scope: !399)
!759 = !DILocation(line: 230, column: 14, scope: !399)
!760 = !DILocation(line: 230, column: 5, scope: !399)
!761 = !DILocation(line: 231, column: 1, scope: !399)
!762 = distinct !DISubprogram(name: "__divmoddi4", scope: !53, file: !53, line: 20, type: !157, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !140)
!763 = !DILocation(line: 22, column: 14, scope: !762)
!764 = !DILocation(line: 23, column: 16, scope: !762)
!765 = !DILocation(line: 23, column: 12, scope: !762)
!766 = !DILocation(line: 23, column: 8, scope: !762)
!767 = !DILocation(line: 24, column: 3, scope: !762)
!768 = distinct !DISubprogram(name: "__divmodsi4", scope: !55, file: !55, line: 20, type: !157, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !140)
!769 = !DILocation(line: 22, column: 14, scope: !768)
!770 = !DILocation(line: 23, column: 16, scope: !768)
!771 = !DILocation(line: 23, column: 12, scope: !768)
!772 = !DILocation(line: 23, column: 8, scope: !768)
!773 = !DILocation(line: 24, column: 3, scope: !768)
!774 = distinct !DISubprogram(name: "__divsi3", scope: !57, file: !57, line: 22, type: !157, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !140)
!775 = !DILocation(line: 25, column: 20, scope: !774)
!776 = !DILocation(line: 26, column: 20, scope: !774)
!777 = !DILocation(line: 27, column: 12, scope: !774)
!778 = !DILocation(line: 27, column: 19, scope: !774)
!779 = !DILocation(line: 28, column: 12, scope: !774)
!780 = !DILocation(line: 28, column: 19, scope: !774)
!781 = !DILocation(line: 29, column: 9, scope: !774)
!782 = !DILocation(line: 36, column: 22, scope: !774)
!783 = !DILocation(line: 36, column: 33, scope: !774)
!784 = !DILocation(line: 36, column: 40, scope: !774)
!785 = !DILocation(line: 36, column: 5, scope: !774)
!786 = distinct !DISubprogram(name: "__ffsdi2", scope: !61, file: !61, line: 22, type: !157, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !140)
!787 = !DILocation(line: 25, column: 7, scope: !786)
!788 = !DILocation(line: 25, column: 11, scope: !786)
!789 = !DILocation(line: 26, column: 13, scope: !786)
!790 = !DILocation(line: 26, column: 17, scope: !786)
!791 = !DILocation(line: 26, column: 9, scope: !786)
!792 = !DILocation(line: 28, column: 15, scope: !786)
!793 = !DILocation(line: 28, column: 17, scope: !786)
!794 = !DILocation(line: 28, column: 22, scope: !786)
!795 = !DILocation(line: 28, column: 13, scope: !786)
!796 = !DILocation(line: 29, column: 13, scope: !786)
!797 = !DILocation(line: 30, column: 32, scope: !786)
!798 = !DILocation(line: 30, column: 34, scope: !786)
!799 = !DILocation(line: 30, column: 16, scope: !786)
!800 = !DILocation(line: 30, column: 40, scope: !786)
!801 = !DILocation(line: 30, column: 9, scope: !786)
!802 = !DILocation(line: 32, column: 30, scope: !786)
!803 = !DILocation(line: 32, column: 12, scope: !786)
!804 = !DILocation(line: 32, column: 35, scope: !786)
!805 = !DILocation(line: 32, column: 5, scope: !786)
!806 = !DILocation(line: 0, scope: !786)
!807 = !DILocation(line: 33, column: 1, scope: !786)
!808 = distinct !DISubprogram(name: "__ffssi2", scope: !63, file: !63, line: 22, type: !157, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !140)
!809 = !DILocation(line: 24, column: 11, scope: !808)
!810 = !DILocation(line: 24, column: 9, scope: !808)
!811 = !DILocation(line: 26, column: 9, scope: !808)
!812 = !DILocation(line: 28, column: 12, scope: !808)
!813 = !DILocation(line: 28, column: 29, scope: !808)
!814 = !DILocation(line: 28, column: 5, scope: !808)
!815 = !DILocation(line: 0, scope: !808)
!816 = !DILocation(line: 29, column: 1, scope: !808)
!817 = distinct !DISubprogram(name: "__lshrdi3", scope: !69, file: !69, line: 24, type: !157, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !140)
!818 = !DILocation(line: 29, column: 11, scope: !817)
!819 = !DILocation(line: 29, column: 15, scope: !817)
!820 = !DILocation(line: 30, column: 11, scope: !817)
!821 = !DILocation(line: 30, column: 9, scope: !817)
!822 = !DILocation(line: 32, column: 16, scope: !817)
!823 = !DILocation(line: 32, column: 18, scope: !817)
!824 = !DILocation(line: 32, column: 23, scope: !817)
!825 = !DILocation(line: 33, column: 30, scope: !817)
!826 = !DILocation(line: 33, column: 32, scope: !817)
!827 = !DILocation(line: 33, column: 43, scope: !817)
!828 = !DILocation(line: 33, column: 37, scope: !817)
!829 = !DILocation(line: 33, column: 18, scope: !817)
!830 = !DILocation(line: 33, column: 22, scope: !817)
!831 = !DILocation(line: 34, column: 5, scope: !817)
!832 = !DILocation(line: 37, column: 15, scope: !817)
!833 = !DILocation(line: 37, column: 13, scope: !817)
!834 = !DILocation(line: 38, column: 13, scope: !817)
!835 = !DILocation(line: 39, column: 32, scope: !817)
!836 = !DILocation(line: 39, column: 34, scope: !817)
!837 = !DILocation(line: 39, column: 39, scope: !817)
!838 = !DILocation(line: 39, column: 16, scope: !817)
!839 = !DILocation(line: 39, column: 18, scope: !817)
!840 = !DILocation(line: 39, column: 24, scope: !817)
!841 = !DILocation(line: 40, column: 31, scope: !817)
!842 = !DILocation(line: 40, column: 33, scope: !817)
!843 = !DILocation(line: 40, column: 55, scope: !817)
!844 = !DILocation(line: 40, column: 38, scope: !817)
!845 = !DILocation(line: 40, column: 72, scope: !817)
!846 = !DILocation(line: 40, column: 76, scope: !817)
!847 = !DILocation(line: 40, column: 61, scope: !817)
!848 = !DILocation(line: 40, column: 18, scope: !817)
!849 = !DILocation(line: 40, column: 22, scope: !817)
!850 = !DILocation(line: 42, column: 19, scope: !817)
!851 = !DILocation(line: 42, column: 5, scope: !817)
!852 = !DILocation(line: 0, scope: !817)
!853 = !DILocation(line: 43, column: 1, scope: !817)
!854 = distinct !DISubprogram(name: "__moddi3", scope: !73, file: !73, line: 20, type: !157, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !140)
!855 = !DILocation(line: 24, column: 17, scope: !854)
!856 = !DILocation(line: 25, column: 11, scope: !854)
!857 = !DILocation(line: 26, column: 12, scope: !854)
!858 = !DILocation(line: 26, column: 17, scope: !854)
!859 = !DILocation(line: 28, column: 5, scope: !854)
!860 = !DILocation(line: 29, column: 21, scope: !854)
!861 = !DILocation(line: 29, column: 23, scope: !854)
!862 = !DILocation(line: 29, column: 28, scope: !854)
!863 = !DILocation(line: 29, column: 5, scope: !854)
!864 = distinct !DISubprogram(name: "__modsi3", scope: !75, file: !75, line: 20, type: !157, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !140)
!865 = !DILocation(line: 22, column: 16, scope: !864)
!866 = !DILocation(line: 22, column: 31, scope: !864)
!867 = !DILocation(line: 22, column: 14, scope: !864)
!868 = !DILocation(line: 22, column: 5, scope: !864)
!869 = distinct !DISubprogram(name: "__mulvdi3", scope: !79, file: !79, line: 22, type: !157, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !140)
!870 = !DILocation(line: 27, column: 11, scope: !869)
!871 = !DILocation(line: 27, column: 9, scope: !869)
!872 = !DILocation(line: 29, column: 15, scope: !869)
!873 = !DILocation(line: 29, column: 20, scope: !869)
!874 = !DILocation(line: 29, column: 25, scope: !869)
!875 = !DILocation(line: 29, column: 13, scope: !869)
!876 = !DILocation(line: 30, column: 13, scope: !869)
!877 = !DILocation(line: 31, column: 9, scope: !869)
!878 = !DILocation(line: 33, column: 11, scope: !869)
!879 = !DILocation(line: 33, column: 9, scope: !869)
!880 = !DILocation(line: 35, column: 15, scope: !869)
!881 = !DILocation(line: 35, column: 20, scope: !869)
!882 = !DILocation(line: 35, column: 25, scope: !869)
!883 = !DILocation(line: 35, column: 13, scope: !869)
!884 = !DILocation(line: 36, column: 13, scope: !869)
!885 = !DILocation(line: 37, column: 9, scope: !869)
!886 = !DILocation(line: 39, column: 19, scope: !869)
!887 = !DILocation(line: 40, column: 23, scope: !869)
!888 = !DILocation(line: 40, column: 29, scope: !869)
!889 = !DILocation(line: 41, column: 19, scope: !869)
!890 = !DILocation(line: 42, column: 23, scope: !869)
!891 = !DILocation(line: 42, column: 29, scope: !869)
!892 = !DILocation(line: 43, column: 15, scope: !869)
!893 = !DILocation(line: 43, column: 19, scope: !869)
!894 = !DILocation(line: 43, column: 28, scope: !869)
!895 = !DILocation(line: 43, column: 9, scope: !869)
!896 = !DILocation(line: 44, column: 9, scope: !869)
!897 = !DILocation(line: 45, column: 12, scope: !869)
!898 = !DILocation(line: 45, column: 9, scope: !869)
!899 = !DILocation(line: 47, column: 25, scope: !869)
!900 = !DILocation(line: 47, column: 19, scope: !869)
!901 = !DILocation(line: 47, column: 13, scope: !869)
!902 = !DILocation(line: 48, column: 13, scope: !869)
!903 = !DILocation(line: 49, column: 5, scope: !869)
!904 = !DILocation(line: 52, column: 27, scope: !869)
!905 = !DILocation(line: 52, column: 25, scope: !869)
!906 = !DILocation(line: 52, column: 19, scope: !869)
!907 = !DILocation(line: 52, column: 13, scope: !869)
!908 = !DILocation(line: 53, column: 13, scope: !869)
!909 = !DILocation(line: 55, column: 5, scope: !869)
!910 = !DILocation(line: 0, scope: !869)
!911 = !DILocation(line: 56, column: 1, scope: !869)
!912 = distinct !DISubprogram(name: "__mulvsi3", scope: !81, file: !81, line: 22, type: !157, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !140)
!913 = !DILocation(line: 27, column: 11, scope: !912)
!914 = !DILocation(line: 27, column: 9, scope: !912)
!915 = !DILocation(line: 29, column: 15, scope: !912)
!916 = !DILocation(line: 29, column: 20, scope: !912)
!917 = !DILocation(line: 29, column: 25, scope: !912)
!918 = !DILocation(line: 29, column: 13, scope: !912)
!919 = !DILocation(line: 30, column: 13, scope: !912)
!920 = !DILocation(line: 31, column: 9, scope: !912)
!921 = !DILocation(line: 33, column: 11, scope: !912)
!922 = !DILocation(line: 33, column: 9, scope: !912)
!923 = !DILocation(line: 35, column: 15, scope: !912)
!924 = !DILocation(line: 35, column: 20, scope: !912)
!925 = !DILocation(line: 35, column: 25, scope: !912)
!926 = !DILocation(line: 35, column: 13, scope: !912)
!927 = !DILocation(line: 36, column: 13, scope: !912)
!928 = !DILocation(line: 37, column: 9, scope: !912)
!929 = !DILocation(line: 39, column: 19, scope: !912)
!930 = !DILocation(line: 40, column: 23, scope: !912)
!931 = !DILocation(line: 40, column: 29, scope: !912)
!932 = !DILocation(line: 41, column: 19, scope: !912)
!933 = !DILocation(line: 42, column: 23, scope: !912)
!934 = !DILocation(line: 42, column: 29, scope: !912)
!935 = !DILocation(line: 43, column: 15, scope: !912)
!936 = !DILocation(line: 43, column: 19, scope: !912)
!937 = !DILocation(line: 43, column: 28, scope: !912)
!938 = !DILocation(line: 43, column: 9, scope: !912)
!939 = !DILocation(line: 44, column: 9, scope: !912)
!940 = !DILocation(line: 45, column: 12, scope: !912)
!941 = !DILocation(line: 45, column: 9, scope: !912)
!942 = !DILocation(line: 47, column: 25, scope: !912)
!943 = !DILocation(line: 47, column: 19, scope: !912)
!944 = !DILocation(line: 47, column: 13, scope: !912)
!945 = !DILocation(line: 48, column: 13, scope: !912)
!946 = !DILocation(line: 49, column: 5, scope: !912)
!947 = !DILocation(line: 52, column: 27, scope: !912)
!948 = !DILocation(line: 52, column: 25, scope: !912)
!949 = !DILocation(line: 52, column: 19, scope: !912)
!950 = !DILocation(line: 52, column: 13, scope: !912)
!951 = !DILocation(line: 53, column: 13, scope: !912)
!952 = !DILocation(line: 55, column: 5, scope: !912)
!953 = !DILocation(line: 0, scope: !912)
!954 = !DILocation(line: 56, column: 1, scope: !912)
!955 = distinct !DISubprogram(name: "__paritydi2", scope: !85, file: !85, line: 20, type: !157, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !140)
!956 = !DILocation(line: 23, column: 7, scope: !955)
!957 = !DILocation(line: 23, column: 11, scope: !955)
!958 = !DILocation(line: 24, column: 26, scope: !955)
!959 = !DILocation(line: 24, column: 28, scope: !955)
!960 = !DILocation(line: 24, column: 39, scope: !955)
!961 = !DILocation(line: 24, column: 33, scope: !955)
!962 = !DILocation(line: 24, column: 12, scope: !955)
!963 = !DILocation(line: 24, column: 5, scope: !955)
!964 = distinct !DISubprogram(name: "__paritysi2", scope: !87, file: !87, line: 20, type: !157, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !140)
!965 = !DILocation(line: 23, column: 12, scope: !964)
!966 = !DILocation(line: 23, column: 7, scope: !964)
!967 = !DILocation(line: 24, column: 12, scope: !964)
!968 = !DILocation(line: 24, column: 7, scope: !964)
!969 = !DILocation(line: 25, column: 12, scope: !964)
!970 = !DILocation(line: 25, column: 7, scope: !964)
!971 = !DILocation(line: 26, column: 26, scope: !964)
!972 = !DILocation(line: 26, column: 20, scope: !964)
!973 = !DILocation(line: 26, column: 34, scope: !964)
!974 = !DILocation(line: 26, column: 5, scope: !964)
!975 = distinct !DISubprogram(name: "__popcountdi2", scope: !91, file: !91, line: 20, type: !157, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !140)
!976 = !DILocation(line: 23, column: 20, scope: !975)
!977 = !DILocation(line: 23, column: 26, scope: !975)
!978 = !DILocation(line: 23, column: 13, scope: !975)
!979 = !DILocation(line: 25, column: 15, scope: !975)
!980 = !DILocation(line: 25, column: 21, scope: !975)
!981 = !DILocation(line: 25, column: 52, scope: !975)
!982 = !DILocation(line: 25, column: 46, scope: !975)
!983 = !DILocation(line: 27, column: 20, scope: !975)
!984 = !DILocation(line: 27, column: 14, scope: !975)
!985 = !DILocation(line: 27, column: 27, scope: !975)
!986 = !DILocation(line: 29, column: 34, scope: !975)
!987 = !DILocation(line: 29, column: 28, scope: !975)
!988 = !DILocation(line: 29, column: 16, scope: !975)
!989 = !DILocation(line: 32, column: 16, scope: !975)
!990 = !DILocation(line: 32, column: 11, scope: !975)
!991 = !DILocation(line: 35, column: 20, scope: !975)
!992 = !DILocation(line: 35, column: 15, scope: !975)
!993 = !DILocation(line: 35, column: 27, scope: !975)
!994 = !DILocation(line: 35, column: 5, scope: !975)
!995 = distinct !DISubprogram(name: "__popcountsi2", scope: !93, file: !93, line: 20, type: !157, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !92, retainedNodes: !140)
!996 = !DILocation(line: 23, column: 17, scope: !995)
!997 = !DILocation(line: 23, column: 23, scope: !995)
!998 = !DILocation(line: 23, column: 11, scope: !995)
!999 = !DILocation(line: 25, column: 13, scope: !995)
!1000 = !DILocation(line: 25, column: 19, scope: !995)
!1001 = !DILocation(line: 25, column: 38, scope: !995)
!1002 = !DILocation(line: 25, column: 33, scope: !995)
!1003 = !DILocation(line: 27, column: 17, scope: !995)
!1004 = !DILocation(line: 27, column: 12, scope: !995)
!1005 = !DILocation(line: 27, column: 24, scope: !995)
!1006 = !DILocation(line: 29, column: 17, scope: !995)
!1007 = !DILocation(line: 29, column: 12, scope: !995)
!1008 = !DILocation(line: 32, column: 20, scope: !995)
!1009 = !DILocation(line: 32, column: 15, scope: !995)
!1010 = !DILocation(line: 32, column: 27, scope: !995)
!1011 = !DILocation(line: 32, column: 5, scope: !995)
!1012 = distinct !DISubprogram(name: "__subvdi3", scope: !97, file: !97, line: 22, type: !157, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !140)
!1013 = !DILocation(line: 24, column: 27, scope: !1012)
!1014 = !DILocation(line: 25, column: 11, scope: !1012)
!1015 = !DILocation(line: 25, column: 9, scope: !1012)
!1016 = !DILocation(line: 27, column: 15, scope: !1012)
!1017 = !DILocation(line: 27, column: 13, scope: !1012)
!1018 = !DILocation(line: 28, column: 13, scope: !1012)
!1019 = !DILocation(line: 29, column: 5, scope: !1012)
!1020 = !DILocation(line: 32, column: 15, scope: !1012)
!1021 = !DILocation(line: 32, column: 13, scope: !1012)
!1022 = !DILocation(line: 33, column: 13, scope: !1012)
!1023 = !DILocation(line: 35, column: 5, scope: !1012)
!1024 = distinct !DISubprogram(name: "__subvsi3", scope: !99, file: !99, line: 22, type: !157, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !140)
!1025 = !DILocation(line: 24, column: 27, scope: !1024)
!1026 = !DILocation(line: 25, column: 11, scope: !1024)
!1027 = !DILocation(line: 25, column: 9, scope: !1024)
!1028 = !DILocation(line: 27, column: 15, scope: !1024)
!1029 = !DILocation(line: 27, column: 13, scope: !1024)
!1030 = !DILocation(line: 28, column: 13, scope: !1024)
!1031 = !DILocation(line: 29, column: 5, scope: !1024)
!1032 = !DILocation(line: 32, column: 15, scope: !1024)
!1033 = !DILocation(line: 32, column: 13, scope: !1024)
!1034 = !DILocation(line: 33, column: 13, scope: !1024)
!1035 = !DILocation(line: 35, column: 5, scope: !1024)
!1036 = distinct !DISubprogram(name: "__ucmpdi2", scope: !103, file: !103, line: 23, type: !157, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !140)
!1037 = !DILocation(line: 26, column: 7, scope: !1036)
!1038 = !DILocation(line: 26, column: 11, scope: !1036)
!1039 = !DILocation(line: 28, column: 7, scope: !1036)
!1040 = !DILocation(line: 28, column: 11, scope: !1036)
!1041 = !DILocation(line: 29, column: 11, scope: !1036)
!1042 = !DILocation(line: 29, column: 13, scope: !1036)
!1043 = !DILocation(line: 29, column: 22, scope: !1036)
!1044 = !DILocation(line: 29, column: 24, scope: !1036)
!1045 = !DILocation(line: 29, column: 18, scope: !1036)
!1046 = !DILocation(line: 29, column: 9, scope: !1036)
!1047 = !DILocation(line: 30, column: 9, scope: !1036)
!1048 = !DILocation(line: 31, column: 11, scope: !1036)
!1049 = !DILocation(line: 31, column: 13, scope: !1036)
!1050 = !DILocation(line: 31, column: 22, scope: !1036)
!1051 = !DILocation(line: 31, column: 24, scope: !1036)
!1052 = !DILocation(line: 31, column: 18, scope: !1036)
!1053 = !DILocation(line: 31, column: 9, scope: !1036)
!1054 = !DILocation(line: 32, column: 9, scope: !1036)
!1055 = !DILocation(line: 33, column: 13, scope: !1036)
!1056 = !DILocation(line: 33, column: 23, scope: !1036)
!1057 = !DILocation(line: 33, column: 17, scope: !1036)
!1058 = !DILocation(line: 33, column: 9, scope: !1036)
!1059 = !DILocation(line: 34, column: 9, scope: !1036)
!1060 = !DILocation(line: 35, column: 13, scope: !1036)
!1061 = !DILocation(line: 35, column: 23, scope: !1036)
!1062 = !DILocation(line: 35, column: 17, scope: !1036)
!1063 = !DILocation(line: 35, column: 9, scope: !1036)
!1064 = !DILocation(line: 36, column: 9, scope: !1036)
!1065 = !DILocation(line: 37, column: 5, scope: !1036)
!1066 = !DILocation(line: 0, scope: !1036)
!1067 = !DILocation(line: 38, column: 1, scope: !1036)
!1068 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !103, file: !103, line: 46, type: !157, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !140)
!1069 = !DILocation(line: 48, column: 9, scope: !1068)
!1070 = !DILocation(line: 48, column: 25, scope: !1068)
!1071 = !DILocation(line: 48, column: 2, scope: !1068)
!1072 = distinct !DISubprogram(name: "__udivdi3", scope: !107, file: !107, line: 20, type: !157, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !140)
!1073 = !DILocation(line: 22, column: 12, scope: !1072)
!1074 = !DILocation(line: 22, column: 5, scope: !1072)
!1075 = distinct !DISubprogram(name: "__udivmodsi4", scope: !111, file: !111, line: 20, type: !157, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !140)
!1076 = !DILocation(line: 22, column: 14, scope: !1075)
!1077 = !DILocation(line: 23, column: 16, scope: !1075)
!1078 = !DILocation(line: 23, column: 12, scope: !1075)
!1079 = !DILocation(line: 23, column: 8, scope: !1075)
!1080 = !DILocation(line: 24, column: 3, scope: !1075)
!1081 = distinct !DISubprogram(name: "__udivsi3", scope: !115, file: !115, line: 25, type: !157, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !140)
!1082 = !DILocation(line: 32, column: 11, scope: !1081)
!1083 = !DILocation(line: 32, column: 9, scope: !1081)
!1084 = !DILocation(line: 33, column: 9, scope: !1081)
!1085 = !DILocation(line: 34, column: 11, scope: !1081)
!1086 = !DILocation(line: 34, column: 9, scope: !1081)
!1087 = !DILocation(line: 35, column: 9, scope: !1081)
!1088 = !DILocation(line: 36, column: 10, scope: !1081)
!1089 = !DILocation(line: 36, column: 29, scope: !1081)
!1090 = !DILocation(line: 36, column: 27, scope: !1081)
!1091 = !DILocation(line: 38, column: 12, scope: !1081)
!1092 = !DILocation(line: 38, column: 9, scope: !1081)
!1093 = !DILocation(line: 39, column: 9, scope: !1081)
!1094 = !DILocation(line: 40, column: 12, scope: !1081)
!1095 = !DILocation(line: 40, column: 9, scope: !1081)
!1096 = !DILocation(line: 41, column: 9, scope: !1081)
!1097 = !DILocation(line: 42, column: 5, scope: !1081)
!1098 = !DILocation(line: 45, column: 28, scope: !1081)
!1099 = !DILocation(line: 45, column: 11, scope: !1081)
!1100 = !DILocation(line: 46, column: 11, scope: !1081)
!1101 = !DILocation(line: 48, column: 5, scope: !1081)
!1102 = !DILocation(line: 0, scope: !1081)
!1103 = !DILocation(line: 48, column: 15, scope: !1081)
!1104 = !DILocation(line: 51, column: 22, scope: !1081)
!1105 = !DILocation(line: 60, column: 41, scope: !1081)
!1106 = !DILocation(line: 63, column: 5, scope: !1081)
!1107 = !DILocation(line: 62, column: 16, scope: !1081)
!1108 = !DILocation(line: 62, column: 11, scope: !1081)
!1109 = !DILocation(line: 61, column: 19, scope: !1081)
!1110 = !DILocation(line: 52, column: 16, scope: !1081)
!1111 = !DILocation(line: 52, column: 22, scope: !1081)
!1112 = !DILocation(line: 48, column: 20, scope: !1081)
!1113 = distinct !{!1113, !1101, !1106, !154}
!1114 = !DILocation(line: 64, column: 12, scope: !1081)
!1115 = !DILocation(line: 64, column: 18, scope: !1081)
!1116 = !DILocation(line: 65, column: 5, scope: !1081)
!1117 = !DILocation(line: 66, column: 1, scope: !1081)
!1118 = distinct !DISubprogram(name: "__umoddi3", scope: !119, file: !119, line: 20, type: !157, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !140)
!1119 = !DILocation(line: 23, column: 5, scope: !1118)
!1120 = !DILocation(line: 24, column: 12, scope: !1118)
!1121 = !DILocation(line: 24, column: 5, scope: !1118)
!1122 = distinct !DISubprogram(name: "__umodsi3", scope: !121, file: !121, line: 20, type: !157, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !120, retainedNodes: !140)
!1123 = !DILocation(line: 22, column: 16, scope: !1122)
!1124 = !DILocation(line: 22, column: 32, scope: !1122)
!1125 = !DILocation(line: 22, column: 14, scope: !1122)
!1126 = !DILocation(line: 22, column: 5, scope: !1122)
!1127 = distinct !DISubprogram(name: "memcpy", scope: !125, file: !125, line: 3, type: !157, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !124, retainedNodes: !140)
!1128 = !DILocation(line: 8, column: 6, scope: !1127)
!1129 = !DILocation(line: 0, scope: !1127)
!1130 = !DILocation(line: 8, column: 19, scope: !1127)
!1131 = !DILocation(line: 8, column: 2, scope: !1127)
!1132 = !DILocation(line: 9, column: 21, scope: !1127)
!1133 = !DILocation(line: 9, column: 3, scope: !1127)
!1134 = !DILocation(line: 9, column: 19, scope: !1127)
!1135 = !DILocation(line: 10, column: 2, scope: !1127)
!1136 = !DILocation(line: 8, column: 26, scope: !1127)
!1137 = distinct !{!1137, !1131, !1135, !154}
!1138 = !DILocation(line: 11, column: 1, scope: !1127)
!1139 = distinct !DISubprogram(name: "memset", scope: !125, file: !125, line: 13, type: !157, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !124, retainedNodes: !140)
!1140 = !DILocation(line: 17, column: 6, scope: !1139)
!1141 = !DILocation(line: 0, scope: !1139)
!1142 = !DILocation(line: 17, column: 19, scope: !1139)
!1143 = !DILocation(line: 17, column: 2, scope: !1139)
!1144 = !DILocation(line: 18, column: 13, scope: !1139)
!1145 = !DILocation(line: 18, column: 3, scope: !1139)
!1146 = !DILocation(line: 18, column: 11, scope: !1139)
!1147 = !DILocation(line: 19, column: 2, scope: !1139)
!1148 = !DILocation(line: 17, column: 26, scope: !1139)
!1149 = distinct !{!1149, !1143, !1147, !154}
!1150 = !DILocation(line: 20, column: 2, scope: !1139)
