; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.g723_enc_state_t = type { i32, i16, i16, i16, i16, [2 x i16], [6 x i16], [2 x i16], [6 x i16], [2 x i16], i8 }
%union.dwords = type { i64 }
%struct.anon = type { i32, i32 }

@g723_enc_INPUT = dso_local global [256 x i32] [i32 51, i32 17, i32 31, i32 53, i32 95, i32 17, i32 70, i32 22, i32 49, i32 12, i32 8, i32 39, i32 28, i32 37, i32 99, i32 54, i32 77, i32 65, i32 77, i32 78, i32 83, i32 15, i32 63, i32 31, i32 35, i32 92, i32 52, i32 40, i32 61, i32 79, i32 94, i32 87, i32 87, i32 68, i32 76, i32 58, i32 39, i32 35, i32 20, i32 83, i32 42, i32 46, i32 98, i32 12, i32 21, i32 96, i32 74, i32 41, i32 78, i32 76, i32 96, i32 2, i32 32, i32 76, i32 24, i32 59, i32 4, i32 96, i32 32, i32 5, i32 44, i32 92, i32 57, i32 12, i32 57, i32 25, i32 50, i32 23, i32 48, i32 41, i32 88, i32 43, i32 36, i32 38, i32 4, i32 16, i32 52, i32 70, i32 9, i32 40, i32 78, i32 24, i32 34, i32 23, i32 30, i32 30, i32 89, i32 3, i32 65, i32 40, i32 68, i32 73, i32 94, i32 23, i32 84, i32 97, i32 78, i32 43, i32 68, i32 81, i32 16, i32 28, i32 13, i32 87, i32 75, i32 21, i32 14, i32 29, i32 81, i32 22, i32 56, i32 72, i32 19, i32 99, i32 25, i32 43, i32 76, i32 86, i32 90, i32 98, i32 39, i32 43, i32 12, i32 46, i32 24, i32 99, i32 65, i32 61, i32 24, i32 45, i32 79, i32 7, i32 48, i32 15, i32 24, i32 95, i32 62, i32 99, i32 48, i32 80, i32 75, i32 38, i32 48, i32 53, i32 9, i32 60, i32 35, i32 14, i32 78, i32 71, i32 45, i32 71, i32 9, i32 97, i32 55, i32 74, i32 58, i32 64, i32 78, i32 18, i32 30, i32 28, i32 69, i32 29, i32 57, i32 42, i32 30, i32 44, i32 57, i32 49, i32 61, i32 42, i32 13, i32 25, i32 3, i32 98, i32 11, i32 38, i32 65, i32 35, i32 55, i32 36, i32 57, i32 48, i32 16, i32 62, i32 17, i32 56, i32 29, i32 88, i32 84, i32 85, i32 90, i32 60, i32 54, i32 16, i32 66, i32 69, i32 26, i32 10, i32 82, i32 19, i32 42, i32 35, i32 84, i32 13, i32 26, i32 17, i32 48, i32 38, i32 50, i32 50, i32 35, i32 53, i32 12, i32 52, i32 61, i32 74, i32 56, i32 34, i32 80, i32 59, i32 26, i32 67, i32 55, i32 79, i32 89, i32 89, i32 6, i32 80, i32 91, i32 65, i32 16, i32 30, i32 16, i32 28, i32 85, i32 54, i32 3, i32 20, i32 2, i32 36, i32 62, i32 52, i32 55, i32 15, i32 83, i32 3, i32 2, i32 38, i32 62, i32 2, i32 63, i32 92, i32 37, i32 73], align 4
@g723_enc_power2 = dso_local global [15 x i16] [i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 8192, i16 16384], align 2
@g723_enc_qtab_723_24 = dso_local global [3 x i16] [i16 8, i16 218, i16 331], align 2
@g723_enc_dqlntab = dso_local global [16 x i16] [i16 -2048, i16 4, i16 135, i16 213, i16 273, i16 323, i16 373, i16 425, i16 425, i16 373, i16 323, i16 273, i16 213, i16 135, i16 4, i16 -2048], align 2
@g723_enc_witab = dso_local global [16 x i16] [i16 -12, i16 18, i16 41, i16 64, i16 112, i16 198, i16 355, i16 1122, i16 1122, i16 355, i16 198, i16 112, i16 64, i16 41, i16 18, i16 -12], align 2
@g723_enc_fitab = dso_local global [16 x i16] [i16 0, i16 0, i16 0, i16 512, i16 512, i16 512, i16 1536, i16 3584, i16 3584, i16 1536, i16 512, i16 512, i16 512, i16 0, i16 0, i16 0], align 2
@g723_enc_pack_output.out_buffer = internal global i32 0, align 4
@g723_enc_pack_output.out_bits = internal global i32 0, align 4
@g723_enc_pack_output.i = internal global i32 0, align 4
@g723_enc_OUTPUT = dso_local global [256 x i32] zeroinitializer, align 4
@g723_enc_state = dso_local global %struct.g723_enc_state_t zeroinitializer, align 4
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
define dso_local arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %an, i32 noundef %srn) #0 !dbg !125 {
entry:
  %call = call arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef 8191, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @g723_enc_power2, i32 0, i32 0), i32 noundef 3) #4, !dbg !129
  %0 = trunc i32 %call to i16, !dbg !129
  %conv2 = add i16 %0, -6, !dbg !129
  %conv4 = sext i16 %conv2 to i32, !dbg !130
  %sub5 = sub nsw i32 0, %conv4, !dbg !131
  %1 = trunc i32 %srn to i16, !dbg !132
  %2 = lshr i16 %1, 6, !dbg !132
  %3 = and i16 %2, 15, !dbg !132
  %4 = add i16 %3, %conv2, !dbg !132
  %conv9 = add i16 %4, -13, !dbg !132
  %sext = shl i32 536805376, %sub5, !dbg !133
  %conv10 = ashr exact i32 %sext, 16, !dbg !133
  %and11 = and i32 %srn, 63, !dbg !134
  %mul = mul nsw i32 %conv10, %and11, !dbg !135
  %add12 = shl i32 %mul, 12, !dbg !136
  %5 = add i32 %add12, 196608, !dbg !136
  %conv15 = ashr i32 %5, 16, !dbg !136
  %conv16 = sext i16 %conv9 to i32, !dbg !137
  %sub17 = sub nsw i32 0, %conv16, !dbg !138
  %shr18 = ashr i32 %conv15, %sub17, !dbg !139
  ret i32 %shr18, !dbg !140
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef %val, i16* noundef %table, i32 noundef %size) #0 !dbg !141 {
entry:
  br label %for.cond, !dbg !142

for.cond:                                         ; preds = %for.inc, %entry
  br i1 false, label %for.body, label %for.end, !dbg !143

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !144

for.inc:                                          ; preds = %for.body
  br label %for.cond, !dbg !143, !llvm.loop !145

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !147
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_abs(i32 noundef %num) #0 !dbg !148 {
entry:
  ret i32 %num, !dbg !149
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_predictor_zero(%struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !150 {
entry:
  %arrayidx = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 0, !dbg !151
  %0 = load i16, i16* %arrayidx, align 4, !dbg !151
  %1 = ashr i16 %0, 2, !dbg !152
  %shr = sext i16 %1 to i32, !dbg !152
  %arrayidx1 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 0, !dbg !153
  %2 = load i16, i16* %arrayidx1, align 4, !dbg !153
  %conv2 = sext i16 %2 to i32, !dbg !153
  %call = call arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %shr, i32 noundef %conv2) #4, !dbg !154
  br label %for.cond, !dbg !155

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ], !dbg !156
  %sezi.0 = phi i32 [ %call, %entry ], [ %add, %for.inc ], !dbg !156
  %exitcond.not = icmp eq i32 %i.0, 2, !dbg !157
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !158

for.body:                                         ; preds = %for.cond
  %arrayidx5 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 %i.0, !dbg !159
  %3 = load i16, i16* %arrayidx5, align 2, !dbg !159
  %4 = ashr i16 %3, 2, !dbg !160
  %shr7 = sext i16 %4 to i32, !dbg !160
  %arrayidx9 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 %i.0, !dbg !161
  %5 = load i16, i16* %arrayidx9, align 2, !dbg !161
  %conv10 = sext i16 %5 to i32, !dbg !161
  %call11 = call arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %shr7, i32 noundef %conv10) #4, !dbg !162
  br label %for.inc, !dbg !163

for.inc:                                          ; preds = %for.body
  %add = add nsw i32 %sezi.0, %call11, !dbg !164
  %inc = add nuw nsw i32 %i.0, 1, !dbg !165
  br label %for.cond, !dbg !158, !llvm.loop !166

for.end:                                          ; preds = %for.cond
  ret i32 %sezi.0, !dbg !168
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_predictor_pole(%struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !169 {
entry:
  %arrayidx = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 1, !dbg !170
  %0 = load i16, i16* %arrayidx, align 2, !dbg !170
  %1 = ashr i16 %0, 2, !dbg !171
  %shr = sext i16 %1 to i32, !dbg !171
  %arrayidx1 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 1, !dbg !172
  %2 = load i16, i16* %arrayidx1, align 2, !dbg !172
  %conv2 = sext i16 %2 to i32, !dbg !172
  %call = call arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %shr, i32 noundef %conv2) #4, !dbg !173
  %arrayidx4 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 0, !dbg !174
  %3 = load i16, i16* %arrayidx4, align 4, !dbg !174
  %4 = ashr i16 %3, 2, !dbg !175
  %shr6 = sext i16 %4 to i32, !dbg !175
  %arrayidx8 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 0, !dbg !176
  %5 = load i16, i16* %arrayidx8, align 4, !dbg !176
  %conv9 = sext i16 %5 to i32, !dbg !176
  %call10 = call arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %shr6, i32 noundef %conv9) #4, !dbg !177
  %add = add nsw i32 %call, %call10, !dbg !178
  ret i32 %add, !dbg !179
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_step_size(%struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !180 {
entry:
  %yu = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 1, !dbg !181
  %0 = load i16, i16* %yu, align 4, !dbg !181
  %conv = sext i16 %0 to i32, !dbg !182
  ret i32 %conv, !dbg !183
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_quantize(i32 noundef %d, i32 noundef %y, i16* noundef %table, i32 noundef %size) #0 !dbg !184 {
entry:
  %call = call arm_aapcs_vfpcc i32 @g723_enc_abs(i32 noundef %d) #4, !dbg !185
  %sext = shl i32 %call, 16, !dbg !186
  %shr = ashr i32 %sext, 17, !dbg !187
  %call2 = call arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef %shr, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @g723_enc_power2, i32 0, i32 0), i32 noundef 15) #4, !dbg !188
  %sext1 = shl i32 %call, 16, !dbg !189
  %shl = ashr exact i32 %sext1, 9, !dbg !190
  %sext2 = shl i32 %call2, 16, !dbg !191
  %conv5 = ashr exact i32 %sext2, 16, !dbg !191
  %shr6 = ashr i32 %shl, %conv5, !dbg !192
  %0 = shl i32 %call2, 23, !dbg !193
  %conv7 = shl i32 %shr6, 16, !dbg !193
  %1 = and i32 %conv7, 8323072, !dbg !193
  %sext4 = or i32 %0, %1, !dbg !193
  %2 = shl i32 %y, 14, !dbg !194
  %sub6 = and i32 %2, -65536, !dbg !194
  %3 = sub i32 %sext4, %sub6, !dbg !194
  %conv15 = ashr exact i32 %3, 16, !dbg !194
  %call16 = call arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef %conv15, i16* noundef %table, i32 noundef %size) #4, !dbg !195
  ret i32 %call16, !dbg !196
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_reconstruct(i32 noundef %sign, i32 noundef %dqln, i32 noundef %y) #0 !dbg !197 {
entry:
  %tobool.not = icmp eq i32 %sign, 0, !dbg !198
  %cond = select i1 %tobool.not, i32 0, i32 -32768, !dbg !198
  ret i32 %cond, !dbg !199
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @g723_enc_update(i32 noundef %code_size, i32 noundef %y, i32 noundef %wi, i32 noundef %fi, i32 noundef %dq, i32 noundef %sr, i32 noundef %dqsez, %struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !200 {
entry:
  %yl = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 0, !dbg !201
  %0 = load i32, i32* %yl, align 4, !dbg !201
  %1 = shl i32 %0, 1, !dbg !202
  %cmp11 = icmp sgt i32 %1, 655359, !dbg !203
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !204

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !204

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !204

cond.end:                                         ; preds = %cond.false, %cond.true
  %yu25 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 1, !dbg !205
  store i16 544, i16* %yu25, align 4, !dbg !206
  %yl28 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 0, !dbg !207
  %2 = load i32, i32* %yl28, align 4, !dbg !207
  %sub29 = sub nsw i32 0, %2, !dbg !208
  %shr30 = ashr i32 %sub29, 6, !dbg !209
  %add31 = add nsw i32 %shr30, 544, !dbg !210
  %yl32 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 0, !dbg !211
  %add33 = add nsw i32 %2, %add31, !dbg !212
  store i32 %add33, i32* %yl32, align 4, !dbg !212
  %arrayidx = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 0, !dbg !213
  store i16 0, i16* %arrayidx, align 4, !dbg !214
  %arrayidx35 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 1, !dbg !215
  store i16 0, i16* %arrayidx35, align 2, !dbg !216
  %arrayidx36 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 0, !dbg !217
  store i16 0, i16* %arrayidx36, align 4, !dbg !218
  %arrayidx38 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 1, !dbg !219
  store i16 0, i16* %arrayidx38, align 2, !dbg !220
  %arrayidx40 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 2, !dbg !221
  store i16 0, i16* %arrayidx40, align 4, !dbg !222
  %arrayidx42 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 3, !dbg !223
  store i16 0, i16* %arrayidx42, align 2, !dbg !224
  %arrayidx44 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 4, !dbg !225
  store i16 0, i16* %arrayidx44, align 4, !dbg !226
  %arrayidx46 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 5, !dbg !227
  store i16 0, i16* %arrayidx46, align 2, !dbg !228
  br label %for.cond, !dbg !229

for.cond:                                         ; preds = %for.inc, %cond.end
  %cnt.0 = phi i32 [ 1, %cond.end ], [ %dec, %for.inc ], !dbg !230
  %cmp47.not = icmp eq i32 %cnt.0, 0, !dbg !231
  br i1 %cmp47.not, label %for.end, label %for.body, !dbg !232

for.body:                                         ; preds = %for.cond
  %sub50 = add nsw i32 %cnt.0, -1, !dbg !233
  %arrayidx51 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 %sub50, !dbg !234
  %3 = load i16, i16* %arrayidx51, align 2, !dbg !234
  %arrayidx53 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 %cnt.0, !dbg !235
  store i16 %3, i16* %arrayidx53, align 2, !dbg !236
  br label %for.inc, !dbg !235

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %cnt.0, -1, !dbg !237
  br label %for.cond, !dbg !232, !llvm.loop !238

for.end:                                          ; preds = %for.cond
  %dqsez.lobit = lshr i32 %dqsez, 31, !dbg !240
  %4 = trunc i32 %dqsez.lobit to i16, !dbg !240
  %arrayidx55 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 0, !dbg !241
  store i16 -992, i16* %arrayidx55, align 4, !dbg !242
  %arrayidx57 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 0, !dbg !243
  %5 = load i16, i16* %arrayidx57, align 4, !dbg !243
  %arrayidx59 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 1, !dbg !244
  store i16 %5, i16* %arrayidx59, align 2, !dbg !245
  %arrayidx61 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 0, !dbg !246
  store i16 32, i16* %arrayidx61, align 4, !dbg !247
  %arrayidx62 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 7, i32 0, !dbg !248
  %6 = load i16, i16* %arrayidx62, align 4, !dbg !248
  %arrayidx64 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 7, i32 1, !dbg !249
  store i16 %6, i16* %arrayidx64, align 2, !dbg !250
  %arrayidx66 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 7, i32 0, !dbg !251
  store i16 %4, i16* %arrayidx66, align 4, !dbg !252
  %td = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 10, !dbg !253
  store i8 0, i8* %td, align 4, !dbg !254
  %dms = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 2, !dbg !255
  %7 = load i16, i16* %dms, align 2, !dbg !255
  %conv67 = sext i16 %7 to i32, !dbg !256
  %sub68 = sub nsw i32 %fi, %conv67, !dbg !257
  %8 = lshr i32 %sub68, 5, !dbg !258
  %dms70 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 2, !dbg !259
  %9 = trunc i32 %8 to i16, !dbg !260
  %conv73 = add i16 %7, %9, !dbg !260
  store i16 %conv73, i16* %dms70, align 2, !dbg !260
  %shl74 = shl i32 %fi, 2, !dbg !261
  %dml = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 3, !dbg !262
  %10 = load i16, i16* %dml, align 4, !dbg !262
  %conv75 = sext i16 %10 to i32, !dbg !263
  %sub76 = sub nsw i32 %shl74, %conv75, !dbg !264
  %11 = lshr i32 %sub76, 7, !dbg !265
  %dml78 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 3, !dbg !266
  %12 = trunc i32 %11 to i16, !dbg !267
  %conv81 = add i16 %10, %12, !dbg !267
  store i16 %conv81, i16* %dml78, align 4, !dbg !267
  %ap = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 4, !dbg !268
  store i16 256, i16* %ap, align 2, !dbg !269
  ret void, !dbg !270
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_alaw2linear(i8 noundef zeroext %a_val) #0 !dbg !271 {
entry:
  %0 = xor i8 %a_val, 85, !dbg !272
  %1 = shl i8 %0, 4, !dbg !273
  %shl = zext i8 %1 to i32, !dbg !273
  %2 = lshr i8 %0, 4, !dbg !274
  %3 = and i8 %2, 7, !dbg !274
  %shr = zext i8 %3 to i32, !dbg !274
  %add = or i32 %shl, 264, !dbg !275
  %sub = add nsw i32 %shr, -1, !dbg !276
  %shl5 = shl i32 %add, %sub, !dbg !277
  %tobool.not = icmp sgt i8 %a_val, -1, !dbg !278
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !279

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !279

cond.false:                                       ; preds = %entry
  %sub8 = sub nsw i32 0, %shl5, !dbg !280
  br label %cond.end, !dbg !279

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl5, %cond.true ], [ %sub8, %cond.false ], !dbg !279
  ret i32 %cond, !dbg !281
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_ulaw2linear(i8 noundef zeroext %u_val) #0 !dbg !282 {
entry:
  %neg = xor i8 %u_val, -1, !dbg !283
  %0 = shl i8 %neg, 3, !dbg !284
  %1 = or i8 %0, -124, !dbg !285
  %add = zext i8 %1 to i32, !dbg !285
  %2 = lshr i8 %neg, 4, !dbg !286
  %3 = and i8 %2, 7, !dbg !286
  %shr = zext i8 %3 to i32, !dbg !286
  %shl5 = shl i32 %add, %shr, !dbg !287
  %tobool.not = icmp slt i8 %u_val, 0, !dbg !288
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !289

cond.true:                                        ; preds = %entry
  %sub = sub nsw i32 132, %shl5, !dbg !290
  br label %cond.end, !dbg !289

cond.false:                                       ; preds = %entry
  %sub8 = add nsw i32 %shl5, -132, !dbg !291
  br label %cond.end, !dbg !289

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub8, %cond.false ], !dbg !289
  ret i32 %cond, !dbg !292
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_g723_24_encoder(i32 noundef %sl, i32 noundef %in_coding, %struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !293 {
entry:
  %conv = trunc i32 %sl to i8, !dbg !294
  %call = call arm_aapcs_vfpcc i32 @g723_enc_alaw2linear(i8 noundef zeroext %conv) #4, !dbg !295
  %0 = lshr i32 %call, 2, !dbg !296
  %call1 = call arm_aapcs_vfpcc i32 @g723_enc_predictor_zero(%struct.g723_enc_state_t* noundef %state_ptr) #4, !dbg !297
  %sext = shl i32 %call1, 16, !dbg !298
  %shr4 = ashr i32 %sext, 17, !dbg !299
  %call7 = call arm_aapcs_vfpcc i32 @g723_enc_predictor_pole(%struct.g723_enc_state_t* noundef %state_ptr) #4, !dbg !300
  %add = add i32 %call1, %call7, !dbg !301
  %sext2 = shl i32 %add, 16, !dbg !302
  %shr10 = ashr i32 %sext2, 17, !dbg !303
  %sub = sub nsw i32 %0, %shr10, !dbg !304
  %call14 = call arm_aapcs_vfpcc i32 @g723_enc_step_size(%struct.g723_enc_state_t* noundef %state_ptr) #4, !dbg !305
  %sext3 = shl i32 %sub, 16, !dbg !306
  %conv16 = ashr exact i32 %sext3, 16, !dbg !306
  %sext4 = shl i32 %call14, 16, !dbg !307
  %conv17 = ashr exact i32 %sext4, 16, !dbg !307
  %call18 = call arm_aapcs_vfpcc i32 @g723_enc_quantize(i32 noundef %conv16, i32 noundef %conv17, i16* noundef getelementptr inbounds ([3 x i16], [3 x i16]* @g723_enc_qtab_723_24, i32 0, i32 0), i32 noundef 3) #4, !dbg !308
  %and = and i32 %call18, 4, !dbg !309
  %sext6 = shl i32 %call18, 16, !dbg !310
  %idxprom = ashr exact i32 %sext6, 16, !dbg !310
  %arrayidx = getelementptr inbounds [16 x i16], [16 x i16]* @g723_enc_dqlntab, i32 0, i32 %idxprom, !dbg !310
  %1 = load i16, i16* %arrayidx, align 2, !dbg !310
  %conv21 = sext i16 %1 to i32, !dbg !310
  %sext7 = shl i32 %call14, 16, !dbg !311
  %conv22 = ashr exact i32 %sext7, 16, !dbg !311
  %call23 = call arm_aapcs_vfpcc i32 @g723_enc_reconstruct(i32 noundef %and, i32 noundef %conv21, i32 noundef %conv22) #4, !dbg !312
  %add27 = add i32 %shr10, %call23, !dbg !313
  %add31 = add i32 %add27, %shr4, !dbg !314
  %sub33 = sub i32 %add31, %shr10, !dbg !315
  %sext10 = shl i32 %call14, 16, !dbg !316
  %conv35 = ashr exact i32 %sext10, 16, !dbg !316
  %sext11 = shl i32 %call18, 16, !dbg !317
  %idxprom36 = ashr exact i32 %sext11, 16, !dbg !317
  %arrayidx37 = getelementptr inbounds [16 x i16], [16 x i16]* @g723_enc_witab, i32 0, i32 %idxprom36, !dbg !317
  %2 = load i16, i16* %arrayidx37, align 2, !dbg !317
  %conv38 = sext i16 %2 to i32, !dbg !317
  %sext12 = shl i32 %call18, 16, !dbg !318
  %idxprom39 = ashr exact i32 %sext12, 16, !dbg !318
  %arrayidx40 = getelementptr inbounds [16 x i16], [16 x i16]* @g723_enc_fitab, i32 0, i32 %idxprom39, !dbg !318
  %3 = load i16, i16* %arrayidx40, align 2, !dbg !318
  %conv41 = sext i16 %3 to i32, !dbg !318
  %sext13 = shl i32 %call23, 16, !dbg !319
  %conv42 = ashr exact i32 %sext13, 16, !dbg !319
  %sext14 = shl i32 %add27, 16, !dbg !320
  %conv43 = ashr exact i32 %sext14, 16, !dbg !320
  %sext15 = shl i32 %sub33, 16, !dbg !321
  %conv44 = ashr exact i32 %sext15, 16, !dbg !321
  call arm_aapcs_vfpcc void @g723_enc_update(i32 noundef 3, i32 noundef %conv35, i32 noundef %conv38, i32 noundef %conv41, i32 noundef %conv42, i32 noundef %conv43, i32 noundef %conv44, %struct.g723_enc_state_t* noundef %state_ptr) #4, !dbg !322
  %sext16 = shl i32 %call18, 16, !dbg !323
  %conv45 = ashr exact i32 %sext16, 16, !dbg !323
  ret i32 %conv45, !dbg !324
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_pack_output(i8 noundef zeroext %code, i32 noundef %bits) #0 !dbg !325 {
entry:
  %conv = zext i8 %code to i32, !dbg !326
  %0 = load i32, i32* @g723_enc_pack_output.out_bits, align 4, !dbg !327
  %shl = shl i32 %conv, %0, !dbg !328
  %1 = load i32, i32* @g723_enc_pack_output.out_buffer, align 4, !dbg !329
  %or = or i32 %1, %shl, !dbg !329
  store i32 %or, i32* @g723_enc_pack_output.out_buffer, align 4, !dbg !329
  %add = add nsw i32 %0, %bits, !dbg !330
  %sub = add nsw i32 %add, -8, !dbg !331
  store i32 %sub, i32* @g723_enc_pack_output.out_bits, align 4, !dbg !331
  %shr = lshr i32 %or, 8, !dbg !332
  store i32 %shr, i32* @g723_enc_pack_output.out_buffer, align 4, !dbg !332
  %conv2 = and i32 %or, 255, !dbg !333
  %2 = load i32, i32* @g723_enc_pack_output.i, align 4, !dbg !334
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @g723_enc_OUTPUT, i32 0, i32 %2, !dbg !335
  store i32 %conv2, i32* %arrayidx, align 4, !dbg !336
  %add3 = add nsw i32 %2, 1, !dbg !337
  store i32 %add3, i32* @g723_enc_pack_output.i, align 4, !dbg !338
  %3 = load i32, i32* @g723_enc_pack_output.out_bits, align 4, !dbg !339
  %cmp = icmp sgt i32 %3, 0, !dbg !340
  %conv4 = zext i1 %cmp to i32, !dbg !340
  ret i32 %conv4, !dbg !341
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @g723_enc_init_state(%struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !342 {
entry:
  %yl = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 0, !dbg !343
  store i32 34816, i32* %yl, align 4, !dbg !344
  %yu = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 1, !dbg !345
  store i16 544, i16* %yu, align 4, !dbg !346
  %dms = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 2, !dbg !347
  store i16 0, i16* %dms, align 2, !dbg !348
  %dml = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 3, !dbg !349
  store i16 0, i16* %dml, align 4, !dbg !350
  %ap = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 4, !dbg !351
  store i16 0, i16* %ap, align 2, !dbg !352
  br label %for.cond, !dbg !353

for.cond:                                         ; preds = %for.inc, %entry
  %cnta.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !354
  %exitcond.not = icmp eq i32 %cnta.0, 1, !dbg !355
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !356

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 %cnta.0, !dbg !357
  store i16 0, i16* %arrayidx, align 2, !dbg !358
  %arrayidx1 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 7, i32 %cnta.0, !dbg !359
  store i16 0, i16* %arrayidx1, align 2, !dbg !360
  %arrayidx2 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 %cnta.0, !dbg !361
  store i16 32, i16* %arrayidx2, align 2, !dbg !362
  br label %for.inc, !dbg !363

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %cnta.0, 1, !dbg !364
  br label %for.cond, !dbg !356, !llvm.loop !365

for.end:                                          ; preds = %for.cond
  br label %for.cond3, !dbg !366

for.cond3:                                        ; preds = %for.inc8, %for.end
  %cnta.1 = phi i32 [ 0, %for.end ], [ %inc9, %for.inc8 ], !dbg !354
  %exitcond1.not = icmp eq i32 %cnta.1, 1, !dbg !367
  br i1 %exitcond1.not, label %for.end10, label %for.body5, !dbg !368

for.body5:                                        ; preds = %for.cond3
  %arrayidx6 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 %cnta.1, !dbg !369
  store i16 0, i16* %arrayidx6, align 2, !dbg !370
  %arrayidx7 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 %cnta.1, !dbg !371
  store i16 32, i16* %arrayidx7, align 2, !dbg !372
  br label %for.inc8, !dbg !373

for.inc8:                                         ; preds = %for.body5
  %inc9 = add nuw nsw i32 %cnta.1, 1, !dbg !374
  br label %for.cond3, !dbg !368, !llvm.loop !375

for.end10:                                        ; preds = %for.cond3
  %td = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 10, !dbg !376
  store i8 0, i8* %td, align 4, !dbg !377
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @g723_enc_init() #0 !dbg !379 {
entry:
  %x = alloca i32, align 4
  store volatile i32 0, i32* %x, align 4, !dbg !380
  call arm_aapcs_vfpcc void @g723_enc_init_state(%struct.g723_enc_state_t* noundef nonnull @g723_enc_state) #4, !dbg !381
  br label %for.cond, !dbg !382

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !383
  %exitcond.not = icmp eq i32 %i.0, 1, !dbg !384
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !385

for.body:                                         ; preds = %for.cond
  %0 = load volatile i32, i32* %x, align 4, !dbg !386
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @g723_enc_INPUT, i32 0, i32 %i.0, !dbg !387
  %1 = load i32, i32* %arrayidx, align 4, !dbg !388
  %add = add i32 %1, %0, !dbg !388
  store i32 %add, i32* %arrayidx, align 4, !dbg !388
  br label %for.inc, !dbg !387

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !389
  br label %for.cond, !dbg !385, !llvm.loop !390

for.end:                                          ; preds = %for.cond
  ret void, !dbg !391
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_return() #0 !dbg !392 {
entry:
  br label %for.cond, !dbg !393

for.cond:                                         ; preds = %for.inc, %entry
  br i1 false, label %for.body, label %for.end, !dbg !394

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !395

for.inc:                                          ; preds = %for.body
  br label %for.cond, !dbg !394, !llvm.loop !396

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !398
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @g723_enc_main() #0 !dbg !399 {
entry:
  br label %for.cond, !dbg !400

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !401
  %exitcond.not = icmp eq i32 %i.0, 1, !dbg !402
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !403

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @g723_enc_INPUT, i32 0, i32 %i.0, !dbg !404
  %0 = load i32, i32* %arrayidx, align 4, !dbg !404
  %sext = shl i32 %0, 16, !dbg !405
  %conv1 = ashr exact i32 %sext, 16, !dbg !405
  %call = call arm_aapcs_vfpcc i32 @g723_enc_g723_24_encoder(i32 noundef %conv1, i32 noundef 2, %struct.g723_enc_state_t* noundef nonnull @g723_enc_state) #4, !dbg !406
  %conv2 = trunc i32 %call to i8, !dbg !406
  %call3 = call arm_aapcs_vfpcc i32 @g723_enc_pack_output(i8 noundef zeroext %conv2, i32 noundef 3) #4, !dbg !407
  br label %for.inc, !dbg !408

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !409
  br label %for.cond, !dbg !403, !llvm.loop !410

for.end:                                          ; preds = %for.cond
  ret void, !dbg !411
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !412 {
entry:
  call arm_aapcs_vfpcc void @g723_enc_init() #4, !dbg !413
  call arm_aapcs_vfpcc void @g723_enc_main() #4, !dbg !414
  %call = call arm_aapcs_vfpcc i32 @g723_enc_return() #4, !dbg !415
  ret i32 %call, !dbg !416
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #1 !dbg !417 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !418
  br i1 %cmp, label %if.then, label %if.end, !dbg !419

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !420
  unreachable, !dbg !420

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !421
  ret i64 %0, !dbg !422
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #2 !dbg !423 {
entry:
  unreachable, !dbg !424
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #1 !dbg !425 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !426
  br i1 %cmp, label %if.then, label %if.end, !dbg !427

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !428
  unreachable, !dbg !428

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !429
  ret i32 %0, !dbg !430
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !431 {
entry:
  %add = add i64 %a, %b, !dbg !432
  %cmp = icmp sgt i64 %b, -1, !dbg !433
  br i1 %cmp, label %if.then, label %if.else, !dbg !434

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !435
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !436

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !437
  unreachable, !dbg !437

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !438

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !439
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !440

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !441
  unreachable, !dbg !441

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !442
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !443 {
entry:
  %add = add i32 %a, %b, !dbg !444
  %cmp = icmp sgt i32 %b, -1, !dbg !445
  br i1 %cmp, label %if.then, label %if.else, !dbg !446

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !447
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !448

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !449
  unreachable, !dbg !449

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !450

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !451
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !452

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !453
  unreachable, !dbg !453

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !454
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #1 !dbg !455 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !456
  store i64 %a, i64* %all, align 8, !dbg !457
  %and = and i32 %b, 32, !dbg !458
  %tobool.not = icmp eq i32 %and, 0, !dbg !458
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !459

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !460
  store i32 0, i32* %low, align 8, !dbg !461
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !462
  %0 = load i32, i32* %low2, align 8, !dbg !462
  %sub = add nsw i32 %b, -32, !dbg !463
  %shl = shl i32 %0, %sub, !dbg !464
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !465
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !466
  store i32 %shl, i32* %high, align 4, !dbg !467
  br label %if.end18, !dbg !468

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !469
  br i1 %cmp, label %if.then4, label %if.end, !dbg !470

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !471

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !472
  %1 = load i32, i32* %low6, align 8, !dbg !472
  %shl7 = shl i32 %1, %b, !dbg !473
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !474
  store i32 %shl7, i32* %low9, align 8, !dbg !475
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !476
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !477
  %2 = load i32, i32* %high11, align 4, !dbg !477
  %shl12 = shl i32 %2, %b, !dbg !478
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !479
  %3 = load i32, i32* %low14, align 8, !dbg !479
  %sub15 = sub nsw i32 32, %b, !dbg !480
  %shr = lshr i32 %3, %sub15, !dbg !481
  %or = or i32 %shl12, %shr, !dbg !482
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !483
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !484
  store i32 %or, i32* %high17, align 4, !dbg !485
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !486
  %4 = load i64, i64* %all19, align 8, !dbg !486
  br label %return, !dbg !487

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !488
  ret i64 %retval.0, !dbg !489
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !490 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !491
  store i64 %a, i64* %all, align 8, !dbg !492
  %and = and i32 %b, 32, !dbg !493
  %tobool.not = icmp eq i32 %and, 0, !dbg !493
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !494

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !495
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !496
  %0 = load i32, i32* %high, align 4, !dbg !496
  %shr = ashr i32 %0, 31, !dbg !497
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !498
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !499
  store i32 %shr, i32* %high2, align 4, !dbg !500
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !501
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !502
  %1 = load i32, i32* %high4, align 4, !dbg !502
  %sub = add nsw i32 %b, -32, !dbg !503
  %shr5 = ashr i32 %1, %sub, !dbg !504
  %low = bitcast %union.dwords* %result to i32*, !dbg !505
  store i32 %shr5, i32* %low, align 8, !dbg !506
  br label %if.end21, !dbg !507

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !508
  br i1 %cmp, label %if.then7, label %if.end, !dbg !509

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !510

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !511
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !512
  %2 = load i32, i32* %high9, align 4, !dbg !512
  %shr10 = ashr i32 %2, %b, !dbg !513
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !514
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !515
  store i32 %shr10, i32* %high12, align 4, !dbg !516
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !517
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !518
  %3 = load i32, i32* %high14, align 4, !dbg !518
  %sub15 = sub nsw i32 32, %b, !dbg !519
  %shl = shl i32 %3, %sub15, !dbg !520
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !521
  %4 = load i32, i32* %low17, align 8, !dbg !521
  %shr18 = lshr i32 %4, %b, !dbg !522
  %or = or i32 %shl, %shr18, !dbg !523
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !524
  store i32 %or, i32* %low20, align 8, !dbg !525
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !526
  %5 = load i64, i64* %all22, align 8, !dbg !526
  br label %return, !dbg !527

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !528
  ret i64 %retval.0, !dbg !529
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #1 !dbg !530 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !531
  store i64 %a, i64* %all, align 8, !dbg !532
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !533
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !534
  %0 = load i32, i32* %high, align 4, !dbg !534
  %cmp = icmp eq i32 %0, 0, !dbg !535
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !536
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !537
  %1 = load i32, i32* %high2, align 4, !dbg !537
  %low = bitcast %union.dwords* %x to i32*, !dbg !538
  %2 = load i32, i32* %low, align 8, !dbg !538
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !539
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !540, !range !541
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !542
  %add = add nuw nsw i32 %4, %and5, !dbg !543
  ret i32 %add, !dbg !544
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #1 !dbg !545 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !546
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !547
  %sub = sub nuw nsw i32 16, %shl, !dbg !548
  %shr = lshr i32 %a, %sub, !dbg !549
  %and1 = and i32 %shr, 65280, !dbg !550
  %cmp2 = icmp eq i32 %and1, 0, !dbg !551
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !552
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !553
  %shr6 = lshr i32 %shr, %sub5, !dbg !554
  %add = or i32 %shl, %shl4, !dbg !555
  %and7 = and i32 %shr6, 240, !dbg !556
  %cmp8 = icmp eq i32 %and7, 0, !dbg !557
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !558
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !559
  %shr12 = lshr i32 %shr6, %sub11, !dbg !560
  %add13 = or i32 %add, %shl10, !dbg !561
  %and14 = and i32 %shr12, 12, !dbg !562
  %cmp15 = icmp eq i32 %and14, 0, !dbg !563
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !564
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !565
  %shr19 = lshr i32 %shr12, %sub18, !dbg !566
  %add20 = or i32 %add13, %shl17, !dbg !567
  %sub21 = sub i32 2, %shr19, !dbg !568
  %and22 = lshr i32 %shr19, 1, !dbg !569
  %0 = or i32 %and22, -2, !dbg !569
  %.neg = add nsw i32 %0, 1, !dbg !569
  %and26 = and i32 %sub21, %.neg, !dbg !570
  %add27 = add i32 %add20, %and26, !dbg !571
  ret i32 %add27, !dbg !572
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !573 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !574
  store i64 %a, i64* %all, align 8, !dbg !575
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !576
  store i64 %b, i64* %all1, align 8, !dbg !577
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !578
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !579
  %0 = load i32, i32* %high, align 4, !dbg !579
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !580
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !581
  %1 = load i32, i32* %high3, align 4, !dbg !581
  %cmp = icmp slt i32 %0, %1, !dbg !582
  br i1 %cmp, label %if.then, label %if.end, !dbg !583

if.then:                                          ; preds = %entry
  br label %return, !dbg !584

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !585
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !586
  %2 = load i32, i32* %high5, align 4, !dbg !586
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !587
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !588
  %3 = load i32, i32* %high7, align 4, !dbg !588
  %cmp8 = icmp sgt i32 %2, %3, !dbg !589
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !590

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !591

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !592
  %4 = load i32, i32* %low, align 8, !dbg !592
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !593
  %5 = load i32, i32* %low13, align 8, !dbg !593
  %cmp14 = icmp ult i32 %4, %5, !dbg !594
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !595

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !596

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !597
  %6 = load i32, i32* %low18, align 8, !dbg !597
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !598
  %7 = load i32, i32* %low20, align 8, !dbg !598
  %cmp21 = icmp ugt i32 %6, %7, !dbg !599
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !600

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !601

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !602

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !603
  ret i32 %retval.0, !dbg !604
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !605 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !606
  %sub = add nsw i32 %call, -1, !dbg !607
  ret i32 %sub, !dbg !608
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #1 !dbg !609 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !610
  store i64 %a, i64* %all, align 8, !dbg !611
  %low = bitcast %union.dwords* %x to i32*, !dbg !612
  %0 = load i32, i32* %low, align 8, !dbg !612
  %cmp = icmp eq i32 %0, 0, !dbg !613
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !614
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !615
  %1 = load i32, i32* %high, align 4, !dbg !615
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !616
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !617, !range !541
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !618
  %add = add nuw nsw i32 %3, %and5, !dbg !619
  ret i32 %add, !dbg !620
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #1 !dbg !621 {
entry:
  %and = and i32 %a, 65535, !dbg !622
  %cmp = icmp eq i32 %and, 0, !dbg !623
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !624
  %shr = lshr i32 %a, %shl, !dbg !625
  %and1 = and i32 %shr, 255, !dbg !626
  %cmp2 = icmp eq i32 %and1, 0, !dbg !627
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !628
  %shr5 = lshr i32 %shr, %shl4, !dbg !629
  %add = or i32 %shl, %shl4, !dbg !630
  %and6 = and i32 %shr5, 15, !dbg !631
  %cmp7 = icmp eq i32 %and6, 0, !dbg !632
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !633
  %shr10 = lshr i32 %shr5, %shl9, !dbg !634
  %add11 = or i32 %add, %shl9, !dbg !635
  %and12 = and i32 %shr10, 3, !dbg !636
  %cmp13 = icmp eq i32 %and12, 0, !dbg !637
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !638
  %shr16 = lshr i32 %shr10, %shl15, !dbg !639
  %add18 = or i32 %add11, %shl15, !dbg !640
  %and17 = lshr i32 %shr16, 1, !dbg !641
  %shr19 = and i32 %and17, 1, !dbg !641
  %sub = sub nuw nsw i32 2, %shr19, !dbg !642
  %0 = or i32 %shr16, -2, !dbg !643
  %.neg = add nsw i32 %0, 1, !dbg !643
  %and24 = and i32 %sub, %.neg, !dbg !644
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !645
  ret i32 %add25, !dbg !646
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !647 {
entry:
  %shr = ashr i64 %a, 63, !dbg !648
  %shr1 = ashr i64 %b, 63, !dbg !649
  %xor = xor i64 %shr, %a, !dbg !650
  %sub = sub nsw i64 %xor, %shr, !dbg !651
  %xor2 = xor i64 %shr1, %b, !dbg !652
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !653
  %xor4 = xor i64 %shr, %shr1, !dbg !654
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !655
  %xor5 = xor i64 %call, %xor4, !dbg !656
  %sub6 = sub i64 %xor5, %xor4, !dbg !657
  ret i64 %sub6, !dbg !658
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !659 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !660
  store i64 %a, i64* %all, align 8, !dbg !661
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !662
  store i64 %b, i64* %all1, align 8, !dbg !663
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !664
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !665
  %0 = load i32, i32* %high, align 4, !dbg !665
  %cmp = icmp eq i32 %0, 0, !dbg !666
  br i1 %cmp, label %if.then, label %if.end23, !dbg !667

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !668
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !669
  %1 = load i32, i32* %high3, align 4, !dbg !669
  %cmp4 = icmp eq i32 %1, 0, !dbg !670
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !671

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !672
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !672

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !673
  %2 = load i32, i32* %low, align 8, !dbg !673
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !674
  %3 = load i32, i32* %low9, align 8, !dbg !674
  %rem10 = urem i32 %2, %3, !dbg !675
  %conv = zext i32 %rem10 to i64, !dbg !676
  store i64 %conv, i64* %rem, align 8, !dbg !677
  br label %if.end, !dbg !678

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !679
  %4 = load i32, i32* %low12, align 8, !dbg !679
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !680
  %5 = load i32, i32* %low14, align 8, !dbg !680
  %div = udiv i32 %4, %5, !dbg !681
  %conv15 = zext i32 %div to i64, !dbg !682
  br label %return, !dbg !683

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !684
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !684

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !685
  %6 = load i32, i32* %low20, align 8, !dbg !685
  %conv21 = zext i32 %6 to i64, !dbg !686
  store i64 %conv21, i64* %rem, align 8, !dbg !687
  br label %if.end22, !dbg !688

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !689

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !690
  %7 = load i32, i32* %low25, align 8, !dbg !690
  %cmp26 = icmp eq i32 %7, 0, !dbg !691
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !692

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !693
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !694
  %8 = load i32, i32* %high30, align 4, !dbg !694
  %cmp31 = icmp eq i32 %8, 0, !dbg !695
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !696

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !697
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !697

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !698
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !699
  %9 = load i32, i32* %high37, align 4, !dbg !699
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !700
  %10 = load i32, i32* %low39, align 8, !dbg !700
  %rem40 = urem i32 %9, %10, !dbg !701
  %conv41 = zext i32 %rem40 to i64, !dbg !702
  store i64 %conv41, i64* %rem, align 8, !dbg !703
  br label %if.end42, !dbg !704

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !705
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !706
  %11 = load i32, i32* %high44, align 4, !dbg !706
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !707
  %12 = load i32, i32* %low46, align 8, !dbg !707
  %div47 = udiv i32 %11, %12, !dbg !708
  %conv48 = zext i32 %div47 to i64, !dbg !709
  br label %return, !dbg !710

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !711
  %13 = load i32, i32* %low51, align 8, !dbg !711
  %cmp52 = icmp eq i32 %13, 0, !dbg !712
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !713

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !714
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !714

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !715
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !716
  %14 = load i32, i32* %high58, align 4, !dbg !716
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !717
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !718
  %15 = load i32, i32* %high60, align 4, !dbg !718
  %rem61 = urem i32 %14, %15, !dbg !719
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !720
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !721
  store i32 %rem61, i32* %high63, align 4, !dbg !722
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !723
  store i32 0, i32* %low65, align 8, !dbg !724
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !725
  %16 = load i64, i64* %all66, align 8, !dbg !725
  store i64 %16, i64* %rem, align 8, !dbg !726
  br label %if.end67, !dbg !727

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !728
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !729
  %17 = load i32, i32* %high69, align 4, !dbg !729
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !730
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !731
  %18 = load i32, i32* %high71, align 4, !dbg !731
  %div72 = udiv i32 %17, %18, !dbg !732
  %conv73 = zext i32 %div72 to i64, !dbg !733
  br label %return, !dbg !734

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !735
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !736
  %19 = load i32, i32* %high76, align 4, !dbg !736
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !737
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !738
  %20 = load i32, i32* %high78, align 4, !dbg !738
  %sub = add i32 %20, -1, !dbg !739
  %and = and i32 %19, %sub, !dbg !740
  %cmp79 = icmp eq i32 %and, 0, !dbg !741
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !742

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !743
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !743

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !744
  %21 = load i32, i32* %low85, align 8, !dbg !744
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !745
  store i32 %21, i32* %low87, align 8, !dbg !746
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !747
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !748
  %22 = load i32, i32* %high89, align 4, !dbg !748
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !749
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !750
  %23 = load i32, i32* %high91, align 4, !dbg !750
  %sub92 = add i32 %23, -1, !dbg !751
  %and93 = and i32 %22, %sub92, !dbg !752
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !753
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !754
  store i32 %and93, i32* %high95, align 4, !dbg !755
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !756
  %24 = load i64, i64* %all96, align 8, !dbg !756
  store i64 %24, i64* %rem, align 8, !dbg !757
  br label %if.end97, !dbg !758

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !759
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !760
  %25 = load i32, i32* %high99, align 4, !dbg !760
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !761
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !762
  %26 = load i32, i32* %high101, align 4, !dbg !762
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !763, !range !541
  %shr = lshr i32 %25, %27, !dbg !764
  %conv102 = zext i32 %shr to i64, !dbg !765
  br label %return, !dbg !766

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !767
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !768
  %28 = load i32, i32* %high105, align 4, !dbg !768
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !769, !range !541
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !770
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !771
  %30 = load i32, i32* %high107, align 4, !dbg !771
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !772, !range !541
  %sub108 = sub nsw i32 %29, %31, !dbg !773
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !774
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !775

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !776
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !776

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !777
  %32 = load i64, i64* %all114, align 8, !dbg !777
  store i64 %32, i64* %rem, align 8, !dbg !778
  br label %if.end115, !dbg !779

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !780

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !781
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !782
  store i32 0, i32* %low118, align 8, !dbg !783
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !784
  %33 = load i32, i32* %low120, align 8, !dbg !784
  %sub121 = sub nsw i32 31, %sub108, !dbg !785
  %shl = shl i32 %33, %sub121, !dbg !786
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !787
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !788
  store i32 %shl, i32* %high123, align 4, !dbg !789
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !790
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !791
  %34 = load i32, i32* %high125, align 4, !dbg !791
  %shr126 = lshr i32 %34, %inc, !dbg !792
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !793
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !794
  store i32 %shr126, i32* %high128, align 4, !dbg !795
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !796
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !797
  %35 = load i32, i32* %high130, align 4, !dbg !797
  %sub131 = sub nsw i32 31, %sub108, !dbg !798
  %shl132 = shl i32 %35, %sub131, !dbg !799
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !800
  %36 = load i32, i32* %low134, align 8, !dbg !800
  %shr135 = lshr i32 %36, %inc, !dbg !801
  %or = or i32 %shl132, %shr135, !dbg !802
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !803
  store i32 %or, i32* %low137, align 8, !dbg !804
  br label %if.end317, !dbg !805

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !806
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !807
  %37 = load i32, i32* %high139, align 4, !dbg !807
  %cmp140 = icmp eq i32 %37, 0, !dbg !808
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !809

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !810
  %38 = load i32, i32* %low144, align 8, !dbg !810
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !811, !range !541
  %cmp149 = icmp ult i32 %39, 2, !dbg !811
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !812

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !813
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !813

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !814
  %40 = load i32, i32* %low155, align 8, !dbg !814
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !815
  %41 = load i32, i32* %low157, align 8, !dbg !815
  %sub158 = add i32 %41, -1, !dbg !816
  %and159 = and i32 %40, %sub158, !dbg !817
  %conv160 = zext i32 %and159 to i64, !dbg !818
  store i64 %conv160, i64* %rem, align 8, !dbg !819
  br label %if.end161, !dbg !820

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !821
  %42 = load i32, i32* %low163, align 8, !dbg !821
  %cmp164 = icmp eq i32 %42, 1, !dbg !822
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !823

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !824
  %43 = load i64, i64* %all167, align 8, !dbg !824
  br label %return, !dbg !825

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !826
  %44 = load i32, i32* %low170, align 8, !dbg !826
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !827, !range !541
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !828
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !829
  %46 = load i32, i32* %high172, align 4, !dbg !829
  %shr173 = lshr i32 %46, %45, !dbg !830
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !831
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !832
  store i32 %shr173, i32* %high175, align 4, !dbg !833
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !834
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !835
  %47 = load i32, i32* %high177, align 4, !dbg !835
  %sub178 = sub nuw nsw i32 32, %45, !dbg !836
  %shl179 = shl i32 %47, %sub178, !dbg !837
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !838
  %48 = load i32, i32* %low181, align 8, !dbg !838
  %shr182 = lshr i32 %48, %45, !dbg !839
  %or183 = or i32 %shl179, %shr182, !dbg !840
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !841
  store i32 %or183, i32* %low185, align 8, !dbg !842
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !843
  %49 = load i64, i64* %all186, align 8, !dbg !843
  br label %return, !dbg !844

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !845
  %50 = load i32, i32* %low189, align 8, !dbg !845
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !846, !range !541
  %add = add nuw nsw i32 %51, 33, !dbg !847
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !848
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !849
  %52 = load i32, i32* %high191, align 4, !dbg !849
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !850, !range !541
  %sub192 = sub nsw i32 %add, %53, !dbg !851
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !852
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !853

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !854
  store i32 0, i32* %low197, align 8, !dbg !855
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !856
  %54 = load i32, i32* %low199, align 8, !dbg !856
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !857
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !858
  store i32 %54, i32* %high201, align 4, !dbg !859
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !860
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !861
  store i32 0, i32* %high203, align 4, !dbg !862
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !863
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !864
  %55 = load i32, i32* %high205, align 4, !dbg !864
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !865
  store i32 %55, i32* %low207, align 8, !dbg !866
  br label %if.end262, !dbg !867

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !868
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !869

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !870
  store i32 0, i32* %low213, align 8, !dbg !871
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !872
  %56 = load i32, i32* %low215, align 8, !dbg !872
  %sub216 = sub nsw i32 32, %sub192, !dbg !873
  %shl217 = shl i32 %56, %sub216, !dbg !874
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !875
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !876
  store i32 %shl217, i32* %high219, align 4, !dbg !877
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !878
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !879
  %57 = load i32, i32* %high221, align 4, !dbg !879
  %shr222 = lshr i32 %57, %sub192, !dbg !880
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !881
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !882
  store i32 %shr222, i32* %high224, align 4, !dbg !883
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !884
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !885
  %58 = load i32, i32* %high226, align 4, !dbg !885
  %sub227 = sub nsw i32 32, %sub192, !dbg !886
  %shl228 = shl i32 %58, %sub227, !dbg !887
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !888
  %59 = load i32, i32* %low230, align 8, !dbg !888
  %shr231 = lshr i32 %59, %sub192, !dbg !889
  %or232 = or i32 %shl228, %shr231, !dbg !890
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !891
  store i32 %or232, i32* %low234, align 8, !dbg !892
  br label %if.end261, !dbg !893

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !894
  %60 = load i32, i32* %low237, align 8, !dbg !894
  %sub238 = sub nsw i32 64, %sub192, !dbg !895
  %shl239 = shl i32 %60, %sub238, !dbg !896
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !897
  store i32 %shl239, i32* %low241, align 8, !dbg !898
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !899
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !900
  %61 = load i32, i32* %high243, align 4, !dbg !900
  %sub244 = sub nsw i32 64, %sub192, !dbg !901
  %shl245 = shl i32 %61, %sub244, !dbg !902
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !903
  %62 = load i32, i32* %low247, align 8, !dbg !903
  %sub248 = add nsw i32 %sub192, -32, !dbg !904
  %shr249 = lshr i32 %62, %sub248, !dbg !905
  %or250 = or i32 %shl245, %shr249, !dbg !906
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !907
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !908
  store i32 %or250, i32* %high252, align 4, !dbg !909
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !910
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !911
  store i32 0, i32* %high254, align 4, !dbg !912
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !913
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !914
  %63 = load i32, i32* %high256, align 4, !dbg !914
  %sub257 = add nsw i32 %sub192, -32, !dbg !915
  %shr258 = lshr i32 %63, %sub257, !dbg !916
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !917
  store i32 %shr258, i32* %low260, align 8, !dbg !918
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !919

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !920
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !921
  %64 = load i32, i32* %high265, align 4, !dbg !921
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !922, !range !541
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !923
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !924
  %66 = load i32, i32* %high267, align 4, !dbg !924
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !925, !range !541
  %sub268 = sub nsw i32 %65, %67, !dbg !926
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !927
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !928

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !929
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !929

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !930
  %68 = load i64, i64* %all274, align 8, !dbg !930
  store i64 %68, i64* %rem, align 8, !dbg !931
  br label %if.end275, !dbg !932

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !933

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !934
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !935
  store i32 0, i32* %low279, align 8, !dbg !936
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !937
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !938

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !939
  %69 = load i32, i32* %low284, align 8, !dbg !939
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !940
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !941
  store i32 %69, i32* %high286, align 4, !dbg !942
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !943
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !944
  store i32 0, i32* %high288, align 4, !dbg !945
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !946
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !947
  %70 = load i32, i32* %high290, align 4, !dbg !947
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !948
  store i32 %70, i32* %low292, align 8, !dbg !949
  br label %if.end315, !dbg !950

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !951
  %71 = load i32, i32* %low295, align 8, !dbg !951
  %sub296 = sub nsw i32 31, %sub268, !dbg !952
  %shl297 = shl i32 %71, %sub296, !dbg !953
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !954
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !955
  store i32 %shl297, i32* %high299, align 4, !dbg !956
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !957
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !958
  %72 = load i32, i32* %high301, align 4, !dbg !958
  %shr302 = lshr i32 %72, %inc277, !dbg !959
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !960
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !961
  store i32 %shr302, i32* %high304, align 4, !dbg !962
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !963
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !964
  %73 = load i32, i32* %high306, align 4, !dbg !964
  %sub307 = sub nsw i32 31, %sub268, !dbg !965
  %shl308 = shl i32 %73, %sub307, !dbg !966
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !967
  %74 = load i32, i32* %low310, align 8, !dbg !967
  %shr311 = lshr i32 %74, %inc277, !dbg !968
  %or312 = or i32 %shl308, %shr311, !dbg !969
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !970
  store i32 %or312, i32* %low314, align 8, !dbg !971
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !972
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !972
  br label %for.cond, !dbg !973

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !972
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !972
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !974
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !973

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !975
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !976
  %75 = load i32, i32* %high321, align 4, !dbg !976
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !977
  %76 = load i32, i32* %low324, align 8, !dbg !977
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !978
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !979
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !980
  store i32 %or326, i32* %high328, align 4, !dbg !981
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !982
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !983
  %77 = load i32, i32* %high333, align 4, !dbg !983
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !984
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !985
  store i32 %or335, i32* %low337, align 8, !dbg !986
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !987
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !988
  %78 = load i32, i32* %high339, align 4, !dbg !988
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !989
  %79 = load i32, i32* %low342, align 8, !dbg !989
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !990
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !991
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !992
  store i32 %or344, i32* %high346, align 4, !dbg !993
  %shl349 = shl i32 %79, 1, !dbg !994
  %or350 = or i32 %shl349, %carry.0, !dbg !995
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !996
  store i32 %or350, i32* %low352, align 8, !dbg !997
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !998
  %80 = load i64, i64* %all354, align 8, !dbg !998
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !999
  %81 = load i64, i64* %all355, align 8, !dbg !999
  %82 = xor i64 %81, -1, !dbg !1000
  %sub357 = add i64 %80, %82, !dbg !1000
  %isneg = icmp slt i64 %sub357, 0, !dbg !1001
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !1001
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1002
  %sub364 = sub i64 %81, %and362, !dbg !1003
  store i64 %sub364, i64* %all363, align 8, !dbg !1003
  br label %for.inc, !dbg !1004

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !1005
  %conv360 = trunc i64 %and359 to i32, !dbg !1006
  %dec = add i32 %sr.2, -1, !dbg !1007
  br label %for.cond, !dbg !973, !llvm.loop !1008

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1009
  %83 = load i64, i64* %all365, align 8, !dbg !1009
  %shl366 = shl i64 %83, 1, !dbg !1010
  %conv367 = zext i32 %carry.0 to i64, !dbg !1011
  %or368 = or i64 %shl366, %conv367, !dbg !1012
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1013
  store i64 %or368, i64* %all369, align 8, !dbg !1014
  %tobool370.not = icmp eq i64* %rem, null, !dbg !1015
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !1015

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1016
  %84 = load i64, i64* %all372, align 8, !dbg !1016
  store i64 %84, i64* %rem, align 8, !dbg !1017
  br label %if.end373, !dbg !1018

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1019
  %85 = load i64, i64* %all374, align 8, !dbg !1019
  br label %return, !dbg !1020

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !972
  ret i64 %retval.0, !dbg !1021
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !1022 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !1023
  %mul = mul nsw i64 %call, %b, !dbg !1024
  %sub = sub nsw i64 %a, %mul, !dbg !1025
  store i64 %sub, i64* %rem, align 8, !dbg !1026
  ret i64 %call, !dbg !1027
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !1028 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1029
  %mul = mul nsw i32 %call, %b, !dbg !1030
  %sub = sub nsw i32 %a, %mul, !dbg !1031
  store i32 %sub, i32* %rem, align 4, !dbg !1032
  ret i32 %call, !dbg !1033
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1034 {
entry:
  %shr = ashr i32 %a, 31, !dbg !1035
  %shr1 = ashr i32 %b, 31, !dbg !1036
  %xor = xor i32 %shr, %a, !dbg !1037
  %sub = sub nsw i32 %xor, %shr, !dbg !1038
  %xor2 = xor i32 %shr1, %b, !dbg !1039
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !1040
  %xor4 = xor i32 %shr, %shr1, !dbg !1041
  %div = udiv i32 %sub, %sub3, !dbg !1042
  %xor5 = xor i32 %div, %xor4, !dbg !1043
  %sub6 = sub i32 %xor5, %xor4, !dbg !1044
  ret i32 %sub6, !dbg !1045
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #1 !dbg !1046 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1047
  store i64 %a, i64* %all, align 8, !dbg !1048
  %low = bitcast %union.dwords* %x to i32*, !dbg !1049
  %0 = load i32, i32* %low, align 8, !dbg !1049
  %cmp = icmp eq i32 %0, 0, !dbg !1050
  br i1 %cmp, label %if.then, label %if.end6, !dbg !1051

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1052
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1053
  %1 = load i32, i32* %high, align 4, !dbg !1053
  %cmp2 = icmp eq i32 %1, 0, !dbg !1054
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1055

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !1056

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1057
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1058
  %2 = load i32, i32* %high5, align 4, !dbg !1058
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !1059, !range !541
  %add = add nuw nsw i32 %3, 33, !dbg !1060
  br label %return, !dbg !1061

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !1062
  %4 = load i32, i32* %low8, align 8, !dbg !1062
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !1063, !range !541
  %add9 = add nuw nsw i32 %5, 1, !dbg !1064
  br label %return, !dbg !1065

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !1066
  ret i32 %retval.0, !dbg !1067
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #1 !dbg !1068 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !1069
  br i1 %cmp, label %if.then, label %if.end, !dbg !1070

if.then:                                          ; preds = %entry
  br label %return, !dbg !1071

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !1072, !range !541
  %add = add nuw nsw i32 %0, 1, !dbg !1073
  br label %return, !dbg !1074

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !1075
  ret i32 %retval.0, !dbg !1076
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !1077 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1078
  store i64 %a, i64* %all, align 8, !dbg !1079
  %and = and i32 %b, 32, !dbg !1080
  %tobool.not = icmp eq i32 %and, 0, !dbg !1080
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1081

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !1082
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1083
  store i32 0, i32* %high, align 4, !dbg !1084
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1085
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1086
  %0 = load i32, i32* %high2, align 4, !dbg !1086
  %sub = add nsw i32 %b, -32, !dbg !1087
  %shr = lshr i32 %0, %sub, !dbg !1088
  %low = bitcast %union.dwords* %result to i32*, !dbg !1089
  store i32 %shr, i32* %low, align 8, !dbg !1090
  br label %if.end18, !dbg !1091

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1092
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1093

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !1094

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1095
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !1096
  %1 = load i32, i32* %high6, align 4, !dbg !1096
  %shr7 = lshr i32 %1, %b, !dbg !1097
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1098
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !1099
  store i32 %shr7, i32* %high9, align 4, !dbg !1100
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1101
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !1102
  %2 = load i32, i32* %high11, align 4, !dbg !1102
  %sub12 = sub nsw i32 32, %b, !dbg !1103
  %shl = shl i32 %2, %sub12, !dbg !1104
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !1105
  %3 = load i32, i32* %low14, align 8, !dbg !1105
  %shr15 = lshr i32 %3, %b, !dbg !1106
  %or = or i32 %shl, %shr15, !dbg !1107
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !1108
  store i32 %or, i32* %low17, align 8, !dbg !1109
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1110
  %4 = load i64, i64* %all19, align 8, !dbg !1110
  br label %return, !dbg !1111

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !1112
  ret i64 %retval.0, !dbg !1113
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1114 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !1115
  %shr1 = ashr i64 %a, 63, !dbg !1116
  %xor2 = xor i64 %shr1, %a, !dbg !1117
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !1118
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !1119
  %1 = load i64, i64* %r, align 8, !dbg !1120
  %xor4 = xor i64 %1, %shr1, !dbg !1121
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !1122
  ret i64 %sub5, !dbg !1123
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1124 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1125
  %mul = mul nsw i32 %call, %b, !dbg !1126
  %sub = sub nsw i32 %a, %mul, !dbg !1127
  ret i32 %sub, !dbg !1128
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1129 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !1130
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1131

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !1132
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1133

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !1134
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1135

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1136

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1137
  unreachable, !dbg !1137

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !1138
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1139

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !1140
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1141

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !1142
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1143

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1144

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1145
  unreachable, !dbg !1145

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !1146
  %xor = xor i64 %shr, %a, !dbg !1147
  %sub = sub nsw i64 %xor, %shr, !dbg !1148
  %shr14 = ashr i64 %b, 63, !dbg !1149
  %xor15 = xor i64 %shr14, %b, !dbg !1150
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !1151
  %cmp17 = icmp slt i64 %sub, 2, !dbg !1152
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1153

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !1154
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1155

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1156

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !1157
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1158

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !1159
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !1160
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1161

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1162
  unreachable, !dbg !1162

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1163

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !1164
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !1165
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !1166
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1167

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1168
  unreachable, !dbg !1168

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1169

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !1170
  ret i64 %retval.0, !dbg !1171
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1172 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !1173
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1174

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !1175
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1176

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !1177
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1178

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1179

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1180
  unreachable, !dbg !1180

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !1181
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1182

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !1183
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1184

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !1185
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1186

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1187

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1188
  unreachable, !dbg !1188

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !1189
  %xor = xor i32 %shr, %a, !dbg !1190
  %sub = sub nsw i32 %xor, %shr, !dbg !1191
  %shr14 = ashr i32 %b, 31, !dbg !1192
  %xor15 = xor i32 %shr14, %b, !dbg !1193
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !1194
  %cmp17 = icmp slt i32 %sub, 2, !dbg !1195
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1196

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !1197
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1198

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1199

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !1200
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1201

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !1202
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !1203
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1204

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1205
  unreachable, !dbg !1205

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1206

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !1207
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !1208
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !1209
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1210

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1211
  unreachable, !dbg !1211

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1212

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !1213
  ret i32 %retval.0, !dbg !1214
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #1 !dbg !1215 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1216
  store i64 %a, i64* %all, align 8, !dbg !1217
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1218
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1219
  %0 = load i32, i32* %high, align 4, !dbg !1219
  %low = bitcast %union.dwords* %x to i32*, !dbg !1220
  %1 = load i32, i32* %low, align 8, !dbg !1220
  %xor = xor i32 %0, %1, !dbg !1221
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !1222
  ret i32 %call, !dbg !1223
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #1 !dbg !1224 {
entry:
  %shr = lshr i32 %a, 16, !dbg !1225
  %xor = xor i32 %shr, %a, !dbg !1226
  %shr1 = lshr i32 %xor, 8, !dbg !1227
  %xor2 = xor i32 %xor, %shr1, !dbg !1228
  %shr3 = lshr i32 %xor2, 4, !dbg !1229
  %xor4 = xor i32 %xor2, %shr3, !dbg !1230
  %and = and i32 %xor4, 15, !dbg !1231
  %shr5 = lshr i32 27030, %and, !dbg !1232
  %and6 = and i32 %shr5, 1, !dbg !1233
  ret i32 %and6, !dbg !1234
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #1 !dbg !1235 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1236
  %and = and i64 %shr, 6148914691236517205, !dbg !1237
  %sub = sub i64 %a, %and, !dbg !1238
  %shr1 = lshr i64 %sub, 2, !dbg !1239
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1240
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1241
  %add = add nuw nsw i64 %and2, %and3, !dbg !1242
  %shr4 = lshr i64 %add, 4, !dbg !1243
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1244
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1245
  %shr7 = lshr i64 %and6, 32, !dbg !1246
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1247
  %conv = trunc i64 %add8 to i32, !dbg !1248
  %shr9 = lshr i32 %conv, 16, !dbg !1249
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1250
  %shr11 = lshr i32 %add10, 8, !dbg !1251
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1252
  %and13 = and i32 %add12, 127, !dbg !1253
  ret i32 %and13, !dbg !1254
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #1 !dbg !1255 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1256
  %and = and i32 %shr, 1431655765, !dbg !1257
  %sub = sub i32 %a, %and, !dbg !1258
  %shr1 = lshr i32 %sub, 2, !dbg !1259
  %and2 = and i32 %shr1, 858993459, !dbg !1260
  %and3 = and i32 %sub, 858993459, !dbg !1261
  %add = add nuw nsw i32 %and2, %and3, !dbg !1262
  %shr4 = lshr i32 %add, 4, !dbg !1263
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1264
  %and6 = and i32 %add5, 252645135, !dbg !1265
  %shr7 = lshr i32 %and6, 16, !dbg !1266
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1267
  %shr9 = lshr i32 %add8, 8, !dbg !1268
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1269
  %and11 = and i32 %add10, 63, !dbg !1270
  ret i32 %and11, !dbg !1271
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1272 {
entry:
  %sub = sub i64 %a, %b, !dbg !1273
  %cmp = icmp sgt i64 %b, -1, !dbg !1274
  br i1 %cmp, label %if.then, label %if.else, !dbg !1275

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1276
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1277

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1278
  unreachable, !dbg !1278

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1279

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1280
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1281

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1282
  unreachable, !dbg !1282

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1283
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1284 {
entry:
  %sub = sub i32 %a, %b, !dbg !1285
  %cmp = icmp sgt i32 %b, -1, !dbg !1286
  br i1 %cmp, label %if.then, label %if.else, !dbg !1287

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1288
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1289

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1290
  unreachable, !dbg !1290

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1291

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1292
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1293

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1294
  unreachable, !dbg !1294

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1295
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !1296 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1297
  store i64 %a, i64* %all, align 8, !dbg !1298
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1299
  store i64 %b, i64* %all1, align 8, !dbg !1300
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1301
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1302
  %0 = load i32, i32* %high, align 4, !dbg !1302
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1303
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1304
  %1 = load i32, i32* %high3, align 4, !dbg !1304
  %cmp = icmp ult i32 %0, %1, !dbg !1305
  br i1 %cmp, label %if.then, label %if.end, !dbg !1306

if.then:                                          ; preds = %entry
  br label %return, !dbg !1307

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1308
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1309
  %2 = load i32, i32* %high5, align 4, !dbg !1309
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1310
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1311
  %3 = load i32, i32* %high7, align 4, !dbg !1311
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1312
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1313

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1314

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1315
  %4 = load i32, i32* %low, align 8, !dbg !1315
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1316
  %5 = load i32, i32* %low13, align 8, !dbg !1316
  %cmp14 = icmp ult i32 %4, %5, !dbg !1317
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1318

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1319

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1320
  %6 = load i32, i32* %low18, align 8, !dbg !1320
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1321
  %7 = load i32, i32* %low20, align 8, !dbg !1321
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1322
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1323

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1324

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1325

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1326
  ret i32 %retval.0, !dbg !1327
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !1328 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1329
  %sub = add nsw i32 %call, -1, !dbg !1330
  ret i32 %sub, !dbg !1331
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1332 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !1333
  ret i64 %call, !dbg !1334
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !1335 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1336
  %mul = mul i32 %call, %b, !dbg !1337
  %sub = sub i32 %a, %mul, !dbg !1338
  store i32 %sub, i32* %rem, align 4, !dbg !1339
  ret i32 %call, !dbg !1340
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #1 !dbg !1341 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1342
  br i1 %cmp, label %if.then, label %if.end, !dbg !1343

if.then:                                          ; preds = %entry
  br label %return, !dbg !1344

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1345
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1346

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1347

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1348, !range !541
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1349, !range !541
  %sub = sub nsw i32 %0, %1, !dbg !1350
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1351
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1352

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1353

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1354
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1355

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1356

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1357
  %sub10 = sub nsw i32 31, %sub, !dbg !1358
  %shl = shl i32 %n, %sub10, !dbg !1359
  %shr = lshr i32 %n, %inc, !dbg !1360
  br label %for.cond, !dbg !1361

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1362
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1362
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1362
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1362
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1363
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1361

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1364
  %2 = xor i32 %or, -1, !dbg !1365
  %sub17 = add i32 %2, %d, !dbg !1365
  br label %for.inc, !dbg !1366

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1367
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1367
  %sub20 = sub i32 %or, %and19, !dbg !1368
  %and = lshr i32 %sub17, 31, !dbg !1369
  %shl14 = shl i32 %q.0, 1, !dbg !1370
  %or15 = or i32 %shl14, %carry.0, !dbg !1371
  %dec = add i32 %sr.0, -1, !dbg !1372
  br label %for.cond, !dbg !1361, !llvm.loop !1373

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1374
  %or22 = or i32 %shl21, %carry.0, !dbg !1375
  br label %return, !dbg !1376

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1362
  ret i32 %retval.0, !dbg !1377
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1378 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !1379
  %0 = load i64, i64* %r, align 8, !dbg !1380
  ret i64 %0, !dbg !1381
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1382 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1383
  %mul = mul i32 %call, %b, !dbg !1384
  %sub = sub i32 %a, %mul, !dbg !1385
  ret i32 %sub, !dbg !1386
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #1 !dbg !1387 {
entry:
  br label %for.cond, !dbg !1388

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1389
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1390
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1391

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1392
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1392
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1393
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1394
  br label %for.inc, !dbg !1395

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1396
  br label %for.cond, !dbg !1391, !llvm.loop !1397

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1398
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #1 !dbg !1399 {
entry:
  br label %for.cond, !dbg !1400

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1401
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1402
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1403

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1404
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1405
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1406
  br label %for.inc, !dbg !1407

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1408
  br label %for.cond, !dbg !1403, !llvm.loop !1409

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1410
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
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/g723_enc/g723_enc.c", directory: "/workspaces/llvmta/testcases/tmp.nudlGPqgFM", checksumkind: CSK_MD5, checksum: "2ace5cafdf45d5556fee9feb4e30ede7")
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
!125 = distinct !DISubprogram(name: "g723_enc_fmult", scope: !126, file: !126, line: 200, type: !127, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!126 = !DIFile(filename: "batchtest/g723_enc/g723_enc.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "2ace5cafdf45d5556fee9feb4e30ede7")
!127 = !DISubroutineType(types: !128)
!128 = !{}
!129 = !DILocation(line: 209, column: 11, scope: !125)
!130 = !DILocation(line: 210, column: 22, scope: !125)
!131 = !DILocation(line: 210, column: 21, scope: !125)
!132 = !DILocation(line: 211, column: 12, scope: !125)
!133 = !DILocation(line: 213, column: 15, scope: !125)
!134 = !DILocation(line: 213, column: 30, scope: !125)
!135 = !DILocation(line: 213, column: 22, scope: !125)
!136 = !DILocation(line: 214, column: 14, scope: !125)
!137 = !DILocation(line: 214, column: 26, scope: !125)
!138 = !DILocation(line: 214, column: 25, scope: !125)
!139 = !DILocation(line: 214, column: 22, scope: !125)
!140 = !DILocation(line: 216, column: 3, scope: !125)
!141 = distinct !DISubprogram(name: "g723_enc_quan", scope: !126, file: !126, line: 240, type: !127, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!142 = !DILocation(line: 250, column: 9, scope: !141)
!143 = !DILocation(line: 250, column: 3, scope: !141)
!144 = !DILocation(line: 255, column: 3, scope: !141)
!145 = distinct !{!145, !143, !144, !146}
!146 = !{!"llvm.loop.mustprogress"}
!147 = !DILocation(line: 257, column: 3, scope: !141)
!148 = distinct !DISubprogram(name: "g723_enc_abs", scope: !126, file: !126, line: 221, type: !127, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!149 = !DILocation(line: 223, column: 3, scope: !148)
!150 = distinct !DISubprogram(name: "g723_enc_predictor_zero", scope: !126, file: !126, line: 268, type: !127, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!151 = !DILocation(line: 274, column: 26, scope: !150)
!152 = !DILocation(line: 274, column: 44, scope: !150)
!153 = !DILocation(line: 274, column: 50, scope: !150)
!154 = !DILocation(line: 274, column: 10, scope: !150)
!155 = !DILocation(line: 276, column: 9, scope: !150)
!156 = !DILocation(line: 0, scope: !150)
!157 = !DILocation(line: 276, column: 18, scope: !150)
!158 = !DILocation(line: 276, column: 3, scope: !150)
!159 = !DILocation(line: 277, column: 29, scope: !150)
!160 = !DILocation(line: 277, column: 47, scope: !150)
!161 = !DILocation(line: 277, column: 53, scope: !150)
!162 = !DILocation(line: 277, column: 13, scope: !150)
!163 = !DILocation(line: 277, column: 5, scope: !150)
!164 = !DILocation(line: 277, column: 10, scope: !150)
!165 = !DILocation(line: 276, column: 24, scope: !150)
!166 = distinct !{!166, !158, !167, !146}
!167 = !DILocation(line: 277, column: 72, scope: !150)
!168 = !DILocation(line: 279, column: 3, scope: !150)
!169 = distinct !DISubprogram(name: "g723_enc_predictor_pole", scope: !126, file: !126, line: 290, type: !127, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!170 = !DILocation(line: 293, column: 28, scope: !169)
!171 = !DILocation(line: 293, column: 46, scope: !169)
!172 = !DILocation(line: 293, column: 52, scope: !169)
!173 = !DILocation(line: 293, column: 12, scope: !169)
!174 = !DILocation(line: 294, column: 28, scope: !169)
!175 = !DILocation(line: 294, column: 46, scope: !169)
!176 = !DILocation(line: 294, column: 52, scope: !169)
!177 = !DILocation(line: 294, column: 12, scope: !169)
!178 = !DILocation(line: 293, column: 73, scope: !169)
!179 = !DILocation(line: 293, column: 3, scope: !169)
!180 = distinct !DISubprogram(name: "g723_enc_step_size", scope: !126, file: !126, line: 304, type: !127, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!181 = !DILocation(line: 311, column: 23, scope: !180)
!182 = !DILocation(line: 311, column: 10, scope: !180)
!183 = !DILocation(line: 311, column: 3, scope: !180)
!184 = distinct !DISubprogram(name: "g723_enc_quantize", scope: !126, file: !126, line: 324, type: !127, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!185 = !DILocation(line: 342, column: 9, scope: !184)
!186 = !DILocation(line: 343, column: 24, scope: !184)
!187 = !DILocation(line: 343, column: 28, scope: !184)
!188 = !DILocation(line: 343, column: 9, scope: !184)
!189 = !DILocation(line: 344, column: 14, scope: !184)
!190 = !DILocation(line: 344, column: 18, scope: !184)
!191 = !DILocation(line: 344, column: 28, scope: !184)
!192 = !DILocation(line: 344, column: 25, scope: !184)
!193 = !DILocation(line: 352, column: 9, scope: !184)
!194 = !DILocation(line: 359, column: 22, scope: !184)
!195 = !DILocation(line: 359, column: 7, scope: !184)
!196 = !DILocation(line: 361, column: 3, scope: !184)
!197 = distinct !DISubprogram(name: "g723_enc_reconstruct", scope: !126, file: !126, line: 371, type: !127, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!198 = !DILocation(line: 384, column: 12, scope: !197)
!199 = !DILocation(line: 384, column: 3, scope: !197)
!200 = distinct !DISubprogram(name: "g723_enc_update", scope: !126, file: !126, line: 395, type: !127, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!201 = !DILocation(line: 420, column: 22, scope: !200)
!202 = !DILocation(line: 423, column: 12, scope: !200)
!203 = !DILocation(line: 423, column: 18, scope: !200)
!204 = !DILocation(line: 423, column: 10, scope: !200)
!205 = !DILocation(line: 435, column: 14, scope: !200)
!206 = !DILocation(line: 435, column: 17, scope: !200)
!207 = !DILocation(line: 440, column: 52, scope: !200)
!208 = !DILocation(line: 440, column: 40, scope: !200)
!209 = !DILocation(line: 440, column: 57, scope: !200)
!210 = !DILocation(line: 440, column: 34, scope: !200)
!211 = !DILocation(line: 440, column: 14, scope: !200)
!212 = !DILocation(line: 440, column: 17, scope: !200)
!213 = !DILocation(line: 445, column: 3, scope: !200)
!214 = !DILocation(line: 445, column: 21, scope: !200)
!215 = !DILocation(line: 446, column: 3, scope: !200)
!216 = !DILocation(line: 446, column: 21, scope: !200)
!217 = !DILocation(line: 447, column: 3, scope: !200)
!218 = !DILocation(line: 447, column: 21, scope: !200)
!219 = !DILocation(line: 448, column: 3, scope: !200)
!220 = !DILocation(line: 448, column: 21, scope: !200)
!221 = !DILocation(line: 449, column: 3, scope: !200)
!222 = !DILocation(line: 449, column: 21, scope: !200)
!223 = !DILocation(line: 450, column: 3, scope: !200)
!224 = !DILocation(line: 450, column: 21, scope: !200)
!225 = !DILocation(line: 451, column: 3, scope: !200)
!226 = !DILocation(line: 451, column: 21, scope: !200)
!227 = !DILocation(line: 452, column: 3, scope: !200)
!228 = !DILocation(line: 452, column: 21, scope: !200)
!229 = !DILocation(line: 456, column: 9, scope: !200)
!230 = !DILocation(line: 0, scope: !200)
!231 = !DILocation(line: 456, column: 22, scope: !200)
!232 = !DILocation(line: 456, column: 3, scope: !200)
!233 = !DILocation(line: 457, column: 47, scope: !200)
!234 = !DILocation(line: 457, column: 28, scope: !200)
!235 = !DILocation(line: 457, column: 5, scope: !200)
!236 = !DILocation(line: 457, column: 26, scope: !200)
!237 = !DILocation(line: 456, column: 30, scope: !200)
!238 = distinct !{!238, !232, !239, !146}
!239 = !DILocation(line: 457, column: 51, scope: !200)
!240 = !DILocation(line: 416, column: 9, scope: !200)
!241 = !DILocation(line: 459, column: 3, scope: !200)
!242 = !DILocation(line: 459, column: 22, scope: !200)
!243 = !DILocation(line: 462, column: 24, scope: !200)
!244 = !DILocation(line: 462, column: 3, scope: !200)
!245 = !DILocation(line: 462, column: 22, scope: !200)
!246 = !DILocation(line: 464, column: 3, scope: !200)
!247 = !DILocation(line: 464, column: 22, scope: !200)
!248 = !DILocation(line: 468, column: 24, scope: !200)
!249 = !DILocation(line: 468, column: 3, scope: !200)
!250 = !DILocation(line: 468, column: 22, scope: !200)
!251 = !DILocation(line: 469, column: 3, scope: !200)
!252 = !DILocation(line: 469, column: 22, scope: !200)
!253 = !DILocation(line: 472, column: 14, scope: !200)
!254 = !DILocation(line: 472, column: 17, scope: !200)
!255 = !DILocation(line: 478, column: 39, scope: !200)
!256 = !DILocation(line: 478, column: 28, scope: !200)
!257 = !DILocation(line: 478, column: 26, scope: !200)
!258 = !DILocation(line: 478, column: 45, scope: !200)
!259 = !DILocation(line: 478, column: 14, scope: !200)
!260 = !DILocation(line: 478, column: 18, scope: !200)
!261 = !DILocation(line: 479, column: 30, scope: !200)
!262 = !DILocation(line: 479, column: 50, scope: !200)
!263 = !DILocation(line: 479, column: 39, scope: !200)
!264 = !DILocation(line: 479, column: 37, scope: !200)
!265 = !DILocation(line: 479, column: 56, scope: !200)
!266 = !DILocation(line: 479, column: 14, scope: !200)
!267 = !DILocation(line: 479, column: 18, scope: !200)
!268 = !DILocation(line: 481, column: 14, scope: !200)
!269 = !DILocation(line: 481, column: 17, scope: !200)
!270 = !DILocation(line: 482, column: 1, scope: !200)
!271 = distinct !DISubprogram(name: "g723_enc_alaw2linear", scope: !126, file: !126, line: 490, type: !127, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!272 = !DILocation(line: 496, column: 9, scope: !271)
!273 = !DILocation(line: 498, column: 30, scope: !271)
!274 = !DILocation(line: 499, column: 42, scope: !271)
!275 = !DILocation(line: 500, column: 5, scope: !271)
!276 = !DILocation(line: 501, column: 13, scope: !271)
!277 = !DILocation(line: 501, column: 5, scope: !271)
!278 = !DILocation(line: 503, column: 20, scope: !271)
!279 = !DILocation(line: 503, column: 12, scope: !271)
!280 = !DILocation(line: 503, column: 39, scope: !271)
!281 = !DILocation(line: 503, column: 3, scope: !271)
!282 = distinct !DISubprogram(name: "g723_enc_ulaw2linear", scope: !126, file: !126, line: 517, type: !127, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!283 = !DILocation(line: 523, column: 11, scope: !282)
!284 = !DILocation(line: 529, column: 32, scope: !282)
!285 = !DILocation(line: 529, column: 39, scope: !282)
!286 = !DILocation(line: 530, column: 46, scope: !282)
!287 = !DILocation(line: 530, column: 5, scope: !282)
!288 = !DILocation(line: 532, column: 20, scope: !282)
!289 = !DILocation(line: 532, column: 12, scope: !282)
!290 = !DILocation(line: 532, column: 42, scope: !282)
!291 = !DILocation(line: 532, column: 54, scope: !282)
!292 = !DILocation(line: 532, column: 3, scope: !282)
!293 = distinct !DISubprogram(name: "g723_enc_g723_24_encoder", scope: !126, file: !126, line: 543, type: !127, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!294 = !DILocation(line: 556, column: 30, scope: !293)
!295 = !DILocation(line: 556, column: 8, scope: !293)
!296 = !DILocation(line: 556, column: 35, scope: !293)
!297 = !DILocation(line: 559, column: 10, scope: !293)
!298 = !DILocation(line: 560, column: 9, scope: !293)
!299 = !DILocation(line: 560, column: 14, scope: !293)
!300 = !DILocation(line: 561, column: 16, scope: !293)
!301 = !DILocation(line: 561, column: 14, scope: !293)
!302 = !DILocation(line: 562, column: 8, scope: !293)
!303 = !DILocation(line: 562, column: 12, scope: !293)
!304 = !DILocation(line: 564, column: 10, scope: !293)
!305 = !DILocation(line: 567, column: 7, scope: !293)
!306 = !DILocation(line: 568, column: 26, scope: !293)
!307 = !DILocation(line: 568, column: 29, scope: !293)
!308 = !DILocation(line: 568, column: 7, scope: !293)
!309 = !DILocation(line: 569, column: 32, scope: !293)
!310 = !DILocation(line: 569, column: 37, scope: !293)
!311 = !DILocation(line: 570, column: 30, scope: !293)
!312 = !DILocation(line: 569, column: 8, scope: !293)
!313 = !DILocation(line: 572, column: 12, scope: !293)
!314 = !DILocation(line: 574, column: 14, scope: !293)
!315 = !DILocation(line: 574, column: 20, scope: !293)
!316 = !DILocation(line: 576, column: 23, scope: !293)
!317 = !DILocation(line: 576, column: 26, scope: !293)
!318 = !DILocation(line: 576, column: 47, scope: !293)
!319 = !DILocation(line: 576, column: 68, scope: !293)
!320 = !DILocation(line: 576, column: 72, scope: !293)
!321 = !DILocation(line: 576, column: 76, scope: !293)
!322 = !DILocation(line: 576, column: 3, scope: !293)
!323 = !DILocation(line: 579, column: 10, scope: !293)
!324 = !DILocation(line: 579, column: 3, scope: !293)
!325 = distinct !DISubprogram(name: "g723_enc_pack_output", scope: !126, file: !126, line: 587, type: !127, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!326 = !DILocation(line: 596, column: 19, scope: !325)
!327 = !DILocation(line: 596, column: 27, scope: !325)
!328 = !DILocation(line: 596, column: 24, scope: !325)
!329 = !DILocation(line: 596, column: 14, scope: !325)
!330 = !DILocation(line: 597, column: 12, scope: !325)
!331 = !DILocation(line: 600, column: 12, scope: !325)
!332 = !DILocation(line: 601, column: 14, scope: !325)
!333 = !DILocation(line: 604, column: 26, scope: !325)
!334 = !DILocation(line: 604, column: 20, scope: !325)
!335 = !DILocation(line: 604, column: 3, scope: !325)
!336 = !DILocation(line: 604, column: 24, scope: !325)
!337 = !DILocation(line: 605, column: 10, scope: !325)
!338 = !DILocation(line: 605, column: 5, scope: !325)
!339 = !DILocation(line: 608, column: 12, scope: !325)
!340 = !DILocation(line: 608, column: 21, scope: !325)
!341 = !DILocation(line: 608, column: 3, scope: !325)
!342 = distinct !DISubprogram(name: "g723_enc_init_state", scope: !126, file: !126, line: 623, type: !127, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!343 = !DILocation(line: 628, column: 14, scope: !342)
!344 = !DILocation(line: 628, column: 17, scope: !342)
!345 = !DILocation(line: 629, column: 14, scope: !342)
!346 = !DILocation(line: 629, column: 17, scope: !342)
!347 = !DILocation(line: 630, column: 14, scope: !342)
!348 = !DILocation(line: 630, column: 18, scope: !342)
!349 = !DILocation(line: 631, column: 14, scope: !342)
!350 = !DILocation(line: 631, column: 18, scope: !342)
!351 = !DILocation(line: 632, column: 14, scope: !342)
!352 = !DILocation(line: 632, column: 17, scope: !342)
!353 = !DILocation(line: 635, column: 9, scope: !342)
!354 = !DILocation(line: 0, scope: !342)
!355 = !DILocation(line: 635, column: 24, scope: !342)
!356 = !DILocation(line: 635, column: 3, scope: !342)
!357 = !DILocation(line: 636, column: 5, scope: !342)
!358 = !DILocation(line: 636, column: 26, scope: !342)
!359 = !DILocation(line: 637, column: 5, scope: !342)
!360 = !DILocation(line: 637, column: 27, scope: !342)
!361 = !DILocation(line: 638, column: 5, scope: !342)
!362 = !DILocation(line: 638, column: 27, scope: !342)
!363 = !DILocation(line: 639, column: 3, scope: !342)
!364 = !DILocation(line: 635, column: 33, scope: !342)
!365 = distinct !{!365, !356, !363, !146}
!366 = !DILocation(line: 641, column: 9, scope: !342)
!367 = !DILocation(line: 641, column: 24, scope: !342)
!368 = !DILocation(line: 641, column: 3, scope: !342)
!369 = !DILocation(line: 642, column: 5, scope: !342)
!370 = !DILocation(line: 642, column: 26, scope: !342)
!371 = !DILocation(line: 643, column: 5, scope: !342)
!372 = !DILocation(line: 643, column: 27, scope: !342)
!373 = !DILocation(line: 644, column: 3, scope: !342)
!374 = !DILocation(line: 641, column: 33, scope: !342)
!375 = distinct !{!375, !368, !373, !146}
!376 = !DILocation(line: 645, column: 14, scope: !342)
!377 = !DILocation(line: 645, column: 17, scope: !342)
!378 = !DILocation(line: 646, column: 1, scope: !342)
!379 = distinct !DISubprogram(name: "g723_enc_init", scope: !126, file: !126, line: 649, type: !127, scopeLine: 650, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!380 = !DILocation(line: 652, column: 16, scope: !379)
!381 = !DILocation(line: 653, column: 3, scope: !379)
!382 = !DILocation(line: 656, column: 9, scope: !379)
!383 = !DILocation(line: 0, scope: !379)
!384 = !DILocation(line: 656, column: 18, scope: !379)
!385 = !DILocation(line: 656, column: 3, scope: !379)
!386 = !DILocation(line: 657, column: 28, scope: !379)
!387 = !DILocation(line: 657, column: 5, scope: !379)
!388 = !DILocation(line: 657, column: 25, scope: !379)
!389 = !DILocation(line: 656, column: 24, scope: !379)
!390 = distinct !{!390, !385, !386, !146}
!391 = !DILocation(line: 658, column: 1, scope: !379)
!392 = distinct !DISubprogram(name: "g723_enc_return", scope: !126, file: !126, line: 661, type: !127, scopeLine: 662, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!393 = !DILocation(line: 667, column: 9, scope: !392)
!394 = !DILocation(line: 667, column: 3, scope: !392)
!395 = !DILocation(line: 668, column: 5, scope: !392)
!396 = distinct !{!396, !394, !397, !146}
!397 = !DILocation(line: 668, column: 37, scope: !392)
!398 = !DILocation(line: 670, column: 3, scope: !392)
!399 = distinct !DISubprogram(name: "g723_enc_main", scope: !126, file: !126, line: 677, type: !127, scopeLine: 678, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!400 = !DILocation(line: 693, column: 9, scope: !399)
!401 = !DILocation(line: 0, scope: !399)
!402 = !DILocation(line: 693, column: 18, scope: !399)
!403 = !DILocation(line: 693, column: 3, scope: !399)
!404 = !DILocation(line: 694, column: 15, scope: !399)
!405 = !DILocation(line: 695, column: 38, scope: !399)
!406 = !DILocation(line: 695, column: 12, scope: !399)
!407 = !DILocation(line: 696, column: 13, scope: !399)
!408 = !DILocation(line: 697, column: 3, scope: !399)
!409 = !DILocation(line: 693, column: 24, scope: !399)
!410 = distinct !{!410, !403, !408, !146}
!411 = !DILocation(line: 699, column: 1, scope: !399)
!412 = distinct !DISubprogram(name: "main", scope: !126, file: !126, line: 702, type: !127, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!413 = !DILocation(line: 704, column: 3, scope: !412)
!414 = !DILocation(line: 705, column: 3, scope: !412)
!415 = !DILocation(line: 707, column: 12, scope: !412)
!416 = !DILocation(line: 707, column: 3, scope: !412)
!417 = distinct !DISubprogram(name: "__absvdi2", scope: !3, file: !3, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !128)
!418 = !DILocation(line: 25, column: 11, scope: !417)
!419 = !DILocation(line: 25, column: 9, scope: !417)
!420 = !DILocation(line: 26, column: 9, scope: !417)
!421 = !DILocation(line: 28, column: 20, scope: !417)
!422 = !DILocation(line: 28, column: 5, scope: !417)
!423 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !55, file: !55, line: 57, type: !127, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !128)
!424 = !DILocation(line: 59, column: 1, scope: !423)
!425 = distinct !DISubprogram(name: "__absvsi2", scope: !5, file: !5, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !128)
!426 = !DILocation(line: 25, column: 11, scope: !425)
!427 = !DILocation(line: 25, column: 9, scope: !425)
!428 = !DILocation(line: 26, column: 9, scope: !425)
!429 = !DILocation(line: 28, column: 20, scope: !425)
!430 = !DILocation(line: 28, column: 5, scope: !425)
!431 = distinct !DISubprogram(name: "__addvdi3", scope: !9, file: !9, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !128)
!432 = !DILocation(line: 24, column: 27, scope: !431)
!433 = !DILocation(line: 25, column: 11, scope: !431)
!434 = !DILocation(line: 25, column: 9, scope: !431)
!435 = !DILocation(line: 27, column: 15, scope: !431)
!436 = !DILocation(line: 27, column: 13, scope: !431)
!437 = !DILocation(line: 28, column: 13, scope: !431)
!438 = !DILocation(line: 29, column: 5, scope: !431)
!439 = !DILocation(line: 32, column: 15, scope: !431)
!440 = !DILocation(line: 32, column: 13, scope: !431)
!441 = !DILocation(line: 33, column: 13, scope: !431)
!442 = !DILocation(line: 35, column: 5, scope: !431)
!443 = distinct !DISubprogram(name: "__addvsi3", scope: !11, file: !11, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !128)
!444 = !DILocation(line: 24, column: 27, scope: !443)
!445 = !DILocation(line: 25, column: 11, scope: !443)
!446 = !DILocation(line: 25, column: 9, scope: !443)
!447 = !DILocation(line: 27, column: 15, scope: !443)
!448 = !DILocation(line: 27, column: 13, scope: !443)
!449 = !DILocation(line: 28, column: 13, scope: !443)
!450 = !DILocation(line: 29, column: 5, scope: !443)
!451 = !DILocation(line: 32, column: 15, scope: !443)
!452 = !DILocation(line: 32, column: 13, scope: !443)
!453 = !DILocation(line: 33, column: 13, scope: !443)
!454 = !DILocation(line: 35, column: 5, scope: !443)
!455 = distinct !DISubprogram(name: "__ashldi3", scope: !15, file: !15, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !128)
!456 = !DILocation(line: 29, column: 11, scope: !455)
!457 = !DILocation(line: 29, column: 15, scope: !455)
!458 = !DILocation(line: 30, column: 11, scope: !455)
!459 = !DILocation(line: 30, column: 9, scope: !455)
!460 = !DILocation(line: 32, column: 18, scope: !455)
!461 = !DILocation(line: 32, column: 22, scope: !455)
!462 = !DILocation(line: 33, column: 33, scope: !455)
!463 = !DILocation(line: 33, column: 43, scope: !455)
!464 = !DILocation(line: 33, column: 37, scope: !455)
!465 = !DILocation(line: 33, column: 16, scope: !455)
!466 = !DILocation(line: 33, column: 18, scope: !455)
!467 = !DILocation(line: 33, column: 23, scope: !455)
!468 = !DILocation(line: 34, column: 5, scope: !455)
!469 = !DILocation(line: 37, column: 15, scope: !455)
!470 = !DILocation(line: 37, column: 13, scope: !455)
!471 = !DILocation(line: 38, column: 13, scope: !455)
!472 = !DILocation(line: 39, column: 33, scope: !455)
!473 = !DILocation(line: 39, column: 37, scope: !455)
!474 = !DILocation(line: 39, column: 18, scope: !455)
!475 = !DILocation(line: 39, column: 23, scope: !455)
!476 = !DILocation(line: 40, column: 32, scope: !455)
!477 = !DILocation(line: 40, column: 34, scope: !455)
!478 = !DILocation(line: 40, column: 39, scope: !455)
!479 = !DILocation(line: 40, column: 56, scope: !455)
!480 = !DILocation(line: 40, column: 77, scope: !455)
!481 = !DILocation(line: 40, column: 60, scope: !455)
!482 = !DILocation(line: 40, column: 45, scope: !455)
!483 = !DILocation(line: 40, column: 16, scope: !455)
!484 = !DILocation(line: 40, column: 18, scope: !455)
!485 = !DILocation(line: 40, column: 23, scope: !455)
!486 = !DILocation(line: 42, column: 19, scope: !455)
!487 = !DILocation(line: 42, column: 5, scope: !455)
!488 = !DILocation(line: 0, scope: !455)
!489 = !DILocation(line: 43, column: 1, scope: !455)
!490 = distinct !DISubprogram(name: "__ashrdi3", scope: !19, file: !19, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !128)
!491 = !DILocation(line: 29, column: 11, scope: !490)
!492 = !DILocation(line: 29, column: 15, scope: !490)
!493 = !DILocation(line: 30, column: 11, scope: !490)
!494 = !DILocation(line: 30, column: 9, scope: !490)
!495 = !DILocation(line: 33, column: 31, scope: !490)
!496 = !DILocation(line: 33, column: 33, scope: !490)
!497 = !DILocation(line: 33, column: 38, scope: !490)
!498 = !DILocation(line: 33, column: 16, scope: !490)
!499 = !DILocation(line: 33, column: 18, scope: !490)
!500 = !DILocation(line: 33, column: 23, scope: !490)
!501 = !DILocation(line: 34, column: 30, scope: !490)
!502 = !DILocation(line: 34, column: 32, scope: !490)
!503 = !DILocation(line: 34, column: 43, scope: !490)
!504 = !DILocation(line: 34, column: 37, scope: !490)
!505 = !DILocation(line: 34, column: 18, scope: !490)
!506 = !DILocation(line: 34, column: 22, scope: !490)
!507 = !DILocation(line: 35, column: 5, scope: !490)
!508 = !DILocation(line: 38, column: 15, scope: !490)
!509 = !DILocation(line: 38, column: 13, scope: !490)
!510 = !DILocation(line: 39, column: 13, scope: !490)
!511 = !DILocation(line: 40, column: 32, scope: !490)
!512 = !DILocation(line: 40, column: 34, scope: !490)
!513 = !DILocation(line: 40, column: 39, scope: !490)
!514 = !DILocation(line: 40, column: 16, scope: !490)
!515 = !DILocation(line: 40, column: 18, scope: !490)
!516 = !DILocation(line: 40, column: 24, scope: !490)
!517 = !DILocation(line: 41, column: 31, scope: !490)
!518 = !DILocation(line: 41, column: 33, scope: !490)
!519 = !DILocation(line: 41, column: 55, scope: !490)
!520 = !DILocation(line: 41, column: 38, scope: !490)
!521 = !DILocation(line: 41, column: 72, scope: !490)
!522 = !DILocation(line: 41, column: 76, scope: !490)
!523 = !DILocation(line: 41, column: 61, scope: !490)
!524 = !DILocation(line: 41, column: 18, scope: !490)
!525 = !DILocation(line: 41, column: 22, scope: !490)
!526 = !DILocation(line: 43, column: 19, scope: !490)
!527 = !DILocation(line: 43, column: 5, scope: !490)
!528 = !DILocation(line: 0, scope: !490)
!529 = !DILocation(line: 44, column: 1, scope: !490)
!530 = distinct !DISubprogram(name: "__clzdi2", scope: !23, file: !23, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !128)
!531 = !DILocation(line: 25, column: 7, scope: !530)
!532 = !DILocation(line: 25, column: 11, scope: !530)
!533 = !DILocation(line: 26, column: 26, scope: !530)
!534 = !DILocation(line: 26, column: 28, scope: !530)
!535 = !DILocation(line: 26, column: 33, scope: !530)
!536 = !DILocation(line: 27, column: 29, scope: !530)
!537 = !DILocation(line: 27, column: 31, scope: !530)
!538 = !DILocation(line: 27, column: 49, scope: !530)
!539 = !DILocation(line: 27, column: 42, scope: !530)
!540 = !DILocation(line: 27, column: 12, scope: !530)
!541 = !{i32 0, i32 33}
!542 = !DILocation(line: 28, column: 15, scope: !530)
!543 = !DILocation(line: 27, column: 59, scope: !530)
!544 = !DILocation(line: 27, column: 5, scope: !530)
!545 = distinct !DISubprogram(name: "__clzsi2", scope: !25, file: !25, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !128)
!546 = !DILocation(line: 25, column: 34, scope: !545)
!547 = !DILocation(line: 25, column: 40, scope: !545)
!548 = !DILocation(line: 26, column: 14, scope: !545)
!549 = !DILocation(line: 26, column: 7, scope: !545)
!550 = !DILocation(line: 29, column: 13, scope: !545)
!551 = !DILocation(line: 29, column: 23, scope: !545)
!552 = !DILocation(line: 29, column: 29, scope: !545)
!553 = !DILocation(line: 30, column: 13, scope: !545)
!554 = !DILocation(line: 30, column: 7, scope: !545)
!555 = !DILocation(line: 31, column: 7, scope: !545)
!556 = !DILocation(line: 33, column: 13, scope: !545)
!557 = !DILocation(line: 33, column: 21, scope: !545)
!558 = !DILocation(line: 33, column: 27, scope: !545)
!559 = !DILocation(line: 34, column: 13, scope: !545)
!560 = !DILocation(line: 34, column: 7, scope: !545)
!561 = !DILocation(line: 35, column: 7, scope: !545)
!562 = !DILocation(line: 37, column: 13, scope: !545)
!563 = !DILocation(line: 37, column: 20, scope: !545)
!564 = !DILocation(line: 37, column: 26, scope: !545)
!565 = !DILocation(line: 38, column: 13, scope: !545)
!566 = !DILocation(line: 38, column: 7, scope: !545)
!567 = !DILocation(line: 39, column: 7, scope: !545)
!568 = !DILocation(line: 52, column: 20, scope: !545)
!569 = !DILocation(line: 52, column: 37, scope: !545)
!570 = !DILocation(line: 52, column: 25, scope: !545)
!571 = !DILocation(line: 52, column: 14, scope: !545)
!572 = !DILocation(line: 52, column: 5, scope: !545)
!573 = distinct !DISubprogram(name: "__cmpdi2", scope: !29, file: !29, line: 23, type: !127, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !128)
!574 = !DILocation(line: 26, column: 7, scope: !573)
!575 = !DILocation(line: 26, column: 11, scope: !573)
!576 = !DILocation(line: 28, column: 7, scope: !573)
!577 = !DILocation(line: 28, column: 11, scope: !573)
!578 = !DILocation(line: 29, column: 11, scope: !573)
!579 = !DILocation(line: 29, column: 13, scope: !573)
!580 = !DILocation(line: 29, column: 22, scope: !573)
!581 = !DILocation(line: 29, column: 24, scope: !573)
!582 = !DILocation(line: 29, column: 18, scope: !573)
!583 = !DILocation(line: 29, column: 9, scope: !573)
!584 = !DILocation(line: 30, column: 9, scope: !573)
!585 = !DILocation(line: 31, column: 11, scope: !573)
!586 = !DILocation(line: 31, column: 13, scope: !573)
!587 = !DILocation(line: 31, column: 22, scope: !573)
!588 = !DILocation(line: 31, column: 24, scope: !573)
!589 = !DILocation(line: 31, column: 18, scope: !573)
!590 = !DILocation(line: 31, column: 9, scope: !573)
!591 = !DILocation(line: 32, column: 9, scope: !573)
!592 = !DILocation(line: 33, column: 13, scope: !573)
!593 = !DILocation(line: 33, column: 23, scope: !573)
!594 = !DILocation(line: 33, column: 17, scope: !573)
!595 = !DILocation(line: 33, column: 9, scope: !573)
!596 = !DILocation(line: 34, column: 9, scope: !573)
!597 = !DILocation(line: 35, column: 13, scope: !573)
!598 = !DILocation(line: 35, column: 23, scope: !573)
!599 = !DILocation(line: 35, column: 17, scope: !573)
!600 = !DILocation(line: 35, column: 9, scope: !573)
!601 = !DILocation(line: 36, column: 9, scope: !573)
!602 = !DILocation(line: 37, column: 5, scope: !573)
!603 = !DILocation(line: 0, scope: !573)
!604 = !DILocation(line: 38, column: 1, scope: !573)
!605 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !29, file: !29, line: 46, type: !127, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !128)
!606 = !DILocation(line: 48, column: 9, scope: !605)
!607 = !DILocation(line: 48, column: 24, scope: !605)
!608 = !DILocation(line: 48, column: 2, scope: !605)
!609 = distinct !DISubprogram(name: "__ctzdi2", scope: !33, file: !33, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !128)
!610 = !DILocation(line: 25, column: 7, scope: !609)
!611 = !DILocation(line: 25, column: 11, scope: !609)
!612 = !DILocation(line: 26, column: 28, scope: !609)
!613 = !DILocation(line: 26, column: 32, scope: !609)
!614 = !DILocation(line: 27, column: 29, scope: !609)
!615 = !DILocation(line: 27, column: 31, scope: !609)
!616 = !DILocation(line: 27, column: 41, scope: !609)
!617 = !DILocation(line: 27, column: 12, scope: !609)
!618 = !DILocation(line: 28, column: 18, scope: !609)
!619 = !DILocation(line: 27, column: 59, scope: !609)
!620 = !DILocation(line: 27, column: 5, scope: !609)
!621 = distinct !DISubprogram(name: "__ctzsi2", scope: !35, file: !35, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !128)
!622 = !DILocation(line: 25, column: 20, scope: !621)
!623 = !DILocation(line: 25, column: 34, scope: !621)
!624 = !DILocation(line: 25, column: 40, scope: !621)
!625 = !DILocation(line: 26, column: 7, scope: !621)
!626 = !DILocation(line: 29, column: 13, scope: !621)
!627 = !DILocation(line: 29, column: 23, scope: !621)
!628 = !DILocation(line: 29, column: 29, scope: !621)
!629 = !DILocation(line: 30, column: 7, scope: !621)
!630 = !DILocation(line: 31, column: 7, scope: !621)
!631 = !DILocation(line: 33, column: 13, scope: !621)
!632 = !DILocation(line: 33, column: 21, scope: !621)
!633 = !DILocation(line: 33, column: 27, scope: !621)
!634 = !DILocation(line: 34, column: 7, scope: !621)
!635 = !DILocation(line: 35, column: 7, scope: !621)
!636 = !DILocation(line: 37, column: 13, scope: !621)
!637 = !DILocation(line: 37, column: 20, scope: !621)
!638 = !DILocation(line: 37, column: 26, scope: !621)
!639 = !DILocation(line: 38, column: 7, scope: !621)
!640 = !DILocation(line: 40, column: 7, scope: !621)
!641 = !DILocation(line: 56, column: 25, scope: !621)
!642 = !DILocation(line: 56, column: 20, scope: !621)
!643 = !DILocation(line: 56, column: 44, scope: !621)
!644 = !DILocation(line: 56, column: 32, scope: !621)
!645 = !DILocation(line: 56, column: 14, scope: !621)
!646 = !DILocation(line: 56, column: 5, scope: !621)
!647 = distinct !DISubprogram(name: "__divdi3", scope: !39, file: !39, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !128)
!648 = !DILocation(line: 23, column: 20, scope: !647)
!649 = !DILocation(line: 24, column: 20, scope: !647)
!650 = !DILocation(line: 25, column: 12, scope: !647)
!651 = !DILocation(line: 25, column: 19, scope: !647)
!652 = !DILocation(line: 26, column: 12, scope: !647)
!653 = !DILocation(line: 26, column: 19, scope: !647)
!654 = !DILocation(line: 27, column: 9, scope: !647)
!655 = !DILocation(line: 28, column: 13, scope: !647)
!656 = !DILocation(line: 28, column: 44, scope: !647)
!657 = !DILocation(line: 28, column: 51, scope: !647)
!658 = !DILocation(line: 28, column: 5, scope: !647)
!659 = distinct !DISubprogram(name: "__udivmoddi4", scope: !97, file: !97, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !128)
!660 = !DILocation(line: 29, column: 7, scope: !659)
!661 = !DILocation(line: 29, column: 11, scope: !659)
!662 = !DILocation(line: 31, column: 7, scope: !659)
!663 = !DILocation(line: 31, column: 11, scope: !659)
!664 = !DILocation(line: 36, column: 11, scope: !659)
!665 = !DILocation(line: 36, column: 13, scope: !659)
!666 = !DILocation(line: 36, column: 18, scope: !659)
!667 = !DILocation(line: 36, column: 9, scope: !659)
!668 = !DILocation(line: 38, column: 15, scope: !659)
!669 = !DILocation(line: 38, column: 17, scope: !659)
!670 = !DILocation(line: 38, column: 22, scope: !659)
!671 = !DILocation(line: 38, column: 13, scope: !659)
!672 = !DILocation(line: 44, column: 17, scope: !659)
!673 = !DILocation(line: 45, column: 28, scope: !659)
!674 = !DILocation(line: 45, column: 38, scope: !659)
!675 = !DILocation(line: 45, column: 32, scope: !659)
!676 = !DILocation(line: 45, column: 24, scope: !659)
!677 = !DILocation(line: 45, column: 22, scope: !659)
!678 = !DILocation(line: 45, column: 17, scope: !659)
!679 = !DILocation(line: 46, column: 24, scope: !659)
!680 = !DILocation(line: 46, column: 34, scope: !659)
!681 = !DILocation(line: 46, column: 28, scope: !659)
!682 = !DILocation(line: 46, column: 20, scope: !659)
!683 = !DILocation(line: 46, column: 13, scope: !659)
!684 = !DILocation(line: 52, column: 13, scope: !659)
!685 = !DILocation(line: 53, column: 24, scope: !659)
!686 = !DILocation(line: 53, column: 20, scope: !659)
!687 = !DILocation(line: 53, column: 18, scope: !659)
!688 = !DILocation(line: 53, column: 13, scope: !659)
!689 = !DILocation(line: 54, column: 9, scope: !659)
!690 = !DILocation(line: 57, column: 13, scope: !659)
!691 = !DILocation(line: 57, column: 17, scope: !659)
!692 = !DILocation(line: 57, column: 9, scope: !659)
!693 = !DILocation(line: 59, column: 15, scope: !659)
!694 = !DILocation(line: 59, column: 17, scope: !659)
!695 = !DILocation(line: 59, column: 22, scope: !659)
!696 = !DILocation(line: 59, column: 13, scope: !659)
!697 = !DILocation(line: 65, column: 17, scope: !659)
!698 = !DILocation(line: 66, column: 26, scope: !659)
!699 = !DILocation(line: 66, column: 28, scope: !659)
!700 = !DILocation(line: 66, column: 39, scope: !659)
!701 = !DILocation(line: 66, column: 33, scope: !659)
!702 = !DILocation(line: 66, column: 24, scope: !659)
!703 = !DILocation(line: 66, column: 22, scope: !659)
!704 = !DILocation(line: 66, column: 17, scope: !659)
!705 = !DILocation(line: 67, column: 22, scope: !659)
!706 = !DILocation(line: 67, column: 24, scope: !659)
!707 = !DILocation(line: 67, column: 35, scope: !659)
!708 = !DILocation(line: 67, column: 29, scope: !659)
!709 = !DILocation(line: 67, column: 20, scope: !659)
!710 = !DILocation(line: 67, column: 13, scope: !659)
!711 = !DILocation(line: 70, column: 17, scope: !659)
!712 = !DILocation(line: 70, column: 21, scope: !659)
!713 = !DILocation(line: 70, column: 13, scope: !659)
!714 = !DILocation(line: 76, column: 17, scope: !659)
!715 = !DILocation(line: 78, column: 30, scope: !659)
!716 = !DILocation(line: 78, column: 32, scope: !659)
!717 = !DILocation(line: 78, column: 41, scope: !659)
!718 = !DILocation(line: 78, column: 43, scope: !659)
!719 = !DILocation(line: 78, column: 37, scope: !659)
!720 = !DILocation(line: 78, column: 19, scope: !659)
!721 = !DILocation(line: 78, column: 21, scope: !659)
!722 = !DILocation(line: 78, column: 26, scope: !659)
!723 = !DILocation(line: 79, column: 21, scope: !659)
!724 = !DILocation(line: 79, column: 25, scope: !659)
!725 = !DILocation(line: 80, column: 26, scope: !659)
!726 = !DILocation(line: 80, column: 22, scope: !659)
!727 = !DILocation(line: 81, column: 13, scope: !659)
!728 = !DILocation(line: 82, column: 22, scope: !659)
!729 = !DILocation(line: 82, column: 24, scope: !659)
!730 = !DILocation(line: 82, column: 33, scope: !659)
!731 = !DILocation(line: 82, column: 35, scope: !659)
!732 = !DILocation(line: 82, column: 29, scope: !659)
!733 = !DILocation(line: 82, column: 20, scope: !659)
!734 = !DILocation(line: 82, column: 13, scope: !659)
!735 = !DILocation(line: 88, column: 16, scope: !659)
!736 = !DILocation(line: 88, column: 18, scope: !659)
!737 = !DILocation(line: 88, column: 28, scope: !659)
!738 = !DILocation(line: 88, column: 30, scope: !659)
!739 = !DILocation(line: 88, column: 35, scope: !659)
!740 = !DILocation(line: 88, column: 23, scope: !659)
!741 = !DILocation(line: 88, column: 41, scope: !659)
!742 = !DILocation(line: 88, column: 13, scope: !659)
!743 = !DILocation(line: 90, column: 17, scope: !659)
!744 = !DILocation(line: 92, column: 31, scope: !659)
!745 = !DILocation(line: 92, column: 21, scope: !659)
!746 = !DILocation(line: 92, column: 25, scope: !659)
!747 = !DILocation(line: 93, column: 30, scope: !659)
!748 = !DILocation(line: 93, column: 32, scope: !659)
!749 = !DILocation(line: 93, column: 42, scope: !659)
!750 = !DILocation(line: 93, column: 44, scope: !659)
!751 = !DILocation(line: 93, column: 49, scope: !659)
!752 = !DILocation(line: 93, column: 37, scope: !659)
!753 = !DILocation(line: 93, column: 19, scope: !659)
!754 = !DILocation(line: 93, column: 21, scope: !659)
!755 = !DILocation(line: 93, column: 26, scope: !659)
!756 = !DILocation(line: 94, column: 26, scope: !659)
!757 = !DILocation(line: 94, column: 22, scope: !659)
!758 = !DILocation(line: 95, column: 13, scope: !659)
!759 = !DILocation(line: 96, column: 22, scope: !659)
!760 = !DILocation(line: 96, column: 24, scope: !659)
!761 = !DILocation(line: 96, column: 48, scope: !659)
!762 = !DILocation(line: 96, column: 50, scope: !659)
!763 = !DILocation(line: 96, column: 32, scope: !659)
!764 = !DILocation(line: 96, column: 29, scope: !659)
!765 = !DILocation(line: 96, column: 20, scope: !659)
!766 = !DILocation(line: 96, column: 13, scope: !659)
!767 = !DILocation(line: 102, column: 30, scope: !659)
!768 = !DILocation(line: 102, column: 32, scope: !659)
!769 = !DILocation(line: 102, column: 14, scope: !659)
!770 = !DILocation(line: 102, column: 56, scope: !659)
!771 = !DILocation(line: 102, column: 58, scope: !659)
!772 = !DILocation(line: 102, column: 40, scope: !659)
!773 = !DILocation(line: 102, column: 38, scope: !659)
!774 = !DILocation(line: 104, column: 16, scope: !659)
!775 = !DILocation(line: 104, column: 13, scope: !659)
!776 = !DILocation(line: 106, column: 16, scope: !659)
!777 = !DILocation(line: 107, column: 26, scope: !659)
!778 = !DILocation(line: 107, column: 22, scope: !659)
!779 = !DILocation(line: 107, column: 17, scope: !659)
!780 = !DILocation(line: 108, column: 13, scope: !659)
!781 = !DILocation(line: 110, column: 9, scope: !659)
!782 = !DILocation(line: 113, column: 13, scope: !659)
!783 = !DILocation(line: 113, column: 17, scope: !659)
!784 = !DILocation(line: 114, column: 24, scope: !659)
!785 = !DILocation(line: 114, column: 45, scope: !659)
!786 = !DILocation(line: 114, column: 28, scope: !659)
!787 = !DILocation(line: 114, column: 11, scope: !659)
!788 = !DILocation(line: 114, column: 13, scope: !659)
!789 = !DILocation(line: 114, column: 18, scope: !659)
!790 = !DILocation(line: 116, column: 22, scope: !659)
!791 = !DILocation(line: 116, column: 24, scope: !659)
!792 = !DILocation(line: 116, column: 29, scope: !659)
!793 = !DILocation(line: 116, column: 11, scope: !659)
!794 = !DILocation(line: 116, column: 13, scope: !659)
!795 = !DILocation(line: 116, column: 18, scope: !659)
!796 = !DILocation(line: 117, column: 22, scope: !659)
!797 = !DILocation(line: 117, column: 24, scope: !659)
!798 = !DILocation(line: 117, column: 46, scope: !659)
!799 = !DILocation(line: 117, column: 29, scope: !659)
!800 = !DILocation(line: 117, column: 60, scope: !659)
!801 = !DILocation(line: 117, column: 64, scope: !659)
!802 = !DILocation(line: 117, column: 53, scope: !659)
!803 = !DILocation(line: 117, column: 13, scope: !659)
!804 = !DILocation(line: 117, column: 17, scope: !659)
!805 = !DILocation(line: 118, column: 5, scope: !659)
!806 = !DILocation(line: 121, column: 15, scope: !659)
!807 = !DILocation(line: 121, column: 17, scope: !659)
!808 = !DILocation(line: 121, column: 22, scope: !659)
!809 = !DILocation(line: 121, column: 13, scope: !659)
!810 = !DILocation(line: 127, column: 22, scope: !659)
!811 = !DILocation(line: 127, column: 43, scope: !659)
!812 = !DILocation(line: 127, column: 17, scope: !659)
!813 = !DILocation(line: 129, column: 21, scope: !659)
!814 = !DILocation(line: 130, column: 32, scope: !659)
!815 = !DILocation(line: 130, column: 43, scope: !659)
!816 = !DILocation(line: 130, column: 47, scope: !659)
!817 = !DILocation(line: 130, column: 36, scope: !659)
!818 = !DILocation(line: 130, column: 28, scope: !659)
!819 = !DILocation(line: 130, column: 26, scope: !659)
!820 = !DILocation(line: 130, column: 21, scope: !659)
!821 = !DILocation(line: 131, column: 25, scope: !659)
!822 = !DILocation(line: 131, column: 29, scope: !659)
!823 = !DILocation(line: 131, column: 21, scope: !659)
!824 = !DILocation(line: 132, column: 30, scope: !659)
!825 = !DILocation(line: 132, column: 21, scope: !659)
!826 = !DILocation(line: 133, column: 40, scope: !659)
!827 = !DILocation(line: 133, column: 22, scope: !659)
!828 = !DILocation(line: 134, column: 30, scope: !659)
!829 = !DILocation(line: 134, column: 32, scope: !659)
!830 = !DILocation(line: 134, column: 37, scope: !659)
!831 = !DILocation(line: 134, column: 19, scope: !659)
!832 = !DILocation(line: 134, column: 21, scope: !659)
!833 = !DILocation(line: 134, column: 26, scope: !659)
!834 = !DILocation(line: 135, column: 30, scope: !659)
!835 = !DILocation(line: 135, column: 32, scope: !659)
!836 = !DILocation(line: 135, column: 54, scope: !659)
!837 = !DILocation(line: 135, column: 37, scope: !659)
!838 = !DILocation(line: 135, column: 68, scope: !659)
!839 = !DILocation(line: 135, column: 72, scope: !659)
!840 = !DILocation(line: 135, column: 61, scope: !659)
!841 = !DILocation(line: 135, column: 21, scope: !659)
!842 = !DILocation(line: 135, column: 25, scope: !659)
!843 = !DILocation(line: 136, column: 26, scope: !659)
!844 = !DILocation(line: 136, column: 17, scope: !659)
!845 = !DILocation(line: 142, column: 55, scope: !659)
!846 = !DILocation(line: 142, column: 37, scope: !659)
!847 = !DILocation(line: 142, column: 35, scope: !659)
!848 = !DILocation(line: 142, column: 78, scope: !659)
!849 = !DILocation(line: 142, column: 80, scope: !659)
!850 = !DILocation(line: 142, column: 62, scope: !659)
!851 = !DILocation(line: 142, column: 60, scope: !659)
!852 = !DILocation(line: 147, column: 20, scope: !659)
!853 = !DILocation(line: 147, column: 17, scope: !659)
!854 = !DILocation(line: 149, column: 21, scope: !659)
!855 = !DILocation(line: 149, column: 25, scope: !659)
!856 = !DILocation(line: 150, column: 32, scope: !659)
!857 = !DILocation(line: 150, column: 19, scope: !659)
!858 = !DILocation(line: 150, column: 21, scope: !659)
!859 = !DILocation(line: 150, column: 26, scope: !659)
!860 = !DILocation(line: 151, column: 19, scope: !659)
!861 = !DILocation(line: 151, column: 21, scope: !659)
!862 = !DILocation(line: 151, column: 26, scope: !659)
!863 = !DILocation(line: 152, column: 29, scope: !659)
!864 = !DILocation(line: 152, column: 31, scope: !659)
!865 = !DILocation(line: 152, column: 21, scope: !659)
!866 = !DILocation(line: 152, column: 25, scope: !659)
!867 = !DILocation(line: 153, column: 13, scope: !659)
!868 = !DILocation(line: 154, column: 25, scope: !659)
!869 = !DILocation(line: 154, column: 22, scope: !659)
!870 = !DILocation(line: 156, column: 21, scope: !659)
!871 = !DILocation(line: 156, column: 25, scope: !659)
!872 = !DILocation(line: 157, column: 32, scope: !659)
!873 = !DILocation(line: 157, column: 53, scope: !659)
!874 = !DILocation(line: 157, column: 36, scope: !659)
!875 = !DILocation(line: 157, column: 19, scope: !659)
!876 = !DILocation(line: 157, column: 21, scope: !659)
!877 = !DILocation(line: 157, column: 26, scope: !659)
!878 = !DILocation(line: 158, column: 30, scope: !659)
!879 = !DILocation(line: 158, column: 32, scope: !659)
!880 = !DILocation(line: 158, column: 37, scope: !659)
!881 = !DILocation(line: 158, column: 19, scope: !659)
!882 = !DILocation(line: 158, column: 21, scope: !659)
!883 = !DILocation(line: 158, column: 26, scope: !659)
!884 = !DILocation(line: 159, column: 30, scope: !659)
!885 = !DILocation(line: 159, column: 32, scope: !659)
!886 = !DILocation(line: 159, column: 54, scope: !659)
!887 = !DILocation(line: 159, column: 37, scope: !659)
!888 = !DILocation(line: 159, column: 68, scope: !659)
!889 = !DILocation(line: 159, column: 72, scope: !659)
!890 = !DILocation(line: 159, column: 61, scope: !659)
!891 = !DILocation(line: 159, column: 21, scope: !659)
!892 = !DILocation(line: 159, column: 25, scope: !659)
!893 = !DILocation(line: 160, column: 13, scope: !659)
!894 = !DILocation(line: 163, column: 31, scope: !659)
!895 = !DILocation(line: 163, column: 53, scope: !659)
!896 = !DILocation(line: 163, column: 35, scope: !659)
!897 = !DILocation(line: 163, column: 21, scope: !659)
!898 = !DILocation(line: 163, column: 25, scope: !659)
!899 = !DILocation(line: 164, column: 31, scope: !659)
!900 = !DILocation(line: 164, column: 33, scope: !659)
!901 = !DILocation(line: 164, column: 56, scope: !659)
!902 = !DILocation(line: 164, column: 38, scope: !659)
!903 = !DILocation(line: 165, column: 33, scope: !659)
!904 = !DILocation(line: 165, column: 44, scope: !659)
!905 = !DILocation(line: 165, column: 37, scope: !659)
!906 = !DILocation(line: 164, column: 63, scope: !659)
!907 = !DILocation(line: 164, column: 19, scope: !659)
!908 = !DILocation(line: 164, column: 21, scope: !659)
!909 = !DILocation(line: 164, column: 26, scope: !659)
!910 = !DILocation(line: 166, column: 19, scope: !659)
!911 = !DILocation(line: 166, column: 21, scope: !659)
!912 = !DILocation(line: 166, column: 26, scope: !659)
!913 = !DILocation(line: 167, column: 29, scope: !659)
!914 = !DILocation(line: 167, column: 31, scope: !659)
!915 = !DILocation(line: 167, column: 43, scope: !659)
!916 = !DILocation(line: 167, column: 36, scope: !659)
!917 = !DILocation(line: 167, column: 21, scope: !659)
!918 = !DILocation(line: 167, column: 25, scope: !659)
!919 = !DILocation(line: 169, column: 9, scope: !659)
!920 = !DILocation(line: 176, column: 34, scope: !659)
!921 = !DILocation(line: 176, column: 36, scope: !659)
!922 = !DILocation(line: 176, column: 18, scope: !659)
!923 = !DILocation(line: 176, column: 60, scope: !659)
!924 = !DILocation(line: 176, column: 62, scope: !659)
!925 = !DILocation(line: 176, column: 44, scope: !659)
!926 = !DILocation(line: 176, column: 42, scope: !659)
!927 = !DILocation(line: 178, column: 20, scope: !659)
!928 = !DILocation(line: 178, column: 17, scope: !659)
!929 = !DILocation(line: 180, column: 21, scope: !659)
!930 = !DILocation(line: 181, column: 30, scope: !659)
!931 = !DILocation(line: 181, column: 26, scope: !659)
!932 = !DILocation(line: 181, column: 21, scope: !659)
!933 = !DILocation(line: 182, column: 17, scope: !659)
!934 = !DILocation(line: 184, column: 13, scope: !659)
!935 = !DILocation(line: 187, column: 17, scope: !659)
!936 = !DILocation(line: 187, column: 21, scope: !659)
!937 = !DILocation(line: 188, column: 20, scope: !659)
!938 = !DILocation(line: 188, column: 17, scope: !659)
!939 = !DILocation(line: 190, column: 32, scope: !659)
!940 = !DILocation(line: 190, column: 19, scope: !659)
!941 = !DILocation(line: 190, column: 21, scope: !659)
!942 = !DILocation(line: 190, column: 26, scope: !659)
!943 = !DILocation(line: 191, column: 19, scope: !659)
!944 = !DILocation(line: 191, column: 21, scope: !659)
!945 = !DILocation(line: 191, column: 26, scope: !659)
!946 = !DILocation(line: 192, column: 29, scope: !659)
!947 = !DILocation(line: 192, column: 31, scope: !659)
!948 = !DILocation(line: 192, column: 21, scope: !659)
!949 = !DILocation(line: 192, column: 25, scope: !659)
!950 = !DILocation(line: 193, column: 13, scope: !659)
!951 = !DILocation(line: 196, column: 32, scope: !659)
!952 = !DILocation(line: 196, column: 53, scope: !659)
!953 = !DILocation(line: 196, column: 36, scope: !659)
!954 = !DILocation(line: 196, column: 19, scope: !659)
!955 = !DILocation(line: 196, column: 21, scope: !659)
!956 = !DILocation(line: 196, column: 26, scope: !659)
!957 = !DILocation(line: 197, column: 30, scope: !659)
!958 = !DILocation(line: 197, column: 32, scope: !659)
!959 = !DILocation(line: 197, column: 37, scope: !659)
!960 = !DILocation(line: 197, column: 19, scope: !659)
!961 = !DILocation(line: 197, column: 21, scope: !659)
!962 = !DILocation(line: 197, column: 26, scope: !659)
!963 = !DILocation(line: 198, column: 30, scope: !659)
!964 = !DILocation(line: 198, column: 32, scope: !659)
!965 = !DILocation(line: 198, column: 54, scope: !659)
!966 = !DILocation(line: 198, column: 37, scope: !659)
!967 = !DILocation(line: 198, column: 68, scope: !659)
!968 = !DILocation(line: 198, column: 72, scope: !659)
!969 = !DILocation(line: 198, column: 61, scope: !659)
!970 = !DILocation(line: 198, column: 21, scope: !659)
!971 = !DILocation(line: 198, column: 25, scope: !659)
!972 = !DILocation(line: 0, scope: !659)
!973 = !DILocation(line: 209, column: 5, scope: !659)
!974 = !DILocation(line: 209, column: 15, scope: !659)
!975 = !DILocation(line: 212, column: 23, scope: !659)
!976 = !DILocation(line: 212, column: 25, scope: !659)
!977 = !DILocation(line: 212, column: 43, scope: !659)
!978 = !DILocation(line: 212, column: 36, scope: !659)
!979 = !DILocation(line: 212, column: 11, scope: !659)
!980 = !DILocation(line: 212, column: 13, scope: !659)
!981 = !DILocation(line: 212, column: 18, scope: !659)
!982 = !DILocation(line: 213, column: 41, scope: !659)
!983 = !DILocation(line: 213, column: 43, scope: !659)
!984 = !DILocation(line: 213, column: 36, scope: !659)
!985 = !DILocation(line: 213, column: 13, scope: !659)
!986 = !DILocation(line: 213, column: 18, scope: !659)
!987 = !DILocation(line: 214, column: 23, scope: !659)
!988 = !DILocation(line: 214, column: 25, scope: !659)
!989 = !DILocation(line: 214, column: 43, scope: !659)
!990 = !DILocation(line: 214, column: 36, scope: !659)
!991 = !DILocation(line: 214, column: 11, scope: !659)
!992 = !DILocation(line: 214, column: 13, scope: !659)
!993 = !DILocation(line: 214, column: 18, scope: !659)
!994 = !DILocation(line: 215, column: 30, scope: !659)
!995 = !DILocation(line: 215, column: 36, scope: !659)
!996 = !DILocation(line: 215, column: 13, scope: !659)
!997 = !DILocation(line: 215, column: 18, scope: !659)
!998 = !DILocation(line: 223, column: 37, scope: !659)
!999 = !DILocation(line: 223, column: 45, scope: !659)
!1000 = !DILocation(line: 223, column: 49, scope: !659)
!1001 = !DILocation(line: 225, column: 24, scope: !659)
!1002 = !DILocation(line: 225, column: 11, scope: !659)
!1003 = !DILocation(line: 225, column: 15, scope: !659)
!1004 = !DILocation(line: 226, column: 5, scope: !659)
!1005 = !DILocation(line: 224, column: 19, scope: !659)
!1006 = !DILocation(line: 224, column: 17, scope: !659)
!1007 = !DILocation(line: 209, column: 20, scope: !659)
!1008 = distinct !{!1008, !973, !1004, !146}
!1009 = !DILocation(line: 227, column: 16, scope: !659)
!1010 = !DILocation(line: 227, column: 20, scope: !659)
!1011 = !DILocation(line: 227, column: 28, scope: !659)
!1012 = !DILocation(line: 227, column: 26, scope: !659)
!1013 = !DILocation(line: 227, column: 7, scope: !659)
!1014 = !DILocation(line: 227, column: 11, scope: !659)
!1015 = !DILocation(line: 228, column: 9, scope: !659)
!1016 = !DILocation(line: 229, column: 18, scope: !659)
!1017 = !DILocation(line: 229, column: 14, scope: !659)
!1018 = !DILocation(line: 229, column: 9, scope: !659)
!1019 = !DILocation(line: 230, column: 14, scope: !659)
!1020 = !DILocation(line: 230, column: 5, scope: !659)
!1021 = !DILocation(line: 231, column: 1, scope: !659)
!1022 = distinct !DISubprogram(name: "__divmoddi4", scope: !41, file: !41, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !128)
!1023 = !DILocation(line: 22, column: 14, scope: !1022)
!1024 = !DILocation(line: 23, column: 16, scope: !1022)
!1025 = !DILocation(line: 23, column: 12, scope: !1022)
!1026 = !DILocation(line: 23, column: 8, scope: !1022)
!1027 = !DILocation(line: 24, column: 3, scope: !1022)
!1028 = distinct !DISubprogram(name: "__divmodsi4", scope: !43, file: !43, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !128)
!1029 = !DILocation(line: 22, column: 14, scope: !1028)
!1030 = !DILocation(line: 23, column: 16, scope: !1028)
!1031 = !DILocation(line: 23, column: 12, scope: !1028)
!1032 = !DILocation(line: 23, column: 8, scope: !1028)
!1033 = !DILocation(line: 24, column: 3, scope: !1028)
!1034 = distinct !DISubprogram(name: "__divsi3", scope: !45, file: !45, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !128)
!1035 = !DILocation(line: 25, column: 20, scope: !1034)
!1036 = !DILocation(line: 26, column: 20, scope: !1034)
!1037 = !DILocation(line: 27, column: 12, scope: !1034)
!1038 = !DILocation(line: 27, column: 19, scope: !1034)
!1039 = !DILocation(line: 28, column: 12, scope: !1034)
!1040 = !DILocation(line: 28, column: 19, scope: !1034)
!1041 = !DILocation(line: 29, column: 9, scope: !1034)
!1042 = !DILocation(line: 36, column: 22, scope: !1034)
!1043 = !DILocation(line: 36, column: 33, scope: !1034)
!1044 = !DILocation(line: 36, column: 40, scope: !1034)
!1045 = !DILocation(line: 36, column: 5, scope: !1034)
!1046 = distinct !DISubprogram(name: "__ffsdi2", scope: !49, file: !49, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !128)
!1047 = !DILocation(line: 25, column: 7, scope: !1046)
!1048 = !DILocation(line: 25, column: 11, scope: !1046)
!1049 = !DILocation(line: 26, column: 13, scope: !1046)
!1050 = !DILocation(line: 26, column: 17, scope: !1046)
!1051 = !DILocation(line: 26, column: 9, scope: !1046)
!1052 = !DILocation(line: 28, column: 15, scope: !1046)
!1053 = !DILocation(line: 28, column: 17, scope: !1046)
!1054 = !DILocation(line: 28, column: 22, scope: !1046)
!1055 = !DILocation(line: 28, column: 13, scope: !1046)
!1056 = !DILocation(line: 29, column: 13, scope: !1046)
!1057 = !DILocation(line: 30, column: 32, scope: !1046)
!1058 = !DILocation(line: 30, column: 34, scope: !1046)
!1059 = !DILocation(line: 30, column: 16, scope: !1046)
!1060 = !DILocation(line: 30, column: 40, scope: !1046)
!1061 = !DILocation(line: 30, column: 9, scope: !1046)
!1062 = !DILocation(line: 32, column: 30, scope: !1046)
!1063 = !DILocation(line: 32, column: 12, scope: !1046)
!1064 = !DILocation(line: 32, column: 35, scope: !1046)
!1065 = !DILocation(line: 32, column: 5, scope: !1046)
!1066 = !DILocation(line: 0, scope: !1046)
!1067 = !DILocation(line: 33, column: 1, scope: !1046)
!1068 = distinct !DISubprogram(name: "__ffssi2", scope: !51, file: !51, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !128)
!1069 = !DILocation(line: 24, column: 11, scope: !1068)
!1070 = !DILocation(line: 24, column: 9, scope: !1068)
!1071 = !DILocation(line: 26, column: 9, scope: !1068)
!1072 = !DILocation(line: 28, column: 12, scope: !1068)
!1073 = !DILocation(line: 28, column: 29, scope: !1068)
!1074 = !DILocation(line: 28, column: 5, scope: !1068)
!1075 = !DILocation(line: 0, scope: !1068)
!1076 = !DILocation(line: 29, column: 1, scope: !1068)
!1077 = distinct !DISubprogram(name: "__lshrdi3", scope: !57, file: !57, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !128)
!1078 = !DILocation(line: 29, column: 11, scope: !1077)
!1079 = !DILocation(line: 29, column: 15, scope: !1077)
!1080 = !DILocation(line: 30, column: 11, scope: !1077)
!1081 = !DILocation(line: 30, column: 9, scope: !1077)
!1082 = !DILocation(line: 32, column: 16, scope: !1077)
!1083 = !DILocation(line: 32, column: 18, scope: !1077)
!1084 = !DILocation(line: 32, column: 23, scope: !1077)
!1085 = !DILocation(line: 33, column: 30, scope: !1077)
!1086 = !DILocation(line: 33, column: 32, scope: !1077)
!1087 = !DILocation(line: 33, column: 43, scope: !1077)
!1088 = !DILocation(line: 33, column: 37, scope: !1077)
!1089 = !DILocation(line: 33, column: 18, scope: !1077)
!1090 = !DILocation(line: 33, column: 22, scope: !1077)
!1091 = !DILocation(line: 34, column: 5, scope: !1077)
!1092 = !DILocation(line: 37, column: 15, scope: !1077)
!1093 = !DILocation(line: 37, column: 13, scope: !1077)
!1094 = !DILocation(line: 38, column: 13, scope: !1077)
!1095 = !DILocation(line: 39, column: 32, scope: !1077)
!1096 = !DILocation(line: 39, column: 34, scope: !1077)
!1097 = !DILocation(line: 39, column: 39, scope: !1077)
!1098 = !DILocation(line: 39, column: 16, scope: !1077)
!1099 = !DILocation(line: 39, column: 18, scope: !1077)
!1100 = !DILocation(line: 39, column: 24, scope: !1077)
!1101 = !DILocation(line: 40, column: 31, scope: !1077)
!1102 = !DILocation(line: 40, column: 33, scope: !1077)
!1103 = !DILocation(line: 40, column: 55, scope: !1077)
!1104 = !DILocation(line: 40, column: 38, scope: !1077)
!1105 = !DILocation(line: 40, column: 72, scope: !1077)
!1106 = !DILocation(line: 40, column: 76, scope: !1077)
!1107 = !DILocation(line: 40, column: 61, scope: !1077)
!1108 = !DILocation(line: 40, column: 18, scope: !1077)
!1109 = !DILocation(line: 40, column: 22, scope: !1077)
!1110 = !DILocation(line: 42, column: 19, scope: !1077)
!1111 = !DILocation(line: 42, column: 5, scope: !1077)
!1112 = !DILocation(line: 0, scope: !1077)
!1113 = !DILocation(line: 43, column: 1, scope: !1077)
!1114 = distinct !DISubprogram(name: "__moddi3", scope: !61, file: !61, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !128)
!1115 = !DILocation(line: 24, column: 17, scope: !1114)
!1116 = !DILocation(line: 25, column: 11, scope: !1114)
!1117 = !DILocation(line: 26, column: 12, scope: !1114)
!1118 = !DILocation(line: 26, column: 17, scope: !1114)
!1119 = !DILocation(line: 28, column: 5, scope: !1114)
!1120 = !DILocation(line: 29, column: 21, scope: !1114)
!1121 = !DILocation(line: 29, column: 23, scope: !1114)
!1122 = !DILocation(line: 29, column: 28, scope: !1114)
!1123 = !DILocation(line: 29, column: 5, scope: !1114)
!1124 = distinct !DISubprogram(name: "__modsi3", scope: !63, file: !63, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !128)
!1125 = !DILocation(line: 22, column: 16, scope: !1124)
!1126 = !DILocation(line: 22, column: 31, scope: !1124)
!1127 = !DILocation(line: 22, column: 14, scope: !1124)
!1128 = !DILocation(line: 22, column: 5, scope: !1124)
!1129 = distinct !DISubprogram(name: "__mulvdi3", scope: !67, file: !67, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !128)
!1130 = !DILocation(line: 27, column: 11, scope: !1129)
!1131 = !DILocation(line: 27, column: 9, scope: !1129)
!1132 = !DILocation(line: 29, column: 15, scope: !1129)
!1133 = !DILocation(line: 29, column: 20, scope: !1129)
!1134 = !DILocation(line: 29, column: 25, scope: !1129)
!1135 = !DILocation(line: 29, column: 13, scope: !1129)
!1136 = !DILocation(line: 30, column: 13, scope: !1129)
!1137 = !DILocation(line: 31, column: 9, scope: !1129)
!1138 = !DILocation(line: 33, column: 11, scope: !1129)
!1139 = !DILocation(line: 33, column: 9, scope: !1129)
!1140 = !DILocation(line: 35, column: 15, scope: !1129)
!1141 = !DILocation(line: 35, column: 20, scope: !1129)
!1142 = !DILocation(line: 35, column: 25, scope: !1129)
!1143 = !DILocation(line: 35, column: 13, scope: !1129)
!1144 = !DILocation(line: 36, column: 13, scope: !1129)
!1145 = !DILocation(line: 37, column: 9, scope: !1129)
!1146 = !DILocation(line: 39, column: 19, scope: !1129)
!1147 = !DILocation(line: 40, column: 23, scope: !1129)
!1148 = !DILocation(line: 40, column: 29, scope: !1129)
!1149 = !DILocation(line: 41, column: 19, scope: !1129)
!1150 = !DILocation(line: 42, column: 23, scope: !1129)
!1151 = !DILocation(line: 42, column: 29, scope: !1129)
!1152 = !DILocation(line: 43, column: 15, scope: !1129)
!1153 = !DILocation(line: 43, column: 19, scope: !1129)
!1154 = !DILocation(line: 43, column: 28, scope: !1129)
!1155 = !DILocation(line: 43, column: 9, scope: !1129)
!1156 = !DILocation(line: 44, column: 9, scope: !1129)
!1157 = !DILocation(line: 45, column: 12, scope: !1129)
!1158 = !DILocation(line: 45, column: 9, scope: !1129)
!1159 = !DILocation(line: 47, column: 25, scope: !1129)
!1160 = !DILocation(line: 47, column: 19, scope: !1129)
!1161 = !DILocation(line: 47, column: 13, scope: !1129)
!1162 = !DILocation(line: 48, column: 13, scope: !1129)
!1163 = !DILocation(line: 49, column: 5, scope: !1129)
!1164 = !DILocation(line: 52, column: 27, scope: !1129)
!1165 = !DILocation(line: 52, column: 25, scope: !1129)
!1166 = !DILocation(line: 52, column: 19, scope: !1129)
!1167 = !DILocation(line: 52, column: 13, scope: !1129)
!1168 = !DILocation(line: 53, column: 13, scope: !1129)
!1169 = !DILocation(line: 55, column: 5, scope: !1129)
!1170 = !DILocation(line: 0, scope: !1129)
!1171 = !DILocation(line: 56, column: 1, scope: !1129)
!1172 = distinct !DISubprogram(name: "__mulvsi3", scope: !69, file: !69, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !128)
!1173 = !DILocation(line: 27, column: 11, scope: !1172)
!1174 = !DILocation(line: 27, column: 9, scope: !1172)
!1175 = !DILocation(line: 29, column: 15, scope: !1172)
!1176 = !DILocation(line: 29, column: 20, scope: !1172)
!1177 = !DILocation(line: 29, column: 25, scope: !1172)
!1178 = !DILocation(line: 29, column: 13, scope: !1172)
!1179 = !DILocation(line: 30, column: 13, scope: !1172)
!1180 = !DILocation(line: 31, column: 9, scope: !1172)
!1181 = !DILocation(line: 33, column: 11, scope: !1172)
!1182 = !DILocation(line: 33, column: 9, scope: !1172)
!1183 = !DILocation(line: 35, column: 15, scope: !1172)
!1184 = !DILocation(line: 35, column: 20, scope: !1172)
!1185 = !DILocation(line: 35, column: 25, scope: !1172)
!1186 = !DILocation(line: 35, column: 13, scope: !1172)
!1187 = !DILocation(line: 36, column: 13, scope: !1172)
!1188 = !DILocation(line: 37, column: 9, scope: !1172)
!1189 = !DILocation(line: 39, column: 19, scope: !1172)
!1190 = !DILocation(line: 40, column: 23, scope: !1172)
!1191 = !DILocation(line: 40, column: 29, scope: !1172)
!1192 = !DILocation(line: 41, column: 19, scope: !1172)
!1193 = !DILocation(line: 42, column: 23, scope: !1172)
!1194 = !DILocation(line: 42, column: 29, scope: !1172)
!1195 = !DILocation(line: 43, column: 15, scope: !1172)
!1196 = !DILocation(line: 43, column: 19, scope: !1172)
!1197 = !DILocation(line: 43, column: 28, scope: !1172)
!1198 = !DILocation(line: 43, column: 9, scope: !1172)
!1199 = !DILocation(line: 44, column: 9, scope: !1172)
!1200 = !DILocation(line: 45, column: 12, scope: !1172)
!1201 = !DILocation(line: 45, column: 9, scope: !1172)
!1202 = !DILocation(line: 47, column: 25, scope: !1172)
!1203 = !DILocation(line: 47, column: 19, scope: !1172)
!1204 = !DILocation(line: 47, column: 13, scope: !1172)
!1205 = !DILocation(line: 48, column: 13, scope: !1172)
!1206 = !DILocation(line: 49, column: 5, scope: !1172)
!1207 = !DILocation(line: 52, column: 27, scope: !1172)
!1208 = !DILocation(line: 52, column: 25, scope: !1172)
!1209 = !DILocation(line: 52, column: 19, scope: !1172)
!1210 = !DILocation(line: 52, column: 13, scope: !1172)
!1211 = !DILocation(line: 53, column: 13, scope: !1172)
!1212 = !DILocation(line: 55, column: 5, scope: !1172)
!1213 = !DILocation(line: 0, scope: !1172)
!1214 = !DILocation(line: 56, column: 1, scope: !1172)
!1215 = distinct !DISubprogram(name: "__paritydi2", scope: !73, file: !73, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !128)
!1216 = !DILocation(line: 23, column: 7, scope: !1215)
!1217 = !DILocation(line: 23, column: 11, scope: !1215)
!1218 = !DILocation(line: 24, column: 26, scope: !1215)
!1219 = !DILocation(line: 24, column: 28, scope: !1215)
!1220 = !DILocation(line: 24, column: 39, scope: !1215)
!1221 = !DILocation(line: 24, column: 33, scope: !1215)
!1222 = !DILocation(line: 24, column: 12, scope: !1215)
!1223 = !DILocation(line: 24, column: 5, scope: !1215)
!1224 = distinct !DISubprogram(name: "__paritysi2", scope: !75, file: !75, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !128)
!1225 = !DILocation(line: 23, column: 12, scope: !1224)
!1226 = !DILocation(line: 23, column: 7, scope: !1224)
!1227 = !DILocation(line: 24, column: 12, scope: !1224)
!1228 = !DILocation(line: 24, column: 7, scope: !1224)
!1229 = !DILocation(line: 25, column: 12, scope: !1224)
!1230 = !DILocation(line: 25, column: 7, scope: !1224)
!1231 = !DILocation(line: 26, column: 26, scope: !1224)
!1232 = !DILocation(line: 26, column: 20, scope: !1224)
!1233 = !DILocation(line: 26, column: 34, scope: !1224)
!1234 = !DILocation(line: 26, column: 5, scope: !1224)
!1235 = distinct !DISubprogram(name: "__popcountdi2", scope: !79, file: !79, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !128)
!1236 = !DILocation(line: 23, column: 20, scope: !1235)
!1237 = !DILocation(line: 23, column: 26, scope: !1235)
!1238 = !DILocation(line: 23, column: 13, scope: !1235)
!1239 = !DILocation(line: 25, column: 15, scope: !1235)
!1240 = !DILocation(line: 25, column: 21, scope: !1235)
!1241 = !DILocation(line: 25, column: 52, scope: !1235)
!1242 = !DILocation(line: 25, column: 46, scope: !1235)
!1243 = !DILocation(line: 27, column: 20, scope: !1235)
!1244 = !DILocation(line: 27, column: 14, scope: !1235)
!1245 = !DILocation(line: 27, column: 27, scope: !1235)
!1246 = !DILocation(line: 29, column: 34, scope: !1235)
!1247 = !DILocation(line: 29, column: 28, scope: !1235)
!1248 = !DILocation(line: 29, column: 16, scope: !1235)
!1249 = !DILocation(line: 32, column: 16, scope: !1235)
!1250 = !DILocation(line: 32, column: 11, scope: !1235)
!1251 = !DILocation(line: 35, column: 20, scope: !1235)
!1252 = !DILocation(line: 35, column: 15, scope: !1235)
!1253 = !DILocation(line: 35, column: 27, scope: !1235)
!1254 = !DILocation(line: 35, column: 5, scope: !1235)
!1255 = distinct !DISubprogram(name: "__popcountsi2", scope: !81, file: !81, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !128)
!1256 = !DILocation(line: 23, column: 17, scope: !1255)
!1257 = !DILocation(line: 23, column: 23, scope: !1255)
!1258 = !DILocation(line: 23, column: 11, scope: !1255)
!1259 = !DILocation(line: 25, column: 13, scope: !1255)
!1260 = !DILocation(line: 25, column: 19, scope: !1255)
!1261 = !DILocation(line: 25, column: 38, scope: !1255)
!1262 = !DILocation(line: 25, column: 33, scope: !1255)
!1263 = !DILocation(line: 27, column: 17, scope: !1255)
!1264 = !DILocation(line: 27, column: 12, scope: !1255)
!1265 = !DILocation(line: 27, column: 24, scope: !1255)
!1266 = !DILocation(line: 29, column: 17, scope: !1255)
!1267 = !DILocation(line: 29, column: 12, scope: !1255)
!1268 = !DILocation(line: 32, column: 20, scope: !1255)
!1269 = !DILocation(line: 32, column: 15, scope: !1255)
!1270 = !DILocation(line: 32, column: 27, scope: !1255)
!1271 = !DILocation(line: 32, column: 5, scope: !1255)
!1272 = distinct !DISubprogram(name: "__subvdi3", scope: !85, file: !85, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !128)
!1273 = !DILocation(line: 24, column: 27, scope: !1272)
!1274 = !DILocation(line: 25, column: 11, scope: !1272)
!1275 = !DILocation(line: 25, column: 9, scope: !1272)
!1276 = !DILocation(line: 27, column: 15, scope: !1272)
!1277 = !DILocation(line: 27, column: 13, scope: !1272)
!1278 = !DILocation(line: 28, column: 13, scope: !1272)
!1279 = !DILocation(line: 29, column: 5, scope: !1272)
!1280 = !DILocation(line: 32, column: 15, scope: !1272)
!1281 = !DILocation(line: 32, column: 13, scope: !1272)
!1282 = !DILocation(line: 33, column: 13, scope: !1272)
!1283 = !DILocation(line: 35, column: 5, scope: !1272)
!1284 = distinct !DISubprogram(name: "__subvsi3", scope: !87, file: !87, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !128)
!1285 = !DILocation(line: 24, column: 27, scope: !1284)
!1286 = !DILocation(line: 25, column: 11, scope: !1284)
!1287 = !DILocation(line: 25, column: 9, scope: !1284)
!1288 = !DILocation(line: 27, column: 15, scope: !1284)
!1289 = !DILocation(line: 27, column: 13, scope: !1284)
!1290 = !DILocation(line: 28, column: 13, scope: !1284)
!1291 = !DILocation(line: 29, column: 5, scope: !1284)
!1292 = !DILocation(line: 32, column: 15, scope: !1284)
!1293 = !DILocation(line: 32, column: 13, scope: !1284)
!1294 = !DILocation(line: 33, column: 13, scope: !1284)
!1295 = !DILocation(line: 35, column: 5, scope: !1284)
!1296 = distinct !DISubprogram(name: "__ucmpdi2", scope: !91, file: !91, line: 23, type: !127, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !128)
!1297 = !DILocation(line: 26, column: 7, scope: !1296)
!1298 = !DILocation(line: 26, column: 11, scope: !1296)
!1299 = !DILocation(line: 28, column: 7, scope: !1296)
!1300 = !DILocation(line: 28, column: 11, scope: !1296)
!1301 = !DILocation(line: 29, column: 11, scope: !1296)
!1302 = !DILocation(line: 29, column: 13, scope: !1296)
!1303 = !DILocation(line: 29, column: 22, scope: !1296)
!1304 = !DILocation(line: 29, column: 24, scope: !1296)
!1305 = !DILocation(line: 29, column: 18, scope: !1296)
!1306 = !DILocation(line: 29, column: 9, scope: !1296)
!1307 = !DILocation(line: 30, column: 9, scope: !1296)
!1308 = !DILocation(line: 31, column: 11, scope: !1296)
!1309 = !DILocation(line: 31, column: 13, scope: !1296)
!1310 = !DILocation(line: 31, column: 22, scope: !1296)
!1311 = !DILocation(line: 31, column: 24, scope: !1296)
!1312 = !DILocation(line: 31, column: 18, scope: !1296)
!1313 = !DILocation(line: 31, column: 9, scope: !1296)
!1314 = !DILocation(line: 32, column: 9, scope: !1296)
!1315 = !DILocation(line: 33, column: 13, scope: !1296)
!1316 = !DILocation(line: 33, column: 23, scope: !1296)
!1317 = !DILocation(line: 33, column: 17, scope: !1296)
!1318 = !DILocation(line: 33, column: 9, scope: !1296)
!1319 = !DILocation(line: 34, column: 9, scope: !1296)
!1320 = !DILocation(line: 35, column: 13, scope: !1296)
!1321 = !DILocation(line: 35, column: 23, scope: !1296)
!1322 = !DILocation(line: 35, column: 17, scope: !1296)
!1323 = !DILocation(line: 35, column: 9, scope: !1296)
!1324 = !DILocation(line: 36, column: 9, scope: !1296)
!1325 = !DILocation(line: 37, column: 5, scope: !1296)
!1326 = !DILocation(line: 0, scope: !1296)
!1327 = !DILocation(line: 38, column: 1, scope: !1296)
!1328 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !91, file: !91, line: 46, type: !127, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !128)
!1329 = !DILocation(line: 48, column: 9, scope: !1328)
!1330 = !DILocation(line: 48, column: 25, scope: !1328)
!1331 = !DILocation(line: 48, column: 2, scope: !1328)
!1332 = distinct !DISubprogram(name: "__udivdi3", scope: !95, file: !95, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !128)
!1333 = !DILocation(line: 22, column: 12, scope: !1332)
!1334 = !DILocation(line: 22, column: 5, scope: !1332)
!1335 = distinct !DISubprogram(name: "__udivmodsi4", scope: !99, file: !99, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !128)
!1336 = !DILocation(line: 22, column: 14, scope: !1335)
!1337 = !DILocation(line: 23, column: 16, scope: !1335)
!1338 = !DILocation(line: 23, column: 12, scope: !1335)
!1339 = !DILocation(line: 23, column: 8, scope: !1335)
!1340 = !DILocation(line: 24, column: 3, scope: !1335)
!1341 = distinct !DISubprogram(name: "__udivsi3", scope: !103, file: !103, line: 25, type: !127, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !128)
!1342 = !DILocation(line: 32, column: 11, scope: !1341)
!1343 = !DILocation(line: 32, column: 9, scope: !1341)
!1344 = !DILocation(line: 33, column: 9, scope: !1341)
!1345 = !DILocation(line: 34, column: 11, scope: !1341)
!1346 = !DILocation(line: 34, column: 9, scope: !1341)
!1347 = !DILocation(line: 35, column: 9, scope: !1341)
!1348 = !DILocation(line: 36, column: 10, scope: !1341)
!1349 = !DILocation(line: 36, column: 29, scope: !1341)
!1350 = !DILocation(line: 36, column: 27, scope: !1341)
!1351 = !DILocation(line: 38, column: 12, scope: !1341)
!1352 = !DILocation(line: 38, column: 9, scope: !1341)
!1353 = !DILocation(line: 39, column: 9, scope: !1341)
!1354 = !DILocation(line: 40, column: 12, scope: !1341)
!1355 = !DILocation(line: 40, column: 9, scope: !1341)
!1356 = !DILocation(line: 41, column: 9, scope: !1341)
!1357 = !DILocation(line: 42, column: 5, scope: !1341)
!1358 = !DILocation(line: 45, column: 28, scope: !1341)
!1359 = !DILocation(line: 45, column: 11, scope: !1341)
!1360 = !DILocation(line: 46, column: 11, scope: !1341)
!1361 = !DILocation(line: 48, column: 5, scope: !1341)
!1362 = !DILocation(line: 0, scope: !1341)
!1363 = !DILocation(line: 48, column: 15, scope: !1341)
!1364 = !DILocation(line: 51, column: 22, scope: !1341)
!1365 = !DILocation(line: 60, column: 41, scope: !1341)
!1366 = !DILocation(line: 63, column: 5, scope: !1341)
!1367 = !DILocation(line: 62, column: 16, scope: !1341)
!1368 = !DILocation(line: 62, column: 11, scope: !1341)
!1369 = !DILocation(line: 61, column: 19, scope: !1341)
!1370 = !DILocation(line: 52, column: 16, scope: !1341)
!1371 = !DILocation(line: 52, column: 22, scope: !1341)
!1372 = !DILocation(line: 48, column: 20, scope: !1341)
!1373 = distinct !{!1373, !1361, !1366, !146}
!1374 = !DILocation(line: 64, column: 12, scope: !1341)
!1375 = !DILocation(line: 64, column: 18, scope: !1341)
!1376 = !DILocation(line: 65, column: 5, scope: !1341)
!1377 = !DILocation(line: 66, column: 1, scope: !1341)
!1378 = distinct !DISubprogram(name: "__umoddi3", scope: !107, file: !107, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !128)
!1379 = !DILocation(line: 23, column: 5, scope: !1378)
!1380 = !DILocation(line: 24, column: 12, scope: !1378)
!1381 = !DILocation(line: 24, column: 5, scope: !1378)
!1382 = distinct !DISubprogram(name: "__umodsi3", scope: !109, file: !109, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !128)
!1383 = !DILocation(line: 22, column: 16, scope: !1382)
!1384 = !DILocation(line: 22, column: 32, scope: !1382)
!1385 = !DILocation(line: 22, column: 14, scope: !1382)
!1386 = !DILocation(line: 22, column: 5, scope: !1382)
!1387 = distinct !DISubprogram(name: "memcpy", scope: !113, file: !113, line: 3, type: !127, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !128)
!1388 = !DILocation(line: 8, column: 6, scope: !1387)
!1389 = !DILocation(line: 0, scope: !1387)
!1390 = !DILocation(line: 8, column: 19, scope: !1387)
!1391 = !DILocation(line: 8, column: 2, scope: !1387)
!1392 = !DILocation(line: 9, column: 21, scope: !1387)
!1393 = !DILocation(line: 9, column: 3, scope: !1387)
!1394 = !DILocation(line: 9, column: 19, scope: !1387)
!1395 = !DILocation(line: 10, column: 2, scope: !1387)
!1396 = !DILocation(line: 8, column: 26, scope: !1387)
!1397 = distinct !{!1397, !1391, !1395, !146}
!1398 = !DILocation(line: 11, column: 1, scope: !1387)
!1399 = distinct !DISubprogram(name: "memset", scope: !113, file: !113, line: 13, type: !127, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !128)
!1400 = !DILocation(line: 17, column: 6, scope: !1399)
!1401 = !DILocation(line: 0, scope: !1399)
!1402 = !DILocation(line: 17, column: 19, scope: !1399)
!1403 = !DILocation(line: 17, column: 2, scope: !1399)
!1404 = !DILocation(line: 18, column: 13, scope: !1399)
!1405 = !DILocation(line: 18, column: 3, scope: !1399)
!1406 = !DILocation(line: 18, column: 11, scope: !1399)
!1407 = !DILocation(line: 19, column: 2, scope: !1399)
!1408 = !DILocation(line: 17, column: 26, scope: !1399)
!1409 = distinct !{!1409, !1403, !1407, !146}
!1410 = !DILocation(line: 20, column: 2, scope: !1399)
