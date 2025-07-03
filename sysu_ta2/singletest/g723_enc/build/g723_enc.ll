; ModuleID = '/workspaces/llvmta/testcases/batchtest/g723_enc/g723_enc.c'
source_filename = "/workspaces/llvmta/testcases/batchtest/g723_enc/g723_enc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.g723_enc_state_t = type { i32, i16, i16, i16, i16, [2 x i16], [6 x i16], [2 x i16], [6 x i16], [2 x i16], i8 }

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

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %an, i32 noundef %srn) #0 !dbg !12 {
entry:
  %an.addr = alloca i32, align 4
  %srn.addr = alloca i32, align 4
  %anmag = alloca i16, align 2
  %anexp = alloca i16, align 2
  %anmant = alloca i16, align 2
  %wanexp = alloca i16, align 2
  %wanmant = alloca i16, align 2
  %retval1 = alloca i16, align 2
  store i32 %an, i32* %an.addr, align 4
  store i32 %srn, i32* %srn.addr, align 4
  store i16 8191, i16* %anmag, align 2, !dbg !16
  %0 = load i16, i16* %anmag, align 2, !dbg !17
  %conv = sext i16 %0 to i32, !dbg !17
  %call = call arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef %conv, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @g723_enc_power2, i32 0, i32 0), i32 noundef 3) #1, !dbg !18
  %sub = sub nsw i32 %call, 6, !dbg !19
  %conv2 = trunc i32 %sub to i16, !dbg !18
  store i16 %conv2, i16* %anexp, align 2, !dbg !20
  %1 = load i16, i16* %anmag, align 2, !dbg !21
  %conv3 = sext i16 %1 to i32, !dbg !21
  %2 = load i16, i16* %anexp, align 2, !dbg !22
  %conv4 = sext i16 %2 to i32, !dbg !22
  %sub5 = sub nsw i32 0, %conv4, !dbg !23
  %shl = shl i32 %conv3, %sub5, !dbg !24
  %conv6 = trunc i32 %shl to i16, !dbg !21
  store i16 %conv6, i16* %anmant, align 2, !dbg !25
  %3 = load i16, i16* %anexp, align 2, !dbg !26
  %conv7 = sext i16 %3 to i32, !dbg !26
  %4 = load i32, i32* %srn.addr, align 4, !dbg !27
  %shr = ashr i32 %4, 6, !dbg !28
  %and = and i32 %shr, 15, !dbg !29
  %add = add nsw i32 %conv7, %and, !dbg !30
  %sub8 = sub nsw i32 %add, 13, !dbg !31
  %conv9 = trunc i32 %sub8 to i16, !dbg !26
  store i16 %conv9, i16* %wanexp, align 2, !dbg !32
  %5 = load i16, i16* %anmant, align 2, !dbg !33
  %conv10 = sext i16 %5 to i32, !dbg !33
  %6 = load i32, i32* %srn.addr, align 4, !dbg !34
  %and11 = and i32 %6, 63, !dbg !35
  %mul = mul nsw i32 %conv10, %and11, !dbg !36
  %add12 = add nsw i32 %mul, 48, !dbg !37
  %shr13 = ashr i32 %add12, 4, !dbg !38
  %conv14 = trunc i32 %shr13 to i16, !dbg !39
  store i16 %conv14, i16* %wanmant, align 2, !dbg !40
  %7 = load i16, i16* %wanmant, align 2, !dbg !41
  %conv15 = sext i16 %7 to i32, !dbg !41
  %8 = load i16, i16* %wanexp, align 2, !dbg !42
  %conv16 = sext i16 %8 to i32, !dbg !42
  %sub17 = sub nsw i32 0, %conv16, !dbg !43
  %shr18 = ashr i32 %conv15, %sub17, !dbg !44
  %conv19 = trunc i32 %shr18 to i16, !dbg !45
  store i16 %conv19, i16* %retval1, align 2, !dbg !46
  %9 = load i16, i16* %retval1, align 2, !dbg !47
  %conv20 = sext i16 %9 to i32, !dbg !47
  ret i32 %conv20, !dbg !48
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef %val, i16* noundef %table, i32 noundef %size) #0 !dbg !49 {
entry:
  %val.addr = alloca i32, align 4
  %table.addr = alloca i16*, align 4
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  store i16* %table, i16** %table.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %j, align 4, !dbg !50
  store i32 1, i32* %k, align 4, !dbg !51
  store i32 0, i32* %i, align 4, !dbg !52
  br label %for.cond, !dbg !53

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !54
  %cmp = icmp slt i32 %0, 1, !dbg !55
  br i1 %cmp, label %for.body, label %for.end, !dbg !56

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !57
  store i32 %1, i32* %j, align 4, !dbg !58
  store i32 0, i32* %k, align 4, !dbg !59
  br label %for.inc, !dbg !60

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4, !dbg !61
  %inc = add nsw i32 %2, 1, !dbg !61
  store i32 %inc, i32* %i, align 4, !dbg !61
  br label %for.cond, !dbg !56, !llvm.loop !62

for.end:                                          ; preds = %for.cond
  %3 = load i32, i32* %j, align 4, !dbg !64
  ret i32 %3, !dbg !65
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_abs(i32 noundef %num) #0 !dbg !66 {
entry:
  %num.addr = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* %num.addr, align 4, !dbg !67
  ret i32 %0, !dbg !68
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_predictor_zero(%struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !69 {
entry:
  %state_ptr.addr = alloca %struct.g723_enc_state_t*, align 4
  %i = alloca i32, align 4
  %sezi = alloca i32, align 4
  store %struct.g723_enc_state_t* %state_ptr, %struct.g723_enc_state_t** %state_ptr.addr, align 4
  %0 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !70
  %b = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %0, i32 0, i32 6, !dbg !71
  %arrayidx = getelementptr inbounds [6 x i16], [6 x i16]* %b, i32 0, i32 0, !dbg !70
  %1 = load i16, i16* %arrayidx, align 4, !dbg !70
  %conv = sext i16 %1 to i32, !dbg !70
  %shr = ashr i32 %conv, 2, !dbg !72
  %2 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !73
  %dq = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %2, i32 0, i32 8, !dbg !74
  %arrayidx1 = getelementptr inbounds [6 x i16], [6 x i16]* %dq, i32 0, i32 0, !dbg !73
  %3 = load i16, i16* %arrayidx1, align 4, !dbg !73
  %conv2 = sext i16 %3 to i32, !dbg !73
  %call = call arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %shr, i32 noundef %conv2) #1, !dbg !75
  store i32 %call, i32* %sezi, align 4, !dbg !76
  store i32 1, i32* %i, align 4, !dbg !77
  br label %for.cond, !dbg !78

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !79
  %cmp = icmp slt i32 %4, 2, !dbg !80
  br i1 %cmp, label %for.body, label %for.end, !dbg !81

for.body:                                         ; preds = %for.cond
  %5 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !82
  %b4 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %5, i32 0, i32 6, !dbg !83
  %6 = load i32, i32* %i, align 4, !dbg !84
  %arrayidx5 = getelementptr inbounds [6 x i16], [6 x i16]* %b4, i32 0, i32 %6, !dbg !82
  %7 = load i16, i16* %arrayidx5, align 2, !dbg !82
  %conv6 = sext i16 %7 to i32, !dbg !82
  %shr7 = ashr i32 %conv6, 2, !dbg !85
  %8 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !86
  %dq8 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %8, i32 0, i32 8, !dbg !87
  %9 = load i32, i32* %i, align 4, !dbg !88
  %arrayidx9 = getelementptr inbounds [6 x i16], [6 x i16]* %dq8, i32 0, i32 %9, !dbg !86
  %10 = load i16, i16* %arrayidx9, align 2, !dbg !86
  %conv10 = sext i16 %10 to i32, !dbg !86
  %call11 = call arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %shr7, i32 noundef %conv10) #1, !dbg !89
  %11 = load i32, i32* %sezi, align 4, !dbg !90
  %add = add nsw i32 %11, %call11, !dbg !90
  store i32 %add, i32* %sezi, align 4, !dbg !90
  br label %for.inc, !dbg !91

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !92
  %inc = add nsw i32 %12, 1, !dbg !92
  store i32 %inc, i32* %i, align 4, !dbg !92
  br label %for.cond, !dbg !81, !llvm.loop !93

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %sezi, align 4, !dbg !95
  ret i32 %13, !dbg !96
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_predictor_pole(%struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !97 {
entry:
  %state_ptr.addr = alloca %struct.g723_enc_state_t*, align 4
  store %struct.g723_enc_state_t* %state_ptr, %struct.g723_enc_state_t** %state_ptr.addr, align 4
  %0 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !98
  %a = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %0, i32 0, i32 5, !dbg !99
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* %a, i32 0, i32 1, !dbg !98
  %1 = load i16, i16* %arrayidx, align 2, !dbg !98
  %conv = sext i16 %1 to i32, !dbg !98
  %shr = ashr i32 %conv, 2, !dbg !100
  %2 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !101
  %sr = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %2, i32 0, i32 9, !dbg !102
  %arrayidx1 = getelementptr inbounds [2 x i16], [2 x i16]* %sr, i32 0, i32 1, !dbg !101
  %3 = load i16, i16* %arrayidx1, align 2, !dbg !101
  %conv2 = sext i16 %3 to i32, !dbg !101
  %call = call arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %shr, i32 noundef %conv2) #1, !dbg !103
  %4 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !104
  %a3 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %4, i32 0, i32 5, !dbg !105
  %arrayidx4 = getelementptr inbounds [2 x i16], [2 x i16]* %a3, i32 0, i32 0, !dbg !104
  %5 = load i16, i16* %arrayidx4, align 4, !dbg !104
  %conv5 = sext i16 %5 to i32, !dbg !104
  %shr6 = ashr i32 %conv5, 2, !dbg !106
  %6 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !107
  %sr7 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %6, i32 0, i32 9, !dbg !108
  %arrayidx8 = getelementptr inbounds [2 x i16], [2 x i16]* %sr7, i32 0, i32 0, !dbg !107
  %7 = load i16, i16* %arrayidx8, align 4, !dbg !107
  %conv9 = sext i16 %7 to i32, !dbg !107
  %call10 = call arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %shr6, i32 noundef %conv9) #1, !dbg !109
  %add = add nsw i32 %call, %call10, !dbg !110
  ret i32 %add, !dbg !111
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_step_size(%struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !112 {
entry:
  %state_ptr.addr = alloca %struct.g723_enc_state_t*, align 4
  %y = alloca i32, align 4
  %dif = alloca i32, align 4
  %al = alloca i32, align 4
  store %struct.g723_enc_state_t* %state_ptr, %struct.g723_enc_state_t** %state_ptr.addr, align 4
  %0 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !113
  %yu = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %0, i32 0, i32 1, !dbg !114
  %1 = load i16, i16* %yu, align 4, !dbg !114
  %conv = sext i16 %1 to i32, !dbg !115
  ret i32 %conv, !dbg !116
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_quantize(i32 noundef %d, i32 noundef %y, i16* noundef %table, i32 noundef %size) #0 !dbg !117 {
entry:
  %d.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %table.addr = alloca i16*, align 4
  %size.addr = alloca i32, align 4
  %dqm = alloca i16, align 2
  %exp = alloca i16, align 2
  %mant = alloca i16, align 2
  %dl = alloca i16, align 2
  %dln = alloca i16, align 2
  %i = alloca i32, align 4
  store i32 %d, i32* %d.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i16* %table, i16** %table.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %d.addr, align 4, !dbg !118
  %call = call arm_aapcs_vfpcc i32 @g723_enc_abs(i32 noundef %0) #1, !dbg !119
  %conv = trunc i32 %call to i16, !dbg !119
  store i16 %conv, i16* %dqm, align 2, !dbg !120
  %1 = load i16, i16* %dqm, align 2, !dbg !121
  %conv1 = sext i16 %1 to i32, !dbg !121
  %shr = ashr i32 %conv1, 1, !dbg !122
  %call2 = call arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef %shr, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @g723_enc_power2, i32 0, i32 0), i32 noundef 15) #1, !dbg !123
  %conv3 = trunc i32 %call2 to i16, !dbg !123
  store i16 %conv3, i16* %exp, align 2, !dbg !124
  %2 = load i16, i16* %dqm, align 2, !dbg !125
  %conv4 = sext i16 %2 to i32, !dbg !125
  %shl = shl i32 %conv4, 7, !dbg !126
  %3 = load i16, i16* %exp, align 2, !dbg !127
  %conv5 = sext i16 %3 to i32, !dbg !127
  %shr6 = ashr i32 %shl, %conv5, !dbg !128
  %and = and i32 %shr6, 127, !dbg !129
  %conv7 = trunc i32 %and to i16, !dbg !130
  store i16 %conv7, i16* %mant, align 2, !dbg !131
  %4 = load i16, i16* %exp, align 2, !dbg !132
  %conv8 = sext i16 %4 to i32, !dbg !132
  %shl9 = shl i32 %conv8, 7, !dbg !133
  %5 = load i16, i16* %mant, align 2, !dbg !134
  %conv10 = sext i16 %5 to i32, !dbg !134
  %add = add nsw i32 %shl9, %conv10, !dbg !135
  %conv11 = trunc i32 %add to i16, !dbg !136
  store i16 %conv11, i16* %dl, align 2, !dbg !137
  %6 = load i16, i16* %dl, align 2, !dbg !138
  %conv12 = sext i16 %6 to i32, !dbg !138
  %7 = load i32, i32* %y.addr, align 4, !dbg !139
  %shr13 = ashr i32 %7, 2, !dbg !140
  %sub = sub nsw i32 %conv12, %shr13, !dbg !141
  %conv14 = trunc i32 %sub to i16, !dbg !138
  store i16 %conv14, i16* %dln, align 2, !dbg !142
  %8 = load i16, i16* %dln, align 2, !dbg !143
  %conv15 = sext i16 %8 to i32, !dbg !143
  %9 = load i16*, i16** %table.addr, align 4, !dbg !144
  %10 = load i32, i32* %size.addr, align 4, !dbg !145
  %call16 = call arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef %conv15, i16* noundef %9, i32 noundef %10) #1, !dbg !146
  store i32 %call16, i32* %i, align 4, !dbg !147
  %11 = load i32, i32* %i, align 4, !dbg !148
  ret i32 %11, !dbg !149
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_reconstruct(i32 noundef %sign, i32 noundef %dqln, i32 noundef %y) #0 !dbg !150 {
entry:
  %sign.addr = alloca i32, align 4
  %dqln.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dql = alloca i16, align 2
  %dex = alloca i16, align 2
  %dqt = alloca i16, align 2
  %dq = alloca i16, align 2
  store i32 %sign, i32* %sign.addr, align 4
  store i32 %dqln, i32* %dqln.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %dqln.addr, align 4, !dbg !151
  %1 = load i32, i32* %y.addr, align 4, !dbg !152
  %shr = ashr i32 %1, 2, !dbg !153
  %add = add nsw i32 %0, %shr, !dbg !154
  %conv = trunc i32 %add to i16, !dbg !151
  store i16 %conv, i16* %dql, align 2, !dbg !155
  %2 = load i32, i32* %sign.addr, align 4, !dbg !156
  %tobool = icmp ne i32 %2, 0, !dbg !157
  %3 = zext i1 %tobool to i64, !dbg !157
  %cond = select i1 %tobool, i32 -32768, i32 0, !dbg !157
  ret i32 %cond, !dbg !158
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @g723_enc_update(i32 noundef %code_size, i32 noundef %y, i32 noundef %wi, i32 noundef %fi, i32 noundef %dq, i32 noundef %sr, i32 noundef %dqsez, %struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !159 {
entry:
  %code_size.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %wi.addr = alloca i32, align 4
  %fi.addr = alloca i32, align 4
  %dq.addr = alloca i32, align 4
  %sr.addr = alloca i32, align 4
  %dqsez.addr = alloca i32, align 4
  %state_ptr.addr = alloca %struct.g723_enc_state_t*, align 4
  %cnt = alloca i32, align 4
  %mag = alloca i16, align 2
  %exp = alloca i16, align 2
  %a2p = alloca i16, align 2
  %a1ul = alloca i16, align 2
  %pks1 = alloca i16, align 2
  %fa1 = alloca i16, align 2
  %tr = alloca i8, align 1
  %ylint = alloca i16, align 2
  %thr2 = alloca i16, align 2
  %dqthr = alloca i16, align 2
  %ylfrac = alloca i16, align 2
  %thr1 = alloca i16, align 2
  %pk0 = alloca i16, align 2
  store i32 %code_size, i32* %code_size.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %wi, i32* %wi.addr, align 4
  store i32 %fi, i32* %fi.addr, align 4
  store i32 %dq, i32* %dq.addr, align 4
  store i32 %sr, i32* %sr.addr, align 4
  store i32 %dqsez, i32* %dqsez.addr, align 4
  store %struct.g723_enc_state_t* %state_ptr, %struct.g723_enc_state_t** %state_ptr.addr, align 4
  %0 = load i32, i32* %dqsez.addr, align 4, !dbg !160
  %cmp = icmp slt i32 %0, 0, !dbg !161
  %1 = zext i1 %cmp to i64, !dbg !162
  %cond = select i1 %cmp, i32 1, i32 0, !dbg !162
  %conv = trunc i32 %cond to i16, !dbg !162
  store i16 %conv, i16* %pk0, align 2, !dbg !163
  %2 = load i32, i32* %dq.addr, align 4, !dbg !164
  %and = and i32 %2, 32767, !dbg !165
  %conv1 = trunc i32 %and to i16, !dbg !164
  store i16 %conv1, i16* %mag, align 2, !dbg !166
  %3 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !167
  %yl = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %3, i32 0, i32 0, !dbg !168
  %4 = load i32, i32* %yl, align 4, !dbg !168
  %shr = ashr i32 %4, 15, !dbg !169
  %conv2 = trunc i32 %shr to i16, !dbg !167
  store i16 %conv2, i16* %ylint, align 2, !dbg !170
  %5 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !171
  %yl3 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %5, i32 0, i32 0, !dbg !172
  %6 = load i32, i32* %yl3, align 4, !dbg !172
  %shr4 = ashr i32 %6, 10, !dbg !173
  %and5 = and i32 %shr4, 31, !dbg !174
  %conv6 = trunc i32 %and5 to i16, !dbg !175
  store i16 %conv6, i16* %ylfrac, align 2, !dbg !176
  %7 = load i16, i16* %ylfrac, align 2, !dbg !177
  %conv7 = sext i16 %7 to i32, !dbg !177
  %add = add nsw i32 32, %conv7, !dbg !178
  %8 = load i16, i16* %ylint, align 2, !dbg !179
  %conv8 = sext i16 %8 to i32, !dbg !179
  %shl = shl i32 %add, %conv8, !dbg !180
  %conv9 = trunc i32 %shl to i16, !dbg !181
  store i16 %conv9, i16* %thr1, align 2, !dbg !182
  %9 = load i16, i16* %ylint, align 2, !dbg !183
  %conv10 = sext i16 %9 to i32, !dbg !183
  %cmp11 = icmp sgt i32 %conv10, 9, !dbg !184
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !185

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !185

cond.false:                                       ; preds = %entry
  %10 = load i16, i16* %thr1, align 2, !dbg !186
  %conv13 = sext i16 %10 to i32, !dbg !186
  br label %cond.end, !dbg !185

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond14 = phi i32 [ 31744, %cond.true ], [ %conv13, %cond.false ], !dbg !185
  %conv15 = trunc i32 %cond14 to i16, !dbg !185
  store i16 %conv15, i16* %thr2, align 2, !dbg !187
  %11 = load i16, i16* %thr2, align 2, !dbg !188
  %conv16 = sext i16 %11 to i32, !dbg !188
  %12 = load i16, i16* %thr2, align 2, !dbg !189
  %conv17 = sext i16 %12 to i32, !dbg !189
  %shr18 = ashr i32 %conv17, 1, !dbg !190
  %add19 = add nsw i32 %conv16, %shr18, !dbg !191
  %shr20 = ashr i32 %add19, 1, !dbg !192
  %conv21 = trunc i32 %shr20 to i16, !dbg !193
  store i16 %conv21, i16* %dqthr, align 2, !dbg !194
  store i8 0, i8* %tr, align 1, !dbg !195
  %13 = load i32, i32* %y.addr, align 4, !dbg !196
  %14 = load i32, i32* %wi.addr, align 4, !dbg !197
  %15 = load i32, i32* %y.addr, align 4, !dbg !198
  %sub = sub nsw i32 %14, %15, !dbg !199
  %shr22 = ashr i32 %sub, 5, !dbg !200
  %add23 = add nsw i32 %13, %shr22, !dbg !201
  %conv24 = trunc i32 %add23 to i16, !dbg !196
  %16 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !202
  %yu = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %16, i32 0, i32 1, !dbg !203
  store i16 %conv24, i16* %yu, align 4, !dbg !204
  %17 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !205
  %yu25 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %17, i32 0, i32 1, !dbg !206
  store i16 544, i16* %yu25, align 4, !dbg !207
  %18 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !208
  %yu26 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %18, i32 0, i32 1, !dbg !209
  %19 = load i16, i16* %yu26, align 4, !dbg !209
  %conv27 = sext i16 %19 to i32, !dbg !208
  %20 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !210
  %yl28 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %20, i32 0, i32 0, !dbg !211
  %21 = load i32, i32* %yl28, align 4, !dbg !211
  %sub29 = sub nsw i32 0, %21, !dbg !212
  %shr30 = ashr i32 %sub29, 6, !dbg !213
  %add31 = add nsw i32 %conv27, %shr30, !dbg !214
  %22 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !215
  %yl32 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %22, i32 0, i32 0, !dbg !216
  %23 = load i32, i32* %yl32, align 4, !dbg !217
  %add33 = add nsw i32 %23, %add31, !dbg !217
  store i32 %add33, i32* %yl32, align 4, !dbg !217
  %24 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !218
  %a = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %24, i32 0, i32 5, !dbg !219
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* %a, i32 0, i32 0, !dbg !218
  store i16 0, i16* %arrayidx, align 4, !dbg !220
  %25 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !221
  %a34 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %25, i32 0, i32 5, !dbg !222
  %arrayidx35 = getelementptr inbounds [2 x i16], [2 x i16]* %a34, i32 0, i32 1, !dbg !221
  store i16 0, i16* %arrayidx35, align 2, !dbg !223
  %26 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !224
  %b = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %26, i32 0, i32 6, !dbg !225
  %arrayidx36 = getelementptr inbounds [6 x i16], [6 x i16]* %b, i32 0, i32 0, !dbg !224
  store i16 0, i16* %arrayidx36, align 4, !dbg !226
  %27 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !227
  %b37 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %27, i32 0, i32 6, !dbg !228
  %arrayidx38 = getelementptr inbounds [6 x i16], [6 x i16]* %b37, i32 0, i32 1, !dbg !227
  store i16 0, i16* %arrayidx38, align 2, !dbg !229
  %28 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !230
  %b39 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %28, i32 0, i32 6, !dbg !231
  %arrayidx40 = getelementptr inbounds [6 x i16], [6 x i16]* %b39, i32 0, i32 2, !dbg !230
  store i16 0, i16* %arrayidx40, align 4, !dbg !232
  %29 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !233
  %b41 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %29, i32 0, i32 6, !dbg !234
  %arrayidx42 = getelementptr inbounds [6 x i16], [6 x i16]* %b41, i32 0, i32 3, !dbg !233
  store i16 0, i16* %arrayidx42, align 2, !dbg !235
  %30 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !236
  %b43 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %30, i32 0, i32 6, !dbg !237
  %arrayidx44 = getelementptr inbounds [6 x i16], [6 x i16]* %b43, i32 0, i32 4, !dbg !236
  store i16 0, i16* %arrayidx44, align 4, !dbg !238
  %31 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !239
  %b45 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %31, i32 0, i32 6, !dbg !240
  %arrayidx46 = getelementptr inbounds [6 x i16], [6 x i16]* %b45, i32 0, i32 5, !dbg !239
  store i16 0, i16* %arrayidx46, align 2, !dbg !241
  store i32 1, i32* %cnt, align 4, !dbg !242
  br label %for.cond, !dbg !243

for.cond:                                         ; preds = %for.inc, %cond.end
  %32 = load i32, i32* %cnt, align 4, !dbg !244
  %cmp47 = icmp sgt i32 %32, 0, !dbg !245
  br i1 %cmp47, label %for.body, label %for.end, !dbg !246

for.body:                                         ; preds = %for.cond
  %33 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !247
  %dq49 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %33, i32 0, i32 8, !dbg !248
  %34 = load i32, i32* %cnt, align 4, !dbg !249
  %sub50 = sub nsw i32 %34, 1, !dbg !250
  %arrayidx51 = getelementptr inbounds [6 x i16], [6 x i16]* %dq49, i32 0, i32 %sub50, !dbg !247
  %35 = load i16, i16* %arrayidx51, align 2, !dbg !247
  %36 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !251
  %dq52 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %36, i32 0, i32 8, !dbg !252
  %37 = load i32, i32* %cnt, align 4, !dbg !253
  %arrayidx53 = getelementptr inbounds [6 x i16], [6 x i16]* %dq52, i32 0, i32 %37, !dbg !251
  store i16 %35, i16* %arrayidx53, align 2, !dbg !254
  br label %for.inc, !dbg !251

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %cnt, align 4, !dbg !255
  %dec = add nsw i32 %38, -1, !dbg !255
  store i32 %dec, i32* %cnt, align 4, !dbg !255
  br label %for.cond, !dbg !246, !llvm.loop !256

for.end:                                          ; preds = %for.cond
  %39 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !258
  %dq54 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %39, i32 0, i32 8, !dbg !259
  %arrayidx55 = getelementptr inbounds [6 x i16], [6 x i16]* %dq54, i32 0, i32 0, !dbg !258
  store i16 -992, i16* %arrayidx55, align 4, !dbg !260
  %40 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !261
  %sr56 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %40, i32 0, i32 9, !dbg !262
  %arrayidx57 = getelementptr inbounds [2 x i16], [2 x i16]* %sr56, i32 0, i32 0, !dbg !261
  %41 = load i16, i16* %arrayidx57, align 4, !dbg !261
  %42 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !263
  %sr58 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %42, i32 0, i32 9, !dbg !264
  %arrayidx59 = getelementptr inbounds [2 x i16], [2 x i16]* %sr58, i32 0, i32 1, !dbg !263
  store i16 %41, i16* %arrayidx59, align 2, !dbg !265
  %43 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !266
  %sr60 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %43, i32 0, i32 9, !dbg !267
  %arrayidx61 = getelementptr inbounds [2 x i16], [2 x i16]* %sr60, i32 0, i32 0, !dbg !266
  store i16 32, i16* %arrayidx61, align 4, !dbg !268
  %44 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !269
  %pk = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %44, i32 0, i32 7, !dbg !270
  %arrayidx62 = getelementptr inbounds [2 x i16], [2 x i16]* %pk, i32 0, i32 0, !dbg !269
  %45 = load i16, i16* %arrayidx62, align 4, !dbg !269
  %46 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !271
  %pk63 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %46, i32 0, i32 7, !dbg !272
  %arrayidx64 = getelementptr inbounds [2 x i16], [2 x i16]* %pk63, i32 0, i32 1, !dbg !271
  store i16 %45, i16* %arrayidx64, align 2, !dbg !273
  %47 = load i16, i16* %pk0, align 2, !dbg !274
  %48 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !275
  %pk65 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %48, i32 0, i32 7, !dbg !276
  %arrayidx66 = getelementptr inbounds [2 x i16], [2 x i16]* %pk65, i32 0, i32 0, !dbg !275
  store i16 %47, i16* %arrayidx66, align 4, !dbg !277
  %49 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !278
  %td = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %49, i32 0, i32 10, !dbg !279
  store i8 0, i8* %td, align 4, !dbg !280
  %50 = load i32, i32* %fi.addr, align 4, !dbg !281
  %51 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !282
  %dms = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %51, i32 0, i32 2, !dbg !283
  %52 = load i16, i16* %dms, align 2, !dbg !283
  %conv67 = sext i16 %52 to i32, !dbg !282
  %sub68 = sub nsw i32 %50, %conv67, !dbg !284
  %shr69 = ashr i32 %sub68, 5, !dbg !285
  %53 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !286
  %dms70 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %53, i32 0, i32 2, !dbg !287
  %54 = load i16, i16* %dms70, align 2, !dbg !288
  %conv71 = sext i16 %54 to i32, !dbg !288
  %add72 = add nsw i32 %conv71, %shr69, !dbg !288
  %conv73 = trunc i32 %add72 to i16, !dbg !288
  store i16 %conv73, i16* %dms70, align 2, !dbg !288
  %55 = load i32, i32* %fi.addr, align 4, !dbg !289
  %shl74 = shl i32 %55, 2, !dbg !290
  %56 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !291
  %dml = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %56, i32 0, i32 3, !dbg !292
  %57 = load i16, i16* %dml, align 4, !dbg !292
  %conv75 = sext i16 %57 to i32, !dbg !291
  %sub76 = sub nsw i32 %shl74, %conv75, !dbg !293
  %shr77 = ashr i32 %sub76, 7, !dbg !294
  %58 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !295
  %dml78 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %58, i32 0, i32 3, !dbg !296
  %59 = load i16, i16* %dml78, align 4, !dbg !297
  %conv79 = sext i16 %59 to i32, !dbg !297
  %add80 = add nsw i32 %conv79, %shr77, !dbg !297
  %conv81 = trunc i32 %add80 to i16, !dbg !297
  store i16 %conv81, i16* %dml78, align 4, !dbg !297
  %60 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !298
  %ap = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %60, i32 0, i32 4, !dbg !299
  store i16 256, i16* %ap, align 2, !dbg !300
  ret void, !dbg !301
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_alaw2linear(i8 noundef zeroext %a_val) #0 !dbg !302 {
entry:
  %a_val.addr = alloca i8, align 1
  %t = alloca i32, align 4
  %seg = alloca i32, align 4
  store i8 %a_val, i8* %a_val.addr, align 1
  %0 = load i8, i8* %a_val.addr, align 1, !dbg !303
  %conv = zext i8 %0 to i32, !dbg !303
  %xor = xor i32 %conv, 85, !dbg !303
  %conv1 = trunc i32 %xor to i8, !dbg !303
  store i8 %conv1, i8* %a_val.addr, align 1, !dbg !303
  %1 = load i8, i8* %a_val.addr, align 1, !dbg !304
  %conv2 = zext i8 %1 to i32, !dbg !304
  %and = and i32 %conv2, 15, !dbg !305
  %shl = shl i32 %and, 4, !dbg !306
  store i32 %shl, i32* %t, align 4, !dbg !307
  %2 = load i8, i8* %a_val.addr, align 1, !dbg !308
  %conv3 = zext i8 %2 to i32, !dbg !309
  %and4 = and i32 %conv3, 112, !dbg !310
  %shr = lshr i32 %and4, 4, !dbg !311
  store i32 %shr, i32* %seg, align 4, !dbg !312
  %3 = load i32, i32* %t, align 4, !dbg !313
  %add = add nsw i32 %3, 264, !dbg !313
  store i32 %add, i32* %t, align 4, !dbg !313
  %4 = load i32, i32* %seg, align 4, !dbg !314
  %sub = sub nsw i32 %4, 1, !dbg !315
  %5 = load i32, i32* %t, align 4, !dbg !316
  %shl5 = shl i32 %5, %sub, !dbg !316
  store i32 %shl5, i32* %t, align 4, !dbg !316
  %6 = load i8, i8* %a_val.addr, align 1, !dbg !317
  %conv6 = zext i8 %6 to i32, !dbg !317
  %and7 = and i32 %conv6, 128, !dbg !318
  %tobool = icmp ne i32 %and7, 0, !dbg !318
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !319

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %t, align 4, !dbg !320
  br label %cond.end, !dbg !319

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %t, align 4, !dbg !321
  %sub8 = sub nsw i32 0, %8, !dbg !322
  br label %cond.end, !dbg !319

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %sub8, %cond.false ], !dbg !319
  ret i32 %cond, !dbg !323
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_ulaw2linear(i8 noundef zeroext %u_val) #0 !dbg !324 {
entry:
  %u_val.addr = alloca i8, align 1
  %t = alloca i32, align 4
  store i8 %u_val, i8* %u_val.addr, align 1
  %0 = load i8, i8* %u_val.addr, align 1, !dbg !325
  %conv = zext i8 %0 to i32, !dbg !325
  %neg = xor i32 %conv, -1, !dbg !326
  %conv1 = trunc i32 %neg to i8, !dbg !326
  store i8 %conv1, i8* %u_val.addr, align 1, !dbg !327
  %1 = load i8, i8* %u_val.addr, align 1, !dbg !328
  %conv2 = zext i8 %1 to i32, !dbg !328
  %and = and i32 %conv2, 15, !dbg !329
  %shl = shl i32 %and, 3, !dbg !330
  %add = add nsw i32 %shl, 132, !dbg !331
  store i32 %add, i32* %t, align 4, !dbg !332
  %2 = load i8, i8* %u_val.addr, align 1, !dbg !333
  %conv3 = zext i8 %2 to i32, !dbg !334
  %and4 = and i32 %conv3, 112, !dbg !335
  %shr = lshr i32 %and4, 4, !dbg !336
  %3 = load i32, i32* %t, align 4, !dbg !337
  %shl5 = shl i32 %3, %shr, !dbg !337
  store i32 %shl5, i32* %t, align 4, !dbg !337
  %4 = load i8, i8* %u_val.addr, align 1, !dbg !338
  %conv6 = zext i8 %4 to i32, !dbg !338
  %and7 = and i32 %conv6, 128, !dbg !339
  %tobool = icmp ne i32 %and7, 0, !dbg !339
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !340

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %t, align 4, !dbg !341
  %sub = sub nsw i32 132, %5, !dbg !342
  br label %cond.end, !dbg !340

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %t, align 4, !dbg !343
  %sub8 = sub nsw i32 %6, 132, !dbg !344
  br label %cond.end, !dbg !340

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub8, %cond.false ], !dbg !340
  ret i32 %cond, !dbg !345
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_g723_24_encoder(i32 noundef %sl, i32 noundef %in_coding, %struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !346 {
entry:
  %sl.addr = alloca i32, align 4
  %in_coding.addr = alloca i32, align 4
  %state_ptr.addr = alloca %struct.g723_enc_state_t*, align 4
  %sei = alloca i16, align 2
  %sezi = alloca i16, align 2
  %se = alloca i16, align 2
  %sez = alloca i16, align 2
  %d = alloca i16, align 2
  %y = alloca i16, align 2
  %sr = alloca i16, align 2
  %dqsez = alloca i16, align 2
  %dq = alloca i16, align 2
  %i = alloca i16, align 2
  store i32 %sl, i32* %sl.addr, align 4
  store i32 %in_coding, i32* %in_coding.addr, align 4
  store %struct.g723_enc_state_t* %state_ptr, %struct.g723_enc_state_t** %state_ptr.addr, align 4
  %0 = load i32, i32* %sl.addr, align 4, !dbg !347
  %conv = trunc i32 %0 to i8, !dbg !347
  %call = call arm_aapcs_vfpcc i32 @g723_enc_alaw2linear(i8 noundef zeroext %conv) #1, !dbg !348
  %shr = ashr i32 %call, 2, !dbg !349
  store i32 %shr, i32* %sl.addr, align 4, !dbg !350
  %1 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !351
  %call1 = call arm_aapcs_vfpcc i32 @g723_enc_predictor_zero(%struct.g723_enc_state_t* noundef %1) #1, !dbg !352
  %conv2 = trunc i32 %call1 to i16, !dbg !352
  store i16 %conv2, i16* %sezi, align 2, !dbg !353
  %2 = load i16, i16* %sezi, align 2, !dbg !354
  %conv3 = sext i16 %2 to i32, !dbg !354
  %shr4 = ashr i32 %conv3, 1, !dbg !355
  %conv5 = trunc i32 %shr4 to i16, !dbg !354
  store i16 %conv5, i16* %sez, align 2, !dbg !356
  %3 = load i16, i16* %sezi, align 2, !dbg !357
  %conv6 = sext i16 %3 to i32, !dbg !357
  %4 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !358
  %call7 = call arm_aapcs_vfpcc i32 @g723_enc_predictor_pole(%struct.g723_enc_state_t* noundef %4) #1, !dbg !359
  %add = add nsw i32 %conv6, %call7, !dbg !360
  %conv8 = trunc i32 %add to i16, !dbg !357
  store i16 %conv8, i16* %sei, align 2, !dbg !361
  %5 = load i16, i16* %sei, align 2, !dbg !362
  %conv9 = sext i16 %5 to i32, !dbg !362
  %shr10 = ashr i32 %conv9, 1, !dbg !363
  %conv11 = trunc i32 %shr10 to i16, !dbg !362
  store i16 %conv11, i16* %se, align 2, !dbg !364
  %6 = load i32, i32* %sl.addr, align 4, !dbg !365
  %7 = load i16, i16* %se, align 2, !dbg !366
  %conv12 = sext i16 %7 to i32, !dbg !366
  %sub = sub nsw i32 %6, %conv12, !dbg !367
  %conv13 = trunc i32 %sub to i16, !dbg !365
  store i16 %conv13, i16* %d, align 2, !dbg !368
  %8 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !369
  %call14 = call arm_aapcs_vfpcc i32 @g723_enc_step_size(%struct.g723_enc_state_t* noundef %8) #1, !dbg !370
  %conv15 = trunc i32 %call14 to i16, !dbg !370
  store i16 %conv15, i16* %y, align 2, !dbg !371
  %9 = load i16, i16* %d, align 2, !dbg !372
  %conv16 = sext i16 %9 to i32, !dbg !372
  %10 = load i16, i16* %y, align 2, !dbg !373
  %conv17 = sext i16 %10 to i32, !dbg !373
  %call18 = call arm_aapcs_vfpcc i32 @g723_enc_quantize(i32 noundef %conv16, i32 noundef %conv17, i16* noundef getelementptr inbounds ([3 x i16], [3 x i16]* @g723_enc_qtab_723_24, i32 0, i32 0), i32 noundef 3) #1, !dbg !374
  %conv19 = trunc i32 %call18 to i16, !dbg !374
  store i16 %conv19, i16* %i, align 2, !dbg !375
  %11 = load i16, i16* %i, align 2, !dbg !376
  %conv20 = sext i16 %11 to i32, !dbg !376
  %and = and i32 %conv20, 4, !dbg !377
  %12 = load i16, i16* %i, align 2, !dbg !378
  %idxprom = sext i16 %12 to i32, !dbg !379
  %arrayidx = getelementptr inbounds [16 x i16], [16 x i16]* @g723_enc_dqlntab, i32 0, i32 %idxprom, !dbg !379
  %13 = load i16, i16* %arrayidx, align 2, !dbg !379
  %conv21 = sext i16 %13 to i32, !dbg !379
  %14 = load i16, i16* %y, align 2, !dbg !380
  %conv22 = sext i16 %14 to i32, !dbg !380
  %call23 = call arm_aapcs_vfpcc i32 @g723_enc_reconstruct(i32 noundef %and, i32 noundef %conv21, i32 noundef %conv22) #1, !dbg !381
  %conv24 = trunc i32 %call23 to i16, !dbg !381
  store i16 %conv24, i16* %dq, align 2, !dbg !382
  %15 = load i16, i16* %se, align 2, !dbg !383
  %conv25 = sext i16 %15 to i32, !dbg !383
  %16 = load i16, i16* %dq, align 2, !dbg !384
  %conv26 = sext i16 %16 to i32, !dbg !384
  %add27 = add nsw i32 %conv25, %conv26, !dbg !385
  %conv28 = trunc i32 %add27 to i16, !dbg !383
  store i16 %conv28, i16* %sr, align 2, !dbg !386
  %17 = load i16, i16* %sr, align 2, !dbg !387
  %conv29 = sext i16 %17 to i32, !dbg !387
  %18 = load i16, i16* %sez, align 2, !dbg !388
  %conv30 = sext i16 %18 to i32, !dbg !388
  %add31 = add nsw i32 %conv29, %conv30, !dbg !389
  %19 = load i16, i16* %se, align 2, !dbg !390
  %conv32 = sext i16 %19 to i32, !dbg !390
  %sub33 = sub nsw i32 %add31, %conv32, !dbg !391
  %conv34 = trunc i32 %sub33 to i16, !dbg !387
  store i16 %conv34, i16* %dqsez, align 2, !dbg !392
  %20 = load i16, i16* %y, align 2, !dbg !393
  %conv35 = sext i16 %20 to i32, !dbg !393
  %21 = load i16, i16* %i, align 2, !dbg !394
  %idxprom36 = sext i16 %21 to i32, !dbg !395
  %arrayidx37 = getelementptr inbounds [16 x i16], [16 x i16]* @g723_enc_witab, i32 0, i32 %idxprom36, !dbg !395
  %22 = load i16, i16* %arrayidx37, align 2, !dbg !395
  %conv38 = sext i16 %22 to i32, !dbg !395
  %23 = load i16, i16* %i, align 2, !dbg !396
  %idxprom39 = sext i16 %23 to i32, !dbg !397
  %arrayidx40 = getelementptr inbounds [16 x i16], [16 x i16]* @g723_enc_fitab, i32 0, i32 %idxprom39, !dbg !397
  %24 = load i16, i16* %arrayidx40, align 2, !dbg !397
  %conv41 = sext i16 %24 to i32, !dbg !397
  %25 = load i16, i16* %dq, align 2, !dbg !398
  %conv42 = sext i16 %25 to i32, !dbg !398
  %26 = load i16, i16* %sr, align 2, !dbg !399
  %conv43 = sext i16 %26 to i32, !dbg !399
  %27 = load i16, i16* %dqsez, align 2, !dbg !400
  %conv44 = sext i16 %27 to i32, !dbg !400
  %28 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !401
  call arm_aapcs_vfpcc void @g723_enc_update(i32 noundef 3, i32 noundef %conv35, i32 noundef %conv38, i32 noundef %conv41, i32 noundef %conv42, i32 noundef %conv43, i32 noundef %conv44, %struct.g723_enc_state_t* noundef %28) #1, !dbg !402
  %29 = load i16, i16* %i, align 2, !dbg !403
  %conv45 = sext i16 %29 to i32, !dbg !404
  ret i32 %conv45, !dbg !405
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_pack_output(i8 noundef zeroext %code, i32 noundef %bits) #0 !dbg !406 {
entry:
  %code.addr = alloca i8, align 1
  %bits.addr = alloca i32, align 4
  %out_byte = alloca i8, align 1
  store i8 %code, i8* %code.addr, align 1
  store i32 %bits, i32* %bits.addr, align 4
  %0 = load i8, i8* %code.addr, align 1, !dbg !407
  %conv = zext i8 %0 to i32, !dbg !407
  %1 = load i32, i32* @g723_enc_pack_output.out_bits, align 4, !dbg !408
  %shl = shl i32 %conv, %1, !dbg !409
  %2 = load i32, i32* @g723_enc_pack_output.out_buffer, align 4, !dbg !410
  %or = or i32 %2, %shl, !dbg !410
  store i32 %or, i32* @g723_enc_pack_output.out_buffer, align 4, !dbg !410
  %3 = load i32, i32* %bits.addr, align 4, !dbg !411
  %4 = load i32, i32* @g723_enc_pack_output.out_bits, align 4, !dbg !412
  %add = add nsw i32 %4, %3, !dbg !412
  store i32 %add, i32* @g723_enc_pack_output.out_bits, align 4, !dbg !412
  %5 = load i32, i32* @g723_enc_pack_output.out_buffer, align 4, !dbg !413
  %and = and i32 %5, 255, !dbg !414
  %conv1 = trunc i32 %and to i8, !dbg !413
  store i8 %conv1, i8* %out_byte, align 1, !dbg !415
  %6 = load i32, i32* @g723_enc_pack_output.out_bits, align 4, !dbg !416
  %sub = sub nsw i32 %6, 8, !dbg !416
  store i32 %sub, i32* @g723_enc_pack_output.out_bits, align 4, !dbg !416
  %7 = load i32, i32* @g723_enc_pack_output.out_buffer, align 4, !dbg !417
  %shr = lshr i32 %7, 8, !dbg !417
  store i32 %shr, i32* @g723_enc_pack_output.out_buffer, align 4, !dbg !417
  %8 = load i8, i8* %out_byte, align 1, !dbg !418
  %conv2 = zext i8 %8 to i32, !dbg !418
  %9 = load i32, i32* @g723_enc_pack_output.i, align 4, !dbg !419
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @g723_enc_OUTPUT, i32 0, i32 %9, !dbg !420
  store i32 %conv2, i32* %arrayidx, align 4, !dbg !421
  %10 = load i32, i32* @g723_enc_pack_output.i, align 4, !dbg !422
  %add3 = add nsw i32 %10, 1, !dbg !423
  store i32 %add3, i32* @g723_enc_pack_output.i, align 4, !dbg !424
  %11 = load i32, i32* @g723_enc_pack_output.out_bits, align 4, !dbg !425
  %cmp = icmp sgt i32 %11, 0, !dbg !426
  %conv4 = zext i1 %cmp to i32, !dbg !426
  ret i32 %conv4, !dbg !427
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @g723_enc_init_state(%struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !428 {
entry:
  %state_ptr.addr = alloca %struct.g723_enc_state_t*, align 4
  %cnta = alloca i32, align 4
  store %struct.g723_enc_state_t* %state_ptr, %struct.g723_enc_state_t** %state_ptr.addr, align 4
  %0 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !429
  %yl = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %0, i32 0, i32 0, !dbg !430
  store i32 34816, i32* %yl, align 4, !dbg !431
  %1 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !432
  %yu = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %1, i32 0, i32 1, !dbg !433
  store i16 544, i16* %yu, align 4, !dbg !434
  %2 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !435
  %dms = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %2, i32 0, i32 2, !dbg !436
  store i16 0, i16* %dms, align 2, !dbg !437
  %3 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !438
  %dml = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %3, i32 0, i32 3, !dbg !439
  store i16 0, i16* %dml, align 4, !dbg !440
  %4 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !441
  %ap = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %4, i32 0, i32 4, !dbg !442
  store i16 0, i16* %ap, align 2, !dbg !443
  store i32 0, i32* %cnta, align 4, !dbg !444
  br label %for.cond, !dbg !445

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %cnta, align 4, !dbg !446
  %cmp = icmp slt i32 %5, 1, !dbg !447
  br i1 %cmp, label %for.body, label %for.end, !dbg !448

for.body:                                         ; preds = %for.cond
  %6 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !449
  %a = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %6, i32 0, i32 5, !dbg !450
  %7 = load i32, i32* %cnta, align 4, !dbg !451
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* %a, i32 0, i32 %7, !dbg !449
  store i16 0, i16* %arrayidx, align 2, !dbg !452
  %8 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !453
  %pk = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %8, i32 0, i32 7, !dbg !454
  %9 = load i32, i32* %cnta, align 4, !dbg !455
  %arrayidx1 = getelementptr inbounds [2 x i16], [2 x i16]* %pk, i32 0, i32 %9, !dbg !453
  store i16 0, i16* %arrayidx1, align 2, !dbg !456
  %10 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !457
  %sr = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %10, i32 0, i32 9, !dbg !458
  %11 = load i32, i32* %cnta, align 4, !dbg !459
  %arrayidx2 = getelementptr inbounds [2 x i16], [2 x i16]* %sr, i32 0, i32 %11, !dbg !457
  store i16 32, i16* %arrayidx2, align 2, !dbg !460
  br label %for.inc, !dbg !461

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %cnta, align 4, !dbg !462
  %inc = add nsw i32 %12, 1, !dbg !462
  store i32 %inc, i32* %cnta, align 4, !dbg !462
  br label %for.cond, !dbg !448, !llvm.loop !463

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cnta, align 4, !dbg !464
  br label %for.cond3, !dbg !465

for.cond3:                                        ; preds = %for.inc8, %for.end
  %13 = load i32, i32* %cnta, align 4, !dbg !466
  %cmp4 = icmp slt i32 %13, 1, !dbg !467
  br i1 %cmp4, label %for.body5, label %for.end10, !dbg !468

for.body5:                                        ; preds = %for.cond3
  %14 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !469
  %b = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %14, i32 0, i32 6, !dbg !470
  %15 = load i32, i32* %cnta, align 4, !dbg !471
  %arrayidx6 = getelementptr inbounds [6 x i16], [6 x i16]* %b, i32 0, i32 %15, !dbg !469
  store i16 0, i16* %arrayidx6, align 2, !dbg !472
  %16 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !473
  %dq = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %16, i32 0, i32 8, !dbg !474
  %17 = load i32, i32* %cnta, align 4, !dbg !475
  %arrayidx7 = getelementptr inbounds [6 x i16], [6 x i16]* %dq, i32 0, i32 %17, !dbg !473
  store i16 32, i16* %arrayidx7, align 2, !dbg !476
  br label %for.inc8, !dbg !477

for.inc8:                                         ; preds = %for.body5
  %18 = load i32, i32* %cnta, align 4, !dbg !478
  %inc9 = add nsw i32 %18, 1, !dbg !478
  store i32 %inc9, i32* %cnta, align 4, !dbg !478
  br label %for.cond3, !dbg !468, !llvm.loop !479

for.end10:                                        ; preds = %for.cond3
  %19 = load %struct.g723_enc_state_t*, %struct.g723_enc_state_t** %state_ptr.addr, align 4, !dbg !480
  %td = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %19, i32 0, i32 10, !dbg !481
  store i8 0, i8* %td, align 4, !dbg !482
  ret void, !dbg !483
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @g723_enc_init() #0 !dbg !484 {
entry:
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store volatile i32 0, i32* %x, align 4, !dbg !485
  call arm_aapcs_vfpcc void @g723_enc_init_state(%struct.g723_enc_state_t* noundef @g723_enc_state) #1, !dbg !486
  store i32 0, i32* %i, align 4, !dbg !487
  br label %for.cond, !dbg !488

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !489
  %cmp = icmp slt i32 %0, 1, !dbg !490
  br i1 %cmp, label %for.body, label %for.end, !dbg !491

for.body:                                         ; preds = %for.cond
  %1 = load volatile i32, i32* %x, align 4, !dbg !492
  %2 = load i32, i32* %i, align 4, !dbg !493
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @g723_enc_INPUT, i32 0, i32 %2, !dbg !494
  %3 = load i32, i32* %arrayidx, align 4, !dbg !495
  %add = add i32 %3, %1, !dbg !495
  store i32 %add, i32* %arrayidx, align 4, !dbg !495
  br label %for.inc, !dbg !494

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !496
  %inc = add nsw i32 %4, 1, !dbg !496
  store i32 %inc, i32* %i, align 4, !dbg !496
  br label %for.cond, !dbg !491, !llvm.loop !497

for.end:                                          ; preds = %for.cond
  ret void, !dbg !498
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_return() #0 !dbg !499 {
entry:
  %i = alloca i32, align 4
  %check_sum = alloca i32, align 4
  store i32 0, i32* %check_sum, align 4, !dbg !500
  store i32 0, i32* %i, align 4, !dbg !501
  br label %for.cond, !dbg !502

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !503
  %cmp = icmp slt i32 %0, 1, !dbg !504
  br i1 %cmp, label %for.body, label %for.end, !dbg !505

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !506
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @g723_enc_OUTPUT, i32 0, i32 %1, !dbg !507
  %2 = load i32, i32* %arrayidx, align 4, !dbg !507
  %3 = load i32, i32* %check_sum, align 4, !dbg !508
  %add = add i32 %3, %2, !dbg !508
  store i32 %add, i32* %check_sum, align 4, !dbg !508
  br label %for.inc, !dbg !509

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !510
  %inc = add nsw i32 %4, 1, !dbg !510
  store i32 %inc, i32* %i, align 4, !dbg !510
  br label %for.cond, !dbg !505, !llvm.loop !511

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !513
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @g723_enc_main() #0 !dbg !514 {
entry:
  %sample_short = alloca i16, align 2
  %code = alloca i8, align 1
  %resid = alloca i32, align 4
  %in_coding = alloca i32, align 4
  %in_buf = alloca i16*, align 4
  %enc_bits = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4, !dbg !515
  store i32 3, i32* %enc_bits, align 4, !dbg !516
  store i32 2, i32* %in_coding, align 4, !dbg !517
  store i16* %sample_short, i16** %in_buf, align 4, !dbg !518
  store i32 0, i32* %i, align 4, !dbg !519
  br label %for.cond, !dbg !520

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !521
  %cmp = icmp slt i32 %0, 1, !dbg !522
  br i1 %cmp, label %for.body, label %for.end, !dbg !523

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !524
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @g723_enc_INPUT, i32 0, i32 %1, !dbg !525
  %2 = load i32, i32* %arrayidx, align 4, !dbg !525
  %conv = trunc i32 %2 to i16, !dbg !525
  %3 = load i16*, i16** %in_buf, align 4, !dbg !526
  store i16 %conv, i16* %3, align 2, !dbg !527
  %4 = load i16, i16* %sample_short, align 2, !dbg !528
  %conv1 = sext i16 %4 to i32, !dbg !528
  %5 = load i32, i32* %in_coding, align 4, !dbg !529
  %call = call arm_aapcs_vfpcc i32 @g723_enc_g723_24_encoder(i32 noundef %conv1, i32 noundef %5, %struct.g723_enc_state_t* noundef @g723_enc_state) #1, !dbg !530
  %conv2 = trunc i32 %call to i8, !dbg !530
  store i8 %conv2, i8* %code, align 1, !dbg !531
  %6 = load i8, i8* %code, align 1, !dbg !532
  %7 = load i32, i32* %enc_bits, align 4, !dbg !533
  %call3 = call arm_aapcs_vfpcc i32 @g723_enc_pack_output(i8 noundef zeroext %6, i32 noundef %7) #1, !dbg !534
  store i32 %call3, i32* %resid, align 4, !dbg !535
  br label %for.inc, !dbg !536

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !537
  %inc = add nsw i32 %8, 1, !dbg !537
  store i32 %inc, i32* %i, align 4, !dbg !537
  br label %for.cond, !dbg !523, !llvm.loop !538

for.end:                                          ; preds = %for.cond
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !540 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call arm_aapcs_vfpcc void @g723_enc_init() #1, !dbg !541
  call arm_aapcs_vfpcc void @g723_enc_main() #1, !dbg !542
  %call = call arm_aapcs_vfpcc i32 @g723_enc_return() #1, !dbg !543
  ret i32 %call, !dbg !544
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/g723_enc/g723_enc.c", directory: "/workspaces/llvmta/testcases/tmp.nudlGPqgFM", checksumkind: CSK_MD5, checksum: "2ace5cafdf45d5556fee9feb4e30ede7")
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
!12 = distinct !DISubprogram(name: "g723_enc_fmult", scope: !13, file: !13, line: 200, type: !14, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "batchtest/g723_enc/g723_enc.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "2ace5cafdf45d5556fee9feb4e30ede7")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 208, column: 9, scope: !12)
!17 = !DILocation(line: 209, column: 26, scope: !12)
!18 = !DILocation(line: 209, column: 11, scope: !12)
!19 = !DILocation(line: 209, column: 54, scope: !12)
!20 = !DILocation(line: 209, column: 9, scope: !12)
!21 = !DILocation(line: 210, column: 12, scope: !12)
!22 = !DILocation(line: 210, column: 22, scope: !12)
!23 = !DILocation(line: 210, column: 21, scope: !12)
!24 = !DILocation(line: 210, column: 18, scope: !12)
!25 = !DILocation(line: 210, column: 10, scope: !12)
!26 = !DILocation(line: 211, column: 12, scope: !12)
!27 = !DILocation(line: 211, column: 24, scope: !12)
!28 = !DILocation(line: 211, column: 28, scope: !12)
!29 = !DILocation(line: 211, column: 35, scope: !12)
!30 = !DILocation(line: 211, column: 18, scope: !12)
!31 = !DILocation(line: 211, column: 43, scope: !12)
!32 = !DILocation(line: 211, column: 10, scope: !12)
!33 = !DILocation(line: 213, column: 15, scope: !12)
!34 = !DILocation(line: 213, column: 26, scope: !12)
!35 = !DILocation(line: 213, column: 30, scope: !12)
!36 = !DILocation(line: 213, column: 22, scope: !12)
!37 = !DILocation(line: 213, column: 38, scope: !12)
!38 = !DILocation(line: 213, column: 47, scope: !12)
!39 = !DILocation(line: 213, column: 13, scope: !12)
!40 = !DILocation(line: 213, column: 11, scope: !12)
!41 = !DILocation(line: 214, column: 14, scope: !12)
!42 = !DILocation(line: 214, column: 26, scope: !12)
!43 = !DILocation(line: 214, column: 25, scope: !12)
!44 = !DILocation(line: 214, column: 22, scope: !12)
!45 = !DILocation(line: 214, column: 12, scope: !12)
!46 = !DILocation(line: 214, column: 10, scope: !12)
!47 = !DILocation(line: 216, column: 10, scope: !12)
!48 = !DILocation(line: 216, column: 3, scope: !12)
!49 = distinct !DISubprogram(name: "g723_enc_quan", scope: !13, file: !13, line: 240, type: !14, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!50 = !DILocation(line: 246, column: 7, scope: !49)
!51 = !DILocation(line: 247, column: 7, scope: !49)
!52 = !DILocation(line: 250, column: 11, scope: !49)
!53 = !DILocation(line: 250, column: 9, scope: !49)
!54 = !DILocation(line: 250, column: 16, scope: !49)
!55 = !DILocation(line: 250, column: 18, scope: !49)
!56 = !DILocation(line: 250, column: 3, scope: !49)
!57 = !DILocation(line: 252, column: 13, scope: !49)
!58 = !DILocation(line: 252, column: 11, scope: !49)
!59 = !DILocation(line: 253, column: 11, scope: !49)
!60 = !DILocation(line: 255, column: 3, scope: !49)
!61 = !DILocation(line: 250, column: 23, scope: !49)
!62 = distinct !{!62, !56, !60, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !DILocation(line: 257, column: 12, scope: !49)
!65 = !DILocation(line: 257, column: 3, scope: !49)
!66 = distinct !DISubprogram(name: "g723_enc_abs", scope: !13, file: !13, line: 221, type: !14, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!67 = !DILocation(line: 223, column: 10, scope: !66)
!68 = !DILocation(line: 223, column: 3, scope: !66)
!69 = distinct !DISubprogram(name: "g723_enc_predictor_zero", scope: !13, file: !13, line: 268, type: !14, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!70 = !DILocation(line: 274, column: 26, scope: !69)
!71 = !DILocation(line: 274, column: 37, scope: !69)
!72 = !DILocation(line: 274, column: 44, scope: !69)
!73 = !DILocation(line: 274, column: 50, scope: !69)
!74 = !DILocation(line: 274, column: 61, scope: !69)
!75 = !DILocation(line: 274, column: 10, scope: !69)
!76 = !DILocation(line: 274, column: 8, scope: !69)
!77 = !DILocation(line: 276, column: 11, scope: !69)
!78 = !DILocation(line: 276, column: 9, scope: !69)
!79 = !DILocation(line: 276, column: 16, scope: !69)
!80 = !DILocation(line: 276, column: 18, scope: !69)
!81 = !DILocation(line: 276, column: 3, scope: !69)
!82 = !DILocation(line: 277, column: 29, scope: !69)
!83 = !DILocation(line: 277, column: 40, scope: !69)
!84 = !DILocation(line: 277, column: 43, scope: !69)
!85 = !DILocation(line: 277, column: 47, scope: !69)
!86 = !DILocation(line: 277, column: 53, scope: !69)
!87 = !DILocation(line: 277, column: 64, scope: !69)
!88 = !DILocation(line: 277, column: 68, scope: !69)
!89 = !DILocation(line: 277, column: 13, scope: !69)
!90 = !DILocation(line: 277, column: 10, scope: !69)
!91 = !DILocation(line: 277, column: 5, scope: !69)
!92 = !DILocation(line: 276, column: 24, scope: !69)
!93 = distinct !{!93, !81, !94, !63}
!94 = !DILocation(line: 277, column: 72, scope: !69)
!95 = !DILocation(line: 279, column: 12, scope: !69)
!96 = !DILocation(line: 279, column: 3, scope: !69)
!97 = distinct !DISubprogram(name: "g723_enc_predictor_pole", scope: !13, file: !13, line: 290, type: !14, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!98 = !DILocation(line: 293, column: 28, scope: !97)
!99 = !DILocation(line: 293, column: 39, scope: !97)
!100 = !DILocation(line: 293, column: 46, scope: !97)
!101 = !DILocation(line: 293, column: 52, scope: !97)
!102 = !DILocation(line: 293, column: 63, scope: !97)
!103 = !DILocation(line: 293, column: 12, scope: !97)
!104 = !DILocation(line: 294, column: 28, scope: !97)
!105 = !DILocation(line: 294, column: 39, scope: !97)
!106 = !DILocation(line: 294, column: 46, scope: !97)
!107 = !DILocation(line: 294, column: 52, scope: !97)
!108 = !DILocation(line: 294, column: 63, scope: !97)
!109 = !DILocation(line: 294, column: 12, scope: !97)
!110 = !DILocation(line: 293, column: 73, scope: !97)
!111 = !DILocation(line: 293, column: 3, scope: !97)
!112 = distinct !DISubprogram(name: "g723_enc_step_size", scope: !13, file: !13, line: 304, type: !14, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!113 = !DILocation(line: 311, column: 12, scope: !112)
!114 = !DILocation(line: 311, column: 23, scope: !112)
!115 = !DILocation(line: 311, column: 10, scope: !112)
!116 = !DILocation(line: 311, column: 3, scope: !112)
!117 = distinct !DISubprogram(name: "g723_enc_quantize", scope: !13, file: !13, line: 324, type: !14, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!118 = !DILocation(line: 342, column: 23, scope: !117)
!119 = !DILocation(line: 342, column: 9, scope: !117)
!120 = !DILocation(line: 342, column: 7, scope: !117)
!121 = !DILocation(line: 343, column: 24, scope: !117)
!122 = !DILocation(line: 343, column: 28, scope: !117)
!123 = !DILocation(line: 343, column: 9, scope: !117)
!124 = !DILocation(line: 343, column: 7, scope: !117)
!125 = !DILocation(line: 344, column: 14, scope: !117)
!126 = !DILocation(line: 344, column: 18, scope: !117)
!127 = !DILocation(line: 344, column: 28, scope: !117)
!128 = !DILocation(line: 344, column: 25, scope: !117)
!129 = !DILocation(line: 344, column: 34, scope: !117)
!130 = !DILocation(line: 344, column: 10, scope: !117)
!131 = !DILocation(line: 344, column: 8, scope: !117)
!132 = !DILocation(line: 345, column: 10, scope: !117)
!133 = !DILocation(line: 345, column: 14, scope: !117)
!134 = !DILocation(line: 345, column: 23, scope: !117)
!135 = !DILocation(line: 345, column: 21, scope: !117)
!136 = !DILocation(line: 345, column: 8, scope: !117)
!137 = !DILocation(line: 345, column: 6, scope: !117)
!138 = !DILocation(line: 352, column: 9, scope: !117)
!139 = !DILocation(line: 352, column: 16, scope: !117)
!140 = !DILocation(line: 352, column: 18, scope: !117)
!141 = !DILocation(line: 352, column: 12, scope: !117)
!142 = !DILocation(line: 352, column: 7, scope: !117)
!143 = !DILocation(line: 359, column: 22, scope: !117)
!144 = !DILocation(line: 359, column: 27, scope: !117)
!145 = !DILocation(line: 359, column: 34, scope: !117)
!146 = !DILocation(line: 359, column: 7, scope: !117)
!147 = !DILocation(line: 359, column: 5, scope: !117)
!148 = !DILocation(line: 361, column: 12, scope: !117)
!149 = !DILocation(line: 361, column: 3, scope: !117)
!150 = distinct !DISubprogram(name: "g723_enc_reconstruct", scope: !13, file: !13, line: 371, type: !14, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!151 = !DILocation(line: 381, column: 9, scope: !150)
!152 = !DILocation(line: 381, column: 18, scope: !150)
!153 = !DILocation(line: 381, column: 20, scope: !150)
!154 = !DILocation(line: 381, column: 14, scope: !150)
!155 = !DILocation(line: 381, column: 7, scope: !150)
!156 = !DILocation(line: 384, column: 14, scope: !150)
!157 = !DILocation(line: 384, column: 12, scope: !150)
!158 = !DILocation(line: 384, column: 3, scope: !150)
!159 = distinct !DISubprogram(name: "g723_enc_update", scope: !13, file: !13, line: 395, type: !14, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!160 = !DILocation(line: 416, column: 11, scope: !159)
!161 = !DILocation(line: 416, column: 17, scope: !159)
!162 = !DILocation(line: 416, column: 9, scope: !159)
!163 = !DILocation(line: 416, column: 7, scope: !159)
!164 = !DILocation(line: 418, column: 9, scope: !159)
!165 = !DILocation(line: 418, column: 12, scope: !159)
!166 = !DILocation(line: 418, column: 7, scope: !159)
!167 = !DILocation(line: 420, column: 11, scope: !159)
!168 = !DILocation(line: 420, column: 22, scope: !159)
!169 = !DILocation(line: 420, column: 25, scope: !159)
!170 = !DILocation(line: 420, column: 9, scope: !159)
!171 = !DILocation(line: 421, column: 14, scope: !159)
!172 = !DILocation(line: 421, column: 25, scope: !159)
!173 = !DILocation(line: 421, column: 28, scope: !159)
!174 = !DILocation(line: 421, column: 36, scope: !159)
!175 = !DILocation(line: 421, column: 12, scope: !159)
!176 = !DILocation(line: 421, column: 10, scope: !159)
!177 = !DILocation(line: 422, column: 17, scope: !159)
!178 = !DILocation(line: 422, column: 15, scope: !159)
!179 = !DILocation(line: 422, column: 29, scope: !159)
!180 = !DILocation(line: 422, column: 26, scope: !159)
!181 = !DILocation(line: 422, column: 10, scope: !159)
!182 = !DILocation(line: 422, column: 8, scope: !159)
!183 = !DILocation(line: 423, column: 12, scope: !159)
!184 = !DILocation(line: 423, column: 18, scope: !159)
!185 = !DILocation(line: 423, column: 10, scope: !159)
!186 = !DILocation(line: 423, column: 37, scope: !159)
!187 = !DILocation(line: 423, column: 8, scope: !159)
!188 = !DILocation(line: 424, column: 13, scope: !159)
!189 = !DILocation(line: 424, column: 22, scope: !159)
!190 = !DILocation(line: 424, column: 27, scope: !159)
!191 = !DILocation(line: 424, column: 18, scope: !159)
!192 = !DILocation(line: 424, column: 36, scope: !159)
!193 = !DILocation(line: 424, column: 11, scope: !159)
!194 = !DILocation(line: 424, column: 9, scope: !159)
!195 = !DILocation(line: 425, column: 6, scope: !159)
!196 = !DILocation(line: 433, column: 19, scope: !159)
!197 = !DILocation(line: 433, column: 27, scope: !159)
!198 = !DILocation(line: 433, column: 32, scope: !159)
!199 = !DILocation(line: 433, column: 30, scope: !159)
!200 = !DILocation(line: 433, column: 36, scope: !159)
!201 = !DILocation(line: 433, column: 21, scope: !159)
!202 = !DILocation(line: 433, column: 3, scope: !159)
!203 = !DILocation(line: 433, column: 14, scope: !159)
!204 = !DILocation(line: 433, column: 17, scope: !159)
!205 = !DILocation(line: 435, column: 3, scope: !159)
!206 = !DILocation(line: 435, column: 14, scope: !159)
!207 = !DILocation(line: 435, column: 17, scope: !159)
!208 = !DILocation(line: 440, column: 20, scope: !159)
!209 = !DILocation(line: 440, column: 31, scope: !159)
!210 = !DILocation(line: 440, column: 41, scope: !159)
!211 = !DILocation(line: 440, column: 52, scope: !159)
!212 = !DILocation(line: 440, column: 40, scope: !159)
!213 = !DILocation(line: 440, column: 57, scope: !159)
!214 = !DILocation(line: 440, column: 34, scope: !159)
!215 = !DILocation(line: 440, column: 3, scope: !159)
!216 = !DILocation(line: 440, column: 14, scope: !159)
!217 = !DILocation(line: 440, column: 17, scope: !159)
!218 = !DILocation(line: 445, column: 3, scope: !159)
!219 = !DILocation(line: 445, column: 14, scope: !159)
!220 = !DILocation(line: 445, column: 21, scope: !159)
!221 = !DILocation(line: 446, column: 3, scope: !159)
!222 = !DILocation(line: 446, column: 14, scope: !159)
!223 = !DILocation(line: 446, column: 21, scope: !159)
!224 = !DILocation(line: 447, column: 3, scope: !159)
!225 = !DILocation(line: 447, column: 14, scope: !159)
!226 = !DILocation(line: 447, column: 21, scope: !159)
!227 = !DILocation(line: 448, column: 3, scope: !159)
!228 = !DILocation(line: 448, column: 14, scope: !159)
!229 = !DILocation(line: 448, column: 21, scope: !159)
!230 = !DILocation(line: 449, column: 3, scope: !159)
!231 = !DILocation(line: 449, column: 14, scope: !159)
!232 = !DILocation(line: 449, column: 21, scope: !159)
!233 = !DILocation(line: 450, column: 3, scope: !159)
!234 = !DILocation(line: 450, column: 14, scope: !159)
!235 = !DILocation(line: 450, column: 21, scope: !159)
!236 = !DILocation(line: 451, column: 3, scope: !159)
!237 = !DILocation(line: 451, column: 14, scope: !159)
!238 = !DILocation(line: 451, column: 21, scope: !159)
!239 = !DILocation(line: 452, column: 3, scope: !159)
!240 = !DILocation(line: 452, column: 14, scope: !159)
!241 = !DILocation(line: 452, column: 21, scope: !159)
!242 = !DILocation(line: 456, column: 13, scope: !159)
!243 = !DILocation(line: 456, column: 9, scope: !159)
!244 = !DILocation(line: 456, column: 18, scope: !159)
!245 = !DILocation(line: 456, column: 22, scope: !159)
!246 = !DILocation(line: 456, column: 3, scope: !159)
!247 = !DILocation(line: 457, column: 28, scope: !159)
!248 = !DILocation(line: 457, column: 39, scope: !159)
!249 = !DILocation(line: 457, column: 43, scope: !159)
!250 = !DILocation(line: 457, column: 47, scope: !159)
!251 = !DILocation(line: 457, column: 5, scope: !159)
!252 = !DILocation(line: 457, column: 16, scope: !159)
!253 = !DILocation(line: 457, column: 20, scope: !159)
!254 = !DILocation(line: 457, column: 26, scope: !159)
!255 = !DILocation(line: 456, column: 30, scope: !159)
!256 = distinct !{!256, !246, !257, !63}
!257 = !DILocation(line: 457, column: 51, scope: !159)
!258 = !DILocation(line: 459, column: 3, scope: !159)
!259 = !DILocation(line: 459, column: 14, scope: !159)
!260 = !DILocation(line: 459, column: 22, scope: !159)
!261 = !DILocation(line: 462, column: 24, scope: !159)
!262 = !DILocation(line: 462, column: 35, scope: !159)
!263 = !DILocation(line: 462, column: 3, scope: !159)
!264 = !DILocation(line: 462, column: 14, scope: !159)
!265 = !DILocation(line: 462, column: 22, scope: !159)
!266 = !DILocation(line: 464, column: 3, scope: !159)
!267 = !DILocation(line: 464, column: 14, scope: !159)
!268 = !DILocation(line: 464, column: 22, scope: !159)
!269 = !DILocation(line: 468, column: 24, scope: !159)
!270 = !DILocation(line: 468, column: 35, scope: !159)
!271 = !DILocation(line: 468, column: 3, scope: !159)
!272 = !DILocation(line: 468, column: 14, scope: !159)
!273 = !DILocation(line: 468, column: 22, scope: !159)
!274 = !DILocation(line: 469, column: 24, scope: !159)
!275 = !DILocation(line: 469, column: 3, scope: !159)
!276 = !DILocation(line: 469, column: 14, scope: !159)
!277 = !DILocation(line: 469, column: 22, scope: !159)
!278 = !DILocation(line: 472, column: 3, scope: !159)
!279 = !DILocation(line: 472, column: 14, scope: !159)
!280 = !DILocation(line: 472, column: 17, scope: !159)
!281 = !DILocation(line: 478, column: 23, scope: !159)
!282 = !DILocation(line: 478, column: 28, scope: !159)
!283 = !DILocation(line: 478, column: 39, scope: !159)
!284 = !DILocation(line: 478, column: 26, scope: !159)
!285 = !DILocation(line: 478, column: 45, scope: !159)
!286 = !DILocation(line: 478, column: 3, scope: !159)
!287 = !DILocation(line: 478, column: 14, scope: !159)
!288 = !DILocation(line: 478, column: 18, scope: !159)
!289 = !DILocation(line: 479, column: 27, scope: !159)
!290 = !DILocation(line: 479, column: 30, scope: !159)
!291 = !DILocation(line: 479, column: 39, scope: !159)
!292 = !DILocation(line: 479, column: 50, scope: !159)
!293 = !DILocation(line: 479, column: 37, scope: !159)
!294 = !DILocation(line: 479, column: 56, scope: !159)
!295 = !DILocation(line: 479, column: 3, scope: !159)
!296 = !DILocation(line: 479, column: 14, scope: !159)
!297 = !DILocation(line: 479, column: 18, scope: !159)
!298 = !DILocation(line: 481, column: 3, scope: !159)
!299 = !DILocation(line: 481, column: 14, scope: !159)
!300 = !DILocation(line: 481, column: 17, scope: !159)
!301 = !DILocation(line: 482, column: 1, scope: !159)
!302 = distinct !DISubprogram(name: "g723_enc_alaw2linear", scope: !13, file: !13, line: 490, type: !14, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!303 = !DILocation(line: 496, column: 9, scope: !302)
!304 = !DILocation(line: 498, column: 9, scope: !302)
!305 = !DILocation(line: 498, column: 15, scope: !302)
!306 = !DILocation(line: 498, column: 30, scope: !302)
!307 = !DILocation(line: 498, column: 5, scope: !302)
!308 = !DILocation(line: 499, column: 23, scope: !302)
!309 = !DILocation(line: 499, column: 11, scope: !302)
!310 = !DILocation(line: 499, column: 29, scope: !302)
!311 = !DILocation(line: 499, column: 42, scope: !302)
!312 = !DILocation(line: 499, column: 7, scope: !302)
!313 = !DILocation(line: 500, column: 5, scope: !302)
!314 = !DILocation(line: 501, column: 9, scope: !302)
!315 = !DILocation(line: 501, column: 13, scope: !302)
!316 = !DILocation(line: 501, column: 5, scope: !302)
!317 = !DILocation(line: 503, column: 14, scope: !302)
!318 = !DILocation(line: 503, column: 20, scope: !302)
!319 = !DILocation(line: 503, column: 12, scope: !302)
!320 = !DILocation(line: 503, column: 35, scope: !302)
!321 = !DILocation(line: 503, column: 40, scope: !302)
!322 = !DILocation(line: 503, column: 39, scope: !302)
!323 = !DILocation(line: 503, column: 3, scope: !302)
!324 = distinct !DISubprogram(name: "g723_enc_ulaw2linear", scope: !13, file: !13, line: 517, type: !14, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!325 = !DILocation(line: 523, column: 12, scope: !324)
!326 = !DILocation(line: 523, column: 11, scope: !324)
!327 = !DILocation(line: 523, column: 9, scope: !324)
!328 = !DILocation(line: 529, column: 11, scope: !324)
!329 = !DILocation(line: 529, column: 17, scope: !324)
!330 = !DILocation(line: 529, column: 32, scope: !324)
!331 = !DILocation(line: 529, column: 39, scope: !324)
!332 = !DILocation(line: 529, column: 5, scope: !324)
!333 = !DILocation(line: 530, column: 27, scope: !324)
!334 = !DILocation(line: 530, column: 11, scope: !324)
!335 = !DILocation(line: 530, column: 33, scope: !324)
!336 = !DILocation(line: 530, column: 46, scope: !324)
!337 = !DILocation(line: 530, column: 5, scope: !324)
!338 = !DILocation(line: 532, column: 14, scope: !324)
!339 = !DILocation(line: 532, column: 20, scope: !324)
!340 = !DILocation(line: 532, column: 12, scope: !324)
!341 = !DILocation(line: 532, column: 44, scope: !324)
!342 = !DILocation(line: 532, column: 42, scope: !324)
!343 = !DILocation(line: 532, column: 52, scope: !324)
!344 = !DILocation(line: 532, column: 54, scope: !324)
!345 = !DILocation(line: 532, column: 3, scope: !324)
!346 = distinct !DISubprogram(name: "g723_enc_g723_24_encoder", scope: !13, file: !13, line: 543, type: !14, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!347 = !DILocation(line: 556, column: 30, scope: !346)
!348 = !DILocation(line: 556, column: 8, scope: !346)
!349 = !DILocation(line: 556, column: 35, scope: !346)
!350 = !DILocation(line: 556, column: 6, scope: !346)
!351 = !DILocation(line: 559, column: 35, scope: !346)
!352 = !DILocation(line: 559, column: 10, scope: !346)
!353 = !DILocation(line: 559, column: 8, scope: !346)
!354 = !DILocation(line: 560, column: 9, scope: !346)
!355 = !DILocation(line: 560, column: 14, scope: !346)
!356 = !DILocation(line: 560, column: 7, scope: !346)
!357 = !DILocation(line: 561, column: 9, scope: !346)
!358 = !DILocation(line: 561, column: 41, scope: !346)
!359 = !DILocation(line: 561, column: 16, scope: !346)
!360 = !DILocation(line: 561, column: 14, scope: !346)
!361 = !DILocation(line: 561, column: 7, scope: !346)
!362 = !DILocation(line: 562, column: 8, scope: !346)
!363 = !DILocation(line: 562, column: 12, scope: !346)
!364 = !DILocation(line: 562, column: 6, scope: !346)
!365 = !DILocation(line: 564, column: 7, scope: !346)
!366 = !DILocation(line: 564, column: 12, scope: !346)
!367 = !DILocation(line: 564, column: 10, scope: !346)
!368 = !DILocation(line: 564, column: 5, scope: !346)
!369 = !DILocation(line: 567, column: 27, scope: !346)
!370 = !DILocation(line: 567, column: 7, scope: !346)
!371 = !DILocation(line: 567, column: 5, scope: !346)
!372 = !DILocation(line: 568, column: 26, scope: !346)
!373 = !DILocation(line: 568, column: 29, scope: !346)
!374 = !DILocation(line: 568, column: 7, scope: !346)
!375 = !DILocation(line: 568, column: 5, scope: !346)
!376 = !DILocation(line: 569, column: 30, scope: !346)
!377 = !DILocation(line: 569, column: 32, scope: !346)
!378 = !DILocation(line: 569, column: 55, scope: !346)
!379 = !DILocation(line: 569, column: 37, scope: !346)
!380 = !DILocation(line: 570, column: 30, scope: !346)
!381 = !DILocation(line: 569, column: 8, scope: !346)
!382 = !DILocation(line: 569, column: 6, scope: !346)
!383 = !DILocation(line: 572, column: 9, scope: !346)
!384 = !DILocation(line: 572, column: 14, scope: !346)
!385 = !DILocation(line: 572, column: 12, scope: !346)
!386 = !DILocation(line: 572, column: 6, scope: !346)
!387 = !DILocation(line: 574, column: 11, scope: !346)
!388 = !DILocation(line: 574, column: 16, scope: !346)
!389 = !DILocation(line: 574, column: 14, scope: !346)
!390 = !DILocation(line: 574, column: 22, scope: !346)
!391 = !DILocation(line: 574, column: 20, scope: !346)
!392 = !DILocation(line: 574, column: 9, scope: !346)
!393 = !DILocation(line: 576, column: 23, scope: !346)
!394 = !DILocation(line: 576, column: 42, scope: !346)
!395 = !DILocation(line: 576, column: 26, scope: !346)
!396 = !DILocation(line: 576, column: 63, scope: !346)
!397 = !DILocation(line: 576, column: 47, scope: !346)
!398 = !DILocation(line: 576, column: 68, scope: !346)
!399 = !DILocation(line: 576, column: 72, scope: !346)
!400 = !DILocation(line: 576, column: 76, scope: !346)
!401 = !DILocation(line: 577, column: 20, scope: !346)
!402 = !DILocation(line: 576, column: 3, scope: !346)
!403 = !DILocation(line: 579, column: 12, scope: !346)
!404 = !DILocation(line: 579, column: 10, scope: !346)
!405 = !DILocation(line: 579, column: 3, scope: !346)
!406 = distinct !DISubprogram(name: "g723_enc_pack_output", scope: !13, file: !13, line: 587, type: !14, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!407 = !DILocation(line: 596, column: 19, scope: !406)
!408 = !DILocation(line: 596, column: 27, scope: !406)
!409 = !DILocation(line: 596, column: 24, scope: !406)
!410 = !DILocation(line: 596, column: 14, scope: !406)
!411 = !DILocation(line: 597, column: 15, scope: !406)
!412 = !DILocation(line: 597, column: 12, scope: !406)
!413 = !DILocation(line: 599, column: 14, scope: !406)
!414 = !DILocation(line: 599, column: 25, scope: !406)
!415 = !DILocation(line: 599, column: 12, scope: !406)
!416 = !DILocation(line: 600, column: 12, scope: !406)
!417 = !DILocation(line: 601, column: 14, scope: !406)
!418 = !DILocation(line: 604, column: 26, scope: !406)
!419 = !DILocation(line: 604, column: 20, scope: !406)
!420 = !DILocation(line: 604, column: 3, scope: !406)
!421 = !DILocation(line: 604, column: 24, scope: !406)
!422 = !DILocation(line: 605, column: 8, scope: !406)
!423 = !DILocation(line: 605, column: 10, scope: !406)
!424 = !DILocation(line: 605, column: 5, scope: !406)
!425 = !DILocation(line: 608, column: 12, scope: !406)
!426 = !DILocation(line: 608, column: 21, scope: !406)
!427 = !DILocation(line: 608, column: 3, scope: !406)
!428 = distinct !DISubprogram(name: "g723_enc_init_state", scope: !13, file: !13, line: 623, type: !14, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!429 = !DILocation(line: 628, column: 3, scope: !428)
!430 = !DILocation(line: 628, column: 14, scope: !428)
!431 = !DILocation(line: 628, column: 17, scope: !428)
!432 = !DILocation(line: 629, column: 3, scope: !428)
!433 = !DILocation(line: 629, column: 14, scope: !428)
!434 = !DILocation(line: 629, column: 17, scope: !428)
!435 = !DILocation(line: 630, column: 3, scope: !428)
!436 = !DILocation(line: 630, column: 14, scope: !428)
!437 = !DILocation(line: 630, column: 18, scope: !428)
!438 = !DILocation(line: 631, column: 3, scope: !428)
!439 = !DILocation(line: 631, column: 14, scope: !428)
!440 = !DILocation(line: 631, column: 18, scope: !428)
!441 = !DILocation(line: 632, column: 3, scope: !428)
!442 = !DILocation(line: 632, column: 14, scope: !428)
!443 = !DILocation(line: 632, column: 17, scope: !428)
!444 = !DILocation(line: 635, column: 14, scope: !428)
!445 = !DILocation(line: 635, column: 9, scope: !428)
!446 = !DILocation(line: 635, column: 19, scope: !428)
!447 = !DILocation(line: 635, column: 24, scope: !428)
!448 = !DILocation(line: 635, column: 3, scope: !428)
!449 = !DILocation(line: 636, column: 5, scope: !428)
!450 = !DILocation(line: 636, column: 16, scope: !428)
!451 = !DILocation(line: 636, column: 19, scope: !428)
!452 = !DILocation(line: 636, column: 26, scope: !428)
!453 = !DILocation(line: 637, column: 5, scope: !428)
!454 = !DILocation(line: 637, column: 16, scope: !428)
!455 = !DILocation(line: 637, column: 20, scope: !428)
!456 = !DILocation(line: 637, column: 27, scope: !428)
!457 = !DILocation(line: 638, column: 5, scope: !428)
!458 = !DILocation(line: 638, column: 16, scope: !428)
!459 = !DILocation(line: 638, column: 20, scope: !428)
!460 = !DILocation(line: 638, column: 27, scope: !428)
!461 = !DILocation(line: 639, column: 3, scope: !428)
!462 = !DILocation(line: 635, column: 33, scope: !428)
!463 = distinct !{!463, !448, !461, !63}
!464 = !DILocation(line: 641, column: 14, scope: !428)
!465 = !DILocation(line: 641, column: 9, scope: !428)
!466 = !DILocation(line: 641, column: 19, scope: !428)
!467 = !DILocation(line: 641, column: 24, scope: !428)
!468 = !DILocation(line: 641, column: 3, scope: !428)
!469 = !DILocation(line: 642, column: 5, scope: !428)
!470 = !DILocation(line: 642, column: 16, scope: !428)
!471 = !DILocation(line: 642, column: 19, scope: !428)
!472 = !DILocation(line: 642, column: 26, scope: !428)
!473 = !DILocation(line: 643, column: 5, scope: !428)
!474 = !DILocation(line: 643, column: 16, scope: !428)
!475 = !DILocation(line: 643, column: 20, scope: !428)
!476 = !DILocation(line: 643, column: 27, scope: !428)
!477 = !DILocation(line: 644, column: 3, scope: !428)
!478 = !DILocation(line: 641, column: 33, scope: !428)
!479 = distinct !{!479, !468, !477, !63}
!480 = !DILocation(line: 645, column: 3, scope: !428)
!481 = !DILocation(line: 645, column: 14, scope: !428)
!482 = !DILocation(line: 645, column: 17, scope: !428)
!483 = !DILocation(line: 646, column: 1, scope: !428)
!484 = distinct !DISubprogram(name: "g723_enc_init", scope: !13, file: !13, line: 649, type: !14, scopeLine: 650, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!485 = !DILocation(line: 652, column: 16, scope: !484)
!486 = !DILocation(line: 653, column: 3, scope: !484)
!487 = !DILocation(line: 656, column: 11, scope: !484)
!488 = !DILocation(line: 656, column: 9, scope: !484)
!489 = !DILocation(line: 656, column: 16, scope: !484)
!490 = !DILocation(line: 656, column: 18, scope: !484)
!491 = !DILocation(line: 656, column: 3, scope: !484)
!492 = !DILocation(line: 657, column: 28, scope: !484)
!493 = !DILocation(line: 657, column: 21, scope: !484)
!494 = !DILocation(line: 657, column: 5, scope: !484)
!495 = !DILocation(line: 657, column: 25, scope: !484)
!496 = !DILocation(line: 656, column: 24, scope: !484)
!497 = distinct !{!497, !491, !492, !63}
!498 = !DILocation(line: 658, column: 1, scope: !484)
!499 = distinct !DISubprogram(name: "g723_enc_return", scope: !13, file: !13, line: 661, type: !14, scopeLine: 662, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!500 = !DILocation(line: 664, column: 7, scope: !499)
!501 = !DILocation(line: 667, column: 11, scope: !499)
!502 = !DILocation(line: 667, column: 9, scope: !499)
!503 = !DILocation(line: 667, column: 16, scope: !499)
!504 = !DILocation(line: 667, column: 18, scope: !499)
!505 = !DILocation(line: 667, column: 3, scope: !499)
!506 = !DILocation(line: 668, column: 35, scope: !499)
!507 = !DILocation(line: 668, column: 18, scope: !499)
!508 = !DILocation(line: 668, column: 15, scope: !499)
!509 = !DILocation(line: 668, column: 5, scope: !499)
!510 = !DILocation(line: 667, column: 24, scope: !499)
!511 = distinct !{!511, !505, !512, !63}
!512 = !DILocation(line: 668, column: 37, scope: !499)
!513 = !DILocation(line: 670, column: 3, scope: !499)
!514 = distinct !DISubprogram(name: "g723_enc_main", scope: !13, file: !13, line: 677, type: !14, scopeLine: 678, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!515 = !DILocation(line: 686, column: 7, scope: !514)
!516 = !DILocation(line: 688, column: 12, scope: !514)
!517 = !DILocation(line: 689, column: 13, scope: !514)
!518 = !DILocation(line: 690, column: 10, scope: !514)
!519 = !DILocation(line: 693, column: 11, scope: !514)
!520 = !DILocation(line: 693, column: 9, scope: !514)
!521 = !DILocation(line: 693, column: 16, scope: !514)
!522 = !DILocation(line: 693, column: 18, scope: !514)
!523 = !DILocation(line: 693, column: 3, scope: !514)
!524 = !DILocation(line: 694, column: 31, scope: !514)
!525 = !DILocation(line: 694, column: 15, scope: !514)
!526 = !DILocation(line: 694, column: 6, scope: !514)
!527 = !DILocation(line: 694, column: 13, scope: !514)
!528 = !DILocation(line: 695, column: 38, scope: !514)
!529 = !DILocation(line: 695, column: 52, scope: !514)
!530 = !DILocation(line: 695, column: 12, scope: !514)
!531 = !DILocation(line: 695, column: 10, scope: !514)
!532 = !DILocation(line: 696, column: 35, scope: !514)
!533 = !DILocation(line: 696, column: 41, scope: !514)
!534 = !DILocation(line: 696, column: 13, scope: !514)
!535 = !DILocation(line: 696, column: 11, scope: !514)
!536 = !DILocation(line: 697, column: 3, scope: !514)
!537 = !DILocation(line: 693, column: 24, scope: !514)
!538 = distinct !{!538, !523, !536, !63}
!539 = !DILocation(line: 699, column: 1, scope: !514)
!540 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 702, type: !14, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!541 = !DILocation(line: 704, column: 3, scope: !540)
!542 = !DILocation(line: 705, column: 3, scope: !540)
!543 = !DILocation(line: 707, column: 12, scope: !540)
!544 = !DILocation(line: 707, column: 3, scope: !540)
