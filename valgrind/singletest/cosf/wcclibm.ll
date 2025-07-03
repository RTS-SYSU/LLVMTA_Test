; ModuleID = '/workspaces/llvmta/testcases/batchtest/cosf/wcclibm.c'
source_filename = "/workspaces/llvmta/testcases/batchtest/cosf/wcclibm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%union.ieee_float_shape_type = type { float }

@basicmath_bp = internal constant [2 x float] [float 1.000000e+00, float 1.500000e+00], align 4, !dbg !0
@basicmath_dp_l = internal constant [2 x float] [float 0.000000e+00, float 0x3EBA39FB80000000], align 4, !dbg !136
@basicmath_dp_h = internal constant [2 x float] [float 0.000000e+00, float 0x3FE2B80000000000], align 4, !dbg !141
@basicmath_npio2_hw = internal constant [32 x i32] [i32 1070141184, i32 1078529792, i32 1083624192, i32 1086918400, i32 1090212608, i32 1092012800, i32 1093659904, i32 1095307008, i32 1096954112, i32 1098601216, i32 1099577856, i32 1100401408, i32 1101224960, i32 1102048512, i32 1102872064, i32 1103695616, i32 1104519168, i32 1105342720, i32 1106166272, i32 1106989824, i32 1107554816, i32 1107966464, i32 1108378368, i32 1108790016, i32 1109201920, i32 1109613568, i32 1110025472, i32 1110437120, i32 1110849024, i32 1111260672, i32 1111672576, i32 1112084224], align 4, !dbg !143

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___ieee754_acosf(float noundef %x) #0 !dbg !159 {
entry:
  %retval = alloca float, align 4
  %x.addr = alloca float, align 4
  %z = alloca float, align 4
  %p = alloca float, align 4
  %q = alloca float, align 4
  %r = alloca float, align 4
  %w = alloca float, align 4
  %s = alloca float, align 4
  %c = alloca float, align 4
  %df = alloca float, align 4
  %hx = alloca i32, align 4
  %ix = alloca i32, align 4
  %gf_u = alloca %union.ieee_float_shape_type, align 4
  %idf = alloca i32, align 4
  %gf_u49 = alloca %union.ieee_float_shape_type, align 4
  %sf_u = alloca %union.ieee_float_shape_type, align 4
  store float %x, float* %x.addr, align 4
  call void @llvm.dbg.declare(metadata float* %x.addr, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata float* %z, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata float* %p, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata float* %q, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata float* %r, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata float* %w, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata float* %s, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata float* %c, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata float* %df, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u, metadata !185, metadata !DIExpression()), !dbg !193
  %0 = load float, float* %x.addr, align 4, !dbg !193
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !193
  store float %0, float* %value, align 4, !dbg !193
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !193
  %1 = load i32, i32* %word, align 4, !dbg !193
  store i32 %1, i32* %hx, align 4, !dbg !193
  %2 = load i32, i32* %hx, align 4, !dbg !194
  %and = and i32 %2, 2147483647, !dbg !195
  store i32 %and, i32* %ix, align 4, !dbg !196
  %3 = load i32, i32* %ix, align 4, !dbg !197
  %cmp = icmp eq i32 %3, 1065353216, !dbg !199
  br i1 %cmp, label %if.then, label %if.else3, !dbg !200

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %hx, align 4, !dbg !201
  %cmp1 = icmp sgt i32 %4, 0, !dbg !204
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !205

if.then2:                                         ; preds = %if.then
  store float 0.000000e+00, float* %retval, align 4, !dbg !206
  br label %return, !dbg !206

if.else:                                          ; preds = %if.then
  store float 0x400921FB60000000, float* %retval, align 4, !dbg !207
  br label %return, !dbg !207

if.else3:                                         ; preds = %entry
  %5 = load i32, i32* %ix, align 4, !dbg !208
  %cmp4 = icmp sgt i32 %5, 1065353216, !dbg !210
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !211

if.then5:                                         ; preds = %if.else3
  %6 = load float, float* %x.addr, align 4, !dbg !212
  %7 = load float, float* %x.addr, align 4, !dbg !214
  %sub = fsub float %6, %7, !dbg !215
  %8 = load float, float* %x.addr, align 4, !dbg !216
  %9 = load float, float* %x.addr, align 4, !dbg !217
  %sub6 = fsub float %8, %9, !dbg !218
  %div = fdiv float %sub, %sub6, !dbg !219
  store float %div, float* %retval, align 4, !dbg !220
  br label %return, !dbg !220

if.end:                                           ; preds = %if.else3
  br label %if.end7

if.end7:                                          ; preds = %if.end
  %10 = load i32, i32* %ix, align 4, !dbg !221
  %cmp8 = icmp slt i32 %10, 1056964608, !dbg !223
  br i1 %cmp8, label %if.then9, label %if.else27, !dbg !224

if.then9:                                         ; preds = %if.end7
  %11 = load i32, i32* %ix, align 4, !dbg !225
  %cmp10 = icmp sle i32 %11, 587202560, !dbg !228
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !229

if.then11:                                        ; preds = %if.then9
  store float 0x3FF921FB60000000, float* %retval, align 4, !dbg !230
  br label %return, !dbg !230

if.end12:                                         ; preds = %if.then9
  %12 = load float, float* %x.addr, align 4, !dbg !231
  %13 = load float, float* %x.addr, align 4, !dbg !232
  %mul = fmul float %12, %13, !dbg !233
  store float %mul, float* %z, align 4, !dbg !234
  %14 = load float, float* %z, align 4, !dbg !235
  %15 = load float, float* %z, align 4, !dbg !236
  %16 = load float, float* %z, align 4, !dbg !237
  %17 = load float, float* %z, align 4, !dbg !238
  %18 = load float, float* %z, align 4, !dbg !239
  %19 = load float, float* %z, align 4, !dbg !240
  %20 = call float @llvm.fmuladd.f32(float %19, float 0x3F023DE100000000, float 0x3F49EFE080000000), !dbg !241
  %21 = call float @llvm.fmuladd.f32(float %18, float %20, float 0xBFA48228C0000000), !dbg !242
  %22 = call float @llvm.fmuladd.f32(float %17, float %21, float 0x3FC9C15500000000), !dbg !243
  %23 = call float @llvm.fmuladd.f32(float %16, float %22, float 0xBFD4D61200000000), !dbg !244
  %24 = call float @llvm.fmuladd.f32(float %15, float %23, float 0x3FC5555560000000), !dbg !245
  %mul18 = fmul float %14, %24, !dbg !246
  store float %mul18, float* %p, align 4, !dbg !247
  %25 = load float, float* %z, align 4, !dbg !248
  %26 = load float, float* %z, align 4, !dbg !249
  %27 = load float, float* %z, align 4, !dbg !250
  %28 = load float, float* %z, align 4, !dbg !251
  %29 = call float @llvm.fmuladd.f32(float %28, float 0x3FB3B8C5C0000000, float 0xBFE6066C20000000), !dbg !252
  %30 = call float @llvm.fmuladd.f32(float %27, float %29, float 0x40002AE5A0000000), !dbg !253
  %31 = call float @llvm.fmuladd.f32(float %26, float %30, float 0xC0033A2720000000), !dbg !254
  %32 = call float @llvm.fmuladd.f32(float %25, float %31, float 1.000000e+00), !dbg !255
  store float %32, float* %q, align 4, !dbg !256
  %33 = load float, float* %p, align 4, !dbg !257
  %34 = load float, float* %q, align 4, !dbg !258
  %div23 = fdiv float %33, %34, !dbg !259
  store float %div23, float* %r, align 4, !dbg !260
  %35 = load float, float* %x.addr, align 4, !dbg !261
  %36 = load float, float* %x.addr, align 4, !dbg !262
  %37 = load float, float* %r, align 4, !dbg !263
  %neg = fneg float %36, !dbg !264
  %38 = call float @llvm.fmuladd.f32(float %neg, float %37, float 0x3E74442D00000000), !dbg !264
  %sub25 = fsub float %35, %38, !dbg !265
  %sub26 = fsub float 0x3FF921FB40000000, %sub25, !dbg !266
  store float %sub26, float* %retval, align 4, !dbg !267
  br label %return, !dbg !267

if.else27:                                        ; preds = %if.end7
  %39 = load i32, i32* %hx, align 4, !dbg !268
  %cmp28 = icmp slt i32 %39, 0, !dbg !270
  br i1 %cmp28, label %if.then29, label %if.else45, !dbg !271

if.then29:                                        ; preds = %if.else27
  %40 = load float, float* %x.addr, align 4, !dbg !272
  %add = fadd float 1.000000e+00, %40, !dbg !274
  %mul30 = fmul float %add, 5.000000e-01, !dbg !275
  store float %mul30, float* %z, align 4, !dbg !276
  %41 = load float, float* %z, align 4, !dbg !277
  %42 = load float, float* %z, align 4, !dbg !278
  %43 = load float, float* %z, align 4, !dbg !279
  %44 = load float, float* %z, align 4, !dbg !280
  %45 = load float, float* %z, align 4, !dbg !281
  %46 = load float, float* %z, align 4, !dbg !282
  %47 = call float @llvm.fmuladd.f32(float %46, float 0x3F023DE100000000, float 0x3F49EFE080000000), !dbg !283
  %48 = call float @llvm.fmuladd.f32(float %45, float %47, float 0xBFA48228C0000000), !dbg !284
  %49 = call float @llvm.fmuladd.f32(float %44, float %48, float 0x3FC9C15500000000), !dbg !285
  %50 = call float @llvm.fmuladd.f32(float %43, float %49, float 0xBFD4D61200000000), !dbg !286
  %51 = call float @llvm.fmuladd.f32(float %42, float %50, float 0x3FC5555560000000), !dbg !287
  %mul36 = fmul float %41, %51, !dbg !288
  store float %mul36, float* %p, align 4, !dbg !289
  %52 = load float, float* %z, align 4, !dbg !290
  %53 = load float, float* %z, align 4, !dbg !291
  %54 = load float, float* %z, align 4, !dbg !292
  %55 = load float, float* %z, align 4, !dbg !293
  %56 = call float @llvm.fmuladd.f32(float %55, float 0x3FB3B8C5C0000000, float 0xBFE6066C20000000), !dbg !294
  %57 = call float @llvm.fmuladd.f32(float %54, float %56, float 0x40002AE5A0000000), !dbg !295
  %58 = call float @llvm.fmuladd.f32(float %53, float %57, float 0xC0033A2720000000), !dbg !296
  %59 = call float @llvm.fmuladd.f32(float %52, float %58, float 1.000000e+00), !dbg !297
  store float %59, float* %q, align 4, !dbg !298
  %60 = load float, float* %z, align 4, !dbg !299
  %call = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %60) #2, !dbg !300
  store float %call, float* %s, align 4, !dbg !301
  %61 = load float, float* %p, align 4, !dbg !302
  %62 = load float, float* %q, align 4, !dbg !303
  %div41 = fdiv float %61, %62, !dbg !304
  store float %div41, float* %r, align 4, !dbg !305
  %63 = load float, float* %r, align 4, !dbg !306
  %64 = load float, float* %s, align 4, !dbg !307
  %65 = call float @llvm.fmuladd.f32(float %63, float %64, float 0xBE74442D00000000), !dbg !308
  store float %65, float* %w, align 4, !dbg !309
  %66 = load float, float* %s, align 4, !dbg !310
  %67 = load float, float* %w, align 4, !dbg !311
  %add43 = fadd float %66, %67, !dbg !312
  %68 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %add43, float 0x400921FB40000000), !dbg !313
  store float %68, float* %retval, align 4, !dbg !314
  br label %return, !dbg !314

if.else45:                                        ; preds = %if.else27
  call void @llvm.dbg.declare(metadata i32* %idf, metadata !315, metadata !DIExpression()), !dbg !317
  %69 = load float, float* %x.addr, align 4, !dbg !318
  %sub46 = fsub float 1.000000e+00, %69, !dbg !319
  %mul47 = fmul float %sub46, 5.000000e-01, !dbg !320
  store float %mul47, float* %z, align 4, !dbg !321
  %70 = load float, float* %z, align 4, !dbg !322
  %call48 = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %70) #2, !dbg !323
  store float %call48, float* %s, align 4, !dbg !324
  %71 = load float, float* %s, align 4, !dbg !325
  store float %71, float* %df, align 4, !dbg !326
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u49, metadata !327, metadata !DIExpression()), !dbg !329
  %72 = load float, float* %df, align 4, !dbg !329
  %value50 = bitcast %union.ieee_float_shape_type* %gf_u49 to float*, !dbg !329
  store float %72, float* %value50, align 4, !dbg !329
  %word51 = bitcast %union.ieee_float_shape_type* %gf_u49 to i32*, !dbg !329
  %73 = load i32, i32* %word51, align 4, !dbg !329
  store i32 %73, i32* %idf, align 4, !dbg !329
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u, metadata !330, metadata !DIExpression()), !dbg !332
  %74 = load i32, i32* %idf, align 4, !dbg !332
  %and52 = and i32 %74, -4096, !dbg !332
  %word53 = bitcast %union.ieee_float_shape_type* %sf_u to i32*, !dbg !332
  store i32 %and52, i32* %word53, align 4, !dbg !332
  %value54 = bitcast %union.ieee_float_shape_type* %sf_u to float*, !dbg !332
  %75 = load float, float* %value54, align 4, !dbg !332
  store float %75, float* %df, align 4, !dbg !332
  %76 = load float, float* %z, align 4, !dbg !333
  %77 = load float, float* %df, align 4, !dbg !334
  %78 = load float, float* %df, align 4, !dbg !335
  %neg56 = fneg float %77, !dbg !336
  %79 = call float @llvm.fmuladd.f32(float %neg56, float %78, float %76), !dbg !336
  %80 = load float, float* %s, align 4, !dbg !337
  %81 = load float, float* %df, align 4, !dbg !338
  %add57 = fadd float %80, %81, !dbg !339
  %div58 = fdiv float %79, %add57, !dbg !340
  store float %div58, float* %c, align 4, !dbg !341
  %82 = load float, float* %z, align 4, !dbg !342
  %83 = load float, float* %z, align 4, !dbg !343
  %84 = load float, float* %z, align 4, !dbg !344
  %85 = load float, float* %z, align 4, !dbg !345
  %86 = load float, float* %z, align 4, !dbg !346
  %87 = load float, float* %z, align 4, !dbg !347
  %88 = call float @llvm.fmuladd.f32(float %87, float 0x3F023DE100000000, float 0x3F49EFE080000000), !dbg !348
  %89 = call float @llvm.fmuladd.f32(float %86, float %88, float 0xBFA48228C0000000), !dbg !349
  %90 = call float @llvm.fmuladd.f32(float %85, float %89, float 0x3FC9C15500000000), !dbg !350
  %91 = call float @llvm.fmuladd.f32(float %84, float %90, float 0xBFD4D61200000000), !dbg !351
  %92 = call float @llvm.fmuladd.f32(float %83, float %91, float 0x3FC5555560000000), !dbg !352
  %mul64 = fmul float %82, %92, !dbg !353
  store float %mul64, float* %p, align 4, !dbg !354
  %93 = load float, float* %z, align 4, !dbg !355
  %94 = load float, float* %z, align 4, !dbg !356
  %95 = load float, float* %z, align 4, !dbg !357
  %96 = load float, float* %z, align 4, !dbg !358
  %97 = call float @llvm.fmuladd.f32(float %96, float 0x3FB3B8C5C0000000, float 0xBFE6066C20000000), !dbg !359
  %98 = call float @llvm.fmuladd.f32(float %95, float %97, float 0x40002AE5A0000000), !dbg !360
  %99 = call float @llvm.fmuladd.f32(float %94, float %98, float 0xC0033A2720000000), !dbg !361
  %100 = call float @llvm.fmuladd.f32(float %93, float %99, float 1.000000e+00), !dbg !362
  store float %100, float* %q, align 4, !dbg !363
  %101 = load float, float* %p, align 4, !dbg !364
  %102 = load float, float* %q, align 4, !dbg !365
  %div69 = fdiv float %101, %102, !dbg !366
  store float %div69, float* %r, align 4, !dbg !367
  %103 = load float, float* %r, align 4, !dbg !368
  %104 = load float, float* %s, align 4, !dbg !369
  %105 = load float, float* %c, align 4, !dbg !370
  %106 = call float @llvm.fmuladd.f32(float %103, float %104, float %105), !dbg !371
  store float %106, float* %w, align 4, !dbg !372
  %107 = load float, float* %df, align 4, !dbg !373
  %108 = load float, float* %w, align 4, !dbg !374
  %add71 = fadd float %107, %108, !dbg !375
  %mul72 = fmul float 2.000000e+00, %add71, !dbg !376
  store float %mul72, float* %retval, align 4, !dbg !377
  br label %return, !dbg !377

return:                                           ; preds = %if.else45, %if.then29, %if.end12, %if.then11, %if.then5, %if.else, %if.then2
  %109 = load float, float* %retval, align 4, !dbg !378
  ret float %109, !dbg !378
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %x) #0 !dbg !379 {
entry:
  %retval = alloca float, align 4
  %x.addr = alloca float, align 4
  %z = alloca float, align 4
  %sign = alloca i32, align 4
  %ix = alloca i32, align 4
  %s = alloca i32, align 4
  %q = alloca i32, align 4
  %m = alloca i32, align 4
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %gf_u = alloca %union.ieee_float_shape_type, align 4
  %sf_u = alloca %union.ieee_float_shape_type, align 4
  store float %x, float* %x.addr, align 4
  call void @llvm.dbg.declare(metadata float* %x.addr, metadata !380, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.declare(metadata float* %z, metadata !382, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata i32* %sign, metadata !384, metadata !DIExpression()), !dbg !385
  store i32 -2147483648, i32* %sign, align 4, !dbg !385
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !386, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.declare(metadata i32* %s, metadata !388, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.declare(metadata i32* %q, metadata !390, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.declare(metadata i32* %m, metadata !392, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.declare(metadata i32* %t, metadata !394, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.declare(metadata i32* %i, metadata !396, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata i32* %r, metadata !398, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u, metadata !400, metadata !DIExpression()), !dbg !402
  %0 = load float, float* %x.addr, align 4, !dbg !402
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !402
  store float %0, float* %value, align 4, !dbg !402
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !402
  %1 = load i32, i32* %word, align 4, !dbg !402
  store i32 %1, i32* %ix, align 4, !dbg !402
  %2 = load i32, i32* %ix, align 4, !dbg !403
  %and = and i32 %2, 2139095040, !dbg !405
  %cmp = icmp eq i32 %and, 2139095040, !dbg !406
  br i1 %cmp, label %if.then, label %if.end, !dbg !407

if.then:                                          ; preds = %entry
  %3 = load float, float* %x.addr, align 4, !dbg !408
  %4 = load float, float* %x.addr, align 4, !dbg !410
  %5 = load float, float* %x.addr, align 4, !dbg !411
  %6 = call float @llvm.fmuladd.f32(float %3, float %4, float %5), !dbg !412
  store float %6, float* %retval, align 4, !dbg !413
  br label %return, !dbg !413

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %ix, align 4, !dbg !414
  %cmp1 = icmp sle i32 %7, 0, !dbg !416
  br i1 %cmp1, label %if.then2, label %if.end11, !dbg !417

if.then2:                                         ; preds = %if.end
  %8 = load i32, i32* %ix, align 4, !dbg !418
  %9 = load i32, i32* %sign, align 4, !dbg !421
  %neg = xor i32 %9, -1, !dbg !422
  %and3 = and i32 %8, %neg, !dbg !423
  %cmp4 = icmp eq i32 %and3, 0, !dbg !424
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !425

if.then5:                                         ; preds = %if.then2
  %10 = load float, float* %x.addr, align 4, !dbg !426
  store float %10, float* %retval, align 4, !dbg !427
  br label %return, !dbg !427

if.else:                                          ; preds = %if.then2
  %11 = load i32, i32* %ix, align 4, !dbg !428
  %cmp6 = icmp slt i32 %11, 0, !dbg !430
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !431

if.then7:                                         ; preds = %if.else
  %12 = load float, float* %x.addr, align 4, !dbg !432
  %13 = load float, float* %x.addr, align 4, !dbg !433
  %sub = fsub float %12, %13, !dbg !434
  %14 = load float, float* %x.addr, align 4, !dbg !435
  %15 = load float, float* %x.addr, align 4, !dbg !436
  %sub8 = fsub float %14, %15, !dbg !437
  %div = fdiv float %sub, %sub8, !dbg !438
  store float %div, float* %retval, align 4, !dbg !439
  br label %return, !dbg !439

if.end9:                                          ; preds = %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9
  br label %if.end11, !dbg !440

if.end11:                                         ; preds = %if.end10, %if.end
  %16 = load i32, i32* %ix, align 4, !dbg !441
  %shr = ashr i32 %16, 23, !dbg !442
  store i32 %shr, i32* %m, align 4, !dbg !443
  %17 = load i32, i32* %m, align 4, !dbg !444
  %cmp12 = icmp eq i32 %17, 0, !dbg !446
  br i1 %cmp12, label %if.then13, label %if.end18, !dbg !447

if.then13:                                        ; preds = %if.end11
  store i32 0, i32* %i, align 4, !dbg !448
  br label %for.cond, !dbg !451

for.cond:                                         ; preds = %for.inc, %if.then13
  %18 = load i32, i32* %ix, align 4, !dbg !452
  %and14 = and i32 %18, 8388608, !dbg !454
  %cmp15 = icmp eq i32 %and14, 0, !dbg !455
  br i1 %cmp15, label %for.body, label %for.end, !dbg !456

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %ix, align 4, !dbg !457
  %shl = shl i32 %19, 1, !dbg !457
  store i32 %shl, i32* %ix, align 4, !dbg !457
  br label %for.inc, !dbg !458

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !dbg !459
  %inc = add nsw i32 %20, 1, !dbg !459
  store i32 %inc, i32* %i, align 4, !dbg !459
  br label %for.cond, !dbg !460, !llvm.loop !461

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !dbg !464
  %sub16 = sub nsw i32 %21, 1, !dbg !465
  %22 = load i32, i32* %m, align 4, !dbg !466
  %sub17 = sub nsw i32 %22, %sub16, !dbg !466
  store i32 %sub17, i32* %m, align 4, !dbg !466
  br label %if.end18, !dbg !467

if.end18:                                         ; preds = %for.end, %if.end11
  %23 = load i32, i32* %m, align 4, !dbg !468
  %sub19 = sub nsw i32 %23, 127, !dbg !468
  store i32 %sub19, i32* %m, align 4, !dbg !468
  %24 = load i32, i32* %ix, align 4, !dbg !469
  %and20 = and i32 %24, 8388607, !dbg !470
  %or = or i32 %and20, 8388608, !dbg !471
  store i32 %or, i32* %ix, align 4, !dbg !472
  %25 = load i32, i32* %m, align 4, !dbg !473
  %and21 = and i32 %25, 1, !dbg !475
  %tobool = icmp ne i32 %and21, 0, !dbg !475
  br i1 %tobool, label %if.then22, label %if.end23, !dbg !476

if.then22:                                        ; preds = %if.end18
  %26 = load i32, i32* %ix, align 4, !dbg !477
  %27 = load i32, i32* %ix, align 4, !dbg !478
  %add = add nsw i32 %27, %26, !dbg !478
  store i32 %add, i32* %ix, align 4, !dbg !478
  br label %if.end23, !dbg !479

if.end23:                                         ; preds = %if.then22, %if.end18
  %28 = load i32, i32* %m, align 4, !dbg !480
  %shr24 = ashr i32 %28, 1, !dbg !480
  store i32 %shr24, i32* %m, align 4, !dbg !480
  %29 = load i32, i32* %ix, align 4, !dbg !481
  %30 = load i32, i32* %ix, align 4, !dbg !482
  %add25 = add nsw i32 %30, %29, !dbg !482
  store i32 %add25, i32* %ix, align 4, !dbg !482
  store i32 0, i32* %s, align 4, !dbg !483
  store i32 0, i32* %q, align 4, !dbg !484
  store i32 16777216, i32* %r, align 4, !dbg !485
  br label %while.cond, !dbg !486

while.cond:                                       ; preds = %while.body, %if.end23
  %31 = load i32, i32* %r, align 4, !dbg !487
  %cmp26 = icmp ne i32 %31, 0, !dbg !488
  br i1 %cmp26, label %while.body, label %while.end, !dbg !486

while.body:                                       ; preds = %while.cond
  %32 = load i32, i32* %s, align 4, !dbg !489
  %33 = load i32, i32* %r, align 4, !dbg !491
  %add27 = add i32 %32, %33, !dbg !492
  store i32 %add27, i32* %t, align 4, !dbg !493
  %34 = load i32, i32* %t, align 4, !dbg !494
  %35 = load i32, i32* %r, align 4, !dbg !495
  %add28 = add i32 %34, %35, !dbg !496
  store i32 %add28, i32* %s, align 4, !dbg !497
  %36 = load i32, i32* %t, align 4, !dbg !498
  %37 = load i32, i32* %ix, align 4, !dbg !499
  %sub29 = sub nsw i32 %37, %36, !dbg !499
  store i32 %sub29, i32* %ix, align 4, !dbg !499
  %38 = load i32, i32* %r, align 4, !dbg !500
  %39 = load i32, i32* %q, align 4, !dbg !501
  %add30 = add i32 %39, %38, !dbg !501
  store i32 %add30, i32* %q, align 4, !dbg !501
  %40 = load i32, i32* %ix, align 4, !dbg !502
  %41 = load i32, i32* %ix, align 4, !dbg !503
  %add31 = add nsw i32 %41, %40, !dbg !503
  store i32 %add31, i32* %ix, align 4, !dbg !503
  %42 = load i32, i32* %r, align 4, !dbg !504
  %shr32 = lshr i32 %42, 1, !dbg !504
  store i32 %shr32, i32* %r, align 4, !dbg !504
  br label %while.cond, !dbg !486, !llvm.loop !505

while.end:                                        ; preds = %while.cond
  %43 = load i32, i32* %ix, align 4, !dbg !507
  %cmp33 = icmp ne i32 %43, 0, !dbg !509
  br i1 %cmp33, label %if.then34, label %if.end45, !dbg !510

if.then34:                                        ; preds = %while.end
  store float 1.000000e+00, float* %z, align 4, !dbg !511
  %44 = load float, float* %z, align 4, !dbg !513
  %cmp35 = fcmp oge float %44, 1.000000e+00, !dbg !515
  br i1 %cmp35, label %if.then36, label %if.end44, !dbg !516

if.then36:                                        ; preds = %if.then34
  store float 1.000000e+00, float* %z, align 4, !dbg !517
  %45 = load float, float* %z, align 4, !dbg !519
  %cmp37 = fcmp ogt float %45, 1.000000e+00, !dbg !521
  br i1 %cmp37, label %if.then38, label %if.else40, !dbg !522

if.then38:                                        ; preds = %if.then36
  %46 = load i32, i32* %q, align 4, !dbg !523
  %add39 = add nsw i32 %46, 2, !dbg !523
  store i32 %add39, i32* %q, align 4, !dbg !523
  br label %if.end43, !dbg !524

if.else40:                                        ; preds = %if.then36
  %47 = load i32, i32* %q, align 4, !dbg !525
  %and41 = and i32 %47, 1, !dbg !526
  %48 = load i32, i32* %q, align 4, !dbg !527
  %add42 = add nsw i32 %48, %and41, !dbg !527
  store i32 %add42, i32* %q, align 4, !dbg !527
  br label %if.end43

if.end43:                                         ; preds = %if.else40, %if.then38
  br label %if.end44, !dbg !528

if.end44:                                         ; preds = %if.end43, %if.then34
  br label %if.end45, !dbg !529

if.end45:                                         ; preds = %if.end44, %while.end
  %49 = load i32, i32* %q, align 4, !dbg !530
  %shr46 = ashr i32 %49, 1, !dbg !531
  %add47 = add nsw i32 %shr46, 1056964608, !dbg !532
  store i32 %add47, i32* %ix, align 4, !dbg !533
  %50 = load i32, i32* %m, align 4, !dbg !534
  %shl48 = shl i32 %50, 23, !dbg !535
  %51 = load i32, i32* %ix, align 4, !dbg !536
  %add49 = add nsw i32 %51, %shl48, !dbg !536
  store i32 %add49, i32* %ix, align 4, !dbg !536
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u, metadata !537, metadata !DIExpression()), !dbg !539
  %52 = load i32, i32* %ix, align 4, !dbg !539
  %word50 = bitcast %union.ieee_float_shape_type* %sf_u to i32*, !dbg !539
  store i32 %52, i32* %word50, align 4, !dbg !539
  %value51 = bitcast %union.ieee_float_shape_type* %sf_u to float*, !dbg !539
  %53 = load float, float* %value51, align 4, !dbg !539
  store float %53, float* %z, align 4, !dbg !539
  %54 = load float, float* %z, align 4, !dbg !540
  store float %54, float* %retval, align 4, !dbg !541
  br label %return, !dbg !541

return:                                           ; preds = %if.end45, %if.then7, %if.then5, %if.then
  %55 = load float, float* %retval, align 4, !dbg !542
  ret float %55, !dbg !542
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___ieee754_powf(float noundef %x, float noundef %y) #0 !dbg !543 {
entry:
  %retval = alloca float, align 4
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %z = alloca float, align 4
  %ax = alloca float, align 4
  %z_h = alloca float, align 4
  %z_l = alloca float, align 4
  %p_h = alloca float, align 4
  %p_l = alloca float, align 4
  %y1 = alloca float, align 4
  %t1 = alloca float, align 4
  %t2 = alloca float, align 4
  %r = alloca float, align 4
  %s = alloca float, align 4
  %t = alloca float, align 4
  %u = alloca float, align 4
  %v = alloca float, align 4
  %w = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %yisint = alloca i32, align 4
  %n = alloca i32, align 4
  %hx = alloca i32, align 4
  %hy = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %is = alloca i32, align 4
  %gf_u = alloca %union.ieee_float_shape_type, align 4
  %gf_u1 = alloca %union.ieee_float_shape_type, align 4
  %gf_u123 = alloca %union.ieee_float_shape_type, align 4
  %sf_u = alloca %union.ieee_float_shape_type, align 4
  %s2 = alloca float, align 4
  %s_h = alloca float, align 4
  %s_l = alloca float, align 4
  %t_h = alloca float, align 4
  %t_l = alloca float, align 4
  %gf_u136 = alloca %union.ieee_float_shape_type, align 4
  %sf_u155 = alloca %union.ieee_float_shape_type, align 4
  %gf_u163 = alloca %union.ieee_float_shape_type, align 4
  %sf_u166 = alloca %union.ieee_float_shape_type, align 4
  %sf_u170 = alloca %union.ieee_float_shape_type, align 4
  %gf_u199 = alloca %union.ieee_float_shape_type, align 4
  %sf_u202 = alloca %union.ieee_float_shape_type, align 4
  %gf_u213 = alloca %union.ieee_float_shape_type, align 4
  %sf_u216 = alloca %union.ieee_float_shape_type, align 4
  %gf_u231 = alloca %union.ieee_float_shape_type, align 4
  %sf_u234 = alloca %union.ieee_float_shape_type, align 4
  %gf_u252 = alloca %union.ieee_float_shape_type, align 4
  %sf_u255 = alloca %union.ieee_float_shape_type, align 4
  %gf_u264 = alloca %union.ieee_float_shape_type, align 4
  %sf_u318 = alloca %union.ieee_float_shape_type, align 4
  %gf_u336 = alloca %union.ieee_float_shape_type, align 4
  %sf_u339 = alloca %union.ieee_float_shape_type, align 4
  %gf_u365 = alloca %union.ieee_float_shape_type, align 4
  %sf_u376 = alloca %union.ieee_float_shape_type, align 4
  store float %x, float* %x.addr, align 4
  call void @llvm.dbg.declare(metadata float* %x.addr, metadata !546, metadata !DIExpression()), !dbg !547
  store float %y, float* %y.addr, align 4
  call void @llvm.dbg.declare(metadata float* %y.addr, metadata !548, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.declare(metadata float* %z, metadata !550, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.declare(metadata float* %ax, metadata !552, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.declare(metadata float* %z_h, metadata !554, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.declare(metadata float* %z_l, metadata !556, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.declare(metadata float* %p_h, metadata !558, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.declare(metadata float* %p_l, metadata !560, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.declare(metadata float* %y1, metadata !562, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.declare(metadata float* %t1, metadata !564, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.declare(metadata float* %t2, metadata !566, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.declare(metadata float* %r, metadata !568, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.declare(metadata float* %s, metadata !570, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.declare(metadata float* %t, metadata !572, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.declare(metadata float* %u, metadata !574, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.declare(metadata float* %v, metadata !576, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.declare(metadata float* %w, metadata !578, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.declare(metadata i32* %i, metadata !580, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.declare(metadata i32* %j, metadata !582, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.declare(metadata i32* %k, metadata !584, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.declare(metadata i32* %yisint, metadata !586, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.declare(metadata i32* %n, metadata !588, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !590, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.declare(metadata i32* %hy, metadata !592, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !594, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.declare(metadata i32* %iy, metadata !596, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.declare(metadata i32* %is, metadata !598, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u, metadata !600, metadata !DIExpression()), !dbg !602
  %0 = load float, float* %x.addr, align 4, !dbg !602
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !602
  store float %0, float* %value, align 4, !dbg !602
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !602
  %1 = load i32, i32* %word, align 4, !dbg !602
  store i32 %1, i32* %hx, align 4, !dbg !602
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u1, metadata !603, metadata !DIExpression()), !dbg !605
  %2 = load float, float* %y.addr, align 4, !dbg !605
  %value2 = bitcast %union.ieee_float_shape_type* %gf_u1 to float*, !dbg !605
  store float %2, float* %value2, align 4, !dbg !605
  %word3 = bitcast %union.ieee_float_shape_type* %gf_u1 to i32*, !dbg !605
  %3 = load i32, i32* %word3, align 4, !dbg !605
  store i32 %3, i32* %hy, align 4, !dbg !605
  %4 = load i32, i32* %hx, align 4, !dbg !606
  %and = and i32 %4, 2147483647, !dbg !607
  store i32 %and, i32* %ix, align 4, !dbg !608
  %5 = load i32, i32* %hy, align 4, !dbg !609
  %and4 = and i32 %5, 2147483647, !dbg !610
  store i32 %and4, i32* %iy, align 4, !dbg !611
  %6 = load i32, i32* %iy, align 4, !dbg !612
  %cmp = icmp eq i32 %6, 0, !dbg !614
  br i1 %cmp, label %if.then, label %if.end, !dbg !615

if.then:                                          ; preds = %entry
  store float 1.000000e+00, float* %retval, align 4, !dbg !616
  br label %return, !dbg !616

if.end:                                           ; preds = %entry
  %7 = load float, float* %x.addr, align 4, !dbg !617
  %cmp5 = fcmp oeq float %7, 1.000000e+00, !dbg !619
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !620

if.then6:                                         ; preds = %if.end
  store float 1.000000e+00, float* %retval, align 4, !dbg !621
  br label %return, !dbg !621

if.end7:                                          ; preds = %if.end
  %8 = load float, float* %x.addr, align 4, !dbg !622
  %cmp8 = fcmp oeq float %8, -1.000000e+00, !dbg !624
  br i1 %cmp8, label %land.lhs.true, label %if.end10, !dbg !625

land.lhs.true:                                    ; preds = %if.end7
  %9 = load float, float* %y.addr, align 4, !dbg !626
  %call = call arm_aapcs_vfpcc i32 @basicmath___isinff(float noundef %9) #2, !dbg !627
  %tobool = icmp ne i32 %call, 0, !dbg !627
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !628

if.then9:                                         ; preds = %land.lhs.true
  store float 1.000000e+00, float* %retval, align 4, !dbg !629
  br label %return, !dbg !629

if.end10:                                         ; preds = %land.lhs.true, %if.end7
  %10 = load i32, i32* %ix, align 4, !dbg !630
  %cmp11 = icmp sgt i32 %10, 2139095040, !dbg !632
  br i1 %cmp11, label %if.then13, label %lor.lhs.false, !dbg !633

lor.lhs.false:                                    ; preds = %if.end10
  %11 = load i32, i32* %iy, align 4, !dbg !634
  %cmp12 = icmp sgt i32 %11, 2139095040, !dbg !635
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !636

if.then13:                                        ; preds = %lor.lhs.false, %if.end10
  %12 = load float, float* %x.addr, align 4, !dbg !637
  %13 = load float, float* %y.addr, align 4, !dbg !638
  %add = fadd float %12, %13, !dbg !639
  store float %add, float* %retval, align 4, !dbg !640
  br label %return, !dbg !640

if.end14:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %yisint, align 4, !dbg !641
  %14 = load i32, i32* %hx, align 4, !dbg !642
  %cmp15 = icmp slt i32 %14, 0, !dbg !644
  br i1 %cmp15, label %if.then16, label %if.end31, !dbg !645

if.then16:                                        ; preds = %if.end14
  %15 = load i32, i32* %iy, align 4, !dbg !646
  %cmp17 = icmp sge i32 %15, 1266679808, !dbg !649
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !650

if.then18:                                        ; preds = %if.then16
  store i32 2, i32* %yisint, align 4, !dbg !651
  br label %if.end30, !dbg !652

if.else:                                          ; preds = %if.then16
  %16 = load i32, i32* %iy, align 4, !dbg !653
  %cmp19 = icmp sge i32 %16, 1065353216, !dbg !655
  br i1 %cmp19, label %if.then20, label %if.end29, !dbg !656

if.then20:                                        ; preds = %if.else
  %17 = load i32, i32* %iy, align 4, !dbg !657
  %shr = ashr i32 %17, 23, !dbg !659
  %sub = sub nsw i32 %shr, 127, !dbg !660
  store i32 %sub, i32* %k, align 4, !dbg !661
  %18 = load i32, i32* %iy, align 4, !dbg !662
  %19 = load i32, i32* %k, align 4, !dbg !663
  %sub21 = sub nsw i32 23, %19, !dbg !664
  %shr22 = ashr i32 %18, %sub21, !dbg !665
  store i32 %shr22, i32* %j, align 4, !dbg !666
  %20 = load i32, i32* %j, align 4, !dbg !667
  %21 = load i32, i32* %k, align 4, !dbg !669
  %sub23 = sub nsw i32 23, %21, !dbg !670
  %shl = shl i32 %20, %sub23, !dbg !671
  %22 = load i32, i32* %iy, align 4, !dbg !672
  %cmp24 = icmp eq i32 %shl, %22, !dbg !673
  br i1 %cmp24, label %if.then25, label %if.end28, !dbg !674

if.then25:                                        ; preds = %if.then20
  %23 = load i32, i32* %j, align 4, !dbg !675
  %and26 = and i32 %23, 1, !dbg !676
  %sub27 = sub nsw i32 2, %and26, !dbg !677
  store i32 %sub27, i32* %yisint, align 4, !dbg !678
  br label %if.end28, !dbg !679

if.end28:                                         ; preds = %if.then25, %if.then20
  br label %if.end29, !dbg !680

if.end29:                                         ; preds = %if.end28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then18
  br label %if.end31, !dbg !681

if.end31:                                         ; preds = %if.end30, %if.end14
  %24 = load i32, i32* %iy, align 4, !dbg !682
  %cmp32 = icmp eq i32 %24, 2139095040, !dbg !684
  br i1 %cmp32, label %if.then33, label %if.end47, !dbg !685

if.then33:                                        ; preds = %if.end31
  %25 = load i32, i32* %ix, align 4, !dbg !686
  %cmp34 = icmp eq i32 %25, 1065353216, !dbg !689
  br i1 %cmp34, label %if.then35, label %if.else37, !dbg !690

if.then35:                                        ; preds = %if.then33
  %26 = load float, float* %y.addr, align 4, !dbg !691
  %27 = load float, float* %y.addr, align 4, !dbg !692
  %sub36 = fsub float %26, %27, !dbg !693
  store float %sub36, float* %retval, align 4, !dbg !694
  br label %return, !dbg !694

if.else37:                                        ; preds = %if.then33
  %28 = load i32, i32* %ix, align 4, !dbg !695
  %cmp38 = icmp sgt i32 %28, 1065353216, !dbg !697
  br i1 %cmp38, label %if.then39, label %if.else41, !dbg !698

if.then39:                                        ; preds = %if.else37
  %29 = load i32, i32* %hy, align 4, !dbg !699
  %cmp40 = icmp sge i32 %29, 0, !dbg !700
  br i1 %cmp40, label %cond.true, label %cond.false, !dbg !701

cond.true:                                        ; preds = %if.then39
  %30 = load float, float* %y.addr, align 4, !dbg !702
  br label %cond.end, !dbg !701

cond.false:                                       ; preds = %if.then39
  br label %cond.end, !dbg !701

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %30, %cond.true ], [ 0.000000e+00, %cond.false ], !dbg !701
  store float %cond, float* %retval, align 4, !dbg !703
  br label %return, !dbg !703

if.else41:                                        ; preds = %if.else37
  %31 = load i32, i32* %hy, align 4, !dbg !704
  %cmp42 = icmp slt i32 %31, 0, !dbg !705
  br i1 %cmp42, label %cond.true43, label %cond.false44, !dbg !706

cond.true43:                                      ; preds = %if.else41
  %32 = load float, float* %y.addr, align 4, !dbg !707
  %fneg = fneg float %32, !dbg !708
  br label %cond.end45, !dbg !706

cond.false44:                                     ; preds = %if.else41
  br label %cond.end45, !dbg !706

cond.end45:                                       ; preds = %cond.false44, %cond.true43
  %cond46 = phi float [ %fneg, %cond.true43 ], [ 0.000000e+00, %cond.false44 ], !dbg !706
  store float %cond46, float* %retval, align 4, !dbg !709
  br label %return, !dbg !709

if.end47:                                         ; preds = %if.end31
  %33 = load i32, i32* %iy, align 4, !dbg !710
  %cmp48 = icmp eq i32 %33, 1065353216, !dbg !712
  br i1 %cmp48, label %if.then49, label %if.end53, !dbg !713

if.then49:                                        ; preds = %if.end47
  %34 = load i32, i32* %hy, align 4, !dbg !714
  %cmp50 = icmp slt i32 %34, 0, !dbg !717
  br i1 %cmp50, label %if.then51, label %if.else52, !dbg !718

if.then51:                                        ; preds = %if.then49
  %35 = load float, float* %x.addr, align 4, !dbg !719
  %div = fdiv float 1.000000e+00, %35, !dbg !720
  store float %div, float* %retval, align 4, !dbg !721
  br label %return, !dbg !721

if.else52:                                        ; preds = %if.then49
  %36 = load float, float* %x.addr, align 4, !dbg !722
  store float %36, float* %retval, align 4, !dbg !723
  br label %return, !dbg !723

if.end53:                                         ; preds = %if.end47
  %37 = load i32, i32* %hy, align 4, !dbg !724
  %cmp54 = icmp eq i32 %37, 1073741824, !dbg !726
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !727

if.then55:                                        ; preds = %if.end53
  %38 = load float, float* %x.addr, align 4, !dbg !728
  %39 = load float, float* %x.addr, align 4, !dbg !729
  %mul = fmul float %38, %39, !dbg !730
  store float %mul, float* %retval, align 4, !dbg !731
  br label %return, !dbg !731

if.end56:                                         ; preds = %if.end53
  %40 = load i32, i32* %hy, align 4, !dbg !732
  %cmp57 = icmp eq i32 %40, 1056964608, !dbg !734
  br i1 %cmp57, label %if.then58, label %if.end63, !dbg !735

if.then58:                                        ; preds = %if.end56
  %41 = load i32, i32* %hx, align 4, !dbg !736
  %cmp59 = icmp sge i32 %41, 0, !dbg !739
  br i1 %cmp59, label %if.then60, label %if.end62, !dbg !740

if.then60:                                        ; preds = %if.then58
  %42 = load float, float* %x.addr, align 4, !dbg !741
  %call61 = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %42) #2, !dbg !742
  store float %call61, float* %retval, align 4, !dbg !743
  br label %return, !dbg !743

if.end62:                                         ; preds = %if.then58
  br label %if.end63, !dbg !744

if.end63:                                         ; preds = %if.end62, %if.end56
  %43 = load float, float* %x.addr, align 4, !dbg !745
  %call64 = call arm_aapcs_vfpcc float @basicmath___fabsf(float noundef %43) #2, !dbg !746
  store float %call64, float* %ax, align 4, !dbg !747
  %44 = load i32, i32* %ix, align 4, !dbg !748
  %cmp65 = icmp eq i32 %44, 2139095040, !dbg !750
  br i1 %cmp65, label %if.then70, label %lor.lhs.false66, !dbg !751

lor.lhs.false66:                                  ; preds = %if.end63
  %45 = load i32, i32* %ix, align 4, !dbg !752
  %cmp67 = icmp eq i32 %45, 0, !dbg !753
  br i1 %cmp67, label %if.then70, label %lor.lhs.false68, !dbg !754

lor.lhs.false68:                                  ; preds = %lor.lhs.false66
  %46 = load i32, i32* %ix, align 4, !dbg !755
  %cmp69 = icmp eq i32 %46, 1065353216, !dbg !756
  br i1 %cmp69, label %if.then70, label %if.end90, !dbg !757

if.then70:                                        ; preds = %lor.lhs.false68, %lor.lhs.false66, %if.end63
  %47 = load float, float* %ax, align 4, !dbg !758
  store float %47, float* %z, align 4, !dbg !760
  %48 = load i32, i32* %hy, align 4, !dbg !761
  %cmp71 = icmp slt i32 %48, 0, !dbg !763
  br i1 %cmp71, label %if.then72, label %if.end74, !dbg !764

if.then72:                                        ; preds = %if.then70
  %49 = load float, float* %z, align 4, !dbg !765
  %div73 = fdiv float 1.000000e+00, %49, !dbg !766
  store float %div73, float* %z, align 4, !dbg !767
  br label %if.end74, !dbg !768

if.end74:                                         ; preds = %if.then72, %if.then70
  %50 = load i32, i32* %hx, align 4, !dbg !769
  %cmp75 = icmp slt i32 %50, 0, !dbg !771
  br i1 %cmp75, label %if.then76, label %if.end89, !dbg !772

if.then76:                                        ; preds = %if.end74
  %51 = load i32, i32* %ix, align 4, !dbg !773
  %sub77 = sub nsw i32 %51, 1065353216, !dbg !776
  %52 = load i32, i32* %yisint, align 4, !dbg !777
  %or = or i32 %sub77, %52, !dbg !778
  %cmp78 = icmp eq i32 %or, 0, !dbg !779
  br i1 %cmp78, label %if.then79, label %if.else83, !dbg !780

if.then79:                                        ; preds = %if.then76
  %53 = load float, float* %z, align 4, !dbg !781
  %54 = load float, float* %z, align 4, !dbg !783
  %sub80 = fsub float %53, %54, !dbg !784
  %55 = load float, float* %z, align 4, !dbg !785
  %56 = load float, float* %z, align 4, !dbg !786
  %sub81 = fsub float %55, %56, !dbg !787
  %div82 = fdiv float %sub80, %sub81, !dbg !788
  store float %div82, float* %z, align 4, !dbg !789
  br label %if.end88, !dbg !790

if.else83:                                        ; preds = %if.then76
  %57 = load i32, i32* %yisint, align 4, !dbg !791
  %cmp84 = icmp eq i32 %57, 1, !dbg !793
  br i1 %cmp84, label %if.then85, label %if.end87, !dbg !794

if.then85:                                        ; preds = %if.else83
  %58 = load float, float* %z, align 4, !dbg !795
  %fneg86 = fneg float %58, !dbg !796
  store float %fneg86, float* %z, align 4, !dbg !797
  br label %if.end87, !dbg !798

if.end87:                                         ; preds = %if.then85, %if.else83
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then79
  br label %if.end89, !dbg !799

if.end89:                                         ; preds = %if.end88, %if.end74
  %59 = load float, float* %z, align 4, !dbg !800
  store float %59, float* %retval, align 4, !dbg !801
  br label %return, !dbg !801

if.end90:                                         ; preds = %lor.lhs.false68
  %60 = load i32, i32* %hx, align 4, !dbg !802
  %shr91 = lshr i32 %60, 31, !dbg !804
  %sub92 = sub i32 %shr91, 1, !dbg !805
  %61 = load i32, i32* %yisint, align 4, !dbg !806
  %or93 = or i32 %sub92, %61, !dbg !807
  %cmp94 = icmp eq i32 %or93, 0, !dbg !808
  br i1 %cmp94, label %if.then95, label %if.end99, !dbg !809

if.then95:                                        ; preds = %if.end90
  %62 = load float, float* %x.addr, align 4, !dbg !810
  %63 = load float, float* %x.addr, align 4, !dbg !811
  %sub96 = fsub float %62, %63, !dbg !812
  %64 = load float, float* %x.addr, align 4, !dbg !813
  %65 = load float, float* %x.addr, align 4, !dbg !814
  %sub97 = fsub float %64, %65, !dbg !815
  %div98 = fdiv float %sub96, %sub97, !dbg !816
  store float %div98, float* %retval, align 4, !dbg !817
  br label %return, !dbg !817

if.end99:                                         ; preds = %if.end90
  %66 = load i32, i32* %iy, align 4, !dbg !818
  %cmp100 = icmp sgt i32 %66, 1291845632, !dbg !820
  br i1 %cmp100, label %if.then101, label %if.else131, !dbg !821

if.then101:                                       ; preds = %if.end99
  %67 = load i32, i32* %ix, align 4, !dbg !822
  %cmp102 = icmp slt i32 %67, 1065353208, !dbg !825
  br i1 %cmp102, label %if.then103, label %if.end106, !dbg !826

if.then103:                                       ; preds = %if.then101
  %68 = load i32, i32* %hy, align 4, !dbg !827
  %cmp104 = icmp slt i32 %68, 0, !dbg !828
  %69 = zext i1 %cmp104 to i64, !dbg !829
  %cond105 = select i1 %cmp104, float 0x7FF0000000000000, float 0.000000e+00, !dbg !829
  store float %cond105, float* %retval, align 4, !dbg !830
  br label %return, !dbg !830

if.end106:                                        ; preds = %if.then101
  %70 = load i32, i32* %ix, align 4, !dbg !831
  %cmp107 = icmp sgt i32 %70, 1065353223, !dbg !833
  br i1 %cmp107, label %if.then108, label %if.end111, !dbg !834

if.then108:                                       ; preds = %if.end106
  %71 = load i32, i32* %hy, align 4, !dbg !835
  %cmp109 = icmp sgt i32 %71, 0, !dbg !836
  %72 = zext i1 %cmp109 to i64, !dbg !837
  %cond110 = select i1 %cmp109, float 0x7FF0000000000000, float 0.000000e+00, !dbg !837
  store float %cond110, float* %retval, align 4, !dbg !838
  br label %return, !dbg !838

if.end111:                                        ; preds = %if.end106
  %73 = load float, float* %x.addr, align 4, !dbg !839
  %sub112 = fsub float %73, 1.000000e+00, !dbg !840
  store float %sub112, float* %t, align 4, !dbg !841
  %74 = load float, float* %t, align 4, !dbg !842
  %75 = load float, float* %t, align 4, !dbg !843
  %mul113 = fmul float %74, %75, !dbg !844
  %76 = load float, float* %t, align 4, !dbg !845
  %77 = load float, float* %t, align 4, !dbg !846
  %neg = fneg float %77, !dbg !847
  %78 = call float @llvm.fmuladd.f32(float %neg, float 2.500000e-01, float 0x3FD5555560000000), !dbg !847
  %neg116 = fneg float %76, !dbg !848
  %79 = call float @llvm.fmuladd.f32(float %neg116, float %78, float 5.000000e-01), !dbg !848
  %mul117 = fmul float %mul113, %79, !dbg !849
  store float %mul117, float* %w, align 4, !dbg !850
  %80 = load float, float* %t, align 4, !dbg !851
  %mul118 = fmul float 0x3FF7154000000000, %80, !dbg !852
  store float %mul118, float* %u, align 4, !dbg !853
  %81 = load float, float* %t, align 4, !dbg !854
  %82 = load float, float* %w, align 4, !dbg !855
  %mul120 = fmul float %82, 0x3FF7154760000000, !dbg !856
  %neg121 = fneg float %mul120, !dbg !857
  %83 = call float @llvm.fmuladd.f32(float %81, float 0x3EDD94AE00000000, float %neg121), !dbg !857
  store float %83, float* %v, align 4, !dbg !858
  %84 = load float, float* %u, align 4, !dbg !859
  %85 = load float, float* %v, align 4, !dbg !860
  %add122 = fadd float %84, %85, !dbg !861
  store float %add122, float* %t1, align 4, !dbg !862
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u123, metadata !863, metadata !DIExpression()), !dbg !865
  %86 = load float, float* %t1, align 4, !dbg !865
  %value124 = bitcast %union.ieee_float_shape_type* %gf_u123 to float*, !dbg !865
  store float %86, float* %value124, align 4, !dbg !865
  %word125 = bitcast %union.ieee_float_shape_type* %gf_u123 to i32*, !dbg !865
  %87 = load i32, i32* %word125, align 4, !dbg !865
  store i32 %87, i32* %is, align 4, !dbg !865
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u, metadata !866, metadata !DIExpression()), !dbg !868
  %88 = load i32, i32* %is, align 4, !dbg !868
  %and126 = and i32 %88, -4096, !dbg !868
  %word127 = bitcast %union.ieee_float_shape_type* %sf_u to i32*, !dbg !868
  store i32 %and126, i32* %word127, align 4, !dbg !868
  %value128 = bitcast %union.ieee_float_shape_type* %sf_u to float*, !dbg !868
  %89 = load float, float* %value128, align 4, !dbg !868
  store float %89, float* %t1, align 4, !dbg !868
  %90 = load float, float* %v, align 4, !dbg !869
  %91 = load float, float* %t1, align 4, !dbg !870
  %92 = load float, float* %u, align 4, !dbg !871
  %sub129 = fsub float %91, %92, !dbg !872
  %sub130 = fsub float %90, %sub129, !dbg !873
  store float %sub130, float* %t2, align 4, !dbg !874
  br label %if.end243, !dbg !875

if.else131:                                       ; preds = %if.end99
  call void @llvm.dbg.declare(metadata float* %s2, metadata !876, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.declare(metadata float* %s_h, metadata !879, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.declare(metadata float* %s_l, metadata !881, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.declare(metadata float* %t_h, metadata !883, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.declare(metadata float* %t_l, metadata !885, metadata !DIExpression()), !dbg !886
  store i32 0, i32* %n, align 4, !dbg !887
  %93 = load i32, i32* %ix, align 4, !dbg !888
  %cmp132 = icmp slt i32 %93, 8388608, !dbg !890
  br i1 %cmp132, label %if.then133, label %if.end139, !dbg !891

if.then133:                                       ; preds = %if.else131
  %94 = load float, float* %ax, align 4, !dbg !892
  %mul134 = fmul float %94, 0x4170000000000000, !dbg !892
  store float %mul134, float* %ax, align 4, !dbg !892
  %95 = load i32, i32* %n, align 4, !dbg !894
  %sub135 = sub nsw i32 %95, 24, !dbg !894
  store i32 %sub135, i32* %n, align 4, !dbg !894
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u136, metadata !895, metadata !DIExpression()), !dbg !897
  %96 = load float, float* %ax, align 4, !dbg !897
  %value137 = bitcast %union.ieee_float_shape_type* %gf_u136 to float*, !dbg !897
  store float %96, float* %value137, align 4, !dbg !897
  %word138 = bitcast %union.ieee_float_shape_type* %gf_u136 to i32*, !dbg !897
  %97 = load i32, i32* %word138, align 4, !dbg !897
  store i32 %97, i32* %ix, align 4, !dbg !897
  br label %if.end139, !dbg !898

if.end139:                                        ; preds = %if.then133, %if.else131
  %98 = load i32, i32* %ix, align 4, !dbg !899
  %shr140 = ashr i32 %98, 23, !dbg !900
  %sub141 = sub nsw i32 %shr140, 127, !dbg !901
  %99 = load i32, i32* %n, align 4, !dbg !902
  %add142 = add nsw i32 %99, %sub141, !dbg !902
  store i32 %add142, i32* %n, align 4, !dbg !902
  %100 = load i32, i32* %ix, align 4, !dbg !903
  %and143 = and i32 %100, 8388607, !dbg !904
  store i32 %and143, i32* %j, align 4, !dbg !905
  %101 = load i32, i32* %j, align 4, !dbg !906
  %or144 = or i32 %101, 1065353216, !dbg !907
  store i32 %or144, i32* %ix, align 4, !dbg !908
  %102 = load i32, i32* %j, align 4, !dbg !909
  %cmp145 = icmp sle i32 %102, 1885297, !dbg !911
  br i1 %cmp145, label %if.then146, label %if.else147, !dbg !912

if.then146:                                       ; preds = %if.end139
  store i32 0, i32* %k, align 4, !dbg !913
  br label %if.end154, !dbg !914

if.else147:                                       ; preds = %if.end139
  %103 = load i32, i32* %j, align 4, !dbg !915
  %cmp148 = icmp slt i32 %103, 6140887, !dbg !917
  br i1 %cmp148, label %if.then149, label %if.else150, !dbg !918

if.then149:                                       ; preds = %if.else147
  store i32 1, i32* %k, align 4, !dbg !919
  br label %if.end153, !dbg !920

if.else150:                                       ; preds = %if.else147
  store i32 0, i32* %k, align 4, !dbg !921
  %104 = load i32, i32* %n, align 4, !dbg !923
  %add151 = add nsw i32 %104, 1, !dbg !923
  store i32 %add151, i32* %n, align 4, !dbg !923
  %105 = load i32, i32* %ix, align 4, !dbg !924
  %sub152 = sub nsw i32 %105, 8388608, !dbg !924
  store i32 %sub152, i32* %ix, align 4, !dbg !924
  br label %if.end153

if.end153:                                        ; preds = %if.else150, %if.then149
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.then146
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u155, metadata !925, metadata !DIExpression()), !dbg !927
  %106 = load i32, i32* %ix, align 4, !dbg !927
  %word156 = bitcast %union.ieee_float_shape_type* %sf_u155 to i32*, !dbg !927
  store i32 %106, i32* %word156, align 4, !dbg !927
  %value157 = bitcast %union.ieee_float_shape_type* %sf_u155 to float*, !dbg !927
  %107 = load float, float* %value157, align 4, !dbg !927
  store float %107, float* %ax, align 4, !dbg !927
  %108 = load float, float* %ax, align 4, !dbg !928
  %109 = load i32, i32* %k, align 4, !dbg !929
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* @basicmath_bp, i32 0, i32 %109, !dbg !930
  %110 = load float, float* %arrayidx, align 4, !dbg !930
  %sub158 = fsub float %108, %110, !dbg !931
  store float %sub158, float* %u, align 4, !dbg !932
  %111 = load float, float* %ax, align 4, !dbg !933
  %112 = load i32, i32* %k, align 4, !dbg !934
  %arrayidx159 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_bp, i32 0, i32 %112, !dbg !935
  %113 = load float, float* %arrayidx159, align 4, !dbg !935
  %add160 = fadd float %111, %113, !dbg !936
  %div161 = fdiv float 1.000000e+00, %add160, !dbg !937
  store float %div161, float* %v, align 4, !dbg !938
  %114 = load float, float* %u, align 4, !dbg !939
  %115 = load float, float* %v, align 4, !dbg !940
  %mul162 = fmul float %114, %115, !dbg !941
  store float %mul162, float* %s, align 4, !dbg !942
  %116 = load float, float* %s, align 4, !dbg !943
  store float %116, float* %s_h, align 4, !dbg !944
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u163, metadata !945, metadata !DIExpression()), !dbg !947
  %117 = load float, float* %s_h, align 4, !dbg !947
  %value164 = bitcast %union.ieee_float_shape_type* %gf_u163 to float*, !dbg !947
  store float %117, float* %value164, align 4, !dbg !947
  %word165 = bitcast %union.ieee_float_shape_type* %gf_u163 to i32*, !dbg !947
  %118 = load i32, i32* %word165, align 4, !dbg !947
  store i32 %118, i32* %is, align 4, !dbg !947
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u166, metadata !948, metadata !DIExpression()), !dbg !950
  %119 = load i32, i32* %is, align 4, !dbg !950
  %and167 = and i32 %119, -4096, !dbg !950
  %word168 = bitcast %union.ieee_float_shape_type* %sf_u166 to i32*, !dbg !950
  store i32 %and167, i32* %word168, align 4, !dbg !950
  %value169 = bitcast %union.ieee_float_shape_type* %sf_u166 to float*, !dbg !950
  %120 = load float, float* %value169, align 4, !dbg !950
  store float %120, float* %s_h, align 4, !dbg !950
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u170, metadata !951, metadata !DIExpression()), !dbg !953
  %121 = load i32, i32* %ix, align 4, !dbg !953
  %shr171 = ashr i32 %121, 1, !dbg !953
  %or172 = or i32 %shr171, 536870912, !dbg !953
  %add173 = add nsw i32 %or172, 262144, !dbg !953
  %122 = load i32, i32* %k, align 4, !dbg !953
  %shl174 = shl i32 %122, 21, !dbg !953
  %add175 = add nsw i32 %add173, %shl174, !dbg !953
  %word176 = bitcast %union.ieee_float_shape_type* %sf_u170 to i32*, !dbg !953
  store i32 %add175, i32* %word176, align 4, !dbg !953
  %value177 = bitcast %union.ieee_float_shape_type* %sf_u170 to float*, !dbg !953
  %123 = load float, float* %value177, align 4, !dbg !953
  store float %123, float* %t_h, align 4, !dbg !953
  %124 = load float, float* %ax, align 4, !dbg !954
  %125 = load float, float* %t_h, align 4, !dbg !955
  %126 = load i32, i32* %k, align 4, !dbg !956
  %arrayidx178 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_bp, i32 0, i32 %126, !dbg !957
  %127 = load float, float* %arrayidx178, align 4, !dbg !957
  %sub179 = fsub float %125, %127, !dbg !958
  %sub180 = fsub float %124, %sub179, !dbg !959
  store float %sub180, float* %t_l, align 4, !dbg !960
  %128 = load float, float* %v, align 4, !dbg !961
  %129 = load float, float* %u, align 4, !dbg !962
  %130 = load float, float* %s_h, align 4, !dbg !963
  %131 = load float, float* %t_h, align 4, !dbg !964
  %neg182 = fneg float %130, !dbg !965
  %132 = call float @llvm.fmuladd.f32(float %neg182, float %131, float %129), !dbg !965
  %133 = load float, float* %s_h, align 4, !dbg !966
  %134 = load float, float* %t_l, align 4, !dbg !967
  %neg184 = fneg float %133, !dbg !968
  %135 = call float @llvm.fmuladd.f32(float %neg184, float %134, float %132), !dbg !968
  %mul185 = fmul float %128, %135, !dbg !969
  store float %mul185, float* %s_l, align 4, !dbg !970
  %136 = load float, float* %s, align 4, !dbg !971
  %137 = load float, float* %s, align 4, !dbg !972
  %mul186 = fmul float %136, %137, !dbg !973
  store float %mul186, float* %s2, align 4, !dbg !974
  %138 = load float, float* %s2, align 4, !dbg !975
  %139 = load float, float* %s2, align 4, !dbg !976
  %mul187 = fmul float %138, %139, !dbg !977
  %140 = load float, float* %s2, align 4, !dbg !978
  %141 = load float, float* %s2, align 4, !dbg !979
  %142 = load float, float* %s2, align 4, !dbg !980
  %143 = load float, float* %s2, align 4, !dbg !981
  %144 = load float, float* %s2, align 4, !dbg !982
  %145 = call float @llvm.fmuladd.f32(float %144, float 0x3FCA7E2840000000, float 0x3FCD864AA0000000), !dbg !983
  %146 = call float @llvm.fmuladd.f32(float %143, float %145, float 0x3FD17460A0000000), !dbg !984
  %147 = call float @llvm.fmuladd.f32(float %142, float %146, float 0x3FD5555560000000), !dbg !985
  %148 = call float @llvm.fmuladd.f32(float %141, float %147, float 0x3FDB6DB6E0000000), !dbg !986
  %149 = call float @llvm.fmuladd.f32(float %140, float %148, float 0x3FE3333340000000), !dbg !987
  %mul193 = fmul float %mul187, %149, !dbg !988
  store float %mul193, float* %r, align 4, !dbg !989
  %150 = load float, float* %s_l, align 4, !dbg !990
  %151 = load float, float* %s_h, align 4, !dbg !991
  %152 = load float, float* %s, align 4, !dbg !992
  %add194 = fadd float %151, %152, !dbg !993
  %153 = load float, float* %r, align 4, !dbg !994
  %154 = call float @llvm.fmuladd.f32(float %150, float %add194, float %153), !dbg !994
  store float %154, float* %r, align 4, !dbg !994
  %155 = load float, float* %s_h, align 4, !dbg !995
  %156 = load float, float* %s_h, align 4, !dbg !996
  %mul196 = fmul float %155, %156, !dbg !997
  store float %mul196, float* %s2, align 4, !dbg !998
  %157 = load float, float* %s2, align 4, !dbg !999
  %add197 = fadd float 3.000000e+00, %157, !dbg !1000
  %158 = load float, float* %r, align 4, !dbg !1001
  %add198 = fadd float %add197, %158, !dbg !1002
  store float %add198, float* %t_h, align 4, !dbg !1003
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u199, metadata !1004, metadata !DIExpression()), !dbg !1006
  %159 = load float, float* %t_h, align 4, !dbg !1006
  %value200 = bitcast %union.ieee_float_shape_type* %gf_u199 to float*, !dbg !1006
  store float %159, float* %value200, align 4, !dbg !1006
  %word201 = bitcast %union.ieee_float_shape_type* %gf_u199 to i32*, !dbg !1006
  %160 = load i32, i32* %word201, align 4, !dbg !1006
  store i32 %160, i32* %is, align 4, !dbg !1006
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u202, metadata !1007, metadata !DIExpression()), !dbg !1009
  %161 = load i32, i32* %is, align 4, !dbg !1009
  %and203 = and i32 %161, -4096, !dbg !1009
  %word204 = bitcast %union.ieee_float_shape_type* %sf_u202 to i32*, !dbg !1009
  store i32 %and203, i32* %word204, align 4, !dbg !1009
  %value205 = bitcast %union.ieee_float_shape_type* %sf_u202 to float*, !dbg !1009
  %162 = load float, float* %value205, align 4, !dbg !1009
  store float %162, float* %t_h, align 4, !dbg !1009
  %163 = load float, float* %r, align 4, !dbg !1010
  %164 = load float, float* %t_h, align 4, !dbg !1011
  %sub206 = fsub float %164, 3.000000e+00, !dbg !1012
  %165 = load float, float* %s2, align 4, !dbg !1013
  %sub207 = fsub float %sub206, %165, !dbg !1014
  %sub208 = fsub float %163, %sub207, !dbg !1015
  store float %sub208, float* %t_l, align 4, !dbg !1016
  %166 = load float, float* %s_h, align 4, !dbg !1017
  %167 = load float, float* %t_h, align 4, !dbg !1018
  %mul209 = fmul float %166, %167, !dbg !1019
  store float %mul209, float* %u, align 4, !dbg !1020
  %168 = load float, float* %s_l, align 4, !dbg !1021
  %169 = load float, float* %t_h, align 4, !dbg !1022
  %170 = load float, float* %t_l, align 4, !dbg !1023
  %171 = load float, float* %s, align 4, !dbg !1024
  %mul211 = fmul float %170, %171, !dbg !1025
  %172 = call float @llvm.fmuladd.f32(float %168, float %169, float %mul211), !dbg !1026
  store float %172, float* %v, align 4, !dbg !1027
  %173 = load float, float* %u, align 4, !dbg !1028
  %174 = load float, float* %v, align 4, !dbg !1029
  %add212 = fadd float %173, %174, !dbg !1030
  store float %add212, float* %p_h, align 4, !dbg !1031
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u213, metadata !1032, metadata !DIExpression()), !dbg !1034
  %175 = load float, float* %p_h, align 4, !dbg !1034
  %value214 = bitcast %union.ieee_float_shape_type* %gf_u213 to float*, !dbg !1034
  store float %175, float* %value214, align 4, !dbg !1034
  %word215 = bitcast %union.ieee_float_shape_type* %gf_u213 to i32*, !dbg !1034
  %176 = load i32, i32* %word215, align 4, !dbg !1034
  store i32 %176, i32* %is, align 4, !dbg !1034
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u216, metadata !1035, metadata !DIExpression()), !dbg !1037
  %177 = load i32, i32* %is, align 4, !dbg !1037
  %and217 = and i32 %177, -4096, !dbg !1037
  %word218 = bitcast %union.ieee_float_shape_type* %sf_u216 to i32*, !dbg !1037
  store i32 %and217, i32* %word218, align 4, !dbg !1037
  %value219 = bitcast %union.ieee_float_shape_type* %sf_u216 to float*, !dbg !1037
  %178 = load float, float* %value219, align 4, !dbg !1037
  store float %178, float* %p_h, align 4, !dbg !1037
  %179 = load float, float* %v, align 4, !dbg !1038
  %180 = load float, float* %p_h, align 4, !dbg !1039
  %181 = load float, float* %u, align 4, !dbg !1040
  %sub220 = fsub float %180, %181, !dbg !1041
  %sub221 = fsub float %179, %sub220, !dbg !1042
  store float %sub221, float* %p_l, align 4, !dbg !1043
  %182 = load float, float* %p_h, align 4, !dbg !1044
  %mul222 = fmul float 0x3FEEC70000000000, %182, !dbg !1045
  store float %mul222, float* %z_h, align 4, !dbg !1046
  %183 = load float, float* %p_h, align 4, !dbg !1047
  %184 = load float, float* %p_l, align 4, !dbg !1048
  %mul224 = fmul float %184, 0x3FEEC709E0000000, !dbg !1049
  %185 = call float @llvm.fmuladd.f32(float 0x3ED3B87400000000, float %183, float %mul224), !dbg !1050
  %186 = load i32, i32* %k, align 4, !dbg !1051
  %arrayidx225 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_dp_l, i32 0, i32 %186, !dbg !1052
  %187 = load float, float* %arrayidx225, align 4, !dbg !1052
  %add226 = fadd float %185, %187, !dbg !1053
  store float %add226, float* %z_l, align 4, !dbg !1054
  %188 = load i32, i32* %n, align 4, !dbg !1055
  %conv = sitofp i32 %188 to float, !dbg !1056
  store float %conv, float* %t, align 4, !dbg !1057
  %189 = load float, float* %z_h, align 4, !dbg !1058
  %190 = load float, float* %z_l, align 4, !dbg !1059
  %add227 = fadd float %189, %190, !dbg !1060
  %191 = load i32, i32* %k, align 4, !dbg !1061
  %arrayidx228 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_dp_h, i32 0, i32 %191, !dbg !1062
  %192 = load float, float* %arrayidx228, align 4, !dbg !1062
  %add229 = fadd float %add227, %192, !dbg !1063
  %193 = load float, float* %t, align 4, !dbg !1064
  %add230 = fadd float %add229, %193, !dbg !1065
  store float %add230, float* %t1, align 4, !dbg !1066
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u231, metadata !1067, metadata !DIExpression()), !dbg !1069
  %194 = load float, float* %t1, align 4, !dbg !1069
  %value232 = bitcast %union.ieee_float_shape_type* %gf_u231 to float*, !dbg !1069
  store float %194, float* %value232, align 4, !dbg !1069
  %word233 = bitcast %union.ieee_float_shape_type* %gf_u231 to i32*, !dbg !1069
  %195 = load i32, i32* %word233, align 4, !dbg !1069
  store i32 %195, i32* %is, align 4, !dbg !1069
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u234, metadata !1070, metadata !DIExpression()), !dbg !1072
  %196 = load i32, i32* %is, align 4, !dbg !1072
  %and235 = and i32 %196, -4096, !dbg !1072
  %word236 = bitcast %union.ieee_float_shape_type* %sf_u234 to i32*, !dbg !1072
  store i32 %and235, i32* %word236, align 4, !dbg !1072
  %value237 = bitcast %union.ieee_float_shape_type* %sf_u234 to float*, !dbg !1072
  %197 = load float, float* %value237, align 4, !dbg !1072
  store float %197, float* %t1, align 4, !dbg !1072
  %198 = load float, float* %z_l, align 4, !dbg !1073
  %199 = load float, float* %t1, align 4, !dbg !1074
  %200 = load float, float* %t, align 4, !dbg !1075
  %sub238 = fsub float %199, %200, !dbg !1076
  %201 = load i32, i32* %k, align 4, !dbg !1077
  %arrayidx239 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_dp_h, i32 0, i32 %201, !dbg !1078
  %202 = load float, float* %arrayidx239, align 4, !dbg !1078
  %sub240 = fsub float %sub238, %202, !dbg !1079
  %203 = load float, float* %z_h, align 4, !dbg !1080
  %sub241 = fsub float %sub240, %203, !dbg !1081
  %sub242 = fsub float %198, %sub241, !dbg !1082
  store float %sub242, float* %t2, align 4, !dbg !1083
  br label %if.end243

if.end243:                                        ; preds = %if.end154, %if.end111
  store float 1.000000e+00, float* %s, align 4, !dbg !1084
  %204 = load i32, i32* %hx, align 4, !dbg !1085
  %shr244 = lshr i32 %204, 31, !dbg !1087
  %sub245 = sub i32 %shr244, 1, !dbg !1088
  %205 = load i32, i32* %yisint, align 4, !dbg !1089
  %sub246 = sub nsw i32 %205, 1, !dbg !1090
  %or247 = or i32 %sub245, %sub246, !dbg !1091
  %cmp248 = icmp eq i32 %or247, 0, !dbg !1092
  br i1 %cmp248, label %if.then250, label %if.end251, !dbg !1093

if.then250:                                       ; preds = %if.end243
  store float -1.000000e+00, float* %s, align 4, !dbg !1094
  br label %if.end251, !dbg !1095

if.end251:                                        ; preds = %if.then250, %if.end243
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u252, metadata !1096, metadata !DIExpression()), !dbg !1098
  %206 = load float, float* %y.addr, align 4, !dbg !1098
  %value253 = bitcast %union.ieee_float_shape_type* %gf_u252 to float*, !dbg !1098
  store float %206, float* %value253, align 4, !dbg !1098
  %word254 = bitcast %union.ieee_float_shape_type* %gf_u252 to i32*, !dbg !1098
  %207 = load i32, i32* %word254, align 4, !dbg !1098
  store i32 %207, i32* %is, align 4, !dbg !1098
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u255, metadata !1099, metadata !DIExpression()), !dbg !1101
  %208 = load i32, i32* %is, align 4, !dbg !1101
  %and256 = and i32 %208, -4096, !dbg !1101
  %word257 = bitcast %union.ieee_float_shape_type* %sf_u255 to i32*, !dbg !1101
  store i32 %and256, i32* %word257, align 4, !dbg !1101
  %value258 = bitcast %union.ieee_float_shape_type* %sf_u255 to float*, !dbg !1101
  %209 = load float, float* %value258, align 4, !dbg !1101
  store float %209, float* %y1, align 4, !dbg !1101
  %210 = load float, float* %y.addr, align 4, !dbg !1102
  %211 = load float, float* %y1, align 4, !dbg !1103
  %sub259 = fsub float %210, %211, !dbg !1104
  %212 = load float, float* %t1, align 4, !dbg !1105
  %213 = load float, float* %y.addr, align 4, !dbg !1106
  %214 = load float, float* %t2, align 4, !dbg !1107
  %mul261 = fmul float %213, %214, !dbg !1108
  %215 = call float @llvm.fmuladd.f32(float %sub259, float %212, float %mul261), !dbg !1109
  store float %215, float* %p_l, align 4, !dbg !1110
  %216 = load float, float* %y1, align 4, !dbg !1111
  %217 = load float, float* %t1, align 4, !dbg !1112
  %mul262 = fmul float %216, %217, !dbg !1113
  store float %mul262, float* %p_h, align 4, !dbg !1114
  %218 = load float, float* %p_l, align 4, !dbg !1115
  %219 = load float, float* %p_h, align 4, !dbg !1116
  %add263 = fadd float %218, %219, !dbg !1117
  store float %add263, float* %z, align 4, !dbg !1118
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u264, metadata !1119, metadata !DIExpression()), !dbg !1121
  %220 = load float, float* %z, align 4, !dbg !1121
  %value265 = bitcast %union.ieee_float_shape_type* %gf_u264 to float*, !dbg !1121
  store float %220, float* %value265, align 4, !dbg !1121
  %word266 = bitcast %union.ieee_float_shape_type* %gf_u264 to i32*, !dbg !1121
  %221 = load i32, i32* %word266, align 4, !dbg !1121
  store i32 %221, i32* %j, align 4, !dbg !1121
  %222 = load i32, i32* %j, align 4, !dbg !1122
  %cmp267 = icmp sgt i32 %222, 1124073472, !dbg !1124
  br i1 %cmp267, label %if.then269, label %if.else272, !dbg !1125

if.then269:                                       ; preds = %if.end251
  %223 = load float, float* %s, align 4, !dbg !1126
  %mul270 = fmul float %223, 0x46293E5940000000, !dbg !1127
  %mul271 = fmul float %mul270, 0x46293E5940000000, !dbg !1128
  store float %mul271, float* %retval, align 4, !dbg !1129
  br label %return, !dbg !1129

if.else272:                                       ; preds = %if.end251
  %224 = load i32, i32* %j, align 4, !dbg !1130
  %cmp273 = icmp eq i32 %224, 1124073472, !dbg !1132
  br i1 %cmp273, label %if.then275, label %if.else284, !dbg !1133

if.then275:                                       ; preds = %if.else272
  %225 = load float, float* %p_l, align 4, !dbg !1134
  %add276 = fadd float %225, 0x3E67154780000000, !dbg !1137
  %226 = load float, float* %z, align 4, !dbg !1138
  %227 = load float, float* %p_h, align 4, !dbg !1139
  %sub277 = fsub float %226, %227, !dbg !1140
  %cmp278 = fcmp ogt float %add276, %sub277, !dbg !1141
  br i1 %cmp278, label %if.then280, label %if.end283, !dbg !1142

if.then280:                                       ; preds = %if.then275
  %228 = load float, float* %s, align 4, !dbg !1143
  %mul281 = fmul float %228, 0x46293E5940000000, !dbg !1144
  %mul282 = fmul float %mul281, 0x46293E5940000000, !dbg !1145
  store float %mul282, float* %retval, align 4, !dbg !1146
  br label %return, !dbg !1146

if.end283:                                        ; preds = %if.then275
  br label %if.end304, !dbg !1147

if.else284:                                       ; preds = %if.else272
  %229 = load i32, i32* %j, align 4, !dbg !1148
  %and285 = and i32 %229, 2147483647, !dbg !1150
  %cmp286 = icmp sgt i32 %and285, 1125515264, !dbg !1151
  br i1 %cmp286, label %if.then288, label %if.else291, !dbg !1152

if.then288:                                       ; preds = %if.else284
  %230 = load float, float* %s, align 4, !dbg !1153
  %mul289 = fmul float %230, 0x39B4484C00000000, !dbg !1154
  %mul290 = fmul float %mul289, 0x39B4484C00000000, !dbg !1155
  store float %mul290, float* %retval, align 4, !dbg !1156
  br label %return, !dbg !1156

if.else291:                                       ; preds = %if.else284
  %231 = load i32, i32* %j, align 4, !dbg !1157
  %cmp292 = icmp eq i32 %231, -1021968384, !dbg !1159
  br i1 %cmp292, label %if.then294, label %if.end302, !dbg !1160

if.then294:                                       ; preds = %if.else291
  %232 = load float, float* %p_l, align 4, !dbg !1161
  %233 = load float, float* %z, align 4, !dbg !1164
  %234 = load float, float* %p_h, align 4, !dbg !1165
  %sub295 = fsub float %233, %234, !dbg !1166
  %cmp296 = fcmp ole float %232, %sub295, !dbg !1167
  br i1 %cmp296, label %if.then298, label %if.end301, !dbg !1168

if.then298:                                       ; preds = %if.then294
  %235 = load float, float* %s, align 4, !dbg !1169
  %mul299 = fmul float %235, 0x39B4484C00000000, !dbg !1170
  %mul300 = fmul float %mul299, 0x39B4484C00000000, !dbg !1171
  store float %mul300, float* %retval, align 4, !dbg !1172
  br label %return, !dbg !1172

if.end301:                                        ; preds = %if.then294
  br label %if.end302, !dbg !1173

if.end302:                                        ; preds = %if.end301, %if.else291
  br label %if.end303

if.end303:                                        ; preds = %if.end302
  br label %if.end304

if.end304:                                        ; preds = %if.end303, %if.end283
  br label %if.end305

if.end305:                                        ; preds = %if.end304
  %236 = load i32, i32* %j, align 4, !dbg !1174
  %and306 = and i32 %236, 2147483647, !dbg !1175
  store i32 %and306, i32* %i, align 4, !dbg !1176
  %237 = load i32, i32* %i, align 4, !dbg !1177
  %shr307 = ashr i32 %237, 23, !dbg !1178
  %sub308 = sub nsw i32 %shr307, 127, !dbg !1179
  store i32 %sub308, i32* %k, align 4, !dbg !1180
  store i32 0, i32* %n, align 4, !dbg !1181
  %238 = load i32, i32* %i, align 4, !dbg !1182
  %cmp309 = icmp sgt i32 %238, 1056964608, !dbg !1184
  br i1 %cmp309, label %if.then311, label %if.end334, !dbg !1185

if.then311:                                       ; preds = %if.end305
  %239 = load i32, i32* %j, align 4, !dbg !1186
  %240 = load i32, i32* %k, align 4, !dbg !1188
  %add312 = add nsw i32 %240, 1, !dbg !1189
  %shr313 = ashr i32 8388608, %add312, !dbg !1190
  %add314 = add nsw i32 %239, %shr313, !dbg !1191
  store i32 %add314, i32* %n, align 4, !dbg !1192
  %241 = load i32, i32* %n, align 4, !dbg !1193
  %and315 = and i32 %241, 2147483647, !dbg !1194
  %shr316 = ashr i32 %and315, 23, !dbg !1195
  %sub317 = sub nsw i32 %shr316, 127, !dbg !1196
  store i32 %sub317, i32* %k, align 4, !dbg !1197
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u318, metadata !1198, metadata !DIExpression()), !dbg !1200
  %242 = load i32, i32* %n, align 4, !dbg !1200
  %243 = load i32, i32* %k, align 4, !dbg !1200
  %shr319 = ashr i32 8388607, %243, !dbg !1200
  %neg320 = xor i32 %shr319, -1, !dbg !1200
  %and321 = and i32 %242, %neg320, !dbg !1200
  %word322 = bitcast %union.ieee_float_shape_type* %sf_u318 to i32*, !dbg !1200
  store i32 %and321, i32* %word322, align 4, !dbg !1200
  %value323 = bitcast %union.ieee_float_shape_type* %sf_u318 to float*, !dbg !1200
  %244 = load float, float* %value323, align 4, !dbg !1200
  store float %244, float* %t, align 4, !dbg !1200
  %245 = load i32, i32* %n, align 4, !dbg !1201
  %and324 = and i32 %245, 8388607, !dbg !1202
  %or325 = or i32 %and324, 8388608, !dbg !1203
  %246 = load i32, i32* %k, align 4, !dbg !1204
  %sub326 = sub nsw i32 23, %246, !dbg !1205
  %shr327 = ashr i32 %or325, %sub326, !dbg !1206
  store i32 %shr327, i32* %n, align 4, !dbg !1207
  %247 = load i32, i32* %j, align 4, !dbg !1208
  %cmp328 = icmp slt i32 %247, 0, !dbg !1210
  br i1 %cmp328, label %if.then330, label %if.end332, !dbg !1211

if.then330:                                       ; preds = %if.then311
  %248 = load i32, i32* %n, align 4, !dbg !1212
  %sub331 = sub nsw i32 0, %248, !dbg !1213
  store i32 %sub331, i32* %n, align 4, !dbg !1214
  br label %if.end332, !dbg !1215

if.end332:                                        ; preds = %if.then330, %if.then311
  %249 = load float, float* %t, align 4, !dbg !1216
  %250 = load float, float* %p_h, align 4, !dbg !1217
  %sub333 = fsub float %250, %249, !dbg !1217
  store float %sub333, float* %p_h, align 4, !dbg !1217
  br label %if.end334, !dbg !1218

if.end334:                                        ; preds = %if.end332, %if.end305
  %251 = load float, float* %p_l, align 4, !dbg !1219
  %252 = load float, float* %p_h, align 4, !dbg !1220
  %add335 = fadd float %251, %252, !dbg !1221
  store float %add335, float* %t, align 4, !dbg !1222
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u336, metadata !1223, metadata !DIExpression()), !dbg !1225
  %253 = load float, float* %t, align 4, !dbg !1225
  %value337 = bitcast %union.ieee_float_shape_type* %gf_u336 to float*, !dbg !1225
  store float %253, float* %value337, align 4, !dbg !1225
  %word338 = bitcast %union.ieee_float_shape_type* %gf_u336 to i32*, !dbg !1225
  %254 = load i32, i32* %word338, align 4, !dbg !1225
  store i32 %254, i32* %is, align 4, !dbg !1225
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u339, metadata !1226, metadata !DIExpression()), !dbg !1228
  %255 = load i32, i32* %is, align 4, !dbg !1228
  %and340 = and i32 %255, -4096, !dbg !1228
  %word341 = bitcast %union.ieee_float_shape_type* %sf_u339 to i32*, !dbg !1228
  store i32 %and340, i32* %word341, align 4, !dbg !1228
  %value342 = bitcast %union.ieee_float_shape_type* %sf_u339 to float*, !dbg !1228
  %256 = load float, float* %value342, align 4, !dbg !1228
  store float %256, float* %t, align 4, !dbg !1228
  %257 = load float, float* %t, align 4, !dbg !1229
  %mul343 = fmul float %257, 0x3FE62E4000000000, !dbg !1230
  store float %mul343, float* %u, align 4, !dbg !1231
  %258 = load float, float* %p_l, align 4, !dbg !1232
  %259 = load float, float* %t, align 4, !dbg !1233
  %260 = load float, float* %p_h, align 4, !dbg !1234
  %sub344 = fsub float %259, %260, !dbg !1235
  %sub345 = fsub float %258, %sub344, !dbg !1236
  %261 = load float, float* %t, align 4, !dbg !1237
  %mul347 = fmul float %261, 0x3EB7F7D180000000, !dbg !1238
  %262 = call float @llvm.fmuladd.f32(float %sub345, float 0x3FE62E4300000000, float %mul347), !dbg !1239
  store float %262, float* %v, align 4, !dbg !1240
  %263 = load float, float* %u, align 4, !dbg !1241
  %264 = load float, float* %v, align 4, !dbg !1242
  %add348 = fadd float %263, %264, !dbg !1243
  store float %add348, float* %z, align 4, !dbg !1244
  %265 = load float, float* %v, align 4, !dbg !1245
  %266 = load float, float* %z, align 4, !dbg !1246
  %267 = load float, float* %u, align 4, !dbg !1247
  %sub349 = fsub float %266, %267, !dbg !1248
  %sub350 = fsub float %265, %sub349, !dbg !1249
  store float %sub350, float* %w, align 4, !dbg !1250
  %268 = load float, float* %z, align 4, !dbg !1251
  %269 = load float, float* %z, align 4, !dbg !1252
  %mul351 = fmul float %268, %269, !dbg !1253
  store float %mul351, float* %t, align 4, !dbg !1254
  %270 = load float, float* %z, align 4, !dbg !1255
  %271 = load float, float* %t, align 4, !dbg !1256
  %272 = load float, float* %t, align 4, !dbg !1257
  %273 = load float, float* %t, align 4, !dbg !1258
  %274 = load float, float* %t, align 4, !dbg !1259
  %275 = load float, float* %t, align 4, !dbg !1260
  %276 = call float @llvm.fmuladd.f32(float %275, float 0x3E66376980000000, float 0xBEBBBD41C0000000), !dbg !1261
  %277 = call float @llvm.fmuladd.f32(float %274, float %276, float 0x3F11566AA0000000), !dbg !1262
  %278 = call float @llvm.fmuladd.f32(float %273, float %277, float 0xBF66C16C20000000), !dbg !1263
  %279 = call float @llvm.fmuladd.f32(float %272, float %278, float 0x3FC5555560000000), !dbg !1264
  %neg357 = fneg float %271, !dbg !1265
  %280 = call float @llvm.fmuladd.f32(float %neg357, float %279, float %270), !dbg !1265
  store float %280, float* %t1, align 4, !dbg !1266
  %281 = load float, float* %z, align 4, !dbg !1267
  %282 = load float, float* %t1, align 4, !dbg !1268
  %mul358 = fmul float %281, %282, !dbg !1269
  %283 = load float, float* %t1, align 4, !dbg !1270
  %sub359 = fsub float %283, 2.000000e+00, !dbg !1271
  %div360 = fdiv float %mul358, %sub359, !dbg !1272
  %284 = load float, float* %w, align 4, !dbg !1273
  %285 = load float, float* %z, align 4, !dbg !1274
  %286 = load float, float* %w, align 4, !dbg !1275
  %287 = call float @llvm.fmuladd.f32(float %285, float %286, float %284), !dbg !1276
  %sub362 = fsub float %div360, %287, !dbg !1277
  store float %sub362, float* %r, align 4, !dbg !1278
  %288 = load float, float* %r, align 4, !dbg !1279
  %289 = load float, float* %z, align 4, !dbg !1280
  %sub363 = fsub float %288, %289, !dbg !1281
  %sub364 = fsub float 1.000000e+00, %sub363, !dbg !1282
  store float %sub364, float* %z, align 4, !dbg !1283
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u365, metadata !1284, metadata !DIExpression()), !dbg !1286
  %290 = load float, float* %z, align 4, !dbg !1286
  %value366 = bitcast %union.ieee_float_shape_type* %gf_u365 to float*, !dbg !1286
  store float %290, float* %value366, align 4, !dbg !1286
  %word367 = bitcast %union.ieee_float_shape_type* %gf_u365 to i32*, !dbg !1286
  %291 = load i32, i32* %word367, align 4, !dbg !1286
  store i32 %291, i32* %j, align 4, !dbg !1286
  %292 = load i32, i32* %n, align 4, !dbg !1287
  %shl368 = shl i32 %292, 23, !dbg !1288
  %293 = load i32, i32* %j, align 4, !dbg !1289
  %add369 = add nsw i32 %293, %shl368, !dbg !1289
  store i32 %add369, i32* %j, align 4, !dbg !1289
  %294 = load i32, i32* %j, align 4, !dbg !1290
  %shr370 = ashr i32 %294, 23, !dbg !1292
  %cmp371 = icmp sle i32 %shr370, 0, !dbg !1293
  br i1 %cmp371, label %if.then373, label %if.else375, !dbg !1294

if.then373:                                       ; preds = %if.end334
  %295 = load float, float* %z, align 4, !dbg !1295
  %296 = load i32, i32* %n, align 4, !dbg !1296
  %call374 = call arm_aapcs_vfpcc float @basicmath___scalbnf(float noundef %295, i32 noundef %296) #2, !dbg !1297
  store float %call374, float* %z, align 4, !dbg !1298
  br label %if.end379, !dbg !1299

if.else375:                                       ; preds = %if.end334
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u376, metadata !1300, metadata !DIExpression()), !dbg !1302
  %297 = load i32, i32* %j, align 4, !dbg !1302
  %word377 = bitcast %union.ieee_float_shape_type* %sf_u376 to i32*, !dbg !1302
  store i32 %297, i32* %word377, align 4, !dbg !1302
  %value378 = bitcast %union.ieee_float_shape_type* %sf_u376 to float*, !dbg !1302
  %298 = load float, float* %value378, align 4, !dbg !1302
  store float %298, float* %z, align 4, !dbg !1302
  br label %if.end379

if.end379:                                        ; preds = %if.else375, %if.then373
  %299 = load float, float* %s, align 4, !dbg !1303
  %300 = load float, float* %z, align 4, !dbg !1304
  %mul380 = fmul float %299, %300, !dbg !1305
  store float %mul380, float* %retval, align 4, !dbg !1306
  br label %return, !dbg !1306

return:                                           ; preds = %if.end379, %if.then298, %if.then288, %if.then280, %if.then269, %if.then108, %if.then103, %if.then95, %if.end89, %if.then60, %if.then55, %if.else52, %if.then51, %cond.end45, %cond.end, %if.then35, %if.then13, %if.then9, %if.then6, %if.then
  %301 = load float, float* %retval, align 4, !dbg !1307
  ret float %301, !dbg !1307
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @basicmath___isinff(float noundef %x) #0 !dbg !1308 {
entry:
  %x.addr = alloca float, align 4
  %ix = alloca i32, align 4
  %t = alloca i32, align 4
  %gf_u = alloca %union.ieee_float_shape_type, align 4
  store float %x, float* %x.addr, align 4
  call void @llvm.dbg.declare(metadata float* %x.addr, metadata !1311, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !1313, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.declare(metadata i32* %t, metadata !1315, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u, metadata !1317, metadata !DIExpression()), !dbg !1319
  %0 = load float, float* %x.addr, align 4, !dbg !1319
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !1319
  store float %0, float* %value, align 4, !dbg !1319
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !1319
  %1 = load i32, i32* %word, align 4, !dbg !1319
  store i32 %1, i32* %ix, align 4, !dbg !1319
  %2 = load i32, i32* %ix, align 4, !dbg !1320
  %and = and i32 %2, 2147483647, !dbg !1321
  store i32 %and, i32* %t, align 4, !dbg !1322
  %3 = load i32, i32* %t, align 4, !dbg !1323
  %xor = xor i32 %3, 2139095040, !dbg !1323
  store i32 %xor, i32* %t, align 4, !dbg !1323
  %4 = load i32, i32* %t, align 4, !dbg !1324
  %sub = sub nsw i32 0, %4, !dbg !1325
  %5 = load i32, i32* %t, align 4, !dbg !1326
  %or = or i32 %5, %sub, !dbg !1326
  store i32 %or, i32* %t, align 4, !dbg !1326
  %6 = load i32, i32* %t, align 4, !dbg !1327
  %shr = ashr i32 %6, 31, !dbg !1328
  %neg = xor i32 %shr, -1, !dbg !1329
  %7 = load i32, i32* %ix, align 4, !dbg !1330
  %shr1 = ashr i32 %7, 30, !dbg !1331
  %and2 = and i32 %neg, %shr1, !dbg !1332
  ret i32 %and2, !dbg !1333
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___fabsf(float noundef %x) #0 !dbg !1334 {
entry:
  %x.addr = alloca float, align 4
  %ix = alloca i32, align 4
  %gf_u = alloca %union.ieee_float_shape_type, align 4
  %sf_u = alloca %union.ieee_float_shape_type, align 4
  store float %x, float* %x.addr, align 4
  call void @llvm.dbg.declare(metadata float* %x.addr, metadata !1335, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !1337, metadata !DIExpression()), !dbg !1338
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u, metadata !1339, metadata !DIExpression()), !dbg !1341
  %0 = load float, float* %x.addr, align 4, !dbg !1341
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !1341
  store float %0, float* %value, align 4, !dbg !1341
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !1341
  %1 = load i32, i32* %word, align 4, !dbg !1341
  store i32 %1, i32* %ix, align 4, !dbg !1341
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u, metadata !1342, metadata !DIExpression()), !dbg !1344
  %2 = load i32, i32* %ix, align 4, !dbg !1344
  %and = and i32 %2, 2147483647, !dbg !1344
  %word1 = bitcast %union.ieee_float_shape_type* %sf_u to i32*, !dbg !1344
  store i32 %and, i32* %word1, align 4, !dbg !1344
  %value2 = bitcast %union.ieee_float_shape_type* %sf_u to float*, !dbg !1344
  %3 = load float, float* %value2, align 4, !dbg !1344
  store float %3, float* %x.addr, align 4, !dbg !1344
  %4 = load float, float* %x.addr, align 4, !dbg !1345
  ret float %4, !dbg !1346
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___scalbnf(float noundef %x, i32 noundef %n) #0 !dbg !1347 {
entry:
  %retval = alloca float, align 4
  %x.addr = alloca float, align 4
  %n.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %ix = alloca i32, align 4
  %gf_u = alloca %union.ieee_float_shape_type, align 4
  %gf_u4 = alloca %union.ieee_float_shape_type, align 4
  %sf_u = alloca %union.ieee_float_shape_type, align 4
  %sf_u36 = alloca %union.ieee_float_shape_type, align 4
  store float %x, float* %x.addr, align 4
  call void @llvm.dbg.declare(metadata float* %x.addr, metadata !1350, metadata !DIExpression()), !dbg !1351
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !1352, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.declare(metadata i32* %k, metadata !1354, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !1356, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u, metadata !1358, metadata !DIExpression()), !dbg !1360
  %0 = load float, float* %x.addr, align 4, !dbg !1360
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !1360
  store float %0, float* %value, align 4, !dbg !1360
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !1360
  %1 = load i32, i32* %word, align 4, !dbg !1360
  store i32 %1, i32* %ix, align 4, !dbg !1360
  %2 = load i32, i32* %ix, align 4, !dbg !1361
  %and = and i32 %2, 2139095040, !dbg !1362
  %shr = ashr i32 %and, 23, !dbg !1363
  store i32 %shr, i32* %k, align 4, !dbg !1364
  %3 = load i32, i32* %k, align 4, !dbg !1365
  %cmp = icmp eq i32 %3, 0, !dbg !1367
  br i1 %cmp, label %if.then, label %if.end9, !dbg !1368

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ix, align 4, !dbg !1369
  %and1 = and i32 %4, 2147483647, !dbg !1372
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1373
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1374

if.then3:                                         ; preds = %if.then
  %5 = load float, float* %x.addr, align 4, !dbg !1375
  store float %5, float* %retval, align 4, !dbg !1376
  br label %return, !dbg !1376

if.end:                                           ; preds = %if.then
  %6 = load float, float* %x.addr, align 4, !dbg !1377
  %mul = fmul float %6, 0x4180000000000000, !dbg !1377
  store float %mul, float* %x.addr, align 4, !dbg !1377
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u4, metadata !1378, metadata !DIExpression()), !dbg !1380
  %7 = load float, float* %x.addr, align 4, !dbg !1380
  %value5 = bitcast %union.ieee_float_shape_type* %gf_u4 to float*, !dbg !1380
  store float %7, float* %value5, align 4, !dbg !1380
  %word6 = bitcast %union.ieee_float_shape_type* %gf_u4 to i32*, !dbg !1380
  %8 = load i32, i32* %word6, align 4, !dbg !1380
  store i32 %8, i32* %ix, align 4, !dbg !1380
  %9 = load i32, i32* %ix, align 4, !dbg !1381
  %and7 = and i32 %9, 2139095040, !dbg !1382
  %shr8 = ashr i32 %and7, 23, !dbg !1383
  %sub = sub nsw i32 %shr8, 25, !dbg !1384
  store i32 %sub, i32* %k, align 4, !dbg !1385
  br label %if.end9, !dbg !1386

if.end9:                                          ; preds = %if.end, %entry
  %10 = load i32, i32* %k, align 4, !dbg !1387
  %cmp10 = icmp eq i32 %10, 255, !dbg !1389
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1390

if.then11:                                        ; preds = %if.end9
  %11 = load float, float* %x.addr, align 4, !dbg !1391
  %12 = load float, float* %x.addr, align 4, !dbg !1392
  %add = fadd float %11, %12, !dbg !1393
  store float %add, float* %retval, align 4, !dbg !1394
  br label %return, !dbg !1394

if.end12:                                         ; preds = %if.end9
  %13 = load i32, i32* %k, align 4, !dbg !1395
  %14 = load i32, i32* %n.addr, align 4, !dbg !1396
  %add13 = add nsw i32 %13, %14, !dbg !1397
  store i32 %add13, i32* %k, align 4, !dbg !1398
  %15 = load i32, i32* %n.addr, align 4, !dbg !1399
  %cmp14 = icmp sgt i32 %15, 50000, !dbg !1401
  br i1 %cmp14, label %if.then16, label %lor.lhs.false, !dbg !1402

lor.lhs.false:                                    ; preds = %if.end12
  %16 = load i32, i32* %k, align 4, !dbg !1403
  %cmp15 = icmp sgt i32 %16, 254, !dbg !1404
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !1405

if.then16:                                        ; preds = %lor.lhs.false, %if.end12
  %17 = load float, float* %x.addr, align 4, !dbg !1406
  %call = call arm_aapcs_vfpcc float @basicmath___copysignf(float noundef 0x46293E5940000000, float noundef %17) #2, !dbg !1407
  %mul17 = fmul float 0x46293E5940000000, %call, !dbg !1408
  store float %mul17, float* %retval, align 4, !dbg !1409
  br label %return, !dbg !1409

if.end18:                                         ; preds = %lor.lhs.false
  %18 = load i32, i32* %n.addr, align 4, !dbg !1410
  %cmp19 = icmp slt i32 %18, -50000, !dbg !1412
  br i1 %cmp19, label %if.then20, label %if.end23, !dbg !1413

if.then20:                                        ; preds = %if.end18
  %19 = load float, float* %x.addr, align 4, !dbg !1414
  %call21 = call arm_aapcs_vfpcc float @basicmath___copysignf(float noundef 0x39B4484C00000000, float noundef %19) #2, !dbg !1415
  %mul22 = fmul float 0x39B4484C00000000, %call21, !dbg !1416
  store float %mul22, float* %retval, align 4, !dbg !1417
  br label %return, !dbg !1417

if.end23:                                         ; preds = %if.end18
  %20 = load i32, i32* %k, align 4, !dbg !1418
  %cmp24 = icmp sgt i32 %20, 0, !dbg !1420
  br i1 %cmp24, label %if.then25, label %if.end29, !dbg !1421

if.then25:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u, metadata !1422, metadata !DIExpression()), !dbg !1425
  %21 = load i32, i32* %ix, align 4, !dbg !1425
  %and26 = and i32 %21, -2139095041, !dbg !1425
  %22 = load i32, i32* %k, align 4, !dbg !1425
  %shl = shl i32 %22, 23, !dbg !1425
  %or = or i32 %and26, %shl, !dbg !1425
  %word27 = bitcast %union.ieee_float_shape_type* %sf_u to i32*, !dbg !1425
  store i32 %or, i32* %word27, align 4, !dbg !1425
  %value28 = bitcast %union.ieee_float_shape_type* %sf_u to float*, !dbg !1425
  %23 = load float, float* %value28, align 4, !dbg !1425
  store float %23, float* %x.addr, align 4, !dbg !1425
  %24 = load float, float* %x.addr, align 4, !dbg !1426
  store float %24, float* %retval, align 4, !dbg !1427
  br label %return, !dbg !1427

if.end29:                                         ; preds = %if.end23
  %25 = load i32, i32* %k, align 4, !dbg !1428
  %cmp30 = icmp sle i32 %25, -25, !dbg !1430
  br i1 %cmp30, label %if.then31, label %if.end34, !dbg !1431

if.then31:                                        ; preds = %if.end29
  %26 = load float, float* %x.addr, align 4, !dbg !1432
  %call32 = call arm_aapcs_vfpcc float @basicmath___copysignf(float noundef 0x39B4484C00000000, float noundef %26) #2, !dbg !1433
  %mul33 = fmul float 0x39B4484C00000000, %call32, !dbg !1434
  store float %mul33, float* %retval, align 4, !dbg !1435
  br label %return, !dbg !1435

if.end34:                                         ; preds = %if.end29
  %27 = load i32, i32* %k, align 4, !dbg !1436
  %add35 = add nsw i32 %27, 25, !dbg !1436
  store i32 %add35, i32* %k, align 4, !dbg !1436
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u36, metadata !1437, metadata !DIExpression()), !dbg !1439
  %28 = load i32, i32* %ix, align 4, !dbg !1439
  %and37 = and i32 %28, -2139095041, !dbg !1439
  %29 = load i32, i32* %k, align 4, !dbg !1439
  %shl38 = shl i32 %29, 23, !dbg !1439
  %or39 = or i32 %and37, %shl38, !dbg !1439
  %word40 = bitcast %union.ieee_float_shape_type* %sf_u36 to i32*, !dbg !1439
  store i32 %or39, i32* %word40, align 4, !dbg !1439
  %value41 = bitcast %union.ieee_float_shape_type* %sf_u36 to float*, !dbg !1439
  %30 = load float, float* %value41, align 4, !dbg !1439
  store float %30, float* %x.addr, align 4, !dbg !1439
  %31 = load float, float* %x.addr, align 4, !dbg !1440
  %mul42 = fmul float %31, 0x3E60000000000000, !dbg !1441
  store float %mul42, float* %retval, align 4, !dbg !1442
  br label %return, !dbg !1442

return:                                           ; preds = %if.end34, %if.then31, %if.then25, %if.then20, %if.then16, %if.then11, %if.then3
  %32 = load float, float* %retval, align 4, !dbg !1443
  ret float %32, !dbg !1443
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @basicmath___ieee754_rem_pio2f(float noundef %x, float* noundef %y) #0 !dbg !1444 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca float, align 4
  %y.addr = alloca float*, align 4
  %z = alloca float, align 4
  %w = alloca float, align 4
  %t = alloca float, align 4
  %r = alloca float, align 4
  %fn = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %ix = alloca i32, align 4
  %hx = alloca i32, align 4
  %gf_u = alloca %union.ieee_float_shape_type, align 4
  %high = alloca i32, align 4
  %gf_u59 = alloca %union.ieee_float_shape_type, align 4
  %gf_u77 = alloca %union.ieee_float_shape_type, align 4
  store float %x, float* %x.addr, align 4
  call void @llvm.dbg.declare(metadata float* %x.addr, metadata !1448, metadata !DIExpression()), !dbg !1449
  store float* %y, float** %y.addr, align 4
  call void @llvm.dbg.declare(metadata float** %y.addr, metadata !1450, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.declare(metadata float* %z, metadata !1452, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.declare(metadata float* %w, metadata !1454, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.declare(metadata float* %t, metadata !1456, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.declare(metadata float* %r, metadata !1458, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.declare(metadata float* %fn, metadata !1460, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1462, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1464, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.declare(metadata i32* %n, metadata !1466, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !1468, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !1470, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u, metadata !1472, metadata !DIExpression()), !dbg !1474
  %0 = load float, float* %x.addr, align 4, !dbg !1474
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !1474
  store float %0, float* %value, align 4, !dbg !1474
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !1474
  %1 = load i32, i32* %word, align 4, !dbg !1474
  store i32 %1, i32* %hx, align 4, !dbg !1474
  %2 = load i32, i32* %hx, align 4, !dbg !1475
  %and = and i32 %2, 2147483647, !dbg !1476
  store i32 %and, i32* %ix, align 4, !dbg !1477
  %3 = load i32, i32* %ix, align 4, !dbg !1478
  %cmp = icmp sle i32 %3, 1061752792, !dbg !1480
  br i1 %cmp, label %if.then, label %if.end, !dbg !1481

if.then:                                          ; preds = %entry
  %4 = load float, float* %x.addr, align 4, !dbg !1482
  %5 = load float*, float** %y.addr, align 4, !dbg !1484
  %arrayidx = getelementptr inbounds float, float* %5, i32 0, !dbg !1484
  store float %4, float* %arrayidx, align 4, !dbg !1485
  %6 = load float*, float** %y.addr, align 4, !dbg !1486
  %arrayidx1 = getelementptr inbounds float, float* %6, i32 1, !dbg !1486
  store float 0.000000e+00, float* %arrayidx1, align 4, !dbg !1487
  store i32 0, i32* %retval, align 4, !dbg !1488
  br label %return, !dbg !1488

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %ix, align 4, !dbg !1489
  %cmp2 = icmp slt i32 %7, 1075235812, !dbg !1491
  br i1 %cmp2, label %if.then3, label %if.end42, !dbg !1492

if.then3:                                         ; preds = %if.end
  %8 = load i32, i32* %hx, align 4, !dbg !1493
  %cmp4 = icmp sgt i32 %8, 0, !dbg !1496
  br i1 %cmp4, label %if.then5, label %if.else23, !dbg !1497

if.then5:                                         ; preds = %if.then3
  %9 = load float, float* %x.addr, align 4, !dbg !1498
  %sub = fsub float %9, 0x3FF921F000000000, !dbg !1500
  store float %sub, float* %z, align 4, !dbg !1501
  %10 = load i32, i32* %ix, align 4, !dbg !1502
  %and6 = and i32 %10, -16, !dbg !1504
  %cmp7 = icmp ne i32 %and6, 1070141392, !dbg !1505
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !1506

if.then8:                                         ; preds = %if.then5
  %11 = load float, float* %z, align 4, !dbg !1507
  %sub9 = fsub float %11, 0x3EE6A88860000000, !dbg !1509
  %12 = load float*, float** %y.addr, align 4, !dbg !1510
  %arrayidx10 = getelementptr inbounds float, float* %12, i32 0, !dbg !1510
  store float %sub9, float* %arrayidx10, align 4, !dbg !1511
  %13 = load float, float* %z, align 4, !dbg !1512
  %14 = load float*, float** %y.addr, align 4, !dbg !1513
  %arrayidx11 = getelementptr inbounds float, float* %14, i32 0, !dbg !1513
  %15 = load float, float* %arrayidx11, align 4, !dbg !1513
  %sub12 = fsub float %13, %15, !dbg !1514
  %sub13 = fsub float %sub12, 0x3EE6A88860000000, !dbg !1515
  %16 = load float*, float** %y.addr, align 4, !dbg !1516
  %arrayidx14 = getelementptr inbounds float, float* %16, i32 1, !dbg !1516
  store float %sub13, float* %arrayidx14, align 4, !dbg !1517
  br label %if.end22, !dbg !1518

if.else:                                          ; preds = %if.then5
  %17 = load float, float* %z, align 4, !dbg !1519
  %sub15 = fsub float %17, 0x3EE6A88000000000, !dbg !1519
  store float %sub15, float* %z, align 4, !dbg !1519
  %18 = load float, float* %z, align 4, !dbg !1521
  %sub16 = fsub float %18, 0x3DD0B46100000000, !dbg !1522
  %19 = load float*, float** %y.addr, align 4, !dbg !1523
  %arrayidx17 = getelementptr inbounds float, float* %19, i32 0, !dbg !1523
  store float %sub16, float* %arrayidx17, align 4, !dbg !1524
  %20 = load float, float* %z, align 4, !dbg !1525
  %21 = load float*, float** %y.addr, align 4, !dbg !1526
  %arrayidx18 = getelementptr inbounds float, float* %21, i32 0, !dbg !1526
  %22 = load float, float* %arrayidx18, align 4, !dbg !1526
  %sub19 = fsub float %20, %22, !dbg !1527
  %sub20 = fsub float %sub19, 0x3DD0B46100000000, !dbg !1528
  %23 = load float*, float** %y.addr, align 4, !dbg !1529
  %arrayidx21 = getelementptr inbounds float, float* %23, i32 1, !dbg !1529
  store float %sub20, float* %arrayidx21, align 4, !dbg !1530
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then8
  store i32 1, i32* %retval, align 4, !dbg !1531
  br label %return, !dbg !1531

if.else23:                                        ; preds = %if.then3
  %24 = load float, float* %x.addr, align 4, !dbg !1532
  %add = fadd float %24, 0x3FF921F000000000, !dbg !1534
  store float %add, float* %z, align 4, !dbg !1535
  %25 = load i32, i32* %ix, align 4, !dbg !1536
  %and24 = and i32 %25, -16, !dbg !1538
  %cmp25 = icmp ne i32 %and24, 1070141392, !dbg !1539
  br i1 %cmp25, label %if.then26, label %if.else33, !dbg !1540

if.then26:                                        ; preds = %if.else23
  %26 = load float, float* %z, align 4, !dbg !1541
  %add27 = fadd float %26, 0x3EE6A88860000000, !dbg !1543
  %27 = load float*, float** %y.addr, align 4, !dbg !1544
  %arrayidx28 = getelementptr inbounds float, float* %27, i32 0, !dbg !1544
  store float %add27, float* %arrayidx28, align 4, !dbg !1545
  %28 = load float, float* %z, align 4, !dbg !1546
  %29 = load float*, float** %y.addr, align 4, !dbg !1547
  %arrayidx29 = getelementptr inbounds float, float* %29, i32 0, !dbg !1547
  %30 = load float, float* %arrayidx29, align 4, !dbg !1547
  %sub30 = fsub float %28, %30, !dbg !1548
  %add31 = fadd float %sub30, 0x3EE6A88860000000, !dbg !1549
  %31 = load float*, float** %y.addr, align 4, !dbg !1550
  %arrayidx32 = getelementptr inbounds float, float* %31, i32 1, !dbg !1550
  store float %add31, float* %arrayidx32, align 4, !dbg !1551
  br label %if.end41, !dbg !1552

if.else33:                                        ; preds = %if.else23
  %32 = load float, float* %z, align 4, !dbg !1553
  %add34 = fadd float %32, 0x3EE6A88000000000, !dbg !1553
  store float %add34, float* %z, align 4, !dbg !1553
  %33 = load float, float* %z, align 4, !dbg !1555
  %add35 = fadd float %33, 0x3DD0B46100000000, !dbg !1556
  %34 = load float*, float** %y.addr, align 4, !dbg !1557
  %arrayidx36 = getelementptr inbounds float, float* %34, i32 0, !dbg !1557
  store float %add35, float* %arrayidx36, align 4, !dbg !1558
  %35 = load float, float* %z, align 4, !dbg !1559
  %36 = load float*, float** %y.addr, align 4, !dbg !1560
  %arrayidx37 = getelementptr inbounds float, float* %36, i32 0, !dbg !1560
  %37 = load float, float* %arrayidx37, align 4, !dbg !1560
  %sub38 = fsub float %35, %37, !dbg !1561
  %add39 = fadd float %sub38, 0x3DD0B46100000000, !dbg !1562
  %38 = load float*, float** %y.addr, align 4, !dbg !1563
  %arrayidx40 = getelementptr inbounds float, float* %38, i32 1, !dbg !1563
  store float %add39, float* %arrayidx40, align 4, !dbg !1564
  br label %if.end41

if.end41:                                         ; preds = %if.else33, %if.then26
  store i32 -1, i32* %retval, align 4, !dbg !1565
  br label %return, !dbg !1565

if.end42:                                         ; preds = %if.end
  %39 = load i32, i32* %ix, align 4, !dbg !1566
  %cmp43 = icmp sle i32 %39, 1128861568, !dbg !1568
  br i1 %cmp43, label %if.then44, label %if.end112, !dbg !1569

if.then44:                                        ; preds = %if.end42
  %40 = load float, float* %x.addr, align 4, !dbg !1570
  %call = call arm_aapcs_vfpcc float @basicmath___fabsf(float noundef %40) #2, !dbg !1572
  store float %call, float* %t, align 4, !dbg !1573
  %41 = load float, float* %t, align 4, !dbg !1574
  %42 = call float @llvm.fmuladd.f32(float %41, float 0x3FE45F3080000000, float 5.000000e-01), !dbg !1575
  %conv = fptosi float %42 to i32, !dbg !1576
  store i32 %conv, i32* %n, align 4, !dbg !1577
  %43 = load i32, i32* %n, align 4, !dbg !1578
  %conv45 = sitofp i32 %43 to float, !dbg !1579
  store float %conv45, float* %fn, align 4, !dbg !1580
  %44 = load float, float* %t, align 4, !dbg !1581
  %45 = load float, float* %fn, align 4, !dbg !1582
  %neg = fneg float %45, !dbg !1583
  %46 = call float @llvm.fmuladd.f32(float %neg, float 0x3FF921F000000000, float %44), !dbg !1583
  store float %46, float* %r, align 4, !dbg !1584
  %47 = load float, float* %fn, align 4, !dbg !1585
  %mul = fmul float %47, 0x3EE6A88860000000, !dbg !1586
  store float %mul, float* %w, align 4, !dbg !1587
  %48 = load i32, i32* %n, align 4, !dbg !1588
  %cmp46 = icmp slt i32 %48, 32, !dbg !1590
  br i1 %cmp46, label %land.lhs.true, label %if.else56, !dbg !1591

land.lhs.true:                                    ; preds = %if.then44
  %49 = load i32, i32* %ix, align 4, !dbg !1592
  %and48 = and i32 %49, -256, !dbg !1593
  %50 = load i32, i32* %n, align 4, !dbg !1594
  %sub49 = sub nsw i32 %50, 1, !dbg !1595
  %arrayidx50 = getelementptr inbounds [32 x i32], [32 x i32]* @basicmath_npio2_hw, i32 0, i32 %sub49, !dbg !1596
  %51 = load i32, i32* %arrayidx50, align 4, !dbg !1596
  %cmp51 = icmp ne i32 %and48, %51, !dbg !1597
  br i1 %cmp51, label %if.then53, label %if.else56, !dbg !1598

if.then53:                                        ; preds = %land.lhs.true
  %52 = load float, float* %r, align 4, !dbg !1599
  %53 = load float, float* %w, align 4, !dbg !1601
  %sub54 = fsub float %52, %53, !dbg !1602
  %54 = load float*, float** %y.addr, align 4, !dbg !1603
  %arrayidx55 = getelementptr inbounds float, float* %54, i32 0, !dbg !1603
  store float %sub54, float* %arrayidx55, align 4, !dbg !1604
  br label %if.end97, !dbg !1605

if.else56:                                        ; preds = %land.lhs.true, %if.then44
  call void @llvm.dbg.declare(metadata i32* %high, metadata !1606, metadata !DIExpression()), !dbg !1608
  %55 = load i32, i32* %ix, align 4, !dbg !1609
  %shr = ashr i32 %55, 23, !dbg !1610
  store i32 %shr, i32* %j, align 4, !dbg !1611
  %56 = load float, float* %r, align 4, !dbg !1612
  %57 = load float, float* %w, align 4, !dbg !1613
  %sub57 = fsub float %56, %57, !dbg !1614
  %58 = load float*, float** %y.addr, align 4, !dbg !1615
  %arrayidx58 = getelementptr inbounds float, float* %58, i32 0, !dbg !1615
  store float %sub57, float* %arrayidx58, align 4, !dbg !1616
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u59, metadata !1617, metadata !DIExpression()), !dbg !1619
  %59 = load float*, float** %y.addr, align 4, !dbg !1619
  %arrayidx60 = getelementptr inbounds float, float* %59, i32 0, !dbg !1619
  %60 = load float, float* %arrayidx60, align 4, !dbg !1619
  %value61 = bitcast %union.ieee_float_shape_type* %gf_u59 to float*, !dbg !1619
  store float %60, float* %value61, align 4, !dbg !1619
  %word62 = bitcast %union.ieee_float_shape_type* %gf_u59 to i32*, !dbg !1619
  %61 = load i32, i32* %word62, align 4, !dbg !1619
  store i32 %61, i32* %high, align 4, !dbg !1619
  %62 = load i32, i32* %j, align 4, !dbg !1620
  %63 = load i32, i32* %high, align 4, !dbg !1621
  %shr63 = lshr i32 %63, 23, !dbg !1622
  %and64 = and i32 %shr63, 255, !dbg !1623
  %sub65 = sub i32 %62, %and64, !dbg !1624
  store i32 %sub65, i32* %i, align 4, !dbg !1625
  %64 = load i32, i32* %i, align 4, !dbg !1626
  %cmp66 = icmp sgt i32 %64, 8, !dbg !1628
  br i1 %cmp66, label %if.then68, label %if.end96, !dbg !1629

if.then68:                                        ; preds = %if.else56
  %65 = load float, float* %r, align 4, !dbg !1630
  store float %65, float* %t, align 4, !dbg !1632
  %66 = load float, float* %fn, align 4, !dbg !1633
  %mul69 = fmul float %66, 0x3EE6A88000000000, !dbg !1634
  store float %mul69, float* %w, align 4, !dbg !1635
  %67 = load float, float* %t, align 4, !dbg !1636
  %68 = load float, float* %w, align 4, !dbg !1637
  %sub70 = fsub float %67, %68, !dbg !1638
  store float %sub70, float* %r, align 4, !dbg !1639
  %69 = load float, float* %fn, align 4, !dbg !1640
  %70 = load float, float* %t, align 4, !dbg !1641
  %71 = load float, float* %r, align 4, !dbg !1642
  %sub72 = fsub float %70, %71, !dbg !1643
  %72 = load float, float* %w, align 4, !dbg !1644
  %sub73 = fsub float %sub72, %72, !dbg !1645
  %neg74 = fneg float %sub73, !dbg !1646
  %73 = call float @llvm.fmuladd.f32(float %69, float 0x3DD0B46100000000, float %neg74), !dbg !1646
  store float %73, float* %w, align 4, !dbg !1647
  %74 = load float, float* %r, align 4, !dbg !1648
  %75 = load float, float* %w, align 4, !dbg !1649
  %sub75 = fsub float %74, %75, !dbg !1650
  %76 = load float*, float** %y.addr, align 4, !dbg !1651
  %arrayidx76 = getelementptr inbounds float, float* %76, i32 0, !dbg !1651
  store float %sub75, float* %arrayidx76, align 4, !dbg !1652
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u77, metadata !1653, metadata !DIExpression()), !dbg !1655
  %77 = load float*, float** %y.addr, align 4, !dbg !1655
  %arrayidx78 = getelementptr inbounds float, float* %77, i32 0, !dbg !1655
  %78 = load float, float* %arrayidx78, align 4, !dbg !1655
  %value79 = bitcast %union.ieee_float_shape_type* %gf_u77 to float*, !dbg !1655
  store float %78, float* %value79, align 4, !dbg !1655
  %word80 = bitcast %union.ieee_float_shape_type* %gf_u77 to i32*, !dbg !1655
  %79 = load i32, i32* %word80, align 4, !dbg !1655
  store i32 %79, i32* %high, align 4, !dbg !1655
  %80 = load i32, i32* %j, align 4, !dbg !1656
  %81 = load i32, i32* %high, align 4, !dbg !1657
  %shr81 = lshr i32 %81, 23, !dbg !1658
  %and82 = and i32 %shr81, 255, !dbg !1659
  %sub83 = sub i32 %80, %and82, !dbg !1660
  store i32 %sub83, i32* %i, align 4, !dbg !1661
  %82 = load i32, i32* %i, align 4, !dbg !1662
  %cmp84 = icmp sgt i32 %82, 25, !dbg !1664
  br i1 %cmp84, label %if.then86, label %if.end95, !dbg !1665

if.then86:                                        ; preds = %if.then68
  %83 = load float, float* %r, align 4, !dbg !1666
  store float %83, float* %t, align 4, !dbg !1668
  %84 = load float, float* %fn, align 4, !dbg !1669
  %mul87 = fmul float %84, 0x3DD0B46000000000, !dbg !1670
  store float %mul87, float* %w, align 4, !dbg !1671
  %85 = load float, float* %t, align 4, !dbg !1672
  %86 = load float, float* %w, align 4, !dbg !1673
  %sub88 = fsub float %85, %86, !dbg !1674
  store float %sub88, float* %r, align 4, !dbg !1675
  %87 = load float, float* %fn, align 4, !dbg !1676
  %88 = load float, float* %t, align 4, !dbg !1677
  %89 = load float, float* %r, align 4, !dbg !1678
  %sub90 = fsub float %88, %89, !dbg !1679
  %90 = load float, float* %w, align 4, !dbg !1680
  %sub91 = fsub float %sub90, %90, !dbg !1681
  %neg92 = fneg float %sub91, !dbg !1682
  %91 = call float @llvm.fmuladd.f32(float %87, float 0x3C91A62640000000, float %neg92), !dbg !1682
  store float %91, float* %w, align 4, !dbg !1683
  %92 = load float, float* %r, align 4, !dbg !1684
  %93 = load float, float* %w, align 4, !dbg !1685
  %sub93 = fsub float %92, %93, !dbg !1686
  %94 = load float*, float** %y.addr, align 4, !dbg !1687
  %arrayidx94 = getelementptr inbounds float, float* %94, i32 0, !dbg !1687
  store float %sub93, float* %arrayidx94, align 4, !dbg !1688
  br label %if.end95, !dbg !1689

if.end95:                                         ; preds = %if.then86, %if.then68
  br label %if.end96, !dbg !1690

if.end96:                                         ; preds = %if.end95, %if.else56
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then53
  %95 = load float, float* %r, align 4, !dbg !1691
  %96 = load float*, float** %y.addr, align 4, !dbg !1692
  %arrayidx98 = getelementptr inbounds float, float* %96, i32 0, !dbg !1692
  %97 = load float, float* %arrayidx98, align 4, !dbg !1692
  %sub99 = fsub float %95, %97, !dbg !1693
  %98 = load float, float* %w, align 4, !dbg !1694
  %sub100 = fsub float %sub99, %98, !dbg !1695
  %99 = load float*, float** %y.addr, align 4, !dbg !1696
  %arrayidx101 = getelementptr inbounds float, float* %99, i32 1, !dbg !1696
  store float %sub100, float* %arrayidx101, align 4, !dbg !1697
  %100 = load i32, i32* %hx, align 4, !dbg !1698
  %cmp102 = icmp slt i32 %100, 0, !dbg !1700
  br i1 %cmp102, label %if.then104, label %if.else111, !dbg !1701

if.then104:                                       ; preds = %if.end97
  %101 = load float*, float** %y.addr, align 4, !dbg !1702
  %arrayidx105 = getelementptr inbounds float, float* %101, i32 0, !dbg !1702
  %102 = load float, float* %arrayidx105, align 4, !dbg !1702
  %fneg = fneg float %102, !dbg !1704
  %103 = load float*, float** %y.addr, align 4, !dbg !1705
  %arrayidx106 = getelementptr inbounds float, float* %103, i32 0, !dbg !1705
  store float %fneg, float* %arrayidx106, align 4, !dbg !1706
  %104 = load float*, float** %y.addr, align 4, !dbg !1707
  %arrayidx107 = getelementptr inbounds float, float* %104, i32 1, !dbg !1707
  %105 = load float, float* %arrayidx107, align 4, !dbg !1707
  %fneg108 = fneg float %105, !dbg !1708
  %106 = load float*, float** %y.addr, align 4, !dbg !1709
  %arrayidx109 = getelementptr inbounds float, float* %106, i32 1, !dbg !1709
  store float %fneg108, float* %arrayidx109, align 4, !dbg !1710
  %107 = load i32, i32* %n, align 4, !dbg !1711
  %sub110 = sub nsw i32 0, %107, !dbg !1712
  store i32 %sub110, i32* %retval, align 4, !dbg !1713
  br label %return, !dbg !1713

if.else111:                                       ; preds = %if.end97
  %108 = load i32, i32* %n, align 4, !dbg !1714
  store i32 %108, i32* %retval, align 4, !dbg !1715
  br label %return, !dbg !1715

if.end112:                                        ; preds = %if.end42
  %109 = load i32, i32* %ix, align 4, !dbg !1716
  %cmp113 = icmp sge i32 %109, 2139095040, !dbg !1718
  br i1 %cmp113, label %if.then115, label %if.end119, !dbg !1719

if.then115:                                       ; preds = %if.end112
  %110 = load float, float* %x.addr, align 4, !dbg !1720
  %111 = load float, float* %x.addr, align 4, !dbg !1722
  %sub116 = fsub float %110, %111, !dbg !1723
  %112 = load float*, float** %y.addr, align 4, !dbg !1724
  %arrayidx117 = getelementptr inbounds float, float* %112, i32 1, !dbg !1724
  store float %sub116, float* %arrayidx117, align 4, !dbg !1725
  %113 = load float*, float** %y.addr, align 4, !dbg !1726
  %arrayidx118 = getelementptr inbounds float, float* %113, i32 0, !dbg !1726
  store float %sub116, float* %arrayidx118, align 4, !dbg !1727
  store i32 0, i32* %retval, align 4, !dbg !1728
  br label %return, !dbg !1728

if.end119:                                        ; preds = %if.end112
  %114 = load float, float* %x.addr, align 4, !dbg !1729
  %115 = load float, float* %x.addr, align 4, !dbg !1730
  %sub120 = fsub float %114, %115, !dbg !1731
  %116 = load float*, float** %y.addr, align 4, !dbg !1732
  %arrayidx121 = getelementptr inbounds float, float* %116, i32 1, !dbg !1732
  store float %sub120, float* %arrayidx121, align 4, !dbg !1733
  %117 = load float*, float** %y.addr, align 4, !dbg !1734
  %arrayidx122 = getelementptr inbounds float, float* %117, i32 0, !dbg !1734
  store float %sub120, float* %arrayidx122, align 4, !dbg !1735
  store i32 0, i32* %retval, align 4, !dbg !1736
  br label %return, !dbg !1736

return:                                           ; preds = %if.end119, %if.then115, %if.else111, %if.then104, %if.end41, %if.end22, %if.then
  %118 = load i32, i32* %retval, align 4, !dbg !1737
  ret i32 %118, !dbg !1737
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___kernel_cosf(float noundef %x, float noundef %y) #0 !dbg !1738 {
entry:
  %retval = alloca float, align 4
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %a = alloca float, align 4
  %hz = alloca float, align 4
  %z = alloca float, align 4
  %r = alloca float, align 4
  %qx = alloca float, align 4
  %ix = alloca i32, align 4
  %gf_u = alloca %union.ieee_float_shape_type, align 4
  %sf_u = alloca %union.ieee_float_shape_type, align 4
  store float %x, float* %x.addr, align 4
  call void @llvm.dbg.declare(metadata float* %x.addr, metadata !1739, metadata !DIExpression()), !dbg !1740
  store float %y, float* %y.addr, align 4
  call void @llvm.dbg.declare(metadata float* %y.addr, metadata !1741, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.declare(metadata float* %a, metadata !1743, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.declare(metadata float* %hz, metadata !1745, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.declare(metadata float* %z, metadata !1747, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.declare(metadata float* %r, metadata !1749, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.declare(metadata float* %qx, metadata !1751, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !1753, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u, metadata !1755, metadata !DIExpression()), !dbg !1757
  %0 = load float, float* %x.addr, align 4, !dbg !1757
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !1757
  store float %0, float* %value, align 4, !dbg !1757
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !1757
  %1 = load i32, i32* %word, align 4, !dbg !1757
  store i32 %1, i32* %ix, align 4, !dbg !1757
  %2 = load i32, i32* %ix, align 4, !dbg !1758
  %and = and i32 %2, 2147483647, !dbg !1758
  store i32 %and, i32* %ix, align 4, !dbg !1758
  %3 = load i32, i32* %ix, align 4, !dbg !1759
  %cmp = icmp slt i32 %3, 838860800, !dbg !1761
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1762

if.then:                                          ; preds = %entry
  %4 = load float, float* %x.addr, align 4, !dbg !1763
  %conv = fptosi float %4 to i32, !dbg !1766
  %cmp1 = icmp eq i32 %conv, 0, !dbg !1767
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !1768

if.then3:                                         ; preds = %if.then
  store float 1.000000e+00, float* %retval, align 4, !dbg !1769
  br label %return, !dbg !1769

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !1770

if.end4:                                          ; preds = %if.end, %entry
  %5 = load float, float* %x.addr, align 4, !dbg !1771
  %6 = load float, float* %x.addr, align 4, !dbg !1772
  %mul = fmul float %5, %6, !dbg !1773
  store float %mul, float* %z, align 4, !dbg !1774
  %7 = load float, float* %z, align 4, !dbg !1775
  %8 = load float, float* %z, align 4, !dbg !1776
  %9 = load float, float* %z, align 4, !dbg !1777
  %10 = load float, float* %z, align 4, !dbg !1778
  %11 = load float, float* %z, align 4, !dbg !1779
  %12 = load float, float* %z, align 4, !dbg !1780
  %13 = call float @llvm.fmuladd.f32(float %12, float 0xBDA8FAE9C0000000, float 0x3E21EE9EC0000000), !dbg !1781
  %14 = call float @llvm.fmuladd.f32(float %11, float %13, float 0xBE927E4F80000000), !dbg !1782
  %15 = call float @llvm.fmuladd.f32(float %10, float %14, float 0x3EFA01A020000000), !dbg !1783
  %16 = call float @llvm.fmuladd.f32(float %9, float %15, float 0xBF56C16C20000000), !dbg !1784
  %17 = call float @llvm.fmuladd.f32(float %8, float %16, float 0x3FA5555560000000), !dbg !1785
  %mul10 = fmul float %7, %17, !dbg !1786
  store float %mul10, float* %r, align 4, !dbg !1787
  %18 = load i32, i32* %ix, align 4, !dbg !1788
  %cmp11 = icmp slt i32 %18, 1050253722, !dbg !1790
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !1791

if.then13:                                        ; preds = %if.end4
  %19 = load float, float* %z, align 4, !dbg !1792
  %20 = load float, float* %z, align 4, !dbg !1793
  %21 = load float, float* %r, align 4, !dbg !1794
  %22 = load float, float* %x.addr, align 4, !dbg !1795
  %23 = load float, float* %y.addr, align 4, !dbg !1796
  %mul16 = fmul float %22, %23, !dbg !1797
  %neg = fneg float %mul16, !dbg !1798
  %24 = call float @llvm.fmuladd.f32(float %20, float %21, float %neg), !dbg !1798
  %neg17 = fneg float %24, !dbg !1799
  %25 = call float @llvm.fmuladd.f32(float 5.000000e-01, float %19, float %neg17), !dbg !1799
  %sub = fsub float 1.000000e+00, %25, !dbg !1800
  store float %sub, float* %retval, align 4, !dbg !1801
  br label %return, !dbg !1801

if.else:                                          ; preds = %if.end4
  %26 = load i32, i32* %ix, align 4, !dbg !1802
  %cmp18 = icmp sgt i32 %26, 1061683200, !dbg !1805
  br i1 %cmp18, label %if.then20, label %if.else21, !dbg !1806

if.then20:                                        ; preds = %if.else
  store float 2.812500e-01, float* %qx, align 4, !dbg !1807
  br label %if.end25, !dbg !1808

if.else21:                                        ; preds = %if.else
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u, metadata !1809, metadata !DIExpression()), !dbg !1812
  %27 = load i32, i32* %ix, align 4, !dbg !1812
  %sub22 = sub nsw i32 %27, 16777216, !dbg !1812
  %word23 = bitcast %union.ieee_float_shape_type* %sf_u to i32*, !dbg !1812
  store i32 %sub22, i32* %word23, align 4, !dbg !1812
  %value24 = bitcast %union.ieee_float_shape_type* %sf_u to float*, !dbg !1812
  %28 = load float, float* %value24, align 4, !dbg !1812
  store float %28, float* %qx, align 4, !dbg !1812
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then20
  %29 = load float, float* %z, align 4, !dbg !1813
  %30 = load float, float* %qx, align 4, !dbg !1814
  %neg27 = fneg float %30, !dbg !1815
  %31 = call float @llvm.fmuladd.f32(float 5.000000e-01, float %29, float %neg27), !dbg !1815
  store float %31, float* %hz, align 4, !dbg !1816
  %32 = load float, float* %qx, align 4, !dbg !1817
  %sub28 = fsub float 1.000000e+00, %32, !dbg !1818
  store float %sub28, float* %a, align 4, !dbg !1819
  %33 = load float, float* %a, align 4, !dbg !1820
  %34 = load float, float* %hz, align 4, !dbg !1821
  %35 = load float, float* %z, align 4, !dbg !1822
  %36 = load float, float* %r, align 4, !dbg !1823
  %37 = load float, float* %x.addr, align 4, !dbg !1824
  %38 = load float, float* %y.addr, align 4, !dbg !1825
  %mul30 = fmul float %37, %38, !dbg !1826
  %neg31 = fneg float %mul30, !dbg !1827
  %39 = call float @llvm.fmuladd.f32(float %35, float %36, float %neg31), !dbg !1827
  %sub32 = fsub float %34, %39, !dbg !1828
  %sub33 = fsub float %33, %sub32, !dbg !1829
  store float %sub33, float* %retval, align 4, !dbg !1830
  br label %return, !dbg !1830

return:                                           ; preds = %if.end25, %if.then13, %if.then3
  %40 = load float, float* %retval, align 4, !dbg !1831
  ret float %40, !dbg !1831
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___kernel_sinf(float noundef %x, float noundef %y, i32 noundef %iy) #0 !dbg !1832 {
entry:
  %retval = alloca float, align 4
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %iy.addr = alloca i32, align 4
  %z = alloca float, align 4
  %r = alloca float, align 4
  %v = alloca float, align 4
  %ix = alloca i32, align 4
  %gf_u = alloca %union.ieee_float_shape_type, align 4
  store float %x, float* %x.addr, align 4
  call void @llvm.dbg.declare(metadata float* %x.addr, metadata !1835, metadata !DIExpression()), !dbg !1836
  store float %y, float* %y.addr, align 4
  call void @llvm.dbg.declare(metadata float* %y.addr, metadata !1837, metadata !DIExpression()), !dbg !1838
  store i32 %iy, i32* %iy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %iy.addr, metadata !1839, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.declare(metadata float* %z, metadata !1841, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.declare(metadata float* %r, metadata !1843, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.declare(metadata float* %v, metadata !1845, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !1847, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u, metadata !1849, metadata !DIExpression()), !dbg !1851
  %0 = load float, float* %x.addr, align 4, !dbg !1851
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !1851
  store float %0, float* %value, align 4, !dbg !1851
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !1851
  %1 = load i32, i32* %word, align 4, !dbg !1851
  store i32 %1, i32* %ix, align 4, !dbg !1851
  %2 = load i32, i32* %ix, align 4, !dbg !1852
  %and = and i32 %2, 2147483647, !dbg !1852
  store i32 %and, i32* %ix, align 4, !dbg !1852
  %3 = load i32, i32* %ix, align 4, !dbg !1853
  %cmp = icmp slt i32 %3, 838860800, !dbg !1855
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1856

if.then:                                          ; preds = %entry
  %4 = load float, float* %x.addr, align 4, !dbg !1857
  %conv = fptosi float %4 to i32, !dbg !1860
  %cmp1 = icmp eq i32 %conv, 0, !dbg !1861
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !1862

if.then3:                                         ; preds = %if.then
  %5 = load float, float* %x.addr, align 4, !dbg !1863
  store float %5, float* %retval, align 4, !dbg !1864
  br label %return, !dbg !1864

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !1865

if.end4:                                          ; preds = %if.end, %entry
  %6 = load float, float* %x.addr, align 4, !dbg !1866
  %7 = load float, float* %x.addr, align 4, !dbg !1867
  %mul = fmul float %6, %7, !dbg !1868
  store float %mul, float* %z, align 4, !dbg !1869
  %8 = load float, float* %z, align 4, !dbg !1870
  %9 = load float, float* %x.addr, align 4, !dbg !1871
  %mul5 = fmul float %8, %9, !dbg !1872
  store float %mul5, float* %v, align 4, !dbg !1873
  %10 = load float, float* %z, align 4, !dbg !1874
  %11 = load float, float* %z, align 4, !dbg !1875
  %12 = load float, float* %z, align 4, !dbg !1876
  %13 = load float, float* %z, align 4, !dbg !1877
  %14 = call float @llvm.fmuladd.f32(float %13, float 0x3DE5D93A60000000, float 0xBE5AE5E680000000), !dbg !1878
  %15 = call float @llvm.fmuladd.f32(float %12, float %14, float 0x3EC71DE360000000), !dbg !1879
  %16 = call float @llvm.fmuladd.f32(float %11, float %15, float 0xBF2A01A020000000), !dbg !1880
  %17 = call float @llvm.fmuladd.f32(float %10, float %16, float 0x3F81111120000000), !dbg !1881
  store float %17, float* %r, align 4, !dbg !1882
  %18 = load i32, i32* %iy.addr, align 4, !dbg !1883
  %cmp10 = icmp eq i32 %18, 0, !dbg !1885
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !1886

if.then12:                                        ; preds = %if.end4
  %19 = load float, float* %x.addr, align 4, !dbg !1887
  %20 = load float, float* %v, align 4, !dbg !1888
  %21 = load float, float* %z, align 4, !dbg !1889
  %22 = load float, float* %r, align 4, !dbg !1890
  %23 = call float @llvm.fmuladd.f32(float %21, float %22, float 0xBFC5555560000000), !dbg !1891
  %24 = call float @llvm.fmuladd.f32(float %20, float %23, float %19), !dbg !1892
  store float %24, float* %retval, align 4, !dbg !1893
  br label %return, !dbg !1893

if.else:                                          ; preds = %if.end4
  %25 = load float, float* %x.addr, align 4, !dbg !1894
  %26 = load float, float* %z, align 4, !dbg !1895
  %27 = load float, float* %y.addr, align 4, !dbg !1896
  %28 = load float, float* %v, align 4, !dbg !1897
  %29 = load float, float* %r, align 4, !dbg !1898
  %mul16 = fmul float %28, %29, !dbg !1899
  %neg = fneg float %mul16, !dbg !1900
  %30 = call float @llvm.fmuladd.f32(float 5.000000e-01, float %27, float %neg), !dbg !1900
  %31 = load float, float* %y.addr, align 4, !dbg !1901
  %neg18 = fneg float %31, !dbg !1902
  %32 = call float @llvm.fmuladd.f32(float %26, float %30, float %neg18), !dbg !1902
  %33 = load float, float* %v, align 4, !dbg !1903
  %neg20 = fneg float %33, !dbg !1904
  %34 = call float @llvm.fmuladd.f32(float %neg20, float 0xBFC5555560000000, float %32), !dbg !1904
  %sub = fsub float %25, %34, !dbg !1905
  store float %sub, float* %retval, align 4, !dbg !1906
  br label %return, !dbg !1906

return:                                           ; preds = %if.else, %if.then12, %if.then3
  %35 = load float, float* %retval, align 4, !dbg !1907
  ret float %35, !dbg !1907
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___copysignf(float noundef %x, float noundef %y) #0 !dbg !1908 {
entry:
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %gf_u = alloca %union.ieee_float_shape_type, align 4
  %gf_u1 = alloca %union.ieee_float_shape_type, align 4
  %sf_u = alloca %union.ieee_float_shape_type, align 4
  store float %x, float* %x.addr, align 4
  call void @llvm.dbg.declare(metadata float* %x.addr, metadata !1909, metadata !DIExpression()), !dbg !1910
  store float %y, float* %y.addr, align 4
  call void @llvm.dbg.declare(metadata float* %y.addr, metadata !1911, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !1913, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.declare(metadata i32* %iy, metadata !1915, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u, metadata !1917, metadata !DIExpression()), !dbg !1919
  %0 = load float, float* %x.addr, align 4, !dbg !1919
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !1919
  store float %0, float* %value, align 4, !dbg !1919
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !1919
  %1 = load i32, i32* %word, align 4, !dbg !1919
  store i32 %1, i32* %ix, align 4, !dbg !1919
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u1, metadata !1920, metadata !DIExpression()), !dbg !1922
  %2 = load float, float* %y.addr, align 4, !dbg !1922
  %value2 = bitcast %union.ieee_float_shape_type* %gf_u1 to float*, !dbg !1922
  store float %2, float* %value2, align 4, !dbg !1922
  %word3 = bitcast %union.ieee_float_shape_type* %gf_u1 to i32*, !dbg !1922
  %3 = load i32, i32* %word3, align 4, !dbg !1922
  store i32 %3, i32* %iy, align 4, !dbg !1922
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %sf_u, metadata !1923, metadata !DIExpression()), !dbg !1925
  %4 = load i32, i32* %ix, align 4, !dbg !1925
  %and = and i32 %4, 2147483647, !dbg !1925
  %5 = load i32, i32* %iy, align 4, !dbg !1925
  %and4 = and i32 %5, -2147483648, !dbg !1925
  %or = or i32 %and, %and4, !dbg !1925
  %word5 = bitcast %union.ieee_float_shape_type* %sf_u to i32*, !dbg !1925
  store i32 %or, i32* %word5, align 4, !dbg !1925
  %value6 = bitcast %union.ieee_float_shape_type* %sf_u to float*, !dbg !1925
  %6 = load float, float* %value6, align 4, !dbg !1925
  store float %6, float* %x.addr, align 4, !dbg !1925
  %7 = load float, float* %x.addr, align 4, !dbg !1926
  ret float %7, !dbg !1927
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___cosf(float noundef %x) #0 !dbg !1928 {
entry:
  %x.addr = alloca float, align 4
  %y = alloca [2 x float], align 4
  %z = alloca float, align 4
  %n = alloca i32, align 4
  %ix = alloca i32, align 4
  %gf_u = alloca %union.ieee_float_shape_type, align 4
  store float %x, float* %x.addr, align 4
  call void @llvm.dbg.declare(metadata float* %x.addr, metadata !1929, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.declare(metadata [2 x float]* %y, metadata !1931, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.declare(metadata float* %z, metadata !1934, metadata !DIExpression()), !dbg !1935
  store float 0.000000e+00, float* %z, align 4, !dbg !1935
  call void @llvm.dbg.declare(metadata i32* %n, metadata !1936, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !1938, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.declare(metadata %union.ieee_float_shape_type* %gf_u, metadata !1940, metadata !DIExpression()), !dbg !1942
  %0 = load float, float* %x.addr, align 4, !dbg !1942
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !1942
  store float %0, float* %value, align 4, !dbg !1942
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !1942
  %1 = load i32, i32* %word, align 4, !dbg !1942
  store i32 %1, i32* %ix, align 4, !dbg !1942
  %2 = load i32, i32* %ix, align 4, !dbg !1943
  %and = and i32 %2, 2147483647, !dbg !1943
  store i32 %and, i32* %ix, align 4, !dbg !1943
  %3 = load float, float* %x.addr, align 4, !dbg !1944
  %4 = load float, float* %x.addr, align 4, !dbg !1945
  %sub = fsub float %3, %4, !dbg !1946
  ret float %sub, !dbg !1947
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "basicmath_bp", scope: !2, file: !11, line: 115, type: !138, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/cosf/wcclibm.c", directory: "/workspaces/llvmta/testcases/batchtest/complex_updates")
!4 = !{!5, !6, !7}
!5 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !13, !15, !17, !19, !21, !23, !25, !27, !29, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !0, !136, !141, !143}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 1078530010, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "basicmath_pi", scope: !2, file: !11, line: 41, type: !12, isLocal: true, isDefinition: true)
!11 = !DIFile(filename: "cosf/wcclibm.c", directory: "/workspaces/llvmta/testcases/batchtest")
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression(DW_OP_constu, 866263400, DW_OP_stack_value))
!14 = distinct !DIGlobalVariable(name: "basicmath_pio2_lo", scope: !2, file: !11, line: 43, type: !12, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression(DW_OP_constu, 1070141402, DW_OP_stack_value))
!16 = distinct !DIGlobalVariable(name: "basicmath_pio2_hi", scope: !2, file: !11, line: 42, type: !12, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression(DW_OP_constu, 1042983595, DW_OP_stack_value))
!18 = distinct !DIGlobalVariable(name: "basicmath_pS0", scope: !2, file: !11, line: 44, type: !12, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression(DW_OP_constu, 3198595216, DW_OP_stack_value))
!20 = distinct !DIGlobalVariable(name: "basicmath_pS1", scope: !2, file: !11, line: 45, type: !12, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression(DW_OP_constu, 1045301928, DW_OP_stack_value))
!22 = distinct !DIGlobalVariable(name: "basicmath_pS2", scope: !2, file: !11, line: 46, type: !12, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression(DW_OP_constu, 3173257542, DW_OP_stack_value))
!24 = distinct !DIGlobalVariable(name: "basicmath_pS3", scope: !2, file: !11, line: 47, type: !12, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression(DW_OP_constu, 978288388, DW_OP_stack_value))
!26 = distinct !DIGlobalVariable(name: "basicmath_pS4", scope: !2, file: !11, line: 48, type: !12, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression(DW_OP_constu, 940699400, DW_OP_stack_value))
!28 = distinct !DIGlobalVariable(name: "basicmath_pS5", scope: !2, file: !11, line: 49, type: !12, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!30 = distinct !DIGlobalVariable(name: "basicmath_one", scope: !2, file: !31, line: 41, type: !12, isLocal: true, isDefinition: true)
!31 = !DIFile(filename: "cosf/wcclibm.h", directory: "/workspaces/llvmta/testcases/batchtest")
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression(DW_OP_constu, 3222917433, DW_OP_stack_value))
!33 = distinct !DIGlobalVariable(name: "basicmath_qS1", scope: !2, file: !11, line: 50, type: !12, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression(DW_OP_constu, 1073829677, DW_OP_stack_value))
!35 = distinct !DIGlobalVariable(name: "basicmath_qS2", scope: !2, file: !11, line: 51, type: !12, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression(DW_OP_constu, 3207607137, DW_OP_stack_value))
!37 = distinct !DIGlobalVariable(name: "basicmath_qS3", scope: !2, file: !11, line: 52, type: !12, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression(DW_OP_constu, 1033750062, DW_OP_stack_value))
!39 = distinct !DIGlobalVariable(name: "basicmath_qS4", scope: !2, file: !11, line: 53, type: !12, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!41 = distinct !DIGlobalVariable(name: "basicmath_zero", scope: !2, file: !31, line: 47, type: !12, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression(DW_OP_constu, 1900671690, DW_OP_stack_value))
!43 = distinct !DIGlobalVariable(name: "basicmath_huge", scope: !2, file: !31, line: 44, type: !12, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression(DW_OP_constu, 228737632, DW_OP_stack_value))
!45 = distinct !DIGlobalVariable(name: "basicmath_tiny", scope: !2, file: !31, line: 42, type: !12, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression(DW_OP_constu, 1069066752, DW_OP_stack_value))
!47 = distinct !DIGlobalVariable(name: "basicmath_ivln2_h", scope: !2, file: !11, line: 138, type: !12, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression(DW_OP_constu, 921478512, DW_OP_stack_value))
!49 = distinct !DIGlobalVariable(name: "basicmath_ivln2_l", scope: !2, file: !11, line: 139, type: !12, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression(DW_OP_constu, 1069066811, DW_OP_stack_value))
!51 = distinct !DIGlobalVariable(name: "basicmath_ivln2", scope: !2, file: !11, line: 137, type: !12, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression(DW_OP_constu, 1266679808, DW_OP_stack_value))
!53 = distinct !DIGlobalVariable(name: "basicmath_two24", scope: !2, file: !31, line: 46, type: !12, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression(DW_OP_constu, 1058642330, DW_OP_stack_value))
!55 = distinct !DIGlobalVariable(name: "basicmath_L1", scope: !2, file: !11, line: 119, type: !12, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression(DW_OP_constu, 1054567863, DW_OP_stack_value))
!57 = distinct !DIGlobalVariable(name: "basicmath_L2", scope: !2, file: !11, line: 120, type: !12, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression(DW_OP_constu, 1051372203, DW_OP_stack_value))
!59 = distinct !DIGlobalVariable(name: "basicmath_L3", scope: !2, file: !11, line: 121, type: !12, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression(DW_OP_constu, 1049338629, DW_OP_stack_value))
!61 = distinct !DIGlobalVariable(name: "basicmath_L4", scope: !2, file: !11, line: 122, type: !12, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression(DW_OP_constu, 1047278165, DW_OP_stack_value))
!63 = distinct !DIGlobalVariable(name: "basicmath_L5", scope: !2, file: !11, line: 123, type: !12, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression(DW_OP_constu, 1045688642, DW_OP_stack_value))
!65 = distinct !DIGlobalVariable(name: "basicmath_L6", scope: !2, file: !11, line: 124, type: !12, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression(DW_OP_constu, 1064712192, DW_OP_stack_value))
!67 = distinct !DIGlobalVariable(name: "basicmath_cp_h", scope: !2, file: !11, line: 135, type: !12, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression(DW_OP_constu, 916308896, DW_OP_stack_value))
!69 = distinct !DIGlobalVariable(name: "basicmath_cp_l", scope: !2, file: !11, line: 136, type: !12, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression(DW_OP_constu, 1064712271, DW_OP_stack_value))
!71 = distinct !DIGlobalVariable(name: "basicmath_cp", scope: !2, file: !11, line: 134, type: !12, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression(DW_OP_constu, 859351612, DW_OP_stack_value))
!73 = distinct !DIGlobalVariable(name: "basicmath_ovt", scope: !2, file: !11, line: 133, type: !12, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression(DW_OP_constu, 1060205056, DW_OP_stack_value))
!75 = distinct !DIGlobalVariable(name: "basicmath_lg2_h", scope: !2, file: !11, line: 131, type: !12, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression(DW_OP_constu, 1060205080, DW_OP_stack_value))
!77 = distinct !DIGlobalVariable(name: "basicmath_lg2", scope: !2, file: !11, line: 130, type: !12, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression(DW_OP_constu, 901758604, DW_OP_stack_value))
!79 = distinct !DIGlobalVariable(name: "basicmath_lg2_l", scope: !2, file: !11, line: 132, type: !12, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression(DW_OP_constu, 1042983595, DW_OP_stack_value))
!81 = distinct !DIGlobalVariable(name: "basicmath_P1", scope: !2, file: !11, line: 125, type: !12, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression(DW_OP_constu, 3140881249, DW_OP_stack_value))
!83 = distinct !DIGlobalVariable(name: "basicmath_P2", scope: !2, file: !11, line: 126, type: !12, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression(DW_OP_constu, 948613973, DW_OP_stack_value))
!85 = distinct !DIGlobalVariable(name: "basicmath_P3", scope: !2, file: !11, line: 127, type: !12, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression(DW_OP_constu, 3051219470, DW_OP_stack_value))
!87 = distinct !DIGlobalVariable(name: "basicmath_P4", scope: !2, file: !11, line: 128, type: !12, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression(DW_OP_constu, 858897228, DW_OP_stack_value))
!89 = distinct !DIGlobalVariable(name: "basicmath_P5", scope: !2, file: !11, line: 129, type: !12, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression(DW_OP_constu, 1073741824, DW_OP_stack_value))
!91 = distinct !DIGlobalVariable(name: "basicmath_two", scope: !2, file: !31, line: 45, type: !12, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression(DW_OP_constu, 1070141312, DW_OP_stack_value))
!93 = distinct !DIGlobalVariable(name: "basicmath_pio2_1", scope: !2, file: !11, line: 391, type: !12, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression(DW_OP_constu, 926237763, DW_OP_stack_value))
!95 = distinct !DIGlobalVariable(name: "basicmath_pio2_1t", scope: !2, file: !11, line: 392, type: !12, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression(DW_OP_constu, 926237696, DW_OP_stack_value))
!97 = distinct !DIGlobalVariable(name: "basicmath_pio2_2", scope: !2, file: !11, line: 393, type: !12, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression(DW_OP_constu, 780509960, DW_OP_stack_value))
!99 = distinct !DIGlobalVariable(name: "basicmath_pio2_2t", scope: !2, file: !11, line: 394, type: !12, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression(DW_OP_constu, 1059256708, DW_OP_stack_value))
!101 = distinct !DIGlobalVariable(name: "basicmath_invpio2", scope: !2, file: !11, line: 390, type: !12, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression(DW_OP_constu, 1056964608, DW_OP_stack_value))
!103 = distinct !DIGlobalVariable(name: "basicmath_half", scope: !2, file: !31, line: 43, type: !12, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression(DW_OP_constu, 780509952, DW_OP_stack_value))
!105 = distinct !DIGlobalVariable(name: "basicmath_pio2_3", scope: !2, file: !11, line: 395, type: !12, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression(DW_OP_constu, 613232946, DW_OP_stack_value))
!107 = distinct !DIGlobalVariable(name: "basicmath_pio2_3t", scope: !2, file: !11, line: 396, type: !12, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression(DW_OP_constu, 1026206379, DW_OP_stack_value))
!109 = distinct !DIGlobalVariable(name: "basicmath_C1", scope: !2, file: !11, line: 567, type: !12, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression(DW_OP_constu, 3132492641, DW_OP_stack_value))
!111 = distinct !DIGlobalVariable(name: "basicmath_C2", scope: !2, file: !11, line: 568, type: !12, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression(DW_OP_constu, 936381697, DW_OP_stack_value))
!113 = distinct !DIGlobalVariable(name: "basicmath_C3", scope: !2, file: !11, line: 569, type: !12, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression(DW_OP_constu, 3029594748, DW_OP_stack_value))
!115 = distinct !DIGlobalVariable(name: "basicmath_C4", scope: !2, file: !11, line: 570, type: !12, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression(DW_OP_constu, 823096566, DW_OP_stack_value))
!117 = distinct !DIGlobalVariable(name: "basicmath_C5", scope: !2, file: !11, line: 571, type: !12, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression(DW_OP_constu, 2907166542, DW_OP_stack_value))
!119 = distinct !DIGlobalVariable(name: "basicmath_C6", scope: !2, file: !11, line: 572, type: !12, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression(DW_OP_constu, 1007192201, DW_OP_stack_value))
!121 = distinct !DIGlobalVariable(name: "basicmath_S2", scope: !2, file: !11, line: 606, type: !12, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression(DW_OP_constu, 3109031169, DW_OP_stack_value))
!123 = distinct !DIGlobalVariable(name: "basicmath_S3", scope: !2, file: !11, line: 607, type: !12, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression(DW_OP_constu, 909700891, DW_OP_stack_value))
!125 = distinct !DIGlobalVariable(name: "basicmath_S4", scope: !2, file: !11, line: 608, type: !12, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression(DW_OP_constu, 3000446772, DW_OP_stack_value))
!127 = distinct !DIGlobalVariable(name: "basicmath_S5", scope: !2, file: !11, line: 609, type: !12, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression(DW_OP_constu, 791595475, DW_OP_stack_value))
!129 = distinct !DIGlobalVariable(name: "basicmath_S6", scope: !2, file: !11, line: 610, type: !12, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression(DW_OP_constu, 3190467243, DW_OP_stack_value))
!131 = distinct !DIGlobalVariable(name: "basicmath_S1", scope: !2, file: !11, line: 605, type: !12, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression(DW_OP_constu, 1275068416, DW_OP_stack_value))
!133 = distinct !DIGlobalVariable(name: "basicmath_two25", scope: !2, file: !11, line: 726, type: !12, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression(DW_OP_constu, 855638016, DW_OP_stack_value))
!135 = distinct !DIGlobalVariable(name: "basicmath_twom25", scope: !2, file: !11, line: 727, type: !12, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "basicmath_dp_l", scope: !2, file: !11, line: 117, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 2)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "basicmath_dp_h", scope: !2, file: !11, line: 116, type: !138, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "basicmath_npio2_hw", scope: !2, file: !11, line: 371, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 1024, elements: !147)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!147 = !{!148}
!148 = !DISubrange(count: 32)
!149 = !{i32 7, !"Dwarf Version", i32 4}
!150 = !{i32 2, !"Debug Info Version", i32 3}
!151 = !{i32 1, !"wchar_size", i32 4}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 1, !"branch-target-enforcement", i32 0}
!154 = !{i32 1, !"sign-return-address", i32 0}
!155 = !{i32 1, !"sign-return-address-all", i32 0}
!156 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)"}
!159 = distinct !DISubprogram(name: "basicmath___ieee754_acosf", scope: !11, file: !11, line: 55, type: !160, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!160 = !DISubroutineType(types: !161)
!161 = !{!5, !5}
!162 = !{}
!163 = !DILocalVariable(name: "x", arg: 1, scope: !159, file: !11, line: 55, type: !5)
!164 = !DILocation(line: 55, column: 40, scope: !159)
!165 = !DILocalVariable(name: "z", scope: !159, file: !11, line: 57, type: !5)
!166 = !DILocation(line: 57, column: 9, scope: !159)
!167 = !DILocalVariable(name: "p", scope: !159, file: !11, line: 57, type: !5)
!168 = !DILocation(line: 57, column: 12, scope: !159)
!169 = !DILocalVariable(name: "q", scope: !159, file: !11, line: 57, type: !5)
!170 = !DILocation(line: 57, column: 15, scope: !159)
!171 = !DILocalVariable(name: "r", scope: !159, file: !11, line: 57, type: !5)
!172 = !DILocation(line: 57, column: 18, scope: !159)
!173 = !DILocalVariable(name: "w", scope: !159, file: !11, line: 57, type: !5)
!174 = !DILocation(line: 57, column: 21, scope: !159)
!175 = !DILocalVariable(name: "s", scope: !159, file: !11, line: 57, type: !5)
!176 = !DILocation(line: 57, column: 24, scope: !159)
!177 = !DILocalVariable(name: "c", scope: !159, file: !11, line: 57, type: !5)
!178 = !DILocation(line: 57, column: 27, scope: !159)
!179 = !DILocalVariable(name: "df", scope: !159, file: !11, line: 57, type: !5)
!180 = !DILocation(line: 57, column: 30, scope: !159)
!181 = !DILocalVariable(name: "hx", scope: !159, file: !11, line: 58, type: !7)
!182 = !DILocation(line: 58, column: 11, scope: !159)
!183 = !DILocalVariable(name: "ix", scope: !159, file: !11, line: 58, type: !7)
!184 = !DILocation(line: 58, column: 15, scope: !159)
!185 = !DILocalVariable(name: "gf_u", scope: !186, file: !11, line: 59, type: !187)
!186 = distinct !DILexicalBlock(scope: !159, file: !11, line: 59, column: 3)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !188, line: 48, baseType: !189)
!188 = !DIFile(filename: "cosf/math_private.h", directory: "/workspaces/llvmta/testcases/batchtest")
!189 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !188, line: 45, size: 32, elements: !190)
!190 = !{!191, !192}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !189, file: !188, line: 46, baseType: !5, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !189, file: !188, line: 47, baseType: !6, size: 32)
!193 = !DILocation(line: 59, column: 3, scope: !186)
!194 = !DILocation(line: 60, column: 8, scope: !159)
!195 = !DILocation(line: 60, column: 11, scope: !159)
!196 = !DILocation(line: 60, column: 6, scope: !159)
!197 = !DILocation(line: 61, column: 8, scope: !198)
!198 = distinct !DILexicalBlock(scope: !159, file: !11, line: 61, column: 8)
!199 = !DILocation(line: 61, column: 11, scope: !198)
!200 = !DILocation(line: 61, column: 8, scope: !159)
!201 = !DILocation(line: 62, column: 10, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !11, line: 62, column: 10)
!203 = distinct !DILexicalBlock(scope: !198, file: !11, line: 61, column: 27)
!204 = !DILocation(line: 62, column: 13, scope: !202)
!205 = !DILocation(line: 62, column: 10, scope: !203)
!206 = !DILocation(line: 62, column: 19, scope: !202)
!207 = !DILocation(line: 63, column: 10, scope: !202)
!208 = !DILocation(line: 65, column: 10, scope: !209)
!209 = distinct !DILexicalBlock(scope: !198, file: !11, line: 65, column: 10)
!210 = !DILocation(line: 65, column: 13, scope: !209)
!211 = !DILocation(line: 65, column: 10, scope: !198)
!212 = !DILocation(line: 66, column: 16, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !11, line: 65, column: 28)
!214 = !DILocation(line: 66, column: 20, scope: !213)
!215 = !DILocation(line: 66, column: 18, scope: !213)
!216 = !DILocation(line: 66, column: 28, scope: !213)
!217 = !DILocation(line: 66, column: 32, scope: !213)
!218 = !DILocation(line: 66, column: 30, scope: !213)
!219 = !DILocation(line: 66, column: 24, scope: !213)
!220 = !DILocation(line: 66, column: 7, scope: !213)
!221 = !DILocation(line: 68, column: 8, scope: !222)
!222 = distinct !DILexicalBlock(scope: !159, file: !11, line: 68, column: 8)
!223 = !DILocation(line: 68, column: 11, scope: !222)
!224 = !DILocation(line: 68, column: 8, scope: !159)
!225 = !DILocation(line: 69, column: 10, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !11, line: 69, column: 10)
!227 = distinct !DILexicalBlock(scope: !222, file: !11, line: 68, column: 26)
!228 = !DILocation(line: 69, column: 13, scope: !226)
!229 = !DILocation(line: 69, column: 10, scope: !227)
!230 = !DILocation(line: 69, column: 29, scope: !226)
!231 = !DILocation(line: 71, column: 9, scope: !227)
!232 = !DILocation(line: 71, column: 13, scope: !227)
!233 = !DILocation(line: 71, column: 11, scope: !227)
!234 = !DILocation(line: 71, column: 7, scope: !227)
!235 = !DILocation(line: 72, column: 9, scope: !227)
!236 = !DILocation(line: 72, column: 31, scope: !227)
!237 = !DILocation(line: 72, column: 53, scope: !227)
!238 = !DILocation(line: 72, column: 75, scope: !227)
!239 = !DILocation(line: 73, column: 55, scope: !227)
!240 = !DILocation(line: 74, column: 57, scope: !227)
!241 = !DILocation(line: 74, column: 55, scope: !227)
!242 = !DILocation(line: 73, column: 53, scope: !227)
!243 = !DILocation(line: 72, column: 73, scope: !227)
!244 = !DILocation(line: 72, column: 51, scope: !227)
!245 = !DILocation(line: 72, column: 29, scope: !227)
!246 = !DILocation(line: 72, column: 11, scope: !227)
!247 = !DILocation(line: 72, column: 7, scope: !227)
!248 = !DILocation(line: 75, column: 25, scope: !227)
!249 = !DILocation(line: 75, column: 47, scope: !227)
!250 = !DILocation(line: 75, column: 69, scope: !227)
!251 = !DILocation(line: 76, column: 49, scope: !227)
!252 = !DILocation(line: 76, column: 47, scope: !227)
!253 = !DILocation(line: 75, column: 67, scope: !227)
!254 = !DILocation(line: 75, column: 45, scope: !227)
!255 = !DILocation(line: 75, column: 23, scope: !227)
!256 = !DILocation(line: 75, column: 7, scope: !227)
!257 = !DILocation(line: 77, column: 9, scope: !227)
!258 = !DILocation(line: 77, column: 13, scope: !227)
!259 = !DILocation(line: 77, column: 11, scope: !227)
!260 = !DILocation(line: 77, column: 7, scope: !227)
!261 = !DILocation(line: 78, column: 34, scope: !227)
!262 = !DILocation(line: 78, column: 60, scope: !227)
!263 = !DILocation(line: 78, column: 64, scope: !227)
!264 = !DILocation(line: 78, column: 58, scope: !227)
!265 = !DILocation(line: 78, column: 36, scope: !227)
!266 = !DILocation(line: 78, column: 30, scope: !227)
!267 = !DILocation(line: 78, column: 5, scope: !227)
!268 = !DILocation(line: 80, column: 10, scope: !269)
!269 = distinct !DILexicalBlock(scope: !222, file: !11, line: 80, column: 10)
!270 = !DILocation(line: 80, column: 13, scope: !269)
!271 = !DILocation(line: 80, column: 10, scope: !222)
!272 = !DILocation(line: 81, column: 29, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !11, line: 80, column: 19)
!274 = !DILocation(line: 81, column: 27, scope: !273)
!275 = !DILocation(line: 81, column: 33, scope: !273)
!276 = !DILocation(line: 81, column: 9, scope: !273)
!277 = !DILocation(line: 82, column: 11, scope: !273)
!278 = !DILocation(line: 82, column: 33, scope: !273)
!279 = !DILocation(line: 82, column: 55, scope: !273)
!280 = !DILocation(line: 82, column: 77, scope: !273)
!281 = !DILocation(line: 83, column: 57, scope: !273)
!282 = !DILocation(line: 84, column: 59, scope: !273)
!283 = !DILocation(line: 84, column: 57, scope: !273)
!284 = !DILocation(line: 83, column: 55, scope: !273)
!285 = !DILocation(line: 82, column: 75, scope: !273)
!286 = !DILocation(line: 82, column: 53, scope: !273)
!287 = !DILocation(line: 82, column: 31, scope: !273)
!288 = !DILocation(line: 82, column: 13, scope: !273)
!289 = !DILocation(line: 82, column: 9, scope: !273)
!290 = !DILocation(line: 85, column: 27, scope: !273)
!291 = !DILocation(line: 85, column: 49, scope: !273)
!292 = !DILocation(line: 85, column: 71, scope: !273)
!293 = !DILocation(line: 86, column: 51, scope: !273)
!294 = !DILocation(line: 86, column: 49, scope: !273)
!295 = !DILocation(line: 85, column: 69, scope: !273)
!296 = !DILocation(line: 85, column: 47, scope: !273)
!297 = !DILocation(line: 85, column: 25, scope: !273)
!298 = !DILocation(line: 85, column: 9, scope: !273)
!299 = !DILocation(line: 87, column: 38, scope: !273)
!300 = !DILocation(line: 87, column: 11, scope: !273)
!301 = !DILocation(line: 87, column: 9, scope: !273)
!302 = !DILocation(line: 88, column: 11, scope: !273)
!303 = !DILocation(line: 88, column: 15, scope: !273)
!304 = !DILocation(line: 88, column: 13, scope: !273)
!305 = !DILocation(line: 88, column: 9, scope: !273)
!306 = !DILocation(line: 89, column: 11, scope: !273)
!307 = !DILocation(line: 89, column: 15, scope: !273)
!308 = !DILocation(line: 89, column: 17, scope: !273)
!309 = !DILocation(line: 89, column: 9, scope: !273)
!310 = !DILocation(line: 90, column: 47, scope: !273)
!311 = !DILocation(line: 90, column: 51, scope: !273)
!312 = !DILocation(line: 90, column: 49, scope: !273)
!313 = !DILocation(line: 90, column: 27, scope: !273)
!314 = !DILocation(line: 90, column: 7, scope: !273)
!315 = !DILocalVariable(name: "idf", scope: !316, file: !11, line: 92, type: !7)
!316 = distinct !DILexicalBlock(scope: !269, file: !11, line: 91, column: 12)
!317 = !DILocation(line: 92, column: 15, scope: !316)
!318 = !DILocation(line: 93, column: 29, scope: !316)
!319 = !DILocation(line: 93, column: 27, scope: !316)
!320 = !DILocation(line: 93, column: 33, scope: !316)
!321 = !DILocation(line: 93, column: 9, scope: !316)
!322 = !DILocation(line: 94, column: 38, scope: !316)
!323 = !DILocation(line: 94, column: 11, scope: !316)
!324 = !DILocation(line: 94, column: 9, scope: !316)
!325 = !DILocation(line: 95, column: 12, scope: !316)
!326 = !DILocation(line: 95, column: 10, scope: !316)
!327 = !DILocalVariable(name: "gf_u", scope: !328, file: !11, line: 96, type: !187)
!328 = distinct !DILexicalBlock(scope: !316, file: !11, line: 96, column: 7)
!329 = !DILocation(line: 96, column: 7, scope: !328)
!330 = !DILocalVariable(name: "sf_u", scope: !331, file: !11, line: 97, type: !187)
!331 = distinct !DILexicalBlock(scope: !316, file: !11, line: 97, column: 7)
!332 = !DILocation(line: 97, column: 7, scope: !331)
!333 = !DILocation(line: 98, column: 14, scope: !316)
!334 = !DILocation(line: 98, column: 18, scope: !316)
!335 = !DILocation(line: 98, column: 23, scope: !316)
!336 = !DILocation(line: 98, column: 16, scope: !316)
!337 = !DILocation(line: 98, column: 32, scope: !316)
!338 = !DILocation(line: 98, column: 36, scope: !316)
!339 = !DILocation(line: 98, column: 34, scope: !316)
!340 = !DILocation(line: 98, column: 28, scope: !316)
!341 = !DILocation(line: 98, column: 10, scope: !316)
!342 = !DILocation(line: 99, column: 11, scope: !316)
!343 = !DILocation(line: 99, column: 33, scope: !316)
!344 = !DILocation(line: 99, column: 55, scope: !316)
!345 = !DILocation(line: 99, column: 77, scope: !316)
!346 = !DILocation(line: 100, column: 57, scope: !316)
!347 = !DILocation(line: 101, column: 59, scope: !316)
!348 = !DILocation(line: 101, column: 57, scope: !316)
!349 = !DILocation(line: 100, column: 55, scope: !316)
!350 = !DILocation(line: 99, column: 75, scope: !316)
!351 = !DILocation(line: 99, column: 53, scope: !316)
!352 = !DILocation(line: 99, column: 31, scope: !316)
!353 = !DILocation(line: 99, column: 13, scope: !316)
!354 = !DILocation(line: 99, column: 9, scope: !316)
!355 = !DILocation(line: 102, column: 27, scope: !316)
!356 = !DILocation(line: 102, column: 49, scope: !316)
!357 = !DILocation(line: 102, column: 71, scope: !316)
!358 = !DILocation(line: 103, column: 51, scope: !316)
!359 = !DILocation(line: 103, column: 49, scope: !316)
!360 = !DILocation(line: 102, column: 69, scope: !316)
!361 = !DILocation(line: 102, column: 47, scope: !316)
!362 = !DILocation(line: 102, column: 25, scope: !316)
!363 = !DILocation(line: 102, column: 9, scope: !316)
!364 = !DILocation(line: 104, column: 11, scope: !316)
!365 = !DILocation(line: 104, column: 15, scope: !316)
!366 = !DILocation(line: 104, column: 13, scope: !316)
!367 = !DILocation(line: 104, column: 9, scope: !316)
!368 = !DILocation(line: 105, column: 11, scope: !316)
!369 = !DILocation(line: 105, column: 15, scope: !316)
!370 = !DILocation(line: 105, column: 19, scope: !316)
!371 = !DILocation(line: 105, column: 17, scope: !316)
!372 = !DILocation(line: 105, column: 9, scope: !316)
!373 = !DILocation(line: 106, column: 32, scope: !316)
!374 = !DILocation(line: 106, column: 37, scope: !316)
!375 = !DILocation(line: 106, column: 35, scope: !316)
!376 = !DILocation(line: 106, column: 28, scope: !316)
!377 = !DILocation(line: 106, column: 7, scope: !316)
!378 = !DILocation(line: 108, column: 1, scope: !159)
!379 = distinct !DISubprogram(name: "basicmath___ieee754_sqrtf", scope: !11, file: !11, line: 493, type: !160, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!380 = !DILocalVariable(name: "x", arg: 1, scope: !379, file: !11, line: 493, type: !5)
!381 = !DILocation(line: 493, column: 40, scope: !379)
!382 = !DILocalVariable(name: "z", scope: !379, file: !11, line: 495, type: !5)
!383 = !DILocation(line: 495, column: 9, scope: !379)
!384 = !DILocalVariable(name: "sign", scope: !379, file: !11, line: 496, type: !7)
!385 = !DILocation(line: 496, column: 11, scope: !379)
!386 = !DILocalVariable(name: "ix", scope: !379, file: !11, line: 497, type: !7)
!387 = !DILocation(line: 497, column: 11, scope: !379)
!388 = !DILocalVariable(name: "s", scope: !379, file: !11, line: 497, type: !7)
!389 = !DILocation(line: 497, column: 15, scope: !379)
!390 = !DILocalVariable(name: "q", scope: !379, file: !11, line: 497, type: !7)
!391 = !DILocation(line: 497, column: 18, scope: !379)
!392 = !DILocalVariable(name: "m", scope: !379, file: !11, line: 497, type: !7)
!393 = !DILocation(line: 497, column: 21, scope: !379)
!394 = !DILocalVariable(name: "t", scope: !379, file: !11, line: 497, type: !7)
!395 = !DILocation(line: 497, column: 24, scope: !379)
!396 = !DILocalVariable(name: "i", scope: !379, file: !11, line: 497, type: !7)
!397 = !DILocation(line: 497, column: 27, scope: !379)
!398 = !DILocalVariable(name: "r", scope: !379, file: !11, line: 498, type: !6)
!399 = !DILocation(line: 498, column: 13, scope: !379)
!400 = !DILocalVariable(name: "gf_u", scope: !401, file: !11, line: 500, type: !187)
!401 = distinct !DILexicalBlock(scope: !379, file: !11, line: 500, column: 3)
!402 = !DILocation(line: 500, column: 3, scope: !401)
!403 = !DILocation(line: 503, column: 10, scope: !404)
!404 = distinct !DILexicalBlock(scope: !379, file: !11, line: 503, column: 8)
!405 = !DILocation(line: 503, column: 13, scope: !404)
!406 = !DILocation(line: 503, column: 28, scope: !404)
!407 = !DILocation(line: 503, column: 8, scope: !379)
!408 = !DILocation(line: 504, column: 12, scope: !409)
!409 = distinct !DILexicalBlock(scope: !404, file: !11, line: 503, column: 44)
!410 = !DILocation(line: 504, column: 16, scope: !409)
!411 = !DILocation(line: 504, column: 20, scope: !409)
!412 = !DILocation(line: 504, column: 18, scope: !409)
!413 = !DILocation(line: 504, column: 5, scope: !409)
!414 = !DILocation(line: 508, column: 8, scope: !415)
!415 = distinct !DILexicalBlock(scope: !379, file: !11, line: 508, column: 8)
!416 = !DILocation(line: 508, column: 11, scope: !415)
!417 = !DILocation(line: 508, column: 8, scope: !379)
!418 = !DILocation(line: 509, column: 12, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !11, line: 509, column: 10)
!420 = distinct !DILexicalBlock(scope: !415, file: !11, line: 508, column: 18)
!421 = !DILocation(line: 509, column: 20, scope: !419)
!422 = !DILocation(line: 509, column: 19, scope: !419)
!423 = !DILocation(line: 509, column: 15, scope: !419)
!424 = !DILocation(line: 509, column: 29, scope: !419)
!425 = !DILocation(line: 509, column: 10, scope: !420)
!426 = !DILocation(line: 509, column: 43, scope: !419)
!427 = !DILocation(line: 509, column: 36, scope: !419)
!428 = !DILocation(line: 511, column: 12, scope: !429)
!429 = distinct !DILexicalBlock(scope: !419, file: !11, line: 511, column: 12)
!430 = !DILocation(line: 511, column: 15, scope: !429)
!431 = !DILocation(line: 511, column: 12, scope: !419)
!432 = !DILocation(line: 512, column: 18, scope: !429)
!433 = !DILocation(line: 512, column: 22, scope: !429)
!434 = !DILocation(line: 512, column: 20, scope: !429)
!435 = !DILocation(line: 512, column: 30, scope: !429)
!436 = !DILocation(line: 512, column: 34, scope: !429)
!437 = !DILocation(line: 512, column: 32, scope: !429)
!438 = !DILocation(line: 512, column: 26, scope: !429)
!439 = !DILocation(line: 512, column: 9, scope: !429)
!440 = !DILocation(line: 513, column: 3, scope: !420)
!441 = !DILocation(line: 515, column: 9, scope: !379)
!442 = !DILocation(line: 515, column: 12, scope: !379)
!443 = !DILocation(line: 515, column: 5, scope: !379)
!444 = !DILocation(line: 516, column: 8, scope: !445)
!445 = distinct !DILexicalBlock(scope: !379, file: !11, line: 516, column: 8)
!446 = !DILocation(line: 516, column: 10, scope: !445)
!447 = !DILocation(line: 516, column: 8, scope: !379)
!448 = !DILocation(line: 518, column: 13, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !11, line: 518, column: 5)
!450 = distinct !DILexicalBlock(scope: !445, file: !11, line: 516, column: 17)
!451 = !DILocation(line: 518, column: 11, scope: !449)
!452 = !DILocation(line: 518, column: 20, scope: !453)
!453 = distinct !DILexicalBlock(scope: !449, file: !11, line: 518, column: 5)
!454 = !DILocation(line: 518, column: 23, scope: !453)
!455 = !DILocation(line: 518, column: 38, scope: !453)
!456 = !DILocation(line: 518, column: 5, scope: !449)
!457 = !DILocation(line: 519, column: 10, scope: !453)
!458 = !DILocation(line: 519, column: 7, scope: !453)
!459 = !DILocation(line: 518, column: 45, scope: !453)
!460 = !DILocation(line: 518, column: 5, scope: !453)
!461 = distinct !{!461, !456, !462, !463}
!462 = !DILocation(line: 519, column: 14, scope: !449)
!463 = !{!"llvm.loop.mustprogress"}
!464 = !DILocation(line: 520, column: 10, scope: !450)
!465 = !DILocation(line: 520, column: 12, scope: !450)
!466 = !DILocation(line: 520, column: 7, scope: !450)
!467 = !DILocation(line: 521, column: 3, scope: !450)
!468 = !DILocation(line: 522, column: 5, scope: !379)
!469 = !DILocation(line: 523, column: 10, scope: !379)
!470 = !DILocation(line: 523, column: 13, scope: !379)
!471 = !DILocation(line: 523, column: 28, scope: !379)
!472 = !DILocation(line: 523, column: 6, scope: !379)
!473 = !DILocation(line: 524, column: 8, scope: !474)
!474 = distinct !DILexicalBlock(scope: !379, file: !11, line: 524, column: 8)
!475 = !DILocation(line: 524, column: 10, scope: !474)
!476 = !DILocation(line: 524, column: 8, scope: !379)
!477 = !DILocation(line: 525, column: 11, scope: !474)
!478 = !DILocation(line: 525, column: 8, scope: !474)
!479 = !DILocation(line: 525, column: 5, scope: !474)
!480 = !DILocation(line: 526, column: 5, scope: !379)
!481 = !DILocation(line: 529, column: 9, scope: !379)
!482 = !DILocation(line: 529, column: 6, scope: !379)
!483 = !DILocation(line: 530, column: 9, scope: !379)
!484 = !DILocation(line: 530, column: 5, scope: !379)
!485 = !DILocation(line: 531, column: 5, scope: !379)
!486 = !DILocation(line: 534, column: 3, scope: !379)
!487 = !DILocation(line: 534, column: 11, scope: !379)
!488 = !DILocation(line: 534, column: 13, scope: !379)
!489 = !DILocation(line: 535, column: 9, scope: !490)
!490 = distinct !DILexicalBlock(scope: !379, file: !11, line: 534, column: 20)
!491 = !DILocation(line: 535, column: 13, scope: !490)
!492 = !DILocation(line: 535, column: 11, scope: !490)
!493 = !DILocation(line: 535, column: 7, scope: !490)
!494 = !DILocation(line: 537, column: 14, scope: !490)
!495 = !DILocation(line: 537, column: 18, scope: !490)
!496 = !DILocation(line: 537, column: 16, scope: !490)
!497 = !DILocation(line: 537, column: 12, scope: !490)
!498 = !DILocation(line: 538, column: 14, scope: !490)
!499 = !DILocation(line: 538, column: 11, scope: !490)
!500 = !DILocation(line: 539, column: 14, scope: !490)
!501 = !DILocation(line: 539, column: 11, scope: !490)
!502 = !DILocation(line: 541, column: 11, scope: !490)
!503 = !DILocation(line: 541, column: 8, scope: !490)
!504 = !DILocation(line: 542, column: 7, scope: !490)
!505 = distinct !{!505, !486, !506, !463}
!506 = !DILocation(line: 543, column: 3, scope: !379)
!507 = !DILocation(line: 546, column: 8, scope: !508)
!508 = distinct !DILexicalBlock(scope: !379, file: !11, line: 546, column: 8)
!509 = !DILocation(line: 546, column: 11, scope: !508)
!510 = !DILocation(line: 546, column: 8, scope: !379)
!511 = !DILocation(line: 547, column: 7, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !11, line: 546, column: 18)
!513 = !DILocation(line: 548, column: 10, scope: !514)
!514 = distinct !DILexicalBlock(scope: !512, file: !11, line: 548, column: 10)
!515 = !DILocation(line: 548, column: 12, scope: !514)
!516 = !DILocation(line: 548, column: 10, scope: !512)
!517 = !DILocation(line: 549, column: 9, scope: !518)
!518 = distinct !DILexicalBlock(scope: !514, file: !11, line: 548, column: 31)
!519 = !DILocation(line: 550, column: 12, scope: !520)
!520 = distinct !DILexicalBlock(scope: !518, file: !11, line: 550, column: 12)
!521 = !DILocation(line: 550, column: 14, scope: !520)
!522 = !DILocation(line: 550, column: 12, scope: !518)
!523 = !DILocation(line: 551, column: 11, scope: !520)
!524 = !DILocation(line: 551, column: 9, scope: !520)
!525 = !DILocation(line: 553, column: 16, scope: !520)
!526 = !DILocation(line: 553, column: 18, scope: !520)
!527 = !DILocation(line: 553, column: 11, scope: !520)
!528 = !DILocation(line: 554, column: 5, scope: !518)
!529 = !DILocation(line: 555, column: 3, scope: !512)
!530 = !DILocation(line: 556, column: 10, scope: !379)
!531 = !DILocation(line: 556, column: 12, scope: !379)
!532 = !DILocation(line: 556, column: 19, scope: !379)
!533 = !DILocation(line: 556, column: 6, scope: !379)
!534 = !DILocation(line: 557, column: 11, scope: !379)
!535 = !DILocation(line: 557, column: 13, scope: !379)
!536 = !DILocation(line: 557, column: 6, scope: !379)
!537 = !DILocalVariable(name: "sf_u", scope: !538, file: !11, line: 558, type: !187)
!538 = distinct !DILexicalBlock(scope: !379, file: !11, line: 558, column: 3)
!539 = !DILocation(line: 558, column: 3, scope: !538)
!540 = !DILocation(line: 559, column: 10, scope: !379)
!541 = !DILocation(line: 559, column: 3, scope: !379)
!542 = !DILocation(line: 560, column: 1, scope: !379)
!543 = distinct !DISubprogram(name: "basicmath___ieee754_powf", scope: !11, file: !11, line: 141, type: !544, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!544 = !DISubroutineType(types: !545)
!545 = !{!5, !5, !5}
!546 = !DILocalVariable(name: "x", arg: 1, scope: !543, file: !11, line: 141, type: !5)
!547 = !DILocation(line: 141, column: 39, scope: !543)
!548 = !DILocalVariable(name: "y", arg: 2, scope: !543, file: !11, line: 141, type: !5)
!549 = !DILocation(line: 141, column: 48, scope: !543)
!550 = !DILocalVariable(name: "z", scope: !543, file: !11, line: 143, type: !5)
!551 = !DILocation(line: 143, column: 9, scope: !543)
!552 = !DILocalVariable(name: "ax", scope: !543, file: !11, line: 143, type: !5)
!553 = !DILocation(line: 143, column: 12, scope: !543)
!554 = !DILocalVariable(name: "z_h", scope: !543, file: !11, line: 143, type: !5)
!555 = !DILocation(line: 143, column: 16, scope: !543)
!556 = !DILocalVariable(name: "z_l", scope: !543, file: !11, line: 143, type: !5)
!557 = !DILocation(line: 143, column: 21, scope: !543)
!558 = !DILocalVariable(name: "p_h", scope: !543, file: !11, line: 143, type: !5)
!559 = !DILocation(line: 143, column: 26, scope: !543)
!560 = !DILocalVariable(name: "p_l", scope: !543, file: !11, line: 143, type: !5)
!561 = !DILocation(line: 143, column: 31, scope: !543)
!562 = !DILocalVariable(name: "y1", scope: !543, file: !11, line: 144, type: !5)
!563 = !DILocation(line: 144, column: 9, scope: !543)
!564 = !DILocalVariable(name: "t1", scope: !543, file: !11, line: 144, type: !5)
!565 = !DILocation(line: 144, column: 13, scope: !543)
!566 = !DILocalVariable(name: "t2", scope: !543, file: !11, line: 144, type: !5)
!567 = !DILocation(line: 144, column: 17, scope: !543)
!568 = !DILocalVariable(name: "r", scope: !543, file: !11, line: 144, type: !5)
!569 = !DILocation(line: 144, column: 21, scope: !543)
!570 = !DILocalVariable(name: "s", scope: !543, file: !11, line: 144, type: !5)
!571 = !DILocation(line: 144, column: 24, scope: !543)
!572 = !DILocalVariable(name: "t", scope: !543, file: !11, line: 144, type: !5)
!573 = !DILocation(line: 144, column: 27, scope: !543)
!574 = !DILocalVariable(name: "u", scope: !543, file: !11, line: 144, type: !5)
!575 = !DILocation(line: 144, column: 30, scope: !543)
!576 = !DILocalVariable(name: "v", scope: !543, file: !11, line: 144, type: !5)
!577 = !DILocation(line: 144, column: 33, scope: !543)
!578 = !DILocalVariable(name: "w", scope: !543, file: !11, line: 144, type: !5)
!579 = !DILocation(line: 144, column: 36, scope: !543)
!580 = !DILocalVariable(name: "i", scope: !543, file: !11, line: 145, type: !7)
!581 = !DILocation(line: 145, column: 11, scope: !543)
!582 = !DILocalVariable(name: "j", scope: !543, file: !11, line: 145, type: !7)
!583 = !DILocation(line: 145, column: 14, scope: !543)
!584 = !DILocalVariable(name: "k", scope: !543, file: !11, line: 145, type: !7)
!585 = !DILocation(line: 145, column: 17, scope: !543)
!586 = !DILocalVariable(name: "yisint", scope: !543, file: !11, line: 145, type: !7)
!587 = !DILocation(line: 145, column: 20, scope: !543)
!588 = !DILocalVariable(name: "n", scope: !543, file: !11, line: 145, type: !7)
!589 = !DILocation(line: 145, column: 28, scope: !543)
!590 = !DILocalVariable(name: "hx", scope: !543, file: !11, line: 146, type: !7)
!591 = !DILocation(line: 146, column: 11, scope: !543)
!592 = !DILocalVariable(name: "hy", scope: !543, file: !11, line: 146, type: !7)
!593 = !DILocation(line: 146, column: 15, scope: !543)
!594 = !DILocalVariable(name: "ix", scope: !543, file: !11, line: 146, type: !7)
!595 = !DILocation(line: 146, column: 19, scope: !543)
!596 = !DILocalVariable(name: "iy", scope: !543, file: !11, line: 146, type: !7)
!597 = !DILocation(line: 146, column: 23, scope: !543)
!598 = !DILocalVariable(name: "is", scope: !543, file: !11, line: 146, type: !7)
!599 = !DILocation(line: 146, column: 27, scope: !543)
!600 = !DILocalVariable(name: "gf_u", scope: !601, file: !11, line: 148, type: !187)
!601 = distinct !DILexicalBlock(scope: !543, file: !11, line: 148, column: 3)
!602 = !DILocation(line: 148, column: 3, scope: !601)
!603 = !DILocalVariable(name: "gf_u", scope: !604, file: !11, line: 149, type: !187)
!604 = distinct !DILexicalBlock(scope: !543, file: !11, line: 149, column: 3)
!605 = !DILocation(line: 149, column: 3, scope: !604)
!606 = !DILocation(line: 150, column: 8, scope: !543)
!607 = !DILocation(line: 150, column: 11, scope: !543)
!608 = !DILocation(line: 150, column: 6, scope: !543)
!609 = !DILocation(line: 151, column: 8, scope: !543)
!610 = !DILocation(line: 151, column: 11, scope: !543)
!611 = !DILocation(line: 151, column: 6, scope: !543)
!612 = !DILocation(line: 154, column: 8, scope: !613)
!613 = distinct !DILexicalBlock(scope: !543, file: !11, line: 154, column: 8)
!614 = !DILocation(line: 154, column: 11, scope: !613)
!615 = !DILocation(line: 154, column: 8, scope: !543)
!616 = !DILocation(line: 154, column: 18, scope: !613)
!617 = !DILocation(line: 157, column: 8, scope: !618)
!618 = distinct !DILexicalBlock(scope: !543, file: !11, line: 157, column: 8)
!619 = !DILocation(line: 157, column: 10, scope: !618)
!620 = !DILocation(line: 157, column: 8, scope: !543)
!621 = !DILocation(line: 157, column: 20, scope: !618)
!622 = !DILocation(line: 158, column: 8, scope: !623)
!623 = distinct !DILexicalBlock(scope: !543, file: !11, line: 158, column: 8)
!624 = !DILocation(line: 158, column: 10, scope: !623)
!625 = !DILocation(line: 158, column: 19, scope: !623)
!626 = !DILocation(line: 158, column: 42, scope: !623)
!627 = !DILocation(line: 158, column: 22, scope: !623)
!628 = !DILocation(line: 158, column: 8, scope: !543)
!629 = !DILocation(line: 158, column: 48, scope: !623)
!630 = !DILocation(line: 161, column: 8, scope: !631)
!631 = distinct !DILexicalBlock(scope: !543, file: !11, line: 161, column: 8)
!632 = !DILocation(line: 161, column: 11, scope: !631)
!633 = !DILocation(line: 161, column: 24, scope: !631)
!634 = !DILocation(line: 162, column: 8, scope: !631)
!635 = !DILocation(line: 162, column: 11, scope: !631)
!636 = !DILocation(line: 161, column: 8, scope: !543)
!637 = !DILocation(line: 163, column: 12, scope: !631)
!638 = !DILocation(line: 163, column: 16, scope: !631)
!639 = !DILocation(line: 163, column: 14, scope: !631)
!640 = !DILocation(line: 163, column: 5, scope: !631)
!641 = !DILocation(line: 170, column: 11, scope: !543)
!642 = !DILocation(line: 171, column: 8, scope: !643)
!643 = distinct !DILexicalBlock(scope: !543, file: !11, line: 171, column: 8)
!644 = !DILocation(line: 171, column: 11, scope: !643)
!645 = !DILocation(line: 171, column: 8, scope: !543)
!646 = !DILocation(line: 172, column: 10, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !11, line: 172, column: 10)
!648 = distinct !DILexicalBlock(scope: !643, file: !11, line: 171, column: 17)
!649 = !DILocation(line: 172, column: 13, scope: !647)
!650 = !DILocation(line: 172, column: 10, scope: !648)
!651 = !DILocation(line: 172, column: 36, scope: !647)
!652 = !DILocation(line: 172, column: 29, scope: !647)
!653 = !DILocation(line: 174, column: 12, scope: !654)
!654 = distinct !DILexicalBlock(scope: !647, file: !11, line: 174, column: 12)
!655 = !DILocation(line: 174, column: 15, scope: !654)
!656 = !DILocation(line: 174, column: 12, scope: !647)
!657 = !DILocation(line: 175, column: 15, scope: !658)
!658 = distinct !DILexicalBlock(scope: !654, file: !11, line: 174, column: 31)
!659 = !DILocation(line: 175, column: 18, scope: !658)
!660 = !DILocation(line: 175, column: 26, scope: !658)
!661 = !DILocation(line: 175, column: 11, scope: !658)
!662 = !DILocation(line: 176, column: 13, scope: !658)
!663 = !DILocation(line: 176, column: 26, scope: !658)
!664 = !DILocation(line: 176, column: 24, scope: !658)
!665 = !DILocation(line: 176, column: 16, scope: !658)
!666 = !DILocation(line: 176, column: 11, scope: !658)
!667 = !DILocation(line: 177, column: 16, scope: !668)
!668 = distinct !DILexicalBlock(scope: !658, file: !11, line: 177, column: 14)
!669 = !DILocation(line: 177, column: 28, scope: !668)
!670 = !DILocation(line: 177, column: 26, scope: !668)
!671 = !DILocation(line: 177, column: 18, scope: !668)
!672 = !DILocation(line: 177, column: 37, scope: !668)
!673 = !DILocation(line: 177, column: 34, scope: !668)
!674 = !DILocation(line: 177, column: 14, scope: !658)
!675 = !DILocation(line: 177, column: 57, scope: !668)
!676 = !DILocation(line: 177, column: 59, scope: !668)
!677 = !DILocation(line: 177, column: 53, scope: !668)
!678 = !DILocation(line: 177, column: 49, scope: !668)
!679 = !DILocation(line: 177, column: 42, scope: !668)
!680 = !DILocation(line: 178, column: 7, scope: !658)
!681 = !DILocation(line: 179, column: 3, scope: !648)
!682 = !DILocation(line: 182, column: 8, scope: !683)
!683 = distinct !DILexicalBlock(scope: !543, file: !11, line: 182, column: 8)
!684 = !DILocation(line: 182, column: 11, scope: !683)
!685 = !DILocation(line: 182, column: 8, scope: !543)
!686 = !DILocation(line: 183, column: 10, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !11, line: 183, column: 10)
!688 = distinct !DILexicalBlock(scope: !683, file: !11, line: 182, column: 27)
!689 = !DILocation(line: 183, column: 13, scope: !687)
!690 = !DILocation(line: 183, column: 10, scope: !688)
!691 = !DILocation(line: 184, column: 15, scope: !687)
!692 = !DILocation(line: 184, column: 19, scope: !687)
!693 = !DILocation(line: 184, column: 17, scope: !687)
!694 = !DILocation(line: 184, column: 7, scope: !687)
!695 = !DILocation(line: 186, column: 12, scope: !696)
!696 = distinct !DILexicalBlock(scope: !687, file: !11, line: 186, column: 12)
!697 = !DILocation(line: 186, column: 15, scope: !696)
!698 = !DILocation(line: 186, column: 12, scope: !687)
!699 = !DILocation(line: 187, column: 18, scope: !696)
!700 = !DILocation(line: 187, column: 21, scope: !696)
!701 = !DILocation(line: 187, column: 16, scope: !696)
!702 = !DILocation(line: 187, column: 30, scope: !696)
!703 = !DILocation(line: 187, column: 9, scope: !696)
!704 = !DILocation(line: 189, column: 18, scope: !696)
!705 = !DILocation(line: 189, column: 21, scope: !696)
!706 = !DILocation(line: 189, column: 16, scope: !696)
!707 = !DILocation(line: 189, column: 30, scope: !696)
!708 = !DILocation(line: 189, column: 29, scope: !696)
!709 = !DILocation(line: 189, column: 9, scope: !696)
!710 = !DILocation(line: 191, column: 8, scope: !711)
!711 = distinct !DILexicalBlock(scope: !543, file: !11, line: 191, column: 8)
!712 = !DILocation(line: 191, column: 11, scope: !711)
!713 = !DILocation(line: 191, column: 8, scope: !543)
!714 = !DILocation(line: 192, column: 10, scope: !715)
!715 = distinct !DILexicalBlock(scope: !716, file: !11, line: 192, column: 10)
!716 = distinct !DILexicalBlock(scope: !711, file: !11, line: 191, column: 27)
!717 = !DILocation(line: 192, column: 13, scope: !715)
!718 = !DILocation(line: 192, column: 10, scope: !716)
!719 = !DILocation(line: 192, column: 42, scope: !715)
!720 = !DILocation(line: 192, column: 40, scope: !715)
!721 = !DILocation(line: 192, column: 19, scope: !715)
!722 = !DILocation(line: 193, column: 17, scope: !715)
!723 = !DILocation(line: 193, column: 10, scope: !715)
!724 = !DILocation(line: 195, column: 8, scope: !725)
!725 = distinct !DILexicalBlock(scope: !543, file: !11, line: 195, column: 8)
!726 = !DILocation(line: 195, column: 11, scope: !725)
!727 = !DILocation(line: 195, column: 8, scope: !543)
!728 = !DILocation(line: 195, column: 34, scope: !725)
!729 = !DILocation(line: 195, column: 38, scope: !725)
!730 = !DILocation(line: 195, column: 36, scope: !725)
!731 = !DILocation(line: 195, column: 27, scope: !725)
!732 = !DILocation(line: 196, column: 8, scope: !733)
!733 = distinct !DILexicalBlock(scope: !543, file: !11, line: 196, column: 8)
!734 = !DILocation(line: 196, column: 11, scope: !733)
!735 = !DILocation(line: 196, column: 8, scope: !543)
!736 = !DILocation(line: 197, column: 10, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !11, line: 197, column: 10)
!738 = distinct !DILexicalBlock(scope: !733, file: !11, line: 196, column: 27)
!739 = !DILocation(line: 197, column: 13, scope: !737)
!740 = !DILocation(line: 197, column: 10, scope: !738)
!741 = !DILocation(line: 198, column: 41, scope: !737)
!742 = !DILocation(line: 198, column: 14, scope: !737)
!743 = !DILocation(line: 198, column: 7, scope: !737)
!744 = !DILocation(line: 199, column: 3, scope: !738)
!745 = !DILocation(line: 201, column: 29, scope: !543)
!746 = !DILocation(line: 201, column: 10, scope: !543)
!747 = !DILocation(line: 201, column: 8, scope: !543)
!748 = !DILocation(line: 203, column: 8, scope: !749)
!749 = distinct !DILexicalBlock(scope: !543, file: !11, line: 203, column: 8)
!750 = !DILocation(line: 203, column: 11, scope: !749)
!751 = !DILocation(line: 203, column: 25, scope: !749)
!752 = !DILocation(line: 203, column: 28, scope: !749)
!753 = !DILocation(line: 203, column: 31, scope: !749)
!754 = !DILocation(line: 203, column: 36, scope: !749)
!755 = !DILocation(line: 203, column: 39, scope: !749)
!756 = !DILocation(line: 203, column: 42, scope: !749)
!757 = !DILocation(line: 203, column: 8, scope: !543)
!758 = !DILocation(line: 204, column: 9, scope: !759)
!759 = distinct !DILexicalBlock(scope: !749, file: !11, line: 203, column: 58)
!760 = !DILocation(line: 204, column: 7, scope: !759)
!761 = !DILocation(line: 205, column: 10, scope: !762)
!762 = distinct !DILexicalBlock(scope: !759, file: !11, line: 205, column: 10)
!763 = !DILocation(line: 205, column: 13, scope: !762)
!764 = !DILocation(line: 205, column: 10, scope: !759)
!765 = !DILocation(line: 205, column: 39, scope: !762)
!766 = !DILocation(line: 205, column: 37, scope: !762)
!767 = !DILocation(line: 205, column: 21, scope: !762)
!768 = !DILocation(line: 205, column: 19, scope: !762)
!769 = !DILocation(line: 206, column: 10, scope: !770)
!770 = distinct !DILexicalBlock(scope: !759, file: !11, line: 206, column: 10)
!771 = !DILocation(line: 206, column: 13, scope: !770)
!772 = !DILocation(line: 206, column: 10, scope: !759)
!773 = !DILocation(line: 207, column: 16, scope: !774)
!774 = distinct !DILexicalBlock(scope: !775, file: !11, line: 207, column: 12)
!775 = distinct !DILexicalBlock(scope: !770, file: !11, line: 206, column: 19)
!776 = !DILocation(line: 207, column: 19, scope: !774)
!777 = !DILocation(line: 207, column: 36, scope: !774)
!778 = !DILocation(line: 207, column: 34, scope: !774)
!779 = !DILocation(line: 207, column: 45, scope: !774)
!780 = !DILocation(line: 207, column: 12, scope: !775)
!781 = !DILocation(line: 208, column: 15, scope: !782)
!782 = distinct !DILexicalBlock(scope: !774, file: !11, line: 207, column: 52)
!783 = !DILocation(line: 208, column: 19, scope: !782)
!784 = !DILocation(line: 208, column: 17, scope: !782)
!785 = !DILocation(line: 208, column: 27, scope: !782)
!786 = !DILocation(line: 208, column: 31, scope: !782)
!787 = !DILocation(line: 208, column: 29, scope: !782)
!788 = !DILocation(line: 208, column: 23, scope: !782)
!789 = !DILocation(line: 208, column: 11, scope: !782)
!790 = !DILocation(line: 209, column: 7, scope: !782)
!791 = !DILocation(line: 210, column: 14, scope: !792)
!792 = distinct !DILexicalBlock(scope: !774, file: !11, line: 210, column: 14)
!793 = !DILocation(line: 210, column: 21, scope: !792)
!794 = !DILocation(line: 210, column: 14, scope: !774)
!795 = !DILocation(line: 211, column: 16, scope: !792)
!796 = !DILocation(line: 211, column: 15, scope: !792)
!797 = !DILocation(line: 211, column: 13, scope: !792)
!798 = !DILocation(line: 211, column: 11, scope: !792)
!799 = !DILocation(line: 212, column: 5, scope: !775)
!800 = !DILocation(line: 213, column: 12, scope: !759)
!801 = !DILocation(line: 213, column: 5, scope: !759)
!802 = !DILocation(line: 217, column: 27, scope: !803)
!803 = distinct !DILexicalBlock(scope: !543, file: !11, line: 217, column: 8)
!804 = !DILocation(line: 217, column: 30, scope: !803)
!805 = !DILocation(line: 217, column: 38, scope: !803)
!806 = !DILocation(line: 217, column: 46, scope: !803)
!807 = !DILocation(line: 217, column: 44, scope: !803)
!808 = !DILocation(line: 217, column: 55, scope: !803)
!809 = !DILocation(line: 217, column: 8, scope: !543)
!810 = !DILocation(line: 217, column: 71, scope: !803)
!811 = !DILocation(line: 217, column: 75, scope: !803)
!812 = !DILocation(line: 217, column: 73, scope: !803)
!813 = !DILocation(line: 218, column: 11, scope: !803)
!814 = !DILocation(line: 218, column: 15, scope: !803)
!815 = !DILocation(line: 218, column: 13, scope: !803)
!816 = !DILocation(line: 217, column: 79, scope: !803)
!817 = !DILocation(line: 217, column: 62, scope: !803)
!818 = !DILocation(line: 221, column: 8, scope: !819)
!819 = distinct !DILexicalBlock(scope: !543, file: !11, line: 221, column: 8)
!820 = !DILocation(line: 221, column: 11, scope: !819)
!821 = !DILocation(line: 221, column: 8, scope: !543)
!822 = !DILocation(line: 223, column: 10, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !11, line: 223, column: 10)
!824 = distinct !DILexicalBlock(scope: !819, file: !11, line: 221, column: 26)
!825 = !DILocation(line: 223, column: 13, scope: !823)
!826 = !DILocation(line: 223, column: 10, scope: !824)
!827 = !DILocation(line: 223, column: 37, scope: !823)
!828 = !DILocation(line: 223, column: 40, scope: !823)
!829 = !DILocation(line: 223, column: 35, scope: !823)
!830 = !DILocation(line: 223, column: 28, scope: !823)
!831 = !DILocation(line: 225, column: 10, scope: !832)
!832 = distinct !DILexicalBlock(scope: !824, file: !11, line: 225, column: 10)
!833 = !DILocation(line: 225, column: 13, scope: !832)
!834 = !DILocation(line: 225, column: 10, scope: !824)
!835 = !DILocation(line: 225, column: 37, scope: !832)
!836 = !DILocation(line: 225, column: 40, scope: !832)
!837 = !DILocation(line: 225, column: 35, scope: !832)
!838 = !DILocation(line: 225, column: 28, scope: !832)
!839 = !DILocation(line: 229, column: 9, scope: !824)
!840 = !DILocation(line: 229, column: 11, scope: !824)
!841 = !DILocation(line: 229, column: 7, scope: !824)
!842 = !DILocation(line: 230, column: 11, scope: !824)
!843 = !DILocation(line: 230, column: 15, scope: !824)
!844 = !DILocation(line: 230, column: 13, scope: !824)
!845 = !DILocation(line: 230, column: 39, scope: !824)
!846 = !DILocation(line: 230, column: 72, scope: !824)
!847 = !DILocation(line: 230, column: 70, scope: !824)
!848 = !DILocation(line: 230, column: 37, scope: !824)
!849 = !DILocation(line: 230, column: 19, scope: !824)
!850 = !DILocation(line: 230, column: 7, scope: !824)
!851 = !DILocation(line: 232, column: 29, scope: !824)
!852 = !DILocation(line: 232, column: 27, scope: !824)
!853 = !DILocation(line: 232, column: 7, scope: !824)
!854 = !DILocation(line: 233, column: 9, scope: !824)
!855 = !DILocation(line: 233, column: 33, scope: !824)
!856 = !DILocation(line: 233, column: 35, scope: !824)
!857 = !DILocation(line: 233, column: 31, scope: !824)
!858 = !DILocation(line: 233, column: 7, scope: !824)
!859 = !DILocation(line: 234, column: 10, scope: !824)
!860 = !DILocation(line: 234, column: 14, scope: !824)
!861 = !DILocation(line: 234, column: 12, scope: !824)
!862 = !DILocation(line: 234, column: 8, scope: !824)
!863 = !DILocalVariable(name: "gf_u", scope: !864, file: !11, line: 235, type: !187)
!864 = distinct !DILexicalBlock(scope: !824, file: !11, line: 235, column: 5)
!865 = !DILocation(line: 235, column: 5, scope: !864)
!866 = !DILocalVariable(name: "sf_u", scope: !867, file: !11, line: 236, type: !187)
!867 = distinct !DILexicalBlock(scope: !824, file: !11, line: 236, column: 5)
!868 = !DILocation(line: 236, column: 5, scope: !867)
!869 = !DILocation(line: 237, column: 10, scope: !824)
!870 = !DILocation(line: 237, column: 16, scope: !824)
!871 = !DILocation(line: 237, column: 21, scope: !824)
!872 = !DILocation(line: 237, column: 19, scope: !824)
!873 = !DILocation(line: 237, column: 12, scope: !824)
!874 = !DILocation(line: 237, column: 8, scope: !824)
!875 = !DILocation(line: 238, column: 3, scope: !824)
!876 = !DILocalVariable(name: "s2", scope: !877, file: !11, line: 239, type: !5)
!877 = distinct !DILexicalBlock(scope: !819, file: !11, line: 238, column: 10)
!878 = !DILocation(line: 239, column: 11, scope: !877)
!879 = !DILocalVariable(name: "s_h", scope: !877, file: !11, line: 239, type: !5)
!880 = !DILocation(line: 239, column: 15, scope: !877)
!881 = !DILocalVariable(name: "s_l", scope: !877, file: !11, line: 239, type: !5)
!882 = !DILocation(line: 239, column: 20, scope: !877)
!883 = !DILocalVariable(name: "t_h", scope: !877, file: !11, line: 239, type: !5)
!884 = !DILocation(line: 239, column: 25, scope: !877)
!885 = !DILocalVariable(name: "t_l", scope: !877, file: !11, line: 239, type: !5)
!886 = !DILocation(line: 239, column: 30, scope: !877)
!887 = !DILocation(line: 240, column: 7, scope: !877)
!888 = !DILocation(line: 242, column: 10, scope: !889)
!889 = distinct !DILexicalBlock(scope: !877, file: !11, line: 242, column: 10)
!890 = !DILocation(line: 242, column: 13, scope: !889)
!891 = !DILocation(line: 242, column: 10, scope: !877)
!892 = !DILocation(line: 243, column: 10, scope: !893)
!893 = distinct !DILexicalBlock(scope: !889, file: !11, line: 242, column: 28)
!894 = !DILocation(line: 244, column: 9, scope: !893)
!895 = !DILocalVariable(name: "gf_u", scope: !896, file: !11, line: 245, type: !187)
!896 = distinct !DILexicalBlock(scope: !893, file: !11, line: 245, column: 7)
!897 = !DILocation(line: 245, column: 7, scope: !896)
!898 = !DILocation(line: 246, column: 5, scope: !893)
!899 = !DILocation(line: 247, column: 15, scope: !877)
!900 = !DILocation(line: 247, column: 20, scope: !877)
!901 = !DILocation(line: 247, column: 28, scope: !877)
!902 = !DILocation(line: 247, column: 8, scope: !877)
!903 = !DILocation(line: 248, column: 10, scope: !877)
!904 = !DILocation(line: 248, column: 13, scope: !877)
!905 = !DILocation(line: 248, column: 8, scope: !877)
!906 = !DILocation(line: 250, column: 10, scope: !877)
!907 = !DILocation(line: 250, column: 12, scope: !877)
!908 = !DILocation(line: 250, column: 8, scope: !877)
!909 = !DILocation(line: 251, column: 10, scope: !910)
!910 = distinct !DILexicalBlock(scope: !877, file: !11, line: 251, column: 10)
!911 = !DILocation(line: 251, column: 12, scope: !910)
!912 = !DILocation(line: 251, column: 10, scope: !877)
!913 = !DILocation(line: 251, column: 28, scope: !910)
!914 = !DILocation(line: 251, column: 26, scope: !910)
!915 = !DILocation(line: 253, column: 12, scope: !916)
!916 = distinct !DILexicalBlock(scope: !910, file: !11, line: 253, column: 12)
!917 = !DILocation(line: 253, column: 14, scope: !916)
!918 = !DILocation(line: 253, column: 12, scope: !910)
!919 = !DILocation(line: 253, column: 29, scope: !916)
!920 = !DILocation(line: 253, column: 27, scope: !916)
!921 = !DILocation(line: 255, column: 11, scope: !922)
!922 = distinct !DILexicalBlock(scope: !916, file: !11, line: 254, column: 12)
!923 = !DILocation(line: 256, column: 11, scope: !922)
!924 = !DILocation(line: 257, column: 12, scope: !922)
!925 = !DILocalVariable(name: "sf_u", scope: !926, file: !11, line: 259, type: !187)
!926 = distinct !DILexicalBlock(scope: !877, file: !11, line: 259, column: 5)
!927 = !DILocation(line: 259, column: 5, scope: !926)
!928 = !DILocation(line: 262, column: 9, scope: !877)
!929 = !DILocation(line: 262, column: 28, scope: !877)
!930 = !DILocation(line: 262, column: 14, scope: !877)
!931 = !DILocation(line: 262, column: 12, scope: !877)
!932 = !DILocation(line: 262, column: 7, scope: !877)
!933 = !DILocation(line: 263, column: 27, scope: !877)
!934 = !DILocation(line: 263, column: 46, scope: !877)
!935 = !DILocation(line: 263, column: 32, scope: !877)
!936 = !DILocation(line: 263, column: 30, scope: !877)
!937 = !DILocation(line: 263, column: 23, scope: !877)
!938 = !DILocation(line: 263, column: 7, scope: !877)
!939 = !DILocation(line: 264, column: 9, scope: !877)
!940 = !DILocation(line: 264, column: 13, scope: !877)
!941 = !DILocation(line: 264, column: 11, scope: !877)
!942 = !DILocation(line: 264, column: 7, scope: !877)
!943 = !DILocation(line: 265, column: 11, scope: !877)
!944 = !DILocation(line: 265, column: 9, scope: !877)
!945 = !DILocalVariable(name: "gf_u", scope: !946, file: !11, line: 266, type: !187)
!946 = distinct !DILexicalBlock(scope: !877, file: !11, line: 266, column: 5)
!947 = !DILocation(line: 266, column: 5, scope: !946)
!948 = !DILocalVariable(name: "sf_u", scope: !949, file: !11, line: 267, type: !187)
!949 = distinct !DILexicalBlock(scope: !877, file: !11, line: 267, column: 5)
!950 = !DILocation(line: 267, column: 5, scope: !949)
!951 = !DILocalVariable(name: "sf_u", scope: !952, file: !11, line: 269, type: !187)
!952 = distinct !DILexicalBlock(scope: !877, file: !11, line: 269, column: 5)
!953 = !DILocation(line: 269, column: 5, scope: !952)
!954 = !DILocation(line: 270, column: 11, scope: !877)
!955 = !DILocation(line: 270, column: 18, scope: !877)
!956 = !DILocation(line: 270, column: 38, scope: !877)
!957 = !DILocation(line: 270, column: 24, scope: !877)
!958 = !DILocation(line: 270, column: 22, scope: !877)
!959 = !DILocation(line: 270, column: 14, scope: !877)
!960 = !DILocation(line: 270, column: 9, scope: !877)
!961 = !DILocation(line: 271, column: 11, scope: !877)
!962 = !DILocation(line: 271, column: 19, scope: !877)
!963 = !DILocation(line: 271, column: 23, scope: !877)
!964 = !DILocation(line: 271, column: 29, scope: !877)
!965 = !DILocation(line: 271, column: 21, scope: !877)
!966 = !DILocation(line: 271, column: 37, scope: !877)
!967 = !DILocation(line: 271, column: 43, scope: !877)
!968 = !DILocation(line: 271, column: 35, scope: !877)
!969 = !DILocation(line: 271, column: 13, scope: !877)
!970 = !DILocation(line: 271, column: 9, scope: !877)
!971 = !DILocation(line: 273, column: 10, scope: !877)
!972 = !DILocation(line: 273, column: 14, scope: !877)
!973 = !DILocation(line: 273, column: 12, scope: !877)
!974 = !DILocation(line: 273, column: 8, scope: !877)
!975 = !DILocation(line: 274, column: 9, scope: !877)
!976 = !DILocation(line: 274, column: 14, scope: !877)
!977 = !DILocation(line: 274, column: 12, scope: !877)
!978 = !DILocation(line: 274, column: 36, scope: !877)
!979 = !DILocation(line: 274, column: 58, scope: !877)
!980 = !DILocation(line: 275, column: 60, scope: !877)
!981 = !DILocation(line: 275, column: 82, scope: !877)
!982 = !DILocation(line: 276, column: 64, scope: !877)
!983 = !DILocation(line: 276, column: 62, scope: !877)
!984 = !DILocation(line: 275, column: 80, scope: !877)
!985 = !DILocation(line: 275, column: 58, scope: !877)
!986 = !DILocation(line: 274, column: 56, scope: !877)
!987 = !DILocation(line: 274, column: 34, scope: !877)
!988 = !DILocation(line: 274, column: 17, scope: !877)
!989 = !DILocation(line: 274, column: 7, scope: !877)
!990 = !DILocation(line: 277, column: 10, scope: !877)
!991 = !DILocation(line: 277, column: 18, scope: !877)
!992 = !DILocation(line: 277, column: 24, scope: !877)
!993 = !DILocation(line: 277, column: 22, scope: !877)
!994 = !DILocation(line: 277, column: 7, scope: !877)
!995 = !DILocation(line: 278, column: 11, scope: !877)
!996 = !DILocation(line: 278, column: 17, scope: !877)
!997 = !DILocation(line: 278, column: 15, scope: !877)
!998 = !DILocation(line: 278, column: 9, scope: !877)
!999 = !DILocation(line: 279, column: 27, scope: !877)
!1000 = !DILocation(line: 279, column: 25, scope: !877)
!1001 = !DILocation(line: 279, column: 32, scope: !877)
!1002 = !DILocation(line: 279, column: 30, scope: !877)
!1003 = !DILocation(line: 279, column: 9, scope: !877)
!1004 = !DILocalVariable(name: "gf_u", scope: !1005, file: !11, line: 280, type: !187)
!1005 = distinct !DILexicalBlock(scope: !877, file: !11, line: 280, column: 5)
!1006 = !DILocation(line: 280, column: 5, scope: !1005)
!1007 = !DILocalVariable(name: "sf_u", scope: !1008, file: !11, line: 281, type: !187)
!1008 = distinct !DILexicalBlock(scope: !877, file: !11, line: 281, column: 5)
!1009 = !DILocation(line: 281, column: 5, scope: !1008)
!1010 = !DILocation(line: 282, column: 11, scope: !877)
!1011 = !DILocation(line: 282, column: 19, scope: !877)
!1012 = !DILocation(line: 282, column: 23, scope: !877)
!1013 = !DILocation(line: 282, column: 43, scope: !877)
!1014 = !DILocation(line: 282, column: 41, scope: !877)
!1015 = !DILocation(line: 282, column: 13, scope: !877)
!1016 = !DILocation(line: 282, column: 9, scope: !877)
!1017 = !DILocation(line: 284, column: 9, scope: !877)
!1018 = !DILocation(line: 284, column: 15, scope: !877)
!1019 = !DILocation(line: 284, column: 13, scope: !877)
!1020 = !DILocation(line: 284, column: 7, scope: !877)
!1021 = !DILocation(line: 285, column: 9, scope: !877)
!1022 = !DILocation(line: 285, column: 15, scope: !877)
!1023 = !DILocation(line: 285, column: 21, scope: !877)
!1024 = !DILocation(line: 285, column: 27, scope: !877)
!1025 = !DILocation(line: 285, column: 25, scope: !877)
!1026 = !DILocation(line: 285, column: 19, scope: !877)
!1027 = !DILocation(line: 285, column: 7, scope: !877)
!1028 = !DILocation(line: 287, column: 11, scope: !877)
!1029 = !DILocation(line: 287, column: 15, scope: !877)
!1030 = !DILocation(line: 287, column: 13, scope: !877)
!1031 = !DILocation(line: 287, column: 9, scope: !877)
!1032 = !DILocalVariable(name: "gf_u", scope: !1033, file: !11, line: 288, type: !187)
!1033 = distinct !DILexicalBlock(scope: !877, file: !11, line: 288, column: 5)
!1034 = !DILocation(line: 288, column: 5, scope: !1033)
!1035 = !DILocalVariable(name: "sf_u", scope: !1036, file: !11, line: 289, type: !187)
!1036 = distinct !DILexicalBlock(scope: !877, file: !11, line: 289, column: 5)
!1037 = !DILocation(line: 289, column: 5, scope: !1036)
!1038 = !DILocation(line: 290, column: 11, scope: !877)
!1039 = !DILocation(line: 290, column: 17, scope: !877)
!1040 = !DILocation(line: 290, column: 23, scope: !877)
!1041 = !DILocation(line: 290, column: 21, scope: !877)
!1042 = !DILocation(line: 290, column: 13, scope: !877)
!1043 = !DILocation(line: 290, column: 9, scope: !877)
!1044 = !DILocation(line: 291, column: 28, scope: !877)
!1045 = !DILocation(line: 291, column: 26, scope: !877)
!1046 = !DILocation(line: 291, column: 9, scope: !877)
!1047 = !DILocation(line: 292, column: 28, scope: !877)
!1048 = !DILocation(line: 292, column: 34, scope: !877)
!1049 = !DILocation(line: 292, column: 38, scope: !877)
!1050 = !DILocation(line: 292, column: 32, scope: !877)
!1051 = !DILocation(line: 292, column: 71, scope: !877)
!1052 = !DILocation(line: 292, column: 55, scope: !877)
!1053 = !DILocation(line: 292, column: 53, scope: !877)
!1054 = !DILocation(line: 292, column: 9, scope: !877)
!1055 = !DILocation(line: 294, column: 18, scope: !877)
!1056 = !DILocation(line: 294, column: 9, scope: !877)
!1057 = !DILocation(line: 294, column: 7, scope: !877)
!1058 = !DILocation(line: 295, column: 16, scope: !877)
!1059 = !DILocation(line: 295, column: 22, scope: !877)
!1060 = !DILocation(line: 295, column: 20, scope: !877)
!1061 = !DILocation(line: 295, column: 46, scope: !877)
!1062 = !DILocation(line: 295, column: 30, scope: !877)
!1063 = !DILocation(line: 295, column: 28, scope: !877)
!1064 = !DILocation(line: 295, column: 54, scope: !877)
!1065 = !DILocation(line: 295, column: 52, scope: !877)
!1066 = !DILocation(line: 295, column: 8, scope: !877)
!1067 = !DILocalVariable(name: "gf_u", scope: !1068, file: !11, line: 296, type: !187)
!1068 = distinct !DILexicalBlock(scope: !877, file: !11, line: 296, column: 5)
!1069 = !DILocation(line: 296, column: 5, scope: !1068)
!1070 = !DILocalVariable(name: "sf_u", scope: !1071, file: !11, line: 297, type: !187)
!1071 = distinct !DILexicalBlock(scope: !877, file: !11, line: 297, column: 5)
!1072 = !DILocation(line: 297, column: 5, scope: !1071)
!1073 = !DILocation(line: 298, column: 10, scope: !877)
!1074 = !DILocation(line: 298, column: 22, scope: !877)
!1075 = !DILocation(line: 298, column: 27, scope: !877)
!1076 = !DILocation(line: 298, column: 25, scope: !877)
!1077 = !DILocation(line: 298, column: 49, scope: !877)
!1078 = !DILocation(line: 298, column: 33, scope: !877)
!1079 = !DILocation(line: 298, column: 31, scope: !877)
!1080 = !DILocation(line: 298, column: 57, scope: !877)
!1081 = !DILocation(line: 298, column: 55, scope: !877)
!1082 = !DILocation(line: 298, column: 14, scope: !877)
!1083 = !DILocation(line: 298, column: 8, scope: !877)
!1084 = !DILocation(line: 301, column: 5, scope: !543)
!1085 = !DILocation(line: 302, column: 27, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !543, file: !11, line: 302, column: 8)
!1087 = !DILocation(line: 302, column: 30, scope: !1086)
!1088 = !DILocation(line: 302, column: 38, scope: !1086)
!1089 = !DILocation(line: 302, column: 48, scope: !1086)
!1090 = !DILocation(line: 302, column: 55, scope: !1086)
!1091 = !DILocation(line: 302, column: 44, scope: !1086)
!1092 = !DILocation(line: 302, column: 63, scope: !1086)
!1093 = !DILocation(line: 302, column: 8, scope: !543)
!1094 = !DILocation(line: 303, column: 7, scope: !1086)
!1095 = !DILocation(line: 303, column: 5, scope: !1086)
!1096 = !DILocalVariable(name: "gf_u", scope: !1097, file: !11, line: 306, type: !187)
!1097 = distinct !DILexicalBlock(scope: !543, file: !11, line: 306, column: 3)
!1098 = !DILocation(line: 306, column: 3, scope: !1097)
!1099 = !DILocalVariable(name: "sf_u", scope: !1100, file: !11, line: 307, type: !187)
!1100 = distinct !DILexicalBlock(scope: !543, file: !11, line: 307, column: 3)
!1101 = !DILocation(line: 307, column: 3, scope: !1100)
!1102 = !DILocation(line: 308, column: 11, scope: !543)
!1103 = !DILocation(line: 308, column: 15, scope: !543)
!1104 = !DILocation(line: 308, column: 13, scope: !543)
!1105 = !DILocation(line: 308, column: 22, scope: !543)
!1106 = !DILocation(line: 308, column: 27, scope: !543)
!1107 = !DILocation(line: 308, column: 31, scope: !543)
!1108 = !DILocation(line: 308, column: 29, scope: !543)
!1109 = !DILocation(line: 308, column: 25, scope: !543)
!1110 = !DILocation(line: 308, column: 7, scope: !543)
!1111 = !DILocation(line: 309, column: 9, scope: !543)
!1112 = !DILocation(line: 309, column: 14, scope: !543)
!1113 = !DILocation(line: 309, column: 12, scope: !543)
!1114 = !DILocation(line: 309, column: 7, scope: !543)
!1115 = !DILocation(line: 310, column: 7, scope: !543)
!1116 = !DILocation(line: 310, column: 13, scope: !543)
!1117 = !DILocation(line: 310, column: 11, scope: !543)
!1118 = !DILocation(line: 310, column: 5, scope: !543)
!1119 = !DILocalVariable(name: "gf_u", scope: !1120, file: !11, line: 311, type: !187)
!1120 = distinct !DILexicalBlock(scope: !543, file: !11, line: 311, column: 3)
!1121 = !DILocation(line: 311, column: 3, scope: !1120)
!1122 = !DILocation(line: 312, column: 8, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !543, file: !11, line: 312, column: 8)
!1124 = !DILocation(line: 312, column: 10, scope: !1123)
!1125 = !DILocation(line: 312, column: 8, scope: !543)
!1126 = !DILocation(line: 313, column: 12, scope: !1123)
!1127 = !DILocation(line: 313, column: 14, scope: !1123)
!1128 = !DILocation(line: 313, column: 31, scope: !1123)
!1129 = !DILocation(line: 313, column: 5, scope: !1123)
!1130 = !DILocation(line: 315, column: 10, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1123, file: !11, line: 315, column: 10)
!1132 = !DILocation(line: 315, column: 12, scope: !1131)
!1133 = !DILocation(line: 315, column: 10, scope: !1123)
!1134 = !DILocation(line: 316, column: 12, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !11, line: 316, column: 12)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !11, line: 315, column: 28)
!1137 = !DILocation(line: 316, column: 16, scope: !1135)
!1138 = !DILocation(line: 316, column: 34, scope: !1135)
!1139 = !DILocation(line: 316, column: 38, scope: !1135)
!1140 = !DILocation(line: 316, column: 36, scope: !1135)
!1141 = !DILocation(line: 316, column: 32, scope: !1135)
!1142 = !DILocation(line: 316, column: 12, scope: !1136)
!1143 = !DILocation(line: 316, column: 51, scope: !1135)
!1144 = !DILocation(line: 316, column: 53, scope: !1135)
!1145 = !DILocation(line: 316, column: 70, scope: !1135)
!1146 = !DILocation(line: 316, column: 44, scope: !1135)
!1147 = !DILocation(line: 318, column: 5, scope: !1136)
!1148 = !DILocation(line: 319, column: 14, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1131, file: !11, line: 319, column: 12)
!1150 = !DILocation(line: 319, column: 16, scope: !1149)
!1151 = !DILocation(line: 319, column: 31, scope: !1149)
!1152 = !DILocation(line: 319, column: 12, scope: !1131)
!1153 = !DILocation(line: 320, column: 16, scope: !1149)
!1154 = !DILocation(line: 320, column: 18, scope: !1149)
!1155 = !DILocation(line: 320, column: 35, scope: !1149)
!1156 = !DILocation(line: 320, column: 9, scope: !1149)
!1157 = !DILocation(line: 322, column: 28, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1149, file: !11, line: 322, column: 14)
!1159 = !DILocation(line: 322, column: 30, scope: !1158)
!1160 = !DILocation(line: 322, column: 14, scope: !1149)
!1161 = !DILocation(line: 323, column: 16, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !11, line: 323, column: 16)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !11, line: 322, column: 46)
!1164 = !DILocation(line: 323, column: 23, scope: !1162)
!1165 = !DILocation(line: 323, column: 27, scope: !1162)
!1166 = !DILocation(line: 323, column: 25, scope: !1162)
!1167 = !DILocation(line: 323, column: 20, scope: !1162)
!1168 = !DILocation(line: 323, column: 16, scope: !1163)
!1169 = !DILocation(line: 323, column: 40, scope: !1162)
!1170 = !DILocation(line: 323, column: 42, scope: !1162)
!1171 = !DILocation(line: 323, column: 59, scope: !1162)
!1172 = !DILocation(line: 323, column: 33, scope: !1162)
!1173 = !DILocation(line: 325, column: 9, scope: !1163)
!1174 = !DILocation(line: 329, column: 7, scope: !543)
!1175 = !DILocation(line: 329, column: 9, scope: !543)
!1176 = !DILocation(line: 329, column: 5, scope: !543)
!1177 = !DILocation(line: 330, column: 9, scope: !543)
!1178 = !DILocation(line: 330, column: 11, scope: !543)
!1179 = !DILocation(line: 330, column: 19, scope: !543)
!1180 = !DILocation(line: 330, column: 5, scope: !543)
!1181 = !DILocation(line: 331, column: 5, scope: !543)
!1182 = !DILocation(line: 332, column: 8, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !543, file: !11, line: 332, column: 8)
!1184 = !DILocation(line: 332, column: 10, scope: !1183)
!1185 = !DILocation(line: 332, column: 8, scope: !543)
!1186 = !DILocation(line: 333, column: 9, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1183, file: !11, line: 332, column: 25)
!1188 = !DILocation(line: 333, column: 31, scope: !1187)
!1189 = !DILocation(line: 333, column: 33, scope: !1187)
!1190 = !DILocation(line: 333, column: 26, scope: !1187)
!1191 = !DILocation(line: 333, column: 11, scope: !1187)
!1192 = !DILocation(line: 333, column: 7, scope: !1187)
!1193 = !DILocation(line: 334, column: 13, scope: !1187)
!1194 = !DILocation(line: 334, column: 15, scope: !1187)
!1195 = !DILocation(line: 334, column: 30, scope: !1187)
!1196 = !DILocation(line: 334, column: 38, scope: !1187)
!1197 = !DILocation(line: 334, column: 7, scope: !1187)
!1198 = !DILocalVariable(name: "sf_u", scope: !1199, file: !11, line: 335, type: !187)
!1199 = distinct !DILexicalBlock(scope: !1187, file: !11, line: 335, column: 5)
!1200 = !DILocation(line: 335, column: 5, scope: !1199)
!1201 = !DILocation(line: 336, column: 13, scope: !1187)
!1202 = !DILocation(line: 336, column: 15, scope: !1187)
!1203 = !DILocation(line: 336, column: 30, scope: !1187)
!1204 = !DILocation(line: 336, column: 55, scope: !1187)
!1205 = !DILocation(line: 336, column: 53, scope: !1187)
!1206 = !DILocation(line: 336, column: 45, scope: !1187)
!1207 = !DILocation(line: 336, column: 7, scope: !1187)
!1208 = !DILocation(line: 337, column: 10, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1187, file: !11, line: 337, column: 10)
!1210 = !DILocation(line: 337, column: 12, scope: !1209)
!1211 = !DILocation(line: 337, column: 10, scope: !1187)
!1212 = !DILocation(line: 337, column: 23, scope: !1209)
!1213 = !DILocation(line: 337, column: 22, scope: !1209)
!1214 = !DILocation(line: 337, column: 20, scope: !1209)
!1215 = !DILocation(line: 337, column: 18, scope: !1209)
!1216 = !DILocation(line: 338, column: 12, scope: !1187)
!1217 = !DILocation(line: 338, column: 9, scope: !1187)
!1218 = !DILocation(line: 339, column: 3, scope: !1187)
!1219 = !DILocation(line: 340, column: 7, scope: !543)
!1220 = !DILocation(line: 340, column: 13, scope: !543)
!1221 = !DILocation(line: 340, column: 11, scope: !543)
!1222 = !DILocation(line: 340, column: 5, scope: !543)
!1223 = !DILocalVariable(name: "gf_u", scope: !1224, file: !11, line: 341, type: !187)
!1224 = distinct !DILexicalBlock(scope: !543, file: !11, line: 341, column: 3)
!1225 = !DILocation(line: 341, column: 3, scope: !1224)
!1226 = !DILocalVariable(name: "sf_u", scope: !1227, file: !11, line: 342, type: !187)
!1227 = distinct !DILexicalBlock(scope: !543, file: !11, line: 342, column: 3)
!1228 = !DILocation(line: 342, column: 3, scope: !1227)
!1229 = !DILocation(line: 343, column: 7, scope: !543)
!1230 = !DILocation(line: 343, column: 9, scope: !543)
!1231 = !DILocation(line: 343, column: 5, scope: !543)
!1232 = !DILocation(line: 344, column: 9, scope: !543)
!1233 = !DILocation(line: 344, column: 17, scope: !543)
!1234 = !DILocation(line: 344, column: 21, scope: !543)
!1235 = !DILocation(line: 344, column: 19, scope: !543)
!1236 = !DILocation(line: 344, column: 13, scope: !543)
!1237 = !DILocation(line: 344, column: 47, scope: !543)
!1238 = !DILocation(line: 344, column: 49, scope: !543)
!1239 = !DILocation(line: 344, column: 45, scope: !543)
!1240 = !DILocation(line: 344, column: 5, scope: !543)
!1241 = !DILocation(line: 345, column: 7, scope: !543)
!1242 = !DILocation(line: 345, column: 11, scope: !543)
!1243 = !DILocation(line: 345, column: 9, scope: !543)
!1244 = !DILocation(line: 345, column: 5, scope: !543)
!1245 = !DILocation(line: 346, column: 7, scope: !543)
!1246 = !DILocation(line: 346, column: 13, scope: !543)
!1247 = !DILocation(line: 346, column: 17, scope: !543)
!1248 = !DILocation(line: 346, column: 15, scope: !543)
!1249 = !DILocation(line: 346, column: 9, scope: !543)
!1250 = !DILocation(line: 346, column: 5, scope: !543)
!1251 = !DILocation(line: 347, column: 8, scope: !543)
!1252 = !DILocation(line: 347, column: 12, scope: !543)
!1253 = !DILocation(line: 347, column: 10, scope: !543)
!1254 = !DILocation(line: 347, column: 6, scope: !543)
!1255 = !DILocation(line: 348, column: 9, scope: !543)
!1256 = !DILocation(line: 348, column: 13, scope: !543)
!1257 = !DILocation(line: 348, column: 34, scope: !543)
!1258 = !DILocation(line: 348, column: 55, scope: !543)
!1259 = !DILocation(line: 348, column: 76, scope: !543)
!1260 = !DILocation(line: 349, column: 57, scope: !543)
!1261 = !DILocation(line: 349, column: 55, scope: !543)
!1262 = !DILocation(line: 348, column: 74, scope: !543)
!1263 = !DILocation(line: 348, column: 53, scope: !543)
!1264 = !DILocation(line: 348, column: 32, scope: !543)
!1265 = !DILocation(line: 348, column: 11, scope: !543)
!1266 = !DILocation(line: 348, column: 7, scope: !543)
!1267 = !DILocation(line: 350, column: 10, scope: !543)
!1268 = !DILocation(line: 350, column: 14, scope: !543)
!1269 = !DILocation(line: 350, column: 12, scope: !543)
!1270 = !DILocation(line: 350, column: 23, scope: !543)
!1271 = !DILocation(line: 350, column: 26, scope: !543)
!1272 = !DILocation(line: 350, column: 19, scope: !543)
!1273 = !DILocation(line: 350, column: 48, scope: !543)
!1274 = !DILocation(line: 350, column: 52, scope: !543)
!1275 = !DILocation(line: 350, column: 56, scope: !543)
!1276 = !DILocation(line: 350, column: 50, scope: !543)
!1277 = !DILocation(line: 350, column: 44, scope: !543)
!1278 = !DILocation(line: 350, column: 6, scope: !543)
!1279 = !DILocation(line: 351, column: 26, scope: !543)
!1280 = !DILocation(line: 351, column: 30, scope: !543)
!1281 = !DILocation(line: 351, column: 28, scope: !543)
!1282 = !DILocation(line: 351, column: 22, scope: !543)
!1283 = !DILocation(line: 351, column: 6, scope: !543)
!1284 = !DILocalVariable(name: "gf_u", scope: !1285, file: !11, line: 352, type: !187)
!1285 = distinct !DILexicalBlock(scope: !543, file: !11, line: 352, column: 3)
!1286 = !DILocation(line: 352, column: 3, scope: !1285)
!1287 = !DILocation(line: 353, column: 10, scope: !543)
!1288 = !DILocation(line: 353, column: 12, scope: !543)
!1289 = !DILocation(line: 353, column: 5, scope: !543)
!1290 = !DILocation(line: 354, column: 10, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !543, file: !11, line: 354, column: 8)
!1292 = !DILocation(line: 354, column: 12, scope: !1291)
!1293 = !DILocation(line: 354, column: 20, scope: !1291)
!1294 = !DILocation(line: 354, column: 8, scope: !543)
!1295 = !DILocation(line: 354, column: 52, scope: !1291)
!1296 = !DILocation(line: 354, column: 55, scope: !1291)
!1297 = !DILocation(line: 354, column: 31, scope: !1291)
!1298 = !DILocation(line: 354, column: 29, scope: !1291)
!1299 = !DILocation(line: 354, column: 27, scope: !1291)
!1300 = !DILocalVariable(name: "sf_u", scope: !1301, file: !11, line: 355, type: !187)
!1301 = distinct !DILexicalBlock(scope: !1291, file: !11, line: 355, column: 8)
!1302 = !DILocation(line: 355, column: 8, scope: !1301)
!1303 = !DILocation(line: 356, column: 10, scope: !543)
!1304 = !DILocation(line: 356, column: 14, scope: !543)
!1305 = !DILocation(line: 356, column: 12, scope: !543)
!1306 = !DILocation(line: 356, column: 3, scope: !543)
!1307 = !DILocation(line: 357, column: 1, scope: !543)
!1308 = distinct !DISubprogram(name: "basicmath___isinff", scope: !11, file: !11, line: 711, type: !1309, scopeLine: 712, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!7, !5}
!1311 = !DILocalVariable(name: "x", arg: 1, scope: !1308, file: !11, line: 711, type: !5)
!1312 = !DILocation(line: 711, column: 32, scope: !1308)
!1313 = !DILocalVariable(name: "ix", scope: !1308, file: !11, line: 713, type: !7)
!1314 = !DILocation(line: 713, column: 11, scope: !1308)
!1315 = !DILocalVariable(name: "t", scope: !1308, file: !11, line: 713, type: !7)
!1316 = !DILocation(line: 713, column: 15, scope: !1308)
!1317 = !DILocalVariable(name: "gf_u", scope: !1318, file: !11, line: 714, type: !187)
!1318 = distinct !DILexicalBlock(scope: !1308, file: !11, line: 714, column: 3)
!1319 = !DILocation(line: 714, column: 3, scope: !1318)
!1320 = !DILocation(line: 715, column: 7, scope: !1308)
!1321 = !DILocation(line: 715, column: 10, scope: !1308)
!1322 = !DILocation(line: 715, column: 5, scope: !1308)
!1323 = !DILocation(line: 716, column: 5, scope: !1308)
!1324 = !DILocation(line: 717, column: 9, scope: !1308)
!1325 = !DILocation(line: 717, column: 8, scope: !1308)
!1326 = !DILocation(line: 717, column: 5, scope: !1308)
!1327 = !DILocation(line: 718, column: 13, scope: !1308)
!1328 = !DILocation(line: 718, column: 15, scope: !1308)
!1329 = !DILocation(line: 718, column: 10, scope: !1308)
!1330 = !DILocation(line: 718, column: 27, scope: !1308)
!1331 = !DILocation(line: 718, column: 30, scope: !1308)
!1332 = !DILocation(line: 718, column: 23, scope: !1308)
!1333 = !DILocation(line: 718, column: 3, scope: !1308)
!1334 = distinct !DISubprogram(name: "basicmath___fabsf", scope: !11, file: !11, line: 697, type: !160, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!1335 = !DILocalVariable(name: "x", arg: 1, scope: !1334, file: !11, line: 697, type: !5)
!1336 = !DILocation(line: 697, column: 32, scope: !1334)
!1337 = !DILocalVariable(name: "ix", scope: !1334, file: !11, line: 699, type: !6)
!1338 = !DILocation(line: 699, column: 13, scope: !1334)
!1339 = !DILocalVariable(name: "gf_u", scope: !1340, file: !11, line: 700, type: !187)
!1340 = distinct !DILexicalBlock(scope: !1334, file: !11, line: 700, column: 3)
!1341 = !DILocation(line: 700, column: 3, scope: !1340)
!1342 = !DILocalVariable(name: "sf_u", scope: !1343, file: !11, line: 701, type: !187)
!1343 = distinct !DILexicalBlock(scope: !1334, file: !11, line: 701, column: 3)
!1344 = !DILocation(line: 701, column: 3, scope: !1343)
!1345 = !DILocation(line: 702, column: 10, scope: !1334)
!1346 = !DILocation(line: 702, column: 3, scope: !1334)
!1347 = distinct !DISubprogram(name: "basicmath___scalbnf", scope: !11, file: !11, line: 729, type: !1348, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!5, !5, !7}
!1350 = !DILocalVariable(name: "x", arg: 1, scope: !1347, file: !11, line: 729, type: !5)
!1351 = !DILocation(line: 729, column: 35, scope: !1347)
!1352 = !DILocalVariable(name: "n", arg: 2, scope: !1347, file: !11, line: 729, type: !7)
!1353 = !DILocation(line: 729, column: 42, scope: !1347)
!1354 = !DILocalVariable(name: "k", scope: !1347, file: !11, line: 731, type: !7)
!1355 = !DILocation(line: 731, column: 11, scope: !1347)
!1356 = !DILocalVariable(name: "ix", scope: !1347, file: !11, line: 731, type: !7)
!1357 = !DILocation(line: 731, column: 14, scope: !1347)
!1358 = !DILocalVariable(name: "gf_u", scope: !1359, file: !11, line: 732, type: !187)
!1359 = distinct !DILexicalBlock(scope: !1347, file: !11, line: 732, column: 3)
!1360 = !DILocation(line: 732, column: 3, scope: !1359)
!1361 = !DILocation(line: 733, column: 9, scope: !1347)
!1362 = !DILocation(line: 733, column: 12, scope: !1347)
!1363 = !DILocation(line: 733, column: 27, scope: !1347)
!1364 = !DILocation(line: 733, column: 5, scope: !1347)
!1365 = !DILocation(line: 734, column: 8, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1347, file: !11, line: 734, column: 8)
!1367 = !DILocation(line: 734, column: 10, scope: !1366)
!1368 = !DILocation(line: 734, column: 8, scope: !1347)
!1369 = !DILocation(line: 735, column: 12, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !11, line: 735, column: 10)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !11, line: 734, column: 17)
!1372 = !DILocation(line: 735, column: 15, scope: !1370)
!1373 = !DILocation(line: 735, column: 30, scope: !1370)
!1374 = !DILocation(line: 735, column: 10, scope: !1371)
!1375 = !DILocation(line: 735, column: 44, scope: !1370)
!1376 = !DILocation(line: 735, column: 37, scope: !1370)
!1377 = !DILocation(line: 736, column: 7, scope: !1371)
!1378 = !DILocalVariable(name: "gf_u", scope: !1379, file: !11, line: 737, type: !187)
!1379 = distinct !DILexicalBlock(scope: !1371, file: !11, line: 737, column: 5)
!1380 = !DILocation(line: 737, column: 5, scope: !1379)
!1381 = !DILocation(line: 738, column: 13, scope: !1371)
!1382 = !DILocation(line: 738, column: 16, scope: !1371)
!1383 = !DILocation(line: 738, column: 31, scope: !1371)
!1384 = !DILocation(line: 738, column: 39, scope: !1371)
!1385 = !DILocation(line: 738, column: 7, scope: !1371)
!1386 = !DILocation(line: 739, column: 3, scope: !1371)
!1387 = !DILocation(line: 740, column: 8, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1347, file: !11, line: 740, column: 8)
!1389 = !DILocation(line: 740, column: 10, scope: !1388)
!1390 = !DILocation(line: 740, column: 8, scope: !1347)
!1391 = !DILocation(line: 740, column: 27, scope: !1388)
!1392 = !DILocation(line: 740, column: 31, scope: !1388)
!1393 = !DILocation(line: 740, column: 29, scope: !1388)
!1394 = !DILocation(line: 740, column: 20, scope: !1388)
!1395 = !DILocation(line: 741, column: 7, scope: !1347)
!1396 = !DILocation(line: 741, column: 11, scope: !1347)
!1397 = !DILocation(line: 741, column: 9, scope: !1347)
!1398 = !DILocation(line: 741, column: 5, scope: !1347)
!1399 = !DILocation(line: 742, column: 8, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1347, file: !11, line: 742, column: 8)
!1401 = !DILocation(line: 742, column: 10, scope: !1400)
!1402 = !DILocation(line: 742, column: 18, scope: !1400)
!1403 = !DILocation(line: 742, column: 21, scope: !1400)
!1404 = !DILocation(line: 742, column: 23, scope: !1400)
!1405 = !DILocation(line: 742, column: 8, scope: !1347)
!1406 = !DILocation(line: 744, column: 12, scope: !1400)
!1407 = !DILocation(line: 743, column: 29, scope: !1400)
!1408 = !DILocation(line: 743, column: 27, scope: !1400)
!1409 = !DILocation(line: 743, column: 5, scope: !1400)
!1410 = !DILocation(line: 745, column: 8, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1347, file: !11, line: 745, column: 8)
!1412 = !DILocation(line: 745, column: 10, scope: !1411)
!1413 = !DILocation(line: 745, column: 8, scope: !1347)
!1414 = !DILocation(line: 747, column: 12, scope: !1411)
!1415 = !DILocation(line: 746, column: 29, scope: !1411)
!1416 = !DILocation(line: 746, column: 27, scope: !1411)
!1417 = !DILocation(line: 746, column: 5, scope: !1411)
!1418 = !DILocation(line: 748, column: 8, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1347, file: !11, line: 748, column: 8)
!1420 = !DILocation(line: 748, column: 10, scope: !1419)
!1421 = !DILocation(line: 748, column: 8, scope: !1347)
!1422 = !DILocalVariable(name: "sf_u", scope: !1423, file: !11, line: 749, type: !187)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !11, line: 749, column: 5)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !11, line: 748, column: 16)
!1425 = !DILocation(line: 749, column: 5, scope: !1423)
!1426 = !DILocation(line: 750, column: 12, scope: !1424)
!1427 = !DILocation(line: 750, column: 5, scope: !1424)
!1428 = !DILocation(line: 752, column: 8, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1347, file: !11, line: 752, column: 8)
!1430 = !DILocation(line: 752, column: 10, scope: !1429)
!1431 = !DILocation(line: 752, column: 8, scope: !1347)
!1432 = !DILocation(line: 754, column: 12, scope: !1429)
!1433 = !DILocation(line: 753, column: 29, scope: !1429)
!1434 = !DILocation(line: 753, column: 27, scope: !1429)
!1435 = !DILocation(line: 753, column: 5, scope: !1429)
!1436 = !DILocation(line: 755, column: 5, scope: !1347)
!1437 = !DILocalVariable(name: "sf_u", scope: !1438, file: !11, line: 756, type: !187)
!1438 = distinct !DILexicalBlock(scope: !1347, file: !11, line: 756, column: 3)
!1439 = !DILocation(line: 756, column: 3, scope: !1438)
!1440 = !DILocation(line: 757, column: 10, scope: !1347)
!1441 = !DILocation(line: 757, column: 12, scope: !1347)
!1442 = !DILocation(line: 757, column: 3, scope: !1347)
!1443 = !DILocation(line: 758, column: 1, scope: !1347)
!1444 = distinct !DISubprogram(name: "basicmath___ieee754_rem_pio2f", scope: !11, file: !11, line: 398, type: !1445, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!7, !5, !1447}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32)
!1448 = !DILocalVariable(name: "x", arg: 1, scope: !1444, file: !11, line: 398, type: !5)
!1449 = !DILocation(line: 398, column: 46, scope: !1444)
!1450 = !DILocalVariable(name: "y", arg: 2, scope: !1444, file: !11, line: 398, type: !1447)
!1451 = !DILocation(line: 398, column: 56, scope: !1444)
!1452 = !DILocalVariable(name: "z", scope: !1444, file: !11, line: 400, type: !5)
!1453 = !DILocation(line: 400, column: 9, scope: !1444)
!1454 = !DILocalVariable(name: "w", scope: !1444, file: !11, line: 400, type: !5)
!1455 = !DILocation(line: 400, column: 12, scope: !1444)
!1456 = !DILocalVariable(name: "t", scope: !1444, file: !11, line: 400, type: !5)
!1457 = !DILocation(line: 400, column: 15, scope: !1444)
!1458 = !DILocalVariable(name: "r", scope: !1444, file: !11, line: 400, type: !5)
!1459 = !DILocation(line: 400, column: 18, scope: !1444)
!1460 = !DILocalVariable(name: "fn", scope: !1444, file: !11, line: 400, type: !5)
!1461 = !DILocation(line: 400, column: 21, scope: !1444)
!1462 = !DILocalVariable(name: "i", scope: !1444, file: !11, line: 401, type: !7)
!1463 = !DILocation(line: 401, column: 11, scope: !1444)
!1464 = !DILocalVariable(name: "j", scope: !1444, file: !11, line: 401, type: !7)
!1465 = !DILocation(line: 401, column: 14, scope: !1444)
!1466 = !DILocalVariable(name: "n", scope: !1444, file: !11, line: 401, type: !7)
!1467 = !DILocation(line: 401, column: 17, scope: !1444)
!1468 = !DILocalVariable(name: "ix", scope: !1444, file: !11, line: 401, type: !7)
!1469 = !DILocation(line: 401, column: 20, scope: !1444)
!1470 = !DILocalVariable(name: "hx", scope: !1444, file: !11, line: 401, type: !7)
!1471 = !DILocation(line: 401, column: 24, scope: !1444)
!1472 = !DILocalVariable(name: "gf_u", scope: !1473, file: !11, line: 403, type: !187)
!1473 = distinct !DILexicalBlock(scope: !1444, file: !11, line: 403, column: 3)
!1474 = !DILocation(line: 403, column: 3, scope: !1473)
!1475 = !DILocation(line: 404, column: 8, scope: !1444)
!1476 = !DILocation(line: 404, column: 11, scope: !1444)
!1477 = !DILocation(line: 404, column: 6, scope: !1444)
!1478 = !DILocation(line: 405, column: 8, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1444, file: !11, line: 405, column: 8)
!1480 = !DILocation(line: 405, column: 11, scope: !1479)
!1481 = !DILocation(line: 405, column: 8, scope: !1444)
!1482 = !DILocation(line: 406, column: 14, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1479, file: !11, line: 405, column: 27)
!1484 = !DILocation(line: 406, column: 5, scope: !1483)
!1485 = !DILocation(line: 406, column: 12, scope: !1483)
!1486 = !DILocation(line: 407, column: 5, scope: !1483)
!1487 = !DILocation(line: 407, column: 12, scope: !1483)
!1488 = !DILocation(line: 408, column: 5, scope: !1483)
!1489 = !DILocation(line: 410, column: 8, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1444, file: !11, line: 410, column: 8)
!1491 = !DILocation(line: 410, column: 11, scope: !1490)
!1492 = !DILocation(line: 410, column: 8, scope: !1444)
!1493 = !DILocation(line: 411, column: 10, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !11, line: 411, column: 10)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !11, line: 410, column: 26)
!1496 = !DILocation(line: 411, column: 13, scope: !1494)
!1497 = !DILocation(line: 411, column: 10, scope: !1495)
!1498 = !DILocation(line: 412, column: 11, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1494, file: !11, line: 411, column: 19)
!1500 = !DILocation(line: 412, column: 13, scope: !1499)
!1501 = !DILocation(line: 412, column: 9, scope: !1499)
!1502 = !DILocation(line: 413, column: 14, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1499, file: !11, line: 413, column: 12)
!1504 = !DILocation(line: 413, column: 17, scope: !1503)
!1505 = !DILocation(line: 413, column: 32, scope: !1503)
!1506 = !DILocation(line: 413, column: 12, scope: !1499)
!1507 = !DILocation(line: 414, column: 18, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !11, line: 413, column: 48)
!1509 = !DILocation(line: 414, column: 20, scope: !1508)
!1510 = !DILocation(line: 414, column: 9, scope: !1508)
!1511 = !DILocation(line: 414, column: 16, scope: !1508)
!1512 = !DILocation(line: 415, column: 20, scope: !1508)
!1513 = !DILocation(line: 415, column: 24, scope: !1508)
!1514 = !DILocation(line: 415, column: 22, scope: !1508)
!1515 = !DILocation(line: 415, column: 33, scope: !1508)
!1516 = !DILocation(line: 415, column: 9, scope: !1508)
!1517 = !DILocation(line: 415, column: 16, scope: !1508)
!1518 = !DILocation(line: 416, column: 7, scope: !1508)
!1519 = !DILocation(line: 417, column: 11, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1503, file: !11, line: 416, column: 14)
!1521 = !DILocation(line: 418, column: 18, scope: !1520)
!1522 = !DILocation(line: 418, column: 20, scope: !1520)
!1523 = !DILocation(line: 418, column: 9, scope: !1520)
!1524 = !DILocation(line: 418, column: 16, scope: !1520)
!1525 = !DILocation(line: 419, column: 20, scope: !1520)
!1526 = !DILocation(line: 419, column: 24, scope: !1520)
!1527 = !DILocation(line: 419, column: 22, scope: !1520)
!1528 = !DILocation(line: 419, column: 33, scope: !1520)
!1529 = !DILocation(line: 419, column: 9, scope: !1520)
!1530 = !DILocation(line: 419, column: 16, scope: !1520)
!1531 = !DILocation(line: 421, column: 7, scope: !1499)
!1532 = !DILocation(line: 423, column: 11, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1494, file: !11, line: 422, column: 12)
!1534 = !DILocation(line: 423, column: 13, scope: !1533)
!1535 = !DILocation(line: 423, column: 9, scope: !1533)
!1536 = !DILocation(line: 424, column: 14, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1533, file: !11, line: 424, column: 12)
!1538 = !DILocation(line: 424, column: 17, scope: !1537)
!1539 = !DILocation(line: 424, column: 32, scope: !1537)
!1540 = !DILocation(line: 424, column: 12, scope: !1533)
!1541 = !DILocation(line: 425, column: 18, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1537, file: !11, line: 424, column: 48)
!1543 = !DILocation(line: 425, column: 20, scope: !1542)
!1544 = !DILocation(line: 425, column: 9, scope: !1542)
!1545 = !DILocation(line: 425, column: 16, scope: !1542)
!1546 = !DILocation(line: 426, column: 20, scope: !1542)
!1547 = !DILocation(line: 426, column: 24, scope: !1542)
!1548 = !DILocation(line: 426, column: 22, scope: !1542)
!1549 = !DILocation(line: 426, column: 33, scope: !1542)
!1550 = !DILocation(line: 426, column: 9, scope: !1542)
!1551 = !DILocation(line: 426, column: 16, scope: !1542)
!1552 = !DILocation(line: 427, column: 7, scope: !1542)
!1553 = !DILocation(line: 428, column: 11, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1537, file: !11, line: 427, column: 14)
!1555 = !DILocation(line: 429, column: 18, scope: !1554)
!1556 = !DILocation(line: 429, column: 20, scope: !1554)
!1557 = !DILocation(line: 429, column: 9, scope: !1554)
!1558 = !DILocation(line: 429, column: 16, scope: !1554)
!1559 = !DILocation(line: 430, column: 20, scope: !1554)
!1560 = !DILocation(line: 430, column: 24, scope: !1554)
!1561 = !DILocation(line: 430, column: 22, scope: !1554)
!1562 = !DILocation(line: 430, column: 33, scope: !1554)
!1563 = !DILocation(line: 430, column: 9, scope: !1554)
!1564 = !DILocation(line: 430, column: 16, scope: !1554)
!1565 = !DILocation(line: 432, column: 7, scope: !1533)
!1566 = !DILocation(line: 435, column: 8, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1444, file: !11, line: 435, column: 8)
!1568 = !DILocation(line: 435, column: 11, scope: !1567)
!1569 = !DILocation(line: 435, column: 8, scope: !1444)
!1570 = !DILocation(line: 436, column: 29, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1567, file: !11, line: 435, column: 27)
!1572 = !DILocation(line: 436, column: 10, scope: !1571)
!1573 = !DILocation(line: 436, column: 8, scope: !1571)
!1574 = !DILocation(line: 437, column: 24, scope: !1571)
!1575 = !DILocation(line: 437, column: 46, scope: !1571)
!1576 = !DILocation(line: 437, column: 10, scope: !1571)
!1577 = !DILocation(line: 437, column: 8, scope: !1571)
!1578 = !DILocation(line: 438, column: 19, scope: !1571)
!1579 = !DILocation(line: 438, column: 10, scope: !1571)
!1580 = !DILocation(line: 438, column: 8, scope: !1571)
!1581 = !DILocation(line: 439, column: 10, scope: !1571)
!1582 = !DILocation(line: 439, column: 14, scope: !1571)
!1583 = !DILocation(line: 439, column: 12, scope: !1571)
!1584 = !DILocation(line: 439, column: 8, scope: !1571)
!1585 = !DILocation(line: 440, column: 10, scope: !1571)
!1586 = !DILocation(line: 440, column: 13, scope: !1571)
!1587 = !DILocation(line: 440, column: 8, scope: !1571)
!1588 = !DILocation(line: 441, column: 10, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1571, file: !11, line: 441, column: 10)
!1590 = !DILocation(line: 441, column: 12, scope: !1589)
!1591 = !DILocation(line: 441, column: 17, scope: !1589)
!1592 = !DILocation(line: 441, column: 33, scope: !1589)
!1593 = !DILocation(line: 441, column: 36, scope: !1589)
!1594 = !DILocation(line: 441, column: 73, scope: !1589)
!1595 = !DILocation(line: 441, column: 75, scope: !1589)
!1596 = !DILocation(line: 441, column: 54, scope: !1589)
!1597 = !DILocation(line: 441, column: 51, scope: !1589)
!1598 = !DILocation(line: 441, column: 10, scope: !1571)
!1599 = !DILocation(line: 442, column: 16, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1589, file: !11, line: 441, column: 82)
!1601 = !DILocation(line: 442, column: 20, scope: !1600)
!1602 = !DILocation(line: 442, column: 18, scope: !1600)
!1603 = !DILocation(line: 442, column: 7, scope: !1600)
!1604 = !DILocation(line: 442, column: 14, scope: !1600)
!1605 = !DILocation(line: 443, column: 5, scope: !1600)
!1606 = !DILocalVariable(name: "high", scope: !1607, file: !11, line: 444, type: !6)
!1607 = distinct !DILexicalBlock(scope: !1589, file: !11, line: 443, column: 12)
!1608 = !DILocation(line: 444, column: 17, scope: !1607)
!1609 = !DILocation(line: 445, column: 12, scope: !1607)
!1610 = !DILocation(line: 445, column: 15, scope: !1607)
!1611 = !DILocation(line: 445, column: 10, scope: !1607)
!1612 = !DILocation(line: 446, column: 16, scope: !1607)
!1613 = !DILocation(line: 446, column: 20, scope: !1607)
!1614 = !DILocation(line: 446, column: 18, scope: !1607)
!1615 = !DILocation(line: 446, column: 7, scope: !1607)
!1616 = !DILocation(line: 446, column: 14, scope: !1607)
!1617 = !DILocalVariable(name: "gf_u", scope: !1618, file: !11, line: 447, type: !187)
!1618 = distinct !DILexicalBlock(scope: !1607, file: !11, line: 447, column: 7)
!1619 = !DILocation(line: 447, column: 7, scope: !1618)
!1620 = !DILocation(line: 448, column: 11, scope: !1607)
!1621 = !DILocation(line: 448, column: 19, scope: !1607)
!1622 = !DILocation(line: 448, column: 24, scope: !1607)
!1623 = !DILocation(line: 448, column: 32, scope: !1607)
!1624 = !DILocation(line: 448, column: 13, scope: !1607)
!1625 = !DILocation(line: 448, column: 9, scope: !1607)
!1626 = !DILocation(line: 449, column: 12, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1607, file: !11, line: 449, column: 12)
!1628 = !DILocation(line: 449, column: 14, scope: !1627)
!1629 = !DILocation(line: 449, column: 12, scope: !1607)
!1630 = !DILocation(line: 450, column: 14, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1627, file: !11, line: 449, column: 20)
!1632 = !DILocation(line: 450, column: 12, scope: !1631)
!1633 = !DILocation(line: 451, column: 14, scope: !1631)
!1634 = !DILocation(line: 451, column: 17, scope: !1631)
!1635 = !DILocation(line: 451, column: 12, scope: !1631)
!1636 = !DILocation(line: 452, column: 14, scope: !1631)
!1637 = !DILocation(line: 452, column: 18, scope: !1631)
!1638 = !DILocation(line: 452, column: 16, scope: !1631)
!1639 = !DILocation(line: 452, column: 12, scope: !1631)
!1640 = !DILocation(line: 453, column: 14, scope: !1631)
!1641 = !DILocation(line: 453, column: 43, scope: !1631)
!1642 = !DILocation(line: 453, column: 47, scope: !1631)
!1643 = !DILocation(line: 453, column: 45, scope: !1631)
!1644 = !DILocation(line: 453, column: 53, scope: !1631)
!1645 = !DILocation(line: 453, column: 51, scope: !1631)
!1646 = !DILocation(line: 453, column: 37, scope: !1631)
!1647 = !DILocation(line: 453, column: 12, scope: !1631)
!1648 = !DILocation(line: 454, column: 18, scope: !1631)
!1649 = !DILocation(line: 454, column: 22, scope: !1631)
!1650 = !DILocation(line: 454, column: 20, scope: !1631)
!1651 = !DILocation(line: 454, column: 9, scope: !1631)
!1652 = !DILocation(line: 454, column: 16, scope: !1631)
!1653 = !DILocalVariable(name: "gf_u", scope: !1654, file: !11, line: 455, type: !187)
!1654 = distinct !DILexicalBlock(scope: !1631, file: !11, line: 455, column: 9)
!1655 = !DILocation(line: 455, column: 9, scope: !1654)
!1656 = !DILocation(line: 456, column: 13, scope: !1631)
!1657 = !DILocation(line: 456, column: 21, scope: !1631)
!1658 = !DILocation(line: 456, column: 26, scope: !1631)
!1659 = !DILocation(line: 456, column: 34, scope: !1631)
!1660 = !DILocation(line: 456, column: 15, scope: !1631)
!1661 = !DILocation(line: 456, column: 11, scope: !1631)
!1662 = !DILocation(line: 457, column: 14, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1631, file: !11, line: 457, column: 14)
!1664 = !DILocation(line: 457, column: 16, scope: !1663)
!1665 = !DILocation(line: 457, column: 14, scope: !1631)
!1666 = !DILocation(line: 458, column: 16, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1663, file: !11, line: 457, column: 24)
!1668 = !DILocation(line: 458, column: 14, scope: !1667)
!1669 = !DILocation(line: 459, column: 16, scope: !1667)
!1670 = !DILocation(line: 459, column: 19, scope: !1667)
!1671 = !DILocation(line: 459, column: 14, scope: !1667)
!1672 = !DILocation(line: 460, column: 16, scope: !1667)
!1673 = !DILocation(line: 460, column: 20, scope: !1667)
!1674 = !DILocation(line: 460, column: 18, scope: !1667)
!1675 = !DILocation(line: 460, column: 14, scope: !1667)
!1676 = !DILocation(line: 461, column: 16, scope: !1667)
!1677 = !DILocation(line: 461, column: 45, scope: !1667)
!1678 = !DILocation(line: 461, column: 49, scope: !1667)
!1679 = !DILocation(line: 461, column: 47, scope: !1667)
!1680 = !DILocation(line: 461, column: 55, scope: !1667)
!1681 = !DILocation(line: 461, column: 53, scope: !1667)
!1682 = !DILocation(line: 461, column: 39, scope: !1667)
!1683 = !DILocation(line: 461, column: 14, scope: !1667)
!1684 = !DILocation(line: 462, column: 20, scope: !1667)
!1685 = !DILocation(line: 462, column: 24, scope: !1667)
!1686 = !DILocation(line: 462, column: 22, scope: !1667)
!1687 = !DILocation(line: 462, column: 11, scope: !1667)
!1688 = !DILocation(line: 462, column: 18, scope: !1667)
!1689 = !DILocation(line: 463, column: 9, scope: !1667)
!1690 = !DILocation(line: 464, column: 7, scope: !1631)
!1691 = !DILocation(line: 466, column: 16, scope: !1571)
!1692 = !DILocation(line: 466, column: 20, scope: !1571)
!1693 = !DILocation(line: 466, column: 18, scope: !1571)
!1694 = !DILocation(line: 466, column: 31, scope: !1571)
!1695 = !DILocation(line: 466, column: 29, scope: !1571)
!1696 = !DILocation(line: 466, column: 5, scope: !1571)
!1697 = !DILocation(line: 466, column: 12, scope: !1571)
!1698 = !DILocation(line: 467, column: 10, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1571, file: !11, line: 467, column: 10)
!1700 = !DILocation(line: 467, column: 13, scope: !1699)
!1701 = !DILocation(line: 467, column: 10, scope: !1571)
!1702 = !DILocation(line: 468, column: 17, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !11, line: 467, column: 20)
!1704 = !DILocation(line: 468, column: 16, scope: !1703)
!1705 = !DILocation(line: 468, column: 7, scope: !1703)
!1706 = !DILocation(line: 468, column: 14, scope: !1703)
!1707 = !DILocation(line: 469, column: 17, scope: !1703)
!1708 = !DILocation(line: 469, column: 16, scope: !1703)
!1709 = !DILocation(line: 469, column: 7, scope: !1703)
!1710 = !DILocation(line: 469, column: 14, scope: !1703)
!1711 = !DILocation(line: 470, column: 15, scope: !1703)
!1712 = !DILocation(line: 470, column: 14, scope: !1703)
!1713 = !DILocation(line: 470, column: 7, scope: !1703)
!1714 = !DILocation(line: 471, column: 21, scope: !1699)
!1715 = !DILocation(line: 471, column: 14, scope: !1699)
!1716 = !DILocation(line: 476, column: 8, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1444, file: !11, line: 476, column: 8)
!1718 = !DILocation(line: 476, column: 11, scope: !1717)
!1719 = !DILocation(line: 476, column: 8, scope: !1444)
!1720 = !DILocation(line: 477, column: 23, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !11, line: 476, column: 27)
!1722 = !DILocation(line: 477, column: 27, scope: !1721)
!1723 = !DILocation(line: 477, column: 25, scope: !1721)
!1724 = !DILocation(line: 477, column: 14, scope: !1721)
!1725 = !DILocation(line: 477, column: 21, scope: !1721)
!1726 = !DILocation(line: 477, column: 5, scope: !1721)
!1727 = !DILocation(line: 477, column: 12, scope: !1721)
!1728 = !DILocation(line: 478, column: 5, scope: !1721)
!1729 = !DILocation(line: 484, column: 21, scope: !1444)
!1730 = !DILocation(line: 484, column: 25, scope: !1444)
!1731 = !DILocation(line: 484, column: 23, scope: !1444)
!1732 = !DILocation(line: 484, column: 12, scope: !1444)
!1733 = !DILocation(line: 484, column: 19, scope: !1444)
!1734 = !DILocation(line: 484, column: 3, scope: !1444)
!1735 = !DILocation(line: 484, column: 10, scope: !1444)
!1736 = !DILocation(line: 485, column: 3, scope: !1444)
!1737 = !DILocation(line: 486, column: 1, scope: !1444)
!1738 = distinct !DISubprogram(name: "basicmath___kernel_cosf", scope: !11, file: !11, line: 574, type: !544, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!1739 = !DILocalVariable(name: "x", arg: 1, scope: !1738, file: !11, line: 574, type: !5)
!1740 = !DILocation(line: 574, column: 38, scope: !1738)
!1741 = !DILocalVariable(name: "y", arg: 2, scope: !1738, file: !11, line: 574, type: !5)
!1742 = !DILocation(line: 574, column: 47, scope: !1738)
!1743 = !DILocalVariable(name: "a", scope: !1738, file: !11, line: 576, type: !5)
!1744 = !DILocation(line: 576, column: 9, scope: !1738)
!1745 = !DILocalVariable(name: "hz", scope: !1738, file: !11, line: 576, type: !5)
!1746 = !DILocation(line: 576, column: 12, scope: !1738)
!1747 = !DILocalVariable(name: "z", scope: !1738, file: !11, line: 576, type: !5)
!1748 = !DILocation(line: 576, column: 16, scope: !1738)
!1749 = !DILocalVariable(name: "r", scope: !1738, file: !11, line: 576, type: !5)
!1750 = !DILocation(line: 576, column: 19, scope: !1738)
!1751 = !DILocalVariable(name: "qx", scope: !1738, file: !11, line: 576, type: !5)
!1752 = !DILocation(line: 576, column: 22, scope: !1738)
!1753 = !DILocalVariable(name: "ix", scope: !1738, file: !11, line: 577, type: !7)
!1754 = !DILocation(line: 577, column: 11, scope: !1738)
!1755 = !DILocalVariable(name: "gf_u", scope: !1756, file: !11, line: 578, type: !187)
!1756 = distinct !DILexicalBlock(scope: !1738, file: !11, line: 578, column: 3)
!1757 = !DILocation(line: 578, column: 3, scope: !1756)
!1758 = !DILocation(line: 579, column: 6, scope: !1738)
!1759 = !DILocation(line: 580, column: 8, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1738, file: !11, line: 580, column: 8)
!1761 = !DILocation(line: 580, column: 11, scope: !1760)
!1762 = !DILocation(line: 580, column: 8, scope: !1738)
!1763 = !DILocation(line: 581, column: 19, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !11, line: 581, column: 10)
!1765 = distinct !DILexicalBlock(scope: !1760, file: !11, line: 580, column: 26)
!1766 = !DILocation(line: 581, column: 12, scope: !1764)
!1767 = !DILocation(line: 581, column: 23, scope: !1764)
!1768 = !DILocation(line: 581, column: 10, scope: !1765)
!1769 = !DILocation(line: 581, column: 30, scope: !1764)
!1770 = !DILocation(line: 582, column: 3, scope: !1765)
!1771 = !DILocation(line: 583, column: 8, scope: !1738)
!1772 = !DILocation(line: 583, column: 12, scope: !1738)
!1773 = !DILocation(line: 583, column: 10, scope: !1738)
!1774 = !DILocation(line: 583, column: 6, scope: !1738)
!1775 = !DILocation(line: 584, column: 8, scope: !1738)
!1776 = !DILocation(line: 584, column: 29, scope: !1738)
!1777 = !DILocation(line: 584, column: 50, scope: !1738)
!1778 = !DILocation(line: 584, column: 71, scope: !1738)
!1779 = !DILocation(line: 585, column: 52, scope: !1738)
!1780 = !DILocation(line: 585, column: 73, scope: !1738)
!1781 = !DILocation(line: 585, column: 71, scope: !1738)
!1782 = !DILocation(line: 585, column: 50, scope: !1738)
!1783 = !DILocation(line: 584, column: 69, scope: !1738)
!1784 = !DILocation(line: 584, column: 48, scope: !1738)
!1785 = !DILocation(line: 584, column: 27, scope: !1738)
!1786 = !DILocation(line: 584, column: 10, scope: !1738)
!1787 = !DILocation(line: 584, column: 6, scope: !1738)
!1788 = !DILocation(line: 586, column: 8, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1738, file: !11, line: 586, column: 8)
!1790 = !DILocation(line: 586, column: 11, scope: !1789)
!1791 = !DILocation(line: 586, column: 8, scope: !1738)
!1792 = !DILocation(line: 587, column: 46, scope: !1789)
!1793 = !DILocation(line: 587, column: 52, scope: !1789)
!1794 = !DILocation(line: 587, column: 56, scope: !1789)
!1795 = !DILocation(line: 587, column: 60, scope: !1789)
!1796 = !DILocation(line: 587, column: 64, scope: !1789)
!1797 = !DILocation(line: 587, column: 62, scope: !1789)
!1798 = !DILocation(line: 587, column: 58, scope: !1789)
!1799 = !DILocation(line: 587, column: 48, scope: !1789)
!1800 = !DILocation(line: 587, column: 26, scope: !1789)
!1801 = !DILocation(line: 587, column: 5, scope: !1789)
!1802 = !DILocation(line: 589, column: 10, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !11, line: 589, column: 10)
!1804 = distinct !DILexicalBlock(scope: !1789, file: !11, line: 588, column: 8)
!1805 = !DILocation(line: 589, column: 13, scope: !1803)
!1806 = !DILocation(line: 589, column: 10, scope: !1804)
!1807 = !DILocation(line: 590, column: 10, scope: !1803)
!1808 = !DILocation(line: 590, column: 7, scope: !1803)
!1809 = !DILocalVariable(name: "sf_u", scope: !1810, file: !11, line: 592, type: !187)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !11, line: 592, column: 7)
!1811 = distinct !DILexicalBlock(scope: !1803, file: !11, line: 591, column: 10)
!1812 = !DILocation(line: 592, column: 7, scope: !1810)
!1813 = !DILocation(line: 594, column: 26, scope: !1804)
!1814 = !DILocation(line: 594, column: 30, scope: !1804)
!1815 = !DILocation(line: 594, column: 28, scope: !1804)
!1816 = !DILocation(line: 594, column: 8, scope: !1804)
!1817 = !DILocation(line: 595, column: 26, scope: !1804)
!1818 = !DILocation(line: 595, column: 24, scope: !1804)
!1819 = !DILocation(line: 595, column: 8, scope: !1804)
!1820 = !DILocation(line: 596, column: 12, scope: !1804)
!1821 = !DILocation(line: 596, column: 18, scope: !1804)
!1822 = !DILocation(line: 596, column: 25, scope: !1804)
!1823 = !DILocation(line: 596, column: 29, scope: !1804)
!1824 = !DILocation(line: 596, column: 33, scope: !1804)
!1825 = !DILocation(line: 596, column: 37, scope: !1804)
!1826 = !DILocation(line: 596, column: 35, scope: !1804)
!1827 = !DILocation(line: 596, column: 31, scope: !1804)
!1828 = !DILocation(line: 596, column: 21, scope: !1804)
!1829 = !DILocation(line: 596, column: 14, scope: !1804)
!1830 = !DILocation(line: 596, column: 5, scope: !1804)
!1831 = !DILocation(line: 598, column: 1, scope: !1738)
!1832 = distinct !DISubprogram(name: "basicmath___kernel_sinf", scope: !11, file: !11, line: 612, type: !1833, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!5, !5, !5, !7}
!1835 = !DILocalVariable(name: "x", arg: 1, scope: !1832, file: !11, line: 612, type: !5)
!1836 = !DILocation(line: 612, column: 38, scope: !1832)
!1837 = !DILocalVariable(name: "y", arg: 2, scope: !1832, file: !11, line: 612, type: !5)
!1838 = !DILocation(line: 612, column: 47, scope: !1832)
!1839 = !DILocalVariable(name: "iy", arg: 3, scope: !1832, file: !11, line: 612, type: !7)
!1840 = !DILocation(line: 612, column: 54, scope: !1832)
!1841 = !DILocalVariable(name: "z", scope: !1832, file: !11, line: 614, type: !5)
!1842 = !DILocation(line: 614, column: 9, scope: !1832)
!1843 = !DILocalVariable(name: "r", scope: !1832, file: !11, line: 614, type: !5)
!1844 = !DILocation(line: 614, column: 12, scope: !1832)
!1845 = !DILocalVariable(name: "v", scope: !1832, file: !11, line: 614, type: !5)
!1846 = !DILocation(line: 614, column: 15, scope: !1832)
!1847 = !DILocalVariable(name: "ix", scope: !1832, file: !11, line: 615, type: !7)
!1848 = !DILocation(line: 615, column: 11, scope: !1832)
!1849 = !DILocalVariable(name: "gf_u", scope: !1850, file: !11, line: 616, type: !187)
!1850 = distinct !DILexicalBlock(scope: !1832, file: !11, line: 616, column: 3)
!1851 = !DILocation(line: 616, column: 3, scope: !1850)
!1852 = !DILocation(line: 617, column: 6, scope: !1832)
!1853 = !DILocation(line: 618, column: 8, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1832, file: !11, line: 618, column: 8)
!1855 = !DILocation(line: 618, column: 11, scope: !1854)
!1856 = !DILocation(line: 618, column: 8, scope: !1832)
!1857 = !DILocation(line: 619, column: 17, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !11, line: 619, column: 10)
!1859 = distinct !DILexicalBlock(scope: !1854, file: !11, line: 618, column: 26)
!1860 = !DILocation(line: 619, column: 10, scope: !1858)
!1861 = !DILocation(line: 619, column: 19, scope: !1858)
!1862 = !DILocation(line: 619, column: 10, scope: !1859)
!1863 = !DILocation(line: 619, column: 33, scope: !1858)
!1864 = !DILocation(line: 619, column: 26, scope: !1858)
!1865 = !DILocation(line: 620, column: 3, scope: !1859)
!1866 = !DILocation(line: 621, column: 8, scope: !1832)
!1867 = !DILocation(line: 621, column: 12, scope: !1832)
!1868 = !DILocation(line: 621, column: 10, scope: !1832)
!1869 = !DILocation(line: 621, column: 5, scope: !1832)
!1870 = !DILocation(line: 622, column: 8, scope: !1832)
!1871 = !DILocation(line: 622, column: 12, scope: !1832)
!1872 = !DILocation(line: 622, column: 10, scope: !1832)
!1873 = !DILocation(line: 622, column: 5, scope: !1832)
!1874 = !DILocation(line: 623, column: 23, scope: !1832)
!1875 = !DILocation(line: 623, column: 44, scope: !1832)
!1876 = !DILocation(line: 623, column: 65, scope: !1832)
!1877 = !DILocation(line: 624, column: 46, scope: !1832)
!1878 = !DILocation(line: 624, column: 44, scope: !1832)
!1879 = !DILocation(line: 623, column: 63, scope: !1832)
!1880 = !DILocation(line: 623, column: 42, scope: !1832)
!1881 = !DILocation(line: 623, column: 21, scope: !1832)
!1882 = !DILocation(line: 623, column: 5, scope: !1832)
!1883 = !DILocation(line: 625, column: 8, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1832, file: !11, line: 625, column: 8)
!1885 = !DILocation(line: 625, column: 11, scope: !1884)
!1886 = !DILocation(line: 625, column: 8, scope: !1832)
!1887 = !DILocation(line: 625, column: 25, scope: !1884)
!1888 = !DILocation(line: 625, column: 29, scope: !1884)
!1889 = !DILocation(line: 625, column: 50, scope: !1884)
!1890 = !DILocation(line: 625, column: 54, scope: !1884)
!1891 = !DILocation(line: 625, column: 48, scope: !1884)
!1892 = !DILocation(line: 625, column: 27, scope: !1884)
!1893 = !DILocation(line: 625, column: 18, scope: !1884)
!1894 = !DILocation(line: 626, column: 20, scope: !1884)
!1895 = !DILocation(line: 626, column: 28, scope: !1884)
!1896 = !DILocation(line: 626, column: 51, scope: !1884)
!1897 = !DILocation(line: 626, column: 55, scope: !1884)
!1898 = !DILocation(line: 626, column: 59, scope: !1884)
!1899 = !DILocation(line: 626, column: 57, scope: !1884)
!1900 = !DILocation(line: 626, column: 53, scope: !1884)
!1901 = !DILocation(line: 626, column: 65, scope: !1884)
!1902 = !DILocation(line: 626, column: 63, scope: !1884)
!1903 = !DILocation(line: 626, column: 71, scope: !1884)
!1904 = !DILocation(line: 626, column: 69, scope: !1884)
!1905 = !DILocation(line: 626, column: 22, scope: !1884)
!1906 = !DILocation(line: 626, column: 13, scope: !1884)
!1907 = !DILocation(line: 628, column: 1, scope: !1832)
!1908 = distinct !DISubprogram(name: "basicmath___copysignf", scope: !11, file: !11, line: 642, type: !544, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!1909 = !DILocalVariable(name: "x", arg: 1, scope: !1908, file: !11, line: 642, type: !5)
!1910 = !DILocation(line: 642, column: 36, scope: !1908)
!1911 = !DILocalVariable(name: "y", arg: 2, scope: !1908, file: !11, line: 642, type: !5)
!1912 = !DILocation(line: 642, column: 45, scope: !1908)
!1913 = !DILocalVariable(name: "ix", scope: !1908, file: !11, line: 644, type: !6)
!1914 = !DILocation(line: 644, column: 13, scope: !1908)
!1915 = !DILocalVariable(name: "iy", scope: !1908, file: !11, line: 644, type: !6)
!1916 = !DILocation(line: 644, column: 17, scope: !1908)
!1917 = !DILocalVariable(name: "gf_u", scope: !1918, file: !11, line: 645, type: !187)
!1918 = distinct !DILexicalBlock(scope: !1908, file: !11, line: 645, column: 3)
!1919 = !DILocation(line: 645, column: 3, scope: !1918)
!1920 = !DILocalVariable(name: "gf_u", scope: !1921, file: !11, line: 646, type: !187)
!1921 = distinct !DILexicalBlock(scope: !1908, file: !11, line: 646, column: 3)
!1922 = !DILocation(line: 646, column: 3, scope: !1921)
!1923 = !DILocalVariable(name: "sf_u", scope: !1924, file: !11, line: 647, type: !187)
!1924 = distinct !DILexicalBlock(scope: !1908, file: !11, line: 647, column: 3)
!1925 = !DILocation(line: 647, column: 3, scope: !1924)
!1926 = !DILocation(line: 648, column: 10, scope: !1908)
!1927 = !DILocation(line: 648, column: 3, scope: !1908)
!1928 = distinct !DISubprogram(name: "basicmath___cosf", scope: !11, file: !11, line: 656, type: !160, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!1929 = !DILocalVariable(name: "x", arg: 1, scope: !1928, file: !11, line: 656, type: !5)
!1930 = !DILocation(line: 656, column: 31, scope: !1928)
!1931 = !DILocalVariable(name: "y", scope: !1928, file: !11, line: 658, type: !1932)
!1932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !139)
!1933 = !DILocation(line: 658, column: 9, scope: !1928)
!1934 = !DILocalVariable(name: "z", scope: !1928, file: !11, line: 658, type: !5)
!1935 = !DILocation(line: 658, column: 17, scope: !1928)
!1936 = !DILocalVariable(name: "n", scope: !1928, file: !11, line: 659, type: !7)
!1937 = !DILocation(line: 659, column: 11, scope: !1928)
!1938 = !DILocalVariable(name: "ix", scope: !1928, file: !11, line: 659, type: !7)
!1939 = !DILocation(line: 659, column: 14, scope: !1928)
!1940 = !DILocalVariable(name: "gf_u", scope: !1941, file: !11, line: 661, type: !187)
!1941 = distinct !DILexicalBlock(scope: !1928, file: !11, line: 661, column: 3)
!1942 = !DILocation(line: 661, column: 3, scope: !1941)
!1943 = !DILocation(line: 664, column: 6, scope: !1928)
!1944 = !DILocation(line: 665, column: 10, scope: !1928)
!1945 = !DILocation(line: 665, column: 14, scope: !1928)
!1946 = !DILocation(line: 665, column: 12, scope: !1928)
!1947 = !DILocation(line: 665, column: 3, scope: !1928)
