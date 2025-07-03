; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.g723_enc_state_t = type { i32, i16, i16, i16, i16, [2 x i16], [6 x i16], [2 x i16], [6 x i16], [2 x i16], i8 }
%union.dwords = type { i64 }
%struct.anon = type { i32, i32 }

@g723_enc_INPUT = dso_local global [256 x i32] [i32 51, i32 17, i32 31, i32 53, i32 95, i32 17, i32 70, i32 22, i32 49, i32 12, i32 8, i32 39, i32 28, i32 37, i32 99, i32 54, i32 77, i32 65, i32 77, i32 78, i32 83, i32 15, i32 63, i32 31, i32 35, i32 92, i32 52, i32 40, i32 61, i32 79, i32 94, i32 87, i32 87, i32 68, i32 76, i32 58, i32 39, i32 35, i32 20, i32 83, i32 42, i32 46, i32 98, i32 12, i32 21, i32 96, i32 74, i32 41, i32 78, i32 76, i32 96, i32 2, i32 32, i32 76, i32 24, i32 59, i32 4, i32 96, i32 32, i32 5, i32 44, i32 92, i32 57, i32 12, i32 57, i32 25, i32 50, i32 23, i32 48, i32 41, i32 88, i32 43, i32 36, i32 38, i32 4, i32 16, i32 52, i32 70, i32 9, i32 40, i32 78, i32 24, i32 34, i32 23, i32 30, i32 30, i32 89, i32 3, i32 65, i32 40, i32 68, i32 73, i32 94, i32 23, i32 84, i32 97, i32 78, i32 43, i32 68, i32 81, i32 16, i32 28, i32 13, i32 87, i32 75, i32 21, i32 14, i32 29, i32 81, i32 22, i32 56, i32 72, i32 19, i32 99, i32 25, i32 43, i32 76, i32 86, i32 90, i32 98, i32 39, i32 43, i32 12, i32 46, i32 24, i32 99, i32 65, i32 61, i32 24, i32 45, i32 79, i32 7, i32 48, i32 15, i32 24, i32 95, i32 62, i32 99, i32 48, i32 80, i32 75, i32 38, i32 48, i32 53, i32 9, i32 60, i32 35, i32 14, i32 78, i32 71, i32 45, i32 71, i32 9, i32 97, i32 55, i32 74, i32 58, i32 64, i32 78, i32 18, i32 30, i32 28, i32 69, i32 29, i32 57, i32 42, i32 30, i32 44, i32 57, i32 49, i32 61, i32 42, i32 13, i32 25, i32 3, i32 98, i32 11, i32 38, i32 65, i32 35, i32 55, i32 36, i32 57, i32 48, i32 16, i32 62, i32 17, i32 56, i32 29, i32 88, i32 84, i32 85, i32 90, i32 60, i32 54, i32 16, i32 66, i32 69, i32 26, i32 10, i32 82, i32 19, i32 42, i32 35, i32 84, i32 13, i32 26, i32 17, i32 48, i32 38, i32 50, i32 50, i32 35, i32 53, i32 12, i32 52, i32 61, i32 74, i32 56, i32 34, i32 80, i32 59, i32 26, i32 67, i32 55, i32 79, i32 89, i32 89, i32 6, i32 80, i32 91, i32 65, i32 16, i32 30, i32 16, i32 28, i32 85, i32 54, i32 3, i32 20, i32 2, i32 36, i32 62, i32 52, i32 55, i32 15, i32 83, i32 3, i32 2, i32 38, i32 62, i32 2, i32 63, i32 92, i32 37, i32 73], align 4, !dbg !0
@g723_enc_power2 = dso_local global [15 x i16] [i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 8192, i16 16384], align 2, !dbg !7
@g723_enc_qtab_723_24 = dso_local global [3 x i16] [i16 8, i16 218, i16 331], align 2, !dbg !14
@g723_enc_dqlntab = dso_local global [16 x i16] [i16 -2048, i16 4, i16 135, i16 213, i16 273, i16 323, i16 373, i16 425, i16 425, i16 373, i16 323, i16 273, i16 213, i16 135, i16 4, i16 -2048], align 2, !dbg !19
@g723_enc_witab = dso_local global [16 x i16] [i16 -12, i16 18, i16 41, i16 64, i16 112, i16 198, i16 355, i16 1122, i16 1122, i16 355, i16 198, i16 112, i16 64, i16 41, i16 18, i16 -12], align 2, !dbg !24
@g723_enc_fitab = dso_local global [16 x i16] [i16 0, i16 0, i16 0, i16 512, i16 512, i16 512, i16 1536, i16 3584, i16 3584, i16 1536, i16 512, i16 512, i16 512, i16 0, i16 0, i16 0], align 2, !dbg !26
@g723_enc_pack_output.out_buffer = internal global i32 0, align 4, !dbg !28
@g723_enc_pack_output.out_bits = internal global i32 0, align 4, !dbg !36
@g723_enc_pack_output.i = internal global i32 0, align 4, !dbg !38
@g723_enc_OUTPUT = dso_local global [256 x i32] zeroinitializer, align 4, !dbg !63
@g723_enc_state = dso_local global %struct.g723_enc_state_t zeroinitializer, align 4, !dbg !40
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
define dso_local arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %an, i32 noundef %srn) #0 !dbg !191 {
entry:
  call void @llvm.dbg.value(metadata i32 %an, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata i32 %srn, metadata !196, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata i16 8191, metadata !197, metadata !DIExpression()), !dbg !195
  %call = call arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef 8191, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @g723_enc_power2, i32 0, i32 0), i32 noundef 3) #4, !dbg !198
  %0 = trunc i32 %call to i16, !dbg !198
  %conv2 = add i16 %0, -6, !dbg !198
  call void @llvm.dbg.value(metadata i16 %conv2, metadata !199, metadata !DIExpression()), !dbg !195
  %conv4 = sext i16 %conv2 to i32, !dbg !200
  %sub5 = sub nsw i32 0, %conv4, !dbg !201
  call void @llvm.dbg.value(metadata !DIArgList(i32 8191, i32 %sub5), metadata !202, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !195
  %1 = trunc i32 %srn to i16, !dbg !203
  %2 = lshr i16 %1, 6, !dbg !203
  %3 = and i16 %2, 15, !dbg !203
  %4 = add i16 %3, %conv2, !dbg !203
  %conv9 = add i16 %4, -13, !dbg !203
  call void @llvm.dbg.value(metadata i16 %conv9, metadata !204, metadata !DIExpression()), !dbg !195
  %sext = shl i32 536805376, %sub5, !dbg !205
  %conv10 = ashr exact i32 %sext, 16, !dbg !205
  %and11 = and i32 %srn, 63, !dbg !206
  %mul = mul nsw i32 %conv10, %and11, !dbg !207
  call void @llvm.dbg.value(metadata i32 %mul, metadata !208, metadata !DIExpression(DW_OP_plus_uconst, 48, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !195
  %add12 = shl i32 %mul, 12, !dbg !209
  %5 = add i32 %add12, 196608, !dbg !209
  %conv15 = ashr i32 %5, 16, !dbg !209
  %conv16 = sext i16 %conv9 to i32, !dbg !210
  %sub17 = sub nsw i32 0, %conv16, !dbg !211
  %shr18 = ashr i32 %conv15, %sub17, !dbg !212
  call void @llvm.dbg.value(metadata i32 %shr18, metadata !213, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !195
  ret i32 %shr18, !dbg !214
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef %val, i16* noundef %table, i32 noundef %size) #0 !dbg !215 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i16* %table, metadata !221, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 %size, metadata !222, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 0, metadata !223, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 1, metadata !224, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 0, metadata !225, metadata !DIExpression()), !dbg !220
  br label %for.cond, !dbg !226

for.cond:                                         ; preds = %for.inc, %entry
  call void @llvm.dbg.value(metadata i32 undef, metadata !223, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 undef, metadata !225, metadata !DIExpression()), !dbg !220
  br i1 false, label %for.body, label %for.end, !dbg !228

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !229

for.inc:                                          ; preds = %for.body
  br label %for.cond, !dbg !232, !llvm.loop !233

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !236
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_abs(i32 noundef %num) #0 !dbg !237 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !240, metadata !DIExpression()), !dbg !241
  ret i32 %num, !dbg !242
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_predictor_zero(%struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !243 {
entry:
  call void @llvm.dbg.value(metadata %struct.g723_enc_state_t* %state_ptr, metadata !247, metadata !DIExpression()), !dbg !248
  %arrayidx = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 0, !dbg !249
  %0 = load i16, i16* %arrayidx, align 4, !dbg !249
  %1 = ashr i16 %0, 2, !dbg !250
  %shr = sext i16 %1 to i32, !dbg !250
  %arrayidx1 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 0, !dbg !251
  %2 = load i16, i16* %arrayidx1, align 4, !dbg !251
  %conv2 = sext i16 %2 to i32, !dbg !251
  %call = call arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %shr, i32 noundef %conv2) #4, !dbg !252
  call void @llvm.dbg.value(metadata i32 %call, metadata !253, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i32 1, metadata !254, metadata !DIExpression()), !dbg !248
  br label %for.cond, !dbg !255

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ], !dbg !257
  %sezi.0 = phi i32 [ %call, %entry ], [ %add, %for.inc ], !dbg !248
  call void @llvm.dbg.value(metadata i32 %sezi.0, metadata !253, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !254, metadata !DIExpression()), !dbg !248
  %exitcond.not = icmp eq i32 %i.0, 2, !dbg !258
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !260

for.body:                                         ; preds = %for.cond
  %arrayidx5 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 %i.0, !dbg !261
  %3 = load i16, i16* %arrayidx5, align 2, !dbg !261
  %4 = ashr i16 %3, 2, !dbg !262
  %shr7 = sext i16 %4 to i32, !dbg !262
  %arrayidx9 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 %i.0, !dbg !263
  %5 = load i16, i16* %arrayidx9, align 2, !dbg !263
  %conv10 = sext i16 %5 to i32, !dbg !263
  %call11 = call arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %shr7, i32 noundef %conv10) #4, !dbg !264
  call void @llvm.dbg.value(metadata !DIArgList(i32 %sezi.0, i32 %call11), metadata !253, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !248
  br label %for.inc, !dbg !265

for.inc:                                          ; preds = %for.body
  %add = add nsw i32 %sezi.0, %call11, !dbg !266
  call void @llvm.dbg.value(metadata i32 %add, metadata !253, metadata !DIExpression()), !dbg !248
  %inc = add nuw nsw i32 %i.0, 1, !dbg !267
  call void @llvm.dbg.value(metadata i32 %inc, metadata !254, metadata !DIExpression()), !dbg !248
  br label %for.cond, !dbg !268, !llvm.loop !269

for.end:                                          ; preds = %for.cond
  ret i32 %sezi.0, !dbg !271
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_predictor_pole(%struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !272 {
entry:
  call void @llvm.dbg.value(metadata %struct.g723_enc_state_t* %state_ptr, metadata !273, metadata !DIExpression()), !dbg !274
  %arrayidx = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 1, !dbg !275
  %0 = load i16, i16* %arrayidx, align 2, !dbg !275
  %1 = ashr i16 %0, 2, !dbg !276
  %shr = sext i16 %1 to i32, !dbg !276
  %arrayidx1 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 1, !dbg !277
  %2 = load i16, i16* %arrayidx1, align 2, !dbg !277
  %conv2 = sext i16 %2 to i32, !dbg !277
  %call = call arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %shr, i32 noundef %conv2) #4, !dbg !278
  %arrayidx4 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 0, !dbg !279
  %3 = load i16, i16* %arrayidx4, align 4, !dbg !279
  %4 = ashr i16 %3, 2, !dbg !280
  %shr6 = sext i16 %4 to i32, !dbg !280
  %arrayidx8 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 0, !dbg !281
  %5 = load i16, i16* %arrayidx8, align 4, !dbg !281
  %conv9 = sext i16 %5 to i32, !dbg !281
  %call10 = call arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %shr6, i32 noundef %conv9) #4, !dbg !282
  %add = add nsw i32 %call, %call10, !dbg !283
  ret i32 %add, !dbg !284
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_step_size(%struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !285 {
entry:
  call void @llvm.dbg.value(metadata %struct.g723_enc_state_t* %state_ptr, metadata !286, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.declare(metadata i32* undef, metadata !288, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.declare(metadata i32* undef, metadata !290, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata i32* undef, metadata !292, metadata !DIExpression()), !dbg !293
  %yu = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 1, !dbg !294
  %0 = load i16, i16* %yu, align 4, !dbg !294
  %conv = sext i16 %0 to i32, !dbg !295
  ret i32 %conv, !dbg !296
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_quantize(i32 noundef %d, i32 noundef %y, i16* noundef %table, i32 noundef %size) #0 !dbg !297 {
entry:
  call void @llvm.dbg.value(metadata i32 %d, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 %y, metadata !302, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i16* %table, metadata !303, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 %size, metadata !304, metadata !DIExpression()), !dbg !301
  %call = call arm_aapcs_vfpcc i32 @g723_enc_abs(i32 noundef %d) #4, !dbg !305
  call void @llvm.dbg.value(metadata i32 %call, metadata !306, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !301
  %sext = shl i32 %call, 16, !dbg !307
  %shr = ashr i32 %sext, 17, !dbg !308
  %call2 = call arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef %shr, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @g723_enc_power2, i32 0, i32 0), i32 noundef 15) #4, !dbg !309
  call void @llvm.dbg.value(metadata i32 %call2, metadata !310, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !301
  %sext1 = shl i32 %call, 16, !dbg !311
  %shl = ashr exact i32 %sext1, 9, !dbg !312
  %sext2 = shl i32 %call2, 16, !dbg !313
  %conv5 = ashr exact i32 %sext2, 16, !dbg !313
  %shr6 = ashr i32 %shl, %conv5, !dbg !314
  call void @llvm.dbg.value(metadata i32 %shr6, metadata !315, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value)), !dbg !301
  call void @llvm.dbg.value(metadata !DIArgList(i32 %call2, i32 %shr6), metadata !316, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 7, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 127, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !301
  %0 = shl i32 %call2, 23, !dbg !317
  %conv7 = shl i32 %shr6, 16, !dbg !317
  %1 = and i32 %conv7, 8323072, !dbg !317
  %sext4 = or i32 %0, %1, !dbg !317
  call void @llvm.dbg.value(metadata !DIArgList(i32 %sext4, i32 %y), metadata !318, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shr, DW_OP_minus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !301
  %2 = shl i32 %y, 14, !dbg !319
  %sub6 = and i32 %2, -65536, !dbg !319
  %3 = sub i32 %sext4, %sub6, !dbg !319
  %conv15 = ashr exact i32 %3, 16, !dbg !319
  %call16 = call arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef %conv15, i16* noundef %table, i32 noundef %size) #4, !dbg !320
  call void @llvm.dbg.value(metadata i32 %call16, metadata !321, metadata !DIExpression()), !dbg !301
  ret i32 %call16, !dbg !322
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_reconstruct(i32 noundef %sign, i32 noundef %dqln, i32 noundef %y) #0 !dbg !323 {
entry:
  call void @llvm.dbg.value(metadata i32 %sign, metadata !326, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i32 %dqln, metadata !328, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i32 %y, metadata !329, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.declare(metadata i16* undef, metadata !330, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata i16* undef, metadata !332, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.declare(metadata i16* undef, metadata !334, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata !DIArgList(i32 %dqln, i32 %y), metadata !336, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !327
  %tobool.not = icmp eq i32 %sign, 0, !dbg !337
  %cond = select i1 %tobool.not, i32 0, i32 -32768, !dbg !337
  ret i32 %cond, !dbg !338
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @g723_enc_update(i32 noundef %code_size, i32 noundef %y, i32 noundef %wi, i32 noundef %fi, i32 noundef %dq, i32 noundef %sr, i32 noundef %dqsez, %struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !339 {
entry:
  call void @llvm.dbg.value(metadata i32 %code_size, metadata !342, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 %y, metadata !344, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 %wi, metadata !345, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 %fi, metadata !346, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 %dq, metadata !347, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 %sr, metadata !348, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 %dqsez, metadata !349, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata %struct.g723_enc_state_t* %state_ptr, metadata !350, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.declare(metadata i16* undef, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata i16* undef, metadata !353, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.declare(metadata i16* undef, metadata !355, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata i16* undef, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata i16* undef, metadata !359, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i1 undef, metadata !361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !343
  call void @llvm.dbg.value(metadata i32 %dq, metadata !362, metadata !DIExpression(DW_OP_constu, 32767, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !343
  %yl = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 0, !dbg !363
  %0 = load i32, i32* %yl, align 4, !dbg !363
  call void @llvm.dbg.value(metadata i32 %0, metadata !364, metadata !DIExpression(DW_OP_constu, 15, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !343
  call void @llvm.dbg.value(metadata i32 undef, metadata !365, metadata !DIExpression(DW_OP_constu, 10, DW_OP_shra, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !343
  call void @llvm.dbg.value(metadata !DIArgList(i32 32, i32 %0, i32 undef), metadata !366, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 10, DW_OP_shra, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !343
  %1 = shl i32 %0, 1, !dbg !367
  %cmp11 = icmp sgt i32 %1, 655359, !dbg !368
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !369

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !369

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !369

cond.end:                                         ; preds = %cond.false, %cond.true
  call void @llvm.dbg.value(metadata i32 undef, metadata !370, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !343
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i32 undef), metadata !371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 1, DW_OP_shra, DW_OP_plus, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !343
  call void @llvm.dbg.value(metadata i8 0, metadata !372, metadata !DIExpression()), !dbg !343
  %yu25 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 1, !dbg !373
  store i16 544, i16* %yu25, align 4, !dbg !374
  %yl28 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 0, !dbg !375
  %2 = load i32, i32* %yl28, align 4, !dbg !375
  %sub29 = sub nsw i32 0, %2, !dbg !376
  %shr30 = ashr i32 %sub29, 6, !dbg !377
  %add31 = add nsw i32 %shr30, 544, !dbg !378
  %yl32 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 0, !dbg !379
  %add33 = add nsw i32 %2, %add31, !dbg !380
  store i32 %add33, i32* %yl32, align 4, !dbg !380
  %arrayidx = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 0, !dbg !381
  store i16 0, i16* %arrayidx, align 4, !dbg !382
  %arrayidx35 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 1, !dbg !383
  store i16 0, i16* %arrayidx35, align 2, !dbg !384
  %arrayidx36 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 0, !dbg !385
  store i16 0, i16* %arrayidx36, align 4, !dbg !386
  %arrayidx38 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 1, !dbg !387
  store i16 0, i16* %arrayidx38, align 2, !dbg !388
  %arrayidx40 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 2, !dbg !389
  store i16 0, i16* %arrayidx40, align 4, !dbg !390
  %arrayidx42 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 3, !dbg !391
  store i16 0, i16* %arrayidx42, align 2, !dbg !392
  %arrayidx44 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 4, !dbg !393
  store i16 0, i16* %arrayidx44, align 4, !dbg !394
  %arrayidx46 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 5, !dbg !395
  store i16 0, i16* %arrayidx46, align 2, !dbg !396
  call void @llvm.dbg.value(metadata i32 1, metadata !397, metadata !DIExpression()), !dbg !343
  br label %for.cond, !dbg !398

for.cond:                                         ; preds = %for.inc, %cond.end
  %cnt.0 = phi i32 [ 1, %cond.end ], [ %dec, %for.inc ], !dbg !400
  call void @llvm.dbg.value(metadata i32 %cnt.0, metadata !397, metadata !DIExpression()), !dbg !343
  %cmp47.not = icmp eq i32 %cnt.0, 0, !dbg !401
  br i1 %cmp47.not, label %for.end, label %for.body, !dbg !403

for.body:                                         ; preds = %for.cond
  %sub50 = add nsw i32 %cnt.0, -1, !dbg !404
  %arrayidx51 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 %sub50, !dbg !405
  %3 = load i16, i16* %arrayidx51, align 2, !dbg !405
  %arrayidx53 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 %cnt.0, !dbg !406
  store i16 %3, i16* %arrayidx53, align 2, !dbg !407
  br label %for.inc, !dbg !406

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %cnt.0, -1, !dbg !408
  call void @llvm.dbg.value(metadata i32 %dec, metadata !397, metadata !DIExpression()), !dbg !343
  br label %for.cond, !dbg !409, !llvm.loop !410

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata i1 undef, metadata !361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !343
  %dqsez.lobit = lshr i32 %dqsez, 31, !dbg !412
  %4 = trunc i32 %dqsez.lobit to i16, !dbg !412
  call void @llvm.dbg.value(metadata i16 %4, metadata !361, metadata !DIExpression()), !dbg !343
  %arrayidx55 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 0, !dbg !413
  store i16 -992, i16* %arrayidx55, align 4, !dbg !414
  %arrayidx57 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 0, !dbg !415
  %5 = load i16, i16* %arrayidx57, align 4, !dbg !415
  %arrayidx59 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 1, !dbg !416
  store i16 %5, i16* %arrayidx59, align 2, !dbg !417
  %arrayidx61 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 0, !dbg !418
  store i16 32, i16* %arrayidx61, align 4, !dbg !419
  %arrayidx62 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 7, i32 0, !dbg !420
  %6 = load i16, i16* %arrayidx62, align 4, !dbg !420
  %arrayidx64 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 7, i32 1, !dbg !421
  store i16 %6, i16* %arrayidx64, align 2, !dbg !422
  %arrayidx66 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 7, i32 0, !dbg !423
  store i16 %4, i16* %arrayidx66, align 4, !dbg !424
  %td = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 10, !dbg !425
  store i8 0, i8* %td, align 4, !dbg !426
  %dms = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 2, !dbg !427
  %7 = load i16, i16* %dms, align 2, !dbg !427
  %conv67 = sext i16 %7 to i32, !dbg !428
  %sub68 = sub nsw i32 %fi, %conv67, !dbg !429
  %8 = lshr i32 %sub68, 5, !dbg !430
  %dms70 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 2, !dbg !431
  %9 = trunc i32 %8 to i16, !dbg !432
  %conv73 = add i16 %7, %9, !dbg !432
  store i16 %conv73, i16* %dms70, align 2, !dbg !432
  %shl74 = shl i32 %fi, 2, !dbg !433
  %dml = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 3, !dbg !434
  %10 = load i16, i16* %dml, align 4, !dbg !434
  %conv75 = sext i16 %10 to i32, !dbg !435
  %sub76 = sub nsw i32 %shl74, %conv75, !dbg !436
  %11 = lshr i32 %sub76, 7, !dbg !437
  %dml78 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 3, !dbg !438
  %12 = trunc i32 %11 to i16, !dbg !439
  %conv81 = add i16 %10, %12, !dbg !439
  store i16 %conv81, i16* %dml78, align 4, !dbg !439
  %ap = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 4, !dbg !440
  store i16 256, i16* %ap, align 2, !dbg !441
  ret void, !dbg !442
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_alaw2linear(i8 noundef zeroext %a_val) #0 !dbg !443 {
entry:
  call void @llvm.dbg.value(metadata i8 %a_val, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = xor i8 %a_val, 85, !dbg !448
  call void @llvm.dbg.value(metadata i8 %a_val, metadata !446, metadata !DIExpression(DW_OP_constu, 85, DW_OP_xor, DW_OP_stack_value)), !dbg !447
  %1 = shl i8 %0, 4, !dbg !449
  %shl = zext i8 %1 to i32, !dbg !449
  call void @llvm.dbg.value(metadata i32 %shl, metadata !450, metadata !DIExpression()), !dbg !447
  %2 = lshr i8 %0, 4, !dbg !451
  %3 = and i8 %2, 7, !dbg !451
  %shr = zext i8 %3 to i32, !dbg !451
  call void @llvm.dbg.value(metadata i32 %shr, metadata !452, metadata !DIExpression()), !dbg !447
  %add = or i32 %shl, 264, !dbg !453
  call void @llvm.dbg.value(metadata i32 %add, metadata !450, metadata !DIExpression()), !dbg !447
  %sub = add nsw i32 %shr, -1, !dbg !454
  %shl5 = shl i32 %add, %sub, !dbg !455
  call void @llvm.dbg.value(metadata i32 %shl5, metadata !450, metadata !DIExpression()), !dbg !447
  %tobool.not = icmp sgt i8 %a_val, -1, !dbg !456
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !457

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !457

cond.false:                                       ; preds = %entry
  %sub8 = sub nsw i32 0, %shl5, !dbg !458
  br label %cond.end, !dbg !457

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl5, %cond.true ], [ %sub8, %cond.false ], !dbg !457
  ret i32 %cond, !dbg !459
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_ulaw2linear(i8 noundef zeroext %u_val) #0 !dbg !460 {
entry:
  call void @llvm.dbg.value(metadata i8 %u_val, metadata !461, metadata !DIExpression()), !dbg !462
  %neg = xor i8 %u_val, -1, !dbg !463
  call void @llvm.dbg.value(metadata i8 %neg, metadata !461, metadata !DIExpression()), !dbg !462
  %0 = shl i8 %neg, 3, !dbg !464
  %1 = or i8 %0, -124, !dbg !465
  %add = zext i8 %1 to i32, !dbg !465
  call void @llvm.dbg.value(metadata i32 %add, metadata !466, metadata !DIExpression()), !dbg !462
  %2 = lshr i8 %neg, 4, !dbg !467
  %3 = and i8 %2, 7, !dbg !467
  %shr = zext i8 %3 to i32, !dbg !467
  %shl5 = shl i32 %add, %shr, !dbg !468
  call void @llvm.dbg.value(metadata i32 %shl5, metadata !466, metadata !DIExpression()), !dbg !462
  %tobool.not = icmp slt i8 %u_val, 0, !dbg !469
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !470

cond.true:                                        ; preds = %entry
  %sub = sub nsw i32 132, %shl5, !dbg !471
  br label %cond.end, !dbg !470

cond.false:                                       ; preds = %entry
  %sub8 = add nsw i32 %shl5, -132, !dbg !472
  br label %cond.end, !dbg !470

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub8, %cond.false ], !dbg !470
  ret i32 %cond, !dbg !473
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_g723_24_encoder(i32 noundef %sl, i32 noundef %in_coding, %struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !474 {
entry:
  call void @llvm.dbg.value(metadata i32 %sl, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata i32 %in_coding, metadata !479, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata %struct.g723_enc_state_t* %state_ptr, metadata !480, metadata !DIExpression()), !dbg !478
  %conv = trunc i32 %sl to i8, !dbg !481
  %call = call arm_aapcs_vfpcc i32 @g723_enc_alaw2linear(i8 noundef zeroext %conv) #4, !dbg !482
  %0 = lshr i32 %call, 2, !dbg !483
  call void @llvm.dbg.value(metadata i32 %call, metadata !477, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shra, DW_OP_stack_value)), !dbg !478
  %call1 = call arm_aapcs_vfpcc i32 @g723_enc_predictor_zero(%struct.g723_enc_state_t* noundef %state_ptr) #4, !dbg !484
  call void @llvm.dbg.value(metadata i32 %call1, metadata !485, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !478
  %sext = shl i32 %call1, 16, !dbg !486
  %shr4 = ashr i32 %sext, 17, !dbg !487
  call void @llvm.dbg.value(metadata i32 %shr4, metadata !488, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !478
  %call7 = call arm_aapcs_vfpcc i32 @g723_enc_predictor_pole(%struct.g723_enc_state_t* noundef %state_ptr) #4, !dbg !489
  %add = add i32 %call1, %call7, !dbg !490
  call void @llvm.dbg.value(metadata i32 %add, metadata !491, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !478
  %sext2 = shl i32 %add, 16, !dbg !492
  %shr10 = ashr i32 %sext2, 17, !dbg !493
  call void @llvm.dbg.value(metadata i32 %shr10, metadata !494, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !478
  %sub = sub nsw i32 %0, %shr10, !dbg !495
  call void @llvm.dbg.value(metadata i32 %sub, metadata !496, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !478
  %call14 = call arm_aapcs_vfpcc i32 @g723_enc_step_size(%struct.g723_enc_state_t* noundef %state_ptr) #4, !dbg !497
  call void @llvm.dbg.value(metadata i32 %call14, metadata !498, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !478
  %sext3 = shl i32 %sub, 16, !dbg !499
  %conv16 = ashr exact i32 %sext3, 16, !dbg !499
  %sext4 = shl i32 %call14, 16, !dbg !500
  %conv17 = ashr exact i32 %sext4, 16, !dbg !500
  %call18 = call arm_aapcs_vfpcc i32 @g723_enc_quantize(i32 noundef %conv16, i32 noundef %conv17, i16* noundef getelementptr inbounds ([3 x i16], [3 x i16]* @g723_enc_qtab_723_24, i32 0, i32 0), i32 noundef 3) #4, !dbg !501
  call void @llvm.dbg.value(metadata i32 %call18, metadata !502, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !478
  %and = and i32 %call18, 4, !dbg !503
  %sext6 = shl i32 %call18, 16, !dbg !504
  %idxprom = ashr exact i32 %sext6, 16, !dbg !504
  %arrayidx = getelementptr inbounds [16 x i16], [16 x i16]* @g723_enc_dqlntab, i32 0, i32 %idxprom, !dbg !504
  %1 = load i16, i16* %arrayidx, align 2, !dbg !504
  %conv21 = sext i16 %1 to i32, !dbg !504
  %sext7 = shl i32 %call14, 16, !dbg !505
  %conv22 = ashr exact i32 %sext7, 16, !dbg !505
  %call23 = call arm_aapcs_vfpcc i32 @g723_enc_reconstruct(i32 noundef %and, i32 noundef %conv21, i32 noundef %conv22) #4, !dbg !506
  call void @llvm.dbg.value(metadata i32 %call23, metadata !507, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !478
  %add27 = add i32 %shr10, %call23, !dbg !508
  call void @llvm.dbg.value(metadata i32 %add27, metadata !509, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !478
  %add31 = add i32 %add27, %shr4, !dbg !510
  %sub33 = sub i32 %add31, %shr10, !dbg !511
  call void @llvm.dbg.value(metadata i32 %sub33, metadata !512, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !478
  %sext10 = shl i32 %call14, 16, !dbg !513
  %conv35 = ashr exact i32 %sext10, 16, !dbg !513
  %sext11 = shl i32 %call18, 16, !dbg !514
  %idxprom36 = ashr exact i32 %sext11, 16, !dbg !514
  %arrayidx37 = getelementptr inbounds [16 x i16], [16 x i16]* @g723_enc_witab, i32 0, i32 %idxprom36, !dbg !514
  %2 = load i16, i16* %arrayidx37, align 2, !dbg !514
  %conv38 = sext i16 %2 to i32, !dbg !514
  %sext12 = shl i32 %call18, 16, !dbg !515
  %idxprom39 = ashr exact i32 %sext12, 16, !dbg !515
  %arrayidx40 = getelementptr inbounds [16 x i16], [16 x i16]* @g723_enc_fitab, i32 0, i32 %idxprom39, !dbg !515
  %3 = load i16, i16* %arrayidx40, align 2, !dbg !515
  %conv41 = sext i16 %3 to i32, !dbg !515
  %sext13 = shl i32 %call23, 16, !dbg !516
  %conv42 = ashr exact i32 %sext13, 16, !dbg !516
  %sext14 = shl i32 %add27, 16, !dbg !517
  %conv43 = ashr exact i32 %sext14, 16, !dbg !517
  %sext15 = shl i32 %sub33, 16, !dbg !518
  %conv44 = ashr exact i32 %sext15, 16, !dbg !518
  call arm_aapcs_vfpcc void @g723_enc_update(i32 noundef 3, i32 noundef %conv35, i32 noundef %conv38, i32 noundef %conv41, i32 noundef %conv42, i32 noundef %conv43, i32 noundef %conv44, %struct.g723_enc_state_t* noundef %state_ptr) #4, !dbg !519
  %sext16 = shl i32 %call18, 16, !dbg !520
  %conv45 = ashr exact i32 %sext16, 16, !dbg !520
  ret i32 %conv45, !dbg !521
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_pack_output(i8 noundef zeroext %code, i32 noundef %bits) #0 !dbg !30 {
entry:
  call void @llvm.dbg.value(metadata i8 %code, metadata !522, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 %bits, metadata !524, metadata !DIExpression()), !dbg !523
  %conv = zext i8 %code to i32, !dbg !525
  %0 = load i32, i32* @g723_enc_pack_output.out_bits, align 4, !dbg !526
  %shl = shl i32 %conv, %0, !dbg !527
  %1 = load i32, i32* @g723_enc_pack_output.out_buffer, align 4, !dbg !528
  %or = or i32 %1, %shl, !dbg !528
  store i32 %or, i32* @g723_enc_pack_output.out_buffer, align 4, !dbg !528
  %add = add nsw i32 %0, %bits, !dbg !529
  call void @llvm.dbg.value(metadata i32 %or, metadata !530, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !523
  %sub = add nsw i32 %add, -8, !dbg !531
  store i32 %sub, i32* @g723_enc_pack_output.out_bits, align 4, !dbg !531
  %shr = lshr i32 %or, 8, !dbg !532
  store i32 %shr, i32* @g723_enc_pack_output.out_buffer, align 4, !dbg !532
  %conv2 = and i32 %or, 255, !dbg !533
  %2 = load i32, i32* @g723_enc_pack_output.i, align 4, !dbg !534
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @g723_enc_OUTPUT, i32 0, i32 %2, !dbg !535
  store i32 %conv2, i32* %arrayidx, align 4, !dbg !536
  %add3 = add nsw i32 %2, 1, !dbg !537
  store i32 %add3, i32* @g723_enc_pack_output.i, align 4, !dbg !538
  %3 = load i32, i32* @g723_enc_pack_output.out_bits, align 4, !dbg !539
  %cmp = icmp sgt i32 %3, 0, !dbg !540
  %conv4 = zext i1 %cmp to i32, !dbg !540
  ret i32 %conv4, !dbg !541
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @g723_enc_init_state(%struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !542 {
entry:
  call void @llvm.dbg.value(metadata %struct.g723_enc_state_t* %state_ptr, metadata !545, metadata !DIExpression()), !dbg !546
  %yl = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 0, !dbg !547
  store i32 34816, i32* %yl, align 4, !dbg !548
  %yu = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 1, !dbg !549
  store i16 544, i16* %yu, align 4, !dbg !550
  %dms = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 2, !dbg !551
  store i16 0, i16* %dms, align 2, !dbg !552
  %dml = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 3, !dbg !553
  store i16 0, i16* %dml, align 4, !dbg !554
  %ap = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 4, !dbg !555
  store i16 0, i16* %ap, align 2, !dbg !556
  call void @llvm.dbg.value(metadata i32 0, metadata !557, metadata !DIExpression()), !dbg !546
  br label %for.cond, !dbg !558

for.cond:                                         ; preds = %for.inc, %entry
  %cnta.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !560
  call void @llvm.dbg.value(metadata i32 %cnta.0, metadata !557, metadata !DIExpression()), !dbg !546
  %exitcond.not = icmp eq i32 %cnta.0, 1, !dbg !561
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !563

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 %cnta.0, !dbg !564
  store i16 0, i16* %arrayidx, align 2, !dbg !566
  %arrayidx1 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 7, i32 %cnta.0, !dbg !567
  store i16 0, i16* %arrayidx1, align 2, !dbg !568
  %arrayidx2 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 %cnta.0, !dbg !569
  store i16 32, i16* %arrayidx2, align 2, !dbg !570
  br label %for.inc, !dbg !571

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %cnta.0, 1, !dbg !572
  call void @llvm.dbg.value(metadata i32 %inc, metadata !557, metadata !DIExpression()), !dbg !546
  br label %for.cond, !dbg !573, !llvm.loop !574

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !557, metadata !DIExpression()), !dbg !546
  br label %for.cond3, !dbg !576

for.cond3:                                        ; preds = %for.inc8, %for.end
  %cnta.1 = phi i32 [ 0, %for.end ], [ %inc9, %for.inc8 ], !dbg !578
  call void @llvm.dbg.value(metadata i32 %cnta.1, metadata !557, metadata !DIExpression()), !dbg !546
  %exitcond1.not = icmp eq i32 %cnta.1, 1, !dbg !579
  br i1 %exitcond1.not, label %for.end10, label %for.body5, !dbg !581

for.body5:                                        ; preds = %for.cond3
  %arrayidx6 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 %cnta.1, !dbg !582
  store i16 0, i16* %arrayidx6, align 2, !dbg !584
  %arrayidx7 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 %cnta.1, !dbg !585
  store i16 32, i16* %arrayidx7, align 2, !dbg !586
  br label %for.inc8, !dbg !587

for.inc8:                                         ; preds = %for.body5
  %inc9 = add nuw nsw i32 %cnta.1, 1, !dbg !588
  call void @llvm.dbg.value(metadata i32 %inc9, metadata !557, metadata !DIExpression()), !dbg !546
  br label %for.cond3, !dbg !589, !llvm.loop !590

for.end10:                                        ; preds = %for.cond3
  %td = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 10, !dbg !592
  store i8 0, i8* %td, align 4, !dbg !593
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @g723_enc_init() #0 !dbg !595 {
entry:
  %x = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x, metadata !598, metadata !DIExpression()), !dbg !600
  store volatile i32 0, i32* %x, align 4, !dbg !600
  call arm_aapcs_vfpcc void @g723_enc_init_state(%struct.g723_enc_state_t* noundef nonnull @g723_enc_state) #4, !dbg !601
  call void @llvm.dbg.value(metadata i32 0, metadata !602, metadata !DIExpression()), !dbg !603
  br label %for.cond, !dbg !604

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !606
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !602, metadata !DIExpression()), !dbg !603
  %exitcond.not = icmp eq i32 %i.0, 1, !dbg !607
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !609

for.body:                                         ; preds = %for.cond
  %0 = load volatile i32, i32* %x, align 4, !dbg !610
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @g723_enc_INPUT, i32 0, i32 %i.0, !dbg !611
  %1 = load i32, i32* %arrayidx, align 4, !dbg !612
  %add = add i32 %1, %0, !dbg !612
  store i32 %add, i32* %arrayidx, align 4, !dbg !612
  br label %for.inc, !dbg !611

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !613
  call void @llvm.dbg.value(metadata i32 %inc, metadata !602, metadata !DIExpression()), !dbg !603
  br label %for.cond, !dbg !614, !llvm.loop !615

for.end:                                          ; preds = %for.cond
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_return() #0 !dbg !618 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !621, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i32 0, metadata !623, metadata !DIExpression()), !dbg !622
  br label %for.cond, !dbg !624

for.cond:                                         ; preds = %for.inc, %entry
  call void @llvm.dbg.value(metadata i32 undef, metadata !623, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i32 undef, metadata !621, metadata !DIExpression()), !dbg !622
  br i1 false, label %for.body, label %for.end, !dbg !626

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !627

for.inc:                                          ; preds = %for.body
  br label %for.cond, !dbg !629, !llvm.loop !630

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !632
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @g723_enc_main() #0 !dbg !633 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !634, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i32 3, metadata !636, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i32 2, metadata !637, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i16* undef, metadata !638, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i32 0, metadata !634, metadata !DIExpression()), !dbg !635
  br label %for.cond, !dbg !639

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !641
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !634, metadata !DIExpression()), !dbg !635
  %exitcond.not = icmp eq i32 %i.0, 1, !dbg !642
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !644

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @g723_enc_INPUT, i32 0, i32 %i.0, !dbg !645
  %0 = load i32, i32* %arrayidx, align 4, !dbg !645
  call void @llvm.dbg.value(metadata i32 %0, metadata !647, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !635
  %sext = shl i32 %0, 16, !dbg !648
  %conv1 = ashr exact i32 %sext, 16, !dbg !648
  %call = call arm_aapcs_vfpcc i32 @g723_enc_g723_24_encoder(i32 noundef %conv1, i32 noundef 2, %struct.g723_enc_state_t* noundef nonnull @g723_enc_state) #4, !dbg !649
  %conv2 = trunc i32 %call to i8, !dbg !649
  call void @llvm.dbg.value(metadata i8 %conv2, metadata !650, metadata !DIExpression()), !dbg !635
  %call3 = call arm_aapcs_vfpcc i32 @g723_enc_pack_output(i8 noundef zeroext %conv2, i32 noundef 3) #4, !dbg !651
  call void @llvm.dbg.value(metadata i32 %call3, metadata !652, metadata !DIExpression()), !dbg !635
  br label %for.inc, !dbg !653

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !654
  call void @llvm.dbg.value(metadata i32 %inc, metadata !634, metadata !DIExpression()), !dbg !635
  br label %for.cond, !dbg !655, !llvm.loop !656

for.end:                                          ; preds = %for.cond
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !659 {
entry:
  call arm_aapcs_vfpcc void @g723_enc_init() #4, !dbg !660
  call arm_aapcs_vfpcc void @g723_enc_main() #4, !dbg !661
  %call = call arm_aapcs_vfpcc i32 @g723_enc_return() #4, !dbg !662
  ret i32 %call, !dbg !663
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #2 !dbg !664 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !666
  br i1 %cmp, label %if.then, label %if.end, !dbg !667

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !668
  unreachable, !dbg !668

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !669
  ret i64 %0, !dbg !670
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #3 !dbg !671 {
entry:
  unreachable, !dbg !672
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #2 !dbg !673 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !674
  br i1 %cmp, label %if.then, label %if.end, !dbg !675

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !676
  unreachable, !dbg !676

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !677
  ret i32 %0, !dbg !678
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !679 {
entry:
  %add = add i64 %a, %b, !dbg !680
  %cmp = icmp sgt i64 %b, -1, !dbg !681
  br i1 %cmp, label %if.then, label %if.else, !dbg !682

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !683
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !684

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !685
  unreachable, !dbg !685

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !686

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !687
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !688

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !689
  unreachable, !dbg !689

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !690
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !691 {
entry:
  %add = add i32 %a, %b, !dbg !692
  %cmp = icmp sgt i32 %b, -1, !dbg !693
  br i1 %cmp, label %if.then, label %if.else, !dbg !694

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !695
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !696

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !697
  unreachable, !dbg !697

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !698

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !699
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !700

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !701
  unreachable, !dbg !701

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !702
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #2 !dbg !703 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !704
  store i64 %a, i64* %all, align 8, !dbg !705
  %and = and i32 %b, 32, !dbg !706
  %tobool.not = icmp eq i32 %and, 0, !dbg !706
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !707

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !708
  store i32 0, i32* %low, align 8, !dbg !709
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !710
  %0 = load i32, i32* %low2, align 8, !dbg !710
  %sub = add nsw i32 %b, -32, !dbg !711
  %shl = shl i32 %0, %sub, !dbg !712
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !713
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !714
  store i32 %shl, i32* %high, align 4, !dbg !715
  br label %if.end18, !dbg !716

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !717
  br i1 %cmp, label %if.then4, label %if.end, !dbg !718

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !719

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !720
  %1 = load i32, i32* %low6, align 8, !dbg !720
  %shl7 = shl i32 %1, %b, !dbg !721
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !722
  store i32 %shl7, i32* %low9, align 8, !dbg !723
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !724
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !725
  %2 = load i32, i32* %high11, align 4, !dbg !725
  %shl12 = shl i32 %2, %b, !dbg !726
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !727
  %3 = load i32, i32* %low14, align 8, !dbg !727
  %sub15 = sub nsw i32 32, %b, !dbg !728
  %shr = lshr i32 %3, %sub15, !dbg !729
  %or = or i32 %shl12, %shr, !dbg !730
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !731
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !732
  store i32 %or, i32* %high17, align 4, !dbg !733
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !734
  %4 = load i64, i64* %all19, align 8, !dbg !734
  br label %return, !dbg !735

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !736
  ret i64 %retval.0, !dbg !737
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !738 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !739
  store i64 %a, i64* %all, align 8, !dbg !740
  %and = and i32 %b, 32, !dbg !741
  %tobool.not = icmp eq i32 %and, 0, !dbg !741
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !742

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !743
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !744
  %0 = load i32, i32* %high, align 4, !dbg !744
  %shr = ashr i32 %0, 31, !dbg !745
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !746
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !747
  store i32 %shr, i32* %high2, align 4, !dbg !748
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !749
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !750
  %1 = load i32, i32* %high4, align 4, !dbg !750
  %sub = add nsw i32 %b, -32, !dbg !751
  %shr5 = ashr i32 %1, %sub, !dbg !752
  %low = bitcast %union.dwords* %result to i32*, !dbg !753
  store i32 %shr5, i32* %low, align 8, !dbg !754
  br label %if.end21, !dbg !755

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !756
  br i1 %cmp, label %if.then7, label %if.end, !dbg !757

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !758

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !759
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !760
  %2 = load i32, i32* %high9, align 4, !dbg !760
  %shr10 = ashr i32 %2, %b, !dbg !761
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !762
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !763
  store i32 %shr10, i32* %high12, align 4, !dbg !764
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !765
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !766
  %3 = load i32, i32* %high14, align 4, !dbg !766
  %sub15 = sub nsw i32 32, %b, !dbg !767
  %shl = shl i32 %3, %sub15, !dbg !768
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !769
  %4 = load i32, i32* %low17, align 8, !dbg !769
  %shr18 = lshr i32 %4, %b, !dbg !770
  %or = or i32 %shl, %shr18, !dbg !771
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !772
  store i32 %or, i32* %low20, align 8, !dbg !773
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !774
  %5 = load i64, i64* %all22, align 8, !dbg !774
  br label %return, !dbg !775

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !776
  ret i64 %retval.0, !dbg !777
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #2 !dbg !778 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !779
  store i64 %a, i64* %all, align 8, !dbg !780
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !781
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !782
  %0 = load i32, i32* %high, align 4, !dbg !782
  %cmp = icmp eq i32 %0, 0, !dbg !783
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !784
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !785
  %1 = load i32, i32* %high2, align 4, !dbg !785
  %low = bitcast %union.dwords* %x to i32*, !dbg !786
  %2 = load i32, i32* %low, align 8, !dbg !786
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !787
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !788, !range !789
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !790
  %add = add nuw nsw i32 %4, %and5, !dbg !791
  ret i32 %add, !dbg !792
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #2 !dbg !793 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !794
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !795
  %sub = sub nuw nsw i32 16, %shl, !dbg !796
  %shr = lshr i32 %a, %sub, !dbg !797
  %and1 = and i32 %shr, 65280, !dbg !798
  %cmp2 = icmp eq i32 %and1, 0, !dbg !799
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !800
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !801
  %shr6 = lshr i32 %shr, %sub5, !dbg !802
  %add = or i32 %shl, %shl4, !dbg !803
  %and7 = and i32 %shr6, 240, !dbg !804
  %cmp8 = icmp eq i32 %and7, 0, !dbg !805
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !806
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !807
  %shr12 = lshr i32 %shr6, %sub11, !dbg !808
  %add13 = or i32 %add, %shl10, !dbg !809
  %and14 = and i32 %shr12, 12, !dbg !810
  %cmp15 = icmp eq i32 %and14, 0, !dbg !811
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !812
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !813
  %shr19 = lshr i32 %shr12, %sub18, !dbg !814
  %add20 = or i32 %add13, %shl17, !dbg !815
  %sub21 = sub i32 2, %shr19, !dbg !816
  %and22 = lshr i32 %shr19, 1, !dbg !817
  %0 = or i32 %and22, -2, !dbg !817
  %.neg = add nsw i32 %0, 1, !dbg !817
  %and26 = and i32 %sub21, %.neg, !dbg !818
  %add27 = add i32 %add20, %and26, !dbg !819
  ret i32 %add27, !dbg !820
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !821 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !822
  store i64 %a, i64* %all, align 8, !dbg !823
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !824
  store i64 %b, i64* %all1, align 8, !dbg !825
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !826
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !827
  %0 = load i32, i32* %high, align 4, !dbg !827
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !828
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !829
  %1 = load i32, i32* %high3, align 4, !dbg !829
  %cmp = icmp slt i32 %0, %1, !dbg !830
  br i1 %cmp, label %if.then, label %if.end, !dbg !831

if.then:                                          ; preds = %entry
  br label %return, !dbg !832

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !833
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !834
  %2 = load i32, i32* %high5, align 4, !dbg !834
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !835
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !836
  %3 = load i32, i32* %high7, align 4, !dbg !836
  %cmp8 = icmp sgt i32 %2, %3, !dbg !837
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !838

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !839

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !840
  %4 = load i32, i32* %low, align 8, !dbg !840
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !841
  %5 = load i32, i32* %low13, align 8, !dbg !841
  %cmp14 = icmp ult i32 %4, %5, !dbg !842
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !843

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !844

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !845
  %6 = load i32, i32* %low18, align 8, !dbg !845
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !846
  %7 = load i32, i32* %low20, align 8, !dbg !846
  %cmp21 = icmp ugt i32 %6, %7, !dbg !847
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !848

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !849

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !850

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !851
  ret i32 %retval.0, !dbg !852
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !853 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !854
  %sub = add nsw i32 %call, -1, !dbg !855
  ret i32 %sub, !dbg !856
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #2 !dbg !857 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !858
  store i64 %a, i64* %all, align 8, !dbg !859
  %low = bitcast %union.dwords* %x to i32*, !dbg !860
  %0 = load i32, i32* %low, align 8, !dbg !860
  %cmp = icmp eq i32 %0, 0, !dbg !861
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !862
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !863
  %1 = load i32, i32* %high, align 4, !dbg !863
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !864
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !865, !range !789
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !866
  %add = add nuw nsw i32 %3, %and5, !dbg !867
  ret i32 %add, !dbg !868
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #2 !dbg !869 {
entry:
  %and = and i32 %a, 65535, !dbg !870
  %cmp = icmp eq i32 %and, 0, !dbg !871
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !872
  %shr = lshr i32 %a, %shl, !dbg !873
  %and1 = and i32 %shr, 255, !dbg !874
  %cmp2 = icmp eq i32 %and1, 0, !dbg !875
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !876
  %shr5 = lshr i32 %shr, %shl4, !dbg !877
  %add = or i32 %shl, %shl4, !dbg !878
  %and6 = and i32 %shr5, 15, !dbg !879
  %cmp7 = icmp eq i32 %and6, 0, !dbg !880
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !881
  %shr10 = lshr i32 %shr5, %shl9, !dbg !882
  %add11 = or i32 %add, %shl9, !dbg !883
  %and12 = and i32 %shr10, 3, !dbg !884
  %cmp13 = icmp eq i32 %and12, 0, !dbg !885
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !886
  %shr16 = lshr i32 %shr10, %shl15, !dbg !887
  %add18 = or i32 %add11, %shl15, !dbg !888
  %and17 = lshr i32 %shr16, 1, !dbg !889
  %shr19 = and i32 %and17, 1, !dbg !889
  %sub = sub nuw nsw i32 2, %shr19, !dbg !890
  %0 = or i32 %shr16, -2, !dbg !891
  %.neg = add nsw i32 %0, 1, !dbg !891
  %and24 = and i32 %sub, %.neg, !dbg !892
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !893
  ret i32 %add25, !dbg !894
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !895 {
entry:
  %shr = ashr i64 %a, 63, !dbg !896
  %shr1 = ashr i64 %b, 63, !dbg !897
  %xor = xor i64 %shr, %a, !dbg !898
  %sub = sub nsw i64 %xor, %shr, !dbg !899
  %xor2 = xor i64 %shr1, %b, !dbg !900
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !901
  %xor4 = xor i64 %shr, %shr1, !dbg !902
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !903
  %xor5 = xor i64 %call, %xor4, !dbg !904
  %sub6 = sub i64 %xor5, %xor4, !dbg !905
  ret i64 %sub6, !dbg !906
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !907 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !908
  store i64 %a, i64* %all, align 8, !dbg !909
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !910
  store i64 %b, i64* %all1, align 8, !dbg !911
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !912
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !913
  %0 = load i32, i32* %high, align 4, !dbg !913
  %cmp = icmp eq i32 %0, 0, !dbg !914
  br i1 %cmp, label %if.then, label %if.end23, !dbg !915

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !916
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !917
  %1 = load i32, i32* %high3, align 4, !dbg !917
  %cmp4 = icmp eq i32 %1, 0, !dbg !918
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !919

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !920
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !920

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !921
  %2 = load i32, i32* %low, align 8, !dbg !921
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !922
  %3 = load i32, i32* %low9, align 8, !dbg !922
  %rem10 = urem i32 %2, %3, !dbg !923
  %conv = zext i32 %rem10 to i64, !dbg !924
  store i64 %conv, i64* %rem, align 8, !dbg !925
  br label %if.end, !dbg !926

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !927
  %4 = load i32, i32* %low12, align 8, !dbg !927
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !928
  %5 = load i32, i32* %low14, align 8, !dbg !928
  %div = udiv i32 %4, %5, !dbg !929
  %conv15 = zext i32 %div to i64, !dbg !930
  br label %return, !dbg !931

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !932
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !932

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !933
  %6 = load i32, i32* %low20, align 8, !dbg !933
  %conv21 = zext i32 %6 to i64, !dbg !934
  store i64 %conv21, i64* %rem, align 8, !dbg !935
  br label %if.end22, !dbg !936

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !937

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !938
  %7 = load i32, i32* %low25, align 8, !dbg !938
  %cmp26 = icmp eq i32 %7, 0, !dbg !939
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !940

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !941
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !942
  %8 = load i32, i32* %high30, align 4, !dbg !942
  %cmp31 = icmp eq i32 %8, 0, !dbg !943
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !944

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !945
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !945

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !946
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !947
  %9 = load i32, i32* %high37, align 4, !dbg !947
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !948
  %10 = load i32, i32* %low39, align 8, !dbg !948
  %rem40 = urem i32 %9, %10, !dbg !949
  %conv41 = zext i32 %rem40 to i64, !dbg !950
  store i64 %conv41, i64* %rem, align 8, !dbg !951
  br label %if.end42, !dbg !952

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !953
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !954
  %11 = load i32, i32* %high44, align 4, !dbg !954
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !955
  %12 = load i32, i32* %low46, align 8, !dbg !955
  %div47 = udiv i32 %11, %12, !dbg !956
  %conv48 = zext i32 %div47 to i64, !dbg !957
  br label %return, !dbg !958

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !959
  %13 = load i32, i32* %low51, align 8, !dbg !959
  %cmp52 = icmp eq i32 %13, 0, !dbg !960
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !961

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !962
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !962

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !963
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !964
  %14 = load i32, i32* %high58, align 4, !dbg !964
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !965
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !966
  %15 = load i32, i32* %high60, align 4, !dbg !966
  %rem61 = urem i32 %14, %15, !dbg !967
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !968
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !969
  store i32 %rem61, i32* %high63, align 4, !dbg !970
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !971
  store i32 0, i32* %low65, align 8, !dbg !972
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !973
  %16 = load i64, i64* %all66, align 8, !dbg !973
  store i64 %16, i64* %rem, align 8, !dbg !974
  br label %if.end67, !dbg !975

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !976
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !977
  %17 = load i32, i32* %high69, align 4, !dbg !977
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !978
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !979
  %18 = load i32, i32* %high71, align 4, !dbg !979
  %div72 = udiv i32 %17, %18, !dbg !980
  %conv73 = zext i32 %div72 to i64, !dbg !981
  br label %return, !dbg !982

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !983
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !984
  %19 = load i32, i32* %high76, align 4, !dbg !984
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !985
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !986
  %20 = load i32, i32* %high78, align 4, !dbg !986
  %sub = add i32 %20, -1, !dbg !987
  %and = and i32 %19, %sub, !dbg !988
  %cmp79 = icmp eq i32 %and, 0, !dbg !989
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !990

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !991
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !991

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !992
  %21 = load i32, i32* %low85, align 8, !dbg !992
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !993
  store i32 %21, i32* %low87, align 8, !dbg !994
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !995
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !996
  %22 = load i32, i32* %high89, align 4, !dbg !996
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !997
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !998
  %23 = load i32, i32* %high91, align 4, !dbg !998
  %sub92 = add i32 %23, -1, !dbg !999
  %and93 = and i32 %22, %sub92, !dbg !1000
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1001
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !1002
  store i32 %and93, i32* %high95, align 4, !dbg !1003
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1004
  %24 = load i64, i64* %all96, align 8, !dbg !1004
  store i64 %24, i64* %rem, align 8, !dbg !1005
  br label %if.end97, !dbg !1006

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1007
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !1008
  %25 = load i32, i32* %high99, align 4, !dbg !1008
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1009
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !1010
  %26 = load i32, i32* %high101, align 4, !dbg !1010
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !1011, !range !789
  %shr = lshr i32 %25, %27, !dbg !1012
  %conv102 = zext i32 %shr to i64, !dbg !1013
  br label %return, !dbg !1014

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1015
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !1016
  %28 = load i32, i32* %high105, align 4, !dbg !1016
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !1017, !range !789
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1018
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !1019
  %30 = load i32, i32* %high107, align 4, !dbg !1019
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !1020, !range !789
  %sub108 = sub nsw i32 %29, %31, !dbg !1021
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !1022
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !1023

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !1024
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !1024

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1025
  %32 = load i64, i64* %all114, align 8, !dbg !1025
  store i64 %32, i64* %rem, align 8, !dbg !1026
  br label %if.end115, !dbg !1027

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !1028

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !1029
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !1030
  store i32 0, i32* %low118, align 8, !dbg !1031
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !1032
  %33 = load i32, i32* %low120, align 8, !dbg !1032
  %sub121 = sub nsw i32 31, %sub108, !dbg !1033
  %shl = shl i32 %33, %sub121, !dbg !1034
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1035
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !1036
  store i32 %shl, i32* %high123, align 4, !dbg !1037
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1038
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !1039
  %34 = load i32, i32* %high125, align 4, !dbg !1039
  %shr126 = lshr i32 %34, %inc, !dbg !1040
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1041
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !1042
  store i32 %shr126, i32* %high128, align 4, !dbg !1043
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1044
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !1045
  %35 = load i32, i32* %high130, align 4, !dbg !1045
  %sub131 = sub nsw i32 31, %sub108, !dbg !1046
  %shl132 = shl i32 %35, %sub131, !dbg !1047
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !1048
  %36 = load i32, i32* %low134, align 8, !dbg !1048
  %shr135 = lshr i32 %36, %inc, !dbg !1049
  %or = or i32 %shl132, %shr135, !dbg !1050
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !1051
  store i32 %or, i32* %low137, align 8, !dbg !1052
  br label %if.end317, !dbg !1053

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1054
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !1055
  %37 = load i32, i32* %high139, align 4, !dbg !1055
  %cmp140 = icmp eq i32 %37, 0, !dbg !1056
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !1057

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !1058
  %38 = load i32, i32* %low144, align 8, !dbg !1058
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !1059, !range !789
  %cmp149 = icmp ult i32 %39, 2, !dbg !1059
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !1060

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !1061
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !1061

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !1062
  %40 = load i32, i32* %low155, align 8, !dbg !1062
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !1063
  %41 = load i32, i32* %low157, align 8, !dbg !1063
  %sub158 = add i32 %41, -1, !dbg !1064
  %and159 = and i32 %40, %sub158, !dbg !1065
  %conv160 = zext i32 %and159 to i64, !dbg !1066
  store i64 %conv160, i64* %rem, align 8, !dbg !1067
  br label %if.end161, !dbg !1068

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !1069
  %42 = load i32, i32* %low163, align 8, !dbg !1069
  %cmp164 = icmp eq i32 %42, 1, !dbg !1070
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !1071

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1072
  %43 = load i64, i64* %all167, align 8, !dbg !1072
  br label %return, !dbg !1073

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !1074
  %44 = load i32, i32* %low170, align 8, !dbg !1074
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !1075, !range !789
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1076
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !1077
  %46 = load i32, i32* %high172, align 4, !dbg !1077
  %shr173 = lshr i32 %46, %45, !dbg !1078
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1079
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !1080
  store i32 %shr173, i32* %high175, align 4, !dbg !1081
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1082
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !1083
  %47 = load i32, i32* %high177, align 4, !dbg !1083
  %sub178 = sub nuw nsw i32 32, %45, !dbg !1084
  %shl179 = shl i32 %47, %sub178, !dbg !1085
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !1086
  %48 = load i32, i32* %low181, align 8, !dbg !1086
  %shr182 = lshr i32 %48, %45, !dbg !1087
  %or183 = or i32 %shl179, %shr182, !dbg !1088
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !1089
  store i32 %or183, i32* %low185, align 8, !dbg !1090
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1091
  %49 = load i64, i64* %all186, align 8, !dbg !1091
  br label %return, !dbg !1092

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !1093
  %50 = load i32, i32* %low189, align 8, !dbg !1093
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !1094, !range !789
  %add = add nuw nsw i32 %51, 33, !dbg !1095
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1096
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !1097
  %52 = load i32, i32* %high191, align 4, !dbg !1097
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !1098, !range !789
  %sub192 = sub nsw i32 %add, %53, !dbg !1099
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !1100
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !1101

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !1102
  store i32 0, i32* %low197, align 8, !dbg !1103
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !1104
  %54 = load i32, i32* %low199, align 8, !dbg !1104
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1105
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !1106
  store i32 %54, i32* %high201, align 4, !dbg !1107
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1108
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !1109
  store i32 0, i32* %high203, align 4, !dbg !1110
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1111
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !1112
  %55 = load i32, i32* %high205, align 4, !dbg !1112
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !1113
  store i32 %55, i32* %low207, align 8, !dbg !1114
  br label %if.end262, !dbg !1115

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !1116
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !1117

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !1118
  store i32 0, i32* %low213, align 8, !dbg !1119
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !1120
  %56 = load i32, i32* %low215, align 8, !dbg !1120
  %sub216 = sub nsw i32 32, %sub192, !dbg !1121
  %shl217 = shl i32 %56, %sub216, !dbg !1122
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1123
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !1124
  store i32 %shl217, i32* %high219, align 4, !dbg !1125
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1126
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !1127
  %57 = load i32, i32* %high221, align 4, !dbg !1127
  %shr222 = lshr i32 %57, %sub192, !dbg !1128
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1129
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !1130
  store i32 %shr222, i32* %high224, align 4, !dbg !1131
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1132
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !1133
  %58 = load i32, i32* %high226, align 4, !dbg !1133
  %sub227 = sub nsw i32 32, %sub192, !dbg !1134
  %shl228 = shl i32 %58, %sub227, !dbg !1135
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !1136
  %59 = load i32, i32* %low230, align 8, !dbg !1136
  %shr231 = lshr i32 %59, %sub192, !dbg !1137
  %or232 = or i32 %shl228, %shr231, !dbg !1138
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !1139
  store i32 %or232, i32* %low234, align 8, !dbg !1140
  br label %if.end261, !dbg !1141

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !1142
  %60 = load i32, i32* %low237, align 8, !dbg !1142
  %sub238 = sub nsw i32 64, %sub192, !dbg !1143
  %shl239 = shl i32 %60, %sub238, !dbg !1144
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !1145
  store i32 %shl239, i32* %low241, align 8, !dbg !1146
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1147
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !1148
  %61 = load i32, i32* %high243, align 4, !dbg !1148
  %sub244 = sub nsw i32 64, %sub192, !dbg !1149
  %shl245 = shl i32 %61, %sub244, !dbg !1150
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !1151
  %62 = load i32, i32* %low247, align 8, !dbg !1151
  %sub248 = add nsw i32 %sub192, -32, !dbg !1152
  %shr249 = lshr i32 %62, %sub248, !dbg !1153
  %or250 = or i32 %shl245, %shr249, !dbg !1154
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1155
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !1156
  store i32 %or250, i32* %high252, align 4, !dbg !1157
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1158
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !1159
  store i32 0, i32* %high254, align 4, !dbg !1160
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1161
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !1162
  %63 = load i32, i32* %high256, align 4, !dbg !1162
  %sub257 = add nsw i32 %sub192, -32, !dbg !1163
  %shr258 = lshr i32 %63, %sub257, !dbg !1164
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !1165
  store i32 %shr258, i32* %low260, align 8, !dbg !1166
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !1167

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1168
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !1169
  %64 = load i32, i32* %high265, align 4, !dbg !1169
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !1170, !range !789
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1171
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !1172
  %66 = load i32, i32* %high267, align 4, !dbg !1172
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !1173, !range !789
  %sub268 = sub nsw i32 %65, %67, !dbg !1174
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !1175
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !1176

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !1177
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !1177

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1178
  %68 = load i64, i64* %all274, align 8, !dbg !1178
  store i64 %68, i64* %rem, align 8, !dbg !1179
  br label %if.end275, !dbg !1180

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !1181

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !1182
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !1183
  store i32 0, i32* %low279, align 8, !dbg !1184
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !1185
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !1186

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !1187
  %69 = load i32, i32* %low284, align 8, !dbg !1187
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1188
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !1189
  store i32 %69, i32* %high286, align 4, !dbg !1190
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1191
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !1192
  store i32 0, i32* %high288, align 4, !dbg !1193
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1194
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !1195
  %70 = load i32, i32* %high290, align 4, !dbg !1195
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !1196
  store i32 %70, i32* %low292, align 8, !dbg !1197
  br label %if.end315, !dbg !1198

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !1199
  %71 = load i32, i32* %low295, align 8, !dbg !1199
  %sub296 = sub nsw i32 31, %sub268, !dbg !1200
  %shl297 = shl i32 %71, %sub296, !dbg !1201
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1202
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !1203
  store i32 %shl297, i32* %high299, align 4, !dbg !1204
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1205
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !1206
  %72 = load i32, i32* %high301, align 4, !dbg !1206
  %shr302 = lshr i32 %72, %inc277, !dbg !1207
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1208
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !1209
  store i32 %shr302, i32* %high304, align 4, !dbg !1210
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1211
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !1212
  %73 = load i32, i32* %high306, align 4, !dbg !1212
  %sub307 = sub nsw i32 31, %sub268, !dbg !1213
  %shl308 = shl i32 %73, %sub307, !dbg !1214
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !1215
  %74 = load i32, i32* %low310, align 8, !dbg !1215
  %shr311 = lshr i32 %74, %inc277, !dbg !1216
  %or312 = or i32 %shl308, %shr311, !dbg !1217
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !1218
  store i32 %or312, i32* %low314, align 8, !dbg !1219
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !1220
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !1220
  br label %for.cond, !dbg !1221

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !1220
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !1220
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !1222
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !1221

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1223
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !1224
  %75 = load i32, i32* %high321, align 4, !dbg !1224
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !1225
  %76 = load i32, i32* %low324, align 8, !dbg !1225
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !1226
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1227
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !1228
  store i32 %or326, i32* %high328, align 4, !dbg !1229
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1230
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !1231
  %77 = load i32, i32* %high333, align 4, !dbg !1231
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !1232
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !1233
  store i32 %or335, i32* %low337, align 8, !dbg !1234
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1235
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !1236
  %78 = load i32, i32* %high339, align 4, !dbg !1236
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !1237
  %79 = load i32, i32* %low342, align 8, !dbg !1237
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !1238
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1239
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !1240
  store i32 %or344, i32* %high346, align 4, !dbg !1241
  %shl349 = shl i32 %79, 1, !dbg !1242
  %or350 = or i32 %shl349, %carry.0, !dbg !1243
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !1244
  store i32 %or350, i32* %low352, align 8, !dbg !1245
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1246
  %80 = load i64, i64* %all354, align 8, !dbg !1246
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1247
  %81 = load i64, i64* %all355, align 8, !dbg !1247
  %82 = xor i64 %81, -1, !dbg !1248
  %sub357 = add i64 %80, %82, !dbg !1248
  %isneg = icmp slt i64 %sub357, 0, !dbg !1249
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !1249
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1250
  %sub364 = sub i64 %81, %and362, !dbg !1251
  store i64 %sub364, i64* %all363, align 8, !dbg !1251
  br label %for.inc, !dbg !1252

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !1253
  %conv360 = trunc i64 %and359 to i32, !dbg !1254
  %dec = add i32 %sr.2, -1, !dbg !1255
  br label %for.cond, !dbg !1221, !llvm.loop !1256

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1257
  %83 = load i64, i64* %all365, align 8, !dbg !1257
  %shl366 = shl i64 %83, 1, !dbg !1258
  %conv367 = zext i32 %carry.0 to i64, !dbg !1259
  %or368 = or i64 %shl366, %conv367, !dbg !1260
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1261
  store i64 %or368, i64* %all369, align 8, !dbg !1262
  %tobool370.not = icmp eq i64* %rem, null, !dbg !1263
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !1263

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1264
  %84 = load i64, i64* %all372, align 8, !dbg !1264
  store i64 %84, i64* %rem, align 8, !dbg !1265
  br label %if.end373, !dbg !1266

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1267
  %85 = load i64, i64* %all374, align 8, !dbg !1267
  br label %return, !dbg !1268

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !1220
  ret i64 %retval.0, !dbg !1269
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !1270 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !1271
  %mul = mul nsw i64 %call, %b, !dbg !1272
  %sub = sub nsw i64 %a, %mul, !dbg !1273
  store i64 %sub, i64* %rem, align 8, !dbg !1274
  ret i64 %call, !dbg !1275
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !1276 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1277
  %mul = mul nsw i32 %call, %b, !dbg !1278
  %sub = sub nsw i32 %a, %mul, !dbg !1279
  store i32 %sub, i32* %rem, align 4, !dbg !1280
  ret i32 %call, !dbg !1281
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1282 {
entry:
  %shr = ashr i32 %a, 31, !dbg !1283
  %shr1 = ashr i32 %b, 31, !dbg !1284
  %xor = xor i32 %shr, %a, !dbg !1285
  %sub = sub nsw i32 %xor, %shr, !dbg !1286
  %xor2 = xor i32 %shr1, %b, !dbg !1287
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !1288
  %xor4 = xor i32 %shr, %shr1, !dbg !1289
  %div = udiv i32 %sub, %sub3, !dbg !1290
  %xor5 = xor i32 %div, %xor4, !dbg !1291
  %sub6 = sub i32 %xor5, %xor4, !dbg !1292
  ret i32 %sub6, !dbg !1293
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #2 !dbg !1294 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1295
  store i64 %a, i64* %all, align 8, !dbg !1296
  %low = bitcast %union.dwords* %x to i32*, !dbg !1297
  %0 = load i32, i32* %low, align 8, !dbg !1297
  %cmp = icmp eq i32 %0, 0, !dbg !1298
  br i1 %cmp, label %if.then, label %if.end6, !dbg !1299

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1300
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1301
  %1 = load i32, i32* %high, align 4, !dbg !1301
  %cmp2 = icmp eq i32 %1, 0, !dbg !1302
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1303

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !1304

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1305
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1306
  %2 = load i32, i32* %high5, align 4, !dbg !1306
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !1307, !range !789
  %add = add nuw nsw i32 %3, 33, !dbg !1308
  br label %return, !dbg !1309

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !1310
  %4 = load i32, i32* %low8, align 8, !dbg !1310
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !1311, !range !789
  %add9 = add nuw nsw i32 %5, 1, !dbg !1312
  br label %return, !dbg !1313

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !1314
  ret i32 %retval.0, !dbg !1315
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #2 !dbg !1316 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !1317
  br i1 %cmp, label %if.then, label %if.end, !dbg !1318

if.then:                                          ; preds = %entry
  br label %return, !dbg !1319

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !1320, !range !789
  %add = add nuw nsw i32 %0, 1, !dbg !1321
  br label %return, !dbg !1322

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !1323
  ret i32 %retval.0, !dbg !1324
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !1325 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1326
  store i64 %a, i64* %all, align 8, !dbg !1327
  %and = and i32 %b, 32, !dbg !1328
  %tobool.not = icmp eq i32 %and, 0, !dbg !1328
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1329

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !1330
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1331
  store i32 0, i32* %high, align 4, !dbg !1332
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1333
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1334
  %0 = load i32, i32* %high2, align 4, !dbg !1334
  %sub = add nsw i32 %b, -32, !dbg !1335
  %shr = lshr i32 %0, %sub, !dbg !1336
  %low = bitcast %union.dwords* %result to i32*, !dbg !1337
  store i32 %shr, i32* %low, align 8, !dbg !1338
  br label %if.end18, !dbg !1339

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1340
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1341

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !1342

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1343
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !1344
  %1 = load i32, i32* %high6, align 4, !dbg !1344
  %shr7 = lshr i32 %1, %b, !dbg !1345
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1346
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !1347
  store i32 %shr7, i32* %high9, align 4, !dbg !1348
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1349
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !1350
  %2 = load i32, i32* %high11, align 4, !dbg !1350
  %sub12 = sub nsw i32 32, %b, !dbg !1351
  %shl = shl i32 %2, %sub12, !dbg !1352
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !1353
  %3 = load i32, i32* %low14, align 8, !dbg !1353
  %shr15 = lshr i32 %3, %b, !dbg !1354
  %or = or i32 %shl, %shr15, !dbg !1355
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !1356
  store i32 %or, i32* %low17, align 8, !dbg !1357
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1358
  %4 = load i64, i64* %all19, align 8, !dbg !1358
  br label %return, !dbg !1359

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !1360
  ret i64 %retval.0, !dbg !1361
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1362 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !1363
  %shr1 = ashr i64 %a, 63, !dbg !1364
  %xor2 = xor i64 %shr1, %a, !dbg !1365
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !1366
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !1367
  %1 = load i64, i64* %r, align 8, !dbg !1368
  %xor4 = xor i64 %1, %shr1, !dbg !1369
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !1370
  ret i64 %sub5, !dbg !1371
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1372 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1373
  %mul = mul nsw i32 %call, %b, !dbg !1374
  %sub = sub nsw i32 %a, %mul, !dbg !1375
  ret i32 %sub, !dbg !1376
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1377 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !1378
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1379

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !1380
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1381

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !1382
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1383

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1384

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1385
  unreachable, !dbg !1385

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !1386
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1387

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !1388
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1389

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !1390
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1391

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1392

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1393
  unreachable, !dbg !1393

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !1394
  %xor = xor i64 %shr, %a, !dbg !1395
  %sub = sub nsw i64 %xor, %shr, !dbg !1396
  %shr14 = ashr i64 %b, 63, !dbg !1397
  %xor15 = xor i64 %shr14, %b, !dbg !1398
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !1399
  %cmp17 = icmp slt i64 %sub, 2, !dbg !1400
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1401

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !1402
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1403

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1404

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !1405
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1406

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !1407
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !1408
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1409

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1410
  unreachable, !dbg !1410

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1411

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !1412
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !1413
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !1414
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1415

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1416
  unreachable, !dbg !1416

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1417

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !1418
  ret i64 %retval.0, !dbg !1419
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1420 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !1421
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1422

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !1423
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1424

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !1425
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1426

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1427

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1428
  unreachable, !dbg !1428

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !1429
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1430

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !1431
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1432

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !1433
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1434

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1435

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1436
  unreachable, !dbg !1436

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !1437
  %xor = xor i32 %shr, %a, !dbg !1438
  %sub = sub nsw i32 %xor, %shr, !dbg !1439
  %shr14 = ashr i32 %b, 31, !dbg !1440
  %xor15 = xor i32 %shr14, %b, !dbg !1441
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !1442
  %cmp17 = icmp slt i32 %sub, 2, !dbg !1443
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1444

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !1445
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1446

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1447

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !1448
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1449

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !1450
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !1451
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1452

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1453
  unreachable, !dbg !1453

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1454

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !1455
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !1456
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !1457
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1458

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1459
  unreachable, !dbg !1459

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1460

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !1461
  ret i32 %retval.0, !dbg !1462
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #2 !dbg !1463 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1464
  store i64 %a, i64* %all, align 8, !dbg !1465
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1466
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1467
  %0 = load i32, i32* %high, align 4, !dbg !1467
  %low = bitcast %union.dwords* %x to i32*, !dbg !1468
  %1 = load i32, i32* %low, align 8, !dbg !1468
  %xor = xor i32 %0, %1, !dbg !1469
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !1470
  ret i32 %call, !dbg !1471
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #2 !dbg !1472 {
entry:
  %shr = lshr i32 %a, 16, !dbg !1473
  %xor = xor i32 %shr, %a, !dbg !1474
  %shr1 = lshr i32 %xor, 8, !dbg !1475
  %xor2 = xor i32 %xor, %shr1, !dbg !1476
  %shr3 = lshr i32 %xor2, 4, !dbg !1477
  %xor4 = xor i32 %xor2, %shr3, !dbg !1478
  %and = and i32 %xor4, 15, !dbg !1479
  %shr5 = lshr i32 27030, %and, !dbg !1480
  %and6 = and i32 %shr5, 1, !dbg !1481
  ret i32 %and6, !dbg !1482
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #2 !dbg !1483 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1484
  %and = and i64 %shr, 6148914691236517205, !dbg !1485
  %sub = sub i64 %a, %and, !dbg !1486
  %shr1 = lshr i64 %sub, 2, !dbg !1487
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1488
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1489
  %add = add nuw nsw i64 %and2, %and3, !dbg !1490
  %shr4 = lshr i64 %add, 4, !dbg !1491
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1492
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1493
  %shr7 = lshr i64 %and6, 32, !dbg !1494
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1495
  %conv = trunc i64 %add8 to i32, !dbg !1496
  %shr9 = lshr i32 %conv, 16, !dbg !1497
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1498
  %shr11 = lshr i32 %add10, 8, !dbg !1499
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1500
  %and13 = and i32 %add12, 127, !dbg !1501
  ret i32 %and13, !dbg !1502
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #2 !dbg !1503 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1504
  %and = and i32 %shr, 1431655765, !dbg !1505
  %sub = sub i32 %a, %and, !dbg !1506
  %shr1 = lshr i32 %sub, 2, !dbg !1507
  %and2 = and i32 %shr1, 858993459, !dbg !1508
  %and3 = and i32 %sub, 858993459, !dbg !1509
  %add = add nuw nsw i32 %and2, %and3, !dbg !1510
  %shr4 = lshr i32 %add, 4, !dbg !1511
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1512
  %and6 = and i32 %add5, 252645135, !dbg !1513
  %shr7 = lshr i32 %and6, 16, !dbg !1514
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1515
  %shr9 = lshr i32 %add8, 8, !dbg !1516
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1517
  %and11 = and i32 %add10, 63, !dbg !1518
  ret i32 %and11, !dbg !1519
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1520 {
entry:
  %sub = sub i64 %a, %b, !dbg !1521
  %cmp = icmp sgt i64 %b, -1, !dbg !1522
  br i1 %cmp, label %if.then, label %if.else, !dbg !1523

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1524
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1525

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1526
  unreachable, !dbg !1526

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1527

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1528
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1529

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1530
  unreachable, !dbg !1530

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1531
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1532 {
entry:
  %sub = sub i32 %a, %b, !dbg !1533
  %cmp = icmp sgt i32 %b, -1, !dbg !1534
  br i1 %cmp, label %if.then, label %if.else, !dbg !1535

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1536
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1537

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1538
  unreachable, !dbg !1538

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1539

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1540
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1541

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1542
  unreachable, !dbg !1542

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1543
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !1544 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1545
  store i64 %a, i64* %all, align 8, !dbg !1546
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1547
  store i64 %b, i64* %all1, align 8, !dbg !1548
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1549
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1550
  %0 = load i32, i32* %high, align 4, !dbg !1550
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1551
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1552
  %1 = load i32, i32* %high3, align 4, !dbg !1552
  %cmp = icmp ult i32 %0, %1, !dbg !1553
  br i1 %cmp, label %if.then, label %if.end, !dbg !1554

if.then:                                          ; preds = %entry
  br label %return, !dbg !1555

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1556
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1557
  %2 = load i32, i32* %high5, align 4, !dbg !1557
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1558
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1559
  %3 = load i32, i32* %high7, align 4, !dbg !1559
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1560
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1561

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1562

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1563
  %4 = load i32, i32* %low, align 8, !dbg !1563
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1564
  %5 = load i32, i32* %low13, align 8, !dbg !1564
  %cmp14 = icmp ult i32 %4, %5, !dbg !1565
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1566

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1567

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1568
  %6 = load i32, i32* %low18, align 8, !dbg !1568
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1569
  %7 = load i32, i32* %low20, align 8, !dbg !1569
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1570
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1571

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1572

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1573

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1574
  ret i32 %retval.0, !dbg !1575
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !1576 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1577
  %sub = add nsw i32 %call, -1, !dbg !1578
  ret i32 %sub, !dbg !1579
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1580 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !1581
  ret i64 %call, !dbg !1582
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !1583 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1584
  %mul = mul i32 %call, %b, !dbg !1585
  %sub = sub i32 %a, %mul, !dbg !1586
  store i32 %sub, i32* %rem, align 4, !dbg !1587
  ret i32 %call, !dbg !1588
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #2 !dbg !1589 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1590
  br i1 %cmp, label %if.then, label %if.end, !dbg !1591

if.then:                                          ; preds = %entry
  br label %return, !dbg !1592

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1593
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1594

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1595

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1596, !range !789
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1597, !range !789
  %sub = sub nsw i32 %0, %1, !dbg !1598
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1599
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1600

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1601

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1602
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1603

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1604

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1605
  %sub10 = sub nsw i32 31, %sub, !dbg !1606
  %shl = shl i32 %n, %sub10, !dbg !1607
  %shr = lshr i32 %n, %inc, !dbg !1608
  br label %for.cond, !dbg !1609

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1610
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1610
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1610
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1610
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1611
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1609

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1612
  %2 = xor i32 %or, -1, !dbg !1613
  %sub17 = add i32 %2, %d, !dbg !1613
  br label %for.inc, !dbg !1614

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1615
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1615
  %sub20 = sub i32 %or, %and19, !dbg !1616
  %and = lshr i32 %sub17, 31, !dbg !1617
  %shl14 = shl i32 %q.0, 1, !dbg !1618
  %or15 = or i32 %shl14, %carry.0, !dbg !1619
  %dec = add i32 %sr.0, -1, !dbg !1620
  br label %for.cond, !dbg !1609, !llvm.loop !1621

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1622
  %or22 = or i32 %shl21, %carry.0, !dbg !1623
  br label %return, !dbg !1624

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1610
  ret i32 %retval.0, !dbg !1625
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1626 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !1627
  %0 = load i64, i64* %r, align 8, !dbg !1628
  ret i64 %0, !dbg !1629
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1630 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1631
  %mul = mul i32 %call, %b, !dbg !1632
  %sub = sub i32 %a, %mul, !dbg !1633
  ret i32 %sub, !dbg !1634
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #2 !dbg !1635 {
entry:
  br label %for.cond, !dbg !1636

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1637
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1638
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1639

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1640
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1640
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1641
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1642
  br label %for.inc, !dbg !1643

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1644
  br label %for.cond, !dbg !1639, !llvm.loop !1645

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1646
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #2 !dbg !1647 {
entry:
  br label %for.cond, !dbg !1648

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1649
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1650
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1651

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1652
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1653
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1654
  br label %for.inc, !dbg !1655

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1656
  br label %for.cond, !dbg !1651, !llvm.loop !1657

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1658
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

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

!llvm.dbg.cu = !{!2, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178}
!llvm.ident = !{!180, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189, !190}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g723_enc_INPUT", scope: !2, file: !9, line: 117, type: !65, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/g723_enc/g723_enc.c", directory: "/workspaces/llvmta/testcases/batchtest/fir2dim")
!4 = !{!5}
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!0, !7, !14, !19, !24, !26, !28, !36, !38, !40, !63}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "g723_enc_power2", scope: !2, file: !9, line: 140, type: !10, isLocal: false, isDefinition: true)
!9 = !DIFile(filename: "g723_enc/g723_enc.c", directory: "/workspaces/llvmta/testcases/batchtest")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 240, elements: !12)
!11 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DISubrange(count: 15)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "g723_enc_qtab_723_24", scope: !2, file: !9, line: 150, type: !16, isLocal: false, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 48, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 3)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "g723_enc_dqlntab", scope: !2, file: !9, line: 156, type: !21, isLocal: false, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 16)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "g723_enc_witab", scope: !2, file: !9, line: 161, type: !21, isLocal: false, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "g723_enc_fitab", scope: !2, file: !9, line: 169, type: !21, isLocal: false, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "out_buffer", scope: !30, file: !9, line: 591, type: !5, isLocal: true, isDefinition: true)
!30 = distinct !DISubprogram(name: "g723_enc_pack_output", scope: !9, file: !9, line: 587, type: !31, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !34, !33}
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "out_bits", scope: !30, file: !9, line: 592, type: !33, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "i", scope: !30, file: !9, line: 594, type: !33, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "g723_enc_state", scope: !2, file: !9, line: 115, type: !42, isLocal: false, isDefinition: true)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "g723_enc_state_t", file: !9, line: 33, size: 416, elements: !43)
!43 = !{!44, !46, !47, !48, !49, !50, !54, !58, !59, !60, !61}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "yl", scope: !42, file: !9, line: 34, baseType: !45, size: 32)
!45 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "yu", scope: !42, file: !9, line: 35, baseType: !11, size: 16, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "dms", scope: !42, file: !9, line: 36, baseType: !11, size: 16, offset: 48)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "dml", scope: !42, file: !9, line: 37, baseType: !11, size: 16, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ap", scope: !42, file: !9, line: 38, baseType: !11, size: 16, offset: 80)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !42, file: !9, line: 40, baseType: !51, size: 32, offset: 96)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 2)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !42, file: !9, line: 41, baseType: !55, size: 96, offset: 128)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 96, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 6)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "pk", scope: !42, file: !9, line: 42, baseType: !51, size: 32, offset: 224)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !42, file: !9, line: 46, baseType: !55, size: 96, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "sr", scope: !42, file: !9, line: 51, baseType: !51, size: 32, offset: 352)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "td", scope: !42, file: !9, line: 56, baseType: !62, size: 8, offset: 384)
!62 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "g723_enc_OUTPUT", scope: !2, file: !9, line: 138, type: !65, isLocal: false, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8192, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 256)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!99 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!117 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!119 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!121 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!123 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!125 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!127 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!128 = distinct !DICompileUnit(language: DW_LANG_C99, file: !129, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!129 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!130 = distinct !DICompileUnit(language: DW_LANG_C99, file: !131, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!131 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!133 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!134 = distinct !DICompileUnit(language: DW_LANG_C99, file: !135, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!135 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!136 = distinct !DICompileUnit(language: DW_LANG_C99, file: !137, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!137 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!138 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!139 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!140 = distinct !DICompileUnit(language: DW_LANG_C99, file: !141, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!141 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!142 = distinct !DICompileUnit(language: DW_LANG_C99, file: !143, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!143 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!144 = distinct !DICompileUnit(language: DW_LANG_C99, file: !145, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!145 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!147 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!148 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!149 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !151, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!151 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!152 = distinct !DICompileUnit(language: DW_LANG_C99, file: !153, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!153 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!154 = distinct !DICompileUnit(language: DW_LANG_C99, file: !155, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!155 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!156 = distinct !DICompileUnit(language: DW_LANG_C99, file: !157, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!157 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!158 = distinct !DICompileUnit(language: DW_LANG_C99, file: !159, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!159 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!161 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!162 = distinct !DICompileUnit(language: DW_LANG_C99, file: !163, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!163 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!165 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!167 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!168 = distinct !DICompileUnit(language: DW_LANG_C99, file: !169, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!169 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!170 = distinct !DICompileUnit(language: DW_LANG_C99, file: !171, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!171 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!173 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!175 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!176 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!177 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!179 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!180 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)"}
!181 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!182 = !{i32 7, !"Dwarf Version", i32 5}
!183 = !{i32 2, !"Debug Info Version", i32 3}
!184 = !{i32 1, !"wchar_size", i32 4}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 1, !"branch-target-enforcement", i32 0}
!187 = !{i32 1, !"sign-return-address", i32 0}
!188 = !{i32 1, !"sign-return-address-all", i32 0}
!189 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = distinct !DISubprogram(name: "g723_enc_fmult", scope: !9, file: !9, line: 200, type: !192, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!192 = !DISubroutineType(types: !193)
!193 = !{!33, !33, !33}
!194 = !DILocalVariable(name: "an", arg: 1, scope: !191, file: !9, line: 201, type: !33)
!195 = !DILocation(line: 0, scope: !191)
!196 = !DILocalVariable(name: "srn", arg: 2, scope: !191, file: !9, line: 202, type: !33)
!197 = !DILocalVariable(name: "anmag", scope: !191, file: !9, line: 204, type: !11)
!198 = !DILocation(line: 209, column: 11, scope: !191)
!199 = !DILocalVariable(name: "anexp", scope: !191, file: !9, line: 204, type: !11)
!200 = !DILocation(line: 210, column: 22, scope: !191)
!201 = !DILocation(line: 210, column: 21, scope: !191)
!202 = !DILocalVariable(name: "anmant", scope: !191, file: !9, line: 204, type: !11)
!203 = !DILocation(line: 211, column: 12, scope: !191)
!204 = !DILocalVariable(name: "wanexp", scope: !191, file: !9, line: 205, type: !11)
!205 = !DILocation(line: 213, column: 15, scope: !191)
!206 = !DILocation(line: 213, column: 30, scope: !191)
!207 = !DILocation(line: 213, column: 22, scope: !191)
!208 = !DILocalVariable(name: "wanmant", scope: !191, file: !9, line: 205, type: !11)
!209 = !DILocation(line: 214, column: 14, scope: !191)
!210 = !DILocation(line: 214, column: 26, scope: !191)
!211 = !DILocation(line: 214, column: 25, scope: !191)
!212 = !DILocation(line: 214, column: 22, scope: !191)
!213 = !DILocalVariable(name: "retval", scope: !191, file: !9, line: 206, type: !11)
!214 = !DILocation(line: 216, column: 3, scope: !191)
!215 = distinct !DISubprogram(name: "g723_enc_quan", scope: !9, file: !9, line: 240, type: !216, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!216 = !DISubroutineType(types: !217)
!217 = !{!33, !33, !218, !33}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!219 = !DILocalVariable(name: "val", arg: 1, scope: !215, file: !9, line: 241, type: !33)
!220 = !DILocation(line: 0, scope: !215)
!221 = !DILocalVariable(name: "table", arg: 2, scope: !215, file: !9, line: 242, type: !218)
!222 = !DILocalVariable(name: "size", arg: 3, scope: !215, file: !9, line: 243, type: !33)
!223 = !DILocalVariable(name: "j", scope: !215, file: !9, line: 246, type: !33)
!224 = !DILocalVariable(name: "k", scope: !215, file: !9, line: 247, type: !33)
!225 = !DILocalVariable(name: "i", scope: !215, file: !9, line: 245, type: !33)
!226 = !DILocation(line: 250, column: 9, scope: !227)
!227 = distinct !DILexicalBlock(scope: !215, file: !9, line: 250, column: 3)
!228 = !DILocation(line: 250, column: 3, scope: !227)
!229 = !DILocation(line: 255, column: 3, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !9, line: 250, column: 29)
!231 = distinct !DILexicalBlock(scope: !227, file: !9, line: 250, column: 3)
!232 = !DILocation(line: 250, column: 3, scope: !231)
!233 = distinct !{!233, !228, !234, !235}
!234 = !DILocation(line: 255, column: 3, scope: !227)
!235 = !{!"llvm.loop.mustprogress"}
!236 = !DILocation(line: 257, column: 3, scope: !215)
!237 = distinct !DISubprogram(name: "g723_enc_abs", scope: !9, file: !9, line: 221, type: !238, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!238 = !DISubroutineType(types: !239)
!239 = !{!33, !33}
!240 = !DILocalVariable(name: "num", arg: 1, scope: !237, file: !9, line: 221, type: !33)
!241 = !DILocation(line: 0, scope: !237)
!242 = !DILocation(line: 223, column: 3, scope: !237)
!243 = distinct !DISubprogram(name: "g723_enc_predictor_zero", scope: !9, file: !9, line: 268, type: !244, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!244 = !DISubroutineType(types: !245)
!245 = !{!33, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 32)
!247 = !DILocalVariable(name: "state_ptr", arg: 1, scope: !243, file: !9, line: 269, type: !246)
!248 = !DILocation(line: 0, scope: !243)
!249 = !DILocation(line: 274, column: 26, scope: !243)
!250 = !DILocation(line: 274, column: 44, scope: !243)
!251 = !DILocation(line: 274, column: 50, scope: !243)
!252 = !DILocation(line: 274, column: 10, scope: !243)
!253 = !DILocalVariable(name: "sezi", scope: !243, file: !9, line: 272, type: !33)
!254 = !DILocalVariable(name: "i", scope: !243, file: !9, line: 271, type: !33)
!255 = !DILocation(line: 276, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !243, file: !9, line: 276, column: 3)
!257 = !DILocation(line: 0, scope: !256)
!258 = !DILocation(line: 276, column: 18, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !9, line: 276, column: 3)
!260 = !DILocation(line: 276, column: 3, scope: !256)
!261 = !DILocation(line: 277, column: 29, scope: !259)
!262 = !DILocation(line: 277, column: 47, scope: !259)
!263 = !DILocation(line: 277, column: 53, scope: !259)
!264 = !DILocation(line: 277, column: 13, scope: !259)
!265 = !DILocation(line: 277, column: 5, scope: !259)
!266 = !DILocation(line: 277, column: 10, scope: !259)
!267 = !DILocation(line: 276, column: 24, scope: !259)
!268 = !DILocation(line: 276, column: 3, scope: !259)
!269 = distinct !{!269, !260, !270, !235}
!270 = !DILocation(line: 277, column: 72, scope: !256)
!271 = !DILocation(line: 279, column: 3, scope: !243)
!272 = distinct !DISubprogram(name: "g723_enc_predictor_pole", scope: !9, file: !9, line: 290, type: !244, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!273 = !DILocalVariable(name: "state_ptr", arg: 1, scope: !272, file: !9, line: 291, type: !246)
!274 = !DILocation(line: 0, scope: !272)
!275 = !DILocation(line: 293, column: 28, scope: !272)
!276 = !DILocation(line: 293, column: 46, scope: !272)
!277 = !DILocation(line: 293, column: 52, scope: !272)
!278 = !DILocation(line: 293, column: 12, scope: !272)
!279 = !DILocation(line: 294, column: 28, scope: !272)
!280 = !DILocation(line: 294, column: 46, scope: !272)
!281 = !DILocation(line: 294, column: 52, scope: !272)
!282 = !DILocation(line: 294, column: 12, scope: !272)
!283 = !DILocation(line: 293, column: 73, scope: !272)
!284 = !DILocation(line: 293, column: 3, scope: !272)
!285 = distinct !DISubprogram(name: "g723_enc_step_size", scope: !9, file: !9, line: 304, type: !244, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!286 = !DILocalVariable(name: "state_ptr", arg: 1, scope: !285, file: !9, line: 305, type: !246)
!287 = !DILocation(line: 0, scope: !285)
!288 = !DILocalVariable(name: "y", scope: !285, file: !9, line: 307, type: !33)
!289 = !DILocation(line: 307, column: 9, scope: !285)
!290 = !DILocalVariable(name: "dif", scope: !285, file: !9, line: 308, type: !33)
!291 = !DILocation(line: 308, column: 9, scope: !285)
!292 = !DILocalVariable(name: "al", scope: !285, file: !9, line: 309, type: !33)
!293 = !DILocation(line: 309, column: 9, scope: !285)
!294 = !DILocation(line: 311, column: 23, scope: !285)
!295 = !DILocation(line: 311, column: 10, scope: !285)
!296 = !DILocation(line: 311, column: 3, scope: !285)
!297 = distinct !DISubprogram(name: "g723_enc_quantize", scope: !9, file: !9, line: 324, type: !298, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!298 = !DISubroutineType(types: !299)
!299 = !{!33, !33, !33, !218, !33}
!300 = !DILocalVariable(name: "d", arg: 1, scope: !297, file: !9, line: 325, type: !33)
!301 = !DILocation(line: 0, scope: !297)
!302 = !DILocalVariable(name: "y", arg: 2, scope: !297, file: !9, line: 326, type: !33)
!303 = !DILocalVariable(name: "table", arg: 3, scope: !297, file: !9, line: 327, type: !218)
!304 = !DILocalVariable(name: "size", arg: 4, scope: !297, file: !9, line: 328, type: !33)
!305 = !DILocation(line: 342, column: 9, scope: !297)
!306 = !DILocalVariable(name: "dqm", scope: !297, file: !9, line: 330, type: !11)
!307 = !DILocation(line: 343, column: 24, scope: !297)
!308 = !DILocation(line: 343, column: 28, scope: !297)
!309 = !DILocation(line: 343, column: 9, scope: !297)
!310 = !DILocalVariable(name: "exp", scope: !297, file: !9, line: 331, type: !11)
!311 = !DILocation(line: 344, column: 14, scope: !297)
!312 = !DILocation(line: 344, column: 18, scope: !297)
!313 = !DILocation(line: 344, column: 28, scope: !297)
!314 = !DILocation(line: 344, column: 25, scope: !297)
!315 = !DILocalVariable(name: "mant", scope: !297, file: !9, line: 332, type: !11)
!316 = !DILocalVariable(name: "dl", scope: !297, file: !9, line: 333, type: !11)
!317 = !DILocation(line: 352, column: 9, scope: !297)
!318 = !DILocalVariable(name: "dln", scope: !297, file: !9, line: 334, type: !11)
!319 = !DILocation(line: 359, column: 22, scope: !297)
!320 = !DILocation(line: 359, column: 7, scope: !297)
!321 = !DILocalVariable(name: "i", scope: !297, file: !9, line: 335, type: !33)
!322 = !DILocation(line: 361, column: 3, scope: !297)
!323 = distinct !DISubprogram(name: "g723_enc_reconstruct", scope: !9, file: !9, line: 371, type: !324, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!324 = !DISubroutineType(types: !325)
!325 = !{!33, !33, !33, !33}
!326 = !DILocalVariable(name: "sign", arg: 1, scope: !323, file: !9, line: 372, type: !33)
!327 = !DILocation(line: 0, scope: !323)
!328 = !DILocalVariable(name: "dqln", arg: 2, scope: !323, file: !9, line: 373, type: !33)
!329 = !DILocalVariable(name: "y", arg: 3, scope: !323, file: !9, line: 374, type: !33)
!330 = !DILocalVariable(name: "dex", scope: !323, file: !9, line: 377, type: !11)
!331 = !DILocation(line: 377, column: 11, scope: !323)
!332 = !DILocalVariable(name: "dqt", scope: !323, file: !9, line: 378, type: !11)
!333 = !DILocation(line: 378, column: 11, scope: !323)
!334 = !DILocalVariable(name: "dq", scope: !323, file: !9, line: 379, type: !11)
!335 = !DILocation(line: 379, column: 11, scope: !323)
!336 = !DILocalVariable(name: "dql", scope: !323, file: !9, line: 376, type: !11)
!337 = !DILocation(line: 384, column: 12, scope: !323)
!338 = !DILocation(line: 384, column: 3, scope: !323)
!339 = distinct !DISubprogram(name: "g723_enc_update", scope: !9, file: !9, line: 395, type: !340, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !33, !33, !33, !33, !33, !33, !33, !246}
!342 = !DILocalVariable(name: "code_size", arg: 1, scope: !339, file: !9, line: 396, type: !33)
!343 = !DILocation(line: 0, scope: !339)
!344 = !DILocalVariable(name: "y", arg: 2, scope: !339, file: !9, line: 397, type: !33)
!345 = !DILocalVariable(name: "wi", arg: 3, scope: !339, file: !9, line: 398, type: !33)
!346 = !DILocalVariable(name: "fi", arg: 4, scope: !339, file: !9, line: 399, type: !33)
!347 = !DILocalVariable(name: "dq", arg: 5, scope: !339, file: !9, line: 400, type: !33)
!348 = !DILocalVariable(name: "sr", arg: 6, scope: !339, file: !9, line: 401, type: !33)
!349 = !DILocalVariable(name: "dqsez", arg: 7, scope: !339, file: !9, line: 402, type: !33)
!350 = !DILocalVariable(name: "state_ptr", arg: 8, scope: !339, file: !9, line: 403, type: !246)
!351 = !DILocalVariable(name: "exp", scope: !339, file: !9, line: 406, type: !11)
!352 = !DILocation(line: 406, column: 16, scope: !339)
!353 = !DILocalVariable(name: "a2p", scope: !339, file: !9, line: 407, type: !11)
!354 = !DILocation(line: 407, column: 11, scope: !339)
!355 = !DILocalVariable(name: "a1ul", scope: !339, file: !9, line: 408, type: !11)
!356 = !DILocation(line: 408, column: 11, scope: !339)
!357 = !DILocalVariable(name: "pks1", scope: !339, file: !9, line: 409, type: !11)
!358 = !DILocation(line: 409, column: 11, scope: !339)
!359 = !DILocalVariable(name: "fa1", scope: !339, file: !9, line: 410, type: !11)
!360 = !DILocation(line: 410, column: 11, scope: !339)
!361 = !DILocalVariable(name: "pk0", scope: !339, file: !9, line: 414, type: !11)
!362 = !DILocalVariable(name: "mag", scope: !339, file: !9, line: 406, type: !11)
!363 = !DILocation(line: 420, column: 22, scope: !339)
!364 = !DILocalVariable(name: "ylint", scope: !339, file: !9, line: 412, type: !11)
!365 = !DILocalVariable(name: "ylfrac", scope: !339, file: !9, line: 413, type: !11)
!366 = !DILocalVariable(name: "thr1", scope: !339, file: !9, line: 413, type: !11)
!367 = !DILocation(line: 423, column: 12, scope: !339)
!368 = !DILocation(line: 423, column: 18, scope: !339)
!369 = !DILocation(line: 423, column: 10, scope: !339)
!370 = !DILocalVariable(name: "thr2", scope: !339, file: !9, line: 412, type: !11)
!371 = !DILocalVariable(name: "dqthr", scope: !339, file: !9, line: 412, type: !11)
!372 = !DILocalVariable(name: "tr", scope: !339, file: !9, line: 411, type: !62)
!373 = !DILocation(line: 435, column: 14, scope: !339)
!374 = !DILocation(line: 435, column: 17, scope: !339)
!375 = !DILocation(line: 440, column: 52, scope: !339)
!376 = !DILocation(line: 440, column: 40, scope: !339)
!377 = !DILocation(line: 440, column: 57, scope: !339)
!378 = !DILocation(line: 440, column: 34, scope: !339)
!379 = !DILocation(line: 440, column: 14, scope: !339)
!380 = !DILocation(line: 440, column: 17, scope: !339)
!381 = !DILocation(line: 445, column: 3, scope: !339)
!382 = !DILocation(line: 445, column: 21, scope: !339)
!383 = !DILocation(line: 446, column: 3, scope: !339)
!384 = !DILocation(line: 446, column: 21, scope: !339)
!385 = !DILocation(line: 447, column: 3, scope: !339)
!386 = !DILocation(line: 447, column: 21, scope: !339)
!387 = !DILocation(line: 448, column: 3, scope: !339)
!388 = !DILocation(line: 448, column: 21, scope: !339)
!389 = !DILocation(line: 449, column: 3, scope: !339)
!390 = !DILocation(line: 449, column: 21, scope: !339)
!391 = !DILocation(line: 450, column: 3, scope: !339)
!392 = !DILocation(line: 450, column: 21, scope: !339)
!393 = !DILocation(line: 451, column: 3, scope: !339)
!394 = !DILocation(line: 451, column: 21, scope: !339)
!395 = !DILocation(line: 452, column: 3, scope: !339)
!396 = !DILocation(line: 452, column: 21, scope: !339)
!397 = !DILocalVariable(name: "cnt", scope: !339, file: !9, line: 405, type: !33)
!398 = !DILocation(line: 456, column: 9, scope: !399)
!399 = distinct !DILexicalBlock(scope: !339, file: !9, line: 456, column: 3)
!400 = !DILocation(line: 0, scope: !399)
!401 = !DILocation(line: 456, column: 22, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !9, line: 456, column: 3)
!403 = !DILocation(line: 456, column: 3, scope: !399)
!404 = !DILocation(line: 457, column: 47, scope: !402)
!405 = !DILocation(line: 457, column: 28, scope: !402)
!406 = !DILocation(line: 457, column: 5, scope: !402)
!407 = !DILocation(line: 457, column: 26, scope: !402)
!408 = !DILocation(line: 456, column: 30, scope: !402)
!409 = !DILocation(line: 456, column: 3, scope: !402)
!410 = distinct !{!410, !403, !411, !235}
!411 = !DILocation(line: 457, column: 51, scope: !399)
!412 = !DILocation(line: 416, column: 9, scope: !339)
!413 = !DILocation(line: 459, column: 3, scope: !339)
!414 = !DILocation(line: 459, column: 22, scope: !339)
!415 = !DILocation(line: 462, column: 24, scope: !339)
!416 = !DILocation(line: 462, column: 3, scope: !339)
!417 = !DILocation(line: 462, column: 22, scope: !339)
!418 = !DILocation(line: 464, column: 3, scope: !339)
!419 = !DILocation(line: 464, column: 22, scope: !339)
!420 = !DILocation(line: 468, column: 24, scope: !339)
!421 = !DILocation(line: 468, column: 3, scope: !339)
!422 = !DILocation(line: 468, column: 22, scope: !339)
!423 = !DILocation(line: 469, column: 3, scope: !339)
!424 = !DILocation(line: 469, column: 22, scope: !339)
!425 = !DILocation(line: 472, column: 14, scope: !339)
!426 = !DILocation(line: 472, column: 17, scope: !339)
!427 = !DILocation(line: 478, column: 39, scope: !339)
!428 = !DILocation(line: 478, column: 28, scope: !339)
!429 = !DILocation(line: 478, column: 26, scope: !339)
!430 = !DILocation(line: 478, column: 45, scope: !339)
!431 = !DILocation(line: 478, column: 14, scope: !339)
!432 = !DILocation(line: 478, column: 18, scope: !339)
!433 = !DILocation(line: 479, column: 30, scope: !339)
!434 = !DILocation(line: 479, column: 50, scope: !339)
!435 = !DILocation(line: 479, column: 39, scope: !339)
!436 = !DILocation(line: 479, column: 37, scope: !339)
!437 = !DILocation(line: 479, column: 56, scope: !339)
!438 = !DILocation(line: 479, column: 14, scope: !339)
!439 = !DILocation(line: 479, column: 18, scope: !339)
!440 = !DILocation(line: 481, column: 14, scope: !339)
!441 = !DILocation(line: 481, column: 17, scope: !339)
!442 = !DILocation(line: 482, column: 1, scope: !339)
!443 = distinct !DISubprogram(name: "g723_enc_alaw2linear", scope: !9, file: !9, line: 490, type: !444, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!444 = !DISubroutineType(types: !445)
!445 = !{!33, !34}
!446 = !DILocalVariable(name: "a_val", arg: 1, scope: !443, file: !9, line: 491, type: !34)
!447 = !DILocation(line: 0, scope: !443)
!448 = !DILocation(line: 496, column: 9, scope: !443)
!449 = !DILocation(line: 498, column: 30, scope: !443)
!450 = !DILocalVariable(name: "t", scope: !443, file: !9, line: 493, type: !33)
!451 = !DILocation(line: 499, column: 42, scope: !443)
!452 = !DILocalVariable(name: "seg", scope: !443, file: !9, line: 494, type: !33)
!453 = !DILocation(line: 500, column: 5, scope: !443)
!454 = !DILocation(line: 501, column: 13, scope: !443)
!455 = !DILocation(line: 501, column: 5, scope: !443)
!456 = !DILocation(line: 503, column: 20, scope: !443)
!457 = !DILocation(line: 503, column: 12, scope: !443)
!458 = !DILocation(line: 503, column: 39, scope: !443)
!459 = !DILocation(line: 503, column: 3, scope: !443)
!460 = distinct !DISubprogram(name: "g723_enc_ulaw2linear", scope: !9, file: !9, line: 517, type: !444, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!461 = !DILocalVariable(name: "u_val", arg: 1, scope: !460, file: !9, line: 518, type: !34)
!462 = !DILocation(line: 0, scope: !460)
!463 = !DILocation(line: 523, column: 11, scope: !460)
!464 = !DILocation(line: 529, column: 32, scope: !460)
!465 = !DILocation(line: 529, column: 39, scope: !460)
!466 = !DILocalVariable(name: "t", scope: !460, file: !9, line: 520, type: !33)
!467 = !DILocation(line: 530, column: 46, scope: !460)
!468 = !DILocation(line: 530, column: 5, scope: !460)
!469 = !DILocation(line: 532, column: 20, scope: !460)
!470 = !DILocation(line: 532, column: 12, scope: !460)
!471 = !DILocation(line: 532, column: 42, scope: !460)
!472 = !DILocation(line: 532, column: 54, scope: !460)
!473 = !DILocation(line: 532, column: 3, scope: !460)
!474 = distinct !DISubprogram(name: "g723_enc_g723_24_encoder", scope: !9, file: !9, line: 543, type: !475, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!475 = !DISubroutineType(types: !476)
!476 = !{!33, !33, !33, !246}
!477 = !DILocalVariable(name: "sl", arg: 1, scope: !474, file: !9, line: 544, type: !33)
!478 = !DILocation(line: 0, scope: !474)
!479 = !DILocalVariable(name: "in_coding", arg: 2, scope: !474, file: !9, line: 545, type: !33)
!480 = !DILocalVariable(name: "state_ptr", arg: 3, scope: !474, file: !9, line: 546, type: !246)
!481 = !DILocation(line: 556, column: 30, scope: !474)
!482 = !DILocation(line: 556, column: 8, scope: !474)
!483 = !DILocation(line: 556, column: 35, scope: !474)
!484 = !DILocation(line: 559, column: 10, scope: !474)
!485 = !DILocalVariable(name: "sezi", scope: !474, file: !9, line: 548, type: !11)
!486 = !DILocation(line: 560, column: 9, scope: !474)
!487 = !DILocation(line: 560, column: 14, scope: !474)
!488 = !DILocalVariable(name: "sez", scope: !474, file: !9, line: 548, type: !11)
!489 = !DILocation(line: 561, column: 16, scope: !474)
!490 = !DILocation(line: 561, column: 14, scope: !474)
!491 = !DILocalVariable(name: "sei", scope: !474, file: !9, line: 548, type: !11)
!492 = !DILocation(line: 562, column: 8, scope: !474)
!493 = !DILocation(line: 562, column: 12, scope: !474)
!494 = !DILocalVariable(name: "se", scope: !474, file: !9, line: 548, type: !11)
!495 = !DILocation(line: 564, column: 10, scope: !474)
!496 = !DILocalVariable(name: "d", scope: !474, file: !9, line: 549, type: !11)
!497 = !DILocation(line: 567, column: 7, scope: !474)
!498 = !DILocalVariable(name: "y", scope: !474, file: !9, line: 550, type: !11)
!499 = !DILocation(line: 568, column: 26, scope: !474)
!500 = !DILocation(line: 568, column: 29, scope: !474)
!501 = !DILocation(line: 568, column: 7, scope: !474)
!502 = !DILocalVariable(name: "i", scope: !474, file: !9, line: 553, type: !11)
!503 = !DILocation(line: 569, column: 32, scope: !474)
!504 = !DILocation(line: 569, column: 37, scope: !474)
!505 = !DILocation(line: 570, column: 30, scope: !474)
!506 = !DILocation(line: 569, column: 8, scope: !474)
!507 = !DILocalVariable(name: "dq", scope: !474, file: !9, line: 553, type: !11)
!508 = !DILocation(line: 572, column: 12, scope: !474)
!509 = !DILocalVariable(name: "sr", scope: !474, file: !9, line: 551, type: !11)
!510 = !DILocation(line: 574, column: 14, scope: !474)
!511 = !DILocation(line: 574, column: 20, scope: !474)
!512 = !DILocalVariable(name: "dqsez", scope: !474, file: !9, line: 552, type: !11)
!513 = !DILocation(line: 576, column: 23, scope: !474)
!514 = !DILocation(line: 576, column: 26, scope: !474)
!515 = !DILocation(line: 576, column: 47, scope: !474)
!516 = !DILocation(line: 576, column: 68, scope: !474)
!517 = !DILocation(line: 576, column: 72, scope: !474)
!518 = !DILocation(line: 576, column: 76, scope: !474)
!519 = !DILocation(line: 576, column: 3, scope: !474)
!520 = !DILocation(line: 579, column: 10, scope: !474)
!521 = !DILocation(line: 579, column: 3, scope: !474)
!522 = !DILocalVariable(name: "code", arg: 1, scope: !30, file: !9, line: 588, type: !34)
!523 = !DILocation(line: 0, scope: !30)
!524 = !DILocalVariable(name: "bits", arg: 2, scope: !30, file: !9, line: 589, type: !33)
!525 = !DILocation(line: 596, column: 19, scope: !30)
!526 = !DILocation(line: 596, column: 27, scope: !30)
!527 = !DILocation(line: 596, column: 24, scope: !30)
!528 = !DILocation(line: 596, column: 14, scope: !30)
!529 = !DILocation(line: 597, column: 12, scope: !30)
!530 = !DILocalVariable(name: "out_byte", scope: !30, file: !9, line: 593, type: !34)
!531 = !DILocation(line: 600, column: 12, scope: !30)
!532 = !DILocation(line: 601, column: 14, scope: !30)
!533 = !DILocation(line: 604, column: 26, scope: !30)
!534 = !DILocation(line: 604, column: 20, scope: !30)
!535 = !DILocation(line: 604, column: 3, scope: !30)
!536 = !DILocation(line: 604, column: 24, scope: !30)
!537 = !DILocation(line: 605, column: 10, scope: !30)
!538 = !DILocation(line: 605, column: 5, scope: !30)
!539 = !DILocation(line: 608, column: 12, scope: !30)
!540 = !DILocation(line: 608, column: 21, scope: !30)
!541 = !DILocation(line: 608, column: 3, scope: !30)
!542 = distinct !DISubprogram(name: "g723_enc_init_state", scope: !9, file: !9, line: 623, type: !543, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !246}
!545 = !DILocalVariable(name: "state_ptr", arg: 1, scope: !542, file: !9, line: 624, type: !246)
!546 = !DILocation(line: 0, scope: !542)
!547 = !DILocation(line: 628, column: 14, scope: !542)
!548 = !DILocation(line: 628, column: 17, scope: !542)
!549 = !DILocation(line: 629, column: 14, scope: !542)
!550 = !DILocation(line: 629, column: 17, scope: !542)
!551 = !DILocation(line: 630, column: 14, scope: !542)
!552 = !DILocation(line: 630, column: 18, scope: !542)
!553 = !DILocation(line: 631, column: 14, scope: !542)
!554 = !DILocation(line: 631, column: 18, scope: !542)
!555 = !DILocation(line: 632, column: 14, scope: !542)
!556 = !DILocation(line: 632, column: 17, scope: !542)
!557 = !DILocalVariable(name: "cnta", scope: !542, file: !9, line: 626, type: !33)
!558 = !DILocation(line: 635, column: 9, scope: !559)
!559 = distinct !DILexicalBlock(scope: !542, file: !9, line: 635, column: 3)
!560 = !DILocation(line: 0, scope: !559)
!561 = !DILocation(line: 635, column: 24, scope: !562)
!562 = distinct !DILexicalBlock(scope: !559, file: !9, line: 635, column: 3)
!563 = !DILocation(line: 635, column: 3, scope: !559)
!564 = !DILocation(line: 636, column: 5, scope: !565)
!565 = distinct !DILexicalBlock(scope: !562, file: !9, line: 635, column: 38)
!566 = !DILocation(line: 636, column: 26, scope: !565)
!567 = !DILocation(line: 637, column: 5, scope: !565)
!568 = !DILocation(line: 637, column: 27, scope: !565)
!569 = !DILocation(line: 638, column: 5, scope: !565)
!570 = !DILocation(line: 638, column: 27, scope: !565)
!571 = !DILocation(line: 639, column: 3, scope: !565)
!572 = !DILocation(line: 635, column: 33, scope: !562)
!573 = !DILocation(line: 635, column: 3, scope: !562)
!574 = distinct !{!574, !563, !575, !235}
!575 = !DILocation(line: 639, column: 3, scope: !559)
!576 = !DILocation(line: 641, column: 9, scope: !577)
!577 = distinct !DILexicalBlock(scope: !542, file: !9, line: 641, column: 3)
!578 = !DILocation(line: 0, scope: !577)
!579 = !DILocation(line: 641, column: 24, scope: !580)
!580 = distinct !DILexicalBlock(scope: !577, file: !9, line: 641, column: 3)
!581 = !DILocation(line: 641, column: 3, scope: !577)
!582 = !DILocation(line: 642, column: 5, scope: !583)
!583 = distinct !DILexicalBlock(scope: !580, file: !9, line: 641, column: 38)
!584 = !DILocation(line: 642, column: 26, scope: !583)
!585 = !DILocation(line: 643, column: 5, scope: !583)
!586 = !DILocation(line: 643, column: 27, scope: !583)
!587 = !DILocation(line: 644, column: 3, scope: !583)
!588 = !DILocation(line: 641, column: 33, scope: !580)
!589 = !DILocation(line: 641, column: 3, scope: !580)
!590 = distinct !{!590, !581, !591, !235}
!591 = !DILocation(line: 644, column: 3, scope: !577)
!592 = !DILocation(line: 645, column: 14, scope: !542)
!593 = !DILocation(line: 645, column: 17, scope: !542)
!594 = !DILocation(line: 646, column: 1, scope: !542)
!595 = distinct !DISubprogram(name: "g723_enc_init", scope: !9, file: !9, line: 649, type: !596, scopeLine: 650, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!596 = !DISubroutineType(types: !597)
!597 = !{null}
!598 = !DILocalVariable(name: "x", scope: !595, file: !9, line: 652, type: !599)
!599 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!600 = !DILocation(line: 652, column: 16, scope: !595)
!601 = !DILocation(line: 653, column: 3, scope: !595)
!602 = !DILocalVariable(name: "i", scope: !595, file: !9, line: 651, type: !33)
!603 = !DILocation(line: 0, scope: !595)
!604 = !DILocation(line: 656, column: 9, scope: !605)
!605 = distinct !DILexicalBlock(scope: !595, file: !9, line: 656, column: 3)
!606 = !DILocation(line: 0, scope: !605)
!607 = !DILocation(line: 656, column: 18, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !9, line: 656, column: 3)
!609 = !DILocation(line: 656, column: 3, scope: !605)
!610 = !DILocation(line: 657, column: 28, scope: !608)
!611 = !DILocation(line: 657, column: 5, scope: !608)
!612 = !DILocation(line: 657, column: 25, scope: !608)
!613 = !DILocation(line: 656, column: 24, scope: !608)
!614 = !DILocation(line: 656, column: 3, scope: !608)
!615 = distinct !{!615, !609, !616, !235}
!616 = !DILocation(line: 657, column: 28, scope: !605)
!617 = !DILocation(line: 658, column: 1, scope: !595)
!618 = distinct !DISubprogram(name: "g723_enc_return", scope: !9, file: !9, line: 661, type: !619, scopeLine: 662, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!619 = !DISubroutineType(types: !620)
!620 = !{!33}
!621 = !DILocalVariable(name: "check_sum", scope: !618, file: !9, line: 664, type: !33)
!622 = !DILocation(line: 0, scope: !618)
!623 = !DILocalVariable(name: "i", scope: !618, file: !9, line: 663, type: !33)
!624 = !DILocation(line: 667, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !618, file: !9, line: 667, column: 3)
!626 = !DILocation(line: 667, column: 3, scope: !625)
!627 = !DILocation(line: 668, column: 5, scope: !628)
!628 = distinct !DILexicalBlock(scope: !625, file: !9, line: 667, column: 3)
!629 = !DILocation(line: 667, column: 3, scope: !628)
!630 = distinct !{!630, !626, !631, !235}
!631 = !DILocation(line: 668, column: 37, scope: !625)
!632 = !DILocation(line: 670, column: 3, scope: !618)
!633 = distinct !DISubprogram(name: "g723_enc_main", scope: !9, file: !9, line: 677, type: !596, scopeLine: 678, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!634 = !DILocalVariable(name: "i", scope: !633, file: !9, line: 686, type: !33)
!635 = !DILocation(line: 0, scope: !633)
!636 = !DILocalVariable(name: "enc_bits", scope: !633, file: !9, line: 685, type: !33)
!637 = !DILocalVariable(name: "in_coding", scope: !633, file: !9, line: 683, type: !33)
!638 = !DILocalVariable(name: "in_buf", scope: !633, file: !9, line: 684, type: !218)
!639 = !DILocation(line: 693, column: 9, scope: !640)
!640 = distinct !DILexicalBlock(scope: !633, file: !9, line: 693, column: 3)
!641 = !DILocation(line: 0, scope: !640)
!642 = !DILocation(line: 693, column: 18, scope: !643)
!643 = distinct !DILexicalBlock(scope: !640, file: !9, line: 693, column: 3)
!644 = !DILocation(line: 693, column: 3, scope: !640)
!645 = !DILocation(line: 694, column: 15, scope: !646)
!646 = distinct !DILexicalBlock(scope: !643, file: !9, line: 693, column: 29)
!647 = !DILocalVariable(name: "sample_short", scope: !633, file: !9, line: 680, type: !11)
!648 = !DILocation(line: 695, column: 38, scope: !646)
!649 = !DILocation(line: 695, column: 12, scope: !646)
!650 = !DILocalVariable(name: "code", scope: !633, file: !9, line: 681, type: !34)
!651 = !DILocation(line: 696, column: 13, scope: !646)
!652 = !DILocalVariable(name: "resid", scope: !633, file: !9, line: 682, type: !33)
!653 = !DILocation(line: 697, column: 3, scope: !646)
!654 = !DILocation(line: 693, column: 24, scope: !643)
!655 = !DILocation(line: 693, column: 3, scope: !643)
!656 = distinct !{!656, !644, !657, !235}
!657 = !DILocation(line: 697, column: 3, scope: !640)
!658 = !DILocation(line: 699, column: 1, scope: !633)
!659 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 702, type: !619, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!660 = !DILocation(line: 704, column: 3, scope: !659)
!661 = !DILocation(line: 705, column: 3, scope: !659)
!662 = !DILocation(line: 707, column: 12, scope: !659)
!663 = !DILocation(line: 707, column: 3, scope: !659)
!664 = distinct !DISubprogram(name: "__absvdi2", scope: !69, file: !69, line: 22, type: !665, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !35)
!665 = !DISubroutineType(types: !35)
!666 = !DILocation(line: 25, column: 11, scope: !664)
!667 = !DILocation(line: 25, column: 9, scope: !664)
!668 = !DILocation(line: 26, column: 9, scope: !664)
!669 = !DILocation(line: 28, column: 20, scope: !664)
!670 = !DILocation(line: 28, column: 5, scope: !664)
!671 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !121, file: !121, line: 57, type: !665, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !120, retainedNodes: !35)
!672 = !DILocation(line: 59, column: 1, scope: !671)
!673 = distinct !DISubprogram(name: "__absvsi2", scope: !71, file: !71, line: 22, type: !665, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !70, retainedNodes: !35)
!674 = !DILocation(line: 25, column: 11, scope: !673)
!675 = !DILocation(line: 25, column: 9, scope: !673)
!676 = !DILocation(line: 26, column: 9, scope: !673)
!677 = !DILocation(line: 28, column: 20, scope: !673)
!678 = !DILocation(line: 28, column: 5, scope: !673)
!679 = distinct !DISubprogram(name: "__addvdi3", scope: !75, file: !75, line: 22, type: !665, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !35)
!680 = !DILocation(line: 24, column: 27, scope: !679)
!681 = !DILocation(line: 25, column: 11, scope: !679)
!682 = !DILocation(line: 25, column: 9, scope: !679)
!683 = !DILocation(line: 27, column: 15, scope: !679)
!684 = !DILocation(line: 27, column: 13, scope: !679)
!685 = !DILocation(line: 28, column: 13, scope: !679)
!686 = !DILocation(line: 29, column: 5, scope: !679)
!687 = !DILocation(line: 32, column: 15, scope: !679)
!688 = !DILocation(line: 32, column: 13, scope: !679)
!689 = !DILocation(line: 33, column: 13, scope: !679)
!690 = !DILocation(line: 35, column: 5, scope: !679)
!691 = distinct !DISubprogram(name: "__addvsi3", scope: !77, file: !77, line: 22, type: !665, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !35)
!692 = !DILocation(line: 24, column: 27, scope: !691)
!693 = !DILocation(line: 25, column: 11, scope: !691)
!694 = !DILocation(line: 25, column: 9, scope: !691)
!695 = !DILocation(line: 27, column: 15, scope: !691)
!696 = !DILocation(line: 27, column: 13, scope: !691)
!697 = !DILocation(line: 28, column: 13, scope: !691)
!698 = !DILocation(line: 29, column: 5, scope: !691)
!699 = !DILocation(line: 32, column: 15, scope: !691)
!700 = !DILocation(line: 32, column: 13, scope: !691)
!701 = !DILocation(line: 33, column: 13, scope: !691)
!702 = !DILocation(line: 35, column: 5, scope: !691)
!703 = distinct !DISubprogram(name: "__ashldi3", scope: !81, file: !81, line: 24, type: !665, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !35)
!704 = !DILocation(line: 29, column: 11, scope: !703)
!705 = !DILocation(line: 29, column: 15, scope: !703)
!706 = !DILocation(line: 30, column: 11, scope: !703)
!707 = !DILocation(line: 30, column: 9, scope: !703)
!708 = !DILocation(line: 32, column: 18, scope: !703)
!709 = !DILocation(line: 32, column: 22, scope: !703)
!710 = !DILocation(line: 33, column: 33, scope: !703)
!711 = !DILocation(line: 33, column: 43, scope: !703)
!712 = !DILocation(line: 33, column: 37, scope: !703)
!713 = !DILocation(line: 33, column: 16, scope: !703)
!714 = !DILocation(line: 33, column: 18, scope: !703)
!715 = !DILocation(line: 33, column: 23, scope: !703)
!716 = !DILocation(line: 34, column: 5, scope: !703)
!717 = !DILocation(line: 37, column: 15, scope: !703)
!718 = !DILocation(line: 37, column: 13, scope: !703)
!719 = !DILocation(line: 38, column: 13, scope: !703)
!720 = !DILocation(line: 39, column: 33, scope: !703)
!721 = !DILocation(line: 39, column: 37, scope: !703)
!722 = !DILocation(line: 39, column: 18, scope: !703)
!723 = !DILocation(line: 39, column: 23, scope: !703)
!724 = !DILocation(line: 40, column: 32, scope: !703)
!725 = !DILocation(line: 40, column: 34, scope: !703)
!726 = !DILocation(line: 40, column: 39, scope: !703)
!727 = !DILocation(line: 40, column: 56, scope: !703)
!728 = !DILocation(line: 40, column: 77, scope: !703)
!729 = !DILocation(line: 40, column: 60, scope: !703)
!730 = !DILocation(line: 40, column: 45, scope: !703)
!731 = !DILocation(line: 40, column: 16, scope: !703)
!732 = !DILocation(line: 40, column: 18, scope: !703)
!733 = !DILocation(line: 40, column: 23, scope: !703)
!734 = !DILocation(line: 42, column: 19, scope: !703)
!735 = !DILocation(line: 42, column: 5, scope: !703)
!736 = !DILocation(line: 0, scope: !703)
!737 = !DILocation(line: 43, column: 1, scope: !703)
!738 = distinct !DISubprogram(name: "__ashrdi3", scope: !85, file: !85, line: 24, type: !665, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !35)
!739 = !DILocation(line: 29, column: 11, scope: !738)
!740 = !DILocation(line: 29, column: 15, scope: !738)
!741 = !DILocation(line: 30, column: 11, scope: !738)
!742 = !DILocation(line: 30, column: 9, scope: !738)
!743 = !DILocation(line: 33, column: 31, scope: !738)
!744 = !DILocation(line: 33, column: 33, scope: !738)
!745 = !DILocation(line: 33, column: 38, scope: !738)
!746 = !DILocation(line: 33, column: 16, scope: !738)
!747 = !DILocation(line: 33, column: 18, scope: !738)
!748 = !DILocation(line: 33, column: 23, scope: !738)
!749 = !DILocation(line: 34, column: 30, scope: !738)
!750 = !DILocation(line: 34, column: 32, scope: !738)
!751 = !DILocation(line: 34, column: 43, scope: !738)
!752 = !DILocation(line: 34, column: 37, scope: !738)
!753 = !DILocation(line: 34, column: 18, scope: !738)
!754 = !DILocation(line: 34, column: 22, scope: !738)
!755 = !DILocation(line: 35, column: 5, scope: !738)
!756 = !DILocation(line: 38, column: 15, scope: !738)
!757 = !DILocation(line: 38, column: 13, scope: !738)
!758 = !DILocation(line: 39, column: 13, scope: !738)
!759 = !DILocation(line: 40, column: 32, scope: !738)
!760 = !DILocation(line: 40, column: 34, scope: !738)
!761 = !DILocation(line: 40, column: 39, scope: !738)
!762 = !DILocation(line: 40, column: 16, scope: !738)
!763 = !DILocation(line: 40, column: 18, scope: !738)
!764 = !DILocation(line: 40, column: 24, scope: !738)
!765 = !DILocation(line: 41, column: 31, scope: !738)
!766 = !DILocation(line: 41, column: 33, scope: !738)
!767 = !DILocation(line: 41, column: 55, scope: !738)
!768 = !DILocation(line: 41, column: 38, scope: !738)
!769 = !DILocation(line: 41, column: 72, scope: !738)
!770 = !DILocation(line: 41, column: 76, scope: !738)
!771 = !DILocation(line: 41, column: 61, scope: !738)
!772 = !DILocation(line: 41, column: 18, scope: !738)
!773 = !DILocation(line: 41, column: 22, scope: !738)
!774 = !DILocation(line: 43, column: 19, scope: !738)
!775 = !DILocation(line: 43, column: 5, scope: !738)
!776 = !DILocation(line: 0, scope: !738)
!777 = !DILocation(line: 44, column: 1, scope: !738)
!778 = distinct !DISubprogram(name: "__clzdi2", scope: !89, file: !89, line: 22, type: !665, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !88, retainedNodes: !35)
!779 = !DILocation(line: 25, column: 7, scope: !778)
!780 = !DILocation(line: 25, column: 11, scope: !778)
!781 = !DILocation(line: 26, column: 26, scope: !778)
!782 = !DILocation(line: 26, column: 28, scope: !778)
!783 = !DILocation(line: 26, column: 33, scope: !778)
!784 = !DILocation(line: 27, column: 29, scope: !778)
!785 = !DILocation(line: 27, column: 31, scope: !778)
!786 = !DILocation(line: 27, column: 49, scope: !778)
!787 = !DILocation(line: 27, column: 42, scope: !778)
!788 = !DILocation(line: 27, column: 12, scope: !778)
!789 = !{i32 0, i32 33}
!790 = !DILocation(line: 28, column: 15, scope: !778)
!791 = !DILocation(line: 27, column: 59, scope: !778)
!792 = !DILocation(line: 27, column: 5, scope: !778)
!793 = distinct !DISubprogram(name: "__clzsi2", scope: !91, file: !91, line: 22, type: !665, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !35)
!794 = !DILocation(line: 25, column: 34, scope: !793)
!795 = !DILocation(line: 25, column: 40, scope: !793)
!796 = !DILocation(line: 26, column: 14, scope: !793)
!797 = !DILocation(line: 26, column: 7, scope: !793)
!798 = !DILocation(line: 29, column: 13, scope: !793)
!799 = !DILocation(line: 29, column: 23, scope: !793)
!800 = !DILocation(line: 29, column: 29, scope: !793)
!801 = !DILocation(line: 30, column: 13, scope: !793)
!802 = !DILocation(line: 30, column: 7, scope: !793)
!803 = !DILocation(line: 31, column: 7, scope: !793)
!804 = !DILocation(line: 33, column: 13, scope: !793)
!805 = !DILocation(line: 33, column: 21, scope: !793)
!806 = !DILocation(line: 33, column: 27, scope: !793)
!807 = !DILocation(line: 34, column: 13, scope: !793)
!808 = !DILocation(line: 34, column: 7, scope: !793)
!809 = !DILocation(line: 35, column: 7, scope: !793)
!810 = !DILocation(line: 37, column: 13, scope: !793)
!811 = !DILocation(line: 37, column: 20, scope: !793)
!812 = !DILocation(line: 37, column: 26, scope: !793)
!813 = !DILocation(line: 38, column: 13, scope: !793)
!814 = !DILocation(line: 38, column: 7, scope: !793)
!815 = !DILocation(line: 39, column: 7, scope: !793)
!816 = !DILocation(line: 52, column: 20, scope: !793)
!817 = !DILocation(line: 52, column: 37, scope: !793)
!818 = !DILocation(line: 52, column: 25, scope: !793)
!819 = !DILocation(line: 52, column: 14, scope: !793)
!820 = !DILocation(line: 52, column: 5, scope: !793)
!821 = distinct !DISubprogram(name: "__cmpdi2", scope: !95, file: !95, line: 23, type: !665, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !35)
!822 = !DILocation(line: 26, column: 7, scope: !821)
!823 = !DILocation(line: 26, column: 11, scope: !821)
!824 = !DILocation(line: 28, column: 7, scope: !821)
!825 = !DILocation(line: 28, column: 11, scope: !821)
!826 = !DILocation(line: 29, column: 11, scope: !821)
!827 = !DILocation(line: 29, column: 13, scope: !821)
!828 = !DILocation(line: 29, column: 22, scope: !821)
!829 = !DILocation(line: 29, column: 24, scope: !821)
!830 = !DILocation(line: 29, column: 18, scope: !821)
!831 = !DILocation(line: 29, column: 9, scope: !821)
!832 = !DILocation(line: 30, column: 9, scope: !821)
!833 = !DILocation(line: 31, column: 11, scope: !821)
!834 = !DILocation(line: 31, column: 13, scope: !821)
!835 = !DILocation(line: 31, column: 22, scope: !821)
!836 = !DILocation(line: 31, column: 24, scope: !821)
!837 = !DILocation(line: 31, column: 18, scope: !821)
!838 = !DILocation(line: 31, column: 9, scope: !821)
!839 = !DILocation(line: 32, column: 9, scope: !821)
!840 = !DILocation(line: 33, column: 13, scope: !821)
!841 = !DILocation(line: 33, column: 23, scope: !821)
!842 = !DILocation(line: 33, column: 17, scope: !821)
!843 = !DILocation(line: 33, column: 9, scope: !821)
!844 = !DILocation(line: 34, column: 9, scope: !821)
!845 = !DILocation(line: 35, column: 13, scope: !821)
!846 = !DILocation(line: 35, column: 23, scope: !821)
!847 = !DILocation(line: 35, column: 17, scope: !821)
!848 = !DILocation(line: 35, column: 9, scope: !821)
!849 = !DILocation(line: 36, column: 9, scope: !821)
!850 = !DILocation(line: 37, column: 5, scope: !821)
!851 = !DILocation(line: 0, scope: !821)
!852 = !DILocation(line: 38, column: 1, scope: !821)
!853 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !95, file: !95, line: 46, type: !665, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !35)
!854 = !DILocation(line: 48, column: 9, scope: !853)
!855 = !DILocation(line: 48, column: 24, scope: !853)
!856 = !DILocation(line: 48, column: 2, scope: !853)
!857 = distinct !DISubprogram(name: "__ctzdi2", scope: !99, file: !99, line: 22, type: !665, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !35)
!858 = !DILocation(line: 25, column: 7, scope: !857)
!859 = !DILocation(line: 25, column: 11, scope: !857)
!860 = !DILocation(line: 26, column: 28, scope: !857)
!861 = !DILocation(line: 26, column: 32, scope: !857)
!862 = !DILocation(line: 27, column: 29, scope: !857)
!863 = !DILocation(line: 27, column: 31, scope: !857)
!864 = !DILocation(line: 27, column: 41, scope: !857)
!865 = !DILocation(line: 27, column: 12, scope: !857)
!866 = !DILocation(line: 28, column: 18, scope: !857)
!867 = !DILocation(line: 27, column: 59, scope: !857)
!868 = !DILocation(line: 27, column: 5, scope: !857)
!869 = distinct !DISubprogram(name: "__ctzsi2", scope: !101, file: !101, line: 22, type: !665, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !35)
!870 = !DILocation(line: 25, column: 20, scope: !869)
!871 = !DILocation(line: 25, column: 34, scope: !869)
!872 = !DILocation(line: 25, column: 40, scope: !869)
!873 = !DILocation(line: 26, column: 7, scope: !869)
!874 = !DILocation(line: 29, column: 13, scope: !869)
!875 = !DILocation(line: 29, column: 23, scope: !869)
!876 = !DILocation(line: 29, column: 29, scope: !869)
!877 = !DILocation(line: 30, column: 7, scope: !869)
!878 = !DILocation(line: 31, column: 7, scope: !869)
!879 = !DILocation(line: 33, column: 13, scope: !869)
!880 = !DILocation(line: 33, column: 21, scope: !869)
!881 = !DILocation(line: 33, column: 27, scope: !869)
!882 = !DILocation(line: 34, column: 7, scope: !869)
!883 = !DILocation(line: 35, column: 7, scope: !869)
!884 = !DILocation(line: 37, column: 13, scope: !869)
!885 = !DILocation(line: 37, column: 20, scope: !869)
!886 = !DILocation(line: 37, column: 26, scope: !869)
!887 = !DILocation(line: 38, column: 7, scope: !869)
!888 = !DILocation(line: 40, column: 7, scope: !869)
!889 = !DILocation(line: 56, column: 25, scope: !869)
!890 = !DILocation(line: 56, column: 20, scope: !869)
!891 = !DILocation(line: 56, column: 44, scope: !869)
!892 = !DILocation(line: 56, column: 32, scope: !869)
!893 = !DILocation(line: 56, column: 14, scope: !869)
!894 = !DILocation(line: 56, column: 5, scope: !869)
!895 = distinct !DISubprogram(name: "__divdi3", scope: !105, file: !105, line: 20, type: !665, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !35)
!896 = !DILocation(line: 23, column: 20, scope: !895)
!897 = !DILocation(line: 24, column: 20, scope: !895)
!898 = !DILocation(line: 25, column: 12, scope: !895)
!899 = !DILocation(line: 25, column: 19, scope: !895)
!900 = !DILocation(line: 26, column: 12, scope: !895)
!901 = !DILocation(line: 26, column: 19, scope: !895)
!902 = !DILocation(line: 27, column: 9, scope: !895)
!903 = !DILocation(line: 28, column: 13, scope: !895)
!904 = !DILocation(line: 28, column: 44, scope: !895)
!905 = !DILocation(line: 28, column: 51, scope: !895)
!906 = !DILocation(line: 28, column: 5, scope: !895)
!907 = distinct !DISubprogram(name: "__udivmoddi4", scope: !163, file: !163, line: 24, type: !665, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !162, retainedNodes: !35)
!908 = !DILocation(line: 29, column: 7, scope: !907)
!909 = !DILocation(line: 29, column: 11, scope: !907)
!910 = !DILocation(line: 31, column: 7, scope: !907)
!911 = !DILocation(line: 31, column: 11, scope: !907)
!912 = !DILocation(line: 36, column: 11, scope: !907)
!913 = !DILocation(line: 36, column: 13, scope: !907)
!914 = !DILocation(line: 36, column: 18, scope: !907)
!915 = !DILocation(line: 36, column: 9, scope: !907)
!916 = !DILocation(line: 38, column: 15, scope: !907)
!917 = !DILocation(line: 38, column: 17, scope: !907)
!918 = !DILocation(line: 38, column: 22, scope: !907)
!919 = !DILocation(line: 38, column: 13, scope: !907)
!920 = !DILocation(line: 44, column: 17, scope: !907)
!921 = !DILocation(line: 45, column: 28, scope: !907)
!922 = !DILocation(line: 45, column: 38, scope: !907)
!923 = !DILocation(line: 45, column: 32, scope: !907)
!924 = !DILocation(line: 45, column: 24, scope: !907)
!925 = !DILocation(line: 45, column: 22, scope: !907)
!926 = !DILocation(line: 45, column: 17, scope: !907)
!927 = !DILocation(line: 46, column: 24, scope: !907)
!928 = !DILocation(line: 46, column: 34, scope: !907)
!929 = !DILocation(line: 46, column: 28, scope: !907)
!930 = !DILocation(line: 46, column: 20, scope: !907)
!931 = !DILocation(line: 46, column: 13, scope: !907)
!932 = !DILocation(line: 52, column: 13, scope: !907)
!933 = !DILocation(line: 53, column: 24, scope: !907)
!934 = !DILocation(line: 53, column: 20, scope: !907)
!935 = !DILocation(line: 53, column: 18, scope: !907)
!936 = !DILocation(line: 53, column: 13, scope: !907)
!937 = !DILocation(line: 54, column: 9, scope: !907)
!938 = !DILocation(line: 57, column: 13, scope: !907)
!939 = !DILocation(line: 57, column: 17, scope: !907)
!940 = !DILocation(line: 57, column: 9, scope: !907)
!941 = !DILocation(line: 59, column: 15, scope: !907)
!942 = !DILocation(line: 59, column: 17, scope: !907)
!943 = !DILocation(line: 59, column: 22, scope: !907)
!944 = !DILocation(line: 59, column: 13, scope: !907)
!945 = !DILocation(line: 65, column: 17, scope: !907)
!946 = !DILocation(line: 66, column: 26, scope: !907)
!947 = !DILocation(line: 66, column: 28, scope: !907)
!948 = !DILocation(line: 66, column: 39, scope: !907)
!949 = !DILocation(line: 66, column: 33, scope: !907)
!950 = !DILocation(line: 66, column: 24, scope: !907)
!951 = !DILocation(line: 66, column: 22, scope: !907)
!952 = !DILocation(line: 66, column: 17, scope: !907)
!953 = !DILocation(line: 67, column: 22, scope: !907)
!954 = !DILocation(line: 67, column: 24, scope: !907)
!955 = !DILocation(line: 67, column: 35, scope: !907)
!956 = !DILocation(line: 67, column: 29, scope: !907)
!957 = !DILocation(line: 67, column: 20, scope: !907)
!958 = !DILocation(line: 67, column: 13, scope: !907)
!959 = !DILocation(line: 70, column: 17, scope: !907)
!960 = !DILocation(line: 70, column: 21, scope: !907)
!961 = !DILocation(line: 70, column: 13, scope: !907)
!962 = !DILocation(line: 76, column: 17, scope: !907)
!963 = !DILocation(line: 78, column: 30, scope: !907)
!964 = !DILocation(line: 78, column: 32, scope: !907)
!965 = !DILocation(line: 78, column: 41, scope: !907)
!966 = !DILocation(line: 78, column: 43, scope: !907)
!967 = !DILocation(line: 78, column: 37, scope: !907)
!968 = !DILocation(line: 78, column: 19, scope: !907)
!969 = !DILocation(line: 78, column: 21, scope: !907)
!970 = !DILocation(line: 78, column: 26, scope: !907)
!971 = !DILocation(line: 79, column: 21, scope: !907)
!972 = !DILocation(line: 79, column: 25, scope: !907)
!973 = !DILocation(line: 80, column: 26, scope: !907)
!974 = !DILocation(line: 80, column: 22, scope: !907)
!975 = !DILocation(line: 81, column: 13, scope: !907)
!976 = !DILocation(line: 82, column: 22, scope: !907)
!977 = !DILocation(line: 82, column: 24, scope: !907)
!978 = !DILocation(line: 82, column: 33, scope: !907)
!979 = !DILocation(line: 82, column: 35, scope: !907)
!980 = !DILocation(line: 82, column: 29, scope: !907)
!981 = !DILocation(line: 82, column: 20, scope: !907)
!982 = !DILocation(line: 82, column: 13, scope: !907)
!983 = !DILocation(line: 88, column: 16, scope: !907)
!984 = !DILocation(line: 88, column: 18, scope: !907)
!985 = !DILocation(line: 88, column: 28, scope: !907)
!986 = !DILocation(line: 88, column: 30, scope: !907)
!987 = !DILocation(line: 88, column: 35, scope: !907)
!988 = !DILocation(line: 88, column: 23, scope: !907)
!989 = !DILocation(line: 88, column: 41, scope: !907)
!990 = !DILocation(line: 88, column: 13, scope: !907)
!991 = !DILocation(line: 90, column: 17, scope: !907)
!992 = !DILocation(line: 92, column: 31, scope: !907)
!993 = !DILocation(line: 92, column: 21, scope: !907)
!994 = !DILocation(line: 92, column: 25, scope: !907)
!995 = !DILocation(line: 93, column: 30, scope: !907)
!996 = !DILocation(line: 93, column: 32, scope: !907)
!997 = !DILocation(line: 93, column: 42, scope: !907)
!998 = !DILocation(line: 93, column: 44, scope: !907)
!999 = !DILocation(line: 93, column: 49, scope: !907)
!1000 = !DILocation(line: 93, column: 37, scope: !907)
!1001 = !DILocation(line: 93, column: 19, scope: !907)
!1002 = !DILocation(line: 93, column: 21, scope: !907)
!1003 = !DILocation(line: 93, column: 26, scope: !907)
!1004 = !DILocation(line: 94, column: 26, scope: !907)
!1005 = !DILocation(line: 94, column: 22, scope: !907)
!1006 = !DILocation(line: 95, column: 13, scope: !907)
!1007 = !DILocation(line: 96, column: 22, scope: !907)
!1008 = !DILocation(line: 96, column: 24, scope: !907)
!1009 = !DILocation(line: 96, column: 48, scope: !907)
!1010 = !DILocation(line: 96, column: 50, scope: !907)
!1011 = !DILocation(line: 96, column: 32, scope: !907)
!1012 = !DILocation(line: 96, column: 29, scope: !907)
!1013 = !DILocation(line: 96, column: 20, scope: !907)
!1014 = !DILocation(line: 96, column: 13, scope: !907)
!1015 = !DILocation(line: 102, column: 30, scope: !907)
!1016 = !DILocation(line: 102, column: 32, scope: !907)
!1017 = !DILocation(line: 102, column: 14, scope: !907)
!1018 = !DILocation(line: 102, column: 56, scope: !907)
!1019 = !DILocation(line: 102, column: 58, scope: !907)
!1020 = !DILocation(line: 102, column: 40, scope: !907)
!1021 = !DILocation(line: 102, column: 38, scope: !907)
!1022 = !DILocation(line: 104, column: 16, scope: !907)
!1023 = !DILocation(line: 104, column: 13, scope: !907)
!1024 = !DILocation(line: 106, column: 16, scope: !907)
!1025 = !DILocation(line: 107, column: 26, scope: !907)
!1026 = !DILocation(line: 107, column: 22, scope: !907)
!1027 = !DILocation(line: 107, column: 17, scope: !907)
!1028 = !DILocation(line: 108, column: 13, scope: !907)
!1029 = !DILocation(line: 110, column: 9, scope: !907)
!1030 = !DILocation(line: 113, column: 13, scope: !907)
!1031 = !DILocation(line: 113, column: 17, scope: !907)
!1032 = !DILocation(line: 114, column: 24, scope: !907)
!1033 = !DILocation(line: 114, column: 45, scope: !907)
!1034 = !DILocation(line: 114, column: 28, scope: !907)
!1035 = !DILocation(line: 114, column: 11, scope: !907)
!1036 = !DILocation(line: 114, column: 13, scope: !907)
!1037 = !DILocation(line: 114, column: 18, scope: !907)
!1038 = !DILocation(line: 116, column: 22, scope: !907)
!1039 = !DILocation(line: 116, column: 24, scope: !907)
!1040 = !DILocation(line: 116, column: 29, scope: !907)
!1041 = !DILocation(line: 116, column: 11, scope: !907)
!1042 = !DILocation(line: 116, column: 13, scope: !907)
!1043 = !DILocation(line: 116, column: 18, scope: !907)
!1044 = !DILocation(line: 117, column: 22, scope: !907)
!1045 = !DILocation(line: 117, column: 24, scope: !907)
!1046 = !DILocation(line: 117, column: 46, scope: !907)
!1047 = !DILocation(line: 117, column: 29, scope: !907)
!1048 = !DILocation(line: 117, column: 60, scope: !907)
!1049 = !DILocation(line: 117, column: 64, scope: !907)
!1050 = !DILocation(line: 117, column: 53, scope: !907)
!1051 = !DILocation(line: 117, column: 13, scope: !907)
!1052 = !DILocation(line: 117, column: 17, scope: !907)
!1053 = !DILocation(line: 118, column: 5, scope: !907)
!1054 = !DILocation(line: 121, column: 15, scope: !907)
!1055 = !DILocation(line: 121, column: 17, scope: !907)
!1056 = !DILocation(line: 121, column: 22, scope: !907)
!1057 = !DILocation(line: 121, column: 13, scope: !907)
!1058 = !DILocation(line: 127, column: 22, scope: !907)
!1059 = !DILocation(line: 127, column: 43, scope: !907)
!1060 = !DILocation(line: 127, column: 17, scope: !907)
!1061 = !DILocation(line: 129, column: 21, scope: !907)
!1062 = !DILocation(line: 130, column: 32, scope: !907)
!1063 = !DILocation(line: 130, column: 43, scope: !907)
!1064 = !DILocation(line: 130, column: 47, scope: !907)
!1065 = !DILocation(line: 130, column: 36, scope: !907)
!1066 = !DILocation(line: 130, column: 28, scope: !907)
!1067 = !DILocation(line: 130, column: 26, scope: !907)
!1068 = !DILocation(line: 130, column: 21, scope: !907)
!1069 = !DILocation(line: 131, column: 25, scope: !907)
!1070 = !DILocation(line: 131, column: 29, scope: !907)
!1071 = !DILocation(line: 131, column: 21, scope: !907)
!1072 = !DILocation(line: 132, column: 30, scope: !907)
!1073 = !DILocation(line: 132, column: 21, scope: !907)
!1074 = !DILocation(line: 133, column: 40, scope: !907)
!1075 = !DILocation(line: 133, column: 22, scope: !907)
!1076 = !DILocation(line: 134, column: 30, scope: !907)
!1077 = !DILocation(line: 134, column: 32, scope: !907)
!1078 = !DILocation(line: 134, column: 37, scope: !907)
!1079 = !DILocation(line: 134, column: 19, scope: !907)
!1080 = !DILocation(line: 134, column: 21, scope: !907)
!1081 = !DILocation(line: 134, column: 26, scope: !907)
!1082 = !DILocation(line: 135, column: 30, scope: !907)
!1083 = !DILocation(line: 135, column: 32, scope: !907)
!1084 = !DILocation(line: 135, column: 54, scope: !907)
!1085 = !DILocation(line: 135, column: 37, scope: !907)
!1086 = !DILocation(line: 135, column: 68, scope: !907)
!1087 = !DILocation(line: 135, column: 72, scope: !907)
!1088 = !DILocation(line: 135, column: 61, scope: !907)
!1089 = !DILocation(line: 135, column: 21, scope: !907)
!1090 = !DILocation(line: 135, column: 25, scope: !907)
!1091 = !DILocation(line: 136, column: 26, scope: !907)
!1092 = !DILocation(line: 136, column: 17, scope: !907)
!1093 = !DILocation(line: 142, column: 55, scope: !907)
!1094 = !DILocation(line: 142, column: 37, scope: !907)
!1095 = !DILocation(line: 142, column: 35, scope: !907)
!1096 = !DILocation(line: 142, column: 78, scope: !907)
!1097 = !DILocation(line: 142, column: 80, scope: !907)
!1098 = !DILocation(line: 142, column: 62, scope: !907)
!1099 = !DILocation(line: 142, column: 60, scope: !907)
!1100 = !DILocation(line: 147, column: 20, scope: !907)
!1101 = !DILocation(line: 147, column: 17, scope: !907)
!1102 = !DILocation(line: 149, column: 21, scope: !907)
!1103 = !DILocation(line: 149, column: 25, scope: !907)
!1104 = !DILocation(line: 150, column: 32, scope: !907)
!1105 = !DILocation(line: 150, column: 19, scope: !907)
!1106 = !DILocation(line: 150, column: 21, scope: !907)
!1107 = !DILocation(line: 150, column: 26, scope: !907)
!1108 = !DILocation(line: 151, column: 19, scope: !907)
!1109 = !DILocation(line: 151, column: 21, scope: !907)
!1110 = !DILocation(line: 151, column: 26, scope: !907)
!1111 = !DILocation(line: 152, column: 29, scope: !907)
!1112 = !DILocation(line: 152, column: 31, scope: !907)
!1113 = !DILocation(line: 152, column: 21, scope: !907)
!1114 = !DILocation(line: 152, column: 25, scope: !907)
!1115 = !DILocation(line: 153, column: 13, scope: !907)
!1116 = !DILocation(line: 154, column: 25, scope: !907)
!1117 = !DILocation(line: 154, column: 22, scope: !907)
!1118 = !DILocation(line: 156, column: 21, scope: !907)
!1119 = !DILocation(line: 156, column: 25, scope: !907)
!1120 = !DILocation(line: 157, column: 32, scope: !907)
!1121 = !DILocation(line: 157, column: 53, scope: !907)
!1122 = !DILocation(line: 157, column: 36, scope: !907)
!1123 = !DILocation(line: 157, column: 19, scope: !907)
!1124 = !DILocation(line: 157, column: 21, scope: !907)
!1125 = !DILocation(line: 157, column: 26, scope: !907)
!1126 = !DILocation(line: 158, column: 30, scope: !907)
!1127 = !DILocation(line: 158, column: 32, scope: !907)
!1128 = !DILocation(line: 158, column: 37, scope: !907)
!1129 = !DILocation(line: 158, column: 19, scope: !907)
!1130 = !DILocation(line: 158, column: 21, scope: !907)
!1131 = !DILocation(line: 158, column: 26, scope: !907)
!1132 = !DILocation(line: 159, column: 30, scope: !907)
!1133 = !DILocation(line: 159, column: 32, scope: !907)
!1134 = !DILocation(line: 159, column: 54, scope: !907)
!1135 = !DILocation(line: 159, column: 37, scope: !907)
!1136 = !DILocation(line: 159, column: 68, scope: !907)
!1137 = !DILocation(line: 159, column: 72, scope: !907)
!1138 = !DILocation(line: 159, column: 61, scope: !907)
!1139 = !DILocation(line: 159, column: 21, scope: !907)
!1140 = !DILocation(line: 159, column: 25, scope: !907)
!1141 = !DILocation(line: 160, column: 13, scope: !907)
!1142 = !DILocation(line: 163, column: 31, scope: !907)
!1143 = !DILocation(line: 163, column: 53, scope: !907)
!1144 = !DILocation(line: 163, column: 35, scope: !907)
!1145 = !DILocation(line: 163, column: 21, scope: !907)
!1146 = !DILocation(line: 163, column: 25, scope: !907)
!1147 = !DILocation(line: 164, column: 31, scope: !907)
!1148 = !DILocation(line: 164, column: 33, scope: !907)
!1149 = !DILocation(line: 164, column: 56, scope: !907)
!1150 = !DILocation(line: 164, column: 38, scope: !907)
!1151 = !DILocation(line: 165, column: 33, scope: !907)
!1152 = !DILocation(line: 165, column: 44, scope: !907)
!1153 = !DILocation(line: 165, column: 37, scope: !907)
!1154 = !DILocation(line: 164, column: 63, scope: !907)
!1155 = !DILocation(line: 164, column: 19, scope: !907)
!1156 = !DILocation(line: 164, column: 21, scope: !907)
!1157 = !DILocation(line: 164, column: 26, scope: !907)
!1158 = !DILocation(line: 166, column: 19, scope: !907)
!1159 = !DILocation(line: 166, column: 21, scope: !907)
!1160 = !DILocation(line: 166, column: 26, scope: !907)
!1161 = !DILocation(line: 167, column: 29, scope: !907)
!1162 = !DILocation(line: 167, column: 31, scope: !907)
!1163 = !DILocation(line: 167, column: 43, scope: !907)
!1164 = !DILocation(line: 167, column: 36, scope: !907)
!1165 = !DILocation(line: 167, column: 21, scope: !907)
!1166 = !DILocation(line: 167, column: 25, scope: !907)
!1167 = !DILocation(line: 169, column: 9, scope: !907)
!1168 = !DILocation(line: 176, column: 34, scope: !907)
!1169 = !DILocation(line: 176, column: 36, scope: !907)
!1170 = !DILocation(line: 176, column: 18, scope: !907)
!1171 = !DILocation(line: 176, column: 60, scope: !907)
!1172 = !DILocation(line: 176, column: 62, scope: !907)
!1173 = !DILocation(line: 176, column: 44, scope: !907)
!1174 = !DILocation(line: 176, column: 42, scope: !907)
!1175 = !DILocation(line: 178, column: 20, scope: !907)
!1176 = !DILocation(line: 178, column: 17, scope: !907)
!1177 = !DILocation(line: 180, column: 21, scope: !907)
!1178 = !DILocation(line: 181, column: 30, scope: !907)
!1179 = !DILocation(line: 181, column: 26, scope: !907)
!1180 = !DILocation(line: 181, column: 21, scope: !907)
!1181 = !DILocation(line: 182, column: 17, scope: !907)
!1182 = !DILocation(line: 184, column: 13, scope: !907)
!1183 = !DILocation(line: 187, column: 17, scope: !907)
!1184 = !DILocation(line: 187, column: 21, scope: !907)
!1185 = !DILocation(line: 188, column: 20, scope: !907)
!1186 = !DILocation(line: 188, column: 17, scope: !907)
!1187 = !DILocation(line: 190, column: 32, scope: !907)
!1188 = !DILocation(line: 190, column: 19, scope: !907)
!1189 = !DILocation(line: 190, column: 21, scope: !907)
!1190 = !DILocation(line: 190, column: 26, scope: !907)
!1191 = !DILocation(line: 191, column: 19, scope: !907)
!1192 = !DILocation(line: 191, column: 21, scope: !907)
!1193 = !DILocation(line: 191, column: 26, scope: !907)
!1194 = !DILocation(line: 192, column: 29, scope: !907)
!1195 = !DILocation(line: 192, column: 31, scope: !907)
!1196 = !DILocation(line: 192, column: 21, scope: !907)
!1197 = !DILocation(line: 192, column: 25, scope: !907)
!1198 = !DILocation(line: 193, column: 13, scope: !907)
!1199 = !DILocation(line: 196, column: 32, scope: !907)
!1200 = !DILocation(line: 196, column: 53, scope: !907)
!1201 = !DILocation(line: 196, column: 36, scope: !907)
!1202 = !DILocation(line: 196, column: 19, scope: !907)
!1203 = !DILocation(line: 196, column: 21, scope: !907)
!1204 = !DILocation(line: 196, column: 26, scope: !907)
!1205 = !DILocation(line: 197, column: 30, scope: !907)
!1206 = !DILocation(line: 197, column: 32, scope: !907)
!1207 = !DILocation(line: 197, column: 37, scope: !907)
!1208 = !DILocation(line: 197, column: 19, scope: !907)
!1209 = !DILocation(line: 197, column: 21, scope: !907)
!1210 = !DILocation(line: 197, column: 26, scope: !907)
!1211 = !DILocation(line: 198, column: 30, scope: !907)
!1212 = !DILocation(line: 198, column: 32, scope: !907)
!1213 = !DILocation(line: 198, column: 54, scope: !907)
!1214 = !DILocation(line: 198, column: 37, scope: !907)
!1215 = !DILocation(line: 198, column: 68, scope: !907)
!1216 = !DILocation(line: 198, column: 72, scope: !907)
!1217 = !DILocation(line: 198, column: 61, scope: !907)
!1218 = !DILocation(line: 198, column: 21, scope: !907)
!1219 = !DILocation(line: 198, column: 25, scope: !907)
!1220 = !DILocation(line: 0, scope: !907)
!1221 = !DILocation(line: 209, column: 5, scope: !907)
!1222 = !DILocation(line: 209, column: 15, scope: !907)
!1223 = !DILocation(line: 212, column: 23, scope: !907)
!1224 = !DILocation(line: 212, column: 25, scope: !907)
!1225 = !DILocation(line: 212, column: 43, scope: !907)
!1226 = !DILocation(line: 212, column: 36, scope: !907)
!1227 = !DILocation(line: 212, column: 11, scope: !907)
!1228 = !DILocation(line: 212, column: 13, scope: !907)
!1229 = !DILocation(line: 212, column: 18, scope: !907)
!1230 = !DILocation(line: 213, column: 41, scope: !907)
!1231 = !DILocation(line: 213, column: 43, scope: !907)
!1232 = !DILocation(line: 213, column: 36, scope: !907)
!1233 = !DILocation(line: 213, column: 13, scope: !907)
!1234 = !DILocation(line: 213, column: 18, scope: !907)
!1235 = !DILocation(line: 214, column: 23, scope: !907)
!1236 = !DILocation(line: 214, column: 25, scope: !907)
!1237 = !DILocation(line: 214, column: 43, scope: !907)
!1238 = !DILocation(line: 214, column: 36, scope: !907)
!1239 = !DILocation(line: 214, column: 11, scope: !907)
!1240 = !DILocation(line: 214, column: 13, scope: !907)
!1241 = !DILocation(line: 214, column: 18, scope: !907)
!1242 = !DILocation(line: 215, column: 30, scope: !907)
!1243 = !DILocation(line: 215, column: 36, scope: !907)
!1244 = !DILocation(line: 215, column: 13, scope: !907)
!1245 = !DILocation(line: 215, column: 18, scope: !907)
!1246 = !DILocation(line: 223, column: 37, scope: !907)
!1247 = !DILocation(line: 223, column: 45, scope: !907)
!1248 = !DILocation(line: 223, column: 49, scope: !907)
!1249 = !DILocation(line: 225, column: 24, scope: !907)
!1250 = !DILocation(line: 225, column: 11, scope: !907)
!1251 = !DILocation(line: 225, column: 15, scope: !907)
!1252 = !DILocation(line: 226, column: 5, scope: !907)
!1253 = !DILocation(line: 224, column: 19, scope: !907)
!1254 = !DILocation(line: 224, column: 17, scope: !907)
!1255 = !DILocation(line: 209, column: 20, scope: !907)
!1256 = distinct !{!1256, !1221, !1252, !235}
!1257 = !DILocation(line: 227, column: 16, scope: !907)
!1258 = !DILocation(line: 227, column: 20, scope: !907)
!1259 = !DILocation(line: 227, column: 28, scope: !907)
!1260 = !DILocation(line: 227, column: 26, scope: !907)
!1261 = !DILocation(line: 227, column: 7, scope: !907)
!1262 = !DILocation(line: 227, column: 11, scope: !907)
!1263 = !DILocation(line: 228, column: 9, scope: !907)
!1264 = !DILocation(line: 229, column: 18, scope: !907)
!1265 = !DILocation(line: 229, column: 14, scope: !907)
!1266 = !DILocation(line: 229, column: 9, scope: !907)
!1267 = !DILocation(line: 230, column: 14, scope: !907)
!1268 = !DILocation(line: 230, column: 5, scope: !907)
!1269 = !DILocation(line: 231, column: 1, scope: !907)
!1270 = distinct !DISubprogram(name: "__divmoddi4", scope: !107, file: !107, line: 20, type: !665, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !35)
!1271 = !DILocation(line: 22, column: 14, scope: !1270)
!1272 = !DILocation(line: 23, column: 16, scope: !1270)
!1273 = !DILocation(line: 23, column: 12, scope: !1270)
!1274 = !DILocation(line: 23, column: 8, scope: !1270)
!1275 = !DILocation(line: 24, column: 3, scope: !1270)
!1276 = distinct !DISubprogram(name: "__divmodsi4", scope: !109, file: !109, line: 20, type: !665, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !35)
!1277 = !DILocation(line: 22, column: 14, scope: !1276)
!1278 = !DILocation(line: 23, column: 16, scope: !1276)
!1279 = !DILocation(line: 23, column: 12, scope: !1276)
!1280 = !DILocation(line: 23, column: 8, scope: !1276)
!1281 = !DILocation(line: 24, column: 3, scope: !1276)
!1282 = distinct !DISubprogram(name: "__divsi3", scope: !111, file: !111, line: 22, type: !665, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !35)
!1283 = !DILocation(line: 25, column: 20, scope: !1282)
!1284 = !DILocation(line: 26, column: 20, scope: !1282)
!1285 = !DILocation(line: 27, column: 12, scope: !1282)
!1286 = !DILocation(line: 27, column: 19, scope: !1282)
!1287 = !DILocation(line: 28, column: 12, scope: !1282)
!1288 = !DILocation(line: 28, column: 19, scope: !1282)
!1289 = !DILocation(line: 29, column: 9, scope: !1282)
!1290 = !DILocation(line: 36, column: 22, scope: !1282)
!1291 = !DILocation(line: 36, column: 33, scope: !1282)
!1292 = !DILocation(line: 36, column: 40, scope: !1282)
!1293 = !DILocation(line: 36, column: 5, scope: !1282)
!1294 = distinct !DISubprogram(name: "__ffsdi2", scope: !115, file: !115, line: 22, type: !665, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !35)
!1295 = !DILocation(line: 25, column: 7, scope: !1294)
!1296 = !DILocation(line: 25, column: 11, scope: !1294)
!1297 = !DILocation(line: 26, column: 13, scope: !1294)
!1298 = !DILocation(line: 26, column: 17, scope: !1294)
!1299 = !DILocation(line: 26, column: 9, scope: !1294)
!1300 = !DILocation(line: 28, column: 15, scope: !1294)
!1301 = !DILocation(line: 28, column: 17, scope: !1294)
!1302 = !DILocation(line: 28, column: 22, scope: !1294)
!1303 = !DILocation(line: 28, column: 13, scope: !1294)
!1304 = !DILocation(line: 29, column: 13, scope: !1294)
!1305 = !DILocation(line: 30, column: 32, scope: !1294)
!1306 = !DILocation(line: 30, column: 34, scope: !1294)
!1307 = !DILocation(line: 30, column: 16, scope: !1294)
!1308 = !DILocation(line: 30, column: 40, scope: !1294)
!1309 = !DILocation(line: 30, column: 9, scope: !1294)
!1310 = !DILocation(line: 32, column: 30, scope: !1294)
!1311 = !DILocation(line: 32, column: 12, scope: !1294)
!1312 = !DILocation(line: 32, column: 35, scope: !1294)
!1313 = !DILocation(line: 32, column: 5, scope: !1294)
!1314 = !DILocation(line: 0, scope: !1294)
!1315 = !DILocation(line: 33, column: 1, scope: !1294)
!1316 = distinct !DISubprogram(name: "__ffssi2", scope: !117, file: !117, line: 22, type: !665, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !116, retainedNodes: !35)
!1317 = !DILocation(line: 24, column: 11, scope: !1316)
!1318 = !DILocation(line: 24, column: 9, scope: !1316)
!1319 = !DILocation(line: 26, column: 9, scope: !1316)
!1320 = !DILocation(line: 28, column: 12, scope: !1316)
!1321 = !DILocation(line: 28, column: 29, scope: !1316)
!1322 = !DILocation(line: 28, column: 5, scope: !1316)
!1323 = !DILocation(line: 0, scope: !1316)
!1324 = !DILocation(line: 29, column: 1, scope: !1316)
!1325 = distinct !DISubprogram(name: "__lshrdi3", scope: !123, file: !123, line: 24, type: !665, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !122, retainedNodes: !35)
!1326 = !DILocation(line: 29, column: 11, scope: !1325)
!1327 = !DILocation(line: 29, column: 15, scope: !1325)
!1328 = !DILocation(line: 30, column: 11, scope: !1325)
!1329 = !DILocation(line: 30, column: 9, scope: !1325)
!1330 = !DILocation(line: 32, column: 16, scope: !1325)
!1331 = !DILocation(line: 32, column: 18, scope: !1325)
!1332 = !DILocation(line: 32, column: 23, scope: !1325)
!1333 = !DILocation(line: 33, column: 30, scope: !1325)
!1334 = !DILocation(line: 33, column: 32, scope: !1325)
!1335 = !DILocation(line: 33, column: 43, scope: !1325)
!1336 = !DILocation(line: 33, column: 37, scope: !1325)
!1337 = !DILocation(line: 33, column: 18, scope: !1325)
!1338 = !DILocation(line: 33, column: 22, scope: !1325)
!1339 = !DILocation(line: 34, column: 5, scope: !1325)
!1340 = !DILocation(line: 37, column: 15, scope: !1325)
!1341 = !DILocation(line: 37, column: 13, scope: !1325)
!1342 = !DILocation(line: 38, column: 13, scope: !1325)
!1343 = !DILocation(line: 39, column: 32, scope: !1325)
!1344 = !DILocation(line: 39, column: 34, scope: !1325)
!1345 = !DILocation(line: 39, column: 39, scope: !1325)
!1346 = !DILocation(line: 39, column: 16, scope: !1325)
!1347 = !DILocation(line: 39, column: 18, scope: !1325)
!1348 = !DILocation(line: 39, column: 24, scope: !1325)
!1349 = !DILocation(line: 40, column: 31, scope: !1325)
!1350 = !DILocation(line: 40, column: 33, scope: !1325)
!1351 = !DILocation(line: 40, column: 55, scope: !1325)
!1352 = !DILocation(line: 40, column: 38, scope: !1325)
!1353 = !DILocation(line: 40, column: 72, scope: !1325)
!1354 = !DILocation(line: 40, column: 76, scope: !1325)
!1355 = !DILocation(line: 40, column: 61, scope: !1325)
!1356 = !DILocation(line: 40, column: 18, scope: !1325)
!1357 = !DILocation(line: 40, column: 22, scope: !1325)
!1358 = !DILocation(line: 42, column: 19, scope: !1325)
!1359 = !DILocation(line: 42, column: 5, scope: !1325)
!1360 = !DILocation(line: 0, scope: !1325)
!1361 = !DILocation(line: 43, column: 1, scope: !1325)
!1362 = distinct !DISubprogram(name: "__moddi3", scope: !127, file: !127, line: 20, type: !665, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !126, retainedNodes: !35)
!1363 = !DILocation(line: 24, column: 17, scope: !1362)
!1364 = !DILocation(line: 25, column: 11, scope: !1362)
!1365 = !DILocation(line: 26, column: 12, scope: !1362)
!1366 = !DILocation(line: 26, column: 17, scope: !1362)
!1367 = !DILocation(line: 28, column: 5, scope: !1362)
!1368 = !DILocation(line: 29, column: 21, scope: !1362)
!1369 = !DILocation(line: 29, column: 23, scope: !1362)
!1370 = !DILocation(line: 29, column: 28, scope: !1362)
!1371 = !DILocation(line: 29, column: 5, scope: !1362)
!1372 = distinct !DISubprogram(name: "__modsi3", scope: !129, file: !129, line: 20, type: !665, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !35)
!1373 = !DILocation(line: 22, column: 16, scope: !1372)
!1374 = !DILocation(line: 22, column: 31, scope: !1372)
!1375 = !DILocation(line: 22, column: 14, scope: !1372)
!1376 = !DILocation(line: 22, column: 5, scope: !1372)
!1377 = distinct !DISubprogram(name: "__mulvdi3", scope: !133, file: !133, line: 22, type: !665, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !35)
!1378 = !DILocation(line: 27, column: 11, scope: !1377)
!1379 = !DILocation(line: 27, column: 9, scope: !1377)
!1380 = !DILocation(line: 29, column: 15, scope: !1377)
!1381 = !DILocation(line: 29, column: 20, scope: !1377)
!1382 = !DILocation(line: 29, column: 25, scope: !1377)
!1383 = !DILocation(line: 29, column: 13, scope: !1377)
!1384 = !DILocation(line: 30, column: 13, scope: !1377)
!1385 = !DILocation(line: 31, column: 9, scope: !1377)
!1386 = !DILocation(line: 33, column: 11, scope: !1377)
!1387 = !DILocation(line: 33, column: 9, scope: !1377)
!1388 = !DILocation(line: 35, column: 15, scope: !1377)
!1389 = !DILocation(line: 35, column: 20, scope: !1377)
!1390 = !DILocation(line: 35, column: 25, scope: !1377)
!1391 = !DILocation(line: 35, column: 13, scope: !1377)
!1392 = !DILocation(line: 36, column: 13, scope: !1377)
!1393 = !DILocation(line: 37, column: 9, scope: !1377)
!1394 = !DILocation(line: 39, column: 19, scope: !1377)
!1395 = !DILocation(line: 40, column: 23, scope: !1377)
!1396 = !DILocation(line: 40, column: 29, scope: !1377)
!1397 = !DILocation(line: 41, column: 19, scope: !1377)
!1398 = !DILocation(line: 42, column: 23, scope: !1377)
!1399 = !DILocation(line: 42, column: 29, scope: !1377)
!1400 = !DILocation(line: 43, column: 15, scope: !1377)
!1401 = !DILocation(line: 43, column: 19, scope: !1377)
!1402 = !DILocation(line: 43, column: 28, scope: !1377)
!1403 = !DILocation(line: 43, column: 9, scope: !1377)
!1404 = !DILocation(line: 44, column: 9, scope: !1377)
!1405 = !DILocation(line: 45, column: 12, scope: !1377)
!1406 = !DILocation(line: 45, column: 9, scope: !1377)
!1407 = !DILocation(line: 47, column: 25, scope: !1377)
!1408 = !DILocation(line: 47, column: 19, scope: !1377)
!1409 = !DILocation(line: 47, column: 13, scope: !1377)
!1410 = !DILocation(line: 48, column: 13, scope: !1377)
!1411 = !DILocation(line: 49, column: 5, scope: !1377)
!1412 = !DILocation(line: 52, column: 27, scope: !1377)
!1413 = !DILocation(line: 52, column: 25, scope: !1377)
!1414 = !DILocation(line: 52, column: 19, scope: !1377)
!1415 = !DILocation(line: 52, column: 13, scope: !1377)
!1416 = !DILocation(line: 53, column: 13, scope: !1377)
!1417 = !DILocation(line: 55, column: 5, scope: !1377)
!1418 = !DILocation(line: 0, scope: !1377)
!1419 = !DILocation(line: 56, column: 1, scope: !1377)
!1420 = distinct !DISubprogram(name: "__mulvsi3", scope: !135, file: !135, line: 22, type: !665, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !134, retainedNodes: !35)
!1421 = !DILocation(line: 27, column: 11, scope: !1420)
!1422 = !DILocation(line: 27, column: 9, scope: !1420)
!1423 = !DILocation(line: 29, column: 15, scope: !1420)
!1424 = !DILocation(line: 29, column: 20, scope: !1420)
!1425 = !DILocation(line: 29, column: 25, scope: !1420)
!1426 = !DILocation(line: 29, column: 13, scope: !1420)
!1427 = !DILocation(line: 30, column: 13, scope: !1420)
!1428 = !DILocation(line: 31, column: 9, scope: !1420)
!1429 = !DILocation(line: 33, column: 11, scope: !1420)
!1430 = !DILocation(line: 33, column: 9, scope: !1420)
!1431 = !DILocation(line: 35, column: 15, scope: !1420)
!1432 = !DILocation(line: 35, column: 20, scope: !1420)
!1433 = !DILocation(line: 35, column: 25, scope: !1420)
!1434 = !DILocation(line: 35, column: 13, scope: !1420)
!1435 = !DILocation(line: 36, column: 13, scope: !1420)
!1436 = !DILocation(line: 37, column: 9, scope: !1420)
!1437 = !DILocation(line: 39, column: 19, scope: !1420)
!1438 = !DILocation(line: 40, column: 23, scope: !1420)
!1439 = !DILocation(line: 40, column: 29, scope: !1420)
!1440 = !DILocation(line: 41, column: 19, scope: !1420)
!1441 = !DILocation(line: 42, column: 23, scope: !1420)
!1442 = !DILocation(line: 42, column: 29, scope: !1420)
!1443 = !DILocation(line: 43, column: 15, scope: !1420)
!1444 = !DILocation(line: 43, column: 19, scope: !1420)
!1445 = !DILocation(line: 43, column: 28, scope: !1420)
!1446 = !DILocation(line: 43, column: 9, scope: !1420)
!1447 = !DILocation(line: 44, column: 9, scope: !1420)
!1448 = !DILocation(line: 45, column: 12, scope: !1420)
!1449 = !DILocation(line: 45, column: 9, scope: !1420)
!1450 = !DILocation(line: 47, column: 25, scope: !1420)
!1451 = !DILocation(line: 47, column: 19, scope: !1420)
!1452 = !DILocation(line: 47, column: 13, scope: !1420)
!1453 = !DILocation(line: 48, column: 13, scope: !1420)
!1454 = !DILocation(line: 49, column: 5, scope: !1420)
!1455 = !DILocation(line: 52, column: 27, scope: !1420)
!1456 = !DILocation(line: 52, column: 25, scope: !1420)
!1457 = !DILocation(line: 52, column: 19, scope: !1420)
!1458 = !DILocation(line: 52, column: 13, scope: !1420)
!1459 = !DILocation(line: 53, column: 13, scope: !1420)
!1460 = !DILocation(line: 55, column: 5, scope: !1420)
!1461 = !DILocation(line: 0, scope: !1420)
!1462 = !DILocation(line: 56, column: 1, scope: !1420)
!1463 = distinct !DISubprogram(name: "__paritydi2", scope: !139, file: !139, line: 20, type: !665, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !138, retainedNodes: !35)
!1464 = !DILocation(line: 23, column: 7, scope: !1463)
!1465 = !DILocation(line: 23, column: 11, scope: !1463)
!1466 = !DILocation(line: 24, column: 26, scope: !1463)
!1467 = !DILocation(line: 24, column: 28, scope: !1463)
!1468 = !DILocation(line: 24, column: 39, scope: !1463)
!1469 = !DILocation(line: 24, column: 33, scope: !1463)
!1470 = !DILocation(line: 24, column: 12, scope: !1463)
!1471 = !DILocation(line: 24, column: 5, scope: !1463)
!1472 = distinct !DISubprogram(name: "__paritysi2", scope: !141, file: !141, line: 20, type: !665, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !35)
!1473 = !DILocation(line: 23, column: 12, scope: !1472)
!1474 = !DILocation(line: 23, column: 7, scope: !1472)
!1475 = !DILocation(line: 24, column: 12, scope: !1472)
!1476 = !DILocation(line: 24, column: 7, scope: !1472)
!1477 = !DILocation(line: 25, column: 12, scope: !1472)
!1478 = !DILocation(line: 25, column: 7, scope: !1472)
!1479 = !DILocation(line: 26, column: 26, scope: !1472)
!1480 = !DILocation(line: 26, column: 20, scope: !1472)
!1481 = !DILocation(line: 26, column: 34, scope: !1472)
!1482 = !DILocation(line: 26, column: 5, scope: !1472)
!1483 = distinct !DISubprogram(name: "__popcountdi2", scope: !145, file: !145, line: 20, type: !665, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !144, retainedNodes: !35)
!1484 = !DILocation(line: 23, column: 20, scope: !1483)
!1485 = !DILocation(line: 23, column: 26, scope: !1483)
!1486 = !DILocation(line: 23, column: 13, scope: !1483)
!1487 = !DILocation(line: 25, column: 15, scope: !1483)
!1488 = !DILocation(line: 25, column: 21, scope: !1483)
!1489 = !DILocation(line: 25, column: 52, scope: !1483)
!1490 = !DILocation(line: 25, column: 46, scope: !1483)
!1491 = !DILocation(line: 27, column: 20, scope: !1483)
!1492 = !DILocation(line: 27, column: 14, scope: !1483)
!1493 = !DILocation(line: 27, column: 27, scope: !1483)
!1494 = !DILocation(line: 29, column: 34, scope: !1483)
!1495 = !DILocation(line: 29, column: 28, scope: !1483)
!1496 = !DILocation(line: 29, column: 16, scope: !1483)
!1497 = !DILocation(line: 32, column: 16, scope: !1483)
!1498 = !DILocation(line: 32, column: 11, scope: !1483)
!1499 = !DILocation(line: 35, column: 20, scope: !1483)
!1500 = !DILocation(line: 35, column: 15, scope: !1483)
!1501 = !DILocation(line: 35, column: 27, scope: !1483)
!1502 = !DILocation(line: 35, column: 5, scope: !1483)
!1503 = distinct !DISubprogram(name: "__popcountsi2", scope: !147, file: !147, line: 20, type: !665, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !146, retainedNodes: !35)
!1504 = !DILocation(line: 23, column: 17, scope: !1503)
!1505 = !DILocation(line: 23, column: 23, scope: !1503)
!1506 = !DILocation(line: 23, column: 11, scope: !1503)
!1507 = !DILocation(line: 25, column: 13, scope: !1503)
!1508 = !DILocation(line: 25, column: 19, scope: !1503)
!1509 = !DILocation(line: 25, column: 38, scope: !1503)
!1510 = !DILocation(line: 25, column: 33, scope: !1503)
!1511 = !DILocation(line: 27, column: 17, scope: !1503)
!1512 = !DILocation(line: 27, column: 12, scope: !1503)
!1513 = !DILocation(line: 27, column: 24, scope: !1503)
!1514 = !DILocation(line: 29, column: 17, scope: !1503)
!1515 = !DILocation(line: 29, column: 12, scope: !1503)
!1516 = !DILocation(line: 32, column: 20, scope: !1503)
!1517 = !DILocation(line: 32, column: 15, scope: !1503)
!1518 = !DILocation(line: 32, column: 27, scope: !1503)
!1519 = !DILocation(line: 32, column: 5, scope: !1503)
!1520 = distinct !DISubprogram(name: "__subvdi3", scope: !151, file: !151, line: 22, type: !665, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !150, retainedNodes: !35)
!1521 = !DILocation(line: 24, column: 27, scope: !1520)
!1522 = !DILocation(line: 25, column: 11, scope: !1520)
!1523 = !DILocation(line: 25, column: 9, scope: !1520)
!1524 = !DILocation(line: 27, column: 15, scope: !1520)
!1525 = !DILocation(line: 27, column: 13, scope: !1520)
!1526 = !DILocation(line: 28, column: 13, scope: !1520)
!1527 = !DILocation(line: 29, column: 5, scope: !1520)
!1528 = !DILocation(line: 32, column: 15, scope: !1520)
!1529 = !DILocation(line: 32, column: 13, scope: !1520)
!1530 = !DILocation(line: 33, column: 13, scope: !1520)
!1531 = !DILocation(line: 35, column: 5, scope: !1520)
!1532 = distinct !DISubprogram(name: "__subvsi3", scope: !153, file: !153, line: 22, type: !665, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !152, retainedNodes: !35)
!1533 = !DILocation(line: 24, column: 27, scope: !1532)
!1534 = !DILocation(line: 25, column: 11, scope: !1532)
!1535 = !DILocation(line: 25, column: 9, scope: !1532)
!1536 = !DILocation(line: 27, column: 15, scope: !1532)
!1537 = !DILocation(line: 27, column: 13, scope: !1532)
!1538 = !DILocation(line: 28, column: 13, scope: !1532)
!1539 = !DILocation(line: 29, column: 5, scope: !1532)
!1540 = !DILocation(line: 32, column: 15, scope: !1532)
!1541 = !DILocation(line: 32, column: 13, scope: !1532)
!1542 = !DILocation(line: 33, column: 13, scope: !1532)
!1543 = !DILocation(line: 35, column: 5, scope: !1532)
!1544 = distinct !DISubprogram(name: "__ucmpdi2", scope: !157, file: !157, line: 23, type: !665, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !156, retainedNodes: !35)
!1545 = !DILocation(line: 26, column: 7, scope: !1544)
!1546 = !DILocation(line: 26, column: 11, scope: !1544)
!1547 = !DILocation(line: 28, column: 7, scope: !1544)
!1548 = !DILocation(line: 28, column: 11, scope: !1544)
!1549 = !DILocation(line: 29, column: 11, scope: !1544)
!1550 = !DILocation(line: 29, column: 13, scope: !1544)
!1551 = !DILocation(line: 29, column: 22, scope: !1544)
!1552 = !DILocation(line: 29, column: 24, scope: !1544)
!1553 = !DILocation(line: 29, column: 18, scope: !1544)
!1554 = !DILocation(line: 29, column: 9, scope: !1544)
!1555 = !DILocation(line: 30, column: 9, scope: !1544)
!1556 = !DILocation(line: 31, column: 11, scope: !1544)
!1557 = !DILocation(line: 31, column: 13, scope: !1544)
!1558 = !DILocation(line: 31, column: 22, scope: !1544)
!1559 = !DILocation(line: 31, column: 24, scope: !1544)
!1560 = !DILocation(line: 31, column: 18, scope: !1544)
!1561 = !DILocation(line: 31, column: 9, scope: !1544)
!1562 = !DILocation(line: 32, column: 9, scope: !1544)
!1563 = !DILocation(line: 33, column: 13, scope: !1544)
!1564 = !DILocation(line: 33, column: 23, scope: !1544)
!1565 = !DILocation(line: 33, column: 17, scope: !1544)
!1566 = !DILocation(line: 33, column: 9, scope: !1544)
!1567 = !DILocation(line: 34, column: 9, scope: !1544)
!1568 = !DILocation(line: 35, column: 13, scope: !1544)
!1569 = !DILocation(line: 35, column: 23, scope: !1544)
!1570 = !DILocation(line: 35, column: 17, scope: !1544)
!1571 = !DILocation(line: 35, column: 9, scope: !1544)
!1572 = !DILocation(line: 36, column: 9, scope: !1544)
!1573 = !DILocation(line: 37, column: 5, scope: !1544)
!1574 = !DILocation(line: 0, scope: !1544)
!1575 = !DILocation(line: 38, column: 1, scope: !1544)
!1576 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !157, file: !157, line: 46, type: !665, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !156, retainedNodes: !35)
!1577 = !DILocation(line: 48, column: 9, scope: !1576)
!1578 = !DILocation(line: 48, column: 25, scope: !1576)
!1579 = !DILocation(line: 48, column: 2, scope: !1576)
!1580 = distinct !DISubprogram(name: "__udivdi3", scope: !161, file: !161, line: 20, type: !665, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !160, retainedNodes: !35)
!1581 = !DILocation(line: 22, column: 12, scope: !1580)
!1582 = !DILocation(line: 22, column: 5, scope: !1580)
!1583 = distinct !DISubprogram(name: "__udivmodsi4", scope: !165, file: !165, line: 20, type: !665, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !164, retainedNodes: !35)
!1584 = !DILocation(line: 22, column: 14, scope: !1583)
!1585 = !DILocation(line: 23, column: 16, scope: !1583)
!1586 = !DILocation(line: 23, column: 12, scope: !1583)
!1587 = !DILocation(line: 23, column: 8, scope: !1583)
!1588 = !DILocation(line: 24, column: 3, scope: !1583)
!1589 = distinct !DISubprogram(name: "__udivsi3", scope: !169, file: !169, line: 25, type: !665, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !168, retainedNodes: !35)
!1590 = !DILocation(line: 32, column: 11, scope: !1589)
!1591 = !DILocation(line: 32, column: 9, scope: !1589)
!1592 = !DILocation(line: 33, column: 9, scope: !1589)
!1593 = !DILocation(line: 34, column: 11, scope: !1589)
!1594 = !DILocation(line: 34, column: 9, scope: !1589)
!1595 = !DILocation(line: 35, column: 9, scope: !1589)
!1596 = !DILocation(line: 36, column: 10, scope: !1589)
!1597 = !DILocation(line: 36, column: 29, scope: !1589)
!1598 = !DILocation(line: 36, column: 27, scope: !1589)
!1599 = !DILocation(line: 38, column: 12, scope: !1589)
!1600 = !DILocation(line: 38, column: 9, scope: !1589)
!1601 = !DILocation(line: 39, column: 9, scope: !1589)
!1602 = !DILocation(line: 40, column: 12, scope: !1589)
!1603 = !DILocation(line: 40, column: 9, scope: !1589)
!1604 = !DILocation(line: 41, column: 9, scope: !1589)
!1605 = !DILocation(line: 42, column: 5, scope: !1589)
!1606 = !DILocation(line: 45, column: 28, scope: !1589)
!1607 = !DILocation(line: 45, column: 11, scope: !1589)
!1608 = !DILocation(line: 46, column: 11, scope: !1589)
!1609 = !DILocation(line: 48, column: 5, scope: !1589)
!1610 = !DILocation(line: 0, scope: !1589)
!1611 = !DILocation(line: 48, column: 15, scope: !1589)
!1612 = !DILocation(line: 51, column: 22, scope: !1589)
!1613 = !DILocation(line: 60, column: 41, scope: !1589)
!1614 = !DILocation(line: 63, column: 5, scope: !1589)
!1615 = !DILocation(line: 62, column: 16, scope: !1589)
!1616 = !DILocation(line: 62, column: 11, scope: !1589)
!1617 = !DILocation(line: 61, column: 19, scope: !1589)
!1618 = !DILocation(line: 52, column: 16, scope: !1589)
!1619 = !DILocation(line: 52, column: 22, scope: !1589)
!1620 = !DILocation(line: 48, column: 20, scope: !1589)
!1621 = distinct !{!1621, !1609, !1614, !235}
!1622 = !DILocation(line: 64, column: 12, scope: !1589)
!1623 = !DILocation(line: 64, column: 18, scope: !1589)
!1624 = !DILocation(line: 65, column: 5, scope: !1589)
!1625 = !DILocation(line: 66, column: 1, scope: !1589)
!1626 = distinct !DISubprogram(name: "__umoddi3", scope: !173, file: !173, line: 20, type: !665, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !172, retainedNodes: !35)
!1627 = !DILocation(line: 23, column: 5, scope: !1626)
!1628 = !DILocation(line: 24, column: 12, scope: !1626)
!1629 = !DILocation(line: 24, column: 5, scope: !1626)
!1630 = distinct !DISubprogram(name: "__umodsi3", scope: !175, file: !175, line: 20, type: !665, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !174, retainedNodes: !35)
!1631 = !DILocation(line: 22, column: 16, scope: !1630)
!1632 = !DILocation(line: 22, column: 32, scope: !1630)
!1633 = !DILocation(line: 22, column: 14, scope: !1630)
!1634 = !DILocation(line: 22, column: 5, scope: !1630)
!1635 = distinct !DISubprogram(name: "memcpy", scope: !179, file: !179, line: 3, type: !665, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !178, retainedNodes: !35)
!1636 = !DILocation(line: 8, column: 6, scope: !1635)
!1637 = !DILocation(line: 0, scope: !1635)
!1638 = !DILocation(line: 8, column: 19, scope: !1635)
!1639 = !DILocation(line: 8, column: 2, scope: !1635)
!1640 = !DILocation(line: 9, column: 21, scope: !1635)
!1641 = !DILocation(line: 9, column: 3, scope: !1635)
!1642 = !DILocation(line: 9, column: 19, scope: !1635)
!1643 = !DILocation(line: 10, column: 2, scope: !1635)
!1644 = !DILocation(line: 8, column: 26, scope: !1635)
!1645 = distinct !{!1645, !1639, !1643, !235}
!1646 = !DILocation(line: 11, column: 1, scope: !1635)
!1647 = distinct !DISubprogram(name: "memset", scope: !179, file: !179, line: 13, type: !665, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !178, retainedNodes: !35)
!1648 = !DILocation(line: 17, column: 6, scope: !1647)
!1649 = !DILocation(line: 0, scope: !1647)
!1650 = !DILocation(line: 17, column: 19, scope: !1647)
!1651 = !DILocation(line: 17, column: 2, scope: !1647)
!1652 = !DILocation(line: 18, column: 13, scope: !1647)
!1653 = !DILocation(line: 18, column: 3, scope: !1647)
!1654 = !DILocation(line: 18, column: 11, scope: !1647)
!1655 = !DILocation(line: 19, column: 2, scope: !1647)
!1656 = !DILocation(line: 17, column: 26, scope: !1647)
!1657 = distinct !{!1657, !1651, !1655, !235}
!1658 = !DILocation(line: 20, column: 2, scope: !1647)
