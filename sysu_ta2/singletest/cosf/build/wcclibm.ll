; ModuleID = '/workspaces/llvmta/testcases/batchtest/cosf/wcclibm.c'
source_filename = "/workspaces/llvmta/testcases/batchtest/cosf/wcclibm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%union.ieee_float_shape_type = type { float }

@basicmath_bp = internal constant [2 x float] [float 1.000000e+00, float 1.500000e+00], align 4
@basicmath_dp_l = internal constant [2 x float] [float 0.000000e+00, float 0x3EBA39FB80000000], align 4
@basicmath_dp_h = internal constant [2 x float] [float 0.000000e+00, float 0x3FE2B80000000000], align 4
@basicmath_npio2_hw = internal constant [32 x i32] [i32 1070141184, i32 1078529792, i32 1083624192, i32 1086918400, i32 1090212608, i32 1092012800, i32 1093659904, i32 1095307008, i32 1096954112, i32 1098601216, i32 1099577856, i32 1100401408, i32 1101224960, i32 1102048512, i32 1102872064, i32 1103695616, i32 1104519168, i32 1105342720, i32 1106166272, i32 1106989824, i32 1107554816, i32 1107966464, i32 1108378368, i32 1108790016, i32 1109201920, i32 1109613568, i32 1110025472, i32 1110437120, i32 1110849024, i32 1111260672, i32 1111672576, i32 1112084224], align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___ieee754_acosf(float noundef %x) #0 !dbg !12 {
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
  %0 = load float, float* %x.addr, align 4, !dbg !16
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !16
  store float %0, float* %value, align 4, !dbg !16
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !16
  %1 = load i32, i32* %word, align 4, !dbg !16
  store i32 %1, i32* %hx, align 4, !dbg !16
  %2 = load i32, i32* %hx, align 4, !dbg !17
  %and = and i32 %2, 2147483647, !dbg !18
  store i32 %and, i32* %ix, align 4, !dbg !19
  %3 = load i32, i32* %ix, align 4, !dbg !20
  %cmp = icmp eq i32 %3, 1065353216, !dbg !21
  br i1 %cmp, label %if.then, label %if.else3, !dbg !20

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %hx, align 4, !dbg !22
  %cmp1 = icmp sgt i32 %4, 0, !dbg !23
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !22

if.then2:                                         ; preds = %if.then
  store float 0.000000e+00, float* %retval, align 4, !dbg !24
  br label %return, !dbg !24

if.else:                                          ; preds = %if.then
  store float 0x400921FB60000000, float* %retval, align 4, !dbg !25
  br label %return, !dbg !25

if.else3:                                         ; preds = %entry
  %5 = load i32, i32* %ix, align 4, !dbg !26
  %cmp4 = icmp sgt i32 %5, 1065353216, !dbg !27
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !26

if.then5:                                         ; preds = %if.else3
  %6 = load float, float* %x.addr, align 4, !dbg !28
  %7 = load float, float* %x.addr, align 4, !dbg !29
  %sub = fsub float %6, %7, !dbg !30
  %8 = load float, float* %x.addr, align 4, !dbg !31
  %9 = load float, float* %x.addr, align 4, !dbg !32
  %sub6 = fsub float %8, %9, !dbg !33
  %div = fdiv float %sub, %sub6, !dbg !34
  store float %div, float* %retval, align 4, !dbg !35
  br label %return, !dbg !35

if.end:                                           ; preds = %if.else3
  br label %if.end7

if.end7:                                          ; preds = %if.end
  %10 = load i32, i32* %ix, align 4, !dbg !36
  %cmp8 = icmp slt i32 %10, 1056964608, !dbg !37
  br i1 %cmp8, label %if.then9, label %if.else27, !dbg !36

if.then9:                                         ; preds = %if.end7
  %11 = load i32, i32* %ix, align 4, !dbg !38
  %cmp10 = icmp sle i32 %11, 587202560, !dbg !39
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !38

if.then11:                                        ; preds = %if.then9
  store float 0x3FF921FB60000000, float* %retval, align 4, !dbg !40
  br label %return, !dbg !40

if.end12:                                         ; preds = %if.then9
  %12 = load float, float* %x.addr, align 4, !dbg !41
  %13 = load float, float* %x.addr, align 4, !dbg !42
  %mul = fmul float %12, %13, !dbg !43
  store float %mul, float* %z, align 4, !dbg !44
  %14 = load float, float* %z, align 4, !dbg !45
  %15 = load float, float* %z, align 4, !dbg !46
  %16 = load float, float* %z, align 4, !dbg !47
  %17 = load float, float* %z, align 4, !dbg !48
  %18 = load float, float* %z, align 4, !dbg !49
  %19 = load float, float* %z, align 4, !dbg !50
  %20 = call float @llvm.fmuladd.f32(float %19, float 0x3F023DE100000000, float 0x3F49EFE080000000), !dbg !51
  %21 = call float @llvm.fmuladd.f32(float %18, float %20, float 0xBFA48228C0000000), !dbg !52
  %22 = call float @llvm.fmuladd.f32(float %17, float %21, float 0x3FC9C15500000000), !dbg !53
  %23 = call float @llvm.fmuladd.f32(float %16, float %22, float 0xBFD4D61200000000), !dbg !54
  %24 = call float @llvm.fmuladd.f32(float %15, float %23, float 0x3FC5555560000000), !dbg !55
  %mul18 = fmul float %14, %24, !dbg !56
  store float %mul18, float* %p, align 4, !dbg !57
  %25 = load float, float* %z, align 4, !dbg !58
  %26 = load float, float* %z, align 4, !dbg !59
  %27 = load float, float* %z, align 4, !dbg !60
  %28 = load float, float* %z, align 4, !dbg !61
  %29 = call float @llvm.fmuladd.f32(float %28, float 0x3FB3B8C5C0000000, float 0xBFE6066C20000000), !dbg !62
  %30 = call float @llvm.fmuladd.f32(float %27, float %29, float 0x40002AE5A0000000), !dbg !63
  %31 = call float @llvm.fmuladd.f32(float %26, float %30, float 0xC0033A2720000000), !dbg !64
  %32 = call float @llvm.fmuladd.f32(float %25, float %31, float 1.000000e+00), !dbg !65
  store float %32, float* %q, align 4, !dbg !66
  %33 = load float, float* %p, align 4, !dbg !67
  %34 = load float, float* %q, align 4, !dbg !68
  %div23 = fdiv float %33, %34, !dbg !69
  store float %div23, float* %r, align 4, !dbg !70
  %35 = load float, float* %x.addr, align 4, !dbg !71
  %36 = load float, float* %x.addr, align 4, !dbg !72
  %37 = load float, float* %r, align 4, !dbg !73
  %neg = fneg float %36, !dbg !74
  %38 = call float @llvm.fmuladd.f32(float %neg, float %37, float 0x3E74442D00000000), !dbg !74
  %sub25 = fsub float %35, %38, !dbg !75
  %sub26 = fsub float 0x3FF921FB40000000, %sub25, !dbg !76
  store float %sub26, float* %retval, align 4, !dbg !77
  br label %return, !dbg !77

if.else27:                                        ; preds = %if.end7
  %39 = load i32, i32* %hx, align 4, !dbg !78
  %cmp28 = icmp slt i32 %39, 0, !dbg !79
  br i1 %cmp28, label %if.then29, label %if.else45, !dbg !78

if.then29:                                        ; preds = %if.else27
  %40 = load float, float* %x.addr, align 4, !dbg !80
  %add = fadd float 1.000000e+00, %40, !dbg !81
  %mul30 = fmul float %add, 5.000000e-01, !dbg !82
  store float %mul30, float* %z, align 4, !dbg !83
  %41 = load float, float* %z, align 4, !dbg !84
  %42 = load float, float* %z, align 4, !dbg !85
  %43 = load float, float* %z, align 4, !dbg !86
  %44 = load float, float* %z, align 4, !dbg !87
  %45 = load float, float* %z, align 4, !dbg !88
  %46 = load float, float* %z, align 4, !dbg !89
  %47 = call float @llvm.fmuladd.f32(float %46, float 0x3F023DE100000000, float 0x3F49EFE080000000), !dbg !90
  %48 = call float @llvm.fmuladd.f32(float %45, float %47, float 0xBFA48228C0000000), !dbg !91
  %49 = call float @llvm.fmuladd.f32(float %44, float %48, float 0x3FC9C15500000000), !dbg !92
  %50 = call float @llvm.fmuladd.f32(float %43, float %49, float 0xBFD4D61200000000), !dbg !93
  %51 = call float @llvm.fmuladd.f32(float %42, float %50, float 0x3FC5555560000000), !dbg !94
  %mul36 = fmul float %41, %51, !dbg !95
  store float %mul36, float* %p, align 4, !dbg !96
  %52 = load float, float* %z, align 4, !dbg !97
  %53 = load float, float* %z, align 4, !dbg !98
  %54 = load float, float* %z, align 4, !dbg !99
  %55 = load float, float* %z, align 4, !dbg !100
  %56 = call float @llvm.fmuladd.f32(float %55, float 0x3FB3B8C5C0000000, float 0xBFE6066C20000000), !dbg !101
  %57 = call float @llvm.fmuladd.f32(float %54, float %56, float 0x40002AE5A0000000), !dbg !102
  %58 = call float @llvm.fmuladd.f32(float %53, float %57, float 0xC0033A2720000000), !dbg !103
  %59 = call float @llvm.fmuladd.f32(float %52, float %58, float 1.000000e+00), !dbg !104
  store float %59, float* %q, align 4, !dbg !105
  %60 = load float, float* %z, align 4, !dbg !106
  %call = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %60) #2, !dbg !107
  store float %call, float* %s, align 4, !dbg !108
  %61 = load float, float* %p, align 4, !dbg !109
  %62 = load float, float* %q, align 4, !dbg !110
  %div41 = fdiv float %61, %62, !dbg !111
  store float %div41, float* %r, align 4, !dbg !112
  %63 = load float, float* %r, align 4, !dbg !113
  %64 = load float, float* %s, align 4, !dbg !114
  %65 = call float @llvm.fmuladd.f32(float %63, float %64, float 0xBE74442D00000000), !dbg !115
  store float %65, float* %w, align 4, !dbg !116
  %66 = load float, float* %s, align 4, !dbg !117
  %67 = load float, float* %w, align 4, !dbg !118
  %add43 = fadd float %66, %67, !dbg !119
  %68 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %add43, float 0x400921FB40000000), !dbg !120
  store float %68, float* %retval, align 4, !dbg !121
  br label %return, !dbg !121

if.else45:                                        ; preds = %if.else27
  %69 = load float, float* %x.addr, align 4, !dbg !122
  %sub46 = fsub float 1.000000e+00, %69, !dbg !123
  %mul47 = fmul float %sub46, 5.000000e-01, !dbg !124
  store float %mul47, float* %z, align 4, !dbg !125
  %70 = load float, float* %z, align 4, !dbg !126
  %call48 = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %70) #2, !dbg !127
  store float %call48, float* %s, align 4, !dbg !128
  %71 = load float, float* %s, align 4, !dbg !129
  store float %71, float* %df, align 4, !dbg !130
  %72 = load float, float* %df, align 4, !dbg !131
  %value50 = bitcast %union.ieee_float_shape_type* %gf_u49 to float*, !dbg !131
  store float %72, float* %value50, align 4, !dbg !131
  %word51 = bitcast %union.ieee_float_shape_type* %gf_u49 to i32*, !dbg !131
  %73 = load i32, i32* %word51, align 4, !dbg !131
  store i32 %73, i32* %idf, align 4, !dbg !131
  %74 = load i32, i32* %idf, align 4, !dbg !132
  %and52 = and i32 %74, -4096, !dbg !132
  %word53 = bitcast %union.ieee_float_shape_type* %sf_u to i32*, !dbg !132
  store i32 %and52, i32* %word53, align 4, !dbg !132
  %value54 = bitcast %union.ieee_float_shape_type* %sf_u to float*, !dbg !132
  %75 = load float, float* %value54, align 4, !dbg !132
  store float %75, float* %df, align 4, !dbg !132
  %76 = load float, float* %z, align 4, !dbg !133
  %77 = load float, float* %df, align 4, !dbg !134
  %78 = load float, float* %df, align 4, !dbg !135
  %neg56 = fneg float %77, !dbg !136
  %79 = call float @llvm.fmuladd.f32(float %neg56, float %78, float %76), !dbg !136
  %80 = load float, float* %s, align 4, !dbg !137
  %81 = load float, float* %df, align 4, !dbg !138
  %add57 = fadd float %80, %81, !dbg !139
  %div58 = fdiv float %79, %add57, !dbg !140
  store float %div58, float* %c, align 4, !dbg !141
  %82 = load float, float* %z, align 4, !dbg !142
  %83 = load float, float* %z, align 4, !dbg !143
  %84 = load float, float* %z, align 4, !dbg !144
  %85 = load float, float* %z, align 4, !dbg !145
  %86 = load float, float* %z, align 4, !dbg !146
  %87 = load float, float* %z, align 4, !dbg !147
  %88 = call float @llvm.fmuladd.f32(float %87, float 0x3F023DE100000000, float 0x3F49EFE080000000), !dbg !148
  %89 = call float @llvm.fmuladd.f32(float %86, float %88, float 0xBFA48228C0000000), !dbg !149
  %90 = call float @llvm.fmuladd.f32(float %85, float %89, float 0x3FC9C15500000000), !dbg !150
  %91 = call float @llvm.fmuladd.f32(float %84, float %90, float 0xBFD4D61200000000), !dbg !151
  %92 = call float @llvm.fmuladd.f32(float %83, float %91, float 0x3FC5555560000000), !dbg !152
  %mul64 = fmul float %82, %92, !dbg !153
  store float %mul64, float* %p, align 4, !dbg !154
  %93 = load float, float* %z, align 4, !dbg !155
  %94 = load float, float* %z, align 4, !dbg !156
  %95 = load float, float* %z, align 4, !dbg !157
  %96 = load float, float* %z, align 4, !dbg !158
  %97 = call float @llvm.fmuladd.f32(float %96, float 0x3FB3B8C5C0000000, float 0xBFE6066C20000000), !dbg !159
  %98 = call float @llvm.fmuladd.f32(float %95, float %97, float 0x40002AE5A0000000), !dbg !160
  %99 = call float @llvm.fmuladd.f32(float %94, float %98, float 0xC0033A2720000000), !dbg !161
  %100 = call float @llvm.fmuladd.f32(float %93, float %99, float 1.000000e+00), !dbg !162
  store float %100, float* %q, align 4, !dbg !163
  %101 = load float, float* %p, align 4, !dbg !164
  %102 = load float, float* %q, align 4, !dbg !165
  %div69 = fdiv float %101, %102, !dbg !166
  store float %div69, float* %r, align 4, !dbg !167
  %103 = load float, float* %r, align 4, !dbg !168
  %104 = load float, float* %s, align 4, !dbg !169
  %105 = load float, float* %c, align 4, !dbg !170
  %106 = call float @llvm.fmuladd.f32(float %103, float %104, float %105), !dbg !171
  store float %106, float* %w, align 4, !dbg !172
  %107 = load float, float* %df, align 4, !dbg !173
  %108 = load float, float* %w, align 4, !dbg !174
  %add71 = fadd float %107, %108, !dbg !175
  %mul72 = fmul float 2.000000e+00, %add71, !dbg !176
  store float %mul72, float* %retval, align 4, !dbg !177
  br label %return, !dbg !177

return:                                           ; preds = %if.else45, %if.then29, %if.end12, %if.then11, %if.then5, %if.else, %if.then2
  %109 = load float, float* %retval, align 4, !dbg !178
  ret float %109, !dbg !178
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %x) #0 !dbg !179 {
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
  store i32 -2147483648, i32* %sign, align 4, !dbg !180
  %0 = load float, float* %x.addr, align 4, !dbg !181
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !181
  store float %0, float* %value, align 4, !dbg !181
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !181
  %1 = load i32, i32* %word, align 4, !dbg !181
  store i32 %1, i32* %ix, align 4, !dbg !181
  %2 = load i32, i32* %ix, align 4, !dbg !182
  %and = and i32 %2, 2139095040, !dbg !183
  %cmp = icmp eq i32 %and, 2139095040, !dbg !184
  br i1 %cmp, label %if.then, label %if.end, !dbg !185

if.then:                                          ; preds = %entry
  %3 = load float, float* %x.addr, align 4, !dbg !186
  %4 = load float, float* %x.addr, align 4, !dbg !187
  %5 = load float, float* %x.addr, align 4, !dbg !188
  %6 = call float @llvm.fmuladd.f32(float %3, float %4, float %5), !dbg !189
  store float %6, float* %retval, align 4, !dbg !190
  br label %return, !dbg !190

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %ix, align 4, !dbg !191
  %cmp1 = icmp sle i32 %7, 0, !dbg !192
  br i1 %cmp1, label %if.then2, label %if.end11, !dbg !191

if.then2:                                         ; preds = %if.end
  %8 = load i32, i32* %ix, align 4, !dbg !193
  %9 = load i32, i32* %sign, align 4, !dbg !194
  %neg = xor i32 %9, -1, !dbg !195
  %and3 = and i32 %8, %neg, !dbg !196
  %cmp4 = icmp eq i32 %and3, 0, !dbg !197
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !198

if.then5:                                         ; preds = %if.then2
  %10 = load float, float* %x.addr, align 4, !dbg !199
  store float %10, float* %retval, align 4, !dbg !200
  br label %return, !dbg !200

if.else:                                          ; preds = %if.then2
  %11 = load i32, i32* %ix, align 4, !dbg !201
  %cmp6 = icmp slt i32 %11, 0, !dbg !202
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !201

if.then7:                                         ; preds = %if.else
  %12 = load float, float* %x.addr, align 4, !dbg !203
  %13 = load float, float* %x.addr, align 4, !dbg !204
  %sub = fsub float %12, %13, !dbg !205
  %14 = load float, float* %x.addr, align 4, !dbg !206
  %15 = load float, float* %x.addr, align 4, !dbg !207
  %sub8 = fsub float %14, %15, !dbg !208
  %div = fdiv float %sub, %sub8, !dbg !209
  store float %div, float* %retval, align 4, !dbg !210
  br label %return, !dbg !210

if.end9:                                          ; preds = %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9
  br label %if.end11, !dbg !211

if.end11:                                         ; preds = %if.end10, %if.end
  %16 = load i32, i32* %ix, align 4, !dbg !212
  %shr = ashr i32 %16, 23, !dbg !213
  store i32 %shr, i32* %m, align 4, !dbg !214
  %17 = load i32, i32* %m, align 4, !dbg !215
  %cmp12 = icmp eq i32 %17, 0, !dbg !216
  br i1 %cmp12, label %if.then13, label %if.end18, !dbg !215

if.then13:                                        ; preds = %if.end11
  store i32 0, i32* %i, align 4, !dbg !217
  br label %for.cond, !dbg !218

for.cond:                                         ; preds = %for.inc, %if.then13
  %18 = load i32, i32* %ix, align 4, !dbg !219
  %and14 = and i32 %18, 8388608, !dbg !220
  %cmp15 = icmp eq i32 %and14, 0, !dbg !221
  br i1 %cmp15, label %for.body, label %for.end, !dbg !222

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %ix, align 4, !dbg !223
  %shl = shl i32 %19, 1, !dbg !223
  store i32 %shl, i32* %ix, align 4, !dbg !223
  br label %for.inc, !dbg !224

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !dbg !225
  %inc = add nsw i32 %20, 1, !dbg !225
  store i32 %inc, i32* %i, align 4, !dbg !225
  br label %for.cond, !dbg !222, !llvm.loop !226

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !dbg !229
  %sub16 = sub nsw i32 %21, 1, !dbg !230
  %22 = load i32, i32* %m, align 4, !dbg !231
  %sub17 = sub nsw i32 %22, %sub16, !dbg !231
  store i32 %sub17, i32* %m, align 4, !dbg !231
  br label %if.end18, !dbg !232

if.end18:                                         ; preds = %for.end, %if.end11
  %23 = load i32, i32* %m, align 4, !dbg !233
  %sub19 = sub nsw i32 %23, 127, !dbg !233
  store i32 %sub19, i32* %m, align 4, !dbg !233
  %24 = load i32, i32* %ix, align 4, !dbg !234
  %and20 = and i32 %24, 8388607, !dbg !235
  %or = or i32 %and20, 8388608, !dbg !236
  store i32 %or, i32* %ix, align 4, !dbg !237
  %25 = load i32, i32* %m, align 4, !dbg !238
  %and21 = and i32 %25, 1, !dbg !239
  %tobool = icmp ne i32 %and21, 0, !dbg !239
  br i1 %tobool, label %if.then22, label %if.end23, !dbg !238

if.then22:                                        ; preds = %if.end18
  %26 = load i32, i32* %ix, align 4, !dbg !240
  %27 = load i32, i32* %ix, align 4, !dbg !241
  %add = add nsw i32 %27, %26, !dbg !241
  store i32 %add, i32* %ix, align 4, !dbg !241
  br label %if.end23, !dbg !242

if.end23:                                         ; preds = %if.then22, %if.end18
  %28 = load i32, i32* %m, align 4, !dbg !243
  %shr24 = ashr i32 %28, 1, !dbg !243
  store i32 %shr24, i32* %m, align 4, !dbg !243
  %29 = load i32, i32* %ix, align 4, !dbg !244
  %30 = load i32, i32* %ix, align 4, !dbg !245
  %add25 = add nsw i32 %30, %29, !dbg !245
  store i32 %add25, i32* %ix, align 4, !dbg !245
  store i32 0, i32* %s, align 4, !dbg !246
  store i32 0, i32* %q, align 4, !dbg !247
  store i32 16777216, i32* %r, align 4, !dbg !248
  br label %while.cond, !dbg !249

while.cond:                                       ; preds = %while.body, %if.end23
  %31 = load i32, i32* %r, align 4, !dbg !250
  %cmp26 = icmp ne i32 %31, 0, !dbg !251
  br i1 %cmp26, label %while.body, label %while.end, !dbg !249

while.body:                                       ; preds = %while.cond
  %32 = load i32, i32* %s, align 4, !dbg !252
  %33 = load i32, i32* %r, align 4, !dbg !253
  %add27 = add i32 %32, %33, !dbg !254
  store i32 %add27, i32* %t, align 4, !dbg !255
  %34 = load i32, i32* %t, align 4, !dbg !256
  %35 = load i32, i32* %r, align 4, !dbg !257
  %add28 = add i32 %34, %35, !dbg !258
  store i32 %add28, i32* %s, align 4, !dbg !259
  %36 = load i32, i32* %t, align 4, !dbg !260
  %37 = load i32, i32* %ix, align 4, !dbg !261
  %sub29 = sub nsw i32 %37, %36, !dbg !261
  store i32 %sub29, i32* %ix, align 4, !dbg !261
  %38 = load i32, i32* %r, align 4, !dbg !262
  %39 = load i32, i32* %q, align 4, !dbg !263
  %add30 = add i32 %39, %38, !dbg !263
  store i32 %add30, i32* %q, align 4, !dbg !263
  %40 = load i32, i32* %ix, align 4, !dbg !264
  %41 = load i32, i32* %ix, align 4, !dbg !265
  %add31 = add nsw i32 %41, %40, !dbg !265
  store i32 %add31, i32* %ix, align 4, !dbg !265
  %42 = load i32, i32* %r, align 4, !dbg !266
  %shr32 = lshr i32 %42, 1, !dbg !266
  store i32 %shr32, i32* %r, align 4, !dbg !266
  br label %while.cond, !dbg !249, !llvm.loop !267

while.end:                                        ; preds = %while.cond
  %43 = load i32, i32* %ix, align 4, !dbg !269
  %cmp33 = icmp ne i32 %43, 0, !dbg !270
  br i1 %cmp33, label %if.then34, label %if.end45, !dbg !269

if.then34:                                        ; preds = %while.end
  store float 1.000000e+00, float* %z, align 4, !dbg !271
  %44 = load float, float* %z, align 4, !dbg !272
  %cmp35 = fcmp oge float %44, 1.000000e+00, !dbg !273
  br i1 %cmp35, label %if.then36, label %if.end44, !dbg !272

if.then36:                                        ; preds = %if.then34
  store float 1.000000e+00, float* %z, align 4, !dbg !274
  %45 = load float, float* %z, align 4, !dbg !275
  %cmp37 = fcmp ogt float %45, 1.000000e+00, !dbg !276
  br i1 %cmp37, label %if.then38, label %if.else40, !dbg !275

if.then38:                                        ; preds = %if.then36
  %46 = load i32, i32* %q, align 4, !dbg !277
  %add39 = add nsw i32 %46, 2, !dbg !277
  store i32 %add39, i32* %q, align 4, !dbg !277
  br label %if.end43, !dbg !278

if.else40:                                        ; preds = %if.then36
  %47 = load i32, i32* %q, align 4, !dbg !279
  %and41 = and i32 %47, 1, !dbg !280
  %48 = load i32, i32* %q, align 4, !dbg !281
  %add42 = add nsw i32 %48, %and41, !dbg !281
  store i32 %add42, i32* %q, align 4, !dbg !281
  br label %if.end43

if.end43:                                         ; preds = %if.else40, %if.then38
  br label %if.end44, !dbg !282

if.end44:                                         ; preds = %if.end43, %if.then34
  br label %if.end45, !dbg !283

if.end45:                                         ; preds = %if.end44, %while.end
  %49 = load i32, i32* %q, align 4, !dbg !284
  %shr46 = ashr i32 %49, 1, !dbg !285
  %add47 = add nsw i32 %shr46, 1056964608, !dbg !286
  store i32 %add47, i32* %ix, align 4, !dbg !287
  %50 = load i32, i32* %m, align 4, !dbg !288
  %shl48 = shl i32 %50, 23, !dbg !289
  %51 = load i32, i32* %ix, align 4, !dbg !290
  %add49 = add nsw i32 %51, %shl48, !dbg !290
  store i32 %add49, i32* %ix, align 4, !dbg !290
  %52 = load i32, i32* %ix, align 4, !dbg !291
  %word50 = bitcast %union.ieee_float_shape_type* %sf_u to i32*, !dbg !291
  store i32 %52, i32* %word50, align 4, !dbg !291
  %value51 = bitcast %union.ieee_float_shape_type* %sf_u to float*, !dbg !291
  %53 = load float, float* %value51, align 4, !dbg !291
  store float %53, float* %z, align 4, !dbg !291
  %54 = load float, float* %z, align 4, !dbg !292
  store float %54, float* %retval, align 4, !dbg !293
  br label %return, !dbg !293

return:                                           ; preds = %if.end45, %if.then7, %if.then5, %if.then
  %55 = load float, float* %retval, align 4, !dbg !294
  ret float %55, !dbg !294
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___ieee754_powf(float noundef %x, float noundef %y) #0 !dbg !295 {
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
  store float %y, float* %y.addr, align 4
  %0 = load float, float* %x.addr, align 4, !dbg !296
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !296
  store float %0, float* %value, align 4, !dbg !296
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !296
  %1 = load i32, i32* %word, align 4, !dbg !296
  store i32 %1, i32* %hx, align 4, !dbg !296
  %2 = load float, float* %y.addr, align 4, !dbg !297
  %value2 = bitcast %union.ieee_float_shape_type* %gf_u1 to float*, !dbg !297
  store float %2, float* %value2, align 4, !dbg !297
  %word3 = bitcast %union.ieee_float_shape_type* %gf_u1 to i32*, !dbg !297
  %3 = load i32, i32* %word3, align 4, !dbg !297
  store i32 %3, i32* %hy, align 4, !dbg !297
  %4 = load i32, i32* %hx, align 4, !dbg !298
  %and = and i32 %4, 2147483647, !dbg !299
  store i32 %and, i32* %ix, align 4, !dbg !300
  %5 = load i32, i32* %hy, align 4, !dbg !301
  %and4 = and i32 %5, 2147483647, !dbg !302
  store i32 %and4, i32* %iy, align 4, !dbg !303
  %6 = load i32, i32* %iy, align 4, !dbg !304
  %cmp = icmp eq i32 %6, 0, !dbg !305
  br i1 %cmp, label %if.then, label %if.end, !dbg !304

if.then:                                          ; preds = %entry
  store float 1.000000e+00, float* %retval, align 4, !dbg !306
  br label %return, !dbg !306

if.end:                                           ; preds = %entry
  %7 = load float, float* %x.addr, align 4, !dbg !307
  %cmp5 = fcmp oeq float %7, 1.000000e+00, !dbg !308
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !307

if.then6:                                         ; preds = %if.end
  store float 1.000000e+00, float* %retval, align 4, !dbg !309
  br label %return, !dbg !309

if.end7:                                          ; preds = %if.end
  %8 = load float, float* %x.addr, align 4, !dbg !310
  %cmp8 = fcmp oeq float %8, -1.000000e+00, !dbg !311
  br i1 %cmp8, label %land.lhs.true, label %if.end10, !dbg !312

land.lhs.true:                                    ; preds = %if.end7
  %9 = load float, float* %y.addr, align 4, !dbg !313
  %call = call arm_aapcs_vfpcc i32 @basicmath___isinff(float noundef %9) #2, !dbg !314
  %tobool = icmp ne i32 %call, 0, !dbg !314
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !310

if.then9:                                         ; preds = %land.lhs.true
  store float 1.000000e+00, float* %retval, align 4, !dbg !315
  br label %return, !dbg !315

if.end10:                                         ; preds = %land.lhs.true, %if.end7
  %10 = load i32, i32* %ix, align 4, !dbg !316
  %cmp11 = icmp sgt i32 %10, 2139095040, !dbg !317
  br i1 %cmp11, label %if.then13, label %lor.lhs.false, !dbg !318

lor.lhs.false:                                    ; preds = %if.end10
  %11 = load i32, i32* %iy, align 4, !dbg !319
  %cmp12 = icmp sgt i32 %11, 2139095040, !dbg !320
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !316

if.then13:                                        ; preds = %lor.lhs.false, %if.end10
  %12 = load float, float* %x.addr, align 4, !dbg !321
  %13 = load float, float* %y.addr, align 4, !dbg !322
  %add = fadd float %12, %13, !dbg !323
  store float %add, float* %retval, align 4, !dbg !324
  br label %return, !dbg !324

if.end14:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %yisint, align 4, !dbg !325
  %14 = load i32, i32* %hx, align 4, !dbg !326
  %cmp15 = icmp slt i32 %14, 0, !dbg !327
  br i1 %cmp15, label %if.then16, label %if.end31, !dbg !326

if.then16:                                        ; preds = %if.end14
  %15 = load i32, i32* %iy, align 4, !dbg !328
  %cmp17 = icmp sge i32 %15, 1266679808, !dbg !329
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !328

if.then18:                                        ; preds = %if.then16
  store i32 2, i32* %yisint, align 4, !dbg !330
  br label %if.end30, !dbg !331

if.else:                                          ; preds = %if.then16
  %16 = load i32, i32* %iy, align 4, !dbg !332
  %cmp19 = icmp sge i32 %16, 1065353216, !dbg !333
  br i1 %cmp19, label %if.then20, label %if.end29, !dbg !332

if.then20:                                        ; preds = %if.else
  %17 = load i32, i32* %iy, align 4, !dbg !334
  %shr = ashr i32 %17, 23, !dbg !335
  %sub = sub nsw i32 %shr, 127, !dbg !336
  store i32 %sub, i32* %k, align 4, !dbg !337
  %18 = load i32, i32* %iy, align 4, !dbg !338
  %19 = load i32, i32* %k, align 4, !dbg !339
  %sub21 = sub nsw i32 23, %19, !dbg !340
  %shr22 = ashr i32 %18, %sub21, !dbg !341
  store i32 %shr22, i32* %j, align 4, !dbg !342
  %20 = load i32, i32* %j, align 4, !dbg !343
  %21 = load i32, i32* %k, align 4, !dbg !344
  %sub23 = sub nsw i32 23, %21, !dbg !345
  %shl = shl i32 %20, %sub23, !dbg !346
  %22 = load i32, i32* %iy, align 4, !dbg !347
  %cmp24 = icmp eq i32 %shl, %22, !dbg !348
  br i1 %cmp24, label %if.then25, label %if.end28, !dbg !349

if.then25:                                        ; preds = %if.then20
  %23 = load i32, i32* %j, align 4, !dbg !350
  %and26 = and i32 %23, 1, !dbg !351
  %sub27 = sub nsw i32 2, %and26, !dbg !352
  store i32 %sub27, i32* %yisint, align 4, !dbg !353
  br label %if.end28, !dbg !354

if.end28:                                         ; preds = %if.then25, %if.then20
  br label %if.end29, !dbg !355

if.end29:                                         ; preds = %if.end28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then18
  br label %if.end31, !dbg !356

if.end31:                                         ; preds = %if.end30, %if.end14
  %24 = load i32, i32* %iy, align 4, !dbg !357
  %cmp32 = icmp eq i32 %24, 2139095040, !dbg !358
  br i1 %cmp32, label %if.then33, label %if.end47, !dbg !357

if.then33:                                        ; preds = %if.end31
  %25 = load i32, i32* %ix, align 4, !dbg !359
  %cmp34 = icmp eq i32 %25, 1065353216, !dbg !360
  br i1 %cmp34, label %if.then35, label %if.else37, !dbg !359

if.then35:                                        ; preds = %if.then33
  %26 = load float, float* %y.addr, align 4, !dbg !361
  %27 = load float, float* %y.addr, align 4, !dbg !362
  %sub36 = fsub float %26, %27, !dbg !363
  store float %sub36, float* %retval, align 4, !dbg !364
  br label %return, !dbg !364

if.else37:                                        ; preds = %if.then33
  %28 = load i32, i32* %ix, align 4, !dbg !365
  %cmp38 = icmp sgt i32 %28, 1065353216, !dbg !366
  br i1 %cmp38, label %if.then39, label %if.else41, !dbg !365

if.then39:                                        ; preds = %if.else37
  %29 = load i32, i32* %hy, align 4, !dbg !367
  %cmp40 = icmp sge i32 %29, 0, !dbg !368
  br i1 %cmp40, label %cond.true, label %cond.false, !dbg !369

cond.true:                                        ; preds = %if.then39
  %30 = load float, float* %y.addr, align 4, !dbg !370
  br label %cond.end, !dbg !369

cond.false:                                       ; preds = %if.then39
  br label %cond.end, !dbg !369

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %30, %cond.true ], [ 0.000000e+00, %cond.false ], !dbg !369
  store float %cond, float* %retval, align 4, !dbg !371
  br label %return, !dbg !371

if.else41:                                        ; preds = %if.else37
  %31 = load i32, i32* %hy, align 4, !dbg !372
  %cmp42 = icmp slt i32 %31, 0, !dbg !373
  br i1 %cmp42, label %cond.true43, label %cond.false44, !dbg !374

cond.true43:                                      ; preds = %if.else41
  %32 = load float, float* %y.addr, align 4, !dbg !375
  %fneg = fneg float %32, !dbg !376
  br label %cond.end45, !dbg !374

cond.false44:                                     ; preds = %if.else41
  br label %cond.end45, !dbg !374

cond.end45:                                       ; preds = %cond.false44, %cond.true43
  %cond46 = phi float [ %fneg, %cond.true43 ], [ 0.000000e+00, %cond.false44 ], !dbg !374
  store float %cond46, float* %retval, align 4, !dbg !377
  br label %return, !dbg !377

if.end47:                                         ; preds = %if.end31
  %33 = load i32, i32* %iy, align 4, !dbg !378
  %cmp48 = icmp eq i32 %33, 1065353216, !dbg !379
  br i1 %cmp48, label %if.then49, label %if.end53, !dbg !378

if.then49:                                        ; preds = %if.end47
  %34 = load i32, i32* %hy, align 4, !dbg !380
  %cmp50 = icmp slt i32 %34, 0, !dbg !381
  br i1 %cmp50, label %if.then51, label %if.else52, !dbg !380

if.then51:                                        ; preds = %if.then49
  %35 = load float, float* %x.addr, align 4, !dbg !382
  %div = fdiv float 1.000000e+00, %35, !dbg !383
  store float %div, float* %retval, align 4, !dbg !384
  br label %return, !dbg !384

if.else52:                                        ; preds = %if.then49
  %36 = load float, float* %x.addr, align 4, !dbg !385
  store float %36, float* %retval, align 4, !dbg !386
  br label %return, !dbg !386

if.end53:                                         ; preds = %if.end47
  %37 = load i32, i32* %hy, align 4, !dbg !387
  %cmp54 = icmp eq i32 %37, 1073741824, !dbg !388
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !387

if.then55:                                        ; preds = %if.end53
  %38 = load float, float* %x.addr, align 4, !dbg !389
  %39 = load float, float* %x.addr, align 4, !dbg !390
  %mul = fmul float %38, %39, !dbg !391
  store float %mul, float* %retval, align 4, !dbg !392
  br label %return, !dbg !392

if.end56:                                         ; preds = %if.end53
  %40 = load i32, i32* %hy, align 4, !dbg !393
  %cmp57 = icmp eq i32 %40, 1056964608, !dbg !394
  br i1 %cmp57, label %if.then58, label %if.end63, !dbg !393

if.then58:                                        ; preds = %if.end56
  %41 = load i32, i32* %hx, align 4, !dbg !395
  %cmp59 = icmp sge i32 %41, 0, !dbg !396
  br i1 %cmp59, label %if.then60, label %if.end62, !dbg !395

if.then60:                                        ; preds = %if.then58
  %42 = load float, float* %x.addr, align 4, !dbg !397
  %call61 = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %42) #2, !dbg !398
  store float %call61, float* %retval, align 4, !dbg !399
  br label %return, !dbg !399

if.end62:                                         ; preds = %if.then58
  br label %if.end63, !dbg !400

if.end63:                                         ; preds = %if.end62, %if.end56
  %43 = load float, float* %x.addr, align 4, !dbg !401
  %call64 = call arm_aapcs_vfpcc float @basicmath___fabsf(float noundef %43) #2, !dbg !402
  store float %call64, float* %ax, align 4, !dbg !403
  %44 = load i32, i32* %ix, align 4, !dbg !404
  %cmp65 = icmp eq i32 %44, 2139095040, !dbg !405
  br i1 %cmp65, label %if.then70, label %lor.lhs.false66, !dbg !406

lor.lhs.false66:                                  ; preds = %if.end63
  %45 = load i32, i32* %ix, align 4, !dbg !407
  %cmp67 = icmp eq i32 %45, 0, !dbg !408
  br i1 %cmp67, label %if.then70, label %lor.lhs.false68, !dbg !409

lor.lhs.false68:                                  ; preds = %lor.lhs.false66
  %46 = load i32, i32* %ix, align 4, !dbg !410
  %cmp69 = icmp eq i32 %46, 1065353216, !dbg !411
  br i1 %cmp69, label %if.then70, label %if.end90, !dbg !404

if.then70:                                        ; preds = %lor.lhs.false68, %lor.lhs.false66, %if.end63
  %47 = load float, float* %ax, align 4, !dbg !412
  store float %47, float* %z, align 4, !dbg !413
  %48 = load i32, i32* %hy, align 4, !dbg !414
  %cmp71 = icmp slt i32 %48, 0, !dbg !415
  br i1 %cmp71, label %if.then72, label %if.end74, !dbg !414

if.then72:                                        ; preds = %if.then70
  %49 = load float, float* %z, align 4, !dbg !416
  %div73 = fdiv float 1.000000e+00, %49, !dbg !417
  store float %div73, float* %z, align 4, !dbg !418
  br label %if.end74, !dbg !419

if.end74:                                         ; preds = %if.then72, %if.then70
  %50 = load i32, i32* %hx, align 4, !dbg !420
  %cmp75 = icmp slt i32 %50, 0, !dbg !421
  br i1 %cmp75, label %if.then76, label %if.end89, !dbg !420

if.then76:                                        ; preds = %if.end74
  %51 = load i32, i32* %ix, align 4, !dbg !422
  %sub77 = sub nsw i32 %51, 1065353216, !dbg !423
  %52 = load i32, i32* %yisint, align 4, !dbg !424
  %or = or i32 %sub77, %52, !dbg !425
  %cmp78 = icmp eq i32 %or, 0, !dbg !426
  br i1 %cmp78, label %if.then79, label %if.else83, !dbg !427

if.then79:                                        ; preds = %if.then76
  %53 = load float, float* %z, align 4, !dbg !428
  %54 = load float, float* %z, align 4, !dbg !429
  %sub80 = fsub float %53, %54, !dbg !430
  %55 = load float, float* %z, align 4, !dbg !431
  %56 = load float, float* %z, align 4, !dbg !432
  %sub81 = fsub float %55, %56, !dbg !433
  %div82 = fdiv float %sub80, %sub81, !dbg !434
  store float %div82, float* %z, align 4, !dbg !435
  br label %if.end88, !dbg !436

if.else83:                                        ; preds = %if.then76
  %57 = load i32, i32* %yisint, align 4, !dbg !437
  %cmp84 = icmp eq i32 %57, 1, !dbg !438
  br i1 %cmp84, label %if.then85, label %if.end87, !dbg !437

if.then85:                                        ; preds = %if.else83
  %58 = load float, float* %z, align 4, !dbg !439
  %fneg86 = fneg float %58, !dbg !440
  store float %fneg86, float* %z, align 4, !dbg !441
  br label %if.end87, !dbg !442

if.end87:                                         ; preds = %if.then85, %if.else83
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then79
  br label %if.end89, !dbg !443

if.end89:                                         ; preds = %if.end88, %if.end74
  %59 = load float, float* %z, align 4, !dbg !444
  store float %59, float* %retval, align 4, !dbg !445
  br label %return, !dbg !445

if.end90:                                         ; preds = %lor.lhs.false68
  %60 = load i32, i32* %hx, align 4, !dbg !446
  %shr91 = lshr i32 %60, 31, !dbg !447
  %sub92 = sub i32 %shr91, 1, !dbg !448
  %61 = load i32, i32* %yisint, align 4, !dbg !449
  %or93 = or i32 %sub92, %61, !dbg !450
  %cmp94 = icmp eq i32 %or93, 0, !dbg !451
  br i1 %cmp94, label %if.then95, label %if.end99, !dbg !452

if.then95:                                        ; preds = %if.end90
  %62 = load float, float* %x.addr, align 4, !dbg !453
  %63 = load float, float* %x.addr, align 4, !dbg !454
  %sub96 = fsub float %62, %63, !dbg !455
  %64 = load float, float* %x.addr, align 4, !dbg !456
  %65 = load float, float* %x.addr, align 4, !dbg !457
  %sub97 = fsub float %64, %65, !dbg !458
  %div98 = fdiv float %sub96, %sub97, !dbg !459
  store float %div98, float* %retval, align 4, !dbg !460
  br label %return, !dbg !460

if.end99:                                         ; preds = %if.end90
  %66 = load i32, i32* %iy, align 4, !dbg !461
  %cmp100 = icmp sgt i32 %66, 1291845632, !dbg !462
  br i1 %cmp100, label %if.then101, label %if.else131, !dbg !461

if.then101:                                       ; preds = %if.end99
  %67 = load i32, i32* %ix, align 4, !dbg !463
  %cmp102 = icmp slt i32 %67, 1065353208, !dbg !464
  br i1 %cmp102, label %if.then103, label %if.end106, !dbg !463

if.then103:                                       ; preds = %if.then101
  %68 = load i32, i32* %hy, align 4, !dbg !465
  %cmp104 = icmp slt i32 %68, 0, !dbg !466
  %69 = zext i1 %cmp104 to i64, !dbg !467
  %cond105 = select i1 %cmp104, float 0x7FF0000000000000, float 0.000000e+00, !dbg !467
  store float %cond105, float* %retval, align 4, !dbg !468
  br label %return, !dbg !468

if.end106:                                        ; preds = %if.then101
  %70 = load i32, i32* %ix, align 4, !dbg !469
  %cmp107 = icmp sgt i32 %70, 1065353223, !dbg !470
  br i1 %cmp107, label %if.then108, label %if.end111, !dbg !469

if.then108:                                       ; preds = %if.end106
  %71 = load i32, i32* %hy, align 4, !dbg !471
  %cmp109 = icmp sgt i32 %71, 0, !dbg !472
  %72 = zext i1 %cmp109 to i64, !dbg !473
  %cond110 = select i1 %cmp109, float 0x7FF0000000000000, float 0.000000e+00, !dbg !473
  store float %cond110, float* %retval, align 4, !dbg !474
  br label %return, !dbg !474

if.end111:                                        ; preds = %if.end106
  %73 = load float, float* %x.addr, align 4, !dbg !475
  %sub112 = fsub float %73, 1.000000e+00, !dbg !476
  store float %sub112, float* %t, align 4, !dbg !477
  %74 = load float, float* %t, align 4, !dbg !478
  %75 = load float, float* %t, align 4, !dbg !479
  %mul113 = fmul float %74, %75, !dbg !480
  %76 = load float, float* %t, align 4, !dbg !481
  %77 = load float, float* %t, align 4, !dbg !482
  %neg = fneg float %77, !dbg !483
  %78 = call float @llvm.fmuladd.f32(float %neg, float 2.500000e-01, float 0x3FD5555560000000), !dbg !483
  %neg116 = fneg float %76, !dbg !484
  %79 = call float @llvm.fmuladd.f32(float %neg116, float %78, float 5.000000e-01), !dbg !484
  %mul117 = fmul float %mul113, %79, !dbg !485
  store float %mul117, float* %w, align 4, !dbg !486
  %80 = load float, float* %t, align 4, !dbg !487
  %mul118 = fmul float 0x3FF7154000000000, %80, !dbg !488
  store float %mul118, float* %u, align 4, !dbg !489
  %81 = load float, float* %t, align 4, !dbg !490
  %82 = load float, float* %w, align 4, !dbg !491
  %mul120 = fmul float %82, 0x3FF7154760000000, !dbg !492
  %neg121 = fneg float %mul120, !dbg !493
  %83 = call float @llvm.fmuladd.f32(float %81, float 0x3EDD94AE00000000, float %neg121), !dbg !493
  store float %83, float* %v, align 4, !dbg !494
  %84 = load float, float* %u, align 4, !dbg !495
  %85 = load float, float* %v, align 4, !dbg !496
  %add122 = fadd float %84, %85, !dbg !497
  store float %add122, float* %t1, align 4, !dbg !498
  %86 = load float, float* %t1, align 4, !dbg !499
  %value124 = bitcast %union.ieee_float_shape_type* %gf_u123 to float*, !dbg !499
  store float %86, float* %value124, align 4, !dbg !499
  %word125 = bitcast %union.ieee_float_shape_type* %gf_u123 to i32*, !dbg !499
  %87 = load i32, i32* %word125, align 4, !dbg !499
  store i32 %87, i32* %is, align 4, !dbg !499
  %88 = load i32, i32* %is, align 4, !dbg !500
  %and126 = and i32 %88, -4096, !dbg !500
  %word127 = bitcast %union.ieee_float_shape_type* %sf_u to i32*, !dbg !500
  store i32 %and126, i32* %word127, align 4, !dbg !500
  %value128 = bitcast %union.ieee_float_shape_type* %sf_u to float*, !dbg !500
  %89 = load float, float* %value128, align 4, !dbg !500
  store float %89, float* %t1, align 4, !dbg !500
  %90 = load float, float* %v, align 4, !dbg !501
  %91 = load float, float* %t1, align 4, !dbg !502
  %92 = load float, float* %u, align 4, !dbg !503
  %sub129 = fsub float %91, %92, !dbg !504
  %sub130 = fsub float %90, %sub129, !dbg !505
  store float %sub130, float* %t2, align 4, !dbg !506
  br label %if.end243, !dbg !507

if.else131:                                       ; preds = %if.end99
  store i32 0, i32* %n, align 4, !dbg !508
  %93 = load i32, i32* %ix, align 4, !dbg !509
  %cmp132 = icmp slt i32 %93, 8388608, !dbg !510
  br i1 %cmp132, label %if.then133, label %if.end139, !dbg !509

if.then133:                                       ; preds = %if.else131
  %94 = load float, float* %ax, align 4, !dbg !511
  %mul134 = fmul float %94, 0x4170000000000000, !dbg !511
  store float %mul134, float* %ax, align 4, !dbg !511
  %95 = load i32, i32* %n, align 4, !dbg !512
  %sub135 = sub nsw i32 %95, 24, !dbg !512
  store i32 %sub135, i32* %n, align 4, !dbg !512
  %96 = load float, float* %ax, align 4, !dbg !513
  %value137 = bitcast %union.ieee_float_shape_type* %gf_u136 to float*, !dbg !513
  store float %96, float* %value137, align 4, !dbg !513
  %word138 = bitcast %union.ieee_float_shape_type* %gf_u136 to i32*, !dbg !513
  %97 = load i32, i32* %word138, align 4, !dbg !513
  store i32 %97, i32* %ix, align 4, !dbg !513
  br label %if.end139, !dbg !514

if.end139:                                        ; preds = %if.then133, %if.else131
  %98 = load i32, i32* %ix, align 4, !dbg !515
  %shr140 = ashr i32 %98, 23, !dbg !516
  %sub141 = sub nsw i32 %shr140, 127, !dbg !517
  %99 = load i32, i32* %n, align 4, !dbg !518
  %add142 = add nsw i32 %99, %sub141, !dbg !518
  store i32 %add142, i32* %n, align 4, !dbg !518
  %100 = load i32, i32* %ix, align 4, !dbg !519
  %and143 = and i32 %100, 8388607, !dbg !520
  store i32 %and143, i32* %j, align 4, !dbg !521
  %101 = load i32, i32* %j, align 4, !dbg !522
  %or144 = or i32 %101, 1065353216, !dbg !523
  store i32 %or144, i32* %ix, align 4, !dbg !524
  %102 = load i32, i32* %j, align 4, !dbg !525
  %cmp145 = icmp sle i32 %102, 1885297, !dbg !526
  br i1 %cmp145, label %if.then146, label %if.else147, !dbg !525

if.then146:                                       ; preds = %if.end139
  store i32 0, i32* %k, align 4, !dbg !527
  br label %if.end154, !dbg !528

if.else147:                                       ; preds = %if.end139
  %103 = load i32, i32* %j, align 4, !dbg !529
  %cmp148 = icmp slt i32 %103, 6140887, !dbg !530
  br i1 %cmp148, label %if.then149, label %if.else150, !dbg !529

if.then149:                                       ; preds = %if.else147
  store i32 1, i32* %k, align 4, !dbg !531
  br label %if.end153, !dbg !532

if.else150:                                       ; preds = %if.else147
  store i32 0, i32* %k, align 4, !dbg !533
  %104 = load i32, i32* %n, align 4, !dbg !534
  %add151 = add nsw i32 %104, 1, !dbg !534
  store i32 %add151, i32* %n, align 4, !dbg !534
  %105 = load i32, i32* %ix, align 4, !dbg !535
  %sub152 = sub nsw i32 %105, 8388608, !dbg !535
  store i32 %sub152, i32* %ix, align 4, !dbg !535
  br label %if.end153

if.end153:                                        ; preds = %if.else150, %if.then149
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.then146
  %106 = load i32, i32* %ix, align 4, !dbg !536
  %word156 = bitcast %union.ieee_float_shape_type* %sf_u155 to i32*, !dbg !536
  store i32 %106, i32* %word156, align 4, !dbg !536
  %value157 = bitcast %union.ieee_float_shape_type* %sf_u155 to float*, !dbg !536
  %107 = load float, float* %value157, align 4, !dbg !536
  store float %107, float* %ax, align 4, !dbg !536
  %108 = load float, float* %ax, align 4, !dbg !537
  %109 = load i32, i32* %k, align 4, !dbg !538
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* @basicmath_bp, i32 0, i32 %109, !dbg !539
  %110 = load float, float* %arrayidx, align 4, !dbg !539
  %sub158 = fsub float %108, %110, !dbg !540
  store float %sub158, float* %u, align 4, !dbg !541
  %111 = load float, float* %ax, align 4, !dbg !542
  %112 = load i32, i32* %k, align 4, !dbg !543
  %arrayidx159 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_bp, i32 0, i32 %112, !dbg !544
  %113 = load float, float* %arrayidx159, align 4, !dbg !544
  %add160 = fadd float %111, %113, !dbg !545
  %div161 = fdiv float 1.000000e+00, %add160, !dbg !546
  store float %div161, float* %v, align 4, !dbg !547
  %114 = load float, float* %u, align 4, !dbg !548
  %115 = load float, float* %v, align 4, !dbg !549
  %mul162 = fmul float %114, %115, !dbg !550
  store float %mul162, float* %s, align 4, !dbg !551
  %116 = load float, float* %s, align 4, !dbg !552
  store float %116, float* %s_h, align 4, !dbg !553
  %117 = load float, float* %s_h, align 4, !dbg !554
  %value164 = bitcast %union.ieee_float_shape_type* %gf_u163 to float*, !dbg !554
  store float %117, float* %value164, align 4, !dbg !554
  %word165 = bitcast %union.ieee_float_shape_type* %gf_u163 to i32*, !dbg !554
  %118 = load i32, i32* %word165, align 4, !dbg !554
  store i32 %118, i32* %is, align 4, !dbg !554
  %119 = load i32, i32* %is, align 4, !dbg !555
  %and167 = and i32 %119, -4096, !dbg !555
  %word168 = bitcast %union.ieee_float_shape_type* %sf_u166 to i32*, !dbg !555
  store i32 %and167, i32* %word168, align 4, !dbg !555
  %value169 = bitcast %union.ieee_float_shape_type* %sf_u166 to float*, !dbg !555
  %120 = load float, float* %value169, align 4, !dbg !555
  store float %120, float* %s_h, align 4, !dbg !555
  %121 = load i32, i32* %ix, align 4, !dbg !556
  %shr171 = ashr i32 %121, 1, !dbg !556
  %or172 = or i32 %shr171, 536870912, !dbg !556
  %add173 = add nsw i32 %or172, 262144, !dbg !556
  %122 = load i32, i32* %k, align 4, !dbg !556
  %shl174 = shl i32 %122, 21, !dbg !556
  %add175 = add nsw i32 %add173, %shl174, !dbg !556
  %word176 = bitcast %union.ieee_float_shape_type* %sf_u170 to i32*, !dbg !556
  store i32 %add175, i32* %word176, align 4, !dbg !556
  %value177 = bitcast %union.ieee_float_shape_type* %sf_u170 to float*, !dbg !556
  %123 = load float, float* %value177, align 4, !dbg !556
  store float %123, float* %t_h, align 4, !dbg !556
  %124 = load float, float* %ax, align 4, !dbg !557
  %125 = load float, float* %t_h, align 4, !dbg !558
  %126 = load i32, i32* %k, align 4, !dbg !559
  %arrayidx178 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_bp, i32 0, i32 %126, !dbg !560
  %127 = load float, float* %arrayidx178, align 4, !dbg !560
  %sub179 = fsub float %125, %127, !dbg !561
  %sub180 = fsub float %124, %sub179, !dbg !562
  store float %sub180, float* %t_l, align 4, !dbg !563
  %128 = load float, float* %v, align 4, !dbg !564
  %129 = load float, float* %u, align 4, !dbg !565
  %130 = load float, float* %s_h, align 4, !dbg !566
  %131 = load float, float* %t_h, align 4, !dbg !567
  %neg182 = fneg float %130, !dbg !568
  %132 = call float @llvm.fmuladd.f32(float %neg182, float %131, float %129), !dbg !568
  %133 = load float, float* %s_h, align 4, !dbg !569
  %134 = load float, float* %t_l, align 4, !dbg !570
  %neg184 = fneg float %133, !dbg !571
  %135 = call float @llvm.fmuladd.f32(float %neg184, float %134, float %132), !dbg !571
  %mul185 = fmul float %128, %135, !dbg !572
  store float %mul185, float* %s_l, align 4, !dbg !573
  %136 = load float, float* %s, align 4, !dbg !574
  %137 = load float, float* %s, align 4, !dbg !575
  %mul186 = fmul float %136, %137, !dbg !576
  store float %mul186, float* %s2, align 4, !dbg !577
  %138 = load float, float* %s2, align 4, !dbg !578
  %139 = load float, float* %s2, align 4, !dbg !579
  %mul187 = fmul float %138, %139, !dbg !580
  %140 = load float, float* %s2, align 4, !dbg !581
  %141 = load float, float* %s2, align 4, !dbg !582
  %142 = load float, float* %s2, align 4, !dbg !583
  %143 = load float, float* %s2, align 4, !dbg !584
  %144 = load float, float* %s2, align 4, !dbg !585
  %145 = call float @llvm.fmuladd.f32(float %144, float 0x3FCA7E2840000000, float 0x3FCD864AA0000000), !dbg !586
  %146 = call float @llvm.fmuladd.f32(float %143, float %145, float 0x3FD17460A0000000), !dbg !587
  %147 = call float @llvm.fmuladd.f32(float %142, float %146, float 0x3FD5555560000000), !dbg !588
  %148 = call float @llvm.fmuladd.f32(float %141, float %147, float 0x3FDB6DB6E0000000), !dbg !589
  %149 = call float @llvm.fmuladd.f32(float %140, float %148, float 0x3FE3333340000000), !dbg !590
  %mul193 = fmul float %mul187, %149, !dbg !591
  store float %mul193, float* %r, align 4, !dbg !592
  %150 = load float, float* %s_l, align 4, !dbg !593
  %151 = load float, float* %s_h, align 4, !dbg !594
  %152 = load float, float* %s, align 4, !dbg !595
  %add194 = fadd float %151, %152, !dbg !596
  %153 = load float, float* %r, align 4, !dbg !597
  %154 = call float @llvm.fmuladd.f32(float %150, float %add194, float %153), !dbg !597
  store float %154, float* %r, align 4, !dbg !597
  %155 = load float, float* %s_h, align 4, !dbg !598
  %156 = load float, float* %s_h, align 4, !dbg !599
  %mul196 = fmul float %155, %156, !dbg !600
  store float %mul196, float* %s2, align 4, !dbg !601
  %157 = load float, float* %s2, align 4, !dbg !602
  %add197 = fadd float 3.000000e+00, %157, !dbg !603
  %158 = load float, float* %r, align 4, !dbg !604
  %add198 = fadd float %add197, %158, !dbg !605
  store float %add198, float* %t_h, align 4, !dbg !606
  %159 = load float, float* %t_h, align 4, !dbg !607
  %value200 = bitcast %union.ieee_float_shape_type* %gf_u199 to float*, !dbg !607
  store float %159, float* %value200, align 4, !dbg !607
  %word201 = bitcast %union.ieee_float_shape_type* %gf_u199 to i32*, !dbg !607
  %160 = load i32, i32* %word201, align 4, !dbg !607
  store i32 %160, i32* %is, align 4, !dbg !607
  %161 = load i32, i32* %is, align 4, !dbg !608
  %and203 = and i32 %161, -4096, !dbg !608
  %word204 = bitcast %union.ieee_float_shape_type* %sf_u202 to i32*, !dbg !608
  store i32 %and203, i32* %word204, align 4, !dbg !608
  %value205 = bitcast %union.ieee_float_shape_type* %sf_u202 to float*, !dbg !608
  %162 = load float, float* %value205, align 4, !dbg !608
  store float %162, float* %t_h, align 4, !dbg !608
  %163 = load float, float* %r, align 4, !dbg !609
  %164 = load float, float* %t_h, align 4, !dbg !610
  %sub206 = fsub float %164, 3.000000e+00, !dbg !611
  %165 = load float, float* %s2, align 4, !dbg !612
  %sub207 = fsub float %sub206, %165, !dbg !613
  %sub208 = fsub float %163, %sub207, !dbg !614
  store float %sub208, float* %t_l, align 4, !dbg !615
  %166 = load float, float* %s_h, align 4, !dbg !616
  %167 = load float, float* %t_h, align 4, !dbg !617
  %mul209 = fmul float %166, %167, !dbg !618
  store float %mul209, float* %u, align 4, !dbg !619
  %168 = load float, float* %s_l, align 4, !dbg !620
  %169 = load float, float* %t_h, align 4, !dbg !621
  %170 = load float, float* %t_l, align 4, !dbg !622
  %171 = load float, float* %s, align 4, !dbg !623
  %mul211 = fmul float %170, %171, !dbg !624
  %172 = call float @llvm.fmuladd.f32(float %168, float %169, float %mul211), !dbg !625
  store float %172, float* %v, align 4, !dbg !626
  %173 = load float, float* %u, align 4, !dbg !627
  %174 = load float, float* %v, align 4, !dbg !628
  %add212 = fadd float %173, %174, !dbg !629
  store float %add212, float* %p_h, align 4, !dbg !630
  %175 = load float, float* %p_h, align 4, !dbg !631
  %value214 = bitcast %union.ieee_float_shape_type* %gf_u213 to float*, !dbg !631
  store float %175, float* %value214, align 4, !dbg !631
  %word215 = bitcast %union.ieee_float_shape_type* %gf_u213 to i32*, !dbg !631
  %176 = load i32, i32* %word215, align 4, !dbg !631
  store i32 %176, i32* %is, align 4, !dbg !631
  %177 = load i32, i32* %is, align 4, !dbg !632
  %and217 = and i32 %177, -4096, !dbg !632
  %word218 = bitcast %union.ieee_float_shape_type* %sf_u216 to i32*, !dbg !632
  store i32 %and217, i32* %word218, align 4, !dbg !632
  %value219 = bitcast %union.ieee_float_shape_type* %sf_u216 to float*, !dbg !632
  %178 = load float, float* %value219, align 4, !dbg !632
  store float %178, float* %p_h, align 4, !dbg !632
  %179 = load float, float* %v, align 4, !dbg !633
  %180 = load float, float* %p_h, align 4, !dbg !634
  %181 = load float, float* %u, align 4, !dbg !635
  %sub220 = fsub float %180, %181, !dbg !636
  %sub221 = fsub float %179, %sub220, !dbg !637
  store float %sub221, float* %p_l, align 4, !dbg !638
  %182 = load float, float* %p_h, align 4, !dbg !639
  %mul222 = fmul float 0x3FEEC70000000000, %182, !dbg !640
  store float %mul222, float* %z_h, align 4, !dbg !641
  %183 = load float, float* %p_h, align 4, !dbg !642
  %184 = load float, float* %p_l, align 4, !dbg !643
  %mul224 = fmul float %184, 0x3FEEC709E0000000, !dbg !644
  %185 = call float @llvm.fmuladd.f32(float 0x3ED3B87400000000, float %183, float %mul224), !dbg !645
  %186 = load i32, i32* %k, align 4, !dbg !646
  %arrayidx225 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_dp_l, i32 0, i32 %186, !dbg !647
  %187 = load float, float* %arrayidx225, align 4, !dbg !647
  %add226 = fadd float %185, %187, !dbg !648
  store float %add226, float* %z_l, align 4, !dbg !649
  %188 = load i32, i32* %n, align 4, !dbg !650
  %conv = sitofp i32 %188 to float, !dbg !651
  store float %conv, float* %t, align 4, !dbg !652
  %189 = load float, float* %z_h, align 4, !dbg !653
  %190 = load float, float* %z_l, align 4, !dbg !654
  %add227 = fadd float %189, %190, !dbg !655
  %191 = load i32, i32* %k, align 4, !dbg !656
  %arrayidx228 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_dp_h, i32 0, i32 %191, !dbg !657
  %192 = load float, float* %arrayidx228, align 4, !dbg !657
  %add229 = fadd float %add227, %192, !dbg !658
  %193 = load float, float* %t, align 4, !dbg !659
  %add230 = fadd float %add229, %193, !dbg !660
  store float %add230, float* %t1, align 4, !dbg !661
  %194 = load float, float* %t1, align 4, !dbg !662
  %value232 = bitcast %union.ieee_float_shape_type* %gf_u231 to float*, !dbg !662
  store float %194, float* %value232, align 4, !dbg !662
  %word233 = bitcast %union.ieee_float_shape_type* %gf_u231 to i32*, !dbg !662
  %195 = load i32, i32* %word233, align 4, !dbg !662
  store i32 %195, i32* %is, align 4, !dbg !662
  %196 = load i32, i32* %is, align 4, !dbg !663
  %and235 = and i32 %196, -4096, !dbg !663
  %word236 = bitcast %union.ieee_float_shape_type* %sf_u234 to i32*, !dbg !663
  store i32 %and235, i32* %word236, align 4, !dbg !663
  %value237 = bitcast %union.ieee_float_shape_type* %sf_u234 to float*, !dbg !663
  %197 = load float, float* %value237, align 4, !dbg !663
  store float %197, float* %t1, align 4, !dbg !663
  %198 = load float, float* %z_l, align 4, !dbg !664
  %199 = load float, float* %t1, align 4, !dbg !665
  %200 = load float, float* %t, align 4, !dbg !666
  %sub238 = fsub float %199, %200, !dbg !667
  %201 = load i32, i32* %k, align 4, !dbg !668
  %arrayidx239 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_dp_h, i32 0, i32 %201, !dbg !669
  %202 = load float, float* %arrayidx239, align 4, !dbg !669
  %sub240 = fsub float %sub238, %202, !dbg !670
  %203 = load float, float* %z_h, align 4, !dbg !671
  %sub241 = fsub float %sub240, %203, !dbg !672
  %sub242 = fsub float %198, %sub241, !dbg !673
  store float %sub242, float* %t2, align 4, !dbg !674
  br label %if.end243

if.end243:                                        ; preds = %if.end154, %if.end111
  store float 1.000000e+00, float* %s, align 4, !dbg !675
  %204 = load i32, i32* %hx, align 4, !dbg !676
  %shr244 = lshr i32 %204, 31, !dbg !677
  %sub245 = sub i32 %shr244, 1, !dbg !678
  %205 = load i32, i32* %yisint, align 4, !dbg !679
  %sub246 = sub nsw i32 %205, 1, !dbg !680
  %or247 = or i32 %sub245, %sub246, !dbg !681
  %cmp248 = icmp eq i32 %or247, 0, !dbg !682
  br i1 %cmp248, label %if.then250, label %if.end251, !dbg !683

if.then250:                                       ; preds = %if.end243
  store float -1.000000e+00, float* %s, align 4, !dbg !684
  br label %if.end251, !dbg !685

if.end251:                                        ; preds = %if.then250, %if.end243
  %206 = load float, float* %y.addr, align 4, !dbg !686
  %value253 = bitcast %union.ieee_float_shape_type* %gf_u252 to float*, !dbg !686
  store float %206, float* %value253, align 4, !dbg !686
  %word254 = bitcast %union.ieee_float_shape_type* %gf_u252 to i32*, !dbg !686
  %207 = load i32, i32* %word254, align 4, !dbg !686
  store i32 %207, i32* %is, align 4, !dbg !686
  %208 = load i32, i32* %is, align 4, !dbg !687
  %and256 = and i32 %208, -4096, !dbg !687
  %word257 = bitcast %union.ieee_float_shape_type* %sf_u255 to i32*, !dbg !687
  store i32 %and256, i32* %word257, align 4, !dbg !687
  %value258 = bitcast %union.ieee_float_shape_type* %sf_u255 to float*, !dbg !687
  %209 = load float, float* %value258, align 4, !dbg !687
  store float %209, float* %y1, align 4, !dbg !687
  %210 = load float, float* %y.addr, align 4, !dbg !688
  %211 = load float, float* %y1, align 4, !dbg !689
  %sub259 = fsub float %210, %211, !dbg !690
  %212 = load float, float* %t1, align 4, !dbg !691
  %213 = load float, float* %y.addr, align 4, !dbg !692
  %214 = load float, float* %t2, align 4, !dbg !693
  %mul261 = fmul float %213, %214, !dbg !694
  %215 = call float @llvm.fmuladd.f32(float %sub259, float %212, float %mul261), !dbg !695
  store float %215, float* %p_l, align 4, !dbg !696
  %216 = load float, float* %y1, align 4, !dbg !697
  %217 = load float, float* %t1, align 4, !dbg !698
  %mul262 = fmul float %216, %217, !dbg !699
  store float %mul262, float* %p_h, align 4, !dbg !700
  %218 = load float, float* %p_l, align 4, !dbg !701
  %219 = load float, float* %p_h, align 4, !dbg !702
  %add263 = fadd float %218, %219, !dbg !703
  store float %add263, float* %z, align 4, !dbg !704
  %220 = load float, float* %z, align 4, !dbg !705
  %value265 = bitcast %union.ieee_float_shape_type* %gf_u264 to float*, !dbg !705
  store float %220, float* %value265, align 4, !dbg !705
  %word266 = bitcast %union.ieee_float_shape_type* %gf_u264 to i32*, !dbg !705
  %221 = load i32, i32* %word266, align 4, !dbg !705
  store i32 %221, i32* %j, align 4, !dbg !705
  %222 = load i32, i32* %j, align 4, !dbg !706
  %cmp267 = icmp sgt i32 %222, 1124073472, !dbg !707
  br i1 %cmp267, label %if.then269, label %if.else272, !dbg !706

if.then269:                                       ; preds = %if.end251
  %223 = load float, float* %s, align 4, !dbg !708
  %mul270 = fmul float %223, 0x46293E5940000000, !dbg !709
  %mul271 = fmul float %mul270, 0x46293E5940000000, !dbg !710
  store float %mul271, float* %retval, align 4, !dbg !711
  br label %return, !dbg !711

if.else272:                                       ; preds = %if.end251
  %224 = load i32, i32* %j, align 4, !dbg !712
  %cmp273 = icmp eq i32 %224, 1124073472, !dbg !713
  br i1 %cmp273, label %if.then275, label %if.else284, !dbg !712

if.then275:                                       ; preds = %if.else272
  %225 = load float, float* %p_l, align 4, !dbg !714
  %add276 = fadd float %225, 0x3E67154780000000, !dbg !715
  %226 = load float, float* %z, align 4, !dbg !716
  %227 = load float, float* %p_h, align 4, !dbg !717
  %sub277 = fsub float %226, %227, !dbg !718
  %cmp278 = fcmp ogt float %add276, %sub277, !dbg !719
  br i1 %cmp278, label %if.then280, label %if.end283, !dbg !714

if.then280:                                       ; preds = %if.then275
  %228 = load float, float* %s, align 4, !dbg !720
  %mul281 = fmul float %228, 0x46293E5940000000, !dbg !721
  %mul282 = fmul float %mul281, 0x46293E5940000000, !dbg !722
  store float %mul282, float* %retval, align 4, !dbg !723
  br label %return, !dbg !723

if.end283:                                        ; preds = %if.then275
  br label %if.end304, !dbg !724

if.else284:                                       ; preds = %if.else272
  %229 = load i32, i32* %j, align 4, !dbg !725
  %and285 = and i32 %229, 2147483647, !dbg !726
  %cmp286 = icmp sgt i32 %and285, 1125515264, !dbg !727
  br i1 %cmp286, label %if.then288, label %if.else291, !dbg !728

if.then288:                                       ; preds = %if.else284
  %230 = load float, float* %s, align 4, !dbg !729
  %mul289 = fmul float %230, 0x39B4484C00000000, !dbg !730
  %mul290 = fmul float %mul289, 0x39B4484C00000000, !dbg !731
  store float %mul290, float* %retval, align 4, !dbg !732
  br label %return, !dbg !732

if.else291:                                       ; preds = %if.else284
  %231 = load i32, i32* %j, align 4, !dbg !733
  %cmp292 = icmp eq i32 %231, -1021968384, !dbg !734
  br i1 %cmp292, label %if.then294, label %if.end302, !dbg !735

if.then294:                                       ; preds = %if.else291
  %232 = load float, float* %p_l, align 4, !dbg !736
  %233 = load float, float* %z, align 4, !dbg !737
  %234 = load float, float* %p_h, align 4, !dbg !738
  %sub295 = fsub float %233, %234, !dbg !739
  %cmp296 = fcmp ole float %232, %sub295, !dbg !740
  br i1 %cmp296, label %if.then298, label %if.end301, !dbg !736

if.then298:                                       ; preds = %if.then294
  %235 = load float, float* %s, align 4, !dbg !741
  %mul299 = fmul float %235, 0x39B4484C00000000, !dbg !742
  %mul300 = fmul float %mul299, 0x39B4484C00000000, !dbg !743
  store float %mul300, float* %retval, align 4, !dbg !744
  br label %return, !dbg !744

if.end301:                                        ; preds = %if.then294
  br label %if.end302, !dbg !745

if.end302:                                        ; preds = %if.end301, %if.else291
  br label %if.end303

if.end303:                                        ; preds = %if.end302
  br label %if.end304

if.end304:                                        ; preds = %if.end303, %if.end283
  br label %if.end305

if.end305:                                        ; preds = %if.end304
  %236 = load i32, i32* %j, align 4, !dbg !746
  %and306 = and i32 %236, 2147483647, !dbg !747
  store i32 %and306, i32* %i, align 4, !dbg !748
  %237 = load i32, i32* %i, align 4, !dbg !749
  %shr307 = ashr i32 %237, 23, !dbg !750
  %sub308 = sub nsw i32 %shr307, 127, !dbg !751
  store i32 %sub308, i32* %k, align 4, !dbg !752
  store i32 0, i32* %n, align 4, !dbg !753
  %238 = load i32, i32* %i, align 4, !dbg !754
  %cmp309 = icmp sgt i32 %238, 1056964608, !dbg !755
  br i1 %cmp309, label %if.then311, label %if.end334, !dbg !754

if.then311:                                       ; preds = %if.end305
  %239 = load i32, i32* %j, align 4, !dbg !756
  %240 = load i32, i32* %k, align 4, !dbg !757
  %add312 = add nsw i32 %240, 1, !dbg !758
  %shr313 = ashr i32 8388608, %add312, !dbg !759
  %add314 = add nsw i32 %239, %shr313, !dbg !760
  store i32 %add314, i32* %n, align 4, !dbg !761
  %241 = load i32, i32* %n, align 4, !dbg !762
  %and315 = and i32 %241, 2147483647, !dbg !763
  %shr316 = ashr i32 %and315, 23, !dbg !764
  %sub317 = sub nsw i32 %shr316, 127, !dbg !765
  store i32 %sub317, i32* %k, align 4, !dbg !766
  %242 = load i32, i32* %n, align 4, !dbg !767
  %243 = load i32, i32* %k, align 4, !dbg !767
  %shr319 = ashr i32 8388607, %243, !dbg !767
  %neg320 = xor i32 %shr319, -1, !dbg !767
  %and321 = and i32 %242, %neg320, !dbg !767
  %word322 = bitcast %union.ieee_float_shape_type* %sf_u318 to i32*, !dbg !767
  store i32 %and321, i32* %word322, align 4, !dbg !767
  %value323 = bitcast %union.ieee_float_shape_type* %sf_u318 to float*, !dbg !767
  %244 = load float, float* %value323, align 4, !dbg !767
  store float %244, float* %t, align 4, !dbg !767
  %245 = load i32, i32* %n, align 4, !dbg !768
  %and324 = and i32 %245, 8388607, !dbg !769
  %or325 = or i32 %and324, 8388608, !dbg !770
  %246 = load i32, i32* %k, align 4, !dbg !771
  %sub326 = sub nsw i32 23, %246, !dbg !772
  %shr327 = ashr i32 %or325, %sub326, !dbg !773
  store i32 %shr327, i32* %n, align 4, !dbg !774
  %247 = load i32, i32* %j, align 4, !dbg !775
  %cmp328 = icmp slt i32 %247, 0, !dbg !776
  br i1 %cmp328, label %if.then330, label %if.end332, !dbg !775

if.then330:                                       ; preds = %if.then311
  %248 = load i32, i32* %n, align 4, !dbg !777
  %sub331 = sub nsw i32 0, %248, !dbg !778
  store i32 %sub331, i32* %n, align 4, !dbg !779
  br label %if.end332, !dbg !780

if.end332:                                        ; preds = %if.then330, %if.then311
  %249 = load float, float* %t, align 4, !dbg !781
  %250 = load float, float* %p_h, align 4, !dbg !782
  %sub333 = fsub float %250, %249, !dbg !782
  store float %sub333, float* %p_h, align 4, !dbg !782
  br label %if.end334, !dbg !783

if.end334:                                        ; preds = %if.end332, %if.end305
  %251 = load float, float* %p_l, align 4, !dbg !784
  %252 = load float, float* %p_h, align 4, !dbg !785
  %add335 = fadd float %251, %252, !dbg !786
  store float %add335, float* %t, align 4, !dbg !787
  %253 = load float, float* %t, align 4, !dbg !788
  %value337 = bitcast %union.ieee_float_shape_type* %gf_u336 to float*, !dbg !788
  store float %253, float* %value337, align 4, !dbg !788
  %word338 = bitcast %union.ieee_float_shape_type* %gf_u336 to i32*, !dbg !788
  %254 = load i32, i32* %word338, align 4, !dbg !788
  store i32 %254, i32* %is, align 4, !dbg !788
  %255 = load i32, i32* %is, align 4, !dbg !789
  %and340 = and i32 %255, -4096, !dbg !789
  %word341 = bitcast %union.ieee_float_shape_type* %sf_u339 to i32*, !dbg !789
  store i32 %and340, i32* %word341, align 4, !dbg !789
  %value342 = bitcast %union.ieee_float_shape_type* %sf_u339 to float*, !dbg !789
  %256 = load float, float* %value342, align 4, !dbg !789
  store float %256, float* %t, align 4, !dbg !789
  %257 = load float, float* %t, align 4, !dbg !790
  %mul343 = fmul float %257, 0x3FE62E4000000000, !dbg !791
  store float %mul343, float* %u, align 4, !dbg !792
  %258 = load float, float* %p_l, align 4, !dbg !793
  %259 = load float, float* %t, align 4, !dbg !794
  %260 = load float, float* %p_h, align 4, !dbg !795
  %sub344 = fsub float %259, %260, !dbg !796
  %sub345 = fsub float %258, %sub344, !dbg !797
  %261 = load float, float* %t, align 4, !dbg !798
  %mul347 = fmul float %261, 0x3EB7F7D180000000, !dbg !799
  %262 = call float @llvm.fmuladd.f32(float %sub345, float 0x3FE62E4300000000, float %mul347), !dbg !800
  store float %262, float* %v, align 4, !dbg !801
  %263 = load float, float* %u, align 4, !dbg !802
  %264 = load float, float* %v, align 4, !dbg !803
  %add348 = fadd float %263, %264, !dbg !804
  store float %add348, float* %z, align 4, !dbg !805
  %265 = load float, float* %v, align 4, !dbg !806
  %266 = load float, float* %z, align 4, !dbg !807
  %267 = load float, float* %u, align 4, !dbg !808
  %sub349 = fsub float %266, %267, !dbg !809
  %sub350 = fsub float %265, %sub349, !dbg !810
  store float %sub350, float* %w, align 4, !dbg !811
  %268 = load float, float* %z, align 4, !dbg !812
  %269 = load float, float* %z, align 4, !dbg !813
  %mul351 = fmul float %268, %269, !dbg !814
  store float %mul351, float* %t, align 4, !dbg !815
  %270 = load float, float* %z, align 4, !dbg !816
  %271 = load float, float* %t, align 4, !dbg !817
  %272 = load float, float* %t, align 4, !dbg !818
  %273 = load float, float* %t, align 4, !dbg !819
  %274 = load float, float* %t, align 4, !dbg !820
  %275 = load float, float* %t, align 4, !dbg !821
  %276 = call float @llvm.fmuladd.f32(float %275, float 0x3E66376980000000, float 0xBEBBBD41C0000000), !dbg !822
  %277 = call float @llvm.fmuladd.f32(float %274, float %276, float 0x3F11566AA0000000), !dbg !823
  %278 = call float @llvm.fmuladd.f32(float %273, float %277, float 0xBF66C16C20000000), !dbg !824
  %279 = call float @llvm.fmuladd.f32(float %272, float %278, float 0x3FC5555560000000), !dbg !825
  %neg357 = fneg float %271, !dbg !826
  %280 = call float @llvm.fmuladd.f32(float %neg357, float %279, float %270), !dbg !826
  store float %280, float* %t1, align 4, !dbg !827
  %281 = load float, float* %z, align 4, !dbg !828
  %282 = load float, float* %t1, align 4, !dbg !829
  %mul358 = fmul float %281, %282, !dbg !830
  %283 = load float, float* %t1, align 4, !dbg !831
  %sub359 = fsub float %283, 2.000000e+00, !dbg !832
  %div360 = fdiv float %mul358, %sub359, !dbg !833
  %284 = load float, float* %w, align 4, !dbg !834
  %285 = load float, float* %z, align 4, !dbg !835
  %286 = load float, float* %w, align 4, !dbg !836
  %287 = call float @llvm.fmuladd.f32(float %285, float %286, float %284), !dbg !837
  %sub362 = fsub float %div360, %287, !dbg !838
  store float %sub362, float* %r, align 4, !dbg !839
  %288 = load float, float* %r, align 4, !dbg !840
  %289 = load float, float* %z, align 4, !dbg !841
  %sub363 = fsub float %288, %289, !dbg !842
  %sub364 = fsub float 1.000000e+00, %sub363, !dbg !843
  store float %sub364, float* %z, align 4, !dbg !844
  %290 = load float, float* %z, align 4, !dbg !845
  %value366 = bitcast %union.ieee_float_shape_type* %gf_u365 to float*, !dbg !845
  store float %290, float* %value366, align 4, !dbg !845
  %word367 = bitcast %union.ieee_float_shape_type* %gf_u365 to i32*, !dbg !845
  %291 = load i32, i32* %word367, align 4, !dbg !845
  store i32 %291, i32* %j, align 4, !dbg !845
  %292 = load i32, i32* %n, align 4, !dbg !846
  %shl368 = shl i32 %292, 23, !dbg !847
  %293 = load i32, i32* %j, align 4, !dbg !848
  %add369 = add nsw i32 %293, %shl368, !dbg !848
  store i32 %add369, i32* %j, align 4, !dbg !848
  %294 = load i32, i32* %j, align 4, !dbg !849
  %shr370 = ashr i32 %294, 23, !dbg !850
  %cmp371 = icmp sle i32 %shr370, 0, !dbg !851
  br i1 %cmp371, label %if.then373, label %if.else375, !dbg !852

if.then373:                                       ; preds = %if.end334
  %295 = load float, float* %z, align 4, !dbg !853
  %296 = load i32, i32* %n, align 4, !dbg !854
  %call374 = call arm_aapcs_vfpcc float @basicmath___scalbnf(float noundef %295, i32 noundef %296) #2, !dbg !855
  store float %call374, float* %z, align 4, !dbg !856
  br label %if.end379, !dbg !857

if.else375:                                       ; preds = %if.end334
  %297 = load i32, i32* %j, align 4, !dbg !858
  %word377 = bitcast %union.ieee_float_shape_type* %sf_u376 to i32*, !dbg !858
  store i32 %297, i32* %word377, align 4, !dbg !858
  %value378 = bitcast %union.ieee_float_shape_type* %sf_u376 to float*, !dbg !858
  %298 = load float, float* %value378, align 4, !dbg !858
  store float %298, float* %z, align 4, !dbg !858
  br label %if.end379

if.end379:                                        ; preds = %if.else375, %if.then373
  %299 = load float, float* %s, align 4, !dbg !859
  %300 = load float, float* %z, align 4, !dbg !860
  %mul380 = fmul float %299, %300, !dbg !861
  store float %mul380, float* %retval, align 4, !dbg !862
  br label %return, !dbg !862

return:                                           ; preds = %if.end379, %if.then298, %if.then288, %if.then280, %if.then269, %if.then108, %if.then103, %if.then95, %if.end89, %if.then60, %if.then55, %if.else52, %if.then51, %cond.end45, %cond.end, %if.then35, %if.then13, %if.then9, %if.then6, %if.then
  %301 = load float, float* %retval, align 4, !dbg !863
  ret float %301, !dbg !863
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @basicmath___isinff(float noundef %x) #0 !dbg !864 {
entry:
  %x.addr = alloca float, align 4
  %ix = alloca i32, align 4
  %t = alloca i32, align 4
  %gf_u = alloca %union.ieee_float_shape_type, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4, !dbg !865
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !865
  store float %0, float* %value, align 4, !dbg !865
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !865
  %1 = load i32, i32* %word, align 4, !dbg !865
  store i32 %1, i32* %ix, align 4, !dbg !865
  %2 = load i32, i32* %ix, align 4, !dbg !866
  %and = and i32 %2, 2147483647, !dbg !867
  store i32 %and, i32* %t, align 4, !dbg !868
  %3 = load i32, i32* %t, align 4, !dbg !869
  %xor = xor i32 %3, 2139095040, !dbg !869
  store i32 %xor, i32* %t, align 4, !dbg !869
  %4 = load i32, i32* %t, align 4, !dbg !870
  %sub = sub nsw i32 0, %4, !dbg !871
  %5 = load i32, i32* %t, align 4, !dbg !872
  %or = or i32 %5, %sub, !dbg !872
  store i32 %or, i32* %t, align 4, !dbg !872
  %6 = load i32, i32* %t, align 4, !dbg !873
  %shr = ashr i32 %6, 31, !dbg !874
  %neg = xor i32 %shr, -1, !dbg !875
  %7 = load i32, i32* %ix, align 4, !dbg !876
  %shr1 = ashr i32 %7, 30, !dbg !877
  %and2 = and i32 %neg, %shr1, !dbg !878
  ret i32 %and2, !dbg !879
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___fabsf(float noundef %x) #0 !dbg !880 {
entry:
  %x.addr = alloca float, align 4
  %ix = alloca i32, align 4
  %gf_u = alloca %union.ieee_float_shape_type, align 4
  %sf_u = alloca %union.ieee_float_shape_type, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4, !dbg !881
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !881
  store float %0, float* %value, align 4, !dbg !881
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !881
  %1 = load i32, i32* %word, align 4, !dbg !881
  store i32 %1, i32* %ix, align 4, !dbg !881
  %2 = load i32, i32* %ix, align 4, !dbg !882
  %and = and i32 %2, 2147483647, !dbg !882
  %word1 = bitcast %union.ieee_float_shape_type* %sf_u to i32*, !dbg !882
  store i32 %and, i32* %word1, align 4, !dbg !882
  %value2 = bitcast %union.ieee_float_shape_type* %sf_u to float*, !dbg !882
  %3 = load float, float* %value2, align 4, !dbg !882
  store float %3, float* %x.addr, align 4, !dbg !882
  %4 = load float, float* %x.addr, align 4, !dbg !883
  ret float %4, !dbg !884
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___scalbnf(float noundef %x, i32 noundef %n) #0 !dbg !885 {
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
  store i32 %n, i32* %n.addr, align 4
  %0 = load float, float* %x.addr, align 4, !dbg !886
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !886
  store float %0, float* %value, align 4, !dbg !886
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !886
  %1 = load i32, i32* %word, align 4, !dbg !886
  store i32 %1, i32* %ix, align 4, !dbg !886
  %2 = load i32, i32* %ix, align 4, !dbg !887
  %and = and i32 %2, 2139095040, !dbg !888
  %shr = ashr i32 %and, 23, !dbg !889
  store i32 %shr, i32* %k, align 4, !dbg !890
  %3 = load i32, i32* %k, align 4, !dbg !891
  %cmp = icmp eq i32 %3, 0, !dbg !892
  br i1 %cmp, label %if.then, label %if.end9, !dbg !891

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ix, align 4, !dbg !893
  %and1 = and i32 %4, 2147483647, !dbg !894
  %cmp2 = icmp eq i32 %and1, 0, !dbg !895
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !896

if.then3:                                         ; preds = %if.then
  %5 = load float, float* %x.addr, align 4, !dbg !897
  store float %5, float* %retval, align 4, !dbg !898
  br label %return, !dbg !898

if.end:                                           ; preds = %if.then
  %6 = load float, float* %x.addr, align 4, !dbg !899
  %mul = fmul float %6, 0x4180000000000000, !dbg !899
  store float %mul, float* %x.addr, align 4, !dbg !899
  %7 = load float, float* %x.addr, align 4, !dbg !900
  %value5 = bitcast %union.ieee_float_shape_type* %gf_u4 to float*, !dbg !900
  store float %7, float* %value5, align 4, !dbg !900
  %word6 = bitcast %union.ieee_float_shape_type* %gf_u4 to i32*, !dbg !900
  %8 = load i32, i32* %word6, align 4, !dbg !900
  store i32 %8, i32* %ix, align 4, !dbg !900
  %9 = load i32, i32* %ix, align 4, !dbg !901
  %and7 = and i32 %9, 2139095040, !dbg !902
  %shr8 = ashr i32 %and7, 23, !dbg !903
  %sub = sub nsw i32 %shr8, 25, !dbg !904
  store i32 %sub, i32* %k, align 4, !dbg !905
  br label %if.end9, !dbg !906

if.end9:                                          ; preds = %if.end, %entry
  %10 = load i32, i32* %k, align 4, !dbg !907
  %cmp10 = icmp eq i32 %10, 255, !dbg !908
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !907

if.then11:                                        ; preds = %if.end9
  %11 = load float, float* %x.addr, align 4, !dbg !909
  %12 = load float, float* %x.addr, align 4, !dbg !910
  %add = fadd float %11, %12, !dbg !911
  store float %add, float* %retval, align 4, !dbg !912
  br label %return, !dbg !912

if.end12:                                         ; preds = %if.end9
  %13 = load i32, i32* %k, align 4, !dbg !913
  %14 = load i32, i32* %n.addr, align 4, !dbg !914
  %add13 = add nsw i32 %13, %14, !dbg !915
  store i32 %add13, i32* %k, align 4, !dbg !916
  %15 = load i32, i32* %n.addr, align 4, !dbg !917
  %cmp14 = icmp sgt i32 %15, 50000, !dbg !918
  br i1 %cmp14, label %if.then16, label %lor.lhs.false, !dbg !919

lor.lhs.false:                                    ; preds = %if.end12
  %16 = load i32, i32* %k, align 4, !dbg !920
  %cmp15 = icmp sgt i32 %16, 254, !dbg !921
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !917

if.then16:                                        ; preds = %lor.lhs.false, %if.end12
  %17 = load float, float* %x.addr, align 4, !dbg !922
  %call = call arm_aapcs_vfpcc float @basicmath___copysignf(float noundef 0x46293E5940000000, float noundef %17) #2, !dbg !923
  %mul17 = fmul float 0x46293E5940000000, %call, !dbg !924
  store float %mul17, float* %retval, align 4, !dbg !925
  br label %return, !dbg !925

if.end18:                                         ; preds = %lor.lhs.false
  %18 = load i32, i32* %n.addr, align 4, !dbg !926
  %cmp19 = icmp slt i32 %18, -50000, !dbg !927
  br i1 %cmp19, label %if.then20, label %if.end23, !dbg !926

if.then20:                                        ; preds = %if.end18
  %19 = load float, float* %x.addr, align 4, !dbg !928
  %call21 = call arm_aapcs_vfpcc float @basicmath___copysignf(float noundef 0x39B4484C00000000, float noundef %19) #2, !dbg !929
  %mul22 = fmul float 0x39B4484C00000000, %call21, !dbg !930
  store float %mul22, float* %retval, align 4, !dbg !931
  br label %return, !dbg !931

if.end23:                                         ; preds = %if.end18
  %20 = load i32, i32* %k, align 4, !dbg !932
  %cmp24 = icmp sgt i32 %20, 0, !dbg !933
  br i1 %cmp24, label %if.then25, label %if.end29, !dbg !932

if.then25:                                        ; preds = %if.end23
  %21 = load i32, i32* %ix, align 4, !dbg !934
  %and26 = and i32 %21, -2139095041, !dbg !934
  %22 = load i32, i32* %k, align 4, !dbg !934
  %shl = shl i32 %22, 23, !dbg !934
  %or = or i32 %and26, %shl, !dbg !934
  %word27 = bitcast %union.ieee_float_shape_type* %sf_u to i32*, !dbg !934
  store i32 %or, i32* %word27, align 4, !dbg !934
  %value28 = bitcast %union.ieee_float_shape_type* %sf_u to float*, !dbg !934
  %23 = load float, float* %value28, align 4, !dbg !934
  store float %23, float* %x.addr, align 4, !dbg !934
  %24 = load float, float* %x.addr, align 4, !dbg !935
  store float %24, float* %retval, align 4, !dbg !936
  br label %return, !dbg !936

if.end29:                                         ; preds = %if.end23
  %25 = load i32, i32* %k, align 4, !dbg !937
  %cmp30 = icmp sle i32 %25, -25, !dbg !938
  br i1 %cmp30, label %if.then31, label %if.end34, !dbg !937

if.then31:                                        ; preds = %if.end29
  %26 = load float, float* %x.addr, align 4, !dbg !939
  %call32 = call arm_aapcs_vfpcc float @basicmath___copysignf(float noundef 0x39B4484C00000000, float noundef %26) #2, !dbg !940
  %mul33 = fmul float 0x39B4484C00000000, %call32, !dbg !941
  store float %mul33, float* %retval, align 4, !dbg !942
  br label %return, !dbg !942

if.end34:                                         ; preds = %if.end29
  %27 = load i32, i32* %k, align 4, !dbg !943
  %add35 = add nsw i32 %27, 25, !dbg !943
  store i32 %add35, i32* %k, align 4, !dbg !943
  %28 = load i32, i32* %ix, align 4, !dbg !944
  %and37 = and i32 %28, -2139095041, !dbg !944
  %29 = load i32, i32* %k, align 4, !dbg !944
  %shl38 = shl i32 %29, 23, !dbg !944
  %or39 = or i32 %and37, %shl38, !dbg !944
  %word40 = bitcast %union.ieee_float_shape_type* %sf_u36 to i32*, !dbg !944
  store i32 %or39, i32* %word40, align 4, !dbg !944
  %value41 = bitcast %union.ieee_float_shape_type* %sf_u36 to float*, !dbg !944
  %30 = load float, float* %value41, align 4, !dbg !944
  store float %30, float* %x.addr, align 4, !dbg !944
  %31 = load float, float* %x.addr, align 4, !dbg !945
  %mul42 = fmul float %31, 0x3E60000000000000, !dbg !946
  store float %mul42, float* %retval, align 4, !dbg !947
  br label %return, !dbg !947

return:                                           ; preds = %if.end34, %if.then31, %if.then25, %if.then20, %if.then16, %if.then11, %if.then3
  %32 = load float, float* %retval, align 4, !dbg !948
  ret float %32, !dbg !948
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @basicmath___ieee754_rem_pio2f(float noundef %x, float* noundef %y) #0 !dbg !949 {
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
  store float* %y, float** %y.addr, align 4
  %0 = load float, float* %x.addr, align 4, !dbg !950
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !950
  store float %0, float* %value, align 4, !dbg !950
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !950
  %1 = load i32, i32* %word, align 4, !dbg !950
  store i32 %1, i32* %hx, align 4, !dbg !950
  %2 = load i32, i32* %hx, align 4, !dbg !951
  %and = and i32 %2, 2147483647, !dbg !952
  store i32 %and, i32* %ix, align 4, !dbg !953
  %3 = load i32, i32* %ix, align 4, !dbg !954
  %cmp = icmp sle i32 %3, 1061752792, !dbg !955
  br i1 %cmp, label %if.then, label %if.end, !dbg !954

if.then:                                          ; preds = %entry
  %4 = load float, float* %x.addr, align 4, !dbg !956
  %5 = load float*, float** %y.addr, align 4, !dbg !957
  %arrayidx = getelementptr inbounds float, float* %5, i32 0, !dbg !957
  store float %4, float* %arrayidx, align 4, !dbg !958
  %6 = load float*, float** %y.addr, align 4, !dbg !959
  %arrayidx1 = getelementptr inbounds float, float* %6, i32 1, !dbg !959
  store float 0.000000e+00, float* %arrayidx1, align 4, !dbg !960
  store i32 0, i32* %retval, align 4, !dbg !961
  br label %return, !dbg !961

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %ix, align 4, !dbg !962
  %cmp2 = icmp slt i32 %7, 1075235812, !dbg !963
  br i1 %cmp2, label %if.then3, label %if.end42, !dbg !962

if.then3:                                         ; preds = %if.end
  %8 = load i32, i32* %hx, align 4, !dbg !964
  %cmp4 = icmp sgt i32 %8, 0, !dbg !965
  br i1 %cmp4, label %if.then5, label %if.else23, !dbg !964

if.then5:                                         ; preds = %if.then3
  %9 = load float, float* %x.addr, align 4, !dbg !966
  %sub = fsub float %9, 0x3FF921F000000000, !dbg !967
  store float %sub, float* %z, align 4, !dbg !968
  %10 = load i32, i32* %ix, align 4, !dbg !969
  %and6 = and i32 %10, -16, !dbg !970
  %cmp7 = icmp ne i32 %and6, 1070141392, !dbg !971
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !972

if.then8:                                         ; preds = %if.then5
  %11 = load float, float* %z, align 4, !dbg !973
  %sub9 = fsub float %11, 0x3EE6A88860000000, !dbg !974
  %12 = load float*, float** %y.addr, align 4, !dbg !975
  %arrayidx10 = getelementptr inbounds float, float* %12, i32 0, !dbg !975
  store float %sub9, float* %arrayidx10, align 4, !dbg !976
  %13 = load float, float* %z, align 4, !dbg !977
  %14 = load float*, float** %y.addr, align 4, !dbg !978
  %arrayidx11 = getelementptr inbounds float, float* %14, i32 0, !dbg !978
  %15 = load float, float* %arrayidx11, align 4, !dbg !978
  %sub12 = fsub float %13, %15, !dbg !979
  %sub13 = fsub float %sub12, 0x3EE6A88860000000, !dbg !980
  %16 = load float*, float** %y.addr, align 4, !dbg !981
  %arrayidx14 = getelementptr inbounds float, float* %16, i32 1, !dbg !981
  store float %sub13, float* %arrayidx14, align 4, !dbg !982
  br label %if.end22, !dbg !983

if.else:                                          ; preds = %if.then5
  %17 = load float, float* %z, align 4, !dbg !984
  %sub15 = fsub float %17, 0x3EE6A88000000000, !dbg !984
  store float %sub15, float* %z, align 4, !dbg !984
  %18 = load float, float* %z, align 4, !dbg !985
  %sub16 = fsub float %18, 0x3DD0B46100000000, !dbg !986
  %19 = load float*, float** %y.addr, align 4, !dbg !987
  %arrayidx17 = getelementptr inbounds float, float* %19, i32 0, !dbg !987
  store float %sub16, float* %arrayidx17, align 4, !dbg !988
  %20 = load float, float* %z, align 4, !dbg !989
  %21 = load float*, float** %y.addr, align 4, !dbg !990
  %arrayidx18 = getelementptr inbounds float, float* %21, i32 0, !dbg !990
  %22 = load float, float* %arrayidx18, align 4, !dbg !990
  %sub19 = fsub float %20, %22, !dbg !991
  %sub20 = fsub float %sub19, 0x3DD0B46100000000, !dbg !992
  %23 = load float*, float** %y.addr, align 4, !dbg !993
  %arrayidx21 = getelementptr inbounds float, float* %23, i32 1, !dbg !993
  store float %sub20, float* %arrayidx21, align 4, !dbg !994
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then8
  store i32 1, i32* %retval, align 4, !dbg !995
  br label %return, !dbg !995

if.else23:                                        ; preds = %if.then3
  %24 = load float, float* %x.addr, align 4, !dbg !996
  %add = fadd float %24, 0x3FF921F000000000, !dbg !997
  store float %add, float* %z, align 4, !dbg !998
  %25 = load i32, i32* %ix, align 4, !dbg !999
  %and24 = and i32 %25, -16, !dbg !1000
  %cmp25 = icmp ne i32 %and24, 1070141392, !dbg !1001
  br i1 %cmp25, label %if.then26, label %if.else33, !dbg !1002

if.then26:                                        ; preds = %if.else23
  %26 = load float, float* %z, align 4, !dbg !1003
  %add27 = fadd float %26, 0x3EE6A88860000000, !dbg !1004
  %27 = load float*, float** %y.addr, align 4, !dbg !1005
  %arrayidx28 = getelementptr inbounds float, float* %27, i32 0, !dbg !1005
  store float %add27, float* %arrayidx28, align 4, !dbg !1006
  %28 = load float, float* %z, align 4, !dbg !1007
  %29 = load float*, float** %y.addr, align 4, !dbg !1008
  %arrayidx29 = getelementptr inbounds float, float* %29, i32 0, !dbg !1008
  %30 = load float, float* %arrayidx29, align 4, !dbg !1008
  %sub30 = fsub float %28, %30, !dbg !1009
  %add31 = fadd float %sub30, 0x3EE6A88860000000, !dbg !1010
  %31 = load float*, float** %y.addr, align 4, !dbg !1011
  %arrayidx32 = getelementptr inbounds float, float* %31, i32 1, !dbg !1011
  store float %add31, float* %arrayidx32, align 4, !dbg !1012
  br label %if.end41, !dbg !1013

if.else33:                                        ; preds = %if.else23
  %32 = load float, float* %z, align 4, !dbg !1014
  %add34 = fadd float %32, 0x3EE6A88000000000, !dbg !1014
  store float %add34, float* %z, align 4, !dbg !1014
  %33 = load float, float* %z, align 4, !dbg !1015
  %add35 = fadd float %33, 0x3DD0B46100000000, !dbg !1016
  %34 = load float*, float** %y.addr, align 4, !dbg !1017
  %arrayidx36 = getelementptr inbounds float, float* %34, i32 0, !dbg !1017
  store float %add35, float* %arrayidx36, align 4, !dbg !1018
  %35 = load float, float* %z, align 4, !dbg !1019
  %36 = load float*, float** %y.addr, align 4, !dbg !1020
  %arrayidx37 = getelementptr inbounds float, float* %36, i32 0, !dbg !1020
  %37 = load float, float* %arrayidx37, align 4, !dbg !1020
  %sub38 = fsub float %35, %37, !dbg !1021
  %add39 = fadd float %sub38, 0x3DD0B46100000000, !dbg !1022
  %38 = load float*, float** %y.addr, align 4, !dbg !1023
  %arrayidx40 = getelementptr inbounds float, float* %38, i32 1, !dbg !1023
  store float %add39, float* %arrayidx40, align 4, !dbg !1024
  br label %if.end41

if.end41:                                         ; preds = %if.else33, %if.then26
  store i32 -1, i32* %retval, align 4, !dbg !1025
  br label %return, !dbg !1025

if.end42:                                         ; preds = %if.end
  %39 = load i32, i32* %ix, align 4, !dbg !1026
  %cmp43 = icmp sle i32 %39, 1128861568, !dbg !1027
  br i1 %cmp43, label %if.then44, label %if.end112, !dbg !1026

if.then44:                                        ; preds = %if.end42
  %40 = load float, float* %x.addr, align 4, !dbg !1028
  %call = call arm_aapcs_vfpcc float @basicmath___fabsf(float noundef %40) #2, !dbg !1029
  store float %call, float* %t, align 4, !dbg !1030
  %41 = load float, float* %t, align 4, !dbg !1031
  %42 = call float @llvm.fmuladd.f32(float %41, float 0x3FE45F3080000000, float 5.000000e-01), !dbg !1032
  %conv = fptosi float %42 to i32, !dbg !1033
  store i32 %conv, i32* %n, align 4, !dbg !1034
  %43 = load i32, i32* %n, align 4, !dbg !1035
  %conv45 = sitofp i32 %43 to float, !dbg !1036
  store float %conv45, float* %fn, align 4, !dbg !1037
  %44 = load float, float* %t, align 4, !dbg !1038
  %45 = load float, float* %fn, align 4, !dbg !1039
  %neg = fneg float %45, !dbg !1040
  %46 = call float @llvm.fmuladd.f32(float %neg, float 0x3FF921F000000000, float %44), !dbg !1040
  store float %46, float* %r, align 4, !dbg !1041
  %47 = load float, float* %fn, align 4, !dbg !1042
  %mul = fmul float %47, 0x3EE6A88860000000, !dbg !1043
  store float %mul, float* %w, align 4, !dbg !1044
  %48 = load i32, i32* %n, align 4, !dbg !1045
  %cmp46 = icmp slt i32 %48, 32, !dbg !1046
  br i1 %cmp46, label %land.lhs.true, label %if.else56, !dbg !1047

land.lhs.true:                                    ; preds = %if.then44
  %49 = load i32, i32* %ix, align 4, !dbg !1048
  %and48 = and i32 %49, -256, !dbg !1049
  %50 = load i32, i32* %n, align 4, !dbg !1050
  %sub49 = sub nsw i32 %50, 1, !dbg !1051
  %arrayidx50 = getelementptr inbounds [32 x i32], [32 x i32]* @basicmath_npio2_hw, i32 0, i32 %sub49, !dbg !1052
  %51 = load i32, i32* %arrayidx50, align 4, !dbg !1052
  %cmp51 = icmp ne i32 %and48, %51, !dbg !1053
  br i1 %cmp51, label %if.then53, label %if.else56, !dbg !1045

if.then53:                                        ; preds = %land.lhs.true
  %52 = load float, float* %r, align 4, !dbg !1054
  %53 = load float, float* %w, align 4, !dbg !1055
  %sub54 = fsub float %52, %53, !dbg !1056
  %54 = load float*, float** %y.addr, align 4, !dbg !1057
  %arrayidx55 = getelementptr inbounds float, float* %54, i32 0, !dbg !1057
  store float %sub54, float* %arrayidx55, align 4, !dbg !1058
  br label %if.end97, !dbg !1059

if.else56:                                        ; preds = %land.lhs.true, %if.then44
  %55 = load i32, i32* %ix, align 4, !dbg !1060
  %shr = ashr i32 %55, 23, !dbg !1061
  store i32 %shr, i32* %j, align 4, !dbg !1062
  %56 = load float, float* %r, align 4, !dbg !1063
  %57 = load float, float* %w, align 4, !dbg !1064
  %sub57 = fsub float %56, %57, !dbg !1065
  %58 = load float*, float** %y.addr, align 4, !dbg !1066
  %arrayidx58 = getelementptr inbounds float, float* %58, i32 0, !dbg !1066
  store float %sub57, float* %arrayidx58, align 4, !dbg !1067
  %59 = load float*, float** %y.addr, align 4, !dbg !1068
  %arrayidx60 = getelementptr inbounds float, float* %59, i32 0, !dbg !1068
  %60 = load float, float* %arrayidx60, align 4, !dbg !1068
  %value61 = bitcast %union.ieee_float_shape_type* %gf_u59 to float*, !dbg !1068
  store float %60, float* %value61, align 4, !dbg !1068
  %word62 = bitcast %union.ieee_float_shape_type* %gf_u59 to i32*, !dbg !1068
  %61 = load i32, i32* %word62, align 4, !dbg !1068
  store i32 %61, i32* %high, align 4, !dbg !1068
  %62 = load i32, i32* %j, align 4, !dbg !1069
  %63 = load i32, i32* %high, align 4, !dbg !1070
  %shr63 = lshr i32 %63, 23, !dbg !1071
  %and64 = and i32 %shr63, 255, !dbg !1072
  %sub65 = sub i32 %62, %and64, !dbg !1073
  store i32 %sub65, i32* %i, align 4, !dbg !1074
  %64 = load i32, i32* %i, align 4, !dbg !1075
  %cmp66 = icmp sgt i32 %64, 8, !dbg !1076
  br i1 %cmp66, label %if.then68, label %if.end96, !dbg !1075

if.then68:                                        ; preds = %if.else56
  %65 = load float, float* %r, align 4, !dbg !1077
  store float %65, float* %t, align 4, !dbg !1078
  %66 = load float, float* %fn, align 4, !dbg !1079
  %mul69 = fmul float %66, 0x3EE6A88000000000, !dbg !1080
  store float %mul69, float* %w, align 4, !dbg !1081
  %67 = load float, float* %t, align 4, !dbg !1082
  %68 = load float, float* %w, align 4, !dbg !1083
  %sub70 = fsub float %67, %68, !dbg !1084
  store float %sub70, float* %r, align 4, !dbg !1085
  %69 = load float, float* %fn, align 4, !dbg !1086
  %70 = load float, float* %t, align 4, !dbg !1087
  %71 = load float, float* %r, align 4, !dbg !1088
  %sub72 = fsub float %70, %71, !dbg !1089
  %72 = load float, float* %w, align 4, !dbg !1090
  %sub73 = fsub float %sub72, %72, !dbg !1091
  %neg74 = fneg float %sub73, !dbg !1092
  %73 = call float @llvm.fmuladd.f32(float %69, float 0x3DD0B46100000000, float %neg74), !dbg !1092
  store float %73, float* %w, align 4, !dbg !1093
  %74 = load float, float* %r, align 4, !dbg !1094
  %75 = load float, float* %w, align 4, !dbg !1095
  %sub75 = fsub float %74, %75, !dbg !1096
  %76 = load float*, float** %y.addr, align 4, !dbg !1097
  %arrayidx76 = getelementptr inbounds float, float* %76, i32 0, !dbg !1097
  store float %sub75, float* %arrayidx76, align 4, !dbg !1098
  %77 = load float*, float** %y.addr, align 4, !dbg !1099
  %arrayidx78 = getelementptr inbounds float, float* %77, i32 0, !dbg !1099
  %78 = load float, float* %arrayidx78, align 4, !dbg !1099
  %value79 = bitcast %union.ieee_float_shape_type* %gf_u77 to float*, !dbg !1099
  store float %78, float* %value79, align 4, !dbg !1099
  %word80 = bitcast %union.ieee_float_shape_type* %gf_u77 to i32*, !dbg !1099
  %79 = load i32, i32* %word80, align 4, !dbg !1099
  store i32 %79, i32* %high, align 4, !dbg !1099
  %80 = load i32, i32* %j, align 4, !dbg !1100
  %81 = load i32, i32* %high, align 4, !dbg !1101
  %shr81 = lshr i32 %81, 23, !dbg !1102
  %and82 = and i32 %shr81, 255, !dbg !1103
  %sub83 = sub i32 %80, %and82, !dbg !1104
  store i32 %sub83, i32* %i, align 4, !dbg !1105
  %82 = load i32, i32* %i, align 4, !dbg !1106
  %cmp84 = icmp sgt i32 %82, 25, !dbg !1107
  br i1 %cmp84, label %if.then86, label %if.end95, !dbg !1106

if.then86:                                        ; preds = %if.then68
  %83 = load float, float* %r, align 4, !dbg !1108
  store float %83, float* %t, align 4, !dbg !1109
  %84 = load float, float* %fn, align 4, !dbg !1110
  %mul87 = fmul float %84, 0x3DD0B46000000000, !dbg !1111
  store float %mul87, float* %w, align 4, !dbg !1112
  %85 = load float, float* %t, align 4, !dbg !1113
  %86 = load float, float* %w, align 4, !dbg !1114
  %sub88 = fsub float %85, %86, !dbg !1115
  store float %sub88, float* %r, align 4, !dbg !1116
  %87 = load float, float* %fn, align 4, !dbg !1117
  %88 = load float, float* %t, align 4, !dbg !1118
  %89 = load float, float* %r, align 4, !dbg !1119
  %sub90 = fsub float %88, %89, !dbg !1120
  %90 = load float, float* %w, align 4, !dbg !1121
  %sub91 = fsub float %sub90, %90, !dbg !1122
  %neg92 = fneg float %sub91, !dbg !1123
  %91 = call float @llvm.fmuladd.f32(float %87, float 0x3C91A62640000000, float %neg92), !dbg !1123
  store float %91, float* %w, align 4, !dbg !1124
  %92 = load float, float* %r, align 4, !dbg !1125
  %93 = load float, float* %w, align 4, !dbg !1126
  %sub93 = fsub float %92, %93, !dbg !1127
  %94 = load float*, float** %y.addr, align 4, !dbg !1128
  %arrayidx94 = getelementptr inbounds float, float* %94, i32 0, !dbg !1128
  store float %sub93, float* %arrayidx94, align 4, !dbg !1129
  br label %if.end95, !dbg !1130

if.end95:                                         ; preds = %if.then86, %if.then68
  br label %if.end96, !dbg !1131

if.end96:                                         ; preds = %if.end95, %if.else56
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then53
  %95 = load float, float* %r, align 4, !dbg !1132
  %96 = load float*, float** %y.addr, align 4, !dbg !1133
  %arrayidx98 = getelementptr inbounds float, float* %96, i32 0, !dbg !1133
  %97 = load float, float* %arrayidx98, align 4, !dbg !1133
  %sub99 = fsub float %95, %97, !dbg !1134
  %98 = load float, float* %w, align 4, !dbg !1135
  %sub100 = fsub float %sub99, %98, !dbg !1136
  %99 = load float*, float** %y.addr, align 4, !dbg !1137
  %arrayidx101 = getelementptr inbounds float, float* %99, i32 1, !dbg !1137
  store float %sub100, float* %arrayidx101, align 4, !dbg !1138
  %100 = load i32, i32* %hx, align 4, !dbg !1139
  %cmp102 = icmp slt i32 %100, 0, !dbg !1140
  br i1 %cmp102, label %if.then104, label %if.else111, !dbg !1139

if.then104:                                       ; preds = %if.end97
  %101 = load float*, float** %y.addr, align 4, !dbg !1141
  %arrayidx105 = getelementptr inbounds float, float* %101, i32 0, !dbg !1141
  %102 = load float, float* %arrayidx105, align 4, !dbg !1141
  %fneg = fneg float %102, !dbg !1142
  %103 = load float*, float** %y.addr, align 4, !dbg !1143
  %arrayidx106 = getelementptr inbounds float, float* %103, i32 0, !dbg !1143
  store float %fneg, float* %arrayidx106, align 4, !dbg !1144
  %104 = load float*, float** %y.addr, align 4, !dbg !1145
  %arrayidx107 = getelementptr inbounds float, float* %104, i32 1, !dbg !1145
  %105 = load float, float* %arrayidx107, align 4, !dbg !1145
  %fneg108 = fneg float %105, !dbg !1146
  %106 = load float*, float** %y.addr, align 4, !dbg !1147
  %arrayidx109 = getelementptr inbounds float, float* %106, i32 1, !dbg !1147
  store float %fneg108, float* %arrayidx109, align 4, !dbg !1148
  %107 = load i32, i32* %n, align 4, !dbg !1149
  %sub110 = sub nsw i32 0, %107, !dbg !1150
  store i32 %sub110, i32* %retval, align 4, !dbg !1151
  br label %return, !dbg !1151

if.else111:                                       ; preds = %if.end97
  %108 = load i32, i32* %n, align 4, !dbg !1152
  store i32 %108, i32* %retval, align 4, !dbg !1153
  br label %return, !dbg !1153

if.end112:                                        ; preds = %if.end42
  %109 = load i32, i32* %ix, align 4, !dbg !1154
  %cmp113 = icmp sge i32 %109, 2139095040, !dbg !1155
  br i1 %cmp113, label %if.then115, label %if.end119, !dbg !1154

if.then115:                                       ; preds = %if.end112
  %110 = load float, float* %x.addr, align 4, !dbg !1156
  %111 = load float, float* %x.addr, align 4, !dbg !1157
  %sub116 = fsub float %110, %111, !dbg !1158
  %112 = load float*, float** %y.addr, align 4, !dbg !1159
  %arrayidx117 = getelementptr inbounds float, float* %112, i32 1, !dbg !1159
  store float %sub116, float* %arrayidx117, align 4, !dbg !1160
  %113 = load float*, float** %y.addr, align 4, !dbg !1161
  %arrayidx118 = getelementptr inbounds float, float* %113, i32 0, !dbg !1161
  store float %sub116, float* %arrayidx118, align 4, !dbg !1162
  store i32 0, i32* %retval, align 4, !dbg !1163
  br label %return, !dbg !1163

if.end119:                                        ; preds = %if.end112
  %114 = load float, float* %x.addr, align 4, !dbg !1164
  %115 = load float, float* %x.addr, align 4, !dbg !1165
  %sub120 = fsub float %114, %115, !dbg !1166
  %116 = load float*, float** %y.addr, align 4, !dbg !1167
  %arrayidx121 = getelementptr inbounds float, float* %116, i32 1, !dbg !1167
  store float %sub120, float* %arrayidx121, align 4, !dbg !1168
  %117 = load float*, float** %y.addr, align 4, !dbg !1169
  %arrayidx122 = getelementptr inbounds float, float* %117, i32 0, !dbg !1169
  store float %sub120, float* %arrayidx122, align 4, !dbg !1170
  store i32 0, i32* %retval, align 4, !dbg !1171
  br label %return, !dbg !1171

return:                                           ; preds = %if.end119, %if.then115, %if.else111, %if.then104, %if.end41, %if.end22, %if.then
  %118 = load i32, i32* %retval, align 4, !dbg !1172
  ret i32 %118, !dbg !1172
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___kernel_cosf(float noundef %x, float noundef %y) #0 !dbg !1173 {
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
  store float %y, float* %y.addr, align 4
  %0 = load float, float* %x.addr, align 4, !dbg !1174
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !1174
  store float %0, float* %value, align 4, !dbg !1174
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !1174
  %1 = load i32, i32* %word, align 4, !dbg !1174
  store i32 %1, i32* %ix, align 4, !dbg !1174
  %2 = load i32, i32* %ix, align 4, !dbg !1175
  %and = and i32 %2, 2147483647, !dbg !1175
  store i32 %and, i32* %ix, align 4, !dbg !1175
  %3 = load i32, i32* %ix, align 4, !dbg !1176
  %cmp = icmp slt i32 %3, 838860800, !dbg !1177
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1176

if.then:                                          ; preds = %entry
  %4 = load float, float* %x.addr, align 4, !dbg !1178
  %conv = fptosi float %4 to i32, !dbg !1179
  %cmp1 = icmp eq i32 %conv, 0, !dbg !1180
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !1181

if.then3:                                         ; preds = %if.then
  store float 1.000000e+00, float* %retval, align 4, !dbg !1182
  br label %return, !dbg !1182

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !1183

if.end4:                                          ; preds = %if.end, %entry
  %5 = load float, float* %x.addr, align 4, !dbg !1184
  %6 = load float, float* %x.addr, align 4, !dbg !1185
  %mul = fmul float %5, %6, !dbg !1186
  store float %mul, float* %z, align 4, !dbg !1187
  %7 = load float, float* %z, align 4, !dbg !1188
  %8 = load float, float* %z, align 4, !dbg !1189
  %9 = load float, float* %z, align 4, !dbg !1190
  %10 = load float, float* %z, align 4, !dbg !1191
  %11 = load float, float* %z, align 4, !dbg !1192
  %12 = load float, float* %z, align 4, !dbg !1193
  %13 = call float @llvm.fmuladd.f32(float %12, float 0xBDA8FAE9C0000000, float 0x3E21EE9EC0000000), !dbg !1194
  %14 = call float @llvm.fmuladd.f32(float %11, float %13, float 0xBE927E4F80000000), !dbg !1195
  %15 = call float @llvm.fmuladd.f32(float %10, float %14, float 0x3EFA01A020000000), !dbg !1196
  %16 = call float @llvm.fmuladd.f32(float %9, float %15, float 0xBF56C16C20000000), !dbg !1197
  %17 = call float @llvm.fmuladd.f32(float %8, float %16, float 0x3FA5555560000000), !dbg !1198
  %mul10 = fmul float %7, %17, !dbg !1199
  store float %mul10, float* %r, align 4, !dbg !1200
  %18 = load i32, i32* %ix, align 4, !dbg !1201
  %cmp11 = icmp slt i32 %18, 1050253722, !dbg !1202
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !1201

if.then13:                                        ; preds = %if.end4
  %19 = load float, float* %z, align 4, !dbg !1203
  %20 = load float, float* %z, align 4, !dbg !1204
  %21 = load float, float* %r, align 4, !dbg !1205
  %22 = load float, float* %x.addr, align 4, !dbg !1206
  %23 = load float, float* %y.addr, align 4, !dbg !1207
  %mul16 = fmul float %22, %23, !dbg !1208
  %neg = fneg float %mul16, !dbg !1209
  %24 = call float @llvm.fmuladd.f32(float %20, float %21, float %neg), !dbg !1209
  %neg17 = fneg float %24, !dbg !1210
  %25 = call float @llvm.fmuladd.f32(float 5.000000e-01, float %19, float %neg17), !dbg !1210
  %sub = fsub float 1.000000e+00, %25, !dbg !1211
  store float %sub, float* %retval, align 4, !dbg !1212
  br label %return, !dbg !1212

if.else:                                          ; preds = %if.end4
  %26 = load i32, i32* %ix, align 4, !dbg !1213
  %cmp18 = icmp sgt i32 %26, 1061683200, !dbg !1214
  br i1 %cmp18, label %if.then20, label %if.else21, !dbg !1213

if.then20:                                        ; preds = %if.else
  store float 2.812500e-01, float* %qx, align 4, !dbg !1215
  br label %if.end25, !dbg !1216

if.else21:                                        ; preds = %if.else
  %27 = load i32, i32* %ix, align 4, !dbg !1217
  %sub22 = sub nsw i32 %27, 16777216, !dbg !1217
  %word23 = bitcast %union.ieee_float_shape_type* %sf_u to i32*, !dbg !1217
  store i32 %sub22, i32* %word23, align 4, !dbg !1217
  %value24 = bitcast %union.ieee_float_shape_type* %sf_u to float*, !dbg !1217
  %28 = load float, float* %value24, align 4, !dbg !1217
  store float %28, float* %qx, align 4, !dbg !1217
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then20
  %29 = load float, float* %z, align 4, !dbg !1218
  %30 = load float, float* %qx, align 4, !dbg !1219
  %neg27 = fneg float %30, !dbg !1220
  %31 = call float @llvm.fmuladd.f32(float 5.000000e-01, float %29, float %neg27), !dbg !1220
  store float %31, float* %hz, align 4, !dbg !1221
  %32 = load float, float* %qx, align 4, !dbg !1222
  %sub28 = fsub float 1.000000e+00, %32, !dbg !1223
  store float %sub28, float* %a, align 4, !dbg !1224
  %33 = load float, float* %a, align 4, !dbg !1225
  %34 = load float, float* %hz, align 4, !dbg !1226
  %35 = load float, float* %z, align 4, !dbg !1227
  %36 = load float, float* %r, align 4, !dbg !1228
  %37 = load float, float* %x.addr, align 4, !dbg !1229
  %38 = load float, float* %y.addr, align 4, !dbg !1230
  %mul30 = fmul float %37, %38, !dbg !1231
  %neg31 = fneg float %mul30, !dbg !1232
  %39 = call float @llvm.fmuladd.f32(float %35, float %36, float %neg31), !dbg !1232
  %sub32 = fsub float %34, %39, !dbg !1233
  %sub33 = fsub float %33, %sub32, !dbg !1234
  store float %sub33, float* %retval, align 4, !dbg !1235
  br label %return, !dbg !1235

return:                                           ; preds = %if.end25, %if.then13, %if.then3
  %40 = load float, float* %retval, align 4, !dbg !1236
  ret float %40, !dbg !1236
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___kernel_sinf(float noundef %x, float noundef %y, i32 noundef %iy) #0 !dbg !1237 {
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
  store float %y, float* %y.addr, align 4
  store i32 %iy, i32* %iy.addr, align 4
  %0 = load float, float* %x.addr, align 4, !dbg !1238
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !1238
  store float %0, float* %value, align 4, !dbg !1238
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !1238
  %1 = load i32, i32* %word, align 4, !dbg !1238
  store i32 %1, i32* %ix, align 4, !dbg !1238
  %2 = load i32, i32* %ix, align 4, !dbg !1239
  %and = and i32 %2, 2147483647, !dbg !1239
  store i32 %and, i32* %ix, align 4, !dbg !1239
  %3 = load i32, i32* %ix, align 4, !dbg !1240
  %cmp = icmp slt i32 %3, 838860800, !dbg !1241
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1240

if.then:                                          ; preds = %entry
  %4 = load float, float* %x.addr, align 4, !dbg !1242
  %conv = fptosi float %4 to i32, !dbg !1243
  %cmp1 = icmp eq i32 %conv, 0, !dbg !1244
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !1243

if.then3:                                         ; preds = %if.then
  %5 = load float, float* %x.addr, align 4, !dbg !1245
  store float %5, float* %retval, align 4, !dbg !1246
  br label %return, !dbg !1246

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !1247

if.end4:                                          ; preds = %if.end, %entry
  %6 = load float, float* %x.addr, align 4, !dbg !1248
  %7 = load float, float* %x.addr, align 4, !dbg !1249
  %mul = fmul float %6, %7, !dbg !1250
  store float %mul, float* %z, align 4, !dbg !1251
  %8 = load float, float* %z, align 4, !dbg !1252
  %9 = load float, float* %x.addr, align 4, !dbg !1253
  %mul5 = fmul float %8, %9, !dbg !1254
  store float %mul5, float* %v, align 4, !dbg !1255
  %10 = load float, float* %z, align 4, !dbg !1256
  %11 = load float, float* %z, align 4, !dbg !1257
  %12 = load float, float* %z, align 4, !dbg !1258
  %13 = load float, float* %z, align 4, !dbg !1259
  %14 = call float @llvm.fmuladd.f32(float %13, float 0x3DE5D93A60000000, float 0xBE5AE5E680000000), !dbg !1260
  %15 = call float @llvm.fmuladd.f32(float %12, float %14, float 0x3EC71DE360000000), !dbg !1261
  %16 = call float @llvm.fmuladd.f32(float %11, float %15, float 0xBF2A01A020000000), !dbg !1262
  %17 = call float @llvm.fmuladd.f32(float %10, float %16, float 0x3F81111120000000), !dbg !1263
  store float %17, float* %r, align 4, !dbg !1264
  %18 = load i32, i32* %iy.addr, align 4, !dbg !1265
  %cmp10 = icmp eq i32 %18, 0, !dbg !1266
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !1265

if.then12:                                        ; preds = %if.end4
  %19 = load float, float* %x.addr, align 4, !dbg !1267
  %20 = load float, float* %v, align 4, !dbg !1268
  %21 = load float, float* %z, align 4, !dbg !1269
  %22 = load float, float* %r, align 4, !dbg !1270
  %23 = call float @llvm.fmuladd.f32(float %21, float %22, float 0xBFC5555560000000), !dbg !1271
  %24 = call float @llvm.fmuladd.f32(float %20, float %23, float %19), !dbg !1272
  store float %24, float* %retval, align 4, !dbg !1273
  br label %return, !dbg !1273

if.else:                                          ; preds = %if.end4
  %25 = load float, float* %x.addr, align 4, !dbg !1274
  %26 = load float, float* %z, align 4, !dbg !1275
  %27 = load float, float* %y.addr, align 4, !dbg !1276
  %28 = load float, float* %v, align 4, !dbg !1277
  %29 = load float, float* %r, align 4, !dbg !1278
  %mul16 = fmul float %28, %29, !dbg !1279
  %neg = fneg float %mul16, !dbg !1280
  %30 = call float @llvm.fmuladd.f32(float 5.000000e-01, float %27, float %neg), !dbg !1280
  %31 = load float, float* %y.addr, align 4, !dbg !1281
  %neg18 = fneg float %31, !dbg !1282
  %32 = call float @llvm.fmuladd.f32(float %26, float %30, float %neg18), !dbg !1282
  %33 = load float, float* %v, align 4, !dbg !1283
  %neg20 = fneg float %33, !dbg !1284
  %34 = call float @llvm.fmuladd.f32(float %neg20, float 0xBFC5555560000000, float %32), !dbg !1284
  %sub = fsub float %25, %34, !dbg !1285
  store float %sub, float* %retval, align 4, !dbg !1286
  br label %return, !dbg !1286

return:                                           ; preds = %if.else, %if.then12, %if.then3
  %35 = load float, float* %retval, align 4, !dbg !1287
  ret float %35, !dbg !1287
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___copysignf(float noundef %x, float noundef %y) #0 !dbg !1288 {
entry:
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %gf_u = alloca %union.ieee_float_shape_type, align 4
  %gf_u1 = alloca %union.ieee_float_shape_type, align 4
  %sf_u = alloca %union.ieee_float_shape_type, align 4
  store float %x, float* %x.addr, align 4
  store float %y, float* %y.addr, align 4
  %0 = load float, float* %x.addr, align 4, !dbg !1289
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !1289
  store float %0, float* %value, align 4, !dbg !1289
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !1289
  %1 = load i32, i32* %word, align 4, !dbg !1289
  store i32 %1, i32* %ix, align 4, !dbg !1289
  %2 = load float, float* %y.addr, align 4, !dbg !1290
  %value2 = bitcast %union.ieee_float_shape_type* %gf_u1 to float*, !dbg !1290
  store float %2, float* %value2, align 4, !dbg !1290
  %word3 = bitcast %union.ieee_float_shape_type* %gf_u1 to i32*, !dbg !1290
  %3 = load i32, i32* %word3, align 4, !dbg !1290
  store i32 %3, i32* %iy, align 4, !dbg !1290
  %4 = load i32, i32* %ix, align 4, !dbg !1291
  %and = and i32 %4, 2147483647, !dbg !1291
  %5 = load i32, i32* %iy, align 4, !dbg !1291
  %and4 = and i32 %5, -2147483648, !dbg !1291
  %or = or i32 %and, %and4, !dbg !1291
  %word5 = bitcast %union.ieee_float_shape_type* %sf_u to i32*, !dbg !1291
  store i32 %or, i32* %word5, align 4, !dbg !1291
  %value6 = bitcast %union.ieee_float_shape_type* %sf_u to float*, !dbg !1291
  %6 = load float, float* %value6, align 4, !dbg !1291
  store float %6, float* %x.addr, align 4, !dbg !1291
  %7 = load float, float* %x.addr, align 4, !dbg !1292
  ret float %7, !dbg !1293
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___cosf(float noundef %x) #0 !dbg !1294 {
entry:
  %x.addr = alloca float, align 4
  %y = alloca [2 x float], align 4
  %z = alloca float, align 4
  %n = alloca i32, align 4
  %ix = alloca i32, align 4
  %gf_u = alloca %union.ieee_float_shape_type, align 4
  store float %x, float* %x.addr, align 4
  store float 0.000000e+00, float* %z, align 4, !dbg !1295
  %0 = load float, float* %x.addr, align 4, !dbg !1296
  %value = bitcast %union.ieee_float_shape_type* %gf_u to float*, !dbg !1296
  store float %0, float* %value, align 4, !dbg !1296
  %word = bitcast %union.ieee_float_shape_type* %gf_u to i32*, !dbg !1296
  %1 = load i32, i32* %word, align 4, !dbg !1296
  store i32 %1, i32* %ix, align 4, !dbg !1296
  %2 = load i32, i32* %ix, align 4, !dbg !1297
  %and = and i32 %2, 2147483647, !dbg !1297
  store i32 %and, i32* %ix, align 4, !dbg !1297
  %3 = load float, float* %x.addr, align 4, !dbg !1298
  %4 = load float, float* %x.addr, align 4, !dbg !1299
  %sub = fsub float %3, %4, !dbg !1300
  ret float %sub, !dbg !1301
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/cosf/wcclibm.c", directory: "/workspaces/llvmta/testcases/tmp.pWtFTL6MLi", checksumkind: CSK_MD5, checksum: "f19b597e9d2a9e9dfbd746090c4130cd")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 1, !"branch-target-enforcement", i32 0}
!7 = !{i32 1, !"sign-return-address", i32 0}
!8 = !{i32 1, !"sign-return-address-all", i32 0}
!9 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)"}
!12 = distinct !DISubprogram(name: "basicmath___ieee754_acosf", scope: !13, file: !13, line: 55, type: !14, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "batchtest/cosf/wcclibm.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "f19b597e9d2a9e9dfbd746090c4130cd")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 59, column: 3, scope: !12)
!17 = !DILocation(line: 60, column: 8, scope: !12)
!18 = !DILocation(line: 60, column: 11, scope: !12)
!19 = !DILocation(line: 60, column: 6, scope: !12)
!20 = !DILocation(line: 61, column: 8, scope: !12)
!21 = !DILocation(line: 61, column: 11, scope: !12)
!22 = !DILocation(line: 62, column: 10, scope: !12)
!23 = !DILocation(line: 62, column: 13, scope: !12)
!24 = !DILocation(line: 62, column: 19, scope: !12)
!25 = !DILocation(line: 63, column: 10, scope: !12)
!26 = !DILocation(line: 65, column: 10, scope: !12)
!27 = !DILocation(line: 65, column: 13, scope: !12)
!28 = !DILocation(line: 66, column: 16, scope: !12)
!29 = !DILocation(line: 66, column: 20, scope: !12)
!30 = !DILocation(line: 66, column: 18, scope: !12)
!31 = !DILocation(line: 66, column: 28, scope: !12)
!32 = !DILocation(line: 66, column: 32, scope: !12)
!33 = !DILocation(line: 66, column: 30, scope: !12)
!34 = !DILocation(line: 66, column: 24, scope: !12)
!35 = !DILocation(line: 66, column: 7, scope: !12)
!36 = !DILocation(line: 68, column: 8, scope: !12)
!37 = !DILocation(line: 68, column: 11, scope: !12)
!38 = !DILocation(line: 69, column: 10, scope: !12)
!39 = !DILocation(line: 69, column: 13, scope: !12)
!40 = !DILocation(line: 69, column: 29, scope: !12)
!41 = !DILocation(line: 71, column: 9, scope: !12)
!42 = !DILocation(line: 71, column: 13, scope: !12)
!43 = !DILocation(line: 71, column: 11, scope: !12)
!44 = !DILocation(line: 71, column: 7, scope: !12)
!45 = !DILocation(line: 72, column: 9, scope: !12)
!46 = !DILocation(line: 72, column: 31, scope: !12)
!47 = !DILocation(line: 72, column: 53, scope: !12)
!48 = !DILocation(line: 72, column: 75, scope: !12)
!49 = !DILocation(line: 73, column: 55, scope: !12)
!50 = !DILocation(line: 74, column: 57, scope: !12)
!51 = !DILocation(line: 74, column: 55, scope: !12)
!52 = !DILocation(line: 73, column: 53, scope: !12)
!53 = !DILocation(line: 72, column: 73, scope: !12)
!54 = !DILocation(line: 72, column: 51, scope: !12)
!55 = !DILocation(line: 72, column: 29, scope: !12)
!56 = !DILocation(line: 72, column: 11, scope: !12)
!57 = !DILocation(line: 72, column: 7, scope: !12)
!58 = !DILocation(line: 75, column: 25, scope: !12)
!59 = !DILocation(line: 75, column: 47, scope: !12)
!60 = !DILocation(line: 75, column: 69, scope: !12)
!61 = !DILocation(line: 76, column: 49, scope: !12)
!62 = !DILocation(line: 76, column: 47, scope: !12)
!63 = !DILocation(line: 75, column: 67, scope: !12)
!64 = !DILocation(line: 75, column: 45, scope: !12)
!65 = !DILocation(line: 75, column: 23, scope: !12)
!66 = !DILocation(line: 75, column: 7, scope: !12)
!67 = !DILocation(line: 77, column: 9, scope: !12)
!68 = !DILocation(line: 77, column: 13, scope: !12)
!69 = !DILocation(line: 77, column: 11, scope: !12)
!70 = !DILocation(line: 77, column: 7, scope: !12)
!71 = !DILocation(line: 78, column: 34, scope: !12)
!72 = !DILocation(line: 78, column: 60, scope: !12)
!73 = !DILocation(line: 78, column: 64, scope: !12)
!74 = !DILocation(line: 78, column: 58, scope: !12)
!75 = !DILocation(line: 78, column: 36, scope: !12)
!76 = !DILocation(line: 78, column: 30, scope: !12)
!77 = !DILocation(line: 78, column: 5, scope: !12)
!78 = !DILocation(line: 80, column: 10, scope: !12)
!79 = !DILocation(line: 80, column: 13, scope: !12)
!80 = !DILocation(line: 81, column: 29, scope: !12)
!81 = !DILocation(line: 81, column: 27, scope: !12)
!82 = !DILocation(line: 81, column: 33, scope: !12)
!83 = !DILocation(line: 81, column: 9, scope: !12)
!84 = !DILocation(line: 82, column: 11, scope: !12)
!85 = !DILocation(line: 82, column: 33, scope: !12)
!86 = !DILocation(line: 82, column: 55, scope: !12)
!87 = !DILocation(line: 82, column: 77, scope: !12)
!88 = !DILocation(line: 83, column: 57, scope: !12)
!89 = !DILocation(line: 84, column: 59, scope: !12)
!90 = !DILocation(line: 84, column: 57, scope: !12)
!91 = !DILocation(line: 83, column: 55, scope: !12)
!92 = !DILocation(line: 82, column: 75, scope: !12)
!93 = !DILocation(line: 82, column: 53, scope: !12)
!94 = !DILocation(line: 82, column: 31, scope: !12)
!95 = !DILocation(line: 82, column: 13, scope: !12)
!96 = !DILocation(line: 82, column: 9, scope: !12)
!97 = !DILocation(line: 85, column: 27, scope: !12)
!98 = !DILocation(line: 85, column: 49, scope: !12)
!99 = !DILocation(line: 85, column: 71, scope: !12)
!100 = !DILocation(line: 86, column: 51, scope: !12)
!101 = !DILocation(line: 86, column: 49, scope: !12)
!102 = !DILocation(line: 85, column: 69, scope: !12)
!103 = !DILocation(line: 85, column: 47, scope: !12)
!104 = !DILocation(line: 85, column: 25, scope: !12)
!105 = !DILocation(line: 85, column: 9, scope: !12)
!106 = !DILocation(line: 87, column: 38, scope: !12)
!107 = !DILocation(line: 87, column: 11, scope: !12)
!108 = !DILocation(line: 87, column: 9, scope: !12)
!109 = !DILocation(line: 88, column: 11, scope: !12)
!110 = !DILocation(line: 88, column: 15, scope: !12)
!111 = !DILocation(line: 88, column: 13, scope: !12)
!112 = !DILocation(line: 88, column: 9, scope: !12)
!113 = !DILocation(line: 89, column: 11, scope: !12)
!114 = !DILocation(line: 89, column: 15, scope: !12)
!115 = !DILocation(line: 89, column: 17, scope: !12)
!116 = !DILocation(line: 89, column: 9, scope: !12)
!117 = !DILocation(line: 90, column: 47, scope: !12)
!118 = !DILocation(line: 90, column: 51, scope: !12)
!119 = !DILocation(line: 90, column: 49, scope: !12)
!120 = !DILocation(line: 90, column: 27, scope: !12)
!121 = !DILocation(line: 90, column: 7, scope: !12)
!122 = !DILocation(line: 93, column: 29, scope: !12)
!123 = !DILocation(line: 93, column: 27, scope: !12)
!124 = !DILocation(line: 93, column: 33, scope: !12)
!125 = !DILocation(line: 93, column: 9, scope: !12)
!126 = !DILocation(line: 94, column: 38, scope: !12)
!127 = !DILocation(line: 94, column: 11, scope: !12)
!128 = !DILocation(line: 94, column: 9, scope: !12)
!129 = !DILocation(line: 95, column: 12, scope: !12)
!130 = !DILocation(line: 95, column: 10, scope: !12)
!131 = !DILocation(line: 96, column: 7, scope: !12)
!132 = !DILocation(line: 97, column: 7, scope: !12)
!133 = !DILocation(line: 98, column: 14, scope: !12)
!134 = !DILocation(line: 98, column: 18, scope: !12)
!135 = !DILocation(line: 98, column: 23, scope: !12)
!136 = !DILocation(line: 98, column: 16, scope: !12)
!137 = !DILocation(line: 98, column: 32, scope: !12)
!138 = !DILocation(line: 98, column: 36, scope: !12)
!139 = !DILocation(line: 98, column: 34, scope: !12)
!140 = !DILocation(line: 98, column: 28, scope: !12)
!141 = !DILocation(line: 98, column: 10, scope: !12)
!142 = !DILocation(line: 99, column: 11, scope: !12)
!143 = !DILocation(line: 99, column: 33, scope: !12)
!144 = !DILocation(line: 99, column: 55, scope: !12)
!145 = !DILocation(line: 99, column: 77, scope: !12)
!146 = !DILocation(line: 100, column: 57, scope: !12)
!147 = !DILocation(line: 101, column: 59, scope: !12)
!148 = !DILocation(line: 101, column: 57, scope: !12)
!149 = !DILocation(line: 100, column: 55, scope: !12)
!150 = !DILocation(line: 99, column: 75, scope: !12)
!151 = !DILocation(line: 99, column: 53, scope: !12)
!152 = !DILocation(line: 99, column: 31, scope: !12)
!153 = !DILocation(line: 99, column: 13, scope: !12)
!154 = !DILocation(line: 99, column: 9, scope: !12)
!155 = !DILocation(line: 102, column: 27, scope: !12)
!156 = !DILocation(line: 102, column: 49, scope: !12)
!157 = !DILocation(line: 102, column: 71, scope: !12)
!158 = !DILocation(line: 103, column: 51, scope: !12)
!159 = !DILocation(line: 103, column: 49, scope: !12)
!160 = !DILocation(line: 102, column: 69, scope: !12)
!161 = !DILocation(line: 102, column: 47, scope: !12)
!162 = !DILocation(line: 102, column: 25, scope: !12)
!163 = !DILocation(line: 102, column: 9, scope: !12)
!164 = !DILocation(line: 104, column: 11, scope: !12)
!165 = !DILocation(line: 104, column: 15, scope: !12)
!166 = !DILocation(line: 104, column: 13, scope: !12)
!167 = !DILocation(line: 104, column: 9, scope: !12)
!168 = !DILocation(line: 105, column: 11, scope: !12)
!169 = !DILocation(line: 105, column: 15, scope: !12)
!170 = !DILocation(line: 105, column: 19, scope: !12)
!171 = !DILocation(line: 105, column: 17, scope: !12)
!172 = !DILocation(line: 105, column: 9, scope: !12)
!173 = !DILocation(line: 106, column: 32, scope: !12)
!174 = !DILocation(line: 106, column: 37, scope: !12)
!175 = !DILocation(line: 106, column: 35, scope: !12)
!176 = !DILocation(line: 106, column: 28, scope: !12)
!177 = !DILocation(line: 106, column: 7, scope: !12)
!178 = !DILocation(line: 108, column: 1, scope: !12)
!179 = distinct !DISubprogram(name: "basicmath___ieee754_sqrtf", scope: !13, file: !13, line: 493, type: !14, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!180 = !DILocation(line: 496, column: 11, scope: !179)
!181 = !DILocation(line: 500, column: 3, scope: !179)
!182 = !DILocation(line: 503, column: 10, scope: !179)
!183 = !DILocation(line: 503, column: 13, scope: !179)
!184 = !DILocation(line: 503, column: 28, scope: !179)
!185 = !DILocation(line: 503, column: 8, scope: !179)
!186 = !DILocation(line: 504, column: 12, scope: !179)
!187 = !DILocation(line: 504, column: 16, scope: !179)
!188 = !DILocation(line: 504, column: 20, scope: !179)
!189 = !DILocation(line: 504, column: 18, scope: !179)
!190 = !DILocation(line: 504, column: 5, scope: !179)
!191 = !DILocation(line: 508, column: 8, scope: !179)
!192 = !DILocation(line: 508, column: 11, scope: !179)
!193 = !DILocation(line: 509, column: 12, scope: !179)
!194 = !DILocation(line: 509, column: 20, scope: !179)
!195 = !DILocation(line: 509, column: 19, scope: !179)
!196 = !DILocation(line: 509, column: 15, scope: !179)
!197 = !DILocation(line: 509, column: 29, scope: !179)
!198 = !DILocation(line: 509, column: 10, scope: !179)
!199 = !DILocation(line: 509, column: 43, scope: !179)
!200 = !DILocation(line: 509, column: 36, scope: !179)
!201 = !DILocation(line: 511, column: 12, scope: !179)
!202 = !DILocation(line: 511, column: 15, scope: !179)
!203 = !DILocation(line: 512, column: 18, scope: !179)
!204 = !DILocation(line: 512, column: 22, scope: !179)
!205 = !DILocation(line: 512, column: 20, scope: !179)
!206 = !DILocation(line: 512, column: 30, scope: !179)
!207 = !DILocation(line: 512, column: 34, scope: !179)
!208 = !DILocation(line: 512, column: 32, scope: !179)
!209 = !DILocation(line: 512, column: 26, scope: !179)
!210 = !DILocation(line: 512, column: 9, scope: !179)
!211 = !DILocation(line: 513, column: 3, scope: !179)
!212 = !DILocation(line: 515, column: 9, scope: !179)
!213 = !DILocation(line: 515, column: 12, scope: !179)
!214 = !DILocation(line: 515, column: 5, scope: !179)
!215 = !DILocation(line: 516, column: 8, scope: !179)
!216 = !DILocation(line: 516, column: 10, scope: !179)
!217 = !DILocation(line: 518, column: 13, scope: !179)
!218 = !DILocation(line: 518, column: 11, scope: !179)
!219 = !DILocation(line: 518, column: 20, scope: !179)
!220 = !DILocation(line: 518, column: 23, scope: !179)
!221 = !DILocation(line: 518, column: 38, scope: !179)
!222 = !DILocation(line: 518, column: 5, scope: !179)
!223 = !DILocation(line: 519, column: 10, scope: !179)
!224 = !DILocation(line: 519, column: 7, scope: !179)
!225 = !DILocation(line: 518, column: 45, scope: !179)
!226 = distinct !{!226, !222, !227, !228}
!227 = !DILocation(line: 519, column: 14, scope: !179)
!228 = !{!"llvm.loop.mustprogress"}
!229 = !DILocation(line: 520, column: 10, scope: !179)
!230 = !DILocation(line: 520, column: 12, scope: !179)
!231 = !DILocation(line: 520, column: 7, scope: !179)
!232 = !DILocation(line: 521, column: 3, scope: !179)
!233 = !DILocation(line: 522, column: 5, scope: !179)
!234 = !DILocation(line: 523, column: 10, scope: !179)
!235 = !DILocation(line: 523, column: 13, scope: !179)
!236 = !DILocation(line: 523, column: 28, scope: !179)
!237 = !DILocation(line: 523, column: 6, scope: !179)
!238 = !DILocation(line: 524, column: 8, scope: !179)
!239 = !DILocation(line: 524, column: 10, scope: !179)
!240 = !DILocation(line: 525, column: 11, scope: !179)
!241 = !DILocation(line: 525, column: 8, scope: !179)
!242 = !DILocation(line: 525, column: 5, scope: !179)
!243 = !DILocation(line: 526, column: 5, scope: !179)
!244 = !DILocation(line: 529, column: 9, scope: !179)
!245 = !DILocation(line: 529, column: 6, scope: !179)
!246 = !DILocation(line: 530, column: 9, scope: !179)
!247 = !DILocation(line: 530, column: 5, scope: !179)
!248 = !DILocation(line: 531, column: 5, scope: !179)
!249 = !DILocation(line: 534, column: 3, scope: !179)
!250 = !DILocation(line: 534, column: 11, scope: !179)
!251 = !DILocation(line: 534, column: 13, scope: !179)
!252 = !DILocation(line: 535, column: 9, scope: !179)
!253 = !DILocation(line: 535, column: 13, scope: !179)
!254 = !DILocation(line: 535, column: 11, scope: !179)
!255 = !DILocation(line: 535, column: 7, scope: !179)
!256 = !DILocation(line: 537, column: 14, scope: !179)
!257 = !DILocation(line: 537, column: 18, scope: !179)
!258 = !DILocation(line: 537, column: 16, scope: !179)
!259 = !DILocation(line: 537, column: 12, scope: !179)
!260 = !DILocation(line: 538, column: 14, scope: !179)
!261 = !DILocation(line: 538, column: 11, scope: !179)
!262 = !DILocation(line: 539, column: 14, scope: !179)
!263 = !DILocation(line: 539, column: 11, scope: !179)
!264 = !DILocation(line: 541, column: 11, scope: !179)
!265 = !DILocation(line: 541, column: 8, scope: !179)
!266 = !DILocation(line: 542, column: 7, scope: !179)
!267 = distinct !{!267, !249, !268, !228}
!268 = !DILocation(line: 543, column: 3, scope: !179)
!269 = !DILocation(line: 546, column: 8, scope: !179)
!270 = !DILocation(line: 546, column: 11, scope: !179)
!271 = !DILocation(line: 547, column: 7, scope: !179)
!272 = !DILocation(line: 548, column: 10, scope: !179)
!273 = !DILocation(line: 548, column: 12, scope: !179)
!274 = !DILocation(line: 549, column: 9, scope: !179)
!275 = !DILocation(line: 550, column: 12, scope: !179)
!276 = !DILocation(line: 550, column: 14, scope: !179)
!277 = !DILocation(line: 551, column: 11, scope: !179)
!278 = !DILocation(line: 551, column: 9, scope: !179)
!279 = !DILocation(line: 553, column: 16, scope: !179)
!280 = !DILocation(line: 553, column: 18, scope: !179)
!281 = !DILocation(line: 553, column: 11, scope: !179)
!282 = !DILocation(line: 554, column: 5, scope: !179)
!283 = !DILocation(line: 555, column: 3, scope: !179)
!284 = !DILocation(line: 556, column: 10, scope: !179)
!285 = !DILocation(line: 556, column: 12, scope: !179)
!286 = !DILocation(line: 556, column: 19, scope: !179)
!287 = !DILocation(line: 556, column: 6, scope: !179)
!288 = !DILocation(line: 557, column: 11, scope: !179)
!289 = !DILocation(line: 557, column: 13, scope: !179)
!290 = !DILocation(line: 557, column: 6, scope: !179)
!291 = !DILocation(line: 558, column: 3, scope: !179)
!292 = !DILocation(line: 559, column: 10, scope: !179)
!293 = !DILocation(line: 559, column: 3, scope: !179)
!294 = !DILocation(line: 560, column: 1, scope: !179)
!295 = distinct !DISubprogram(name: "basicmath___ieee754_powf", scope: !13, file: !13, line: 141, type: !14, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!296 = !DILocation(line: 148, column: 3, scope: !295)
!297 = !DILocation(line: 149, column: 3, scope: !295)
!298 = !DILocation(line: 150, column: 8, scope: !295)
!299 = !DILocation(line: 150, column: 11, scope: !295)
!300 = !DILocation(line: 150, column: 6, scope: !295)
!301 = !DILocation(line: 151, column: 8, scope: !295)
!302 = !DILocation(line: 151, column: 11, scope: !295)
!303 = !DILocation(line: 151, column: 6, scope: !295)
!304 = !DILocation(line: 154, column: 8, scope: !295)
!305 = !DILocation(line: 154, column: 11, scope: !295)
!306 = !DILocation(line: 154, column: 18, scope: !295)
!307 = !DILocation(line: 157, column: 8, scope: !295)
!308 = !DILocation(line: 157, column: 10, scope: !295)
!309 = !DILocation(line: 157, column: 20, scope: !295)
!310 = !DILocation(line: 158, column: 8, scope: !295)
!311 = !DILocation(line: 158, column: 10, scope: !295)
!312 = !DILocation(line: 158, column: 19, scope: !295)
!313 = !DILocation(line: 158, column: 42, scope: !295)
!314 = !DILocation(line: 158, column: 22, scope: !295)
!315 = !DILocation(line: 158, column: 48, scope: !295)
!316 = !DILocation(line: 161, column: 8, scope: !295)
!317 = !DILocation(line: 161, column: 11, scope: !295)
!318 = !DILocation(line: 161, column: 24, scope: !295)
!319 = !DILocation(line: 162, column: 8, scope: !295)
!320 = !DILocation(line: 162, column: 11, scope: !295)
!321 = !DILocation(line: 163, column: 12, scope: !295)
!322 = !DILocation(line: 163, column: 16, scope: !295)
!323 = !DILocation(line: 163, column: 14, scope: !295)
!324 = !DILocation(line: 163, column: 5, scope: !295)
!325 = !DILocation(line: 170, column: 11, scope: !295)
!326 = !DILocation(line: 171, column: 8, scope: !295)
!327 = !DILocation(line: 171, column: 11, scope: !295)
!328 = !DILocation(line: 172, column: 10, scope: !295)
!329 = !DILocation(line: 172, column: 13, scope: !295)
!330 = !DILocation(line: 172, column: 36, scope: !295)
!331 = !DILocation(line: 172, column: 29, scope: !295)
!332 = !DILocation(line: 174, column: 12, scope: !295)
!333 = !DILocation(line: 174, column: 15, scope: !295)
!334 = !DILocation(line: 175, column: 15, scope: !295)
!335 = !DILocation(line: 175, column: 18, scope: !295)
!336 = !DILocation(line: 175, column: 26, scope: !295)
!337 = !DILocation(line: 175, column: 11, scope: !295)
!338 = !DILocation(line: 176, column: 13, scope: !295)
!339 = !DILocation(line: 176, column: 26, scope: !295)
!340 = !DILocation(line: 176, column: 24, scope: !295)
!341 = !DILocation(line: 176, column: 16, scope: !295)
!342 = !DILocation(line: 176, column: 11, scope: !295)
!343 = !DILocation(line: 177, column: 16, scope: !295)
!344 = !DILocation(line: 177, column: 28, scope: !295)
!345 = !DILocation(line: 177, column: 26, scope: !295)
!346 = !DILocation(line: 177, column: 18, scope: !295)
!347 = !DILocation(line: 177, column: 37, scope: !295)
!348 = !DILocation(line: 177, column: 34, scope: !295)
!349 = !DILocation(line: 177, column: 14, scope: !295)
!350 = !DILocation(line: 177, column: 57, scope: !295)
!351 = !DILocation(line: 177, column: 59, scope: !295)
!352 = !DILocation(line: 177, column: 53, scope: !295)
!353 = !DILocation(line: 177, column: 49, scope: !295)
!354 = !DILocation(line: 177, column: 42, scope: !295)
!355 = !DILocation(line: 178, column: 7, scope: !295)
!356 = !DILocation(line: 179, column: 3, scope: !295)
!357 = !DILocation(line: 182, column: 8, scope: !295)
!358 = !DILocation(line: 182, column: 11, scope: !295)
!359 = !DILocation(line: 183, column: 10, scope: !295)
!360 = !DILocation(line: 183, column: 13, scope: !295)
!361 = !DILocation(line: 184, column: 15, scope: !295)
!362 = !DILocation(line: 184, column: 19, scope: !295)
!363 = !DILocation(line: 184, column: 17, scope: !295)
!364 = !DILocation(line: 184, column: 7, scope: !295)
!365 = !DILocation(line: 186, column: 12, scope: !295)
!366 = !DILocation(line: 186, column: 15, scope: !295)
!367 = !DILocation(line: 187, column: 18, scope: !295)
!368 = !DILocation(line: 187, column: 21, scope: !295)
!369 = !DILocation(line: 187, column: 16, scope: !295)
!370 = !DILocation(line: 187, column: 30, scope: !295)
!371 = !DILocation(line: 187, column: 9, scope: !295)
!372 = !DILocation(line: 189, column: 18, scope: !295)
!373 = !DILocation(line: 189, column: 21, scope: !295)
!374 = !DILocation(line: 189, column: 16, scope: !295)
!375 = !DILocation(line: 189, column: 30, scope: !295)
!376 = !DILocation(line: 189, column: 29, scope: !295)
!377 = !DILocation(line: 189, column: 9, scope: !295)
!378 = !DILocation(line: 191, column: 8, scope: !295)
!379 = !DILocation(line: 191, column: 11, scope: !295)
!380 = !DILocation(line: 192, column: 10, scope: !295)
!381 = !DILocation(line: 192, column: 13, scope: !295)
!382 = !DILocation(line: 192, column: 42, scope: !295)
!383 = !DILocation(line: 192, column: 40, scope: !295)
!384 = !DILocation(line: 192, column: 19, scope: !295)
!385 = !DILocation(line: 193, column: 17, scope: !295)
!386 = !DILocation(line: 193, column: 10, scope: !295)
!387 = !DILocation(line: 195, column: 8, scope: !295)
!388 = !DILocation(line: 195, column: 11, scope: !295)
!389 = !DILocation(line: 195, column: 34, scope: !295)
!390 = !DILocation(line: 195, column: 38, scope: !295)
!391 = !DILocation(line: 195, column: 36, scope: !295)
!392 = !DILocation(line: 195, column: 27, scope: !295)
!393 = !DILocation(line: 196, column: 8, scope: !295)
!394 = !DILocation(line: 196, column: 11, scope: !295)
!395 = !DILocation(line: 197, column: 10, scope: !295)
!396 = !DILocation(line: 197, column: 13, scope: !295)
!397 = !DILocation(line: 198, column: 41, scope: !295)
!398 = !DILocation(line: 198, column: 14, scope: !295)
!399 = !DILocation(line: 198, column: 7, scope: !295)
!400 = !DILocation(line: 199, column: 3, scope: !295)
!401 = !DILocation(line: 201, column: 29, scope: !295)
!402 = !DILocation(line: 201, column: 10, scope: !295)
!403 = !DILocation(line: 201, column: 8, scope: !295)
!404 = !DILocation(line: 203, column: 8, scope: !295)
!405 = !DILocation(line: 203, column: 11, scope: !295)
!406 = !DILocation(line: 203, column: 25, scope: !295)
!407 = !DILocation(line: 203, column: 28, scope: !295)
!408 = !DILocation(line: 203, column: 31, scope: !295)
!409 = !DILocation(line: 203, column: 36, scope: !295)
!410 = !DILocation(line: 203, column: 39, scope: !295)
!411 = !DILocation(line: 203, column: 42, scope: !295)
!412 = !DILocation(line: 204, column: 9, scope: !295)
!413 = !DILocation(line: 204, column: 7, scope: !295)
!414 = !DILocation(line: 205, column: 10, scope: !295)
!415 = !DILocation(line: 205, column: 13, scope: !295)
!416 = !DILocation(line: 205, column: 39, scope: !295)
!417 = !DILocation(line: 205, column: 37, scope: !295)
!418 = !DILocation(line: 205, column: 21, scope: !295)
!419 = !DILocation(line: 205, column: 19, scope: !295)
!420 = !DILocation(line: 206, column: 10, scope: !295)
!421 = !DILocation(line: 206, column: 13, scope: !295)
!422 = !DILocation(line: 207, column: 16, scope: !295)
!423 = !DILocation(line: 207, column: 19, scope: !295)
!424 = !DILocation(line: 207, column: 36, scope: !295)
!425 = !DILocation(line: 207, column: 34, scope: !295)
!426 = !DILocation(line: 207, column: 45, scope: !295)
!427 = !DILocation(line: 207, column: 12, scope: !295)
!428 = !DILocation(line: 208, column: 15, scope: !295)
!429 = !DILocation(line: 208, column: 19, scope: !295)
!430 = !DILocation(line: 208, column: 17, scope: !295)
!431 = !DILocation(line: 208, column: 27, scope: !295)
!432 = !DILocation(line: 208, column: 31, scope: !295)
!433 = !DILocation(line: 208, column: 29, scope: !295)
!434 = !DILocation(line: 208, column: 23, scope: !295)
!435 = !DILocation(line: 208, column: 11, scope: !295)
!436 = !DILocation(line: 209, column: 7, scope: !295)
!437 = !DILocation(line: 210, column: 14, scope: !295)
!438 = !DILocation(line: 210, column: 21, scope: !295)
!439 = !DILocation(line: 211, column: 16, scope: !295)
!440 = !DILocation(line: 211, column: 15, scope: !295)
!441 = !DILocation(line: 211, column: 13, scope: !295)
!442 = !DILocation(line: 211, column: 11, scope: !295)
!443 = !DILocation(line: 212, column: 5, scope: !295)
!444 = !DILocation(line: 213, column: 12, scope: !295)
!445 = !DILocation(line: 213, column: 5, scope: !295)
!446 = !DILocation(line: 217, column: 27, scope: !295)
!447 = !DILocation(line: 217, column: 30, scope: !295)
!448 = !DILocation(line: 217, column: 38, scope: !295)
!449 = !DILocation(line: 217, column: 46, scope: !295)
!450 = !DILocation(line: 217, column: 44, scope: !295)
!451 = !DILocation(line: 217, column: 55, scope: !295)
!452 = !DILocation(line: 217, column: 8, scope: !295)
!453 = !DILocation(line: 217, column: 71, scope: !295)
!454 = !DILocation(line: 217, column: 75, scope: !295)
!455 = !DILocation(line: 217, column: 73, scope: !295)
!456 = !DILocation(line: 218, column: 11, scope: !295)
!457 = !DILocation(line: 218, column: 15, scope: !295)
!458 = !DILocation(line: 218, column: 13, scope: !295)
!459 = !DILocation(line: 217, column: 79, scope: !295)
!460 = !DILocation(line: 217, column: 62, scope: !295)
!461 = !DILocation(line: 221, column: 8, scope: !295)
!462 = !DILocation(line: 221, column: 11, scope: !295)
!463 = !DILocation(line: 223, column: 10, scope: !295)
!464 = !DILocation(line: 223, column: 13, scope: !295)
!465 = !DILocation(line: 223, column: 37, scope: !295)
!466 = !DILocation(line: 223, column: 40, scope: !295)
!467 = !DILocation(line: 223, column: 35, scope: !295)
!468 = !DILocation(line: 223, column: 28, scope: !295)
!469 = !DILocation(line: 225, column: 10, scope: !295)
!470 = !DILocation(line: 225, column: 13, scope: !295)
!471 = !DILocation(line: 225, column: 37, scope: !295)
!472 = !DILocation(line: 225, column: 40, scope: !295)
!473 = !DILocation(line: 225, column: 35, scope: !295)
!474 = !DILocation(line: 225, column: 28, scope: !295)
!475 = !DILocation(line: 229, column: 9, scope: !295)
!476 = !DILocation(line: 229, column: 11, scope: !295)
!477 = !DILocation(line: 229, column: 7, scope: !295)
!478 = !DILocation(line: 230, column: 11, scope: !295)
!479 = !DILocation(line: 230, column: 15, scope: !295)
!480 = !DILocation(line: 230, column: 13, scope: !295)
!481 = !DILocation(line: 230, column: 39, scope: !295)
!482 = !DILocation(line: 230, column: 72, scope: !295)
!483 = !DILocation(line: 230, column: 70, scope: !295)
!484 = !DILocation(line: 230, column: 37, scope: !295)
!485 = !DILocation(line: 230, column: 19, scope: !295)
!486 = !DILocation(line: 230, column: 7, scope: !295)
!487 = !DILocation(line: 232, column: 29, scope: !295)
!488 = !DILocation(line: 232, column: 27, scope: !295)
!489 = !DILocation(line: 232, column: 7, scope: !295)
!490 = !DILocation(line: 233, column: 9, scope: !295)
!491 = !DILocation(line: 233, column: 33, scope: !295)
!492 = !DILocation(line: 233, column: 35, scope: !295)
!493 = !DILocation(line: 233, column: 31, scope: !295)
!494 = !DILocation(line: 233, column: 7, scope: !295)
!495 = !DILocation(line: 234, column: 10, scope: !295)
!496 = !DILocation(line: 234, column: 14, scope: !295)
!497 = !DILocation(line: 234, column: 12, scope: !295)
!498 = !DILocation(line: 234, column: 8, scope: !295)
!499 = !DILocation(line: 235, column: 5, scope: !295)
!500 = !DILocation(line: 236, column: 5, scope: !295)
!501 = !DILocation(line: 237, column: 10, scope: !295)
!502 = !DILocation(line: 237, column: 16, scope: !295)
!503 = !DILocation(line: 237, column: 21, scope: !295)
!504 = !DILocation(line: 237, column: 19, scope: !295)
!505 = !DILocation(line: 237, column: 12, scope: !295)
!506 = !DILocation(line: 237, column: 8, scope: !295)
!507 = !DILocation(line: 238, column: 3, scope: !295)
!508 = !DILocation(line: 240, column: 7, scope: !295)
!509 = !DILocation(line: 242, column: 10, scope: !295)
!510 = !DILocation(line: 242, column: 13, scope: !295)
!511 = !DILocation(line: 243, column: 10, scope: !295)
!512 = !DILocation(line: 244, column: 9, scope: !295)
!513 = !DILocation(line: 245, column: 7, scope: !295)
!514 = !DILocation(line: 246, column: 5, scope: !295)
!515 = !DILocation(line: 247, column: 15, scope: !295)
!516 = !DILocation(line: 247, column: 20, scope: !295)
!517 = !DILocation(line: 247, column: 28, scope: !295)
!518 = !DILocation(line: 247, column: 8, scope: !295)
!519 = !DILocation(line: 248, column: 10, scope: !295)
!520 = !DILocation(line: 248, column: 13, scope: !295)
!521 = !DILocation(line: 248, column: 8, scope: !295)
!522 = !DILocation(line: 250, column: 10, scope: !295)
!523 = !DILocation(line: 250, column: 12, scope: !295)
!524 = !DILocation(line: 250, column: 8, scope: !295)
!525 = !DILocation(line: 251, column: 10, scope: !295)
!526 = !DILocation(line: 251, column: 12, scope: !295)
!527 = !DILocation(line: 251, column: 28, scope: !295)
!528 = !DILocation(line: 251, column: 26, scope: !295)
!529 = !DILocation(line: 253, column: 12, scope: !295)
!530 = !DILocation(line: 253, column: 14, scope: !295)
!531 = !DILocation(line: 253, column: 29, scope: !295)
!532 = !DILocation(line: 253, column: 27, scope: !295)
!533 = !DILocation(line: 255, column: 11, scope: !295)
!534 = !DILocation(line: 256, column: 11, scope: !295)
!535 = !DILocation(line: 257, column: 12, scope: !295)
!536 = !DILocation(line: 259, column: 5, scope: !295)
!537 = !DILocation(line: 262, column: 9, scope: !295)
!538 = !DILocation(line: 262, column: 28, scope: !295)
!539 = !DILocation(line: 262, column: 14, scope: !295)
!540 = !DILocation(line: 262, column: 12, scope: !295)
!541 = !DILocation(line: 262, column: 7, scope: !295)
!542 = !DILocation(line: 263, column: 27, scope: !295)
!543 = !DILocation(line: 263, column: 46, scope: !295)
!544 = !DILocation(line: 263, column: 32, scope: !295)
!545 = !DILocation(line: 263, column: 30, scope: !295)
!546 = !DILocation(line: 263, column: 23, scope: !295)
!547 = !DILocation(line: 263, column: 7, scope: !295)
!548 = !DILocation(line: 264, column: 9, scope: !295)
!549 = !DILocation(line: 264, column: 13, scope: !295)
!550 = !DILocation(line: 264, column: 11, scope: !295)
!551 = !DILocation(line: 264, column: 7, scope: !295)
!552 = !DILocation(line: 265, column: 11, scope: !295)
!553 = !DILocation(line: 265, column: 9, scope: !295)
!554 = !DILocation(line: 266, column: 5, scope: !295)
!555 = !DILocation(line: 267, column: 5, scope: !295)
!556 = !DILocation(line: 269, column: 5, scope: !295)
!557 = !DILocation(line: 270, column: 11, scope: !295)
!558 = !DILocation(line: 270, column: 18, scope: !295)
!559 = !DILocation(line: 270, column: 38, scope: !295)
!560 = !DILocation(line: 270, column: 24, scope: !295)
!561 = !DILocation(line: 270, column: 22, scope: !295)
!562 = !DILocation(line: 270, column: 14, scope: !295)
!563 = !DILocation(line: 270, column: 9, scope: !295)
!564 = !DILocation(line: 271, column: 11, scope: !295)
!565 = !DILocation(line: 271, column: 19, scope: !295)
!566 = !DILocation(line: 271, column: 23, scope: !295)
!567 = !DILocation(line: 271, column: 29, scope: !295)
!568 = !DILocation(line: 271, column: 21, scope: !295)
!569 = !DILocation(line: 271, column: 37, scope: !295)
!570 = !DILocation(line: 271, column: 43, scope: !295)
!571 = !DILocation(line: 271, column: 35, scope: !295)
!572 = !DILocation(line: 271, column: 13, scope: !295)
!573 = !DILocation(line: 271, column: 9, scope: !295)
!574 = !DILocation(line: 273, column: 10, scope: !295)
!575 = !DILocation(line: 273, column: 14, scope: !295)
!576 = !DILocation(line: 273, column: 12, scope: !295)
!577 = !DILocation(line: 273, column: 8, scope: !295)
!578 = !DILocation(line: 274, column: 9, scope: !295)
!579 = !DILocation(line: 274, column: 14, scope: !295)
!580 = !DILocation(line: 274, column: 12, scope: !295)
!581 = !DILocation(line: 274, column: 36, scope: !295)
!582 = !DILocation(line: 274, column: 58, scope: !295)
!583 = !DILocation(line: 275, column: 60, scope: !295)
!584 = !DILocation(line: 275, column: 82, scope: !295)
!585 = !DILocation(line: 276, column: 64, scope: !295)
!586 = !DILocation(line: 276, column: 62, scope: !295)
!587 = !DILocation(line: 275, column: 80, scope: !295)
!588 = !DILocation(line: 275, column: 58, scope: !295)
!589 = !DILocation(line: 274, column: 56, scope: !295)
!590 = !DILocation(line: 274, column: 34, scope: !295)
!591 = !DILocation(line: 274, column: 17, scope: !295)
!592 = !DILocation(line: 274, column: 7, scope: !295)
!593 = !DILocation(line: 277, column: 10, scope: !295)
!594 = !DILocation(line: 277, column: 18, scope: !295)
!595 = !DILocation(line: 277, column: 24, scope: !295)
!596 = !DILocation(line: 277, column: 22, scope: !295)
!597 = !DILocation(line: 277, column: 7, scope: !295)
!598 = !DILocation(line: 278, column: 11, scope: !295)
!599 = !DILocation(line: 278, column: 17, scope: !295)
!600 = !DILocation(line: 278, column: 15, scope: !295)
!601 = !DILocation(line: 278, column: 9, scope: !295)
!602 = !DILocation(line: 279, column: 27, scope: !295)
!603 = !DILocation(line: 279, column: 25, scope: !295)
!604 = !DILocation(line: 279, column: 32, scope: !295)
!605 = !DILocation(line: 279, column: 30, scope: !295)
!606 = !DILocation(line: 279, column: 9, scope: !295)
!607 = !DILocation(line: 280, column: 5, scope: !295)
!608 = !DILocation(line: 281, column: 5, scope: !295)
!609 = !DILocation(line: 282, column: 11, scope: !295)
!610 = !DILocation(line: 282, column: 19, scope: !295)
!611 = !DILocation(line: 282, column: 23, scope: !295)
!612 = !DILocation(line: 282, column: 43, scope: !295)
!613 = !DILocation(line: 282, column: 41, scope: !295)
!614 = !DILocation(line: 282, column: 13, scope: !295)
!615 = !DILocation(line: 282, column: 9, scope: !295)
!616 = !DILocation(line: 284, column: 9, scope: !295)
!617 = !DILocation(line: 284, column: 15, scope: !295)
!618 = !DILocation(line: 284, column: 13, scope: !295)
!619 = !DILocation(line: 284, column: 7, scope: !295)
!620 = !DILocation(line: 285, column: 9, scope: !295)
!621 = !DILocation(line: 285, column: 15, scope: !295)
!622 = !DILocation(line: 285, column: 21, scope: !295)
!623 = !DILocation(line: 285, column: 27, scope: !295)
!624 = !DILocation(line: 285, column: 25, scope: !295)
!625 = !DILocation(line: 285, column: 19, scope: !295)
!626 = !DILocation(line: 285, column: 7, scope: !295)
!627 = !DILocation(line: 287, column: 11, scope: !295)
!628 = !DILocation(line: 287, column: 15, scope: !295)
!629 = !DILocation(line: 287, column: 13, scope: !295)
!630 = !DILocation(line: 287, column: 9, scope: !295)
!631 = !DILocation(line: 288, column: 5, scope: !295)
!632 = !DILocation(line: 289, column: 5, scope: !295)
!633 = !DILocation(line: 290, column: 11, scope: !295)
!634 = !DILocation(line: 290, column: 17, scope: !295)
!635 = !DILocation(line: 290, column: 23, scope: !295)
!636 = !DILocation(line: 290, column: 21, scope: !295)
!637 = !DILocation(line: 290, column: 13, scope: !295)
!638 = !DILocation(line: 290, column: 9, scope: !295)
!639 = !DILocation(line: 291, column: 28, scope: !295)
!640 = !DILocation(line: 291, column: 26, scope: !295)
!641 = !DILocation(line: 291, column: 9, scope: !295)
!642 = !DILocation(line: 292, column: 28, scope: !295)
!643 = !DILocation(line: 292, column: 34, scope: !295)
!644 = !DILocation(line: 292, column: 38, scope: !295)
!645 = !DILocation(line: 292, column: 32, scope: !295)
!646 = !DILocation(line: 292, column: 71, scope: !295)
!647 = !DILocation(line: 292, column: 55, scope: !295)
!648 = !DILocation(line: 292, column: 53, scope: !295)
!649 = !DILocation(line: 292, column: 9, scope: !295)
!650 = !DILocation(line: 294, column: 18, scope: !295)
!651 = !DILocation(line: 294, column: 9, scope: !295)
!652 = !DILocation(line: 294, column: 7, scope: !295)
!653 = !DILocation(line: 295, column: 16, scope: !295)
!654 = !DILocation(line: 295, column: 22, scope: !295)
!655 = !DILocation(line: 295, column: 20, scope: !295)
!656 = !DILocation(line: 295, column: 46, scope: !295)
!657 = !DILocation(line: 295, column: 30, scope: !295)
!658 = !DILocation(line: 295, column: 28, scope: !295)
!659 = !DILocation(line: 295, column: 54, scope: !295)
!660 = !DILocation(line: 295, column: 52, scope: !295)
!661 = !DILocation(line: 295, column: 8, scope: !295)
!662 = !DILocation(line: 296, column: 5, scope: !295)
!663 = !DILocation(line: 297, column: 5, scope: !295)
!664 = !DILocation(line: 298, column: 10, scope: !295)
!665 = !DILocation(line: 298, column: 22, scope: !295)
!666 = !DILocation(line: 298, column: 27, scope: !295)
!667 = !DILocation(line: 298, column: 25, scope: !295)
!668 = !DILocation(line: 298, column: 49, scope: !295)
!669 = !DILocation(line: 298, column: 33, scope: !295)
!670 = !DILocation(line: 298, column: 31, scope: !295)
!671 = !DILocation(line: 298, column: 57, scope: !295)
!672 = !DILocation(line: 298, column: 55, scope: !295)
!673 = !DILocation(line: 298, column: 14, scope: !295)
!674 = !DILocation(line: 298, column: 8, scope: !295)
!675 = !DILocation(line: 301, column: 5, scope: !295)
!676 = !DILocation(line: 302, column: 27, scope: !295)
!677 = !DILocation(line: 302, column: 30, scope: !295)
!678 = !DILocation(line: 302, column: 38, scope: !295)
!679 = !DILocation(line: 302, column: 48, scope: !295)
!680 = !DILocation(line: 302, column: 55, scope: !295)
!681 = !DILocation(line: 302, column: 44, scope: !295)
!682 = !DILocation(line: 302, column: 63, scope: !295)
!683 = !DILocation(line: 302, column: 8, scope: !295)
!684 = !DILocation(line: 303, column: 7, scope: !295)
!685 = !DILocation(line: 303, column: 5, scope: !295)
!686 = !DILocation(line: 306, column: 3, scope: !295)
!687 = !DILocation(line: 307, column: 3, scope: !295)
!688 = !DILocation(line: 308, column: 11, scope: !295)
!689 = !DILocation(line: 308, column: 15, scope: !295)
!690 = !DILocation(line: 308, column: 13, scope: !295)
!691 = !DILocation(line: 308, column: 22, scope: !295)
!692 = !DILocation(line: 308, column: 27, scope: !295)
!693 = !DILocation(line: 308, column: 31, scope: !295)
!694 = !DILocation(line: 308, column: 29, scope: !295)
!695 = !DILocation(line: 308, column: 25, scope: !295)
!696 = !DILocation(line: 308, column: 7, scope: !295)
!697 = !DILocation(line: 309, column: 9, scope: !295)
!698 = !DILocation(line: 309, column: 14, scope: !295)
!699 = !DILocation(line: 309, column: 12, scope: !295)
!700 = !DILocation(line: 309, column: 7, scope: !295)
!701 = !DILocation(line: 310, column: 7, scope: !295)
!702 = !DILocation(line: 310, column: 13, scope: !295)
!703 = !DILocation(line: 310, column: 11, scope: !295)
!704 = !DILocation(line: 310, column: 5, scope: !295)
!705 = !DILocation(line: 311, column: 3, scope: !295)
!706 = !DILocation(line: 312, column: 8, scope: !295)
!707 = !DILocation(line: 312, column: 10, scope: !295)
!708 = !DILocation(line: 313, column: 12, scope: !295)
!709 = !DILocation(line: 313, column: 14, scope: !295)
!710 = !DILocation(line: 313, column: 31, scope: !295)
!711 = !DILocation(line: 313, column: 5, scope: !295)
!712 = !DILocation(line: 315, column: 10, scope: !295)
!713 = !DILocation(line: 315, column: 12, scope: !295)
!714 = !DILocation(line: 316, column: 12, scope: !295)
!715 = !DILocation(line: 316, column: 16, scope: !295)
!716 = !DILocation(line: 316, column: 34, scope: !295)
!717 = !DILocation(line: 316, column: 38, scope: !295)
!718 = !DILocation(line: 316, column: 36, scope: !295)
!719 = !DILocation(line: 316, column: 32, scope: !295)
!720 = !DILocation(line: 316, column: 51, scope: !295)
!721 = !DILocation(line: 316, column: 53, scope: !295)
!722 = !DILocation(line: 316, column: 70, scope: !295)
!723 = !DILocation(line: 316, column: 44, scope: !295)
!724 = !DILocation(line: 318, column: 5, scope: !295)
!725 = !DILocation(line: 319, column: 14, scope: !295)
!726 = !DILocation(line: 319, column: 16, scope: !295)
!727 = !DILocation(line: 319, column: 31, scope: !295)
!728 = !DILocation(line: 319, column: 12, scope: !295)
!729 = !DILocation(line: 320, column: 16, scope: !295)
!730 = !DILocation(line: 320, column: 18, scope: !295)
!731 = !DILocation(line: 320, column: 35, scope: !295)
!732 = !DILocation(line: 320, column: 9, scope: !295)
!733 = !DILocation(line: 322, column: 28, scope: !295)
!734 = !DILocation(line: 322, column: 30, scope: !295)
!735 = !DILocation(line: 322, column: 14, scope: !295)
!736 = !DILocation(line: 323, column: 16, scope: !295)
!737 = !DILocation(line: 323, column: 23, scope: !295)
!738 = !DILocation(line: 323, column: 27, scope: !295)
!739 = !DILocation(line: 323, column: 25, scope: !295)
!740 = !DILocation(line: 323, column: 20, scope: !295)
!741 = !DILocation(line: 323, column: 40, scope: !295)
!742 = !DILocation(line: 323, column: 42, scope: !295)
!743 = !DILocation(line: 323, column: 59, scope: !295)
!744 = !DILocation(line: 323, column: 33, scope: !295)
!745 = !DILocation(line: 325, column: 9, scope: !295)
!746 = !DILocation(line: 329, column: 7, scope: !295)
!747 = !DILocation(line: 329, column: 9, scope: !295)
!748 = !DILocation(line: 329, column: 5, scope: !295)
!749 = !DILocation(line: 330, column: 9, scope: !295)
!750 = !DILocation(line: 330, column: 11, scope: !295)
!751 = !DILocation(line: 330, column: 19, scope: !295)
!752 = !DILocation(line: 330, column: 5, scope: !295)
!753 = !DILocation(line: 331, column: 5, scope: !295)
!754 = !DILocation(line: 332, column: 8, scope: !295)
!755 = !DILocation(line: 332, column: 10, scope: !295)
!756 = !DILocation(line: 333, column: 9, scope: !295)
!757 = !DILocation(line: 333, column: 31, scope: !295)
!758 = !DILocation(line: 333, column: 33, scope: !295)
!759 = !DILocation(line: 333, column: 26, scope: !295)
!760 = !DILocation(line: 333, column: 11, scope: !295)
!761 = !DILocation(line: 333, column: 7, scope: !295)
!762 = !DILocation(line: 334, column: 13, scope: !295)
!763 = !DILocation(line: 334, column: 15, scope: !295)
!764 = !DILocation(line: 334, column: 30, scope: !295)
!765 = !DILocation(line: 334, column: 38, scope: !295)
!766 = !DILocation(line: 334, column: 7, scope: !295)
!767 = !DILocation(line: 335, column: 5, scope: !295)
!768 = !DILocation(line: 336, column: 13, scope: !295)
!769 = !DILocation(line: 336, column: 15, scope: !295)
!770 = !DILocation(line: 336, column: 30, scope: !295)
!771 = !DILocation(line: 336, column: 55, scope: !295)
!772 = !DILocation(line: 336, column: 53, scope: !295)
!773 = !DILocation(line: 336, column: 45, scope: !295)
!774 = !DILocation(line: 336, column: 7, scope: !295)
!775 = !DILocation(line: 337, column: 10, scope: !295)
!776 = !DILocation(line: 337, column: 12, scope: !295)
!777 = !DILocation(line: 337, column: 23, scope: !295)
!778 = !DILocation(line: 337, column: 22, scope: !295)
!779 = !DILocation(line: 337, column: 20, scope: !295)
!780 = !DILocation(line: 337, column: 18, scope: !295)
!781 = !DILocation(line: 338, column: 12, scope: !295)
!782 = !DILocation(line: 338, column: 9, scope: !295)
!783 = !DILocation(line: 339, column: 3, scope: !295)
!784 = !DILocation(line: 340, column: 7, scope: !295)
!785 = !DILocation(line: 340, column: 13, scope: !295)
!786 = !DILocation(line: 340, column: 11, scope: !295)
!787 = !DILocation(line: 340, column: 5, scope: !295)
!788 = !DILocation(line: 341, column: 3, scope: !295)
!789 = !DILocation(line: 342, column: 3, scope: !295)
!790 = !DILocation(line: 343, column: 7, scope: !295)
!791 = !DILocation(line: 343, column: 9, scope: !295)
!792 = !DILocation(line: 343, column: 5, scope: !295)
!793 = !DILocation(line: 344, column: 9, scope: !295)
!794 = !DILocation(line: 344, column: 17, scope: !295)
!795 = !DILocation(line: 344, column: 21, scope: !295)
!796 = !DILocation(line: 344, column: 19, scope: !295)
!797 = !DILocation(line: 344, column: 13, scope: !295)
!798 = !DILocation(line: 344, column: 47, scope: !295)
!799 = !DILocation(line: 344, column: 49, scope: !295)
!800 = !DILocation(line: 344, column: 45, scope: !295)
!801 = !DILocation(line: 344, column: 5, scope: !295)
!802 = !DILocation(line: 345, column: 7, scope: !295)
!803 = !DILocation(line: 345, column: 11, scope: !295)
!804 = !DILocation(line: 345, column: 9, scope: !295)
!805 = !DILocation(line: 345, column: 5, scope: !295)
!806 = !DILocation(line: 346, column: 7, scope: !295)
!807 = !DILocation(line: 346, column: 13, scope: !295)
!808 = !DILocation(line: 346, column: 17, scope: !295)
!809 = !DILocation(line: 346, column: 15, scope: !295)
!810 = !DILocation(line: 346, column: 9, scope: !295)
!811 = !DILocation(line: 346, column: 5, scope: !295)
!812 = !DILocation(line: 347, column: 8, scope: !295)
!813 = !DILocation(line: 347, column: 12, scope: !295)
!814 = !DILocation(line: 347, column: 10, scope: !295)
!815 = !DILocation(line: 347, column: 6, scope: !295)
!816 = !DILocation(line: 348, column: 9, scope: !295)
!817 = !DILocation(line: 348, column: 13, scope: !295)
!818 = !DILocation(line: 348, column: 34, scope: !295)
!819 = !DILocation(line: 348, column: 55, scope: !295)
!820 = !DILocation(line: 348, column: 76, scope: !295)
!821 = !DILocation(line: 349, column: 57, scope: !295)
!822 = !DILocation(line: 349, column: 55, scope: !295)
!823 = !DILocation(line: 348, column: 74, scope: !295)
!824 = !DILocation(line: 348, column: 53, scope: !295)
!825 = !DILocation(line: 348, column: 32, scope: !295)
!826 = !DILocation(line: 348, column: 11, scope: !295)
!827 = !DILocation(line: 348, column: 7, scope: !295)
!828 = !DILocation(line: 350, column: 10, scope: !295)
!829 = !DILocation(line: 350, column: 14, scope: !295)
!830 = !DILocation(line: 350, column: 12, scope: !295)
!831 = !DILocation(line: 350, column: 23, scope: !295)
!832 = !DILocation(line: 350, column: 26, scope: !295)
!833 = !DILocation(line: 350, column: 19, scope: !295)
!834 = !DILocation(line: 350, column: 48, scope: !295)
!835 = !DILocation(line: 350, column: 52, scope: !295)
!836 = !DILocation(line: 350, column: 56, scope: !295)
!837 = !DILocation(line: 350, column: 50, scope: !295)
!838 = !DILocation(line: 350, column: 44, scope: !295)
!839 = !DILocation(line: 350, column: 6, scope: !295)
!840 = !DILocation(line: 351, column: 26, scope: !295)
!841 = !DILocation(line: 351, column: 30, scope: !295)
!842 = !DILocation(line: 351, column: 28, scope: !295)
!843 = !DILocation(line: 351, column: 22, scope: !295)
!844 = !DILocation(line: 351, column: 6, scope: !295)
!845 = !DILocation(line: 352, column: 3, scope: !295)
!846 = !DILocation(line: 353, column: 10, scope: !295)
!847 = !DILocation(line: 353, column: 12, scope: !295)
!848 = !DILocation(line: 353, column: 5, scope: !295)
!849 = !DILocation(line: 354, column: 10, scope: !295)
!850 = !DILocation(line: 354, column: 12, scope: !295)
!851 = !DILocation(line: 354, column: 20, scope: !295)
!852 = !DILocation(line: 354, column: 8, scope: !295)
!853 = !DILocation(line: 354, column: 52, scope: !295)
!854 = !DILocation(line: 354, column: 55, scope: !295)
!855 = !DILocation(line: 354, column: 31, scope: !295)
!856 = !DILocation(line: 354, column: 29, scope: !295)
!857 = !DILocation(line: 354, column: 27, scope: !295)
!858 = !DILocation(line: 355, column: 8, scope: !295)
!859 = !DILocation(line: 356, column: 10, scope: !295)
!860 = !DILocation(line: 356, column: 14, scope: !295)
!861 = !DILocation(line: 356, column: 12, scope: !295)
!862 = !DILocation(line: 356, column: 3, scope: !295)
!863 = !DILocation(line: 357, column: 1, scope: !295)
!864 = distinct !DISubprogram(name: "basicmath___isinff", scope: !13, file: !13, line: 711, type: !14, scopeLine: 712, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!865 = !DILocation(line: 714, column: 3, scope: !864)
!866 = !DILocation(line: 715, column: 7, scope: !864)
!867 = !DILocation(line: 715, column: 10, scope: !864)
!868 = !DILocation(line: 715, column: 5, scope: !864)
!869 = !DILocation(line: 716, column: 5, scope: !864)
!870 = !DILocation(line: 717, column: 9, scope: !864)
!871 = !DILocation(line: 717, column: 8, scope: !864)
!872 = !DILocation(line: 717, column: 5, scope: !864)
!873 = !DILocation(line: 718, column: 13, scope: !864)
!874 = !DILocation(line: 718, column: 15, scope: !864)
!875 = !DILocation(line: 718, column: 10, scope: !864)
!876 = !DILocation(line: 718, column: 27, scope: !864)
!877 = !DILocation(line: 718, column: 30, scope: !864)
!878 = !DILocation(line: 718, column: 23, scope: !864)
!879 = !DILocation(line: 718, column: 3, scope: !864)
!880 = distinct !DISubprogram(name: "basicmath___fabsf", scope: !13, file: !13, line: 697, type: !14, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!881 = !DILocation(line: 700, column: 3, scope: !880)
!882 = !DILocation(line: 701, column: 3, scope: !880)
!883 = !DILocation(line: 702, column: 10, scope: !880)
!884 = !DILocation(line: 702, column: 3, scope: !880)
!885 = distinct !DISubprogram(name: "basicmath___scalbnf", scope: !13, file: !13, line: 729, type: !14, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!886 = !DILocation(line: 732, column: 3, scope: !885)
!887 = !DILocation(line: 733, column: 9, scope: !885)
!888 = !DILocation(line: 733, column: 12, scope: !885)
!889 = !DILocation(line: 733, column: 27, scope: !885)
!890 = !DILocation(line: 733, column: 5, scope: !885)
!891 = !DILocation(line: 734, column: 8, scope: !885)
!892 = !DILocation(line: 734, column: 10, scope: !885)
!893 = !DILocation(line: 735, column: 12, scope: !885)
!894 = !DILocation(line: 735, column: 15, scope: !885)
!895 = !DILocation(line: 735, column: 30, scope: !885)
!896 = !DILocation(line: 735, column: 10, scope: !885)
!897 = !DILocation(line: 735, column: 44, scope: !885)
!898 = !DILocation(line: 735, column: 37, scope: !885)
!899 = !DILocation(line: 736, column: 7, scope: !885)
!900 = !DILocation(line: 737, column: 5, scope: !885)
!901 = !DILocation(line: 738, column: 13, scope: !885)
!902 = !DILocation(line: 738, column: 16, scope: !885)
!903 = !DILocation(line: 738, column: 31, scope: !885)
!904 = !DILocation(line: 738, column: 39, scope: !885)
!905 = !DILocation(line: 738, column: 7, scope: !885)
!906 = !DILocation(line: 739, column: 3, scope: !885)
!907 = !DILocation(line: 740, column: 8, scope: !885)
!908 = !DILocation(line: 740, column: 10, scope: !885)
!909 = !DILocation(line: 740, column: 27, scope: !885)
!910 = !DILocation(line: 740, column: 31, scope: !885)
!911 = !DILocation(line: 740, column: 29, scope: !885)
!912 = !DILocation(line: 740, column: 20, scope: !885)
!913 = !DILocation(line: 741, column: 7, scope: !885)
!914 = !DILocation(line: 741, column: 11, scope: !885)
!915 = !DILocation(line: 741, column: 9, scope: !885)
!916 = !DILocation(line: 741, column: 5, scope: !885)
!917 = !DILocation(line: 742, column: 8, scope: !885)
!918 = !DILocation(line: 742, column: 10, scope: !885)
!919 = !DILocation(line: 742, column: 18, scope: !885)
!920 = !DILocation(line: 742, column: 21, scope: !885)
!921 = !DILocation(line: 742, column: 23, scope: !885)
!922 = !DILocation(line: 744, column: 12, scope: !885)
!923 = !DILocation(line: 743, column: 29, scope: !885)
!924 = !DILocation(line: 743, column: 27, scope: !885)
!925 = !DILocation(line: 743, column: 5, scope: !885)
!926 = !DILocation(line: 745, column: 8, scope: !885)
!927 = !DILocation(line: 745, column: 10, scope: !885)
!928 = !DILocation(line: 747, column: 12, scope: !885)
!929 = !DILocation(line: 746, column: 29, scope: !885)
!930 = !DILocation(line: 746, column: 27, scope: !885)
!931 = !DILocation(line: 746, column: 5, scope: !885)
!932 = !DILocation(line: 748, column: 8, scope: !885)
!933 = !DILocation(line: 748, column: 10, scope: !885)
!934 = !DILocation(line: 749, column: 5, scope: !885)
!935 = !DILocation(line: 750, column: 12, scope: !885)
!936 = !DILocation(line: 750, column: 5, scope: !885)
!937 = !DILocation(line: 752, column: 8, scope: !885)
!938 = !DILocation(line: 752, column: 10, scope: !885)
!939 = !DILocation(line: 754, column: 12, scope: !885)
!940 = !DILocation(line: 753, column: 29, scope: !885)
!941 = !DILocation(line: 753, column: 27, scope: !885)
!942 = !DILocation(line: 753, column: 5, scope: !885)
!943 = !DILocation(line: 755, column: 5, scope: !885)
!944 = !DILocation(line: 756, column: 3, scope: !885)
!945 = !DILocation(line: 757, column: 10, scope: !885)
!946 = !DILocation(line: 757, column: 12, scope: !885)
!947 = !DILocation(line: 757, column: 3, scope: !885)
!948 = !DILocation(line: 758, column: 1, scope: !885)
!949 = distinct !DISubprogram(name: "basicmath___ieee754_rem_pio2f", scope: !13, file: !13, line: 398, type: !14, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!950 = !DILocation(line: 403, column: 3, scope: !949)
!951 = !DILocation(line: 404, column: 8, scope: !949)
!952 = !DILocation(line: 404, column: 11, scope: !949)
!953 = !DILocation(line: 404, column: 6, scope: !949)
!954 = !DILocation(line: 405, column: 8, scope: !949)
!955 = !DILocation(line: 405, column: 11, scope: !949)
!956 = !DILocation(line: 406, column: 14, scope: !949)
!957 = !DILocation(line: 406, column: 5, scope: !949)
!958 = !DILocation(line: 406, column: 12, scope: !949)
!959 = !DILocation(line: 407, column: 5, scope: !949)
!960 = !DILocation(line: 407, column: 12, scope: !949)
!961 = !DILocation(line: 408, column: 5, scope: !949)
!962 = !DILocation(line: 410, column: 8, scope: !949)
!963 = !DILocation(line: 410, column: 11, scope: !949)
!964 = !DILocation(line: 411, column: 10, scope: !949)
!965 = !DILocation(line: 411, column: 13, scope: !949)
!966 = !DILocation(line: 412, column: 11, scope: !949)
!967 = !DILocation(line: 412, column: 13, scope: !949)
!968 = !DILocation(line: 412, column: 9, scope: !949)
!969 = !DILocation(line: 413, column: 14, scope: !949)
!970 = !DILocation(line: 413, column: 17, scope: !949)
!971 = !DILocation(line: 413, column: 32, scope: !949)
!972 = !DILocation(line: 413, column: 12, scope: !949)
!973 = !DILocation(line: 414, column: 18, scope: !949)
!974 = !DILocation(line: 414, column: 20, scope: !949)
!975 = !DILocation(line: 414, column: 9, scope: !949)
!976 = !DILocation(line: 414, column: 16, scope: !949)
!977 = !DILocation(line: 415, column: 20, scope: !949)
!978 = !DILocation(line: 415, column: 24, scope: !949)
!979 = !DILocation(line: 415, column: 22, scope: !949)
!980 = !DILocation(line: 415, column: 33, scope: !949)
!981 = !DILocation(line: 415, column: 9, scope: !949)
!982 = !DILocation(line: 415, column: 16, scope: !949)
!983 = !DILocation(line: 416, column: 7, scope: !949)
!984 = !DILocation(line: 417, column: 11, scope: !949)
!985 = !DILocation(line: 418, column: 18, scope: !949)
!986 = !DILocation(line: 418, column: 20, scope: !949)
!987 = !DILocation(line: 418, column: 9, scope: !949)
!988 = !DILocation(line: 418, column: 16, scope: !949)
!989 = !DILocation(line: 419, column: 20, scope: !949)
!990 = !DILocation(line: 419, column: 24, scope: !949)
!991 = !DILocation(line: 419, column: 22, scope: !949)
!992 = !DILocation(line: 419, column: 33, scope: !949)
!993 = !DILocation(line: 419, column: 9, scope: !949)
!994 = !DILocation(line: 419, column: 16, scope: !949)
!995 = !DILocation(line: 421, column: 7, scope: !949)
!996 = !DILocation(line: 423, column: 11, scope: !949)
!997 = !DILocation(line: 423, column: 13, scope: !949)
!998 = !DILocation(line: 423, column: 9, scope: !949)
!999 = !DILocation(line: 424, column: 14, scope: !949)
!1000 = !DILocation(line: 424, column: 17, scope: !949)
!1001 = !DILocation(line: 424, column: 32, scope: !949)
!1002 = !DILocation(line: 424, column: 12, scope: !949)
!1003 = !DILocation(line: 425, column: 18, scope: !949)
!1004 = !DILocation(line: 425, column: 20, scope: !949)
!1005 = !DILocation(line: 425, column: 9, scope: !949)
!1006 = !DILocation(line: 425, column: 16, scope: !949)
!1007 = !DILocation(line: 426, column: 20, scope: !949)
!1008 = !DILocation(line: 426, column: 24, scope: !949)
!1009 = !DILocation(line: 426, column: 22, scope: !949)
!1010 = !DILocation(line: 426, column: 33, scope: !949)
!1011 = !DILocation(line: 426, column: 9, scope: !949)
!1012 = !DILocation(line: 426, column: 16, scope: !949)
!1013 = !DILocation(line: 427, column: 7, scope: !949)
!1014 = !DILocation(line: 428, column: 11, scope: !949)
!1015 = !DILocation(line: 429, column: 18, scope: !949)
!1016 = !DILocation(line: 429, column: 20, scope: !949)
!1017 = !DILocation(line: 429, column: 9, scope: !949)
!1018 = !DILocation(line: 429, column: 16, scope: !949)
!1019 = !DILocation(line: 430, column: 20, scope: !949)
!1020 = !DILocation(line: 430, column: 24, scope: !949)
!1021 = !DILocation(line: 430, column: 22, scope: !949)
!1022 = !DILocation(line: 430, column: 33, scope: !949)
!1023 = !DILocation(line: 430, column: 9, scope: !949)
!1024 = !DILocation(line: 430, column: 16, scope: !949)
!1025 = !DILocation(line: 432, column: 7, scope: !949)
!1026 = !DILocation(line: 435, column: 8, scope: !949)
!1027 = !DILocation(line: 435, column: 11, scope: !949)
!1028 = !DILocation(line: 436, column: 29, scope: !949)
!1029 = !DILocation(line: 436, column: 10, scope: !949)
!1030 = !DILocation(line: 436, column: 8, scope: !949)
!1031 = !DILocation(line: 437, column: 24, scope: !949)
!1032 = !DILocation(line: 437, column: 46, scope: !949)
!1033 = !DILocation(line: 437, column: 10, scope: !949)
!1034 = !DILocation(line: 437, column: 8, scope: !949)
!1035 = !DILocation(line: 438, column: 19, scope: !949)
!1036 = !DILocation(line: 438, column: 10, scope: !949)
!1037 = !DILocation(line: 438, column: 8, scope: !949)
!1038 = !DILocation(line: 439, column: 10, scope: !949)
!1039 = !DILocation(line: 439, column: 14, scope: !949)
!1040 = !DILocation(line: 439, column: 12, scope: !949)
!1041 = !DILocation(line: 439, column: 8, scope: !949)
!1042 = !DILocation(line: 440, column: 10, scope: !949)
!1043 = !DILocation(line: 440, column: 13, scope: !949)
!1044 = !DILocation(line: 440, column: 8, scope: !949)
!1045 = !DILocation(line: 441, column: 10, scope: !949)
!1046 = !DILocation(line: 441, column: 12, scope: !949)
!1047 = !DILocation(line: 441, column: 17, scope: !949)
!1048 = !DILocation(line: 441, column: 33, scope: !949)
!1049 = !DILocation(line: 441, column: 36, scope: !949)
!1050 = !DILocation(line: 441, column: 73, scope: !949)
!1051 = !DILocation(line: 441, column: 75, scope: !949)
!1052 = !DILocation(line: 441, column: 54, scope: !949)
!1053 = !DILocation(line: 441, column: 51, scope: !949)
!1054 = !DILocation(line: 442, column: 16, scope: !949)
!1055 = !DILocation(line: 442, column: 20, scope: !949)
!1056 = !DILocation(line: 442, column: 18, scope: !949)
!1057 = !DILocation(line: 442, column: 7, scope: !949)
!1058 = !DILocation(line: 442, column: 14, scope: !949)
!1059 = !DILocation(line: 443, column: 5, scope: !949)
!1060 = !DILocation(line: 445, column: 12, scope: !949)
!1061 = !DILocation(line: 445, column: 15, scope: !949)
!1062 = !DILocation(line: 445, column: 10, scope: !949)
!1063 = !DILocation(line: 446, column: 16, scope: !949)
!1064 = !DILocation(line: 446, column: 20, scope: !949)
!1065 = !DILocation(line: 446, column: 18, scope: !949)
!1066 = !DILocation(line: 446, column: 7, scope: !949)
!1067 = !DILocation(line: 446, column: 14, scope: !949)
!1068 = !DILocation(line: 447, column: 7, scope: !949)
!1069 = !DILocation(line: 448, column: 11, scope: !949)
!1070 = !DILocation(line: 448, column: 19, scope: !949)
!1071 = !DILocation(line: 448, column: 24, scope: !949)
!1072 = !DILocation(line: 448, column: 32, scope: !949)
!1073 = !DILocation(line: 448, column: 13, scope: !949)
!1074 = !DILocation(line: 448, column: 9, scope: !949)
!1075 = !DILocation(line: 449, column: 12, scope: !949)
!1076 = !DILocation(line: 449, column: 14, scope: !949)
!1077 = !DILocation(line: 450, column: 14, scope: !949)
!1078 = !DILocation(line: 450, column: 12, scope: !949)
!1079 = !DILocation(line: 451, column: 14, scope: !949)
!1080 = !DILocation(line: 451, column: 17, scope: !949)
!1081 = !DILocation(line: 451, column: 12, scope: !949)
!1082 = !DILocation(line: 452, column: 14, scope: !949)
!1083 = !DILocation(line: 452, column: 18, scope: !949)
!1084 = !DILocation(line: 452, column: 16, scope: !949)
!1085 = !DILocation(line: 452, column: 12, scope: !949)
!1086 = !DILocation(line: 453, column: 14, scope: !949)
!1087 = !DILocation(line: 453, column: 43, scope: !949)
!1088 = !DILocation(line: 453, column: 47, scope: !949)
!1089 = !DILocation(line: 453, column: 45, scope: !949)
!1090 = !DILocation(line: 453, column: 53, scope: !949)
!1091 = !DILocation(line: 453, column: 51, scope: !949)
!1092 = !DILocation(line: 453, column: 37, scope: !949)
!1093 = !DILocation(line: 453, column: 12, scope: !949)
!1094 = !DILocation(line: 454, column: 18, scope: !949)
!1095 = !DILocation(line: 454, column: 22, scope: !949)
!1096 = !DILocation(line: 454, column: 20, scope: !949)
!1097 = !DILocation(line: 454, column: 9, scope: !949)
!1098 = !DILocation(line: 454, column: 16, scope: !949)
!1099 = !DILocation(line: 455, column: 9, scope: !949)
!1100 = !DILocation(line: 456, column: 13, scope: !949)
!1101 = !DILocation(line: 456, column: 21, scope: !949)
!1102 = !DILocation(line: 456, column: 26, scope: !949)
!1103 = !DILocation(line: 456, column: 34, scope: !949)
!1104 = !DILocation(line: 456, column: 15, scope: !949)
!1105 = !DILocation(line: 456, column: 11, scope: !949)
!1106 = !DILocation(line: 457, column: 14, scope: !949)
!1107 = !DILocation(line: 457, column: 16, scope: !949)
!1108 = !DILocation(line: 458, column: 16, scope: !949)
!1109 = !DILocation(line: 458, column: 14, scope: !949)
!1110 = !DILocation(line: 459, column: 16, scope: !949)
!1111 = !DILocation(line: 459, column: 19, scope: !949)
!1112 = !DILocation(line: 459, column: 14, scope: !949)
!1113 = !DILocation(line: 460, column: 16, scope: !949)
!1114 = !DILocation(line: 460, column: 20, scope: !949)
!1115 = !DILocation(line: 460, column: 18, scope: !949)
!1116 = !DILocation(line: 460, column: 14, scope: !949)
!1117 = !DILocation(line: 461, column: 16, scope: !949)
!1118 = !DILocation(line: 461, column: 45, scope: !949)
!1119 = !DILocation(line: 461, column: 49, scope: !949)
!1120 = !DILocation(line: 461, column: 47, scope: !949)
!1121 = !DILocation(line: 461, column: 55, scope: !949)
!1122 = !DILocation(line: 461, column: 53, scope: !949)
!1123 = !DILocation(line: 461, column: 39, scope: !949)
!1124 = !DILocation(line: 461, column: 14, scope: !949)
!1125 = !DILocation(line: 462, column: 20, scope: !949)
!1126 = !DILocation(line: 462, column: 24, scope: !949)
!1127 = !DILocation(line: 462, column: 22, scope: !949)
!1128 = !DILocation(line: 462, column: 11, scope: !949)
!1129 = !DILocation(line: 462, column: 18, scope: !949)
!1130 = !DILocation(line: 463, column: 9, scope: !949)
!1131 = !DILocation(line: 464, column: 7, scope: !949)
!1132 = !DILocation(line: 466, column: 16, scope: !949)
!1133 = !DILocation(line: 466, column: 20, scope: !949)
!1134 = !DILocation(line: 466, column: 18, scope: !949)
!1135 = !DILocation(line: 466, column: 31, scope: !949)
!1136 = !DILocation(line: 466, column: 29, scope: !949)
!1137 = !DILocation(line: 466, column: 5, scope: !949)
!1138 = !DILocation(line: 466, column: 12, scope: !949)
!1139 = !DILocation(line: 467, column: 10, scope: !949)
!1140 = !DILocation(line: 467, column: 13, scope: !949)
!1141 = !DILocation(line: 468, column: 17, scope: !949)
!1142 = !DILocation(line: 468, column: 16, scope: !949)
!1143 = !DILocation(line: 468, column: 7, scope: !949)
!1144 = !DILocation(line: 468, column: 14, scope: !949)
!1145 = !DILocation(line: 469, column: 17, scope: !949)
!1146 = !DILocation(line: 469, column: 16, scope: !949)
!1147 = !DILocation(line: 469, column: 7, scope: !949)
!1148 = !DILocation(line: 469, column: 14, scope: !949)
!1149 = !DILocation(line: 470, column: 15, scope: !949)
!1150 = !DILocation(line: 470, column: 14, scope: !949)
!1151 = !DILocation(line: 470, column: 7, scope: !949)
!1152 = !DILocation(line: 471, column: 21, scope: !949)
!1153 = !DILocation(line: 471, column: 14, scope: !949)
!1154 = !DILocation(line: 476, column: 8, scope: !949)
!1155 = !DILocation(line: 476, column: 11, scope: !949)
!1156 = !DILocation(line: 477, column: 23, scope: !949)
!1157 = !DILocation(line: 477, column: 27, scope: !949)
!1158 = !DILocation(line: 477, column: 25, scope: !949)
!1159 = !DILocation(line: 477, column: 14, scope: !949)
!1160 = !DILocation(line: 477, column: 21, scope: !949)
!1161 = !DILocation(line: 477, column: 5, scope: !949)
!1162 = !DILocation(line: 477, column: 12, scope: !949)
!1163 = !DILocation(line: 478, column: 5, scope: !949)
!1164 = !DILocation(line: 484, column: 21, scope: !949)
!1165 = !DILocation(line: 484, column: 25, scope: !949)
!1166 = !DILocation(line: 484, column: 23, scope: !949)
!1167 = !DILocation(line: 484, column: 12, scope: !949)
!1168 = !DILocation(line: 484, column: 19, scope: !949)
!1169 = !DILocation(line: 484, column: 3, scope: !949)
!1170 = !DILocation(line: 484, column: 10, scope: !949)
!1171 = !DILocation(line: 485, column: 3, scope: !949)
!1172 = !DILocation(line: 486, column: 1, scope: !949)
!1173 = distinct !DISubprogram(name: "basicmath___kernel_cosf", scope: !13, file: !13, line: 574, type: !14, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!1174 = !DILocation(line: 578, column: 3, scope: !1173)
!1175 = !DILocation(line: 579, column: 6, scope: !1173)
!1176 = !DILocation(line: 580, column: 8, scope: !1173)
!1177 = !DILocation(line: 580, column: 11, scope: !1173)
!1178 = !DILocation(line: 581, column: 19, scope: !1173)
!1179 = !DILocation(line: 581, column: 12, scope: !1173)
!1180 = !DILocation(line: 581, column: 23, scope: !1173)
!1181 = !DILocation(line: 581, column: 10, scope: !1173)
!1182 = !DILocation(line: 581, column: 30, scope: !1173)
!1183 = !DILocation(line: 582, column: 3, scope: !1173)
!1184 = !DILocation(line: 583, column: 8, scope: !1173)
!1185 = !DILocation(line: 583, column: 12, scope: !1173)
!1186 = !DILocation(line: 583, column: 10, scope: !1173)
!1187 = !DILocation(line: 583, column: 6, scope: !1173)
!1188 = !DILocation(line: 584, column: 8, scope: !1173)
!1189 = !DILocation(line: 584, column: 29, scope: !1173)
!1190 = !DILocation(line: 584, column: 50, scope: !1173)
!1191 = !DILocation(line: 584, column: 71, scope: !1173)
!1192 = !DILocation(line: 585, column: 52, scope: !1173)
!1193 = !DILocation(line: 585, column: 73, scope: !1173)
!1194 = !DILocation(line: 585, column: 71, scope: !1173)
!1195 = !DILocation(line: 585, column: 50, scope: !1173)
!1196 = !DILocation(line: 584, column: 69, scope: !1173)
!1197 = !DILocation(line: 584, column: 48, scope: !1173)
!1198 = !DILocation(line: 584, column: 27, scope: !1173)
!1199 = !DILocation(line: 584, column: 10, scope: !1173)
!1200 = !DILocation(line: 584, column: 6, scope: !1173)
!1201 = !DILocation(line: 586, column: 8, scope: !1173)
!1202 = !DILocation(line: 586, column: 11, scope: !1173)
!1203 = !DILocation(line: 587, column: 46, scope: !1173)
!1204 = !DILocation(line: 587, column: 52, scope: !1173)
!1205 = !DILocation(line: 587, column: 56, scope: !1173)
!1206 = !DILocation(line: 587, column: 60, scope: !1173)
!1207 = !DILocation(line: 587, column: 64, scope: !1173)
!1208 = !DILocation(line: 587, column: 62, scope: !1173)
!1209 = !DILocation(line: 587, column: 58, scope: !1173)
!1210 = !DILocation(line: 587, column: 48, scope: !1173)
!1211 = !DILocation(line: 587, column: 26, scope: !1173)
!1212 = !DILocation(line: 587, column: 5, scope: !1173)
!1213 = !DILocation(line: 589, column: 10, scope: !1173)
!1214 = !DILocation(line: 589, column: 13, scope: !1173)
!1215 = !DILocation(line: 590, column: 10, scope: !1173)
!1216 = !DILocation(line: 590, column: 7, scope: !1173)
!1217 = !DILocation(line: 592, column: 7, scope: !1173)
!1218 = !DILocation(line: 594, column: 26, scope: !1173)
!1219 = !DILocation(line: 594, column: 30, scope: !1173)
!1220 = !DILocation(line: 594, column: 28, scope: !1173)
!1221 = !DILocation(line: 594, column: 8, scope: !1173)
!1222 = !DILocation(line: 595, column: 26, scope: !1173)
!1223 = !DILocation(line: 595, column: 24, scope: !1173)
!1224 = !DILocation(line: 595, column: 8, scope: !1173)
!1225 = !DILocation(line: 596, column: 12, scope: !1173)
!1226 = !DILocation(line: 596, column: 18, scope: !1173)
!1227 = !DILocation(line: 596, column: 25, scope: !1173)
!1228 = !DILocation(line: 596, column: 29, scope: !1173)
!1229 = !DILocation(line: 596, column: 33, scope: !1173)
!1230 = !DILocation(line: 596, column: 37, scope: !1173)
!1231 = !DILocation(line: 596, column: 35, scope: !1173)
!1232 = !DILocation(line: 596, column: 31, scope: !1173)
!1233 = !DILocation(line: 596, column: 21, scope: !1173)
!1234 = !DILocation(line: 596, column: 14, scope: !1173)
!1235 = !DILocation(line: 596, column: 5, scope: !1173)
!1236 = !DILocation(line: 598, column: 1, scope: !1173)
!1237 = distinct !DISubprogram(name: "basicmath___kernel_sinf", scope: !13, file: !13, line: 612, type: !14, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!1238 = !DILocation(line: 616, column: 3, scope: !1237)
!1239 = !DILocation(line: 617, column: 6, scope: !1237)
!1240 = !DILocation(line: 618, column: 8, scope: !1237)
!1241 = !DILocation(line: 618, column: 11, scope: !1237)
!1242 = !DILocation(line: 619, column: 17, scope: !1237)
!1243 = !DILocation(line: 619, column: 10, scope: !1237)
!1244 = !DILocation(line: 619, column: 19, scope: !1237)
!1245 = !DILocation(line: 619, column: 33, scope: !1237)
!1246 = !DILocation(line: 619, column: 26, scope: !1237)
!1247 = !DILocation(line: 620, column: 3, scope: !1237)
!1248 = !DILocation(line: 621, column: 8, scope: !1237)
!1249 = !DILocation(line: 621, column: 12, scope: !1237)
!1250 = !DILocation(line: 621, column: 10, scope: !1237)
!1251 = !DILocation(line: 621, column: 5, scope: !1237)
!1252 = !DILocation(line: 622, column: 8, scope: !1237)
!1253 = !DILocation(line: 622, column: 12, scope: !1237)
!1254 = !DILocation(line: 622, column: 10, scope: !1237)
!1255 = !DILocation(line: 622, column: 5, scope: !1237)
!1256 = !DILocation(line: 623, column: 23, scope: !1237)
!1257 = !DILocation(line: 623, column: 44, scope: !1237)
!1258 = !DILocation(line: 623, column: 65, scope: !1237)
!1259 = !DILocation(line: 624, column: 46, scope: !1237)
!1260 = !DILocation(line: 624, column: 44, scope: !1237)
!1261 = !DILocation(line: 623, column: 63, scope: !1237)
!1262 = !DILocation(line: 623, column: 42, scope: !1237)
!1263 = !DILocation(line: 623, column: 21, scope: !1237)
!1264 = !DILocation(line: 623, column: 5, scope: !1237)
!1265 = !DILocation(line: 625, column: 8, scope: !1237)
!1266 = !DILocation(line: 625, column: 11, scope: !1237)
!1267 = !DILocation(line: 625, column: 25, scope: !1237)
!1268 = !DILocation(line: 625, column: 29, scope: !1237)
!1269 = !DILocation(line: 625, column: 50, scope: !1237)
!1270 = !DILocation(line: 625, column: 54, scope: !1237)
!1271 = !DILocation(line: 625, column: 48, scope: !1237)
!1272 = !DILocation(line: 625, column: 27, scope: !1237)
!1273 = !DILocation(line: 625, column: 18, scope: !1237)
!1274 = !DILocation(line: 626, column: 20, scope: !1237)
!1275 = !DILocation(line: 626, column: 28, scope: !1237)
!1276 = !DILocation(line: 626, column: 51, scope: !1237)
!1277 = !DILocation(line: 626, column: 55, scope: !1237)
!1278 = !DILocation(line: 626, column: 59, scope: !1237)
!1279 = !DILocation(line: 626, column: 57, scope: !1237)
!1280 = !DILocation(line: 626, column: 53, scope: !1237)
!1281 = !DILocation(line: 626, column: 65, scope: !1237)
!1282 = !DILocation(line: 626, column: 63, scope: !1237)
!1283 = !DILocation(line: 626, column: 71, scope: !1237)
!1284 = !DILocation(line: 626, column: 69, scope: !1237)
!1285 = !DILocation(line: 626, column: 22, scope: !1237)
!1286 = !DILocation(line: 626, column: 13, scope: !1237)
!1287 = !DILocation(line: 628, column: 1, scope: !1237)
!1288 = distinct !DISubprogram(name: "basicmath___copysignf", scope: !13, file: !13, line: 642, type: !14, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!1289 = !DILocation(line: 645, column: 3, scope: !1288)
!1290 = !DILocation(line: 646, column: 3, scope: !1288)
!1291 = !DILocation(line: 647, column: 3, scope: !1288)
!1292 = !DILocation(line: 648, column: 10, scope: !1288)
!1293 = !DILocation(line: 648, column: 3, scope: !1288)
!1294 = distinct !DISubprogram(name: "basicmath___cosf", scope: !13, file: !13, line: 656, type: !14, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!1295 = !DILocation(line: 658, column: 17, scope: !1294)
!1296 = !DILocation(line: 661, column: 3, scope: !1294)
!1297 = !DILocation(line: 664, column: 6, scope: !1294)
!1298 = !DILocation(line: 665, column: 10, scope: !1294)
!1299 = !DILocation(line: 665, column: 14, scope: !1294)
!1300 = !DILocation(line: 665, column: 12, scope: !1294)
!1301 = !DILocation(line: 665, column: 3, scope: !1294)
