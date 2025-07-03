; ModuleID = '/workspaces/llvmta/testcases/batchtest/ndes/ndes.c'
source_filename = "/workspaces/llvmta/testcases/batchtest/ndes/ndes.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.NDES_IMMENSE = type { i32, i32 }
%struct.NDES_GREAT = type { i32, i32, i32 }

@ndes_value = dso_local global i32 1, align 4
@ndes_init.ndes_ipc1_tmp = internal global [57 x i8] c"\0091)!\19\11\09\01:2*\22\1A\12\0A\02;3+#\1B\13\0B\03<4,$?7/'\1F\17\0F\07>6.&\1E\16\0E\06=5-%\1D\15\0D\05\1C\14\0C\04", align 1
@ndes_init.ndes_ipc2_tmp = internal global [49 x i8] c"\00\0E\11\0B\18\01\05\03\1C\0F\06\15\0A\17\13\0C\04\1A\08\10\07\1B\14\0D\02)4\1F%/7\1E(3-!0,1'8\225.*2$\1D ", align 1
@ndes_ipc1 = internal global [57 x i8] zeroinitializer, align 1
@ndes_ipc2 = internal global [49 x i8] zeroinitializer, align 1
@ndes_inp = dso_local global %struct.NDES_IMMENSE zeroinitializer, align 4
@ndes_key = dso_local global %struct.NDES_IMMENSE zeroinitializer, align 4
@ndes_newkey = dso_local global i32 0, align 4
@ndes_isw = dso_local global i32 0, align 4
@ndes_des.ip = internal global [65 x i8] c"\00:2*\22\1A\12\0A\02<4,$\1C\14\0C\04>6.&\1E\16\0E\06@80( \18\10\0891)!\19\11\09\01;3+#\1B\13\0B\03=5-%\1D\15\0D\05?7/'\1F\17\0F\07", align 1
@ndes_des.ipm = internal global [65 x i8] c"\00(\080\108\18@ '\07/\0F7\17?\1F&\06.\0E6\16>\1E%\05-\0D5\15=\1D$\04,\0C4\14<\1C#\03+\0B3\13;\1B\22\02*\0A2\12:\1A!\01)\091\119\19", align 1
@ndes_des.kns = internal global [17 x %struct.NDES_GREAT] zeroinitializer, align 4
@ndes_des.initflag = internal global i32 1, align 4
@ndes_bit = dso_local global [33 x i32] zeroinitializer, align 4
@ndes_icd = internal global %struct.NDES_IMMENSE zeroinitializer, align 4
@ndes_cyfun.iet = internal global [49 x i32] [i32 0, i32 32, i32 1, i32 2, i32 3, i32 4, i32 5, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 28, i32 29, i32 30, i32 31, i32 32, i32 1], align 4
@ndes_cyfun.ipp = internal global [33 x i32] [i32 0, i32 16, i32 7, i32 20, i32 21, i32 29, i32 12, i32 28, i32 17, i32 1, i32 15, i32 23, i32 26, i32 5, i32 18, i32 31, i32 10, i32 2, i32 8, i32 24, i32 14, i32 32, i32 27, i32 3, i32 9, i32 19, i32 13, i32 30, i32 6, i32 22, i32 11, i32 4, i32 25], align 4
@ndes_cyfun.is = internal global [16 x [4 x [9 x i32]]] [[4 x [9 x i32]] [[9 x i32] [i32 0, i32 14, i32 15, i32 10, i32 7, i32 2, i32 12, i32 4, i32 13], [9 x i32] [i32 0, i32 0, i32 3, i32 13, i32 13, i32 14, i32 10, i32 13, i32 1], [9 x i32] [i32 0, i32 4, i32 0, i32 13, i32 10, i32 4, i32 9, i32 1, i32 7], [9 x i32] [i32 0, i32 15, i32 13, i32 1, i32 3, i32 11, i32 4, i32 6, i32 2]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 4, i32 1, i32 0, i32 13, i32 12, i32 1, i32 11, i32 2], [9 x i32] [i32 0, i32 15, i32 13, i32 7, i32 8, i32 11, i32 15, i32 0, i32 15], [9 x i32] [i32 0, i32 1, i32 14, i32 6, i32 6, i32 2, i32 14, i32 4, i32 11], [9 x i32] [i32 0, i32 12, i32 8, i32 10, i32 15, i32 8, i32 3, i32 11, i32 1]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 13, i32 8, i32 9, i32 14, i32 4, i32 10, i32 2, i32 8], [9 x i32] [i32 0, i32 7, i32 4, i32 0, i32 11, i32 2, i32 4, i32 11, i32 13], [9 x i32] [i32 0, i32 14, i32 7, i32 4, i32 9, i32 1, i32 15, i32 11, i32 4], [9 x i32] [i32 0, i32 8, i32 10, i32 13, i32 0, i32 12, i32 2, i32 13, i32 14]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 1, i32 14, i32 14, i32 3, i32 1, i32 15, i32 14, i32 4], [9 x i32] [i32 0, i32 4, i32 7, i32 9, i32 5, i32 12, i32 2, i32 7, i32 8], [9 x i32] [i32 0, i32 8, i32 11, i32 9, i32 0, i32 11, i32 5, i32 13, i32 1], [9 x i32] [i32 0, i32 2, i32 1, i32 0, i32 6, i32 7, i32 12, i32 8, i32 7]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 2, i32 6, i32 6, i32 0, i32 7, i32 9, i32 15, i32 6], [9 x i32] [i32 0, i32 14, i32 15, i32 3, i32 6, i32 4, i32 7, i32 4, i32 10], [9 x i32] [i32 0, i32 13, i32 10, i32 8, i32 12, i32 10, i32 2, i32 12, i32 9], [9 x i32] [i32 0, i32 4, i32 3, i32 6, i32 10, i32 1, i32 9, i32 1, i32 4]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 15, i32 11, i32 3, i32 6, i32 10, i32 2, i32 0, i32 15], [9 x i32] [i32 0, i32 2, i32 2, i32 4, i32 15, i32 7, i32 12, i32 9, i32 3], [9 x i32] [i32 0, i32 6, i32 4, i32 15, i32 11, i32 13, i32 8, i32 3, i32 12], [9 x i32] [i32 0, i32 9, i32 15, i32 9, i32 1, i32 14, i32 5, i32 4, i32 10]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 11, i32 3, i32 15, i32 9, i32 11, i32 6, i32 8, i32 11], [9 x i32] [i32 0, i32 13, i32 8, i32 6, i32 0, i32 13, i32 9, i32 1, i32 7], [9 x i32] [i32 0, i32 2, i32 13, i32 3, i32 7, i32 7, i32 12, i32 7, i32 14], [9 x i32] [i32 0, i32 1, i32 4, i32 8, i32 13, i32 2, i32 15, i32 10, i32 8]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 8, i32 4, i32 5, i32 10, i32 6, i32 8, i32 13, i32 1], [9 x i32] [i32 0, i32 1, i32 14, i32 10, i32 3, i32 1, i32 5, i32 10, i32 4], [9 x i32] [i32 0, i32 11, i32 1, i32 0, i32 13, i32 8, i32 3, i32 14, i32 2], [9 x i32] [i32 0, i32 7, i32 2, i32 7, i32 8, i32 13, i32 10, i32 7, i32 13]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 3, i32 9, i32 1, i32 1, i32 8, i32 0, i32 3, i32 10], [9 x i32] [i32 0, i32 10, i32 12, i32 2, i32 4, i32 5, i32 6, i32 14, i32 12], [9 x i32] [i32 0, i32 15, i32 5, i32 11, i32 15, i32 15, i32 7, i32 10, i32 0], [9 x i32] [i32 0, i32 5, i32 11, i32 4, i32 9, i32 6, i32 11, i32 9, i32 15]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 10, i32 7, i32 13, i32 2, i32 5, i32 13, i32 12, i32 9], [9 x i32] [i32 0, i32 6, i32 0, i32 8, i32 7, i32 0, i32 1, i32 3, i32 5], [9 x i32] [i32 0, i32 12, i32 8, i32 1, i32 1, i32 9, i32 0, i32 15, i32 6], [9 x i32] [i32 0, i32 11, i32 6, i32 15, i32 4, i32 15, i32 14, i32 5, i32 12]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 6, i32 2, i32 12, i32 8, i32 3, i32 3, i32 9, i32 3], [9 x i32] [i32 0, i32 12, i32 1, i32 5, i32 2, i32 15, i32 13, i32 5, i32 6], [9 x i32] [i32 0, i32 9, i32 12, i32 2, i32 3, i32 12, i32 4, i32 6, i32 10], [9 x i32] [i32 0, i32 3, i32 7, i32 14, i32 5, i32 0, i32 1, i32 0, i32 9]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 12, i32 13, i32 7, i32 5, i32 15, i32 4, i32 7, i32 14], [9 x i32] [i32 0, i32 11, i32 10, i32 14, i32 12, i32 10, i32 14, i32 12, i32 11], [9 x i32] [i32 0, i32 7, i32 6, i32 12, i32 14, i32 5, i32 10, i32 8, i32 13], [9 x i32] [i32 0, i32 14, i32 12, i32 3, i32 11, i32 9, i32 7, i32 15, i32 0]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 5, i32 12, i32 11, i32 11, i32 13, i32 14, i32 5, i32 5], [9 x i32] [i32 0, i32 9, i32 6, i32 12, i32 1, i32 3, i32 0, i32 2, i32 0], [9 x i32] [i32 0, i32 3, i32 9, i32 5, i32 5, i32 6, i32 1, i32 0, i32 15], [9 x i32] [i32 0, i32 10, i32 0, i32 11, i32 12, i32 10, i32 6, i32 14, i32 3]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 9, i32 0, i32 4, i32 12, i32 0, i32 7, i32 10, i32 0], [9 x i32] [i32 0, i32 5, i32 9, i32 11, i32 10, i32 9, i32 11, i32 15, i32 14], [9 x i32] [i32 0, i32 10, i32 3, i32 10, i32 2, i32 3, i32 13, i32 5, i32 3], [9 x i32] [i32 0, i32 0, i32 5, i32 5, i32 7, i32 4, i32 0, i32 2, i32 5]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 0, i32 5, i32 2, i32 4, i32 14, i32 5, i32 6, i32 12], [9 x i32] [i32 0, i32 3, i32 11, i32 15, i32 14, i32 8, i32 3, i32 8, i32 9], [9 x i32] [i32 0, i32 5, i32 2, i32 14, i32 8, i32 0, i32 11, i32 9, i32 5], [9 x i32] [i32 0, i32 6, i32 14, i32 2, i32 2, i32 5, i32 8, i32 3, i32 6]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 7, i32 10, i32 8, i32 15, i32 9, i32 11, i32 1, i32 7], [9 x i32] [i32 0, i32 8, i32 5, i32 1, i32 9, i32 6, i32 8, i32 6, i32 2], [9 x i32] [i32 0, i32 0, i32 15, i32 7, i32 4, i32 14, i32 6, i32 2, i32 8], [9 x i32] [i32 0, i32 13, i32 9, i32 12, i32 14, i32 3, i32 13, i32 12, i32 11]]], align 4
@__const.ndes_cyfun.ibin = private unnamed_addr constant [16 x i8] c"\00\08\04\0C\02\0A\06\0E\01\09\05\0D\03\0B\07\0F", align 1
@ndes_out = dso_local global %struct.NDES_IMMENSE zeroinitializer, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_init() #0 !dbg !12 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4, !dbg !16
  br label %for.cond, !dbg !17

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !18
  %cmp = icmp ult i32 %0, 10, !dbg !19
  br i1 %cmp, label %for.body, label %for.end, !dbg !20

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !21
  %arrayidx = getelementptr inbounds [57 x i8], [57 x i8]* @ndes_init.ndes_ipc1_tmp, i32 0, i32 %1, !dbg !22
  %2 = load volatile i8, i8* %arrayidx, align 1, !dbg !22
  %3 = load i32, i32* %i, align 4, !dbg !23
  %arrayidx1 = getelementptr inbounds [57 x i8], [57 x i8]* @ndes_ipc1, i32 0, i32 %3, !dbg !24
  store i8 %2, i8* %arrayidx1, align 1, !dbg !25
  br label %for.inc, !dbg !24

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !26
  %inc = add i32 %4, 1, !dbg !26
  store i32 %inc, i32* %i, align 4, !dbg !26
  br label %for.cond, !dbg !20, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !30
  br label %for.cond2, !dbg !31

for.cond2:                                        ; preds = %for.inc7, %for.end
  %5 = load i32, i32* %i, align 4, !dbg !32
  %cmp3 = icmp ult i32 %5, 10, !dbg !33
  br i1 %cmp3, label %for.body4, label %for.end9, !dbg !34

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, i32* %i, align 4, !dbg !35
  %arrayidx5 = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_init.ndes_ipc2_tmp, i32 0, i32 %6, !dbg !36
  %7 = load volatile i8, i8* %arrayidx5, align 1, !dbg !36
  %8 = load i32, i32* %i, align 4, !dbg !37
  %arrayidx6 = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_ipc2, i32 0, i32 %8, !dbg !38
  store i8 %7, i8* %arrayidx6, align 1, !dbg !39
  br label %for.inc7, !dbg !38

for.inc7:                                         ; preds = %for.body4
  %9 = load i32, i32* %i, align 4, !dbg !40
  %inc8 = add i32 %9, 1, !dbg !40
  store i32 %inc8, i32* %i, align 4, !dbg !40
  br label %for.cond2, !dbg !34, !llvm.loop !41

for.end9:                                         ; preds = %for.cond2
  store i32 35, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_inp, i32 0, i32 0), align 4, !dbg !43
  store i32 26, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_inp, i32 0, i32 1), align 4, !dbg !44
  store i32 2, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_key, i32 0, i32 0), align 4, !dbg !45
  store i32 16, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_key, i32 0, i32 1), align 4, !dbg !46
  %10 = load i32, i32* @ndes_value, align 4, !dbg !47
  store i32 %10, i32* @ndes_newkey, align 4, !dbg !48
  %11 = load i32, i32* @ndes_value, align 4, !dbg !49
  store i32 %11, i32* @ndes_isw, align 4, !dbg !50
  ret void, !dbg !51
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_des([2 x i32] %inp.coerce, [2 x i32] %key.coerce, i32* noundef %newkey, i32 noundef %isw, %struct.NDES_IMMENSE* noundef %out) #0 !dbg !52 {
entry:
  %inp = alloca %struct.NDES_IMMENSE, align 4
  %key = alloca %struct.NDES_IMMENSE, align 4
  %newkey.addr = alloca i32*, align 4
  %isw.addr = alloca i32, align 4
  %out.addr = alloca %struct.NDES_IMMENSE*, align 4
  %ii = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ic = alloca i32, align 4
  %shifter = alloca i32, align 4
  %itmp = alloca %struct.NDES_IMMENSE, align 4
  %pg = alloca %struct.NDES_GREAT, align 4
  %0 = bitcast %struct.NDES_IMMENSE* %inp to [2 x i32]*
  store [2 x i32] %inp.coerce, [2 x i32]* %0, align 4
  %1 = bitcast %struct.NDES_IMMENSE* %key to [2 x i32]*
  store [2 x i32] %key.coerce, [2 x i32]* %1, align 4
  store i32* %newkey, i32** %newkey.addr, align 4
  store i32 %isw, i32* %isw.addr, align 4
  store %struct.NDES_IMMENSE* %out, %struct.NDES_IMMENSE** %out.addr, align 4
  %2 = load i32, i32* @ndes_des.initflag, align 4, !dbg !53
  %tobool = icmp ne i32 %2, 0, !dbg !53
  br i1 %tobool, label %if.then, label %if.end, !dbg !53

if.then:                                          ; preds = %entry
  store i32 0, i32* @ndes_des.initflag, align 4, !dbg !54
  store i32 1, i32* %shifter, align 4, !dbg !55
  store i32 1, i32* getelementptr inbounds ([33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 1), align 4, !dbg !56
  store i32 2, i32* %j, align 4, !dbg !57
  br label %for.cond, !dbg !58

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %j, align 4, !dbg !59
  %cmp = icmp sle i32 %3, 2, !dbg !60
  br i1 %cmp, label %for.body, label %for.end, !dbg !61

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %shifter, align 4, !dbg !62
  %shl = shl i32 %4, 1, !dbg !62
  store i32 %shl, i32* %shifter, align 4, !dbg !62
  %5 = load i32, i32* %j, align 4, !dbg !63
  %arrayidx = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %5, !dbg !64
  store i32 %shl, i32* %arrayidx, align 4, !dbg !65
  br label %for.inc, !dbg !64

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %j, align 4, !dbg !66
  %inc = add nsw i32 %6, 1, !dbg !66
  store i32 %inc, i32* %j, align 4, !dbg !66
  br label %for.cond, !dbg !61, !llvm.loop !67

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !69

if.end:                                           ; preds = %for.end, %entry
  %7 = load i32*, i32** %newkey.addr, align 4, !dbg !70
  %8 = load i32, i32* %7, align 4, !dbg !71
  %tobool1 = icmp ne i32 %8, 0, !dbg !71
  br i1 %tobool1, label %if.then2, label %if.end25, !dbg !71

if.then2:                                         ; preds = %if.end
  %9 = load i32*, i32** %newkey.addr, align 4, !dbg !72
  store i32 0, i32* %9, align 4, !dbg !73
  store i32 0, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !74
  store i32 0, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !75
  store i32 1, i32* %j, align 4, !dbg !76
  store i32 10, i32* %k, align 4, !dbg !77
  br label %for.cond3, !dbg !78

for.cond3:                                        ; preds = %for.inc13, %if.then2
  %10 = load i32, i32* %j, align 4, !dbg !79
  %cmp4 = icmp sge i32 %10, 1, !dbg !80
  br i1 %cmp4, label %for.body5, label %for.end15, !dbg !81

for.body5:                                        ; preds = %for.cond3
  %11 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !82
  %shl6 = shl i32 %11, 1, !dbg !83
  %12 = load i32, i32* %j, align 4, !dbg !84
  %arrayidx7 = getelementptr inbounds [57 x i8], [57 x i8]* @ndes_ipc1, i32 0, i32 %12, !dbg !85
  %13 = load i8, i8* %arrayidx7, align 1, !dbg !85
  %conv = zext i8 %13 to i32, !dbg !85
  %14 = bitcast %struct.NDES_IMMENSE* %key to [2 x i32]*, !dbg !86
  %15 = load [2 x i32], [2 x i32]* %14, align 4, !dbg !86
  %call = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %15, i32 noundef %conv, i32 noundef 32) #2, !dbg !86
  %or = or i32 %shl6, %call, !dbg !87
  store i32 %or, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !88
  %16 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !89
  %shl8 = shl i32 %16, 1, !dbg !90
  store i32 %shl8, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !91
  %17 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !92
  %18 = load i32, i32* %k, align 4, !dbg !93
  %arrayidx9 = getelementptr inbounds [57 x i8], [57 x i8]* @ndes_ipc1, i32 0, i32 %18, !dbg !94
  %19 = load i8, i8* %arrayidx9, align 1, !dbg !94
  %conv10 = zext i8 %19 to i32, !dbg !94
  %20 = bitcast %struct.NDES_IMMENSE* %key to [2 x i32]*, !dbg !95
  %21 = load [2 x i32], [2 x i32]* %20, align 4, !dbg !95
  %call11 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %21, i32 noundef %conv10, i32 noundef 32) #2, !dbg !95
  %or12 = or i32 %17, %call11, !dbg !96
  store i32 %or12, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !97
  br label %for.inc13, !dbg !98

for.inc13:                                        ; preds = %for.body5
  %22 = load i32, i32* %j, align 4, !dbg !99
  %dec = add nsw i32 %22, -1, !dbg !99
  store i32 %dec, i32* %j, align 4, !dbg !99
  %23 = load i32, i32* %k, align 4, !dbg !100
  %dec14 = add nsw i32 %23, -1, !dbg !100
  store i32 %dec14, i32* %k, align 4, !dbg !100
  br label %for.cond3, !dbg !81, !llvm.loop !101

for.end15:                                        ; preds = %for.cond3
  store i32 16, i32* %i, align 4, !dbg !102
  br label %for.cond16, !dbg !103

for.cond16:                                       ; preds = %for.inc22, %for.end15
  %24 = load i32, i32* %i, align 4, !dbg !104
  %cmp17 = icmp sle i32 %24, 16, !dbg !105
  br i1 %cmp17, label %for.body19, label %for.end24, !dbg !106

for.body19:                                       ; preds = %for.cond16
  %25 = load i32, i32* %i, align 4, !dbg !107
  %arrayidx20 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %25, !dbg !108
  %26 = bitcast %struct.NDES_GREAT* %pg to i8*, !dbg !108
  %27 = bitcast %struct.NDES_GREAT* %arrayidx20 to i8*, !dbg !108
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %26, i8* align 4 %27, i32 12, i1 false), !dbg !108
  %28 = load i32, i32* %i, align 4, !dbg !109
  call arm_aapcs_vfpcc void @ndes_ks(i32 noundef %28, %struct.NDES_GREAT* noundef %pg) #2, !dbg !110
  %29 = load i32, i32* %i, align 4, !dbg !111
  %arrayidx21 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %29, !dbg !112
  %30 = bitcast %struct.NDES_GREAT* %arrayidx21 to i8*, !dbg !113
  %31 = bitcast %struct.NDES_GREAT* %pg to i8*, !dbg !113
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %30, i8* align 4 %31, i32 12, i1 false), !dbg !113
  br label %for.inc22, !dbg !114

for.inc22:                                        ; preds = %for.body19
  %32 = load i32, i32* %i, align 4, !dbg !115
  %inc23 = add nsw i32 %32, 1, !dbg !115
  store i32 %inc23, i32* %i, align 4, !dbg !115
  br label %for.cond16, !dbg !106, !llvm.loop !116

for.end24:                                        ; preds = %for.cond16
  br label %if.end25, !dbg !117

if.end25:                                         ; preds = %for.end24, %if.end
  %l = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !118
  store i32 0, i32* %l, align 4, !dbg !119
  %r = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !120
  store i32 0, i32* %r, align 4, !dbg !121
  store i32 1, i32* %j, align 4, !dbg !122
  store i32 64, i32* %k, align 4, !dbg !123
  br label %for.cond26, !dbg !124

for.cond26:                                       ; preds = %for.inc48, %if.end25
  %33 = load i32, i32* %j, align 4, !dbg !125
  %cmp27 = icmp sge i32 %33, 1, !dbg !126
  br i1 %cmp27, label %for.body29, label %for.end51, !dbg !127

for.body29:                                       ; preds = %for.cond26
  %r30 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !128
  %34 = load i32, i32* %r30, align 4, !dbg !128
  %shl31 = shl i32 %34, 1, !dbg !129
  %r32 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !130
  store i32 %shl31, i32* %r32, align 4, !dbg !131
  %r33 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !132
  %35 = load i32, i32* %r33, align 4, !dbg !132
  %36 = load i32, i32* %j, align 4, !dbg !133
  %arrayidx34 = getelementptr inbounds [65 x i8], [65 x i8]* @ndes_des.ip, i32 0, i32 %36, !dbg !134
  %37 = load volatile i8, i8* %arrayidx34, align 1, !dbg !134
  %conv35 = zext i8 %37 to i32, !dbg !134
  %38 = bitcast %struct.NDES_IMMENSE* %inp to [2 x i32]*, !dbg !135
  %39 = load [2 x i32], [2 x i32]* %38, align 4, !dbg !135
  %call36 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %39, i32 noundef %conv35, i32 noundef 32) #2, !dbg !135
  %or37 = or i32 %35, %call36, !dbg !136
  %r38 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !137
  store i32 %or37, i32* %r38, align 4, !dbg !138
  %l39 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !139
  %40 = load i32, i32* %l39, align 4, !dbg !139
  %shl40 = shl i32 %40, 1, !dbg !140
  %l41 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !141
  store i32 %shl40, i32* %l41, align 4, !dbg !142
  %l42 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !143
  %41 = load i32, i32* %l42, align 4, !dbg !143
  %42 = load i32, i32* %k, align 4, !dbg !144
  %arrayidx43 = getelementptr inbounds [65 x i8], [65 x i8]* @ndes_des.ip, i32 0, i32 %42, !dbg !145
  %43 = load volatile i8, i8* %arrayidx43, align 1, !dbg !145
  %conv44 = zext i8 %43 to i32, !dbg !145
  %44 = bitcast %struct.NDES_IMMENSE* %inp to [2 x i32]*, !dbg !146
  %45 = load [2 x i32], [2 x i32]* %44, align 4, !dbg !146
  %call45 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %45, i32 noundef %conv44, i32 noundef 32) #2, !dbg !146
  %or46 = or i32 %41, %call45, !dbg !147
  %l47 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !148
  store i32 %or46, i32* %l47, align 4, !dbg !149
  br label %for.inc48, !dbg !150

for.inc48:                                        ; preds = %for.body29
  %46 = load i32, i32* %j, align 4, !dbg !151
  %dec49 = add nsw i32 %46, -1, !dbg !151
  store i32 %dec49, i32* %j, align 4, !dbg !151
  %47 = load i32, i32* %k, align 4, !dbg !152
  %dec50 = add nsw i32 %47, -1, !dbg !152
  store i32 %dec50, i32* %k, align 4, !dbg !152
  br label %for.cond26, !dbg !127, !llvm.loop !153

for.end51:                                        ; preds = %for.cond26
  store i32 16, i32* %i, align 4, !dbg !154
  br label %for.cond52, !dbg !155

for.cond52:                                       ; preds = %for.inc64, %for.end51
  %48 = load i32, i32* %i, align 4, !dbg !156
  %cmp53 = icmp sle i32 %48, 16, !dbg !157
  br i1 %cmp53, label %for.body55, label %for.end66, !dbg !158

for.body55:                                       ; preds = %for.cond52
  %49 = load i32, i32* %isw.addr, align 4, !dbg !159
  %cmp56 = icmp eq i32 %49, 1, !dbg !160
  br i1 %cmp56, label %cond.true, label %cond.false, !dbg !159

cond.true:                                        ; preds = %for.body55
  %50 = load i32, i32* %i, align 4, !dbg !161
  %sub = sub nsw i32 17, %50, !dbg !162
  br label %cond.end, !dbg !159

cond.false:                                       ; preds = %for.body55
  %51 = load i32, i32* %i, align 4, !dbg !163
  br label %cond.end, !dbg !159

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %51, %cond.false ], !dbg !159
  store i32 %cond, i32* %ii, align 4, !dbg !164
  %l58 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !165
  %52 = load i32, i32* %l58, align 4, !dbg !165
  %53 = load i32, i32* %ii, align 4, !dbg !166
  %arrayidx59 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %53, !dbg !167
  %54 = bitcast %struct.NDES_GREAT* %arrayidx59 to [3 x i32]*, !dbg !168
  %55 = load [3 x i32], [3 x i32]* %54, align 4, !dbg !168
  call arm_aapcs_vfpcc void @ndes_cyfun(i32 noundef %52, [3 x i32] %55, i32* noundef %ic) #2, !dbg !168
  %r60 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !169
  %56 = load i32, i32* %r60, align 4, !dbg !169
  %57 = load i32, i32* %ic, align 4, !dbg !170
  %xor = xor i32 %57, %56, !dbg !170
  store i32 %xor, i32* %ic, align 4, !dbg !170
  %l61 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !171
  %58 = load i32, i32* %l61, align 4, !dbg !171
  %r62 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !172
  store i32 %58, i32* %r62, align 4, !dbg !173
  %59 = load i32, i32* %ic, align 4, !dbg !174
  %l63 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !175
  store i32 %59, i32* %l63, align 4, !dbg !176
  br label %for.inc64, !dbg !177

for.inc64:                                        ; preds = %cond.end
  %60 = load i32, i32* %i, align 4, !dbg !178
  %inc65 = add nsw i32 %60, 1, !dbg !178
  store i32 %inc65, i32* %i, align 4, !dbg !178
  br label %for.cond52, !dbg !158, !llvm.loop !179

for.end66:                                        ; preds = %for.cond52
  %r67 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !180
  %61 = load i32, i32* %r67, align 4, !dbg !180
  store i32 %61, i32* %ic, align 4, !dbg !181
  %l68 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !182
  %62 = load i32, i32* %l68, align 4, !dbg !182
  %r69 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !183
  store i32 %62, i32* %r69, align 4, !dbg !184
  %63 = load i32, i32* %ic, align 4, !dbg !185
  %l70 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !186
  store i32 %63, i32* %l70, align 4, !dbg !187
  %64 = load %struct.NDES_IMMENSE*, %struct.NDES_IMMENSE** %out.addr, align 4, !dbg !188
  %l71 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %64, i32 0, i32 0, !dbg !189
  store i32 0, i32* %l71, align 4, !dbg !190
  %65 = load %struct.NDES_IMMENSE*, %struct.NDES_IMMENSE** %out.addr, align 4, !dbg !191
  %r72 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %65, i32 0, i32 1, !dbg !192
  store i32 0, i32* %r72, align 4, !dbg !193
  store i32 1, i32* %j, align 4, !dbg !194
  store i32 64, i32* %k, align 4, !dbg !195
  br label %for.cond73, !dbg !196

for.cond73:                                       ; preds = %for.inc95, %for.end66
  %66 = load i32, i32* %j, align 4, !dbg !197
  %cmp74 = icmp sge i32 %66, 1, !dbg !198
  br i1 %cmp74, label %for.body76, label %for.end98, !dbg !199

for.body76:                                       ; preds = %for.cond73
  %67 = load %struct.NDES_IMMENSE*, %struct.NDES_IMMENSE** %out.addr, align 4, !dbg !200
  %r77 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %67, i32 0, i32 1, !dbg !201
  %68 = load i32, i32* %r77, align 4, !dbg !201
  %shl78 = shl i32 %68, 1, !dbg !202
  %69 = load %struct.NDES_IMMENSE*, %struct.NDES_IMMENSE** %out.addr, align 4, !dbg !203
  %r79 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %69, i32 0, i32 1, !dbg !204
  store i32 %shl78, i32* %r79, align 4, !dbg !205
  %70 = load %struct.NDES_IMMENSE*, %struct.NDES_IMMENSE** %out.addr, align 4, !dbg !206
  %r80 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %70, i32 0, i32 1, !dbg !207
  %71 = load i32, i32* %r80, align 4, !dbg !207
  %72 = load i32, i32* %j, align 4, !dbg !208
  %arrayidx81 = getelementptr inbounds [65 x i8], [65 x i8]* @ndes_des.ipm, i32 0, i32 %72, !dbg !209
  %73 = load volatile i8, i8* %arrayidx81, align 1, !dbg !209
  %conv82 = zext i8 %73 to i32, !dbg !209
  %74 = bitcast %struct.NDES_IMMENSE* %itmp to [2 x i32]*, !dbg !210
  %75 = load [2 x i32], [2 x i32]* %74, align 4, !dbg !210
  %call83 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %75, i32 noundef %conv82, i32 noundef 32) #2, !dbg !210
  %or84 = or i32 %71, %call83, !dbg !211
  %76 = load %struct.NDES_IMMENSE*, %struct.NDES_IMMENSE** %out.addr, align 4, !dbg !212
  %r85 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %76, i32 0, i32 1, !dbg !213
  store i32 %or84, i32* %r85, align 4, !dbg !214
  %77 = load %struct.NDES_IMMENSE*, %struct.NDES_IMMENSE** %out.addr, align 4, !dbg !215
  %l86 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %77, i32 0, i32 0, !dbg !216
  %78 = load i32, i32* %l86, align 4, !dbg !216
  %shl87 = shl i32 %78, 1, !dbg !217
  %79 = load %struct.NDES_IMMENSE*, %struct.NDES_IMMENSE** %out.addr, align 4, !dbg !218
  %l88 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %79, i32 0, i32 0, !dbg !219
  store i32 %shl87, i32* %l88, align 4, !dbg !220
  %80 = load %struct.NDES_IMMENSE*, %struct.NDES_IMMENSE** %out.addr, align 4, !dbg !221
  %l89 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %80, i32 0, i32 0, !dbg !222
  %81 = load i32, i32* %l89, align 4, !dbg !222
  %82 = load i32, i32* %k, align 4, !dbg !223
  %arrayidx90 = getelementptr inbounds [65 x i8], [65 x i8]* @ndes_des.ipm, i32 0, i32 %82, !dbg !224
  %83 = load volatile i8, i8* %arrayidx90, align 1, !dbg !224
  %conv91 = zext i8 %83 to i32, !dbg !224
  %84 = bitcast %struct.NDES_IMMENSE* %itmp to [2 x i32]*, !dbg !225
  %85 = load [2 x i32], [2 x i32]* %84, align 4, !dbg !225
  %call92 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %85, i32 noundef %conv91, i32 noundef 32) #2, !dbg !225
  %or93 = or i32 %81, %call92, !dbg !226
  %86 = load %struct.NDES_IMMENSE*, %struct.NDES_IMMENSE** %out.addr, align 4, !dbg !227
  %l94 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %86, i32 0, i32 0, !dbg !228
  store i32 %or93, i32* %l94, align 4, !dbg !229
  br label %for.inc95, !dbg !230

for.inc95:                                        ; preds = %for.body76
  %87 = load i32, i32* %j, align 4, !dbg !231
  %dec96 = add nsw i32 %87, -1, !dbg !231
  store i32 %dec96, i32* %j, align 4, !dbg !231
  %88 = load i32, i32* %k, align 4, !dbg !232
  %dec97 = add nsw i32 %88, -1, !dbg !232
  store i32 %dec97, i32* %k, align 4, !dbg !232
  br label %for.cond73, !dbg !199, !llvm.loop !233

for.end98:                                        ; preds = %for.cond73
  ret void, !dbg !234
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %source.coerce, i32 noundef %bitno, i32 noundef %nbits) #0 !dbg !235 {
entry:
  %retval = alloca i32, align 4
  %source = alloca %struct.NDES_IMMENSE, align 4
  %bitno.addr = alloca i32, align 4
  %nbits.addr = alloca i32, align 4
  %0 = bitcast %struct.NDES_IMMENSE* %source to [2 x i32]*
  store [2 x i32] %source.coerce, [2 x i32]* %0, align 4
  store i32 %bitno, i32* %bitno.addr, align 4
  store i32 %nbits, i32* %nbits.addr, align 4
  %1 = load i32, i32* %bitno.addr, align 4, !dbg !236
  %2 = load i32, i32* %nbits.addr, align 4, !dbg !237
  %cmp = icmp sle i32 %1, %2, !dbg !238
  br i1 %cmp, label %if.then, label %if.else, !dbg !236

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %bitno.addr, align 4, !dbg !239
  %arrayidx = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %3, !dbg !240
  %4 = load i32, i32* %arrayidx, align 4, !dbg !240
  %r = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %source, i32 0, i32 1, !dbg !241
  %5 = load i32, i32* %r, align 4, !dbg !241
  %and = and i32 %4, %5, !dbg !242
  %tobool = icmp ne i32 %and, 0, !dbg !240
  %6 = zext i1 %tobool to i64, !dbg !240
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !240
  store i32 %cond, i32* %retval, align 4, !dbg !243
  br label %return, !dbg !243

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %bitno.addr, align 4, !dbg !244
  %8 = load i32, i32* %nbits.addr, align 4, !dbg !245
  %sub = sub nsw i32 %7, %8, !dbg !246
  %arrayidx1 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %sub, !dbg !247
  %9 = load i32, i32* %arrayidx1, align 4, !dbg !247
  %l = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %source, i32 0, i32 0, !dbg !248
  %10 = load i32, i32* %l, align 4, !dbg !248
  %and2 = and i32 %9, %10, !dbg !249
  %tobool3 = icmp ne i32 %and2, 0, !dbg !247
  %11 = zext i1 %tobool3 to i64, !dbg !247
  %cond4 = select i1 %tobool3, i32 1, i32 0, !dbg !247
  store i32 %cond4, i32* %retval, align 4, !dbg !250
  br label %return, !dbg !250

return:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !251
  ret i32 %12, !dbg !251
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_ks(i32 noundef %n, %struct.NDES_GREAT* noundef %kn) #0 !dbg !252 {
entry:
  %n.addr = alloca i32, align 4
  %kn.addr = alloca %struct.NDES_GREAT*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store %struct.NDES_GREAT* %kn, %struct.NDES_GREAT** %kn.addr, align 4
  %0 = load i32, i32* %n.addr, align 4, !dbg !253
  %cmp = icmp eq i32 %0, 1, !dbg !254
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !255

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4, !dbg !256
  %cmp1 = icmp eq i32 %1, 2, !dbg !257
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !258

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %n.addr, align 4, !dbg !259
  %cmp3 = icmp eq i32 %2, 9, !dbg !260
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !261

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, i32* %n.addr, align 4, !dbg !262
  %cmp5 = icmp eq i32 %3, 16, !dbg !263
  br i1 %cmp5, label %if.then, label %if.else, !dbg !253

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !264
  %5 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !265
  %and = and i32 %5, 1, !dbg !266
  %shl = shl i32 %and, 28, !dbg !267
  %or = or i32 %4, %shl, !dbg !268
  %shr = lshr i32 %or, 1, !dbg !269
  store i32 %shr, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !270
  %6 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !271
  %7 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !272
  %and6 = and i32 %7, 1, !dbg !273
  %shl7 = shl i32 %and6, 28, !dbg !274
  %or8 = or i32 %6, %shl7, !dbg !275
  %shr9 = lshr i32 %or8, 1, !dbg !276
  store i32 %shr9, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !277
  br label %if.end, !dbg !278

if.else:                                          ; preds = %lor.lhs.false4
  store i32 1, i32* %i, align 4, !dbg !279
  br label %for.cond, !dbg !280

for.cond:                                         ; preds = %for.inc, %if.else
  %8 = load i32, i32* %i, align 4, !dbg !281
  %cmp10 = icmp sle i32 %8, 2, !dbg !282
  br i1 %cmp10, label %for.body, label %for.end, !dbg !283

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !284
  %10 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !285
  %and11 = and i32 %10, 1, !dbg !286
  %shl12 = shl i32 %and11, 28, !dbg !287
  %or13 = or i32 %9, %shl12, !dbg !288
  %shr14 = lshr i32 %or13, 1, !dbg !289
  store i32 %shr14, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !290
  %11 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !291
  %12 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !292
  %and15 = and i32 %12, 1, !dbg !293
  %shl16 = shl i32 %and15, 28, !dbg !294
  %or17 = or i32 %11, %shl16, !dbg !295
  %shr18 = lshr i32 %or17, 1, !dbg !296
  store i32 %shr18, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !297
  br label %for.inc, !dbg !298

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !299
  %inc = add nsw i32 %13, 1, !dbg !299
  store i32 %inc, i32* %i, align 4, !dbg !299
  br label %for.cond, !dbg !283, !llvm.loop !300

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %14 = load %struct.NDES_GREAT*, %struct.NDES_GREAT** %kn.addr, align 4, !dbg !301
  %l19 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %14, i32 0, i32 0, !dbg !302
  store i32 0, i32* %l19, align 4, !dbg !303
  %15 = load %struct.NDES_GREAT*, %struct.NDES_GREAT** %kn.addr, align 4, !dbg !304
  %c = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %15, i32 0, i32 1, !dbg !305
  store i32 0, i32* %c, align 4, !dbg !306
  %16 = load %struct.NDES_GREAT*, %struct.NDES_GREAT** %kn.addr, align 4, !dbg !307
  %r = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %16, i32 0, i32 2, !dbg !308
  store i32 0, i32* %r, align 4, !dbg !309
  store i32 16, i32* %j, align 4, !dbg !310
  store i32 32, i32* %k, align 4, !dbg !311
  store i32 48, i32* %l, align 4, !dbg !312
  br label %for.cond20, !dbg !313

for.cond20:                                       ; preds = %for.inc53, %if.end
  %17 = load i32, i32* %j, align 4, !dbg !314
  %cmp21 = icmp sge i32 %17, 1, !dbg !315
  br i1 %cmp21, label %for.body22, label %for.end56, !dbg !316

for.body22:                                       ; preds = %for.cond20
  %18 = load %struct.NDES_GREAT*, %struct.NDES_GREAT** %kn.addr, align 4, !dbg !317
  %r23 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %18, i32 0, i32 2, !dbg !318
  %19 = load i32, i32* %r23, align 4, !dbg !318
  %shl24 = shl i32 %19, 1, !dbg !319
  %20 = load %struct.NDES_GREAT*, %struct.NDES_GREAT** %kn.addr, align 4, !dbg !320
  %r25 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %20, i32 0, i32 2, !dbg !321
  store i32 %shl24, i32* %r25, align 4, !dbg !322
  %21 = load %struct.NDES_GREAT*, %struct.NDES_GREAT** %kn.addr, align 4, !dbg !323
  %r26 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %21, i32 0, i32 2, !dbg !324
  %22 = load i32, i32* %r26, align 4, !dbg !324
  %23 = load i32, i32* %j, align 4, !dbg !325
  %arrayidx = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_ipc2, i32 0, i32 %23, !dbg !326
  %24 = load i8, i8* %arrayidx, align 1, !dbg !326
  %conv = zext i8 %24 to i32, !dbg !326
  %25 = load [2 x i32], [2 x i32]* bitcast (%struct.NDES_IMMENSE* @ndes_icd to [2 x i32]*), align 4, !dbg !327
  %call = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %25, i32 noundef %conv, i32 noundef 28) #2, !dbg !327
  %conv27 = trunc i32 %call to i16, !dbg !328
  %conv28 = zext i16 %conv27 to i32, !dbg !328
  %or29 = or i32 %22, %conv28, !dbg !329
  %26 = load %struct.NDES_GREAT*, %struct.NDES_GREAT** %kn.addr, align 4, !dbg !330
  %r30 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %26, i32 0, i32 2, !dbg !331
  store i32 %or29, i32* %r30, align 4, !dbg !332
  %27 = load %struct.NDES_GREAT*, %struct.NDES_GREAT** %kn.addr, align 4, !dbg !333
  %c31 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %27, i32 0, i32 1, !dbg !334
  %28 = load i32, i32* %c31, align 4, !dbg !334
  %shl32 = shl i32 %28, 1, !dbg !335
  %29 = load %struct.NDES_GREAT*, %struct.NDES_GREAT** %kn.addr, align 4, !dbg !336
  %c33 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %29, i32 0, i32 1, !dbg !337
  store i32 %shl32, i32* %c33, align 4, !dbg !338
  %30 = load %struct.NDES_GREAT*, %struct.NDES_GREAT** %kn.addr, align 4, !dbg !339
  %c34 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %30, i32 0, i32 1, !dbg !340
  %31 = load i32, i32* %c34, align 4, !dbg !340
  %32 = load i32, i32* %k, align 4, !dbg !341
  %arrayidx35 = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_ipc2, i32 0, i32 %32, !dbg !342
  %33 = load i8, i8* %arrayidx35, align 1, !dbg !342
  %conv36 = zext i8 %33 to i32, !dbg !342
  %34 = load [2 x i32], [2 x i32]* bitcast (%struct.NDES_IMMENSE* @ndes_icd to [2 x i32]*), align 4, !dbg !343
  %call37 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %34, i32 noundef %conv36, i32 noundef 28) #2, !dbg !343
  %conv38 = trunc i32 %call37 to i16, !dbg !344
  %conv39 = zext i16 %conv38 to i32, !dbg !344
  %or40 = or i32 %31, %conv39, !dbg !345
  %35 = load %struct.NDES_GREAT*, %struct.NDES_GREAT** %kn.addr, align 4, !dbg !346
  %c41 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %35, i32 0, i32 1, !dbg !347
  store i32 %or40, i32* %c41, align 4, !dbg !348
  %36 = load %struct.NDES_GREAT*, %struct.NDES_GREAT** %kn.addr, align 4, !dbg !349
  %l42 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %36, i32 0, i32 0, !dbg !350
  %37 = load i32, i32* %l42, align 4, !dbg !350
  %shl43 = shl i32 %37, 1, !dbg !351
  %38 = load %struct.NDES_GREAT*, %struct.NDES_GREAT** %kn.addr, align 4, !dbg !352
  %l44 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %38, i32 0, i32 0, !dbg !353
  store i32 %shl43, i32* %l44, align 4, !dbg !354
  %39 = load %struct.NDES_GREAT*, %struct.NDES_GREAT** %kn.addr, align 4, !dbg !355
  %l45 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %39, i32 0, i32 0, !dbg !356
  %40 = load i32, i32* %l45, align 4, !dbg !356
  %41 = load i32, i32* %l, align 4, !dbg !357
  %arrayidx46 = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_ipc2, i32 0, i32 %41, !dbg !358
  %42 = load i8, i8* %arrayidx46, align 1, !dbg !358
  %conv47 = zext i8 %42 to i32, !dbg !358
  %43 = load [2 x i32], [2 x i32]* bitcast (%struct.NDES_IMMENSE* @ndes_icd to [2 x i32]*), align 4, !dbg !359
  %call48 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %43, i32 noundef %conv47, i32 noundef 28) #2, !dbg !359
  %conv49 = trunc i32 %call48 to i16, !dbg !360
  %conv50 = zext i16 %conv49 to i32, !dbg !360
  %or51 = or i32 %40, %conv50, !dbg !361
  %44 = load %struct.NDES_GREAT*, %struct.NDES_GREAT** %kn.addr, align 4, !dbg !362
  %l52 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %44, i32 0, i32 0, !dbg !363
  store i32 %or51, i32* %l52, align 4, !dbg !364
  br label %for.inc53, !dbg !365

for.inc53:                                        ; preds = %for.body22
  %45 = load i32, i32* %j, align 4, !dbg !366
  %dec = add nsw i32 %45, -1, !dbg !366
  store i32 %dec, i32* %j, align 4, !dbg !366
  %46 = load i32, i32* %k, align 4, !dbg !367
  %dec54 = add nsw i32 %46, -1, !dbg !367
  store i32 %dec54, i32* %k, align 4, !dbg !367
  %47 = load i32, i32* %l, align 4, !dbg !368
  %dec55 = add nsw i32 %47, -1, !dbg !368
  store i32 %dec55, i32* %l, align 4, !dbg !368
  br label %for.cond20, !dbg !316, !llvm.loop !369

for.end56:                                        ; preds = %for.cond20
  ret void, !dbg !370
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_cyfun(i32 noundef %ir, [3 x i32] %k.coerce, i32* noundef %iout) #0 !dbg !371 {
entry:
  %k = alloca %struct.NDES_GREAT, align 4
  %ir.addr = alloca i32, align 4
  %iout.addr = alloca i32*, align 4
  %ibin = alloca [16 x i8], align 1
  %ie = alloca %struct.NDES_GREAT, align 4
  %itmp = alloca i32, align 4
  %ietmp1 = alloca i32, align 4
  %ietmp2 = alloca i32, align 4
  %iec = alloca [9 x i8], align 1
  %irow = alloca i32, align 4
  %icol = alloca i32, align 4
  %iss = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %j = alloca i32, align 4
  %jj = alloca i32, align 4
  %p = alloca i32*, align 4
  %0 = bitcast %struct.NDES_GREAT* %k to [3 x i32]*
  store [3 x i32] %k.coerce, [3 x i32]* %0, align 4
  store i32 %ir, i32* %ir.addr, align 4
  store i32* %iout, i32** %iout.addr, align 4
  %1 = bitcast [16 x i8]* %ibin to i8*, !dbg !372
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %1, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.ndes_cyfun.ibin, i32 0, i32 0), i32 16, i1 true), !dbg !372
  store i32* getelementptr inbounds ([33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 0), i32** %p, align 4, !dbg !373
  %l1 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !374
  store i32 0, i32* %l1, align 4, !dbg !375
  %c = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !376
  store i32 0, i32* %c, align 4, !dbg !377
  %r = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !378
  store i32 0, i32* %r, align 4, !dbg !379
  store volatile i32 16, i32* %j, align 4, !dbg !380
  store i32 32, i32* %l, align 4, !dbg !381
  store i32 48, i32* %m, align 4, !dbg !382
  br label %for.cond, !dbg !383

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load volatile i32, i32* %j, align 4, !dbg !384
  %cmp = icmp sge i32 %2, 1, !dbg !385
  br i1 %cmp, label %for.body, label %for.end, !dbg !386

for.body:                                         ; preds = %for.cond
  %r2 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !387
  %3 = load i32, i32* %r2, align 4, !dbg !387
  %shl = shl i32 %3, 1, !dbg !388
  %4 = load i32*, i32** %p, align 4, !dbg !389
  %5 = load volatile i32, i32* %j, align 4, !dbg !390
  %arrayidx = getelementptr inbounds [49 x i32], [49 x i32]* @ndes_cyfun.iet, i32 0, i32 %5, !dbg !391
  %6 = load volatile i32, i32* %arrayidx, align 4, !dbg !391
  %arrayidx3 = getelementptr inbounds i32, i32* %4, i32 %6, !dbg !389
  %7 = load i32, i32* %arrayidx3, align 4, !dbg !389
  %8 = load i32, i32* %ir.addr, align 4, !dbg !392
  %and = and i32 %7, %8, !dbg !393
  %tobool = icmp ne i32 %and, 0, !dbg !389
  %9 = zext i1 %tobool to i64, !dbg !389
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !389
  %or = or i32 %shl, %cond, !dbg !394
  %r4 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !395
  store i32 %or, i32* %r4, align 4, !dbg !396
  %c5 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !397
  %10 = load i32, i32* %c5, align 4, !dbg !397
  %shl6 = shl i32 %10, 1, !dbg !398
  %11 = load i32*, i32** %p, align 4, !dbg !399
  %12 = load i32, i32* %l, align 4, !dbg !400
  %arrayidx7 = getelementptr inbounds [49 x i32], [49 x i32]* @ndes_cyfun.iet, i32 0, i32 %12, !dbg !401
  %13 = load volatile i32, i32* %arrayidx7, align 4, !dbg !401
  %arrayidx8 = getelementptr inbounds i32, i32* %11, i32 %13, !dbg !399
  %14 = load i32, i32* %arrayidx8, align 4, !dbg !399
  %15 = load i32, i32* %ir.addr, align 4, !dbg !402
  %and9 = and i32 %14, %15, !dbg !403
  %tobool10 = icmp ne i32 %and9, 0, !dbg !399
  %16 = zext i1 %tobool10 to i64, !dbg !399
  %cond11 = select i1 %tobool10, i32 1, i32 0, !dbg !399
  %or12 = or i32 %shl6, %cond11, !dbg !404
  %c13 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !405
  store i32 %or12, i32* %c13, align 4, !dbg !406
  %l14 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !407
  %17 = load i32, i32* %l14, align 4, !dbg !407
  %shl15 = shl i32 %17, 1, !dbg !408
  %18 = load i32*, i32** %p, align 4, !dbg !409
  %19 = load i32, i32* %m, align 4, !dbg !410
  %arrayidx16 = getelementptr inbounds [49 x i32], [49 x i32]* @ndes_cyfun.iet, i32 0, i32 %19, !dbg !411
  %20 = load volatile i32, i32* %arrayidx16, align 4, !dbg !411
  %arrayidx17 = getelementptr inbounds i32, i32* %18, i32 %20, !dbg !409
  %21 = load i32, i32* %arrayidx17, align 4, !dbg !409
  %22 = load i32, i32* %ir.addr, align 4, !dbg !412
  %and18 = and i32 %21, %22, !dbg !413
  %tobool19 = icmp ne i32 %and18, 0, !dbg !409
  %23 = zext i1 %tobool19 to i64, !dbg !409
  %cond20 = select i1 %tobool19, i32 1, i32 0, !dbg !409
  %or21 = or i32 %shl15, %cond20, !dbg !414
  %l22 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !415
  store i32 %or21, i32* %l22, align 4, !dbg !416
  br label %for.inc, !dbg !417

for.inc:                                          ; preds = %for.body
  %24 = load volatile i32, i32* %j, align 4, !dbg !418
  %dec = add nsw i32 %24, -1, !dbg !418
  store volatile i32 %dec, i32* %j, align 4, !dbg !418
  %25 = load i32, i32* %l, align 4, !dbg !419
  %dec23 = add nsw i32 %25, -1, !dbg !419
  store i32 %dec23, i32* %l, align 4, !dbg !419
  %26 = load i32, i32* %m, align 4, !dbg !420
  %dec24 = add nsw i32 %26, -1, !dbg !420
  store i32 %dec24, i32* %m, align 4, !dbg !420
  br label %for.cond, !dbg !386, !llvm.loop !421

for.end:                                          ; preds = %for.cond
  %r25 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 2, !dbg !422
  %27 = load i32, i32* %r25, align 4, !dbg !422
  %r26 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !423
  %28 = load i32, i32* %r26, align 4, !dbg !424
  %xor = xor i32 %28, %27, !dbg !424
  store i32 %xor, i32* %r26, align 4, !dbg !424
  %c27 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 1, !dbg !425
  %29 = load i32, i32* %c27, align 4, !dbg !425
  %c28 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !426
  %30 = load i32, i32* %c28, align 4, !dbg !427
  %xor29 = xor i32 %30, %29, !dbg !427
  store i32 %xor29, i32* %c28, align 4, !dbg !427
  %l30 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 0, !dbg !428
  %31 = load i32, i32* %l30, align 4, !dbg !428
  %l31 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !429
  %32 = load i32, i32* %l31, align 4, !dbg !430
  %xor32 = xor i32 %32, %31, !dbg !430
  store i32 %xor32, i32* %l31, align 4, !dbg !430
  %c33 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !431
  %33 = load i32, i32* %c33, align 4, !dbg !431
  %shl34 = shl i32 %33, 16, !dbg !432
  %r35 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !433
  %34 = load i32, i32* %r35, align 4, !dbg !433
  %add = add i32 %shl34, %34, !dbg !434
  store i32 %add, i32* %ietmp1, align 4, !dbg !435
  %l36 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !436
  %35 = load i32, i32* %l36, align 4, !dbg !436
  %shl37 = shl i32 %35, 8, !dbg !437
  %c38 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !438
  %36 = load i32, i32* %c38, align 4, !dbg !438
  %shr = lshr i32 %36, 8, !dbg !439
  %add39 = add i32 %shl37, %shr, !dbg !440
  store i32 %add39, i32* %ietmp2, align 4, !dbg !441
  store volatile i32 1, i32* %j, align 4, !dbg !442
  store i32 5, i32* %m, align 4, !dbg !443
  br label %for.cond40, !dbg !444

for.cond40:                                       ; preds = %for.inc50, %for.end
  %37 = load volatile i32, i32* %j, align 4, !dbg !445
  %cmp41 = icmp sle i32 %37, 4, !dbg !446
  br i1 %cmp41, label %for.body42, label %for.end52, !dbg !447

for.body42:                                       ; preds = %for.cond40
  %38 = load i32, i32* %ietmp1, align 4, !dbg !448
  %and43 = and i32 %38, 63, !dbg !449
  %conv = trunc i32 %and43 to i8, !dbg !448
  %39 = load volatile i32, i32* %j, align 4, !dbg !450
  %arrayidx44 = getelementptr inbounds [9 x i8], [9 x i8]* %iec, i32 0, i32 %39, !dbg !451
  store i8 %conv, i8* %arrayidx44, align 1, !dbg !452
  %40 = load i32, i32* %ietmp2, align 4, !dbg !453
  %and45 = and i32 %40, 63, !dbg !454
  %conv46 = trunc i32 %and45 to i8, !dbg !453
  %41 = load i32, i32* %m, align 4, !dbg !455
  %arrayidx47 = getelementptr inbounds [9 x i8], [9 x i8]* %iec, i32 0, i32 %41, !dbg !456
  store i8 %conv46, i8* %arrayidx47, align 1, !dbg !457
  %42 = load i32, i32* %ietmp1, align 4, !dbg !458
  %shr48 = lshr i32 %42, 6, !dbg !458
  store i32 %shr48, i32* %ietmp1, align 4, !dbg !458
  %43 = load i32, i32* %ietmp2, align 4, !dbg !459
  %shr49 = lshr i32 %43, 6, !dbg !459
  store i32 %shr49, i32* %ietmp2, align 4, !dbg !459
  br label %for.inc50, !dbg !460

for.inc50:                                        ; preds = %for.body42
  %44 = load volatile i32, i32* %j, align 4, !dbg !461
  %inc = add nsw i32 %44, 1, !dbg !461
  store volatile i32 %inc, i32* %j, align 4, !dbg !461
  %45 = load i32, i32* %m, align 4, !dbg !462
  %inc51 = add nsw i32 %45, 1, !dbg !462
  store i32 %inc51, i32* %m, align 4, !dbg !462
  br label %for.cond40, !dbg !447, !llvm.loop !463

for.end52:                                        ; preds = %for.cond40
  store i32 0, i32* %itmp, align 4, !dbg !464
  store volatile i32 8, i32* %jj, align 4, !dbg !465
  br label %for.cond53, !dbg !466

for.cond53:                                       ; preds = %for.inc81, %for.end52
  %46 = load volatile i32, i32* %jj, align 4, !dbg !467
  %cmp54 = icmp sge i32 %46, 1, !dbg !468
  br i1 %cmp54, label %for.body56, label %for.end83, !dbg !469

for.body56:                                       ; preds = %for.cond53
  %47 = load volatile i32, i32* %jj, align 4, !dbg !470
  %arrayidx57 = getelementptr inbounds [9 x i8], [9 x i8]* %iec, i32 0, i32 %47, !dbg !471
  %48 = load i8, i8* %arrayidx57, align 1, !dbg !471
  %conv58 = zext i8 %48 to i32, !dbg !471
  store volatile i32 %conv58, i32* %j, align 4, !dbg !472
  %49 = load volatile i32, i32* %j, align 4, !dbg !473
  %and59 = and i32 %49, 1, !dbg !474
  %shl60 = shl i32 %and59, 1, !dbg !475
  %50 = load volatile i32, i32* %j, align 4, !dbg !476
  %and61 = and i32 %50, 32, !dbg !477
  %shr62 = ashr i32 %and61, 5, !dbg !478
  %add63 = add nsw i32 %shl60, %shr62, !dbg !479
  store i32 %add63, i32* %irow, align 4, !dbg !480
  %51 = load volatile i32, i32* %j, align 4, !dbg !481
  %and64 = and i32 %51, 2, !dbg !482
  %shl65 = shl i32 %and64, 2, !dbg !483
  %52 = load volatile i32, i32* %j, align 4, !dbg !484
  %and66 = and i32 %52, 4, !dbg !485
  %add67 = add nsw i32 %shl65, %and66, !dbg !486
  %53 = load volatile i32, i32* %j, align 4, !dbg !487
  %and68 = and i32 %53, 8, !dbg !488
  %shr69 = ashr i32 %and68, 2, !dbg !489
  %add70 = add nsw i32 %add67, %shr69, !dbg !490
  %54 = load volatile i32, i32* %j, align 4, !dbg !491
  %and71 = and i32 %54, 16, !dbg !492
  %shr72 = ashr i32 %and71, 4, !dbg !493
  %add73 = add nsw i32 %add70, %shr72, !dbg !494
  store i32 %add73, i32* %icol, align 4, !dbg !495
  %55 = load i32, i32* %icol, align 4, !dbg !496
  %arrayidx74 = getelementptr inbounds [16 x [4 x [9 x i32]]], [16 x [4 x [9 x i32]]]* @ndes_cyfun.is, i32 0, i32 %55, !dbg !497
  %56 = load i32, i32* %irow, align 4, !dbg !498
  %arrayidx75 = getelementptr inbounds [4 x [9 x i32]], [4 x [9 x i32]]* %arrayidx74, i32 0, i32 %56, !dbg !497
  %57 = load volatile i32, i32* %jj, align 4, !dbg !499
  %arrayidx76 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx75, i32 0, i32 %57, !dbg !497
  %58 = load volatile i32, i32* %arrayidx76, align 4, !dbg !497
  store i32 %58, i32* %iss, align 4, !dbg !500
  %59 = load i32, i32* %itmp, align 4, !dbg !501
  %shl77 = shl i32 %59, 4, !dbg !502
  %60 = load i32, i32* %iss, align 4, !dbg !503
  %arrayidx78 = getelementptr inbounds [16 x i8], [16 x i8]* %ibin, i32 0, i32 %60, !dbg !504
  %61 = load volatile i8, i8* %arrayidx78, align 1, !dbg !504
  %conv79 = zext i8 %61 to i32, !dbg !504
  %or80 = or i32 %shl77, %conv79, !dbg !505
  store i32 %or80, i32* %itmp, align 4, !dbg !506
  br label %for.inc81, !dbg !507

for.inc81:                                        ; preds = %for.body56
  %62 = load volatile i32, i32* %jj, align 4, !dbg !508
  %dec82 = add nsw i32 %62, -1, !dbg !508
  store volatile i32 %dec82, i32* %jj, align 4, !dbg !508
  br label %for.cond53, !dbg !469, !llvm.loop !509

for.end83:                                        ; preds = %for.cond53
  %63 = load i32*, i32** %iout.addr, align 4, !dbg !510
  store i32 0, i32* %63, align 4, !dbg !511
  store i32* getelementptr inbounds ([33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 0), i32** %p, align 4, !dbg !512
  store volatile i32 32, i32* %j, align 4, !dbg !513
  br label %for.cond84, !dbg !514

for.cond84:                                       ; preds = %for.inc89, %for.end83
  %64 = load volatile i32, i32* %j, align 4, !dbg !515
  %cmp85 = icmp sge i32 %64, 1, !dbg !516
  br i1 %cmp85, label %for.body87, label %for.end91, !dbg !517

for.body87:                                       ; preds = %for.cond84
  %65 = load i32*, i32** %iout.addr, align 4, !dbg !518
  %66 = load i32, i32* %65, align 4, !dbg !519
  %shl88 = shl i32 %66, 1, !dbg !520
  %67 = load i32*, i32** %iout.addr, align 4, !dbg !521
  store i32 %shl88, i32* %67, align 4, !dbg !522
  br label %for.inc89, !dbg !523

for.inc89:                                        ; preds = %for.body87
  %68 = load volatile i32, i32* %j, align 4, !dbg !524
  %dec90 = add nsw i32 %68, -1, !dbg !524
  store volatile i32 %dec90, i32* %j, align 4, !dbg !524
  br label %for.cond84, !dbg !517, !llvm.loop !525

for.end91:                                        ; preds = %for.cond84
  %69 = load i32*, i32** %p, align 4, !dbg !527
  %70 = load volatile i32, i32* %j, align 4, !dbg !528
  %arrayidx92 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_cyfun.ipp, i32 0, i32 %70, !dbg !529
  %71 = load volatile i32, i32* %arrayidx92, align 4, !dbg !529
  %arrayidx93 = getelementptr inbounds i32, i32* %69, i32 %71, !dbg !527
  %72 = load i32, i32* %arrayidx93, align 4, !dbg !527
  %73 = load i32, i32* %itmp, align 4, !dbg !530
  %and94 = and i32 %72, %73, !dbg !531
  %tobool95 = icmp ne i32 %and94, 0, !dbg !527
  %74 = zext i1 %tobool95 to i64, !dbg !527
  %cond96 = select i1 %tobool95, i32 1, i32 0, !dbg !527
  %75 = load i32*, i32** %iout.addr, align 4, !dbg !532
  %76 = load i32, i32* %75, align 4, !dbg !533
  %or97 = or i32 %76, %cond96, !dbg !533
  store i32 %or97, i32* %75, align 4, !dbg !533
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @ndes_return() #0 !dbg !535 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !536
  %1 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !537
  %add = add i32 %0, %1, !dbg !538
  %add1 = add i32 %add, -8390656, !dbg !539
  %cmp = icmp ne i32 %add1, 0, !dbg !540
  %conv = zext i1 %cmp to i32, !dbg !540
  ret i32 %conv, !dbg !541
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_main() #0 !dbg !542 {
entry:
  %0 = load i32, i32* @ndes_isw, align 4, !dbg !543
  %1 = load [2 x i32], [2 x i32]* bitcast (%struct.NDES_IMMENSE* @ndes_inp to [2 x i32]*), align 4, !dbg !544
  %2 = load [2 x i32], [2 x i32]* bitcast (%struct.NDES_IMMENSE* @ndes_key to [2 x i32]*), align 4, !dbg !544
  call arm_aapcs_vfpcc void @ndes_des([2 x i32] %1, [2 x i32] %2, i32* noundef @ndes_newkey, i32 noundef %0, %struct.NDES_IMMENSE* noundef @ndes_out) #2, !dbg !544
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !546 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call arm_aapcs_vfpcc void @ndes_init() #2, !dbg !547
  call arm_aapcs_vfpcc void @ndes_main() #2, !dbg !548
  %call = call arm_aapcs_vfpcc i32 @ndes_return() #2, !dbg !549
  ret i32 %call, !dbg !550
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/ndes/ndes.c", directory: "/workspaces/llvmta/testcases/tmp.VgtG6Ru486", checksumkind: CSK_MD5, checksum: "1dbf55eeb6d2b1d38e6a64b015f1acba")
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
!12 = distinct !DISubprogram(name: "ndes_init", scope: !13, file: !13, line: 63, type: !14, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "batchtest/ndes/ndes.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "1dbf55eeb6d2b1d38e6a64b015f1acba")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 79, column: 11, scope: !12)
!17 = !DILocation(line: 79, column: 9, scope: !12)
!18 = !DILocation(line: 79, column: 16, scope: !12)
!19 = !DILocation(line: 79, column: 18, scope: !12)
!20 = !DILocation(line: 79, column: 3, scope: !12)
!21 = !DILocation(line: 80, column: 37, scope: !12)
!22 = !DILocation(line: 80, column: 22, scope: !12)
!23 = !DILocation(line: 80, column: 16, scope: !12)
!24 = !DILocation(line: 80, column: 5, scope: !12)
!25 = !DILocation(line: 80, column: 20, scope: !12)
!26 = !DILocation(line: 79, column: 25, scope: !12)
!27 = distinct !{!27, !20, !28, !29}
!28 = !DILocation(line: 80, column: 39, scope: !12)
!29 = !{!"llvm.loop.mustprogress"}
!30 = !DILocation(line: 82, column: 11, scope: !12)
!31 = !DILocation(line: 82, column: 9, scope: !12)
!32 = !DILocation(line: 82, column: 16, scope: !12)
!33 = !DILocation(line: 82, column: 18, scope: !12)
!34 = !DILocation(line: 82, column: 3, scope: !12)
!35 = !DILocation(line: 83, column: 37, scope: !12)
!36 = !DILocation(line: 83, column: 22, scope: !12)
!37 = !DILocation(line: 83, column: 16, scope: !12)
!38 = !DILocation(line: 83, column: 5, scope: !12)
!39 = !DILocation(line: 83, column: 20, scope: !12)
!40 = !DILocation(line: 82, column: 25, scope: !12)
!41 = distinct !{!41, !34, !42, !29}
!42 = !DILocation(line: 83, column: 39, scope: !12)
!43 = !DILocation(line: 85, column: 14, scope: !12)
!44 = !DILocation(line: 86, column: 14, scope: !12)
!45 = !DILocation(line: 87, column: 14, scope: !12)
!46 = !DILocation(line: 88, column: 14, scope: !12)
!47 = !DILocation(line: 90, column: 17, scope: !12)
!48 = !DILocation(line: 90, column: 15, scope: !12)
!49 = !DILocation(line: 91, column: 14, scope: !12)
!50 = !DILocation(line: 91, column: 12, scope: !12)
!51 = !DILocation(line: 92, column: 1, scope: !12)
!52 = distinct !DISubprogram(name: "ndes_des", scope: !13, file: !13, line: 96, type: !14, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!53 = !DILocation(line: 127, column: 8, scope: !52)
!54 = !DILocation(line: 128, column: 14, scope: !52)
!55 = !DILocation(line: 129, column: 29, scope: !52)
!56 = !DILocation(line: 129, column: 19, scope: !52)
!57 = !DILocation(line: 132, column: 13, scope: !52)
!58 = !DILocation(line: 132, column: 11, scope: !52)
!59 = !DILocation(line: 132, column: 18, scope: !52)
!60 = !DILocation(line: 132, column: 20, scope: !52)
!61 = !DILocation(line: 132, column: 5, scope: !52)
!62 = !DILocation(line: 133, column: 33, scope: !52)
!63 = !DILocation(line: 133, column: 17, scope: !52)
!64 = !DILocation(line: 133, column: 7, scope: !52)
!65 = !DILocation(line: 133, column: 21, scope: !52)
!66 = !DILocation(line: 132, column: 27, scope: !52)
!67 = distinct !{!67, !61, !68, !29}
!68 = !DILocation(line: 133, column: 39, scope: !52)
!69 = !DILocation(line: 134, column: 3, scope: !52)
!70 = !DILocation(line: 136, column: 9, scope: !52)
!71 = !DILocation(line: 136, column: 8, scope: !52)
!72 = !DILocation(line: 137, column: 6, scope: !52)
!73 = !DILocation(line: 137, column: 13, scope: !52)
!74 = !DILocation(line: 138, column: 29, scope: !52)
!75 = !DILocation(line: 138, column: 16, scope: !52)
!76 = !DILocation(line: 141, column: 13, scope: !52)
!77 = !DILocation(line: 141, column: 20, scope: !52)
!78 = !DILocation(line: 141, column: 11, scope: !52)
!79 = !DILocation(line: 141, column: 26, scope: !52)
!80 = !DILocation(line: 141, column: 28, scope: !52)
!81 = !DILocation(line: 141, column: 5, scope: !52)
!82 = !DILocation(line: 142, column: 31, scope: !52)
!83 = !DILocation(line: 142, column: 33, scope: !52)
!84 = !DILocation(line: 142, column: 71, scope: !52)
!85 = !DILocation(line: 142, column: 60, scope: !52)
!86 = !DILocation(line: 142, column: 42, scope: !52)
!87 = !DILocation(line: 142, column: 40, scope: !52)
!88 = !DILocation(line: 142, column: 18, scope: !52)
!89 = !DILocation(line: 143, column: 29, scope: !52)
!90 = !DILocation(line: 143, column: 31, scope: !52)
!91 = !DILocation(line: 143, column: 18, scope: !52)
!92 = !DILocation(line: 144, column: 31, scope: !52)
!93 = !DILocation(line: 144, column: 66, scope: !52)
!94 = !DILocation(line: 144, column: 55, scope: !52)
!95 = !DILocation(line: 144, column: 37, scope: !52)
!96 = !DILocation(line: 144, column: 35, scope: !52)
!97 = !DILocation(line: 144, column: 18, scope: !52)
!98 = !DILocation(line: 145, column: 5, scope: !52)
!99 = !DILocation(line: 141, column: 35, scope: !52)
!100 = !DILocation(line: 141, column: 40, scope: !52)
!101 = distinct !{!101, !81, !98, !29}
!102 = !DILocation(line: 148, column: 13, scope: !52)
!103 = !DILocation(line: 148, column: 11, scope: !52)
!104 = !DILocation(line: 148, column: 19, scope: !52)
!105 = !DILocation(line: 148, column: 21, scope: !52)
!106 = !DILocation(line: 148, column: 5, scope: !52)
!107 = !DILocation(line: 149, column: 17, scope: !52)
!108 = !DILocation(line: 149, column: 12, scope: !52)
!109 = !DILocation(line: 150, column: 26, scope: !52)
!110 = !DILocation(line: 150, column: 7, scope: !52)
!111 = !DILocation(line: 151, column: 12, scope: !52)
!112 = !DILocation(line: 151, column: 7, scope: !52)
!113 = !DILocation(line: 151, column: 18, scope: !52)
!114 = !DILocation(line: 152, column: 5, scope: !52)
!115 = !DILocation(line: 148, column: 29, scope: !52)
!116 = distinct !{!116, !106, !114, !29}
!117 = !DILocation(line: 153, column: 3, scope: !52)
!118 = !DILocation(line: 155, column: 17, scope: !52)
!119 = !DILocation(line: 155, column: 19, scope: !52)
!120 = !DILocation(line: 155, column: 8, scope: !52)
!121 = !DILocation(line: 155, column: 10, scope: !52)
!122 = !DILocation(line: 158, column: 11, scope: !52)
!123 = !DILocation(line: 158, column: 18, scope: !52)
!124 = !DILocation(line: 158, column: 9, scope: !52)
!125 = !DILocation(line: 158, column: 24, scope: !52)
!126 = !DILocation(line: 158, column: 26, scope: !52)
!127 = !DILocation(line: 158, column: 3, scope: !52)
!128 = !DILocation(line: 159, column: 19, scope: !52)
!129 = !DILocation(line: 159, column: 21, scope: !52)
!130 = !DILocation(line: 159, column: 10, scope: !52)
!131 = !DILocation(line: 159, column: 12, scope: !52)
!132 = !DILocation(line: 160, column: 21, scope: !52)
!133 = !DILocation(line: 160, column: 49, scope: !52)
!134 = !DILocation(line: 160, column: 45, scope: !52)
!135 = !DILocation(line: 160, column: 27, scope: !52)
!136 = !DILocation(line: 160, column: 25, scope: !52)
!137 = !DILocation(line: 160, column: 10, scope: !52)
!138 = !DILocation(line: 160, column: 12, scope: !52)
!139 = !DILocation(line: 161, column: 19, scope: !52)
!140 = !DILocation(line: 161, column: 21, scope: !52)
!141 = !DILocation(line: 161, column: 10, scope: !52)
!142 = !DILocation(line: 161, column: 12, scope: !52)
!143 = !DILocation(line: 162, column: 21, scope: !52)
!144 = !DILocation(line: 162, column: 49, scope: !52)
!145 = !DILocation(line: 162, column: 45, scope: !52)
!146 = !DILocation(line: 162, column: 27, scope: !52)
!147 = !DILocation(line: 162, column: 25, scope: !52)
!148 = !DILocation(line: 162, column: 10, scope: !52)
!149 = !DILocation(line: 162, column: 12, scope: !52)
!150 = !DILocation(line: 163, column: 3, scope: !52)
!151 = !DILocation(line: 158, column: 33, scope: !52)
!152 = !DILocation(line: 158, column: 38, scope: !52)
!153 = distinct !{!153, !127, !150, !29}
!154 = !DILocation(line: 165, column: 11, scope: !52)
!155 = !DILocation(line: 165, column: 9, scope: !52)
!156 = !DILocation(line: 165, column: 17, scope: !52)
!157 = !DILocation(line: 165, column: 19, scope: !52)
!158 = !DILocation(line: 165, column: 3, scope: !52)
!159 = !DILocation(line: 166, column: 12, scope: !52)
!160 = !DILocation(line: 166, column: 16, scope: !52)
!161 = !DILocation(line: 166, column: 28, scope: !52)
!162 = !DILocation(line: 166, column: 26, scope: !52)
!163 = !DILocation(line: 166, column: 32, scope: !52)
!164 = !DILocation(line: 166, column: 8, scope: !52)
!165 = !DILocation(line: 167, column: 22, scope: !52)
!166 = !DILocation(line: 167, column: 30, scope: !52)
!167 = !DILocation(line: 167, column: 25, scope: !52)
!168 = !DILocation(line: 167, column: 5, scope: !52)
!169 = !DILocation(line: 168, column: 16, scope: !52)
!170 = !DILocation(line: 168, column: 8, scope: !52)
!171 = !DILocation(line: 169, column: 19, scope: !52)
!172 = !DILocation(line: 169, column: 10, scope: !52)
!173 = !DILocation(line: 169, column: 12, scope: !52)
!174 = !DILocation(line: 170, column: 14, scope: !52)
!175 = !DILocation(line: 170, column: 10, scope: !52)
!176 = !DILocation(line: 170, column: 12, scope: !52)
!177 = !DILocation(line: 171, column: 3, scope: !52)
!178 = !DILocation(line: 165, column: 27, scope: !52)
!179 = distinct !{!179, !158, !177, !29}
!180 = !DILocation(line: 173, column: 13, scope: !52)
!181 = !DILocation(line: 173, column: 6, scope: !52)
!182 = !DILocation(line: 174, column: 17, scope: !52)
!183 = !DILocation(line: 174, column: 8, scope: !52)
!184 = !DILocation(line: 174, column: 10, scope: !52)
!185 = !DILocation(line: 175, column: 12, scope: !52)
!186 = !DILocation(line: 175, column: 8, scope: !52)
!187 = !DILocation(line: 175, column: 10, scope: !52)
!188 = !DILocation(line: 176, column: 19, scope: !52)
!189 = !DILocation(line: 176, column: 25, scope: !52)
!190 = !DILocation(line: 176, column: 27, scope: !52)
!191 = !DILocation(line: 176, column: 6, scope: !52)
!192 = !DILocation(line: 176, column: 12, scope: !52)
!193 = !DILocation(line: 176, column: 14, scope: !52)
!194 = !DILocation(line: 179, column: 11, scope: !52)
!195 = !DILocation(line: 179, column: 18, scope: !52)
!196 = !DILocation(line: 179, column: 9, scope: !52)
!197 = !DILocation(line: 179, column: 24, scope: !52)
!198 = !DILocation(line: 179, column: 26, scope: !52)
!199 = !DILocation(line: 179, column: 3, scope: !52)
!200 = !DILocation(line: 180, column: 21, scope: !52)
!201 = !DILocation(line: 180, column: 27, scope: !52)
!202 = !DILocation(line: 180, column: 29, scope: !52)
!203 = !DILocation(line: 180, column: 8, scope: !52)
!204 = !DILocation(line: 180, column: 14, scope: !52)
!205 = !DILocation(line: 180, column: 16, scope: !52)
!206 = !DILocation(line: 181, column: 23, scope: !52)
!207 = !DILocation(line: 181, column: 29, scope: !52)
!208 = !DILocation(line: 181, column: 59, scope: !52)
!209 = !DILocation(line: 181, column: 54, scope: !52)
!210 = !DILocation(line: 181, column: 35, scope: !52)
!211 = !DILocation(line: 181, column: 33, scope: !52)
!212 = !DILocation(line: 181, column: 8, scope: !52)
!213 = !DILocation(line: 181, column: 14, scope: !52)
!214 = !DILocation(line: 181, column: 16, scope: !52)
!215 = !DILocation(line: 182, column: 21, scope: !52)
!216 = !DILocation(line: 182, column: 27, scope: !52)
!217 = !DILocation(line: 182, column: 29, scope: !52)
!218 = !DILocation(line: 182, column: 8, scope: !52)
!219 = !DILocation(line: 182, column: 14, scope: !52)
!220 = !DILocation(line: 182, column: 16, scope: !52)
!221 = !DILocation(line: 183, column: 23, scope: !52)
!222 = !DILocation(line: 183, column: 29, scope: !52)
!223 = !DILocation(line: 183, column: 59, scope: !52)
!224 = !DILocation(line: 183, column: 54, scope: !52)
!225 = !DILocation(line: 183, column: 35, scope: !52)
!226 = !DILocation(line: 183, column: 33, scope: !52)
!227 = !DILocation(line: 183, column: 8, scope: !52)
!228 = !DILocation(line: 183, column: 14, scope: !52)
!229 = !DILocation(line: 183, column: 16, scope: !52)
!230 = !DILocation(line: 184, column: 3, scope: !52)
!231 = !DILocation(line: 179, column: 33, scope: !52)
!232 = !DILocation(line: 179, column: 38, scope: !52)
!233 = distinct !{!233, !199, !230, !29}
!234 = !DILocation(line: 185, column: 1, scope: !52)
!235 = distinct !DISubprogram(name: "ndes_getbit", scope: !13, file: !13, line: 333, type: !14, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!236 = !DILocation(line: 335, column: 8, scope: !235)
!237 = !DILocation(line: 335, column: 17, scope: !235)
!238 = !DILocation(line: 335, column: 14, scope: !235)
!239 = !DILocation(line: 336, column: 22, scope: !235)
!240 = !DILocation(line: 336, column: 12, scope: !235)
!241 = !DILocation(line: 336, column: 39, scope: !235)
!242 = !DILocation(line: 336, column: 30, scope: !235)
!243 = !DILocation(line: 336, column: 5, scope: !235)
!244 = !DILocation(line: 338, column: 22, scope: !235)
!245 = !DILocation(line: 338, column: 30, scope: !235)
!246 = !DILocation(line: 338, column: 28, scope: !235)
!247 = !DILocation(line: 338, column: 12, scope: !235)
!248 = !DILocation(line: 338, column: 47, scope: !235)
!249 = !DILocation(line: 338, column: 38, scope: !235)
!250 = !DILocation(line: 338, column: 5, scope: !235)
!251 = !DILocation(line: 339, column: 1, scope: !235)
!252 = distinct !DISubprogram(name: "ndes_ks", scope: !13, file: !13, line: 341, type: !14, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!253 = !DILocation(line: 345, column: 8, scope: !252)
!254 = !DILocation(line: 345, column: 10, scope: !252)
!255 = !DILocation(line: 345, column: 15, scope: !252)
!256 = !DILocation(line: 345, column: 18, scope: !252)
!257 = !DILocation(line: 345, column: 20, scope: !252)
!258 = !DILocation(line: 345, column: 25, scope: !252)
!259 = !DILocation(line: 345, column: 28, scope: !252)
!260 = !DILocation(line: 345, column: 30, scope: !252)
!261 = !DILocation(line: 345, column: 35, scope: !252)
!262 = !DILocation(line: 345, column: 38, scope: !252)
!263 = !DILocation(line: 345, column: 40, scope: !252)
!264 = !DILocation(line: 346, column: 29, scope: !252)
!265 = !DILocation(line: 346, column: 46, scope: !252)
!266 = !DILocation(line: 346, column: 48, scope: !252)
!267 = !DILocation(line: 346, column: 55, scope: !252)
!268 = !DILocation(line: 346, column: 31, scope: !252)
!269 = !DILocation(line: 346, column: 65, scope: !252)
!270 = !DILocation(line: 346, column: 16, scope: !252)
!271 = !DILocation(line: 347, column: 29, scope: !252)
!272 = !DILocation(line: 347, column: 46, scope: !252)
!273 = !DILocation(line: 347, column: 48, scope: !252)
!274 = !DILocation(line: 347, column: 55, scope: !252)
!275 = !DILocation(line: 347, column: 31, scope: !252)
!276 = !DILocation(line: 347, column: 65, scope: !252)
!277 = !DILocation(line: 347, column: 16, scope: !252)
!278 = !DILocation(line: 348, column: 3, scope: !252)
!279 = !DILocation(line: 350, column: 13, scope: !252)
!280 = !DILocation(line: 350, column: 11, scope: !252)
!281 = !DILocation(line: 350, column: 18, scope: !252)
!282 = !DILocation(line: 350, column: 20, scope: !252)
!283 = !DILocation(line: 350, column: 5, scope: !252)
!284 = !DILocation(line: 351, column: 31, scope: !252)
!285 = !DILocation(line: 351, column: 48, scope: !252)
!286 = !DILocation(line: 351, column: 50, scope: !252)
!287 = !DILocation(line: 351, column: 57, scope: !252)
!288 = !DILocation(line: 351, column: 33, scope: !252)
!289 = !DILocation(line: 351, column: 67, scope: !252)
!290 = !DILocation(line: 351, column: 18, scope: !252)
!291 = !DILocation(line: 352, column: 31, scope: !252)
!292 = !DILocation(line: 352, column: 48, scope: !252)
!293 = !DILocation(line: 352, column: 50, scope: !252)
!294 = !DILocation(line: 352, column: 57, scope: !252)
!295 = !DILocation(line: 352, column: 33, scope: !252)
!296 = !DILocation(line: 352, column: 67, scope: !252)
!297 = !DILocation(line: 352, column: 18, scope: !252)
!298 = !DILocation(line: 353, column: 5, scope: !252)
!299 = !DILocation(line: 350, column: 27, scope: !252)
!300 = distinct !{!300, !283, !298, !29}
!301 = !DILocation(line: 356, column: 30, scope: !252)
!302 = !DILocation(line: 356, column: 35, scope: !252)
!303 = !DILocation(line: 356, column: 37, scope: !252)
!304 = !DILocation(line: 356, column: 18, scope: !252)
!305 = !DILocation(line: 356, column: 23, scope: !252)
!306 = !DILocation(line: 356, column: 25, scope: !252)
!307 = !DILocation(line: 356, column: 6, scope: !252)
!308 = !DILocation(line: 356, column: 11, scope: !252)
!309 = !DILocation(line: 356, column: 13, scope: !252)
!310 = !DILocation(line: 359, column: 11, scope: !252)
!311 = !DILocation(line: 359, column: 19, scope: !252)
!312 = !DILocation(line: 359, column: 27, scope: !252)
!313 = !DILocation(line: 359, column: 9, scope: !252)
!314 = !DILocation(line: 359, column: 33, scope: !252)
!315 = !DILocation(line: 359, column: 35, scope: !252)
!316 = !DILocation(line: 359, column: 3, scope: !252)
!317 = !DILocation(line: 360, column: 20, scope: !252)
!318 = !DILocation(line: 360, column: 25, scope: !252)
!319 = !DILocation(line: 360, column: 27, scope: !252)
!320 = !DILocation(line: 360, column: 8, scope: !252)
!321 = !DILocation(line: 360, column: 13, scope: !252)
!322 = !DILocation(line: 360, column: 15, scope: !252)
!323 = !DILocation(line: 361, column: 22, scope: !252)
!324 = !DILocation(line: 361, column: 27, scope: !252)
!325 = !DILocation(line: 362, column: 51, scope: !252)
!326 = !DILocation(line: 362, column: 40, scope: !252)
!327 = !DILocation(line: 362, column: 17, scope: !252)
!328 = !DILocation(line: 361, column: 33, scope: !252)
!329 = !DILocation(line: 361, column: 31, scope: !252)
!330 = !DILocation(line: 361, column: 8, scope: !252)
!331 = !DILocation(line: 361, column: 13, scope: !252)
!332 = !DILocation(line: 361, column: 15, scope: !252)
!333 = !DILocation(line: 363, column: 20, scope: !252)
!334 = !DILocation(line: 363, column: 25, scope: !252)
!335 = !DILocation(line: 363, column: 27, scope: !252)
!336 = !DILocation(line: 363, column: 8, scope: !252)
!337 = !DILocation(line: 363, column: 13, scope: !252)
!338 = !DILocation(line: 363, column: 15, scope: !252)
!339 = !DILocation(line: 364, column: 22, scope: !252)
!340 = !DILocation(line: 364, column: 27, scope: !252)
!341 = !DILocation(line: 365, column: 51, scope: !252)
!342 = !DILocation(line: 365, column: 40, scope: !252)
!343 = !DILocation(line: 365, column: 17, scope: !252)
!344 = !DILocation(line: 364, column: 33, scope: !252)
!345 = !DILocation(line: 364, column: 31, scope: !252)
!346 = !DILocation(line: 364, column: 8, scope: !252)
!347 = !DILocation(line: 364, column: 13, scope: !252)
!348 = !DILocation(line: 364, column: 15, scope: !252)
!349 = !DILocation(line: 366, column: 20, scope: !252)
!350 = !DILocation(line: 366, column: 25, scope: !252)
!351 = !DILocation(line: 366, column: 27, scope: !252)
!352 = !DILocation(line: 366, column: 8, scope: !252)
!353 = !DILocation(line: 366, column: 13, scope: !252)
!354 = !DILocation(line: 366, column: 15, scope: !252)
!355 = !DILocation(line: 367, column: 22, scope: !252)
!356 = !DILocation(line: 367, column: 27, scope: !252)
!357 = !DILocation(line: 368, column: 51, scope: !252)
!358 = !DILocation(line: 368, column: 40, scope: !252)
!359 = !DILocation(line: 368, column: 17, scope: !252)
!360 = !DILocation(line: 367, column: 33, scope: !252)
!361 = !DILocation(line: 367, column: 31, scope: !252)
!362 = !DILocation(line: 367, column: 8, scope: !252)
!363 = !DILocation(line: 367, column: 13, scope: !252)
!364 = !DILocation(line: 367, column: 15, scope: !252)
!365 = !DILocation(line: 369, column: 3, scope: !252)
!366 = !DILocation(line: 359, column: 42, scope: !252)
!367 = !DILocation(line: 359, column: 47, scope: !252)
!368 = !DILocation(line: 359, column: 52, scope: !252)
!369 = distinct !{!369, !316, !365, !29}
!370 = !DILocation(line: 370, column: 1, scope: !252)
!371 = distinct !DISubprogram(name: "ndes_cyfun", scope: !13, file: !13, line: 188, type: !14, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!372 = !DILocation(line: 281, column: 17, scope: !371)
!373 = !DILocation(line: 289, column: 5, scope: !371)
!374 = !DILocation(line: 290, column: 20, scope: !371)
!375 = !DILocation(line: 290, column: 22, scope: !371)
!376 = !DILocation(line: 290, column: 13, scope: !371)
!377 = !DILocation(line: 290, column: 15, scope: !371)
!378 = !DILocation(line: 290, column: 6, scope: !371)
!379 = !DILocation(line: 290, column: 8, scope: !371)
!380 = !DILocation(line: 293, column: 11, scope: !371)
!381 = !DILocation(line: 293, column: 19, scope: !371)
!382 = !DILocation(line: 293, column: 27, scope: !371)
!383 = !DILocation(line: 293, column: 9, scope: !371)
!384 = !DILocation(line: 293, column: 33, scope: !371)
!385 = !DILocation(line: 293, column: 35, scope: !371)
!386 = !DILocation(line: 293, column: 3, scope: !371)
!387 = !DILocation(line: 294, column: 17, scope: !371)
!388 = !DILocation(line: 294, column: 19, scope: !371)
!389 = !DILocation(line: 294, column: 30, scope: !371)
!390 = !DILocation(line: 294, column: 38, scope: !371)
!391 = !DILocation(line: 294, column: 33, scope: !371)
!392 = !DILocation(line: 294, column: 46, scope: !371)
!393 = !DILocation(line: 294, column: 44, scope: !371)
!394 = !DILocation(line: 294, column: 26, scope: !371)
!395 = !DILocation(line: 294, column: 8, scope: !371)
!396 = !DILocation(line: 294, column: 10, scope: !371)
!397 = !DILocation(line: 295, column: 17, scope: !371)
!398 = !DILocation(line: 295, column: 19, scope: !371)
!399 = !DILocation(line: 295, column: 30, scope: !371)
!400 = !DILocation(line: 295, column: 38, scope: !371)
!401 = !DILocation(line: 295, column: 33, scope: !371)
!402 = !DILocation(line: 295, column: 46, scope: !371)
!403 = !DILocation(line: 295, column: 44, scope: !371)
!404 = !DILocation(line: 295, column: 26, scope: !371)
!405 = !DILocation(line: 295, column: 8, scope: !371)
!406 = !DILocation(line: 295, column: 10, scope: !371)
!407 = !DILocation(line: 296, column: 17, scope: !371)
!408 = !DILocation(line: 296, column: 19, scope: !371)
!409 = !DILocation(line: 296, column: 30, scope: !371)
!410 = !DILocation(line: 296, column: 38, scope: !371)
!411 = !DILocation(line: 296, column: 33, scope: !371)
!412 = !DILocation(line: 296, column: 46, scope: !371)
!413 = !DILocation(line: 296, column: 44, scope: !371)
!414 = !DILocation(line: 296, column: 26, scope: !371)
!415 = !DILocation(line: 296, column: 8, scope: !371)
!416 = !DILocation(line: 296, column: 10, scope: !371)
!417 = !DILocation(line: 297, column: 3, scope: !371)
!418 = !DILocation(line: 293, column: 42, scope: !371)
!419 = !DILocation(line: 293, column: 47, scope: !371)
!420 = !DILocation(line: 293, column: 52, scope: !371)
!421 = distinct !{!421, !386, !417, !29}
!422 = !DILocation(line: 298, column: 13, scope: !371)
!423 = !DILocation(line: 298, column: 6, scope: !371)
!424 = !DILocation(line: 298, column: 8, scope: !371)
!425 = !DILocation(line: 299, column: 13, scope: !371)
!426 = !DILocation(line: 299, column: 6, scope: !371)
!427 = !DILocation(line: 299, column: 8, scope: !371)
!428 = !DILocation(line: 300, column: 13, scope: !371)
!429 = !DILocation(line: 300, column: 6, scope: !371)
!430 = !DILocation(line: 300, column: 8, scope: !371)
!431 = !DILocation(line: 301, column: 35, scope: !371)
!432 = !DILocation(line: 301, column: 37, scope: !371)
!433 = !DILocation(line: 301, column: 68, scope: !371)
!434 = !DILocation(line: 301, column: 45, scope: !371)
!435 = !DILocation(line: 301, column: 10, scope: !371)
!436 = !DILocation(line: 302, column: 35, scope: !371)
!437 = !DILocation(line: 302, column: 37, scope: !371)
!438 = !DILocation(line: 302, column: 69, scope: !371)
!439 = !DILocation(line: 302, column: 71, scope: !371)
!440 = !DILocation(line: 302, column: 44, scope: !371)
!441 = !DILocation(line: 302, column: 10, scope: !371)
!442 = !DILocation(line: 305, column: 11, scope: !371)
!443 = !DILocation(line: 305, column: 18, scope: !371)
!444 = !DILocation(line: 305, column: 9, scope: !371)
!445 = !DILocation(line: 305, column: 23, scope: !371)
!446 = !DILocation(line: 305, column: 25, scope: !371)
!447 = !DILocation(line: 305, column: 3, scope: !371)
!448 = !DILocation(line: 306, column: 16, scope: !371)
!449 = !DILocation(line: 306, column: 23, scope: !371)
!450 = !DILocation(line: 306, column: 10, scope: !371)
!451 = !DILocation(line: 306, column: 5, scope: !371)
!452 = !DILocation(line: 306, column: 14, scope: !371)
!453 = !DILocation(line: 307, column: 16, scope: !371)
!454 = !DILocation(line: 307, column: 23, scope: !371)
!455 = !DILocation(line: 307, column: 10, scope: !371)
!456 = !DILocation(line: 307, column: 5, scope: !371)
!457 = !DILocation(line: 307, column: 14, scope: !371)
!458 = !DILocation(line: 308, column: 12, scope: !371)
!459 = !DILocation(line: 309, column: 12, scope: !371)
!460 = !DILocation(line: 310, column: 3, scope: !371)
!461 = !DILocation(line: 305, column: 32, scope: !371)
!462 = !DILocation(line: 305, column: 37, scope: !371)
!463 = distinct !{!463, !447, !460, !29}
!464 = !DILocation(line: 312, column: 8, scope: !371)
!465 = !DILocation(line: 315, column: 12, scope: !371)
!466 = !DILocation(line: 315, column: 9, scope: !371)
!467 = !DILocation(line: 315, column: 17, scope: !371)
!468 = !DILocation(line: 315, column: 20, scope: !371)
!469 = !DILocation(line: 315, column: 3, scope: !371)
!470 = !DILocation(line: 316, column: 14, scope: !371)
!471 = !DILocation(line: 316, column: 9, scope: !371)
!472 = !DILocation(line: 316, column: 7, scope: !371)
!473 = !DILocation(line: 317, column: 16, scope: !371)
!474 = !DILocation(line: 317, column: 18, scope: !371)
!475 = !DILocation(line: 317, column: 26, scope: !371)
!476 = !DILocation(line: 317, column: 39, scope: !371)
!477 = !DILocation(line: 317, column: 41, scope: !371)
!478 = !DILocation(line: 317, column: 50, scope: !371)
!479 = !DILocation(line: 317, column: 33, scope: !371)
!480 = !DILocation(line: 317, column: 10, scope: !371)
!481 = !DILocation(line: 318, column: 16, scope: !371)
!482 = !DILocation(line: 318, column: 18, scope: !371)
!483 = !DILocation(line: 318, column: 26, scope: !371)
!484 = !DILocation(line: 318, column: 37, scope: !371)
!485 = !DILocation(line: 318, column: 39, scope: !371)
!486 = !DILocation(line: 318, column: 33, scope: !371)
!487 = !DILocation(line: 319, column: 18, scope: !371)
!488 = !DILocation(line: 319, column: 20, scope: !371)
!489 = !DILocation(line: 319, column: 28, scope: !371)
!490 = !DILocation(line: 319, column: 12, scope: !371)
!491 = !DILocation(line: 319, column: 41, scope: !371)
!492 = !DILocation(line: 319, column: 43, scope: !371)
!493 = !DILocation(line: 319, column: 52, scope: !371)
!494 = !DILocation(line: 319, column: 35, scope: !371)
!495 = !DILocation(line: 318, column: 10, scope: !371)
!496 = !DILocation(line: 320, column: 15, scope: !371)
!497 = !DILocation(line: 320, column: 11, scope: !371)
!498 = !DILocation(line: 320, column: 23, scope: !371)
!499 = !DILocation(line: 320, column: 31, scope: !371)
!500 = !DILocation(line: 320, column: 9, scope: !371)
!501 = !DILocation(line: 321, column: 14, scope: !371)
!502 = !DILocation(line: 321, column: 19, scope: !371)
!503 = !DILocation(line: 321, column: 34, scope: !371)
!504 = !DILocation(line: 321, column: 28, scope: !371)
!505 = !DILocation(line: 321, column: 26, scope: !371)
!506 = !DILocation(line: 321, column: 10, scope: !371)
!507 = !DILocation(line: 322, column: 3, scope: !371)
!508 = !DILocation(line: 315, column: 28, scope: !371)
!509 = distinct !{!509, !469, !507, !29}
!510 = !DILocation(line: 324, column: 4, scope: !371)
!511 = !DILocation(line: 324, column: 9, scope: !371)
!512 = !DILocation(line: 325, column: 5, scope: !371)
!513 = !DILocation(line: 328, column: 11, scope: !371)
!514 = !DILocation(line: 328, column: 9, scope: !371)
!515 = !DILocation(line: 328, column: 17, scope: !371)
!516 = !DILocation(line: 328, column: 19, scope: !371)
!517 = !DILocation(line: 328, column: 3, scope: !371)
!518 = !DILocation(line: 329, column: 16, scope: !371)
!519 = !DILocation(line: 329, column: 15, scope: !371)
!520 = !DILocation(line: 329, column: 21, scope: !371)
!521 = !DILocation(line: 329, column: 6, scope: !371)
!522 = !DILocation(line: 329, column: 11, scope: !371)
!523 = !DILocation(line: 329, column: 5, scope: !371)
!524 = !DILocation(line: 328, column: 26, scope: !371)
!525 = distinct !{!525, !517, !526, !29}
!526 = !DILocation(line: 329, column: 26, scope: !371)
!527 = !DILocation(line: 330, column: 14, scope: !371)
!528 = !DILocation(line: 330, column: 22, scope: !371)
!529 = !DILocation(line: 330, column: 17, scope: !371)
!530 = !DILocation(line: 330, column: 30, scope: !371)
!531 = !DILocation(line: 330, column: 28, scope: !371)
!532 = !DILocation(line: 330, column: 4, scope: !371)
!533 = !DILocation(line: 330, column: 9, scope: !371)
!534 = !DILocation(line: 331, column: 1, scope: !371)
!535 = distinct !DISubprogram(name: "ndes_return", scope: !13, file: !13, line: 372, type: !14, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!536 = !DILocation(line: 374, column: 21, scope: !535)
!537 = !DILocation(line: 374, column: 34, scope: !535)
!538 = !DILocation(line: 374, column: 23, scope: !535)
!539 = !DILocation(line: 374, column: 37, scope: !535)
!540 = !DILocation(line: 374, column: 54, scope: !535)
!541 = !DILocation(line: 374, column: 3, scope: !535)
!542 = distinct !DISubprogram(name: "ndes_main", scope: !13, file: !13, line: 377, type: !14, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!543 = !DILocation(line: 379, column: 47, scope: !542)
!544 = !DILocation(line: 379, column: 3, scope: !542)
!545 = !DILocation(line: 380, column: 1, scope: !542)
!546 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 384, type: !14, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!547 = !DILocation(line: 386, column: 3, scope: !546)
!548 = !DILocation(line: 387, column: 3, scope: !546)
!549 = !DILocation(line: 389, column: 12, scope: !546)
!550 = !DILocation(line: 389, column: 3, scope: !546)
