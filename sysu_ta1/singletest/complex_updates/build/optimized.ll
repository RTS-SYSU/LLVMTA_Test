; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%union.dwords = type { i64 }
%struct.anon = type { i32, i32 }

@complex_updates_A = dso_local global [2 x float] zeroinitializer, align 4
@complex_updates_B = dso_local global [2 x float] zeroinitializer, align 4
@complex_updates_C = dso_local global [2 x float] zeroinitializer, align 4
@complex_updates_D = dso_local global [2 x float] zeroinitializer, align 4
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
define dso_local arm_aapcs_vfpcc void @complex_updates_init() #0 !dbg !125 {
entry:
  %x = alloca float, align 4
  store volatile float 0.000000e+00, float* %x, align 4, !dbg !129
  call arm_aapcs_vfpcc void @complex_updates_pin_down(float* noundef getelementptr inbounds ([2 x float], [2 x float]* @complex_updates_A, i32 0, i32 0), float* noundef getelementptr inbounds ([2 x float], [2 x float]* @complex_updates_B, i32 0, i32 0), float* noundef getelementptr inbounds ([2 x float], [2 x float]* @complex_updates_C, i32 0, i32 0), float* noundef getelementptr inbounds ([2 x float], [2 x float]* @complex_updates_D, i32 0, i32 0)) #4, !dbg !130
  br label %for.cond, !dbg !131

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !132
  %exitcond.not = icmp eq i32 %i.0, 1, !dbg !133
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !134

for.body:                                         ; preds = %for.cond
  %0 = load volatile float, float* %x, align 4, !dbg !135
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* @complex_updates_A, i32 0, i32 %i.0, !dbg !136
  %1 = load float, float* %arrayidx, align 4, !dbg !137
  %add = fadd float %1, %0, !dbg !137
  store float %add, float* %arrayidx, align 4, !dbg !137
  %2 = load volatile float, float* %x, align 4, !dbg !138
  %arrayidx1 = getelementptr inbounds [2 x float], [2 x float]* @complex_updates_B, i32 0, i32 %i.0, !dbg !139
  %3 = load float, float* %arrayidx1, align 4, !dbg !140
  %add2 = fadd float %3, %2, !dbg !140
  store float %add2, float* %arrayidx1, align 4, !dbg !140
  %4 = load volatile float, float* %x, align 4, !dbg !141
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* @complex_updates_C, i32 0, i32 %i.0, !dbg !142
  %5 = load float, float* %arrayidx3, align 4, !dbg !143
  %add4 = fadd float %5, %4, !dbg !143
  store float %add4, float* %arrayidx3, align 4, !dbg !143
  %6 = load volatile float, float* %x, align 4, !dbg !144
  %arrayidx5 = getelementptr inbounds [2 x float], [2 x float]* @complex_updates_D, i32 0, i32 %i.0, !dbg !145
  %7 = load float, float* %arrayidx5, align 4, !dbg !146
  %add6 = fadd float %7, %6, !dbg !146
  store float %add6, float* %arrayidx5, align 4, !dbg !146
  br label %for.inc, !dbg !147

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !148
  br label %for.cond, !dbg !134, !llvm.loop !149

for.end:                                          ; preds = %for.cond
  ret void, !dbg !151
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @complex_updates_pin_down(float* noundef %pa, float* noundef %pb, float* noundef %pc, float* noundef %pd) #0 !dbg !152 {
entry:
  br label %for.cond, !dbg !153

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !154
  %pd.addr.0 = phi float* [ %pd, %entry ], [ %incdec.ptr7, %for.inc ]
  %pc.addr.0 = phi float* [ %pc, %entry ], [ %incdec.ptr5, %for.inc ]
  %pb.addr.0 = phi float* [ %pb, %entry ], [ %incdec.ptr3, %for.inc ]
  %pa.addr.0 = phi float* [ %pa, %entry ], [ %incdec.ptr1, %for.inc ]
  %exitcond.not = icmp eq i32 %i.0, 1, !dbg !155
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !156

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds float, float* %pa.addr.0, i32 1, !dbg !157
  store float 2.000000e+00, float* %pa.addr.0, align 4, !dbg !158
  store float 1.000000e+00, float* %incdec.ptr, align 4, !dbg !159
  %incdec.ptr2 = getelementptr inbounds float, float* %pb.addr.0, i32 1, !dbg !160
  store float 2.000000e+00, float* %pb.addr.0, align 4, !dbg !161
  store float 5.000000e+00, float* %incdec.ptr2, align 4, !dbg !162
  %incdec.ptr4 = getelementptr inbounds float, float* %pc.addr.0, i32 1, !dbg !163
  store float 3.000000e+00, float* %pc.addr.0, align 4, !dbg !164
  store float 4.000000e+00, float* %incdec.ptr4, align 4, !dbg !165
  %incdec.ptr6 = getelementptr inbounds float, float* %pd.addr.0, i32 1, !dbg !166
  store float 0.000000e+00, float* %pd.addr.0, align 4, !dbg !167
  store float 0.000000e+00, float* %incdec.ptr6, align 4, !dbg !168
  br label %for.inc, !dbg !169

for.inc:                                          ; preds = %for.body
  %incdec.ptr7 = getelementptr inbounds float, float* %pd.addr.0, i32 2, !dbg !170
  %incdec.ptr5 = getelementptr inbounds float, float* %pc.addr.0, i32 2, !dbg !171
  %incdec.ptr3 = getelementptr inbounds float, float* %pb.addr.0, i32 2, !dbg !172
  %incdec.ptr1 = getelementptr inbounds float, float* %pa.addr.0, i32 2, !dbg !173
  %inc = add nuw nsw i32 %i.0, 1, !dbg !174
  br label %for.cond, !dbg !156, !llvm.loop !175

for.end:                                          ; preds = %for.cond
  ret void, !dbg !176
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @complex_updates_return() #0 !dbg !177 {
entry:
  br label %for.cond, !dbg !178

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !179
  %check_sum.0 = phi float [ 0.000000e+00, %entry ], [ %add, %for.inc ], !dbg !179
  %exitcond.not = icmp eq i32 %i.0, 1, !dbg !180
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !181

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !182

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* @complex_updates_D, i32 0, i32 %i.0, !dbg !183
  %0 = load float, float* %arrayidx, align 4, !dbg !183
  %add = fadd float %check_sum.0, %0, !dbg !184
  %inc = add nuw nsw i32 %i.0, 1, !dbg !185
  br label %for.cond, !dbg !181, !llvm.loop !186

for.end:                                          ; preds = %for.cond
  %cmp1 = fcmp une float %check_sum.0, 1.440000e+02, !dbg !188
  %conv = zext i1 %cmp1 to i32, !dbg !188
  ret i32 %conv, !dbg !189
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @complex_updates_main() #0 !dbg !190 {
entry:
  br label %for.cond, !dbg !191

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !192
  %p_d.0 = phi float* [ getelementptr inbounds ([2 x float], [2 x float]* @complex_updates_D, i32 0, i32 0), %entry ], [ %incdec.ptr10, %for.inc ], !dbg !192
  %p_c.0 = phi float* [ getelementptr inbounds ([2 x float], [2 x float]* @complex_updates_C, i32 0, i32 0), %entry ], [ %incdec.ptr5, %for.inc ], !dbg !192
  %p_b.0 = phi float* [ getelementptr inbounds ([2 x float], [2 x float]* @complex_updates_B, i32 0, i32 0), %entry ], [ %incdec.ptr9, %for.inc ], !dbg !192
  %p_a.0 = phi float* [ getelementptr inbounds ([2 x float], [2 x float]* @complex_updates_A, i32 0, i32 0), %entry ], [ %incdec.ptr11, %for.inc ], !dbg !192
  %exitcond.not = icmp eq i32 %i.0, 1, !dbg !193
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !194

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds float, float* %p_c.0, i32 1, !dbg !195
  %0 = load float, float* %p_c.0, align 4, !dbg !196
  %incdec.ptr1 = getelementptr inbounds float, float* %p_a.0, i32 1, !dbg !197
  %1 = load float, float* %p_a.0, align 4, !dbg !198
  %incdec.ptr2 = getelementptr inbounds float, float* %p_b.0, i32 1, !dbg !199
  %2 = load float, float* %p_b.0, align 4, !dbg !200
  %3 = call float @llvm.fmuladd.f32(float %1, float %2, float %0), !dbg !201
  store float %3, float* %p_d.0, align 4, !dbg !202
  %4 = load float, float* %incdec.ptr1, align 4, !dbg !203
  %5 = load float, float* %incdec.ptr2, align 4, !dbg !204
  %incdec.ptr4 = getelementptr inbounds float, float* %p_d.0, i32 1, !dbg !205
  %neg = fneg float %4, !dbg !206
  %6 = call float @llvm.fmuladd.f32(float %neg, float %5, float %3), !dbg !206
  store float %6, float* %p_d.0, align 4, !dbg !206
  %7 = load float, float* %incdec.ptr, align 4, !dbg !207
  %8 = load float, float* %incdec.ptr1, align 4, !dbg !208
  %incdec.ptr7 = getelementptr inbounds float, float* %p_b.0, i32 1, !dbg !209
  %9 = load float, float* %p_b.0, align 4, !dbg !210
  %10 = call float @llvm.fmuladd.f32(float %8, float %9, float %7), !dbg !211
  store float %10, float* %incdec.ptr4, align 4, !dbg !212
  %11 = load float, float* %p_a.0, align 4, !dbg !213
  %12 = load float, float* %incdec.ptr7, align 4, !dbg !214
  %13 = call float @llvm.fmuladd.f32(float %11, float %12, float %10), !dbg !215
  store float %13, float* %incdec.ptr4, align 4, !dbg !215
  br label %for.inc, !dbg !216

for.inc:                                          ; preds = %for.body
  %incdec.ptr10 = getelementptr inbounds float, float* %p_d.0, i32 2, !dbg !217
  %incdec.ptr9 = getelementptr inbounds float, float* %p_b.0, i32 2, !dbg !218
  %incdec.ptr5 = getelementptr inbounds float, float* %p_c.0, i32 2, !dbg !219
  %inc = add nuw nsw i32 %i.0, 1, !dbg !220
  %incdec.ptr11 = getelementptr inbounds float, float* %p_a.0, i32 2, !dbg !221
  br label %for.cond, !dbg !194, !llvm.loop !222

for.end:                                          ; preds = %for.cond
  ret void, !dbg !223
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !224 {
entry:
  call arm_aapcs_vfpcc void @complex_updates_init() #4, !dbg !225
  call arm_aapcs_vfpcc void @complex_updates_main() #4, !dbg !226
  %call = call arm_aapcs_vfpcc i32 @complex_updates_return() #4, !dbg !227
  ret i32 %call, !dbg !228
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #2 !dbg !229 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !230
  br i1 %cmp, label %if.then, label %if.end, !dbg !231

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !232
  unreachable, !dbg !232

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !233
  ret i64 %0, !dbg !234
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #3 !dbg !235 {
entry:
  unreachable, !dbg !236
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #2 !dbg !237 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !238
  br i1 %cmp, label %if.then, label %if.end, !dbg !239

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !240
  unreachable, !dbg !240

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !241
  ret i32 %0, !dbg !242
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !243 {
entry:
  %add = add i64 %a, %b, !dbg !244
  %cmp = icmp sgt i64 %b, -1, !dbg !245
  br i1 %cmp, label %if.then, label %if.else, !dbg !246

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !247
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !248

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !249
  unreachable, !dbg !249

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !250

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !251
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !252

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !253
  unreachable, !dbg !253

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !254
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !255 {
entry:
  %add = add i32 %a, %b, !dbg !256
  %cmp = icmp sgt i32 %b, -1, !dbg !257
  br i1 %cmp, label %if.then, label %if.else, !dbg !258

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !259
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !260

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !261
  unreachable, !dbg !261

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !262

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !263
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !264

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !265
  unreachable, !dbg !265

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !266
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #2 !dbg !267 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !268
  store i64 %a, i64* %all, align 8, !dbg !269
  %and = and i32 %b, 32, !dbg !270
  %tobool.not = icmp eq i32 %and, 0, !dbg !270
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !271

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !272
  store i32 0, i32* %low, align 8, !dbg !273
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !274
  %0 = load i32, i32* %low2, align 8, !dbg !274
  %sub = add nsw i32 %b, -32, !dbg !275
  %shl = shl i32 %0, %sub, !dbg !276
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !277
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !278
  store i32 %shl, i32* %high, align 4, !dbg !279
  br label %if.end18, !dbg !280

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !281
  br i1 %cmp, label %if.then4, label %if.end, !dbg !282

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !283

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !284
  %1 = load i32, i32* %low6, align 8, !dbg !284
  %shl7 = shl i32 %1, %b, !dbg !285
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !286
  store i32 %shl7, i32* %low9, align 8, !dbg !287
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !288
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !289
  %2 = load i32, i32* %high11, align 4, !dbg !289
  %shl12 = shl i32 %2, %b, !dbg !290
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !291
  %3 = load i32, i32* %low14, align 8, !dbg !291
  %sub15 = sub nsw i32 32, %b, !dbg !292
  %shr = lshr i32 %3, %sub15, !dbg !293
  %or = or i32 %shl12, %shr, !dbg !294
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !295
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !296
  store i32 %or, i32* %high17, align 4, !dbg !297
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !298
  %4 = load i64, i64* %all19, align 8, !dbg !298
  br label %return, !dbg !299

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !300
  ret i64 %retval.0, !dbg !301
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !302 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !303
  store i64 %a, i64* %all, align 8, !dbg !304
  %and = and i32 %b, 32, !dbg !305
  %tobool.not = icmp eq i32 %and, 0, !dbg !305
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !306

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !307
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !308
  %0 = load i32, i32* %high, align 4, !dbg !308
  %shr = ashr i32 %0, 31, !dbg !309
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !310
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !311
  store i32 %shr, i32* %high2, align 4, !dbg !312
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !313
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !314
  %1 = load i32, i32* %high4, align 4, !dbg !314
  %sub = add nsw i32 %b, -32, !dbg !315
  %shr5 = ashr i32 %1, %sub, !dbg !316
  %low = bitcast %union.dwords* %result to i32*, !dbg !317
  store i32 %shr5, i32* %low, align 8, !dbg !318
  br label %if.end21, !dbg !319

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !320
  br i1 %cmp, label %if.then7, label %if.end, !dbg !321

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !322

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !323
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !324
  %2 = load i32, i32* %high9, align 4, !dbg !324
  %shr10 = ashr i32 %2, %b, !dbg !325
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !326
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !327
  store i32 %shr10, i32* %high12, align 4, !dbg !328
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !329
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !330
  %3 = load i32, i32* %high14, align 4, !dbg !330
  %sub15 = sub nsw i32 32, %b, !dbg !331
  %shl = shl i32 %3, %sub15, !dbg !332
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !333
  %4 = load i32, i32* %low17, align 8, !dbg !333
  %shr18 = lshr i32 %4, %b, !dbg !334
  %or = or i32 %shl, %shr18, !dbg !335
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !336
  store i32 %or, i32* %low20, align 8, !dbg !337
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !338
  %5 = load i64, i64* %all22, align 8, !dbg !338
  br label %return, !dbg !339

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !340
  ret i64 %retval.0, !dbg !341
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #2 !dbg !342 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !343
  store i64 %a, i64* %all, align 8, !dbg !344
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !345
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !346
  %0 = load i32, i32* %high, align 4, !dbg !346
  %cmp = icmp eq i32 %0, 0, !dbg !347
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !348
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !349
  %1 = load i32, i32* %high2, align 4, !dbg !349
  %low = bitcast %union.dwords* %x to i32*, !dbg !350
  %2 = load i32, i32* %low, align 8, !dbg !350
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !351
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !352, !range !353
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !354
  %add = add nuw nsw i32 %4, %and5, !dbg !355
  ret i32 %add, !dbg !356
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #2 !dbg !357 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !358
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !359
  %sub = sub nuw nsw i32 16, %shl, !dbg !360
  %shr = lshr i32 %a, %sub, !dbg !361
  %and1 = and i32 %shr, 65280, !dbg !362
  %cmp2 = icmp eq i32 %and1, 0, !dbg !363
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !364
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !365
  %shr6 = lshr i32 %shr, %sub5, !dbg !366
  %add = or i32 %shl, %shl4, !dbg !367
  %and7 = and i32 %shr6, 240, !dbg !368
  %cmp8 = icmp eq i32 %and7, 0, !dbg !369
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !370
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !371
  %shr12 = lshr i32 %shr6, %sub11, !dbg !372
  %add13 = or i32 %add, %shl10, !dbg !373
  %and14 = and i32 %shr12, 12, !dbg !374
  %cmp15 = icmp eq i32 %and14, 0, !dbg !375
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !376
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !377
  %shr19 = lshr i32 %shr12, %sub18, !dbg !378
  %add20 = or i32 %add13, %shl17, !dbg !379
  %sub21 = sub i32 2, %shr19, !dbg !380
  %and22 = lshr i32 %shr19, 1, !dbg !381
  %0 = or i32 %and22, -2, !dbg !381
  %.neg = add nsw i32 %0, 1, !dbg !381
  %and26 = and i32 %sub21, %.neg, !dbg !382
  %add27 = add i32 %add20, %and26, !dbg !383
  ret i32 %add27, !dbg !384
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !385 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !386
  store i64 %a, i64* %all, align 8, !dbg !387
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !388
  store i64 %b, i64* %all1, align 8, !dbg !389
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !390
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !391
  %0 = load i32, i32* %high, align 4, !dbg !391
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !392
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !393
  %1 = load i32, i32* %high3, align 4, !dbg !393
  %cmp = icmp slt i32 %0, %1, !dbg !394
  br i1 %cmp, label %if.then, label %if.end, !dbg !395

if.then:                                          ; preds = %entry
  br label %return, !dbg !396

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !397
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !398
  %2 = load i32, i32* %high5, align 4, !dbg !398
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !399
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !400
  %3 = load i32, i32* %high7, align 4, !dbg !400
  %cmp8 = icmp sgt i32 %2, %3, !dbg !401
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !402

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !403

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !404
  %4 = load i32, i32* %low, align 8, !dbg !404
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !405
  %5 = load i32, i32* %low13, align 8, !dbg !405
  %cmp14 = icmp ult i32 %4, %5, !dbg !406
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !407

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !408

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !409
  %6 = load i32, i32* %low18, align 8, !dbg !409
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !410
  %7 = load i32, i32* %low20, align 8, !dbg !410
  %cmp21 = icmp ugt i32 %6, %7, !dbg !411
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !412

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !413

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !414

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !415
  ret i32 %retval.0, !dbg !416
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !417 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !418
  %sub = add nsw i32 %call, -1, !dbg !419
  ret i32 %sub, !dbg !420
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #2 !dbg !421 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !422
  store i64 %a, i64* %all, align 8, !dbg !423
  %low = bitcast %union.dwords* %x to i32*, !dbg !424
  %0 = load i32, i32* %low, align 8, !dbg !424
  %cmp = icmp eq i32 %0, 0, !dbg !425
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !426
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !427
  %1 = load i32, i32* %high, align 4, !dbg !427
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !428
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !429, !range !353
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !430
  %add = add nuw nsw i32 %3, %and5, !dbg !431
  ret i32 %add, !dbg !432
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #2 !dbg !433 {
entry:
  %and = and i32 %a, 65535, !dbg !434
  %cmp = icmp eq i32 %and, 0, !dbg !435
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !436
  %shr = lshr i32 %a, %shl, !dbg !437
  %and1 = and i32 %shr, 255, !dbg !438
  %cmp2 = icmp eq i32 %and1, 0, !dbg !439
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !440
  %shr5 = lshr i32 %shr, %shl4, !dbg !441
  %add = or i32 %shl, %shl4, !dbg !442
  %and6 = and i32 %shr5, 15, !dbg !443
  %cmp7 = icmp eq i32 %and6, 0, !dbg !444
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !445
  %shr10 = lshr i32 %shr5, %shl9, !dbg !446
  %add11 = or i32 %add, %shl9, !dbg !447
  %and12 = and i32 %shr10, 3, !dbg !448
  %cmp13 = icmp eq i32 %and12, 0, !dbg !449
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !450
  %shr16 = lshr i32 %shr10, %shl15, !dbg !451
  %add18 = or i32 %add11, %shl15, !dbg !452
  %and17 = lshr i32 %shr16, 1, !dbg !453
  %shr19 = and i32 %and17, 1, !dbg !453
  %sub = sub nuw nsw i32 2, %shr19, !dbg !454
  %0 = or i32 %shr16, -2, !dbg !455
  %.neg = add nsw i32 %0, 1, !dbg !455
  %and24 = and i32 %sub, %.neg, !dbg !456
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !457
  ret i32 %add25, !dbg !458
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !459 {
entry:
  %shr = ashr i64 %a, 63, !dbg !460
  %shr1 = ashr i64 %b, 63, !dbg !461
  %xor = xor i64 %shr, %a, !dbg !462
  %sub = sub nsw i64 %xor, %shr, !dbg !463
  %xor2 = xor i64 %shr1, %b, !dbg !464
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !465
  %xor4 = xor i64 %shr, %shr1, !dbg !466
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !467
  %xor5 = xor i64 %call, %xor4, !dbg !468
  %sub6 = sub i64 %xor5, %xor4, !dbg !469
  ret i64 %sub6, !dbg !470
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !471 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !472
  store i64 %a, i64* %all, align 8, !dbg !473
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !474
  store i64 %b, i64* %all1, align 8, !dbg !475
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !476
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !477
  %0 = load i32, i32* %high, align 4, !dbg !477
  %cmp = icmp eq i32 %0, 0, !dbg !478
  br i1 %cmp, label %if.then, label %if.end23, !dbg !479

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !480
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !481
  %1 = load i32, i32* %high3, align 4, !dbg !481
  %cmp4 = icmp eq i32 %1, 0, !dbg !482
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !483

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !484
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !484

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !485
  %2 = load i32, i32* %low, align 8, !dbg !485
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !486
  %3 = load i32, i32* %low9, align 8, !dbg !486
  %rem10 = urem i32 %2, %3, !dbg !487
  %conv = zext i32 %rem10 to i64, !dbg !488
  store i64 %conv, i64* %rem, align 8, !dbg !489
  br label %if.end, !dbg !490

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !491
  %4 = load i32, i32* %low12, align 8, !dbg !491
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !492
  %5 = load i32, i32* %low14, align 8, !dbg !492
  %div = udiv i32 %4, %5, !dbg !493
  %conv15 = zext i32 %div to i64, !dbg !494
  br label %return, !dbg !495

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !496
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !496

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !497
  %6 = load i32, i32* %low20, align 8, !dbg !497
  %conv21 = zext i32 %6 to i64, !dbg !498
  store i64 %conv21, i64* %rem, align 8, !dbg !499
  br label %if.end22, !dbg !500

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !501

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !502
  %7 = load i32, i32* %low25, align 8, !dbg !502
  %cmp26 = icmp eq i32 %7, 0, !dbg !503
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !504

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !505
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !506
  %8 = load i32, i32* %high30, align 4, !dbg !506
  %cmp31 = icmp eq i32 %8, 0, !dbg !507
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !508

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !509
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !509

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !510
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !511
  %9 = load i32, i32* %high37, align 4, !dbg !511
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !512
  %10 = load i32, i32* %low39, align 8, !dbg !512
  %rem40 = urem i32 %9, %10, !dbg !513
  %conv41 = zext i32 %rem40 to i64, !dbg !514
  store i64 %conv41, i64* %rem, align 8, !dbg !515
  br label %if.end42, !dbg !516

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !517
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !518
  %11 = load i32, i32* %high44, align 4, !dbg !518
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !519
  %12 = load i32, i32* %low46, align 8, !dbg !519
  %div47 = udiv i32 %11, %12, !dbg !520
  %conv48 = zext i32 %div47 to i64, !dbg !521
  br label %return, !dbg !522

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !523
  %13 = load i32, i32* %low51, align 8, !dbg !523
  %cmp52 = icmp eq i32 %13, 0, !dbg !524
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !525

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !526
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !526

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !527
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !528
  %14 = load i32, i32* %high58, align 4, !dbg !528
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !529
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !530
  %15 = load i32, i32* %high60, align 4, !dbg !530
  %rem61 = urem i32 %14, %15, !dbg !531
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !532
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !533
  store i32 %rem61, i32* %high63, align 4, !dbg !534
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !535
  store i32 0, i32* %low65, align 8, !dbg !536
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !537
  %16 = load i64, i64* %all66, align 8, !dbg !537
  store i64 %16, i64* %rem, align 8, !dbg !538
  br label %if.end67, !dbg !539

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !540
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !541
  %17 = load i32, i32* %high69, align 4, !dbg !541
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !542
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !543
  %18 = load i32, i32* %high71, align 4, !dbg !543
  %div72 = udiv i32 %17, %18, !dbg !544
  %conv73 = zext i32 %div72 to i64, !dbg !545
  br label %return, !dbg !546

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !547
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !548
  %19 = load i32, i32* %high76, align 4, !dbg !548
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !549
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !550
  %20 = load i32, i32* %high78, align 4, !dbg !550
  %sub = add i32 %20, -1, !dbg !551
  %and = and i32 %19, %sub, !dbg !552
  %cmp79 = icmp eq i32 %and, 0, !dbg !553
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !554

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !555
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !555

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !556
  %21 = load i32, i32* %low85, align 8, !dbg !556
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !557
  store i32 %21, i32* %low87, align 8, !dbg !558
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !559
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !560
  %22 = load i32, i32* %high89, align 4, !dbg !560
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !561
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !562
  %23 = load i32, i32* %high91, align 4, !dbg !562
  %sub92 = add i32 %23, -1, !dbg !563
  %and93 = and i32 %22, %sub92, !dbg !564
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !565
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !566
  store i32 %and93, i32* %high95, align 4, !dbg !567
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !568
  %24 = load i64, i64* %all96, align 8, !dbg !568
  store i64 %24, i64* %rem, align 8, !dbg !569
  br label %if.end97, !dbg !570

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !571
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !572
  %25 = load i32, i32* %high99, align 4, !dbg !572
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !573
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !574
  %26 = load i32, i32* %high101, align 4, !dbg !574
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !575, !range !353
  %shr = lshr i32 %25, %27, !dbg !576
  %conv102 = zext i32 %shr to i64, !dbg !577
  br label %return, !dbg !578

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !579
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !580
  %28 = load i32, i32* %high105, align 4, !dbg !580
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !581, !range !353
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !582
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !583
  %30 = load i32, i32* %high107, align 4, !dbg !583
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !584, !range !353
  %sub108 = sub nsw i32 %29, %31, !dbg !585
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !586
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !587

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !588
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !588

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !589
  %32 = load i64, i64* %all114, align 8, !dbg !589
  store i64 %32, i64* %rem, align 8, !dbg !590
  br label %if.end115, !dbg !591

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !592

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !593
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !594
  store i32 0, i32* %low118, align 8, !dbg !595
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !596
  %33 = load i32, i32* %low120, align 8, !dbg !596
  %sub121 = sub nsw i32 31, %sub108, !dbg !597
  %shl = shl i32 %33, %sub121, !dbg !598
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !599
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !600
  store i32 %shl, i32* %high123, align 4, !dbg !601
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !602
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !603
  %34 = load i32, i32* %high125, align 4, !dbg !603
  %shr126 = lshr i32 %34, %inc, !dbg !604
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !605
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !606
  store i32 %shr126, i32* %high128, align 4, !dbg !607
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !608
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !609
  %35 = load i32, i32* %high130, align 4, !dbg !609
  %sub131 = sub nsw i32 31, %sub108, !dbg !610
  %shl132 = shl i32 %35, %sub131, !dbg !611
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !612
  %36 = load i32, i32* %low134, align 8, !dbg !612
  %shr135 = lshr i32 %36, %inc, !dbg !613
  %or = or i32 %shl132, %shr135, !dbg !614
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !615
  store i32 %or, i32* %low137, align 8, !dbg !616
  br label %if.end317, !dbg !617

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !618
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !619
  %37 = load i32, i32* %high139, align 4, !dbg !619
  %cmp140 = icmp eq i32 %37, 0, !dbg !620
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !621

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !622
  %38 = load i32, i32* %low144, align 8, !dbg !622
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !623, !range !353
  %cmp149 = icmp ult i32 %39, 2, !dbg !623
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !624

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !625
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !625

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !626
  %40 = load i32, i32* %low155, align 8, !dbg !626
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !627
  %41 = load i32, i32* %low157, align 8, !dbg !627
  %sub158 = add i32 %41, -1, !dbg !628
  %and159 = and i32 %40, %sub158, !dbg !629
  %conv160 = zext i32 %and159 to i64, !dbg !630
  store i64 %conv160, i64* %rem, align 8, !dbg !631
  br label %if.end161, !dbg !632

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !633
  %42 = load i32, i32* %low163, align 8, !dbg !633
  %cmp164 = icmp eq i32 %42, 1, !dbg !634
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !635

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !636
  %43 = load i64, i64* %all167, align 8, !dbg !636
  br label %return, !dbg !637

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !638
  %44 = load i32, i32* %low170, align 8, !dbg !638
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !639, !range !353
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !640
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !641
  %46 = load i32, i32* %high172, align 4, !dbg !641
  %shr173 = lshr i32 %46, %45, !dbg !642
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !643
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !644
  store i32 %shr173, i32* %high175, align 4, !dbg !645
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !646
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !647
  %47 = load i32, i32* %high177, align 4, !dbg !647
  %sub178 = sub nuw nsw i32 32, %45, !dbg !648
  %shl179 = shl i32 %47, %sub178, !dbg !649
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !650
  %48 = load i32, i32* %low181, align 8, !dbg !650
  %shr182 = lshr i32 %48, %45, !dbg !651
  %or183 = or i32 %shl179, %shr182, !dbg !652
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !653
  store i32 %or183, i32* %low185, align 8, !dbg !654
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !655
  %49 = load i64, i64* %all186, align 8, !dbg !655
  br label %return, !dbg !656

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !657
  %50 = load i32, i32* %low189, align 8, !dbg !657
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !658, !range !353
  %add = add nuw nsw i32 %51, 33, !dbg !659
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !660
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !661
  %52 = load i32, i32* %high191, align 4, !dbg !661
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !662, !range !353
  %sub192 = sub nsw i32 %add, %53, !dbg !663
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !664
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !665

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !666
  store i32 0, i32* %low197, align 8, !dbg !667
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !668
  %54 = load i32, i32* %low199, align 8, !dbg !668
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !669
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !670
  store i32 %54, i32* %high201, align 4, !dbg !671
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !672
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !673
  store i32 0, i32* %high203, align 4, !dbg !674
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !675
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !676
  %55 = load i32, i32* %high205, align 4, !dbg !676
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !677
  store i32 %55, i32* %low207, align 8, !dbg !678
  br label %if.end262, !dbg !679

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !680
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !681

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !682
  store i32 0, i32* %low213, align 8, !dbg !683
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !684
  %56 = load i32, i32* %low215, align 8, !dbg !684
  %sub216 = sub nsw i32 32, %sub192, !dbg !685
  %shl217 = shl i32 %56, %sub216, !dbg !686
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !687
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !688
  store i32 %shl217, i32* %high219, align 4, !dbg !689
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !690
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !691
  %57 = load i32, i32* %high221, align 4, !dbg !691
  %shr222 = lshr i32 %57, %sub192, !dbg !692
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !693
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !694
  store i32 %shr222, i32* %high224, align 4, !dbg !695
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !696
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !697
  %58 = load i32, i32* %high226, align 4, !dbg !697
  %sub227 = sub nsw i32 32, %sub192, !dbg !698
  %shl228 = shl i32 %58, %sub227, !dbg !699
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !700
  %59 = load i32, i32* %low230, align 8, !dbg !700
  %shr231 = lshr i32 %59, %sub192, !dbg !701
  %or232 = or i32 %shl228, %shr231, !dbg !702
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !703
  store i32 %or232, i32* %low234, align 8, !dbg !704
  br label %if.end261, !dbg !705

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !706
  %60 = load i32, i32* %low237, align 8, !dbg !706
  %sub238 = sub nsw i32 64, %sub192, !dbg !707
  %shl239 = shl i32 %60, %sub238, !dbg !708
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !709
  store i32 %shl239, i32* %low241, align 8, !dbg !710
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !711
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !712
  %61 = load i32, i32* %high243, align 4, !dbg !712
  %sub244 = sub nsw i32 64, %sub192, !dbg !713
  %shl245 = shl i32 %61, %sub244, !dbg !714
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !715
  %62 = load i32, i32* %low247, align 8, !dbg !715
  %sub248 = add nsw i32 %sub192, -32, !dbg !716
  %shr249 = lshr i32 %62, %sub248, !dbg !717
  %or250 = or i32 %shl245, %shr249, !dbg !718
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !719
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !720
  store i32 %or250, i32* %high252, align 4, !dbg !721
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !722
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !723
  store i32 0, i32* %high254, align 4, !dbg !724
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !725
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !726
  %63 = load i32, i32* %high256, align 4, !dbg !726
  %sub257 = add nsw i32 %sub192, -32, !dbg !727
  %shr258 = lshr i32 %63, %sub257, !dbg !728
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !729
  store i32 %shr258, i32* %low260, align 8, !dbg !730
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !731

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !732
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !733
  %64 = load i32, i32* %high265, align 4, !dbg !733
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !734, !range !353
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !735
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !736
  %66 = load i32, i32* %high267, align 4, !dbg !736
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !737, !range !353
  %sub268 = sub nsw i32 %65, %67, !dbg !738
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !739
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !740

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !741
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !741

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !742
  %68 = load i64, i64* %all274, align 8, !dbg !742
  store i64 %68, i64* %rem, align 8, !dbg !743
  br label %if.end275, !dbg !744

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !745

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !746
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !747
  store i32 0, i32* %low279, align 8, !dbg !748
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !749
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !750

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !751
  %69 = load i32, i32* %low284, align 8, !dbg !751
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !752
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !753
  store i32 %69, i32* %high286, align 4, !dbg !754
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !755
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !756
  store i32 0, i32* %high288, align 4, !dbg !757
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !758
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !759
  %70 = load i32, i32* %high290, align 4, !dbg !759
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !760
  store i32 %70, i32* %low292, align 8, !dbg !761
  br label %if.end315, !dbg !762

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !763
  %71 = load i32, i32* %low295, align 8, !dbg !763
  %sub296 = sub nsw i32 31, %sub268, !dbg !764
  %shl297 = shl i32 %71, %sub296, !dbg !765
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !766
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !767
  store i32 %shl297, i32* %high299, align 4, !dbg !768
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !769
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !770
  %72 = load i32, i32* %high301, align 4, !dbg !770
  %shr302 = lshr i32 %72, %inc277, !dbg !771
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !772
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !773
  store i32 %shr302, i32* %high304, align 4, !dbg !774
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !775
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !776
  %73 = load i32, i32* %high306, align 4, !dbg !776
  %sub307 = sub nsw i32 31, %sub268, !dbg !777
  %shl308 = shl i32 %73, %sub307, !dbg !778
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !779
  %74 = load i32, i32* %low310, align 8, !dbg !779
  %shr311 = lshr i32 %74, %inc277, !dbg !780
  %or312 = or i32 %shl308, %shr311, !dbg !781
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !782
  store i32 %or312, i32* %low314, align 8, !dbg !783
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !784
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !784
  br label %for.cond, !dbg !785

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !784
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !784
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !786
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !785

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !787
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !788
  %75 = load i32, i32* %high321, align 4, !dbg !788
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !789
  %76 = load i32, i32* %low324, align 8, !dbg !789
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !790
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !791
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !792
  store i32 %or326, i32* %high328, align 4, !dbg !793
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !794
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !795
  %77 = load i32, i32* %high333, align 4, !dbg !795
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !796
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !797
  store i32 %or335, i32* %low337, align 8, !dbg !798
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !799
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !800
  %78 = load i32, i32* %high339, align 4, !dbg !800
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !801
  %79 = load i32, i32* %low342, align 8, !dbg !801
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !802
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !803
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !804
  store i32 %or344, i32* %high346, align 4, !dbg !805
  %shl349 = shl i32 %79, 1, !dbg !806
  %or350 = or i32 %shl349, %carry.0, !dbg !807
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !808
  store i32 %or350, i32* %low352, align 8, !dbg !809
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !810
  %80 = load i64, i64* %all354, align 8, !dbg !810
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !811
  %81 = load i64, i64* %all355, align 8, !dbg !811
  %82 = xor i64 %81, -1, !dbg !812
  %sub357 = add i64 %80, %82, !dbg !812
  %isneg = icmp slt i64 %sub357, 0, !dbg !813
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !813
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !814
  %sub364 = sub i64 %81, %and362, !dbg !815
  store i64 %sub364, i64* %all363, align 8, !dbg !815
  br label %for.inc, !dbg !816

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !817
  %conv360 = trunc i64 %and359 to i32, !dbg !818
  %dec = add i32 %sr.2, -1, !dbg !819
  br label %for.cond, !dbg !785, !llvm.loop !820

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !821
  %83 = load i64, i64* %all365, align 8, !dbg !821
  %shl366 = shl i64 %83, 1, !dbg !822
  %conv367 = zext i32 %carry.0 to i64, !dbg !823
  %or368 = or i64 %shl366, %conv367, !dbg !824
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !825
  store i64 %or368, i64* %all369, align 8, !dbg !826
  %tobool370.not = icmp eq i64* %rem, null, !dbg !827
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !827

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !828
  %84 = load i64, i64* %all372, align 8, !dbg !828
  store i64 %84, i64* %rem, align 8, !dbg !829
  br label %if.end373, !dbg !830

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !831
  %85 = load i64, i64* %all374, align 8, !dbg !831
  br label %return, !dbg !832

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !784
  ret i64 %retval.0, !dbg !833
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !834 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !835
  %mul = mul nsw i64 %call, %b, !dbg !836
  %sub = sub nsw i64 %a, %mul, !dbg !837
  store i64 %sub, i64* %rem, align 8, !dbg !838
  ret i64 %call, !dbg !839
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !840 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !841
  %mul = mul nsw i32 %call, %b, !dbg !842
  %sub = sub nsw i32 %a, %mul, !dbg !843
  store i32 %sub, i32* %rem, align 4, !dbg !844
  ret i32 %call, !dbg !845
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !846 {
entry:
  %shr = ashr i32 %a, 31, !dbg !847
  %shr1 = ashr i32 %b, 31, !dbg !848
  %xor = xor i32 %shr, %a, !dbg !849
  %sub = sub nsw i32 %xor, %shr, !dbg !850
  %xor2 = xor i32 %shr1, %b, !dbg !851
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !852
  %xor4 = xor i32 %shr, %shr1, !dbg !853
  %div = udiv i32 %sub, %sub3, !dbg !854
  %xor5 = xor i32 %div, %xor4, !dbg !855
  %sub6 = sub i32 %xor5, %xor4, !dbg !856
  ret i32 %sub6, !dbg !857
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #2 !dbg !858 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !859
  store i64 %a, i64* %all, align 8, !dbg !860
  %low = bitcast %union.dwords* %x to i32*, !dbg !861
  %0 = load i32, i32* %low, align 8, !dbg !861
  %cmp = icmp eq i32 %0, 0, !dbg !862
  br i1 %cmp, label %if.then, label %if.end6, !dbg !863

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !864
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !865
  %1 = load i32, i32* %high, align 4, !dbg !865
  %cmp2 = icmp eq i32 %1, 0, !dbg !866
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !867

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !868

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !869
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !870
  %2 = load i32, i32* %high5, align 4, !dbg !870
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !871, !range !353
  %add = add nuw nsw i32 %3, 33, !dbg !872
  br label %return, !dbg !873

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !874
  %4 = load i32, i32* %low8, align 8, !dbg !874
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !875, !range !353
  %add9 = add nuw nsw i32 %5, 1, !dbg !876
  br label %return, !dbg !877

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !878
  ret i32 %retval.0, !dbg !879
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #2 !dbg !880 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !881
  br i1 %cmp, label %if.then, label %if.end, !dbg !882

if.then:                                          ; preds = %entry
  br label %return, !dbg !883

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !884, !range !353
  %add = add nuw nsw i32 %0, 1, !dbg !885
  br label %return, !dbg !886

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !887
  ret i32 %retval.0, !dbg !888
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !889 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !890
  store i64 %a, i64* %all, align 8, !dbg !891
  %and = and i32 %b, 32, !dbg !892
  %tobool.not = icmp eq i32 %and, 0, !dbg !892
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !893

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !894
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !895
  store i32 0, i32* %high, align 4, !dbg !896
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !897
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !898
  %0 = load i32, i32* %high2, align 4, !dbg !898
  %sub = add nsw i32 %b, -32, !dbg !899
  %shr = lshr i32 %0, %sub, !dbg !900
  %low = bitcast %union.dwords* %result to i32*, !dbg !901
  store i32 %shr, i32* %low, align 8, !dbg !902
  br label %if.end18, !dbg !903

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !904
  br i1 %cmp, label %if.then4, label %if.end, !dbg !905

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !906

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !907
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !908
  %1 = load i32, i32* %high6, align 4, !dbg !908
  %shr7 = lshr i32 %1, %b, !dbg !909
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !910
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !911
  store i32 %shr7, i32* %high9, align 4, !dbg !912
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !913
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !914
  %2 = load i32, i32* %high11, align 4, !dbg !914
  %sub12 = sub nsw i32 32, %b, !dbg !915
  %shl = shl i32 %2, %sub12, !dbg !916
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !917
  %3 = load i32, i32* %low14, align 8, !dbg !917
  %shr15 = lshr i32 %3, %b, !dbg !918
  %or = or i32 %shl, %shr15, !dbg !919
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !920
  store i32 %or, i32* %low17, align 8, !dbg !921
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !922
  %4 = load i64, i64* %all19, align 8, !dbg !922
  br label %return, !dbg !923

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !924
  ret i64 %retval.0, !dbg !925
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !926 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !927
  %shr1 = ashr i64 %a, 63, !dbg !928
  %xor2 = xor i64 %shr1, %a, !dbg !929
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !930
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !931
  %1 = load i64, i64* %r, align 8, !dbg !932
  %xor4 = xor i64 %1, %shr1, !dbg !933
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !934
  ret i64 %sub5, !dbg !935
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !936 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !937
  %mul = mul nsw i32 %call, %b, !dbg !938
  %sub = sub nsw i32 %a, %mul, !dbg !939
  ret i32 %sub, !dbg !940
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !941 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !942
  br i1 %cmp, label %if.then, label %if.end4, !dbg !943

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !944
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !945

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !946
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !947

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !948

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !949
  unreachable, !dbg !949

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !950
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !951

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !952
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !953

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !954
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !955

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !956

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !957
  unreachable, !dbg !957

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !958
  %xor = xor i64 %shr, %a, !dbg !959
  %sub = sub nsw i64 %xor, %shr, !dbg !960
  %shr14 = ashr i64 %b, 63, !dbg !961
  %xor15 = xor i64 %shr14, %b, !dbg !962
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !963
  %cmp17 = icmp slt i64 %sub, 2, !dbg !964
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !965

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !966
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !967

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !968

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !969
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !970

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !971
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !972
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !973

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !974
  unreachable, !dbg !974

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !975

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !976
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !977
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !978
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !979

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !980
  unreachable, !dbg !980

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !981

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !982
  ret i64 %retval.0, !dbg !983
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !984 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !985
  br i1 %cmp, label %if.then, label %if.end4, !dbg !986

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !987
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !988

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !989
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !990

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !991

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !992
  unreachable, !dbg !992

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !993
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !994

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !995
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !996

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !997
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !998

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !999

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1000
  unreachable, !dbg !1000

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !1001
  %xor = xor i32 %shr, %a, !dbg !1002
  %sub = sub nsw i32 %xor, %shr, !dbg !1003
  %shr14 = ashr i32 %b, 31, !dbg !1004
  %xor15 = xor i32 %shr14, %b, !dbg !1005
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !1006
  %cmp17 = icmp slt i32 %sub, 2, !dbg !1007
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1008

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !1009
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1010

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1011

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !1012
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1013

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !1014
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !1015
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1016

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1017
  unreachable, !dbg !1017

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1018

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !1019
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !1020
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !1021
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1022

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1023
  unreachable, !dbg !1023

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1024

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !1025
  ret i32 %retval.0, !dbg !1026
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #2 !dbg !1027 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1028
  store i64 %a, i64* %all, align 8, !dbg !1029
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1030
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1031
  %0 = load i32, i32* %high, align 4, !dbg !1031
  %low = bitcast %union.dwords* %x to i32*, !dbg !1032
  %1 = load i32, i32* %low, align 8, !dbg !1032
  %xor = xor i32 %0, %1, !dbg !1033
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !1034
  ret i32 %call, !dbg !1035
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #2 !dbg !1036 {
entry:
  %shr = lshr i32 %a, 16, !dbg !1037
  %xor = xor i32 %shr, %a, !dbg !1038
  %shr1 = lshr i32 %xor, 8, !dbg !1039
  %xor2 = xor i32 %xor, %shr1, !dbg !1040
  %shr3 = lshr i32 %xor2, 4, !dbg !1041
  %xor4 = xor i32 %xor2, %shr3, !dbg !1042
  %and = and i32 %xor4, 15, !dbg !1043
  %shr5 = lshr i32 27030, %and, !dbg !1044
  %and6 = and i32 %shr5, 1, !dbg !1045
  ret i32 %and6, !dbg !1046
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #2 !dbg !1047 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1048
  %and = and i64 %shr, 6148914691236517205, !dbg !1049
  %sub = sub i64 %a, %and, !dbg !1050
  %shr1 = lshr i64 %sub, 2, !dbg !1051
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1052
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1053
  %add = add nuw nsw i64 %and2, %and3, !dbg !1054
  %shr4 = lshr i64 %add, 4, !dbg !1055
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1056
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1057
  %shr7 = lshr i64 %and6, 32, !dbg !1058
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1059
  %conv = trunc i64 %add8 to i32, !dbg !1060
  %shr9 = lshr i32 %conv, 16, !dbg !1061
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1062
  %shr11 = lshr i32 %add10, 8, !dbg !1063
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1064
  %and13 = and i32 %add12, 127, !dbg !1065
  ret i32 %and13, !dbg !1066
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #2 !dbg !1067 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1068
  %and = and i32 %shr, 1431655765, !dbg !1069
  %sub = sub i32 %a, %and, !dbg !1070
  %shr1 = lshr i32 %sub, 2, !dbg !1071
  %and2 = and i32 %shr1, 858993459, !dbg !1072
  %and3 = and i32 %sub, 858993459, !dbg !1073
  %add = add nuw nsw i32 %and2, %and3, !dbg !1074
  %shr4 = lshr i32 %add, 4, !dbg !1075
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1076
  %and6 = and i32 %add5, 252645135, !dbg !1077
  %shr7 = lshr i32 %and6, 16, !dbg !1078
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1079
  %shr9 = lshr i32 %add8, 8, !dbg !1080
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1081
  %and11 = and i32 %add10, 63, !dbg !1082
  ret i32 %and11, !dbg !1083
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1084 {
entry:
  %sub = sub i64 %a, %b, !dbg !1085
  %cmp = icmp sgt i64 %b, -1, !dbg !1086
  br i1 %cmp, label %if.then, label %if.else, !dbg !1087

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1088
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1089

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1090
  unreachable, !dbg !1090

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1091

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1092
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1093

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1094
  unreachable, !dbg !1094

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1095
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1096 {
entry:
  %sub = sub i32 %a, %b, !dbg !1097
  %cmp = icmp sgt i32 %b, -1, !dbg !1098
  br i1 %cmp, label %if.then, label %if.else, !dbg !1099

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1100
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1101

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1102
  unreachable, !dbg !1102

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1103

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1104
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1105

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1106
  unreachable, !dbg !1106

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1107
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !1108 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1109
  store i64 %a, i64* %all, align 8, !dbg !1110
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1111
  store i64 %b, i64* %all1, align 8, !dbg !1112
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1113
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1114
  %0 = load i32, i32* %high, align 4, !dbg !1114
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1115
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1116
  %1 = load i32, i32* %high3, align 4, !dbg !1116
  %cmp = icmp ult i32 %0, %1, !dbg !1117
  br i1 %cmp, label %if.then, label %if.end, !dbg !1118

if.then:                                          ; preds = %entry
  br label %return, !dbg !1119

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1120
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1121
  %2 = load i32, i32* %high5, align 4, !dbg !1121
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1122
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1123
  %3 = load i32, i32* %high7, align 4, !dbg !1123
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1124
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1125

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1126

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1127
  %4 = load i32, i32* %low, align 8, !dbg !1127
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1128
  %5 = load i32, i32* %low13, align 8, !dbg !1128
  %cmp14 = icmp ult i32 %4, %5, !dbg !1129
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1130

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1131

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1132
  %6 = load i32, i32* %low18, align 8, !dbg !1132
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1133
  %7 = load i32, i32* %low20, align 8, !dbg !1133
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1134
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1135

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1136

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1137

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1138
  ret i32 %retval.0, !dbg !1139
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !1140 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1141
  %sub = add nsw i32 %call, -1, !dbg !1142
  ret i32 %sub, !dbg !1143
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1144 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !1145
  ret i64 %call, !dbg !1146
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !1147 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1148
  %mul = mul i32 %call, %b, !dbg !1149
  %sub = sub i32 %a, %mul, !dbg !1150
  store i32 %sub, i32* %rem, align 4, !dbg !1151
  ret i32 %call, !dbg !1152
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #2 !dbg !1153 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1154
  br i1 %cmp, label %if.then, label %if.end, !dbg !1155

if.then:                                          ; preds = %entry
  br label %return, !dbg !1156

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1157
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1158

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1159

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1160, !range !353
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1161, !range !353
  %sub = sub nsw i32 %0, %1, !dbg !1162
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1163
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1164

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1165

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1166
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1167

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1168

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1169
  %sub10 = sub nsw i32 31, %sub, !dbg !1170
  %shl = shl i32 %n, %sub10, !dbg !1171
  %shr = lshr i32 %n, %inc, !dbg !1172
  br label %for.cond, !dbg !1173

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1174
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1174
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1174
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1174
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1175
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1173

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1176
  %2 = xor i32 %or, -1, !dbg !1177
  %sub17 = add i32 %2, %d, !dbg !1177
  br label %for.inc, !dbg !1178

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1179
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1179
  %sub20 = sub i32 %or, %and19, !dbg !1180
  %and = lshr i32 %sub17, 31, !dbg !1181
  %shl14 = shl i32 %q.0, 1, !dbg !1182
  %or15 = or i32 %shl14, %carry.0, !dbg !1183
  %dec = add i32 %sr.0, -1, !dbg !1184
  br label %for.cond, !dbg !1173, !llvm.loop !1185

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1186
  %or22 = or i32 %shl21, %carry.0, !dbg !1187
  br label %return, !dbg !1188

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1174
  ret i32 %retval.0, !dbg !1189
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1190 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !1191
  %0 = load i64, i64* %r, align 8, !dbg !1192
  ret i64 %0, !dbg !1193
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1194 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1195
  %mul = mul i32 %call, %b, !dbg !1196
  %sub = sub i32 %a, %mul, !dbg !1197
  ret i32 %sub, !dbg !1198
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #2 !dbg !1199 {
entry:
  br label %for.cond, !dbg !1200

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1201
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1202
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1203

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1204
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1204
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1205
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1206
  br label %for.inc, !dbg !1207

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1208
  br label %for.cond, !dbg !1203, !llvm.loop !1209

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1210
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #2 !dbg !1211 {
entry:
  br label %for.cond, !dbg !1212

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1213
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1214
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1215

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1216
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1217
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1218
  br label %for.inc, !dbg !1219

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1220
  br label %for.cond, !dbg !1215, !llvm.loop !1221

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1222
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #1

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline noreturn nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin noreturn "no-builtins" }

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112}
!llvm.ident = !{!114, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123, !124}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/complex_updates/complex_updates.c", directory: "/workspaces/llvmta/testcases/tmp.1eyKroAULb", checksumkind: CSK_MD5, checksum: "da40aceed3320ea33c943a402703f898")
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
!125 = distinct !DISubprogram(name: "complex_updates_init", scope: !126, file: !126, line: 58, type: !127, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!126 = !DIFile(filename: "batchtest/complex_updates/complex_updates.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "da40aceed3320ea33c943a402703f898")
!127 = !DISubroutineType(types: !128)
!128 = !{}
!129 = !DILocation(line: 61, column: 18, scope: !125)
!130 = !DILocation(line: 63, column: 3, scope: !125)
!131 = !DILocation(line: 68, column: 9, scope: !125)
!132 = !DILocation(line: 0, scope: !125)
!133 = !DILocation(line: 68, column: 19, scope: !125)
!134 = !DILocation(line: 68, column: 3, scope: !125)
!135 = !DILocation(line: 69, column: 31, scope: !125)
!136 = !DILocation(line: 69, column: 5, scope: !125)
!137 = !DILocation(line: 69, column: 28, scope: !125)
!138 = !DILocation(line: 70, column: 31, scope: !125)
!139 = !DILocation(line: 70, column: 5, scope: !125)
!140 = !DILocation(line: 70, column: 28, scope: !125)
!141 = !DILocation(line: 71, column: 31, scope: !125)
!142 = !DILocation(line: 71, column: 5, scope: !125)
!143 = !DILocation(line: 71, column: 28, scope: !125)
!144 = !DILocation(line: 72, column: 31, scope: !125)
!145 = !DILocation(line: 72, column: 5, scope: !125)
!146 = !DILocation(line: 72, column: 28, scope: !125)
!147 = !DILocation(line: 73, column: 3, scope: !125)
!148 = !DILocation(line: 68, column: 26, scope: !125)
!149 = distinct !{!149, !134, !147, !150}
!150 = !{!"llvm.loop.mustprogress"}
!151 = !DILocation(line: 74, column: 1, scope: !125)
!152 = distinct !DISubprogram(name: "complex_updates_pin_down", scope: !126, file: !126, line: 77, type: !127, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!153 = !DILocation(line: 82, column: 9, scope: !152)
!154 = !DILocation(line: 0, scope: !152)
!155 = !DILocation(line: 82, column: 18, scope: !152)
!156 = !DILocation(line: 82, column: 3, scope: !152)
!157 = !DILocation(line: 83, column: 8, scope: !152)
!158 = !DILocation(line: 83, column: 11, scope: !152)
!159 = !DILocation(line: 84, column: 11, scope: !152)
!160 = !DILocation(line: 85, column: 8, scope: !152)
!161 = !DILocation(line: 85, column: 11, scope: !152)
!162 = !DILocation(line: 86, column: 11, scope: !152)
!163 = !DILocation(line: 87, column: 8, scope: !152)
!164 = !DILocation(line: 87, column: 11, scope: !152)
!165 = !DILocation(line: 88, column: 11, scope: !152)
!166 = !DILocation(line: 89, column: 8, scope: !152)
!167 = !DILocation(line: 89, column: 11, scope: !152)
!168 = !DILocation(line: 90, column: 11, scope: !152)
!169 = !DILocation(line: 91, column: 3, scope: !152)
!170 = !DILocation(line: 90, column: 8, scope: !152)
!171 = !DILocation(line: 88, column: 8, scope: !152)
!172 = !DILocation(line: 86, column: 8, scope: !152)
!173 = !DILocation(line: 84, column: 8, scope: !152)
!174 = !DILocation(line: 82, column: 24, scope: !152)
!175 = distinct !{!175, !156, !169, !150}
!176 = !DILocation(line: 92, column: 1, scope: !152)
!177 = distinct !DISubprogram(name: "complex_updates_return", scope: !126, file: !126, line: 95, type: !127, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!178 = !DILocation(line: 101, column: 9, scope: !177)
!179 = !DILocation(line: 0, scope: !177)
!180 = !DILocation(line: 101, column: 18, scope: !177)
!181 = !DILocation(line: 101, column: 3, scope: !177)
!182 = !DILocation(line: 102, column: 5, scope: !177)
!183 = !DILocation(line: 102, column: 18, scope: !177)
!184 = !DILocation(line: 102, column: 15, scope: !177)
!185 = !DILocation(line: 101, column: 24, scope: !177)
!186 = distinct !{!186, !181, !187, !150}
!187 = !DILocation(line: 102, column: 39, scope: !177)
!188 = !DILocation(line: 104, column: 22, scope: !177)
!189 = !DILocation(line: 104, column: 3, scope: !177)
!190 = distinct !DISubprogram(name: "complex_updates_main", scope: !126, file: !126, line: 112, type: !127, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!191 = !DILocation(line: 119, column: 9, scope: !190)
!192 = !DILocation(line: 0, scope: !190)
!193 = !DILocation(line: 119, column: 19, scope: !190)
!194 = !DILocation(line: 119, column: 3, scope: !190)
!195 = !DILocation(line: 120, column: 19, scope: !190)
!196 = !DILocation(line: 120, column: 15, scope: !190)
!197 = !DILocation(line: 120, column: 28, scope: !190)
!198 = !DILocation(line: 120, column: 24, scope: !190)
!199 = !DILocation(line: 120, column: 37, scope: !190)
!200 = !DILocation(line: 120, column: 33, scope: !190)
!201 = !DILocation(line: 120, column: 22, scope: !190)
!202 = !DILocation(line: 120, column: 13, scope: !190)
!203 = !DILocation(line: 121, column: 24, scope: !190)
!204 = !DILocation(line: 121, column: 33, scope: !190)
!205 = !DILocation(line: 121, column: 9, scope: !190)
!206 = !DILocation(line: 121, column: 12, scope: !190)
!207 = !DILocation(line: 123, column: 15, scope: !190)
!208 = !DILocation(line: 123, column: 24, scope: !190)
!209 = !DILocation(line: 123, column: 37, scope: !190)
!210 = !DILocation(line: 123, column: 33, scope: !190)
!211 = !DILocation(line: 123, column: 22, scope: !190)
!212 = !DILocation(line: 123, column: 13, scope: !190)
!213 = !DILocation(line: 124, column: 24, scope: !190)
!214 = !DILocation(line: 124, column: 33, scope: !190)
!215 = !DILocation(line: 124, column: 12, scope: !190)
!216 = !DILocation(line: 125, column: 3, scope: !190)
!217 = !DILocation(line: 124, column: 9, scope: !190)
!218 = !DILocation(line: 124, column: 37, scope: !190)
!219 = !DILocation(line: 123, column: 19, scope: !190)
!220 = !DILocation(line: 119, column: 26, scope: !190)
!221 = !DILocation(line: 119, column: 33, scope: !190)
!222 = distinct !{!222, !194, !216, !150}
!223 = !DILocation(line: 127, column: 1, scope: !190)
!224 = distinct !DISubprogram(name: "main", scope: !126, file: !126, line: 129, type: !127, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!225 = !DILocation(line: 131, column: 3, scope: !224)
!226 = !DILocation(line: 133, column: 3, scope: !224)
!227 = !DILocation(line: 135, column: 10, scope: !224)
!228 = !DILocation(line: 135, column: 3, scope: !224)
!229 = distinct !DISubprogram(name: "__absvdi2", scope: !3, file: !3, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !128)
!230 = !DILocation(line: 25, column: 11, scope: !229)
!231 = !DILocation(line: 25, column: 9, scope: !229)
!232 = !DILocation(line: 26, column: 9, scope: !229)
!233 = !DILocation(line: 28, column: 20, scope: !229)
!234 = !DILocation(line: 28, column: 5, scope: !229)
!235 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !55, file: !55, line: 57, type: !127, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !128)
!236 = !DILocation(line: 59, column: 1, scope: !235)
!237 = distinct !DISubprogram(name: "__absvsi2", scope: !5, file: !5, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !128)
!238 = !DILocation(line: 25, column: 11, scope: !237)
!239 = !DILocation(line: 25, column: 9, scope: !237)
!240 = !DILocation(line: 26, column: 9, scope: !237)
!241 = !DILocation(line: 28, column: 20, scope: !237)
!242 = !DILocation(line: 28, column: 5, scope: !237)
!243 = distinct !DISubprogram(name: "__addvdi3", scope: !9, file: !9, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !128)
!244 = !DILocation(line: 24, column: 27, scope: !243)
!245 = !DILocation(line: 25, column: 11, scope: !243)
!246 = !DILocation(line: 25, column: 9, scope: !243)
!247 = !DILocation(line: 27, column: 15, scope: !243)
!248 = !DILocation(line: 27, column: 13, scope: !243)
!249 = !DILocation(line: 28, column: 13, scope: !243)
!250 = !DILocation(line: 29, column: 5, scope: !243)
!251 = !DILocation(line: 32, column: 15, scope: !243)
!252 = !DILocation(line: 32, column: 13, scope: !243)
!253 = !DILocation(line: 33, column: 13, scope: !243)
!254 = !DILocation(line: 35, column: 5, scope: !243)
!255 = distinct !DISubprogram(name: "__addvsi3", scope: !11, file: !11, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !128)
!256 = !DILocation(line: 24, column: 27, scope: !255)
!257 = !DILocation(line: 25, column: 11, scope: !255)
!258 = !DILocation(line: 25, column: 9, scope: !255)
!259 = !DILocation(line: 27, column: 15, scope: !255)
!260 = !DILocation(line: 27, column: 13, scope: !255)
!261 = !DILocation(line: 28, column: 13, scope: !255)
!262 = !DILocation(line: 29, column: 5, scope: !255)
!263 = !DILocation(line: 32, column: 15, scope: !255)
!264 = !DILocation(line: 32, column: 13, scope: !255)
!265 = !DILocation(line: 33, column: 13, scope: !255)
!266 = !DILocation(line: 35, column: 5, scope: !255)
!267 = distinct !DISubprogram(name: "__ashldi3", scope: !15, file: !15, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !128)
!268 = !DILocation(line: 29, column: 11, scope: !267)
!269 = !DILocation(line: 29, column: 15, scope: !267)
!270 = !DILocation(line: 30, column: 11, scope: !267)
!271 = !DILocation(line: 30, column: 9, scope: !267)
!272 = !DILocation(line: 32, column: 18, scope: !267)
!273 = !DILocation(line: 32, column: 22, scope: !267)
!274 = !DILocation(line: 33, column: 33, scope: !267)
!275 = !DILocation(line: 33, column: 43, scope: !267)
!276 = !DILocation(line: 33, column: 37, scope: !267)
!277 = !DILocation(line: 33, column: 16, scope: !267)
!278 = !DILocation(line: 33, column: 18, scope: !267)
!279 = !DILocation(line: 33, column: 23, scope: !267)
!280 = !DILocation(line: 34, column: 5, scope: !267)
!281 = !DILocation(line: 37, column: 15, scope: !267)
!282 = !DILocation(line: 37, column: 13, scope: !267)
!283 = !DILocation(line: 38, column: 13, scope: !267)
!284 = !DILocation(line: 39, column: 33, scope: !267)
!285 = !DILocation(line: 39, column: 37, scope: !267)
!286 = !DILocation(line: 39, column: 18, scope: !267)
!287 = !DILocation(line: 39, column: 23, scope: !267)
!288 = !DILocation(line: 40, column: 32, scope: !267)
!289 = !DILocation(line: 40, column: 34, scope: !267)
!290 = !DILocation(line: 40, column: 39, scope: !267)
!291 = !DILocation(line: 40, column: 56, scope: !267)
!292 = !DILocation(line: 40, column: 77, scope: !267)
!293 = !DILocation(line: 40, column: 60, scope: !267)
!294 = !DILocation(line: 40, column: 45, scope: !267)
!295 = !DILocation(line: 40, column: 16, scope: !267)
!296 = !DILocation(line: 40, column: 18, scope: !267)
!297 = !DILocation(line: 40, column: 23, scope: !267)
!298 = !DILocation(line: 42, column: 19, scope: !267)
!299 = !DILocation(line: 42, column: 5, scope: !267)
!300 = !DILocation(line: 0, scope: !267)
!301 = !DILocation(line: 43, column: 1, scope: !267)
!302 = distinct !DISubprogram(name: "__ashrdi3", scope: !19, file: !19, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !128)
!303 = !DILocation(line: 29, column: 11, scope: !302)
!304 = !DILocation(line: 29, column: 15, scope: !302)
!305 = !DILocation(line: 30, column: 11, scope: !302)
!306 = !DILocation(line: 30, column: 9, scope: !302)
!307 = !DILocation(line: 33, column: 31, scope: !302)
!308 = !DILocation(line: 33, column: 33, scope: !302)
!309 = !DILocation(line: 33, column: 38, scope: !302)
!310 = !DILocation(line: 33, column: 16, scope: !302)
!311 = !DILocation(line: 33, column: 18, scope: !302)
!312 = !DILocation(line: 33, column: 23, scope: !302)
!313 = !DILocation(line: 34, column: 30, scope: !302)
!314 = !DILocation(line: 34, column: 32, scope: !302)
!315 = !DILocation(line: 34, column: 43, scope: !302)
!316 = !DILocation(line: 34, column: 37, scope: !302)
!317 = !DILocation(line: 34, column: 18, scope: !302)
!318 = !DILocation(line: 34, column: 22, scope: !302)
!319 = !DILocation(line: 35, column: 5, scope: !302)
!320 = !DILocation(line: 38, column: 15, scope: !302)
!321 = !DILocation(line: 38, column: 13, scope: !302)
!322 = !DILocation(line: 39, column: 13, scope: !302)
!323 = !DILocation(line: 40, column: 32, scope: !302)
!324 = !DILocation(line: 40, column: 34, scope: !302)
!325 = !DILocation(line: 40, column: 39, scope: !302)
!326 = !DILocation(line: 40, column: 16, scope: !302)
!327 = !DILocation(line: 40, column: 18, scope: !302)
!328 = !DILocation(line: 40, column: 24, scope: !302)
!329 = !DILocation(line: 41, column: 31, scope: !302)
!330 = !DILocation(line: 41, column: 33, scope: !302)
!331 = !DILocation(line: 41, column: 55, scope: !302)
!332 = !DILocation(line: 41, column: 38, scope: !302)
!333 = !DILocation(line: 41, column: 72, scope: !302)
!334 = !DILocation(line: 41, column: 76, scope: !302)
!335 = !DILocation(line: 41, column: 61, scope: !302)
!336 = !DILocation(line: 41, column: 18, scope: !302)
!337 = !DILocation(line: 41, column: 22, scope: !302)
!338 = !DILocation(line: 43, column: 19, scope: !302)
!339 = !DILocation(line: 43, column: 5, scope: !302)
!340 = !DILocation(line: 0, scope: !302)
!341 = !DILocation(line: 44, column: 1, scope: !302)
!342 = distinct !DISubprogram(name: "__clzdi2", scope: !23, file: !23, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !128)
!343 = !DILocation(line: 25, column: 7, scope: !342)
!344 = !DILocation(line: 25, column: 11, scope: !342)
!345 = !DILocation(line: 26, column: 26, scope: !342)
!346 = !DILocation(line: 26, column: 28, scope: !342)
!347 = !DILocation(line: 26, column: 33, scope: !342)
!348 = !DILocation(line: 27, column: 29, scope: !342)
!349 = !DILocation(line: 27, column: 31, scope: !342)
!350 = !DILocation(line: 27, column: 49, scope: !342)
!351 = !DILocation(line: 27, column: 42, scope: !342)
!352 = !DILocation(line: 27, column: 12, scope: !342)
!353 = !{i32 0, i32 33}
!354 = !DILocation(line: 28, column: 15, scope: !342)
!355 = !DILocation(line: 27, column: 59, scope: !342)
!356 = !DILocation(line: 27, column: 5, scope: !342)
!357 = distinct !DISubprogram(name: "__clzsi2", scope: !25, file: !25, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !128)
!358 = !DILocation(line: 25, column: 34, scope: !357)
!359 = !DILocation(line: 25, column: 40, scope: !357)
!360 = !DILocation(line: 26, column: 14, scope: !357)
!361 = !DILocation(line: 26, column: 7, scope: !357)
!362 = !DILocation(line: 29, column: 13, scope: !357)
!363 = !DILocation(line: 29, column: 23, scope: !357)
!364 = !DILocation(line: 29, column: 29, scope: !357)
!365 = !DILocation(line: 30, column: 13, scope: !357)
!366 = !DILocation(line: 30, column: 7, scope: !357)
!367 = !DILocation(line: 31, column: 7, scope: !357)
!368 = !DILocation(line: 33, column: 13, scope: !357)
!369 = !DILocation(line: 33, column: 21, scope: !357)
!370 = !DILocation(line: 33, column: 27, scope: !357)
!371 = !DILocation(line: 34, column: 13, scope: !357)
!372 = !DILocation(line: 34, column: 7, scope: !357)
!373 = !DILocation(line: 35, column: 7, scope: !357)
!374 = !DILocation(line: 37, column: 13, scope: !357)
!375 = !DILocation(line: 37, column: 20, scope: !357)
!376 = !DILocation(line: 37, column: 26, scope: !357)
!377 = !DILocation(line: 38, column: 13, scope: !357)
!378 = !DILocation(line: 38, column: 7, scope: !357)
!379 = !DILocation(line: 39, column: 7, scope: !357)
!380 = !DILocation(line: 52, column: 20, scope: !357)
!381 = !DILocation(line: 52, column: 37, scope: !357)
!382 = !DILocation(line: 52, column: 25, scope: !357)
!383 = !DILocation(line: 52, column: 14, scope: !357)
!384 = !DILocation(line: 52, column: 5, scope: !357)
!385 = distinct !DISubprogram(name: "__cmpdi2", scope: !29, file: !29, line: 23, type: !127, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !128)
!386 = !DILocation(line: 26, column: 7, scope: !385)
!387 = !DILocation(line: 26, column: 11, scope: !385)
!388 = !DILocation(line: 28, column: 7, scope: !385)
!389 = !DILocation(line: 28, column: 11, scope: !385)
!390 = !DILocation(line: 29, column: 11, scope: !385)
!391 = !DILocation(line: 29, column: 13, scope: !385)
!392 = !DILocation(line: 29, column: 22, scope: !385)
!393 = !DILocation(line: 29, column: 24, scope: !385)
!394 = !DILocation(line: 29, column: 18, scope: !385)
!395 = !DILocation(line: 29, column: 9, scope: !385)
!396 = !DILocation(line: 30, column: 9, scope: !385)
!397 = !DILocation(line: 31, column: 11, scope: !385)
!398 = !DILocation(line: 31, column: 13, scope: !385)
!399 = !DILocation(line: 31, column: 22, scope: !385)
!400 = !DILocation(line: 31, column: 24, scope: !385)
!401 = !DILocation(line: 31, column: 18, scope: !385)
!402 = !DILocation(line: 31, column: 9, scope: !385)
!403 = !DILocation(line: 32, column: 9, scope: !385)
!404 = !DILocation(line: 33, column: 13, scope: !385)
!405 = !DILocation(line: 33, column: 23, scope: !385)
!406 = !DILocation(line: 33, column: 17, scope: !385)
!407 = !DILocation(line: 33, column: 9, scope: !385)
!408 = !DILocation(line: 34, column: 9, scope: !385)
!409 = !DILocation(line: 35, column: 13, scope: !385)
!410 = !DILocation(line: 35, column: 23, scope: !385)
!411 = !DILocation(line: 35, column: 17, scope: !385)
!412 = !DILocation(line: 35, column: 9, scope: !385)
!413 = !DILocation(line: 36, column: 9, scope: !385)
!414 = !DILocation(line: 37, column: 5, scope: !385)
!415 = !DILocation(line: 0, scope: !385)
!416 = !DILocation(line: 38, column: 1, scope: !385)
!417 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !29, file: !29, line: 46, type: !127, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !128)
!418 = !DILocation(line: 48, column: 9, scope: !417)
!419 = !DILocation(line: 48, column: 24, scope: !417)
!420 = !DILocation(line: 48, column: 2, scope: !417)
!421 = distinct !DISubprogram(name: "__ctzdi2", scope: !33, file: !33, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !128)
!422 = !DILocation(line: 25, column: 7, scope: !421)
!423 = !DILocation(line: 25, column: 11, scope: !421)
!424 = !DILocation(line: 26, column: 28, scope: !421)
!425 = !DILocation(line: 26, column: 32, scope: !421)
!426 = !DILocation(line: 27, column: 29, scope: !421)
!427 = !DILocation(line: 27, column: 31, scope: !421)
!428 = !DILocation(line: 27, column: 41, scope: !421)
!429 = !DILocation(line: 27, column: 12, scope: !421)
!430 = !DILocation(line: 28, column: 18, scope: !421)
!431 = !DILocation(line: 27, column: 59, scope: !421)
!432 = !DILocation(line: 27, column: 5, scope: !421)
!433 = distinct !DISubprogram(name: "__ctzsi2", scope: !35, file: !35, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !128)
!434 = !DILocation(line: 25, column: 20, scope: !433)
!435 = !DILocation(line: 25, column: 34, scope: !433)
!436 = !DILocation(line: 25, column: 40, scope: !433)
!437 = !DILocation(line: 26, column: 7, scope: !433)
!438 = !DILocation(line: 29, column: 13, scope: !433)
!439 = !DILocation(line: 29, column: 23, scope: !433)
!440 = !DILocation(line: 29, column: 29, scope: !433)
!441 = !DILocation(line: 30, column: 7, scope: !433)
!442 = !DILocation(line: 31, column: 7, scope: !433)
!443 = !DILocation(line: 33, column: 13, scope: !433)
!444 = !DILocation(line: 33, column: 21, scope: !433)
!445 = !DILocation(line: 33, column: 27, scope: !433)
!446 = !DILocation(line: 34, column: 7, scope: !433)
!447 = !DILocation(line: 35, column: 7, scope: !433)
!448 = !DILocation(line: 37, column: 13, scope: !433)
!449 = !DILocation(line: 37, column: 20, scope: !433)
!450 = !DILocation(line: 37, column: 26, scope: !433)
!451 = !DILocation(line: 38, column: 7, scope: !433)
!452 = !DILocation(line: 40, column: 7, scope: !433)
!453 = !DILocation(line: 56, column: 25, scope: !433)
!454 = !DILocation(line: 56, column: 20, scope: !433)
!455 = !DILocation(line: 56, column: 44, scope: !433)
!456 = !DILocation(line: 56, column: 32, scope: !433)
!457 = !DILocation(line: 56, column: 14, scope: !433)
!458 = !DILocation(line: 56, column: 5, scope: !433)
!459 = distinct !DISubprogram(name: "__divdi3", scope: !39, file: !39, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !128)
!460 = !DILocation(line: 23, column: 20, scope: !459)
!461 = !DILocation(line: 24, column: 20, scope: !459)
!462 = !DILocation(line: 25, column: 12, scope: !459)
!463 = !DILocation(line: 25, column: 19, scope: !459)
!464 = !DILocation(line: 26, column: 12, scope: !459)
!465 = !DILocation(line: 26, column: 19, scope: !459)
!466 = !DILocation(line: 27, column: 9, scope: !459)
!467 = !DILocation(line: 28, column: 13, scope: !459)
!468 = !DILocation(line: 28, column: 44, scope: !459)
!469 = !DILocation(line: 28, column: 51, scope: !459)
!470 = !DILocation(line: 28, column: 5, scope: !459)
!471 = distinct !DISubprogram(name: "__udivmoddi4", scope: !97, file: !97, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !128)
!472 = !DILocation(line: 29, column: 7, scope: !471)
!473 = !DILocation(line: 29, column: 11, scope: !471)
!474 = !DILocation(line: 31, column: 7, scope: !471)
!475 = !DILocation(line: 31, column: 11, scope: !471)
!476 = !DILocation(line: 36, column: 11, scope: !471)
!477 = !DILocation(line: 36, column: 13, scope: !471)
!478 = !DILocation(line: 36, column: 18, scope: !471)
!479 = !DILocation(line: 36, column: 9, scope: !471)
!480 = !DILocation(line: 38, column: 15, scope: !471)
!481 = !DILocation(line: 38, column: 17, scope: !471)
!482 = !DILocation(line: 38, column: 22, scope: !471)
!483 = !DILocation(line: 38, column: 13, scope: !471)
!484 = !DILocation(line: 44, column: 17, scope: !471)
!485 = !DILocation(line: 45, column: 28, scope: !471)
!486 = !DILocation(line: 45, column: 38, scope: !471)
!487 = !DILocation(line: 45, column: 32, scope: !471)
!488 = !DILocation(line: 45, column: 24, scope: !471)
!489 = !DILocation(line: 45, column: 22, scope: !471)
!490 = !DILocation(line: 45, column: 17, scope: !471)
!491 = !DILocation(line: 46, column: 24, scope: !471)
!492 = !DILocation(line: 46, column: 34, scope: !471)
!493 = !DILocation(line: 46, column: 28, scope: !471)
!494 = !DILocation(line: 46, column: 20, scope: !471)
!495 = !DILocation(line: 46, column: 13, scope: !471)
!496 = !DILocation(line: 52, column: 13, scope: !471)
!497 = !DILocation(line: 53, column: 24, scope: !471)
!498 = !DILocation(line: 53, column: 20, scope: !471)
!499 = !DILocation(line: 53, column: 18, scope: !471)
!500 = !DILocation(line: 53, column: 13, scope: !471)
!501 = !DILocation(line: 54, column: 9, scope: !471)
!502 = !DILocation(line: 57, column: 13, scope: !471)
!503 = !DILocation(line: 57, column: 17, scope: !471)
!504 = !DILocation(line: 57, column: 9, scope: !471)
!505 = !DILocation(line: 59, column: 15, scope: !471)
!506 = !DILocation(line: 59, column: 17, scope: !471)
!507 = !DILocation(line: 59, column: 22, scope: !471)
!508 = !DILocation(line: 59, column: 13, scope: !471)
!509 = !DILocation(line: 65, column: 17, scope: !471)
!510 = !DILocation(line: 66, column: 26, scope: !471)
!511 = !DILocation(line: 66, column: 28, scope: !471)
!512 = !DILocation(line: 66, column: 39, scope: !471)
!513 = !DILocation(line: 66, column: 33, scope: !471)
!514 = !DILocation(line: 66, column: 24, scope: !471)
!515 = !DILocation(line: 66, column: 22, scope: !471)
!516 = !DILocation(line: 66, column: 17, scope: !471)
!517 = !DILocation(line: 67, column: 22, scope: !471)
!518 = !DILocation(line: 67, column: 24, scope: !471)
!519 = !DILocation(line: 67, column: 35, scope: !471)
!520 = !DILocation(line: 67, column: 29, scope: !471)
!521 = !DILocation(line: 67, column: 20, scope: !471)
!522 = !DILocation(line: 67, column: 13, scope: !471)
!523 = !DILocation(line: 70, column: 17, scope: !471)
!524 = !DILocation(line: 70, column: 21, scope: !471)
!525 = !DILocation(line: 70, column: 13, scope: !471)
!526 = !DILocation(line: 76, column: 17, scope: !471)
!527 = !DILocation(line: 78, column: 30, scope: !471)
!528 = !DILocation(line: 78, column: 32, scope: !471)
!529 = !DILocation(line: 78, column: 41, scope: !471)
!530 = !DILocation(line: 78, column: 43, scope: !471)
!531 = !DILocation(line: 78, column: 37, scope: !471)
!532 = !DILocation(line: 78, column: 19, scope: !471)
!533 = !DILocation(line: 78, column: 21, scope: !471)
!534 = !DILocation(line: 78, column: 26, scope: !471)
!535 = !DILocation(line: 79, column: 21, scope: !471)
!536 = !DILocation(line: 79, column: 25, scope: !471)
!537 = !DILocation(line: 80, column: 26, scope: !471)
!538 = !DILocation(line: 80, column: 22, scope: !471)
!539 = !DILocation(line: 81, column: 13, scope: !471)
!540 = !DILocation(line: 82, column: 22, scope: !471)
!541 = !DILocation(line: 82, column: 24, scope: !471)
!542 = !DILocation(line: 82, column: 33, scope: !471)
!543 = !DILocation(line: 82, column: 35, scope: !471)
!544 = !DILocation(line: 82, column: 29, scope: !471)
!545 = !DILocation(line: 82, column: 20, scope: !471)
!546 = !DILocation(line: 82, column: 13, scope: !471)
!547 = !DILocation(line: 88, column: 16, scope: !471)
!548 = !DILocation(line: 88, column: 18, scope: !471)
!549 = !DILocation(line: 88, column: 28, scope: !471)
!550 = !DILocation(line: 88, column: 30, scope: !471)
!551 = !DILocation(line: 88, column: 35, scope: !471)
!552 = !DILocation(line: 88, column: 23, scope: !471)
!553 = !DILocation(line: 88, column: 41, scope: !471)
!554 = !DILocation(line: 88, column: 13, scope: !471)
!555 = !DILocation(line: 90, column: 17, scope: !471)
!556 = !DILocation(line: 92, column: 31, scope: !471)
!557 = !DILocation(line: 92, column: 21, scope: !471)
!558 = !DILocation(line: 92, column: 25, scope: !471)
!559 = !DILocation(line: 93, column: 30, scope: !471)
!560 = !DILocation(line: 93, column: 32, scope: !471)
!561 = !DILocation(line: 93, column: 42, scope: !471)
!562 = !DILocation(line: 93, column: 44, scope: !471)
!563 = !DILocation(line: 93, column: 49, scope: !471)
!564 = !DILocation(line: 93, column: 37, scope: !471)
!565 = !DILocation(line: 93, column: 19, scope: !471)
!566 = !DILocation(line: 93, column: 21, scope: !471)
!567 = !DILocation(line: 93, column: 26, scope: !471)
!568 = !DILocation(line: 94, column: 26, scope: !471)
!569 = !DILocation(line: 94, column: 22, scope: !471)
!570 = !DILocation(line: 95, column: 13, scope: !471)
!571 = !DILocation(line: 96, column: 22, scope: !471)
!572 = !DILocation(line: 96, column: 24, scope: !471)
!573 = !DILocation(line: 96, column: 48, scope: !471)
!574 = !DILocation(line: 96, column: 50, scope: !471)
!575 = !DILocation(line: 96, column: 32, scope: !471)
!576 = !DILocation(line: 96, column: 29, scope: !471)
!577 = !DILocation(line: 96, column: 20, scope: !471)
!578 = !DILocation(line: 96, column: 13, scope: !471)
!579 = !DILocation(line: 102, column: 30, scope: !471)
!580 = !DILocation(line: 102, column: 32, scope: !471)
!581 = !DILocation(line: 102, column: 14, scope: !471)
!582 = !DILocation(line: 102, column: 56, scope: !471)
!583 = !DILocation(line: 102, column: 58, scope: !471)
!584 = !DILocation(line: 102, column: 40, scope: !471)
!585 = !DILocation(line: 102, column: 38, scope: !471)
!586 = !DILocation(line: 104, column: 16, scope: !471)
!587 = !DILocation(line: 104, column: 13, scope: !471)
!588 = !DILocation(line: 106, column: 16, scope: !471)
!589 = !DILocation(line: 107, column: 26, scope: !471)
!590 = !DILocation(line: 107, column: 22, scope: !471)
!591 = !DILocation(line: 107, column: 17, scope: !471)
!592 = !DILocation(line: 108, column: 13, scope: !471)
!593 = !DILocation(line: 110, column: 9, scope: !471)
!594 = !DILocation(line: 113, column: 13, scope: !471)
!595 = !DILocation(line: 113, column: 17, scope: !471)
!596 = !DILocation(line: 114, column: 24, scope: !471)
!597 = !DILocation(line: 114, column: 45, scope: !471)
!598 = !DILocation(line: 114, column: 28, scope: !471)
!599 = !DILocation(line: 114, column: 11, scope: !471)
!600 = !DILocation(line: 114, column: 13, scope: !471)
!601 = !DILocation(line: 114, column: 18, scope: !471)
!602 = !DILocation(line: 116, column: 22, scope: !471)
!603 = !DILocation(line: 116, column: 24, scope: !471)
!604 = !DILocation(line: 116, column: 29, scope: !471)
!605 = !DILocation(line: 116, column: 11, scope: !471)
!606 = !DILocation(line: 116, column: 13, scope: !471)
!607 = !DILocation(line: 116, column: 18, scope: !471)
!608 = !DILocation(line: 117, column: 22, scope: !471)
!609 = !DILocation(line: 117, column: 24, scope: !471)
!610 = !DILocation(line: 117, column: 46, scope: !471)
!611 = !DILocation(line: 117, column: 29, scope: !471)
!612 = !DILocation(line: 117, column: 60, scope: !471)
!613 = !DILocation(line: 117, column: 64, scope: !471)
!614 = !DILocation(line: 117, column: 53, scope: !471)
!615 = !DILocation(line: 117, column: 13, scope: !471)
!616 = !DILocation(line: 117, column: 17, scope: !471)
!617 = !DILocation(line: 118, column: 5, scope: !471)
!618 = !DILocation(line: 121, column: 15, scope: !471)
!619 = !DILocation(line: 121, column: 17, scope: !471)
!620 = !DILocation(line: 121, column: 22, scope: !471)
!621 = !DILocation(line: 121, column: 13, scope: !471)
!622 = !DILocation(line: 127, column: 22, scope: !471)
!623 = !DILocation(line: 127, column: 43, scope: !471)
!624 = !DILocation(line: 127, column: 17, scope: !471)
!625 = !DILocation(line: 129, column: 21, scope: !471)
!626 = !DILocation(line: 130, column: 32, scope: !471)
!627 = !DILocation(line: 130, column: 43, scope: !471)
!628 = !DILocation(line: 130, column: 47, scope: !471)
!629 = !DILocation(line: 130, column: 36, scope: !471)
!630 = !DILocation(line: 130, column: 28, scope: !471)
!631 = !DILocation(line: 130, column: 26, scope: !471)
!632 = !DILocation(line: 130, column: 21, scope: !471)
!633 = !DILocation(line: 131, column: 25, scope: !471)
!634 = !DILocation(line: 131, column: 29, scope: !471)
!635 = !DILocation(line: 131, column: 21, scope: !471)
!636 = !DILocation(line: 132, column: 30, scope: !471)
!637 = !DILocation(line: 132, column: 21, scope: !471)
!638 = !DILocation(line: 133, column: 40, scope: !471)
!639 = !DILocation(line: 133, column: 22, scope: !471)
!640 = !DILocation(line: 134, column: 30, scope: !471)
!641 = !DILocation(line: 134, column: 32, scope: !471)
!642 = !DILocation(line: 134, column: 37, scope: !471)
!643 = !DILocation(line: 134, column: 19, scope: !471)
!644 = !DILocation(line: 134, column: 21, scope: !471)
!645 = !DILocation(line: 134, column: 26, scope: !471)
!646 = !DILocation(line: 135, column: 30, scope: !471)
!647 = !DILocation(line: 135, column: 32, scope: !471)
!648 = !DILocation(line: 135, column: 54, scope: !471)
!649 = !DILocation(line: 135, column: 37, scope: !471)
!650 = !DILocation(line: 135, column: 68, scope: !471)
!651 = !DILocation(line: 135, column: 72, scope: !471)
!652 = !DILocation(line: 135, column: 61, scope: !471)
!653 = !DILocation(line: 135, column: 21, scope: !471)
!654 = !DILocation(line: 135, column: 25, scope: !471)
!655 = !DILocation(line: 136, column: 26, scope: !471)
!656 = !DILocation(line: 136, column: 17, scope: !471)
!657 = !DILocation(line: 142, column: 55, scope: !471)
!658 = !DILocation(line: 142, column: 37, scope: !471)
!659 = !DILocation(line: 142, column: 35, scope: !471)
!660 = !DILocation(line: 142, column: 78, scope: !471)
!661 = !DILocation(line: 142, column: 80, scope: !471)
!662 = !DILocation(line: 142, column: 62, scope: !471)
!663 = !DILocation(line: 142, column: 60, scope: !471)
!664 = !DILocation(line: 147, column: 20, scope: !471)
!665 = !DILocation(line: 147, column: 17, scope: !471)
!666 = !DILocation(line: 149, column: 21, scope: !471)
!667 = !DILocation(line: 149, column: 25, scope: !471)
!668 = !DILocation(line: 150, column: 32, scope: !471)
!669 = !DILocation(line: 150, column: 19, scope: !471)
!670 = !DILocation(line: 150, column: 21, scope: !471)
!671 = !DILocation(line: 150, column: 26, scope: !471)
!672 = !DILocation(line: 151, column: 19, scope: !471)
!673 = !DILocation(line: 151, column: 21, scope: !471)
!674 = !DILocation(line: 151, column: 26, scope: !471)
!675 = !DILocation(line: 152, column: 29, scope: !471)
!676 = !DILocation(line: 152, column: 31, scope: !471)
!677 = !DILocation(line: 152, column: 21, scope: !471)
!678 = !DILocation(line: 152, column: 25, scope: !471)
!679 = !DILocation(line: 153, column: 13, scope: !471)
!680 = !DILocation(line: 154, column: 25, scope: !471)
!681 = !DILocation(line: 154, column: 22, scope: !471)
!682 = !DILocation(line: 156, column: 21, scope: !471)
!683 = !DILocation(line: 156, column: 25, scope: !471)
!684 = !DILocation(line: 157, column: 32, scope: !471)
!685 = !DILocation(line: 157, column: 53, scope: !471)
!686 = !DILocation(line: 157, column: 36, scope: !471)
!687 = !DILocation(line: 157, column: 19, scope: !471)
!688 = !DILocation(line: 157, column: 21, scope: !471)
!689 = !DILocation(line: 157, column: 26, scope: !471)
!690 = !DILocation(line: 158, column: 30, scope: !471)
!691 = !DILocation(line: 158, column: 32, scope: !471)
!692 = !DILocation(line: 158, column: 37, scope: !471)
!693 = !DILocation(line: 158, column: 19, scope: !471)
!694 = !DILocation(line: 158, column: 21, scope: !471)
!695 = !DILocation(line: 158, column: 26, scope: !471)
!696 = !DILocation(line: 159, column: 30, scope: !471)
!697 = !DILocation(line: 159, column: 32, scope: !471)
!698 = !DILocation(line: 159, column: 54, scope: !471)
!699 = !DILocation(line: 159, column: 37, scope: !471)
!700 = !DILocation(line: 159, column: 68, scope: !471)
!701 = !DILocation(line: 159, column: 72, scope: !471)
!702 = !DILocation(line: 159, column: 61, scope: !471)
!703 = !DILocation(line: 159, column: 21, scope: !471)
!704 = !DILocation(line: 159, column: 25, scope: !471)
!705 = !DILocation(line: 160, column: 13, scope: !471)
!706 = !DILocation(line: 163, column: 31, scope: !471)
!707 = !DILocation(line: 163, column: 53, scope: !471)
!708 = !DILocation(line: 163, column: 35, scope: !471)
!709 = !DILocation(line: 163, column: 21, scope: !471)
!710 = !DILocation(line: 163, column: 25, scope: !471)
!711 = !DILocation(line: 164, column: 31, scope: !471)
!712 = !DILocation(line: 164, column: 33, scope: !471)
!713 = !DILocation(line: 164, column: 56, scope: !471)
!714 = !DILocation(line: 164, column: 38, scope: !471)
!715 = !DILocation(line: 165, column: 33, scope: !471)
!716 = !DILocation(line: 165, column: 44, scope: !471)
!717 = !DILocation(line: 165, column: 37, scope: !471)
!718 = !DILocation(line: 164, column: 63, scope: !471)
!719 = !DILocation(line: 164, column: 19, scope: !471)
!720 = !DILocation(line: 164, column: 21, scope: !471)
!721 = !DILocation(line: 164, column: 26, scope: !471)
!722 = !DILocation(line: 166, column: 19, scope: !471)
!723 = !DILocation(line: 166, column: 21, scope: !471)
!724 = !DILocation(line: 166, column: 26, scope: !471)
!725 = !DILocation(line: 167, column: 29, scope: !471)
!726 = !DILocation(line: 167, column: 31, scope: !471)
!727 = !DILocation(line: 167, column: 43, scope: !471)
!728 = !DILocation(line: 167, column: 36, scope: !471)
!729 = !DILocation(line: 167, column: 21, scope: !471)
!730 = !DILocation(line: 167, column: 25, scope: !471)
!731 = !DILocation(line: 169, column: 9, scope: !471)
!732 = !DILocation(line: 176, column: 34, scope: !471)
!733 = !DILocation(line: 176, column: 36, scope: !471)
!734 = !DILocation(line: 176, column: 18, scope: !471)
!735 = !DILocation(line: 176, column: 60, scope: !471)
!736 = !DILocation(line: 176, column: 62, scope: !471)
!737 = !DILocation(line: 176, column: 44, scope: !471)
!738 = !DILocation(line: 176, column: 42, scope: !471)
!739 = !DILocation(line: 178, column: 20, scope: !471)
!740 = !DILocation(line: 178, column: 17, scope: !471)
!741 = !DILocation(line: 180, column: 21, scope: !471)
!742 = !DILocation(line: 181, column: 30, scope: !471)
!743 = !DILocation(line: 181, column: 26, scope: !471)
!744 = !DILocation(line: 181, column: 21, scope: !471)
!745 = !DILocation(line: 182, column: 17, scope: !471)
!746 = !DILocation(line: 184, column: 13, scope: !471)
!747 = !DILocation(line: 187, column: 17, scope: !471)
!748 = !DILocation(line: 187, column: 21, scope: !471)
!749 = !DILocation(line: 188, column: 20, scope: !471)
!750 = !DILocation(line: 188, column: 17, scope: !471)
!751 = !DILocation(line: 190, column: 32, scope: !471)
!752 = !DILocation(line: 190, column: 19, scope: !471)
!753 = !DILocation(line: 190, column: 21, scope: !471)
!754 = !DILocation(line: 190, column: 26, scope: !471)
!755 = !DILocation(line: 191, column: 19, scope: !471)
!756 = !DILocation(line: 191, column: 21, scope: !471)
!757 = !DILocation(line: 191, column: 26, scope: !471)
!758 = !DILocation(line: 192, column: 29, scope: !471)
!759 = !DILocation(line: 192, column: 31, scope: !471)
!760 = !DILocation(line: 192, column: 21, scope: !471)
!761 = !DILocation(line: 192, column: 25, scope: !471)
!762 = !DILocation(line: 193, column: 13, scope: !471)
!763 = !DILocation(line: 196, column: 32, scope: !471)
!764 = !DILocation(line: 196, column: 53, scope: !471)
!765 = !DILocation(line: 196, column: 36, scope: !471)
!766 = !DILocation(line: 196, column: 19, scope: !471)
!767 = !DILocation(line: 196, column: 21, scope: !471)
!768 = !DILocation(line: 196, column: 26, scope: !471)
!769 = !DILocation(line: 197, column: 30, scope: !471)
!770 = !DILocation(line: 197, column: 32, scope: !471)
!771 = !DILocation(line: 197, column: 37, scope: !471)
!772 = !DILocation(line: 197, column: 19, scope: !471)
!773 = !DILocation(line: 197, column: 21, scope: !471)
!774 = !DILocation(line: 197, column: 26, scope: !471)
!775 = !DILocation(line: 198, column: 30, scope: !471)
!776 = !DILocation(line: 198, column: 32, scope: !471)
!777 = !DILocation(line: 198, column: 54, scope: !471)
!778 = !DILocation(line: 198, column: 37, scope: !471)
!779 = !DILocation(line: 198, column: 68, scope: !471)
!780 = !DILocation(line: 198, column: 72, scope: !471)
!781 = !DILocation(line: 198, column: 61, scope: !471)
!782 = !DILocation(line: 198, column: 21, scope: !471)
!783 = !DILocation(line: 198, column: 25, scope: !471)
!784 = !DILocation(line: 0, scope: !471)
!785 = !DILocation(line: 209, column: 5, scope: !471)
!786 = !DILocation(line: 209, column: 15, scope: !471)
!787 = !DILocation(line: 212, column: 23, scope: !471)
!788 = !DILocation(line: 212, column: 25, scope: !471)
!789 = !DILocation(line: 212, column: 43, scope: !471)
!790 = !DILocation(line: 212, column: 36, scope: !471)
!791 = !DILocation(line: 212, column: 11, scope: !471)
!792 = !DILocation(line: 212, column: 13, scope: !471)
!793 = !DILocation(line: 212, column: 18, scope: !471)
!794 = !DILocation(line: 213, column: 41, scope: !471)
!795 = !DILocation(line: 213, column: 43, scope: !471)
!796 = !DILocation(line: 213, column: 36, scope: !471)
!797 = !DILocation(line: 213, column: 13, scope: !471)
!798 = !DILocation(line: 213, column: 18, scope: !471)
!799 = !DILocation(line: 214, column: 23, scope: !471)
!800 = !DILocation(line: 214, column: 25, scope: !471)
!801 = !DILocation(line: 214, column: 43, scope: !471)
!802 = !DILocation(line: 214, column: 36, scope: !471)
!803 = !DILocation(line: 214, column: 11, scope: !471)
!804 = !DILocation(line: 214, column: 13, scope: !471)
!805 = !DILocation(line: 214, column: 18, scope: !471)
!806 = !DILocation(line: 215, column: 30, scope: !471)
!807 = !DILocation(line: 215, column: 36, scope: !471)
!808 = !DILocation(line: 215, column: 13, scope: !471)
!809 = !DILocation(line: 215, column: 18, scope: !471)
!810 = !DILocation(line: 223, column: 37, scope: !471)
!811 = !DILocation(line: 223, column: 45, scope: !471)
!812 = !DILocation(line: 223, column: 49, scope: !471)
!813 = !DILocation(line: 225, column: 24, scope: !471)
!814 = !DILocation(line: 225, column: 11, scope: !471)
!815 = !DILocation(line: 225, column: 15, scope: !471)
!816 = !DILocation(line: 226, column: 5, scope: !471)
!817 = !DILocation(line: 224, column: 19, scope: !471)
!818 = !DILocation(line: 224, column: 17, scope: !471)
!819 = !DILocation(line: 209, column: 20, scope: !471)
!820 = distinct !{!820, !785, !816, !150}
!821 = !DILocation(line: 227, column: 16, scope: !471)
!822 = !DILocation(line: 227, column: 20, scope: !471)
!823 = !DILocation(line: 227, column: 28, scope: !471)
!824 = !DILocation(line: 227, column: 26, scope: !471)
!825 = !DILocation(line: 227, column: 7, scope: !471)
!826 = !DILocation(line: 227, column: 11, scope: !471)
!827 = !DILocation(line: 228, column: 9, scope: !471)
!828 = !DILocation(line: 229, column: 18, scope: !471)
!829 = !DILocation(line: 229, column: 14, scope: !471)
!830 = !DILocation(line: 229, column: 9, scope: !471)
!831 = !DILocation(line: 230, column: 14, scope: !471)
!832 = !DILocation(line: 230, column: 5, scope: !471)
!833 = !DILocation(line: 231, column: 1, scope: !471)
!834 = distinct !DISubprogram(name: "__divmoddi4", scope: !41, file: !41, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !128)
!835 = !DILocation(line: 22, column: 14, scope: !834)
!836 = !DILocation(line: 23, column: 16, scope: !834)
!837 = !DILocation(line: 23, column: 12, scope: !834)
!838 = !DILocation(line: 23, column: 8, scope: !834)
!839 = !DILocation(line: 24, column: 3, scope: !834)
!840 = distinct !DISubprogram(name: "__divmodsi4", scope: !43, file: !43, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !128)
!841 = !DILocation(line: 22, column: 14, scope: !840)
!842 = !DILocation(line: 23, column: 16, scope: !840)
!843 = !DILocation(line: 23, column: 12, scope: !840)
!844 = !DILocation(line: 23, column: 8, scope: !840)
!845 = !DILocation(line: 24, column: 3, scope: !840)
!846 = distinct !DISubprogram(name: "__divsi3", scope: !45, file: !45, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !128)
!847 = !DILocation(line: 25, column: 20, scope: !846)
!848 = !DILocation(line: 26, column: 20, scope: !846)
!849 = !DILocation(line: 27, column: 12, scope: !846)
!850 = !DILocation(line: 27, column: 19, scope: !846)
!851 = !DILocation(line: 28, column: 12, scope: !846)
!852 = !DILocation(line: 28, column: 19, scope: !846)
!853 = !DILocation(line: 29, column: 9, scope: !846)
!854 = !DILocation(line: 36, column: 22, scope: !846)
!855 = !DILocation(line: 36, column: 33, scope: !846)
!856 = !DILocation(line: 36, column: 40, scope: !846)
!857 = !DILocation(line: 36, column: 5, scope: !846)
!858 = distinct !DISubprogram(name: "__ffsdi2", scope: !49, file: !49, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !128)
!859 = !DILocation(line: 25, column: 7, scope: !858)
!860 = !DILocation(line: 25, column: 11, scope: !858)
!861 = !DILocation(line: 26, column: 13, scope: !858)
!862 = !DILocation(line: 26, column: 17, scope: !858)
!863 = !DILocation(line: 26, column: 9, scope: !858)
!864 = !DILocation(line: 28, column: 15, scope: !858)
!865 = !DILocation(line: 28, column: 17, scope: !858)
!866 = !DILocation(line: 28, column: 22, scope: !858)
!867 = !DILocation(line: 28, column: 13, scope: !858)
!868 = !DILocation(line: 29, column: 13, scope: !858)
!869 = !DILocation(line: 30, column: 32, scope: !858)
!870 = !DILocation(line: 30, column: 34, scope: !858)
!871 = !DILocation(line: 30, column: 16, scope: !858)
!872 = !DILocation(line: 30, column: 40, scope: !858)
!873 = !DILocation(line: 30, column: 9, scope: !858)
!874 = !DILocation(line: 32, column: 30, scope: !858)
!875 = !DILocation(line: 32, column: 12, scope: !858)
!876 = !DILocation(line: 32, column: 35, scope: !858)
!877 = !DILocation(line: 32, column: 5, scope: !858)
!878 = !DILocation(line: 0, scope: !858)
!879 = !DILocation(line: 33, column: 1, scope: !858)
!880 = distinct !DISubprogram(name: "__ffssi2", scope: !51, file: !51, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !128)
!881 = !DILocation(line: 24, column: 11, scope: !880)
!882 = !DILocation(line: 24, column: 9, scope: !880)
!883 = !DILocation(line: 26, column: 9, scope: !880)
!884 = !DILocation(line: 28, column: 12, scope: !880)
!885 = !DILocation(line: 28, column: 29, scope: !880)
!886 = !DILocation(line: 28, column: 5, scope: !880)
!887 = !DILocation(line: 0, scope: !880)
!888 = !DILocation(line: 29, column: 1, scope: !880)
!889 = distinct !DISubprogram(name: "__lshrdi3", scope: !57, file: !57, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !128)
!890 = !DILocation(line: 29, column: 11, scope: !889)
!891 = !DILocation(line: 29, column: 15, scope: !889)
!892 = !DILocation(line: 30, column: 11, scope: !889)
!893 = !DILocation(line: 30, column: 9, scope: !889)
!894 = !DILocation(line: 32, column: 16, scope: !889)
!895 = !DILocation(line: 32, column: 18, scope: !889)
!896 = !DILocation(line: 32, column: 23, scope: !889)
!897 = !DILocation(line: 33, column: 30, scope: !889)
!898 = !DILocation(line: 33, column: 32, scope: !889)
!899 = !DILocation(line: 33, column: 43, scope: !889)
!900 = !DILocation(line: 33, column: 37, scope: !889)
!901 = !DILocation(line: 33, column: 18, scope: !889)
!902 = !DILocation(line: 33, column: 22, scope: !889)
!903 = !DILocation(line: 34, column: 5, scope: !889)
!904 = !DILocation(line: 37, column: 15, scope: !889)
!905 = !DILocation(line: 37, column: 13, scope: !889)
!906 = !DILocation(line: 38, column: 13, scope: !889)
!907 = !DILocation(line: 39, column: 32, scope: !889)
!908 = !DILocation(line: 39, column: 34, scope: !889)
!909 = !DILocation(line: 39, column: 39, scope: !889)
!910 = !DILocation(line: 39, column: 16, scope: !889)
!911 = !DILocation(line: 39, column: 18, scope: !889)
!912 = !DILocation(line: 39, column: 24, scope: !889)
!913 = !DILocation(line: 40, column: 31, scope: !889)
!914 = !DILocation(line: 40, column: 33, scope: !889)
!915 = !DILocation(line: 40, column: 55, scope: !889)
!916 = !DILocation(line: 40, column: 38, scope: !889)
!917 = !DILocation(line: 40, column: 72, scope: !889)
!918 = !DILocation(line: 40, column: 76, scope: !889)
!919 = !DILocation(line: 40, column: 61, scope: !889)
!920 = !DILocation(line: 40, column: 18, scope: !889)
!921 = !DILocation(line: 40, column: 22, scope: !889)
!922 = !DILocation(line: 42, column: 19, scope: !889)
!923 = !DILocation(line: 42, column: 5, scope: !889)
!924 = !DILocation(line: 0, scope: !889)
!925 = !DILocation(line: 43, column: 1, scope: !889)
!926 = distinct !DISubprogram(name: "__moddi3", scope: !61, file: !61, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !128)
!927 = !DILocation(line: 24, column: 17, scope: !926)
!928 = !DILocation(line: 25, column: 11, scope: !926)
!929 = !DILocation(line: 26, column: 12, scope: !926)
!930 = !DILocation(line: 26, column: 17, scope: !926)
!931 = !DILocation(line: 28, column: 5, scope: !926)
!932 = !DILocation(line: 29, column: 21, scope: !926)
!933 = !DILocation(line: 29, column: 23, scope: !926)
!934 = !DILocation(line: 29, column: 28, scope: !926)
!935 = !DILocation(line: 29, column: 5, scope: !926)
!936 = distinct !DISubprogram(name: "__modsi3", scope: !63, file: !63, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !128)
!937 = !DILocation(line: 22, column: 16, scope: !936)
!938 = !DILocation(line: 22, column: 31, scope: !936)
!939 = !DILocation(line: 22, column: 14, scope: !936)
!940 = !DILocation(line: 22, column: 5, scope: !936)
!941 = distinct !DISubprogram(name: "__mulvdi3", scope: !67, file: !67, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !128)
!942 = !DILocation(line: 27, column: 11, scope: !941)
!943 = !DILocation(line: 27, column: 9, scope: !941)
!944 = !DILocation(line: 29, column: 15, scope: !941)
!945 = !DILocation(line: 29, column: 20, scope: !941)
!946 = !DILocation(line: 29, column: 25, scope: !941)
!947 = !DILocation(line: 29, column: 13, scope: !941)
!948 = !DILocation(line: 30, column: 13, scope: !941)
!949 = !DILocation(line: 31, column: 9, scope: !941)
!950 = !DILocation(line: 33, column: 11, scope: !941)
!951 = !DILocation(line: 33, column: 9, scope: !941)
!952 = !DILocation(line: 35, column: 15, scope: !941)
!953 = !DILocation(line: 35, column: 20, scope: !941)
!954 = !DILocation(line: 35, column: 25, scope: !941)
!955 = !DILocation(line: 35, column: 13, scope: !941)
!956 = !DILocation(line: 36, column: 13, scope: !941)
!957 = !DILocation(line: 37, column: 9, scope: !941)
!958 = !DILocation(line: 39, column: 19, scope: !941)
!959 = !DILocation(line: 40, column: 23, scope: !941)
!960 = !DILocation(line: 40, column: 29, scope: !941)
!961 = !DILocation(line: 41, column: 19, scope: !941)
!962 = !DILocation(line: 42, column: 23, scope: !941)
!963 = !DILocation(line: 42, column: 29, scope: !941)
!964 = !DILocation(line: 43, column: 15, scope: !941)
!965 = !DILocation(line: 43, column: 19, scope: !941)
!966 = !DILocation(line: 43, column: 28, scope: !941)
!967 = !DILocation(line: 43, column: 9, scope: !941)
!968 = !DILocation(line: 44, column: 9, scope: !941)
!969 = !DILocation(line: 45, column: 12, scope: !941)
!970 = !DILocation(line: 45, column: 9, scope: !941)
!971 = !DILocation(line: 47, column: 25, scope: !941)
!972 = !DILocation(line: 47, column: 19, scope: !941)
!973 = !DILocation(line: 47, column: 13, scope: !941)
!974 = !DILocation(line: 48, column: 13, scope: !941)
!975 = !DILocation(line: 49, column: 5, scope: !941)
!976 = !DILocation(line: 52, column: 27, scope: !941)
!977 = !DILocation(line: 52, column: 25, scope: !941)
!978 = !DILocation(line: 52, column: 19, scope: !941)
!979 = !DILocation(line: 52, column: 13, scope: !941)
!980 = !DILocation(line: 53, column: 13, scope: !941)
!981 = !DILocation(line: 55, column: 5, scope: !941)
!982 = !DILocation(line: 0, scope: !941)
!983 = !DILocation(line: 56, column: 1, scope: !941)
!984 = distinct !DISubprogram(name: "__mulvsi3", scope: !69, file: !69, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !128)
!985 = !DILocation(line: 27, column: 11, scope: !984)
!986 = !DILocation(line: 27, column: 9, scope: !984)
!987 = !DILocation(line: 29, column: 15, scope: !984)
!988 = !DILocation(line: 29, column: 20, scope: !984)
!989 = !DILocation(line: 29, column: 25, scope: !984)
!990 = !DILocation(line: 29, column: 13, scope: !984)
!991 = !DILocation(line: 30, column: 13, scope: !984)
!992 = !DILocation(line: 31, column: 9, scope: !984)
!993 = !DILocation(line: 33, column: 11, scope: !984)
!994 = !DILocation(line: 33, column: 9, scope: !984)
!995 = !DILocation(line: 35, column: 15, scope: !984)
!996 = !DILocation(line: 35, column: 20, scope: !984)
!997 = !DILocation(line: 35, column: 25, scope: !984)
!998 = !DILocation(line: 35, column: 13, scope: !984)
!999 = !DILocation(line: 36, column: 13, scope: !984)
!1000 = !DILocation(line: 37, column: 9, scope: !984)
!1001 = !DILocation(line: 39, column: 19, scope: !984)
!1002 = !DILocation(line: 40, column: 23, scope: !984)
!1003 = !DILocation(line: 40, column: 29, scope: !984)
!1004 = !DILocation(line: 41, column: 19, scope: !984)
!1005 = !DILocation(line: 42, column: 23, scope: !984)
!1006 = !DILocation(line: 42, column: 29, scope: !984)
!1007 = !DILocation(line: 43, column: 15, scope: !984)
!1008 = !DILocation(line: 43, column: 19, scope: !984)
!1009 = !DILocation(line: 43, column: 28, scope: !984)
!1010 = !DILocation(line: 43, column: 9, scope: !984)
!1011 = !DILocation(line: 44, column: 9, scope: !984)
!1012 = !DILocation(line: 45, column: 12, scope: !984)
!1013 = !DILocation(line: 45, column: 9, scope: !984)
!1014 = !DILocation(line: 47, column: 25, scope: !984)
!1015 = !DILocation(line: 47, column: 19, scope: !984)
!1016 = !DILocation(line: 47, column: 13, scope: !984)
!1017 = !DILocation(line: 48, column: 13, scope: !984)
!1018 = !DILocation(line: 49, column: 5, scope: !984)
!1019 = !DILocation(line: 52, column: 27, scope: !984)
!1020 = !DILocation(line: 52, column: 25, scope: !984)
!1021 = !DILocation(line: 52, column: 19, scope: !984)
!1022 = !DILocation(line: 52, column: 13, scope: !984)
!1023 = !DILocation(line: 53, column: 13, scope: !984)
!1024 = !DILocation(line: 55, column: 5, scope: !984)
!1025 = !DILocation(line: 0, scope: !984)
!1026 = !DILocation(line: 56, column: 1, scope: !984)
!1027 = distinct !DISubprogram(name: "__paritydi2", scope: !73, file: !73, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !128)
!1028 = !DILocation(line: 23, column: 7, scope: !1027)
!1029 = !DILocation(line: 23, column: 11, scope: !1027)
!1030 = !DILocation(line: 24, column: 26, scope: !1027)
!1031 = !DILocation(line: 24, column: 28, scope: !1027)
!1032 = !DILocation(line: 24, column: 39, scope: !1027)
!1033 = !DILocation(line: 24, column: 33, scope: !1027)
!1034 = !DILocation(line: 24, column: 12, scope: !1027)
!1035 = !DILocation(line: 24, column: 5, scope: !1027)
!1036 = distinct !DISubprogram(name: "__paritysi2", scope: !75, file: !75, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !128)
!1037 = !DILocation(line: 23, column: 12, scope: !1036)
!1038 = !DILocation(line: 23, column: 7, scope: !1036)
!1039 = !DILocation(line: 24, column: 12, scope: !1036)
!1040 = !DILocation(line: 24, column: 7, scope: !1036)
!1041 = !DILocation(line: 25, column: 12, scope: !1036)
!1042 = !DILocation(line: 25, column: 7, scope: !1036)
!1043 = !DILocation(line: 26, column: 26, scope: !1036)
!1044 = !DILocation(line: 26, column: 20, scope: !1036)
!1045 = !DILocation(line: 26, column: 34, scope: !1036)
!1046 = !DILocation(line: 26, column: 5, scope: !1036)
!1047 = distinct !DISubprogram(name: "__popcountdi2", scope: !79, file: !79, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !128)
!1048 = !DILocation(line: 23, column: 20, scope: !1047)
!1049 = !DILocation(line: 23, column: 26, scope: !1047)
!1050 = !DILocation(line: 23, column: 13, scope: !1047)
!1051 = !DILocation(line: 25, column: 15, scope: !1047)
!1052 = !DILocation(line: 25, column: 21, scope: !1047)
!1053 = !DILocation(line: 25, column: 52, scope: !1047)
!1054 = !DILocation(line: 25, column: 46, scope: !1047)
!1055 = !DILocation(line: 27, column: 20, scope: !1047)
!1056 = !DILocation(line: 27, column: 14, scope: !1047)
!1057 = !DILocation(line: 27, column: 27, scope: !1047)
!1058 = !DILocation(line: 29, column: 34, scope: !1047)
!1059 = !DILocation(line: 29, column: 28, scope: !1047)
!1060 = !DILocation(line: 29, column: 16, scope: !1047)
!1061 = !DILocation(line: 32, column: 16, scope: !1047)
!1062 = !DILocation(line: 32, column: 11, scope: !1047)
!1063 = !DILocation(line: 35, column: 20, scope: !1047)
!1064 = !DILocation(line: 35, column: 15, scope: !1047)
!1065 = !DILocation(line: 35, column: 27, scope: !1047)
!1066 = !DILocation(line: 35, column: 5, scope: !1047)
!1067 = distinct !DISubprogram(name: "__popcountsi2", scope: !81, file: !81, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !128)
!1068 = !DILocation(line: 23, column: 17, scope: !1067)
!1069 = !DILocation(line: 23, column: 23, scope: !1067)
!1070 = !DILocation(line: 23, column: 11, scope: !1067)
!1071 = !DILocation(line: 25, column: 13, scope: !1067)
!1072 = !DILocation(line: 25, column: 19, scope: !1067)
!1073 = !DILocation(line: 25, column: 38, scope: !1067)
!1074 = !DILocation(line: 25, column: 33, scope: !1067)
!1075 = !DILocation(line: 27, column: 17, scope: !1067)
!1076 = !DILocation(line: 27, column: 12, scope: !1067)
!1077 = !DILocation(line: 27, column: 24, scope: !1067)
!1078 = !DILocation(line: 29, column: 17, scope: !1067)
!1079 = !DILocation(line: 29, column: 12, scope: !1067)
!1080 = !DILocation(line: 32, column: 20, scope: !1067)
!1081 = !DILocation(line: 32, column: 15, scope: !1067)
!1082 = !DILocation(line: 32, column: 27, scope: !1067)
!1083 = !DILocation(line: 32, column: 5, scope: !1067)
!1084 = distinct !DISubprogram(name: "__subvdi3", scope: !85, file: !85, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !128)
!1085 = !DILocation(line: 24, column: 27, scope: !1084)
!1086 = !DILocation(line: 25, column: 11, scope: !1084)
!1087 = !DILocation(line: 25, column: 9, scope: !1084)
!1088 = !DILocation(line: 27, column: 15, scope: !1084)
!1089 = !DILocation(line: 27, column: 13, scope: !1084)
!1090 = !DILocation(line: 28, column: 13, scope: !1084)
!1091 = !DILocation(line: 29, column: 5, scope: !1084)
!1092 = !DILocation(line: 32, column: 15, scope: !1084)
!1093 = !DILocation(line: 32, column: 13, scope: !1084)
!1094 = !DILocation(line: 33, column: 13, scope: !1084)
!1095 = !DILocation(line: 35, column: 5, scope: !1084)
!1096 = distinct !DISubprogram(name: "__subvsi3", scope: !87, file: !87, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !128)
!1097 = !DILocation(line: 24, column: 27, scope: !1096)
!1098 = !DILocation(line: 25, column: 11, scope: !1096)
!1099 = !DILocation(line: 25, column: 9, scope: !1096)
!1100 = !DILocation(line: 27, column: 15, scope: !1096)
!1101 = !DILocation(line: 27, column: 13, scope: !1096)
!1102 = !DILocation(line: 28, column: 13, scope: !1096)
!1103 = !DILocation(line: 29, column: 5, scope: !1096)
!1104 = !DILocation(line: 32, column: 15, scope: !1096)
!1105 = !DILocation(line: 32, column: 13, scope: !1096)
!1106 = !DILocation(line: 33, column: 13, scope: !1096)
!1107 = !DILocation(line: 35, column: 5, scope: !1096)
!1108 = distinct !DISubprogram(name: "__ucmpdi2", scope: !91, file: !91, line: 23, type: !127, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !128)
!1109 = !DILocation(line: 26, column: 7, scope: !1108)
!1110 = !DILocation(line: 26, column: 11, scope: !1108)
!1111 = !DILocation(line: 28, column: 7, scope: !1108)
!1112 = !DILocation(line: 28, column: 11, scope: !1108)
!1113 = !DILocation(line: 29, column: 11, scope: !1108)
!1114 = !DILocation(line: 29, column: 13, scope: !1108)
!1115 = !DILocation(line: 29, column: 22, scope: !1108)
!1116 = !DILocation(line: 29, column: 24, scope: !1108)
!1117 = !DILocation(line: 29, column: 18, scope: !1108)
!1118 = !DILocation(line: 29, column: 9, scope: !1108)
!1119 = !DILocation(line: 30, column: 9, scope: !1108)
!1120 = !DILocation(line: 31, column: 11, scope: !1108)
!1121 = !DILocation(line: 31, column: 13, scope: !1108)
!1122 = !DILocation(line: 31, column: 22, scope: !1108)
!1123 = !DILocation(line: 31, column: 24, scope: !1108)
!1124 = !DILocation(line: 31, column: 18, scope: !1108)
!1125 = !DILocation(line: 31, column: 9, scope: !1108)
!1126 = !DILocation(line: 32, column: 9, scope: !1108)
!1127 = !DILocation(line: 33, column: 13, scope: !1108)
!1128 = !DILocation(line: 33, column: 23, scope: !1108)
!1129 = !DILocation(line: 33, column: 17, scope: !1108)
!1130 = !DILocation(line: 33, column: 9, scope: !1108)
!1131 = !DILocation(line: 34, column: 9, scope: !1108)
!1132 = !DILocation(line: 35, column: 13, scope: !1108)
!1133 = !DILocation(line: 35, column: 23, scope: !1108)
!1134 = !DILocation(line: 35, column: 17, scope: !1108)
!1135 = !DILocation(line: 35, column: 9, scope: !1108)
!1136 = !DILocation(line: 36, column: 9, scope: !1108)
!1137 = !DILocation(line: 37, column: 5, scope: !1108)
!1138 = !DILocation(line: 0, scope: !1108)
!1139 = !DILocation(line: 38, column: 1, scope: !1108)
!1140 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !91, file: !91, line: 46, type: !127, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !128)
!1141 = !DILocation(line: 48, column: 9, scope: !1140)
!1142 = !DILocation(line: 48, column: 25, scope: !1140)
!1143 = !DILocation(line: 48, column: 2, scope: !1140)
!1144 = distinct !DISubprogram(name: "__udivdi3", scope: !95, file: !95, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !128)
!1145 = !DILocation(line: 22, column: 12, scope: !1144)
!1146 = !DILocation(line: 22, column: 5, scope: !1144)
!1147 = distinct !DISubprogram(name: "__udivmodsi4", scope: !99, file: !99, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !128)
!1148 = !DILocation(line: 22, column: 14, scope: !1147)
!1149 = !DILocation(line: 23, column: 16, scope: !1147)
!1150 = !DILocation(line: 23, column: 12, scope: !1147)
!1151 = !DILocation(line: 23, column: 8, scope: !1147)
!1152 = !DILocation(line: 24, column: 3, scope: !1147)
!1153 = distinct !DISubprogram(name: "__udivsi3", scope: !103, file: !103, line: 25, type: !127, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !128)
!1154 = !DILocation(line: 32, column: 11, scope: !1153)
!1155 = !DILocation(line: 32, column: 9, scope: !1153)
!1156 = !DILocation(line: 33, column: 9, scope: !1153)
!1157 = !DILocation(line: 34, column: 11, scope: !1153)
!1158 = !DILocation(line: 34, column: 9, scope: !1153)
!1159 = !DILocation(line: 35, column: 9, scope: !1153)
!1160 = !DILocation(line: 36, column: 10, scope: !1153)
!1161 = !DILocation(line: 36, column: 29, scope: !1153)
!1162 = !DILocation(line: 36, column: 27, scope: !1153)
!1163 = !DILocation(line: 38, column: 12, scope: !1153)
!1164 = !DILocation(line: 38, column: 9, scope: !1153)
!1165 = !DILocation(line: 39, column: 9, scope: !1153)
!1166 = !DILocation(line: 40, column: 12, scope: !1153)
!1167 = !DILocation(line: 40, column: 9, scope: !1153)
!1168 = !DILocation(line: 41, column: 9, scope: !1153)
!1169 = !DILocation(line: 42, column: 5, scope: !1153)
!1170 = !DILocation(line: 45, column: 28, scope: !1153)
!1171 = !DILocation(line: 45, column: 11, scope: !1153)
!1172 = !DILocation(line: 46, column: 11, scope: !1153)
!1173 = !DILocation(line: 48, column: 5, scope: !1153)
!1174 = !DILocation(line: 0, scope: !1153)
!1175 = !DILocation(line: 48, column: 15, scope: !1153)
!1176 = !DILocation(line: 51, column: 22, scope: !1153)
!1177 = !DILocation(line: 60, column: 41, scope: !1153)
!1178 = !DILocation(line: 63, column: 5, scope: !1153)
!1179 = !DILocation(line: 62, column: 16, scope: !1153)
!1180 = !DILocation(line: 62, column: 11, scope: !1153)
!1181 = !DILocation(line: 61, column: 19, scope: !1153)
!1182 = !DILocation(line: 52, column: 16, scope: !1153)
!1183 = !DILocation(line: 52, column: 22, scope: !1153)
!1184 = !DILocation(line: 48, column: 20, scope: !1153)
!1185 = distinct !{!1185, !1173, !1178, !150}
!1186 = !DILocation(line: 64, column: 12, scope: !1153)
!1187 = !DILocation(line: 64, column: 18, scope: !1153)
!1188 = !DILocation(line: 65, column: 5, scope: !1153)
!1189 = !DILocation(line: 66, column: 1, scope: !1153)
!1190 = distinct !DISubprogram(name: "__umoddi3", scope: !107, file: !107, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !128)
!1191 = !DILocation(line: 23, column: 5, scope: !1190)
!1192 = !DILocation(line: 24, column: 12, scope: !1190)
!1193 = !DILocation(line: 24, column: 5, scope: !1190)
!1194 = distinct !DISubprogram(name: "__umodsi3", scope: !109, file: !109, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !128)
!1195 = !DILocation(line: 22, column: 16, scope: !1194)
!1196 = !DILocation(line: 22, column: 32, scope: !1194)
!1197 = !DILocation(line: 22, column: 14, scope: !1194)
!1198 = !DILocation(line: 22, column: 5, scope: !1194)
!1199 = distinct !DISubprogram(name: "memcpy", scope: !113, file: !113, line: 3, type: !127, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !128)
!1200 = !DILocation(line: 8, column: 6, scope: !1199)
!1201 = !DILocation(line: 0, scope: !1199)
!1202 = !DILocation(line: 8, column: 19, scope: !1199)
!1203 = !DILocation(line: 8, column: 2, scope: !1199)
!1204 = !DILocation(line: 9, column: 21, scope: !1199)
!1205 = !DILocation(line: 9, column: 3, scope: !1199)
!1206 = !DILocation(line: 9, column: 19, scope: !1199)
!1207 = !DILocation(line: 10, column: 2, scope: !1199)
!1208 = !DILocation(line: 8, column: 26, scope: !1199)
!1209 = distinct !{!1209, !1203, !1207, !150}
!1210 = !DILocation(line: 11, column: 1, scope: !1199)
!1211 = distinct !DISubprogram(name: "memset", scope: !113, file: !113, line: 13, type: !127, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !128)
!1212 = !DILocation(line: 17, column: 6, scope: !1211)
!1213 = !DILocation(line: 0, scope: !1211)
!1214 = !DILocation(line: 17, column: 19, scope: !1211)
!1215 = !DILocation(line: 17, column: 2, scope: !1211)
!1216 = !DILocation(line: 18, column: 13, scope: !1211)
!1217 = !DILocation(line: 18, column: 3, scope: !1211)
!1218 = !DILocation(line: 18, column: 11, scope: !1211)
!1219 = !DILocation(line: 19, column: 2, scope: !1211)
!1220 = !DILocation(line: 17, column: 26, scope: !1211)
!1221 = distinct !{!1221, !1215, !1219, !150}
!1222 = !DILocation(line: 20, column: 2, scope: !1211)
