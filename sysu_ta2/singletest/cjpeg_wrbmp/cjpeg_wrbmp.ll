; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.cjpeg_wrbmp_jpeg_decompress_struct = type { %struct.cjpeg_wrbmp_jpeg_error_mgr*, %struct.cjpeg_wrbmp_jpeg_memory_mgr*, %struct.cjpeg_wrbmp_jpeg_progress_mgr*, i8*, i32, i32, %struct.cjpeg_wrbmp_jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.CJPEG_WRBMP_JQUANT_TBL*], [4 x %struct.CJPEG_WRBMP_JHUFF_TBL*], [4 x %struct.CJPEG_WRBMP_JHUFF_TBL*], i32, %struct.cjpeg_wrbmp_jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, %struct.cjpeg_wrbmp_jpeg_marker_struct*, i32, i32, i32, i32, i8*, i32, [4 x %struct.cjpeg_wrbmp_jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.cjpeg_wrbmp_jpeg_error_mgr = type { {}*, void (%struct.cjpeg_wrbmp_jpeg_common_struct*, i32)*, {}*, void (%struct.cjpeg_wrbmp_jpeg_common_struct*, i8*)*, {}*, i32, i32, i32, i8**, i32, i8**, i32, i32 }
%struct.cjpeg_wrbmp_jpeg_common_struct = type { %struct.cjpeg_wrbmp_jpeg_error_mgr*, %struct.cjpeg_wrbmp_jpeg_memory_mgr*, %struct.cjpeg_wrbmp_jpeg_progress_mgr*, i8*, i32, i32 }
%struct.cjpeg_wrbmp_jpeg_memory_mgr = type { i8* (%struct.cjpeg_wrbmp_jpeg_common_struct*, i32, i32)*, i8* (%struct.cjpeg_wrbmp_jpeg_common_struct*, i32, i32)*, i8** (%struct.cjpeg_wrbmp_jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.cjpeg_wrbmp_jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.cjpeg_wrbmp_jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.cjpeg_wrbmp_jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.cjpeg_wrbmp_jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.cjpeg_wrbmp_jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.cjpeg_wrbmp_jpeg_common_struct*, i32)*, {}*, i32, i32 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.cjpeg_wrbmp_jpeg_progress_mgr = type { void (%struct.cjpeg_wrbmp_jpeg_common_struct*)*, i32, i32, i32, i32 }
%struct.cjpeg_wrbmp_jpeg_source_mgr = type { i8*, i32, void (%struct.cjpeg_wrbmp_jpeg_decompress_struct*)*, i32 (%struct.cjpeg_wrbmp_jpeg_decompress_struct*)*, void (%struct.cjpeg_wrbmp_jpeg_decompress_struct*, i32)*, i32 (%struct.cjpeg_wrbmp_jpeg_decompress_struct*, i32)*, void (%struct.cjpeg_wrbmp_jpeg_decompress_struct*)* }
%struct.CJPEG_WRBMP_JQUANT_TBL = type { [64 x i16], i32 }
%struct.CJPEG_WRBMP_JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.cjpeg_wrbmp_jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.CJPEG_WRBMP_JQUANT_TBL*, i8* }
%struct.cjpeg_wrbmp_jpeg_marker_struct = type { %struct.cjpeg_wrbmp_jpeg_marker_struct*, i8, i32, i32, i8* }
%struct.jpeg_decomp_master = type opaque
%struct.jpeg_d_main_controller = type opaque
%struct.jpeg_d_coef_controller = type opaque
%struct.jpeg_d_post_controller = type opaque
%struct.jpeg_input_controller = type opaque
%struct.jpeg_marker_reader = type opaque
%struct.jpeg_entropy_decoder = type opaque
%struct.jpeg_inverse_dct = type opaque
%struct.jpeg_upsampler = type opaque
%struct.jpeg_color_deconverter = type opaque
%struct.jpeg_color_quantizer = type opaque
%struct.cjpeg_wrbmp_djpeg_dest_struct = type { void (%struct.cjpeg_wrbmp_jpeg_decompress_struct*, %struct.cjpeg_wrbmp_djpeg_dest_struct*)*, void (%struct.cjpeg_wrbmp_jpeg_decompress_struct*, %struct.cjpeg_wrbmp_djpeg_dest_struct*, i32)*, void (%struct.cjpeg_wrbmp_jpeg_decompress_struct*, %struct.cjpeg_wrbmp_djpeg_dest_struct*)*, i32*, i8**, i32 }
%struct.cjpeg_wrbmp_bmp_dest_struct = type { %struct.cjpeg_wrbmp_djpeg_dest_struct, i32, %struct.jvirt_sarray_control*, i32, i32, i32, i32 }
%struct.cjpeg_wrbmp_cdjpeg_progress_mgr = type { %struct.cjpeg_wrbmp_jpeg_progress_mgr, i32, i32, i32 }
%union.dwords = type { i64 }
%struct.anon = type { i32, i32 }

@cjpeg_wrbmp_jpeg_dec_1 = dso_local global %struct.cjpeg_wrbmp_jpeg_decompress_struct zeroinitializer, align 4, !dbg !0
@cjpeg_wrbmp_jpeg_dec_2 = dso_local global %struct.cjpeg_wrbmp_jpeg_decompress_struct zeroinitializer, align 4, !dbg !162
@cjpeg_wrbmp_output_array = dso_local global [6144 x i8] zeroinitializer, align 1, !dbg !151
@cjpeg_wrbmp_jpeg_stream = dso_local global i8* null, align 4, !dbg !157
@cjpeg_wrbmp_checksum = dso_local global i32 0, align 4, !dbg !160
@cjpeg_wrbmp_djpeg_dest = dso_local global %struct.cjpeg_wrbmp_djpeg_dest_struct zeroinitializer, align 4, !dbg !378
@cjpeg_wrbmp_bmp_dest = dso_local global %struct.cjpeg_wrbmp_bmp_dest_struct zeroinitializer, align 4, !dbg !398
@__const.cjpeg_wrbmp_initInput.tmp = private unnamed_addr constant [3 x [256 x i8]] [[256 x i8] c",i\99G\97\A0\BCZ\D1\83\DDr]|\D0\CF\DA6\91q\99\EF\E2S\F3\97bCr\99S\BAtH\BC\BEm\A2\DA\85\D0\D1s\FB\87Y\8F\E2\E6\F6\98\F3\98s\B4N\F6\A4\FAuL\96\98\BC\FB\C3\7Fo\E1\D0^]\8F\83\C9\D3c]\BE\9Dy\F0u\B9\A7\89\98\BC\FA;\F8\F5s\F0\C0\D1\8F\88b\E0\A7\87\84\BDH\F9\CD,j`\93\F7\F9\E4\E0\F9\BEp\87\A8_\CD\AB:pO\CEK\F2\BC\BD\E1\B9Q\DD\99\F4\C6\AB\A3\9F\D1\F0\8A\94\CF\A6\C0\BC\97b\BE\D1\9A\E1H`\F9\BF\DF\CF\A3\CF\85\FB\B7\87\89\9F\F7\A7S{\C7\CB\90\8E\EDM\80u\A9\CA\88\80\BC\A87\DE\A9t<K\AFf\D9\A8\B9\BD\E1}\C0po\A8\EF\E1\A8a\81\BE\AF\A9\E1\AA\E2\E1\E2\E0\86j\FA\DE\94\F1\A8\A6\A0_\BEf\B4\C1o\97\A5\AB\C84\86\A9\DF\A6\E1\A9o\B9m8\F4\9D\FA\E2\E7w\BC", [256 x i8] c"*\8F.[T\C9\8C[R\8C\1FX,\AB9s\CE;\91ut5\E8uP<B@u\AEY\B2\93?S;g\8B\D3@Dbv5wZ\A1\E8\ABb\B0\ECv\9D\B4MrX\1Cw(aE\BD\FC\E1w`\DBTRi\9E1\C8=uN?\93\8CElZ\A1i\BErTLF+\9C\DE`H\8FZi8\90N\81#Bed1i\82\A0\EF\81\8DS+Dj\84S\\\82\AF?\83O\C0i9\A0v\A2\8DN\C0\80\CE\C9\CB\A2\9F\A3\DD\B7\9D\B1\BD\C0\81\826h-e\FC4[\B11\DDto\8F\\\8E\9F\83\AD=\9F\ADQ\81\D6\D5\91\8F\E8C\91\82c\EDn\A0\83C2\81\83\7FL\\\CB`\CE\B0\B4Uc\A2v@N\BE\BF-e\81:H\D31ssU=dtk\8Fu\DB\9A\E1\AE\A0\A3w\BEj\BA1-\B1\93U\8A*\AE;DxG\818\95aDX\94<\EF\B3\95h", [256 x i8] c",L%8L\98z\99M\BF)L'a.m\AC+t[f1\C9DX-5_\A0\AFf\A4t2L-V\BD\D82=]\C4[d:t\DF\A6f~\DD\9EV\EB7qx4s*V7\A5\F7\C2\A0l\AAlbM\A8*\B3F`>G\D8dG\9By\92V\86ir1d2w\DA_Q\DCNf2}D\AA$>w\81,\97H\8F\F1\83\89OI7z\CCIJ\83\DD5YH\B2<@\91\9D\9C\B1e\B4p\C2\CE\B2\A8\DD\99\C9w\DE\A5\BC\D4u\B4-\86*\82\E5/k\AC(\DD\92\84\8An\90\BCp\84@\A2\91\8C\C8\B5\D7\8B\C5\B7j~tY\CC\98{\A14.\83\A7\AD>F\97\97\C5\B1\B8`ae\826?\8D\B9-~`.G\AC&rdjEv\8A\7Fc\7F\C6\CC\F2\F8\C5\F1J\BD\B2\FCA-\94\91a\A8-o+@\A4Pq/\88S*[\C5_\DE\A7\\b"], align 1
@cjpeg_wrbmp_colormap = dso_local global [3 x [256 x i8]] zeroinitializer, align 1, !dbg !410
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
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_init() #0 !dbg !542 {
entry:
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_initInput() #5, !dbg !546
  store %struct.cjpeg_wrbmp_jpeg_progress_mgr* null, %struct.cjpeg_wrbmp_jpeg_progress_mgr** getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_1, i32 0, i32 2), align 4, !dbg !547
  store i32 30, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_1, i32 0, i32 28), align 4, !dbg !548
  store i32 256, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_1, i32 0, i32 32), align 4, !dbg !549
  store i32 2, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_1, i32 0, i32 29), align 4, !dbg !550
  store %struct.cjpeg_wrbmp_jpeg_progress_mgr* null, %struct.cjpeg_wrbmp_jpeg_progress_mgr** getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_2, i32 0, i32 2), align 4, !dbg !551
  store i32 30, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_2, i32 0, i32 28), align 4, !dbg !552
  store i32 256, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_2, i32 0, i32 32), align 4, !dbg !553
  store i32 3, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_2, i32 0, i32 29), align 4, !dbg !554
  store i8* getelementptr inbounds ([6144 x i8], [6144 x i8]* @cjpeg_wrbmp_output_array, i32 0, i32 0), i8** @cjpeg_wrbmp_jpeg_stream, align 4, !dbg !555
  store i32 0, i32* @cjpeg_wrbmp_checksum, align 4, !dbg !556
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %character) #0 !dbg !558 {
entry:
  call void @llvm.dbg.value(metadata i32 %character, metadata !561, metadata !DIExpression()), !dbg !562
  %conv = trunc i32 %character to i8, !dbg !563
  %0 = load i8*, i8** @cjpeg_wrbmp_jpeg_stream, align 4, !dbg !564
  store i8 %conv, i8* %0, align 1, !dbg !565
  %1 = load i8*, i8** @cjpeg_wrbmp_jpeg_stream, align 4, !dbg !566
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1, !dbg !566
  store i8* %incdec.ptr, i8** @cjpeg_wrbmp_jpeg_stream, align 4, !dbg !566
  %2 = load i32, i32* @cjpeg_wrbmp_checksum, align 4, !dbg !567
  %add = add nsw i32 %2, %character, !dbg !567
  store i32 %add, i32* @cjpeg_wrbmp_checksum, align 4, !dbg !567
  ret i32 %character, !dbg !568
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_finish_output_bmp(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef %cinfo) #0 !dbg !569 {
entry:
  call void @llvm.dbg.value(metadata %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, metadata !570, metadata !DIExpression()), !dbg !571
  %progress1 = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, i32 0, i32 2, !dbg !572
  %0 = bitcast %struct.cjpeg_wrbmp_jpeg_progress_mgr** %progress1 to %struct.cjpeg_wrbmp_cdjpeg_progress_mgr**, !dbg !572
  %1 = load %struct.cjpeg_wrbmp_cdjpeg_progress_mgr*, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr** %0, align 4, !dbg !572
  call void @llvm.dbg.value(metadata %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %1, metadata !573, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.value(metadata i32 2, metadata !574, metadata !DIExpression()), !dbg !571
  br label %for.cond, !dbg !575

for.cond:                                         ; preds = %for.inc, %entry
  %row.0 = phi i32 [ 2, %entry ], [ %dec, %for.inc ], !dbg !577
  call void @llvm.dbg.value(metadata i32 %row.0, metadata !574, metadata !DIExpression()), !dbg !571
  %cmp.not = icmp eq i32 %row.0, 0, !dbg !578
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !580

for.body:                                         ; preds = %for.cond
  %output_height = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, i32 0, i32 28, !dbg !581
  %2 = load i32, i32* %output_height, align 4, !dbg !581
  %sub = sub i32 %2, %row.0, !dbg !583
  %pass_counter = getelementptr inbounds %struct.cjpeg_wrbmp_cdjpeg_progress_mgr, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %1, i32 0, i32 0, i32 1, !dbg !584
  store i32 %sub, i32* %pass_counter, align 4, !dbg !585
  %output_height2 = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, i32 0, i32 28, !dbg !586
  %3 = load i32, i32* %output_height2, align 4, !dbg !586
  %pass_limit = getelementptr inbounds %struct.cjpeg_wrbmp_cdjpeg_progress_mgr, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %1, i32 0, i32 0, i32 2, !dbg !587
  store i32 %3, i32* %pass_limit, align 4, !dbg !588
  br label %for.inc, !dbg !589

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %row.0, -1, !dbg !590
  call void @llvm.dbg.value(metadata i32 %dec, metadata !574, metadata !DIExpression()), !dbg !571
  br label %for.cond, !dbg !591, !llvm.loop !592

for.end:                                          ; preds = %for.cond
  %cmp4.not = icmp eq %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %1, null, !dbg !595
  br i1 %cmp4.not, label %if.end, label %if.then, !dbg !597

if.then:                                          ; preds = %for.end
  %completed_extra_passes = getelementptr inbounds %struct.cjpeg_wrbmp_cdjpeg_progress_mgr, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %1, i32 0, i32 1, !dbg !598
  %4 = load i32, i32* %completed_extra_passes, align 4, !dbg !599
  %inc = add nsw i32 %4, 1, !dbg !599
  store i32 %inc, i32* %completed_extra_passes, align 4, !dbg !599
  br label %if.end, !dbg !600

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !601
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_write_colormap(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef %cinfo, i32 noundef %map_colors, i32 noundef %map_entry_size, i32 noundef %cMap) #0 !dbg !602 {
entry:
  call void @llvm.dbg.value(metadata %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, metadata !605, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata i32 %map_colors, metadata !607, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata i32 %map_entry_size, metadata !608, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata i32 %cMap, metadata !609, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata i32 undef, metadata !610, metadata !DIExpression()), !dbg !606
  %cmp.not = icmp eq i32 %cMap, 0, !dbg !611
  br i1 %cmp.not, label %if.else28, label %if.then, !dbg !613

if.then:                                          ; preds = %entry
  %out_color_components = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, i32 0, i32 29, !dbg !614
  %0 = load i32, i32* %out_color_components, align 4, !dbg !614
  %cmp1 = icmp eq i32 %0, 3, !dbg !617
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !618

if.then2:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !619, metadata !DIExpression()), !dbg !606
  br label %for.cond, !dbg !620

for.cond:                                         ; preds = %for.inc, %if.then2
  %i.0 = phi i32 [ 0, %if.then2 ], [ %inc, %for.inc ], !dbg !623
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !619, metadata !DIExpression()), !dbg !606
  %exitcond2.not = icmp eq i32 %i.0, 2, !dbg !624
  br i1 %exitcond2.not, label %for.end, label %for.body, !dbg !626

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 2, i32 %i.0, !dbg !627
  %1 = load i8, i8* %arrayidx, align 1, !dbg !627
  %conv = zext i8 %1 to i32, !dbg !627
  %call = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv) #5, !dbg !629
  %arrayidx4 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 1, i32 %i.0, !dbg !630
  %2 = load i8, i8* %arrayidx4, align 1, !dbg !630
  %conv5 = zext i8 %2 to i32, !dbg !630
  %call6 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv5) #5, !dbg !631
  %arrayidx7 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 0, i32 %i.0, !dbg !632
  %3 = load i8, i8* %arrayidx7, align 1, !dbg !632
  %conv8 = zext i8 %3 to i32, !dbg !632
  %call9 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv8) #5, !dbg !633
  %call10 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #5, !dbg !634
  br label %for.inc, !dbg !635

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !636
  call void @llvm.dbg.value(metadata i32 %inc, metadata !619, metadata !DIExpression()), !dbg !606
  br label %for.cond, !dbg !637, !llvm.loop !638

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !640

if.else:                                          ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !619, metadata !DIExpression()), !dbg !606
  br label %for.cond11, !dbg !641

for.cond11:                                       ; preds = %for.inc25, %if.else
  %i.1 = phi i32 [ 0, %if.else ], [ %inc26, %for.inc25 ], !dbg !644
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !619, metadata !DIExpression()), !dbg !606
  %exitcond1.not = icmp eq i32 %i.1, 2, !dbg !645
  br i1 %exitcond1.not, label %for.end27, label %for.body14, !dbg !647

for.body14:                                       ; preds = %for.cond11
  %arrayidx15 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 2, i32 %i.1, !dbg !648
  %4 = load i8, i8* %arrayidx15, align 1, !dbg !648
  %conv16 = zext i8 %4 to i32, !dbg !648
  %call17 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv16) #5, !dbg !650
  %arrayidx18 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 1, i32 %i.1, !dbg !651
  %5 = load i8, i8* %arrayidx18, align 1, !dbg !651
  %conv19 = zext i8 %5 to i32, !dbg !651
  %call20 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv19) #5, !dbg !652
  %arrayidx21 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 0, i32 %i.1, !dbg !653
  %6 = load i8, i8* %arrayidx21, align 1, !dbg !653
  %conv22 = zext i8 %6 to i32, !dbg !653
  %call23 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv22) #5, !dbg !654
  %call24 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #5, !dbg !655
  br label %for.inc25, !dbg !656

for.inc25:                                        ; preds = %for.body14
  %inc26 = add nuw nsw i32 %i.1, 1, !dbg !657
  call void @llvm.dbg.value(metadata i32 %inc26, metadata !619, metadata !DIExpression()), !dbg !606
  br label %for.cond11, !dbg !658, !llvm.loop !659

for.end27:                                        ; preds = %for.cond11
  br label %if.end

if.end:                                           ; preds = %for.end27, %for.end
  call void @llvm.dbg.value(metadata i32 undef, metadata !619, metadata !DIExpression()), !dbg !606
  br label %if.end40, !dbg !661

if.else28:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !619, metadata !DIExpression()), !dbg !606
  br label %for.cond29, !dbg !662

for.cond29:                                       ; preds = %for.inc37, %if.else28
  %i.3 = phi i32 [ 0, %if.else28 ], [ %inc38, %for.inc37 ], !dbg !665
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !619, metadata !DIExpression()), !dbg !606
  %exitcond.not = icmp eq i32 %i.3, 2, !dbg !666
  br i1 %exitcond.not, label %for.end39, label %for.body32, !dbg !668

for.body32:                                       ; preds = %for.cond29
  %call33 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %i.3) #5, !dbg !669
  %call34 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %i.3) #5, !dbg !671
  %call35 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %i.3) #5, !dbg !672
  %call36 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #5, !dbg !673
  br label %for.inc37, !dbg !674

for.inc37:                                        ; preds = %for.body32
  %inc38 = add nuw nsw i32 %i.3, 1, !dbg !675
  call void @llvm.dbg.value(metadata i32 %inc38, metadata !619, metadata !DIExpression()), !dbg !606
  br label %for.cond29, !dbg !676, !llvm.loop !677

for.end39:                                        ; preds = %for.cond29
  br label %if.end40

if.end40:                                         ; preds = %for.end39, %if.end
  call void @llvm.dbg.value(metadata i32 undef, metadata !619, metadata !DIExpression()), !dbg !606
  br label %for.cond41, !dbg !679

for.cond41:                                       ; preds = %for.inc49, %if.end40
  call void @llvm.dbg.value(metadata i32 undef, metadata !619, metadata !DIExpression()), !dbg !606
  br i1 false, label %for.body44, label %for.end51, !dbg !680

for.body44:                                       ; preds = %for.cond41
  br label %for.inc49, !dbg !682

for.inc49:                                        ; preds = %for.body44
  br label %for.cond41, !dbg !685, !llvm.loop !686

for.end51:                                        ; preds = %for.cond41
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_main() #0 !dbg !689 {
entry:
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_finish_output_bmp(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef nonnull @cjpeg_wrbmp_jpeg_dec_1) #5, !dbg !690
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_write_colormap(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef nonnull @cjpeg_wrbmp_jpeg_dec_1, i32 noundef 768, i32 noundef 4, i32 noundef 1) #5, !dbg !691
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_finish_output_bmp(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef nonnull @cjpeg_wrbmp_jpeg_dec_2) #5, !dbg !692
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_write_colormap(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef nonnull @cjpeg_wrbmp_jpeg_dec_2, i32 noundef 768, i32 noundef 4, i32 noundef 1) #5, !dbg !693
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cjpeg_wrbmp_return() #0 !dbg !695 {
entry:
  %0 = load i32, i32* @cjpeg_wrbmp_checksum, align 4, !dbg !698
  %cmp = icmp ne i32 %0, 209330, !dbg !699
  %conv = zext i1 %cmp to i32, !dbg !699
  ret i32 %conv, !dbg !700
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !701 {
entry:
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_init() #5, !dbg !702
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_main() #5, !dbg !703
  %call = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_return() #5, !dbg !704
  ret i32 %call, !dbg !705
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_initInput() #0 !dbg !706 {
entry:
  %tmp = alloca [3 x [256 x i8]], align 1
  call void @llvm.dbg.declare(metadata [3 x [256 x i8]]* %tmp, metadata !707, metadata !DIExpression()), !dbg !710
  %0 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* %tmp, i32 0, i32 0, i32 0, !dbg !710
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %0, i8* align 1 getelementptr inbounds ([3 x [256 x i8]], [3 x [256 x i8]]* @__const.cjpeg_wrbmp_initInput.tmp, i32 0, i32 0, i32 0), i32 768, i1 true), !dbg !710
  call void @llvm.dbg.value(metadata i32 0, metadata !711, metadata !DIExpression()), !dbg !712
  br label %for.cond, !dbg !713

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !dbg !715
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !711, metadata !DIExpression()), !dbg !712
  %exitcond1.not = icmp eq i32 %i.0, 2, !dbg !716
  br i1 %exitcond1.not, label %for.end9, label %for.body, !dbg !718

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !719, metadata !DIExpression()), !dbg !712
  br label %for.cond1, !dbg !720

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !dbg !723
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !719, metadata !DIExpression()), !dbg !712
  %exitcond.not = icmp eq i32 %j.0, 2, !dbg !724
  br i1 %exitcond.not, label %for.end, label %for.body3, !dbg !726

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* %tmp, i32 0, i32 %i.0, i32 %j.0, !dbg !727
  %1 = load volatile i8, i8* %arrayidx4, align 1, !dbg !727
  %arrayidx6 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 %i.0, i32 %j.0, !dbg !728
  store i8 %1, i8* %arrayidx6, align 1, !dbg !729
  br label %for.inc, !dbg !728

for.inc:                                          ; preds = %for.body3
  %inc = add nuw nsw i32 %j.0, 1, !dbg !730
  call void @llvm.dbg.value(metadata i32 %inc, metadata !719, metadata !DIExpression()), !dbg !712
  br label %for.cond1, !dbg !731, !llvm.loop !732

for.end:                                          ; preds = %for.cond1
  br label %for.inc7, !dbg !734

for.inc7:                                         ; preds = %for.end
  %inc8 = add nuw nsw i32 %i.0, 1, !dbg !735
  call void @llvm.dbg.value(metadata i32 %inc8, metadata !711, metadata !DIExpression()), !dbg !712
  br label %for.cond, !dbg !736, !llvm.loop !737

for.end9:                                         ; preds = %for.cond
  ret void, !dbg !739
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #3 !dbg !740 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !742
  br i1 %cmp, label %if.then, label %if.end, !dbg !743

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #6, !dbg !744
  unreachable, !dbg !744

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !745
  ret i64 %0, !dbg !746
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #4 !dbg !747 {
entry:
  unreachable, !dbg !748
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #3 !dbg !749 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !750
  br i1 %cmp, label %if.then, label %if.end, !dbg !751

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #6, !dbg !752
  unreachable, !dbg !752

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !753
  ret i32 %0, !dbg !754
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !755 {
entry:
  %add = add i64 %a, %b, !dbg !756
  %cmp = icmp sgt i64 %b, -1, !dbg !757
  br i1 %cmp, label %if.then, label %if.else, !dbg !758

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !759
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !760

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #6, !dbg !761
  unreachable, !dbg !761

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !762

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !763
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !764

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #6, !dbg !765
  unreachable, !dbg !765

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !766
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !767 {
entry:
  %add = add i32 %a, %b, !dbg !768
  %cmp = icmp sgt i32 %b, -1, !dbg !769
  br i1 %cmp, label %if.then, label %if.else, !dbg !770

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !771
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !772

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #6, !dbg !773
  unreachable, !dbg !773

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !774

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !775
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !776

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #6, !dbg !777
  unreachable, !dbg !777

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !778
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #3 !dbg !779 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !780
  store i64 %a, i64* %all, align 8, !dbg !781
  %and = and i32 %b, 32, !dbg !782
  %tobool.not = icmp eq i32 %and, 0, !dbg !782
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !783

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !784
  store i32 0, i32* %low, align 8, !dbg !785
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !786
  %0 = load i32, i32* %low2, align 8, !dbg !786
  %sub = add nsw i32 %b, -32, !dbg !787
  %shl = shl i32 %0, %sub, !dbg !788
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !789
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !790
  store i32 %shl, i32* %high, align 4, !dbg !791
  br label %if.end18, !dbg !792

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !793
  br i1 %cmp, label %if.then4, label %if.end, !dbg !794

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !795

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !796
  %1 = load i32, i32* %low6, align 8, !dbg !796
  %shl7 = shl i32 %1, %b, !dbg !797
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !798
  store i32 %shl7, i32* %low9, align 8, !dbg !799
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !800
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !801
  %2 = load i32, i32* %high11, align 4, !dbg !801
  %shl12 = shl i32 %2, %b, !dbg !802
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !803
  %3 = load i32, i32* %low14, align 8, !dbg !803
  %sub15 = sub nsw i32 32, %b, !dbg !804
  %shr = lshr i32 %3, %sub15, !dbg !805
  %or = or i32 %shl12, %shr, !dbg !806
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !807
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !808
  store i32 %or, i32* %high17, align 4, !dbg !809
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !810
  %4 = load i64, i64* %all19, align 8, !dbg !810
  br label %return, !dbg !811

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !812
  ret i64 %retval.0, !dbg !813
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #3 !dbg !814 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !815
  store i64 %a, i64* %all, align 8, !dbg !816
  %and = and i32 %b, 32, !dbg !817
  %tobool.not = icmp eq i32 %and, 0, !dbg !817
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !818

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !819
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !820
  %0 = load i32, i32* %high, align 4, !dbg !820
  %shr = ashr i32 %0, 31, !dbg !821
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !822
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !823
  store i32 %shr, i32* %high2, align 4, !dbg !824
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !825
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !826
  %1 = load i32, i32* %high4, align 4, !dbg !826
  %sub = add nsw i32 %b, -32, !dbg !827
  %shr5 = ashr i32 %1, %sub, !dbg !828
  %low = bitcast %union.dwords* %result to i32*, !dbg !829
  store i32 %shr5, i32* %low, align 8, !dbg !830
  br label %if.end21, !dbg !831

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !832
  br i1 %cmp, label %if.then7, label %if.end, !dbg !833

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !834

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !835
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !836
  %2 = load i32, i32* %high9, align 4, !dbg !836
  %shr10 = ashr i32 %2, %b, !dbg !837
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !838
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !839
  store i32 %shr10, i32* %high12, align 4, !dbg !840
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !841
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !842
  %3 = load i32, i32* %high14, align 4, !dbg !842
  %sub15 = sub nsw i32 32, %b, !dbg !843
  %shl = shl i32 %3, %sub15, !dbg !844
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !845
  %4 = load i32, i32* %low17, align 8, !dbg !845
  %shr18 = lshr i32 %4, %b, !dbg !846
  %or = or i32 %shl, %shr18, !dbg !847
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !848
  store i32 %or, i32* %low20, align 8, !dbg !849
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !850
  %5 = load i64, i64* %all22, align 8, !dbg !850
  br label %return, !dbg !851

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !852
  ret i64 %retval.0, !dbg !853
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #3 !dbg !854 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !855
  store i64 %a, i64* %all, align 8, !dbg !856
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !857
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !858
  %0 = load i32, i32* %high, align 4, !dbg !858
  %cmp = icmp eq i32 %0, 0, !dbg !859
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !860
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !861
  %1 = load i32, i32* %high2, align 4, !dbg !861
  %low = bitcast %union.dwords* %x to i32*, !dbg !862
  %2 = load i32, i32* %low, align 8, !dbg !862
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !863
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !864, !range !865
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !866
  %add = add nuw nsw i32 %4, %and5, !dbg !867
  ret i32 %add, !dbg !868
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #3 !dbg !869 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !870
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !871
  %sub = sub nuw nsw i32 16, %shl, !dbg !872
  %shr = lshr i32 %a, %sub, !dbg !873
  %and1 = and i32 %shr, 65280, !dbg !874
  %cmp2 = icmp eq i32 %and1, 0, !dbg !875
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !876
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !877
  %shr6 = lshr i32 %shr, %sub5, !dbg !878
  %add = or i32 %shl, %shl4, !dbg !879
  %and7 = and i32 %shr6, 240, !dbg !880
  %cmp8 = icmp eq i32 %and7, 0, !dbg !881
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !882
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !883
  %shr12 = lshr i32 %shr6, %sub11, !dbg !884
  %add13 = or i32 %add, %shl10, !dbg !885
  %and14 = and i32 %shr12, 12, !dbg !886
  %cmp15 = icmp eq i32 %and14, 0, !dbg !887
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !888
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !889
  %shr19 = lshr i32 %shr12, %sub18, !dbg !890
  %add20 = or i32 %add13, %shl17, !dbg !891
  %sub21 = sub i32 2, %shr19, !dbg !892
  %and22 = lshr i32 %shr19, 1, !dbg !893
  %0 = or i32 %and22, -2, !dbg !893
  %.neg = add nsw i32 %0, 1, !dbg !893
  %and26 = and i32 %sub21, %.neg, !dbg !894
  %add27 = add i32 %add20, %and26, !dbg !895
  ret i32 %add27, !dbg !896
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #3 !dbg !897 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !898
  store i64 %a, i64* %all, align 8, !dbg !899
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !900
  store i64 %b, i64* %all1, align 8, !dbg !901
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !902
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !903
  %0 = load i32, i32* %high, align 4, !dbg !903
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !904
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !905
  %1 = load i32, i32* %high3, align 4, !dbg !905
  %cmp = icmp slt i32 %0, %1, !dbg !906
  br i1 %cmp, label %if.then, label %if.end, !dbg !907

if.then:                                          ; preds = %entry
  br label %return, !dbg !908

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !909
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !910
  %2 = load i32, i32* %high5, align 4, !dbg !910
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !911
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !912
  %3 = load i32, i32* %high7, align 4, !dbg !912
  %cmp8 = icmp sgt i32 %2, %3, !dbg !913
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !914

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !915

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !916
  %4 = load i32, i32* %low, align 8, !dbg !916
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !917
  %5 = load i32, i32* %low13, align 8, !dbg !917
  %cmp14 = icmp ult i32 %4, %5, !dbg !918
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !919

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !920

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !921
  %6 = load i32, i32* %low18, align 8, !dbg !921
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !922
  %7 = load i32, i32* %low20, align 8, !dbg !922
  %cmp21 = icmp ugt i32 %6, %7, !dbg !923
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !924

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !925

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !926

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !927
  ret i32 %retval.0, !dbg !928
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #3 !dbg !929 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #5, !dbg !930
  %sub = add nsw i32 %call, -1, !dbg !931
  ret i32 %sub, !dbg !932
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #3 !dbg !933 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !934
  store i64 %a, i64* %all, align 8, !dbg !935
  %low = bitcast %union.dwords* %x to i32*, !dbg !936
  %0 = load i32, i32* %low, align 8, !dbg !936
  %cmp = icmp eq i32 %0, 0, !dbg !937
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !938
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !939
  %1 = load i32, i32* %high, align 4, !dbg !939
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !940
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !941, !range !865
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !942
  %add = add nuw nsw i32 %3, %and5, !dbg !943
  ret i32 %add, !dbg !944
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #3 !dbg !945 {
entry:
  %and = and i32 %a, 65535, !dbg !946
  %cmp = icmp eq i32 %and, 0, !dbg !947
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !948
  %shr = lshr i32 %a, %shl, !dbg !949
  %and1 = and i32 %shr, 255, !dbg !950
  %cmp2 = icmp eq i32 %and1, 0, !dbg !951
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !952
  %shr5 = lshr i32 %shr, %shl4, !dbg !953
  %add = or i32 %shl, %shl4, !dbg !954
  %and6 = and i32 %shr5, 15, !dbg !955
  %cmp7 = icmp eq i32 %and6, 0, !dbg !956
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !957
  %shr10 = lshr i32 %shr5, %shl9, !dbg !958
  %add11 = or i32 %add, %shl9, !dbg !959
  %and12 = and i32 %shr10, 3, !dbg !960
  %cmp13 = icmp eq i32 %and12, 0, !dbg !961
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !962
  %shr16 = lshr i32 %shr10, %shl15, !dbg !963
  %add18 = or i32 %add11, %shl15, !dbg !964
  %and17 = lshr i32 %shr16, 1, !dbg !965
  %shr19 = and i32 %and17, 1, !dbg !965
  %sub = sub nuw nsw i32 2, %shr19, !dbg !966
  %0 = or i32 %shr16, -2, !dbg !967
  %.neg = add nsw i32 %0, 1, !dbg !967
  %and24 = and i32 %sub, %.neg, !dbg !968
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !969
  ret i32 %add25, !dbg !970
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !971 {
entry:
  %shr = ashr i64 %a, 63, !dbg !972
  %shr1 = ashr i64 %b, 63, !dbg !973
  %xor = xor i64 %shr, %a, !dbg !974
  %sub = sub nsw i64 %xor, %shr, !dbg !975
  %xor2 = xor i64 %shr1, %b, !dbg !976
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !977
  %xor4 = xor i64 %shr, %shr1, !dbg !978
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #5, !dbg !979
  %xor5 = xor i64 %call, %xor4, !dbg !980
  %sub6 = sub i64 %xor5, %xor4, !dbg !981
  ret i64 %sub6, !dbg !982
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #3 !dbg !983 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !984
  store i64 %a, i64* %all, align 8, !dbg !985
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !986
  store i64 %b, i64* %all1, align 8, !dbg !987
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !988
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !989
  %0 = load i32, i32* %high, align 4, !dbg !989
  %cmp = icmp eq i32 %0, 0, !dbg !990
  br i1 %cmp, label %if.then, label %if.end23, !dbg !991

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !992
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !993
  %1 = load i32, i32* %high3, align 4, !dbg !993
  %cmp4 = icmp eq i32 %1, 0, !dbg !994
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !995

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !996
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !996

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !997
  %2 = load i32, i32* %low, align 8, !dbg !997
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !998
  %3 = load i32, i32* %low9, align 8, !dbg !998
  %rem10 = urem i32 %2, %3, !dbg !999
  %conv = zext i32 %rem10 to i64, !dbg !1000
  store i64 %conv, i64* %rem, align 8, !dbg !1001
  br label %if.end, !dbg !1002

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !1003
  %4 = load i32, i32* %low12, align 8, !dbg !1003
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !1004
  %5 = load i32, i32* %low14, align 8, !dbg !1004
  %div = udiv i32 %4, %5, !dbg !1005
  %conv15 = zext i32 %div to i64, !dbg !1006
  br label %return, !dbg !1007

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !1008
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !1008

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !1009
  %6 = load i32, i32* %low20, align 8, !dbg !1009
  %conv21 = zext i32 %6 to i64, !dbg !1010
  store i64 %conv21, i64* %rem, align 8, !dbg !1011
  br label %if.end22, !dbg !1012

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !1013

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !1014
  %7 = load i32, i32* %low25, align 8, !dbg !1014
  %cmp26 = icmp eq i32 %7, 0, !dbg !1015
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !1016

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1017
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !1018
  %8 = load i32, i32* %high30, align 4, !dbg !1018
  %cmp31 = icmp eq i32 %8, 0, !dbg !1019
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !1020

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !1021
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !1021

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1022
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !1023
  %9 = load i32, i32* %high37, align 4, !dbg !1023
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !1024
  %10 = load i32, i32* %low39, align 8, !dbg !1024
  %rem40 = urem i32 %9, %10, !dbg !1025
  %conv41 = zext i32 %rem40 to i64, !dbg !1026
  store i64 %conv41, i64* %rem, align 8, !dbg !1027
  br label %if.end42, !dbg !1028

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1029
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !1030
  %11 = load i32, i32* %high44, align 4, !dbg !1030
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !1031
  %12 = load i32, i32* %low46, align 8, !dbg !1031
  %div47 = udiv i32 %11, %12, !dbg !1032
  %conv48 = zext i32 %div47 to i64, !dbg !1033
  br label %return, !dbg !1034

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !1035
  %13 = load i32, i32* %low51, align 8, !dbg !1035
  %cmp52 = icmp eq i32 %13, 0, !dbg !1036
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !1037

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !1038
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !1038

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1039
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !1040
  %14 = load i32, i32* %high58, align 4, !dbg !1040
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1041
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !1042
  %15 = load i32, i32* %high60, align 4, !dbg !1042
  %rem61 = urem i32 %14, %15, !dbg !1043
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1044
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !1045
  store i32 %rem61, i32* %high63, align 4, !dbg !1046
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !1047
  store i32 0, i32* %low65, align 8, !dbg !1048
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1049
  %16 = load i64, i64* %all66, align 8, !dbg !1049
  store i64 %16, i64* %rem, align 8, !dbg !1050
  br label %if.end67, !dbg !1051

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1052
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !1053
  %17 = load i32, i32* %high69, align 4, !dbg !1053
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1054
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !1055
  %18 = load i32, i32* %high71, align 4, !dbg !1055
  %div72 = udiv i32 %17, %18, !dbg !1056
  %conv73 = zext i32 %div72 to i64, !dbg !1057
  br label %return, !dbg !1058

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1059
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !1060
  %19 = load i32, i32* %high76, align 4, !dbg !1060
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1061
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !1062
  %20 = load i32, i32* %high78, align 4, !dbg !1062
  %sub = add i32 %20, -1, !dbg !1063
  %and = and i32 %19, %sub, !dbg !1064
  %cmp79 = icmp eq i32 %and, 0, !dbg !1065
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !1066

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !1067
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !1067

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !1068
  %21 = load i32, i32* %low85, align 8, !dbg !1068
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !1069
  store i32 %21, i32* %low87, align 8, !dbg !1070
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1071
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !1072
  %22 = load i32, i32* %high89, align 4, !dbg !1072
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1073
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !1074
  %23 = load i32, i32* %high91, align 4, !dbg !1074
  %sub92 = add i32 %23, -1, !dbg !1075
  %and93 = and i32 %22, %sub92, !dbg !1076
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1077
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !1078
  store i32 %and93, i32* %high95, align 4, !dbg !1079
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1080
  %24 = load i64, i64* %all96, align 8, !dbg !1080
  store i64 %24, i64* %rem, align 8, !dbg !1081
  br label %if.end97, !dbg !1082

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1083
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !1084
  %25 = load i32, i32* %high99, align 4, !dbg !1084
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1085
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !1086
  %26 = load i32, i32* %high101, align 4, !dbg !1086
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !1087, !range !865
  %shr = lshr i32 %25, %27, !dbg !1088
  %conv102 = zext i32 %shr to i64, !dbg !1089
  br label %return, !dbg !1090

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1091
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !1092
  %28 = load i32, i32* %high105, align 4, !dbg !1092
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !1093, !range !865
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1094
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !1095
  %30 = load i32, i32* %high107, align 4, !dbg !1095
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !1096, !range !865
  %sub108 = sub nsw i32 %29, %31, !dbg !1097
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !1098
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !1099

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !1100
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !1100

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1101
  %32 = load i64, i64* %all114, align 8, !dbg !1101
  store i64 %32, i64* %rem, align 8, !dbg !1102
  br label %if.end115, !dbg !1103

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !1104

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !1105
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !1106
  store i32 0, i32* %low118, align 8, !dbg !1107
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !1108
  %33 = load i32, i32* %low120, align 8, !dbg !1108
  %sub121 = sub nsw i32 31, %sub108, !dbg !1109
  %shl = shl i32 %33, %sub121, !dbg !1110
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1111
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !1112
  store i32 %shl, i32* %high123, align 4, !dbg !1113
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1114
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !1115
  %34 = load i32, i32* %high125, align 4, !dbg !1115
  %shr126 = lshr i32 %34, %inc, !dbg !1116
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1117
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !1118
  store i32 %shr126, i32* %high128, align 4, !dbg !1119
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1120
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !1121
  %35 = load i32, i32* %high130, align 4, !dbg !1121
  %sub131 = sub nsw i32 31, %sub108, !dbg !1122
  %shl132 = shl i32 %35, %sub131, !dbg !1123
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !1124
  %36 = load i32, i32* %low134, align 8, !dbg !1124
  %shr135 = lshr i32 %36, %inc, !dbg !1125
  %or = or i32 %shl132, %shr135, !dbg !1126
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !1127
  store i32 %or, i32* %low137, align 8, !dbg !1128
  br label %if.end317, !dbg !1129

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1130
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !1131
  %37 = load i32, i32* %high139, align 4, !dbg !1131
  %cmp140 = icmp eq i32 %37, 0, !dbg !1132
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !1133

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !1134
  %38 = load i32, i32* %low144, align 8, !dbg !1134
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !1135, !range !865
  %cmp149 = icmp ult i32 %39, 2, !dbg !1135
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !1136

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !1137
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !1137

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !1138
  %40 = load i32, i32* %low155, align 8, !dbg !1138
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !1139
  %41 = load i32, i32* %low157, align 8, !dbg !1139
  %sub158 = add i32 %41, -1, !dbg !1140
  %and159 = and i32 %40, %sub158, !dbg !1141
  %conv160 = zext i32 %and159 to i64, !dbg !1142
  store i64 %conv160, i64* %rem, align 8, !dbg !1143
  br label %if.end161, !dbg !1144

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !1145
  %42 = load i32, i32* %low163, align 8, !dbg !1145
  %cmp164 = icmp eq i32 %42, 1, !dbg !1146
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !1147

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1148
  %43 = load i64, i64* %all167, align 8, !dbg !1148
  br label %return, !dbg !1149

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !1150
  %44 = load i32, i32* %low170, align 8, !dbg !1150
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !1151, !range !865
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1152
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !1153
  %46 = load i32, i32* %high172, align 4, !dbg !1153
  %shr173 = lshr i32 %46, %45, !dbg !1154
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1155
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !1156
  store i32 %shr173, i32* %high175, align 4, !dbg !1157
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1158
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !1159
  %47 = load i32, i32* %high177, align 4, !dbg !1159
  %sub178 = sub nuw nsw i32 32, %45, !dbg !1160
  %shl179 = shl i32 %47, %sub178, !dbg !1161
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !1162
  %48 = load i32, i32* %low181, align 8, !dbg !1162
  %shr182 = lshr i32 %48, %45, !dbg !1163
  %or183 = or i32 %shl179, %shr182, !dbg !1164
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !1165
  store i32 %or183, i32* %low185, align 8, !dbg !1166
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1167
  %49 = load i64, i64* %all186, align 8, !dbg !1167
  br label %return, !dbg !1168

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !1169
  %50 = load i32, i32* %low189, align 8, !dbg !1169
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !1170, !range !865
  %add = add nuw nsw i32 %51, 33, !dbg !1171
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1172
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !1173
  %52 = load i32, i32* %high191, align 4, !dbg !1173
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !1174, !range !865
  %sub192 = sub nsw i32 %add, %53, !dbg !1175
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !1176
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !1177

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !1178
  store i32 0, i32* %low197, align 8, !dbg !1179
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !1180
  %54 = load i32, i32* %low199, align 8, !dbg !1180
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1181
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !1182
  store i32 %54, i32* %high201, align 4, !dbg !1183
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1184
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !1185
  store i32 0, i32* %high203, align 4, !dbg !1186
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1187
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !1188
  %55 = load i32, i32* %high205, align 4, !dbg !1188
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !1189
  store i32 %55, i32* %low207, align 8, !dbg !1190
  br label %if.end262, !dbg !1191

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !1192
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !1193

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !1194
  store i32 0, i32* %low213, align 8, !dbg !1195
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !1196
  %56 = load i32, i32* %low215, align 8, !dbg !1196
  %sub216 = sub nsw i32 32, %sub192, !dbg !1197
  %shl217 = shl i32 %56, %sub216, !dbg !1198
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1199
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !1200
  store i32 %shl217, i32* %high219, align 4, !dbg !1201
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1202
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !1203
  %57 = load i32, i32* %high221, align 4, !dbg !1203
  %shr222 = lshr i32 %57, %sub192, !dbg !1204
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1205
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !1206
  store i32 %shr222, i32* %high224, align 4, !dbg !1207
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1208
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !1209
  %58 = load i32, i32* %high226, align 4, !dbg !1209
  %sub227 = sub nsw i32 32, %sub192, !dbg !1210
  %shl228 = shl i32 %58, %sub227, !dbg !1211
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !1212
  %59 = load i32, i32* %low230, align 8, !dbg !1212
  %shr231 = lshr i32 %59, %sub192, !dbg !1213
  %or232 = or i32 %shl228, %shr231, !dbg !1214
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !1215
  store i32 %or232, i32* %low234, align 8, !dbg !1216
  br label %if.end261, !dbg !1217

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !1218
  %60 = load i32, i32* %low237, align 8, !dbg !1218
  %sub238 = sub nsw i32 64, %sub192, !dbg !1219
  %shl239 = shl i32 %60, %sub238, !dbg !1220
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !1221
  store i32 %shl239, i32* %low241, align 8, !dbg !1222
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1223
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !1224
  %61 = load i32, i32* %high243, align 4, !dbg !1224
  %sub244 = sub nsw i32 64, %sub192, !dbg !1225
  %shl245 = shl i32 %61, %sub244, !dbg !1226
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !1227
  %62 = load i32, i32* %low247, align 8, !dbg !1227
  %sub248 = add nsw i32 %sub192, -32, !dbg !1228
  %shr249 = lshr i32 %62, %sub248, !dbg !1229
  %or250 = or i32 %shl245, %shr249, !dbg !1230
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1231
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !1232
  store i32 %or250, i32* %high252, align 4, !dbg !1233
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1234
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !1235
  store i32 0, i32* %high254, align 4, !dbg !1236
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1237
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !1238
  %63 = load i32, i32* %high256, align 4, !dbg !1238
  %sub257 = add nsw i32 %sub192, -32, !dbg !1239
  %shr258 = lshr i32 %63, %sub257, !dbg !1240
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !1241
  store i32 %shr258, i32* %low260, align 8, !dbg !1242
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !1243

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1244
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !1245
  %64 = load i32, i32* %high265, align 4, !dbg !1245
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !1246, !range !865
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1247
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !1248
  %66 = load i32, i32* %high267, align 4, !dbg !1248
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !1249, !range !865
  %sub268 = sub nsw i32 %65, %67, !dbg !1250
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !1251
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !1252

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !1253
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !1253

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1254
  %68 = load i64, i64* %all274, align 8, !dbg !1254
  store i64 %68, i64* %rem, align 8, !dbg !1255
  br label %if.end275, !dbg !1256

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !1257

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !1258
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !1259
  store i32 0, i32* %low279, align 8, !dbg !1260
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !1261
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !1262

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !1263
  %69 = load i32, i32* %low284, align 8, !dbg !1263
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1264
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !1265
  store i32 %69, i32* %high286, align 4, !dbg !1266
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1267
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !1268
  store i32 0, i32* %high288, align 4, !dbg !1269
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1270
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !1271
  %70 = load i32, i32* %high290, align 4, !dbg !1271
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !1272
  store i32 %70, i32* %low292, align 8, !dbg !1273
  br label %if.end315, !dbg !1274

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !1275
  %71 = load i32, i32* %low295, align 8, !dbg !1275
  %sub296 = sub nsw i32 31, %sub268, !dbg !1276
  %shl297 = shl i32 %71, %sub296, !dbg !1277
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1278
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !1279
  store i32 %shl297, i32* %high299, align 4, !dbg !1280
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1281
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !1282
  %72 = load i32, i32* %high301, align 4, !dbg !1282
  %shr302 = lshr i32 %72, %inc277, !dbg !1283
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1284
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !1285
  store i32 %shr302, i32* %high304, align 4, !dbg !1286
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1287
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !1288
  %73 = load i32, i32* %high306, align 4, !dbg !1288
  %sub307 = sub nsw i32 31, %sub268, !dbg !1289
  %shl308 = shl i32 %73, %sub307, !dbg !1290
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !1291
  %74 = load i32, i32* %low310, align 8, !dbg !1291
  %shr311 = lshr i32 %74, %inc277, !dbg !1292
  %or312 = or i32 %shl308, %shr311, !dbg !1293
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !1294
  store i32 %or312, i32* %low314, align 8, !dbg !1295
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !1296
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !1296
  br label %for.cond, !dbg !1297

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !1296
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !1296
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !1298
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !1297

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1299
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !1300
  %75 = load i32, i32* %high321, align 4, !dbg !1300
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !1301
  %76 = load i32, i32* %low324, align 8, !dbg !1301
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !1302
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1303
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !1304
  store i32 %or326, i32* %high328, align 4, !dbg !1305
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1306
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !1307
  %77 = load i32, i32* %high333, align 4, !dbg !1307
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !1308
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !1309
  store i32 %or335, i32* %low337, align 8, !dbg !1310
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1311
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !1312
  %78 = load i32, i32* %high339, align 4, !dbg !1312
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !1313
  %79 = load i32, i32* %low342, align 8, !dbg !1313
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !1314
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1315
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !1316
  store i32 %or344, i32* %high346, align 4, !dbg !1317
  %shl349 = shl i32 %79, 1, !dbg !1318
  %or350 = or i32 %shl349, %carry.0, !dbg !1319
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !1320
  store i32 %or350, i32* %low352, align 8, !dbg !1321
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1322
  %80 = load i64, i64* %all354, align 8, !dbg !1322
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1323
  %81 = load i64, i64* %all355, align 8, !dbg !1323
  %82 = xor i64 %81, -1, !dbg !1324
  %sub357 = add i64 %80, %82, !dbg !1324
  %isneg = icmp slt i64 %sub357, 0, !dbg !1325
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !1325
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1326
  %sub364 = sub i64 %81, %and362, !dbg !1327
  store i64 %sub364, i64* %all363, align 8, !dbg !1327
  br label %for.inc, !dbg !1328

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !1329
  %conv360 = trunc i64 %and359 to i32, !dbg !1330
  %dec = add i32 %sr.2, -1, !dbg !1331
  br label %for.cond, !dbg !1297, !llvm.loop !1332

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1333
  %83 = load i64, i64* %all365, align 8, !dbg !1333
  %shl366 = shl i64 %83, 1, !dbg !1334
  %conv367 = zext i32 %carry.0 to i64, !dbg !1335
  %or368 = or i64 %shl366, %conv367, !dbg !1336
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1337
  store i64 %or368, i64* %all369, align 8, !dbg !1338
  %tobool370.not = icmp eq i64* %rem, null, !dbg !1339
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !1339

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1340
  %84 = load i64, i64* %all372, align 8, !dbg !1340
  store i64 %84, i64* %rem, align 8, !dbg !1341
  br label %if.end373, !dbg !1342

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1343
  %85 = load i64, i64* %all374, align 8, !dbg !1343
  br label %return, !dbg !1344

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !1296
  ret i64 %retval.0, !dbg !1345
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #3 !dbg !1346 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #5, !dbg !1347
  %mul = mul nsw i64 %call, %b, !dbg !1348
  %sub = sub nsw i64 %a, %mul, !dbg !1349
  store i64 %sub, i64* %rem, align 8, !dbg !1350
  ret i64 %call, !dbg !1351
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #3 !dbg !1352 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !1353
  %mul = mul nsw i32 %call, %b, !dbg !1354
  %sub = sub nsw i32 %a, %mul, !dbg !1355
  store i32 %sub, i32* %rem, align 4, !dbg !1356
  ret i32 %call, !dbg !1357
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !1358 {
entry:
  %shr = ashr i32 %a, 31, !dbg !1359
  %shr1 = ashr i32 %b, 31, !dbg !1360
  %xor = xor i32 %shr, %a, !dbg !1361
  %sub = sub nsw i32 %xor, %shr, !dbg !1362
  %xor2 = xor i32 %shr1, %b, !dbg !1363
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !1364
  %xor4 = xor i32 %shr, %shr1, !dbg !1365
  %div = udiv i32 %sub, %sub3, !dbg !1366
  %xor5 = xor i32 %div, %xor4, !dbg !1367
  %sub6 = sub i32 %xor5, %xor4, !dbg !1368
  ret i32 %sub6, !dbg !1369
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #3 !dbg !1370 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1371
  store i64 %a, i64* %all, align 8, !dbg !1372
  %low = bitcast %union.dwords* %x to i32*, !dbg !1373
  %0 = load i32, i32* %low, align 8, !dbg !1373
  %cmp = icmp eq i32 %0, 0, !dbg !1374
  br i1 %cmp, label %if.then, label %if.end6, !dbg !1375

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1376
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1377
  %1 = load i32, i32* %high, align 4, !dbg !1377
  %cmp2 = icmp eq i32 %1, 0, !dbg !1378
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1379

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !1380

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1381
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1382
  %2 = load i32, i32* %high5, align 4, !dbg !1382
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !1383, !range !865
  %add = add nuw nsw i32 %3, 33, !dbg !1384
  br label %return, !dbg !1385

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !1386
  %4 = load i32, i32* %low8, align 8, !dbg !1386
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !1387, !range !865
  %add9 = add nuw nsw i32 %5, 1, !dbg !1388
  br label %return, !dbg !1389

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !1390
  ret i32 %retval.0, !dbg !1391
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #3 !dbg !1392 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !1393
  br i1 %cmp, label %if.then, label %if.end, !dbg !1394

if.then:                                          ; preds = %entry
  br label %return, !dbg !1395

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !1396, !range !865
  %add = add nuw nsw i32 %0, 1, !dbg !1397
  br label %return, !dbg !1398

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !1399
  ret i32 %retval.0, !dbg !1400
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #3 !dbg !1401 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1402
  store i64 %a, i64* %all, align 8, !dbg !1403
  %and = and i32 %b, 32, !dbg !1404
  %tobool.not = icmp eq i32 %and, 0, !dbg !1404
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1405

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !1406
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1407
  store i32 0, i32* %high, align 4, !dbg !1408
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1409
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1410
  %0 = load i32, i32* %high2, align 4, !dbg !1410
  %sub = add nsw i32 %b, -32, !dbg !1411
  %shr = lshr i32 %0, %sub, !dbg !1412
  %low = bitcast %union.dwords* %result to i32*, !dbg !1413
  store i32 %shr, i32* %low, align 8, !dbg !1414
  br label %if.end18, !dbg !1415

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1416
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1417

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !1418

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1419
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !1420
  %1 = load i32, i32* %high6, align 4, !dbg !1420
  %shr7 = lshr i32 %1, %b, !dbg !1421
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1422
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !1423
  store i32 %shr7, i32* %high9, align 4, !dbg !1424
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1425
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !1426
  %2 = load i32, i32* %high11, align 4, !dbg !1426
  %sub12 = sub nsw i32 32, %b, !dbg !1427
  %shl = shl i32 %2, %sub12, !dbg !1428
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !1429
  %3 = load i32, i32* %low14, align 8, !dbg !1429
  %shr15 = lshr i32 %3, %b, !dbg !1430
  %or = or i32 %shl, %shr15, !dbg !1431
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !1432
  store i32 %or, i32* %low17, align 8, !dbg !1433
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1434
  %4 = load i64, i64* %all19, align 8, !dbg !1434
  br label %return, !dbg !1435

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !1436
  ret i64 %retval.0, !dbg !1437
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #3 !dbg !1438 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !1439
  %shr1 = ashr i64 %a, 63, !dbg !1440
  %xor2 = xor i64 %shr1, %a, !dbg !1441
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !1442
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #5, !dbg !1443
  %1 = load i64, i64* %r, align 8, !dbg !1444
  %xor4 = xor i64 %1, %shr1, !dbg !1445
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !1446
  ret i64 %sub5, !dbg !1447
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !1448 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !1449
  %mul = mul nsw i32 %call, %b, !dbg !1450
  %sub = sub nsw i32 %a, %mul, !dbg !1451
  ret i32 %sub, !dbg !1452
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !1453 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !1454
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1455

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !1456
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1457

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !1458
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1459

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1460

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !1461
  unreachable, !dbg !1461

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !1462
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1463

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !1464
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1465

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !1466
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1467

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1468

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !1469
  unreachable, !dbg !1469

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !1470
  %xor = xor i64 %shr, %a, !dbg !1471
  %sub = sub nsw i64 %xor, %shr, !dbg !1472
  %shr14 = ashr i64 %b, 63, !dbg !1473
  %xor15 = xor i64 %shr14, %b, !dbg !1474
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !1475
  %cmp17 = icmp slt i64 %sub, 2, !dbg !1476
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1477

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !1478
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1479

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1480

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !1481
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1482

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !1483
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !1484
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1485

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !1486
  unreachable, !dbg !1486

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1487

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !1488
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !1489
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !1490
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1491

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !1492
  unreachable, !dbg !1492

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1493

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !1494
  ret i64 %retval.0, !dbg !1495
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !1496 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !1497
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1498

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !1499
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1500

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !1501
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1502

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1503

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !1504
  unreachable, !dbg !1504

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !1505
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1506

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !1507
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1508

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !1509
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1510

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1511

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !1512
  unreachable, !dbg !1512

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !1513
  %xor = xor i32 %shr, %a, !dbg !1514
  %sub = sub nsw i32 %xor, %shr, !dbg !1515
  %shr14 = ashr i32 %b, 31, !dbg !1516
  %xor15 = xor i32 %shr14, %b, !dbg !1517
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !1518
  %cmp17 = icmp slt i32 %sub, 2, !dbg !1519
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1520

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !1521
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1522

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1523

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !1524
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1525

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !1526
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !1527
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1528

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !1529
  unreachable, !dbg !1529

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1530

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !1531
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !1532
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !1533
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1534

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !1535
  unreachable, !dbg !1535

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1536

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !1537
  ret i32 %retval.0, !dbg !1538
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #3 !dbg !1539 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1540
  store i64 %a, i64* %all, align 8, !dbg !1541
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1542
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1543
  %0 = load i32, i32* %high, align 4, !dbg !1543
  %low = bitcast %union.dwords* %x to i32*, !dbg !1544
  %1 = load i32, i32* %low, align 8, !dbg !1544
  %xor = xor i32 %0, %1, !dbg !1545
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #5, !dbg !1546
  ret i32 %call, !dbg !1547
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #3 !dbg !1548 {
entry:
  %shr = lshr i32 %a, 16, !dbg !1549
  %xor = xor i32 %shr, %a, !dbg !1550
  %shr1 = lshr i32 %xor, 8, !dbg !1551
  %xor2 = xor i32 %xor, %shr1, !dbg !1552
  %shr3 = lshr i32 %xor2, 4, !dbg !1553
  %xor4 = xor i32 %xor2, %shr3, !dbg !1554
  %and = and i32 %xor4, 15, !dbg !1555
  %shr5 = lshr i32 27030, %and, !dbg !1556
  %and6 = and i32 %shr5, 1, !dbg !1557
  ret i32 %and6, !dbg !1558
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #3 !dbg !1559 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1560
  %and = and i64 %shr, 6148914691236517205, !dbg !1561
  %sub = sub i64 %a, %and, !dbg !1562
  %shr1 = lshr i64 %sub, 2, !dbg !1563
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1564
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1565
  %add = add nuw nsw i64 %and2, %and3, !dbg !1566
  %shr4 = lshr i64 %add, 4, !dbg !1567
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1568
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1569
  %shr7 = lshr i64 %and6, 32, !dbg !1570
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1571
  %conv = trunc i64 %add8 to i32, !dbg !1572
  %shr9 = lshr i32 %conv, 16, !dbg !1573
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1574
  %shr11 = lshr i32 %add10, 8, !dbg !1575
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1576
  %and13 = and i32 %add12, 127, !dbg !1577
  ret i32 %and13, !dbg !1578
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #3 !dbg !1579 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1580
  %and = and i32 %shr, 1431655765, !dbg !1581
  %sub = sub i32 %a, %and, !dbg !1582
  %shr1 = lshr i32 %sub, 2, !dbg !1583
  %and2 = and i32 %shr1, 858993459, !dbg !1584
  %and3 = and i32 %sub, 858993459, !dbg !1585
  %add = add nuw nsw i32 %and2, %and3, !dbg !1586
  %shr4 = lshr i32 %add, 4, !dbg !1587
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1588
  %and6 = and i32 %add5, 252645135, !dbg !1589
  %shr7 = lshr i32 %and6, 16, !dbg !1590
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1591
  %shr9 = lshr i32 %add8, 8, !dbg !1592
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1593
  %and11 = and i32 %add10, 63, !dbg !1594
  ret i32 %and11, !dbg !1595
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !1596 {
entry:
  %sub = sub i64 %a, %b, !dbg !1597
  %cmp = icmp sgt i64 %b, -1, !dbg !1598
  br i1 %cmp, label %if.then, label %if.else, !dbg !1599

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1600
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1601

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #6, !dbg !1602
  unreachable, !dbg !1602

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1603

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1604
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1605

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #6, !dbg !1606
  unreachable, !dbg !1606

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1607
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !1608 {
entry:
  %sub = sub i32 %a, %b, !dbg !1609
  %cmp = icmp sgt i32 %b, -1, !dbg !1610
  br i1 %cmp, label %if.then, label %if.else, !dbg !1611

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1612
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1613

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #6, !dbg !1614
  unreachable, !dbg !1614

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1615

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1616
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1617

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #6, !dbg !1618
  unreachable, !dbg !1618

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1619
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #3 !dbg !1620 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1621
  store i64 %a, i64* %all, align 8, !dbg !1622
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1623
  store i64 %b, i64* %all1, align 8, !dbg !1624
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1625
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1626
  %0 = load i32, i32* %high, align 4, !dbg !1626
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1627
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1628
  %1 = load i32, i32* %high3, align 4, !dbg !1628
  %cmp = icmp ult i32 %0, %1, !dbg !1629
  br i1 %cmp, label %if.then, label %if.end, !dbg !1630

if.then:                                          ; preds = %entry
  br label %return, !dbg !1631

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1632
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1633
  %2 = load i32, i32* %high5, align 4, !dbg !1633
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1634
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1635
  %3 = load i32, i32* %high7, align 4, !dbg !1635
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1636
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1637

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1638

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1639
  %4 = load i32, i32* %low, align 8, !dbg !1639
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1640
  %5 = load i32, i32* %low13, align 8, !dbg !1640
  %cmp14 = icmp ult i32 %4, %5, !dbg !1641
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1642

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1643

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1644
  %6 = load i32, i32* %low18, align 8, !dbg !1644
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1645
  %7 = load i32, i32* %low20, align 8, !dbg !1645
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1646
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1647

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1648

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1649

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1650
  ret i32 %retval.0, !dbg !1651
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #3 !dbg !1652 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #5, !dbg !1653
  %sub = add nsw i32 %call, -1, !dbg !1654
  ret i32 %sub, !dbg !1655
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !1656 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #5, !dbg !1657
  ret i64 %call, !dbg !1658
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #3 !dbg !1659 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !1660
  %mul = mul i32 %call, %b, !dbg !1661
  %sub = sub i32 %a, %mul, !dbg !1662
  store i32 %sub, i32* %rem, align 4, !dbg !1663
  ret i32 %call, !dbg !1664
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #3 !dbg !1665 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1666
  br i1 %cmp, label %if.then, label %if.end, !dbg !1667

if.then:                                          ; preds = %entry
  br label %return, !dbg !1668

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1669
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1670

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1671

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1672, !range !865
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1673, !range !865
  %sub = sub nsw i32 %0, %1, !dbg !1674
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1675
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1676

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1677

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1678
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1679

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1680

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1681
  %sub10 = sub nsw i32 31, %sub, !dbg !1682
  %shl = shl i32 %n, %sub10, !dbg !1683
  %shr = lshr i32 %n, %inc, !dbg !1684
  br label %for.cond, !dbg !1685

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1686
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1686
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1686
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1686
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1687
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1685

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1688
  %2 = xor i32 %or, -1, !dbg !1689
  %sub17 = add i32 %2, %d, !dbg !1689
  br label %for.inc, !dbg !1690

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1691
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1691
  %sub20 = sub i32 %or, %and19, !dbg !1692
  %and = lshr i32 %sub17, 31, !dbg !1693
  %shl14 = shl i32 %q.0, 1, !dbg !1694
  %or15 = or i32 %shl14, %carry.0, !dbg !1695
  %dec = add i32 %sr.0, -1, !dbg !1696
  br label %for.cond, !dbg !1685, !llvm.loop !1697

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1698
  %or22 = or i32 %shl21, %carry.0, !dbg !1699
  br label %return, !dbg !1700

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1686
  ret i32 %retval.0, !dbg !1701
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #3 !dbg !1702 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #5, !dbg !1703
  %0 = load i64, i64* %r, align 8, !dbg !1704
  ret i64 %0, !dbg !1705
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !1706 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !1707
  %mul = mul i32 %call, %b, !dbg !1708
  %sub = sub i32 %a, %mul, !dbg !1709
  ret i32 %sub, !dbg !1710
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #3 !dbg !1711 {
entry:
  br label %for.cond, !dbg !1712

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1713
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1714
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1715

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1716
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1716
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1717
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1718
  br label %for.inc, !dbg !1719

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1720
  br label %for.cond, !dbg !1715, !llvm.loop !1721

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1722
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #3 !dbg !1723 {
entry:
  br label %for.cond, !dbg !1724

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1725
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1726
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1727

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1728
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1729
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1730
  br label %for.inc, !dbg !1731

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1732
  br label %for.cond, !dbg !1727, !llvm.loop !1733

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1734
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
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline noreturn nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin noreturn "no-builtins" }

!llvm.dbg.cu = !{!2, !412, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529}
!llvm.ident = !{!531, !531, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532}
!llvm.module.flags = !{!533, !534, !535, !536, !537, !538, !539, !540, !541}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cjpeg_wrbmp_jpeg_dec_1", scope: !2, file: !153, line: 54, type: !164, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !25, globals: !150, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c", directory: "/workspaces/llvmta/testcases/batchtest/bsort")
!4 = !{!5, !15, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 201, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "cjpeg_wrbmp/jpeglib.h", directory: "/workspaces/llvmta/testcases/batchtest")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "JCS_UNKNOWN", value: 0)
!10 = !DIEnumerator(name: "JCS_GRAYSCALE", value: 1)
!11 = !DIEnumerator(name: "JCS_RGB", value: 2)
!12 = !DIEnumerator(name: "JCS_YCbCr", value: 3)
!13 = !DIEnumerator(name: "JCS_CMYK", value: 4)
!14 = !DIEnumerator(name: "JCS_YCCK", value: 5)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 212, baseType: !7, size: 32, elements: !16)
!16 = !{!17, !18, !19}
!17 = !DIEnumerator(name: "JDCT_ISLOW", value: 0)
!18 = !DIEnumerator(name: "JDCT_IFAST", value: 1)
!19 = !DIEnumerator(name: "JDCT_FLOAT", value: 2)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 220, baseType: !7, size: 32, elements: !21)
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "JDITHER_NONE", value: 0)
!23 = !DIEnumerator(name: "JDITHER_ORDERED", value: 1)
!24 = !DIEnumerator(name: "JDITHER_FS", value: 2)
!25 = !{!26, !63, !51}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_cd_progress_ptr", file: !27, line: 102, baseType: !28)
!27 = !DIFile(filename: "cjpeg_wrbmp/cdjpeg.h", directory: "/workspaces/llvmta/testcases/batchtest")
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_cdjpeg_progress_mgr", file: !27, line: 92, size: 256, elements: !30)
!30 = !{!31, !147, !148, !149}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !29, file: !27, line: 94, baseType: !32, size: 160)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_jpeg_progress_mgr", file: !6, line: 726, size: 160, elements: !33)
!33 = !{!34, !143, !144, !145, !146}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !32, file: !6, line: 727, baseType: !35, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 32)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_j_common_ptr", file: !6, line: 250, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 32)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_jpeg_common_struct", file: !6, line: 241, size: 192, elements: !41)
!41 = !{!42, !73, !138, !140, !141, !142}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !40, file: !6, line: 242, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 32)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_jpeg_error_mgr", file: !6, line: 662, size: 416, elements: !45)
!45 = !{!46, !47, !52, !53, !59, !60, !61, !62, !64, !69, !70, !71, !72}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !44, file: !6, line: 664, baseType: !35, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !44, file: !6, line: 667, baseType: !48, size: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 32)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !38, !51}
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !44, file: !6, line: 670, baseType: !35, size: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !44, file: !6, line: 673, baseType: !54, size: 32, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !38, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 32)
!58 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !44, file: !6, line: 677, baseType: !35, size: 32, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !44, file: !6, line: 683, baseType: !51, size: 32, offset: 160)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !44, file: !6, line: 693, baseType: !51, size: 32, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !44, file: !6, line: 701, baseType: !63, size: 32, offset: 224)
!63 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !44, file: !6, line: 713, baseType: !65, size: 32, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !44, file: !6, line: 714, baseType: !51, size: 32, offset: 288)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !44, file: !6, line: 718, baseType: !65, size: 32, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !44, file: !6, line: 719, baseType: !51, size: 32, offset: 352)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !44, file: !6, line: 720, baseType: !51, size: 32, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !40, file: !6, line: 242, baseType: !74, size: 32, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 32)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_jpeg_memory_mgr", file: !6, line: 789, size: 416, elements: !76)
!76 = !{!77, !83, !84, !96, !110, !118, !125, !126, !130, !134, !135, !136, !137}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !75, file: !6, line: 791, baseType: !78, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 32)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !38, !51, !82}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_size_t", file: !6, line: 29, baseType: !7)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !75, file: !6, line: 794, baseType: !78, size: 32, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !75, file: !6, line: 797, baseType: !85, size: 32, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 32)
!86 = !DISubroutineType(types: !87)
!87 = !{!88, !38, !51, !95, !95}
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JSAMPARRAY", file: !6, line: 51, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JSAMPROW", file: !6, line: 49, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JSAMPLE", file: !93, line: 30, baseType: !94)
!93 = !DIFile(filename: "cjpeg_wrbmp/jmorecfg.h", directory: "/workspaces/llvmta/testcases/batchtest")
!94 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JDIMENSION", file: !93, line: 63, baseType: !7)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !75, file: !6, line: 801, baseType: !97, size: 32, offset: 96)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 32)
!98 = !DISubroutineType(types: !99)
!99 = !{!100, !38, !51, !95, !95}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JBLOCKARRAY", file: !6, line: 60, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JBLOCKROW", file: !6, line: 58, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JBLOCK", file: !6, line: 56, baseType: !105)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 1024, elements: !108)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JCOEF", file: !93, line: 31, baseType: !107)
!107 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!108 = !{!109}
!109 = !DISubrange(count: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !75, file: !6, line: 805, baseType: !111, size: 32, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 32)
!112 = !DISubroutineType(types: !113)
!113 = !{!114, !38, !51, !117, !95, !95, !95}
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_jvirt_sarray_ptr", file: !6, line: 785, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !6, line: 785, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_boolean", file: !93, line: 93, baseType: !51)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !75, file: !6, line: 812, baseType: !119, size: 32, offset: 160)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 32)
!120 = !DISubroutineType(types: !121)
!121 = !{!122, !38, !51, !117, !95, !95, !95}
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_jvirt_barray_ptr", file: !6, line: 786, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !6, line: 786, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !75, file: !6, line: 819, baseType: !35, size: 32, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !75, file: !6, line: 821, baseType: !127, size: 32, offset: 224)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!128 = !DISubroutineType(types: !129)
!129 = !{!88, !38, !114, !95, !95, !117}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !75, file: !6, line: 827, baseType: !131, size: 32, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 32)
!132 = !DISubroutineType(types: !133)
!133 = !{!100, !38, !122, !95, !95, !117}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !75, file: !6, line: 833, baseType: !48, size: 32, offset: 288)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !75, file: !6, line: 835, baseType: !35, size: 32, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !75, file: !6, line: 843, baseType: !63, size: 32, offset: 352)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "max_alloc_chunk", scope: !75, file: !6, line: 846, baseType: !63, size: 32, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !40, file: !6, line: 242, baseType: !139, size: 32, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !40, file: !6, line: 242, baseType: !81, size: 32, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !40, file: !6, line: 242, baseType: !117, size: 32, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !40, file: !6, line: 242, baseType: !51, size: 32, offset: 160)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !32, file: !6, line: 730, baseType: !63, size: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !32, file: !6, line: 731, baseType: !63, size: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !32, file: !6, line: 732, baseType: !51, size: 32, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !32, file: !6, line: 733, baseType: !51, size: 32, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "completed_extra_passes", scope: !29, file: !27, line: 95, baseType: !51, size: 32, offset: 160)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "total_extra_passes", scope: !29, file: !27, line: 96, baseType: !51, size: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "percent_done", scope: !29, file: !27, line: 98, baseType: !51, size: 32, offset: 224)
!150 = !{!151, !157, !160, !0, !162, !378, !398}
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "cjpeg_wrbmp_output_array", scope: !2, file: !153, line: 49, type: !154, isLocal: false, isDefinition: true)
!153 = !DIFile(filename: "cjpeg_wrbmp/cjpeg_wrbmp.c", directory: "/workspaces/llvmta/testcases/batchtest")
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 49152, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 6144)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "cjpeg_wrbmp_jpeg_stream", scope: !2, file: !153, line: 50, type: !159, isLocal: false, isDefinition: true)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 32)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "cjpeg_wrbmp_checksum", scope: !2, file: !153, line: 51, type: !51, isLocal: false, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "cjpeg_wrbmp_jpeg_dec_2", scope: !2, file: !153, line: 56, type: !164, isLocal: false, isDefinition: true)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_jpeg_decompress_struct", file: !6, line: 406, size: 3680, elements: !165)
!165 = !{!166, !167, !168, !169, !170, !171, !172, !200, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !239, !252, !268, !269, !270, !296, !297, !298, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !325, !326, !327, !328, !329, !330, !331, !333, !334, !335, !336, !340, !341, !342, !343, !344, !345, !348, !351, !354, !357, !360, !363, !366, !369, !372, !375}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !164, file: !6, line: 407, baseType: !43, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !164, file: !6, line: 407, baseType: !74, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !164, file: !6, line: 407, baseType: !139, size: 32, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !164, file: !6, line: 407, baseType: !81, size: 32, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !164, file: !6, line: 407, baseType: !117, size: 32, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !164, file: !6, line: 407, baseType: !51, size: 32, offset: 160)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !164, file: !6, line: 410, baseType: !173, size: 32, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 32)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_jpeg_source_mgr", file: !6, line: 756, size: 224, elements: !175)
!175 = !{!176, !180, !181, !187, !191, !195, !199}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !174, file: !6, line: 758, baseType: !177, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JOCTET", file: !93, line: 32, baseType: !94)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !174, file: !6, line: 759, baseType: !82, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !174, file: !6, line: 761, baseType: !182, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !185}
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_j_decompress_ptr", file: !6, line: 254, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !174, file: !6, line: 763, baseType: !188, size: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 32)
!189 = !DISubroutineType(types: !190)
!190 = !{!117, !185}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !174, file: !6, line: 765, baseType: !192, size: 32, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 32)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !185, !63}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !174, file: !6, line: 767, baseType: !196, size: 32, offset: 160)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 32)
!197 = !DISubroutineType(types: !198)
!198 = !{!117, !185, !51}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !174, file: !6, line: 769, baseType: !182, size: 32, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !164, file: !6, line: 416, baseType: !95, size: 32, offset: 224)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !164, file: !6, line: 417, baseType: !95, size: 32, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !164, file: !6, line: 418, baseType: !51, size: 32, offset: 288)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !164, file: !6, line: 420, baseType: !204, size: 32, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_J_COLOR_SPACE", file: !6, line: 208, baseType: !5)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !164, file: !6, line: 427, baseType: !204, size: 32, offset: 352)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !164, file: !6, line: 429, baseType: !7, size: 32, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !164, file: !6, line: 429, baseType: !7, size: 32, offset: 416)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !164, file: !6, line: 431, baseType: !209, size: 32, offset: 448)
!209 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !164, file: !6, line: 433, baseType: !117, size: 32, offset: 480)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !164, file: !6, line: 434, baseType: !117, size: 32, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !164, file: !6, line: 436, baseType: !213, size: 32, offset: 544)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_J_DCT_METHOD", file: !6, line: 216, baseType: !15)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !164, file: !6, line: 438, baseType: !117, size: 32, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !164, file: !6, line: 440, baseType: !117, size: 32, offset: 608)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !164, file: !6, line: 443, baseType: !117, size: 32, offset: 640)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !164, file: !6, line: 446, baseType: !218, size: 32, offset: 672)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_J_DITHER_MODE", file: !6, line: 224, baseType: !20)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !164, file: !6, line: 448, baseType: !117, size: 32, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !164, file: !6, line: 449, baseType: !51, size: 32, offset: 736)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !164, file: !6, line: 452, baseType: !117, size: 32, offset: 768)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "enable_EXTERNal_quant", scope: !164, file: !6, line: 454, baseType: !117, size: 32, offset: 800)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !164, file: !6, line: 456, baseType: !117, size: 32, offset: 832)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !164, file: !6, line: 464, baseType: !95, size: 32, offset: 864)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !164, file: !6, line: 465, baseType: !95, size: 32, offset: 896)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !164, file: !6, line: 466, baseType: !51, size: 32, offset: 928)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !164, file: !6, line: 467, baseType: !51, size: 32, offset: 960)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !164, file: !6, line: 471, baseType: !51, size: 32, offset: 992)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !164, file: !6, line: 483, baseType: !51, size: 32, offset: 1024)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !164, file: !6, line: 485, baseType: !88, size: 32, offset: 1056)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !164, file: !6, line: 495, baseType: !95, size: 32, offset: 1088)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !164, file: !6, line: 500, baseType: !51, size: 32, offset: 1120)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !164, file: !6, line: 502, baseType: !95, size: 32, offset: 1152)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !164, file: !6, line: 508, baseType: !51, size: 32, offset: 1184)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !164, file: !6, line: 509, baseType: !95, size: 32, offset: 1216)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !164, file: !6, line: 518, baseType: !237, size: 32, offset: 1248)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 32)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2048, elements: !108)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !164, file: !6, line: 529, baseType: !240, size: 128, offset: 1280)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 128, elements: !250)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JQUANT_TBL", file: !6, line: 86, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 73, size: 1056, elements: !244)
!244 = !{!245, !249}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !243, file: !6, line: 79, baseType: !246, size: 1024)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 1024, elements: !108)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_UINT16", file: !93, line: 48, baseType: !248)
!248 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !243, file: !6, line: 85, baseType: !117, size: 32, offset: 1024)
!250 = !{!251}
!251 = !DISubrange(count: 4)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !164, file: !6, line: 532, baseType: !253, size: 128, offset: 1408)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 128, elements: !250)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JHUFF_TBL", file: !6, line: 103, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 91, size: 2240, elements: !257)
!257 = !{!258, !263, !267}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !256, file: !6, line: 93, baseType: !259, size: 136)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 136, elements: !261)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_UINT8", file: !93, line: 43, baseType: !94)
!261 = !{!262}
!262 = !DISubrange(count: 17)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !256, file: !6, line: 96, baseType: !264, size: 2048, offset: 136)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 2048, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !256, file: !6, line: 102, baseType: !117, size: 32, offset: 2208)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !164, file: !6, line: 533, baseType: !253, size: 128, offset: 1536)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !164, file: !6, line: 540, baseType: !51, size: 32, offset: 1664)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !164, file: !6, line: 542, baseType: !271, size: 32, offset: 1696)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_jpeg_component_info", file: !6, line: 172, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 108, size: 672, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !273, file: !6, line: 112, baseType: !51, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !273, file: !6, line: 113, baseType: !51, size: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !273, file: !6, line: 114, baseType: !51, size: 32, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !273, file: !6, line: 115, baseType: !51, size: 32, offset: 96)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !273, file: !6, line: 116, baseType: !51, size: 32, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !273, file: !6, line: 121, baseType: !51, size: 32, offset: 160)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !273, file: !6, line: 122, baseType: !51, size: 32, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !273, file: !6, line: 131, baseType: !95, size: 32, offset: 224)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !273, file: !6, line: 132, baseType: !95, size: 32, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !273, file: !6, line: 139, baseType: !51, size: 32, offset: 288)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !273, file: !6, line: 146, baseType: !95, size: 32, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !273, file: !6, line: 147, baseType: !95, size: 32, offset: 352)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !273, file: !6, line: 153, baseType: !117, size: 32, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !273, file: !6, line: 157, baseType: !51, size: 32, offset: 416)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !273, file: !6, line: 158, baseType: !51, size: 32, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !273, file: !6, line: 159, baseType: !51, size: 32, offset: 480)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !273, file: !6, line: 160, baseType: !51, size: 32, offset: 512)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !273, file: !6, line: 161, baseType: !51, size: 32, offset: 544)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !273, file: !6, line: 162, baseType: !51, size: 32, offset: 576)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !273, file: !6, line: 168, baseType: !241, size: 32, offset: 608)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !273, file: !6, line: 171, baseType: !81, size: 32, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !164, file: !6, line: 546, baseType: !117, size: 32, offset: 1728)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !164, file: !6, line: 548, baseType: !117, size: 32, offset: 1760)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !164, file: !6, line: 551, baseType: !299, size: 128, offset: 1792)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 128, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 16)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !164, file: !6, line: 553, baseType: !299, size: 128, offset: 1920)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !164, file: !6, line: 555, baseType: !299, size: 128, offset: 2048)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !164, file: !6, line: 558, baseType: !7, size: 32, offset: 2176)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !164, file: !6, line: 564, baseType: !117, size: 32, offset: 2208)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "JFIF_major_version", scope: !164, file: !6, line: 566, baseType: !260, size: 8, offset: 2240)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "JFIF_minor_version", scope: !164, file: !6, line: 567, baseType: !260, size: 8, offset: 2248)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !164, file: !6, line: 568, baseType: !260, size: 8, offset: 2256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !164, file: !6, line: 569, baseType: !247, size: 16, offset: 2272)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !164, file: !6, line: 570, baseType: !247, size: 16, offset: 2288)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !164, file: !6, line: 572, baseType: !117, size: 32, offset: 2304)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !164, file: !6, line: 574, baseType: !260, size: 8, offset: 2336)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !164, file: !6, line: 577, baseType: !117, size: 32, offset: 2368)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "marker_list", scope: !164, file: !6, line: 583, baseType: !315, size: 32, offset: 2400)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_saved_marker_ptr", file: !6, line: 187, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 32)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_jpeg_marker_struct", file: !6, line: 189, size: 160, elements: !318)
!318 = !{!319, !320, !321, !322, !323}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !6, line: 190, baseType: !315, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !317, file: !6, line: 191, baseType: !260, size: 8, offset: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "original_length", scope: !317, file: !6, line: 192, baseType: !7, size: 32, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "data_length", scope: !317, file: !6, line: 193, baseType: !7, size: 32, offset: 96)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !317, file: !6, line: 195, baseType: !324, size: 32, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !164, file: !6, line: 592, baseType: !51, size: 32, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !164, file: !6, line: 593, baseType: !51, size: 32, offset: 2464)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !164, file: !6, line: 595, baseType: !51, size: 32, offset: 2496)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !164, file: !6, line: 597, baseType: !95, size: 32, offset: 2528)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !164, file: !6, line: 607, baseType: !91, size: 32, offset: 2560)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !164, file: !6, line: 614, baseType: !51, size: 32, offset: 2592)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !164, file: !6, line: 615, baseType: !332, size: 128, offset: 2624)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 128, elements: !250)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !164, file: !6, line: 618, baseType: !95, size: 32, offset: 2752)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !164, file: !6, line: 620, baseType: !95, size: 32, offset: 2784)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !164, file: !6, line: 622, baseType: !51, size: 32, offset: 2816)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !164, file: !6, line: 623, baseType: !337, size: 320, offset: 2848)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 320, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 10)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !164, file: !6, line: 627, baseType: !51, size: 32, offset: 3168)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !164, file: !6, line: 627, baseType: !51, size: 32, offset: 3200)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !164, file: !6, line: 627, baseType: !51, size: 32, offset: 3232)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !164, file: !6, line: 627, baseType: !51, size: 32, offset: 3264)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !164, file: !6, line: 633, baseType: !51, size: 32, offset: 3296)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !164, file: !6, line: 638, baseType: !346, size: 32, offset: 3328)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 32)
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !6, line: 638, flags: DIFlagFwdDecl)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !164, file: !6, line: 639, baseType: !349, size: 32, offset: 3360)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 32)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !6, line: 639, flags: DIFlagFwdDecl)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !164, file: !6, line: 640, baseType: !352, size: 32, offset: 3392)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 32)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !6, line: 640, flags: DIFlagFwdDecl)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !164, file: !6, line: 641, baseType: !355, size: 32, offset: 3424)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 32)
!356 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !6, line: 641, flags: DIFlagFwdDecl)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !164, file: !6, line: 642, baseType: !358, size: 32, offset: 3456)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 32)
!359 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !6, line: 642, flags: DIFlagFwdDecl)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !164, file: !6, line: 643, baseType: !361, size: 32, offset: 3488)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 32)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !6, line: 643, flags: DIFlagFwdDecl)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !164, file: !6, line: 644, baseType: !364, size: 32, offset: 3520)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 32)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !6, line: 644, flags: DIFlagFwdDecl)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !164, file: !6, line: 645, baseType: !367, size: 32, offset: 3552)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 32)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !6, line: 645, flags: DIFlagFwdDecl)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !164, file: !6, line: 646, baseType: !370, size: 32, offset: 3584)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 32)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !6, line: 646, flags: DIFlagFwdDecl)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !164, file: !6, line: 647, baseType: !373, size: 32, offset: 3616)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 32)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !6, line: 647, flags: DIFlagFwdDecl)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !164, file: !6, line: 648, baseType: !376, size: 32, offset: 3648)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 32)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !6, line: 648, flags: DIFlagFwdDecl)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "cjpeg_wrbmp_djpeg_dest", scope: !2, file: !153, line: 58, type: !380, isLocal: false, isDefinition: true)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_djpeg_dest_struct", file: !27, line: 57, size: 192, elements: !381)
!381 = !{!382, !388, !392, !393, !396, !397}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "start_output", scope: !380, file: !27, line: 58, baseType: !383, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 32)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !185, !386}
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_djpeg_dest_ptr", file: !27, line: 55, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "put_pixel_rows", scope: !380, file: !27, line: 62, baseType: !389, size: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 32)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !185, !386, !95}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output", scope: !380, file: !27, line: 67, baseType: !383, size: 32, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "output_file", scope: !380, file: !27, line: 72, baseType: !394, size: 32, offset: 96)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_FILE", file: !6, line: 28, baseType: !51)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !380, file: !27, line: 78, baseType: !88, size: 32, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_height", scope: !380, file: !27, line: 79, baseType: !95, size: 32, offset: 160)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "cjpeg_wrbmp_bmp_dest", scope: !2, file: !153, line: 59, type: !400, isLocal: false, isDefinition: true)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_bmp_dest_struct", file: !153, line: 45, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 34, size: 384, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !409}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !401, file: !153, line: 35, baseType: !380, size: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "is_os2", scope: !401, file: !153, line: 36, baseType: !117, size: 32, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "whole_image", scope: !401, file: !153, line: 38, baseType: !114, size: 32, offset: 224)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "data_width", scope: !401, file: !153, line: 39, baseType: !95, size: 32, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "row_width", scope: !401, file: !153, line: 41, baseType: !95, size: 32, offset: 288)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pad_bytes", scope: !401, file: !153, line: 42, baseType: !51, size: 32, offset: 320)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "cur_output_row", scope: !401, file: !153, line: 44, baseType: !95, size: 32, offset: 352)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "cjpeg_wrbmp_colormap", scope: !412, file: !415, line: 20, type: !416, isLocal: false, isDefinition: true)
!412 = distinct !DICompileUnit(language: DW_LANG_C99, file: !413, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !414, splitDebugInlining: false, nameTableKind: None)
!413 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/cjpeg_wrbmp/input.c", directory: "/workspaces/llvmta/testcases/batchtest/bsort")
!414 = !{!410}
!415 = !DIFile(filename: "cjpeg_wrbmp/input.c", directory: "/workspaces/llvmta/testcases/batchtest")
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 6144, elements: !417)
!417 = !{!418, !266}
!418 = !DISubrange(count: 3)
!419 = distinct !DICompileUnit(language: DW_LANG_C99, file: !420, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!420 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!421 = distinct !DICompileUnit(language: DW_LANG_C99, file: !422, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!422 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!423 = distinct !DICompileUnit(language: DW_LANG_C99, file: !424, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!424 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!425 = distinct !DICompileUnit(language: DW_LANG_C99, file: !426, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!426 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!427 = distinct !DICompileUnit(language: DW_LANG_C99, file: !428, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!428 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!429 = distinct !DICompileUnit(language: DW_LANG_C99, file: !430, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!430 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!431 = distinct !DICompileUnit(language: DW_LANG_C99, file: !432, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!432 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!433 = distinct !DICompileUnit(language: DW_LANG_C99, file: !434, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!434 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!435 = distinct !DICompileUnit(language: DW_LANG_C99, file: !436, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!436 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!437 = distinct !DICompileUnit(language: DW_LANG_C99, file: !438, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!439 = distinct !DICompileUnit(language: DW_LANG_C99, file: !440, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!440 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!441 = distinct !DICompileUnit(language: DW_LANG_C99, file: !442, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!442 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!443 = distinct !DICompileUnit(language: DW_LANG_C99, file: !444, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!444 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!445 = distinct !DICompileUnit(language: DW_LANG_C99, file: !446, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!446 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!447 = distinct !DICompileUnit(language: DW_LANG_C99, file: !448, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!448 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!449 = distinct !DICompileUnit(language: DW_LANG_C99, file: !450, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!450 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!451 = distinct !DICompileUnit(language: DW_LANG_C99, file: !452, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!452 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!453 = distinct !DICompileUnit(language: DW_LANG_C99, file: !454, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!454 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!455 = distinct !DICompileUnit(language: DW_LANG_C99, file: !456, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!456 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!457 = distinct !DICompileUnit(language: DW_LANG_C99, file: !458, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!458 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!459 = distinct !DICompileUnit(language: DW_LANG_C99, file: !460, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!460 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!461 = distinct !DICompileUnit(language: DW_LANG_C99, file: !462, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!462 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!463 = distinct !DICompileUnit(language: DW_LANG_C99, file: !464, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!464 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!465 = distinct !DICompileUnit(language: DW_LANG_C99, file: !466, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!466 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!467 = distinct !DICompileUnit(language: DW_LANG_C99, file: !468, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!468 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!469 = distinct !DICompileUnit(language: DW_LANG_C99, file: !470, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!470 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!471 = distinct !DICompileUnit(language: DW_LANG_C99, file: !472, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!472 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!473 = distinct !DICompileUnit(language: DW_LANG_C99, file: !474, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!474 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!475 = distinct !DICompileUnit(language: DW_LANG_C99, file: !476, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!476 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!477 = distinct !DICompileUnit(language: DW_LANG_C99, file: !478, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!478 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!479 = distinct !DICompileUnit(language: DW_LANG_C99, file: !480, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!480 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!481 = distinct !DICompileUnit(language: DW_LANG_C99, file: !482, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!482 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!483 = distinct !DICompileUnit(language: DW_LANG_C99, file: !484, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!484 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!485 = distinct !DICompileUnit(language: DW_LANG_C99, file: !486, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!486 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!487 = distinct !DICompileUnit(language: DW_LANG_C99, file: !488, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!488 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!489 = distinct !DICompileUnit(language: DW_LANG_C99, file: !490, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!490 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!491 = distinct !DICompileUnit(language: DW_LANG_C99, file: !492, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!492 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!493 = distinct !DICompileUnit(language: DW_LANG_C99, file: !494, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!494 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!495 = distinct !DICompileUnit(language: DW_LANG_C99, file: !496, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!496 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!497 = distinct !DICompileUnit(language: DW_LANG_C99, file: !498, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!498 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!499 = distinct !DICompileUnit(language: DW_LANG_C99, file: !500, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!500 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!501 = distinct !DICompileUnit(language: DW_LANG_C99, file: !502, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!502 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!503 = distinct !DICompileUnit(language: DW_LANG_C99, file: !504, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!504 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!505 = distinct !DICompileUnit(language: DW_LANG_C99, file: !506, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!506 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!507 = distinct !DICompileUnit(language: DW_LANG_C99, file: !508, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!508 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!509 = distinct !DICompileUnit(language: DW_LANG_C99, file: !510, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!510 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!511 = distinct !DICompileUnit(language: DW_LANG_C99, file: !512, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!512 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!513 = distinct !DICompileUnit(language: DW_LANG_C99, file: !514, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!514 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!515 = distinct !DICompileUnit(language: DW_LANG_C99, file: !516, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!516 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!517 = distinct !DICompileUnit(language: DW_LANG_C99, file: !518, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!518 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!519 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!520 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!521 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!522 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!523 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!524 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!525 = distinct !DICompileUnit(language: DW_LANG_C99, file: !526, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!526 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!527 = distinct !DICompileUnit(language: DW_LANG_C99, file: !528, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!528 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!529 = distinct !DICompileUnit(language: DW_LANG_C99, file: !530, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!530 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!531 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)"}
!532 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!533 = !{i32 7, !"Dwarf Version", i32 5}
!534 = !{i32 2, !"Debug Info Version", i32 3}
!535 = !{i32 1, !"wchar_size", i32 4}
!536 = !{i32 1, !"min_enum_size", i32 4}
!537 = !{i32 1, !"branch-target-enforcement", i32 0}
!538 = !{i32 1, !"sign-return-address", i32 0}
!539 = !{i32 1, !"sign-return-address-all", i32 0}
!540 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!541 = !{i32 7, !"frame-pointer", i32 2}
!542 = distinct !DISubprogram(name: "cjpeg_wrbmp_init", scope: !153, file: !153, line: 79, type: !543, scopeLine: 80, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !545)
!543 = !DISubroutineType(types: !544)
!544 = !{null}
!545 = !{}
!546 = !DILocation(line: 81, column: 3, scope: !542)
!547 = !DILocation(line: 83, column: 50, scope: !542)
!548 = !DILocation(line: 84, column: 50, scope: !542)
!549 = !DILocation(line: 85, column: 50, scope: !542)
!550 = !DILocation(line: 86, column: 50, scope: !542)
!551 = !DILocation(line: 88, column: 50, scope: !542)
!552 = !DILocation(line: 89, column: 50, scope: !542)
!553 = !DILocation(line: 90, column: 50, scope: !542)
!554 = !DILocation(line: 91, column: 50, scope: !542)
!555 = !DILocation(line: 93, column: 27, scope: !542)
!556 = !DILocation(line: 95, column: 24, scope: !542)
!557 = !DILocation(line: 96, column: 1, scope: !542)
!558 = distinct !DISubprogram(name: "cjpeg_wrbmp_putc_modified", scope: !153, file: !153, line: 101, type: !559, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !545)
!559 = !DISubroutineType(types: !560)
!560 = !{!51, !51}
!561 = !DILocalVariable(name: "character", arg: 1, scope: !558, file: !153, line: 101, type: !51)
!562 = !DILocation(line: 0, scope: !558)
!563 = !DILocation(line: 103, column: 34, scope: !558)
!564 = !DILocation(line: 103, column: 6, scope: !558)
!565 = !DILocation(line: 103, column: 32, scope: !558)
!566 = !DILocation(line: 105, column: 3, scope: !558)
!567 = !DILocation(line: 107, column: 24, scope: !558)
!568 = !DILocation(line: 109, column: 3, scope: !558)
!569 = distinct !DISubprogram(name: "cjpeg_wrbmp_finish_output_bmp", scope: !153, file: !153, line: 112, type: !183, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !545)
!570 = !DILocalVariable(name: "cinfo", arg: 1, scope: !569, file: !153, line: 112, type: !185)
!571 = !DILocation(line: 0, scope: !569)
!572 = !DILocation(line: 116, column: 44, scope: !569)
!573 = !DILocalVariable(name: "progress", scope: !569, file: !153, line: 115, type: !26)
!574 = !DILocalVariable(name: "row", scope: !569, file: !153, line: 114, type: !95)
!575 = !DILocation(line: 120, column: 9, scope: !576)
!576 = distinct !DILexicalBlock(scope: !569, file: !153, line: 120, column: 3)
!577 = !DILocation(line: 0, scope: !576)
!578 = !DILocation(line: 120, column: 22, scope: !579)
!579 = distinct !DILexicalBlock(scope: !576, file: !153, line: 120, column: 3)
!580 = !DILocation(line: 120, column: 3, scope: !576)
!581 = !DILocation(line: 122, column: 53, scope: !582)
!582 = distinct !DILexicalBlock(scope: !579, file: !153, line: 120, column: 35)
!583 = !DILocation(line: 122, column: 67, scope: !582)
!584 = !DILocation(line: 122, column: 21, scope: !582)
!585 = !DILocation(line: 122, column: 34, scope: !582)
!586 = !DILocation(line: 123, column: 50, scope: !582)
!587 = !DILocation(line: 123, column: 21, scope: !582)
!588 = !DILocation(line: 123, column: 32, scope: !582)
!589 = !DILocation(line: 125, column: 3, scope: !582)
!590 = !DILocation(line: 120, column: 27, scope: !579)
!591 = !DILocation(line: 120, column: 3, scope: !579)
!592 = distinct !{!592, !580, !593, !594}
!593 = !DILocation(line: 125, column: 3, scope: !576)
!594 = !{!"llvm.loop.mustprogress"}
!595 = !DILocation(line: 127, column: 17, scope: !596)
!596 = distinct !DILexicalBlock(scope: !569, file: !153, line: 127, column: 8)
!597 = !DILocation(line: 127, column: 8, scope: !569)
!598 = !DILocation(line: 128, column: 15, scope: !596)
!599 = !DILocation(line: 128, column: 37, scope: !596)
!600 = !DILocation(line: 128, column: 5, scope: !596)
!601 = !DILocation(line: 129, column: 1, scope: !569)
!602 = distinct !DISubprogram(name: "cjpeg_wrbmp_write_colormap", scope: !153, file: !153, line: 131, type: !603, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !545)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !185, !51, !51, !51}
!605 = !DILocalVariable(name: "cinfo", arg: 1, scope: !602, file: !153, line: 132, type: !185)
!606 = !DILocation(line: 0, scope: !602)
!607 = !DILocalVariable(name: "map_colors", arg: 2, scope: !602, file: !153, line: 133, type: !51)
!608 = !DILocalVariable(name: "map_entry_size", arg: 3, scope: !602, file: !153, line: 133, type: !51)
!609 = !DILocalVariable(name: "cMap", arg: 4, scope: !602, file: !153, line: 133, type: !51)
!610 = !DILocalVariable(name: "num_colors", scope: !602, file: !153, line: 136, type: !51)
!611 = !DILocation(line: 139, column: 13, scope: !612)
!612 = distinct !DILexicalBlock(scope: !602, file: !153, line: 139, column: 8)
!613 = !DILocation(line: 139, column: 8, scope: !602)
!614 = !DILocation(line: 141, column: 17, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !153, line: 141, column: 10)
!616 = distinct !DILexicalBlock(scope: !612, file: !153, line: 139, column: 20)
!617 = !DILocation(line: 141, column: 38, scope: !615)
!618 = !DILocation(line: 141, column: 10, scope: !616)
!619 = !DILocalVariable(name: "i", scope: !602, file: !153, line: 137, type: !51)
!620 = !DILocation(line: 144, column: 13, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !153, line: 144, column: 7)
!622 = distinct !DILexicalBlock(scope: !615, file: !153, line: 141, column: 45)
!623 = !DILocation(line: 0, scope: !621)
!624 = !DILocation(line: 144, column: 22, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !153, line: 144, column: 7)
!626 = !DILocation(line: 144, column: 7, scope: !621)
!627 = !DILocation(line: 145, column: 36, scope: !628)
!628 = distinct !DILexicalBlock(scope: !625, file: !153, line: 144, column: 33)
!629 = !DILocation(line: 145, column: 9, scope: !628)
!630 = !DILocation(line: 147, column: 36, scope: !628)
!631 = !DILocation(line: 147, column: 9, scope: !628)
!632 = !DILocation(line: 149, column: 36, scope: !628)
!633 = !DILocation(line: 149, column: 9, scope: !628)
!634 = !DILocation(line: 153, column: 11, scope: !628)
!635 = !DILocation(line: 154, column: 7, scope: !628)
!636 = !DILocation(line: 144, column: 28, scope: !625)
!637 = !DILocation(line: 144, column: 7, scope: !625)
!638 = distinct !{!638, !626, !639, !594}
!639 = !DILocation(line: 154, column: 7, scope: !621)
!640 = !DILocation(line: 155, column: 5, scope: !622)
!641 = !DILocation(line: 158, column: 13, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !153, line: 158, column: 7)
!643 = distinct !DILexicalBlock(scope: !615, file: !153, line: 155, column: 12)
!644 = !DILocation(line: 0, scope: !642)
!645 = !DILocation(line: 158, column: 22, scope: !646)
!646 = distinct !DILexicalBlock(scope: !642, file: !153, line: 158, column: 7)
!647 = !DILocation(line: 158, column: 7, scope: !642)
!648 = !DILocation(line: 160, column: 36, scope: !649)
!649 = distinct !DILexicalBlock(scope: !646, file: !153, line: 158, column: 33)
!650 = !DILocation(line: 160, column: 9, scope: !649)
!651 = !DILocation(line: 162, column: 36, scope: !649)
!652 = !DILocation(line: 162, column: 9, scope: !649)
!653 = !DILocation(line: 164, column: 36, scope: !649)
!654 = !DILocation(line: 164, column: 9, scope: !649)
!655 = !DILocation(line: 168, column: 11, scope: !649)
!656 = !DILocation(line: 169, column: 7, scope: !649)
!657 = !DILocation(line: 158, column: 28, scope: !646)
!658 = !DILocation(line: 158, column: 7, scope: !646)
!659 = distinct !{!659, !647, !660, !594}
!660 = !DILocation(line: 169, column: 7, scope: !642)
!661 = !DILocation(line: 171, column: 3, scope: !616)
!662 = !DILocation(line: 174, column: 11, scope: !663)
!663 = distinct !DILexicalBlock(scope: !664, file: !153, line: 174, column: 5)
!664 = distinct !DILexicalBlock(scope: !612, file: !153, line: 171, column: 10)
!665 = !DILocation(line: 0, scope: !663)
!666 = !DILocation(line: 174, column: 20, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !153, line: 174, column: 5)
!668 = !DILocation(line: 174, column: 5, scope: !663)
!669 = !DILocation(line: 175, column: 7, scope: !670)
!670 = distinct !DILexicalBlock(scope: !667, file: !153, line: 174, column: 31)
!671 = !DILocation(line: 176, column: 7, scope: !670)
!672 = !DILocation(line: 177, column: 7, scope: !670)
!673 = !DILocation(line: 180, column: 9, scope: !670)
!674 = !DILocation(line: 181, column: 5, scope: !670)
!675 = !DILocation(line: 174, column: 26, scope: !667)
!676 = !DILocation(line: 174, column: 5, scope: !667)
!677 = distinct !{!677, !668, !678, !594}
!678 = !DILocation(line: 181, column: 5, scope: !663)
!679 = !DILocation(line: 186, column: 3, scope: !602)
!680 = !DILocation(line: 186, column: 3, scope: !681)
!681 = distinct !DILexicalBlock(scope: !602, file: !153, line: 186, column: 3)
!682 = !DILocation(line: 193, column: 3, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !153, line: 186, column: 24)
!684 = distinct !DILexicalBlock(scope: !681, file: !153, line: 186, column: 3)
!685 = !DILocation(line: 186, column: 3, scope: !684)
!686 = distinct !{!686, !680, !687, !594}
!687 = !DILocation(line: 193, column: 3, scope: !681)
!688 = !DILocation(line: 194, column: 1, scope: !602)
!689 = distinct !DISubprogram(name: "cjpeg_wrbmp_main", scope: !153, file: !153, line: 196, type: !543, scopeLine: 197, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !545)
!690 = !DILocation(line: 198, column: 3, scope: !689)
!691 = !DILocation(line: 199, column: 3, scope: !689)
!692 = !DILocation(line: 201, column: 3, scope: !689)
!693 = !DILocation(line: 202, column: 3, scope: !689)
!694 = !DILocation(line: 203, column: 1, scope: !689)
!695 = distinct !DISubprogram(name: "cjpeg_wrbmp_return", scope: !153, file: !153, line: 205, type: !696, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !545)
!696 = !DISubroutineType(types: !697)
!697 = !{!51}
!698 = !DILocation(line: 207, column: 12, scope: !695)
!699 = !DILocation(line: 207, column: 50, scope: !695)
!700 = !DILocation(line: 207, column: 3, scope: !695)
!701 = distinct !DISubprogram(name: "main", scope: !153, file: !153, line: 210, type: !696, scopeLine: 211, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !545)
!702 = !DILocation(line: 212, column: 3, scope: !701)
!703 = !DILocation(line: 213, column: 3, scope: !701)
!704 = !DILocation(line: 215, column: 12, scope: !701)
!705 = !DILocation(line: 215, column: 3, scope: !701)
!706 = distinct !DISubprogram(name: "cjpeg_wrbmp_initInput", scope: !415, file: !415, line: 22, type: !543, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !412, retainedNodes: !545)
!707 = !DILocalVariable(name: "tmp", scope: !706, file: !415, line: 25, type: !708)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 6144, elements: !417)
!709 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !94)
!710 = !DILocation(line: 25, column: 26, scope: !706)
!711 = !DILocalVariable(name: "i", scope: !706, file: !415, line: 24, type: !51)
!712 = !DILocation(line: 0, scope: !706)
!713 = !DILocation(line: 81, column: 9, scope: !714)
!714 = distinct !DILexicalBlock(scope: !706, file: !415, line: 81, column: 3)
!715 = !DILocation(line: 0, scope: !714)
!716 = !DILocation(line: 81, column: 18, scope: !717)
!717 = distinct !DILexicalBlock(scope: !714, file: !415, line: 81, column: 3)
!718 = !DILocation(line: 81, column: 3, scope: !714)
!719 = !DILocalVariable(name: "j", scope: !706, file: !415, line: 24, type: !51)
!720 = !DILocation(line: 83, column: 11, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !415, line: 83, column: 5)
!722 = distinct !DILexicalBlock(scope: !717, file: !415, line: 81, column: 29)
!723 = !DILocation(line: 0, scope: !721)
!724 = !DILocation(line: 83, column: 20, scope: !725)
!725 = distinct !DILexicalBlock(scope: !721, file: !415, line: 83, column: 5)
!726 = !DILocation(line: 83, column: 5, scope: !721)
!727 = !DILocation(line: 84, column: 40, scope: !725)
!728 = !DILocation(line: 84, column: 7, scope: !725)
!729 = !DILocation(line: 84, column: 38, scope: !725)
!730 = !DILocation(line: 83, column: 26, scope: !725)
!731 = !DILocation(line: 83, column: 5, scope: !725)
!732 = distinct !{!732, !726, !733, !594}
!733 = !DILocation(line: 84, column: 52, scope: !721)
!734 = !DILocation(line: 85, column: 3, scope: !722)
!735 = !DILocation(line: 81, column: 24, scope: !717)
!736 = !DILocation(line: 81, column: 3, scope: !717)
!737 = distinct !{!737, !718, !738, !594}
!738 = !DILocation(line: 85, column: 3, scope: !714)
!739 = !DILocation(line: 86, column: 1, scope: !706)
!740 = distinct !DISubprogram(name: "__absvdi2", scope: !420, file: !420, line: 22, type: !741, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !419, retainedNodes: !545)
!741 = !DISubroutineType(types: !545)
!742 = !DILocation(line: 25, column: 11, scope: !740)
!743 = !DILocation(line: 25, column: 9, scope: !740)
!744 = !DILocation(line: 26, column: 9, scope: !740)
!745 = !DILocation(line: 28, column: 20, scope: !740)
!746 = !DILocation(line: 28, column: 5, scope: !740)
!747 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !472, file: !472, line: 57, type: !741, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !471, retainedNodes: !545)
!748 = !DILocation(line: 59, column: 1, scope: !747)
!749 = distinct !DISubprogram(name: "__absvsi2", scope: !422, file: !422, line: 22, type: !741, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !421, retainedNodes: !545)
!750 = !DILocation(line: 25, column: 11, scope: !749)
!751 = !DILocation(line: 25, column: 9, scope: !749)
!752 = !DILocation(line: 26, column: 9, scope: !749)
!753 = !DILocation(line: 28, column: 20, scope: !749)
!754 = !DILocation(line: 28, column: 5, scope: !749)
!755 = distinct !DISubprogram(name: "__addvdi3", scope: !426, file: !426, line: 22, type: !741, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !425, retainedNodes: !545)
!756 = !DILocation(line: 24, column: 27, scope: !755)
!757 = !DILocation(line: 25, column: 11, scope: !755)
!758 = !DILocation(line: 25, column: 9, scope: !755)
!759 = !DILocation(line: 27, column: 15, scope: !755)
!760 = !DILocation(line: 27, column: 13, scope: !755)
!761 = !DILocation(line: 28, column: 13, scope: !755)
!762 = !DILocation(line: 29, column: 5, scope: !755)
!763 = !DILocation(line: 32, column: 15, scope: !755)
!764 = !DILocation(line: 32, column: 13, scope: !755)
!765 = !DILocation(line: 33, column: 13, scope: !755)
!766 = !DILocation(line: 35, column: 5, scope: !755)
!767 = distinct !DISubprogram(name: "__addvsi3", scope: !428, file: !428, line: 22, type: !741, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !427, retainedNodes: !545)
!768 = !DILocation(line: 24, column: 27, scope: !767)
!769 = !DILocation(line: 25, column: 11, scope: !767)
!770 = !DILocation(line: 25, column: 9, scope: !767)
!771 = !DILocation(line: 27, column: 15, scope: !767)
!772 = !DILocation(line: 27, column: 13, scope: !767)
!773 = !DILocation(line: 28, column: 13, scope: !767)
!774 = !DILocation(line: 29, column: 5, scope: !767)
!775 = !DILocation(line: 32, column: 15, scope: !767)
!776 = !DILocation(line: 32, column: 13, scope: !767)
!777 = !DILocation(line: 33, column: 13, scope: !767)
!778 = !DILocation(line: 35, column: 5, scope: !767)
!779 = distinct !DISubprogram(name: "__ashldi3", scope: !432, file: !432, line: 24, type: !741, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !431, retainedNodes: !545)
!780 = !DILocation(line: 29, column: 11, scope: !779)
!781 = !DILocation(line: 29, column: 15, scope: !779)
!782 = !DILocation(line: 30, column: 11, scope: !779)
!783 = !DILocation(line: 30, column: 9, scope: !779)
!784 = !DILocation(line: 32, column: 18, scope: !779)
!785 = !DILocation(line: 32, column: 22, scope: !779)
!786 = !DILocation(line: 33, column: 33, scope: !779)
!787 = !DILocation(line: 33, column: 43, scope: !779)
!788 = !DILocation(line: 33, column: 37, scope: !779)
!789 = !DILocation(line: 33, column: 16, scope: !779)
!790 = !DILocation(line: 33, column: 18, scope: !779)
!791 = !DILocation(line: 33, column: 23, scope: !779)
!792 = !DILocation(line: 34, column: 5, scope: !779)
!793 = !DILocation(line: 37, column: 15, scope: !779)
!794 = !DILocation(line: 37, column: 13, scope: !779)
!795 = !DILocation(line: 38, column: 13, scope: !779)
!796 = !DILocation(line: 39, column: 33, scope: !779)
!797 = !DILocation(line: 39, column: 37, scope: !779)
!798 = !DILocation(line: 39, column: 18, scope: !779)
!799 = !DILocation(line: 39, column: 23, scope: !779)
!800 = !DILocation(line: 40, column: 32, scope: !779)
!801 = !DILocation(line: 40, column: 34, scope: !779)
!802 = !DILocation(line: 40, column: 39, scope: !779)
!803 = !DILocation(line: 40, column: 56, scope: !779)
!804 = !DILocation(line: 40, column: 77, scope: !779)
!805 = !DILocation(line: 40, column: 60, scope: !779)
!806 = !DILocation(line: 40, column: 45, scope: !779)
!807 = !DILocation(line: 40, column: 16, scope: !779)
!808 = !DILocation(line: 40, column: 18, scope: !779)
!809 = !DILocation(line: 40, column: 23, scope: !779)
!810 = !DILocation(line: 42, column: 19, scope: !779)
!811 = !DILocation(line: 42, column: 5, scope: !779)
!812 = !DILocation(line: 0, scope: !779)
!813 = !DILocation(line: 43, column: 1, scope: !779)
!814 = distinct !DISubprogram(name: "__ashrdi3", scope: !436, file: !436, line: 24, type: !741, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !435, retainedNodes: !545)
!815 = !DILocation(line: 29, column: 11, scope: !814)
!816 = !DILocation(line: 29, column: 15, scope: !814)
!817 = !DILocation(line: 30, column: 11, scope: !814)
!818 = !DILocation(line: 30, column: 9, scope: !814)
!819 = !DILocation(line: 33, column: 31, scope: !814)
!820 = !DILocation(line: 33, column: 33, scope: !814)
!821 = !DILocation(line: 33, column: 38, scope: !814)
!822 = !DILocation(line: 33, column: 16, scope: !814)
!823 = !DILocation(line: 33, column: 18, scope: !814)
!824 = !DILocation(line: 33, column: 23, scope: !814)
!825 = !DILocation(line: 34, column: 30, scope: !814)
!826 = !DILocation(line: 34, column: 32, scope: !814)
!827 = !DILocation(line: 34, column: 43, scope: !814)
!828 = !DILocation(line: 34, column: 37, scope: !814)
!829 = !DILocation(line: 34, column: 18, scope: !814)
!830 = !DILocation(line: 34, column: 22, scope: !814)
!831 = !DILocation(line: 35, column: 5, scope: !814)
!832 = !DILocation(line: 38, column: 15, scope: !814)
!833 = !DILocation(line: 38, column: 13, scope: !814)
!834 = !DILocation(line: 39, column: 13, scope: !814)
!835 = !DILocation(line: 40, column: 32, scope: !814)
!836 = !DILocation(line: 40, column: 34, scope: !814)
!837 = !DILocation(line: 40, column: 39, scope: !814)
!838 = !DILocation(line: 40, column: 16, scope: !814)
!839 = !DILocation(line: 40, column: 18, scope: !814)
!840 = !DILocation(line: 40, column: 24, scope: !814)
!841 = !DILocation(line: 41, column: 31, scope: !814)
!842 = !DILocation(line: 41, column: 33, scope: !814)
!843 = !DILocation(line: 41, column: 55, scope: !814)
!844 = !DILocation(line: 41, column: 38, scope: !814)
!845 = !DILocation(line: 41, column: 72, scope: !814)
!846 = !DILocation(line: 41, column: 76, scope: !814)
!847 = !DILocation(line: 41, column: 61, scope: !814)
!848 = !DILocation(line: 41, column: 18, scope: !814)
!849 = !DILocation(line: 41, column: 22, scope: !814)
!850 = !DILocation(line: 43, column: 19, scope: !814)
!851 = !DILocation(line: 43, column: 5, scope: !814)
!852 = !DILocation(line: 0, scope: !814)
!853 = !DILocation(line: 44, column: 1, scope: !814)
!854 = distinct !DISubprogram(name: "__clzdi2", scope: !440, file: !440, line: 22, type: !741, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !439, retainedNodes: !545)
!855 = !DILocation(line: 25, column: 7, scope: !854)
!856 = !DILocation(line: 25, column: 11, scope: !854)
!857 = !DILocation(line: 26, column: 26, scope: !854)
!858 = !DILocation(line: 26, column: 28, scope: !854)
!859 = !DILocation(line: 26, column: 33, scope: !854)
!860 = !DILocation(line: 27, column: 29, scope: !854)
!861 = !DILocation(line: 27, column: 31, scope: !854)
!862 = !DILocation(line: 27, column: 49, scope: !854)
!863 = !DILocation(line: 27, column: 42, scope: !854)
!864 = !DILocation(line: 27, column: 12, scope: !854)
!865 = !{i32 0, i32 33}
!866 = !DILocation(line: 28, column: 15, scope: !854)
!867 = !DILocation(line: 27, column: 59, scope: !854)
!868 = !DILocation(line: 27, column: 5, scope: !854)
!869 = distinct !DISubprogram(name: "__clzsi2", scope: !442, file: !442, line: 22, type: !741, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !441, retainedNodes: !545)
!870 = !DILocation(line: 25, column: 34, scope: !869)
!871 = !DILocation(line: 25, column: 40, scope: !869)
!872 = !DILocation(line: 26, column: 14, scope: !869)
!873 = !DILocation(line: 26, column: 7, scope: !869)
!874 = !DILocation(line: 29, column: 13, scope: !869)
!875 = !DILocation(line: 29, column: 23, scope: !869)
!876 = !DILocation(line: 29, column: 29, scope: !869)
!877 = !DILocation(line: 30, column: 13, scope: !869)
!878 = !DILocation(line: 30, column: 7, scope: !869)
!879 = !DILocation(line: 31, column: 7, scope: !869)
!880 = !DILocation(line: 33, column: 13, scope: !869)
!881 = !DILocation(line: 33, column: 21, scope: !869)
!882 = !DILocation(line: 33, column: 27, scope: !869)
!883 = !DILocation(line: 34, column: 13, scope: !869)
!884 = !DILocation(line: 34, column: 7, scope: !869)
!885 = !DILocation(line: 35, column: 7, scope: !869)
!886 = !DILocation(line: 37, column: 13, scope: !869)
!887 = !DILocation(line: 37, column: 20, scope: !869)
!888 = !DILocation(line: 37, column: 26, scope: !869)
!889 = !DILocation(line: 38, column: 13, scope: !869)
!890 = !DILocation(line: 38, column: 7, scope: !869)
!891 = !DILocation(line: 39, column: 7, scope: !869)
!892 = !DILocation(line: 52, column: 20, scope: !869)
!893 = !DILocation(line: 52, column: 37, scope: !869)
!894 = !DILocation(line: 52, column: 25, scope: !869)
!895 = !DILocation(line: 52, column: 14, scope: !869)
!896 = !DILocation(line: 52, column: 5, scope: !869)
!897 = distinct !DISubprogram(name: "__cmpdi2", scope: !446, file: !446, line: 23, type: !741, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !445, retainedNodes: !545)
!898 = !DILocation(line: 26, column: 7, scope: !897)
!899 = !DILocation(line: 26, column: 11, scope: !897)
!900 = !DILocation(line: 28, column: 7, scope: !897)
!901 = !DILocation(line: 28, column: 11, scope: !897)
!902 = !DILocation(line: 29, column: 11, scope: !897)
!903 = !DILocation(line: 29, column: 13, scope: !897)
!904 = !DILocation(line: 29, column: 22, scope: !897)
!905 = !DILocation(line: 29, column: 24, scope: !897)
!906 = !DILocation(line: 29, column: 18, scope: !897)
!907 = !DILocation(line: 29, column: 9, scope: !897)
!908 = !DILocation(line: 30, column: 9, scope: !897)
!909 = !DILocation(line: 31, column: 11, scope: !897)
!910 = !DILocation(line: 31, column: 13, scope: !897)
!911 = !DILocation(line: 31, column: 22, scope: !897)
!912 = !DILocation(line: 31, column: 24, scope: !897)
!913 = !DILocation(line: 31, column: 18, scope: !897)
!914 = !DILocation(line: 31, column: 9, scope: !897)
!915 = !DILocation(line: 32, column: 9, scope: !897)
!916 = !DILocation(line: 33, column: 13, scope: !897)
!917 = !DILocation(line: 33, column: 23, scope: !897)
!918 = !DILocation(line: 33, column: 17, scope: !897)
!919 = !DILocation(line: 33, column: 9, scope: !897)
!920 = !DILocation(line: 34, column: 9, scope: !897)
!921 = !DILocation(line: 35, column: 13, scope: !897)
!922 = !DILocation(line: 35, column: 23, scope: !897)
!923 = !DILocation(line: 35, column: 17, scope: !897)
!924 = !DILocation(line: 35, column: 9, scope: !897)
!925 = !DILocation(line: 36, column: 9, scope: !897)
!926 = !DILocation(line: 37, column: 5, scope: !897)
!927 = !DILocation(line: 0, scope: !897)
!928 = !DILocation(line: 38, column: 1, scope: !897)
!929 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !446, file: !446, line: 46, type: !741, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !445, retainedNodes: !545)
!930 = !DILocation(line: 48, column: 9, scope: !929)
!931 = !DILocation(line: 48, column: 24, scope: !929)
!932 = !DILocation(line: 48, column: 2, scope: !929)
!933 = distinct !DISubprogram(name: "__ctzdi2", scope: !450, file: !450, line: 22, type: !741, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !449, retainedNodes: !545)
!934 = !DILocation(line: 25, column: 7, scope: !933)
!935 = !DILocation(line: 25, column: 11, scope: !933)
!936 = !DILocation(line: 26, column: 28, scope: !933)
!937 = !DILocation(line: 26, column: 32, scope: !933)
!938 = !DILocation(line: 27, column: 29, scope: !933)
!939 = !DILocation(line: 27, column: 31, scope: !933)
!940 = !DILocation(line: 27, column: 41, scope: !933)
!941 = !DILocation(line: 27, column: 12, scope: !933)
!942 = !DILocation(line: 28, column: 18, scope: !933)
!943 = !DILocation(line: 27, column: 59, scope: !933)
!944 = !DILocation(line: 27, column: 5, scope: !933)
!945 = distinct !DISubprogram(name: "__ctzsi2", scope: !452, file: !452, line: 22, type: !741, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !451, retainedNodes: !545)
!946 = !DILocation(line: 25, column: 20, scope: !945)
!947 = !DILocation(line: 25, column: 34, scope: !945)
!948 = !DILocation(line: 25, column: 40, scope: !945)
!949 = !DILocation(line: 26, column: 7, scope: !945)
!950 = !DILocation(line: 29, column: 13, scope: !945)
!951 = !DILocation(line: 29, column: 23, scope: !945)
!952 = !DILocation(line: 29, column: 29, scope: !945)
!953 = !DILocation(line: 30, column: 7, scope: !945)
!954 = !DILocation(line: 31, column: 7, scope: !945)
!955 = !DILocation(line: 33, column: 13, scope: !945)
!956 = !DILocation(line: 33, column: 21, scope: !945)
!957 = !DILocation(line: 33, column: 27, scope: !945)
!958 = !DILocation(line: 34, column: 7, scope: !945)
!959 = !DILocation(line: 35, column: 7, scope: !945)
!960 = !DILocation(line: 37, column: 13, scope: !945)
!961 = !DILocation(line: 37, column: 20, scope: !945)
!962 = !DILocation(line: 37, column: 26, scope: !945)
!963 = !DILocation(line: 38, column: 7, scope: !945)
!964 = !DILocation(line: 40, column: 7, scope: !945)
!965 = !DILocation(line: 56, column: 25, scope: !945)
!966 = !DILocation(line: 56, column: 20, scope: !945)
!967 = !DILocation(line: 56, column: 44, scope: !945)
!968 = !DILocation(line: 56, column: 32, scope: !945)
!969 = !DILocation(line: 56, column: 14, scope: !945)
!970 = !DILocation(line: 56, column: 5, scope: !945)
!971 = distinct !DISubprogram(name: "__divdi3", scope: !456, file: !456, line: 20, type: !741, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !455, retainedNodes: !545)
!972 = !DILocation(line: 23, column: 20, scope: !971)
!973 = !DILocation(line: 24, column: 20, scope: !971)
!974 = !DILocation(line: 25, column: 12, scope: !971)
!975 = !DILocation(line: 25, column: 19, scope: !971)
!976 = !DILocation(line: 26, column: 12, scope: !971)
!977 = !DILocation(line: 26, column: 19, scope: !971)
!978 = !DILocation(line: 27, column: 9, scope: !971)
!979 = !DILocation(line: 28, column: 13, scope: !971)
!980 = !DILocation(line: 28, column: 44, scope: !971)
!981 = !DILocation(line: 28, column: 51, scope: !971)
!982 = !DILocation(line: 28, column: 5, scope: !971)
!983 = distinct !DISubprogram(name: "__udivmoddi4", scope: !514, file: !514, line: 24, type: !741, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !513, retainedNodes: !545)
!984 = !DILocation(line: 29, column: 7, scope: !983)
!985 = !DILocation(line: 29, column: 11, scope: !983)
!986 = !DILocation(line: 31, column: 7, scope: !983)
!987 = !DILocation(line: 31, column: 11, scope: !983)
!988 = !DILocation(line: 36, column: 11, scope: !983)
!989 = !DILocation(line: 36, column: 13, scope: !983)
!990 = !DILocation(line: 36, column: 18, scope: !983)
!991 = !DILocation(line: 36, column: 9, scope: !983)
!992 = !DILocation(line: 38, column: 15, scope: !983)
!993 = !DILocation(line: 38, column: 17, scope: !983)
!994 = !DILocation(line: 38, column: 22, scope: !983)
!995 = !DILocation(line: 38, column: 13, scope: !983)
!996 = !DILocation(line: 44, column: 17, scope: !983)
!997 = !DILocation(line: 45, column: 28, scope: !983)
!998 = !DILocation(line: 45, column: 38, scope: !983)
!999 = !DILocation(line: 45, column: 32, scope: !983)
!1000 = !DILocation(line: 45, column: 24, scope: !983)
!1001 = !DILocation(line: 45, column: 22, scope: !983)
!1002 = !DILocation(line: 45, column: 17, scope: !983)
!1003 = !DILocation(line: 46, column: 24, scope: !983)
!1004 = !DILocation(line: 46, column: 34, scope: !983)
!1005 = !DILocation(line: 46, column: 28, scope: !983)
!1006 = !DILocation(line: 46, column: 20, scope: !983)
!1007 = !DILocation(line: 46, column: 13, scope: !983)
!1008 = !DILocation(line: 52, column: 13, scope: !983)
!1009 = !DILocation(line: 53, column: 24, scope: !983)
!1010 = !DILocation(line: 53, column: 20, scope: !983)
!1011 = !DILocation(line: 53, column: 18, scope: !983)
!1012 = !DILocation(line: 53, column: 13, scope: !983)
!1013 = !DILocation(line: 54, column: 9, scope: !983)
!1014 = !DILocation(line: 57, column: 13, scope: !983)
!1015 = !DILocation(line: 57, column: 17, scope: !983)
!1016 = !DILocation(line: 57, column: 9, scope: !983)
!1017 = !DILocation(line: 59, column: 15, scope: !983)
!1018 = !DILocation(line: 59, column: 17, scope: !983)
!1019 = !DILocation(line: 59, column: 22, scope: !983)
!1020 = !DILocation(line: 59, column: 13, scope: !983)
!1021 = !DILocation(line: 65, column: 17, scope: !983)
!1022 = !DILocation(line: 66, column: 26, scope: !983)
!1023 = !DILocation(line: 66, column: 28, scope: !983)
!1024 = !DILocation(line: 66, column: 39, scope: !983)
!1025 = !DILocation(line: 66, column: 33, scope: !983)
!1026 = !DILocation(line: 66, column: 24, scope: !983)
!1027 = !DILocation(line: 66, column: 22, scope: !983)
!1028 = !DILocation(line: 66, column: 17, scope: !983)
!1029 = !DILocation(line: 67, column: 22, scope: !983)
!1030 = !DILocation(line: 67, column: 24, scope: !983)
!1031 = !DILocation(line: 67, column: 35, scope: !983)
!1032 = !DILocation(line: 67, column: 29, scope: !983)
!1033 = !DILocation(line: 67, column: 20, scope: !983)
!1034 = !DILocation(line: 67, column: 13, scope: !983)
!1035 = !DILocation(line: 70, column: 17, scope: !983)
!1036 = !DILocation(line: 70, column: 21, scope: !983)
!1037 = !DILocation(line: 70, column: 13, scope: !983)
!1038 = !DILocation(line: 76, column: 17, scope: !983)
!1039 = !DILocation(line: 78, column: 30, scope: !983)
!1040 = !DILocation(line: 78, column: 32, scope: !983)
!1041 = !DILocation(line: 78, column: 41, scope: !983)
!1042 = !DILocation(line: 78, column: 43, scope: !983)
!1043 = !DILocation(line: 78, column: 37, scope: !983)
!1044 = !DILocation(line: 78, column: 19, scope: !983)
!1045 = !DILocation(line: 78, column: 21, scope: !983)
!1046 = !DILocation(line: 78, column: 26, scope: !983)
!1047 = !DILocation(line: 79, column: 21, scope: !983)
!1048 = !DILocation(line: 79, column: 25, scope: !983)
!1049 = !DILocation(line: 80, column: 26, scope: !983)
!1050 = !DILocation(line: 80, column: 22, scope: !983)
!1051 = !DILocation(line: 81, column: 13, scope: !983)
!1052 = !DILocation(line: 82, column: 22, scope: !983)
!1053 = !DILocation(line: 82, column: 24, scope: !983)
!1054 = !DILocation(line: 82, column: 33, scope: !983)
!1055 = !DILocation(line: 82, column: 35, scope: !983)
!1056 = !DILocation(line: 82, column: 29, scope: !983)
!1057 = !DILocation(line: 82, column: 20, scope: !983)
!1058 = !DILocation(line: 82, column: 13, scope: !983)
!1059 = !DILocation(line: 88, column: 16, scope: !983)
!1060 = !DILocation(line: 88, column: 18, scope: !983)
!1061 = !DILocation(line: 88, column: 28, scope: !983)
!1062 = !DILocation(line: 88, column: 30, scope: !983)
!1063 = !DILocation(line: 88, column: 35, scope: !983)
!1064 = !DILocation(line: 88, column: 23, scope: !983)
!1065 = !DILocation(line: 88, column: 41, scope: !983)
!1066 = !DILocation(line: 88, column: 13, scope: !983)
!1067 = !DILocation(line: 90, column: 17, scope: !983)
!1068 = !DILocation(line: 92, column: 31, scope: !983)
!1069 = !DILocation(line: 92, column: 21, scope: !983)
!1070 = !DILocation(line: 92, column: 25, scope: !983)
!1071 = !DILocation(line: 93, column: 30, scope: !983)
!1072 = !DILocation(line: 93, column: 32, scope: !983)
!1073 = !DILocation(line: 93, column: 42, scope: !983)
!1074 = !DILocation(line: 93, column: 44, scope: !983)
!1075 = !DILocation(line: 93, column: 49, scope: !983)
!1076 = !DILocation(line: 93, column: 37, scope: !983)
!1077 = !DILocation(line: 93, column: 19, scope: !983)
!1078 = !DILocation(line: 93, column: 21, scope: !983)
!1079 = !DILocation(line: 93, column: 26, scope: !983)
!1080 = !DILocation(line: 94, column: 26, scope: !983)
!1081 = !DILocation(line: 94, column: 22, scope: !983)
!1082 = !DILocation(line: 95, column: 13, scope: !983)
!1083 = !DILocation(line: 96, column: 22, scope: !983)
!1084 = !DILocation(line: 96, column: 24, scope: !983)
!1085 = !DILocation(line: 96, column: 48, scope: !983)
!1086 = !DILocation(line: 96, column: 50, scope: !983)
!1087 = !DILocation(line: 96, column: 32, scope: !983)
!1088 = !DILocation(line: 96, column: 29, scope: !983)
!1089 = !DILocation(line: 96, column: 20, scope: !983)
!1090 = !DILocation(line: 96, column: 13, scope: !983)
!1091 = !DILocation(line: 102, column: 30, scope: !983)
!1092 = !DILocation(line: 102, column: 32, scope: !983)
!1093 = !DILocation(line: 102, column: 14, scope: !983)
!1094 = !DILocation(line: 102, column: 56, scope: !983)
!1095 = !DILocation(line: 102, column: 58, scope: !983)
!1096 = !DILocation(line: 102, column: 40, scope: !983)
!1097 = !DILocation(line: 102, column: 38, scope: !983)
!1098 = !DILocation(line: 104, column: 16, scope: !983)
!1099 = !DILocation(line: 104, column: 13, scope: !983)
!1100 = !DILocation(line: 106, column: 16, scope: !983)
!1101 = !DILocation(line: 107, column: 26, scope: !983)
!1102 = !DILocation(line: 107, column: 22, scope: !983)
!1103 = !DILocation(line: 107, column: 17, scope: !983)
!1104 = !DILocation(line: 108, column: 13, scope: !983)
!1105 = !DILocation(line: 110, column: 9, scope: !983)
!1106 = !DILocation(line: 113, column: 13, scope: !983)
!1107 = !DILocation(line: 113, column: 17, scope: !983)
!1108 = !DILocation(line: 114, column: 24, scope: !983)
!1109 = !DILocation(line: 114, column: 45, scope: !983)
!1110 = !DILocation(line: 114, column: 28, scope: !983)
!1111 = !DILocation(line: 114, column: 11, scope: !983)
!1112 = !DILocation(line: 114, column: 13, scope: !983)
!1113 = !DILocation(line: 114, column: 18, scope: !983)
!1114 = !DILocation(line: 116, column: 22, scope: !983)
!1115 = !DILocation(line: 116, column: 24, scope: !983)
!1116 = !DILocation(line: 116, column: 29, scope: !983)
!1117 = !DILocation(line: 116, column: 11, scope: !983)
!1118 = !DILocation(line: 116, column: 13, scope: !983)
!1119 = !DILocation(line: 116, column: 18, scope: !983)
!1120 = !DILocation(line: 117, column: 22, scope: !983)
!1121 = !DILocation(line: 117, column: 24, scope: !983)
!1122 = !DILocation(line: 117, column: 46, scope: !983)
!1123 = !DILocation(line: 117, column: 29, scope: !983)
!1124 = !DILocation(line: 117, column: 60, scope: !983)
!1125 = !DILocation(line: 117, column: 64, scope: !983)
!1126 = !DILocation(line: 117, column: 53, scope: !983)
!1127 = !DILocation(line: 117, column: 13, scope: !983)
!1128 = !DILocation(line: 117, column: 17, scope: !983)
!1129 = !DILocation(line: 118, column: 5, scope: !983)
!1130 = !DILocation(line: 121, column: 15, scope: !983)
!1131 = !DILocation(line: 121, column: 17, scope: !983)
!1132 = !DILocation(line: 121, column: 22, scope: !983)
!1133 = !DILocation(line: 121, column: 13, scope: !983)
!1134 = !DILocation(line: 127, column: 22, scope: !983)
!1135 = !DILocation(line: 127, column: 43, scope: !983)
!1136 = !DILocation(line: 127, column: 17, scope: !983)
!1137 = !DILocation(line: 129, column: 21, scope: !983)
!1138 = !DILocation(line: 130, column: 32, scope: !983)
!1139 = !DILocation(line: 130, column: 43, scope: !983)
!1140 = !DILocation(line: 130, column: 47, scope: !983)
!1141 = !DILocation(line: 130, column: 36, scope: !983)
!1142 = !DILocation(line: 130, column: 28, scope: !983)
!1143 = !DILocation(line: 130, column: 26, scope: !983)
!1144 = !DILocation(line: 130, column: 21, scope: !983)
!1145 = !DILocation(line: 131, column: 25, scope: !983)
!1146 = !DILocation(line: 131, column: 29, scope: !983)
!1147 = !DILocation(line: 131, column: 21, scope: !983)
!1148 = !DILocation(line: 132, column: 30, scope: !983)
!1149 = !DILocation(line: 132, column: 21, scope: !983)
!1150 = !DILocation(line: 133, column: 40, scope: !983)
!1151 = !DILocation(line: 133, column: 22, scope: !983)
!1152 = !DILocation(line: 134, column: 30, scope: !983)
!1153 = !DILocation(line: 134, column: 32, scope: !983)
!1154 = !DILocation(line: 134, column: 37, scope: !983)
!1155 = !DILocation(line: 134, column: 19, scope: !983)
!1156 = !DILocation(line: 134, column: 21, scope: !983)
!1157 = !DILocation(line: 134, column: 26, scope: !983)
!1158 = !DILocation(line: 135, column: 30, scope: !983)
!1159 = !DILocation(line: 135, column: 32, scope: !983)
!1160 = !DILocation(line: 135, column: 54, scope: !983)
!1161 = !DILocation(line: 135, column: 37, scope: !983)
!1162 = !DILocation(line: 135, column: 68, scope: !983)
!1163 = !DILocation(line: 135, column: 72, scope: !983)
!1164 = !DILocation(line: 135, column: 61, scope: !983)
!1165 = !DILocation(line: 135, column: 21, scope: !983)
!1166 = !DILocation(line: 135, column: 25, scope: !983)
!1167 = !DILocation(line: 136, column: 26, scope: !983)
!1168 = !DILocation(line: 136, column: 17, scope: !983)
!1169 = !DILocation(line: 142, column: 55, scope: !983)
!1170 = !DILocation(line: 142, column: 37, scope: !983)
!1171 = !DILocation(line: 142, column: 35, scope: !983)
!1172 = !DILocation(line: 142, column: 78, scope: !983)
!1173 = !DILocation(line: 142, column: 80, scope: !983)
!1174 = !DILocation(line: 142, column: 62, scope: !983)
!1175 = !DILocation(line: 142, column: 60, scope: !983)
!1176 = !DILocation(line: 147, column: 20, scope: !983)
!1177 = !DILocation(line: 147, column: 17, scope: !983)
!1178 = !DILocation(line: 149, column: 21, scope: !983)
!1179 = !DILocation(line: 149, column: 25, scope: !983)
!1180 = !DILocation(line: 150, column: 32, scope: !983)
!1181 = !DILocation(line: 150, column: 19, scope: !983)
!1182 = !DILocation(line: 150, column: 21, scope: !983)
!1183 = !DILocation(line: 150, column: 26, scope: !983)
!1184 = !DILocation(line: 151, column: 19, scope: !983)
!1185 = !DILocation(line: 151, column: 21, scope: !983)
!1186 = !DILocation(line: 151, column: 26, scope: !983)
!1187 = !DILocation(line: 152, column: 29, scope: !983)
!1188 = !DILocation(line: 152, column: 31, scope: !983)
!1189 = !DILocation(line: 152, column: 21, scope: !983)
!1190 = !DILocation(line: 152, column: 25, scope: !983)
!1191 = !DILocation(line: 153, column: 13, scope: !983)
!1192 = !DILocation(line: 154, column: 25, scope: !983)
!1193 = !DILocation(line: 154, column: 22, scope: !983)
!1194 = !DILocation(line: 156, column: 21, scope: !983)
!1195 = !DILocation(line: 156, column: 25, scope: !983)
!1196 = !DILocation(line: 157, column: 32, scope: !983)
!1197 = !DILocation(line: 157, column: 53, scope: !983)
!1198 = !DILocation(line: 157, column: 36, scope: !983)
!1199 = !DILocation(line: 157, column: 19, scope: !983)
!1200 = !DILocation(line: 157, column: 21, scope: !983)
!1201 = !DILocation(line: 157, column: 26, scope: !983)
!1202 = !DILocation(line: 158, column: 30, scope: !983)
!1203 = !DILocation(line: 158, column: 32, scope: !983)
!1204 = !DILocation(line: 158, column: 37, scope: !983)
!1205 = !DILocation(line: 158, column: 19, scope: !983)
!1206 = !DILocation(line: 158, column: 21, scope: !983)
!1207 = !DILocation(line: 158, column: 26, scope: !983)
!1208 = !DILocation(line: 159, column: 30, scope: !983)
!1209 = !DILocation(line: 159, column: 32, scope: !983)
!1210 = !DILocation(line: 159, column: 54, scope: !983)
!1211 = !DILocation(line: 159, column: 37, scope: !983)
!1212 = !DILocation(line: 159, column: 68, scope: !983)
!1213 = !DILocation(line: 159, column: 72, scope: !983)
!1214 = !DILocation(line: 159, column: 61, scope: !983)
!1215 = !DILocation(line: 159, column: 21, scope: !983)
!1216 = !DILocation(line: 159, column: 25, scope: !983)
!1217 = !DILocation(line: 160, column: 13, scope: !983)
!1218 = !DILocation(line: 163, column: 31, scope: !983)
!1219 = !DILocation(line: 163, column: 53, scope: !983)
!1220 = !DILocation(line: 163, column: 35, scope: !983)
!1221 = !DILocation(line: 163, column: 21, scope: !983)
!1222 = !DILocation(line: 163, column: 25, scope: !983)
!1223 = !DILocation(line: 164, column: 31, scope: !983)
!1224 = !DILocation(line: 164, column: 33, scope: !983)
!1225 = !DILocation(line: 164, column: 56, scope: !983)
!1226 = !DILocation(line: 164, column: 38, scope: !983)
!1227 = !DILocation(line: 165, column: 33, scope: !983)
!1228 = !DILocation(line: 165, column: 44, scope: !983)
!1229 = !DILocation(line: 165, column: 37, scope: !983)
!1230 = !DILocation(line: 164, column: 63, scope: !983)
!1231 = !DILocation(line: 164, column: 19, scope: !983)
!1232 = !DILocation(line: 164, column: 21, scope: !983)
!1233 = !DILocation(line: 164, column: 26, scope: !983)
!1234 = !DILocation(line: 166, column: 19, scope: !983)
!1235 = !DILocation(line: 166, column: 21, scope: !983)
!1236 = !DILocation(line: 166, column: 26, scope: !983)
!1237 = !DILocation(line: 167, column: 29, scope: !983)
!1238 = !DILocation(line: 167, column: 31, scope: !983)
!1239 = !DILocation(line: 167, column: 43, scope: !983)
!1240 = !DILocation(line: 167, column: 36, scope: !983)
!1241 = !DILocation(line: 167, column: 21, scope: !983)
!1242 = !DILocation(line: 167, column: 25, scope: !983)
!1243 = !DILocation(line: 169, column: 9, scope: !983)
!1244 = !DILocation(line: 176, column: 34, scope: !983)
!1245 = !DILocation(line: 176, column: 36, scope: !983)
!1246 = !DILocation(line: 176, column: 18, scope: !983)
!1247 = !DILocation(line: 176, column: 60, scope: !983)
!1248 = !DILocation(line: 176, column: 62, scope: !983)
!1249 = !DILocation(line: 176, column: 44, scope: !983)
!1250 = !DILocation(line: 176, column: 42, scope: !983)
!1251 = !DILocation(line: 178, column: 20, scope: !983)
!1252 = !DILocation(line: 178, column: 17, scope: !983)
!1253 = !DILocation(line: 180, column: 21, scope: !983)
!1254 = !DILocation(line: 181, column: 30, scope: !983)
!1255 = !DILocation(line: 181, column: 26, scope: !983)
!1256 = !DILocation(line: 181, column: 21, scope: !983)
!1257 = !DILocation(line: 182, column: 17, scope: !983)
!1258 = !DILocation(line: 184, column: 13, scope: !983)
!1259 = !DILocation(line: 187, column: 17, scope: !983)
!1260 = !DILocation(line: 187, column: 21, scope: !983)
!1261 = !DILocation(line: 188, column: 20, scope: !983)
!1262 = !DILocation(line: 188, column: 17, scope: !983)
!1263 = !DILocation(line: 190, column: 32, scope: !983)
!1264 = !DILocation(line: 190, column: 19, scope: !983)
!1265 = !DILocation(line: 190, column: 21, scope: !983)
!1266 = !DILocation(line: 190, column: 26, scope: !983)
!1267 = !DILocation(line: 191, column: 19, scope: !983)
!1268 = !DILocation(line: 191, column: 21, scope: !983)
!1269 = !DILocation(line: 191, column: 26, scope: !983)
!1270 = !DILocation(line: 192, column: 29, scope: !983)
!1271 = !DILocation(line: 192, column: 31, scope: !983)
!1272 = !DILocation(line: 192, column: 21, scope: !983)
!1273 = !DILocation(line: 192, column: 25, scope: !983)
!1274 = !DILocation(line: 193, column: 13, scope: !983)
!1275 = !DILocation(line: 196, column: 32, scope: !983)
!1276 = !DILocation(line: 196, column: 53, scope: !983)
!1277 = !DILocation(line: 196, column: 36, scope: !983)
!1278 = !DILocation(line: 196, column: 19, scope: !983)
!1279 = !DILocation(line: 196, column: 21, scope: !983)
!1280 = !DILocation(line: 196, column: 26, scope: !983)
!1281 = !DILocation(line: 197, column: 30, scope: !983)
!1282 = !DILocation(line: 197, column: 32, scope: !983)
!1283 = !DILocation(line: 197, column: 37, scope: !983)
!1284 = !DILocation(line: 197, column: 19, scope: !983)
!1285 = !DILocation(line: 197, column: 21, scope: !983)
!1286 = !DILocation(line: 197, column: 26, scope: !983)
!1287 = !DILocation(line: 198, column: 30, scope: !983)
!1288 = !DILocation(line: 198, column: 32, scope: !983)
!1289 = !DILocation(line: 198, column: 54, scope: !983)
!1290 = !DILocation(line: 198, column: 37, scope: !983)
!1291 = !DILocation(line: 198, column: 68, scope: !983)
!1292 = !DILocation(line: 198, column: 72, scope: !983)
!1293 = !DILocation(line: 198, column: 61, scope: !983)
!1294 = !DILocation(line: 198, column: 21, scope: !983)
!1295 = !DILocation(line: 198, column: 25, scope: !983)
!1296 = !DILocation(line: 0, scope: !983)
!1297 = !DILocation(line: 209, column: 5, scope: !983)
!1298 = !DILocation(line: 209, column: 15, scope: !983)
!1299 = !DILocation(line: 212, column: 23, scope: !983)
!1300 = !DILocation(line: 212, column: 25, scope: !983)
!1301 = !DILocation(line: 212, column: 43, scope: !983)
!1302 = !DILocation(line: 212, column: 36, scope: !983)
!1303 = !DILocation(line: 212, column: 11, scope: !983)
!1304 = !DILocation(line: 212, column: 13, scope: !983)
!1305 = !DILocation(line: 212, column: 18, scope: !983)
!1306 = !DILocation(line: 213, column: 41, scope: !983)
!1307 = !DILocation(line: 213, column: 43, scope: !983)
!1308 = !DILocation(line: 213, column: 36, scope: !983)
!1309 = !DILocation(line: 213, column: 13, scope: !983)
!1310 = !DILocation(line: 213, column: 18, scope: !983)
!1311 = !DILocation(line: 214, column: 23, scope: !983)
!1312 = !DILocation(line: 214, column: 25, scope: !983)
!1313 = !DILocation(line: 214, column: 43, scope: !983)
!1314 = !DILocation(line: 214, column: 36, scope: !983)
!1315 = !DILocation(line: 214, column: 11, scope: !983)
!1316 = !DILocation(line: 214, column: 13, scope: !983)
!1317 = !DILocation(line: 214, column: 18, scope: !983)
!1318 = !DILocation(line: 215, column: 30, scope: !983)
!1319 = !DILocation(line: 215, column: 36, scope: !983)
!1320 = !DILocation(line: 215, column: 13, scope: !983)
!1321 = !DILocation(line: 215, column: 18, scope: !983)
!1322 = !DILocation(line: 223, column: 37, scope: !983)
!1323 = !DILocation(line: 223, column: 45, scope: !983)
!1324 = !DILocation(line: 223, column: 49, scope: !983)
!1325 = !DILocation(line: 225, column: 24, scope: !983)
!1326 = !DILocation(line: 225, column: 11, scope: !983)
!1327 = !DILocation(line: 225, column: 15, scope: !983)
!1328 = !DILocation(line: 226, column: 5, scope: !983)
!1329 = !DILocation(line: 224, column: 19, scope: !983)
!1330 = !DILocation(line: 224, column: 17, scope: !983)
!1331 = !DILocation(line: 209, column: 20, scope: !983)
!1332 = distinct !{!1332, !1297, !1328, !594}
!1333 = !DILocation(line: 227, column: 16, scope: !983)
!1334 = !DILocation(line: 227, column: 20, scope: !983)
!1335 = !DILocation(line: 227, column: 28, scope: !983)
!1336 = !DILocation(line: 227, column: 26, scope: !983)
!1337 = !DILocation(line: 227, column: 7, scope: !983)
!1338 = !DILocation(line: 227, column: 11, scope: !983)
!1339 = !DILocation(line: 228, column: 9, scope: !983)
!1340 = !DILocation(line: 229, column: 18, scope: !983)
!1341 = !DILocation(line: 229, column: 14, scope: !983)
!1342 = !DILocation(line: 229, column: 9, scope: !983)
!1343 = !DILocation(line: 230, column: 14, scope: !983)
!1344 = !DILocation(line: 230, column: 5, scope: !983)
!1345 = !DILocation(line: 231, column: 1, scope: !983)
!1346 = distinct !DISubprogram(name: "__divmoddi4", scope: !458, file: !458, line: 20, type: !741, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !457, retainedNodes: !545)
!1347 = !DILocation(line: 22, column: 14, scope: !1346)
!1348 = !DILocation(line: 23, column: 16, scope: !1346)
!1349 = !DILocation(line: 23, column: 12, scope: !1346)
!1350 = !DILocation(line: 23, column: 8, scope: !1346)
!1351 = !DILocation(line: 24, column: 3, scope: !1346)
!1352 = distinct !DISubprogram(name: "__divmodsi4", scope: !460, file: !460, line: 20, type: !741, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !459, retainedNodes: !545)
!1353 = !DILocation(line: 22, column: 14, scope: !1352)
!1354 = !DILocation(line: 23, column: 16, scope: !1352)
!1355 = !DILocation(line: 23, column: 12, scope: !1352)
!1356 = !DILocation(line: 23, column: 8, scope: !1352)
!1357 = !DILocation(line: 24, column: 3, scope: !1352)
!1358 = distinct !DISubprogram(name: "__divsi3", scope: !462, file: !462, line: 22, type: !741, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !461, retainedNodes: !545)
!1359 = !DILocation(line: 25, column: 20, scope: !1358)
!1360 = !DILocation(line: 26, column: 20, scope: !1358)
!1361 = !DILocation(line: 27, column: 12, scope: !1358)
!1362 = !DILocation(line: 27, column: 19, scope: !1358)
!1363 = !DILocation(line: 28, column: 12, scope: !1358)
!1364 = !DILocation(line: 28, column: 19, scope: !1358)
!1365 = !DILocation(line: 29, column: 9, scope: !1358)
!1366 = !DILocation(line: 36, column: 22, scope: !1358)
!1367 = !DILocation(line: 36, column: 33, scope: !1358)
!1368 = !DILocation(line: 36, column: 40, scope: !1358)
!1369 = !DILocation(line: 36, column: 5, scope: !1358)
!1370 = distinct !DISubprogram(name: "__ffsdi2", scope: !466, file: !466, line: 22, type: !741, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !465, retainedNodes: !545)
!1371 = !DILocation(line: 25, column: 7, scope: !1370)
!1372 = !DILocation(line: 25, column: 11, scope: !1370)
!1373 = !DILocation(line: 26, column: 13, scope: !1370)
!1374 = !DILocation(line: 26, column: 17, scope: !1370)
!1375 = !DILocation(line: 26, column: 9, scope: !1370)
!1376 = !DILocation(line: 28, column: 15, scope: !1370)
!1377 = !DILocation(line: 28, column: 17, scope: !1370)
!1378 = !DILocation(line: 28, column: 22, scope: !1370)
!1379 = !DILocation(line: 28, column: 13, scope: !1370)
!1380 = !DILocation(line: 29, column: 13, scope: !1370)
!1381 = !DILocation(line: 30, column: 32, scope: !1370)
!1382 = !DILocation(line: 30, column: 34, scope: !1370)
!1383 = !DILocation(line: 30, column: 16, scope: !1370)
!1384 = !DILocation(line: 30, column: 40, scope: !1370)
!1385 = !DILocation(line: 30, column: 9, scope: !1370)
!1386 = !DILocation(line: 32, column: 30, scope: !1370)
!1387 = !DILocation(line: 32, column: 12, scope: !1370)
!1388 = !DILocation(line: 32, column: 35, scope: !1370)
!1389 = !DILocation(line: 32, column: 5, scope: !1370)
!1390 = !DILocation(line: 0, scope: !1370)
!1391 = !DILocation(line: 33, column: 1, scope: !1370)
!1392 = distinct !DISubprogram(name: "__ffssi2", scope: !468, file: !468, line: 22, type: !741, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !467, retainedNodes: !545)
!1393 = !DILocation(line: 24, column: 11, scope: !1392)
!1394 = !DILocation(line: 24, column: 9, scope: !1392)
!1395 = !DILocation(line: 26, column: 9, scope: !1392)
!1396 = !DILocation(line: 28, column: 12, scope: !1392)
!1397 = !DILocation(line: 28, column: 29, scope: !1392)
!1398 = !DILocation(line: 28, column: 5, scope: !1392)
!1399 = !DILocation(line: 0, scope: !1392)
!1400 = !DILocation(line: 29, column: 1, scope: !1392)
!1401 = distinct !DISubprogram(name: "__lshrdi3", scope: !474, file: !474, line: 24, type: !741, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !473, retainedNodes: !545)
!1402 = !DILocation(line: 29, column: 11, scope: !1401)
!1403 = !DILocation(line: 29, column: 15, scope: !1401)
!1404 = !DILocation(line: 30, column: 11, scope: !1401)
!1405 = !DILocation(line: 30, column: 9, scope: !1401)
!1406 = !DILocation(line: 32, column: 16, scope: !1401)
!1407 = !DILocation(line: 32, column: 18, scope: !1401)
!1408 = !DILocation(line: 32, column: 23, scope: !1401)
!1409 = !DILocation(line: 33, column: 30, scope: !1401)
!1410 = !DILocation(line: 33, column: 32, scope: !1401)
!1411 = !DILocation(line: 33, column: 43, scope: !1401)
!1412 = !DILocation(line: 33, column: 37, scope: !1401)
!1413 = !DILocation(line: 33, column: 18, scope: !1401)
!1414 = !DILocation(line: 33, column: 22, scope: !1401)
!1415 = !DILocation(line: 34, column: 5, scope: !1401)
!1416 = !DILocation(line: 37, column: 15, scope: !1401)
!1417 = !DILocation(line: 37, column: 13, scope: !1401)
!1418 = !DILocation(line: 38, column: 13, scope: !1401)
!1419 = !DILocation(line: 39, column: 32, scope: !1401)
!1420 = !DILocation(line: 39, column: 34, scope: !1401)
!1421 = !DILocation(line: 39, column: 39, scope: !1401)
!1422 = !DILocation(line: 39, column: 16, scope: !1401)
!1423 = !DILocation(line: 39, column: 18, scope: !1401)
!1424 = !DILocation(line: 39, column: 24, scope: !1401)
!1425 = !DILocation(line: 40, column: 31, scope: !1401)
!1426 = !DILocation(line: 40, column: 33, scope: !1401)
!1427 = !DILocation(line: 40, column: 55, scope: !1401)
!1428 = !DILocation(line: 40, column: 38, scope: !1401)
!1429 = !DILocation(line: 40, column: 72, scope: !1401)
!1430 = !DILocation(line: 40, column: 76, scope: !1401)
!1431 = !DILocation(line: 40, column: 61, scope: !1401)
!1432 = !DILocation(line: 40, column: 18, scope: !1401)
!1433 = !DILocation(line: 40, column: 22, scope: !1401)
!1434 = !DILocation(line: 42, column: 19, scope: !1401)
!1435 = !DILocation(line: 42, column: 5, scope: !1401)
!1436 = !DILocation(line: 0, scope: !1401)
!1437 = !DILocation(line: 43, column: 1, scope: !1401)
!1438 = distinct !DISubprogram(name: "__moddi3", scope: !478, file: !478, line: 20, type: !741, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !477, retainedNodes: !545)
!1439 = !DILocation(line: 24, column: 17, scope: !1438)
!1440 = !DILocation(line: 25, column: 11, scope: !1438)
!1441 = !DILocation(line: 26, column: 12, scope: !1438)
!1442 = !DILocation(line: 26, column: 17, scope: !1438)
!1443 = !DILocation(line: 28, column: 5, scope: !1438)
!1444 = !DILocation(line: 29, column: 21, scope: !1438)
!1445 = !DILocation(line: 29, column: 23, scope: !1438)
!1446 = !DILocation(line: 29, column: 28, scope: !1438)
!1447 = !DILocation(line: 29, column: 5, scope: !1438)
!1448 = distinct !DISubprogram(name: "__modsi3", scope: !480, file: !480, line: 20, type: !741, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !479, retainedNodes: !545)
!1449 = !DILocation(line: 22, column: 16, scope: !1448)
!1450 = !DILocation(line: 22, column: 31, scope: !1448)
!1451 = !DILocation(line: 22, column: 14, scope: !1448)
!1452 = !DILocation(line: 22, column: 5, scope: !1448)
!1453 = distinct !DISubprogram(name: "__mulvdi3", scope: !484, file: !484, line: 22, type: !741, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !483, retainedNodes: !545)
!1454 = !DILocation(line: 27, column: 11, scope: !1453)
!1455 = !DILocation(line: 27, column: 9, scope: !1453)
!1456 = !DILocation(line: 29, column: 15, scope: !1453)
!1457 = !DILocation(line: 29, column: 20, scope: !1453)
!1458 = !DILocation(line: 29, column: 25, scope: !1453)
!1459 = !DILocation(line: 29, column: 13, scope: !1453)
!1460 = !DILocation(line: 30, column: 13, scope: !1453)
!1461 = !DILocation(line: 31, column: 9, scope: !1453)
!1462 = !DILocation(line: 33, column: 11, scope: !1453)
!1463 = !DILocation(line: 33, column: 9, scope: !1453)
!1464 = !DILocation(line: 35, column: 15, scope: !1453)
!1465 = !DILocation(line: 35, column: 20, scope: !1453)
!1466 = !DILocation(line: 35, column: 25, scope: !1453)
!1467 = !DILocation(line: 35, column: 13, scope: !1453)
!1468 = !DILocation(line: 36, column: 13, scope: !1453)
!1469 = !DILocation(line: 37, column: 9, scope: !1453)
!1470 = !DILocation(line: 39, column: 19, scope: !1453)
!1471 = !DILocation(line: 40, column: 23, scope: !1453)
!1472 = !DILocation(line: 40, column: 29, scope: !1453)
!1473 = !DILocation(line: 41, column: 19, scope: !1453)
!1474 = !DILocation(line: 42, column: 23, scope: !1453)
!1475 = !DILocation(line: 42, column: 29, scope: !1453)
!1476 = !DILocation(line: 43, column: 15, scope: !1453)
!1477 = !DILocation(line: 43, column: 19, scope: !1453)
!1478 = !DILocation(line: 43, column: 28, scope: !1453)
!1479 = !DILocation(line: 43, column: 9, scope: !1453)
!1480 = !DILocation(line: 44, column: 9, scope: !1453)
!1481 = !DILocation(line: 45, column: 12, scope: !1453)
!1482 = !DILocation(line: 45, column: 9, scope: !1453)
!1483 = !DILocation(line: 47, column: 25, scope: !1453)
!1484 = !DILocation(line: 47, column: 19, scope: !1453)
!1485 = !DILocation(line: 47, column: 13, scope: !1453)
!1486 = !DILocation(line: 48, column: 13, scope: !1453)
!1487 = !DILocation(line: 49, column: 5, scope: !1453)
!1488 = !DILocation(line: 52, column: 27, scope: !1453)
!1489 = !DILocation(line: 52, column: 25, scope: !1453)
!1490 = !DILocation(line: 52, column: 19, scope: !1453)
!1491 = !DILocation(line: 52, column: 13, scope: !1453)
!1492 = !DILocation(line: 53, column: 13, scope: !1453)
!1493 = !DILocation(line: 55, column: 5, scope: !1453)
!1494 = !DILocation(line: 0, scope: !1453)
!1495 = !DILocation(line: 56, column: 1, scope: !1453)
!1496 = distinct !DISubprogram(name: "__mulvsi3", scope: !486, file: !486, line: 22, type: !741, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !485, retainedNodes: !545)
!1497 = !DILocation(line: 27, column: 11, scope: !1496)
!1498 = !DILocation(line: 27, column: 9, scope: !1496)
!1499 = !DILocation(line: 29, column: 15, scope: !1496)
!1500 = !DILocation(line: 29, column: 20, scope: !1496)
!1501 = !DILocation(line: 29, column: 25, scope: !1496)
!1502 = !DILocation(line: 29, column: 13, scope: !1496)
!1503 = !DILocation(line: 30, column: 13, scope: !1496)
!1504 = !DILocation(line: 31, column: 9, scope: !1496)
!1505 = !DILocation(line: 33, column: 11, scope: !1496)
!1506 = !DILocation(line: 33, column: 9, scope: !1496)
!1507 = !DILocation(line: 35, column: 15, scope: !1496)
!1508 = !DILocation(line: 35, column: 20, scope: !1496)
!1509 = !DILocation(line: 35, column: 25, scope: !1496)
!1510 = !DILocation(line: 35, column: 13, scope: !1496)
!1511 = !DILocation(line: 36, column: 13, scope: !1496)
!1512 = !DILocation(line: 37, column: 9, scope: !1496)
!1513 = !DILocation(line: 39, column: 19, scope: !1496)
!1514 = !DILocation(line: 40, column: 23, scope: !1496)
!1515 = !DILocation(line: 40, column: 29, scope: !1496)
!1516 = !DILocation(line: 41, column: 19, scope: !1496)
!1517 = !DILocation(line: 42, column: 23, scope: !1496)
!1518 = !DILocation(line: 42, column: 29, scope: !1496)
!1519 = !DILocation(line: 43, column: 15, scope: !1496)
!1520 = !DILocation(line: 43, column: 19, scope: !1496)
!1521 = !DILocation(line: 43, column: 28, scope: !1496)
!1522 = !DILocation(line: 43, column: 9, scope: !1496)
!1523 = !DILocation(line: 44, column: 9, scope: !1496)
!1524 = !DILocation(line: 45, column: 12, scope: !1496)
!1525 = !DILocation(line: 45, column: 9, scope: !1496)
!1526 = !DILocation(line: 47, column: 25, scope: !1496)
!1527 = !DILocation(line: 47, column: 19, scope: !1496)
!1528 = !DILocation(line: 47, column: 13, scope: !1496)
!1529 = !DILocation(line: 48, column: 13, scope: !1496)
!1530 = !DILocation(line: 49, column: 5, scope: !1496)
!1531 = !DILocation(line: 52, column: 27, scope: !1496)
!1532 = !DILocation(line: 52, column: 25, scope: !1496)
!1533 = !DILocation(line: 52, column: 19, scope: !1496)
!1534 = !DILocation(line: 52, column: 13, scope: !1496)
!1535 = !DILocation(line: 53, column: 13, scope: !1496)
!1536 = !DILocation(line: 55, column: 5, scope: !1496)
!1537 = !DILocation(line: 0, scope: !1496)
!1538 = !DILocation(line: 56, column: 1, scope: !1496)
!1539 = distinct !DISubprogram(name: "__paritydi2", scope: !490, file: !490, line: 20, type: !741, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !489, retainedNodes: !545)
!1540 = !DILocation(line: 23, column: 7, scope: !1539)
!1541 = !DILocation(line: 23, column: 11, scope: !1539)
!1542 = !DILocation(line: 24, column: 26, scope: !1539)
!1543 = !DILocation(line: 24, column: 28, scope: !1539)
!1544 = !DILocation(line: 24, column: 39, scope: !1539)
!1545 = !DILocation(line: 24, column: 33, scope: !1539)
!1546 = !DILocation(line: 24, column: 12, scope: !1539)
!1547 = !DILocation(line: 24, column: 5, scope: !1539)
!1548 = distinct !DISubprogram(name: "__paritysi2", scope: !492, file: !492, line: 20, type: !741, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !491, retainedNodes: !545)
!1549 = !DILocation(line: 23, column: 12, scope: !1548)
!1550 = !DILocation(line: 23, column: 7, scope: !1548)
!1551 = !DILocation(line: 24, column: 12, scope: !1548)
!1552 = !DILocation(line: 24, column: 7, scope: !1548)
!1553 = !DILocation(line: 25, column: 12, scope: !1548)
!1554 = !DILocation(line: 25, column: 7, scope: !1548)
!1555 = !DILocation(line: 26, column: 26, scope: !1548)
!1556 = !DILocation(line: 26, column: 20, scope: !1548)
!1557 = !DILocation(line: 26, column: 34, scope: !1548)
!1558 = !DILocation(line: 26, column: 5, scope: !1548)
!1559 = distinct !DISubprogram(name: "__popcountdi2", scope: !496, file: !496, line: 20, type: !741, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !495, retainedNodes: !545)
!1560 = !DILocation(line: 23, column: 20, scope: !1559)
!1561 = !DILocation(line: 23, column: 26, scope: !1559)
!1562 = !DILocation(line: 23, column: 13, scope: !1559)
!1563 = !DILocation(line: 25, column: 15, scope: !1559)
!1564 = !DILocation(line: 25, column: 21, scope: !1559)
!1565 = !DILocation(line: 25, column: 52, scope: !1559)
!1566 = !DILocation(line: 25, column: 46, scope: !1559)
!1567 = !DILocation(line: 27, column: 20, scope: !1559)
!1568 = !DILocation(line: 27, column: 14, scope: !1559)
!1569 = !DILocation(line: 27, column: 27, scope: !1559)
!1570 = !DILocation(line: 29, column: 34, scope: !1559)
!1571 = !DILocation(line: 29, column: 28, scope: !1559)
!1572 = !DILocation(line: 29, column: 16, scope: !1559)
!1573 = !DILocation(line: 32, column: 16, scope: !1559)
!1574 = !DILocation(line: 32, column: 11, scope: !1559)
!1575 = !DILocation(line: 35, column: 20, scope: !1559)
!1576 = !DILocation(line: 35, column: 15, scope: !1559)
!1577 = !DILocation(line: 35, column: 27, scope: !1559)
!1578 = !DILocation(line: 35, column: 5, scope: !1559)
!1579 = distinct !DISubprogram(name: "__popcountsi2", scope: !498, file: !498, line: 20, type: !741, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !497, retainedNodes: !545)
!1580 = !DILocation(line: 23, column: 17, scope: !1579)
!1581 = !DILocation(line: 23, column: 23, scope: !1579)
!1582 = !DILocation(line: 23, column: 11, scope: !1579)
!1583 = !DILocation(line: 25, column: 13, scope: !1579)
!1584 = !DILocation(line: 25, column: 19, scope: !1579)
!1585 = !DILocation(line: 25, column: 38, scope: !1579)
!1586 = !DILocation(line: 25, column: 33, scope: !1579)
!1587 = !DILocation(line: 27, column: 17, scope: !1579)
!1588 = !DILocation(line: 27, column: 12, scope: !1579)
!1589 = !DILocation(line: 27, column: 24, scope: !1579)
!1590 = !DILocation(line: 29, column: 17, scope: !1579)
!1591 = !DILocation(line: 29, column: 12, scope: !1579)
!1592 = !DILocation(line: 32, column: 20, scope: !1579)
!1593 = !DILocation(line: 32, column: 15, scope: !1579)
!1594 = !DILocation(line: 32, column: 27, scope: !1579)
!1595 = !DILocation(line: 32, column: 5, scope: !1579)
!1596 = distinct !DISubprogram(name: "__subvdi3", scope: !502, file: !502, line: 22, type: !741, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !501, retainedNodes: !545)
!1597 = !DILocation(line: 24, column: 27, scope: !1596)
!1598 = !DILocation(line: 25, column: 11, scope: !1596)
!1599 = !DILocation(line: 25, column: 9, scope: !1596)
!1600 = !DILocation(line: 27, column: 15, scope: !1596)
!1601 = !DILocation(line: 27, column: 13, scope: !1596)
!1602 = !DILocation(line: 28, column: 13, scope: !1596)
!1603 = !DILocation(line: 29, column: 5, scope: !1596)
!1604 = !DILocation(line: 32, column: 15, scope: !1596)
!1605 = !DILocation(line: 32, column: 13, scope: !1596)
!1606 = !DILocation(line: 33, column: 13, scope: !1596)
!1607 = !DILocation(line: 35, column: 5, scope: !1596)
!1608 = distinct !DISubprogram(name: "__subvsi3", scope: !504, file: !504, line: 22, type: !741, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !503, retainedNodes: !545)
!1609 = !DILocation(line: 24, column: 27, scope: !1608)
!1610 = !DILocation(line: 25, column: 11, scope: !1608)
!1611 = !DILocation(line: 25, column: 9, scope: !1608)
!1612 = !DILocation(line: 27, column: 15, scope: !1608)
!1613 = !DILocation(line: 27, column: 13, scope: !1608)
!1614 = !DILocation(line: 28, column: 13, scope: !1608)
!1615 = !DILocation(line: 29, column: 5, scope: !1608)
!1616 = !DILocation(line: 32, column: 15, scope: !1608)
!1617 = !DILocation(line: 32, column: 13, scope: !1608)
!1618 = !DILocation(line: 33, column: 13, scope: !1608)
!1619 = !DILocation(line: 35, column: 5, scope: !1608)
!1620 = distinct !DISubprogram(name: "__ucmpdi2", scope: !508, file: !508, line: 23, type: !741, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !507, retainedNodes: !545)
!1621 = !DILocation(line: 26, column: 7, scope: !1620)
!1622 = !DILocation(line: 26, column: 11, scope: !1620)
!1623 = !DILocation(line: 28, column: 7, scope: !1620)
!1624 = !DILocation(line: 28, column: 11, scope: !1620)
!1625 = !DILocation(line: 29, column: 11, scope: !1620)
!1626 = !DILocation(line: 29, column: 13, scope: !1620)
!1627 = !DILocation(line: 29, column: 22, scope: !1620)
!1628 = !DILocation(line: 29, column: 24, scope: !1620)
!1629 = !DILocation(line: 29, column: 18, scope: !1620)
!1630 = !DILocation(line: 29, column: 9, scope: !1620)
!1631 = !DILocation(line: 30, column: 9, scope: !1620)
!1632 = !DILocation(line: 31, column: 11, scope: !1620)
!1633 = !DILocation(line: 31, column: 13, scope: !1620)
!1634 = !DILocation(line: 31, column: 22, scope: !1620)
!1635 = !DILocation(line: 31, column: 24, scope: !1620)
!1636 = !DILocation(line: 31, column: 18, scope: !1620)
!1637 = !DILocation(line: 31, column: 9, scope: !1620)
!1638 = !DILocation(line: 32, column: 9, scope: !1620)
!1639 = !DILocation(line: 33, column: 13, scope: !1620)
!1640 = !DILocation(line: 33, column: 23, scope: !1620)
!1641 = !DILocation(line: 33, column: 17, scope: !1620)
!1642 = !DILocation(line: 33, column: 9, scope: !1620)
!1643 = !DILocation(line: 34, column: 9, scope: !1620)
!1644 = !DILocation(line: 35, column: 13, scope: !1620)
!1645 = !DILocation(line: 35, column: 23, scope: !1620)
!1646 = !DILocation(line: 35, column: 17, scope: !1620)
!1647 = !DILocation(line: 35, column: 9, scope: !1620)
!1648 = !DILocation(line: 36, column: 9, scope: !1620)
!1649 = !DILocation(line: 37, column: 5, scope: !1620)
!1650 = !DILocation(line: 0, scope: !1620)
!1651 = !DILocation(line: 38, column: 1, scope: !1620)
!1652 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !508, file: !508, line: 46, type: !741, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !507, retainedNodes: !545)
!1653 = !DILocation(line: 48, column: 9, scope: !1652)
!1654 = !DILocation(line: 48, column: 25, scope: !1652)
!1655 = !DILocation(line: 48, column: 2, scope: !1652)
!1656 = distinct !DISubprogram(name: "__udivdi3", scope: !512, file: !512, line: 20, type: !741, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !511, retainedNodes: !545)
!1657 = !DILocation(line: 22, column: 12, scope: !1656)
!1658 = !DILocation(line: 22, column: 5, scope: !1656)
!1659 = distinct !DISubprogram(name: "__udivmodsi4", scope: !516, file: !516, line: 20, type: !741, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !515, retainedNodes: !545)
!1660 = !DILocation(line: 22, column: 14, scope: !1659)
!1661 = !DILocation(line: 23, column: 16, scope: !1659)
!1662 = !DILocation(line: 23, column: 12, scope: !1659)
!1663 = !DILocation(line: 23, column: 8, scope: !1659)
!1664 = !DILocation(line: 24, column: 3, scope: !1659)
!1665 = distinct !DISubprogram(name: "__udivsi3", scope: !520, file: !520, line: 25, type: !741, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !519, retainedNodes: !545)
!1666 = !DILocation(line: 32, column: 11, scope: !1665)
!1667 = !DILocation(line: 32, column: 9, scope: !1665)
!1668 = !DILocation(line: 33, column: 9, scope: !1665)
!1669 = !DILocation(line: 34, column: 11, scope: !1665)
!1670 = !DILocation(line: 34, column: 9, scope: !1665)
!1671 = !DILocation(line: 35, column: 9, scope: !1665)
!1672 = !DILocation(line: 36, column: 10, scope: !1665)
!1673 = !DILocation(line: 36, column: 29, scope: !1665)
!1674 = !DILocation(line: 36, column: 27, scope: !1665)
!1675 = !DILocation(line: 38, column: 12, scope: !1665)
!1676 = !DILocation(line: 38, column: 9, scope: !1665)
!1677 = !DILocation(line: 39, column: 9, scope: !1665)
!1678 = !DILocation(line: 40, column: 12, scope: !1665)
!1679 = !DILocation(line: 40, column: 9, scope: !1665)
!1680 = !DILocation(line: 41, column: 9, scope: !1665)
!1681 = !DILocation(line: 42, column: 5, scope: !1665)
!1682 = !DILocation(line: 45, column: 28, scope: !1665)
!1683 = !DILocation(line: 45, column: 11, scope: !1665)
!1684 = !DILocation(line: 46, column: 11, scope: !1665)
!1685 = !DILocation(line: 48, column: 5, scope: !1665)
!1686 = !DILocation(line: 0, scope: !1665)
!1687 = !DILocation(line: 48, column: 15, scope: !1665)
!1688 = !DILocation(line: 51, column: 22, scope: !1665)
!1689 = !DILocation(line: 60, column: 41, scope: !1665)
!1690 = !DILocation(line: 63, column: 5, scope: !1665)
!1691 = !DILocation(line: 62, column: 16, scope: !1665)
!1692 = !DILocation(line: 62, column: 11, scope: !1665)
!1693 = !DILocation(line: 61, column: 19, scope: !1665)
!1694 = !DILocation(line: 52, column: 16, scope: !1665)
!1695 = !DILocation(line: 52, column: 22, scope: !1665)
!1696 = !DILocation(line: 48, column: 20, scope: !1665)
!1697 = distinct !{!1697, !1685, !1690, !594}
!1698 = !DILocation(line: 64, column: 12, scope: !1665)
!1699 = !DILocation(line: 64, column: 18, scope: !1665)
!1700 = !DILocation(line: 65, column: 5, scope: !1665)
!1701 = !DILocation(line: 66, column: 1, scope: !1665)
!1702 = distinct !DISubprogram(name: "__umoddi3", scope: !524, file: !524, line: 20, type: !741, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !523, retainedNodes: !545)
!1703 = !DILocation(line: 23, column: 5, scope: !1702)
!1704 = !DILocation(line: 24, column: 12, scope: !1702)
!1705 = !DILocation(line: 24, column: 5, scope: !1702)
!1706 = distinct !DISubprogram(name: "__umodsi3", scope: !526, file: !526, line: 20, type: !741, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !525, retainedNodes: !545)
!1707 = !DILocation(line: 22, column: 16, scope: !1706)
!1708 = !DILocation(line: 22, column: 32, scope: !1706)
!1709 = !DILocation(line: 22, column: 14, scope: !1706)
!1710 = !DILocation(line: 22, column: 5, scope: !1706)
!1711 = distinct !DISubprogram(name: "memcpy", scope: !530, file: !530, line: 3, type: !741, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !529, retainedNodes: !545)
!1712 = !DILocation(line: 8, column: 6, scope: !1711)
!1713 = !DILocation(line: 0, scope: !1711)
!1714 = !DILocation(line: 8, column: 19, scope: !1711)
!1715 = !DILocation(line: 8, column: 2, scope: !1711)
!1716 = !DILocation(line: 9, column: 21, scope: !1711)
!1717 = !DILocation(line: 9, column: 3, scope: !1711)
!1718 = !DILocation(line: 9, column: 19, scope: !1711)
!1719 = !DILocation(line: 10, column: 2, scope: !1711)
!1720 = !DILocation(line: 8, column: 26, scope: !1711)
!1721 = distinct !{!1721, !1715, !1719, !594}
!1722 = !DILocation(line: 11, column: 1, scope: !1711)
!1723 = distinct !DISubprogram(name: "memset", scope: !530, file: !530, line: 13, type: !741, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !529, retainedNodes: !545)
!1724 = !DILocation(line: 17, column: 6, scope: !1723)
!1725 = !DILocation(line: 0, scope: !1723)
!1726 = !DILocation(line: 17, column: 19, scope: !1723)
!1727 = !DILocation(line: 17, column: 2, scope: !1723)
!1728 = !DILocation(line: 18, column: 13, scope: !1723)
!1729 = !DILocation(line: 18, column: 3, scope: !1723)
!1730 = !DILocation(line: 18, column: 11, scope: !1723)
!1731 = !DILocation(line: 19, column: 2, scope: !1723)
!1732 = !DILocation(line: 17, column: 26, scope: !1723)
!1733 = distinct !{!1733, !1727, !1731, !594}
!1734 = !DILocation(line: 20, column: 2, scope: !1723)
