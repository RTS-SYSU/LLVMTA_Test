; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%union.dwords = type { i64 }
%struct.anon = type { i32, i32 }

@cosf_solutions = dso_local global float 0.000000e+00, align 4
@basicmath_bp = internal constant [2 x float] [float 1.000000e+00, float 1.500000e+00], align 4
@basicmath_dp_l = internal constant [2 x float] [float 0.000000e+00, float 0x3EBA39FB80000000], align 4
@basicmath_dp_h = internal constant [2 x float] [float 0.000000e+00, float 0x3FE2B80000000000], align 4
@basicmath_npio2_hw = internal constant [32 x i32] [i32 1070141184, i32 1078529792, i32 1083624192, i32 1086918400, i32 1090212608, i32 1092012800, i32 1093659904, i32 1095307008, i32 1096954112, i32 1098601216, i32 1099577856, i32 1100401408, i32 1101224960, i32 1102048512, i32 1102872064, i32 1103695616, i32 1104519168, i32 1105342720, i32 1106166272, i32 1106989824, i32 1107554816, i32 1107966464, i32 1108378368, i32 1108790016, i32 1109201920, i32 1109613568, i32 1110025472, i32 1110437120, i32 1110849024, i32 1111260672, i32 1111672576, i32 1112084224], align 4
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
define dso_local arm_aapcs_vfpcc void @cosf_init() #0 !dbg !127 {
entry:
  store float 0.000000e+00, float* @cosf_solutions, align 4, !dbg !131
  ret void, !dbg !132
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cosf_return() #0 !dbg !133 {
entry:
  %0 = load float, float* @cosf_solutions, align 4, !dbg !134
  %conv = fptosi float %0 to i32, !dbg !134
  %cmp = icmp eq i32 %conv, -4, !dbg !135
  br i1 %cmp, label %if.then, label %if.else, !dbg !136

if.then:                                          ; preds = %entry
  br label %return, !dbg !137

if.else:                                          ; preds = %entry
  br label %return, !dbg !138

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.else ], !dbg !139
  ret i32 %retval.0, !dbg !140
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cosf_main() #0 !dbg !141 {
entry:
  br label %for.cond, !dbg !142

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi float [ 0.000000e+00, %entry ], [ %add1, %for.inc ], !dbg !143
  %cmp = fcmp olt float %i.0, 0x3FC99999A0000000, !dbg !144
  br i1 %cmp, label %for.body, label %for.end, !dbg !145

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc float @basicmath___cosf(float noundef %i.0) #4, !dbg !146
  %0 = load float, float* @cosf_solutions, align 4, !dbg !147
  %add = fadd float %0, %call, !dbg !147
  store float %add, float* @cosf_solutions, align 4, !dbg !147
  br label %for.inc, !dbg !148

for.inc:                                          ; preds = %for.body
  %add1 = fadd float %i.0, 0x3FB99999A0000000, !dbg !149
  br label %for.cond, !dbg !145, !llvm.loop !150

for.end:                                          ; preds = %for.cond
  ret void, !dbg !153
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !154 {
entry:
  call arm_aapcs_vfpcc void @cosf_init() #4, !dbg !155
  call arm_aapcs_vfpcc void @cosf_main() #4, !dbg !156
  %call = call arm_aapcs_vfpcc i32 @cosf_return() #4, !dbg !157
  ret i32 %call, !dbg !158
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___ieee754_acosf(float noundef %x) #0 !dbg !159 {
entry:
  %.cast = bitcast float %x to i32, !dbg !161
  %and = and i32 %.cast, 2147483647, !dbg !162
  %cmp = icmp eq i32 %and, 1065353216, !dbg !163
  br i1 %cmp, label %if.then, label %if.else3, !dbg !164

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %.cast, 0, !dbg !165
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !166

if.then2:                                         ; preds = %if.then
  br label %return, !dbg !167

if.else:                                          ; preds = %if.then
  br label %return, !dbg !168

if.else3:                                         ; preds = %entry
  %cmp4 = icmp ugt i32 %and, 1065353216, !dbg !169
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !170

if.then5:                                         ; preds = %if.else3
  %sub = fsub float %x, %x, !dbg !171
  %sub6 = fsub float %x, %x, !dbg !172
  %div = fdiv float %sub, %sub6, !dbg !173
  br label %return, !dbg !174

if.end:                                           ; preds = %if.else3
  br label %if.end7

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp ult i32 %and, 1056964608, !dbg !175
  br i1 %cmp8, label %if.then9, label %if.else27, !dbg !176

if.then9:                                         ; preds = %if.end7
  %cmp10 = icmp ult i32 %and, 587202561, !dbg !177
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !178

if.then11:                                        ; preds = %if.then9
  br label %return, !dbg !179

if.end12:                                         ; preds = %if.then9
  %mul = fmul float %x, %x, !dbg !180
  %0 = call float @llvm.fmuladd.f32(float %mul, float 0x3F023DE100000000, float 0x3F49EFE080000000), !dbg !181
  %1 = call float @llvm.fmuladd.f32(float %mul, float %0, float 0xBFA48228C0000000), !dbg !182
  %2 = call float @llvm.fmuladd.f32(float %mul, float %1, float 0x3FC9C15500000000), !dbg !183
  %3 = call float @llvm.fmuladd.f32(float %mul, float %2, float 0xBFD4D61200000000), !dbg !184
  %4 = call float @llvm.fmuladd.f32(float %mul, float %3, float 0x3FC5555560000000), !dbg !185
  %mul18 = fmul float %mul, %4, !dbg !186
  %5 = call float @llvm.fmuladd.f32(float %mul, float 0x3FB3B8C5C0000000, float 0xBFE6066C20000000), !dbg !187
  %6 = call float @llvm.fmuladd.f32(float %mul, float %5, float 0x40002AE5A0000000), !dbg !188
  %7 = call float @llvm.fmuladd.f32(float %mul, float %6, float 0xC0033A2720000000), !dbg !189
  %8 = call float @llvm.fmuladd.f32(float %mul, float %7, float 1.000000e+00), !dbg !190
  %div23 = fdiv float %mul18, %8, !dbg !191
  %neg = fneg float %x, !dbg !192
  %9 = call float @llvm.fmuladd.f32(float %neg, float %div23, float 0x3E74442D00000000), !dbg !192
  %10 = fsub float %9, %x, !dbg !193
  %sub26 = fadd float %10, 0x3FF921FB40000000, !dbg !193
  br label %return, !dbg !194

if.else27:                                        ; preds = %if.end7
  %cmp28 = icmp slt i32 %.cast, 0, !dbg !195
  br i1 %cmp28, label %if.then29, label %if.else45, !dbg !196

if.then29:                                        ; preds = %if.else27
  %add = fadd float %x, 1.000000e+00, !dbg !197
  %mul30 = fmul float %add, 5.000000e-01, !dbg !198
  %11 = call float @llvm.fmuladd.f32(float %mul30, float 0x3F023DE100000000, float 0x3F49EFE080000000), !dbg !199
  %12 = call float @llvm.fmuladd.f32(float %mul30, float %11, float 0xBFA48228C0000000), !dbg !200
  %13 = call float @llvm.fmuladd.f32(float %mul30, float %12, float 0x3FC9C15500000000), !dbg !201
  %14 = call float @llvm.fmuladd.f32(float %mul30, float %13, float 0xBFD4D61200000000), !dbg !202
  %15 = call float @llvm.fmuladd.f32(float %mul30, float %14, float 0x3FC5555560000000), !dbg !203
  %mul36 = fmul float %mul30, %15, !dbg !204
  %16 = call float @llvm.fmuladd.f32(float %mul30, float 0x3FB3B8C5C0000000, float 0xBFE6066C20000000), !dbg !205
  %17 = call float @llvm.fmuladd.f32(float %mul30, float %16, float 0x40002AE5A0000000), !dbg !206
  %18 = call float @llvm.fmuladd.f32(float %mul30, float %17, float 0xC0033A2720000000), !dbg !207
  %19 = call float @llvm.fmuladd.f32(float %mul30, float %18, float 1.000000e+00), !dbg !208
  %call = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %mul30) #4, !dbg !209
  %div41 = fdiv float %mul36, %19, !dbg !210
  %20 = call float @llvm.fmuladd.f32(float %div41, float %call, float 0xBE74442D00000000), !dbg !211
  %add43 = fadd float %call, %20, !dbg !212
  %21 = call float @llvm.fmuladd.f32(float %add43, float -2.000000e+00, float 0x400921FB40000000), !dbg !213
  br label %return, !dbg !214

if.else45:                                        ; preds = %if.else27
  %sub46 = fsub float 1.000000e+00, %x, !dbg !215
  %mul47 = fmul float %sub46, 5.000000e-01, !dbg !216
  %call48 = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %mul47) #4, !dbg !217
  %.cast1 = bitcast float %call48 to i32, !dbg !218
  %and52 = and i32 %.cast1, -4096, !dbg !219
  %.cast2 = bitcast i32 %and52 to float, !dbg !219
  %neg56 = fneg float %.cast2, !dbg !220
  %22 = call float @llvm.fmuladd.f32(float %neg56, float %.cast2, float %mul47), !dbg !220
  %add57 = fadd float %call48, %.cast2, !dbg !221
  %div58 = fdiv float %22, %add57, !dbg !222
  %23 = call float @llvm.fmuladd.f32(float %mul47, float 0x3F023DE100000000, float 0x3F49EFE080000000), !dbg !223
  %24 = call float @llvm.fmuladd.f32(float %mul47, float %23, float 0xBFA48228C0000000), !dbg !224
  %25 = call float @llvm.fmuladd.f32(float %mul47, float %24, float 0x3FC9C15500000000), !dbg !225
  %26 = call float @llvm.fmuladd.f32(float %mul47, float %25, float 0xBFD4D61200000000), !dbg !226
  %27 = call float @llvm.fmuladd.f32(float %mul47, float %26, float 0x3FC5555560000000), !dbg !227
  %mul64 = fmul float %mul47, %27, !dbg !228
  %28 = call float @llvm.fmuladd.f32(float %mul47, float 0x3FB3B8C5C0000000, float 0xBFE6066C20000000), !dbg !229
  %29 = call float @llvm.fmuladd.f32(float %mul47, float %28, float 0x40002AE5A0000000), !dbg !230
  %30 = call float @llvm.fmuladd.f32(float %mul47, float %29, float 0xC0033A2720000000), !dbg !231
  %31 = call float @llvm.fmuladd.f32(float %mul47, float %30, float 1.000000e+00), !dbg !232
  %div69 = fdiv float %mul64, %31, !dbg !233
  %32 = call float @llvm.fmuladd.f32(float %div69, float %call48, float %div58), !dbg !234
  %add71 = fadd float %32, %.cast2, !dbg !235
  %mul72 = fmul float %add71, 2.000000e+00, !dbg !236
  br label %return, !dbg !237

return:                                           ; preds = %if.else45, %if.then29, %if.end12, %if.then11, %if.then5, %if.else, %if.then2
  %retval.0 = phi float [ 0.000000e+00, %if.then2 ], [ 0x400921FB60000000, %if.else ], [ %div, %if.then5 ], [ 0x3FF921FB60000000, %if.then11 ], [ %sub26, %if.end12 ], [ %21, %if.then29 ], [ %mul72, %if.else45 ], !dbg !238
  ret float %retval.0, !dbg !239
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %x) #0 !dbg !240 {
entry:
  %.cast = bitcast float %x to i32, !dbg !241
  %and = and i32 %.cast, 2139095040, !dbg !242
  %cmp = icmp eq i32 %and, 2139095040, !dbg !243
  br i1 %cmp, label %if.then, label %if.end, !dbg !244

if.then:                                          ; preds = %entry
  %0 = call float @llvm.fmuladd.f32(float %x, float %x, float %x), !dbg !245
  br label %return, !dbg !246

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %.cast, 1, !dbg !247
  br i1 %cmp1, label %if.then2, label %if.end11, !dbg !248

if.then2:                                         ; preds = %if.end
  %and3 = and i32 %.cast, 2147483647, !dbg !249
  %cmp4 = icmp eq i32 %and3, 0, !dbg !250
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !251

if.then5:                                         ; preds = %if.then2
  br label %return, !dbg !252

if.else:                                          ; preds = %if.then2
  %cmp6 = icmp slt i32 %.cast, 0, !dbg !253
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !254

if.then7:                                         ; preds = %if.else
  %sub = fsub float %x, %x, !dbg !255
  %sub8 = fsub float %x, %x, !dbg !256
  %div = fdiv float %sub, %sub8, !dbg !257
  br label %return, !dbg !258

if.end9:                                          ; preds = %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9
  br label %if.end11, !dbg !259

if.end11:                                         ; preds = %if.end10, %if.end
  %shr = ashr i32 %.cast, 23, !dbg !260
  %cmp12 = icmp ult i32 %.cast, 8388608, !dbg !261
  br i1 %cmp12, label %if.then13, label %if.end18, !dbg !262

if.then13:                                        ; preds = %if.end11
  br label %for.cond, !dbg !263

for.cond:                                         ; preds = %for.inc, %if.then13
  %ix.0 = phi i32 [ %.cast, %if.then13 ], [ %shl, %for.inc ], !dbg !264
  %i.0 = phi i32 [ 0, %if.then13 ], [ %inc, %for.inc ], !dbg !264
  %and14 = and i32 %ix.0, 8388608, !dbg !265
  %cmp15 = icmp eq i32 %and14, 0, !dbg !266
  br i1 %cmp15, label %for.body, label %for.end, !dbg !267

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !268

for.inc:                                          ; preds = %for.body
  %shl = shl i32 %ix.0, 1, !dbg !269
  %inc = add nuw nsw i32 %i.0, 1, !dbg !270
  br label %for.cond, !dbg !267, !llvm.loop !271

for.end:                                          ; preds = %for.cond
  %sub16 = add nsw i32 %i.0, -1, !dbg !273
  %sub17 = sub nsw i32 %shr, %sub16, !dbg !274
  br label %if.end18, !dbg !275

if.end18:                                         ; preds = %for.end, %if.end11
  %m.0 = phi i32 [ %sub17, %for.end ], [ %shr, %if.end11 ], !dbg !264
  %ix.1 = phi i32 [ %ix.0, %for.end ], [ %.cast, %if.end11 ], !dbg !241
  %sub19 = add nsw i32 %m.0, -127, !dbg !276
  %and20 = and i32 %ix.1, 8388607, !dbg !277
  %or = or i32 %and20, 8388608, !dbg !278
  %and21 = and i32 %sub19, 1, !dbg !279
  %tobool.not = icmp eq i32 %and21, 0, !dbg !279
  br i1 %tobool.not, label %if.end23, label %if.then22, !dbg !280

if.then22:                                        ; preds = %if.end18
  %add = shl nuw nsw i32 %or, 1, !dbg !281
  br label %if.end23, !dbg !282

if.end23:                                         ; preds = %if.then22, %if.end18
  %ix.2 = phi i32 [ %add, %if.then22 ], [ %or, %if.end18 ], !dbg !264
  br label %while.cond, !dbg !283

while.cond:                                       ; preds = %while.body, %if.end23
  %s.0 = phi i32 [ 0, %if.end23 ], [ %add28, %while.body ], !dbg !264
  %ix.3.in = phi i32 [ %ix.2, %if.end23 ], [ %sub29, %while.body ]
  %r.0 = phi i32 [ 16777216, %if.end23 ], [ %shr32, %while.body ], !dbg !264
  %cmp26.not = icmp eq i32 %r.0, 0, !dbg !284
  br i1 %cmp26.not, label %while.end, label %while.body, !dbg !283

while.body:                                       ; preds = %while.cond
  %ix.3 = shl nsw i32 %ix.3.in, 1, !dbg !264
  %add27 = add i32 %s.0, %r.0, !dbg !285
  %add28 = add i32 %add27, %r.0, !dbg !286
  %sub29 = sub nsw i32 %ix.3, %add27, !dbg !287
  %shr32 = lshr i32 %r.0, 1, !dbg !288
  br label %while.cond, !dbg !283, !llvm.loop !289

while.end:                                        ; preds = %while.cond
  %cmp33.not = icmp eq i32 %ix.3.in, 0, !dbg !291
  br i1 %cmp33.not, label %if.end45, label %if.then34, !dbg !292

if.then34:                                        ; preds = %while.end
  br i1 true, label %if.then36, label %if.end44, !dbg !293

if.then36:                                        ; preds = %if.then34
  br i1 false, label %if.then38, label %if.else40, !dbg !294

if.then38:                                        ; preds = %if.then36
  br label %if.end43, !dbg !295

if.else40:                                        ; preds = %if.then36
  br label %if.end43

if.end43:                                         ; preds = %if.else40, %if.then38
  br label %if.end44, !dbg !296

if.end44:                                         ; preds = %if.end43, %if.then34
  %q.2 = phi i32 [ 33554432, %if.end43 ], [ 33554431, %if.then34 ], !dbg !264
  br label %if.end45, !dbg !297

if.end45:                                         ; preds = %if.end44, %while.end
  %q.3 = phi i32 [ %q.2, %if.end44 ], [ 33554431, %while.end ], !dbg !264
  %shr46 = ashr i32 %q.3, 1, !dbg !298
  %add47 = add nsw i32 %shr46, 1056964608, !dbg !299
  %1 = shl i32 %sub19, 22, !dbg !300
  %shl48 = and i32 %1, -8388608, !dbg !300
  %add49 = add nsw i32 %add47, %shl48, !dbg !301
  %.cast1 = bitcast i32 %add49 to float, !dbg !302
  br label %return, !dbg !303

return:                                           ; preds = %if.end45, %if.then7, %if.then5, %if.then
  %retval.0 = phi float [ %0, %if.then ], [ %x, %if.then5 ], [ %div, %if.then7 ], [ %.cast1, %if.end45 ], !dbg !264
  ret float %retval.0, !dbg !304
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___ieee754_powf(float noundef %x, float noundef %y) #0 !dbg !305 {
entry:
  %.cast = bitcast float %x to i32, !dbg !306
  %.cast1 = bitcast float %y to i32, !dbg !307
  %and = and i32 %.cast, 2147483647, !dbg !308
  %and4 = and i32 %.cast1, 2147483647, !dbg !309
  %cmp = icmp eq i32 %and4, 0, !dbg !310
  br i1 %cmp, label %if.then, label %if.end, !dbg !311

if.then:                                          ; preds = %entry
  br label %return, !dbg !312

if.end:                                           ; preds = %entry
  %cmp5 = fcmp oeq float %x, 1.000000e+00, !dbg !313
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !314

if.then6:                                         ; preds = %if.end
  br label %return, !dbg !315

if.end7:                                          ; preds = %if.end
  %cmp8 = fcmp oeq float %x, -1.000000e+00, !dbg !316
  br i1 %cmp8, label %land.lhs.true, label %if.end10, !dbg !317

land.lhs.true:                                    ; preds = %if.end7
  %call = call arm_aapcs_vfpcc i32 @basicmath___isinff(float noundef %y) #4, !dbg !318
  %tobool.not = icmp eq i32 %call, 0, !dbg !318
  br i1 %tobool.not, label %if.end10, label %if.then9, !dbg !319

if.then9:                                         ; preds = %land.lhs.true
  br label %return, !dbg !320

if.end10:                                         ; preds = %land.lhs.true, %if.end7
  %cmp11 = icmp ugt i32 %and, 2139095040, !dbg !321
  br i1 %cmp11, label %if.then13, label %lor.lhs.false, !dbg !322

lor.lhs.false:                                    ; preds = %if.end10
  %cmp12 = icmp ugt i32 %and4, 2139095040, !dbg !323
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !324

if.then13:                                        ; preds = %lor.lhs.false, %if.end10
  %add = fadd float %x, %y, !dbg !325
  br label %return, !dbg !326

if.end14:                                         ; preds = %lor.lhs.false
  %cmp15 = icmp slt i32 %.cast, 0, !dbg !327
  br i1 %cmp15, label %if.then16, label %if.end31, !dbg !328

if.then16:                                        ; preds = %if.end14
  %cmp17 = icmp ugt i32 %and4, 1266679807, !dbg !329
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !330

if.then18:                                        ; preds = %if.then16
  br label %if.end30, !dbg !331

if.else:                                          ; preds = %if.then16
  %cmp19 = icmp ugt i32 %and4, 1065353215, !dbg !332
  br i1 %cmp19, label %if.then20, label %if.end29, !dbg !333

if.then20:                                        ; preds = %if.else
  %0 = lshr i32 %and4, 23, !dbg !334
  %sub21 = sub nsw i32 150, %0, !dbg !335
  %shr22 = lshr i32 %and4, %sub21, !dbg !336
  %sub23 = sub nsw i32 150, %0, !dbg !337
  %shl = shl i32 %shr22, %sub23, !dbg !338
  %cmp24 = icmp eq i32 %shl, %and4, !dbg !339
  br i1 %cmp24, label %if.then25, label %if.end28, !dbg !340

if.then25:                                        ; preds = %if.then20
  %and26 = and i32 %shr22, 1, !dbg !341
  %sub27 = sub nuw nsw i32 2, %and26, !dbg !342
  br label %if.end28, !dbg !343

if.end28:                                         ; preds = %if.then25, %if.then20
  %yisint.0 = phi i32 [ %sub27, %if.then25 ], [ 0, %if.then20 ], !dbg !344
  br label %if.end29, !dbg !345

if.end29:                                         ; preds = %if.end28, %if.else
  %yisint.1 = phi i32 [ %yisint.0, %if.end28 ], [ 0, %if.else ], !dbg !344
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then18
  %yisint.2 = phi i32 [ 2, %if.then18 ], [ %yisint.1, %if.end29 ], !dbg !344
  br label %if.end31, !dbg !346

if.end31:                                         ; preds = %if.end30, %if.end14
  %yisint.3 = phi i32 [ %yisint.2, %if.end30 ], [ 0, %if.end14 ], !dbg !344
  %cmp32 = icmp eq i32 %and4, 2139095040, !dbg !347
  br i1 %cmp32, label %if.then33, label %if.end47, !dbg !348

if.then33:                                        ; preds = %if.end31
  %cmp34 = icmp eq i32 %and, 1065353216, !dbg !349
  br i1 %cmp34, label %if.then35, label %if.else37, !dbg !350

if.then35:                                        ; preds = %if.then33
  %sub36 = fsub float %y, %y, !dbg !351
  br label %return, !dbg !352

if.else37:                                        ; preds = %if.then33
  %cmp38 = icmp ugt i32 %and, 1065353216, !dbg !353
  br i1 %cmp38, label %if.then39, label %if.else41, !dbg !354

if.then39:                                        ; preds = %if.else37
  %cmp40 = icmp sgt i32 %.cast1, -1, !dbg !355
  br i1 %cmp40, label %cond.true, label %cond.false, !dbg !356

cond.true:                                        ; preds = %if.then39
  br label %cond.end, !dbg !356

cond.false:                                       ; preds = %if.then39
  br label %cond.end, !dbg !356

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %y, %cond.true ], [ 0.000000e+00, %cond.false ], !dbg !356
  br label %return, !dbg !357

if.else41:                                        ; preds = %if.else37
  %cmp42 = icmp slt i32 %.cast1, 0, !dbg !358
  br i1 %cmp42, label %cond.true43, label %cond.false44, !dbg !359

cond.true43:                                      ; preds = %if.else41
  %fneg = fneg float %y, !dbg !360
  br label %cond.end45, !dbg !359

cond.false44:                                     ; preds = %if.else41
  br label %cond.end45, !dbg !359

cond.end45:                                       ; preds = %cond.false44, %cond.true43
  %cond46 = phi float [ %fneg, %cond.true43 ], [ 0.000000e+00, %cond.false44 ], !dbg !359
  br label %return, !dbg !361

if.end47:                                         ; preds = %if.end31
  %cmp48 = icmp eq i32 %and4, 1065353216, !dbg !362
  br i1 %cmp48, label %if.then49, label %if.end53, !dbg !363

if.then49:                                        ; preds = %if.end47
  %cmp50 = icmp slt i32 %.cast1, 0, !dbg !364
  br i1 %cmp50, label %if.then51, label %if.else52, !dbg !365

if.then51:                                        ; preds = %if.then49
  %div = fdiv float 1.000000e+00, %x, !dbg !366
  br label %return, !dbg !367

if.else52:                                        ; preds = %if.then49
  br label %return, !dbg !368

if.end53:                                         ; preds = %if.end47
  %cmp54 = icmp eq i32 %.cast1, 1073741824, !dbg !369
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !370

if.then55:                                        ; preds = %if.end53
  %mul = fmul float %x, %x, !dbg !371
  br label %return, !dbg !372

if.end56:                                         ; preds = %if.end53
  %cmp57 = icmp eq i32 %.cast1, 1056964608, !dbg !373
  br i1 %cmp57, label %if.then58, label %if.end63, !dbg !374

if.then58:                                        ; preds = %if.end56
  %cmp59 = icmp sgt i32 %.cast, -1, !dbg !375
  br i1 %cmp59, label %if.then60, label %if.end62, !dbg !376

if.then60:                                        ; preds = %if.then58
  %call61 = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %x) #4, !dbg !377
  br label %return, !dbg !378

if.end62:                                         ; preds = %if.then58
  br label %if.end63, !dbg !379

if.end63:                                         ; preds = %if.end62, %if.end56
  %call64 = call arm_aapcs_vfpcc float @basicmath___fabsf(float noundef %x) #4, !dbg !380
  %cmp65 = icmp eq i32 %and, 2139095040, !dbg !381
  br i1 %cmp65, label %if.then70, label %lor.lhs.false66, !dbg !382

lor.lhs.false66:                                  ; preds = %if.end63
  %cmp67 = icmp eq i32 %and, 0, !dbg !383
  br i1 %cmp67, label %if.then70, label %lor.lhs.false68, !dbg !384

lor.lhs.false68:                                  ; preds = %lor.lhs.false66
  %cmp69 = icmp eq i32 %and, 1065353216, !dbg !385
  br i1 %cmp69, label %if.then70, label %if.end90, !dbg !386

if.then70:                                        ; preds = %lor.lhs.false68, %lor.lhs.false66, %if.end63
  %cmp71 = icmp slt i32 %.cast1, 0, !dbg !387
  br i1 %cmp71, label %if.then72, label %if.end74, !dbg !388

if.then72:                                        ; preds = %if.then70
  %div73 = fdiv float 1.000000e+00, %call64, !dbg !389
  br label %if.end74, !dbg !390

if.end74:                                         ; preds = %if.then72, %if.then70
  %z.0 = phi float [ %div73, %if.then72 ], [ %call64, %if.then70 ], !dbg !344
  %cmp75 = icmp slt i32 %.cast, 0, !dbg !391
  br i1 %cmp75, label %if.then76, label %if.end89, !dbg !392

if.then76:                                        ; preds = %if.end74
  %sub77 = add nsw i32 %and, -1065353216, !dbg !393
  %or = or i32 %sub77, %yisint.3, !dbg !394
  %cmp78 = icmp eq i32 %or, 0, !dbg !395
  br i1 %cmp78, label %if.then79, label %if.else83, !dbg !396

if.then79:                                        ; preds = %if.then76
  %sub80 = fsub float %z.0, %z.0, !dbg !397
  %sub81 = fsub float %z.0, %z.0, !dbg !398
  %div82 = fdiv float %sub80, %sub81, !dbg !399
  br label %if.end88, !dbg !400

if.else83:                                        ; preds = %if.then76
  %cmp84 = icmp eq i32 %yisint.3, 1, !dbg !401
  br i1 %cmp84, label %if.then85, label %if.end87, !dbg !402

if.then85:                                        ; preds = %if.else83
  %fneg86 = fneg float %z.0, !dbg !403
  br label %if.end87, !dbg !404

if.end87:                                         ; preds = %if.then85, %if.else83
  %z.1 = phi float [ %fneg86, %if.then85 ], [ %z.0, %if.else83 ], !dbg !344
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then79
  %z.2 = phi float [ %div82, %if.then79 ], [ %z.1, %if.end87 ], !dbg !344
  br label %if.end89, !dbg !405

if.end89:                                         ; preds = %if.end88, %if.end74
  %z.3 = phi float [ %z.2, %if.end88 ], [ %z.0, %if.end74 ], !dbg !344
  br label %return, !dbg !406

if.end90:                                         ; preds = %lor.lhs.false68
  %shr91 = lshr i32 %.cast, 31, !dbg !407
  %sub92 = add nsw i32 %shr91, -1, !dbg !408
  %or93 = or i32 %sub92, %yisint.3, !dbg !409
  %cmp94 = icmp eq i32 %or93, 0, !dbg !410
  br i1 %cmp94, label %if.then95, label %if.end99, !dbg !411

if.then95:                                        ; preds = %if.end90
  %sub96 = fsub float %x, %x, !dbg !412
  %sub97 = fsub float %x, %x, !dbg !413
  %div98 = fdiv float %sub96, %sub97, !dbg !414
  br label %return, !dbg !415

if.end99:                                         ; preds = %if.end90
  %cmp100 = icmp ugt i32 %and4, 1291845632, !dbg !416
  br i1 %cmp100, label %if.then101, label %if.else131, !dbg !417

if.then101:                                       ; preds = %if.end99
  %cmp102 = icmp ult i32 %and, 1065353208, !dbg !418
  br i1 %cmp102, label %if.then103, label %if.end106, !dbg !419

if.then103:                                       ; preds = %if.then101
  %cmp104 = icmp slt i32 %.cast1, 0, !dbg !420
  %cond105 = select i1 %cmp104, float 0x7FF0000000000000, float 0.000000e+00, !dbg !421
  br label %return, !dbg !422

if.end106:                                        ; preds = %if.then101
  %cmp107 = icmp ugt i32 %and, 1065353223, !dbg !423
  br i1 %cmp107, label %if.then108, label %if.end111, !dbg !424

if.then108:                                       ; preds = %if.end106
  %cmp109 = icmp sgt i32 %.cast1, 0, !dbg !425
  %cond110 = select i1 %cmp109, float 0x7FF0000000000000, float 0.000000e+00, !dbg !426
  br label %return, !dbg !427

if.end111:                                        ; preds = %if.end106
  %sub112 = fadd float %x, -1.000000e+00, !dbg !428
  %mul113 = fmul float %sub112, %sub112, !dbg !429
  %neg = fneg float %sub112, !dbg !430
  %1 = call float @llvm.fmuladd.f32(float %neg, float 2.500000e-01, float 0x3FD5555560000000), !dbg !430
  %neg116 = fneg float %sub112, !dbg !431
  %2 = call float @llvm.fmuladd.f32(float %neg116, float %1, float 5.000000e-01), !dbg !431
  %mul117 = fmul float %mul113, %2, !dbg !432
  %mul118 = fmul float %sub112, 0x3FF7154000000000, !dbg !433
  %neg121 = fmul float %mul117, 0xBFF7154760000000, !dbg !434
  %3 = call float @llvm.fmuladd.f32(float %sub112, float 0x3EDD94AE00000000, float %neg121), !dbg !434
  %add122 = fadd float %mul118, %3, !dbg !435
  %.cast21 = bitcast float %add122 to i32, !dbg !436
  %and126 = and i32 %.cast21, -4096, !dbg !437
  %.cast22 = bitcast i32 %and126 to float, !dbg !437
  %sub129 = fsub float %.cast22, %mul118, !dbg !438
  %sub130 = fsub float %3, %sub129, !dbg !439
  br label %if.end243, !dbg !440

if.else131:                                       ; preds = %if.end99
  %cmp132 = icmp ult i32 %and, 8388608, !dbg !441
  br i1 %cmp132, label %if.then133, label %if.end139, !dbg !442

if.then133:                                       ; preds = %if.else131
  %mul134 = fmul float %call64, 0x4170000000000000, !dbg !443
  %.cast20 = bitcast float %mul134 to i32, !dbg !444
  br label %if.end139, !dbg !445

if.end139:                                        ; preds = %if.then133, %if.else131
  %n.0 = phi i32 [ -24, %if.then133 ], [ 0, %if.else131 ], !dbg !344
  %ix.0 = phi i32 [ %.cast20, %if.then133 ], [ %and, %if.else131 ], !dbg !344
  %shr140 = ashr i32 %ix.0, 23, !dbg !446
  %sub141 = add nsw i32 %shr140, -127, !dbg !447
  %add142 = add nsw i32 %n.0, %sub141, !dbg !448
  %and143 = and i32 %ix.0, 8388607, !dbg !449
  %or144 = or i32 %and143, 1065353216, !dbg !450
  %cmp145 = icmp ult i32 %and143, 1885298, !dbg !451
  br i1 %cmp145, label %if.then146, label %if.else147, !dbg !452

if.then146:                                       ; preds = %if.end139
  br label %if.end154, !dbg !453

if.else147:                                       ; preds = %if.end139
  %cmp148 = icmp ult i32 %and143, 6140887, !dbg !454
  br i1 %cmp148, label %if.then149, label %if.else150, !dbg !455

if.then149:                                       ; preds = %if.else147
  br label %if.end153, !dbg !456

if.else150:                                       ; preds = %if.else147
  %add151 = add nsw i32 %add142, 1, !dbg !457
  %sub152 = or i32 %and143, 1056964608, !dbg !458
  br label %if.end153

if.end153:                                        ; preds = %if.else150, %if.then149
  %k.0 = phi i32 [ 1, %if.then149 ], [ 0, %if.else150 ], !dbg !344
  %n.1 = phi i32 [ %add142, %if.then149 ], [ %add151, %if.else150 ], !dbg !344
  %ix.1 = phi i32 [ %or144, %if.then149 ], [ %sub152, %if.else150 ], !dbg !344
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.then146
  %k.1 = phi i32 [ 0, %if.then146 ], [ %k.0, %if.end153 ], !dbg !344
  %n.2 = phi i32 [ %add142, %if.then146 ], [ %n.1, %if.end153 ], !dbg !448
  %ix.2 = phi i32 [ %or144, %if.then146 ], [ %ix.1, %if.end153 ], !dbg !459
  %.cast2 = bitcast i32 %ix.2 to float, !dbg !460
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* @basicmath_bp, i32 0, i32 %k.1, !dbg !461
  %4 = load float, float* %arrayidx, align 4, !dbg !461
  %sub158 = fsub float %.cast2, %4, !dbg !462
  %add160 = fadd float %4, %.cast2, !dbg !463
  %div161 = fdiv float 1.000000e+00, %add160, !dbg !464
  %mul162 = fmul float %sub158, %div161, !dbg !465
  %.cast3 = bitcast float %mul162 to i32, !dbg !466
  %and167 = and i32 %.cast3, -4096, !dbg !467
  %.cast4 = bitcast i32 %and167 to float, !dbg !467
  %shr171 = ashr i32 %ix.2, 1, !dbg !468
  %or172 = or i32 %shr171, 536870912, !dbg !468
  %add173 = add nsw i32 %or172, 262144, !dbg !468
  %shl174 = shl nsw i32 %k.1, 21, !dbg !468
  %add175 = add nsw i32 %add173, %shl174, !dbg !468
  %.cast5 = bitcast i32 %add175 to float, !dbg !468
  %arrayidx178 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_bp, i32 0, i32 %k.1, !dbg !469
  %5 = load float, float* %arrayidx178, align 4, !dbg !469
  %sub179 = fsub float %.cast5, %5, !dbg !470
  %sub180 = fsub float %.cast2, %sub179, !dbg !471
  %neg182 = fneg float %.cast4, !dbg !472
  %6 = call float @llvm.fmuladd.f32(float %neg182, float %.cast5, float %sub158), !dbg !472
  %neg184 = fneg float %.cast4, !dbg !473
  %7 = call float @llvm.fmuladd.f32(float %neg184, float %sub180, float %6), !dbg !473
  %mul185 = fmul float %div161, %7, !dbg !474
  %mul186 = fmul float %mul162, %mul162, !dbg !475
  %mul187 = fmul float %mul186, %mul186, !dbg !476
  %8 = call float @llvm.fmuladd.f32(float %mul186, float 0x3FCA7E2840000000, float 0x3FCD864AA0000000), !dbg !477
  %9 = call float @llvm.fmuladd.f32(float %mul186, float %8, float 0x3FD17460A0000000), !dbg !478
  %10 = call float @llvm.fmuladd.f32(float %mul186, float %9, float 0x3FD5555560000000), !dbg !479
  %11 = call float @llvm.fmuladd.f32(float %mul186, float %10, float 0x3FDB6DB6E0000000), !dbg !480
  %12 = call float @llvm.fmuladd.f32(float %mul186, float %11, float 0x3FE3333340000000), !dbg !481
  %mul193 = fmul float %mul187, %12, !dbg !482
  %add194 = fadd float %mul162, %.cast4, !dbg !483
  %13 = call float @llvm.fmuladd.f32(float %mul185, float %add194, float %mul193), !dbg !484
  %mul196 = fmul float %.cast4, %.cast4, !dbg !485
  %add197 = fadd float %mul196, 3.000000e+00, !dbg !486
  %add198 = fadd float %add197, %13, !dbg !487
  %.cast6 = bitcast float %add198 to i32, !dbg !488
  %and203 = and i32 %.cast6, -4096, !dbg !489
  %.cast7 = bitcast i32 %and203 to float, !dbg !489
  %sub206 = fadd float %.cast7, -3.000000e+00, !dbg !490
  %sub207 = fsub float %sub206, %mul196, !dbg !491
  %sub208 = fsub float %13, %sub207, !dbg !492
  %mul209 = fmul float %.cast4, %.cast7, !dbg !493
  %mul211 = fmul float %sub208, %mul162, !dbg !494
  %14 = call float @llvm.fmuladd.f32(float %mul185, float %.cast7, float %mul211), !dbg !495
  %add212 = fadd float %mul209, %14, !dbg !496
  %.cast8 = bitcast float %add212 to i32, !dbg !497
  %and217 = and i32 %.cast8, -4096, !dbg !498
  %.cast9 = bitcast i32 %and217 to float, !dbg !498
  %sub220 = fsub float %.cast9, %mul209, !dbg !499
  %sub221 = fsub float %14, %sub220, !dbg !500
  %mul222 = fmul float %.cast9, 0x3FEEC70000000000, !dbg !501
  %mul224 = fmul float %sub221, 0x3FEEC709E0000000, !dbg !502
  %15 = call float @llvm.fmuladd.f32(float %.cast9, float 0x3ED3B87400000000, float %mul224), !dbg !503
  %arrayidx225 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_dp_l, i32 0, i32 %k.1, !dbg !504
  %16 = load float, float* %arrayidx225, align 4, !dbg !504
  %add226 = fadd float %15, %16, !dbg !505
  %conv = sitofp i32 %n.2 to float, !dbg !506
  %add227 = fadd float %mul222, %add226, !dbg !507
  %arrayidx228 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_dp_h, i32 0, i32 %k.1, !dbg !508
  %17 = load float, float* %arrayidx228, align 4, !dbg !508
  %add229 = fadd float %add227, %17, !dbg !509
  %add230 = fadd float %add229, %conv, !dbg !510
  %.cast10 = bitcast float %add230 to i32, !dbg !511
  %and235 = and i32 %.cast10, -4096, !dbg !512
  %.cast11 = bitcast i32 %and235 to float, !dbg !512
  %sub238 = fsub float %.cast11, %conv, !dbg !513
  %arrayidx239 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_dp_h, i32 0, i32 %k.1, !dbg !514
  %18 = load float, float* %arrayidx239, align 4, !dbg !514
  %sub240 = fsub float %sub238, %18, !dbg !515
  %sub241 = fsub float %sub240, %mul222, !dbg !516
  %sub242 = fsub float %add226, %sub241, !dbg !517
  br label %if.end243

if.end243:                                        ; preds = %if.end154, %if.end111
  %t2.0 = phi float [ %sub130, %if.end111 ], [ %sub242, %if.end154 ], !dbg !344
  %t1.0 = phi float [ %.cast22, %if.end111 ], [ %.cast11, %if.end154 ], !dbg !344
  %shr244 = lshr i32 %.cast, 31, !dbg !518
  %sub245 = add nsw i32 %shr244, -1, !dbg !519
  %sub246 = add nsw i32 %yisint.3, -1, !dbg !520
  %or247 = or i32 %sub245, %sub246, !dbg !521
  %cmp248 = icmp eq i32 %or247, 0, !dbg !522
  br i1 %cmp248, label %if.then250, label %if.end251, !dbg !523

if.then250:                                       ; preds = %if.end243
  br label %if.end251, !dbg !524

if.end251:                                        ; preds = %if.then250, %if.end243
  %s.0 = phi float [ -1.000000e+00, %if.then250 ], [ 1.000000e+00, %if.end243 ], !dbg !344
  %.cast12 = bitcast float %y to i32, !dbg !525
  %and256 = and i32 %.cast12, -4096, !dbg !526
  %.cast13 = bitcast i32 %and256 to float, !dbg !526
  %sub259 = fsub float %y, %.cast13, !dbg !527
  %mul261 = fmul float %t2.0, %y, !dbg !528
  %19 = call float @llvm.fmuladd.f32(float %sub259, float %t1.0, float %mul261), !dbg !529
  %mul262 = fmul float %t1.0, %.cast13, !dbg !530
  %add263 = fadd float %19, %mul262, !dbg !531
  %.cast14 = bitcast float %add263 to i32, !dbg !532
  %cmp267 = icmp sgt i32 %.cast14, 1124073472, !dbg !533
  br i1 %cmp267, label %if.then269, label %if.else272, !dbg !534

if.then269:                                       ; preds = %if.end251
  %mul270 = fmul float %s.0, 0x46293E5940000000, !dbg !535
  %mul271 = fmul float %mul270, 0x46293E5940000000, !dbg !536
  br label %return, !dbg !537

if.else272:                                       ; preds = %if.end251
  %cmp273 = icmp eq i32 %.cast14, 1124073472, !dbg !538
  br i1 %cmp273, label %if.then275, label %if.else284, !dbg !539

if.then275:                                       ; preds = %if.else272
  %add276 = fadd float %19, 0x3E67154780000000, !dbg !540
  %sub277 = fsub float %add263, %mul262, !dbg !541
  %cmp278 = fcmp ogt float %add276, %sub277, !dbg !542
  br i1 %cmp278, label %if.then280, label %if.end283, !dbg !543

if.then280:                                       ; preds = %if.then275
  %mul281 = fmul float %s.0, 0x46293E5940000000, !dbg !544
  %mul282 = fmul float %mul281, 0x46293E5940000000, !dbg !545
  br label %return, !dbg !546

if.end283:                                        ; preds = %if.then275
  br label %if.end304, !dbg !547

if.else284:                                       ; preds = %if.else272
  %and285 = and i32 %.cast14, 2147483647, !dbg !548
  %cmp286 = icmp ugt i32 %and285, 1125515264, !dbg !549
  br i1 %cmp286, label %if.then288, label %if.else291, !dbg !550

if.then288:                                       ; preds = %if.else284
  %mul289 = fmul float %s.0, 0x39B4484C00000000, !dbg !551
  %mul290 = fmul float %mul289, 0x39B4484C00000000, !dbg !552
  br label %return, !dbg !553

if.else291:                                       ; preds = %if.else284
  %cmp292 = icmp eq i32 %.cast14, -1021968384, !dbg !554
  br i1 %cmp292, label %if.then294, label %if.end302, !dbg !555

if.then294:                                       ; preds = %if.else291
  %sub295 = fsub float %add263, %mul262, !dbg !556
  %cmp296 = fcmp ugt float %19, %sub295, !dbg !557
  br i1 %cmp296, label %if.end301, label %if.then298, !dbg !558

if.then298:                                       ; preds = %if.then294
  %mul299 = fmul float %s.0, 0x39B4484C00000000, !dbg !559
  %mul300 = fmul float %mul299, 0x39B4484C00000000, !dbg !560
  br label %return, !dbg !561

if.end301:                                        ; preds = %if.then294
  br label %if.end302, !dbg !562

if.end302:                                        ; preds = %if.end301, %if.else291
  br label %if.end303

if.end303:                                        ; preds = %if.end302
  br label %if.end304

if.end304:                                        ; preds = %if.end303, %if.end283
  br label %if.end305

if.end305:                                        ; preds = %if.end304
  %and306 = and i32 %.cast14, 2147483647, !dbg !563
  %cmp309 = icmp ugt i32 %and306, 1056964608, !dbg !564
  br i1 %cmp309, label %if.then311, label %if.end334, !dbg !565

if.then311:                                       ; preds = %if.end305
  %20 = lshr i32 %and306, 23, !dbg !566
  %add312 = add nsw i32 %20, -126, !dbg !567
  %shr313 = lshr i32 8388608, %add312, !dbg !568
  %add314 = add nsw i32 %shr313, %.cast14, !dbg !569
  %and315 = lshr i32 %add314, 23, !dbg !570
  %21 = and i32 %and315, 255, !dbg !570
  %sub317 = add nsw i32 %21, -127, !dbg !571
  %neg320 = ashr i32 -8388608, %sub317, !dbg !572
  %and321 = and i32 %add314, %neg320, !dbg !572
  %.cast19 = bitcast i32 %and321 to float, !dbg !572
  %and324 = and i32 %add314, 8388607, !dbg !573
  %or325 = or i32 %and324, 8388608, !dbg !574
  %sub326 = sub nsw i32 150, %21, !dbg !575
  %shr327 = lshr i32 %or325, %sub326, !dbg !576
  %cmp328 = icmp slt i32 %.cast14, 0, !dbg !577
  br i1 %cmp328, label %if.then330, label %if.end332, !dbg !578

if.then330:                                       ; preds = %if.then311
  %sub331 = sub nsw i32 0, %shr327, !dbg !579
  br label %if.end332, !dbg !580

if.end332:                                        ; preds = %if.then330, %if.then311
  %n.3 = phi i32 [ %sub331, %if.then330 ], [ %shr327, %if.then311 ], !dbg !344
  %sub333 = fsub float %mul262, %.cast19, !dbg !581
  br label %if.end334, !dbg !582

if.end334:                                        ; preds = %if.end332, %if.end305
  %p_h.0 = phi float [ %sub333, %if.end332 ], [ %mul262, %if.end305 ], !dbg !344
  %n.4 = phi i32 [ %n.3, %if.end332 ], [ 0, %if.end305 ], !dbg !344
  %add335 = fadd float %19, %p_h.0, !dbg !583
  %.cast15 = bitcast float %add335 to i32, !dbg !584
  %and340 = and i32 %.cast15, -4096, !dbg !585
  %.cast16 = bitcast i32 %and340 to float, !dbg !585
  %mul343 = fmul float %.cast16, 0x3FE62E4000000000, !dbg !586
  %sub344 = fsub float %.cast16, %p_h.0, !dbg !587
  %sub345 = fsub float %19, %sub344, !dbg !588
  %mul347 = fmul float %.cast16, 0x3EB7F7D180000000, !dbg !589
  %22 = call float @llvm.fmuladd.f32(float %sub345, float 0x3FE62E4300000000, float %mul347), !dbg !590
  %add348 = fadd float %mul343, %22, !dbg !591
  %sub349 = fsub float %add348, %mul343, !dbg !592
  %sub350 = fsub float %22, %sub349, !dbg !593
  %mul351 = fmul float %add348, %add348, !dbg !594
  %23 = call float @llvm.fmuladd.f32(float %mul351, float 0x3E66376980000000, float 0xBEBBBD41C0000000), !dbg !595
  %24 = call float @llvm.fmuladd.f32(float %mul351, float %23, float 0x3F11566AA0000000), !dbg !596
  %25 = call float @llvm.fmuladd.f32(float %mul351, float %24, float 0xBF66C16C20000000), !dbg !597
  %26 = call float @llvm.fmuladd.f32(float %mul351, float %25, float 0x3FC5555560000000), !dbg !598
  %neg357 = fneg float %mul351, !dbg !599
  %27 = call float @llvm.fmuladd.f32(float %neg357, float %26, float %add348), !dbg !599
  %mul358 = fmul float %add348, %27, !dbg !600
  %sub359 = fadd float %27, -2.000000e+00, !dbg !601
  %div360 = fdiv float %mul358, %sub359, !dbg !602
  %28 = call float @llvm.fmuladd.f32(float %add348, float %sub350, float %sub350), !dbg !603
  %sub362 = fsub float %div360, %28, !dbg !604
  %29 = fsub float %add348, %sub362, !dbg !605
  %sub364 = fadd float %29, 1.000000e+00, !dbg !605
  %.cast17 = bitcast float %sub364 to i32, !dbg !606
  %shl368 = shl i32 %n.4, 23, !dbg !607
  %add369 = add nsw i32 %shl368, %.cast17, !dbg !608
  %cmp371 = icmp slt i32 %add369, 8388608, !dbg !609
  br i1 %cmp371, label %if.then373, label %if.else375, !dbg !610

if.then373:                                       ; preds = %if.end334
  %call374 = call arm_aapcs_vfpcc float @basicmath___scalbnf(float noundef %sub364, i32 noundef %n.4) #4, !dbg !611
  br label %if.end379, !dbg !612

if.else375:                                       ; preds = %if.end334
  %.cast18 = bitcast i32 %add369 to float, !dbg !613
  br label %if.end379

if.end379:                                        ; preds = %if.else375, %if.then373
  %z.4 = phi float [ %call374, %if.then373 ], [ %.cast18, %if.else375 ], !dbg !344
  %mul380 = fmul float %s.0, %z.4, !dbg !614
  br label %return, !dbg !615

return:                                           ; preds = %if.end379, %if.then298, %if.then288, %if.then280, %if.then269, %if.then108, %if.then103, %if.then95, %if.end89, %if.then60, %if.then55, %if.else52, %if.then51, %cond.end45, %cond.end, %if.then35, %if.then13, %if.then9, %if.then6, %if.then
  %retval.0 = phi float [ 1.000000e+00, %if.then ], [ 1.000000e+00, %if.then6 ], [ 1.000000e+00, %if.then9 ], [ %add, %if.then13 ], [ %sub36, %if.then35 ], [ %cond, %cond.end ], [ %cond46, %cond.end45 ], [ %div, %if.then51 ], [ %x, %if.else52 ], [ %mul, %if.then55 ], [ %call61, %if.then60 ], [ %z.3, %if.end89 ], [ %div98, %if.then95 ], [ %cond105, %if.then103 ], [ %cond110, %if.then108 ], [ %mul271, %if.then269 ], [ %mul282, %if.then280 ], [ %mul380, %if.end379 ], [ %mul290, %if.then288 ], [ %mul300, %if.then298 ], !dbg !344
  ret float %retval.0, !dbg !616
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @basicmath___isinff(float noundef %x) #0 !dbg !617 {
entry:
  %.cast = bitcast float %x to i32, !dbg !618
  %and = and i32 %.cast, 2147483647, !dbg !619
  %shr1 = ashr i32 %.cast, 30, !dbg !620
  %isneg.not = icmp eq i32 %and, 2139095040, !dbg !621
  %and2 = select i1 %isneg.not, i32 %shr1, i32 0, !dbg !621
  ret i32 %and2, !dbg !622
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___fabsf(float noundef %x) #0 !dbg !623 {
entry:
  %.cast = bitcast float %x to i32, !dbg !624
  %and = and i32 %.cast, 2147483647, !dbg !625
  %.cast1 = bitcast i32 %and to float, !dbg !625
  ret float %.cast1, !dbg !626
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___scalbnf(float noundef %x, i32 noundef %n) #0 !dbg !627 {
entry:
  %.cast = bitcast float %x to i32, !dbg !628
  %and = lshr i32 %.cast, 23, !dbg !629
  %0 = and i32 %and, 255, !dbg !629
  %cmp = icmp eq i32 %0, 0, !dbg !630
  br i1 %cmp, label %if.then, label %if.end9, !dbg !631

if.then:                                          ; preds = %entry
  %and1 = and i32 %.cast, 2147483647, !dbg !632
  %cmp2 = icmp eq i32 %and1, 0, !dbg !633
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !634

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !635

if.end:                                           ; preds = %if.then
  %mul = fmul float %x, 0x4180000000000000, !dbg !636
  %.cast3 = bitcast float %mul to i32, !dbg !637
  %and7 = lshr i32 %.cast3, 23, !dbg !638
  %1 = and i32 %and7, 255, !dbg !638
  %sub = add nsw i32 %1, -25, !dbg !639
  br label %if.end9, !dbg !640

if.end9:                                          ; preds = %if.end, %entry
  %k.0 = phi i32 [ %sub, %if.end ], [ %0, %entry ], !dbg !641
  %ix.0 = phi i32 [ %.cast3, %if.end ], [ %.cast, %entry ], !dbg !641
  %x.addr.0 = phi float [ %mul, %if.end ], [ %x, %entry ]
  %cmp10 = icmp eq i32 %k.0, 255, !dbg !642
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !643

if.then11:                                        ; preds = %if.end9
  %add = fadd float %x.addr.0, %x.addr.0, !dbg !644
  br label %return, !dbg !645

if.end12:                                         ; preds = %if.end9
  %add13 = add nsw i32 %k.0, %n, !dbg !646
  %cmp14 = icmp sgt i32 %n, 50000, !dbg !647
  br i1 %cmp14, label %if.then16, label %lor.lhs.false, !dbg !648

lor.lhs.false:                                    ; preds = %if.end12
  %cmp15 = icmp sgt i32 %add13, 254, !dbg !649
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !650

if.then16:                                        ; preds = %lor.lhs.false, %if.end12
  %call = call arm_aapcs_vfpcc float @basicmath___copysignf(float noundef 0x46293E5940000000, float noundef %x.addr.0) #4, !dbg !651
  %mul17 = fmul float %call, 0x46293E5940000000, !dbg !652
  br label %return, !dbg !653

if.end18:                                         ; preds = %lor.lhs.false
  %cmp19 = icmp slt i32 %n, -50000, !dbg !654
  br i1 %cmp19, label %if.then20, label %if.end23, !dbg !655

if.then20:                                        ; preds = %if.end18
  %call21 = call arm_aapcs_vfpcc float @basicmath___copysignf(float noundef 0x39B4484C00000000, float noundef %x.addr.0) #4, !dbg !656
  %mul22 = fmul float %call21, 0x39B4484C00000000, !dbg !657
  br label %return, !dbg !658

if.end23:                                         ; preds = %if.end18
  %cmp24 = icmp sgt i32 %add13, 0, !dbg !659
  br i1 %cmp24, label %if.then25, label %if.end29, !dbg !660

if.then25:                                        ; preds = %if.end23
  %and26 = and i32 %ix.0, -2139095041, !dbg !661
  %shl = shl i32 %add13, 23, !dbg !661
  %or = or i32 %and26, %shl, !dbg !661
  %.cast2 = bitcast i32 %or to float, !dbg !661
  br label %return, !dbg !662

if.end29:                                         ; preds = %if.end23
  %cmp30 = icmp slt i32 %add13, -24, !dbg !663
  br i1 %cmp30, label %if.then31, label %if.end34, !dbg !664

if.then31:                                        ; preds = %if.end29
  %call32 = call arm_aapcs_vfpcc float @basicmath___copysignf(float noundef 0x39B4484C00000000, float noundef %x.addr.0) #4, !dbg !665
  %mul33 = fmul float %call32, 0x39B4484C00000000, !dbg !666
  br label %return, !dbg !667

if.end34:                                         ; preds = %if.end29
  %and37 = and i32 %ix.0, -2139095041, !dbg !668
  %add35 = shl i32 %add13, 23, !dbg !668
  %shl38 = add i32 %add35, 209715200, !dbg !668
  %or39 = or i32 %and37, %shl38, !dbg !668
  %.cast1 = bitcast i32 %or39 to float, !dbg !668
  %mul42 = fmul float %.cast1, 0x3E60000000000000, !dbg !669
  br label %return, !dbg !670

return:                                           ; preds = %if.end34, %if.then31, %if.then25, %if.then20, %if.then16, %if.then11, %if.then3
  %retval.0 = phi float [ %x, %if.then3 ], [ %add, %if.then11 ], [ %mul17, %if.then16 ], [ %mul22, %if.then20 ], [ %.cast2, %if.then25 ], [ %mul33, %if.then31 ], [ %mul42, %if.end34 ], !dbg !641
  ret float %retval.0, !dbg !671
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___copysignf(float noundef %x, float noundef %y) #0 !dbg !672 {
entry:
  %.cast = bitcast float %x to i32, !dbg !673
  %.cast1 = bitcast float %y to i32, !dbg !674
  %and = and i32 %.cast, 2147483647, !dbg !675
  %and4 = and i32 %.cast1, -2147483648, !dbg !675
  %or = or i32 %and, %and4, !dbg !675
  %.cast2 = bitcast i32 %or to float, !dbg !675
  ret float %.cast2, !dbg !676
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @basicmath___ieee754_rem_pio2f(float noundef %x, float* noundef %y) #0 !dbg !677 {
entry:
  %.cast = bitcast float %x to i32, !dbg !678
  %and = and i32 %.cast, 2147483647, !dbg !679
  %cmp = icmp ult i32 %and, 1061752793, !dbg !680
  br i1 %cmp, label %if.then, label %if.end, !dbg !681

if.then:                                          ; preds = %entry
  store float %x, float* %y, align 4, !dbg !682
  %arrayidx1 = getelementptr inbounds float, float* %y, i32 1, !dbg !683
  store float 0.000000e+00, float* %arrayidx1, align 4, !dbg !684
  br label %return, !dbg !685

if.end:                                           ; preds = %entry
  %cmp2 = icmp ult i32 %and, 1075235812, !dbg !686
  br i1 %cmp2, label %if.then3, label %if.end42, !dbg !687

if.then3:                                         ; preds = %if.end
  %cmp4 = icmp sgt i32 %.cast, 0, !dbg !688
  br i1 %cmp4, label %if.then5, label %if.else23, !dbg !689

if.then5:                                         ; preds = %if.then3
  %sub = fadd float %x, 0xBFF921F000000000, !dbg !690
  %and6 = and i32 %.cast, 2147483632, !dbg !691
  %cmp7.not = icmp eq i32 %and6, 1070141392, !dbg !692
  br i1 %cmp7.not, label %if.else, label %if.then8, !dbg !693

if.then8:                                         ; preds = %if.then5
  %sub9 = fadd float %sub, 0xBEE6A88860000000, !dbg !694
  store float %sub9, float* %y, align 4, !dbg !695
  %sub12 = fsub float %sub, %sub9, !dbg !696
  %sub13 = fadd float %sub12, 0xBEE6A88860000000, !dbg !697
  %arrayidx14 = getelementptr inbounds float, float* %y, i32 1, !dbg !698
  store float %sub13, float* %arrayidx14, align 4, !dbg !699
  br label %if.end22, !dbg !700

if.else:                                          ; preds = %if.then5
  %sub15 = fadd float %sub, 0xBEE6A88000000000, !dbg !701
  %sub16 = fadd float %sub15, 0xBDD0B46100000000, !dbg !702
  store float %sub16, float* %y, align 4, !dbg !703
  %sub19 = fsub float %sub15, %sub16, !dbg !704
  %sub20 = fadd float %sub19, 0xBDD0B46100000000, !dbg !705
  %arrayidx21 = getelementptr inbounds float, float* %y, i32 1, !dbg !706
  store float %sub20, float* %arrayidx21, align 4, !dbg !707
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then8
  br label %return, !dbg !708

if.else23:                                        ; preds = %if.then3
  %add = fadd float %x, 0x3FF921F000000000, !dbg !709
  %and24 = and i32 %.cast, 2147483632, !dbg !710
  %cmp25.not = icmp eq i32 %and24, 1070141392, !dbg !711
  br i1 %cmp25.not, label %if.else33, label %if.then26, !dbg !712

if.then26:                                        ; preds = %if.else23
  %add27 = fadd float %add, 0x3EE6A88860000000, !dbg !713
  store float %add27, float* %y, align 4, !dbg !714
  %sub30 = fsub float %add, %add27, !dbg !715
  %add31 = fadd float %sub30, 0x3EE6A88860000000, !dbg !716
  %arrayidx32 = getelementptr inbounds float, float* %y, i32 1, !dbg !717
  store float %add31, float* %arrayidx32, align 4, !dbg !718
  br label %if.end41, !dbg !719

if.else33:                                        ; preds = %if.else23
  %add34 = fadd float %add, 0x3EE6A88000000000, !dbg !720
  %add35 = fadd float %add34, 0x3DD0B46100000000, !dbg !721
  store float %add35, float* %y, align 4, !dbg !722
  %sub38 = fsub float %add34, %add35, !dbg !723
  %add39 = fadd float %sub38, 0x3DD0B46100000000, !dbg !724
  %arrayidx40 = getelementptr inbounds float, float* %y, i32 1, !dbg !725
  store float %add39, float* %arrayidx40, align 4, !dbg !726
  br label %if.end41

if.end41:                                         ; preds = %if.else33, %if.then26
  br label %return, !dbg !727

if.end42:                                         ; preds = %if.end
  %cmp43 = icmp ult i32 %and, 1128861569, !dbg !728
  br i1 %cmp43, label %if.then44, label %if.end112, !dbg !729

if.then44:                                        ; preds = %if.end42
  %call = call arm_aapcs_vfpcc float @basicmath___fabsf(float noundef %x) #4, !dbg !730
  %0 = call float @llvm.fmuladd.f32(float %call, float 0x3FE45F3080000000, float 5.000000e-01), !dbg !731
  %conv = fptosi float %0 to i32, !dbg !732
  %conv45 = sitofp i32 %conv to float, !dbg !733
  %neg = fneg float %conv45, !dbg !734
  %1 = call float @llvm.fmuladd.f32(float %neg, float 0x3FF921F000000000, float %call), !dbg !734
  %mul = fmul float %conv45, 0x3EE6A88860000000, !dbg !735
  %cmp46 = icmp slt i32 %conv, 32, !dbg !736
  br i1 %cmp46, label %land.lhs.true, label %if.else56, !dbg !737

land.lhs.true:                                    ; preds = %if.then44
  %and48 = and i32 %.cast, 2147483392, !dbg !738
  %sub49 = add nsw i32 %conv, -1, !dbg !739
  %arrayidx50 = getelementptr inbounds [32 x i32], [32 x i32]* @basicmath_npio2_hw, i32 0, i32 %sub49, !dbg !740
  %2 = load i32, i32* %arrayidx50, align 4, !dbg !740
  %cmp51.not = icmp eq i32 %and48, %2, !dbg !741
  br i1 %cmp51.not, label %if.else56, label %if.then53, !dbg !742

if.then53:                                        ; preds = %land.lhs.true
  %sub54 = fsub float %1, %mul, !dbg !743
  store float %sub54, float* %y, align 4, !dbg !744
  br label %if.end97, !dbg !745

if.else56:                                        ; preds = %land.lhs.true, %if.then44
  %3 = lshr i32 %and, 23, !dbg !746
  %sub57 = fsub float %1, %mul, !dbg !747
  store float %sub57, float* %y, align 4, !dbg !748
  %.cast1 = bitcast float %sub57 to i32, !dbg !749
  %shr63 = lshr i32 %.cast1, 23, !dbg !750
  %and64 = and i32 %shr63, 255, !dbg !751
  %sub65 = sub nsw i32 %3, %and64, !dbg !752
  %cmp66 = icmp sgt i32 %sub65, 8, !dbg !753
  br i1 %cmp66, label %if.then68, label %if.end96, !dbg !754

if.then68:                                        ; preds = %if.else56
  %mul69 = fmul float %conv45, 0x3EE6A88000000000, !dbg !755
  %sub70 = fsub float %1, %mul69, !dbg !756
  %sub72 = fsub float %1, %sub70, !dbg !757
  %sub73 = fsub float %sub72, %mul69, !dbg !758
  %neg74 = fneg float %sub73, !dbg !759
  %4 = call float @llvm.fmuladd.f32(float %conv45, float 0x3DD0B46100000000, float %neg74), !dbg !759
  %sub75 = fsub float %sub70, %4, !dbg !760
  %.cast2 = bitcast float %sub75 to i32, !dbg !761
  %shr81 = lshr i32 %.cast2, 23, !dbg !762
  %and82 = and i32 %shr81, 255, !dbg !763
  %sub83 = sub nsw i32 %3, %and82, !dbg !764
  %cmp84 = icmp sgt i32 %sub83, 25, !dbg !765
  br i1 %cmp84, label %if.then86, label %if.end95, !dbg !766

if.then86:                                        ; preds = %if.then68
  %mul87 = fmul float %conv45, 0x3DD0B46000000000, !dbg !767
  %sub88 = fsub float %sub70, %mul87, !dbg !768
  %sub90 = fsub float %sub70, %sub88, !dbg !769
  %sub91 = fsub float %sub90, %mul87, !dbg !770
  %neg92 = fneg float %sub91, !dbg !771
  %5 = call float @llvm.fmuladd.f32(float %conv45, float 0x3C91A62640000000, float %neg92), !dbg !771
  %sub93 = fsub float %sub88, %5, !dbg !772
  br label %if.end95, !dbg !773

if.end95:                                         ; preds = %if.then86, %if.then68
  %storemerge = phi float [ %sub93, %if.then86 ], [ %sub75, %if.then68 ], !dbg !774
  %r.0 = phi float [ %sub88, %if.then86 ], [ %sub70, %if.then68 ], !dbg !774
  %w.0 = phi float [ %5, %if.then86 ], [ %4, %if.then68 ], !dbg !774
  store float %storemerge, float* %y, align 4, !dbg !774
  br label %if.end96, !dbg !775

if.end96:                                         ; preds = %if.end95, %if.else56
  %r.1 = phi float [ %r.0, %if.end95 ], [ %1, %if.else56 ], !dbg !774
  %w.1 = phi float [ %w.0, %if.end95 ], [ %mul, %if.else56 ], !dbg !774
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then53
  %r.2 = phi float [ %1, %if.then53 ], [ %r.1, %if.end96 ], !dbg !774
  %w.2 = phi float [ %mul, %if.then53 ], [ %w.1, %if.end96 ], !dbg !774
  %6 = load float, float* %y, align 4, !dbg !776
  %sub99 = fsub float %r.2, %6, !dbg !777
  %sub100 = fsub float %sub99, %w.2, !dbg !778
  %arrayidx101 = getelementptr inbounds float, float* %y, i32 1, !dbg !779
  store float %sub100, float* %arrayidx101, align 4, !dbg !780
  %cmp102 = icmp slt i32 %.cast, 0, !dbg !781
  br i1 %cmp102, label %if.then104, label %if.else111, !dbg !782

if.then104:                                       ; preds = %if.end97
  %7 = load float, float* %y, align 4, !dbg !783
  %fneg = fneg float %7, !dbg !784
  store float %fneg, float* %y, align 4, !dbg !785
  %arrayidx107 = getelementptr inbounds float, float* %y, i32 1, !dbg !786
  %8 = load float, float* %arrayidx107, align 4, !dbg !786
  %fneg108 = fneg float %8, !dbg !787
  %arrayidx109 = getelementptr inbounds float, float* %y, i32 1, !dbg !788
  store float %fneg108, float* %arrayidx109, align 4, !dbg !789
  %sub110 = sub nsw i32 0, %conv, !dbg !790
  br label %return, !dbg !791

if.else111:                                       ; preds = %if.end97
  br label %return, !dbg !792

if.end112:                                        ; preds = %if.end42
  %cmp113 = icmp ugt i32 %and, 2139095039, !dbg !793
  br i1 %cmp113, label %if.then115, label %if.end119, !dbg !794

if.then115:                                       ; preds = %if.end112
  %sub116 = fsub float %x, %x, !dbg !795
  %arrayidx117 = getelementptr inbounds float, float* %y, i32 1, !dbg !796
  store float %sub116, float* %arrayidx117, align 4, !dbg !797
  store float %sub116, float* %y, align 4, !dbg !798
  br label %return, !dbg !799

if.end119:                                        ; preds = %if.end112
  %sub120 = fsub float %x, %x, !dbg !800
  %arrayidx121 = getelementptr inbounds float, float* %y, i32 1, !dbg !801
  store float %sub120, float* %arrayidx121, align 4, !dbg !802
  store float %sub120, float* %y, align 4, !dbg !803
  br label %return, !dbg !804

return:                                           ; preds = %if.end119, %if.then115, %if.else111, %if.then104, %if.end41, %if.end22, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end22 ], [ -1, %if.end41 ], [ %sub110, %if.then104 ], [ %conv, %if.else111 ], [ 0, %if.then115 ], [ 0, %if.end119 ], !dbg !774
  ret i32 %retval.0, !dbg !805
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___kernel_cosf(float noundef %x, float noundef %y) #0 !dbg !806 {
entry:
  %.cast = bitcast float %x to i32, !dbg !807
  %and = and i32 %.cast, 2147483647, !dbg !808
  %cmp = icmp ult i32 %and, 838860800, !dbg !809
  br i1 %cmp, label %if.then, label %if.end4, !dbg !810

if.then:                                          ; preds = %entry
  %conv = fptosi float %x to i32, !dbg !811
  %cmp1 = icmp eq i32 %conv, 0, !dbg !812
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !813

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !814

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !815

if.end4:                                          ; preds = %if.end, %entry
  %mul = fmul float %x, %x, !dbg !816
  %0 = call float @llvm.fmuladd.f32(float %mul, float 0xBDA8FAE9C0000000, float 0x3E21EE9EC0000000), !dbg !817
  %1 = call float @llvm.fmuladd.f32(float %mul, float %0, float 0xBE927E4F80000000), !dbg !818
  %2 = call float @llvm.fmuladd.f32(float %mul, float %1, float 0x3EFA01A020000000), !dbg !819
  %3 = call float @llvm.fmuladd.f32(float %mul, float %2, float 0xBF56C16C20000000), !dbg !820
  %4 = call float @llvm.fmuladd.f32(float %mul, float %3, float 0x3FA5555560000000), !dbg !821
  %mul10 = fmul float %mul, %4, !dbg !822
  %cmp11 = icmp ult i32 %and, 1050253722, !dbg !823
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !824

if.then13:                                        ; preds = %if.end4
  %5 = fneg float %x, !dbg !825
  %neg = fmul float %5, %y, !dbg !825
  %6 = call float @llvm.fmuladd.f32(float %mul, float %mul10, float %neg), !dbg !825
  %neg17 = fneg float %6, !dbg !826
  %7 = call float @llvm.fmuladd.f32(float %mul, float 5.000000e-01, float %neg17), !dbg !826
  %sub = fsub float 1.000000e+00, %7, !dbg !827
  br label %return, !dbg !828

if.else:                                          ; preds = %if.end4
  %cmp18 = icmp ugt i32 %and, 1061683200, !dbg !829
  br i1 %cmp18, label %if.then20, label %if.else21, !dbg !830

if.then20:                                        ; preds = %if.else
  br label %if.end25, !dbg !831

if.else21:                                        ; preds = %if.else
  %sub22 = add nsw i32 %and, -16777216, !dbg !832
  %.cast1 = bitcast i32 %sub22 to float, !dbg !832
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then20
  %qx.0 = phi float [ 2.812500e-01, %if.then20 ], [ %.cast1, %if.else21 ], !dbg !833
  %neg27 = fneg float %qx.0, !dbg !834
  %8 = call float @llvm.fmuladd.f32(float %mul, float 5.000000e-01, float %neg27), !dbg !834
  %sub28 = fsub float 1.000000e+00, %qx.0, !dbg !835
  %9 = fneg float %x, !dbg !836
  %neg31 = fmul float %9, %y, !dbg !836
  %10 = call float @llvm.fmuladd.f32(float %mul, float %mul10, float %neg31), !dbg !836
  %sub32 = fsub float %8, %10, !dbg !837
  %sub33 = fsub float %sub28, %sub32, !dbg !838
  br label %return, !dbg !839

return:                                           ; preds = %if.end25, %if.then13, %if.then3
  %retval.0 = phi float [ 1.000000e+00, %if.then3 ], [ %sub, %if.then13 ], [ %sub33, %if.end25 ], !dbg !833
  ret float %retval.0, !dbg !840
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___kernel_sinf(float noundef %x, float noundef %y, i32 noundef %iy) #0 !dbg !841 {
entry:
  %.cast = bitcast float %x to i32, !dbg !842
  %and = and i32 %.cast, 2113929216, !dbg !843
  %cmp = icmp ult i32 %and, 838860800, !dbg !844
  br i1 %cmp, label %if.then, label %if.end4, !dbg !845

if.then:                                          ; preds = %entry
  %conv = fptosi float %x to i32, !dbg !846
  %cmp1 = icmp eq i32 %conv, 0, !dbg !847
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !846

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !848

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !849

if.end4:                                          ; preds = %if.end, %entry
  %mul = fmul float %x, %x, !dbg !850
  %mul5 = fmul float %mul, %x, !dbg !851
  %0 = call float @llvm.fmuladd.f32(float %mul, float 0x3DE5D93A60000000, float 0xBE5AE5E680000000), !dbg !852
  %1 = call float @llvm.fmuladd.f32(float %mul, float %0, float 0x3EC71DE360000000), !dbg !853
  %2 = call float @llvm.fmuladd.f32(float %mul, float %1, float 0xBF2A01A020000000), !dbg !854
  %3 = call float @llvm.fmuladd.f32(float %mul, float %2, float 0x3F81111120000000), !dbg !855
  %cmp10 = icmp eq i32 %iy, 0, !dbg !856
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !857

if.then12:                                        ; preds = %if.end4
  %4 = call float @llvm.fmuladd.f32(float %mul, float %3, float 0xBFC5555560000000), !dbg !858
  %5 = call float @llvm.fmuladd.f32(float %mul5, float %4, float %x), !dbg !859
  br label %return, !dbg !860

if.else:                                          ; preds = %if.end4
  %6 = fneg float %mul5, !dbg !861
  %neg = fmul float %3, %6, !dbg !861
  %7 = call float @llvm.fmuladd.f32(float %y, float 5.000000e-01, float %neg), !dbg !861
  %neg18 = fneg float %y, !dbg !862
  %8 = call float @llvm.fmuladd.f32(float %mul, float %7, float %neg18), !dbg !862
  %neg20 = fneg float %mul5, !dbg !863
  %9 = call float @llvm.fmuladd.f32(float %neg20, float 0xBFC5555560000000, float %8), !dbg !863
  %sub = fsub float %x, %9, !dbg !864
  br label %return, !dbg !865

return:                                           ; preds = %if.else, %if.then12, %if.then3
  %retval.0 = phi float [ %x, %if.then3 ], [ %5, %if.then12 ], [ %sub, %if.else ], !dbg !866
  ret float %retval.0, !dbg !867
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___cosf(float noundef %x) #0 !dbg !868 {
entry:
  %sub = fsub float %x, %x, !dbg !869
  ret float %sub, !dbg !870
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #2 !dbg !871 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !872
  br i1 %cmp, label %if.then, label %if.end, !dbg !873

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !874
  unreachable, !dbg !874

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !875
  ret i64 %0, !dbg !876
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #3 !dbg !877 {
entry:
  unreachable, !dbg !878
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #2 !dbg !879 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !880
  br i1 %cmp, label %if.then, label %if.end, !dbg !881

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !882
  unreachable, !dbg !882

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !883
  ret i32 %0, !dbg !884
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !885 {
entry:
  %add = add i64 %a, %b, !dbg !886
  %cmp = icmp sgt i64 %b, -1, !dbg !887
  br i1 %cmp, label %if.then, label %if.else, !dbg !888

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !889
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !890

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !891
  unreachable, !dbg !891

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !892

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !893
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !894

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !895
  unreachable, !dbg !895

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !896
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !897 {
entry:
  %add = add i32 %a, %b, !dbg !898
  %cmp = icmp sgt i32 %b, -1, !dbg !899
  br i1 %cmp, label %if.then, label %if.else, !dbg !900

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !901
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !902

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !903
  unreachable, !dbg !903

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !904

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !905
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !906

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !907
  unreachable, !dbg !907

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !908
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #2 !dbg !909 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !910
  store i64 %a, i64* %all, align 8, !dbg !911
  %and = and i32 %b, 32, !dbg !912
  %tobool.not = icmp eq i32 %and, 0, !dbg !912
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !913

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !914
  store i32 0, i32* %low, align 8, !dbg !915
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !916
  %0 = load i32, i32* %low2, align 8, !dbg !916
  %sub = add nsw i32 %b, -32, !dbg !917
  %shl = shl i32 %0, %sub, !dbg !918
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !919
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !920
  store i32 %shl, i32* %high, align 4, !dbg !921
  br label %if.end18, !dbg !922

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !923
  br i1 %cmp, label %if.then4, label %if.end, !dbg !924

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !925

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !926
  %1 = load i32, i32* %low6, align 8, !dbg !926
  %shl7 = shl i32 %1, %b, !dbg !927
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !928
  store i32 %shl7, i32* %low9, align 8, !dbg !929
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !930
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !931
  %2 = load i32, i32* %high11, align 4, !dbg !931
  %shl12 = shl i32 %2, %b, !dbg !932
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !933
  %3 = load i32, i32* %low14, align 8, !dbg !933
  %sub15 = sub nsw i32 32, %b, !dbg !934
  %shr = lshr i32 %3, %sub15, !dbg !935
  %or = or i32 %shl12, %shr, !dbg !936
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !937
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !938
  store i32 %or, i32* %high17, align 4, !dbg !939
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !940
  %4 = load i64, i64* %all19, align 8, !dbg !940
  br label %return, !dbg !941

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !942
  ret i64 %retval.0, !dbg !943
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !944 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !945
  store i64 %a, i64* %all, align 8, !dbg !946
  %and = and i32 %b, 32, !dbg !947
  %tobool.not = icmp eq i32 %and, 0, !dbg !947
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !948

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !949
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !950
  %0 = load i32, i32* %high, align 4, !dbg !950
  %shr = ashr i32 %0, 31, !dbg !951
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !952
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !953
  store i32 %shr, i32* %high2, align 4, !dbg !954
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !955
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !956
  %1 = load i32, i32* %high4, align 4, !dbg !956
  %sub = add nsw i32 %b, -32, !dbg !957
  %shr5 = ashr i32 %1, %sub, !dbg !958
  %low = bitcast %union.dwords* %result to i32*, !dbg !959
  store i32 %shr5, i32* %low, align 8, !dbg !960
  br label %if.end21, !dbg !961

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !962
  br i1 %cmp, label %if.then7, label %if.end, !dbg !963

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !964

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !965
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !966
  %2 = load i32, i32* %high9, align 4, !dbg !966
  %shr10 = ashr i32 %2, %b, !dbg !967
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !968
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !969
  store i32 %shr10, i32* %high12, align 4, !dbg !970
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !971
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !972
  %3 = load i32, i32* %high14, align 4, !dbg !972
  %sub15 = sub nsw i32 32, %b, !dbg !973
  %shl = shl i32 %3, %sub15, !dbg !974
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !975
  %4 = load i32, i32* %low17, align 8, !dbg !975
  %shr18 = lshr i32 %4, %b, !dbg !976
  %or = or i32 %shl, %shr18, !dbg !977
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !978
  store i32 %or, i32* %low20, align 8, !dbg !979
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !980
  %5 = load i64, i64* %all22, align 8, !dbg !980
  br label %return, !dbg !981

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !982
  ret i64 %retval.0, !dbg !983
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #2 !dbg !984 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !985
  store i64 %a, i64* %all, align 8, !dbg !986
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !987
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !988
  %0 = load i32, i32* %high, align 4, !dbg !988
  %cmp = icmp eq i32 %0, 0, !dbg !989
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !990
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !991
  %1 = load i32, i32* %high2, align 4, !dbg !991
  %low = bitcast %union.dwords* %x to i32*, !dbg !992
  %2 = load i32, i32* %low, align 8, !dbg !992
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !993
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !994, !range !995
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !996
  %add = add nuw nsw i32 %4, %and5, !dbg !997
  ret i32 %add, !dbg !998
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #2 !dbg !999 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !1000
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !1001
  %sub = sub nuw nsw i32 16, %shl, !dbg !1002
  %shr = lshr i32 %a, %sub, !dbg !1003
  %and1 = and i32 %shr, 65280, !dbg !1004
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1005
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !1006
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !1007
  %shr6 = lshr i32 %shr, %sub5, !dbg !1008
  %add = or i32 %shl, %shl4, !dbg !1009
  %and7 = and i32 %shr6, 240, !dbg !1010
  %cmp8 = icmp eq i32 %and7, 0, !dbg !1011
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !1012
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !1013
  %shr12 = lshr i32 %shr6, %sub11, !dbg !1014
  %add13 = or i32 %add, %shl10, !dbg !1015
  %and14 = and i32 %shr12, 12, !dbg !1016
  %cmp15 = icmp eq i32 %and14, 0, !dbg !1017
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !1018
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !1019
  %shr19 = lshr i32 %shr12, %sub18, !dbg !1020
  %add20 = or i32 %add13, %shl17, !dbg !1021
  %sub21 = sub i32 2, %shr19, !dbg !1022
  %and22 = lshr i32 %shr19, 1, !dbg !1023
  %0 = or i32 %and22, -2, !dbg !1023
  %.neg = add nsw i32 %0, 1, !dbg !1023
  %and26 = and i32 %sub21, %.neg, !dbg !1024
  %add27 = add i32 %add20, %and26, !dbg !1025
  ret i32 %add27, !dbg !1026
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !1027 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1028
  store i64 %a, i64* %all, align 8, !dbg !1029
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1030
  store i64 %b, i64* %all1, align 8, !dbg !1031
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1032
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1033
  %0 = load i32, i32* %high, align 4, !dbg !1033
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1034
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1035
  %1 = load i32, i32* %high3, align 4, !dbg !1035
  %cmp = icmp slt i32 %0, %1, !dbg !1036
  br i1 %cmp, label %if.then, label %if.end, !dbg !1037

if.then:                                          ; preds = %entry
  br label %return, !dbg !1038

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1039
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1040
  %2 = load i32, i32* %high5, align 4, !dbg !1040
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1041
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1042
  %3 = load i32, i32* %high7, align 4, !dbg !1042
  %cmp8 = icmp sgt i32 %2, %3, !dbg !1043
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1044

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1045

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1046
  %4 = load i32, i32* %low, align 8, !dbg !1046
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1047
  %5 = load i32, i32* %low13, align 8, !dbg !1047
  %cmp14 = icmp ult i32 %4, %5, !dbg !1048
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1049

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1050

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1051
  %6 = load i32, i32* %low18, align 8, !dbg !1051
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1052
  %7 = load i32, i32* %low20, align 8, !dbg !1052
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1053
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1054

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1055

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1056

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1057
  ret i32 %retval.0, !dbg !1058
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !1059 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1060
  %sub = add nsw i32 %call, -1, !dbg !1061
  ret i32 %sub, !dbg !1062
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #2 !dbg !1063 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1064
  store i64 %a, i64* %all, align 8, !dbg !1065
  %low = bitcast %union.dwords* %x to i32*, !dbg !1066
  %0 = load i32, i32* %low, align 8, !dbg !1066
  %cmp = icmp eq i32 %0, 0, !dbg !1067
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1068
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1069
  %1 = load i32, i32* %high, align 4, !dbg !1069
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !1070
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !1071, !range !995
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !1072
  %add = add nuw nsw i32 %3, %and5, !dbg !1073
  ret i32 %add, !dbg !1074
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #2 !dbg !1075 {
entry:
  %and = and i32 %a, 65535, !dbg !1076
  %cmp = icmp eq i32 %and, 0, !dbg !1077
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !1078
  %shr = lshr i32 %a, %shl, !dbg !1079
  %and1 = and i32 %shr, 255, !dbg !1080
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1081
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !1082
  %shr5 = lshr i32 %shr, %shl4, !dbg !1083
  %add = or i32 %shl, %shl4, !dbg !1084
  %and6 = and i32 %shr5, 15, !dbg !1085
  %cmp7 = icmp eq i32 %and6, 0, !dbg !1086
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !1087
  %shr10 = lshr i32 %shr5, %shl9, !dbg !1088
  %add11 = or i32 %add, %shl9, !dbg !1089
  %and12 = and i32 %shr10, 3, !dbg !1090
  %cmp13 = icmp eq i32 %and12, 0, !dbg !1091
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !1092
  %shr16 = lshr i32 %shr10, %shl15, !dbg !1093
  %add18 = or i32 %add11, %shl15, !dbg !1094
  %and17 = lshr i32 %shr16, 1, !dbg !1095
  %shr19 = and i32 %and17, 1, !dbg !1095
  %sub = sub nuw nsw i32 2, %shr19, !dbg !1096
  %0 = or i32 %shr16, -2, !dbg !1097
  %.neg = add nsw i32 %0, 1, !dbg !1097
  %and24 = and i32 %sub, %.neg, !dbg !1098
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !1099
  ret i32 %add25, !dbg !1100
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1101 {
entry:
  %shr = ashr i64 %a, 63, !dbg !1102
  %shr1 = ashr i64 %b, 63, !dbg !1103
  %xor = xor i64 %shr, %a, !dbg !1104
  %sub = sub nsw i64 %xor, %shr, !dbg !1105
  %xor2 = xor i64 %shr1, %b, !dbg !1106
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !1107
  %xor4 = xor i64 %shr, %shr1, !dbg !1108
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !1109
  %xor5 = xor i64 %call, %xor4, !dbg !1110
  %sub6 = sub i64 %xor5, %xor4, !dbg !1111
  ret i64 %sub6, !dbg !1112
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !1113 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1114
  store i64 %a, i64* %all, align 8, !dbg !1115
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1116
  store i64 %b, i64* %all1, align 8, !dbg !1117
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !1118
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1119
  %0 = load i32, i32* %high, align 4, !dbg !1119
  %cmp = icmp eq i32 %0, 0, !dbg !1120
  br i1 %cmp, label %if.then, label %if.end23, !dbg !1121

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1122
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1123
  %1 = load i32, i32* %high3, align 4, !dbg !1123
  %cmp4 = icmp eq i32 %1, 0, !dbg !1124
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !1125

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !1126
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !1126

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !1127
  %2 = load i32, i32* %low, align 8, !dbg !1127
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !1128
  %3 = load i32, i32* %low9, align 8, !dbg !1128
  %rem10 = urem i32 %2, %3, !dbg !1129
  %conv = zext i32 %rem10 to i64, !dbg !1130
  store i64 %conv, i64* %rem, align 8, !dbg !1131
  br label %if.end, !dbg !1132

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !1133
  %4 = load i32, i32* %low12, align 8, !dbg !1133
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !1134
  %5 = load i32, i32* %low14, align 8, !dbg !1134
  %div = udiv i32 %4, %5, !dbg !1135
  %conv15 = zext i32 %div to i64, !dbg !1136
  br label %return, !dbg !1137

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !1138
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !1138

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !1139
  %6 = load i32, i32* %low20, align 8, !dbg !1139
  %conv21 = zext i32 %6 to i64, !dbg !1140
  store i64 %conv21, i64* %rem, align 8, !dbg !1141
  br label %if.end22, !dbg !1142

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !1143

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !1144
  %7 = load i32, i32* %low25, align 8, !dbg !1144
  %cmp26 = icmp eq i32 %7, 0, !dbg !1145
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !1146

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1147
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !1148
  %8 = load i32, i32* %high30, align 4, !dbg !1148
  %cmp31 = icmp eq i32 %8, 0, !dbg !1149
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !1150

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !1151
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !1151

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1152
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !1153
  %9 = load i32, i32* %high37, align 4, !dbg !1153
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !1154
  %10 = load i32, i32* %low39, align 8, !dbg !1154
  %rem40 = urem i32 %9, %10, !dbg !1155
  %conv41 = zext i32 %rem40 to i64, !dbg !1156
  store i64 %conv41, i64* %rem, align 8, !dbg !1157
  br label %if.end42, !dbg !1158

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1159
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !1160
  %11 = load i32, i32* %high44, align 4, !dbg !1160
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !1161
  %12 = load i32, i32* %low46, align 8, !dbg !1161
  %div47 = udiv i32 %11, %12, !dbg !1162
  %conv48 = zext i32 %div47 to i64, !dbg !1163
  br label %return, !dbg !1164

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !1165
  %13 = load i32, i32* %low51, align 8, !dbg !1165
  %cmp52 = icmp eq i32 %13, 0, !dbg !1166
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !1167

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !1168
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !1168

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1169
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !1170
  %14 = load i32, i32* %high58, align 4, !dbg !1170
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1171
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !1172
  %15 = load i32, i32* %high60, align 4, !dbg !1172
  %rem61 = urem i32 %14, %15, !dbg !1173
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1174
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !1175
  store i32 %rem61, i32* %high63, align 4, !dbg !1176
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !1177
  store i32 0, i32* %low65, align 8, !dbg !1178
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1179
  %16 = load i64, i64* %all66, align 8, !dbg !1179
  store i64 %16, i64* %rem, align 8, !dbg !1180
  br label %if.end67, !dbg !1181

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1182
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !1183
  %17 = load i32, i32* %high69, align 4, !dbg !1183
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1184
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !1185
  %18 = load i32, i32* %high71, align 4, !dbg !1185
  %div72 = udiv i32 %17, %18, !dbg !1186
  %conv73 = zext i32 %div72 to i64, !dbg !1187
  br label %return, !dbg !1188

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1189
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !1190
  %19 = load i32, i32* %high76, align 4, !dbg !1190
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1191
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !1192
  %20 = load i32, i32* %high78, align 4, !dbg !1192
  %sub = add i32 %20, -1, !dbg !1193
  %and = and i32 %19, %sub, !dbg !1194
  %cmp79 = icmp eq i32 %and, 0, !dbg !1195
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !1196

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !1197
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !1197

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !1198
  %21 = load i32, i32* %low85, align 8, !dbg !1198
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !1199
  store i32 %21, i32* %low87, align 8, !dbg !1200
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1201
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !1202
  %22 = load i32, i32* %high89, align 4, !dbg !1202
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1203
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !1204
  %23 = load i32, i32* %high91, align 4, !dbg !1204
  %sub92 = add i32 %23, -1, !dbg !1205
  %and93 = and i32 %22, %sub92, !dbg !1206
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1207
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !1208
  store i32 %and93, i32* %high95, align 4, !dbg !1209
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1210
  %24 = load i64, i64* %all96, align 8, !dbg !1210
  store i64 %24, i64* %rem, align 8, !dbg !1211
  br label %if.end97, !dbg !1212

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1213
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !1214
  %25 = load i32, i32* %high99, align 4, !dbg !1214
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1215
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !1216
  %26 = load i32, i32* %high101, align 4, !dbg !1216
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !1217, !range !995
  %shr = lshr i32 %25, %27, !dbg !1218
  %conv102 = zext i32 %shr to i64, !dbg !1219
  br label %return, !dbg !1220

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1221
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !1222
  %28 = load i32, i32* %high105, align 4, !dbg !1222
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !1223, !range !995
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1224
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !1225
  %30 = load i32, i32* %high107, align 4, !dbg !1225
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !1226, !range !995
  %sub108 = sub nsw i32 %29, %31, !dbg !1227
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !1228
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !1229

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !1230
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !1230

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1231
  %32 = load i64, i64* %all114, align 8, !dbg !1231
  store i64 %32, i64* %rem, align 8, !dbg !1232
  br label %if.end115, !dbg !1233

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !1234

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !1235
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !1236
  store i32 0, i32* %low118, align 8, !dbg !1237
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !1238
  %33 = load i32, i32* %low120, align 8, !dbg !1238
  %sub121 = sub nsw i32 31, %sub108, !dbg !1239
  %shl = shl i32 %33, %sub121, !dbg !1240
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1241
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !1242
  store i32 %shl, i32* %high123, align 4, !dbg !1243
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1244
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !1245
  %34 = load i32, i32* %high125, align 4, !dbg !1245
  %shr126 = lshr i32 %34, %inc, !dbg !1246
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1247
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !1248
  store i32 %shr126, i32* %high128, align 4, !dbg !1249
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1250
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !1251
  %35 = load i32, i32* %high130, align 4, !dbg !1251
  %sub131 = sub nsw i32 31, %sub108, !dbg !1252
  %shl132 = shl i32 %35, %sub131, !dbg !1253
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !1254
  %36 = load i32, i32* %low134, align 8, !dbg !1254
  %shr135 = lshr i32 %36, %inc, !dbg !1255
  %or = or i32 %shl132, %shr135, !dbg !1256
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !1257
  store i32 %or, i32* %low137, align 8, !dbg !1258
  br label %if.end317, !dbg !1259

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1260
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !1261
  %37 = load i32, i32* %high139, align 4, !dbg !1261
  %cmp140 = icmp eq i32 %37, 0, !dbg !1262
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !1263

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !1264
  %38 = load i32, i32* %low144, align 8, !dbg !1264
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !1265, !range !995
  %cmp149 = icmp ult i32 %39, 2, !dbg !1265
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !1266

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !1267
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !1267

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !1268
  %40 = load i32, i32* %low155, align 8, !dbg !1268
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !1269
  %41 = load i32, i32* %low157, align 8, !dbg !1269
  %sub158 = add i32 %41, -1, !dbg !1270
  %and159 = and i32 %40, %sub158, !dbg !1271
  %conv160 = zext i32 %and159 to i64, !dbg !1272
  store i64 %conv160, i64* %rem, align 8, !dbg !1273
  br label %if.end161, !dbg !1274

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !1275
  %42 = load i32, i32* %low163, align 8, !dbg !1275
  %cmp164 = icmp eq i32 %42, 1, !dbg !1276
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !1277

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1278
  %43 = load i64, i64* %all167, align 8, !dbg !1278
  br label %return, !dbg !1279

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !1280
  %44 = load i32, i32* %low170, align 8, !dbg !1280
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !1281, !range !995
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1282
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !1283
  %46 = load i32, i32* %high172, align 4, !dbg !1283
  %shr173 = lshr i32 %46, %45, !dbg !1284
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1285
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !1286
  store i32 %shr173, i32* %high175, align 4, !dbg !1287
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1288
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !1289
  %47 = load i32, i32* %high177, align 4, !dbg !1289
  %sub178 = sub nuw nsw i32 32, %45, !dbg !1290
  %shl179 = shl i32 %47, %sub178, !dbg !1291
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !1292
  %48 = load i32, i32* %low181, align 8, !dbg !1292
  %shr182 = lshr i32 %48, %45, !dbg !1293
  %or183 = or i32 %shl179, %shr182, !dbg !1294
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !1295
  store i32 %or183, i32* %low185, align 8, !dbg !1296
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1297
  %49 = load i64, i64* %all186, align 8, !dbg !1297
  br label %return, !dbg !1298

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !1299
  %50 = load i32, i32* %low189, align 8, !dbg !1299
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !1300, !range !995
  %add = add nuw nsw i32 %51, 33, !dbg !1301
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1302
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !1303
  %52 = load i32, i32* %high191, align 4, !dbg !1303
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !1304, !range !995
  %sub192 = sub nsw i32 %add, %53, !dbg !1305
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !1306
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !1307

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !1308
  store i32 0, i32* %low197, align 8, !dbg !1309
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !1310
  %54 = load i32, i32* %low199, align 8, !dbg !1310
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1311
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !1312
  store i32 %54, i32* %high201, align 4, !dbg !1313
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1314
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !1315
  store i32 0, i32* %high203, align 4, !dbg !1316
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1317
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !1318
  %55 = load i32, i32* %high205, align 4, !dbg !1318
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !1319
  store i32 %55, i32* %low207, align 8, !dbg !1320
  br label %if.end262, !dbg !1321

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !1322
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !1323

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !1324
  store i32 0, i32* %low213, align 8, !dbg !1325
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !1326
  %56 = load i32, i32* %low215, align 8, !dbg !1326
  %sub216 = sub nsw i32 32, %sub192, !dbg !1327
  %shl217 = shl i32 %56, %sub216, !dbg !1328
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1329
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !1330
  store i32 %shl217, i32* %high219, align 4, !dbg !1331
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1332
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !1333
  %57 = load i32, i32* %high221, align 4, !dbg !1333
  %shr222 = lshr i32 %57, %sub192, !dbg !1334
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1335
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !1336
  store i32 %shr222, i32* %high224, align 4, !dbg !1337
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1338
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !1339
  %58 = load i32, i32* %high226, align 4, !dbg !1339
  %sub227 = sub nsw i32 32, %sub192, !dbg !1340
  %shl228 = shl i32 %58, %sub227, !dbg !1341
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !1342
  %59 = load i32, i32* %low230, align 8, !dbg !1342
  %shr231 = lshr i32 %59, %sub192, !dbg !1343
  %or232 = or i32 %shl228, %shr231, !dbg !1344
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !1345
  store i32 %or232, i32* %low234, align 8, !dbg !1346
  br label %if.end261, !dbg !1347

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !1348
  %60 = load i32, i32* %low237, align 8, !dbg !1348
  %sub238 = sub nsw i32 64, %sub192, !dbg !1349
  %shl239 = shl i32 %60, %sub238, !dbg !1350
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !1351
  store i32 %shl239, i32* %low241, align 8, !dbg !1352
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1353
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !1354
  %61 = load i32, i32* %high243, align 4, !dbg !1354
  %sub244 = sub nsw i32 64, %sub192, !dbg !1355
  %shl245 = shl i32 %61, %sub244, !dbg !1356
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !1357
  %62 = load i32, i32* %low247, align 8, !dbg !1357
  %sub248 = add nsw i32 %sub192, -32, !dbg !1358
  %shr249 = lshr i32 %62, %sub248, !dbg !1359
  %or250 = or i32 %shl245, %shr249, !dbg !1360
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1361
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !1362
  store i32 %or250, i32* %high252, align 4, !dbg !1363
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1364
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !1365
  store i32 0, i32* %high254, align 4, !dbg !1366
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1367
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !1368
  %63 = load i32, i32* %high256, align 4, !dbg !1368
  %sub257 = add nsw i32 %sub192, -32, !dbg !1369
  %shr258 = lshr i32 %63, %sub257, !dbg !1370
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !1371
  store i32 %shr258, i32* %low260, align 8, !dbg !1372
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !1373

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1374
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !1375
  %64 = load i32, i32* %high265, align 4, !dbg !1375
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !1376, !range !995
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1377
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !1378
  %66 = load i32, i32* %high267, align 4, !dbg !1378
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !1379, !range !995
  %sub268 = sub nsw i32 %65, %67, !dbg !1380
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !1381
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !1382

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !1383
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !1383

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1384
  %68 = load i64, i64* %all274, align 8, !dbg !1384
  store i64 %68, i64* %rem, align 8, !dbg !1385
  br label %if.end275, !dbg !1386

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !1387

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !1388
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !1389
  store i32 0, i32* %low279, align 8, !dbg !1390
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !1391
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !1392

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !1393
  %69 = load i32, i32* %low284, align 8, !dbg !1393
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1394
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !1395
  store i32 %69, i32* %high286, align 4, !dbg !1396
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1397
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !1398
  store i32 0, i32* %high288, align 4, !dbg !1399
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1400
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !1401
  %70 = load i32, i32* %high290, align 4, !dbg !1401
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !1402
  store i32 %70, i32* %low292, align 8, !dbg !1403
  br label %if.end315, !dbg !1404

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !1405
  %71 = load i32, i32* %low295, align 8, !dbg !1405
  %sub296 = sub nsw i32 31, %sub268, !dbg !1406
  %shl297 = shl i32 %71, %sub296, !dbg !1407
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1408
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !1409
  store i32 %shl297, i32* %high299, align 4, !dbg !1410
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1411
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !1412
  %72 = load i32, i32* %high301, align 4, !dbg !1412
  %shr302 = lshr i32 %72, %inc277, !dbg !1413
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1414
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !1415
  store i32 %shr302, i32* %high304, align 4, !dbg !1416
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1417
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !1418
  %73 = load i32, i32* %high306, align 4, !dbg !1418
  %sub307 = sub nsw i32 31, %sub268, !dbg !1419
  %shl308 = shl i32 %73, %sub307, !dbg !1420
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !1421
  %74 = load i32, i32* %low310, align 8, !dbg !1421
  %shr311 = lshr i32 %74, %inc277, !dbg !1422
  %or312 = or i32 %shl308, %shr311, !dbg !1423
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !1424
  store i32 %or312, i32* %low314, align 8, !dbg !1425
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !1426
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !1426
  br label %for.cond, !dbg !1427

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !1426
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !1426
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !1428
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !1427

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1429
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !1430
  %75 = load i32, i32* %high321, align 4, !dbg !1430
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !1431
  %76 = load i32, i32* %low324, align 8, !dbg !1431
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !1432
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1433
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !1434
  store i32 %or326, i32* %high328, align 4, !dbg !1435
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1436
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !1437
  %77 = load i32, i32* %high333, align 4, !dbg !1437
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !1438
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !1439
  store i32 %or335, i32* %low337, align 8, !dbg !1440
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1441
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !1442
  %78 = load i32, i32* %high339, align 4, !dbg !1442
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !1443
  %79 = load i32, i32* %low342, align 8, !dbg !1443
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !1444
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1445
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !1446
  store i32 %or344, i32* %high346, align 4, !dbg !1447
  %shl349 = shl i32 %79, 1, !dbg !1448
  %or350 = or i32 %shl349, %carry.0, !dbg !1449
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !1450
  store i32 %or350, i32* %low352, align 8, !dbg !1451
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1452
  %80 = load i64, i64* %all354, align 8, !dbg !1452
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1453
  %81 = load i64, i64* %all355, align 8, !dbg !1453
  %82 = xor i64 %81, -1, !dbg !1454
  %sub357 = add i64 %80, %82, !dbg !1454
  %isneg = icmp slt i64 %sub357, 0, !dbg !1455
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !1455
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1456
  %sub364 = sub i64 %81, %and362, !dbg !1457
  store i64 %sub364, i64* %all363, align 8, !dbg !1457
  br label %for.inc, !dbg !1458

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !1459
  %conv360 = trunc i64 %and359 to i32, !dbg !1460
  %dec = add i32 %sr.2, -1, !dbg !1461
  br label %for.cond, !dbg !1427, !llvm.loop !1462

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1463
  %83 = load i64, i64* %all365, align 8, !dbg !1463
  %shl366 = shl i64 %83, 1, !dbg !1464
  %conv367 = zext i32 %carry.0 to i64, !dbg !1465
  %or368 = or i64 %shl366, %conv367, !dbg !1466
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1467
  store i64 %or368, i64* %all369, align 8, !dbg !1468
  %tobool370.not = icmp eq i64* %rem, null, !dbg !1469
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !1469

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1470
  %84 = load i64, i64* %all372, align 8, !dbg !1470
  store i64 %84, i64* %rem, align 8, !dbg !1471
  br label %if.end373, !dbg !1472

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1473
  %85 = load i64, i64* %all374, align 8, !dbg !1473
  br label %return, !dbg !1474

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !1426
  ret i64 %retval.0, !dbg !1475
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !1476 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !1477
  %mul = mul nsw i64 %call, %b, !dbg !1478
  %sub = sub nsw i64 %a, %mul, !dbg !1479
  store i64 %sub, i64* %rem, align 8, !dbg !1480
  ret i64 %call, !dbg !1481
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !1482 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1483
  %mul = mul nsw i32 %call, %b, !dbg !1484
  %sub = sub nsw i32 %a, %mul, !dbg !1485
  store i32 %sub, i32* %rem, align 4, !dbg !1486
  ret i32 %call, !dbg !1487
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1488 {
entry:
  %shr = ashr i32 %a, 31, !dbg !1489
  %shr1 = ashr i32 %b, 31, !dbg !1490
  %xor = xor i32 %shr, %a, !dbg !1491
  %sub = sub nsw i32 %xor, %shr, !dbg !1492
  %xor2 = xor i32 %shr1, %b, !dbg !1493
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !1494
  %xor4 = xor i32 %shr, %shr1, !dbg !1495
  %div = udiv i32 %sub, %sub3, !dbg !1496
  %xor5 = xor i32 %div, %xor4, !dbg !1497
  %sub6 = sub i32 %xor5, %xor4, !dbg !1498
  ret i32 %sub6, !dbg !1499
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #2 !dbg !1500 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1501
  store i64 %a, i64* %all, align 8, !dbg !1502
  %low = bitcast %union.dwords* %x to i32*, !dbg !1503
  %0 = load i32, i32* %low, align 8, !dbg !1503
  %cmp = icmp eq i32 %0, 0, !dbg !1504
  br i1 %cmp, label %if.then, label %if.end6, !dbg !1505

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1506
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1507
  %1 = load i32, i32* %high, align 4, !dbg !1507
  %cmp2 = icmp eq i32 %1, 0, !dbg !1508
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1509

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !1510

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1511
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1512
  %2 = load i32, i32* %high5, align 4, !dbg !1512
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !1513, !range !995
  %add = add nuw nsw i32 %3, 33, !dbg !1514
  br label %return, !dbg !1515

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !1516
  %4 = load i32, i32* %low8, align 8, !dbg !1516
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !1517, !range !995
  %add9 = add nuw nsw i32 %5, 1, !dbg !1518
  br label %return, !dbg !1519

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !1520
  ret i32 %retval.0, !dbg !1521
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #2 !dbg !1522 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !1523
  br i1 %cmp, label %if.then, label %if.end, !dbg !1524

if.then:                                          ; preds = %entry
  br label %return, !dbg !1525

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !1526, !range !995
  %add = add nuw nsw i32 %0, 1, !dbg !1527
  br label %return, !dbg !1528

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !1529
  ret i32 %retval.0, !dbg !1530
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !1531 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1532
  store i64 %a, i64* %all, align 8, !dbg !1533
  %and = and i32 %b, 32, !dbg !1534
  %tobool.not = icmp eq i32 %and, 0, !dbg !1534
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1535

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !1536
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1537
  store i32 0, i32* %high, align 4, !dbg !1538
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1539
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1540
  %0 = load i32, i32* %high2, align 4, !dbg !1540
  %sub = add nsw i32 %b, -32, !dbg !1541
  %shr = lshr i32 %0, %sub, !dbg !1542
  %low = bitcast %union.dwords* %result to i32*, !dbg !1543
  store i32 %shr, i32* %low, align 8, !dbg !1544
  br label %if.end18, !dbg !1545

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1546
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1547

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !1548

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1549
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !1550
  %1 = load i32, i32* %high6, align 4, !dbg !1550
  %shr7 = lshr i32 %1, %b, !dbg !1551
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1552
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !1553
  store i32 %shr7, i32* %high9, align 4, !dbg !1554
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1555
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !1556
  %2 = load i32, i32* %high11, align 4, !dbg !1556
  %sub12 = sub nsw i32 32, %b, !dbg !1557
  %shl = shl i32 %2, %sub12, !dbg !1558
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !1559
  %3 = load i32, i32* %low14, align 8, !dbg !1559
  %shr15 = lshr i32 %3, %b, !dbg !1560
  %or = or i32 %shl, %shr15, !dbg !1561
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !1562
  store i32 %or, i32* %low17, align 8, !dbg !1563
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1564
  %4 = load i64, i64* %all19, align 8, !dbg !1564
  br label %return, !dbg !1565

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !1566
  ret i64 %retval.0, !dbg !1567
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1568 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !1569
  %shr1 = ashr i64 %a, 63, !dbg !1570
  %xor2 = xor i64 %shr1, %a, !dbg !1571
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !1572
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !1573
  %1 = load i64, i64* %r, align 8, !dbg !1574
  %xor4 = xor i64 %1, %shr1, !dbg !1575
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !1576
  ret i64 %sub5, !dbg !1577
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1578 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1579
  %mul = mul nsw i32 %call, %b, !dbg !1580
  %sub = sub nsw i32 %a, %mul, !dbg !1581
  ret i32 %sub, !dbg !1582
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1583 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !1584
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1585

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !1586
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1587

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !1588
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1589

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1590

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1591
  unreachable, !dbg !1591

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !1592
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1593

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !1594
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1595

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !1596
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1597

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1598

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1599
  unreachable, !dbg !1599

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !1600
  %xor = xor i64 %shr, %a, !dbg !1601
  %sub = sub nsw i64 %xor, %shr, !dbg !1602
  %shr14 = ashr i64 %b, 63, !dbg !1603
  %xor15 = xor i64 %shr14, %b, !dbg !1604
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !1605
  %cmp17 = icmp slt i64 %sub, 2, !dbg !1606
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1607

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !1608
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1609

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1610

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !1611
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1612

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !1613
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !1614
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1615

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1616
  unreachable, !dbg !1616

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1617

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !1618
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !1619
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !1620
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1621

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1622
  unreachable, !dbg !1622

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1623

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !1624
  ret i64 %retval.0, !dbg !1625
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1626 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !1627
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1628

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !1629
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1630

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !1631
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1632

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1633

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1634
  unreachable, !dbg !1634

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !1635
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1636

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !1637
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1638

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !1639
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1640

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1641

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1642
  unreachable, !dbg !1642

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !1643
  %xor = xor i32 %shr, %a, !dbg !1644
  %sub = sub nsw i32 %xor, %shr, !dbg !1645
  %shr14 = ashr i32 %b, 31, !dbg !1646
  %xor15 = xor i32 %shr14, %b, !dbg !1647
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !1648
  %cmp17 = icmp slt i32 %sub, 2, !dbg !1649
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1650

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !1651
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1652

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1653

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !1654
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1655

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !1656
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !1657
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1658

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1659
  unreachable, !dbg !1659

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1660

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !1661
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !1662
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !1663
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1664

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1665
  unreachable, !dbg !1665

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1666

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !1667
  ret i32 %retval.0, !dbg !1668
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #2 !dbg !1669 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1670
  store i64 %a, i64* %all, align 8, !dbg !1671
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1672
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1673
  %0 = load i32, i32* %high, align 4, !dbg !1673
  %low = bitcast %union.dwords* %x to i32*, !dbg !1674
  %1 = load i32, i32* %low, align 8, !dbg !1674
  %xor = xor i32 %0, %1, !dbg !1675
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !1676
  ret i32 %call, !dbg !1677
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #2 !dbg !1678 {
entry:
  %shr = lshr i32 %a, 16, !dbg !1679
  %xor = xor i32 %shr, %a, !dbg !1680
  %shr1 = lshr i32 %xor, 8, !dbg !1681
  %xor2 = xor i32 %xor, %shr1, !dbg !1682
  %shr3 = lshr i32 %xor2, 4, !dbg !1683
  %xor4 = xor i32 %xor2, %shr3, !dbg !1684
  %and = and i32 %xor4, 15, !dbg !1685
  %shr5 = lshr i32 27030, %and, !dbg !1686
  %and6 = and i32 %shr5, 1, !dbg !1687
  ret i32 %and6, !dbg !1688
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #2 !dbg !1689 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1690
  %and = and i64 %shr, 6148914691236517205, !dbg !1691
  %sub = sub i64 %a, %and, !dbg !1692
  %shr1 = lshr i64 %sub, 2, !dbg !1693
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1694
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1695
  %add = add nuw nsw i64 %and2, %and3, !dbg !1696
  %shr4 = lshr i64 %add, 4, !dbg !1697
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1698
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1699
  %shr7 = lshr i64 %and6, 32, !dbg !1700
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1701
  %conv = trunc i64 %add8 to i32, !dbg !1702
  %shr9 = lshr i32 %conv, 16, !dbg !1703
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1704
  %shr11 = lshr i32 %add10, 8, !dbg !1705
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1706
  %and13 = and i32 %add12, 127, !dbg !1707
  ret i32 %and13, !dbg !1708
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #2 !dbg !1709 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1710
  %and = and i32 %shr, 1431655765, !dbg !1711
  %sub = sub i32 %a, %and, !dbg !1712
  %shr1 = lshr i32 %sub, 2, !dbg !1713
  %and2 = and i32 %shr1, 858993459, !dbg !1714
  %and3 = and i32 %sub, 858993459, !dbg !1715
  %add = add nuw nsw i32 %and2, %and3, !dbg !1716
  %shr4 = lshr i32 %add, 4, !dbg !1717
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1718
  %and6 = and i32 %add5, 252645135, !dbg !1719
  %shr7 = lshr i32 %and6, 16, !dbg !1720
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1721
  %shr9 = lshr i32 %add8, 8, !dbg !1722
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1723
  %and11 = and i32 %add10, 63, !dbg !1724
  ret i32 %and11, !dbg !1725
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1726 {
entry:
  %sub = sub i64 %a, %b, !dbg !1727
  %cmp = icmp sgt i64 %b, -1, !dbg !1728
  br i1 %cmp, label %if.then, label %if.else, !dbg !1729

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1730
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1731

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1732
  unreachable, !dbg !1732

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1733

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1734
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1735

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1736
  unreachable, !dbg !1736

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1737
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1738 {
entry:
  %sub = sub i32 %a, %b, !dbg !1739
  %cmp = icmp sgt i32 %b, -1, !dbg !1740
  br i1 %cmp, label %if.then, label %if.else, !dbg !1741

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1742
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1743

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1744
  unreachable, !dbg !1744

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1745

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1746
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1747

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1748
  unreachable, !dbg !1748

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1749
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !1750 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1751
  store i64 %a, i64* %all, align 8, !dbg !1752
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1753
  store i64 %b, i64* %all1, align 8, !dbg !1754
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1755
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1756
  %0 = load i32, i32* %high, align 4, !dbg !1756
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1757
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1758
  %1 = load i32, i32* %high3, align 4, !dbg !1758
  %cmp = icmp ult i32 %0, %1, !dbg !1759
  br i1 %cmp, label %if.then, label %if.end, !dbg !1760

if.then:                                          ; preds = %entry
  br label %return, !dbg !1761

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1762
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1763
  %2 = load i32, i32* %high5, align 4, !dbg !1763
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1764
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1765
  %3 = load i32, i32* %high7, align 4, !dbg !1765
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1766
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1767

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1768

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1769
  %4 = load i32, i32* %low, align 8, !dbg !1769
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1770
  %5 = load i32, i32* %low13, align 8, !dbg !1770
  %cmp14 = icmp ult i32 %4, %5, !dbg !1771
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1772

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1773

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1774
  %6 = load i32, i32* %low18, align 8, !dbg !1774
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1775
  %7 = load i32, i32* %low20, align 8, !dbg !1775
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1776
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1777

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1778

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1779

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1780
  ret i32 %retval.0, !dbg !1781
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !1782 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1783
  %sub = add nsw i32 %call, -1, !dbg !1784
  ret i32 %sub, !dbg !1785
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1786 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !1787
  ret i64 %call, !dbg !1788
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !1789 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1790
  %mul = mul i32 %call, %b, !dbg !1791
  %sub = sub i32 %a, %mul, !dbg !1792
  store i32 %sub, i32* %rem, align 4, !dbg !1793
  ret i32 %call, !dbg !1794
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #2 !dbg !1795 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1796
  br i1 %cmp, label %if.then, label %if.end, !dbg !1797

if.then:                                          ; preds = %entry
  br label %return, !dbg !1798

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1799
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1800

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1801

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1802, !range !995
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1803, !range !995
  %sub = sub nsw i32 %0, %1, !dbg !1804
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1805
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1806

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1807

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1808
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1809

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1810

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1811
  %sub10 = sub nsw i32 31, %sub, !dbg !1812
  %shl = shl i32 %n, %sub10, !dbg !1813
  %shr = lshr i32 %n, %inc, !dbg !1814
  br label %for.cond, !dbg !1815

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1816
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1816
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1816
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1816
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1817
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1815

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1818
  %2 = xor i32 %or, -1, !dbg !1819
  %sub17 = add i32 %2, %d, !dbg !1819
  br label %for.inc, !dbg !1820

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1821
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1821
  %sub20 = sub i32 %or, %and19, !dbg !1822
  %and = lshr i32 %sub17, 31, !dbg !1823
  %shl14 = shl i32 %q.0, 1, !dbg !1824
  %or15 = or i32 %shl14, %carry.0, !dbg !1825
  %dec = add i32 %sr.0, -1, !dbg !1826
  br label %for.cond, !dbg !1815, !llvm.loop !1827

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1828
  %or22 = or i32 %shl21, %carry.0, !dbg !1829
  br label %return, !dbg !1830

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1816
  ret i32 %retval.0, !dbg !1831
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1832 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !1833
  %0 = load i64, i64* %r, align 8, !dbg !1834
  ret i64 %0, !dbg !1835
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1836 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1837
  %mul = mul i32 %call, %b, !dbg !1838
  %sub = sub i32 %a, %mul, !dbg !1839
  ret i32 %sub, !dbg !1840
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #2 !dbg !1841 {
entry:
  br label %for.cond, !dbg !1842

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1843
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1844
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1845

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1846
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1846
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1847
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1848
  br label %for.inc, !dbg !1849

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1850
  br label %for.cond, !dbg !1845, !llvm.loop !1851

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1852
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #2 !dbg !1853 {
entry:
  br label %for.cond, !dbg !1854

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1855
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1856
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1857

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1858
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1859
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1860
  br label %for.inc, !dbg !1861

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1862
  br label %for.cond, !dbg !1857, !llvm.loop !1863

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1864
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

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114}
!llvm.ident = !{!116, !116, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125, !126}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/cosf/cosf.c", directory: "/workspaces/llvmta/testcases/tmp.pWtFTL6MLi", checksumkind: CSK_MD5, checksum: "8904999a9da5b71daf2776953f115abd")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/cosf/wcclibm.c", directory: "/workspaces/llvmta/testcases/tmp.pWtFTL6MLi", checksumkind: CSK_MD5, checksum: "f19b597e9d2a9e9dfbd746090c4130cd")
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!59 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!99 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!116 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)"}
!117 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!118 = !{i32 7, !"Dwarf Version", i32 5}
!119 = !{i32 2, !"Debug Info Version", i32 3}
!120 = !{i32 1, !"wchar_size", i32 4}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 1, !"branch-target-enforcement", i32 0}
!123 = !{i32 1, !"sign-return-address", i32 0}
!124 = !{i32 1, !"sign-return-address-all", i32 0}
!125 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = distinct !DISubprogram(name: "cosf_init", scope: !128, file: !128, line: 43, type: !129, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !130)
!128 = !DIFile(filename: "batchtest/cosf/cosf.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "8904999a9da5b71daf2776953f115abd")
!129 = !DISubroutineType(types: !130)
!130 = !{}
!131 = !DILocation(line: 43, column: 39, scope: !127)
!132 = !DILocation(line: 43, column: 47, scope: !127)
!133 = distinct !DISubprogram(name: "cosf_return", scope: !128, file: !128, line: 49, type: !129, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !130)
!134 = !DILocation(line: 50, column: 14, scope: !133)
!135 = !DILocation(line: 52, column: 12, scope: !133)
!136 = !DILocation(line: 52, column: 7, scope: !133)
!137 = !DILocation(line: 53, column: 5, scope: !133)
!138 = !DILocation(line: 55, column: 5, scope: !133)
!139 = !DILocation(line: 0, scope: !133)
!140 = !DILocation(line: 56, column: 1, scope: !133)
!141 = distinct !DISubprogram(name: "cosf_main", scope: !128, file: !128, line: 62, type: !129, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !130)
!142 = !DILocation(line: 64, column: 45, scope: !141)
!143 = !DILocation(line: 0, scope: !141)
!144 = !DILocation(line: 64, column: 57, scope: !141)
!145 = !DILocation(line: 64, column: 40, scope: !141)
!146 = !DILocation(line: 65, column: 25, scope: !141)
!147 = !DILocation(line: 65, column: 22, scope: !141)
!148 = !DILocation(line: 65, column: 7, scope: !141)
!149 = !DILocation(line: 64, column: 67, scope: !141)
!150 = distinct !{!150, !145, !151, !152}
!151 = !DILocation(line: 65, column: 43, scope: !141)
!152 = !{!"llvm.loop.mustprogress"}
!153 = !DILocation(line: 66, column: 1, scope: !141)
!154 = distinct !DISubprogram(name: "main", scope: !128, file: !128, line: 68, type: !129, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !130)
!155 = !DILocation(line: 69, column: 3, scope: !154)
!156 = !DILocation(line: 70, column: 3, scope: !154)
!157 = !DILocation(line: 71, column: 10, scope: !154)
!158 = !DILocation(line: 71, column: 3, scope: !154)
!159 = distinct !DISubprogram(name: "basicmath___ieee754_acosf", scope: !160, file: !160, line: 55, type: !129, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!160 = !DIFile(filename: "batchtest/cosf/wcclibm.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "f19b597e9d2a9e9dfbd746090c4130cd")
!161 = !DILocation(line: 59, column: 3, scope: !159)
!162 = !DILocation(line: 60, column: 11, scope: !159)
!163 = !DILocation(line: 61, column: 11, scope: !159)
!164 = !DILocation(line: 61, column: 8, scope: !159)
!165 = !DILocation(line: 62, column: 13, scope: !159)
!166 = !DILocation(line: 62, column: 10, scope: !159)
!167 = !DILocation(line: 62, column: 19, scope: !159)
!168 = !DILocation(line: 63, column: 10, scope: !159)
!169 = !DILocation(line: 65, column: 13, scope: !159)
!170 = !DILocation(line: 65, column: 10, scope: !159)
!171 = !DILocation(line: 66, column: 18, scope: !159)
!172 = !DILocation(line: 66, column: 30, scope: !159)
!173 = !DILocation(line: 66, column: 24, scope: !159)
!174 = !DILocation(line: 66, column: 7, scope: !159)
!175 = !DILocation(line: 68, column: 11, scope: !159)
!176 = !DILocation(line: 68, column: 8, scope: !159)
!177 = !DILocation(line: 69, column: 13, scope: !159)
!178 = !DILocation(line: 69, column: 10, scope: !159)
!179 = !DILocation(line: 69, column: 29, scope: !159)
!180 = !DILocation(line: 71, column: 11, scope: !159)
!181 = !DILocation(line: 74, column: 55, scope: !159)
!182 = !DILocation(line: 73, column: 53, scope: !159)
!183 = !DILocation(line: 72, column: 73, scope: !159)
!184 = !DILocation(line: 72, column: 51, scope: !159)
!185 = !DILocation(line: 72, column: 29, scope: !159)
!186 = !DILocation(line: 72, column: 11, scope: !159)
!187 = !DILocation(line: 76, column: 47, scope: !159)
!188 = !DILocation(line: 75, column: 67, scope: !159)
!189 = !DILocation(line: 75, column: 45, scope: !159)
!190 = !DILocation(line: 75, column: 23, scope: !159)
!191 = !DILocation(line: 77, column: 11, scope: !159)
!192 = !DILocation(line: 78, column: 58, scope: !159)
!193 = !DILocation(line: 78, column: 30, scope: !159)
!194 = !DILocation(line: 78, column: 5, scope: !159)
!195 = !DILocation(line: 80, column: 13, scope: !159)
!196 = !DILocation(line: 80, column: 10, scope: !159)
!197 = !DILocation(line: 81, column: 27, scope: !159)
!198 = !DILocation(line: 81, column: 33, scope: !159)
!199 = !DILocation(line: 84, column: 57, scope: !159)
!200 = !DILocation(line: 83, column: 55, scope: !159)
!201 = !DILocation(line: 82, column: 75, scope: !159)
!202 = !DILocation(line: 82, column: 53, scope: !159)
!203 = !DILocation(line: 82, column: 31, scope: !159)
!204 = !DILocation(line: 82, column: 13, scope: !159)
!205 = !DILocation(line: 86, column: 49, scope: !159)
!206 = !DILocation(line: 85, column: 69, scope: !159)
!207 = !DILocation(line: 85, column: 47, scope: !159)
!208 = !DILocation(line: 85, column: 25, scope: !159)
!209 = !DILocation(line: 87, column: 11, scope: !159)
!210 = !DILocation(line: 88, column: 13, scope: !159)
!211 = !DILocation(line: 89, column: 17, scope: !159)
!212 = !DILocation(line: 90, column: 49, scope: !159)
!213 = !DILocation(line: 90, column: 27, scope: !159)
!214 = !DILocation(line: 90, column: 7, scope: !159)
!215 = !DILocation(line: 93, column: 27, scope: !159)
!216 = !DILocation(line: 93, column: 33, scope: !159)
!217 = !DILocation(line: 94, column: 11, scope: !159)
!218 = !DILocation(line: 96, column: 7, scope: !159)
!219 = !DILocation(line: 97, column: 7, scope: !159)
!220 = !DILocation(line: 98, column: 16, scope: !159)
!221 = !DILocation(line: 98, column: 34, scope: !159)
!222 = !DILocation(line: 98, column: 28, scope: !159)
!223 = !DILocation(line: 101, column: 57, scope: !159)
!224 = !DILocation(line: 100, column: 55, scope: !159)
!225 = !DILocation(line: 99, column: 75, scope: !159)
!226 = !DILocation(line: 99, column: 53, scope: !159)
!227 = !DILocation(line: 99, column: 31, scope: !159)
!228 = !DILocation(line: 99, column: 13, scope: !159)
!229 = !DILocation(line: 103, column: 49, scope: !159)
!230 = !DILocation(line: 102, column: 69, scope: !159)
!231 = !DILocation(line: 102, column: 47, scope: !159)
!232 = !DILocation(line: 102, column: 25, scope: !159)
!233 = !DILocation(line: 104, column: 13, scope: !159)
!234 = !DILocation(line: 105, column: 17, scope: !159)
!235 = !DILocation(line: 106, column: 35, scope: !159)
!236 = !DILocation(line: 106, column: 28, scope: !159)
!237 = !DILocation(line: 106, column: 7, scope: !159)
!238 = !DILocation(line: 0, scope: !159)
!239 = !DILocation(line: 108, column: 1, scope: !159)
!240 = distinct !DISubprogram(name: "basicmath___ieee754_sqrtf", scope: !160, file: !160, line: 493, type: !129, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!241 = !DILocation(line: 500, column: 3, scope: !240)
!242 = !DILocation(line: 503, column: 13, scope: !240)
!243 = !DILocation(line: 503, column: 28, scope: !240)
!244 = !DILocation(line: 503, column: 8, scope: !240)
!245 = !DILocation(line: 504, column: 18, scope: !240)
!246 = !DILocation(line: 504, column: 5, scope: !240)
!247 = !DILocation(line: 508, column: 11, scope: !240)
!248 = !DILocation(line: 508, column: 8, scope: !240)
!249 = !DILocation(line: 509, column: 15, scope: !240)
!250 = !DILocation(line: 509, column: 29, scope: !240)
!251 = !DILocation(line: 509, column: 10, scope: !240)
!252 = !DILocation(line: 509, column: 36, scope: !240)
!253 = !DILocation(line: 511, column: 15, scope: !240)
!254 = !DILocation(line: 511, column: 12, scope: !240)
!255 = !DILocation(line: 512, column: 20, scope: !240)
!256 = !DILocation(line: 512, column: 32, scope: !240)
!257 = !DILocation(line: 512, column: 26, scope: !240)
!258 = !DILocation(line: 512, column: 9, scope: !240)
!259 = !DILocation(line: 513, column: 3, scope: !240)
!260 = !DILocation(line: 515, column: 12, scope: !240)
!261 = !DILocation(line: 516, column: 10, scope: !240)
!262 = !DILocation(line: 516, column: 8, scope: !240)
!263 = !DILocation(line: 518, column: 11, scope: !240)
!264 = !DILocation(line: 0, scope: !240)
!265 = !DILocation(line: 518, column: 23, scope: !240)
!266 = !DILocation(line: 518, column: 38, scope: !240)
!267 = !DILocation(line: 518, column: 5, scope: !240)
!268 = !DILocation(line: 519, column: 7, scope: !240)
!269 = !DILocation(line: 519, column: 10, scope: !240)
!270 = !DILocation(line: 518, column: 45, scope: !240)
!271 = distinct !{!271, !267, !272, !152}
!272 = !DILocation(line: 519, column: 14, scope: !240)
!273 = !DILocation(line: 520, column: 12, scope: !240)
!274 = !DILocation(line: 520, column: 7, scope: !240)
!275 = !DILocation(line: 521, column: 3, scope: !240)
!276 = !DILocation(line: 522, column: 5, scope: !240)
!277 = !DILocation(line: 523, column: 13, scope: !240)
!278 = !DILocation(line: 523, column: 28, scope: !240)
!279 = !DILocation(line: 524, column: 10, scope: !240)
!280 = !DILocation(line: 524, column: 8, scope: !240)
!281 = !DILocation(line: 525, column: 8, scope: !240)
!282 = !DILocation(line: 525, column: 5, scope: !240)
!283 = !DILocation(line: 534, column: 3, scope: !240)
!284 = !DILocation(line: 534, column: 13, scope: !240)
!285 = !DILocation(line: 535, column: 11, scope: !240)
!286 = !DILocation(line: 537, column: 16, scope: !240)
!287 = !DILocation(line: 538, column: 11, scope: !240)
!288 = !DILocation(line: 542, column: 7, scope: !240)
!289 = distinct !{!289, !283, !290, !152}
!290 = !DILocation(line: 543, column: 3, scope: !240)
!291 = !DILocation(line: 546, column: 11, scope: !240)
!292 = !DILocation(line: 546, column: 8, scope: !240)
!293 = !DILocation(line: 548, column: 10, scope: !240)
!294 = !DILocation(line: 550, column: 12, scope: !240)
!295 = !DILocation(line: 551, column: 9, scope: !240)
!296 = !DILocation(line: 554, column: 5, scope: !240)
!297 = !DILocation(line: 555, column: 3, scope: !240)
!298 = !DILocation(line: 556, column: 12, scope: !240)
!299 = !DILocation(line: 556, column: 19, scope: !240)
!300 = !DILocation(line: 557, column: 13, scope: !240)
!301 = !DILocation(line: 557, column: 6, scope: !240)
!302 = !DILocation(line: 558, column: 3, scope: !240)
!303 = !DILocation(line: 559, column: 3, scope: !240)
!304 = !DILocation(line: 560, column: 1, scope: !240)
!305 = distinct !DISubprogram(name: "basicmath___ieee754_powf", scope: !160, file: !160, line: 141, type: !129, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!306 = !DILocation(line: 148, column: 3, scope: !305)
!307 = !DILocation(line: 149, column: 3, scope: !305)
!308 = !DILocation(line: 150, column: 11, scope: !305)
!309 = !DILocation(line: 151, column: 11, scope: !305)
!310 = !DILocation(line: 154, column: 11, scope: !305)
!311 = !DILocation(line: 154, column: 8, scope: !305)
!312 = !DILocation(line: 154, column: 18, scope: !305)
!313 = !DILocation(line: 157, column: 10, scope: !305)
!314 = !DILocation(line: 157, column: 8, scope: !305)
!315 = !DILocation(line: 157, column: 20, scope: !305)
!316 = !DILocation(line: 158, column: 10, scope: !305)
!317 = !DILocation(line: 158, column: 19, scope: !305)
!318 = !DILocation(line: 158, column: 22, scope: !305)
!319 = !DILocation(line: 158, column: 8, scope: !305)
!320 = !DILocation(line: 158, column: 48, scope: !305)
!321 = !DILocation(line: 161, column: 11, scope: !305)
!322 = !DILocation(line: 161, column: 24, scope: !305)
!323 = !DILocation(line: 162, column: 11, scope: !305)
!324 = !DILocation(line: 161, column: 8, scope: !305)
!325 = !DILocation(line: 163, column: 14, scope: !305)
!326 = !DILocation(line: 163, column: 5, scope: !305)
!327 = !DILocation(line: 171, column: 11, scope: !305)
!328 = !DILocation(line: 171, column: 8, scope: !305)
!329 = !DILocation(line: 172, column: 13, scope: !305)
!330 = !DILocation(line: 172, column: 10, scope: !305)
!331 = !DILocation(line: 172, column: 29, scope: !305)
!332 = !DILocation(line: 174, column: 15, scope: !305)
!333 = !DILocation(line: 174, column: 12, scope: !305)
!334 = !DILocation(line: 175, column: 18, scope: !305)
!335 = !DILocation(line: 176, column: 24, scope: !305)
!336 = !DILocation(line: 176, column: 16, scope: !305)
!337 = !DILocation(line: 177, column: 26, scope: !305)
!338 = !DILocation(line: 177, column: 18, scope: !305)
!339 = !DILocation(line: 177, column: 34, scope: !305)
!340 = !DILocation(line: 177, column: 14, scope: !305)
!341 = !DILocation(line: 177, column: 59, scope: !305)
!342 = !DILocation(line: 177, column: 53, scope: !305)
!343 = !DILocation(line: 177, column: 42, scope: !305)
!344 = !DILocation(line: 0, scope: !305)
!345 = !DILocation(line: 178, column: 7, scope: !305)
!346 = !DILocation(line: 179, column: 3, scope: !305)
!347 = !DILocation(line: 182, column: 11, scope: !305)
!348 = !DILocation(line: 182, column: 8, scope: !305)
!349 = !DILocation(line: 183, column: 13, scope: !305)
!350 = !DILocation(line: 183, column: 10, scope: !305)
!351 = !DILocation(line: 184, column: 17, scope: !305)
!352 = !DILocation(line: 184, column: 7, scope: !305)
!353 = !DILocation(line: 186, column: 15, scope: !305)
!354 = !DILocation(line: 186, column: 12, scope: !305)
!355 = !DILocation(line: 187, column: 21, scope: !305)
!356 = !DILocation(line: 187, column: 16, scope: !305)
!357 = !DILocation(line: 187, column: 9, scope: !305)
!358 = !DILocation(line: 189, column: 21, scope: !305)
!359 = !DILocation(line: 189, column: 16, scope: !305)
!360 = !DILocation(line: 189, column: 29, scope: !305)
!361 = !DILocation(line: 189, column: 9, scope: !305)
!362 = !DILocation(line: 191, column: 11, scope: !305)
!363 = !DILocation(line: 191, column: 8, scope: !305)
!364 = !DILocation(line: 192, column: 13, scope: !305)
!365 = !DILocation(line: 192, column: 10, scope: !305)
!366 = !DILocation(line: 192, column: 40, scope: !305)
!367 = !DILocation(line: 192, column: 19, scope: !305)
!368 = !DILocation(line: 193, column: 10, scope: !305)
!369 = !DILocation(line: 195, column: 11, scope: !305)
!370 = !DILocation(line: 195, column: 8, scope: !305)
!371 = !DILocation(line: 195, column: 36, scope: !305)
!372 = !DILocation(line: 195, column: 27, scope: !305)
!373 = !DILocation(line: 196, column: 11, scope: !305)
!374 = !DILocation(line: 196, column: 8, scope: !305)
!375 = !DILocation(line: 197, column: 13, scope: !305)
!376 = !DILocation(line: 197, column: 10, scope: !305)
!377 = !DILocation(line: 198, column: 14, scope: !305)
!378 = !DILocation(line: 198, column: 7, scope: !305)
!379 = !DILocation(line: 199, column: 3, scope: !305)
!380 = !DILocation(line: 201, column: 10, scope: !305)
!381 = !DILocation(line: 203, column: 11, scope: !305)
!382 = !DILocation(line: 203, column: 25, scope: !305)
!383 = !DILocation(line: 203, column: 31, scope: !305)
!384 = !DILocation(line: 203, column: 36, scope: !305)
!385 = !DILocation(line: 203, column: 42, scope: !305)
!386 = !DILocation(line: 203, column: 8, scope: !305)
!387 = !DILocation(line: 205, column: 13, scope: !305)
!388 = !DILocation(line: 205, column: 10, scope: !305)
!389 = !DILocation(line: 205, column: 37, scope: !305)
!390 = !DILocation(line: 205, column: 19, scope: !305)
!391 = !DILocation(line: 206, column: 13, scope: !305)
!392 = !DILocation(line: 206, column: 10, scope: !305)
!393 = !DILocation(line: 207, column: 19, scope: !305)
!394 = !DILocation(line: 207, column: 34, scope: !305)
!395 = !DILocation(line: 207, column: 45, scope: !305)
!396 = !DILocation(line: 207, column: 12, scope: !305)
!397 = !DILocation(line: 208, column: 17, scope: !305)
!398 = !DILocation(line: 208, column: 29, scope: !305)
!399 = !DILocation(line: 208, column: 23, scope: !305)
!400 = !DILocation(line: 209, column: 7, scope: !305)
!401 = !DILocation(line: 210, column: 21, scope: !305)
!402 = !DILocation(line: 210, column: 14, scope: !305)
!403 = !DILocation(line: 211, column: 15, scope: !305)
!404 = !DILocation(line: 211, column: 11, scope: !305)
!405 = !DILocation(line: 212, column: 5, scope: !305)
!406 = !DILocation(line: 213, column: 5, scope: !305)
!407 = !DILocation(line: 217, column: 30, scope: !305)
!408 = !DILocation(line: 217, column: 38, scope: !305)
!409 = !DILocation(line: 217, column: 44, scope: !305)
!410 = !DILocation(line: 217, column: 55, scope: !305)
!411 = !DILocation(line: 217, column: 8, scope: !305)
!412 = !DILocation(line: 217, column: 73, scope: !305)
!413 = !DILocation(line: 218, column: 13, scope: !305)
!414 = !DILocation(line: 217, column: 79, scope: !305)
!415 = !DILocation(line: 217, column: 62, scope: !305)
!416 = !DILocation(line: 221, column: 11, scope: !305)
!417 = !DILocation(line: 221, column: 8, scope: !305)
!418 = !DILocation(line: 223, column: 13, scope: !305)
!419 = !DILocation(line: 223, column: 10, scope: !305)
!420 = !DILocation(line: 223, column: 40, scope: !305)
!421 = !DILocation(line: 223, column: 35, scope: !305)
!422 = !DILocation(line: 223, column: 28, scope: !305)
!423 = !DILocation(line: 225, column: 13, scope: !305)
!424 = !DILocation(line: 225, column: 10, scope: !305)
!425 = !DILocation(line: 225, column: 40, scope: !305)
!426 = !DILocation(line: 225, column: 35, scope: !305)
!427 = !DILocation(line: 225, column: 28, scope: !305)
!428 = !DILocation(line: 229, column: 11, scope: !305)
!429 = !DILocation(line: 230, column: 13, scope: !305)
!430 = !DILocation(line: 230, column: 70, scope: !305)
!431 = !DILocation(line: 230, column: 37, scope: !305)
!432 = !DILocation(line: 230, column: 19, scope: !305)
!433 = !DILocation(line: 232, column: 27, scope: !305)
!434 = !DILocation(line: 233, column: 31, scope: !305)
!435 = !DILocation(line: 234, column: 12, scope: !305)
!436 = !DILocation(line: 235, column: 5, scope: !305)
!437 = !DILocation(line: 236, column: 5, scope: !305)
!438 = !DILocation(line: 237, column: 19, scope: !305)
!439 = !DILocation(line: 237, column: 12, scope: !305)
!440 = !DILocation(line: 238, column: 3, scope: !305)
!441 = !DILocation(line: 242, column: 13, scope: !305)
!442 = !DILocation(line: 242, column: 10, scope: !305)
!443 = !DILocation(line: 243, column: 10, scope: !305)
!444 = !DILocation(line: 245, column: 7, scope: !305)
!445 = !DILocation(line: 246, column: 5, scope: !305)
!446 = !DILocation(line: 247, column: 20, scope: !305)
!447 = !DILocation(line: 247, column: 28, scope: !305)
!448 = !DILocation(line: 247, column: 8, scope: !305)
!449 = !DILocation(line: 248, column: 13, scope: !305)
!450 = !DILocation(line: 250, column: 12, scope: !305)
!451 = !DILocation(line: 251, column: 12, scope: !305)
!452 = !DILocation(line: 251, column: 10, scope: !305)
!453 = !DILocation(line: 251, column: 26, scope: !305)
!454 = !DILocation(line: 253, column: 14, scope: !305)
!455 = !DILocation(line: 253, column: 12, scope: !305)
!456 = !DILocation(line: 253, column: 27, scope: !305)
!457 = !DILocation(line: 256, column: 11, scope: !305)
!458 = !DILocation(line: 257, column: 12, scope: !305)
!459 = !DILocation(line: 250, column: 8, scope: !305)
!460 = !DILocation(line: 259, column: 5, scope: !305)
!461 = !DILocation(line: 262, column: 14, scope: !305)
!462 = !DILocation(line: 262, column: 12, scope: !305)
!463 = !DILocation(line: 263, column: 30, scope: !305)
!464 = !DILocation(line: 263, column: 23, scope: !305)
!465 = !DILocation(line: 264, column: 11, scope: !305)
!466 = !DILocation(line: 266, column: 5, scope: !305)
!467 = !DILocation(line: 267, column: 5, scope: !305)
!468 = !DILocation(line: 269, column: 5, scope: !305)
!469 = !DILocation(line: 270, column: 24, scope: !305)
!470 = !DILocation(line: 270, column: 22, scope: !305)
!471 = !DILocation(line: 270, column: 14, scope: !305)
!472 = !DILocation(line: 271, column: 21, scope: !305)
!473 = !DILocation(line: 271, column: 35, scope: !305)
!474 = !DILocation(line: 271, column: 13, scope: !305)
!475 = !DILocation(line: 273, column: 12, scope: !305)
!476 = !DILocation(line: 274, column: 12, scope: !305)
!477 = !DILocation(line: 276, column: 62, scope: !305)
!478 = !DILocation(line: 275, column: 80, scope: !305)
!479 = !DILocation(line: 275, column: 58, scope: !305)
!480 = !DILocation(line: 274, column: 56, scope: !305)
!481 = !DILocation(line: 274, column: 34, scope: !305)
!482 = !DILocation(line: 274, column: 17, scope: !305)
!483 = !DILocation(line: 277, column: 22, scope: !305)
!484 = !DILocation(line: 277, column: 7, scope: !305)
!485 = !DILocation(line: 278, column: 15, scope: !305)
!486 = !DILocation(line: 279, column: 25, scope: !305)
!487 = !DILocation(line: 279, column: 30, scope: !305)
!488 = !DILocation(line: 280, column: 5, scope: !305)
!489 = !DILocation(line: 281, column: 5, scope: !305)
!490 = !DILocation(line: 282, column: 23, scope: !305)
!491 = !DILocation(line: 282, column: 41, scope: !305)
!492 = !DILocation(line: 282, column: 13, scope: !305)
!493 = !DILocation(line: 284, column: 13, scope: !305)
!494 = !DILocation(line: 285, column: 25, scope: !305)
!495 = !DILocation(line: 285, column: 19, scope: !305)
!496 = !DILocation(line: 287, column: 13, scope: !305)
!497 = !DILocation(line: 288, column: 5, scope: !305)
!498 = !DILocation(line: 289, column: 5, scope: !305)
!499 = !DILocation(line: 290, column: 21, scope: !305)
!500 = !DILocation(line: 290, column: 13, scope: !305)
!501 = !DILocation(line: 291, column: 26, scope: !305)
!502 = !DILocation(line: 292, column: 38, scope: !305)
!503 = !DILocation(line: 292, column: 32, scope: !305)
!504 = !DILocation(line: 292, column: 55, scope: !305)
!505 = !DILocation(line: 292, column: 53, scope: !305)
!506 = !DILocation(line: 294, column: 9, scope: !305)
!507 = !DILocation(line: 295, column: 20, scope: !305)
!508 = !DILocation(line: 295, column: 30, scope: !305)
!509 = !DILocation(line: 295, column: 28, scope: !305)
!510 = !DILocation(line: 295, column: 52, scope: !305)
!511 = !DILocation(line: 296, column: 5, scope: !305)
!512 = !DILocation(line: 297, column: 5, scope: !305)
!513 = !DILocation(line: 298, column: 25, scope: !305)
!514 = !DILocation(line: 298, column: 33, scope: !305)
!515 = !DILocation(line: 298, column: 31, scope: !305)
!516 = !DILocation(line: 298, column: 55, scope: !305)
!517 = !DILocation(line: 298, column: 14, scope: !305)
!518 = !DILocation(line: 302, column: 30, scope: !305)
!519 = !DILocation(line: 302, column: 38, scope: !305)
!520 = !DILocation(line: 302, column: 55, scope: !305)
!521 = !DILocation(line: 302, column: 44, scope: !305)
!522 = !DILocation(line: 302, column: 63, scope: !305)
!523 = !DILocation(line: 302, column: 8, scope: !305)
!524 = !DILocation(line: 303, column: 5, scope: !305)
!525 = !DILocation(line: 306, column: 3, scope: !305)
!526 = !DILocation(line: 307, column: 3, scope: !305)
!527 = !DILocation(line: 308, column: 13, scope: !305)
!528 = !DILocation(line: 308, column: 29, scope: !305)
!529 = !DILocation(line: 308, column: 25, scope: !305)
!530 = !DILocation(line: 309, column: 12, scope: !305)
!531 = !DILocation(line: 310, column: 11, scope: !305)
!532 = !DILocation(line: 311, column: 3, scope: !305)
!533 = !DILocation(line: 312, column: 10, scope: !305)
!534 = !DILocation(line: 312, column: 8, scope: !305)
!535 = !DILocation(line: 313, column: 14, scope: !305)
!536 = !DILocation(line: 313, column: 31, scope: !305)
!537 = !DILocation(line: 313, column: 5, scope: !305)
!538 = !DILocation(line: 315, column: 12, scope: !305)
!539 = !DILocation(line: 315, column: 10, scope: !305)
!540 = !DILocation(line: 316, column: 16, scope: !305)
!541 = !DILocation(line: 316, column: 36, scope: !305)
!542 = !DILocation(line: 316, column: 32, scope: !305)
!543 = !DILocation(line: 316, column: 12, scope: !305)
!544 = !DILocation(line: 316, column: 53, scope: !305)
!545 = !DILocation(line: 316, column: 70, scope: !305)
!546 = !DILocation(line: 316, column: 44, scope: !305)
!547 = !DILocation(line: 318, column: 5, scope: !305)
!548 = !DILocation(line: 319, column: 16, scope: !305)
!549 = !DILocation(line: 319, column: 31, scope: !305)
!550 = !DILocation(line: 319, column: 12, scope: !305)
!551 = !DILocation(line: 320, column: 18, scope: !305)
!552 = !DILocation(line: 320, column: 35, scope: !305)
!553 = !DILocation(line: 320, column: 9, scope: !305)
!554 = !DILocation(line: 322, column: 30, scope: !305)
!555 = !DILocation(line: 322, column: 14, scope: !305)
!556 = !DILocation(line: 323, column: 25, scope: !305)
!557 = !DILocation(line: 323, column: 20, scope: !305)
!558 = !DILocation(line: 323, column: 16, scope: !305)
!559 = !DILocation(line: 323, column: 42, scope: !305)
!560 = !DILocation(line: 323, column: 59, scope: !305)
!561 = !DILocation(line: 323, column: 33, scope: !305)
!562 = !DILocation(line: 325, column: 9, scope: !305)
!563 = !DILocation(line: 329, column: 9, scope: !305)
!564 = !DILocation(line: 332, column: 10, scope: !305)
!565 = !DILocation(line: 332, column: 8, scope: !305)
!566 = !DILocation(line: 330, column: 11, scope: !305)
!567 = !DILocation(line: 333, column: 33, scope: !305)
!568 = !DILocation(line: 333, column: 26, scope: !305)
!569 = !DILocation(line: 333, column: 11, scope: !305)
!570 = !DILocation(line: 334, column: 30, scope: !305)
!571 = !DILocation(line: 334, column: 38, scope: !305)
!572 = !DILocation(line: 335, column: 5, scope: !305)
!573 = !DILocation(line: 336, column: 15, scope: !305)
!574 = !DILocation(line: 336, column: 30, scope: !305)
!575 = !DILocation(line: 336, column: 53, scope: !305)
!576 = !DILocation(line: 336, column: 45, scope: !305)
!577 = !DILocation(line: 337, column: 12, scope: !305)
!578 = !DILocation(line: 337, column: 10, scope: !305)
!579 = !DILocation(line: 337, column: 22, scope: !305)
!580 = !DILocation(line: 337, column: 18, scope: !305)
!581 = !DILocation(line: 338, column: 9, scope: !305)
!582 = !DILocation(line: 339, column: 3, scope: !305)
!583 = !DILocation(line: 340, column: 11, scope: !305)
!584 = !DILocation(line: 341, column: 3, scope: !305)
!585 = !DILocation(line: 342, column: 3, scope: !305)
!586 = !DILocation(line: 343, column: 9, scope: !305)
!587 = !DILocation(line: 344, column: 19, scope: !305)
!588 = !DILocation(line: 344, column: 13, scope: !305)
!589 = !DILocation(line: 344, column: 49, scope: !305)
!590 = !DILocation(line: 344, column: 45, scope: !305)
!591 = !DILocation(line: 345, column: 9, scope: !305)
!592 = !DILocation(line: 346, column: 15, scope: !305)
!593 = !DILocation(line: 346, column: 9, scope: !305)
!594 = !DILocation(line: 347, column: 10, scope: !305)
!595 = !DILocation(line: 349, column: 55, scope: !305)
!596 = !DILocation(line: 348, column: 74, scope: !305)
!597 = !DILocation(line: 348, column: 53, scope: !305)
!598 = !DILocation(line: 348, column: 32, scope: !305)
!599 = !DILocation(line: 348, column: 11, scope: !305)
!600 = !DILocation(line: 350, column: 12, scope: !305)
!601 = !DILocation(line: 350, column: 26, scope: !305)
!602 = !DILocation(line: 350, column: 19, scope: !305)
!603 = !DILocation(line: 350, column: 50, scope: !305)
!604 = !DILocation(line: 350, column: 44, scope: !305)
!605 = !DILocation(line: 351, column: 22, scope: !305)
!606 = !DILocation(line: 352, column: 3, scope: !305)
!607 = !DILocation(line: 353, column: 12, scope: !305)
!608 = !DILocation(line: 353, column: 5, scope: !305)
!609 = !DILocation(line: 354, column: 20, scope: !305)
!610 = !DILocation(line: 354, column: 8, scope: !305)
!611 = !DILocation(line: 354, column: 31, scope: !305)
!612 = !DILocation(line: 354, column: 27, scope: !305)
!613 = !DILocation(line: 355, column: 8, scope: !305)
!614 = !DILocation(line: 356, column: 12, scope: !305)
!615 = !DILocation(line: 356, column: 3, scope: !305)
!616 = !DILocation(line: 357, column: 1, scope: !305)
!617 = distinct !DISubprogram(name: "basicmath___isinff", scope: !160, file: !160, line: 711, type: !129, scopeLine: 712, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!618 = !DILocation(line: 714, column: 3, scope: !617)
!619 = !DILocation(line: 715, column: 10, scope: !617)
!620 = !DILocation(line: 718, column: 30, scope: !617)
!621 = !DILocation(line: 718, column: 23, scope: !617)
!622 = !DILocation(line: 718, column: 3, scope: !617)
!623 = distinct !DISubprogram(name: "basicmath___fabsf", scope: !160, file: !160, line: 697, type: !129, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!624 = !DILocation(line: 700, column: 3, scope: !623)
!625 = !DILocation(line: 701, column: 3, scope: !623)
!626 = !DILocation(line: 702, column: 3, scope: !623)
!627 = distinct !DISubprogram(name: "basicmath___scalbnf", scope: !160, file: !160, line: 729, type: !129, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!628 = !DILocation(line: 732, column: 3, scope: !627)
!629 = !DILocation(line: 733, column: 27, scope: !627)
!630 = !DILocation(line: 734, column: 10, scope: !627)
!631 = !DILocation(line: 734, column: 8, scope: !627)
!632 = !DILocation(line: 735, column: 15, scope: !627)
!633 = !DILocation(line: 735, column: 30, scope: !627)
!634 = !DILocation(line: 735, column: 10, scope: !627)
!635 = !DILocation(line: 735, column: 37, scope: !627)
!636 = !DILocation(line: 736, column: 7, scope: !627)
!637 = !DILocation(line: 737, column: 5, scope: !627)
!638 = !DILocation(line: 738, column: 31, scope: !627)
!639 = !DILocation(line: 738, column: 39, scope: !627)
!640 = !DILocation(line: 739, column: 3, scope: !627)
!641 = !DILocation(line: 0, scope: !627)
!642 = !DILocation(line: 740, column: 10, scope: !627)
!643 = !DILocation(line: 740, column: 8, scope: !627)
!644 = !DILocation(line: 740, column: 29, scope: !627)
!645 = !DILocation(line: 740, column: 20, scope: !627)
!646 = !DILocation(line: 741, column: 9, scope: !627)
!647 = !DILocation(line: 742, column: 10, scope: !627)
!648 = !DILocation(line: 742, column: 18, scope: !627)
!649 = !DILocation(line: 742, column: 23, scope: !627)
!650 = !DILocation(line: 742, column: 8, scope: !627)
!651 = !DILocation(line: 743, column: 29, scope: !627)
!652 = !DILocation(line: 743, column: 27, scope: !627)
!653 = !DILocation(line: 743, column: 5, scope: !627)
!654 = !DILocation(line: 745, column: 10, scope: !627)
!655 = !DILocation(line: 745, column: 8, scope: !627)
!656 = !DILocation(line: 746, column: 29, scope: !627)
!657 = !DILocation(line: 746, column: 27, scope: !627)
!658 = !DILocation(line: 746, column: 5, scope: !627)
!659 = !DILocation(line: 748, column: 10, scope: !627)
!660 = !DILocation(line: 748, column: 8, scope: !627)
!661 = !DILocation(line: 749, column: 5, scope: !627)
!662 = !DILocation(line: 750, column: 5, scope: !627)
!663 = !DILocation(line: 752, column: 10, scope: !627)
!664 = !DILocation(line: 752, column: 8, scope: !627)
!665 = !DILocation(line: 753, column: 29, scope: !627)
!666 = !DILocation(line: 753, column: 27, scope: !627)
!667 = !DILocation(line: 753, column: 5, scope: !627)
!668 = !DILocation(line: 756, column: 3, scope: !627)
!669 = !DILocation(line: 757, column: 12, scope: !627)
!670 = !DILocation(line: 757, column: 3, scope: !627)
!671 = !DILocation(line: 758, column: 1, scope: !627)
!672 = distinct !DISubprogram(name: "basicmath___copysignf", scope: !160, file: !160, line: 642, type: !129, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!673 = !DILocation(line: 645, column: 3, scope: !672)
!674 = !DILocation(line: 646, column: 3, scope: !672)
!675 = !DILocation(line: 647, column: 3, scope: !672)
!676 = !DILocation(line: 648, column: 3, scope: !672)
!677 = distinct !DISubprogram(name: "basicmath___ieee754_rem_pio2f", scope: !160, file: !160, line: 398, type: !129, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!678 = !DILocation(line: 403, column: 3, scope: !677)
!679 = !DILocation(line: 404, column: 11, scope: !677)
!680 = !DILocation(line: 405, column: 11, scope: !677)
!681 = !DILocation(line: 405, column: 8, scope: !677)
!682 = !DILocation(line: 406, column: 12, scope: !677)
!683 = !DILocation(line: 407, column: 5, scope: !677)
!684 = !DILocation(line: 407, column: 12, scope: !677)
!685 = !DILocation(line: 408, column: 5, scope: !677)
!686 = !DILocation(line: 410, column: 11, scope: !677)
!687 = !DILocation(line: 410, column: 8, scope: !677)
!688 = !DILocation(line: 411, column: 13, scope: !677)
!689 = !DILocation(line: 411, column: 10, scope: !677)
!690 = !DILocation(line: 412, column: 13, scope: !677)
!691 = !DILocation(line: 413, column: 17, scope: !677)
!692 = !DILocation(line: 413, column: 32, scope: !677)
!693 = !DILocation(line: 413, column: 12, scope: !677)
!694 = !DILocation(line: 414, column: 20, scope: !677)
!695 = !DILocation(line: 414, column: 16, scope: !677)
!696 = !DILocation(line: 415, column: 22, scope: !677)
!697 = !DILocation(line: 415, column: 33, scope: !677)
!698 = !DILocation(line: 415, column: 9, scope: !677)
!699 = !DILocation(line: 415, column: 16, scope: !677)
!700 = !DILocation(line: 416, column: 7, scope: !677)
!701 = !DILocation(line: 417, column: 11, scope: !677)
!702 = !DILocation(line: 418, column: 20, scope: !677)
!703 = !DILocation(line: 418, column: 16, scope: !677)
!704 = !DILocation(line: 419, column: 22, scope: !677)
!705 = !DILocation(line: 419, column: 33, scope: !677)
!706 = !DILocation(line: 419, column: 9, scope: !677)
!707 = !DILocation(line: 419, column: 16, scope: !677)
!708 = !DILocation(line: 421, column: 7, scope: !677)
!709 = !DILocation(line: 423, column: 13, scope: !677)
!710 = !DILocation(line: 424, column: 17, scope: !677)
!711 = !DILocation(line: 424, column: 32, scope: !677)
!712 = !DILocation(line: 424, column: 12, scope: !677)
!713 = !DILocation(line: 425, column: 20, scope: !677)
!714 = !DILocation(line: 425, column: 16, scope: !677)
!715 = !DILocation(line: 426, column: 22, scope: !677)
!716 = !DILocation(line: 426, column: 33, scope: !677)
!717 = !DILocation(line: 426, column: 9, scope: !677)
!718 = !DILocation(line: 426, column: 16, scope: !677)
!719 = !DILocation(line: 427, column: 7, scope: !677)
!720 = !DILocation(line: 428, column: 11, scope: !677)
!721 = !DILocation(line: 429, column: 20, scope: !677)
!722 = !DILocation(line: 429, column: 16, scope: !677)
!723 = !DILocation(line: 430, column: 22, scope: !677)
!724 = !DILocation(line: 430, column: 33, scope: !677)
!725 = !DILocation(line: 430, column: 9, scope: !677)
!726 = !DILocation(line: 430, column: 16, scope: !677)
!727 = !DILocation(line: 432, column: 7, scope: !677)
!728 = !DILocation(line: 435, column: 11, scope: !677)
!729 = !DILocation(line: 435, column: 8, scope: !677)
!730 = !DILocation(line: 436, column: 10, scope: !677)
!731 = !DILocation(line: 437, column: 46, scope: !677)
!732 = !DILocation(line: 437, column: 10, scope: !677)
!733 = !DILocation(line: 438, column: 10, scope: !677)
!734 = !DILocation(line: 439, column: 12, scope: !677)
!735 = !DILocation(line: 440, column: 13, scope: !677)
!736 = !DILocation(line: 441, column: 12, scope: !677)
!737 = !DILocation(line: 441, column: 17, scope: !677)
!738 = !DILocation(line: 441, column: 36, scope: !677)
!739 = !DILocation(line: 441, column: 75, scope: !677)
!740 = !DILocation(line: 441, column: 54, scope: !677)
!741 = !DILocation(line: 441, column: 51, scope: !677)
!742 = !DILocation(line: 441, column: 10, scope: !677)
!743 = !DILocation(line: 442, column: 18, scope: !677)
!744 = !DILocation(line: 442, column: 14, scope: !677)
!745 = !DILocation(line: 443, column: 5, scope: !677)
!746 = !DILocation(line: 445, column: 15, scope: !677)
!747 = !DILocation(line: 446, column: 18, scope: !677)
!748 = !DILocation(line: 446, column: 14, scope: !677)
!749 = !DILocation(line: 447, column: 7, scope: !677)
!750 = !DILocation(line: 448, column: 24, scope: !677)
!751 = !DILocation(line: 448, column: 32, scope: !677)
!752 = !DILocation(line: 448, column: 13, scope: !677)
!753 = !DILocation(line: 449, column: 14, scope: !677)
!754 = !DILocation(line: 449, column: 12, scope: !677)
!755 = !DILocation(line: 451, column: 17, scope: !677)
!756 = !DILocation(line: 452, column: 16, scope: !677)
!757 = !DILocation(line: 453, column: 45, scope: !677)
!758 = !DILocation(line: 453, column: 51, scope: !677)
!759 = !DILocation(line: 453, column: 37, scope: !677)
!760 = !DILocation(line: 454, column: 20, scope: !677)
!761 = !DILocation(line: 455, column: 9, scope: !677)
!762 = !DILocation(line: 456, column: 26, scope: !677)
!763 = !DILocation(line: 456, column: 34, scope: !677)
!764 = !DILocation(line: 456, column: 15, scope: !677)
!765 = !DILocation(line: 457, column: 16, scope: !677)
!766 = !DILocation(line: 457, column: 14, scope: !677)
!767 = !DILocation(line: 459, column: 19, scope: !677)
!768 = !DILocation(line: 460, column: 18, scope: !677)
!769 = !DILocation(line: 461, column: 47, scope: !677)
!770 = !DILocation(line: 461, column: 53, scope: !677)
!771 = !DILocation(line: 461, column: 39, scope: !677)
!772 = !DILocation(line: 462, column: 22, scope: !677)
!773 = !DILocation(line: 463, column: 9, scope: !677)
!774 = !DILocation(line: 0, scope: !677)
!775 = !DILocation(line: 464, column: 7, scope: !677)
!776 = !DILocation(line: 466, column: 20, scope: !677)
!777 = !DILocation(line: 466, column: 18, scope: !677)
!778 = !DILocation(line: 466, column: 29, scope: !677)
!779 = !DILocation(line: 466, column: 5, scope: !677)
!780 = !DILocation(line: 466, column: 12, scope: !677)
!781 = !DILocation(line: 467, column: 13, scope: !677)
!782 = !DILocation(line: 467, column: 10, scope: !677)
!783 = !DILocation(line: 468, column: 17, scope: !677)
!784 = !DILocation(line: 468, column: 16, scope: !677)
!785 = !DILocation(line: 468, column: 14, scope: !677)
!786 = !DILocation(line: 469, column: 17, scope: !677)
!787 = !DILocation(line: 469, column: 16, scope: !677)
!788 = !DILocation(line: 469, column: 7, scope: !677)
!789 = !DILocation(line: 469, column: 14, scope: !677)
!790 = !DILocation(line: 470, column: 14, scope: !677)
!791 = !DILocation(line: 470, column: 7, scope: !677)
!792 = !DILocation(line: 471, column: 14, scope: !677)
!793 = !DILocation(line: 476, column: 11, scope: !677)
!794 = !DILocation(line: 476, column: 8, scope: !677)
!795 = !DILocation(line: 477, column: 25, scope: !677)
!796 = !DILocation(line: 477, column: 14, scope: !677)
!797 = !DILocation(line: 477, column: 21, scope: !677)
!798 = !DILocation(line: 477, column: 12, scope: !677)
!799 = !DILocation(line: 478, column: 5, scope: !677)
!800 = !DILocation(line: 484, column: 23, scope: !677)
!801 = !DILocation(line: 484, column: 12, scope: !677)
!802 = !DILocation(line: 484, column: 19, scope: !677)
!803 = !DILocation(line: 484, column: 10, scope: !677)
!804 = !DILocation(line: 485, column: 3, scope: !677)
!805 = !DILocation(line: 486, column: 1, scope: !677)
!806 = distinct !DISubprogram(name: "basicmath___kernel_cosf", scope: !160, file: !160, line: 574, type: !129, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!807 = !DILocation(line: 578, column: 3, scope: !806)
!808 = !DILocation(line: 579, column: 6, scope: !806)
!809 = !DILocation(line: 580, column: 11, scope: !806)
!810 = !DILocation(line: 580, column: 8, scope: !806)
!811 = !DILocation(line: 581, column: 12, scope: !806)
!812 = !DILocation(line: 581, column: 23, scope: !806)
!813 = !DILocation(line: 581, column: 10, scope: !806)
!814 = !DILocation(line: 581, column: 30, scope: !806)
!815 = !DILocation(line: 582, column: 3, scope: !806)
!816 = !DILocation(line: 583, column: 10, scope: !806)
!817 = !DILocation(line: 585, column: 71, scope: !806)
!818 = !DILocation(line: 585, column: 50, scope: !806)
!819 = !DILocation(line: 584, column: 69, scope: !806)
!820 = !DILocation(line: 584, column: 48, scope: !806)
!821 = !DILocation(line: 584, column: 27, scope: !806)
!822 = !DILocation(line: 584, column: 10, scope: !806)
!823 = !DILocation(line: 586, column: 11, scope: !806)
!824 = !DILocation(line: 586, column: 8, scope: !806)
!825 = !DILocation(line: 587, column: 58, scope: !806)
!826 = !DILocation(line: 587, column: 48, scope: !806)
!827 = !DILocation(line: 587, column: 26, scope: !806)
!828 = !DILocation(line: 587, column: 5, scope: !806)
!829 = !DILocation(line: 589, column: 13, scope: !806)
!830 = !DILocation(line: 589, column: 10, scope: !806)
!831 = !DILocation(line: 590, column: 7, scope: !806)
!832 = !DILocation(line: 592, column: 7, scope: !806)
!833 = !DILocation(line: 0, scope: !806)
!834 = !DILocation(line: 594, column: 28, scope: !806)
!835 = !DILocation(line: 595, column: 24, scope: !806)
!836 = !DILocation(line: 596, column: 31, scope: !806)
!837 = !DILocation(line: 596, column: 21, scope: !806)
!838 = !DILocation(line: 596, column: 14, scope: !806)
!839 = !DILocation(line: 596, column: 5, scope: !806)
!840 = !DILocation(line: 598, column: 1, scope: !806)
!841 = distinct !DISubprogram(name: "basicmath___kernel_sinf", scope: !160, file: !160, line: 612, type: !129, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!842 = !DILocation(line: 616, column: 3, scope: !841)
!843 = !DILocation(line: 617, column: 6, scope: !841)
!844 = !DILocation(line: 618, column: 11, scope: !841)
!845 = !DILocation(line: 618, column: 8, scope: !841)
!846 = !DILocation(line: 619, column: 10, scope: !841)
!847 = !DILocation(line: 619, column: 19, scope: !841)
!848 = !DILocation(line: 619, column: 26, scope: !841)
!849 = !DILocation(line: 620, column: 3, scope: !841)
!850 = !DILocation(line: 621, column: 10, scope: !841)
!851 = !DILocation(line: 622, column: 10, scope: !841)
!852 = !DILocation(line: 624, column: 44, scope: !841)
!853 = !DILocation(line: 623, column: 63, scope: !841)
!854 = !DILocation(line: 623, column: 42, scope: !841)
!855 = !DILocation(line: 623, column: 21, scope: !841)
!856 = !DILocation(line: 625, column: 11, scope: !841)
!857 = !DILocation(line: 625, column: 8, scope: !841)
!858 = !DILocation(line: 625, column: 48, scope: !841)
!859 = !DILocation(line: 625, column: 27, scope: !841)
!860 = !DILocation(line: 625, column: 18, scope: !841)
!861 = !DILocation(line: 626, column: 53, scope: !841)
!862 = !DILocation(line: 626, column: 63, scope: !841)
!863 = !DILocation(line: 626, column: 69, scope: !841)
!864 = !DILocation(line: 626, column: 22, scope: !841)
!865 = !DILocation(line: 626, column: 13, scope: !841)
!866 = !DILocation(line: 0, scope: !841)
!867 = !DILocation(line: 628, column: 1, scope: !841)
!868 = distinct !DISubprogram(name: "basicmath___cosf", scope: !160, file: !160, line: 656, type: !129, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!869 = !DILocation(line: 665, column: 12, scope: !868)
!870 = !DILocation(line: 665, column: 3, scope: !868)
!871 = distinct !DISubprogram(name: "__absvdi2", scope: !5, file: !5, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !130)
!872 = !DILocation(line: 25, column: 11, scope: !871)
!873 = !DILocation(line: 25, column: 9, scope: !871)
!874 = !DILocation(line: 26, column: 9, scope: !871)
!875 = !DILocation(line: 28, column: 20, scope: !871)
!876 = !DILocation(line: 28, column: 5, scope: !871)
!877 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !57, file: !57, line: 57, type: !129, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !130)
!878 = !DILocation(line: 59, column: 1, scope: !877)
!879 = distinct !DISubprogram(name: "__absvsi2", scope: !7, file: !7, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !130)
!880 = !DILocation(line: 25, column: 11, scope: !879)
!881 = !DILocation(line: 25, column: 9, scope: !879)
!882 = !DILocation(line: 26, column: 9, scope: !879)
!883 = !DILocation(line: 28, column: 20, scope: !879)
!884 = !DILocation(line: 28, column: 5, scope: !879)
!885 = distinct !DISubprogram(name: "__addvdi3", scope: !11, file: !11, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !130)
!886 = !DILocation(line: 24, column: 27, scope: !885)
!887 = !DILocation(line: 25, column: 11, scope: !885)
!888 = !DILocation(line: 25, column: 9, scope: !885)
!889 = !DILocation(line: 27, column: 15, scope: !885)
!890 = !DILocation(line: 27, column: 13, scope: !885)
!891 = !DILocation(line: 28, column: 13, scope: !885)
!892 = !DILocation(line: 29, column: 5, scope: !885)
!893 = !DILocation(line: 32, column: 15, scope: !885)
!894 = !DILocation(line: 32, column: 13, scope: !885)
!895 = !DILocation(line: 33, column: 13, scope: !885)
!896 = !DILocation(line: 35, column: 5, scope: !885)
!897 = distinct !DISubprogram(name: "__addvsi3", scope: !13, file: !13, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !130)
!898 = !DILocation(line: 24, column: 27, scope: !897)
!899 = !DILocation(line: 25, column: 11, scope: !897)
!900 = !DILocation(line: 25, column: 9, scope: !897)
!901 = !DILocation(line: 27, column: 15, scope: !897)
!902 = !DILocation(line: 27, column: 13, scope: !897)
!903 = !DILocation(line: 28, column: 13, scope: !897)
!904 = !DILocation(line: 29, column: 5, scope: !897)
!905 = !DILocation(line: 32, column: 15, scope: !897)
!906 = !DILocation(line: 32, column: 13, scope: !897)
!907 = !DILocation(line: 33, column: 13, scope: !897)
!908 = !DILocation(line: 35, column: 5, scope: !897)
!909 = distinct !DISubprogram(name: "__ashldi3", scope: !17, file: !17, line: 24, type: !129, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !130)
!910 = !DILocation(line: 29, column: 11, scope: !909)
!911 = !DILocation(line: 29, column: 15, scope: !909)
!912 = !DILocation(line: 30, column: 11, scope: !909)
!913 = !DILocation(line: 30, column: 9, scope: !909)
!914 = !DILocation(line: 32, column: 18, scope: !909)
!915 = !DILocation(line: 32, column: 22, scope: !909)
!916 = !DILocation(line: 33, column: 33, scope: !909)
!917 = !DILocation(line: 33, column: 43, scope: !909)
!918 = !DILocation(line: 33, column: 37, scope: !909)
!919 = !DILocation(line: 33, column: 16, scope: !909)
!920 = !DILocation(line: 33, column: 18, scope: !909)
!921 = !DILocation(line: 33, column: 23, scope: !909)
!922 = !DILocation(line: 34, column: 5, scope: !909)
!923 = !DILocation(line: 37, column: 15, scope: !909)
!924 = !DILocation(line: 37, column: 13, scope: !909)
!925 = !DILocation(line: 38, column: 13, scope: !909)
!926 = !DILocation(line: 39, column: 33, scope: !909)
!927 = !DILocation(line: 39, column: 37, scope: !909)
!928 = !DILocation(line: 39, column: 18, scope: !909)
!929 = !DILocation(line: 39, column: 23, scope: !909)
!930 = !DILocation(line: 40, column: 32, scope: !909)
!931 = !DILocation(line: 40, column: 34, scope: !909)
!932 = !DILocation(line: 40, column: 39, scope: !909)
!933 = !DILocation(line: 40, column: 56, scope: !909)
!934 = !DILocation(line: 40, column: 77, scope: !909)
!935 = !DILocation(line: 40, column: 60, scope: !909)
!936 = !DILocation(line: 40, column: 45, scope: !909)
!937 = !DILocation(line: 40, column: 16, scope: !909)
!938 = !DILocation(line: 40, column: 18, scope: !909)
!939 = !DILocation(line: 40, column: 23, scope: !909)
!940 = !DILocation(line: 42, column: 19, scope: !909)
!941 = !DILocation(line: 42, column: 5, scope: !909)
!942 = !DILocation(line: 0, scope: !909)
!943 = !DILocation(line: 43, column: 1, scope: !909)
!944 = distinct !DISubprogram(name: "__ashrdi3", scope: !21, file: !21, line: 24, type: !129, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !130)
!945 = !DILocation(line: 29, column: 11, scope: !944)
!946 = !DILocation(line: 29, column: 15, scope: !944)
!947 = !DILocation(line: 30, column: 11, scope: !944)
!948 = !DILocation(line: 30, column: 9, scope: !944)
!949 = !DILocation(line: 33, column: 31, scope: !944)
!950 = !DILocation(line: 33, column: 33, scope: !944)
!951 = !DILocation(line: 33, column: 38, scope: !944)
!952 = !DILocation(line: 33, column: 16, scope: !944)
!953 = !DILocation(line: 33, column: 18, scope: !944)
!954 = !DILocation(line: 33, column: 23, scope: !944)
!955 = !DILocation(line: 34, column: 30, scope: !944)
!956 = !DILocation(line: 34, column: 32, scope: !944)
!957 = !DILocation(line: 34, column: 43, scope: !944)
!958 = !DILocation(line: 34, column: 37, scope: !944)
!959 = !DILocation(line: 34, column: 18, scope: !944)
!960 = !DILocation(line: 34, column: 22, scope: !944)
!961 = !DILocation(line: 35, column: 5, scope: !944)
!962 = !DILocation(line: 38, column: 15, scope: !944)
!963 = !DILocation(line: 38, column: 13, scope: !944)
!964 = !DILocation(line: 39, column: 13, scope: !944)
!965 = !DILocation(line: 40, column: 32, scope: !944)
!966 = !DILocation(line: 40, column: 34, scope: !944)
!967 = !DILocation(line: 40, column: 39, scope: !944)
!968 = !DILocation(line: 40, column: 16, scope: !944)
!969 = !DILocation(line: 40, column: 18, scope: !944)
!970 = !DILocation(line: 40, column: 24, scope: !944)
!971 = !DILocation(line: 41, column: 31, scope: !944)
!972 = !DILocation(line: 41, column: 33, scope: !944)
!973 = !DILocation(line: 41, column: 55, scope: !944)
!974 = !DILocation(line: 41, column: 38, scope: !944)
!975 = !DILocation(line: 41, column: 72, scope: !944)
!976 = !DILocation(line: 41, column: 76, scope: !944)
!977 = !DILocation(line: 41, column: 61, scope: !944)
!978 = !DILocation(line: 41, column: 18, scope: !944)
!979 = !DILocation(line: 41, column: 22, scope: !944)
!980 = !DILocation(line: 43, column: 19, scope: !944)
!981 = !DILocation(line: 43, column: 5, scope: !944)
!982 = !DILocation(line: 0, scope: !944)
!983 = !DILocation(line: 44, column: 1, scope: !944)
!984 = distinct !DISubprogram(name: "__clzdi2", scope: !25, file: !25, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !130)
!985 = !DILocation(line: 25, column: 7, scope: !984)
!986 = !DILocation(line: 25, column: 11, scope: !984)
!987 = !DILocation(line: 26, column: 26, scope: !984)
!988 = !DILocation(line: 26, column: 28, scope: !984)
!989 = !DILocation(line: 26, column: 33, scope: !984)
!990 = !DILocation(line: 27, column: 29, scope: !984)
!991 = !DILocation(line: 27, column: 31, scope: !984)
!992 = !DILocation(line: 27, column: 49, scope: !984)
!993 = !DILocation(line: 27, column: 42, scope: !984)
!994 = !DILocation(line: 27, column: 12, scope: !984)
!995 = !{i32 0, i32 33}
!996 = !DILocation(line: 28, column: 15, scope: !984)
!997 = !DILocation(line: 27, column: 59, scope: !984)
!998 = !DILocation(line: 27, column: 5, scope: !984)
!999 = distinct !DISubprogram(name: "__clzsi2", scope: !27, file: !27, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !130)
!1000 = !DILocation(line: 25, column: 34, scope: !999)
!1001 = !DILocation(line: 25, column: 40, scope: !999)
!1002 = !DILocation(line: 26, column: 14, scope: !999)
!1003 = !DILocation(line: 26, column: 7, scope: !999)
!1004 = !DILocation(line: 29, column: 13, scope: !999)
!1005 = !DILocation(line: 29, column: 23, scope: !999)
!1006 = !DILocation(line: 29, column: 29, scope: !999)
!1007 = !DILocation(line: 30, column: 13, scope: !999)
!1008 = !DILocation(line: 30, column: 7, scope: !999)
!1009 = !DILocation(line: 31, column: 7, scope: !999)
!1010 = !DILocation(line: 33, column: 13, scope: !999)
!1011 = !DILocation(line: 33, column: 21, scope: !999)
!1012 = !DILocation(line: 33, column: 27, scope: !999)
!1013 = !DILocation(line: 34, column: 13, scope: !999)
!1014 = !DILocation(line: 34, column: 7, scope: !999)
!1015 = !DILocation(line: 35, column: 7, scope: !999)
!1016 = !DILocation(line: 37, column: 13, scope: !999)
!1017 = !DILocation(line: 37, column: 20, scope: !999)
!1018 = !DILocation(line: 37, column: 26, scope: !999)
!1019 = !DILocation(line: 38, column: 13, scope: !999)
!1020 = !DILocation(line: 38, column: 7, scope: !999)
!1021 = !DILocation(line: 39, column: 7, scope: !999)
!1022 = !DILocation(line: 52, column: 20, scope: !999)
!1023 = !DILocation(line: 52, column: 37, scope: !999)
!1024 = !DILocation(line: 52, column: 25, scope: !999)
!1025 = !DILocation(line: 52, column: 14, scope: !999)
!1026 = !DILocation(line: 52, column: 5, scope: !999)
!1027 = distinct !DISubprogram(name: "__cmpdi2", scope: !31, file: !31, line: 23, type: !129, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !130)
!1028 = !DILocation(line: 26, column: 7, scope: !1027)
!1029 = !DILocation(line: 26, column: 11, scope: !1027)
!1030 = !DILocation(line: 28, column: 7, scope: !1027)
!1031 = !DILocation(line: 28, column: 11, scope: !1027)
!1032 = !DILocation(line: 29, column: 11, scope: !1027)
!1033 = !DILocation(line: 29, column: 13, scope: !1027)
!1034 = !DILocation(line: 29, column: 22, scope: !1027)
!1035 = !DILocation(line: 29, column: 24, scope: !1027)
!1036 = !DILocation(line: 29, column: 18, scope: !1027)
!1037 = !DILocation(line: 29, column: 9, scope: !1027)
!1038 = !DILocation(line: 30, column: 9, scope: !1027)
!1039 = !DILocation(line: 31, column: 11, scope: !1027)
!1040 = !DILocation(line: 31, column: 13, scope: !1027)
!1041 = !DILocation(line: 31, column: 22, scope: !1027)
!1042 = !DILocation(line: 31, column: 24, scope: !1027)
!1043 = !DILocation(line: 31, column: 18, scope: !1027)
!1044 = !DILocation(line: 31, column: 9, scope: !1027)
!1045 = !DILocation(line: 32, column: 9, scope: !1027)
!1046 = !DILocation(line: 33, column: 13, scope: !1027)
!1047 = !DILocation(line: 33, column: 23, scope: !1027)
!1048 = !DILocation(line: 33, column: 17, scope: !1027)
!1049 = !DILocation(line: 33, column: 9, scope: !1027)
!1050 = !DILocation(line: 34, column: 9, scope: !1027)
!1051 = !DILocation(line: 35, column: 13, scope: !1027)
!1052 = !DILocation(line: 35, column: 23, scope: !1027)
!1053 = !DILocation(line: 35, column: 17, scope: !1027)
!1054 = !DILocation(line: 35, column: 9, scope: !1027)
!1055 = !DILocation(line: 36, column: 9, scope: !1027)
!1056 = !DILocation(line: 37, column: 5, scope: !1027)
!1057 = !DILocation(line: 0, scope: !1027)
!1058 = !DILocation(line: 38, column: 1, scope: !1027)
!1059 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !31, file: !31, line: 46, type: !129, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !130)
!1060 = !DILocation(line: 48, column: 9, scope: !1059)
!1061 = !DILocation(line: 48, column: 24, scope: !1059)
!1062 = !DILocation(line: 48, column: 2, scope: !1059)
!1063 = distinct !DISubprogram(name: "__ctzdi2", scope: !35, file: !35, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !130)
!1064 = !DILocation(line: 25, column: 7, scope: !1063)
!1065 = !DILocation(line: 25, column: 11, scope: !1063)
!1066 = !DILocation(line: 26, column: 28, scope: !1063)
!1067 = !DILocation(line: 26, column: 32, scope: !1063)
!1068 = !DILocation(line: 27, column: 29, scope: !1063)
!1069 = !DILocation(line: 27, column: 31, scope: !1063)
!1070 = !DILocation(line: 27, column: 41, scope: !1063)
!1071 = !DILocation(line: 27, column: 12, scope: !1063)
!1072 = !DILocation(line: 28, column: 18, scope: !1063)
!1073 = !DILocation(line: 27, column: 59, scope: !1063)
!1074 = !DILocation(line: 27, column: 5, scope: !1063)
!1075 = distinct !DISubprogram(name: "__ctzsi2", scope: !37, file: !37, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !130)
!1076 = !DILocation(line: 25, column: 20, scope: !1075)
!1077 = !DILocation(line: 25, column: 34, scope: !1075)
!1078 = !DILocation(line: 25, column: 40, scope: !1075)
!1079 = !DILocation(line: 26, column: 7, scope: !1075)
!1080 = !DILocation(line: 29, column: 13, scope: !1075)
!1081 = !DILocation(line: 29, column: 23, scope: !1075)
!1082 = !DILocation(line: 29, column: 29, scope: !1075)
!1083 = !DILocation(line: 30, column: 7, scope: !1075)
!1084 = !DILocation(line: 31, column: 7, scope: !1075)
!1085 = !DILocation(line: 33, column: 13, scope: !1075)
!1086 = !DILocation(line: 33, column: 21, scope: !1075)
!1087 = !DILocation(line: 33, column: 27, scope: !1075)
!1088 = !DILocation(line: 34, column: 7, scope: !1075)
!1089 = !DILocation(line: 35, column: 7, scope: !1075)
!1090 = !DILocation(line: 37, column: 13, scope: !1075)
!1091 = !DILocation(line: 37, column: 20, scope: !1075)
!1092 = !DILocation(line: 37, column: 26, scope: !1075)
!1093 = !DILocation(line: 38, column: 7, scope: !1075)
!1094 = !DILocation(line: 40, column: 7, scope: !1075)
!1095 = !DILocation(line: 56, column: 25, scope: !1075)
!1096 = !DILocation(line: 56, column: 20, scope: !1075)
!1097 = !DILocation(line: 56, column: 44, scope: !1075)
!1098 = !DILocation(line: 56, column: 32, scope: !1075)
!1099 = !DILocation(line: 56, column: 14, scope: !1075)
!1100 = !DILocation(line: 56, column: 5, scope: !1075)
!1101 = distinct !DISubprogram(name: "__divdi3", scope: !41, file: !41, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !130)
!1102 = !DILocation(line: 23, column: 20, scope: !1101)
!1103 = !DILocation(line: 24, column: 20, scope: !1101)
!1104 = !DILocation(line: 25, column: 12, scope: !1101)
!1105 = !DILocation(line: 25, column: 19, scope: !1101)
!1106 = !DILocation(line: 26, column: 12, scope: !1101)
!1107 = !DILocation(line: 26, column: 19, scope: !1101)
!1108 = !DILocation(line: 27, column: 9, scope: !1101)
!1109 = !DILocation(line: 28, column: 13, scope: !1101)
!1110 = !DILocation(line: 28, column: 44, scope: !1101)
!1111 = !DILocation(line: 28, column: 51, scope: !1101)
!1112 = !DILocation(line: 28, column: 5, scope: !1101)
!1113 = distinct !DISubprogram(name: "__udivmoddi4", scope: !99, file: !99, line: 24, type: !129, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !130)
!1114 = !DILocation(line: 29, column: 7, scope: !1113)
!1115 = !DILocation(line: 29, column: 11, scope: !1113)
!1116 = !DILocation(line: 31, column: 7, scope: !1113)
!1117 = !DILocation(line: 31, column: 11, scope: !1113)
!1118 = !DILocation(line: 36, column: 11, scope: !1113)
!1119 = !DILocation(line: 36, column: 13, scope: !1113)
!1120 = !DILocation(line: 36, column: 18, scope: !1113)
!1121 = !DILocation(line: 36, column: 9, scope: !1113)
!1122 = !DILocation(line: 38, column: 15, scope: !1113)
!1123 = !DILocation(line: 38, column: 17, scope: !1113)
!1124 = !DILocation(line: 38, column: 22, scope: !1113)
!1125 = !DILocation(line: 38, column: 13, scope: !1113)
!1126 = !DILocation(line: 44, column: 17, scope: !1113)
!1127 = !DILocation(line: 45, column: 28, scope: !1113)
!1128 = !DILocation(line: 45, column: 38, scope: !1113)
!1129 = !DILocation(line: 45, column: 32, scope: !1113)
!1130 = !DILocation(line: 45, column: 24, scope: !1113)
!1131 = !DILocation(line: 45, column: 22, scope: !1113)
!1132 = !DILocation(line: 45, column: 17, scope: !1113)
!1133 = !DILocation(line: 46, column: 24, scope: !1113)
!1134 = !DILocation(line: 46, column: 34, scope: !1113)
!1135 = !DILocation(line: 46, column: 28, scope: !1113)
!1136 = !DILocation(line: 46, column: 20, scope: !1113)
!1137 = !DILocation(line: 46, column: 13, scope: !1113)
!1138 = !DILocation(line: 52, column: 13, scope: !1113)
!1139 = !DILocation(line: 53, column: 24, scope: !1113)
!1140 = !DILocation(line: 53, column: 20, scope: !1113)
!1141 = !DILocation(line: 53, column: 18, scope: !1113)
!1142 = !DILocation(line: 53, column: 13, scope: !1113)
!1143 = !DILocation(line: 54, column: 9, scope: !1113)
!1144 = !DILocation(line: 57, column: 13, scope: !1113)
!1145 = !DILocation(line: 57, column: 17, scope: !1113)
!1146 = !DILocation(line: 57, column: 9, scope: !1113)
!1147 = !DILocation(line: 59, column: 15, scope: !1113)
!1148 = !DILocation(line: 59, column: 17, scope: !1113)
!1149 = !DILocation(line: 59, column: 22, scope: !1113)
!1150 = !DILocation(line: 59, column: 13, scope: !1113)
!1151 = !DILocation(line: 65, column: 17, scope: !1113)
!1152 = !DILocation(line: 66, column: 26, scope: !1113)
!1153 = !DILocation(line: 66, column: 28, scope: !1113)
!1154 = !DILocation(line: 66, column: 39, scope: !1113)
!1155 = !DILocation(line: 66, column: 33, scope: !1113)
!1156 = !DILocation(line: 66, column: 24, scope: !1113)
!1157 = !DILocation(line: 66, column: 22, scope: !1113)
!1158 = !DILocation(line: 66, column: 17, scope: !1113)
!1159 = !DILocation(line: 67, column: 22, scope: !1113)
!1160 = !DILocation(line: 67, column: 24, scope: !1113)
!1161 = !DILocation(line: 67, column: 35, scope: !1113)
!1162 = !DILocation(line: 67, column: 29, scope: !1113)
!1163 = !DILocation(line: 67, column: 20, scope: !1113)
!1164 = !DILocation(line: 67, column: 13, scope: !1113)
!1165 = !DILocation(line: 70, column: 17, scope: !1113)
!1166 = !DILocation(line: 70, column: 21, scope: !1113)
!1167 = !DILocation(line: 70, column: 13, scope: !1113)
!1168 = !DILocation(line: 76, column: 17, scope: !1113)
!1169 = !DILocation(line: 78, column: 30, scope: !1113)
!1170 = !DILocation(line: 78, column: 32, scope: !1113)
!1171 = !DILocation(line: 78, column: 41, scope: !1113)
!1172 = !DILocation(line: 78, column: 43, scope: !1113)
!1173 = !DILocation(line: 78, column: 37, scope: !1113)
!1174 = !DILocation(line: 78, column: 19, scope: !1113)
!1175 = !DILocation(line: 78, column: 21, scope: !1113)
!1176 = !DILocation(line: 78, column: 26, scope: !1113)
!1177 = !DILocation(line: 79, column: 21, scope: !1113)
!1178 = !DILocation(line: 79, column: 25, scope: !1113)
!1179 = !DILocation(line: 80, column: 26, scope: !1113)
!1180 = !DILocation(line: 80, column: 22, scope: !1113)
!1181 = !DILocation(line: 81, column: 13, scope: !1113)
!1182 = !DILocation(line: 82, column: 22, scope: !1113)
!1183 = !DILocation(line: 82, column: 24, scope: !1113)
!1184 = !DILocation(line: 82, column: 33, scope: !1113)
!1185 = !DILocation(line: 82, column: 35, scope: !1113)
!1186 = !DILocation(line: 82, column: 29, scope: !1113)
!1187 = !DILocation(line: 82, column: 20, scope: !1113)
!1188 = !DILocation(line: 82, column: 13, scope: !1113)
!1189 = !DILocation(line: 88, column: 16, scope: !1113)
!1190 = !DILocation(line: 88, column: 18, scope: !1113)
!1191 = !DILocation(line: 88, column: 28, scope: !1113)
!1192 = !DILocation(line: 88, column: 30, scope: !1113)
!1193 = !DILocation(line: 88, column: 35, scope: !1113)
!1194 = !DILocation(line: 88, column: 23, scope: !1113)
!1195 = !DILocation(line: 88, column: 41, scope: !1113)
!1196 = !DILocation(line: 88, column: 13, scope: !1113)
!1197 = !DILocation(line: 90, column: 17, scope: !1113)
!1198 = !DILocation(line: 92, column: 31, scope: !1113)
!1199 = !DILocation(line: 92, column: 21, scope: !1113)
!1200 = !DILocation(line: 92, column: 25, scope: !1113)
!1201 = !DILocation(line: 93, column: 30, scope: !1113)
!1202 = !DILocation(line: 93, column: 32, scope: !1113)
!1203 = !DILocation(line: 93, column: 42, scope: !1113)
!1204 = !DILocation(line: 93, column: 44, scope: !1113)
!1205 = !DILocation(line: 93, column: 49, scope: !1113)
!1206 = !DILocation(line: 93, column: 37, scope: !1113)
!1207 = !DILocation(line: 93, column: 19, scope: !1113)
!1208 = !DILocation(line: 93, column: 21, scope: !1113)
!1209 = !DILocation(line: 93, column: 26, scope: !1113)
!1210 = !DILocation(line: 94, column: 26, scope: !1113)
!1211 = !DILocation(line: 94, column: 22, scope: !1113)
!1212 = !DILocation(line: 95, column: 13, scope: !1113)
!1213 = !DILocation(line: 96, column: 22, scope: !1113)
!1214 = !DILocation(line: 96, column: 24, scope: !1113)
!1215 = !DILocation(line: 96, column: 48, scope: !1113)
!1216 = !DILocation(line: 96, column: 50, scope: !1113)
!1217 = !DILocation(line: 96, column: 32, scope: !1113)
!1218 = !DILocation(line: 96, column: 29, scope: !1113)
!1219 = !DILocation(line: 96, column: 20, scope: !1113)
!1220 = !DILocation(line: 96, column: 13, scope: !1113)
!1221 = !DILocation(line: 102, column: 30, scope: !1113)
!1222 = !DILocation(line: 102, column: 32, scope: !1113)
!1223 = !DILocation(line: 102, column: 14, scope: !1113)
!1224 = !DILocation(line: 102, column: 56, scope: !1113)
!1225 = !DILocation(line: 102, column: 58, scope: !1113)
!1226 = !DILocation(line: 102, column: 40, scope: !1113)
!1227 = !DILocation(line: 102, column: 38, scope: !1113)
!1228 = !DILocation(line: 104, column: 16, scope: !1113)
!1229 = !DILocation(line: 104, column: 13, scope: !1113)
!1230 = !DILocation(line: 106, column: 16, scope: !1113)
!1231 = !DILocation(line: 107, column: 26, scope: !1113)
!1232 = !DILocation(line: 107, column: 22, scope: !1113)
!1233 = !DILocation(line: 107, column: 17, scope: !1113)
!1234 = !DILocation(line: 108, column: 13, scope: !1113)
!1235 = !DILocation(line: 110, column: 9, scope: !1113)
!1236 = !DILocation(line: 113, column: 13, scope: !1113)
!1237 = !DILocation(line: 113, column: 17, scope: !1113)
!1238 = !DILocation(line: 114, column: 24, scope: !1113)
!1239 = !DILocation(line: 114, column: 45, scope: !1113)
!1240 = !DILocation(line: 114, column: 28, scope: !1113)
!1241 = !DILocation(line: 114, column: 11, scope: !1113)
!1242 = !DILocation(line: 114, column: 13, scope: !1113)
!1243 = !DILocation(line: 114, column: 18, scope: !1113)
!1244 = !DILocation(line: 116, column: 22, scope: !1113)
!1245 = !DILocation(line: 116, column: 24, scope: !1113)
!1246 = !DILocation(line: 116, column: 29, scope: !1113)
!1247 = !DILocation(line: 116, column: 11, scope: !1113)
!1248 = !DILocation(line: 116, column: 13, scope: !1113)
!1249 = !DILocation(line: 116, column: 18, scope: !1113)
!1250 = !DILocation(line: 117, column: 22, scope: !1113)
!1251 = !DILocation(line: 117, column: 24, scope: !1113)
!1252 = !DILocation(line: 117, column: 46, scope: !1113)
!1253 = !DILocation(line: 117, column: 29, scope: !1113)
!1254 = !DILocation(line: 117, column: 60, scope: !1113)
!1255 = !DILocation(line: 117, column: 64, scope: !1113)
!1256 = !DILocation(line: 117, column: 53, scope: !1113)
!1257 = !DILocation(line: 117, column: 13, scope: !1113)
!1258 = !DILocation(line: 117, column: 17, scope: !1113)
!1259 = !DILocation(line: 118, column: 5, scope: !1113)
!1260 = !DILocation(line: 121, column: 15, scope: !1113)
!1261 = !DILocation(line: 121, column: 17, scope: !1113)
!1262 = !DILocation(line: 121, column: 22, scope: !1113)
!1263 = !DILocation(line: 121, column: 13, scope: !1113)
!1264 = !DILocation(line: 127, column: 22, scope: !1113)
!1265 = !DILocation(line: 127, column: 43, scope: !1113)
!1266 = !DILocation(line: 127, column: 17, scope: !1113)
!1267 = !DILocation(line: 129, column: 21, scope: !1113)
!1268 = !DILocation(line: 130, column: 32, scope: !1113)
!1269 = !DILocation(line: 130, column: 43, scope: !1113)
!1270 = !DILocation(line: 130, column: 47, scope: !1113)
!1271 = !DILocation(line: 130, column: 36, scope: !1113)
!1272 = !DILocation(line: 130, column: 28, scope: !1113)
!1273 = !DILocation(line: 130, column: 26, scope: !1113)
!1274 = !DILocation(line: 130, column: 21, scope: !1113)
!1275 = !DILocation(line: 131, column: 25, scope: !1113)
!1276 = !DILocation(line: 131, column: 29, scope: !1113)
!1277 = !DILocation(line: 131, column: 21, scope: !1113)
!1278 = !DILocation(line: 132, column: 30, scope: !1113)
!1279 = !DILocation(line: 132, column: 21, scope: !1113)
!1280 = !DILocation(line: 133, column: 40, scope: !1113)
!1281 = !DILocation(line: 133, column: 22, scope: !1113)
!1282 = !DILocation(line: 134, column: 30, scope: !1113)
!1283 = !DILocation(line: 134, column: 32, scope: !1113)
!1284 = !DILocation(line: 134, column: 37, scope: !1113)
!1285 = !DILocation(line: 134, column: 19, scope: !1113)
!1286 = !DILocation(line: 134, column: 21, scope: !1113)
!1287 = !DILocation(line: 134, column: 26, scope: !1113)
!1288 = !DILocation(line: 135, column: 30, scope: !1113)
!1289 = !DILocation(line: 135, column: 32, scope: !1113)
!1290 = !DILocation(line: 135, column: 54, scope: !1113)
!1291 = !DILocation(line: 135, column: 37, scope: !1113)
!1292 = !DILocation(line: 135, column: 68, scope: !1113)
!1293 = !DILocation(line: 135, column: 72, scope: !1113)
!1294 = !DILocation(line: 135, column: 61, scope: !1113)
!1295 = !DILocation(line: 135, column: 21, scope: !1113)
!1296 = !DILocation(line: 135, column: 25, scope: !1113)
!1297 = !DILocation(line: 136, column: 26, scope: !1113)
!1298 = !DILocation(line: 136, column: 17, scope: !1113)
!1299 = !DILocation(line: 142, column: 55, scope: !1113)
!1300 = !DILocation(line: 142, column: 37, scope: !1113)
!1301 = !DILocation(line: 142, column: 35, scope: !1113)
!1302 = !DILocation(line: 142, column: 78, scope: !1113)
!1303 = !DILocation(line: 142, column: 80, scope: !1113)
!1304 = !DILocation(line: 142, column: 62, scope: !1113)
!1305 = !DILocation(line: 142, column: 60, scope: !1113)
!1306 = !DILocation(line: 147, column: 20, scope: !1113)
!1307 = !DILocation(line: 147, column: 17, scope: !1113)
!1308 = !DILocation(line: 149, column: 21, scope: !1113)
!1309 = !DILocation(line: 149, column: 25, scope: !1113)
!1310 = !DILocation(line: 150, column: 32, scope: !1113)
!1311 = !DILocation(line: 150, column: 19, scope: !1113)
!1312 = !DILocation(line: 150, column: 21, scope: !1113)
!1313 = !DILocation(line: 150, column: 26, scope: !1113)
!1314 = !DILocation(line: 151, column: 19, scope: !1113)
!1315 = !DILocation(line: 151, column: 21, scope: !1113)
!1316 = !DILocation(line: 151, column: 26, scope: !1113)
!1317 = !DILocation(line: 152, column: 29, scope: !1113)
!1318 = !DILocation(line: 152, column: 31, scope: !1113)
!1319 = !DILocation(line: 152, column: 21, scope: !1113)
!1320 = !DILocation(line: 152, column: 25, scope: !1113)
!1321 = !DILocation(line: 153, column: 13, scope: !1113)
!1322 = !DILocation(line: 154, column: 25, scope: !1113)
!1323 = !DILocation(line: 154, column: 22, scope: !1113)
!1324 = !DILocation(line: 156, column: 21, scope: !1113)
!1325 = !DILocation(line: 156, column: 25, scope: !1113)
!1326 = !DILocation(line: 157, column: 32, scope: !1113)
!1327 = !DILocation(line: 157, column: 53, scope: !1113)
!1328 = !DILocation(line: 157, column: 36, scope: !1113)
!1329 = !DILocation(line: 157, column: 19, scope: !1113)
!1330 = !DILocation(line: 157, column: 21, scope: !1113)
!1331 = !DILocation(line: 157, column: 26, scope: !1113)
!1332 = !DILocation(line: 158, column: 30, scope: !1113)
!1333 = !DILocation(line: 158, column: 32, scope: !1113)
!1334 = !DILocation(line: 158, column: 37, scope: !1113)
!1335 = !DILocation(line: 158, column: 19, scope: !1113)
!1336 = !DILocation(line: 158, column: 21, scope: !1113)
!1337 = !DILocation(line: 158, column: 26, scope: !1113)
!1338 = !DILocation(line: 159, column: 30, scope: !1113)
!1339 = !DILocation(line: 159, column: 32, scope: !1113)
!1340 = !DILocation(line: 159, column: 54, scope: !1113)
!1341 = !DILocation(line: 159, column: 37, scope: !1113)
!1342 = !DILocation(line: 159, column: 68, scope: !1113)
!1343 = !DILocation(line: 159, column: 72, scope: !1113)
!1344 = !DILocation(line: 159, column: 61, scope: !1113)
!1345 = !DILocation(line: 159, column: 21, scope: !1113)
!1346 = !DILocation(line: 159, column: 25, scope: !1113)
!1347 = !DILocation(line: 160, column: 13, scope: !1113)
!1348 = !DILocation(line: 163, column: 31, scope: !1113)
!1349 = !DILocation(line: 163, column: 53, scope: !1113)
!1350 = !DILocation(line: 163, column: 35, scope: !1113)
!1351 = !DILocation(line: 163, column: 21, scope: !1113)
!1352 = !DILocation(line: 163, column: 25, scope: !1113)
!1353 = !DILocation(line: 164, column: 31, scope: !1113)
!1354 = !DILocation(line: 164, column: 33, scope: !1113)
!1355 = !DILocation(line: 164, column: 56, scope: !1113)
!1356 = !DILocation(line: 164, column: 38, scope: !1113)
!1357 = !DILocation(line: 165, column: 33, scope: !1113)
!1358 = !DILocation(line: 165, column: 44, scope: !1113)
!1359 = !DILocation(line: 165, column: 37, scope: !1113)
!1360 = !DILocation(line: 164, column: 63, scope: !1113)
!1361 = !DILocation(line: 164, column: 19, scope: !1113)
!1362 = !DILocation(line: 164, column: 21, scope: !1113)
!1363 = !DILocation(line: 164, column: 26, scope: !1113)
!1364 = !DILocation(line: 166, column: 19, scope: !1113)
!1365 = !DILocation(line: 166, column: 21, scope: !1113)
!1366 = !DILocation(line: 166, column: 26, scope: !1113)
!1367 = !DILocation(line: 167, column: 29, scope: !1113)
!1368 = !DILocation(line: 167, column: 31, scope: !1113)
!1369 = !DILocation(line: 167, column: 43, scope: !1113)
!1370 = !DILocation(line: 167, column: 36, scope: !1113)
!1371 = !DILocation(line: 167, column: 21, scope: !1113)
!1372 = !DILocation(line: 167, column: 25, scope: !1113)
!1373 = !DILocation(line: 169, column: 9, scope: !1113)
!1374 = !DILocation(line: 176, column: 34, scope: !1113)
!1375 = !DILocation(line: 176, column: 36, scope: !1113)
!1376 = !DILocation(line: 176, column: 18, scope: !1113)
!1377 = !DILocation(line: 176, column: 60, scope: !1113)
!1378 = !DILocation(line: 176, column: 62, scope: !1113)
!1379 = !DILocation(line: 176, column: 44, scope: !1113)
!1380 = !DILocation(line: 176, column: 42, scope: !1113)
!1381 = !DILocation(line: 178, column: 20, scope: !1113)
!1382 = !DILocation(line: 178, column: 17, scope: !1113)
!1383 = !DILocation(line: 180, column: 21, scope: !1113)
!1384 = !DILocation(line: 181, column: 30, scope: !1113)
!1385 = !DILocation(line: 181, column: 26, scope: !1113)
!1386 = !DILocation(line: 181, column: 21, scope: !1113)
!1387 = !DILocation(line: 182, column: 17, scope: !1113)
!1388 = !DILocation(line: 184, column: 13, scope: !1113)
!1389 = !DILocation(line: 187, column: 17, scope: !1113)
!1390 = !DILocation(line: 187, column: 21, scope: !1113)
!1391 = !DILocation(line: 188, column: 20, scope: !1113)
!1392 = !DILocation(line: 188, column: 17, scope: !1113)
!1393 = !DILocation(line: 190, column: 32, scope: !1113)
!1394 = !DILocation(line: 190, column: 19, scope: !1113)
!1395 = !DILocation(line: 190, column: 21, scope: !1113)
!1396 = !DILocation(line: 190, column: 26, scope: !1113)
!1397 = !DILocation(line: 191, column: 19, scope: !1113)
!1398 = !DILocation(line: 191, column: 21, scope: !1113)
!1399 = !DILocation(line: 191, column: 26, scope: !1113)
!1400 = !DILocation(line: 192, column: 29, scope: !1113)
!1401 = !DILocation(line: 192, column: 31, scope: !1113)
!1402 = !DILocation(line: 192, column: 21, scope: !1113)
!1403 = !DILocation(line: 192, column: 25, scope: !1113)
!1404 = !DILocation(line: 193, column: 13, scope: !1113)
!1405 = !DILocation(line: 196, column: 32, scope: !1113)
!1406 = !DILocation(line: 196, column: 53, scope: !1113)
!1407 = !DILocation(line: 196, column: 36, scope: !1113)
!1408 = !DILocation(line: 196, column: 19, scope: !1113)
!1409 = !DILocation(line: 196, column: 21, scope: !1113)
!1410 = !DILocation(line: 196, column: 26, scope: !1113)
!1411 = !DILocation(line: 197, column: 30, scope: !1113)
!1412 = !DILocation(line: 197, column: 32, scope: !1113)
!1413 = !DILocation(line: 197, column: 37, scope: !1113)
!1414 = !DILocation(line: 197, column: 19, scope: !1113)
!1415 = !DILocation(line: 197, column: 21, scope: !1113)
!1416 = !DILocation(line: 197, column: 26, scope: !1113)
!1417 = !DILocation(line: 198, column: 30, scope: !1113)
!1418 = !DILocation(line: 198, column: 32, scope: !1113)
!1419 = !DILocation(line: 198, column: 54, scope: !1113)
!1420 = !DILocation(line: 198, column: 37, scope: !1113)
!1421 = !DILocation(line: 198, column: 68, scope: !1113)
!1422 = !DILocation(line: 198, column: 72, scope: !1113)
!1423 = !DILocation(line: 198, column: 61, scope: !1113)
!1424 = !DILocation(line: 198, column: 21, scope: !1113)
!1425 = !DILocation(line: 198, column: 25, scope: !1113)
!1426 = !DILocation(line: 0, scope: !1113)
!1427 = !DILocation(line: 209, column: 5, scope: !1113)
!1428 = !DILocation(line: 209, column: 15, scope: !1113)
!1429 = !DILocation(line: 212, column: 23, scope: !1113)
!1430 = !DILocation(line: 212, column: 25, scope: !1113)
!1431 = !DILocation(line: 212, column: 43, scope: !1113)
!1432 = !DILocation(line: 212, column: 36, scope: !1113)
!1433 = !DILocation(line: 212, column: 11, scope: !1113)
!1434 = !DILocation(line: 212, column: 13, scope: !1113)
!1435 = !DILocation(line: 212, column: 18, scope: !1113)
!1436 = !DILocation(line: 213, column: 41, scope: !1113)
!1437 = !DILocation(line: 213, column: 43, scope: !1113)
!1438 = !DILocation(line: 213, column: 36, scope: !1113)
!1439 = !DILocation(line: 213, column: 13, scope: !1113)
!1440 = !DILocation(line: 213, column: 18, scope: !1113)
!1441 = !DILocation(line: 214, column: 23, scope: !1113)
!1442 = !DILocation(line: 214, column: 25, scope: !1113)
!1443 = !DILocation(line: 214, column: 43, scope: !1113)
!1444 = !DILocation(line: 214, column: 36, scope: !1113)
!1445 = !DILocation(line: 214, column: 11, scope: !1113)
!1446 = !DILocation(line: 214, column: 13, scope: !1113)
!1447 = !DILocation(line: 214, column: 18, scope: !1113)
!1448 = !DILocation(line: 215, column: 30, scope: !1113)
!1449 = !DILocation(line: 215, column: 36, scope: !1113)
!1450 = !DILocation(line: 215, column: 13, scope: !1113)
!1451 = !DILocation(line: 215, column: 18, scope: !1113)
!1452 = !DILocation(line: 223, column: 37, scope: !1113)
!1453 = !DILocation(line: 223, column: 45, scope: !1113)
!1454 = !DILocation(line: 223, column: 49, scope: !1113)
!1455 = !DILocation(line: 225, column: 24, scope: !1113)
!1456 = !DILocation(line: 225, column: 11, scope: !1113)
!1457 = !DILocation(line: 225, column: 15, scope: !1113)
!1458 = !DILocation(line: 226, column: 5, scope: !1113)
!1459 = !DILocation(line: 224, column: 19, scope: !1113)
!1460 = !DILocation(line: 224, column: 17, scope: !1113)
!1461 = !DILocation(line: 209, column: 20, scope: !1113)
!1462 = distinct !{!1462, !1427, !1458, !152}
!1463 = !DILocation(line: 227, column: 16, scope: !1113)
!1464 = !DILocation(line: 227, column: 20, scope: !1113)
!1465 = !DILocation(line: 227, column: 28, scope: !1113)
!1466 = !DILocation(line: 227, column: 26, scope: !1113)
!1467 = !DILocation(line: 227, column: 7, scope: !1113)
!1468 = !DILocation(line: 227, column: 11, scope: !1113)
!1469 = !DILocation(line: 228, column: 9, scope: !1113)
!1470 = !DILocation(line: 229, column: 18, scope: !1113)
!1471 = !DILocation(line: 229, column: 14, scope: !1113)
!1472 = !DILocation(line: 229, column: 9, scope: !1113)
!1473 = !DILocation(line: 230, column: 14, scope: !1113)
!1474 = !DILocation(line: 230, column: 5, scope: !1113)
!1475 = !DILocation(line: 231, column: 1, scope: !1113)
!1476 = distinct !DISubprogram(name: "__divmoddi4", scope: !43, file: !43, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !130)
!1477 = !DILocation(line: 22, column: 14, scope: !1476)
!1478 = !DILocation(line: 23, column: 16, scope: !1476)
!1479 = !DILocation(line: 23, column: 12, scope: !1476)
!1480 = !DILocation(line: 23, column: 8, scope: !1476)
!1481 = !DILocation(line: 24, column: 3, scope: !1476)
!1482 = distinct !DISubprogram(name: "__divmodsi4", scope: !45, file: !45, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !130)
!1483 = !DILocation(line: 22, column: 14, scope: !1482)
!1484 = !DILocation(line: 23, column: 16, scope: !1482)
!1485 = !DILocation(line: 23, column: 12, scope: !1482)
!1486 = !DILocation(line: 23, column: 8, scope: !1482)
!1487 = !DILocation(line: 24, column: 3, scope: !1482)
!1488 = distinct !DISubprogram(name: "__divsi3", scope: !47, file: !47, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !130)
!1489 = !DILocation(line: 25, column: 20, scope: !1488)
!1490 = !DILocation(line: 26, column: 20, scope: !1488)
!1491 = !DILocation(line: 27, column: 12, scope: !1488)
!1492 = !DILocation(line: 27, column: 19, scope: !1488)
!1493 = !DILocation(line: 28, column: 12, scope: !1488)
!1494 = !DILocation(line: 28, column: 19, scope: !1488)
!1495 = !DILocation(line: 29, column: 9, scope: !1488)
!1496 = !DILocation(line: 36, column: 22, scope: !1488)
!1497 = !DILocation(line: 36, column: 33, scope: !1488)
!1498 = !DILocation(line: 36, column: 40, scope: !1488)
!1499 = !DILocation(line: 36, column: 5, scope: !1488)
!1500 = distinct !DISubprogram(name: "__ffsdi2", scope: !51, file: !51, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !130)
!1501 = !DILocation(line: 25, column: 7, scope: !1500)
!1502 = !DILocation(line: 25, column: 11, scope: !1500)
!1503 = !DILocation(line: 26, column: 13, scope: !1500)
!1504 = !DILocation(line: 26, column: 17, scope: !1500)
!1505 = !DILocation(line: 26, column: 9, scope: !1500)
!1506 = !DILocation(line: 28, column: 15, scope: !1500)
!1507 = !DILocation(line: 28, column: 17, scope: !1500)
!1508 = !DILocation(line: 28, column: 22, scope: !1500)
!1509 = !DILocation(line: 28, column: 13, scope: !1500)
!1510 = !DILocation(line: 29, column: 13, scope: !1500)
!1511 = !DILocation(line: 30, column: 32, scope: !1500)
!1512 = !DILocation(line: 30, column: 34, scope: !1500)
!1513 = !DILocation(line: 30, column: 16, scope: !1500)
!1514 = !DILocation(line: 30, column: 40, scope: !1500)
!1515 = !DILocation(line: 30, column: 9, scope: !1500)
!1516 = !DILocation(line: 32, column: 30, scope: !1500)
!1517 = !DILocation(line: 32, column: 12, scope: !1500)
!1518 = !DILocation(line: 32, column: 35, scope: !1500)
!1519 = !DILocation(line: 32, column: 5, scope: !1500)
!1520 = !DILocation(line: 0, scope: !1500)
!1521 = !DILocation(line: 33, column: 1, scope: !1500)
!1522 = distinct !DISubprogram(name: "__ffssi2", scope: !53, file: !53, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !130)
!1523 = !DILocation(line: 24, column: 11, scope: !1522)
!1524 = !DILocation(line: 24, column: 9, scope: !1522)
!1525 = !DILocation(line: 26, column: 9, scope: !1522)
!1526 = !DILocation(line: 28, column: 12, scope: !1522)
!1527 = !DILocation(line: 28, column: 29, scope: !1522)
!1528 = !DILocation(line: 28, column: 5, scope: !1522)
!1529 = !DILocation(line: 0, scope: !1522)
!1530 = !DILocation(line: 29, column: 1, scope: !1522)
!1531 = distinct !DISubprogram(name: "__lshrdi3", scope: !59, file: !59, line: 24, type: !129, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !130)
!1532 = !DILocation(line: 29, column: 11, scope: !1531)
!1533 = !DILocation(line: 29, column: 15, scope: !1531)
!1534 = !DILocation(line: 30, column: 11, scope: !1531)
!1535 = !DILocation(line: 30, column: 9, scope: !1531)
!1536 = !DILocation(line: 32, column: 16, scope: !1531)
!1537 = !DILocation(line: 32, column: 18, scope: !1531)
!1538 = !DILocation(line: 32, column: 23, scope: !1531)
!1539 = !DILocation(line: 33, column: 30, scope: !1531)
!1540 = !DILocation(line: 33, column: 32, scope: !1531)
!1541 = !DILocation(line: 33, column: 43, scope: !1531)
!1542 = !DILocation(line: 33, column: 37, scope: !1531)
!1543 = !DILocation(line: 33, column: 18, scope: !1531)
!1544 = !DILocation(line: 33, column: 22, scope: !1531)
!1545 = !DILocation(line: 34, column: 5, scope: !1531)
!1546 = !DILocation(line: 37, column: 15, scope: !1531)
!1547 = !DILocation(line: 37, column: 13, scope: !1531)
!1548 = !DILocation(line: 38, column: 13, scope: !1531)
!1549 = !DILocation(line: 39, column: 32, scope: !1531)
!1550 = !DILocation(line: 39, column: 34, scope: !1531)
!1551 = !DILocation(line: 39, column: 39, scope: !1531)
!1552 = !DILocation(line: 39, column: 16, scope: !1531)
!1553 = !DILocation(line: 39, column: 18, scope: !1531)
!1554 = !DILocation(line: 39, column: 24, scope: !1531)
!1555 = !DILocation(line: 40, column: 31, scope: !1531)
!1556 = !DILocation(line: 40, column: 33, scope: !1531)
!1557 = !DILocation(line: 40, column: 55, scope: !1531)
!1558 = !DILocation(line: 40, column: 38, scope: !1531)
!1559 = !DILocation(line: 40, column: 72, scope: !1531)
!1560 = !DILocation(line: 40, column: 76, scope: !1531)
!1561 = !DILocation(line: 40, column: 61, scope: !1531)
!1562 = !DILocation(line: 40, column: 18, scope: !1531)
!1563 = !DILocation(line: 40, column: 22, scope: !1531)
!1564 = !DILocation(line: 42, column: 19, scope: !1531)
!1565 = !DILocation(line: 42, column: 5, scope: !1531)
!1566 = !DILocation(line: 0, scope: !1531)
!1567 = !DILocation(line: 43, column: 1, scope: !1531)
!1568 = distinct !DISubprogram(name: "__moddi3", scope: !63, file: !63, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !130)
!1569 = !DILocation(line: 24, column: 17, scope: !1568)
!1570 = !DILocation(line: 25, column: 11, scope: !1568)
!1571 = !DILocation(line: 26, column: 12, scope: !1568)
!1572 = !DILocation(line: 26, column: 17, scope: !1568)
!1573 = !DILocation(line: 28, column: 5, scope: !1568)
!1574 = !DILocation(line: 29, column: 21, scope: !1568)
!1575 = !DILocation(line: 29, column: 23, scope: !1568)
!1576 = !DILocation(line: 29, column: 28, scope: !1568)
!1577 = !DILocation(line: 29, column: 5, scope: !1568)
!1578 = distinct !DISubprogram(name: "__modsi3", scope: !65, file: !65, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !130)
!1579 = !DILocation(line: 22, column: 16, scope: !1578)
!1580 = !DILocation(line: 22, column: 31, scope: !1578)
!1581 = !DILocation(line: 22, column: 14, scope: !1578)
!1582 = !DILocation(line: 22, column: 5, scope: !1578)
!1583 = distinct !DISubprogram(name: "__mulvdi3", scope: !69, file: !69, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !130)
!1584 = !DILocation(line: 27, column: 11, scope: !1583)
!1585 = !DILocation(line: 27, column: 9, scope: !1583)
!1586 = !DILocation(line: 29, column: 15, scope: !1583)
!1587 = !DILocation(line: 29, column: 20, scope: !1583)
!1588 = !DILocation(line: 29, column: 25, scope: !1583)
!1589 = !DILocation(line: 29, column: 13, scope: !1583)
!1590 = !DILocation(line: 30, column: 13, scope: !1583)
!1591 = !DILocation(line: 31, column: 9, scope: !1583)
!1592 = !DILocation(line: 33, column: 11, scope: !1583)
!1593 = !DILocation(line: 33, column: 9, scope: !1583)
!1594 = !DILocation(line: 35, column: 15, scope: !1583)
!1595 = !DILocation(line: 35, column: 20, scope: !1583)
!1596 = !DILocation(line: 35, column: 25, scope: !1583)
!1597 = !DILocation(line: 35, column: 13, scope: !1583)
!1598 = !DILocation(line: 36, column: 13, scope: !1583)
!1599 = !DILocation(line: 37, column: 9, scope: !1583)
!1600 = !DILocation(line: 39, column: 19, scope: !1583)
!1601 = !DILocation(line: 40, column: 23, scope: !1583)
!1602 = !DILocation(line: 40, column: 29, scope: !1583)
!1603 = !DILocation(line: 41, column: 19, scope: !1583)
!1604 = !DILocation(line: 42, column: 23, scope: !1583)
!1605 = !DILocation(line: 42, column: 29, scope: !1583)
!1606 = !DILocation(line: 43, column: 15, scope: !1583)
!1607 = !DILocation(line: 43, column: 19, scope: !1583)
!1608 = !DILocation(line: 43, column: 28, scope: !1583)
!1609 = !DILocation(line: 43, column: 9, scope: !1583)
!1610 = !DILocation(line: 44, column: 9, scope: !1583)
!1611 = !DILocation(line: 45, column: 12, scope: !1583)
!1612 = !DILocation(line: 45, column: 9, scope: !1583)
!1613 = !DILocation(line: 47, column: 25, scope: !1583)
!1614 = !DILocation(line: 47, column: 19, scope: !1583)
!1615 = !DILocation(line: 47, column: 13, scope: !1583)
!1616 = !DILocation(line: 48, column: 13, scope: !1583)
!1617 = !DILocation(line: 49, column: 5, scope: !1583)
!1618 = !DILocation(line: 52, column: 27, scope: !1583)
!1619 = !DILocation(line: 52, column: 25, scope: !1583)
!1620 = !DILocation(line: 52, column: 19, scope: !1583)
!1621 = !DILocation(line: 52, column: 13, scope: !1583)
!1622 = !DILocation(line: 53, column: 13, scope: !1583)
!1623 = !DILocation(line: 55, column: 5, scope: !1583)
!1624 = !DILocation(line: 0, scope: !1583)
!1625 = !DILocation(line: 56, column: 1, scope: !1583)
!1626 = distinct !DISubprogram(name: "__mulvsi3", scope: !71, file: !71, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !70, retainedNodes: !130)
!1627 = !DILocation(line: 27, column: 11, scope: !1626)
!1628 = !DILocation(line: 27, column: 9, scope: !1626)
!1629 = !DILocation(line: 29, column: 15, scope: !1626)
!1630 = !DILocation(line: 29, column: 20, scope: !1626)
!1631 = !DILocation(line: 29, column: 25, scope: !1626)
!1632 = !DILocation(line: 29, column: 13, scope: !1626)
!1633 = !DILocation(line: 30, column: 13, scope: !1626)
!1634 = !DILocation(line: 31, column: 9, scope: !1626)
!1635 = !DILocation(line: 33, column: 11, scope: !1626)
!1636 = !DILocation(line: 33, column: 9, scope: !1626)
!1637 = !DILocation(line: 35, column: 15, scope: !1626)
!1638 = !DILocation(line: 35, column: 20, scope: !1626)
!1639 = !DILocation(line: 35, column: 25, scope: !1626)
!1640 = !DILocation(line: 35, column: 13, scope: !1626)
!1641 = !DILocation(line: 36, column: 13, scope: !1626)
!1642 = !DILocation(line: 37, column: 9, scope: !1626)
!1643 = !DILocation(line: 39, column: 19, scope: !1626)
!1644 = !DILocation(line: 40, column: 23, scope: !1626)
!1645 = !DILocation(line: 40, column: 29, scope: !1626)
!1646 = !DILocation(line: 41, column: 19, scope: !1626)
!1647 = !DILocation(line: 42, column: 23, scope: !1626)
!1648 = !DILocation(line: 42, column: 29, scope: !1626)
!1649 = !DILocation(line: 43, column: 15, scope: !1626)
!1650 = !DILocation(line: 43, column: 19, scope: !1626)
!1651 = !DILocation(line: 43, column: 28, scope: !1626)
!1652 = !DILocation(line: 43, column: 9, scope: !1626)
!1653 = !DILocation(line: 44, column: 9, scope: !1626)
!1654 = !DILocation(line: 45, column: 12, scope: !1626)
!1655 = !DILocation(line: 45, column: 9, scope: !1626)
!1656 = !DILocation(line: 47, column: 25, scope: !1626)
!1657 = !DILocation(line: 47, column: 19, scope: !1626)
!1658 = !DILocation(line: 47, column: 13, scope: !1626)
!1659 = !DILocation(line: 48, column: 13, scope: !1626)
!1660 = !DILocation(line: 49, column: 5, scope: !1626)
!1661 = !DILocation(line: 52, column: 27, scope: !1626)
!1662 = !DILocation(line: 52, column: 25, scope: !1626)
!1663 = !DILocation(line: 52, column: 19, scope: !1626)
!1664 = !DILocation(line: 52, column: 13, scope: !1626)
!1665 = !DILocation(line: 53, column: 13, scope: !1626)
!1666 = !DILocation(line: 55, column: 5, scope: !1626)
!1667 = !DILocation(line: 0, scope: !1626)
!1668 = !DILocation(line: 56, column: 1, scope: !1626)
!1669 = distinct !DISubprogram(name: "__paritydi2", scope: !75, file: !75, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !130)
!1670 = !DILocation(line: 23, column: 7, scope: !1669)
!1671 = !DILocation(line: 23, column: 11, scope: !1669)
!1672 = !DILocation(line: 24, column: 26, scope: !1669)
!1673 = !DILocation(line: 24, column: 28, scope: !1669)
!1674 = !DILocation(line: 24, column: 39, scope: !1669)
!1675 = !DILocation(line: 24, column: 33, scope: !1669)
!1676 = !DILocation(line: 24, column: 12, scope: !1669)
!1677 = !DILocation(line: 24, column: 5, scope: !1669)
!1678 = distinct !DISubprogram(name: "__paritysi2", scope: !77, file: !77, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !130)
!1679 = !DILocation(line: 23, column: 12, scope: !1678)
!1680 = !DILocation(line: 23, column: 7, scope: !1678)
!1681 = !DILocation(line: 24, column: 12, scope: !1678)
!1682 = !DILocation(line: 24, column: 7, scope: !1678)
!1683 = !DILocation(line: 25, column: 12, scope: !1678)
!1684 = !DILocation(line: 25, column: 7, scope: !1678)
!1685 = !DILocation(line: 26, column: 26, scope: !1678)
!1686 = !DILocation(line: 26, column: 20, scope: !1678)
!1687 = !DILocation(line: 26, column: 34, scope: !1678)
!1688 = !DILocation(line: 26, column: 5, scope: !1678)
!1689 = distinct !DISubprogram(name: "__popcountdi2", scope: !81, file: !81, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !130)
!1690 = !DILocation(line: 23, column: 20, scope: !1689)
!1691 = !DILocation(line: 23, column: 26, scope: !1689)
!1692 = !DILocation(line: 23, column: 13, scope: !1689)
!1693 = !DILocation(line: 25, column: 15, scope: !1689)
!1694 = !DILocation(line: 25, column: 21, scope: !1689)
!1695 = !DILocation(line: 25, column: 52, scope: !1689)
!1696 = !DILocation(line: 25, column: 46, scope: !1689)
!1697 = !DILocation(line: 27, column: 20, scope: !1689)
!1698 = !DILocation(line: 27, column: 14, scope: !1689)
!1699 = !DILocation(line: 27, column: 27, scope: !1689)
!1700 = !DILocation(line: 29, column: 34, scope: !1689)
!1701 = !DILocation(line: 29, column: 28, scope: !1689)
!1702 = !DILocation(line: 29, column: 16, scope: !1689)
!1703 = !DILocation(line: 32, column: 16, scope: !1689)
!1704 = !DILocation(line: 32, column: 11, scope: !1689)
!1705 = !DILocation(line: 35, column: 20, scope: !1689)
!1706 = !DILocation(line: 35, column: 15, scope: !1689)
!1707 = !DILocation(line: 35, column: 27, scope: !1689)
!1708 = !DILocation(line: 35, column: 5, scope: !1689)
!1709 = distinct !DISubprogram(name: "__popcountsi2", scope: !83, file: !83, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !130)
!1710 = !DILocation(line: 23, column: 17, scope: !1709)
!1711 = !DILocation(line: 23, column: 23, scope: !1709)
!1712 = !DILocation(line: 23, column: 11, scope: !1709)
!1713 = !DILocation(line: 25, column: 13, scope: !1709)
!1714 = !DILocation(line: 25, column: 19, scope: !1709)
!1715 = !DILocation(line: 25, column: 38, scope: !1709)
!1716 = !DILocation(line: 25, column: 33, scope: !1709)
!1717 = !DILocation(line: 27, column: 17, scope: !1709)
!1718 = !DILocation(line: 27, column: 12, scope: !1709)
!1719 = !DILocation(line: 27, column: 24, scope: !1709)
!1720 = !DILocation(line: 29, column: 17, scope: !1709)
!1721 = !DILocation(line: 29, column: 12, scope: !1709)
!1722 = !DILocation(line: 32, column: 20, scope: !1709)
!1723 = !DILocation(line: 32, column: 15, scope: !1709)
!1724 = !DILocation(line: 32, column: 27, scope: !1709)
!1725 = !DILocation(line: 32, column: 5, scope: !1709)
!1726 = distinct !DISubprogram(name: "__subvdi3", scope: !87, file: !87, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !130)
!1727 = !DILocation(line: 24, column: 27, scope: !1726)
!1728 = !DILocation(line: 25, column: 11, scope: !1726)
!1729 = !DILocation(line: 25, column: 9, scope: !1726)
!1730 = !DILocation(line: 27, column: 15, scope: !1726)
!1731 = !DILocation(line: 27, column: 13, scope: !1726)
!1732 = !DILocation(line: 28, column: 13, scope: !1726)
!1733 = !DILocation(line: 29, column: 5, scope: !1726)
!1734 = !DILocation(line: 32, column: 15, scope: !1726)
!1735 = !DILocation(line: 32, column: 13, scope: !1726)
!1736 = !DILocation(line: 33, column: 13, scope: !1726)
!1737 = !DILocation(line: 35, column: 5, scope: !1726)
!1738 = distinct !DISubprogram(name: "__subvsi3", scope: !89, file: !89, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !88, retainedNodes: !130)
!1739 = !DILocation(line: 24, column: 27, scope: !1738)
!1740 = !DILocation(line: 25, column: 11, scope: !1738)
!1741 = !DILocation(line: 25, column: 9, scope: !1738)
!1742 = !DILocation(line: 27, column: 15, scope: !1738)
!1743 = !DILocation(line: 27, column: 13, scope: !1738)
!1744 = !DILocation(line: 28, column: 13, scope: !1738)
!1745 = !DILocation(line: 29, column: 5, scope: !1738)
!1746 = !DILocation(line: 32, column: 15, scope: !1738)
!1747 = !DILocation(line: 32, column: 13, scope: !1738)
!1748 = !DILocation(line: 33, column: 13, scope: !1738)
!1749 = !DILocation(line: 35, column: 5, scope: !1738)
!1750 = distinct !DISubprogram(name: "__ucmpdi2", scope: !93, file: !93, line: 23, type: !129, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !92, retainedNodes: !130)
!1751 = !DILocation(line: 26, column: 7, scope: !1750)
!1752 = !DILocation(line: 26, column: 11, scope: !1750)
!1753 = !DILocation(line: 28, column: 7, scope: !1750)
!1754 = !DILocation(line: 28, column: 11, scope: !1750)
!1755 = !DILocation(line: 29, column: 11, scope: !1750)
!1756 = !DILocation(line: 29, column: 13, scope: !1750)
!1757 = !DILocation(line: 29, column: 22, scope: !1750)
!1758 = !DILocation(line: 29, column: 24, scope: !1750)
!1759 = !DILocation(line: 29, column: 18, scope: !1750)
!1760 = !DILocation(line: 29, column: 9, scope: !1750)
!1761 = !DILocation(line: 30, column: 9, scope: !1750)
!1762 = !DILocation(line: 31, column: 11, scope: !1750)
!1763 = !DILocation(line: 31, column: 13, scope: !1750)
!1764 = !DILocation(line: 31, column: 22, scope: !1750)
!1765 = !DILocation(line: 31, column: 24, scope: !1750)
!1766 = !DILocation(line: 31, column: 18, scope: !1750)
!1767 = !DILocation(line: 31, column: 9, scope: !1750)
!1768 = !DILocation(line: 32, column: 9, scope: !1750)
!1769 = !DILocation(line: 33, column: 13, scope: !1750)
!1770 = !DILocation(line: 33, column: 23, scope: !1750)
!1771 = !DILocation(line: 33, column: 17, scope: !1750)
!1772 = !DILocation(line: 33, column: 9, scope: !1750)
!1773 = !DILocation(line: 34, column: 9, scope: !1750)
!1774 = !DILocation(line: 35, column: 13, scope: !1750)
!1775 = !DILocation(line: 35, column: 23, scope: !1750)
!1776 = !DILocation(line: 35, column: 17, scope: !1750)
!1777 = !DILocation(line: 35, column: 9, scope: !1750)
!1778 = !DILocation(line: 36, column: 9, scope: !1750)
!1779 = !DILocation(line: 37, column: 5, scope: !1750)
!1780 = !DILocation(line: 0, scope: !1750)
!1781 = !DILocation(line: 38, column: 1, scope: !1750)
!1782 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !93, file: !93, line: 46, type: !129, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !92, retainedNodes: !130)
!1783 = !DILocation(line: 48, column: 9, scope: !1782)
!1784 = !DILocation(line: 48, column: 25, scope: !1782)
!1785 = !DILocation(line: 48, column: 2, scope: !1782)
!1786 = distinct !DISubprogram(name: "__udivdi3", scope: !97, file: !97, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !130)
!1787 = !DILocation(line: 22, column: 12, scope: !1786)
!1788 = !DILocation(line: 22, column: 5, scope: !1786)
!1789 = distinct !DISubprogram(name: "__udivmodsi4", scope: !101, file: !101, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !130)
!1790 = !DILocation(line: 22, column: 14, scope: !1789)
!1791 = !DILocation(line: 23, column: 16, scope: !1789)
!1792 = !DILocation(line: 23, column: 12, scope: !1789)
!1793 = !DILocation(line: 23, column: 8, scope: !1789)
!1794 = !DILocation(line: 24, column: 3, scope: !1789)
!1795 = distinct !DISubprogram(name: "__udivsi3", scope: !105, file: !105, line: 25, type: !129, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !130)
!1796 = !DILocation(line: 32, column: 11, scope: !1795)
!1797 = !DILocation(line: 32, column: 9, scope: !1795)
!1798 = !DILocation(line: 33, column: 9, scope: !1795)
!1799 = !DILocation(line: 34, column: 11, scope: !1795)
!1800 = !DILocation(line: 34, column: 9, scope: !1795)
!1801 = !DILocation(line: 35, column: 9, scope: !1795)
!1802 = !DILocation(line: 36, column: 10, scope: !1795)
!1803 = !DILocation(line: 36, column: 29, scope: !1795)
!1804 = !DILocation(line: 36, column: 27, scope: !1795)
!1805 = !DILocation(line: 38, column: 12, scope: !1795)
!1806 = !DILocation(line: 38, column: 9, scope: !1795)
!1807 = !DILocation(line: 39, column: 9, scope: !1795)
!1808 = !DILocation(line: 40, column: 12, scope: !1795)
!1809 = !DILocation(line: 40, column: 9, scope: !1795)
!1810 = !DILocation(line: 41, column: 9, scope: !1795)
!1811 = !DILocation(line: 42, column: 5, scope: !1795)
!1812 = !DILocation(line: 45, column: 28, scope: !1795)
!1813 = !DILocation(line: 45, column: 11, scope: !1795)
!1814 = !DILocation(line: 46, column: 11, scope: !1795)
!1815 = !DILocation(line: 48, column: 5, scope: !1795)
!1816 = !DILocation(line: 0, scope: !1795)
!1817 = !DILocation(line: 48, column: 15, scope: !1795)
!1818 = !DILocation(line: 51, column: 22, scope: !1795)
!1819 = !DILocation(line: 60, column: 41, scope: !1795)
!1820 = !DILocation(line: 63, column: 5, scope: !1795)
!1821 = !DILocation(line: 62, column: 16, scope: !1795)
!1822 = !DILocation(line: 62, column: 11, scope: !1795)
!1823 = !DILocation(line: 61, column: 19, scope: !1795)
!1824 = !DILocation(line: 52, column: 16, scope: !1795)
!1825 = !DILocation(line: 52, column: 22, scope: !1795)
!1826 = !DILocation(line: 48, column: 20, scope: !1795)
!1827 = distinct !{!1827, !1815, !1820, !152}
!1828 = !DILocation(line: 64, column: 12, scope: !1795)
!1829 = !DILocation(line: 64, column: 18, scope: !1795)
!1830 = !DILocation(line: 65, column: 5, scope: !1795)
!1831 = !DILocation(line: 66, column: 1, scope: !1795)
!1832 = distinct !DISubprogram(name: "__umoddi3", scope: !109, file: !109, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !130)
!1833 = !DILocation(line: 23, column: 5, scope: !1832)
!1834 = !DILocation(line: 24, column: 12, scope: !1832)
!1835 = !DILocation(line: 24, column: 5, scope: !1832)
!1836 = distinct !DISubprogram(name: "__umodsi3", scope: !111, file: !111, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !130)
!1837 = !DILocation(line: 22, column: 16, scope: !1836)
!1838 = !DILocation(line: 22, column: 32, scope: !1836)
!1839 = !DILocation(line: 22, column: 14, scope: !1836)
!1840 = !DILocation(line: 22, column: 5, scope: !1836)
!1841 = distinct !DISubprogram(name: "memcpy", scope: !115, file: !115, line: 3, type: !129, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !130)
!1842 = !DILocation(line: 8, column: 6, scope: !1841)
!1843 = !DILocation(line: 0, scope: !1841)
!1844 = !DILocation(line: 8, column: 19, scope: !1841)
!1845 = !DILocation(line: 8, column: 2, scope: !1841)
!1846 = !DILocation(line: 9, column: 21, scope: !1841)
!1847 = !DILocation(line: 9, column: 3, scope: !1841)
!1848 = !DILocation(line: 9, column: 19, scope: !1841)
!1849 = !DILocation(line: 10, column: 2, scope: !1841)
!1850 = !DILocation(line: 8, column: 26, scope: !1841)
!1851 = distinct !{!1851, !1845, !1849, !152}
!1852 = !DILocation(line: 11, column: 1, scope: !1841)
!1853 = distinct !DISubprogram(name: "memset", scope: !115, file: !115, line: 13, type: !129, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !130)
!1854 = !DILocation(line: 17, column: 6, scope: !1853)
!1855 = !DILocation(line: 0, scope: !1853)
!1856 = !DILocation(line: 17, column: 19, scope: !1853)
!1857 = !DILocation(line: 17, column: 2, scope: !1853)
!1858 = !DILocation(line: 18, column: 13, scope: !1853)
!1859 = !DILocation(line: 18, column: 3, scope: !1853)
!1860 = !DILocation(line: 18, column: 11, scope: !1853)
!1861 = !DILocation(line: 19, column: 2, scope: !1853)
!1862 = !DILocation(line: 17, column: 26, scope: !1853)
!1863 = distinct !{!1863, !1857, !1861, !152}
!1864 = !DILocation(line: 20, column: 2, scope: !1853)
