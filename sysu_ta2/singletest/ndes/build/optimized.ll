; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.NDES_IMMENSE = type { i32, i32 }
%struct.NDES_GREAT = type { i32, i32, i32 }
%union.dwords = type { i64 }

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
define dso_local arm_aapcs_vfpcc void @ndes_init() #0 !dbg !125 {
entry:
  br label %for.cond, !dbg !129

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !130
  %exitcond.not = icmp eq i32 %i.0, 10, !dbg !131
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !132

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [57 x i8], [57 x i8]* @ndes_init.ndes_ipc1_tmp, i32 0, i32 %i.0, !dbg !133
  %0 = load volatile i8, i8* %arrayidx, align 1, !dbg !133
  %arrayidx1 = getelementptr inbounds [57 x i8], [57 x i8]* @ndes_ipc1, i32 0, i32 %i.0, !dbg !134
  store i8 %0, i8* %arrayidx1, align 1, !dbg !135
  br label %for.inc, !dbg !134

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !136
  br label %for.cond, !dbg !132, !llvm.loop !137

for.end:                                          ; preds = %for.cond
  br label %for.cond2, !dbg !140

for.cond2:                                        ; preds = %for.inc7, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.inc7 ], !dbg !130
  %exitcond1.not = icmp eq i32 %i.1, 10, !dbg !141
  br i1 %exitcond1.not, label %for.end9, label %for.body4, !dbg !142

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_init.ndes_ipc2_tmp, i32 0, i32 %i.1, !dbg !143
  %1 = load volatile i8, i8* %arrayidx5, align 1, !dbg !143
  %arrayidx6 = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_ipc2, i32 0, i32 %i.1, !dbg !144
  store i8 %1, i8* %arrayidx6, align 1, !dbg !145
  br label %for.inc7, !dbg !144

for.inc7:                                         ; preds = %for.body4
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !146
  br label %for.cond2, !dbg !142, !llvm.loop !147

for.end9:                                         ; preds = %for.cond2
  store i32 35, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_inp, i32 0, i32 0), align 4, !dbg !149
  store i32 26, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_inp, i32 0, i32 1), align 4, !dbg !150
  store i32 2, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_key, i32 0, i32 0), align 4, !dbg !151
  store i32 16, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_key, i32 0, i32 1), align 4, !dbg !152
  %2 = load i32, i32* @ndes_value, align 4, !dbg !153
  store i32 %2, i32* @ndes_newkey, align 4, !dbg !154
  store i32 %2, i32* @ndes_isw, align 4, !dbg !155
  ret void, !dbg !156
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_des([2 x i32] %inp.coerce, [2 x i32] %key.coerce, i32* noundef %newkey, i32 noundef %isw, %struct.NDES_IMMENSE* noundef %out) #0 !dbg !157 {
entry:
  %inp = alloca %struct.NDES_IMMENSE, align 4
  %key = alloca %struct.NDES_IMMENSE, align 4
  %ic = alloca i32, align 4
  %itmp = alloca %struct.NDES_IMMENSE, align 4
  %pg = alloca %struct.NDES_GREAT, align 4
  %.repack = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %inp, i32 0, i32 0
  %inp.coerce.elt = extractvalue [2 x i32] %inp.coerce, 0
  store i32 %inp.coerce.elt, i32* %.repack, align 4
  %0 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %inp, i32 0, i32 1
  %inp.coerce.elt4 = extractvalue [2 x i32] %inp.coerce, 1
  store i32 %inp.coerce.elt4, i32* %0, align 4
  %.repack5 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %key, i32 0, i32 0
  %key.coerce.elt = extractvalue [2 x i32] %key.coerce, 0
  store i32 %key.coerce.elt, i32* %.repack5, align 4
  %1 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %key, i32 0, i32 1
  %key.coerce.elt7 = extractvalue [2 x i32] %key.coerce, 1
  store i32 %key.coerce.elt7, i32* %1, align 4
  %2 = load i32, i32* @ndes_des.initflag, align 4, !dbg !158
  %tobool.not = icmp eq i32 %2, 0, !dbg !158
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !158

if.then:                                          ; preds = %entry
  store i32 0, i32* @ndes_des.initflag, align 4, !dbg !159
  store i32 1, i32* getelementptr inbounds ([33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 1), align 4, !dbg !160
  br label %for.cond, !dbg !161

for.cond:                                         ; preds = %for.inc, %if.then
  %j.0 = phi i32 [ 2, %if.then ], [ %inc, %for.inc ], !dbg !162
  %shifter.0 = phi i32 [ 1, %if.then ], [ %shl, %for.inc ], !dbg !162
  %exitcond.not = icmp eq i32 %j.0, 3, !dbg !163
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !164

for.body:                                         ; preds = %for.cond
  %shl = shl i32 %shifter.0, 1, !dbg !165
  %arrayidx = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %j.0, !dbg !166
  store i32 %shl, i32* %arrayidx, align 4, !dbg !167
  br label %for.inc, !dbg !166

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %j.0, 1, !dbg !168
  br label %for.cond, !dbg !164, !llvm.loop !169

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !171

if.end:                                           ; preds = %for.end, %entry
  %3 = load i32, i32* %newkey, align 4, !dbg !172
  %tobool1.not = icmp eq i32 %3, 0, !dbg !172
  br i1 %tobool1.not, label %if.end25, label %if.then2, !dbg !172

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %newkey, align 4, !dbg !173
  store i32 0, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !174
  store i32 0, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !175
  br label %for.cond3, !dbg !176

for.cond3:                                        ; preds = %for.inc13, %if.then2
  %j.1 = phi i32 [ 1, %if.then2 ], [ %dec, %for.inc13 ], !dbg !162
  %k.0 = phi i32 [ 10, %if.then2 ], [ %dec14, %for.inc13 ], !dbg !162
  %cmp4.not = icmp eq i32 %j.1, 0, !dbg !177
  br i1 %cmp4.not, label %for.end15, label %for.body5, !dbg !178

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !179
  %shl6 = shl i32 %4, 1, !dbg !180
  %arrayidx7 = getelementptr inbounds [57 x i8], [57 x i8]* @ndes_ipc1, i32 0, i32 %j.1, !dbg !181
  %5 = load i8, i8* %arrayidx7, align 1, !dbg !181
  %conv = zext i8 %5 to i32, !dbg !181
  %.elt28 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %key, i32 0, i32 0, !dbg !182
  %.unpack29 = load i32, i32* %.elt28, align 4, !dbg !182
  %6 = insertvalue [2 x i32] undef, i32 %.unpack29, 0, !dbg !182
  %7 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %key, i32 0, i32 1, !dbg !182
  %.unpack31 = load i32, i32* %7, align 4, !dbg !182
  %8 = insertvalue [2 x i32] %6, i32 %.unpack31, 1, !dbg !182
  %call = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %8, i32 noundef %conv, i32 noundef 32) #5, !dbg !182
  %or = or i32 %shl6, %call, !dbg !183
  store i32 %or, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !184
  %9 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !185
  %shl8 = shl i32 %9, 1, !dbg !186
  store i32 %shl8, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !187
  %arrayidx9 = getelementptr inbounds [57 x i8], [57 x i8]* @ndes_ipc1, i32 0, i32 %k.0, !dbg !188
  %10 = load i8, i8* %arrayidx9, align 1, !dbg !188
  %conv10 = zext i8 %10 to i32, !dbg !188
  %.elt32 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %key, i32 0, i32 0, !dbg !189
  %.unpack33 = load i32, i32* %.elt32, align 4, !dbg !189
  %11 = insertvalue [2 x i32] undef, i32 %.unpack33, 0, !dbg !189
  %12 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %key, i32 0, i32 1, !dbg !189
  %.unpack35 = load i32, i32* %12, align 4, !dbg !189
  %13 = insertvalue [2 x i32] %11, i32 %.unpack35, 1, !dbg !189
  %call11 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %13, i32 noundef %conv10, i32 noundef 32) #5, !dbg !189
  %or12 = or i32 %shl8, %call11, !dbg !190
  store i32 %or12, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !191
  br label %for.inc13, !dbg !192

for.inc13:                                        ; preds = %for.body5
  %dec = add nsw i32 %j.1, -1, !dbg !193
  %dec14 = add nsw i32 %k.0, -1, !dbg !194
  br label %for.cond3, !dbg !178, !llvm.loop !195

for.end15:                                        ; preds = %for.cond3
  br label %for.cond16, !dbg !196

for.cond16:                                       ; preds = %for.inc22, %for.end15
  %i.0 = phi i32 [ 16, %for.end15 ], [ %inc23, %for.inc22 ], !dbg !162
  %exitcond1.not = icmp eq i32 %i.0, 17, !dbg !197
  br i1 %exitcond1.not, label %for.end24, label %for.body19, !dbg !198

for.body19:                                       ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %i.0, !dbg !199
  %14 = bitcast %struct.NDES_GREAT* %pg to i8*, !dbg !199
  %15 = bitcast %struct.NDES_GREAT* %arrayidx20 to i8*, !dbg !199
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(12) %14, i8* noundef nonnull align 4 dereferenceable(12) %15, i32 12, i1 false), !dbg !199
  call arm_aapcs_vfpcc void @ndes_ks(i32 noundef %i.0, %struct.NDES_GREAT* noundef nonnull %pg) #5, !dbg !200
  %arrayidx21 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %i.0, !dbg !201
  %16 = bitcast %struct.NDES_GREAT* %arrayidx21 to i8*, !dbg !202
  %17 = bitcast %struct.NDES_GREAT* %pg to i8*, !dbg !202
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(12) %16, i8* noundef nonnull align 4 dereferenceable(12) %17, i32 12, i1 false), !dbg !202
  br label %for.inc22, !dbg !203

for.inc22:                                        ; preds = %for.body19
  %inc23 = add nuw nsw i32 %i.0, 1, !dbg !204
  br label %for.cond16, !dbg !198, !llvm.loop !205

for.end24:                                        ; preds = %for.cond16
  br label %if.end25, !dbg !206

if.end25:                                         ; preds = %for.end24, %if.end
  %l = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !207
  store i32 0, i32* %l, align 4, !dbg !208
  %r = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !209
  store i32 0, i32* %r, align 4, !dbg !210
  br label %for.cond26, !dbg !211

for.cond26:                                       ; preds = %for.inc48, %if.end25
  %j.2 = phi i32 [ 1, %if.end25 ], [ %dec49, %for.inc48 ], !dbg !162
  %k.1 = phi i32 [ 64, %if.end25 ], [ %dec50, %for.inc48 ], !dbg !162
  %cmp27.not = icmp eq i32 %j.2, 0, !dbg !212
  br i1 %cmp27.not, label %for.end51, label %for.body29, !dbg !213

for.body29:                                       ; preds = %for.cond26
  %r30 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !214
  %18 = load i32, i32* %r30, align 4, !dbg !214
  %shl31 = shl i32 %18, 1, !dbg !215
  %r32 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !216
  store i32 %shl31, i32* %r32, align 4, !dbg !217
  %arrayidx34 = getelementptr inbounds [65 x i8], [65 x i8]* @ndes_des.ip, i32 0, i32 %j.2, !dbg !218
  %19 = load volatile i8, i8* %arrayidx34, align 1, !dbg !218
  %conv35 = zext i8 %19 to i32, !dbg !218
  %.elt20 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %inp, i32 0, i32 0, !dbg !219
  %.unpack21 = load i32, i32* %.elt20, align 4, !dbg !219
  %20 = insertvalue [2 x i32] undef, i32 %.unpack21, 0, !dbg !219
  %21 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %inp, i32 0, i32 1, !dbg !219
  %.unpack23 = load i32, i32* %21, align 4, !dbg !219
  %22 = insertvalue [2 x i32] %20, i32 %.unpack23, 1, !dbg !219
  %call36 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %22, i32 noundef %conv35, i32 noundef 32) #5, !dbg !219
  %or37 = or i32 %shl31, %call36, !dbg !220
  %r38 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !221
  store i32 %or37, i32* %r38, align 4, !dbg !222
  %l39 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !223
  %23 = load i32, i32* %l39, align 4, !dbg !223
  %shl40 = shl i32 %23, 1, !dbg !224
  %l41 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !225
  store i32 %shl40, i32* %l41, align 4, !dbg !226
  %arrayidx43 = getelementptr inbounds [65 x i8], [65 x i8]* @ndes_des.ip, i32 0, i32 %k.1, !dbg !227
  %24 = load volatile i8, i8* %arrayidx43, align 1, !dbg !227
  %conv44 = zext i8 %24 to i32, !dbg !227
  %.elt24 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %inp, i32 0, i32 0, !dbg !228
  %.unpack25 = load i32, i32* %.elt24, align 4, !dbg !228
  %25 = insertvalue [2 x i32] undef, i32 %.unpack25, 0, !dbg !228
  %26 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %inp, i32 0, i32 1, !dbg !228
  %.unpack27 = load i32, i32* %26, align 4, !dbg !228
  %27 = insertvalue [2 x i32] %25, i32 %.unpack27, 1, !dbg !228
  %call45 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %27, i32 noundef %conv44, i32 noundef 32) #5, !dbg !228
  %or46 = or i32 %shl40, %call45, !dbg !229
  %l47 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !230
  store i32 %or46, i32* %l47, align 4, !dbg !231
  br label %for.inc48, !dbg !232

for.inc48:                                        ; preds = %for.body29
  %dec49 = add nsw i32 %j.2, -1, !dbg !233
  %dec50 = add nsw i32 %k.1, -1, !dbg !234
  br label %for.cond26, !dbg !213, !llvm.loop !235

for.end51:                                        ; preds = %for.cond26
  br label %for.cond52, !dbg !236

for.cond52:                                       ; preds = %for.inc64, %for.end51
  %i.1 = phi i32 [ 16, %for.end51 ], [ %inc65, %for.inc64 ], !dbg !162
  %exitcond2.not = icmp eq i32 %i.1, 17, !dbg !237
  br i1 %exitcond2.not, label %for.end66, label %for.body55, !dbg !238

for.body55:                                       ; preds = %for.cond52
  %cmp56 = icmp eq i32 %isw, 1, !dbg !239
  br i1 %cmp56, label %cond.true, label %cond.false, !dbg !240

cond.true:                                        ; preds = %for.body55
  %sub = sub nuw nsw i32 17, %i.1, !dbg !241
  br label %cond.end, !dbg !240

cond.false:                                       ; preds = %for.body55
  br label %cond.end, !dbg !240

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %i.1, %cond.false ], !dbg !240
  %l58 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !242
  %28 = load i32, i32* %l58, align 4, !dbg !242
  %.elt14 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %cond, i32 0, !dbg !243
  %.unpack15 = load i32, i32* %.elt14, align 4, !dbg !243
  %29 = insertvalue [3 x i32] undef, i32 %.unpack15, 0, !dbg !243
  %30 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %cond, i32 1, !dbg !243
  %.unpack17 = load i32, i32* %30, align 4, !dbg !243
  %31 = insertvalue [3 x i32] %29, i32 %.unpack17, 1, !dbg !243
  %32 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %cond, i32 2, !dbg !243
  %.unpack19 = load i32, i32* %32, align 4, !dbg !243
  %33 = insertvalue [3 x i32] %31, i32 %.unpack19, 2, !dbg !243
  call arm_aapcs_vfpcc void @ndes_cyfun(i32 noundef %28, [3 x i32] %33, i32* noundef nonnull %ic) #5, !dbg !243
  %r60 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !244
  %34 = load i32, i32* %r60, align 4, !dbg !244
  %35 = load i32, i32* %ic, align 4, !dbg !245
  %xor = xor i32 %35, %34, !dbg !245
  store i32 %xor, i32* %ic, align 4, !dbg !245
  %l61 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !246
  %36 = load i32, i32* %l61, align 4, !dbg !246
  %r62 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !247
  store i32 %36, i32* %r62, align 4, !dbg !248
  %l63 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !249
  store i32 %xor, i32* %l63, align 4, !dbg !250
  br label %for.inc64, !dbg !251

for.inc64:                                        ; preds = %cond.end
  %inc65 = add nuw nsw i32 %i.1, 1, !dbg !252
  br label %for.cond52, !dbg !238, !llvm.loop !253

for.end66:                                        ; preds = %for.cond52
  %r67 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !254
  %37 = load i32, i32* %r67, align 4, !dbg !254
  store i32 %37, i32* %ic, align 4, !dbg !255
  %l68 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !256
  %38 = load i32, i32* %l68, align 4, !dbg !256
  %r69 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !257
  store i32 %38, i32* %r69, align 4, !dbg !258
  %l70 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !259
  store i32 %37, i32* %l70, align 4, !dbg !260
  %l71 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %out, i32 0, i32 0, !dbg !261
  store i32 0, i32* %l71, align 4, !dbg !262
  %r72 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %out, i32 0, i32 1, !dbg !263
  store i32 0, i32* %r72, align 4, !dbg !264
  br label %for.cond73, !dbg !265

for.cond73:                                       ; preds = %for.inc95, %for.end66
  %j.3 = phi i32 [ 1, %for.end66 ], [ %dec96, %for.inc95 ], !dbg !162
  %k.2 = phi i32 [ 64, %for.end66 ], [ %dec97, %for.inc95 ], !dbg !162
  %cmp74.not = icmp eq i32 %j.3, 0, !dbg !266
  br i1 %cmp74.not, label %for.end98, label %for.body76, !dbg !267

for.body76:                                       ; preds = %for.cond73
  %r77 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %out, i32 0, i32 1, !dbg !268
  %39 = load i32, i32* %r77, align 4, !dbg !268
  %shl78 = shl i32 %39, 1, !dbg !269
  %r79 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %out, i32 0, i32 1, !dbg !270
  store i32 %shl78, i32* %r79, align 4, !dbg !271
  %arrayidx81 = getelementptr inbounds [65 x i8], [65 x i8]* @ndes_des.ipm, i32 0, i32 %j.3, !dbg !272
  %40 = load volatile i8, i8* %arrayidx81, align 1, !dbg !272
  %conv82 = zext i8 %40 to i32, !dbg !272
  %.elt = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !273
  %.unpack = load i32, i32* %.elt, align 4, !dbg !273
  %41 = insertvalue [2 x i32] undef, i32 %.unpack, 0, !dbg !273
  %42 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !273
  %.unpack9 = load i32, i32* %42, align 4, !dbg !273
  %43 = insertvalue [2 x i32] %41, i32 %.unpack9, 1, !dbg !273
  %call83 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %43, i32 noundef %conv82, i32 noundef 32) #5, !dbg !273
  %or84 = or i32 %shl78, %call83, !dbg !274
  %r85 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %out, i32 0, i32 1, !dbg !275
  store i32 %or84, i32* %r85, align 4, !dbg !276
  %l86 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %out, i32 0, i32 0, !dbg !277
  %44 = load i32, i32* %l86, align 4, !dbg !277
  %shl87 = shl i32 %44, 1, !dbg !278
  %l88 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %out, i32 0, i32 0, !dbg !279
  store i32 %shl87, i32* %l88, align 4, !dbg !280
  %arrayidx90 = getelementptr inbounds [65 x i8], [65 x i8]* @ndes_des.ipm, i32 0, i32 %k.2, !dbg !281
  %45 = load volatile i8, i8* %arrayidx90, align 1, !dbg !281
  %conv91 = zext i8 %45 to i32, !dbg !281
  %.elt10 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 0, !dbg !282
  %.unpack11 = load i32, i32* %.elt10, align 4, !dbg !282
  %46 = insertvalue [2 x i32] undef, i32 %.unpack11, 0, !dbg !282
  %47 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %itmp, i32 0, i32 1, !dbg !282
  %.unpack13 = load i32, i32* %47, align 4, !dbg !282
  %48 = insertvalue [2 x i32] %46, i32 %.unpack13, 1, !dbg !282
  %call92 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %48, i32 noundef %conv91, i32 noundef 32) #5, !dbg !282
  %or93 = or i32 %shl87, %call92, !dbg !283
  %l94 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %out, i32 0, i32 0, !dbg !284
  store i32 %or93, i32* %l94, align 4, !dbg !285
  br label %for.inc95, !dbg !286

for.inc95:                                        ; preds = %for.body76
  %dec96 = add nsw i32 %j.3, -1, !dbg !287
  %dec97 = add nsw i32 %k.2, -1, !dbg !288
  br label %for.cond73, !dbg !267, !llvm.loop !289

for.end98:                                        ; preds = %for.cond73
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %source.coerce, i32 noundef %bitno, i32 noundef %nbits) #0 !dbg !291 {
entry:
  %source = alloca %struct.NDES_IMMENSE, align 4
  %.repack = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %source, i32 0, i32 0
  %source.coerce.elt = extractvalue [2 x i32] %source.coerce, 0
  store i32 %source.coerce.elt, i32* %.repack, align 4
  %0 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %source, i32 0, i32 1
  %source.coerce.elt2 = extractvalue [2 x i32] %source.coerce, 1
  store i32 %source.coerce.elt2, i32* %0, align 4
  %cmp.not = icmp sgt i32 %bitno, %nbits, !dbg !292
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !293

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %bitno, !dbg !294
  %1 = load i32, i32* %arrayidx, align 4, !dbg !294
  %r = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %source, i32 0, i32 1, !dbg !295
  %2 = load i32, i32* %r, align 4, !dbg !295
  %and = and i32 %1, %2, !dbg !296
  br label %return, !dbg !297

if.else:                                          ; preds = %entry
  %sub = sub nsw i32 %bitno, %nbits, !dbg !298
  %arrayidx1 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %sub, !dbg !299
  %3 = load i32, i32* %arrayidx1, align 4, !dbg !299
  %l = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %source, i32 0, i32 0, !dbg !300
  %4 = load i32, i32* %l, align 4, !dbg !300
  %and2 = and i32 %3, %4, !dbg !301
  br label %return, !dbg !302

return:                                           ; preds = %if.else, %if.then
  %retval.0.in.in = phi i32 [ %and, %if.then ], [ %and2, %if.else ]
  %retval.0.in = icmp ne i32 %retval.0.in.in, 0, !dbg !303
  %retval.0 = zext i1 %retval.0.in to i32, !dbg !303
  ret i32 %retval.0, !dbg !304
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_ks(i32 noundef %n, %struct.NDES_GREAT* noundef %kn) #0 !dbg !305 {
entry:
  %cmp = icmp eq i32 %n, 1, !dbg !306
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !307

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp eq i32 %n, 2, !dbg !308
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !309

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %cmp3 = icmp eq i32 %n, 9, !dbg !310
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !311

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %cmp5 = icmp eq i32 %n, 16, !dbg !312
  br i1 %cmp5, label %if.then, label %if.else, !dbg !313

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %0 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !314
  %and = shl i32 %0, 28, !dbg !315
  %shl = and i32 %and, 268435456, !dbg !315
  %or = or i32 %0, %shl, !dbg !316
  %shr = lshr i32 %or, 1, !dbg !317
  store i32 %shr, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !318
  %1 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !319
  %and6 = shl i32 %1, 28, !dbg !320
  %shl7 = and i32 %and6, 268435456, !dbg !320
  %or8 = or i32 %1, %shl7, !dbg !321
  %shr9 = lshr i32 %or8, 1, !dbg !322
  store i32 %shr9, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !323
  br label %if.end, !dbg !324

if.else:                                          ; preds = %lor.lhs.false4
  br label %for.cond, !dbg !325

for.cond:                                         ; preds = %for.inc, %if.else
  %i.0 = phi i32 [ 1, %if.else ], [ %inc, %for.inc ], !dbg !326
  %exitcond.not = icmp eq i32 %i.0, 3, !dbg !327
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !328

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !329
  %and11 = shl i32 %2, 28, !dbg !330
  %shl12 = and i32 %and11, 268435456, !dbg !330
  %or13 = or i32 %2, %shl12, !dbg !331
  %shr14 = lshr i32 %or13, 1, !dbg !332
  store i32 %shr14, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !333
  %3 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !334
  %and15 = shl i32 %3, 28, !dbg !335
  %shl16 = and i32 %and15, 268435456, !dbg !335
  %or17 = or i32 %3, %shl16, !dbg !336
  %shr18 = lshr i32 %or17, 1, !dbg !337
  store i32 %shr18, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !338
  br label %for.inc, !dbg !339

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !340
  br label %for.cond, !dbg !328, !llvm.loop !341

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %l19 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 0, !dbg !342
  store i32 0, i32* %l19, align 4, !dbg !343
  %c = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 1, !dbg !344
  store i32 0, i32* %c, align 4, !dbg !345
  %r = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 2, !dbg !346
  store i32 0, i32* %r, align 4, !dbg !347
  br label %for.cond20, !dbg !348

for.cond20:                                       ; preds = %for.inc53, %if.end
  %j.0 = phi i32 [ 16, %if.end ], [ %dec, %for.inc53 ], !dbg !326
  %k.0 = phi i32 [ 32, %if.end ], [ %dec54, %for.inc53 ], !dbg !326
  %l.0 = phi i32 [ 48, %if.end ], [ %dec55, %for.inc53 ], !dbg !326
  %cmp21.not = icmp eq i32 %j.0, 0, !dbg !349
  br i1 %cmp21.not, label %for.end56, label %for.body22, !dbg !350

for.body22:                                       ; preds = %for.cond20
  %r23 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 2, !dbg !351
  %4 = load i32, i32* %r23, align 4, !dbg !351
  %shl24 = shl i32 %4, 1, !dbg !352
  %r25 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 2, !dbg !353
  store i32 %shl24, i32* %r25, align 4, !dbg !354
  %arrayidx = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_ipc2, i32 0, i32 %j.0, !dbg !355
  %5 = load i8, i8* %arrayidx, align 1, !dbg !355
  %conv = zext i8 %5 to i32, !dbg !355
  %.unpack = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !356
  %6 = insertvalue [2 x i32] undef, i32 %.unpack, 0, !dbg !356
  %.unpack1 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !356
  %7 = insertvalue [2 x i32] %6, i32 %.unpack1, 1, !dbg !356
  %call = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %7, i32 noundef %conv, i32 noundef 28) #5, !dbg !356
  %conv28 = and i32 %call, 65535, !dbg !357
  %or29 = or i32 %shl24, %conv28, !dbg !358
  %r30 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 2, !dbg !359
  store i32 %or29, i32* %r30, align 4, !dbg !360
  %c31 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 1, !dbg !361
  %8 = load i32, i32* %c31, align 4, !dbg !361
  %shl32 = shl i32 %8, 1, !dbg !362
  %c33 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 1, !dbg !363
  store i32 %shl32, i32* %c33, align 4, !dbg !364
  %arrayidx35 = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_ipc2, i32 0, i32 %k.0, !dbg !365
  %9 = load i8, i8* %arrayidx35, align 1, !dbg !365
  %conv36 = zext i8 %9 to i32, !dbg !365
  %.unpack2 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !366
  %10 = insertvalue [2 x i32] undef, i32 %.unpack2, 0, !dbg !366
  %.unpack3 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !366
  %11 = insertvalue [2 x i32] %10, i32 %.unpack3, 1, !dbg !366
  %call37 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %11, i32 noundef %conv36, i32 noundef 28) #5, !dbg !366
  %conv39 = and i32 %call37, 65535, !dbg !367
  %or40 = or i32 %shl32, %conv39, !dbg !368
  %c41 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 1, !dbg !369
  store i32 %or40, i32* %c41, align 4, !dbg !370
  %l42 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 0, !dbg !371
  %12 = load i32, i32* %l42, align 4, !dbg !371
  %shl43 = shl i32 %12, 1, !dbg !372
  %l44 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 0, !dbg !373
  store i32 %shl43, i32* %l44, align 4, !dbg !374
  %arrayidx46 = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_ipc2, i32 0, i32 %l.0, !dbg !375
  %13 = load i8, i8* %arrayidx46, align 1, !dbg !375
  %conv47 = zext i8 %13 to i32, !dbg !375
  %.unpack4 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !376
  %14 = insertvalue [2 x i32] undef, i32 %.unpack4, 0, !dbg !376
  %.unpack5 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !376
  %15 = insertvalue [2 x i32] %14, i32 %.unpack5, 1, !dbg !376
  %call48 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %15, i32 noundef %conv47, i32 noundef 28) #5, !dbg !376
  %conv50 = and i32 %call48, 65535, !dbg !377
  %or51 = or i32 %shl43, %conv50, !dbg !378
  %l52 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 0, !dbg !379
  store i32 %or51, i32* %l52, align 4, !dbg !380
  br label %for.inc53, !dbg !381

for.inc53:                                        ; preds = %for.body22
  %dec = add nsw i32 %j.0, -1, !dbg !382
  %dec54 = add nsw i32 %k.0, -1, !dbg !383
  %dec55 = add nsw i32 %l.0, -1, !dbg !384
  br label %for.cond20, !dbg !350, !llvm.loop !385

for.end56:                                        ; preds = %for.cond20
  ret void, !dbg !386
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_cyfun(i32 noundef %ir, [3 x i32] %k.coerce, i32* noundef %iout) #0 !dbg !387 {
entry:
  %k = alloca %struct.NDES_GREAT, align 4
  %ibin = alloca [16 x i8], align 1
  %ie = alloca %struct.NDES_GREAT, align 4
  %iec = alloca [9 x i8], align 1
  %j = alloca i32, align 4
  %jj = alloca i32, align 4
  %.repack = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 0
  %k.coerce.elt = extractvalue [3 x i32] %k.coerce, 0
  store i32 %k.coerce.elt, i32* %.repack, align 4
  %0 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 1
  %k.coerce.elt2 = extractvalue [3 x i32] %k.coerce, 1
  store i32 %k.coerce.elt2, i32* %0, align 4
  %1 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 2
  %k.coerce.elt4 = extractvalue [3 x i32] %k.coerce, 2
  store i32 %k.coerce.elt4, i32* %1, align 4
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %ibin, i32 0, i32 0, !dbg !388
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %2, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.ndes_cyfun.ibin, i32 0, i32 0), i32 16, i1 true), !dbg !388
  %l1 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !389
  store i32 0, i32* %l1, align 4, !dbg !390
  %c = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !391
  store i32 0, i32* %c, align 4, !dbg !392
  %r = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !393
  store i32 0, i32* %r, align 4, !dbg !394
  store volatile i32 16, i32* %j, align 4, !dbg !395
  br label %for.cond, !dbg !396

for.cond:                                         ; preds = %for.inc, %entry
  %l.0 = phi i32 [ 32, %entry ], [ %dec23, %for.inc ], !dbg !397
  %m.0 = phi i32 [ 48, %entry ], [ %dec24, %for.inc ], !dbg !397
  %3 = load volatile i32, i32* %j, align 4, !dbg !398
  %cmp = icmp sgt i32 %3, 0, !dbg !399
  br i1 %cmp, label %for.body, label %for.end, !dbg !400

for.body:                                         ; preds = %for.cond
  %r2 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !401
  %4 = load i32, i32* %r2, align 4, !dbg !401
  %shl = shl i32 %4, 1, !dbg !402
  %5 = load volatile i32, i32* %j, align 4, !dbg !403
  %arrayidx = getelementptr inbounds [49 x i32], [49 x i32]* @ndes_cyfun.iet, i32 0, i32 %5, !dbg !404
  %6 = load volatile i32, i32* %arrayidx, align 4, !dbg !404
  %arrayidx3 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %6, !dbg !405
  %7 = load i32, i32* %arrayidx3, align 4, !dbg !405
  %and = and i32 %7, %ir, !dbg !406
  %tobool.not = icmp ne i32 %and, 0, !dbg !405
  %cond = zext i1 %tobool.not to i32, !dbg !405
  %or = or i32 %shl, %cond, !dbg !407
  %r4 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !408
  store i32 %or, i32* %r4, align 4, !dbg !409
  %c5 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !410
  %8 = load i32, i32* %c5, align 4, !dbg !410
  %shl6 = shl i32 %8, 1, !dbg !411
  %arrayidx7 = getelementptr inbounds [49 x i32], [49 x i32]* @ndes_cyfun.iet, i32 0, i32 %l.0, !dbg !412
  %9 = load volatile i32, i32* %arrayidx7, align 4, !dbg !412
  %arrayidx8 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %9, !dbg !413
  %10 = load i32, i32* %arrayidx8, align 4, !dbg !413
  %and9 = and i32 %10, %ir, !dbg !414
  %tobool10.not = icmp ne i32 %and9, 0, !dbg !413
  %cond11 = zext i1 %tobool10.not to i32, !dbg !413
  %or12 = or i32 %shl6, %cond11, !dbg !415
  %c13 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !416
  store i32 %or12, i32* %c13, align 4, !dbg !417
  %l14 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !418
  %11 = load i32, i32* %l14, align 4, !dbg !418
  %shl15 = shl i32 %11, 1, !dbg !419
  %arrayidx16 = getelementptr inbounds [49 x i32], [49 x i32]* @ndes_cyfun.iet, i32 0, i32 %m.0, !dbg !420
  %12 = load volatile i32, i32* %arrayidx16, align 4, !dbg !420
  %arrayidx17 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %12, !dbg !421
  %13 = load i32, i32* %arrayidx17, align 4, !dbg !421
  %and18 = and i32 %13, %ir, !dbg !422
  %tobool19.not = icmp ne i32 %and18, 0, !dbg !421
  %cond20 = zext i1 %tobool19.not to i32, !dbg !421
  %or21 = or i32 %shl15, %cond20, !dbg !423
  %l22 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !424
  store i32 %or21, i32* %l22, align 4, !dbg !425
  br label %for.inc, !dbg !426

for.inc:                                          ; preds = %for.body
  %14 = load volatile i32, i32* %j, align 4, !dbg !427
  %dec = add nsw i32 %14, -1, !dbg !427
  store volatile i32 %dec, i32* %j, align 4, !dbg !427
  %dec23 = add nsw i32 %l.0, -1, !dbg !428
  %dec24 = add nsw i32 %m.0, -1, !dbg !429
  br label %for.cond, !dbg !400, !llvm.loop !430

for.end:                                          ; preds = %for.cond
  %r25 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 2, !dbg !431
  %15 = load i32, i32* %r25, align 4, !dbg !431
  %r26 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !432
  %16 = load i32, i32* %r26, align 4, !dbg !433
  %xor = xor i32 %16, %15, !dbg !433
  store i32 %xor, i32* %r26, align 4, !dbg !433
  %c27 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 1, !dbg !434
  %17 = load i32, i32* %c27, align 4, !dbg !434
  %c28 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !435
  %18 = load i32, i32* %c28, align 4, !dbg !436
  %xor29 = xor i32 %18, %17, !dbg !436
  store i32 %xor29, i32* %c28, align 4, !dbg !436
  %l30 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 0, !dbg !437
  %19 = load i32, i32* %l30, align 4, !dbg !437
  %l31 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !438
  %20 = load i32, i32* %l31, align 4, !dbg !439
  %xor32 = xor i32 %20, %19, !dbg !439
  store i32 %xor32, i32* %l31, align 4, !dbg !439
  %c33 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !440
  %21 = load i32, i32* %c33, align 4, !dbg !440
  %shl34 = shl i32 %21, 16, !dbg !441
  %r35 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !442
  %22 = load i32, i32* %r35, align 4, !dbg !442
  %add = add i32 %shl34, %22, !dbg !443
  %l36 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !444
  %23 = load i32, i32* %l36, align 4, !dbg !444
  %shl37 = shl i32 %23, 8, !dbg !445
  %c38 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !446
  %24 = load i32, i32* %c38, align 4, !dbg !446
  %shr = lshr i32 %24, 8, !dbg !447
  %add39 = add i32 %shl37, %shr, !dbg !448
  store volatile i32 1, i32* %j, align 4, !dbg !449
  br label %for.cond40, !dbg !450

for.cond40:                                       ; preds = %for.inc50, %for.end
  %ietmp2.0 = phi i32 [ %add39, %for.end ], [ %shr49, %for.inc50 ], !dbg !397
  %ietmp1.0 = phi i32 [ %add, %for.end ], [ %shr48, %for.inc50 ], !dbg !397
  %m.1 = phi i32 [ 5, %for.end ], [ %inc51, %for.inc50 ], !dbg !397
  %25 = load volatile i32, i32* %j, align 4, !dbg !451
  %cmp41 = icmp slt i32 %25, 5, !dbg !452
  br i1 %cmp41, label %for.body42, label %for.end52, !dbg !453

for.body42:                                       ; preds = %for.cond40
  %26 = trunc i32 %ietmp1.0 to i8, !dbg !454
  %conv = and i8 %26, 63, !dbg !454
  %27 = load volatile i32, i32* %j, align 4, !dbg !455
  %arrayidx44 = getelementptr inbounds [9 x i8], [9 x i8]* %iec, i32 0, i32 %27, !dbg !456
  store i8 %conv, i8* %arrayidx44, align 1, !dbg !457
  %28 = trunc i32 %ietmp2.0 to i8, !dbg !458
  %conv46 = and i8 %28, 63, !dbg !458
  %arrayidx47 = getelementptr inbounds [9 x i8], [9 x i8]* %iec, i32 0, i32 %m.1, !dbg !459
  store i8 %conv46, i8* %arrayidx47, align 1, !dbg !460
  br label %for.inc50, !dbg !461

for.inc50:                                        ; preds = %for.body42
  %shr49 = lshr i32 %ietmp2.0, 6, !dbg !462
  %shr48 = lshr i32 %ietmp1.0, 6, !dbg !463
  %29 = load volatile i32, i32* %j, align 4, !dbg !464
  %inc = add nsw i32 %29, 1, !dbg !464
  store volatile i32 %inc, i32* %j, align 4, !dbg !464
  %inc51 = add nuw nsw i32 %m.1, 1, !dbg !465
  br label %for.cond40, !dbg !453, !llvm.loop !466

for.end52:                                        ; preds = %for.cond40
  store volatile i32 8, i32* %jj, align 4, !dbg !467
  br label %for.cond53, !dbg !468

for.cond53:                                       ; preds = %for.inc81, %for.end52
  %itmp.0 = phi i32 [ 0, %for.end52 ], [ %or80, %for.inc81 ], !dbg !397
  %30 = load volatile i32, i32* %jj, align 4, !dbg !469
  %cmp54 = icmp sgt i32 %30, 0, !dbg !470
  br i1 %cmp54, label %for.body56, label %for.end83, !dbg !471

for.body56:                                       ; preds = %for.cond53
  %31 = load volatile i32, i32* %jj, align 4, !dbg !472
  %arrayidx57 = getelementptr inbounds [9 x i8], [9 x i8]* %iec, i32 0, i32 %31, !dbg !473
  %32 = load i8, i8* %arrayidx57, align 1, !dbg !473
  %conv58 = zext i8 %32 to i32, !dbg !473
  store volatile i32 %conv58, i32* %j, align 4, !dbg !474
  %33 = load volatile i32, i32* %j, align 4, !dbg !475
  %and59 = shl i32 %33, 1, !dbg !476
  %shl60 = and i32 %and59, 2, !dbg !476
  %34 = load volatile i32, i32* %j, align 4, !dbg !477
  %and61 = lshr i32 %34, 5, !dbg !478
  %35 = and i32 %and61, 1, !dbg !478
  %add63 = or i32 %shl60, %35, !dbg !479
  %36 = load volatile i32, i32* %j, align 4, !dbg !480
  %and64 = shl i32 %36, 2, !dbg !481
  %shl65 = and i32 %and64, 8, !dbg !481
  %37 = load volatile i32, i32* %j, align 4, !dbg !482
  %and66 = and i32 %37, 4, !dbg !483
  %add67 = or i32 %shl65, %and66, !dbg !484
  %38 = load volatile i32, i32* %j, align 4, !dbg !485
  %and68 = lshr i32 %38, 2, !dbg !486
  %39 = and i32 %and68, 2, !dbg !486
  %add70 = or i32 %add67, %39, !dbg !487
  %40 = load volatile i32, i32* %j, align 4, !dbg !488
  %and71 = lshr i32 %40, 4, !dbg !489
  %41 = and i32 %and71, 1, !dbg !489
  %add73 = or i32 %add70, %41, !dbg !490
  %42 = load volatile i32, i32* %jj, align 4, !dbg !491
  %arrayidx76 = getelementptr inbounds [16 x [4 x [9 x i32]]], [16 x [4 x [9 x i32]]]* @ndes_cyfun.is, i32 0, i32 %add73, i32 %add63, i32 %42, !dbg !492
  %43 = load volatile i32, i32* %arrayidx76, align 4, !dbg !492
  %arrayidx78 = getelementptr inbounds [16 x i8], [16 x i8]* %ibin, i32 0, i32 %43, !dbg !493
  %44 = load volatile i8, i8* %arrayidx78, align 1, !dbg !493
  br label %for.inc81, !dbg !494

for.inc81:                                        ; preds = %for.body56
  %shl77 = shl i32 %itmp.0, 4, !dbg !495
  %conv79 = zext i8 %44 to i32, !dbg !493
  %or80 = or i32 %shl77, %conv79, !dbg !496
  %45 = load volatile i32, i32* %jj, align 4, !dbg !497
  %dec82 = add nsw i32 %45, -1, !dbg !497
  store volatile i32 %dec82, i32* %jj, align 4, !dbg !497
  br label %for.cond53, !dbg !471, !llvm.loop !498

for.end83:                                        ; preds = %for.cond53
  store i32 0, i32* %iout, align 4, !dbg !499
  store volatile i32 32, i32* %j, align 4, !dbg !500
  br label %for.cond84, !dbg !501

for.cond84:                                       ; preds = %for.inc89, %for.end83
  %46 = load volatile i32, i32* %j, align 4, !dbg !502
  %cmp85 = icmp sgt i32 %46, 0, !dbg !503
  br i1 %cmp85, label %for.body87, label %for.end91, !dbg !504

for.body87:                                       ; preds = %for.cond84
  %47 = load i32, i32* %iout, align 4, !dbg !505
  %shl88 = shl i32 %47, 1, !dbg !506
  store i32 %shl88, i32* %iout, align 4, !dbg !507
  br label %for.inc89, !dbg !508

for.inc89:                                        ; preds = %for.body87
  %48 = load volatile i32, i32* %j, align 4, !dbg !509
  %dec90 = add nsw i32 %48, -1, !dbg !509
  store volatile i32 %dec90, i32* %j, align 4, !dbg !509
  br label %for.cond84, !dbg !504, !llvm.loop !510

for.end91:                                        ; preds = %for.cond84
  %49 = load volatile i32, i32* %j, align 4, !dbg !512
  %arrayidx92 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_cyfun.ipp, i32 0, i32 %49, !dbg !513
  %50 = load volatile i32, i32* %arrayidx92, align 4, !dbg !513
  %arrayidx93 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %50, !dbg !514
  %51 = load i32, i32* %arrayidx93, align 4, !dbg !514
  %and94 = and i32 %51, %itmp.0, !dbg !515
  %tobool95.not = icmp ne i32 %and94, 0, !dbg !514
  %cond96 = zext i1 %tobool95.not to i32, !dbg !514
  %52 = load i32, i32* %iout, align 4, !dbg !516
  %or97 = or i32 %52, %cond96, !dbg !516
  store i32 %or97, i32* %iout, align 4, !dbg !516
  ret void, !dbg !517
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @ndes_return() #0 !dbg !518 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 1), align 4, !dbg !519
  %1 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_icd, i32 0, i32 0), align 4, !dbg !520
  %add = add i32 %0, %1, !dbg !521
  %cmp = icmp ne i32 %add, 8390656, !dbg !522
  %conv = zext i1 %cmp to i32, !dbg !522
  ret i32 %conv, !dbg !523
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_main() #0 !dbg !524 {
entry:
  %0 = load i32, i32* @ndes_isw, align 4, !dbg !525
  %.unpack = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_inp, i32 0, i32 0), align 4, !dbg !526
  %1 = insertvalue [2 x i32] undef, i32 %.unpack, 0, !dbg !526
  %.unpack1 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_inp, i32 0, i32 1), align 4, !dbg !526
  %2 = insertvalue [2 x i32] %1, i32 %.unpack1, 1, !dbg !526
  %.unpack2 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_key, i32 0, i32 0), align 4, !dbg !526
  %3 = insertvalue [2 x i32] undef, i32 %.unpack2, 0, !dbg !526
  %.unpack3 = load i32, i32* getelementptr inbounds (%struct.NDES_IMMENSE, %struct.NDES_IMMENSE* @ndes_key, i32 0, i32 1), align 4, !dbg !526
  %4 = insertvalue [2 x i32] %3, i32 %.unpack3, 1, !dbg !526
  call arm_aapcs_vfpcc void @ndes_des([2 x i32] %2, [2 x i32] %4, i32* noundef nonnull @ndes_newkey, i32 noundef %0, %struct.NDES_IMMENSE* noundef nonnull @ndes_out) #5, !dbg !526
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !528 {
entry:
  call arm_aapcs_vfpcc void @ndes_init() #5, !dbg !529
  call arm_aapcs_vfpcc void @ndes_main() #5, !dbg !530
  %call = call arm_aapcs_vfpcc i32 @ndes_return() #5, !dbg !531
  ret i32 %call, !dbg !532
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #2 !dbg !533 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !534
  br i1 %cmp, label %if.then, label %if.end, !dbg !535

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #6, !dbg !536
  unreachable, !dbg !536

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !537
  ret i64 %0, !dbg !538
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #3 !dbg !539 {
entry:
  unreachable, !dbg !540
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #2 !dbg !541 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !542
  br i1 %cmp, label %if.then, label %if.end, !dbg !543

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #6, !dbg !544
  unreachable, !dbg !544

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !545
  ret i32 %0, !dbg !546
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !547 {
entry:
  %add = add i64 %a, %b, !dbg !548
  %cmp = icmp sgt i64 %b, -1, !dbg !549
  br i1 %cmp, label %if.then, label %if.else, !dbg !550

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !551
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !552

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #6, !dbg !553
  unreachable, !dbg !553

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !554

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !555
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !556

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #6, !dbg !557
  unreachable, !dbg !557

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !558
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !559 {
entry:
  %add = add i32 %a, %b, !dbg !560
  %cmp = icmp sgt i32 %b, -1, !dbg !561
  br i1 %cmp, label %if.then, label %if.else, !dbg !562

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !563
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !564

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #6, !dbg !565
  unreachable, !dbg !565

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !566

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !567
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !568

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #6, !dbg !569
  unreachable, !dbg !569

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !570
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #2 !dbg !571 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !572
  store i64 %a, i64* %all, align 8, !dbg !573
  %and = and i32 %b, 32, !dbg !574
  %tobool.not = icmp eq i32 %and, 0, !dbg !574
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !575

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !576
  store i32 0, i32* %low, align 8, !dbg !577
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !578
  %0 = load i32, i32* %low2, align 8, !dbg !578
  %sub = add nsw i32 %b, -32, !dbg !579
  %shl = shl i32 %0, %sub, !dbg !580
  %s3 = bitcast %union.dwords* %result to %struct.NDES_IMMENSE*, !dbg !581
  %high = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s3, i32 0, i32 1, !dbg !582
  store i32 %shl, i32* %high, align 4, !dbg !583
  br label %if.end18, !dbg !584

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !585
  br i1 %cmp, label %if.then4, label %if.end, !dbg !586

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !587

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !588
  %1 = load i32, i32* %low6, align 8, !dbg !588
  %shl7 = shl i32 %1, %b, !dbg !589
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !590
  store i32 %shl7, i32* %low9, align 8, !dbg !591
  %s10 = bitcast %union.dwords* %input to %struct.NDES_IMMENSE*, !dbg !592
  %high11 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s10, i32 0, i32 1, !dbg !593
  %2 = load i32, i32* %high11, align 4, !dbg !593
  %shl12 = shl i32 %2, %b, !dbg !594
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !595
  %3 = load i32, i32* %low14, align 8, !dbg !595
  %sub15 = sub nsw i32 32, %b, !dbg !596
  %shr = lshr i32 %3, %sub15, !dbg !597
  %or = or i32 %shl12, %shr, !dbg !598
  %s16 = bitcast %union.dwords* %result to %struct.NDES_IMMENSE*, !dbg !599
  %high17 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s16, i32 0, i32 1, !dbg !600
  store i32 %or, i32* %high17, align 4, !dbg !601
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !602
  %4 = load i64, i64* %all19, align 8, !dbg !602
  br label %return, !dbg !603

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !604
  ret i64 %retval.0, !dbg !605
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !606 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !607
  store i64 %a, i64* %all, align 8, !dbg !608
  %and = and i32 %b, 32, !dbg !609
  %tobool.not = icmp eq i32 %and, 0, !dbg !609
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !610

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.NDES_IMMENSE*, !dbg !611
  %high = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s, i32 0, i32 1, !dbg !612
  %0 = load i32, i32* %high, align 4, !dbg !612
  %shr = ashr i32 %0, 31, !dbg !613
  %s1 = bitcast %union.dwords* %result to %struct.NDES_IMMENSE*, !dbg !614
  %high2 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s1, i32 0, i32 1, !dbg !615
  store i32 %shr, i32* %high2, align 4, !dbg !616
  %s3 = bitcast %union.dwords* %input to %struct.NDES_IMMENSE*, !dbg !617
  %high4 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s3, i32 0, i32 1, !dbg !618
  %1 = load i32, i32* %high4, align 4, !dbg !618
  %sub = add nsw i32 %b, -32, !dbg !619
  %shr5 = ashr i32 %1, %sub, !dbg !620
  %low = bitcast %union.dwords* %result to i32*, !dbg !621
  store i32 %shr5, i32* %low, align 8, !dbg !622
  br label %if.end21, !dbg !623

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !624
  br i1 %cmp, label %if.then7, label %if.end, !dbg !625

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !626

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.NDES_IMMENSE*, !dbg !627
  %high9 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s8, i32 0, i32 1, !dbg !628
  %2 = load i32, i32* %high9, align 4, !dbg !628
  %shr10 = ashr i32 %2, %b, !dbg !629
  %s11 = bitcast %union.dwords* %result to %struct.NDES_IMMENSE*, !dbg !630
  %high12 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s11, i32 0, i32 1, !dbg !631
  store i32 %shr10, i32* %high12, align 4, !dbg !632
  %s13 = bitcast %union.dwords* %input to %struct.NDES_IMMENSE*, !dbg !633
  %high14 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s13, i32 0, i32 1, !dbg !634
  %3 = load i32, i32* %high14, align 4, !dbg !634
  %sub15 = sub nsw i32 32, %b, !dbg !635
  %shl = shl i32 %3, %sub15, !dbg !636
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !637
  %4 = load i32, i32* %low17, align 8, !dbg !637
  %shr18 = lshr i32 %4, %b, !dbg !638
  %or = or i32 %shl, %shr18, !dbg !639
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !640
  store i32 %or, i32* %low20, align 8, !dbg !641
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !642
  %5 = load i64, i64* %all22, align 8, !dbg !642
  br label %return, !dbg !643

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !644
  ret i64 %retval.0, !dbg !645
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #2 !dbg !646 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !647
  store i64 %a, i64* %all, align 8, !dbg !648
  %s = bitcast %union.dwords* %x to %struct.NDES_IMMENSE*, !dbg !649
  %high = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s, i32 0, i32 1, !dbg !650
  %0 = load i32, i32* %high, align 4, !dbg !650
  %cmp = icmp eq i32 %0, 0, !dbg !651
  %s1 = bitcast %union.dwords* %x to %struct.NDES_IMMENSE*, !dbg !652
  %high2 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s1, i32 0, i32 1, !dbg !653
  %1 = load i32, i32* %high2, align 4, !dbg !653
  %low = bitcast %union.dwords* %x to i32*, !dbg !654
  %2 = load i32, i32* %low, align 8, !dbg !654
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !655
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !656, !range !657
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !658
  %add = add nuw nsw i32 %4, %and5, !dbg !659
  ret i32 %add, !dbg !660
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #2 !dbg !661 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !662
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !663
  %sub = sub nuw nsw i32 16, %shl, !dbg !664
  %shr = lshr i32 %a, %sub, !dbg !665
  %and1 = and i32 %shr, 65280, !dbg !666
  %cmp2 = icmp eq i32 %and1, 0, !dbg !667
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !668
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !669
  %shr6 = lshr i32 %shr, %sub5, !dbg !670
  %add = or i32 %shl, %shl4, !dbg !671
  %and7 = and i32 %shr6, 240, !dbg !672
  %cmp8 = icmp eq i32 %and7, 0, !dbg !673
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !674
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !675
  %shr12 = lshr i32 %shr6, %sub11, !dbg !676
  %add13 = or i32 %add, %shl10, !dbg !677
  %and14 = and i32 %shr12, 12, !dbg !678
  %cmp15 = icmp eq i32 %and14, 0, !dbg !679
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !680
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !681
  %shr19 = lshr i32 %shr12, %sub18, !dbg !682
  %add20 = or i32 %add13, %shl17, !dbg !683
  %sub21 = sub i32 2, %shr19, !dbg !684
  %and22 = lshr i32 %shr19, 1, !dbg !685
  %0 = or i32 %and22, -2, !dbg !685
  %.neg = add nsw i32 %0, 1, !dbg !685
  %and26 = and i32 %sub21, %.neg, !dbg !686
  %add27 = add i32 %add20, %and26, !dbg !687
  ret i32 %add27, !dbg !688
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !689 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !690
  store i64 %a, i64* %all, align 8, !dbg !691
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !692
  store i64 %b, i64* %all1, align 8, !dbg !693
  %s = bitcast %union.dwords* %x to %struct.NDES_IMMENSE*, !dbg !694
  %high = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s, i32 0, i32 1, !dbg !695
  %0 = load i32, i32* %high, align 4, !dbg !695
  %s2 = bitcast %union.dwords* %y to %struct.NDES_IMMENSE*, !dbg !696
  %high3 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s2, i32 0, i32 1, !dbg !697
  %1 = load i32, i32* %high3, align 4, !dbg !697
  %cmp = icmp slt i32 %0, %1, !dbg !698
  br i1 %cmp, label %if.then, label %if.end, !dbg !699

if.then:                                          ; preds = %entry
  br label %return, !dbg !700

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.NDES_IMMENSE*, !dbg !701
  %high5 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s4, i32 0, i32 1, !dbg !702
  %2 = load i32, i32* %high5, align 4, !dbg !702
  %s6 = bitcast %union.dwords* %y to %struct.NDES_IMMENSE*, !dbg !703
  %high7 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s6, i32 0, i32 1, !dbg !704
  %3 = load i32, i32* %high7, align 4, !dbg !704
  %cmp8 = icmp sgt i32 %2, %3, !dbg !705
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !706

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !707

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !708
  %4 = load i32, i32* %low, align 8, !dbg !708
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !709
  %5 = load i32, i32* %low13, align 8, !dbg !709
  %cmp14 = icmp ult i32 %4, %5, !dbg !710
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !711

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !712

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !713
  %6 = load i32, i32* %low18, align 8, !dbg !713
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !714
  %7 = load i32, i32* %low20, align 8, !dbg !714
  %cmp21 = icmp ugt i32 %6, %7, !dbg !715
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !716

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !717

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !718

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !719
  ret i32 %retval.0, !dbg !720
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !721 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #5, !dbg !722
  %sub = add nsw i32 %call, -1, !dbg !723
  ret i32 %sub, !dbg !724
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #2 !dbg !725 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !726
  store i64 %a, i64* %all, align 8, !dbg !727
  %low = bitcast %union.dwords* %x to i32*, !dbg !728
  %0 = load i32, i32* %low, align 8, !dbg !728
  %cmp = icmp eq i32 %0, 0, !dbg !729
  %s1 = bitcast %union.dwords* %x to %struct.NDES_IMMENSE*, !dbg !730
  %high = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s1, i32 0, i32 1, !dbg !731
  %1 = load i32, i32* %high, align 4, !dbg !731
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !732
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !733, !range !657
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !734
  %add = add nuw nsw i32 %3, %and5, !dbg !735
  ret i32 %add, !dbg !736
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #2 !dbg !737 {
entry:
  %and = and i32 %a, 65535, !dbg !738
  %cmp = icmp eq i32 %and, 0, !dbg !739
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !740
  %shr = lshr i32 %a, %shl, !dbg !741
  %and1 = and i32 %shr, 255, !dbg !742
  %cmp2 = icmp eq i32 %and1, 0, !dbg !743
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !744
  %shr5 = lshr i32 %shr, %shl4, !dbg !745
  %add = or i32 %shl, %shl4, !dbg !746
  %and6 = and i32 %shr5, 15, !dbg !747
  %cmp7 = icmp eq i32 %and6, 0, !dbg !748
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !749
  %shr10 = lshr i32 %shr5, %shl9, !dbg !750
  %add11 = or i32 %add, %shl9, !dbg !751
  %and12 = and i32 %shr10, 3, !dbg !752
  %cmp13 = icmp eq i32 %and12, 0, !dbg !753
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !754
  %shr16 = lshr i32 %shr10, %shl15, !dbg !755
  %add18 = or i32 %add11, %shl15, !dbg !756
  %and17 = lshr i32 %shr16, 1, !dbg !757
  %shr19 = and i32 %and17, 1, !dbg !757
  %sub = sub nuw nsw i32 2, %shr19, !dbg !758
  %0 = or i32 %shr16, -2, !dbg !759
  %.neg = add nsw i32 %0, 1, !dbg !759
  %and24 = and i32 %sub, %.neg, !dbg !760
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !761
  ret i32 %add25, !dbg !762
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !763 {
entry:
  %shr = ashr i64 %a, 63, !dbg !764
  %shr1 = ashr i64 %b, 63, !dbg !765
  %xor = xor i64 %shr, %a, !dbg !766
  %sub = sub nsw i64 %xor, %shr, !dbg !767
  %xor2 = xor i64 %shr1, %b, !dbg !768
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !769
  %xor4 = xor i64 %shr, %shr1, !dbg !770
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #5, !dbg !771
  %xor5 = xor i64 %call, %xor4, !dbg !772
  %sub6 = sub i64 %xor5, %xor4, !dbg !773
  ret i64 %sub6, !dbg !774
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !775 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !776
  store i64 %a, i64* %all, align 8, !dbg !777
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !778
  store i64 %b, i64* %all1, align 8, !dbg !779
  %s = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !780
  %high = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s, i32 0, i32 1, !dbg !781
  %0 = load i32, i32* %high, align 4, !dbg !781
  %cmp = icmp eq i32 %0, 0, !dbg !782
  br i1 %cmp, label %if.then, label %if.end23, !dbg !783

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.NDES_IMMENSE*, !dbg !784
  %high3 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s2, i32 0, i32 1, !dbg !785
  %1 = load i32, i32* %high3, align 4, !dbg !785
  %cmp4 = icmp eq i32 %1, 0, !dbg !786
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !787

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !788
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !788

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !789
  %2 = load i32, i32* %low, align 8, !dbg !789
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !790
  %3 = load i32, i32* %low9, align 8, !dbg !790
  %rem10 = urem i32 %2, %3, !dbg !791
  %conv = zext i32 %rem10 to i64, !dbg !792
  store i64 %conv, i64* %rem, align 8, !dbg !793
  br label %if.end, !dbg !794

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !795
  %4 = load i32, i32* %low12, align 8, !dbg !795
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !796
  %5 = load i32, i32* %low14, align 8, !dbg !796
  %div = udiv i32 %4, %5, !dbg !797
  %conv15 = zext i32 %div to i64, !dbg !798
  br label %return, !dbg !799

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !800
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !800

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !801
  %6 = load i32, i32* %low20, align 8, !dbg !801
  %conv21 = zext i32 %6 to i64, !dbg !802
  store i64 %conv21, i64* %rem, align 8, !dbg !803
  br label %if.end22, !dbg !804

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !805

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !806
  %7 = load i32, i32* %low25, align 8, !dbg !806
  %cmp26 = icmp eq i32 %7, 0, !dbg !807
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !808

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.NDES_IMMENSE*, !dbg !809
  %high30 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s29, i32 0, i32 1, !dbg !810
  %8 = load i32, i32* %high30, align 4, !dbg !810
  %cmp31 = icmp eq i32 %8, 0, !dbg !811
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !812

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !813
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !813

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !814
  %high37 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s36, i32 0, i32 1, !dbg !815
  %9 = load i32, i32* %high37, align 4, !dbg !815
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !816
  %10 = load i32, i32* %low39, align 8, !dbg !816
  %rem40 = urem i32 %9, %10, !dbg !817
  %conv41 = zext i32 %rem40 to i64, !dbg !818
  store i64 %conv41, i64* %rem, align 8, !dbg !819
  br label %if.end42, !dbg !820

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !821
  %high44 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s43, i32 0, i32 1, !dbg !822
  %11 = load i32, i32* %high44, align 4, !dbg !822
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !823
  %12 = load i32, i32* %low46, align 8, !dbg !823
  %div47 = udiv i32 %11, %12, !dbg !824
  %conv48 = zext i32 %div47 to i64, !dbg !825
  br label %return, !dbg !826

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !827
  %13 = load i32, i32* %low51, align 8, !dbg !827
  %cmp52 = icmp eq i32 %13, 0, !dbg !828
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !829

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !830
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !830

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !831
  %high58 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s57, i32 0, i32 1, !dbg !832
  %14 = load i32, i32* %high58, align 4, !dbg !832
  %s59 = bitcast %union.dwords* %d to %struct.NDES_IMMENSE*, !dbg !833
  %high60 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s59, i32 0, i32 1, !dbg !834
  %15 = load i32, i32* %high60, align 4, !dbg !834
  %rem61 = urem i32 %14, %15, !dbg !835
  %s62 = bitcast %union.dwords* %r to %struct.NDES_IMMENSE*, !dbg !836
  %high63 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s62, i32 0, i32 1, !dbg !837
  store i32 %rem61, i32* %high63, align 4, !dbg !838
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !839
  store i32 0, i32* %low65, align 8, !dbg !840
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !841
  %16 = load i64, i64* %all66, align 8, !dbg !841
  store i64 %16, i64* %rem, align 8, !dbg !842
  br label %if.end67, !dbg !843

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !844
  %high69 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s68, i32 0, i32 1, !dbg !845
  %17 = load i32, i32* %high69, align 4, !dbg !845
  %s70 = bitcast %union.dwords* %d to %struct.NDES_IMMENSE*, !dbg !846
  %high71 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s70, i32 0, i32 1, !dbg !847
  %18 = load i32, i32* %high71, align 4, !dbg !847
  %div72 = udiv i32 %17, %18, !dbg !848
  %conv73 = zext i32 %div72 to i64, !dbg !849
  br label %return, !dbg !850

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.NDES_IMMENSE*, !dbg !851
  %high76 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s75, i32 0, i32 1, !dbg !852
  %19 = load i32, i32* %high76, align 4, !dbg !852
  %s77 = bitcast %union.dwords* %d to %struct.NDES_IMMENSE*, !dbg !853
  %high78 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s77, i32 0, i32 1, !dbg !854
  %20 = load i32, i32* %high78, align 4, !dbg !854
  %sub = add i32 %20, -1, !dbg !855
  %and = and i32 %19, %sub, !dbg !856
  %cmp79 = icmp eq i32 %and, 0, !dbg !857
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !858

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !859
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !859

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !860
  %21 = load i32, i32* %low85, align 8, !dbg !860
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !861
  store i32 %21, i32* %low87, align 8, !dbg !862
  %s88 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !863
  %high89 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s88, i32 0, i32 1, !dbg !864
  %22 = load i32, i32* %high89, align 4, !dbg !864
  %s90 = bitcast %union.dwords* %d to %struct.NDES_IMMENSE*, !dbg !865
  %high91 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s90, i32 0, i32 1, !dbg !866
  %23 = load i32, i32* %high91, align 4, !dbg !866
  %sub92 = add i32 %23, -1, !dbg !867
  %and93 = and i32 %22, %sub92, !dbg !868
  %s94 = bitcast %union.dwords* %r to %struct.NDES_IMMENSE*, !dbg !869
  %high95 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s94, i32 0, i32 1, !dbg !870
  store i32 %and93, i32* %high95, align 4, !dbg !871
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !872
  %24 = load i64, i64* %all96, align 8, !dbg !872
  store i64 %24, i64* %rem, align 8, !dbg !873
  br label %if.end97, !dbg !874

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !875
  %high99 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s98, i32 0, i32 1, !dbg !876
  %25 = load i32, i32* %high99, align 4, !dbg !876
  %s100 = bitcast %union.dwords* %d to %struct.NDES_IMMENSE*, !dbg !877
  %high101 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s100, i32 0, i32 1, !dbg !878
  %26 = load i32, i32* %high101, align 4, !dbg !878
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !879, !range !657
  %shr = lshr i32 %25, %27, !dbg !880
  %conv102 = zext i32 %shr to i64, !dbg !881
  br label %return, !dbg !882

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.NDES_IMMENSE*, !dbg !883
  %high105 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s104, i32 0, i32 1, !dbg !884
  %28 = load i32, i32* %high105, align 4, !dbg !884
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !885, !range !657
  %s106 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !886
  %high107 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s106, i32 0, i32 1, !dbg !887
  %30 = load i32, i32* %high107, align 4, !dbg !887
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !888, !range !657
  %sub108 = sub nsw i32 %29, %31, !dbg !889
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !890
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !891

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !892
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !892

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !893
  %32 = load i64, i64* %all114, align 8, !dbg !893
  store i64 %32, i64* %rem, align 8, !dbg !894
  br label %if.end115, !dbg !895

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !896

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !897
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !898
  store i32 0, i32* %low118, align 8, !dbg !899
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !900
  %33 = load i32, i32* %low120, align 8, !dbg !900
  %sub121 = sub nsw i32 31, %sub108, !dbg !901
  %shl = shl i32 %33, %sub121, !dbg !902
  %s122 = bitcast %union.dwords* %q to %struct.NDES_IMMENSE*, !dbg !903
  %high123 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s122, i32 0, i32 1, !dbg !904
  store i32 %shl, i32* %high123, align 4, !dbg !905
  %s124 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !906
  %high125 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s124, i32 0, i32 1, !dbg !907
  %34 = load i32, i32* %high125, align 4, !dbg !907
  %shr126 = lshr i32 %34, %inc, !dbg !908
  %s127 = bitcast %union.dwords* %r to %struct.NDES_IMMENSE*, !dbg !909
  %high128 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s127, i32 0, i32 1, !dbg !910
  store i32 %shr126, i32* %high128, align 4, !dbg !911
  %s129 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !912
  %high130 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s129, i32 0, i32 1, !dbg !913
  %35 = load i32, i32* %high130, align 4, !dbg !913
  %sub131 = sub nsw i32 31, %sub108, !dbg !914
  %shl132 = shl i32 %35, %sub131, !dbg !915
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !916
  %36 = load i32, i32* %low134, align 8, !dbg !916
  %shr135 = lshr i32 %36, %inc, !dbg !917
  %or = or i32 %shl132, %shr135, !dbg !918
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !919
  store i32 %or, i32* %low137, align 8, !dbg !920
  br label %if.end317, !dbg !921

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.NDES_IMMENSE*, !dbg !922
  %high139 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s138, i32 0, i32 1, !dbg !923
  %37 = load i32, i32* %high139, align 4, !dbg !923
  %cmp140 = icmp eq i32 %37, 0, !dbg !924
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !925

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !926
  %38 = load i32, i32* %low144, align 8, !dbg !926
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !927, !range !657
  %cmp149 = icmp ult i32 %39, 2, !dbg !927
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !928

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !929
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !929

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !930
  %40 = load i32, i32* %low155, align 8, !dbg !930
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !931
  %41 = load i32, i32* %low157, align 8, !dbg !931
  %sub158 = add i32 %41, -1, !dbg !932
  %and159 = and i32 %40, %sub158, !dbg !933
  %conv160 = zext i32 %and159 to i64, !dbg !934
  store i64 %conv160, i64* %rem, align 8, !dbg !935
  br label %if.end161, !dbg !936

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !937
  %42 = load i32, i32* %low163, align 8, !dbg !937
  %cmp164 = icmp eq i32 %42, 1, !dbg !938
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !939

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !940
  %43 = load i64, i64* %all167, align 8, !dbg !940
  br label %return, !dbg !941

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !942
  %44 = load i32, i32* %low170, align 8, !dbg !942
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !943, !range !657
  %s171 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !944
  %high172 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s171, i32 0, i32 1, !dbg !945
  %46 = load i32, i32* %high172, align 4, !dbg !945
  %shr173 = lshr i32 %46, %45, !dbg !946
  %s174 = bitcast %union.dwords* %q to %struct.NDES_IMMENSE*, !dbg !947
  %high175 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s174, i32 0, i32 1, !dbg !948
  store i32 %shr173, i32* %high175, align 4, !dbg !949
  %s176 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !950
  %high177 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s176, i32 0, i32 1, !dbg !951
  %47 = load i32, i32* %high177, align 4, !dbg !951
  %sub178 = sub nuw nsw i32 32, %45, !dbg !952
  %shl179 = shl i32 %47, %sub178, !dbg !953
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !954
  %48 = load i32, i32* %low181, align 8, !dbg !954
  %shr182 = lshr i32 %48, %45, !dbg !955
  %or183 = or i32 %shl179, %shr182, !dbg !956
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !957
  store i32 %or183, i32* %low185, align 8, !dbg !958
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !959
  %49 = load i64, i64* %all186, align 8, !dbg !959
  br label %return, !dbg !960

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !961
  %50 = load i32, i32* %low189, align 8, !dbg !961
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !962, !range !657
  %add = add nuw nsw i32 %51, 33, !dbg !963
  %s190 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !964
  %high191 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s190, i32 0, i32 1, !dbg !965
  %52 = load i32, i32* %high191, align 4, !dbg !965
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !966, !range !657
  %sub192 = sub nsw i32 %add, %53, !dbg !967
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !968
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !969

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !970
  store i32 0, i32* %low197, align 8, !dbg !971
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !972
  %54 = load i32, i32* %low199, align 8, !dbg !972
  %s200 = bitcast %union.dwords* %q to %struct.NDES_IMMENSE*, !dbg !973
  %high201 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s200, i32 0, i32 1, !dbg !974
  store i32 %54, i32* %high201, align 4, !dbg !975
  %s202 = bitcast %union.dwords* %r to %struct.NDES_IMMENSE*, !dbg !976
  %high203 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s202, i32 0, i32 1, !dbg !977
  store i32 0, i32* %high203, align 4, !dbg !978
  %s204 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !979
  %high205 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s204, i32 0, i32 1, !dbg !980
  %55 = load i32, i32* %high205, align 4, !dbg !980
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !981
  store i32 %55, i32* %low207, align 8, !dbg !982
  br label %if.end262, !dbg !983

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !984
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !985

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !986
  store i32 0, i32* %low213, align 8, !dbg !987
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !988
  %56 = load i32, i32* %low215, align 8, !dbg !988
  %sub216 = sub nsw i32 32, %sub192, !dbg !989
  %shl217 = shl i32 %56, %sub216, !dbg !990
  %s218 = bitcast %union.dwords* %q to %struct.NDES_IMMENSE*, !dbg !991
  %high219 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s218, i32 0, i32 1, !dbg !992
  store i32 %shl217, i32* %high219, align 4, !dbg !993
  %s220 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !994
  %high221 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s220, i32 0, i32 1, !dbg !995
  %57 = load i32, i32* %high221, align 4, !dbg !995
  %shr222 = lshr i32 %57, %sub192, !dbg !996
  %s223 = bitcast %union.dwords* %r to %struct.NDES_IMMENSE*, !dbg !997
  %high224 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s223, i32 0, i32 1, !dbg !998
  store i32 %shr222, i32* %high224, align 4, !dbg !999
  %s225 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !1000
  %high226 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s225, i32 0, i32 1, !dbg !1001
  %58 = load i32, i32* %high226, align 4, !dbg !1001
  %sub227 = sub nsw i32 32, %sub192, !dbg !1002
  %shl228 = shl i32 %58, %sub227, !dbg !1003
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !1004
  %59 = load i32, i32* %low230, align 8, !dbg !1004
  %shr231 = lshr i32 %59, %sub192, !dbg !1005
  %or232 = or i32 %shl228, %shr231, !dbg !1006
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !1007
  store i32 %or232, i32* %low234, align 8, !dbg !1008
  br label %if.end261, !dbg !1009

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !1010
  %60 = load i32, i32* %low237, align 8, !dbg !1010
  %sub238 = sub nsw i32 64, %sub192, !dbg !1011
  %shl239 = shl i32 %60, %sub238, !dbg !1012
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !1013
  store i32 %shl239, i32* %low241, align 8, !dbg !1014
  %s242 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !1015
  %high243 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s242, i32 0, i32 1, !dbg !1016
  %61 = load i32, i32* %high243, align 4, !dbg !1016
  %sub244 = sub nsw i32 64, %sub192, !dbg !1017
  %shl245 = shl i32 %61, %sub244, !dbg !1018
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !1019
  %62 = load i32, i32* %low247, align 8, !dbg !1019
  %sub248 = add nsw i32 %sub192, -32, !dbg !1020
  %shr249 = lshr i32 %62, %sub248, !dbg !1021
  %or250 = or i32 %shl245, %shr249, !dbg !1022
  %s251 = bitcast %union.dwords* %q to %struct.NDES_IMMENSE*, !dbg !1023
  %high252 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s251, i32 0, i32 1, !dbg !1024
  store i32 %or250, i32* %high252, align 4, !dbg !1025
  %s253 = bitcast %union.dwords* %r to %struct.NDES_IMMENSE*, !dbg !1026
  %high254 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s253, i32 0, i32 1, !dbg !1027
  store i32 0, i32* %high254, align 4, !dbg !1028
  %s255 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !1029
  %high256 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s255, i32 0, i32 1, !dbg !1030
  %63 = load i32, i32* %high256, align 4, !dbg !1030
  %sub257 = add nsw i32 %sub192, -32, !dbg !1031
  %shr258 = lshr i32 %63, %sub257, !dbg !1032
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !1033
  store i32 %shr258, i32* %low260, align 8, !dbg !1034
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !1035

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.NDES_IMMENSE*, !dbg !1036
  %high265 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s264, i32 0, i32 1, !dbg !1037
  %64 = load i32, i32* %high265, align 4, !dbg !1037
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !1038, !range !657
  %s266 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !1039
  %high267 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s266, i32 0, i32 1, !dbg !1040
  %66 = load i32, i32* %high267, align 4, !dbg !1040
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !1041, !range !657
  %sub268 = sub nsw i32 %65, %67, !dbg !1042
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !1043
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !1044

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !1045
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !1045

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1046
  %68 = load i64, i64* %all274, align 8, !dbg !1046
  store i64 %68, i64* %rem, align 8, !dbg !1047
  br label %if.end275, !dbg !1048

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !1049

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !1050
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !1051
  store i32 0, i32* %low279, align 8, !dbg !1052
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !1053
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !1054

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !1055
  %69 = load i32, i32* %low284, align 8, !dbg !1055
  %s285 = bitcast %union.dwords* %q to %struct.NDES_IMMENSE*, !dbg !1056
  %high286 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s285, i32 0, i32 1, !dbg !1057
  store i32 %69, i32* %high286, align 4, !dbg !1058
  %s287 = bitcast %union.dwords* %r to %struct.NDES_IMMENSE*, !dbg !1059
  %high288 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s287, i32 0, i32 1, !dbg !1060
  store i32 0, i32* %high288, align 4, !dbg !1061
  %s289 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !1062
  %high290 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s289, i32 0, i32 1, !dbg !1063
  %70 = load i32, i32* %high290, align 4, !dbg !1063
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !1064
  store i32 %70, i32* %low292, align 8, !dbg !1065
  br label %if.end315, !dbg !1066

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !1067
  %71 = load i32, i32* %low295, align 8, !dbg !1067
  %sub296 = sub nsw i32 31, %sub268, !dbg !1068
  %shl297 = shl i32 %71, %sub296, !dbg !1069
  %s298 = bitcast %union.dwords* %q to %struct.NDES_IMMENSE*, !dbg !1070
  %high299 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s298, i32 0, i32 1, !dbg !1071
  store i32 %shl297, i32* %high299, align 4, !dbg !1072
  %s300 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !1073
  %high301 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s300, i32 0, i32 1, !dbg !1074
  %72 = load i32, i32* %high301, align 4, !dbg !1074
  %shr302 = lshr i32 %72, %inc277, !dbg !1075
  %s303 = bitcast %union.dwords* %r to %struct.NDES_IMMENSE*, !dbg !1076
  %high304 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s303, i32 0, i32 1, !dbg !1077
  store i32 %shr302, i32* %high304, align 4, !dbg !1078
  %s305 = bitcast %union.dwords* %n to %struct.NDES_IMMENSE*, !dbg !1079
  %high306 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s305, i32 0, i32 1, !dbg !1080
  %73 = load i32, i32* %high306, align 4, !dbg !1080
  %sub307 = sub nsw i32 31, %sub268, !dbg !1081
  %shl308 = shl i32 %73, %sub307, !dbg !1082
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !1083
  %74 = load i32, i32* %low310, align 8, !dbg !1083
  %shr311 = lshr i32 %74, %inc277, !dbg !1084
  %or312 = or i32 %shl308, %shr311, !dbg !1085
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !1086
  store i32 %or312, i32* %low314, align 8, !dbg !1087
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !1088
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !1088
  br label %for.cond, !dbg !1089

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !1088
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !1088
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !1090
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !1089

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.NDES_IMMENSE*, !dbg !1091
  %high321 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s320, i32 0, i32 1, !dbg !1092
  %75 = load i32, i32* %high321, align 4, !dbg !1092
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !1093
  %76 = load i32, i32* %low324, align 8, !dbg !1093
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !1094
  %s327 = bitcast %union.dwords* %r to %struct.NDES_IMMENSE*, !dbg !1095
  %high328 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s327, i32 0, i32 1, !dbg !1096
  store i32 %or326, i32* %high328, align 4, !dbg !1097
  %s332 = bitcast %union.dwords* %q to %struct.NDES_IMMENSE*, !dbg !1098
  %high333 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s332, i32 0, i32 1, !dbg !1099
  %77 = load i32, i32* %high333, align 4, !dbg !1099
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !1100
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !1101
  store i32 %or335, i32* %low337, align 8, !dbg !1102
  %s338 = bitcast %union.dwords* %q to %struct.NDES_IMMENSE*, !dbg !1103
  %high339 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s338, i32 0, i32 1, !dbg !1104
  %78 = load i32, i32* %high339, align 4, !dbg !1104
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !1105
  %79 = load i32, i32* %low342, align 8, !dbg !1105
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !1106
  %s345 = bitcast %union.dwords* %q to %struct.NDES_IMMENSE*, !dbg !1107
  %high346 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s345, i32 0, i32 1, !dbg !1108
  store i32 %or344, i32* %high346, align 4, !dbg !1109
  %shl349 = shl i32 %79, 1, !dbg !1110
  %or350 = or i32 %shl349, %carry.0, !dbg !1111
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !1112
  store i32 %or350, i32* %low352, align 8, !dbg !1113
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1114
  %80 = load i64, i64* %all354, align 8, !dbg !1114
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1115
  %81 = load i64, i64* %all355, align 8, !dbg !1115
  %82 = xor i64 %81, -1, !dbg !1116
  %sub357 = add i64 %80, %82, !dbg !1116
  %isneg = icmp slt i64 %sub357, 0, !dbg !1117
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !1117
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1118
  %sub364 = sub i64 %81, %and362, !dbg !1119
  store i64 %sub364, i64* %all363, align 8, !dbg !1119
  br label %for.inc, !dbg !1120

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !1121
  %conv360 = trunc i64 %and359 to i32, !dbg !1122
  %dec = add i32 %sr.2, -1, !dbg !1123
  br label %for.cond, !dbg !1089, !llvm.loop !1124

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1125
  %83 = load i64, i64* %all365, align 8, !dbg !1125
  %shl366 = shl i64 %83, 1, !dbg !1126
  %conv367 = zext i32 %carry.0 to i64, !dbg !1127
  %or368 = or i64 %shl366, %conv367, !dbg !1128
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1129
  store i64 %or368, i64* %all369, align 8, !dbg !1130
  %tobool370.not = icmp eq i64* %rem, null, !dbg !1131
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !1131

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1132
  %84 = load i64, i64* %all372, align 8, !dbg !1132
  store i64 %84, i64* %rem, align 8, !dbg !1133
  br label %if.end373, !dbg !1134

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1135
  %85 = load i64, i64* %all374, align 8, !dbg !1135
  br label %return, !dbg !1136

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !1088
  ret i64 %retval.0, !dbg !1137
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !1138 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #5, !dbg !1139
  %mul = mul nsw i64 %call, %b, !dbg !1140
  %sub = sub nsw i64 %a, %mul, !dbg !1141
  store i64 %sub, i64* %rem, align 8, !dbg !1142
  ret i64 %call, !dbg !1143
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !1144 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !1145
  %mul = mul nsw i32 %call, %b, !dbg !1146
  %sub = sub nsw i32 %a, %mul, !dbg !1147
  store i32 %sub, i32* %rem, align 4, !dbg !1148
  ret i32 %call, !dbg !1149
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1150 {
entry:
  %shr = ashr i32 %a, 31, !dbg !1151
  %shr1 = ashr i32 %b, 31, !dbg !1152
  %xor = xor i32 %shr, %a, !dbg !1153
  %sub = sub nsw i32 %xor, %shr, !dbg !1154
  %xor2 = xor i32 %shr1, %b, !dbg !1155
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !1156
  %xor4 = xor i32 %shr, %shr1, !dbg !1157
  %div = udiv i32 %sub, %sub3, !dbg !1158
  %xor5 = xor i32 %div, %xor4, !dbg !1159
  %sub6 = sub i32 %xor5, %xor4, !dbg !1160
  ret i32 %sub6, !dbg !1161
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #2 !dbg !1162 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1163
  store i64 %a, i64* %all, align 8, !dbg !1164
  %low = bitcast %union.dwords* %x to i32*, !dbg !1165
  %0 = load i32, i32* %low, align 8, !dbg !1165
  %cmp = icmp eq i32 %0, 0, !dbg !1166
  br i1 %cmp, label %if.then, label %if.end6, !dbg !1167

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.NDES_IMMENSE*, !dbg !1168
  %high = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s1, i32 0, i32 1, !dbg !1169
  %1 = load i32, i32* %high, align 4, !dbg !1169
  %cmp2 = icmp eq i32 %1, 0, !dbg !1170
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1171

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !1172

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.NDES_IMMENSE*, !dbg !1173
  %high5 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s4, i32 0, i32 1, !dbg !1174
  %2 = load i32, i32* %high5, align 4, !dbg !1174
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !1175, !range !657
  %add = add nuw nsw i32 %3, 33, !dbg !1176
  br label %return, !dbg !1177

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !1178
  %4 = load i32, i32* %low8, align 8, !dbg !1178
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !1179, !range !657
  %add9 = add nuw nsw i32 %5, 1, !dbg !1180
  br label %return, !dbg !1181

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !1182
  ret i32 %retval.0, !dbg !1183
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #2 !dbg !1184 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !1185
  br i1 %cmp, label %if.then, label %if.end, !dbg !1186

if.then:                                          ; preds = %entry
  br label %return, !dbg !1187

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !1188, !range !657
  %add = add nuw nsw i32 %0, 1, !dbg !1189
  br label %return, !dbg !1190

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !1191
  ret i32 %retval.0, !dbg !1192
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !1193 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1194
  store i64 %a, i64* %all, align 8, !dbg !1195
  %and = and i32 %b, 32, !dbg !1196
  %tobool.not = icmp eq i32 %and, 0, !dbg !1196
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1197

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.NDES_IMMENSE*, !dbg !1198
  %high = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s, i32 0, i32 1, !dbg !1199
  store i32 0, i32* %high, align 4, !dbg !1200
  %s1 = bitcast %union.dwords* %input to %struct.NDES_IMMENSE*, !dbg !1201
  %high2 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s1, i32 0, i32 1, !dbg !1202
  %0 = load i32, i32* %high2, align 4, !dbg !1202
  %sub = add nsw i32 %b, -32, !dbg !1203
  %shr = lshr i32 %0, %sub, !dbg !1204
  %low = bitcast %union.dwords* %result to i32*, !dbg !1205
  store i32 %shr, i32* %low, align 8, !dbg !1206
  br label %if.end18, !dbg !1207

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1208
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1209

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !1210

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.NDES_IMMENSE*, !dbg !1211
  %high6 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s5, i32 0, i32 1, !dbg !1212
  %1 = load i32, i32* %high6, align 4, !dbg !1212
  %shr7 = lshr i32 %1, %b, !dbg !1213
  %s8 = bitcast %union.dwords* %result to %struct.NDES_IMMENSE*, !dbg !1214
  %high9 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s8, i32 0, i32 1, !dbg !1215
  store i32 %shr7, i32* %high9, align 4, !dbg !1216
  %s10 = bitcast %union.dwords* %input to %struct.NDES_IMMENSE*, !dbg !1217
  %high11 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s10, i32 0, i32 1, !dbg !1218
  %2 = load i32, i32* %high11, align 4, !dbg !1218
  %sub12 = sub nsw i32 32, %b, !dbg !1219
  %shl = shl i32 %2, %sub12, !dbg !1220
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !1221
  %3 = load i32, i32* %low14, align 8, !dbg !1221
  %shr15 = lshr i32 %3, %b, !dbg !1222
  %or = or i32 %shl, %shr15, !dbg !1223
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !1224
  store i32 %or, i32* %low17, align 8, !dbg !1225
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1226
  %4 = load i64, i64* %all19, align 8, !dbg !1226
  br label %return, !dbg !1227

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !1228
  ret i64 %retval.0, !dbg !1229
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1230 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !1231
  %shr1 = ashr i64 %a, 63, !dbg !1232
  %xor2 = xor i64 %shr1, %a, !dbg !1233
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !1234
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #5, !dbg !1235
  %1 = load i64, i64* %r, align 8, !dbg !1236
  %xor4 = xor i64 %1, %shr1, !dbg !1237
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !1238
  ret i64 %sub5, !dbg !1239
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1240 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !1241
  %mul = mul nsw i32 %call, %b, !dbg !1242
  %sub = sub nsw i32 %a, %mul, !dbg !1243
  ret i32 %sub, !dbg !1244
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1245 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !1246
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1247

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !1248
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1249

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !1250
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1251

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1252

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !1253
  unreachable, !dbg !1253

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !1254
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1255

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !1256
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1257

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !1258
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1259

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1260

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !1261
  unreachable, !dbg !1261

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !1262
  %xor = xor i64 %shr, %a, !dbg !1263
  %sub = sub nsw i64 %xor, %shr, !dbg !1264
  %shr14 = ashr i64 %b, 63, !dbg !1265
  %xor15 = xor i64 %shr14, %b, !dbg !1266
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !1267
  %cmp17 = icmp slt i64 %sub, 2, !dbg !1268
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1269

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !1270
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1271

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1272

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !1273
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1274

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !1275
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !1276
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1277

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !1278
  unreachable, !dbg !1278

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1279

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !1280
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !1281
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !1282
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1283

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !1284
  unreachable, !dbg !1284

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1285

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !1286
  ret i64 %retval.0, !dbg !1287
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1288 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !1289
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1290

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !1291
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1292

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !1293
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1294

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1295

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !1296
  unreachable, !dbg !1296

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !1297
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1298

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !1299
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1300

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !1301
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1302

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1303

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !1304
  unreachable, !dbg !1304

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !1305
  %xor = xor i32 %shr, %a, !dbg !1306
  %sub = sub nsw i32 %xor, %shr, !dbg !1307
  %shr14 = ashr i32 %b, 31, !dbg !1308
  %xor15 = xor i32 %shr14, %b, !dbg !1309
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !1310
  %cmp17 = icmp slt i32 %sub, 2, !dbg !1311
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1312

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !1313
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1314

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1315

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !1316
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1317

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !1318
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !1319
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1320

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !1321
  unreachable, !dbg !1321

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1322

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !1323
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !1324
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !1325
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1326

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !1327
  unreachable, !dbg !1327

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1328

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !1329
  ret i32 %retval.0, !dbg !1330
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #2 !dbg !1331 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1332
  store i64 %a, i64* %all, align 8, !dbg !1333
  %s = bitcast %union.dwords* %x to %struct.NDES_IMMENSE*, !dbg !1334
  %high = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s, i32 0, i32 1, !dbg !1335
  %0 = load i32, i32* %high, align 4, !dbg !1335
  %low = bitcast %union.dwords* %x to i32*, !dbg !1336
  %1 = load i32, i32* %low, align 8, !dbg !1336
  %xor = xor i32 %0, %1, !dbg !1337
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #5, !dbg !1338
  ret i32 %call, !dbg !1339
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #2 !dbg !1340 {
entry:
  %shr = lshr i32 %a, 16, !dbg !1341
  %xor = xor i32 %shr, %a, !dbg !1342
  %shr1 = lshr i32 %xor, 8, !dbg !1343
  %xor2 = xor i32 %xor, %shr1, !dbg !1344
  %shr3 = lshr i32 %xor2, 4, !dbg !1345
  %xor4 = xor i32 %xor2, %shr3, !dbg !1346
  %and = and i32 %xor4, 15, !dbg !1347
  %shr5 = lshr i32 27030, %and, !dbg !1348
  %and6 = and i32 %shr5, 1, !dbg !1349
  ret i32 %and6, !dbg !1350
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #2 !dbg !1351 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1352
  %and = and i64 %shr, 6148914691236517205, !dbg !1353
  %sub = sub i64 %a, %and, !dbg !1354
  %shr1 = lshr i64 %sub, 2, !dbg !1355
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1356
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1357
  %add = add nuw nsw i64 %and2, %and3, !dbg !1358
  %shr4 = lshr i64 %add, 4, !dbg !1359
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1360
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1361
  %shr7 = lshr i64 %and6, 32, !dbg !1362
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1363
  %conv = trunc i64 %add8 to i32, !dbg !1364
  %shr9 = lshr i32 %conv, 16, !dbg !1365
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1366
  %shr11 = lshr i32 %add10, 8, !dbg !1367
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1368
  %and13 = and i32 %add12, 127, !dbg !1369
  ret i32 %and13, !dbg !1370
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #2 !dbg !1371 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1372
  %and = and i32 %shr, 1431655765, !dbg !1373
  %sub = sub i32 %a, %and, !dbg !1374
  %shr1 = lshr i32 %sub, 2, !dbg !1375
  %and2 = and i32 %shr1, 858993459, !dbg !1376
  %and3 = and i32 %sub, 858993459, !dbg !1377
  %add = add nuw nsw i32 %and2, %and3, !dbg !1378
  %shr4 = lshr i32 %add, 4, !dbg !1379
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1380
  %and6 = and i32 %add5, 252645135, !dbg !1381
  %shr7 = lshr i32 %and6, 16, !dbg !1382
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1383
  %shr9 = lshr i32 %add8, 8, !dbg !1384
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1385
  %and11 = and i32 %add10, 63, !dbg !1386
  ret i32 %and11, !dbg !1387
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1388 {
entry:
  %sub = sub i64 %a, %b, !dbg !1389
  %cmp = icmp sgt i64 %b, -1, !dbg !1390
  br i1 %cmp, label %if.then, label %if.else, !dbg !1391

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1392
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1393

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #6, !dbg !1394
  unreachable, !dbg !1394

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1395

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1396
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1397

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #6, !dbg !1398
  unreachable, !dbg !1398

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1399
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1400 {
entry:
  %sub = sub i32 %a, %b, !dbg !1401
  %cmp = icmp sgt i32 %b, -1, !dbg !1402
  br i1 %cmp, label %if.then, label %if.else, !dbg !1403

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1404
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1405

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #6, !dbg !1406
  unreachable, !dbg !1406

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1407

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1408
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1409

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #6, !dbg !1410
  unreachable, !dbg !1410

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1411
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !1412 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1413
  store i64 %a, i64* %all, align 8, !dbg !1414
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1415
  store i64 %b, i64* %all1, align 8, !dbg !1416
  %s = bitcast %union.dwords* %x to %struct.NDES_IMMENSE*, !dbg !1417
  %high = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s, i32 0, i32 1, !dbg !1418
  %0 = load i32, i32* %high, align 4, !dbg !1418
  %s2 = bitcast %union.dwords* %y to %struct.NDES_IMMENSE*, !dbg !1419
  %high3 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s2, i32 0, i32 1, !dbg !1420
  %1 = load i32, i32* %high3, align 4, !dbg !1420
  %cmp = icmp ult i32 %0, %1, !dbg !1421
  br i1 %cmp, label %if.then, label %if.end, !dbg !1422

if.then:                                          ; preds = %entry
  br label %return, !dbg !1423

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.NDES_IMMENSE*, !dbg !1424
  %high5 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s4, i32 0, i32 1, !dbg !1425
  %2 = load i32, i32* %high5, align 4, !dbg !1425
  %s6 = bitcast %union.dwords* %y to %struct.NDES_IMMENSE*, !dbg !1426
  %high7 = getelementptr inbounds %struct.NDES_IMMENSE, %struct.NDES_IMMENSE* %s6, i32 0, i32 1, !dbg !1427
  %3 = load i32, i32* %high7, align 4, !dbg !1427
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1428
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1429

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1430

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1431
  %4 = load i32, i32* %low, align 8, !dbg !1431
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1432
  %5 = load i32, i32* %low13, align 8, !dbg !1432
  %cmp14 = icmp ult i32 %4, %5, !dbg !1433
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1434

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1435

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1436
  %6 = load i32, i32* %low18, align 8, !dbg !1436
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1437
  %7 = load i32, i32* %low20, align 8, !dbg !1437
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1438
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1439

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1440

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1441

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1442
  ret i32 %retval.0, !dbg !1443
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !1444 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #5, !dbg !1445
  %sub = add nsw i32 %call, -1, !dbg !1446
  ret i32 %sub, !dbg !1447
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1448 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #5, !dbg !1449
  ret i64 %call, !dbg !1450
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !1451 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !1452
  %mul = mul i32 %call, %b, !dbg !1453
  %sub = sub i32 %a, %mul, !dbg !1454
  store i32 %sub, i32* %rem, align 4, !dbg !1455
  ret i32 %call, !dbg !1456
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #2 !dbg !1457 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1458
  br i1 %cmp, label %if.then, label %if.end, !dbg !1459

if.then:                                          ; preds = %entry
  br label %return, !dbg !1460

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1461
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1462

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1463

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1464, !range !657
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1465, !range !657
  %sub = sub nsw i32 %0, %1, !dbg !1466
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1467
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1468

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1469

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1470
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1471

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1472

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1473
  %sub10 = sub nsw i32 31, %sub, !dbg !1474
  %shl = shl i32 %n, %sub10, !dbg !1475
  %shr = lshr i32 %n, %inc, !dbg !1476
  br label %for.cond, !dbg !1477

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1478
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1478
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1478
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1478
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1479
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1477

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1480
  %2 = xor i32 %or, -1, !dbg !1481
  %sub17 = add i32 %2, %d, !dbg !1481
  br label %for.inc, !dbg !1482

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1483
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1483
  %sub20 = sub i32 %or, %and19, !dbg !1484
  %and = lshr i32 %sub17, 31, !dbg !1485
  %shl14 = shl i32 %q.0, 1, !dbg !1486
  %or15 = or i32 %shl14, %carry.0, !dbg !1487
  %dec = add i32 %sr.0, -1, !dbg !1488
  br label %for.cond, !dbg !1477, !llvm.loop !1489

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1490
  %or22 = or i32 %shl21, %carry.0, !dbg !1491
  br label %return, !dbg !1492

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1478
  ret i32 %retval.0, !dbg !1493
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1494 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #5, !dbg !1495
  %0 = load i64, i64* %r, align 8, !dbg !1496
  ret i64 %0, !dbg !1497
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1498 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !1499
  %mul = mul i32 %call, %b, !dbg !1500
  %sub = sub i32 %a, %mul, !dbg !1501
  ret i32 %sub, !dbg !1502
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #2 !dbg !1503 {
entry:
  br label %for.cond, !dbg !1504

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1505
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1506
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1507

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1508
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1508
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1509
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1510
  br label %for.inc, !dbg !1511

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1512
  br label %for.cond, !dbg !1507, !llvm.loop !1513

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1514
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #2 !dbg !1515 {
entry:
  br label %for.cond, !dbg !1516

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1517
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1518
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1519

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1520
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1521
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1522
  br label %for.inc, !dbg !1523

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1524
  br label %for.cond, !dbg !1519, !llvm.loop !1525

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1526
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline noreturn nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin noreturn "no-builtins" }

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112}
!llvm.ident = !{!114, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115, !115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123, !124}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/ndes/ndes.c", directory: "/workspaces/llvmta/testcases/tmp.VgtG6Ru486", checksumkind: CSK_MD5, checksum: "1dbf55eeb6d2b1d38e6a64b015f1acba")
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
!125 = distinct !DISubprogram(name: "ndes_init", scope: !126, file: !126, line: 63, type: !127, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!126 = !DIFile(filename: "batchtest/ndes/ndes.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "1dbf55eeb6d2b1d38e6a64b015f1acba")
!127 = !DISubroutineType(types: !128)
!128 = !{}
!129 = !DILocation(line: 79, column: 9, scope: !125)
!130 = !DILocation(line: 0, scope: !125)
!131 = !DILocation(line: 79, column: 18, scope: !125)
!132 = !DILocation(line: 79, column: 3, scope: !125)
!133 = !DILocation(line: 80, column: 22, scope: !125)
!134 = !DILocation(line: 80, column: 5, scope: !125)
!135 = !DILocation(line: 80, column: 20, scope: !125)
!136 = !DILocation(line: 79, column: 25, scope: !125)
!137 = distinct !{!137, !132, !138, !139}
!138 = !DILocation(line: 80, column: 39, scope: !125)
!139 = !{!"llvm.loop.mustprogress"}
!140 = !DILocation(line: 82, column: 9, scope: !125)
!141 = !DILocation(line: 82, column: 18, scope: !125)
!142 = !DILocation(line: 82, column: 3, scope: !125)
!143 = !DILocation(line: 83, column: 22, scope: !125)
!144 = !DILocation(line: 83, column: 5, scope: !125)
!145 = !DILocation(line: 83, column: 20, scope: !125)
!146 = !DILocation(line: 82, column: 25, scope: !125)
!147 = distinct !{!147, !142, !148, !139}
!148 = !DILocation(line: 83, column: 39, scope: !125)
!149 = !DILocation(line: 85, column: 14, scope: !125)
!150 = !DILocation(line: 86, column: 14, scope: !125)
!151 = !DILocation(line: 87, column: 14, scope: !125)
!152 = !DILocation(line: 88, column: 14, scope: !125)
!153 = !DILocation(line: 90, column: 17, scope: !125)
!154 = !DILocation(line: 90, column: 15, scope: !125)
!155 = !DILocation(line: 91, column: 12, scope: !125)
!156 = !DILocation(line: 92, column: 1, scope: !125)
!157 = distinct !DISubprogram(name: "ndes_des", scope: !126, file: !126, line: 96, type: !127, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!158 = !DILocation(line: 127, column: 8, scope: !157)
!159 = !DILocation(line: 128, column: 14, scope: !157)
!160 = !DILocation(line: 129, column: 19, scope: !157)
!161 = !DILocation(line: 132, column: 11, scope: !157)
!162 = !DILocation(line: 0, scope: !157)
!163 = !DILocation(line: 132, column: 20, scope: !157)
!164 = !DILocation(line: 132, column: 5, scope: !157)
!165 = !DILocation(line: 133, column: 33, scope: !157)
!166 = !DILocation(line: 133, column: 7, scope: !157)
!167 = !DILocation(line: 133, column: 21, scope: !157)
!168 = !DILocation(line: 132, column: 27, scope: !157)
!169 = distinct !{!169, !164, !170, !139}
!170 = !DILocation(line: 133, column: 39, scope: !157)
!171 = !DILocation(line: 134, column: 3, scope: !157)
!172 = !DILocation(line: 136, column: 8, scope: !157)
!173 = !DILocation(line: 137, column: 13, scope: !157)
!174 = !DILocation(line: 138, column: 29, scope: !157)
!175 = !DILocation(line: 138, column: 16, scope: !157)
!176 = !DILocation(line: 141, column: 11, scope: !157)
!177 = !DILocation(line: 141, column: 28, scope: !157)
!178 = !DILocation(line: 141, column: 5, scope: !157)
!179 = !DILocation(line: 142, column: 31, scope: !157)
!180 = !DILocation(line: 142, column: 33, scope: !157)
!181 = !DILocation(line: 142, column: 60, scope: !157)
!182 = !DILocation(line: 142, column: 42, scope: !157)
!183 = !DILocation(line: 142, column: 40, scope: !157)
!184 = !DILocation(line: 142, column: 18, scope: !157)
!185 = !DILocation(line: 143, column: 29, scope: !157)
!186 = !DILocation(line: 143, column: 31, scope: !157)
!187 = !DILocation(line: 143, column: 18, scope: !157)
!188 = !DILocation(line: 144, column: 55, scope: !157)
!189 = !DILocation(line: 144, column: 37, scope: !157)
!190 = !DILocation(line: 144, column: 35, scope: !157)
!191 = !DILocation(line: 144, column: 18, scope: !157)
!192 = !DILocation(line: 145, column: 5, scope: !157)
!193 = !DILocation(line: 141, column: 35, scope: !157)
!194 = !DILocation(line: 141, column: 40, scope: !157)
!195 = distinct !{!195, !178, !192, !139}
!196 = !DILocation(line: 148, column: 11, scope: !157)
!197 = !DILocation(line: 148, column: 21, scope: !157)
!198 = !DILocation(line: 148, column: 5, scope: !157)
!199 = !DILocation(line: 149, column: 12, scope: !157)
!200 = !DILocation(line: 150, column: 7, scope: !157)
!201 = !DILocation(line: 151, column: 7, scope: !157)
!202 = !DILocation(line: 151, column: 18, scope: !157)
!203 = !DILocation(line: 152, column: 5, scope: !157)
!204 = !DILocation(line: 148, column: 29, scope: !157)
!205 = distinct !{!205, !198, !203, !139}
!206 = !DILocation(line: 153, column: 3, scope: !157)
!207 = !DILocation(line: 155, column: 17, scope: !157)
!208 = !DILocation(line: 155, column: 19, scope: !157)
!209 = !DILocation(line: 155, column: 8, scope: !157)
!210 = !DILocation(line: 155, column: 10, scope: !157)
!211 = !DILocation(line: 158, column: 9, scope: !157)
!212 = !DILocation(line: 158, column: 26, scope: !157)
!213 = !DILocation(line: 158, column: 3, scope: !157)
!214 = !DILocation(line: 159, column: 19, scope: !157)
!215 = !DILocation(line: 159, column: 21, scope: !157)
!216 = !DILocation(line: 159, column: 10, scope: !157)
!217 = !DILocation(line: 159, column: 12, scope: !157)
!218 = !DILocation(line: 160, column: 45, scope: !157)
!219 = !DILocation(line: 160, column: 27, scope: !157)
!220 = !DILocation(line: 160, column: 25, scope: !157)
!221 = !DILocation(line: 160, column: 10, scope: !157)
!222 = !DILocation(line: 160, column: 12, scope: !157)
!223 = !DILocation(line: 161, column: 19, scope: !157)
!224 = !DILocation(line: 161, column: 21, scope: !157)
!225 = !DILocation(line: 161, column: 10, scope: !157)
!226 = !DILocation(line: 161, column: 12, scope: !157)
!227 = !DILocation(line: 162, column: 45, scope: !157)
!228 = !DILocation(line: 162, column: 27, scope: !157)
!229 = !DILocation(line: 162, column: 25, scope: !157)
!230 = !DILocation(line: 162, column: 10, scope: !157)
!231 = !DILocation(line: 162, column: 12, scope: !157)
!232 = !DILocation(line: 163, column: 3, scope: !157)
!233 = !DILocation(line: 158, column: 33, scope: !157)
!234 = !DILocation(line: 158, column: 38, scope: !157)
!235 = distinct !{!235, !213, !232, !139}
!236 = !DILocation(line: 165, column: 9, scope: !157)
!237 = !DILocation(line: 165, column: 19, scope: !157)
!238 = !DILocation(line: 165, column: 3, scope: !157)
!239 = !DILocation(line: 166, column: 16, scope: !157)
!240 = !DILocation(line: 166, column: 12, scope: !157)
!241 = !DILocation(line: 166, column: 26, scope: !157)
!242 = !DILocation(line: 167, column: 22, scope: !157)
!243 = !DILocation(line: 167, column: 5, scope: !157)
!244 = !DILocation(line: 168, column: 16, scope: !157)
!245 = !DILocation(line: 168, column: 8, scope: !157)
!246 = !DILocation(line: 169, column: 19, scope: !157)
!247 = !DILocation(line: 169, column: 10, scope: !157)
!248 = !DILocation(line: 169, column: 12, scope: !157)
!249 = !DILocation(line: 170, column: 10, scope: !157)
!250 = !DILocation(line: 170, column: 12, scope: !157)
!251 = !DILocation(line: 171, column: 3, scope: !157)
!252 = !DILocation(line: 165, column: 27, scope: !157)
!253 = distinct !{!253, !238, !251, !139}
!254 = !DILocation(line: 173, column: 13, scope: !157)
!255 = !DILocation(line: 173, column: 6, scope: !157)
!256 = !DILocation(line: 174, column: 17, scope: !157)
!257 = !DILocation(line: 174, column: 8, scope: !157)
!258 = !DILocation(line: 174, column: 10, scope: !157)
!259 = !DILocation(line: 175, column: 8, scope: !157)
!260 = !DILocation(line: 175, column: 10, scope: !157)
!261 = !DILocation(line: 176, column: 25, scope: !157)
!262 = !DILocation(line: 176, column: 27, scope: !157)
!263 = !DILocation(line: 176, column: 12, scope: !157)
!264 = !DILocation(line: 176, column: 14, scope: !157)
!265 = !DILocation(line: 179, column: 9, scope: !157)
!266 = !DILocation(line: 179, column: 26, scope: !157)
!267 = !DILocation(line: 179, column: 3, scope: !157)
!268 = !DILocation(line: 180, column: 27, scope: !157)
!269 = !DILocation(line: 180, column: 29, scope: !157)
!270 = !DILocation(line: 180, column: 14, scope: !157)
!271 = !DILocation(line: 180, column: 16, scope: !157)
!272 = !DILocation(line: 181, column: 54, scope: !157)
!273 = !DILocation(line: 181, column: 35, scope: !157)
!274 = !DILocation(line: 181, column: 33, scope: !157)
!275 = !DILocation(line: 181, column: 14, scope: !157)
!276 = !DILocation(line: 181, column: 16, scope: !157)
!277 = !DILocation(line: 182, column: 27, scope: !157)
!278 = !DILocation(line: 182, column: 29, scope: !157)
!279 = !DILocation(line: 182, column: 14, scope: !157)
!280 = !DILocation(line: 182, column: 16, scope: !157)
!281 = !DILocation(line: 183, column: 54, scope: !157)
!282 = !DILocation(line: 183, column: 35, scope: !157)
!283 = !DILocation(line: 183, column: 33, scope: !157)
!284 = !DILocation(line: 183, column: 14, scope: !157)
!285 = !DILocation(line: 183, column: 16, scope: !157)
!286 = !DILocation(line: 184, column: 3, scope: !157)
!287 = !DILocation(line: 179, column: 33, scope: !157)
!288 = !DILocation(line: 179, column: 38, scope: !157)
!289 = distinct !{!289, !267, !286, !139}
!290 = !DILocation(line: 185, column: 1, scope: !157)
!291 = distinct !DISubprogram(name: "ndes_getbit", scope: !126, file: !126, line: 333, type: !127, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!292 = !DILocation(line: 335, column: 14, scope: !291)
!293 = !DILocation(line: 335, column: 8, scope: !291)
!294 = !DILocation(line: 336, column: 12, scope: !291)
!295 = !DILocation(line: 336, column: 39, scope: !291)
!296 = !DILocation(line: 336, column: 30, scope: !291)
!297 = !DILocation(line: 336, column: 5, scope: !291)
!298 = !DILocation(line: 338, column: 28, scope: !291)
!299 = !DILocation(line: 338, column: 12, scope: !291)
!300 = !DILocation(line: 338, column: 47, scope: !291)
!301 = !DILocation(line: 338, column: 38, scope: !291)
!302 = !DILocation(line: 338, column: 5, scope: !291)
!303 = !DILocation(line: 0, scope: !291)
!304 = !DILocation(line: 339, column: 1, scope: !291)
!305 = distinct !DISubprogram(name: "ndes_ks", scope: !126, file: !126, line: 341, type: !127, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!306 = !DILocation(line: 345, column: 10, scope: !305)
!307 = !DILocation(line: 345, column: 15, scope: !305)
!308 = !DILocation(line: 345, column: 20, scope: !305)
!309 = !DILocation(line: 345, column: 25, scope: !305)
!310 = !DILocation(line: 345, column: 30, scope: !305)
!311 = !DILocation(line: 345, column: 35, scope: !305)
!312 = !DILocation(line: 345, column: 40, scope: !305)
!313 = !DILocation(line: 345, column: 8, scope: !305)
!314 = !DILocation(line: 346, column: 29, scope: !305)
!315 = !DILocation(line: 346, column: 55, scope: !305)
!316 = !DILocation(line: 346, column: 31, scope: !305)
!317 = !DILocation(line: 346, column: 65, scope: !305)
!318 = !DILocation(line: 346, column: 16, scope: !305)
!319 = !DILocation(line: 347, column: 29, scope: !305)
!320 = !DILocation(line: 347, column: 55, scope: !305)
!321 = !DILocation(line: 347, column: 31, scope: !305)
!322 = !DILocation(line: 347, column: 65, scope: !305)
!323 = !DILocation(line: 347, column: 16, scope: !305)
!324 = !DILocation(line: 348, column: 3, scope: !305)
!325 = !DILocation(line: 350, column: 11, scope: !305)
!326 = !DILocation(line: 0, scope: !305)
!327 = !DILocation(line: 350, column: 20, scope: !305)
!328 = !DILocation(line: 350, column: 5, scope: !305)
!329 = !DILocation(line: 351, column: 31, scope: !305)
!330 = !DILocation(line: 351, column: 57, scope: !305)
!331 = !DILocation(line: 351, column: 33, scope: !305)
!332 = !DILocation(line: 351, column: 67, scope: !305)
!333 = !DILocation(line: 351, column: 18, scope: !305)
!334 = !DILocation(line: 352, column: 31, scope: !305)
!335 = !DILocation(line: 352, column: 57, scope: !305)
!336 = !DILocation(line: 352, column: 33, scope: !305)
!337 = !DILocation(line: 352, column: 67, scope: !305)
!338 = !DILocation(line: 352, column: 18, scope: !305)
!339 = !DILocation(line: 353, column: 5, scope: !305)
!340 = !DILocation(line: 350, column: 27, scope: !305)
!341 = distinct !{!341, !328, !339, !139}
!342 = !DILocation(line: 356, column: 35, scope: !305)
!343 = !DILocation(line: 356, column: 37, scope: !305)
!344 = !DILocation(line: 356, column: 23, scope: !305)
!345 = !DILocation(line: 356, column: 25, scope: !305)
!346 = !DILocation(line: 356, column: 11, scope: !305)
!347 = !DILocation(line: 356, column: 13, scope: !305)
!348 = !DILocation(line: 359, column: 9, scope: !305)
!349 = !DILocation(line: 359, column: 35, scope: !305)
!350 = !DILocation(line: 359, column: 3, scope: !305)
!351 = !DILocation(line: 360, column: 25, scope: !305)
!352 = !DILocation(line: 360, column: 27, scope: !305)
!353 = !DILocation(line: 360, column: 13, scope: !305)
!354 = !DILocation(line: 360, column: 15, scope: !305)
!355 = !DILocation(line: 362, column: 40, scope: !305)
!356 = !DILocation(line: 362, column: 17, scope: !305)
!357 = !DILocation(line: 361, column: 33, scope: !305)
!358 = !DILocation(line: 361, column: 31, scope: !305)
!359 = !DILocation(line: 361, column: 13, scope: !305)
!360 = !DILocation(line: 361, column: 15, scope: !305)
!361 = !DILocation(line: 363, column: 25, scope: !305)
!362 = !DILocation(line: 363, column: 27, scope: !305)
!363 = !DILocation(line: 363, column: 13, scope: !305)
!364 = !DILocation(line: 363, column: 15, scope: !305)
!365 = !DILocation(line: 365, column: 40, scope: !305)
!366 = !DILocation(line: 365, column: 17, scope: !305)
!367 = !DILocation(line: 364, column: 33, scope: !305)
!368 = !DILocation(line: 364, column: 31, scope: !305)
!369 = !DILocation(line: 364, column: 13, scope: !305)
!370 = !DILocation(line: 364, column: 15, scope: !305)
!371 = !DILocation(line: 366, column: 25, scope: !305)
!372 = !DILocation(line: 366, column: 27, scope: !305)
!373 = !DILocation(line: 366, column: 13, scope: !305)
!374 = !DILocation(line: 366, column: 15, scope: !305)
!375 = !DILocation(line: 368, column: 40, scope: !305)
!376 = !DILocation(line: 368, column: 17, scope: !305)
!377 = !DILocation(line: 367, column: 33, scope: !305)
!378 = !DILocation(line: 367, column: 31, scope: !305)
!379 = !DILocation(line: 367, column: 13, scope: !305)
!380 = !DILocation(line: 367, column: 15, scope: !305)
!381 = !DILocation(line: 369, column: 3, scope: !305)
!382 = !DILocation(line: 359, column: 42, scope: !305)
!383 = !DILocation(line: 359, column: 47, scope: !305)
!384 = !DILocation(line: 359, column: 52, scope: !305)
!385 = distinct !{!385, !350, !381, !139}
!386 = !DILocation(line: 370, column: 1, scope: !305)
!387 = distinct !DISubprogram(name: "ndes_cyfun", scope: !126, file: !126, line: 188, type: !127, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!388 = !DILocation(line: 281, column: 17, scope: !387)
!389 = !DILocation(line: 290, column: 20, scope: !387)
!390 = !DILocation(line: 290, column: 22, scope: !387)
!391 = !DILocation(line: 290, column: 13, scope: !387)
!392 = !DILocation(line: 290, column: 15, scope: !387)
!393 = !DILocation(line: 290, column: 6, scope: !387)
!394 = !DILocation(line: 290, column: 8, scope: !387)
!395 = !DILocation(line: 293, column: 11, scope: !387)
!396 = !DILocation(line: 293, column: 9, scope: !387)
!397 = !DILocation(line: 0, scope: !387)
!398 = !DILocation(line: 293, column: 33, scope: !387)
!399 = !DILocation(line: 293, column: 35, scope: !387)
!400 = !DILocation(line: 293, column: 3, scope: !387)
!401 = !DILocation(line: 294, column: 17, scope: !387)
!402 = !DILocation(line: 294, column: 19, scope: !387)
!403 = !DILocation(line: 294, column: 38, scope: !387)
!404 = !DILocation(line: 294, column: 33, scope: !387)
!405 = !DILocation(line: 294, column: 30, scope: !387)
!406 = !DILocation(line: 294, column: 44, scope: !387)
!407 = !DILocation(line: 294, column: 26, scope: !387)
!408 = !DILocation(line: 294, column: 8, scope: !387)
!409 = !DILocation(line: 294, column: 10, scope: !387)
!410 = !DILocation(line: 295, column: 17, scope: !387)
!411 = !DILocation(line: 295, column: 19, scope: !387)
!412 = !DILocation(line: 295, column: 33, scope: !387)
!413 = !DILocation(line: 295, column: 30, scope: !387)
!414 = !DILocation(line: 295, column: 44, scope: !387)
!415 = !DILocation(line: 295, column: 26, scope: !387)
!416 = !DILocation(line: 295, column: 8, scope: !387)
!417 = !DILocation(line: 295, column: 10, scope: !387)
!418 = !DILocation(line: 296, column: 17, scope: !387)
!419 = !DILocation(line: 296, column: 19, scope: !387)
!420 = !DILocation(line: 296, column: 33, scope: !387)
!421 = !DILocation(line: 296, column: 30, scope: !387)
!422 = !DILocation(line: 296, column: 44, scope: !387)
!423 = !DILocation(line: 296, column: 26, scope: !387)
!424 = !DILocation(line: 296, column: 8, scope: !387)
!425 = !DILocation(line: 296, column: 10, scope: !387)
!426 = !DILocation(line: 297, column: 3, scope: !387)
!427 = !DILocation(line: 293, column: 42, scope: !387)
!428 = !DILocation(line: 293, column: 47, scope: !387)
!429 = !DILocation(line: 293, column: 52, scope: !387)
!430 = distinct !{!430, !400, !426, !139}
!431 = !DILocation(line: 298, column: 13, scope: !387)
!432 = !DILocation(line: 298, column: 6, scope: !387)
!433 = !DILocation(line: 298, column: 8, scope: !387)
!434 = !DILocation(line: 299, column: 13, scope: !387)
!435 = !DILocation(line: 299, column: 6, scope: !387)
!436 = !DILocation(line: 299, column: 8, scope: !387)
!437 = !DILocation(line: 300, column: 13, scope: !387)
!438 = !DILocation(line: 300, column: 6, scope: !387)
!439 = !DILocation(line: 300, column: 8, scope: !387)
!440 = !DILocation(line: 301, column: 35, scope: !387)
!441 = !DILocation(line: 301, column: 37, scope: !387)
!442 = !DILocation(line: 301, column: 68, scope: !387)
!443 = !DILocation(line: 301, column: 45, scope: !387)
!444 = !DILocation(line: 302, column: 35, scope: !387)
!445 = !DILocation(line: 302, column: 37, scope: !387)
!446 = !DILocation(line: 302, column: 69, scope: !387)
!447 = !DILocation(line: 302, column: 71, scope: !387)
!448 = !DILocation(line: 302, column: 44, scope: !387)
!449 = !DILocation(line: 305, column: 11, scope: !387)
!450 = !DILocation(line: 305, column: 9, scope: !387)
!451 = !DILocation(line: 305, column: 23, scope: !387)
!452 = !DILocation(line: 305, column: 25, scope: !387)
!453 = !DILocation(line: 305, column: 3, scope: !387)
!454 = !DILocation(line: 306, column: 16, scope: !387)
!455 = !DILocation(line: 306, column: 10, scope: !387)
!456 = !DILocation(line: 306, column: 5, scope: !387)
!457 = !DILocation(line: 306, column: 14, scope: !387)
!458 = !DILocation(line: 307, column: 16, scope: !387)
!459 = !DILocation(line: 307, column: 5, scope: !387)
!460 = !DILocation(line: 307, column: 14, scope: !387)
!461 = !DILocation(line: 310, column: 3, scope: !387)
!462 = !DILocation(line: 309, column: 12, scope: !387)
!463 = !DILocation(line: 308, column: 12, scope: !387)
!464 = !DILocation(line: 305, column: 32, scope: !387)
!465 = !DILocation(line: 305, column: 37, scope: !387)
!466 = distinct !{!466, !453, !461, !139}
!467 = !DILocation(line: 315, column: 12, scope: !387)
!468 = !DILocation(line: 315, column: 9, scope: !387)
!469 = !DILocation(line: 315, column: 17, scope: !387)
!470 = !DILocation(line: 315, column: 20, scope: !387)
!471 = !DILocation(line: 315, column: 3, scope: !387)
!472 = !DILocation(line: 316, column: 14, scope: !387)
!473 = !DILocation(line: 316, column: 9, scope: !387)
!474 = !DILocation(line: 316, column: 7, scope: !387)
!475 = !DILocation(line: 317, column: 16, scope: !387)
!476 = !DILocation(line: 317, column: 26, scope: !387)
!477 = !DILocation(line: 317, column: 39, scope: !387)
!478 = !DILocation(line: 317, column: 50, scope: !387)
!479 = !DILocation(line: 317, column: 33, scope: !387)
!480 = !DILocation(line: 318, column: 16, scope: !387)
!481 = !DILocation(line: 318, column: 26, scope: !387)
!482 = !DILocation(line: 318, column: 37, scope: !387)
!483 = !DILocation(line: 318, column: 39, scope: !387)
!484 = !DILocation(line: 318, column: 33, scope: !387)
!485 = !DILocation(line: 319, column: 18, scope: !387)
!486 = !DILocation(line: 319, column: 28, scope: !387)
!487 = !DILocation(line: 319, column: 12, scope: !387)
!488 = !DILocation(line: 319, column: 41, scope: !387)
!489 = !DILocation(line: 319, column: 52, scope: !387)
!490 = !DILocation(line: 319, column: 35, scope: !387)
!491 = !DILocation(line: 320, column: 31, scope: !387)
!492 = !DILocation(line: 320, column: 11, scope: !387)
!493 = !DILocation(line: 321, column: 28, scope: !387)
!494 = !DILocation(line: 322, column: 3, scope: !387)
!495 = !DILocation(line: 321, column: 19, scope: !387)
!496 = !DILocation(line: 321, column: 26, scope: !387)
!497 = !DILocation(line: 315, column: 28, scope: !387)
!498 = distinct !{!498, !471, !494, !139}
!499 = !DILocation(line: 324, column: 9, scope: !387)
!500 = !DILocation(line: 328, column: 11, scope: !387)
!501 = !DILocation(line: 328, column: 9, scope: !387)
!502 = !DILocation(line: 328, column: 17, scope: !387)
!503 = !DILocation(line: 328, column: 19, scope: !387)
!504 = !DILocation(line: 328, column: 3, scope: !387)
!505 = !DILocation(line: 329, column: 15, scope: !387)
!506 = !DILocation(line: 329, column: 21, scope: !387)
!507 = !DILocation(line: 329, column: 11, scope: !387)
!508 = !DILocation(line: 329, column: 5, scope: !387)
!509 = !DILocation(line: 328, column: 26, scope: !387)
!510 = distinct !{!510, !504, !511, !139}
!511 = !DILocation(line: 329, column: 26, scope: !387)
!512 = !DILocation(line: 330, column: 22, scope: !387)
!513 = !DILocation(line: 330, column: 17, scope: !387)
!514 = !DILocation(line: 330, column: 14, scope: !387)
!515 = !DILocation(line: 330, column: 28, scope: !387)
!516 = !DILocation(line: 330, column: 9, scope: !387)
!517 = !DILocation(line: 331, column: 1, scope: !387)
!518 = distinct !DISubprogram(name: "ndes_return", scope: !126, file: !126, line: 372, type: !127, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!519 = !DILocation(line: 374, column: 21, scope: !518)
!520 = !DILocation(line: 374, column: 34, scope: !518)
!521 = !DILocation(line: 374, column: 23, scope: !518)
!522 = !DILocation(line: 374, column: 54, scope: !518)
!523 = !DILocation(line: 374, column: 3, scope: !518)
!524 = distinct !DISubprogram(name: "ndes_main", scope: !126, file: !126, line: 377, type: !127, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!525 = !DILocation(line: 379, column: 47, scope: !524)
!526 = !DILocation(line: 379, column: 3, scope: !524)
!527 = !DILocation(line: 380, column: 1, scope: !524)
!528 = distinct !DISubprogram(name: "main", scope: !126, file: !126, line: 384, type: !127, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !128)
!529 = !DILocation(line: 386, column: 3, scope: !528)
!530 = !DILocation(line: 387, column: 3, scope: !528)
!531 = !DILocation(line: 389, column: 12, scope: !528)
!532 = !DILocation(line: 389, column: 3, scope: !528)
!533 = distinct !DISubprogram(name: "__absvdi2", scope: !3, file: !3, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !128)
!534 = !DILocation(line: 25, column: 11, scope: !533)
!535 = !DILocation(line: 25, column: 9, scope: !533)
!536 = !DILocation(line: 26, column: 9, scope: !533)
!537 = !DILocation(line: 28, column: 20, scope: !533)
!538 = !DILocation(line: 28, column: 5, scope: !533)
!539 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !55, file: !55, line: 57, type: !127, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !128)
!540 = !DILocation(line: 59, column: 1, scope: !539)
!541 = distinct !DISubprogram(name: "__absvsi2", scope: !5, file: !5, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !128)
!542 = !DILocation(line: 25, column: 11, scope: !541)
!543 = !DILocation(line: 25, column: 9, scope: !541)
!544 = !DILocation(line: 26, column: 9, scope: !541)
!545 = !DILocation(line: 28, column: 20, scope: !541)
!546 = !DILocation(line: 28, column: 5, scope: !541)
!547 = distinct !DISubprogram(name: "__addvdi3", scope: !9, file: !9, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !128)
!548 = !DILocation(line: 24, column: 27, scope: !547)
!549 = !DILocation(line: 25, column: 11, scope: !547)
!550 = !DILocation(line: 25, column: 9, scope: !547)
!551 = !DILocation(line: 27, column: 15, scope: !547)
!552 = !DILocation(line: 27, column: 13, scope: !547)
!553 = !DILocation(line: 28, column: 13, scope: !547)
!554 = !DILocation(line: 29, column: 5, scope: !547)
!555 = !DILocation(line: 32, column: 15, scope: !547)
!556 = !DILocation(line: 32, column: 13, scope: !547)
!557 = !DILocation(line: 33, column: 13, scope: !547)
!558 = !DILocation(line: 35, column: 5, scope: !547)
!559 = distinct !DISubprogram(name: "__addvsi3", scope: !11, file: !11, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !128)
!560 = !DILocation(line: 24, column: 27, scope: !559)
!561 = !DILocation(line: 25, column: 11, scope: !559)
!562 = !DILocation(line: 25, column: 9, scope: !559)
!563 = !DILocation(line: 27, column: 15, scope: !559)
!564 = !DILocation(line: 27, column: 13, scope: !559)
!565 = !DILocation(line: 28, column: 13, scope: !559)
!566 = !DILocation(line: 29, column: 5, scope: !559)
!567 = !DILocation(line: 32, column: 15, scope: !559)
!568 = !DILocation(line: 32, column: 13, scope: !559)
!569 = !DILocation(line: 33, column: 13, scope: !559)
!570 = !DILocation(line: 35, column: 5, scope: !559)
!571 = distinct !DISubprogram(name: "__ashldi3", scope: !15, file: !15, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !128)
!572 = !DILocation(line: 29, column: 11, scope: !571)
!573 = !DILocation(line: 29, column: 15, scope: !571)
!574 = !DILocation(line: 30, column: 11, scope: !571)
!575 = !DILocation(line: 30, column: 9, scope: !571)
!576 = !DILocation(line: 32, column: 18, scope: !571)
!577 = !DILocation(line: 32, column: 22, scope: !571)
!578 = !DILocation(line: 33, column: 33, scope: !571)
!579 = !DILocation(line: 33, column: 43, scope: !571)
!580 = !DILocation(line: 33, column: 37, scope: !571)
!581 = !DILocation(line: 33, column: 16, scope: !571)
!582 = !DILocation(line: 33, column: 18, scope: !571)
!583 = !DILocation(line: 33, column: 23, scope: !571)
!584 = !DILocation(line: 34, column: 5, scope: !571)
!585 = !DILocation(line: 37, column: 15, scope: !571)
!586 = !DILocation(line: 37, column: 13, scope: !571)
!587 = !DILocation(line: 38, column: 13, scope: !571)
!588 = !DILocation(line: 39, column: 33, scope: !571)
!589 = !DILocation(line: 39, column: 37, scope: !571)
!590 = !DILocation(line: 39, column: 18, scope: !571)
!591 = !DILocation(line: 39, column: 23, scope: !571)
!592 = !DILocation(line: 40, column: 32, scope: !571)
!593 = !DILocation(line: 40, column: 34, scope: !571)
!594 = !DILocation(line: 40, column: 39, scope: !571)
!595 = !DILocation(line: 40, column: 56, scope: !571)
!596 = !DILocation(line: 40, column: 77, scope: !571)
!597 = !DILocation(line: 40, column: 60, scope: !571)
!598 = !DILocation(line: 40, column: 45, scope: !571)
!599 = !DILocation(line: 40, column: 16, scope: !571)
!600 = !DILocation(line: 40, column: 18, scope: !571)
!601 = !DILocation(line: 40, column: 23, scope: !571)
!602 = !DILocation(line: 42, column: 19, scope: !571)
!603 = !DILocation(line: 42, column: 5, scope: !571)
!604 = !DILocation(line: 0, scope: !571)
!605 = !DILocation(line: 43, column: 1, scope: !571)
!606 = distinct !DISubprogram(name: "__ashrdi3", scope: !19, file: !19, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !128)
!607 = !DILocation(line: 29, column: 11, scope: !606)
!608 = !DILocation(line: 29, column: 15, scope: !606)
!609 = !DILocation(line: 30, column: 11, scope: !606)
!610 = !DILocation(line: 30, column: 9, scope: !606)
!611 = !DILocation(line: 33, column: 31, scope: !606)
!612 = !DILocation(line: 33, column: 33, scope: !606)
!613 = !DILocation(line: 33, column: 38, scope: !606)
!614 = !DILocation(line: 33, column: 16, scope: !606)
!615 = !DILocation(line: 33, column: 18, scope: !606)
!616 = !DILocation(line: 33, column: 23, scope: !606)
!617 = !DILocation(line: 34, column: 30, scope: !606)
!618 = !DILocation(line: 34, column: 32, scope: !606)
!619 = !DILocation(line: 34, column: 43, scope: !606)
!620 = !DILocation(line: 34, column: 37, scope: !606)
!621 = !DILocation(line: 34, column: 18, scope: !606)
!622 = !DILocation(line: 34, column: 22, scope: !606)
!623 = !DILocation(line: 35, column: 5, scope: !606)
!624 = !DILocation(line: 38, column: 15, scope: !606)
!625 = !DILocation(line: 38, column: 13, scope: !606)
!626 = !DILocation(line: 39, column: 13, scope: !606)
!627 = !DILocation(line: 40, column: 32, scope: !606)
!628 = !DILocation(line: 40, column: 34, scope: !606)
!629 = !DILocation(line: 40, column: 39, scope: !606)
!630 = !DILocation(line: 40, column: 16, scope: !606)
!631 = !DILocation(line: 40, column: 18, scope: !606)
!632 = !DILocation(line: 40, column: 24, scope: !606)
!633 = !DILocation(line: 41, column: 31, scope: !606)
!634 = !DILocation(line: 41, column: 33, scope: !606)
!635 = !DILocation(line: 41, column: 55, scope: !606)
!636 = !DILocation(line: 41, column: 38, scope: !606)
!637 = !DILocation(line: 41, column: 72, scope: !606)
!638 = !DILocation(line: 41, column: 76, scope: !606)
!639 = !DILocation(line: 41, column: 61, scope: !606)
!640 = !DILocation(line: 41, column: 18, scope: !606)
!641 = !DILocation(line: 41, column: 22, scope: !606)
!642 = !DILocation(line: 43, column: 19, scope: !606)
!643 = !DILocation(line: 43, column: 5, scope: !606)
!644 = !DILocation(line: 0, scope: !606)
!645 = !DILocation(line: 44, column: 1, scope: !606)
!646 = distinct !DISubprogram(name: "__clzdi2", scope: !23, file: !23, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !128)
!647 = !DILocation(line: 25, column: 7, scope: !646)
!648 = !DILocation(line: 25, column: 11, scope: !646)
!649 = !DILocation(line: 26, column: 26, scope: !646)
!650 = !DILocation(line: 26, column: 28, scope: !646)
!651 = !DILocation(line: 26, column: 33, scope: !646)
!652 = !DILocation(line: 27, column: 29, scope: !646)
!653 = !DILocation(line: 27, column: 31, scope: !646)
!654 = !DILocation(line: 27, column: 49, scope: !646)
!655 = !DILocation(line: 27, column: 42, scope: !646)
!656 = !DILocation(line: 27, column: 12, scope: !646)
!657 = !{i32 0, i32 33}
!658 = !DILocation(line: 28, column: 15, scope: !646)
!659 = !DILocation(line: 27, column: 59, scope: !646)
!660 = !DILocation(line: 27, column: 5, scope: !646)
!661 = distinct !DISubprogram(name: "__clzsi2", scope: !25, file: !25, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !128)
!662 = !DILocation(line: 25, column: 34, scope: !661)
!663 = !DILocation(line: 25, column: 40, scope: !661)
!664 = !DILocation(line: 26, column: 14, scope: !661)
!665 = !DILocation(line: 26, column: 7, scope: !661)
!666 = !DILocation(line: 29, column: 13, scope: !661)
!667 = !DILocation(line: 29, column: 23, scope: !661)
!668 = !DILocation(line: 29, column: 29, scope: !661)
!669 = !DILocation(line: 30, column: 13, scope: !661)
!670 = !DILocation(line: 30, column: 7, scope: !661)
!671 = !DILocation(line: 31, column: 7, scope: !661)
!672 = !DILocation(line: 33, column: 13, scope: !661)
!673 = !DILocation(line: 33, column: 21, scope: !661)
!674 = !DILocation(line: 33, column: 27, scope: !661)
!675 = !DILocation(line: 34, column: 13, scope: !661)
!676 = !DILocation(line: 34, column: 7, scope: !661)
!677 = !DILocation(line: 35, column: 7, scope: !661)
!678 = !DILocation(line: 37, column: 13, scope: !661)
!679 = !DILocation(line: 37, column: 20, scope: !661)
!680 = !DILocation(line: 37, column: 26, scope: !661)
!681 = !DILocation(line: 38, column: 13, scope: !661)
!682 = !DILocation(line: 38, column: 7, scope: !661)
!683 = !DILocation(line: 39, column: 7, scope: !661)
!684 = !DILocation(line: 52, column: 20, scope: !661)
!685 = !DILocation(line: 52, column: 37, scope: !661)
!686 = !DILocation(line: 52, column: 25, scope: !661)
!687 = !DILocation(line: 52, column: 14, scope: !661)
!688 = !DILocation(line: 52, column: 5, scope: !661)
!689 = distinct !DISubprogram(name: "__cmpdi2", scope: !29, file: !29, line: 23, type: !127, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !128)
!690 = !DILocation(line: 26, column: 7, scope: !689)
!691 = !DILocation(line: 26, column: 11, scope: !689)
!692 = !DILocation(line: 28, column: 7, scope: !689)
!693 = !DILocation(line: 28, column: 11, scope: !689)
!694 = !DILocation(line: 29, column: 11, scope: !689)
!695 = !DILocation(line: 29, column: 13, scope: !689)
!696 = !DILocation(line: 29, column: 22, scope: !689)
!697 = !DILocation(line: 29, column: 24, scope: !689)
!698 = !DILocation(line: 29, column: 18, scope: !689)
!699 = !DILocation(line: 29, column: 9, scope: !689)
!700 = !DILocation(line: 30, column: 9, scope: !689)
!701 = !DILocation(line: 31, column: 11, scope: !689)
!702 = !DILocation(line: 31, column: 13, scope: !689)
!703 = !DILocation(line: 31, column: 22, scope: !689)
!704 = !DILocation(line: 31, column: 24, scope: !689)
!705 = !DILocation(line: 31, column: 18, scope: !689)
!706 = !DILocation(line: 31, column: 9, scope: !689)
!707 = !DILocation(line: 32, column: 9, scope: !689)
!708 = !DILocation(line: 33, column: 13, scope: !689)
!709 = !DILocation(line: 33, column: 23, scope: !689)
!710 = !DILocation(line: 33, column: 17, scope: !689)
!711 = !DILocation(line: 33, column: 9, scope: !689)
!712 = !DILocation(line: 34, column: 9, scope: !689)
!713 = !DILocation(line: 35, column: 13, scope: !689)
!714 = !DILocation(line: 35, column: 23, scope: !689)
!715 = !DILocation(line: 35, column: 17, scope: !689)
!716 = !DILocation(line: 35, column: 9, scope: !689)
!717 = !DILocation(line: 36, column: 9, scope: !689)
!718 = !DILocation(line: 37, column: 5, scope: !689)
!719 = !DILocation(line: 0, scope: !689)
!720 = !DILocation(line: 38, column: 1, scope: !689)
!721 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !29, file: !29, line: 46, type: !127, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !128)
!722 = !DILocation(line: 48, column: 9, scope: !721)
!723 = !DILocation(line: 48, column: 24, scope: !721)
!724 = !DILocation(line: 48, column: 2, scope: !721)
!725 = distinct !DISubprogram(name: "__ctzdi2", scope: !33, file: !33, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !128)
!726 = !DILocation(line: 25, column: 7, scope: !725)
!727 = !DILocation(line: 25, column: 11, scope: !725)
!728 = !DILocation(line: 26, column: 28, scope: !725)
!729 = !DILocation(line: 26, column: 32, scope: !725)
!730 = !DILocation(line: 27, column: 29, scope: !725)
!731 = !DILocation(line: 27, column: 31, scope: !725)
!732 = !DILocation(line: 27, column: 41, scope: !725)
!733 = !DILocation(line: 27, column: 12, scope: !725)
!734 = !DILocation(line: 28, column: 18, scope: !725)
!735 = !DILocation(line: 27, column: 59, scope: !725)
!736 = !DILocation(line: 27, column: 5, scope: !725)
!737 = distinct !DISubprogram(name: "__ctzsi2", scope: !35, file: !35, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !128)
!738 = !DILocation(line: 25, column: 20, scope: !737)
!739 = !DILocation(line: 25, column: 34, scope: !737)
!740 = !DILocation(line: 25, column: 40, scope: !737)
!741 = !DILocation(line: 26, column: 7, scope: !737)
!742 = !DILocation(line: 29, column: 13, scope: !737)
!743 = !DILocation(line: 29, column: 23, scope: !737)
!744 = !DILocation(line: 29, column: 29, scope: !737)
!745 = !DILocation(line: 30, column: 7, scope: !737)
!746 = !DILocation(line: 31, column: 7, scope: !737)
!747 = !DILocation(line: 33, column: 13, scope: !737)
!748 = !DILocation(line: 33, column: 21, scope: !737)
!749 = !DILocation(line: 33, column: 27, scope: !737)
!750 = !DILocation(line: 34, column: 7, scope: !737)
!751 = !DILocation(line: 35, column: 7, scope: !737)
!752 = !DILocation(line: 37, column: 13, scope: !737)
!753 = !DILocation(line: 37, column: 20, scope: !737)
!754 = !DILocation(line: 37, column: 26, scope: !737)
!755 = !DILocation(line: 38, column: 7, scope: !737)
!756 = !DILocation(line: 40, column: 7, scope: !737)
!757 = !DILocation(line: 56, column: 25, scope: !737)
!758 = !DILocation(line: 56, column: 20, scope: !737)
!759 = !DILocation(line: 56, column: 44, scope: !737)
!760 = !DILocation(line: 56, column: 32, scope: !737)
!761 = !DILocation(line: 56, column: 14, scope: !737)
!762 = !DILocation(line: 56, column: 5, scope: !737)
!763 = distinct !DISubprogram(name: "__divdi3", scope: !39, file: !39, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !128)
!764 = !DILocation(line: 23, column: 20, scope: !763)
!765 = !DILocation(line: 24, column: 20, scope: !763)
!766 = !DILocation(line: 25, column: 12, scope: !763)
!767 = !DILocation(line: 25, column: 19, scope: !763)
!768 = !DILocation(line: 26, column: 12, scope: !763)
!769 = !DILocation(line: 26, column: 19, scope: !763)
!770 = !DILocation(line: 27, column: 9, scope: !763)
!771 = !DILocation(line: 28, column: 13, scope: !763)
!772 = !DILocation(line: 28, column: 44, scope: !763)
!773 = !DILocation(line: 28, column: 51, scope: !763)
!774 = !DILocation(line: 28, column: 5, scope: !763)
!775 = distinct !DISubprogram(name: "__udivmoddi4", scope: !97, file: !97, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !128)
!776 = !DILocation(line: 29, column: 7, scope: !775)
!777 = !DILocation(line: 29, column: 11, scope: !775)
!778 = !DILocation(line: 31, column: 7, scope: !775)
!779 = !DILocation(line: 31, column: 11, scope: !775)
!780 = !DILocation(line: 36, column: 11, scope: !775)
!781 = !DILocation(line: 36, column: 13, scope: !775)
!782 = !DILocation(line: 36, column: 18, scope: !775)
!783 = !DILocation(line: 36, column: 9, scope: !775)
!784 = !DILocation(line: 38, column: 15, scope: !775)
!785 = !DILocation(line: 38, column: 17, scope: !775)
!786 = !DILocation(line: 38, column: 22, scope: !775)
!787 = !DILocation(line: 38, column: 13, scope: !775)
!788 = !DILocation(line: 44, column: 17, scope: !775)
!789 = !DILocation(line: 45, column: 28, scope: !775)
!790 = !DILocation(line: 45, column: 38, scope: !775)
!791 = !DILocation(line: 45, column: 32, scope: !775)
!792 = !DILocation(line: 45, column: 24, scope: !775)
!793 = !DILocation(line: 45, column: 22, scope: !775)
!794 = !DILocation(line: 45, column: 17, scope: !775)
!795 = !DILocation(line: 46, column: 24, scope: !775)
!796 = !DILocation(line: 46, column: 34, scope: !775)
!797 = !DILocation(line: 46, column: 28, scope: !775)
!798 = !DILocation(line: 46, column: 20, scope: !775)
!799 = !DILocation(line: 46, column: 13, scope: !775)
!800 = !DILocation(line: 52, column: 13, scope: !775)
!801 = !DILocation(line: 53, column: 24, scope: !775)
!802 = !DILocation(line: 53, column: 20, scope: !775)
!803 = !DILocation(line: 53, column: 18, scope: !775)
!804 = !DILocation(line: 53, column: 13, scope: !775)
!805 = !DILocation(line: 54, column: 9, scope: !775)
!806 = !DILocation(line: 57, column: 13, scope: !775)
!807 = !DILocation(line: 57, column: 17, scope: !775)
!808 = !DILocation(line: 57, column: 9, scope: !775)
!809 = !DILocation(line: 59, column: 15, scope: !775)
!810 = !DILocation(line: 59, column: 17, scope: !775)
!811 = !DILocation(line: 59, column: 22, scope: !775)
!812 = !DILocation(line: 59, column: 13, scope: !775)
!813 = !DILocation(line: 65, column: 17, scope: !775)
!814 = !DILocation(line: 66, column: 26, scope: !775)
!815 = !DILocation(line: 66, column: 28, scope: !775)
!816 = !DILocation(line: 66, column: 39, scope: !775)
!817 = !DILocation(line: 66, column: 33, scope: !775)
!818 = !DILocation(line: 66, column: 24, scope: !775)
!819 = !DILocation(line: 66, column: 22, scope: !775)
!820 = !DILocation(line: 66, column: 17, scope: !775)
!821 = !DILocation(line: 67, column: 22, scope: !775)
!822 = !DILocation(line: 67, column: 24, scope: !775)
!823 = !DILocation(line: 67, column: 35, scope: !775)
!824 = !DILocation(line: 67, column: 29, scope: !775)
!825 = !DILocation(line: 67, column: 20, scope: !775)
!826 = !DILocation(line: 67, column: 13, scope: !775)
!827 = !DILocation(line: 70, column: 17, scope: !775)
!828 = !DILocation(line: 70, column: 21, scope: !775)
!829 = !DILocation(line: 70, column: 13, scope: !775)
!830 = !DILocation(line: 76, column: 17, scope: !775)
!831 = !DILocation(line: 78, column: 30, scope: !775)
!832 = !DILocation(line: 78, column: 32, scope: !775)
!833 = !DILocation(line: 78, column: 41, scope: !775)
!834 = !DILocation(line: 78, column: 43, scope: !775)
!835 = !DILocation(line: 78, column: 37, scope: !775)
!836 = !DILocation(line: 78, column: 19, scope: !775)
!837 = !DILocation(line: 78, column: 21, scope: !775)
!838 = !DILocation(line: 78, column: 26, scope: !775)
!839 = !DILocation(line: 79, column: 21, scope: !775)
!840 = !DILocation(line: 79, column: 25, scope: !775)
!841 = !DILocation(line: 80, column: 26, scope: !775)
!842 = !DILocation(line: 80, column: 22, scope: !775)
!843 = !DILocation(line: 81, column: 13, scope: !775)
!844 = !DILocation(line: 82, column: 22, scope: !775)
!845 = !DILocation(line: 82, column: 24, scope: !775)
!846 = !DILocation(line: 82, column: 33, scope: !775)
!847 = !DILocation(line: 82, column: 35, scope: !775)
!848 = !DILocation(line: 82, column: 29, scope: !775)
!849 = !DILocation(line: 82, column: 20, scope: !775)
!850 = !DILocation(line: 82, column: 13, scope: !775)
!851 = !DILocation(line: 88, column: 16, scope: !775)
!852 = !DILocation(line: 88, column: 18, scope: !775)
!853 = !DILocation(line: 88, column: 28, scope: !775)
!854 = !DILocation(line: 88, column: 30, scope: !775)
!855 = !DILocation(line: 88, column: 35, scope: !775)
!856 = !DILocation(line: 88, column: 23, scope: !775)
!857 = !DILocation(line: 88, column: 41, scope: !775)
!858 = !DILocation(line: 88, column: 13, scope: !775)
!859 = !DILocation(line: 90, column: 17, scope: !775)
!860 = !DILocation(line: 92, column: 31, scope: !775)
!861 = !DILocation(line: 92, column: 21, scope: !775)
!862 = !DILocation(line: 92, column: 25, scope: !775)
!863 = !DILocation(line: 93, column: 30, scope: !775)
!864 = !DILocation(line: 93, column: 32, scope: !775)
!865 = !DILocation(line: 93, column: 42, scope: !775)
!866 = !DILocation(line: 93, column: 44, scope: !775)
!867 = !DILocation(line: 93, column: 49, scope: !775)
!868 = !DILocation(line: 93, column: 37, scope: !775)
!869 = !DILocation(line: 93, column: 19, scope: !775)
!870 = !DILocation(line: 93, column: 21, scope: !775)
!871 = !DILocation(line: 93, column: 26, scope: !775)
!872 = !DILocation(line: 94, column: 26, scope: !775)
!873 = !DILocation(line: 94, column: 22, scope: !775)
!874 = !DILocation(line: 95, column: 13, scope: !775)
!875 = !DILocation(line: 96, column: 22, scope: !775)
!876 = !DILocation(line: 96, column: 24, scope: !775)
!877 = !DILocation(line: 96, column: 48, scope: !775)
!878 = !DILocation(line: 96, column: 50, scope: !775)
!879 = !DILocation(line: 96, column: 32, scope: !775)
!880 = !DILocation(line: 96, column: 29, scope: !775)
!881 = !DILocation(line: 96, column: 20, scope: !775)
!882 = !DILocation(line: 96, column: 13, scope: !775)
!883 = !DILocation(line: 102, column: 30, scope: !775)
!884 = !DILocation(line: 102, column: 32, scope: !775)
!885 = !DILocation(line: 102, column: 14, scope: !775)
!886 = !DILocation(line: 102, column: 56, scope: !775)
!887 = !DILocation(line: 102, column: 58, scope: !775)
!888 = !DILocation(line: 102, column: 40, scope: !775)
!889 = !DILocation(line: 102, column: 38, scope: !775)
!890 = !DILocation(line: 104, column: 16, scope: !775)
!891 = !DILocation(line: 104, column: 13, scope: !775)
!892 = !DILocation(line: 106, column: 16, scope: !775)
!893 = !DILocation(line: 107, column: 26, scope: !775)
!894 = !DILocation(line: 107, column: 22, scope: !775)
!895 = !DILocation(line: 107, column: 17, scope: !775)
!896 = !DILocation(line: 108, column: 13, scope: !775)
!897 = !DILocation(line: 110, column: 9, scope: !775)
!898 = !DILocation(line: 113, column: 13, scope: !775)
!899 = !DILocation(line: 113, column: 17, scope: !775)
!900 = !DILocation(line: 114, column: 24, scope: !775)
!901 = !DILocation(line: 114, column: 45, scope: !775)
!902 = !DILocation(line: 114, column: 28, scope: !775)
!903 = !DILocation(line: 114, column: 11, scope: !775)
!904 = !DILocation(line: 114, column: 13, scope: !775)
!905 = !DILocation(line: 114, column: 18, scope: !775)
!906 = !DILocation(line: 116, column: 22, scope: !775)
!907 = !DILocation(line: 116, column: 24, scope: !775)
!908 = !DILocation(line: 116, column: 29, scope: !775)
!909 = !DILocation(line: 116, column: 11, scope: !775)
!910 = !DILocation(line: 116, column: 13, scope: !775)
!911 = !DILocation(line: 116, column: 18, scope: !775)
!912 = !DILocation(line: 117, column: 22, scope: !775)
!913 = !DILocation(line: 117, column: 24, scope: !775)
!914 = !DILocation(line: 117, column: 46, scope: !775)
!915 = !DILocation(line: 117, column: 29, scope: !775)
!916 = !DILocation(line: 117, column: 60, scope: !775)
!917 = !DILocation(line: 117, column: 64, scope: !775)
!918 = !DILocation(line: 117, column: 53, scope: !775)
!919 = !DILocation(line: 117, column: 13, scope: !775)
!920 = !DILocation(line: 117, column: 17, scope: !775)
!921 = !DILocation(line: 118, column: 5, scope: !775)
!922 = !DILocation(line: 121, column: 15, scope: !775)
!923 = !DILocation(line: 121, column: 17, scope: !775)
!924 = !DILocation(line: 121, column: 22, scope: !775)
!925 = !DILocation(line: 121, column: 13, scope: !775)
!926 = !DILocation(line: 127, column: 22, scope: !775)
!927 = !DILocation(line: 127, column: 43, scope: !775)
!928 = !DILocation(line: 127, column: 17, scope: !775)
!929 = !DILocation(line: 129, column: 21, scope: !775)
!930 = !DILocation(line: 130, column: 32, scope: !775)
!931 = !DILocation(line: 130, column: 43, scope: !775)
!932 = !DILocation(line: 130, column: 47, scope: !775)
!933 = !DILocation(line: 130, column: 36, scope: !775)
!934 = !DILocation(line: 130, column: 28, scope: !775)
!935 = !DILocation(line: 130, column: 26, scope: !775)
!936 = !DILocation(line: 130, column: 21, scope: !775)
!937 = !DILocation(line: 131, column: 25, scope: !775)
!938 = !DILocation(line: 131, column: 29, scope: !775)
!939 = !DILocation(line: 131, column: 21, scope: !775)
!940 = !DILocation(line: 132, column: 30, scope: !775)
!941 = !DILocation(line: 132, column: 21, scope: !775)
!942 = !DILocation(line: 133, column: 40, scope: !775)
!943 = !DILocation(line: 133, column: 22, scope: !775)
!944 = !DILocation(line: 134, column: 30, scope: !775)
!945 = !DILocation(line: 134, column: 32, scope: !775)
!946 = !DILocation(line: 134, column: 37, scope: !775)
!947 = !DILocation(line: 134, column: 19, scope: !775)
!948 = !DILocation(line: 134, column: 21, scope: !775)
!949 = !DILocation(line: 134, column: 26, scope: !775)
!950 = !DILocation(line: 135, column: 30, scope: !775)
!951 = !DILocation(line: 135, column: 32, scope: !775)
!952 = !DILocation(line: 135, column: 54, scope: !775)
!953 = !DILocation(line: 135, column: 37, scope: !775)
!954 = !DILocation(line: 135, column: 68, scope: !775)
!955 = !DILocation(line: 135, column: 72, scope: !775)
!956 = !DILocation(line: 135, column: 61, scope: !775)
!957 = !DILocation(line: 135, column: 21, scope: !775)
!958 = !DILocation(line: 135, column: 25, scope: !775)
!959 = !DILocation(line: 136, column: 26, scope: !775)
!960 = !DILocation(line: 136, column: 17, scope: !775)
!961 = !DILocation(line: 142, column: 55, scope: !775)
!962 = !DILocation(line: 142, column: 37, scope: !775)
!963 = !DILocation(line: 142, column: 35, scope: !775)
!964 = !DILocation(line: 142, column: 78, scope: !775)
!965 = !DILocation(line: 142, column: 80, scope: !775)
!966 = !DILocation(line: 142, column: 62, scope: !775)
!967 = !DILocation(line: 142, column: 60, scope: !775)
!968 = !DILocation(line: 147, column: 20, scope: !775)
!969 = !DILocation(line: 147, column: 17, scope: !775)
!970 = !DILocation(line: 149, column: 21, scope: !775)
!971 = !DILocation(line: 149, column: 25, scope: !775)
!972 = !DILocation(line: 150, column: 32, scope: !775)
!973 = !DILocation(line: 150, column: 19, scope: !775)
!974 = !DILocation(line: 150, column: 21, scope: !775)
!975 = !DILocation(line: 150, column: 26, scope: !775)
!976 = !DILocation(line: 151, column: 19, scope: !775)
!977 = !DILocation(line: 151, column: 21, scope: !775)
!978 = !DILocation(line: 151, column: 26, scope: !775)
!979 = !DILocation(line: 152, column: 29, scope: !775)
!980 = !DILocation(line: 152, column: 31, scope: !775)
!981 = !DILocation(line: 152, column: 21, scope: !775)
!982 = !DILocation(line: 152, column: 25, scope: !775)
!983 = !DILocation(line: 153, column: 13, scope: !775)
!984 = !DILocation(line: 154, column: 25, scope: !775)
!985 = !DILocation(line: 154, column: 22, scope: !775)
!986 = !DILocation(line: 156, column: 21, scope: !775)
!987 = !DILocation(line: 156, column: 25, scope: !775)
!988 = !DILocation(line: 157, column: 32, scope: !775)
!989 = !DILocation(line: 157, column: 53, scope: !775)
!990 = !DILocation(line: 157, column: 36, scope: !775)
!991 = !DILocation(line: 157, column: 19, scope: !775)
!992 = !DILocation(line: 157, column: 21, scope: !775)
!993 = !DILocation(line: 157, column: 26, scope: !775)
!994 = !DILocation(line: 158, column: 30, scope: !775)
!995 = !DILocation(line: 158, column: 32, scope: !775)
!996 = !DILocation(line: 158, column: 37, scope: !775)
!997 = !DILocation(line: 158, column: 19, scope: !775)
!998 = !DILocation(line: 158, column: 21, scope: !775)
!999 = !DILocation(line: 158, column: 26, scope: !775)
!1000 = !DILocation(line: 159, column: 30, scope: !775)
!1001 = !DILocation(line: 159, column: 32, scope: !775)
!1002 = !DILocation(line: 159, column: 54, scope: !775)
!1003 = !DILocation(line: 159, column: 37, scope: !775)
!1004 = !DILocation(line: 159, column: 68, scope: !775)
!1005 = !DILocation(line: 159, column: 72, scope: !775)
!1006 = !DILocation(line: 159, column: 61, scope: !775)
!1007 = !DILocation(line: 159, column: 21, scope: !775)
!1008 = !DILocation(line: 159, column: 25, scope: !775)
!1009 = !DILocation(line: 160, column: 13, scope: !775)
!1010 = !DILocation(line: 163, column: 31, scope: !775)
!1011 = !DILocation(line: 163, column: 53, scope: !775)
!1012 = !DILocation(line: 163, column: 35, scope: !775)
!1013 = !DILocation(line: 163, column: 21, scope: !775)
!1014 = !DILocation(line: 163, column: 25, scope: !775)
!1015 = !DILocation(line: 164, column: 31, scope: !775)
!1016 = !DILocation(line: 164, column: 33, scope: !775)
!1017 = !DILocation(line: 164, column: 56, scope: !775)
!1018 = !DILocation(line: 164, column: 38, scope: !775)
!1019 = !DILocation(line: 165, column: 33, scope: !775)
!1020 = !DILocation(line: 165, column: 44, scope: !775)
!1021 = !DILocation(line: 165, column: 37, scope: !775)
!1022 = !DILocation(line: 164, column: 63, scope: !775)
!1023 = !DILocation(line: 164, column: 19, scope: !775)
!1024 = !DILocation(line: 164, column: 21, scope: !775)
!1025 = !DILocation(line: 164, column: 26, scope: !775)
!1026 = !DILocation(line: 166, column: 19, scope: !775)
!1027 = !DILocation(line: 166, column: 21, scope: !775)
!1028 = !DILocation(line: 166, column: 26, scope: !775)
!1029 = !DILocation(line: 167, column: 29, scope: !775)
!1030 = !DILocation(line: 167, column: 31, scope: !775)
!1031 = !DILocation(line: 167, column: 43, scope: !775)
!1032 = !DILocation(line: 167, column: 36, scope: !775)
!1033 = !DILocation(line: 167, column: 21, scope: !775)
!1034 = !DILocation(line: 167, column: 25, scope: !775)
!1035 = !DILocation(line: 169, column: 9, scope: !775)
!1036 = !DILocation(line: 176, column: 34, scope: !775)
!1037 = !DILocation(line: 176, column: 36, scope: !775)
!1038 = !DILocation(line: 176, column: 18, scope: !775)
!1039 = !DILocation(line: 176, column: 60, scope: !775)
!1040 = !DILocation(line: 176, column: 62, scope: !775)
!1041 = !DILocation(line: 176, column: 44, scope: !775)
!1042 = !DILocation(line: 176, column: 42, scope: !775)
!1043 = !DILocation(line: 178, column: 20, scope: !775)
!1044 = !DILocation(line: 178, column: 17, scope: !775)
!1045 = !DILocation(line: 180, column: 21, scope: !775)
!1046 = !DILocation(line: 181, column: 30, scope: !775)
!1047 = !DILocation(line: 181, column: 26, scope: !775)
!1048 = !DILocation(line: 181, column: 21, scope: !775)
!1049 = !DILocation(line: 182, column: 17, scope: !775)
!1050 = !DILocation(line: 184, column: 13, scope: !775)
!1051 = !DILocation(line: 187, column: 17, scope: !775)
!1052 = !DILocation(line: 187, column: 21, scope: !775)
!1053 = !DILocation(line: 188, column: 20, scope: !775)
!1054 = !DILocation(line: 188, column: 17, scope: !775)
!1055 = !DILocation(line: 190, column: 32, scope: !775)
!1056 = !DILocation(line: 190, column: 19, scope: !775)
!1057 = !DILocation(line: 190, column: 21, scope: !775)
!1058 = !DILocation(line: 190, column: 26, scope: !775)
!1059 = !DILocation(line: 191, column: 19, scope: !775)
!1060 = !DILocation(line: 191, column: 21, scope: !775)
!1061 = !DILocation(line: 191, column: 26, scope: !775)
!1062 = !DILocation(line: 192, column: 29, scope: !775)
!1063 = !DILocation(line: 192, column: 31, scope: !775)
!1064 = !DILocation(line: 192, column: 21, scope: !775)
!1065 = !DILocation(line: 192, column: 25, scope: !775)
!1066 = !DILocation(line: 193, column: 13, scope: !775)
!1067 = !DILocation(line: 196, column: 32, scope: !775)
!1068 = !DILocation(line: 196, column: 53, scope: !775)
!1069 = !DILocation(line: 196, column: 36, scope: !775)
!1070 = !DILocation(line: 196, column: 19, scope: !775)
!1071 = !DILocation(line: 196, column: 21, scope: !775)
!1072 = !DILocation(line: 196, column: 26, scope: !775)
!1073 = !DILocation(line: 197, column: 30, scope: !775)
!1074 = !DILocation(line: 197, column: 32, scope: !775)
!1075 = !DILocation(line: 197, column: 37, scope: !775)
!1076 = !DILocation(line: 197, column: 19, scope: !775)
!1077 = !DILocation(line: 197, column: 21, scope: !775)
!1078 = !DILocation(line: 197, column: 26, scope: !775)
!1079 = !DILocation(line: 198, column: 30, scope: !775)
!1080 = !DILocation(line: 198, column: 32, scope: !775)
!1081 = !DILocation(line: 198, column: 54, scope: !775)
!1082 = !DILocation(line: 198, column: 37, scope: !775)
!1083 = !DILocation(line: 198, column: 68, scope: !775)
!1084 = !DILocation(line: 198, column: 72, scope: !775)
!1085 = !DILocation(line: 198, column: 61, scope: !775)
!1086 = !DILocation(line: 198, column: 21, scope: !775)
!1087 = !DILocation(line: 198, column: 25, scope: !775)
!1088 = !DILocation(line: 0, scope: !775)
!1089 = !DILocation(line: 209, column: 5, scope: !775)
!1090 = !DILocation(line: 209, column: 15, scope: !775)
!1091 = !DILocation(line: 212, column: 23, scope: !775)
!1092 = !DILocation(line: 212, column: 25, scope: !775)
!1093 = !DILocation(line: 212, column: 43, scope: !775)
!1094 = !DILocation(line: 212, column: 36, scope: !775)
!1095 = !DILocation(line: 212, column: 11, scope: !775)
!1096 = !DILocation(line: 212, column: 13, scope: !775)
!1097 = !DILocation(line: 212, column: 18, scope: !775)
!1098 = !DILocation(line: 213, column: 41, scope: !775)
!1099 = !DILocation(line: 213, column: 43, scope: !775)
!1100 = !DILocation(line: 213, column: 36, scope: !775)
!1101 = !DILocation(line: 213, column: 13, scope: !775)
!1102 = !DILocation(line: 213, column: 18, scope: !775)
!1103 = !DILocation(line: 214, column: 23, scope: !775)
!1104 = !DILocation(line: 214, column: 25, scope: !775)
!1105 = !DILocation(line: 214, column: 43, scope: !775)
!1106 = !DILocation(line: 214, column: 36, scope: !775)
!1107 = !DILocation(line: 214, column: 11, scope: !775)
!1108 = !DILocation(line: 214, column: 13, scope: !775)
!1109 = !DILocation(line: 214, column: 18, scope: !775)
!1110 = !DILocation(line: 215, column: 30, scope: !775)
!1111 = !DILocation(line: 215, column: 36, scope: !775)
!1112 = !DILocation(line: 215, column: 13, scope: !775)
!1113 = !DILocation(line: 215, column: 18, scope: !775)
!1114 = !DILocation(line: 223, column: 37, scope: !775)
!1115 = !DILocation(line: 223, column: 45, scope: !775)
!1116 = !DILocation(line: 223, column: 49, scope: !775)
!1117 = !DILocation(line: 225, column: 24, scope: !775)
!1118 = !DILocation(line: 225, column: 11, scope: !775)
!1119 = !DILocation(line: 225, column: 15, scope: !775)
!1120 = !DILocation(line: 226, column: 5, scope: !775)
!1121 = !DILocation(line: 224, column: 19, scope: !775)
!1122 = !DILocation(line: 224, column: 17, scope: !775)
!1123 = !DILocation(line: 209, column: 20, scope: !775)
!1124 = distinct !{!1124, !1089, !1120, !139}
!1125 = !DILocation(line: 227, column: 16, scope: !775)
!1126 = !DILocation(line: 227, column: 20, scope: !775)
!1127 = !DILocation(line: 227, column: 28, scope: !775)
!1128 = !DILocation(line: 227, column: 26, scope: !775)
!1129 = !DILocation(line: 227, column: 7, scope: !775)
!1130 = !DILocation(line: 227, column: 11, scope: !775)
!1131 = !DILocation(line: 228, column: 9, scope: !775)
!1132 = !DILocation(line: 229, column: 18, scope: !775)
!1133 = !DILocation(line: 229, column: 14, scope: !775)
!1134 = !DILocation(line: 229, column: 9, scope: !775)
!1135 = !DILocation(line: 230, column: 14, scope: !775)
!1136 = !DILocation(line: 230, column: 5, scope: !775)
!1137 = !DILocation(line: 231, column: 1, scope: !775)
!1138 = distinct !DISubprogram(name: "__divmoddi4", scope: !41, file: !41, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !128)
!1139 = !DILocation(line: 22, column: 14, scope: !1138)
!1140 = !DILocation(line: 23, column: 16, scope: !1138)
!1141 = !DILocation(line: 23, column: 12, scope: !1138)
!1142 = !DILocation(line: 23, column: 8, scope: !1138)
!1143 = !DILocation(line: 24, column: 3, scope: !1138)
!1144 = distinct !DISubprogram(name: "__divmodsi4", scope: !43, file: !43, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !128)
!1145 = !DILocation(line: 22, column: 14, scope: !1144)
!1146 = !DILocation(line: 23, column: 16, scope: !1144)
!1147 = !DILocation(line: 23, column: 12, scope: !1144)
!1148 = !DILocation(line: 23, column: 8, scope: !1144)
!1149 = !DILocation(line: 24, column: 3, scope: !1144)
!1150 = distinct !DISubprogram(name: "__divsi3", scope: !45, file: !45, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !128)
!1151 = !DILocation(line: 25, column: 20, scope: !1150)
!1152 = !DILocation(line: 26, column: 20, scope: !1150)
!1153 = !DILocation(line: 27, column: 12, scope: !1150)
!1154 = !DILocation(line: 27, column: 19, scope: !1150)
!1155 = !DILocation(line: 28, column: 12, scope: !1150)
!1156 = !DILocation(line: 28, column: 19, scope: !1150)
!1157 = !DILocation(line: 29, column: 9, scope: !1150)
!1158 = !DILocation(line: 36, column: 22, scope: !1150)
!1159 = !DILocation(line: 36, column: 33, scope: !1150)
!1160 = !DILocation(line: 36, column: 40, scope: !1150)
!1161 = !DILocation(line: 36, column: 5, scope: !1150)
!1162 = distinct !DISubprogram(name: "__ffsdi2", scope: !49, file: !49, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !128)
!1163 = !DILocation(line: 25, column: 7, scope: !1162)
!1164 = !DILocation(line: 25, column: 11, scope: !1162)
!1165 = !DILocation(line: 26, column: 13, scope: !1162)
!1166 = !DILocation(line: 26, column: 17, scope: !1162)
!1167 = !DILocation(line: 26, column: 9, scope: !1162)
!1168 = !DILocation(line: 28, column: 15, scope: !1162)
!1169 = !DILocation(line: 28, column: 17, scope: !1162)
!1170 = !DILocation(line: 28, column: 22, scope: !1162)
!1171 = !DILocation(line: 28, column: 13, scope: !1162)
!1172 = !DILocation(line: 29, column: 13, scope: !1162)
!1173 = !DILocation(line: 30, column: 32, scope: !1162)
!1174 = !DILocation(line: 30, column: 34, scope: !1162)
!1175 = !DILocation(line: 30, column: 16, scope: !1162)
!1176 = !DILocation(line: 30, column: 40, scope: !1162)
!1177 = !DILocation(line: 30, column: 9, scope: !1162)
!1178 = !DILocation(line: 32, column: 30, scope: !1162)
!1179 = !DILocation(line: 32, column: 12, scope: !1162)
!1180 = !DILocation(line: 32, column: 35, scope: !1162)
!1181 = !DILocation(line: 32, column: 5, scope: !1162)
!1182 = !DILocation(line: 0, scope: !1162)
!1183 = !DILocation(line: 33, column: 1, scope: !1162)
!1184 = distinct !DISubprogram(name: "__ffssi2", scope: !51, file: !51, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !128)
!1185 = !DILocation(line: 24, column: 11, scope: !1184)
!1186 = !DILocation(line: 24, column: 9, scope: !1184)
!1187 = !DILocation(line: 26, column: 9, scope: !1184)
!1188 = !DILocation(line: 28, column: 12, scope: !1184)
!1189 = !DILocation(line: 28, column: 29, scope: !1184)
!1190 = !DILocation(line: 28, column: 5, scope: !1184)
!1191 = !DILocation(line: 0, scope: !1184)
!1192 = !DILocation(line: 29, column: 1, scope: !1184)
!1193 = distinct !DISubprogram(name: "__lshrdi3", scope: !57, file: !57, line: 24, type: !127, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !128)
!1194 = !DILocation(line: 29, column: 11, scope: !1193)
!1195 = !DILocation(line: 29, column: 15, scope: !1193)
!1196 = !DILocation(line: 30, column: 11, scope: !1193)
!1197 = !DILocation(line: 30, column: 9, scope: !1193)
!1198 = !DILocation(line: 32, column: 16, scope: !1193)
!1199 = !DILocation(line: 32, column: 18, scope: !1193)
!1200 = !DILocation(line: 32, column: 23, scope: !1193)
!1201 = !DILocation(line: 33, column: 30, scope: !1193)
!1202 = !DILocation(line: 33, column: 32, scope: !1193)
!1203 = !DILocation(line: 33, column: 43, scope: !1193)
!1204 = !DILocation(line: 33, column: 37, scope: !1193)
!1205 = !DILocation(line: 33, column: 18, scope: !1193)
!1206 = !DILocation(line: 33, column: 22, scope: !1193)
!1207 = !DILocation(line: 34, column: 5, scope: !1193)
!1208 = !DILocation(line: 37, column: 15, scope: !1193)
!1209 = !DILocation(line: 37, column: 13, scope: !1193)
!1210 = !DILocation(line: 38, column: 13, scope: !1193)
!1211 = !DILocation(line: 39, column: 32, scope: !1193)
!1212 = !DILocation(line: 39, column: 34, scope: !1193)
!1213 = !DILocation(line: 39, column: 39, scope: !1193)
!1214 = !DILocation(line: 39, column: 16, scope: !1193)
!1215 = !DILocation(line: 39, column: 18, scope: !1193)
!1216 = !DILocation(line: 39, column: 24, scope: !1193)
!1217 = !DILocation(line: 40, column: 31, scope: !1193)
!1218 = !DILocation(line: 40, column: 33, scope: !1193)
!1219 = !DILocation(line: 40, column: 55, scope: !1193)
!1220 = !DILocation(line: 40, column: 38, scope: !1193)
!1221 = !DILocation(line: 40, column: 72, scope: !1193)
!1222 = !DILocation(line: 40, column: 76, scope: !1193)
!1223 = !DILocation(line: 40, column: 61, scope: !1193)
!1224 = !DILocation(line: 40, column: 18, scope: !1193)
!1225 = !DILocation(line: 40, column: 22, scope: !1193)
!1226 = !DILocation(line: 42, column: 19, scope: !1193)
!1227 = !DILocation(line: 42, column: 5, scope: !1193)
!1228 = !DILocation(line: 0, scope: !1193)
!1229 = !DILocation(line: 43, column: 1, scope: !1193)
!1230 = distinct !DISubprogram(name: "__moddi3", scope: !61, file: !61, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !128)
!1231 = !DILocation(line: 24, column: 17, scope: !1230)
!1232 = !DILocation(line: 25, column: 11, scope: !1230)
!1233 = !DILocation(line: 26, column: 12, scope: !1230)
!1234 = !DILocation(line: 26, column: 17, scope: !1230)
!1235 = !DILocation(line: 28, column: 5, scope: !1230)
!1236 = !DILocation(line: 29, column: 21, scope: !1230)
!1237 = !DILocation(line: 29, column: 23, scope: !1230)
!1238 = !DILocation(line: 29, column: 28, scope: !1230)
!1239 = !DILocation(line: 29, column: 5, scope: !1230)
!1240 = distinct !DISubprogram(name: "__modsi3", scope: !63, file: !63, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !128)
!1241 = !DILocation(line: 22, column: 16, scope: !1240)
!1242 = !DILocation(line: 22, column: 31, scope: !1240)
!1243 = !DILocation(line: 22, column: 14, scope: !1240)
!1244 = !DILocation(line: 22, column: 5, scope: !1240)
!1245 = distinct !DISubprogram(name: "__mulvdi3", scope: !67, file: !67, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !128)
!1246 = !DILocation(line: 27, column: 11, scope: !1245)
!1247 = !DILocation(line: 27, column: 9, scope: !1245)
!1248 = !DILocation(line: 29, column: 15, scope: !1245)
!1249 = !DILocation(line: 29, column: 20, scope: !1245)
!1250 = !DILocation(line: 29, column: 25, scope: !1245)
!1251 = !DILocation(line: 29, column: 13, scope: !1245)
!1252 = !DILocation(line: 30, column: 13, scope: !1245)
!1253 = !DILocation(line: 31, column: 9, scope: !1245)
!1254 = !DILocation(line: 33, column: 11, scope: !1245)
!1255 = !DILocation(line: 33, column: 9, scope: !1245)
!1256 = !DILocation(line: 35, column: 15, scope: !1245)
!1257 = !DILocation(line: 35, column: 20, scope: !1245)
!1258 = !DILocation(line: 35, column: 25, scope: !1245)
!1259 = !DILocation(line: 35, column: 13, scope: !1245)
!1260 = !DILocation(line: 36, column: 13, scope: !1245)
!1261 = !DILocation(line: 37, column: 9, scope: !1245)
!1262 = !DILocation(line: 39, column: 19, scope: !1245)
!1263 = !DILocation(line: 40, column: 23, scope: !1245)
!1264 = !DILocation(line: 40, column: 29, scope: !1245)
!1265 = !DILocation(line: 41, column: 19, scope: !1245)
!1266 = !DILocation(line: 42, column: 23, scope: !1245)
!1267 = !DILocation(line: 42, column: 29, scope: !1245)
!1268 = !DILocation(line: 43, column: 15, scope: !1245)
!1269 = !DILocation(line: 43, column: 19, scope: !1245)
!1270 = !DILocation(line: 43, column: 28, scope: !1245)
!1271 = !DILocation(line: 43, column: 9, scope: !1245)
!1272 = !DILocation(line: 44, column: 9, scope: !1245)
!1273 = !DILocation(line: 45, column: 12, scope: !1245)
!1274 = !DILocation(line: 45, column: 9, scope: !1245)
!1275 = !DILocation(line: 47, column: 25, scope: !1245)
!1276 = !DILocation(line: 47, column: 19, scope: !1245)
!1277 = !DILocation(line: 47, column: 13, scope: !1245)
!1278 = !DILocation(line: 48, column: 13, scope: !1245)
!1279 = !DILocation(line: 49, column: 5, scope: !1245)
!1280 = !DILocation(line: 52, column: 27, scope: !1245)
!1281 = !DILocation(line: 52, column: 25, scope: !1245)
!1282 = !DILocation(line: 52, column: 19, scope: !1245)
!1283 = !DILocation(line: 52, column: 13, scope: !1245)
!1284 = !DILocation(line: 53, column: 13, scope: !1245)
!1285 = !DILocation(line: 55, column: 5, scope: !1245)
!1286 = !DILocation(line: 0, scope: !1245)
!1287 = !DILocation(line: 56, column: 1, scope: !1245)
!1288 = distinct !DISubprogram(name: "__mulvsi3", scope: !69, file: !69, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !128)
!1289 = !DILocation(line: 27, column: 11, scope: !1288)
!1290 = !DILocation(line: 27, column: 9, scope: !1288)
!1291 = !DILocation(line: 29, column: 15, scope: !1288)
!1292 = !DILocation(line: 29, column: 20, scope: !1288)
!1293 = !DILocation(line: 29, column: 25, scope: !1288)
!1294 = !DILocation(line: 29, column: 13, scope: !1288)
!1295 = !DILocation(line: 30, column: 13, scope: !1288)
!1296 = !DILocation(line: 31, column: 9, scope: !1288)
!1297 = !DILocation(line: 33, column: 11, scope: !1288)
!1298 = !DILocation(line: 33, column: 9, scope: !1288)
!1299 = !DILocation(line: 35, column: 15, scope: !1288)
!1300 = !DILocation(line: 35, column: 20, scope: !1288)
!1301 = !DILocation(line: 35, column: 25, scope: !1288)
!1302 = !DILocation(line: 35, column: 13, scope: !1288)
!1303 = !DILocation(line: 36, column: 13, scope: !1288)
!1304 = !DILocation(line: 37, column: 9, scope: !1288)
!1305 = !DILocation(line: 39, column: 19, scope: !1288)
!1306 = !DILocation(line: 40, column: 23, scope: !1288)
!1307 = !DILocation(line: 40, column: 29, scope: !1288)
!1308 = !DILocation(line: 41, column: 19, scope: !1288)
!1309 = !DILocation(line: 42, column: 23, scope: !1288)
!1310 = !DILocation(line: 42, column: 29, scope: !1288)
!1311 = !DILocation(line: 43, column: 15, scope: !1288)
!1312 = !DILocation(line: 43, column: 19, scope: !1288)
!1313 = !DILocation(line: 43, column: 28, scope: !1288)
!1314 = !DILocation(line: 43, column: 9, scope: !1288)
!1315 = !DILocation(line: 44, column: 9, scope: !1288)
!1316 = !DILocation(line: 45, column: 12, scope: !1288)
!1317 = !DILocation(line: 45, column: 9, scope: !1288)
!1318 = !DILocation(line: 47, column: 25, scope: !1288)
!1319 = !DILocation(line: 47, column: 19, scope: !1288)
!1320 = !DILocation(line: 47, column: 13, scope: !1288)
!1321 = !DILocation(line: 48, column: 13, scope: !1288)
!1322 = !DILocation(line: 49, column: 5, scope: !1288)
!1323 = !DILocation(line: 52, column: 27, scope: !1288)
!1324 = !DILocation(line: 52, column: 25, scope: !1288)
!1325 = !DILocation(line: 52, column: 19, scope: !1288)
!1326 = !DILocation(line: 52, column: 13, scope: !1288)
!1327 = !DILocation(line: 53, column: 13, scope: !1288)
!1328 = !DILocation(line: 55, column: 5, scope: !1288)
!1329 = !DILocation(line: 0, scope: !1288)
!1330 = !DILocation(line: 56, column: 1, scope: !1288)
!1331 = distinct !DISubprogram(name: "__paritydi2", scope: !73, file: !73, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !128)
!1332 = !DILocation(line: 23, column: 7, scope: !1331)
!1333 = !DILocation(line: 23, column: 11, scope: !1331)
!1334 = !DILocation(line: 24, column: 26, scope: !1331)
!1335 = !DILocation(line: 24, column: 28, scope: !1331)
!1336 = !DILocation(line: 24, column: 39, scope: !1331)
!1337 = !DILocation(line: 24, column: 33, scope: !1331)
!1338 = !DILocation(line: 24, column: 12, scope: !1331)
!1339 = !DILocation(line: 24, column: 5, scope: !1331)
!1340 = distinct !DISubprogram(name: "__paritysi2", scope: !75, file: !75, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !128)
!1341 = !DILocation(line: 23, column: 12, scope: !1340)
!1342 = !DILocation(line: 23, column: 7, scope: !1340)
!1343 = !DILocation(line: 24, column: 12, scope: !1340)
!1344 = !DILocation(line: 24, column: 7, scope: !1340)
!1345 = !DILocation(line: 25, column: 12, scope: !1340)
!1346 = !DILocation(line: 25, column: 7, scope: !1340)
!1347 = !DILocation(line: 26, column: 26, scope: !1340)
!1348 = !DILocation(line: 26, column: 20, scope: !1340)
!1349 = !DILocation(line: 26, column: 34, scope: !1340)
!1350 = !DILocation(line: 26, column: 5, scope: !1340)
!1351 = distinct !DISubprogram(name: "__popcountdi2", scope: !79, file: !79, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !128)
!1352 = !DILocation(line: 23, column: 20, scope: !1351)
!1353 = !DILocation(line: 23, column: 26, scope: !1351)
!1354 = !DILocation(line: 23, column: 13, scope: !1351)
!1355 = !DILocation(line: 25, column: 15, scope: !1351)
!1356 = !DILocation(line: 25, column: 21, scope: !1351)
!1357 = !DILocation(line: 25, column: 52, scope: !1351)
!1358 = !DILocation(line: 25, column: 46, scope: !1351)
!1359 = !DILocation(line: 27, column: 20, scope: !1351)
!1360 = !DILocation(line: 27, column: 14, scope: !1351)
!1361 = !DILocation(line: 27, column: 27, scope: !1351)
!1362 = !DILocation(line: 29, column: 34, scope: !1351)
!1363 = !DILocation(line: 29, column: 28, scope: !1351)
!1364 = !DILocation(line: 29, column: 16, scope: !1351)
!1365 = !DILocation(line: 32, column: 16, scope: !1351)
!1366 = !DILocation(line: 32, column: 11, scope: !1351)
!1367 = !DILocation(line: 35, column: 20, scope: !1351)
!1368 = !DILocation(line: 35, column: 15, scope: !1351)
!1369 = !DILocation(line: 35, column: 27, scope: !1351)
!1370 = !DILocation(line: 35, column: 5, scope: !1351)
!1371 = distinct !DISubprogram(name: "__popcountsi2", scope: !81, file: !81, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !128)
!1372 = !DILocation(line: 23, column: 17, scope: !1371)
!1373 = !DILocation(line: 23, column: 23, scope: !1371)
!1374 = !DILocation(line: 23, column: 11, scope: !1371)
!1375 = !DILocation(line: 25, column: 13, scope: !1371)
!1376 = !DILocation(line: 25, column: 19, scope: !1371)
!1377 = !DILocation(line: 25, column: 38, scope: !1371)
!1378 = !DILocation(line: 25, column: 33, scope: !1371)
!1379 = !DILocation(line: 27, column: 17, scope: !1371)
!1380 = !DILocation(line: 27, column: 12, scope: !1371)
!1381 = !DILocation(line: 27, column: 24, scope: !1371)
!1382 = !DILocation(line: 29, column: 17, scope: !1371)
!1383 = !DILocation(line: 29, column: 12, scope: !1371)
!1384 = !DILocation(line: 32, column: 20, scope: !1371)
!1385 = !DILocation(line: 32, column: 15, scope: !1371)
!1386 = !DILocation(line: 32, column: 27, scope: !1371)
!1387 = !DILocation(line: 32, column: 5, scope: !1371)
!1388 = distinct !DISubprogram(name: "__subvdi3", scope: !85, file: !85, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !128)
!1389 = !DILocation(line: 24, column: 27, scope: !1388)
!1390 = !DILocation(line: 25, column: 11, scope: !1388)
!1391 = !DILocation(line: 25, column: 9, scope: !1388)
!1392 = !DILocation(line: 27, column: 15, scope: !1388)
!1393 = !DILocation(line: 27, column: 13, scope: !1388)
!1394 = !DILocation(line: 28, column: 13, scope: !1388)
!1395 = !DILocation(line: 29, column: 5, scope: !1388)
!1396 = !DILocation(line: 32, column: 15, scope: !1388)
!1397 = !DILocation(line: 32, column: 13, scope: !1388)
!1398 = !DILocation(line: 33, column: 13, scope: !1388)
!1399 = !DILocation(line: 35, column: 5, scope: !1388)
!1400 = distinct !DISubprogram(name: "__subvsi3", scope: !87, file: !87, line: 22, type: !127, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !128)
!1401 = !DILocation(line: 24, column: 27, scope: !1400)
!1402 = !DILocation(line: 25, column: 11, scope: !1400)
!1403 = !DILocation(line: 25, column: 9, scope: !1400)
!1404 = !DILocation(line: 27, column: 15, scope: !1400)
!1405 = !DILocation(line: 27, column: 13, scope: !1400)
!1406 = !DILocation(line: 28, column: 13, scope: !1400)
!1407 = !DILocation(line: 29, column: 5, scope: !1400)
!1408 = !DILocation(line: 32, column: 15, scope: !1400)
!1409 = !DILocation(line: 32, column: 13, scope: !1400)
!1410 = !DILocation(line: 33, column: 13, scope: !1400)
!1411 = !DILocation(line: 35, column: 5, scope: !1400)
!1412 = distinct !DISubprogram(name: "__ucmpdi2", scope: !91, file: !91, line: 23, type: !127, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !128)
!1413 = !DILocation(line: 26, column: 7, scope: !1412)
!1414 = !DILocation(line: 26, column: 11, scope: !1412)
!1415 = !DILocation(line: 28, column: 7, scope: !1412)
!1416 = !DILocation(line: 28, column: 11, scope: !1412)
!1417 = !DILocation(line: 29, column: 11, scope: !1412)
!1418 = !DILocation(line: 29, column: 13, scope: !1412)
!1419 = !DILocation(line: 29, column: 22, scope: !1412)
!1420 = !DILocation(line: 29, column: 24, scope: !1412)
!1421 = !DILocation(line: 29, column: 18, scope: !1412)
!1422 = !DILocation(line: 29, column: 9, scope: !1412)
!1423 = !DILocation(line: 30, column: 9, scope: !1412)
!1424 = !DILocation(line: 31, column: 11, scope: !1412)
!1425 = !DILocation(line: 31, column: 13, scope: !1412)
!1426 = !DILocation(line: 31, column: 22, scope: !1412)
!1427 = !DILocation(line: 31, column: 24, scope: !1412)
!1428 = !DILocation(line: 31, column: 18, scope: !1412)
!1429 = !DILocation(line: 31, column: 9, scope: !1412)
!1430 = !DILocation(line: 32, column: 9, scope: !1412)
!1431 = !DILocation(line: 33, column: 13, scope: !1412)
!1432 = !DILocation(line: 33, column: 23, scope: !1412)
!1433 = !DILocation(line: 33, column: 17, scope: !1412)
!1434 = !DILocation(line: 33, column: 9, scope: !1412)
!1435 = !DILocation(line: 34, column: 9, scope: !1412)
!1436 = !DILocation(line: 35, column: 13, scope: !1412)
!1437 = !DILocation(line: 35, column: 23, scope: !1412)
!1438 = !DILocation(line: 35, column: 17, scope: !1412)
!1439 = !DILocation(line: 35, column: 9, scope: !1412)
!1440 = !DILocation(line: 36, column: 9, scope: !1412)
!1441 = !DILocation(line: 37, column: 5, scope: !1412)
!1442 = !DILocation(line: 0, scope: !1412)
!1443 = !DILocation(line: 38, column: 1, scope: !1412)
!1444 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !91, file: !91, line: 46, type: !127, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !128)
!1445 = !DILocation(line: 48, column: 9, scope: !1444)
!1446 = !DILocation(line: 48, column: 25, scope: !1444)
!1447 = !DILocation(line: 48, column: 2, scope: !1444)
!1448 = distinct !DISubprogram(name: "__udivdi3", scope: !95, file: !95, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !128)
!1449 = !DILocation(line: 22, column: 12, scope: !1448)
!1450 = !DILocation(line: 22, column: 5, scope: !1448)
!1451 = distinct !DISubprogram(name: "__udivmodsi4", scope: !99, file: !99, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !128)
!1452 = !DILocation(line: 22, column: 14, scope: !1451)
!1453 = !DILocation(line: 23, column: 16, scope: !1451)
!1454 = !DILocation(line: 23, column: 12, scope: !1451)
!1455 = !DILocation(line: 23, column: 8, scope: !1451)
!1456 = !DILocation(line: 24, column: 3, scope: !1451)
!1457 = distinct !DISubprogram(name: "__udivsi3", scope: !103, file: !103, line: 25, type: !127, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !128)
!1458 = !DILocation(line: 32, column: 11, scope: !1457)
!1459 = !DILocation(line: 32, column: 9, scope: !1457)
!1460 = !DILocation(line: 33, column: 9, scope: !1457)
!1461 = !DILocation(line: 34, column: 11, scope: !1457)
!1462 = !DILocation(line: 34, column: 9, scope: !1457)
!1463 = !DILocation(line: 35, column: 9, scope: !1457)
!1464 = !DILocation(line: 36, column: 10, scope: !1457)
!1465 = !DILocation(line: 36, column: 29, scope: !1457)
!1466 = !DILocation(line: 36, column: 27, scope: !1457)
!1467 = !DILocation(line: 38, column: 12, scope: !1457)
!1468 = !DILocation(line: 38, column: 9, scope: !1457)
!1469 = !DILocation(line: 39, column: 9, scope: !1457)
!1470 = !DILocation(line: 40, column: 12, scope: !1457)
!1471 = !DILocation(line: 40, column: 9, scope: !1457)
!1472 = !DILocation(line: 41, column: 9, scope: !1457)
!1473 = !DILocation(line: 42, column: 5, scope: !1457)
!1474 = !DILocation(line: 45, column: 28, scope: !1457)
!1475 = !DILocation(line: 45, column: 11, scope: !1457)
!1476 = !DILocation(line: 46, column: 11, scope: !1457)
!1477 = !DILocation(line: 48, column: 5, scope: !1457)
!1478 = !DILocation(line: 0, scope: !1457)
!1479 = !DILocation(line: 48, column: 15, scope: !1457)
!1480 = !DILocation(line: 51, column: 22, scope: !1457)
!1481 = !DILocation(line: 60, column: 41, scope: !1457)
!1482 = !DILocation(line: 63, column: 5, scope: !1457)
!1483 = !DILocation(line: 62, column: 16, scope: !1457)
!1484 = !DILocation(line: 62, column: 11, scope: !1457)
!1485 = !DILocation(line: 61, column: 19, scope: !1457)
!1486 = !DILocation(line: 52, column: 16, scope: !1457)
!1487 = !DILocation(line: 52, column: 22, scope: !1457)
!1488 = !DILocation(line: 48, column: 20, scope: !1457)
!1489 = distinct !{!1489, !1477, !1482, !139}
!1490 = !DILocation(line: 64, column: 12, scope: !1457)
!1491 = !DILocation(line: 64, column: 18, scope: !1457)
!1492 = !DILocation(line: 65, column: 5, scope: !1457)
!1493 = !DILocation(line: 66, column: 1, scope: !1457)
!1494 = distinct !DISubprogram(name: "__umoddi3", scope: !107, file: !107, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !128)
!1495 = !DILocation(line: 23, column: 5, scope: !1494)
!1496 = !DILocation(line: 24, column: 12, scope: !1494)
!1497 = !DILocation(line: 24, column: 5, scope: !1494)
!1498 = distinct !DISubprogram(name: "__umodsi3", scope: !109, file: !109, line: 20, type: !127, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !128)
!1499 = !DILocation(line: 22, column: 16, scope: !1498)
!1500 = !DILocation(line: 22, column: 32, scope: !1498)
!1501 = !DILocation(line: 22, column: 14, scope: !1498)
!1502 = !DILocation(line: 22, column: 5, scope: !1498)
!1503 = distinct !DISubprogram(name: "memcpy", scope: !113, file: !113, line: 3, type: !127, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !128)
!1504 = !DILocation(line: 8, column: 6, scope: !1503)
!1505 = !DILocation(line: 0, scope: !1503)
!1506 = !DILocation(line: 8, column: 19, scope: !1503)
!1507 = !DILocation(line: 8, column: 2, scope: !1503)
!1508 = !DILocation(line: 9, column: 21, scope: !1503)
!1509 = !DILocation(line: 9, column: 3, scope: !1503)
!1510 = !DILocation(line: 9, column: 19, scope: !1503)
!1511 = !DILocation(line: 10, column: 2, scope: !1503)
!1512 = !DILocation(line: 8, column: 26, scope: !1503)
!1513 = distinct !{!1513, !1507, !1511, !139}
!1514 = !DILocation(line: 11, column: 1, scope: !1503)
!1515 = distinct !DISubprogram(name: "memset", scope: !113, file: !113, line: 13, type: !127, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !128)
!1516 = !DILocation(line: 17, column: 6, scope: !1515)
!1517 = !DILocation(line: 0, scope: !1515)
!1518 = !DILocation(line: 17, column: 19, scope: !1515)
!1519 = !DILocation(line: 17, column: 2, scope: !1515)
!1520 = !DILocation(line: 18, column: 13, scope: !1515)
!1521 = !DILocation(line: 18, column: 3, scope: !1515)
!1522 = !DILocation(line: 18, column: 11, scope: !1515)
!1523 = !DILocation(line: 19, column: 2, scope: !1515)
!1524 = !DILocation(line: 17, column: 26, scope: !1515)
!1525 = distinct !{!1525, !1519, !1523, !139}
!1526 = !DILocation(line: 20, column: 2, scope: !1515)
