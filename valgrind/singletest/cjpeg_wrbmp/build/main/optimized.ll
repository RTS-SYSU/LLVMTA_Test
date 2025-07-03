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

@cjpeg_wrbmp_jpeg_dec_1 = dso_local global %struct.cjpeg_wrbmp_jpeg_decompress_struct zeroinitializer, align 4
@cjpeg_wrbmp_jpeg_dec_2 = dso_local global %struct.cjpeg_wrbmp_jpeg_decompress_struct zeroinitializer, align 4
@cjpeg_wrbmp_output_array = dso_local global [6144 x i8] zeroinitializer, align 1
@cjpeg_wrbmp_jpeg_stream = dso_local global i8* null, align 4
@cjpeg_wrbmp_checksum = dso_local global i32 0, align 4
@cjpeg_wrbmp_djpeg_dest = dso_local global %struct.cjpeg_wrbmp_djpeg_dest_struct zeroinitializer, align 4
@cjpeg_wrbmp_bmp_dest = dso_local global %struct.cjpeg_wrbmp_bmp_dest_struct zeroinitializer, align 4
@__const.cjpeg_wrbmp_initInput.tmp = private unnamed_addr constant [3 x [256 x i8]] [[256 x i8] c",i\99G\97\A0\BCZ\D1\83\DDr]|\D0\CF\DA6\91q\99\EF\E2S\F3\97bCr\99S\BAtH\BC\BEm\A2\DA\85\D0\D1s\FB\87Y\8F\E2\E6\F6\98\F3\98s\B4N\F6\A4\FAuL\96\98\BC\FB\C3\7Fo\E1\D0^]\8F\83\C9\D3c]\BE\9Dy\F0u\B9\A7\89\98\BC\FA;\F8\F5s\F0\C0\D1\8F\88b\E0\A7\87\84\BDH\F9\CD,j`\93\F7\F9\E4\E0\F9\BEp\87\A8_\CD\AB:pO\CEK\F2\BC\BD\E1\B9Q\DD\99\F4\C6\AB\A3\9F\D1\F0\8A\94\CF\A6\C0\BC\97b\BE\D1\9A\E1H`\F9\BF\DF\CF\A3\CF\85\FB\B7\87\89\9F\F7\A7S{\C7\CB\90\8E\EDM\80u\A9\CA\88\80\BC\A87\DE\A9t<K\AFf\D9\A8\B9\BD\E1}\C0po\A8\EF\E1\A8a\81\BE\AF\A9\E1\AA\E2\E1\E2\E0\86j\FA\DE\94\F1\A8\A6\A0_\BEf\B4\C1o\97\A5\AB\C84\86\A9\DF\A6\E1\A9o\B9m8\F4\9D\FA\E2\E7w\BC", [256 x i8] c"*\8F.[T\C9\8C[R\8C\1FX,\AB9s\CE;\91ut5\E8uP<B@u\AEY\B2\93?S;g\8B\D3@Dbv5wZ\A1\E8\ABb\B0\ECv\9D\B4MrX\1Cw(aE\BD\FC\E1w`\DBTRi\9E1\C8=uN?\93\8CElZ\A1i\BErTLF+\9C\DE`H\8FZi8\90N\81#Bed1i\82\A0\EF\81\8DS+Dj\84S\\\82\AF?\83O\C0i9\A0v\A2\8DN\C0\80\CE\C9\CB\A2\9F\A3\DD\B7\9D\B1\BD\C0\81\826h-e\FC4[\B11\DDto\8F\\\8E\9F\83\AD=\9F\ADQ\81\D6\D5\91\8F\E8C\91\82c\EDn\A0\83C2\81\83\7FL\\\CB`\CE\B0\B4Uc\A2v@N\BE\BF-e\81:H\D31ssU=dtk\8Fu\DB\9A\E1\AE\A0\A3w\BEj\BA1-\B1\93U\8A*\AE;DxG\818\95aDX\94<\EF\B3\95h", [256 x i8] c",L%8L\98z\99M\BF)L'a.m\AC+t[f1\C9DX-5_\A0\AFf\A4t2L-V\BD\D82=]\C4[d:t\DF\A6f~\DD\9EV\EB7qx4s*V7\A5\F7\C2\A0l\AAlbM\A8*\B3F`>G\D8dG\9By\92V\86ir1d2w\DA_Q\DCNf2}D\AA$>w\81,\97H\8F\F1\83\89OI7z\CCIJ\83\DD5YH\B2<@\91\9D\9C\B1e\B4p\C2\CE\B2\A8\DD\99\C9w\DE\A5\BC\D4u\B4-\86*\82\E5/k\AC(\DD\92\84\8An\90\BCp\84@\A2\91\8C\C8\B5\D7\8B\C5\B7j~tY\CC\98{\A14.\83\A7\AD>F\97\97\C5\B1\B8`ae\826?\8D\B9-~`.G\AC&rdjEv\8A\7Fc\7F\C6\CC\F2\F8\C5\F1J\BD\B2\FCA-\94\91a\A8-o+@\A4Pq/\88S*[\C5_\DE\A7\\b"], align 1
@cjpeg_wrbmp_colormap = dso_local global [3 x [256 x i8]] zeroinitializer, align 1
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
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_init() #0 !dbg !127 {
entry:
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_initInput() #5, !dbg !131
  store %struct.cjpeg_wrbmp_jpeg_progress_mgr* null, %struct.cjpeg_wrbmp_jpeg_progress_mgr** getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_1, i32 0, i32 2), align 4, !dbg !132
  store i32 30, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_1, i32 0, i32 28), align 4, !dbg !133
  store i32 256, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_1, i32 0, i32 32), align 4, !dbg !134
  store i32 2, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_1, i32 0, i32 29), align 4, !dbg !135
  store %struct.cjpeg_wrbmp_jpeg_progress_mgr* null, %struct.cjpeg_wrbmp_jpeg_progress_mgr** getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_2, i32 0, i32 2), align 4, !dbg !136
  store i32 30, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_2, i32 0, i32 28), align 4, !dbg !137
  store i32 256, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_2, i32 0, i32 32), align 4, !dbg !138
  store i32 3, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_2, i32 0, i32 29), align 4, !dbg !139
  store i8* getelementptr inbounds ([6144 x i8], [6144 x i8]* @cjpeg_wrbmp_output_array, i32 0, i32 0), i8** @cjpeg_wrbmp_jpeg_stream, align 4, !dbg !140
  store i32 0, i32* @cjpeg_wrbmp_checksum, align 4, !dbg !141
  ret void, !dbg !142
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %character) #0 !dbg !143 {
entry:
  %conv = trunc i32 %character to i8, !dbg !144
  %0 = load i8*, i8** @cjpeg_wrbmp_jpeg_stream, align 4, !dbg !145
  store i8 %conv, i8* %0, align 1, !dbg !146
  %1 = load i8*, i8** @cjpeg_wrbmp_jpeg_stream, align 4, !dbg !147
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1, !dbg !147
  store i8* %incdec.ptr, i8** @cjpeg_wrbmp_jpeg_stream, align 4, !dbg !147
  %2 = load i32, i32* @cjpeg_wrbmp_checksum, align 4, !dbg !148
  %add = add nsw i32 %2, %character, !dbg !148
  store i32 %add, i32* @cjpeg_wrbmp_checksum, align 4, !dbg !148
  ret i32 %character, !dbg !149
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_finish_output_bmp(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef %cinfo) #0 !dbg !150 {
entry:
  %progress1 = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, i32 0, i32 2, !dbg !151
  %0 = bitcast %struct.cjpeg_wrbmp_jpeg_progress_mgr** %progress1 to %struct.cjpeg_wrbmp_cdjpeg_progress_mgr**, !dbg !151
  %1 = load %struct.cjpeg_wrbmp_cdjpeg_progress_mgr*, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr** %0, align 4, !dbg !151
  br label %for.cond, !dbg !152

for.cond:                                         ; preds = %for.inc, %entry
  %row.0 = phi i32 [ 2, %entry ], [ %dec, %for.inc ], !dbg !153
  %cmp.not = icmp eq i32 %row.0, 0, !dbg !154
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !155

for.body:                                         ; preds = %for.cond
  %output_height = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, i32 0, i32 28, !dbg !156
  %2 = load i32, i32* %output_height, align 4, !dbg !156
  %sub = sub i32 %2, %row.0, !dbg !157
  %pass_counter = getelementptr inbounds %struct.cjpeg_wrbmp_cdjpeg_progress_mgr, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %1, i32 0, i32 0, i32 1, !dbg !158
  store i32 %sub, i32* %pass_counter, align 4, !dbg !159
  %output_height2 = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, i32 0, i32 28, !dbg !160
  %3 = load i32, i32* %output_height2, align 4, !dbg !160
  %pass_limit = getelementptr inbounds %struct.cjpeg_wrbmp_cdjpeg_progress_mgr, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %1, i32 0, i32 0, i32 2, !dbg !161
  store i32 %3, i32* %pass_limit, align 4, !dbg !162
  br label %for.inc, !dbg !163

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %row.0, -1, !dbg !164
  br label %for.cond, !dbg !155, !llvm.loop !165

for.end:                                          ; preds = %for.cond
  %cmp4.not = icmp eq %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %1, null, !dbg !167
  br i1 %cmp4.not, label %if.end, label %if.then, !dbg !168

if.then:                                          ; preds = %for.end
  %completed_extra_passes = getelementptr inbounds %struct.cjpeg_wrbmp_cdjpeg_progress_mgr, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %1, i32 0, i32 1, !dbg !169
  %4 = load i32, i32* %completed_extra_passes, align 4, !dbg !170
  %inc = add nsw i32 %4, 1, !dbg !170
  store i32 %inc, i32* %completed_extra_passes, align 4, !dbg !170
  br label %if.end, !dbg !171

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !172
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_write_colormap(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef %cinfo, i32 noundef %map_colors, i32 noundef %map_entry_size, i32 noundef %cMap) #0 !dbg !173 {
entry:
  %cmp.not = icmp eq i32 %cMap, 0, !dbg !174
  br i1 %cmp.not, label %if.else28, label %if.then, !dbg !175

if.then:                                          ; preds = %entry
  %out_color_components = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, i32 0, i32 29, !dbg !176
  %0 = load i32, i32* %out_color_components, align 4, !dbg !176
  %cmp1 = icmp eq i32 %0, 3, !dbg !177
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !178

if.then2:                                         ; preds = %if.then
  br label %for.cond, !dbg !179

for.cond:                                         ; preds = %for.inc, %if.then2
  %i.0 = phi i32 [ 0, %if.then2 ], [ %inc, %for.inc ], !dbg !180
  %exitcond2.not = icmp eq i32 %i.0, 2, !dbg !181
  br i1 %exitcond2.not, label %for.end, label %for.body, !dbg !182

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 2, i32 %i.0, !dbg !183
  %1 = load i8, i8* %arrayidx, align 1, !dbg !183
  %conv = zext i8 %1 to i32, !dbg !183
  %call = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv) #5, !dbg !184
  %arrayidx4 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 1, i32 %i.0, !dbg !185
  %2 = load i8, i8* %arrayidx4, align 1, !dbg !185
  %conv5 = zext i8 %2 to i32, !dbg !185
  %call6 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv5) #5, !dbg !186
  %arrayidx7 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 0, i32 %i.0, !dbg !187
  %3 = load i8, i8* %arrayidx7, align 1, !dbg !187
  %conv8 = zext i8 %3 to i32, !dbg !187
  %call9 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv8) #5, !dbg !188
  %call10 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #5, !dbg !189
  br label %for.inc, !dbg !190

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !191
  br label %for.cond, !dbg !182, !llvm.loop !192

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !193

if.else:                                          ; preds = %if.then
  br label %for.cond11, !dbg !194

for.cond11:                                       ; preds = %for.inc25, %if.else
  %i.1 = phi i32 [ 0, %if.else ], [ %inc26, %for.inc25 ], !dbg !180
  %exitcond1.not = icmp eq i32 %i.1, 2, !dbg !195
  br i1 %exitcond1.not, label %for.end27, label %for.body14, !dbg !196

for.body14:                                       ; preds = %for.cond11
  %arrayidx15 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 2, i32 %i.1, !dbg !197
  %4 = load i8, i8* %arrayidx15, align 1, !dbg !197
  %conv16 = zext i8 %4 to i32, !dbg !197
  %call17 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv16) #5, !dbg !198
  %arrayidx18 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 1, i32 %i.1, !dbg !199
  %5 = load i8, i8* %arrayidx18, align 1, !dbg !199
  %conv19 = zext i8 %5 to i32, !dbg !199
  %call20 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv19) #5, !dbg !200
  %arrayidx21 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 0, i32 %i.1, !dbg !201
  %6 = load i8, i8* %arrayidx21, align 1, !dbg !201
  %conv22 = zext i8 %6 to i32, !dbg !201
  %call23 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv22) #5, !dbg !202
  %call24 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #5, !dbg !203
  br label %for.inc25, !dbg !204

for.inc25:                                        ; preds = %for.body14
  %inc26 = add nuw nsw i32 %i.1, 1, !dbg !205
  br label %for.cond11, !dbg !196, !llvm.loop !206

for.end27:                                        ; preds = %for.cond11
  br label %if.end

if.end:                                           ; preds = %for.end27, %for.end
  br label %if.end40, !dbg !207

if.else28:                                        ; preds = %entry
  br label %for.cond29, !dbg !208

for.cond29:                                       ; preds = %for.inc37, %if.else28
  %i.3 = phi i32 [ 0, %if.else28 ], [ %inc38, %for.inc37 ], !dbg !180
  %exitcond.not = icmp eq i32 %i.3, 2, !dbg !209
  br i1 %exitcond.not, label %for.end39, label %for.body32, !dbg !210

for.body32:                                       ; preds = %for.cond29
  %call33 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %i.3) #5, !dbg !211
  %call34 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %i.3) #5, !dbg !212
  %call35 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %i.3) #5, !dbg !213
  %call36 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #5, !dbg !214
  br label %for.inc37, !dbg !215

for.inc37:                                        ; preds = %for.body32
  %inc38 = add nuw nsw i32 %i.3, 1, !dbg !216
  br label %for.cond29, !dbg !210, !llvm.loop !217

for.end39:                                        ; preds = %for.cond29
  br label %if.end40

if.end40:                                         ; preds = %for.end39, %if.end
  br label %for.cond41, !dbg !218

for.cond41:                                       ; preds = %for.inc49, %if.end40
  br i1 false, label %for.body44, label %for.end51, !dbg !218

for.body44:                                       ; preds = %for.cond41
  br label %for.inc49, !dbg !219

for.inc49:                                        ; preds = %for.body44
  br label %for.cond41, !dbg !218, !llvm.loop !220

for.end51:                                        ; preds = %for.cond41
  ret void, !dbg !221
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_main() #0 !dbg !222 {
entry:
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_finish_output_bmp(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef nonnull @cjpeg_wrbmp_jpeg_dec_1) #5, !dbg !223
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_write_colormap(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef nonnull @cjpeg_wrbmp_jpeg_dec_1, i32 noundef 768, i32 noundef 4, i32 noundef 1) #5, !dbg !224
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_finish_output_bmp(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef nonnull @cjpeg_wrbmp_jpeg_dec_2) #5, !dbg !225
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_write_colormap(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef nonnull @cjpeg_wrbmp_jpeg_dec_2, i32 noundef 768, i32 noundef 4, i32 noundef 1) #5, !dbg !226
  ret void, !dbg !227
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cjpeg_wrbmp_return() #0 !dbg !228 {
entry:
  %0 = load i32, i32* @cjpeg_wrbmp_checksum, align 4, !dbg !229
  %cmp = icmp ne i32 %0, 209330, !dbg !230
  %conv = zext i1 %cmp to i32, !dbg !230
  ret i32 %conv, !dbg !231
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !232 {
entry:
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_init() #5, !dbg !233
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_main() #5, !dbg !234
  %call = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_return() #5, !dbg !235
  ret i32 %call, !dbg !236
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_initInput() #0 !dbg !237 {
entry:
  %tmp = alloca [3 x [256 x i8]], align 1
  %0 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* %tmp, i32 0, i32 0, i32 0, !dbg !239
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %0, i8* align 1 getelementptr inbounds ([3 x [256 x i8]], [3 x [256 x i8]]* @__const.cjpeg_wrbmp_initInput.tmp, i32 0, i32 0, i32 0), i32 768, i1 true), !dbg !239
  br label %for.cond, !dbg !240

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !dbg !241
  %exitcond1.not = icmp eq i32 %i.0, 2, !dbg !242
  br i1 %exitcond1.not, label %for.end9, label %for.body, !dbg !243

for.body:                                         ; preds = %for.cond
  br label %for.cond1, !dbg !244

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !dbg !241
  %exitcond.not = icmp eq i32 %j.0, 2, !dbg !245
  br i1 %exitcond.not, label %for.end, label %for.body3, !dbg !246

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* %tmp, i32 0, i32 %i.0, i32 %j.0, !dbg !247
  %1 = load volatile i8, i8* %arrayidx4, align 1, !dbg !247
  %arrayidx6 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 %i.0, i32 %j.0, !dbg !248
  store i8 %1, i8* %arrayidx6, align 1, !dbg !249
  br label %for.inc, !dbg !248

for.inc:                                          ; preds = %for.body3
  %inc = add nuw nsw i32 %j.0, 1, !dbg !250
  br label %for.cond1, !dbg !246, !llvm.loop !251

for.end:                                          ; preds = %for.cond1
  br label %for.inc7, !dbg !253

for.inc7:                                         ; preds = %for.end
  %inc8 = add nuw nsw i32 %i.0, 1, !dbg !254
  br label %for.cond, !dbg !243, !llvm.loop !255

for.end9:                                         ; preds = %for.cond
  ret void, !dbg !256
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #2 !dbg !257 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !258
  br i1 %cmp, label %if.then, label %if.end, !dbg !259

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #6, !dbg !260
  unreachable, !dbg !260

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !261
  ret i64 %0, !dbg !262
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #3 !dbg !263 {
entry:
  unreachable, !dbg !264
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #2 !dbg !265 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !266
  br i1 %cmp, label %if.then, label %if.end, !dbg !267

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #6, !dbg !268
  unreachable, !dbg !268

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !269
  ret i32 %0, !dbg !270
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !271 {
entry:
  %add = add i64 %a, %b, !dbg !272
  %cmp = icmp sgt i64 %b, -1, !dbg !273
  br i1 %cmp, label %if.then, label %if.else, !dbg !274

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !275
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !276

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #6, !dbg !277
  unreachable, !dbg !277

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !278

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !279
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !280

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #6, !dbg !281
  unreachable, !dbg !281

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !282
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !283 {
entry:
  %add = add i32 %a, %b, !dbg !284
  %cmp = icmp sgt i32 %b, -1, !dbg !285
  br i1 %cmp, label %if.then, label %if.else, !dbg !286

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !287
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !288

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #6, !dbg !289
  unreachable, !dbg !289

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !290

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !291
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !292

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #6, !dbg !293
  unreachable, !dbg !293

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !294
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #2 !dbg !295 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !296
  store i64 %a, i64* %all, align 8, !dbg !297
  %and = and i32 %b, 32, !dbg !298
  %tobool.not = icmp eq i32 %and, 0, !dbg !298
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !299

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !300
  store i32 0, i32* %low, align 8, !dbg !301
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !302
  %0 = load i32, i32* %low2, align 8, !dbg !302
  %sub = add nsw i32 %b, -32, !dbg !303
  %shl = shl i32 %0, %sub, !dbg !304
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !305
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !306
  store i32 %shl, i32* %high, align 4, !dbg !307
  br label %if.end18, !dbg !308

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !309
  br i1 %cmp, label %if.then4, label %if.end, !dbg !310

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !311

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !312
  %1 = load i32, i32* %low6, align 8, !dbg !312
  %shl7 = shl i32 %1, %b, !dbg !313
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !314
  store i32 %shl7, i32* %low9, align 8, !dbg !315
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !316
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !317
  %2 = load i32, i32* %high11, align 4, !dbg !317
  %shl12 = shl i32 %2, %b, !dbg !318
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !319
  %3 = load i32, i32* %low14, align 8, !dbg !319
  %sub15 = sub nsw i32 32, %b, !dbg !320
  %shr = lshr i32 %3, %sub15, !dbg !321
  %or = or i32 %shl12, %shr, !dbg !322
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !323
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !324
  store i32 %or, i32* %high17, align 4, !dbg !325
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !326
  %4 = load i64, i64* %all19, align 8, !dbg !326
  br label %return, !dbg !327

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !328
  ret i64 %retval.0, !dbg !329
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !330 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !331
  store i64 %a, i64* %all, align 8, !dbg !332
  %and = and i32 %b, 32, !dbg !333
  %tobool.not = icmp eq i32 %and, 0, !dbg !333
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !334

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !335
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !336
  %0 = load i32, i32* %high, align 4, !dbg !336
  %shr = ashr i32 %0, 31, !dbg !337
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !338
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !339
  store i32 %shr, i32* %high2, align 4, !dbg !340
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !341
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !342
  %1 = load i32, i32* %high4, align 4, !dbg !342
  %sub = add nsw i32 %b, -32, !dbg !343
  %shr5 = ashr i32 %1, %sub, !dbg !344
  %low = bitcast %union.dwords* %result to i32*, !dbg !345
  store i32 %shr5, i32* %low, align 8, !dbg !346
  br label %if.end21, !dbg !347

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !348
  br i1 %cmp, label %if.then7, label %if.end, !dbg !349

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !350

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !351
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !352
  %2 = load i32, i32* %high9, align 4, !dbg !352
  %shr10 = ashr i32 %2, %b, !dbg !353
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !354
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !355
  store i32 %shr10, i32* %high12, align 4, !dbg !356
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !357
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !358
  %3 = load i32, i32* %high14, align 4, !dbg !358
  %sub15 = sub nsw i32 32, %b, !dbg !359
  %shl = shl i32 %3, %sub15, !dbg !360
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !361
  %4 = load i32, i32* %low17, align 8, !dbg !361
  %shr18 = lshr i32 %4, %b, !dbg !362
  %or = or i32 %shl, %shr18, !dbg !363
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !364
  store i32 %or, i32* %low20, align 8, !dbg !365
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !366
  %5 = load i64, i64* %all22, align 8, !dbg !366
  br label %return, !dbg !367

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !368
  ret i64 %retval.0, !dbg !369
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #2 !dbg !370 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !371
  store i64 %a, i64* %all, align 8, !dbg !372
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !373
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !374
  %0 = load i32, i32* %high, align 4, !dbg !374
  %cmp = icmp eq i32 %0, 0, !dbg !375
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !376
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !377
  %1 = load i32, i32* %high2, align 4, !dbg !377
  %low = bitcast %union.dwords* %x to i32*, !dbg !378
  %2 = load i32, i32* %low, align 8, !dbg !378
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !379
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !380, !range !381
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !382
  %add = add nuw nsw i32 %4, %and5, !dbg !383
  ret i32 %add, !dbg !384
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #2 !dbg !385 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !386
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !387
  %sub = sub nuw nsw i32 16, %shl, !dbg !388
  %shr = lshr i32 %a, %sub, !dbg !389
  %and1 = and i32 %shr, 65280, !dbg !390
  %cmp2 = icmp eq i32 %and1, 0, !dbg !391
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !392
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !393
  %shr6 = lshr i32 %shr, %sub5, !dbg !394
  %add = or i32 %shl, %shl4, !dbg !395
  %and7 = and i32 %shr6, 240, !dbg !396
  %cmp8 = icmp eq i32 %and7, 0, !dbg !397
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !398
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !399
  %shr12 = lshr i32 %shr6, %sub11, !dbg !400
  %add13 = or i32 %add, %shl10, !dbg !401
  %and14 = and i32 %shr12, 12, !dbg !402
  %cmp15 = icmp eq i32 %and14, 0, !dbg !403
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !404
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !405
  %shr19 = lshr i32 %shr12, %sub18, !dbg !406
  %add20 = or i32 %add13, %shl17, !dbg !407
  %sub21 = sub i32 2, %shr19, !dbg !408
  %and22 = lshr i32 %shr19, 1, !dbg !409
  %0 = or i32 %and22, -2, !dbg !409
  %.neg = add nsw i32 %0, 1, !dbg !409
  %and26 = and i32 %sub21, %.neg, !dbg !410
  %add27 = add i32 %add20, %and26, !dbg !411
  ret i32 %add27, !dbg !412
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !413 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !414
  store i64 %a, i64* %all, align 8, !dbg !415
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !416
  store i64 %b, i64* %all1, align 8, !dbg !417
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !418
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !419
  %0 = load i32, i32* %high, align 4, !dbg !419
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !420
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !421
  %1 = load i32, i32* %high3, align 4, !dbg !421
  %cmp = icmp slt i32 %0, %1, !dbg !422
  br i1 %cmp, label %if.then, label %if.end, !dbg !423

if.then:                                          ; preds = %entry
  br label %return, !dbg !424

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !425
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !426
  %2 = load i32, i32* %high5, align 4, !dbg !426
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !427
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !428
  %3 = load i32, i32* %high7, align 4, !dbg !428
  %cmp8 = icmp sgt i32 %2, %3, !dbg !429
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !430

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !431

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !432
  %4 = load i32, i32* %low, align 8, !dbg !432
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !433
  %5 = load i32, i32* %low13, align 8, !dbg !433
  %cmp14 = icmp ult i32 %4, %5, !dbg !434
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !435

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !436

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !437
  %6 = load i32, i32* %low18, align 8, !dbg !437
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !438
  %7 = load i32, i32* %low20, align 8, !dbg !438
  %cmp21 = icmp ugt i32 %6, %7, !dbg !439
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !440

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !441

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !442

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !443
  ret i32 %retval.0, !dbg !444
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !445 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #5, !dbg !446
  %sub = add nsw i32 %call, -1, !dbg !447
  ret i32 %sub, !dbg !448
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #2 !dbg !449 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !450
  store i64 %a, i64* %all, align 8, !dbg !451
  %low = bitcast %union.dwords* %x to i32*, !dbg !452
  %0 = load i32, i32* %low, align 8, !dbg !452
  %cmp = icmp eq i32 %0, 0, !dbg !453
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !454
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !455
  %1 = load i32, i32* %high, align 4, !dbg !455
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !456
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !457, !range !381
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !458
  %add = add nuw nsw i32 %3, %and5, !dbg !459
  ret i32 %add, !dbg !460
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #2 !dbg !461 {
entry:
  %and = and i32 %a, 65535, !dbg !462
  %cmp = icmp eq i32 %and, 0, !dbg !463
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !464
  %shr = lshr i32 %a, %shl, !dbg !465
  %and1 = and i32 %shr, 255, !dbg !466
  %cmp2 = icmp eq i32 %and1, 0, !dbg !467
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !468
  %shr5 = lshr i32 %shr, %shl4, !dbg !469
  %add = or i32 %shl, %shl4, !dbg !470
  %and6 = and i32 %shr5, 15, !dbg !471
  %cmp7 = icmp eq i32 %and6, 0, !dbg !472
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !473
  %shr10 = lshr i32 %shr5, %shl9, !dbg !474
  %add11 = or i32 %add, %shl9, !dbg !475
  %and12 = and i32 %shr10, 3, !dbg !476
  %cmp13 = icmp eq i32 %and12, 0, !dbg !477
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !478
  %shr16 = lshr i32 %shr10, %shl15, !dbg !479
  %add18 = or i32 %add11, %shl15, !dbg !480
  %and17 = lshr i32 %shr16, 1, !dbg !481
  %shr19 = and i32 %and17, 1, !dbg !481
  %sub = sub nuw nsw i32 2, %shr19, !dbg !482
  %0 = or i32 %shr16, -2, !dbg !483
  %.neg = add nsw i32 %0, 1, !dbg !483
  %and24 = and i32 %sub, %.neg, !dbg !484
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !485
  ret i32 %add25, !dbg !486
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !487 {
entry:
  %shr = ashr i64 %a, 63, !dbg !488
  %shr1 = ashr i64 %b, 63, !dbg !489
  %xor = xor i64 %shr, %a, !dbg !490
  %sub = sub nsw i64 %xor, %shr, !dbg !491
  %xor2 = xor i64 %shr1, %b, !dbg !492
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !493
  %xor4 = xor i64 %shr, %shr1, !dbg !494
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #5, !dbg !495
  %xor5 = xor i64 %call, %xor4, !dbg !496
  %sub6 = sub i64 %xor5, %xor4, !dbg !497
  ret i64 %sub6, !dbg !498
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !499 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !500
  store i64 %a, i64* %all, align 8, !dbg !501
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !502
  store i64 %b, i64* %all1, align 8, !dbg !503
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !504
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !505
  %0 = load i32, i32* %high, align 4, !dbg !505
  %cmp = icmp eq i32 %0, 0, !dbg !506
  br i1 %cmp, label %if.then, label %if.end23, !dbg !507

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !508
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !509
  %1 = load i32, i32* %high3, align 4, !dbg !509
  %cmp4 = icmp eq i32 %1, 0, !dbg !510
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !511

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !512
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !512

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !513
  %2 = load i32, i32* %low, align 8, !dbg !513
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !514
  %3 = load i32, i32* %low9, align 8, !dbg !514
  %rem10 = urem i32 %2, %3, !dbg !515
  %conv = zext i32 %rem10 to i64, !dbg !516
  store i64 %conv, i64* %rem, align 8, !dbg !517
  br label %if.end, !dbg !518

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !519
  %4 = load i32, i32* %low12, align 8, !dbg !519
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !520
  %5 = load i32, i32* %low14, align 8, !dbg !520
  %div = udiv i32 %4, %5, !dbg !521
  %conv15 = zext i32 %div to i64, !dbg !522
  br label %return, !dbg !523

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !524
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !524

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !525
  %6 = load i32, i32* %low20, align 8, !dbg !525
  %conv21 = zext i32 %6 to i64, !dbg !526
  store i64 %conv21, i64* %rem, align 8, !dbg !527
  br label %if.end22, !dbg !528

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !529

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !530
  %7 = load i32, i32* %low25, align 8, !dbg !530
  %cmp26 = icmp eq i32 %7, 0, !dbg !531
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !532

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !533
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !534
  %8 = load i32, i32* %high30, align 4, !dbg !534
  %cmp31 = icmp eq i32 %8, 0, !dbg !535
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !536

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !537
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !537

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !538
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !539
  %9 = load i32, i32* %high37, align 4, !dbg !539
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !540
  %10 = load i32, i32* %low39, align 8, !dbg !540
  %rem40 = urem i32 %9, %10, !dbg !541
  %conv41 = zext i32 %rem40 to i64, !dbg !542
  store i64 %conv41, i64* %rem, align 8, !dbg !543
  br label %if.end42, !dbg !544

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !545
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !546
  %11 = load i32, i32* %high44, align 4, !dbg !546
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !547
  %12 = load i32, i32* %low46, align 8, !dbg !547
  %div47 = udiv i32 %11, %12, !dbg !548
  %conv48 = zext i32 %div47 to i64, !dbg !549
  br label %return, !dbg !550

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !551
  %13 = load i32, i32* %low51, align 8, !dbg !551
  %cmp52 = icmp eq i32 %13, 0, !dbg !552
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !553

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !554
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !554

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !555
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !556
  %14 = load i32, i32* %high58, align 4, !dbg !556
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !557
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !558
  %15 = load i32, i32* %high60, align 4, !dbg !558
  %rem61 = urem i32 %14, %15, !dbg !559
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !560
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !561
  store i32 %rem61, i32* %high63, align 4, !dbg !562
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !563
  store i32 0, i32* %low65, align 8, !dbg !564
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !565
  %16 = load i64, i64* %all66, align 8, !dbg !565
  store i64 %16, i64* %rem, align 8, !dbg !566
  br label %if.end67, !dbg !567

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !568
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !569
  %17 = load i32, i32* %high69, align 4, !dbg !569
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !570
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !571
  %18 = load i32, i32* %high71, align 4, !dbg !571
  %div72 = udiv i32 %17, %18, !dbg !572
  %conv73 = zext i32 %div72 to i64, !dbg !573
  br label %return, !dbg !574

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !575
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !576
  %19 = load i32, i32* %high76, align 4, !dbg !576
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !577
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !578
  %20 = load i32, i32* %high78, align 4, !dbg !578
  %sub = add i32 %20, -1, !dbg !579
  %and = and i32 %19, %sub, !dbg !580
  %cmp79 = icmp eq i32 %and, 0, !dbg !581
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !582

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !583
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !583

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !584
  %21 = load i32, i32* %low85, align 8, !dbg !584
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !585
  store i32 %21, i32* %low87, align 8, !dbg !586
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !587
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !588
  %22 = load i32, i32* %high89, align 4, !dbg !588
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !589
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !590
  %23 = load i32, i32* %high91, align 4, !dbg !590
  %sub92 = add i32 %23, -1, !dbg !591
  %and93 = and i32 %22, %sub92, !dbg !592
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !593
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !594
  store i32 %and93, i32* %high95, align 4, !dbg !595
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !596
  %24 = load i64, i64* %all96, align 8, !dbg !596
  store i64 %24, i64* %rem, align 8, !dbg !597
  br label %if.end97, !dbg !598

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !599
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !600
  %25 = load i32, i32* %high99, align 4, !dbg !600
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !601
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !602
  %26 = load i32, i32* %high101, align 4, !dbg !602
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !603, !range !381
  %shr = lshr i32 %25, %27, !dbg !604
  %conv102 = zext i32 %shr to i64, !dbg !605
  br label %return, !dbg !606

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !607
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !608
  %28 = load i32, i32* %high105, align 4, !dbg !608
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !609, !range !381
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !610
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !611
  %30 = load i32, i32* %high107, align 4, !dbg !611
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !612, !range !381
  %sub108 = sub nsw i32 %29, %31, !dbg !613
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !614
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !615

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !616
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !616

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !617
  %32 = load i64, i64* %all114, align 8, !dbg !617
  store i64 %32, i64* %rem, align 8, !dbg !618
  br label %if.end115, !dbg !619

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !620

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !621
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !622
  store i32 0, i32* %low118, align 8, !dbg !623
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !624
  %33 = load i32, i32* %low120, align 8, !dbg !624
  %sub121 = sub nsw i32 31, %sub108, !dbg !625
  %shl = shl i32 %33, %sub121, !dbg !626
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !627
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !628
  store i32 %shl, i32* %high123, align 4, !dbg !629
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !630
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !631
  %34 = load i32, i32* %high125, align 4, !dbg !631
  %shr126 = lshr i32 %34, %inc, !dbg !632
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !633
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !634
  store i32 %shr126, i32* %high128, align 4, !dbg !635
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !636
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !637
  %35 = load i32, i32* %high130, align 4, !dbg !637
  %sub131 = sub nsw i32 31, %sub108, !dbg !638
  %shl132 = shl i32 %35, %sub131, !dbg !639
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !640
  %36 = load i32, i32* %low134, align 8, !dbg !640
  %shr135 = lshr i32 %36, %inc, !dbg !641
  %or = or i32 %shl132, %shr135, !dbg !642
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !643
  store i32 %or, i32* %low137, align 8, !dbg !644
  br label %if.end317, !dbg !645

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !646
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !647
  %37 = load i32, i32* %high139, align 4, !dbg !647
  %cmp140 = icmp eq i32 %37, 0, !dbg !648
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !649

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !650
  %38 = load i32, i32* %low144, align 8, !dbg !650
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !651, !range !381
  %cmp149 = icmp ult i32 %39, 2, !dbg !651
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !652

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !653
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !653

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !654
  %40 = load i32, i32* %low155, align 8, !dbg !654
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !655
  %41 = load i32, i32* %low157, align 8, !dbg !655
  %sub158 = add i32 %41, -1, !dbg !656
  %and159 = and i32 %40, %sub158, !dbg !657
  %conv160 = zext i32 %and159 to i64, !dbg !658
  store i64 %conv160, i64* %rem, align 8, !dbg !659
  br label %if.end161, !dbg !660

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !661
  %42 = load i32, i32* %low163, align 8, !dbg !661
  %cmp164 = icmp eq i32 %42, 1, !dbg !662
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !663

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !664
  %43 = load i64, i64* %all167, align 8, !dbg !664
  br label %return, !dbg !665

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !666
  %44 = load i32, i32* %low170, align 8, !dbg !666
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !667, !range !381
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !668
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !669
  %46 = load i32, i32* %high172, align 4, !dbg !669
  %shr173 = lshr i32 %46, %45, !dbg !670
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !671
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !672
  store i32 %shr173, i32* %high175, align 4, !dbg !673
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !674
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !675
  %47 = load i32, i32* %high177, align 4, !dbg !675
  %sub178 = sub nuw nsw i32 32, %45, !dbg !676
  %shl179 = shl i32 %47, %sub178, !dbg !677
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !678
  %48 = load i32, i32* %low181, align 8, !dbg !678
  %shr182 = lshr i32 %48, %45, !dbg !679
  %or183 = or i32 %shl179, %shr182, !dbg !680
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !681
  store i32 %or183, i32* %low185, align 8, !dbg !682
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !683
  %49 = load i64, i64* %all186, align 8, !dbg !683
  br label %return, !dbg !684

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !685
  %50 = load i32, i32* %low189, align 8, !dbg !685
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !686, !range !381
  %add = add nuw nsw i32 %51, 33, !dbg !687
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !688
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !689
  %52 = load i32, i32* %high191, align 4, !dbg !689
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !690, !range !381
  %sub192 = sub nsw i32 %add, %53, !dbg !691
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !692
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !693

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !694
  store i32 0, i32* %low197, align 8, !dbg !695
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !696
  %54 = load i32, i32* %low199, align 8, !dbg !696
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !697
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !698
  store i32 %54, i32* %high201, align 4, !dbg !699
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !700
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !701
  store i32 0, i32* %high203, align 4, !dbg !702
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !703
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !704
  %55 = load i32, i32* %high205, align 4, !dbg !704
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !705
  store i32 %55, i32* %low207, align 8, !dbg !706
  br label %if.end262, !dbg !707

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !708
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !709

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !710
  store i32 0, i32* %low213, align 8, !dbg !711
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !712
  %56 = load i32, i32* %low215, align 8, !dbg !712
  %sub216 = sub nsw i32 32, %sub192, !dbg !713
  %shl217 = shl i32 %56, %sub216, !dbg !714
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !715
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !716
  store i32 %shl217, i32* %high219, align 4, !dbg !717
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !718
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !719
  %57 = load i32, i32* %high221, align 4, !dbg !719
  %shr222 = lshr i32 %57, %sub192, !dbg !720
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !721
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !722
  store i32 %shr222, i32* %high224, align 4, !dbg !723
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !724
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !725
  %58 = load i32, i32* %high226, align 4, !dbg !725
  %sub227 = sub nsw i32 32, %sub192, !dbg !726
  %shl228 = shl i32 %58, %sub227, !dbg !727
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !728
  %59 = load i32, i32* %low230, align 8, !dbg !728
  %shr231 = lshr i32 %59, %sub192, !dbg !729
  %or232 = or i32 %shl228, %shr231, !dbg !730
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !731
  store i32 %or232, i32* %low234, align 8, !dbg !732
  br label %if.end261, !dbg !733

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !734
  %60 = load i32, i32* %low237, align 8, !dbg !734
  %sub238 = sub nsw i32 64, %sub192, !dbg !735
  %shl239 = shl i32 %60, %sub238, !dbg !736
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !737
  store i32 %shl239, i32* %low241, align 8, !dbg !738
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !739
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !740
  %61 = load i32, i32* %high243, align 4, !dbg !740
  %sub244 = sub nsw i32 64, %sub192, !dbg !741
  %shl245 = shl i32 %61, %sub244, !dbg !742
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !743
  %62 = load i32, i32* %low247, align 8, !dbg !743
  %sub248 = add nsw i32 %sub192, -32, !dbg !744
  %shr249 = lshr i32 %62, %sub248, !dbg !745
  %or250 = or i32 %shl245, %shr249, !dbg !746
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !747
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !748
  store i32 %or250, i32* %high252, align 4, !dbg !749
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !750
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !751
  store i32 0, i32* %high254, align 4, !dbg !752
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !753
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !754
  %63 = load i32, i32* %high256, align 4, !dbg !754
  %sub257 = add nsw i32 %sub192, -32, !dbg !755
  %shr258 = lshr i32 %63, %sub257, !dbg !756
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !757
  store i32 %shr258, i32* %low260, align 8, !dbg !758
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !759

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !760
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !761
  %64 = load i32, i32* %high265, align 4, !dbg !761
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !762, !range !381
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !763
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !764
  %66 = load i32, i32* %high267, align 4, !dbg !764
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !765, !range !381
  %sub268 = sub nsw i32 %65, %67, !dbg !766
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !767
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !768

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !769
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !769

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !770
  %68 = load i64, i64* %all274, align 8, !dbg !770
  store i64 %68, i64* %rem, align 8, !dbg !771
  br label %if.end275, !dbg !772

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !773

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !774
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !775
  store i32 0, i32* %low279, align 8, !dbg !776
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !777
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !778

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !779
  %69 = load i32, i32* %low284, align 8, !dbg !779
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !780
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !781
  store i32 %69, i32* %high286, align 4, !dbg !782
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !783
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !784
  store i32 0, i32* %high288, align 4, !dbg !785
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !786
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !787
  %70 = load i32, i32* %high290, align 4, !dbg !787
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !788
  store i32 %70, i32* %low292, align 8, !dbg !789
  br label %if.end315, !dbg !790

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !791
  %71 = load i32, i32* %low295, align 8, !dbg !791
  %sub296 = sub nsw i32 31, %sub268, !dbg !792
  %shl297 = shl i32 %71, %sub296, !dbg !793
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !794
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !795
  store i32 %shl297, i32* %high299, align 4, !dbg !796
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !797
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !798
  %72 = load i32, i32* %high301, align 4, !dbg !798
  %shr302 = lshr i32 %72, %inc277, !dbg !799
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !800
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !801
  store i32 %shr302, i32* %high304, align 4, !dbg !802
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !803
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !804
  %73 = load i32, i32* %high306, align 4, !dbg !804
  %sub307 = sub nsw i32 31, %sub268, !dbg !805
  %shl308 = shl i32 %73, %sub307, !dbg !806
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !807
  %74 = load i32, i32* %low310, align 8, !dbg !807
  %shr311 = lshr i32 %74, %inc277, !dbg !808
  %or312 = or i32 %shl308, %shr311, !dbg !809
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !810
  store i32 %or312, i32* %low314, align 8, !dbg !811
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !812
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !812
  br label %for.cond, !dbg !813

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !812
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !812
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !814
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !813

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !815
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !816
  %75 = load i32, i32* %high321, align 4, !dbg !816
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !817
  %76 = load i32, i32* %low324, align 8, !dbg !817
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !818
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !819
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !820
  store i32 %or326, i32* %high328, align 4, !dbg !821
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !822
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !823
  %77 = load i32, i32* %high333, align 4, !dbg !823
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !824
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !825
  store i32 %or335, i32* %low337, align 8, !dbg !826
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !827
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !828
  %78 = load i32, i32* %high339, align 4, !dbg !828
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !829
  %79 = load i32, i32* %low342, align 8, !dbg !829
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !830
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !831
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !832
  store i32 %or344, i32* %high346, align 4, !dbg !833
  %shl349 = shl i32 %79, 1, !dbg !834
  %or350 = or i32 %shl349, %carry.0, !dbg !835
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !836
  store i32 %or350, i32* %low352, align 8, !dbg !837
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !838
  %80 = load i64, i64* %all354, align 8, !dbg !838
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !839
  %81 = load i64, i64* %all355, align 8, !dbg !839
  %82 = xor i64 %81, -1, !dbg !840
  %sub357 = add i64 %80, %82, !dbg !840
  %isneg = icmp slt i64 %sub357, 0, !dbg !841
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !841
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !842
  %sub364 = sub i64 %81, %and362, !dbg !843
  store i64 %sub364, i64* %all363, align 8, !dbg !843
  br label %for.inc, !dbg !844

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !845
  %conv360 = trunc i64 %and359 to i32, !dbg !846
  %dec = add i32 %sr.2, -1, !dbg !847
  br label %for.cond, !dbg !813, !llvm.loop !848

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !849
  %83 = load i64, i64* %all365, align 8, !dbg !849
  %shl366 = shl i64 %83, 1, !dbg !850
  %conv367 = zext i32 %carry.0 to i64, !dbg !851
  %or368 = or i64 %shl366, %conv367, !dbg !852
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !853
  store i64 %or368, i64* %all369, align 8, !dbg !854
  %tobool370.not = icmp eq i64* %rem, null, !dbg !855
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !855

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !856
  %84 = load i64, i64* %all372, align 8, !dbg !856
  store i64 %84, i64* %rem, align 8, !dbg !857
  br label %if.end373, !dbg !858

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !859
  %85 = load i64, i64* %all374, align 8, !dbg !859
  br label %return, !dbg !860

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !812
  ret i64 %retval.0, !dbg !861
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !862 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #5, !dbg !863
  %mul = mul nsw i64 %call, %b, !dbg !864
  %sub = sub nsw i64 %a, %mul, !dbg !865
  store i64 %sub, i64* %rem, align 8, !dbg !866
  ret i64 %call, !dbg !867
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !868 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !869
  %mul = mul nsw i32 %call, %b, !dbg !870
  %sub = sub nsw i32 %a, %mul, !dbg !871
  store i32 %sub, i32* %rem, align 4, !dbg !872
  ret i32 %call, !dbg !873
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !874 {
entry:
  %shr = ashr i32 %a, 31, !dbg !875
  %shr1 = ashr i32 %b, 31, !dbg !876
  %xor = xor i32 %shr, %a, !dbg !877
  %sub = sub nsw i32 %xor, %shr, !dbg !878
  %xor2 = xor i32 %shr1, %b, !dbg !879
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !880
  %xor4 = xor i32 %shr, %shr1, !dbg !881
  %div = udiv i32 %sub, %sub3, !dbg !882
  %xor5 = xor i32 %div, %xor4, !dbg !883
  %sub6 = sub i32 %xor5, %xor4, !dbg !884
  ret i32 %sub6, !dbg !885
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #2 !dbg !886 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !887
  store i64 %a, i64* %all, align 8, !dbg !888
  %low = bitcast %union.dwords* %x to i32*, !dbg !889
  %0 = load i32, i32* %low, align 8, !dbg !889
  %cmp = icmp eq i32 %0, 0, !dbg !890
  br i1 %cmp, label %if.then, label %if.end6, !dbg !891

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !892
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !893
  %1 = load i32, i32* %high, align 4, !dbg !893
  %cmp2 = icmp eq i32 %1, 0, !dbg !894
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !895

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !896

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !897
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !898
  %2 = load i32, i32* %high5, align 4, !dbg !898
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !899, !range !381
  %add = add nuw nsw i32 %3, 33, !dbg !900
  br label %return, !dbg !901

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !902
  %4 = load i32, i32* %low8, align 8, !dbg !902
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !903, !range !381
  %add9 = add nuw nsw i32 %5, 1, !dbg !904
  br label %return, !dbg !905

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !906
  ret i32 %retval.0, !dbg !907
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #2 !dbg !908 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !909
  br i1 %cmp, label %if.then, label %if.end, !dbg !910

if.then:                                          ; preds = %entry
  br label %return, !dbg !911

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !912, !range !381
  %add = add nuw nsw i32 %0, 1, !dbg !913
  br label %return, !dbg !914

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !915
  ret i32 %retval.0, !dbg !916
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !917 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !918
  store i64 %a, i64* %all, align 8, !dbg !919
  %and = and i32 %b, 32, !dbg !920
  %tobool.not = icmp eq i32 %and, 0, !dbg !920
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !921

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !922
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !923
  store i32 0, i32* %high, align 4, !dbg !924
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !925
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !926
  %0 = load i32, i32* %high2, align 4, !dbg !926
  %sub = add nsw i32 %b, -32, !dbg !927
  %shr = lshr i32 %0, %sub, !dbg !928
  %low = bitcast %union.dwords* %result to i32*, !dbg !929
  store i32 %shr, i32* %low, align 8, !dbg !930
  br label %if.end18, !dbg !931

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !932
  br i1 %cmp, label %if.then4, label %if.end, !dbg !933

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !934

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !935
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !936
  %1 = load i32, i32* %high6, align 4, !dbg !936
  %shr7 = lshr i32 %1, %b, !dbg !937
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !938
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !939
  store i32 %shr7, i32* %high9, align 4, !dbg !940
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !941
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !942
  %2 = load i32, i32* %high11, align 4, !dbg !942
  %sub12 = sub nsw i32 32, %b, !dbg !943
  %shl = shl i32 %2, %sub12, !dbg !944
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !945
  %3 = load i32, i32* %low14, align 8, !dbg !945
  %shr15 = lshr i32 %3, %b, !dbg !946
  %or = or i32 %shl, %shr15, !dbg !947
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !948
  store i32 %or, i32* %low17, align 8, !dbg !949
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !950
  %4 = load i64, i64* %all19, align 8, !dbg !950
  br label %return, !dbg !951

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !952
  ret i64 %retval.0, !dbg !953
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !954 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !955
  %shr1 = ashr i64 %a, 63, !dbg !956
  %xor2 = xor i64 %shr1, %a, !dbg !957
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !958
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #5, !dbg !959
  %1 = load i64, i64* %r, align 8, !dbg !960
  %xor4 = xor i64 %1, %shr1, !dbg !961
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !962
  ret i64 %sub5, !dbg !963
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !964 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !965
  %mul = mul nsw i32 %call, %b, !dbg !966
  %sub = sub nsw i32 %a, %mul, !dbg !967
  ret i32 %sub, !dbg !968
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !969 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !970
  br i1 %cmp, label %if.then, label %if.end4, !dbg !971

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !972
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !973

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !974
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !975

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !976

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !977
  unreachable, !dbg !977

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !978
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !979

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !980
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !981

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !982
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !983

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !984

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !985
  unreachable, !dbg !985

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !986
  %xor = xor i64 %shr, %a, !dbg !987
  %sub = sub nsw i64 %xor, %shr, !dbg !988
  %shr14 = ashr i64 %b, 63, !dbg !989
  %xor15 = xor i64 %shr14, %b, !dbg !990
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !991
  %cmp17 = icmp slt i64 %sub, 2, !dbg !992
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !993

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !994
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !995

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !996

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !997
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !998

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !999
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !1000
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1001

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !1002
  unreachable, !dbg !1002

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1003

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !1004
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !1005
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !1006
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1007

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !1008
  unreachable, !dbg !1008

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1009

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !1010
  ret i64 %retval.0, !dbg !1011
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1012 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !1013
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1014

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !1015
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1016

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !1017
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1018

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1019

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !1020
  unreachable, !dbg !1020

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !1021
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1022

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !1023
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1024

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !1025
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1026

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1027

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !1028
  unreachable, !dbg !1028

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !1029
  %xor = xor i32 %shr, %a, !dbg !1030
  %sub = sub nsw i32 %xor, %shr, !dbg !1031
  %shr14 = ashr i32 %b, 31, !dbg !1032
  %xor15 = xor i32 %shr14, %b, !dbg !1033
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !1034
  %cmp17 = icmp slt i32 %sub, 2, !dbg !1035
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1036

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !1037
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1038

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1039

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !1040
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1041

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !1042
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !1043
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1044

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !1045
  unreachable, !dbg !1045

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1046

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !1047
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !1048
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !1049
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1050

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !1051
  unreachable, !dbg !1051

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1052

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !1053
  ret i32 %retval.0, !dbg !1054
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #2 !dbg !1055 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1056
  store i64 %a, i64* %all, align 8, !dbg !1057
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1058
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1059
  %0 = load i32, i32* %high, align 4, !dbg !1059
  %low = bitcast %union.dwords* %x to i32*, !dbg !1060
  %1 = load i32, i32* %low, align 8, !dbg !1060
  %xor = xor i32 %0, %1, !dbg !1061
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #5, !dbg !1062
  ret i32 %call, !dbg !1063
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #2 !dbg !1064 {
entry:
  %shr = lshr i32 %a, 16, !dbg !1065
  %xor = xor i32 %shr, %a, !dbg !1066
  %shr1 = lshr i32 %xor, 8, !dbg !1067
  %xor2 = xor i32 %xor, %shr1, !dbg !1068
  %shr3 = lshr i32 %xor2, 4, !dbg !1069
  %xor4 = xor i32 %xor2, %shr3, !dbg !1070
  %and = and i32 %xor4, 15, !dbg !1071
  %shr5 = lshr i32 27030, %and, !dbg !1072
  %and6 = and i32 %shr5, 1, !dbg !1073
  ret i32 %and6, !dbg !1074
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #2 !dbg !1075 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1076
  %and = and i64 %shr, 6148914691236517205, !dbg !1077
  %sub = sub i64 %a, %and, !dbg !1078
  %shr1 = lshr i64 %sub, 2, !dbg !1079
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1080
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1081
  %add = add nuw nsw i64 %and2, %and3, !dbg !1082
  %shr4 = lshr i64 %add, 4, !dbg !1083
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1084
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1085
  %shr7 = lshr i64 %and6, 32, !dbg !1086
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1087
  %conv = trunc i64 %add8 to i32, !dbg !1088
  %shr9 = lshr i32 %conv, 16, !dbg !1089
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1090
  %shr11 = lshr i32 %add10, 8, !dbg !1091
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1092
  %and13 = and i32 %add12, 127, !dbg !1093
  ret i32 %and13, !dbg !1094
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #2 !dbg !1095 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1096
  %and = and i32 %shr, 1431655765, !dbg !1097
  %sub = sub i32 %a, %and, !dbg !1098
  %shr1 = lshr i32 %sub, 2, !dbg !1099
  %and2 = and i32 %shr1, 858993459, !dbg !1100
  %and3 = and i32 %sub, 858993459, !dbg !1101
  %add = add nuw nsw i32 %and2, %and3, !dbg !1102
  %shr4 = lshr i32 %add, 4, !dbg !1103
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1104
  %and6 = and i32 %add5, 252645135, !dbg !1105
  %shr7 = lshr i32 %and6, 16, !dbg !1106
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1107
  %shr9 = lshr i32 %add8, 8, !dbg !1108
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1109
  %and11 = and i32 %add10, 63, !dbg !1110
  ret i32 %and11, !dbg !1111
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1112 {
entry:
  %sub = sub i64 %a, %b, !dbg !1113
  %cmp = icmp sgt i64 %b, -1, !dbg !1114
  br i1 %cmp, label %if.then, label %if.else, !dbg !1115

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1116
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1117

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #6, !dbg !1118
  unreachable, !dbg !1118

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1119

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1120
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1121

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #6, !dbg !1122
  unreachable, !dbg !1122

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1123
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1124 {
entry:
  %sub = sub i32 %a, %b, !dbg !1125
  %cmp = icmp sgt i32 %b, -1, !dbg !1126
  br i1 %cmp, label %if.then, label %if.else, !dbg !1127

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1128
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1129

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #6, !dbg !1130
  unreachable, !dbg !1130

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1131

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1132
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1133

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #6, !dbg !1134
  unreachable, !dbg !1134

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1135
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !1136 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1137
  store i64 %a, i64* %all, align 8, !dbg !1138
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1139
  store i64 %b, i64* %all1, align 8, !dbg !1140
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1141
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1142
  %0 = load i32, i32* %high, align 4, !dbg !1142
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1143
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1144
  %1 = load i32, i32* %high3, align 4, !dbg !1144
  %cmp = icmp ult i32 %0, %1, !dbg !1145
  br i1 %cmp, label %if.then, label %if.end, !dbg !1146

if.then:                                          ; preds = %entry
  br label %return, !dbg !1147

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1148
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1149
  %2 = load i32, i32* %high5, align 4, !dbg !1149
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1150
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1151
  %3 = load i32, i32* %high7, align 4, !dbg !1151
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1152
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1153

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1154

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1155
  %4 = load i32, i32* %low, align 8, !dbg !1155
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1156
  %5 = load i32, i32* %low13, align 8, !dbg !1156
  %cmp14 = icmp ult i32 %4, %5, !dbg !1157
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1158

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1159

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1160
  %6 = load i32, i32* %low18, align 8, !dbg !1160
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1161
  %7 = load i32, i32* %low20, align 8, !dbg !1161
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1162
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1163

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1164

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1165

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1166
  ret i32 %retval.0, !dbg !1167
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !1168 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #5, !dbg !1169
  %sub = add nsw i32 %call, -1, !dbg !1170
  ret i32 %sub, !dbg !1171
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1172 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #5, !dbg !1173
  ret i64 %call, !dbg !1174
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !1175 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !1176
  %mul = mul i32 %call, %b, !dbg !1177
  %sub = sub i32 %a, %mul, !dbg !1178
  store i32 %sub, i32* %rem, align 4, !dbg !1179
  ret i32 %call, !dbg !1180
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #2 !dbg !1181 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1182
  br i1 %cmp, label %if.then, label %if.end, !dbg !1183

if.then:                                          ; preds = %entry
  br label %return, !dbg !1184

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1185
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1186

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1187

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1188, !range !381
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1189, !range !381
  %sub = sub nsw i32 %0, %1, !dbg !1190
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1191
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1192

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1193

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1194
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1195

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1196

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1197
  %sub10 = sub nsw i32 31, %sub, !dbg !1198
  %shl = shl i32 %n, %sub10, !dbg !1199
  %shr = lshr i32 %n, %inc, !dbg !1200
  br label %for.cond, !dbg !1201

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1202
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1202
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1202
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1202
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1203
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1201

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1204
  %2 = xor i32 %or, -1, !dbg !1205
  %sub17 = add i32 %2, %d, !dbg !1205
  br label %for.inc, !dbg !1206

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1207
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1207
  %sub20 = sub i32 %or, %and19, !dbg !1208
  %and = lshr i32 %sub17, 31, !dbg !1209
  %shl14 = shl i32 %q.0, 1, !dbg !1210
  %or15 = or i32 %shl14, %carry.0, !dbg !1211
  %dec = add i32 %sr.0, -1, !dbg !1212
  br label %for.cond, !dbg !1201, !llvm.loop !1213

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1214
  %or22 = or i32 %shl21, %carry.0, !dbg !1215
  br label %return, !dbg !1216

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1202
  ret i32 %retval.0, !dbg !1217
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1218 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #5, !dbg !1219
  %0 = load i64, i64* %r, align 8, !dbg !1220
  ret i64 %0, !dbg !1221
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1222 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !1223
  %mul = mul i32 %call, %b, !dbg !1224
  %sub = sub i32 %a, %mul, !dbg !1225
  ret i32 %sub, !dbg !1226
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #2 !dbg !1227 {
entry:
  br label %for.cond, !dbg !1228

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1229
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1230
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1231

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1232
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1232
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1233
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1234
  br label %for.inc, !dbg !1235

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1236
  br label %for.cond, !dbg !1231, !llvm.loop !1237

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1238
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #2 !dbg !1239 {
entry:
  br label %for.cond, !dbg !1240

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1241
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1242
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1243

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1244
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1245
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1246
  br label %for.inc, !dbg !1247

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1248
  br label %for.cond, !dbg !1243, !llvm.loop !1249

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1250
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

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114}
!llvm.ident = !{!116, !116, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117, !117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125, !126}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c", directory: "/workspaces/llvmta/testcases/tmp.HgxNsMNts5", checksumkind: CSK_MD5, checksum: "80481e07bccae433bca801d844389a9b")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/cjpeg_wrbmp/input.c", directory: "/workspaces/llvmta/testcases/tmp.HgxNsMNts5", checksumkind: CSK_MD5, checksum: "40a8438eda4e1c4ba13ee9d4cf6beda0")
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
!127 = distinct !DISubprogram(name: "cjpeg_wrbmp_init", scope: !128, file: !128, line: 79, type: !129, scopeLine: 80, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !130)
!128 = !DIFile(filename: "batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "80481e07bccae433bca801d844389a9b")
!129 = !DISubroutineType(types: !130)
!130 = !{}
!131 = !DILocation(line: 81, column: 3, scope: !127)
!132 = !DILocation(line: 83, column: 50, scope: !127)
!133 = !DILocation(line: 84, column: 50, scope: !127)
!134 = !DILocation(line: 85, column: 50, scope: !127)
!135 = !DILocation(line: 86, column: 50, scope: !127)
!136 = !DILocation(line: 88, column: 50, scope: !127)
!137 = !DILocation(line: 89, column: 50, scope: !127)
!138 = !DILocation(line: 90, column: 50, scope: !127)
!139 = !DILocation(line: 91, column: 50, scope: !127)
!140 = !DILocation(line: 93, column: 27, scope: !127)
!141 = !DILocation(line: 95, column: 24, scope: !127)
!142 = !DILocation(line: 96, column: 1, scope: !127)
!143 = distinct !DISubprogram(name: "cjpeg_wrbmp_putc_modified", scope: !128, file: !128, line: 101, type: !129, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !130)
!144 = !DILocation(line: 103, column: 34, scope: !143)
!145 = !DILocation(line: 103, column: 6, scope: !143)
!146 = !DILocation(line: 103, column: 32, scope: !143)
!147 = !DILocation(line: 105, column: 3, scope: !143)
!148 = !DILocation(line: 107, column: 24, scope: !143)
!149 = !DILocation(line: 109, column: 3, scope: !143)
!150 = distinct !DISubprogram(name: "cjpeg_wrbmp_finish_output_bmp", scope: !128, file: !128, line: 112, type: !129, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !130)
!151 = !DILocation(line: 116, column: 44, scope: !150)
!152 = !DILocation(line: 120, column: 9, scope: !150)
!153 = !DILocation(line: 0, scope: !150)
!154 = !DILocation(line: 120, column: 22, scope: !150)
!155 = !DILocation(line: 120, column: 3, scope: !150)
!156 = !DILocation(line: 122, column: 53, scope: !150)
!157 = !DILocation(line: 122, column: 67, scope: !150)
!158 = !DILocation(line: 122, column: 21, scope: !150)
!159 = !DILocation(line: 122, column: 34, scope: !150)
!160 = !DILocation(line: 123, column: 50, scope: !150)
!161 = !DILocation(line: 123, column: 21, scope: !150)
!162 = !DILocation(line: 123, column: 32, scope: !150)
!163 = !DILocation(line: 125, column: 3, scope: !150)
!164 = !DILocation(line: 120, column: 27, scope: !150)
!165 = distinct !{!165, !155, !163, !166}
!166 = !{!"llvm.loop.mustprogress"}
!167 = !DILocation(line: 127, column: 17, scope: !150)
!168 = !DILocation(line: 127, column: 8, scope: !150)
!169 = !DILocation(line: 128, column: 15, scope: !150)
!170 = !DILocation(line: 128, column: 37, scope: !150)
!171 = !DILocation(line: 128, column: 5, scope: !150)
!172 = !DILocation(line: 129, column: 1, scope: !150)
!173 = distinct !DISubprogram(name: "cjpeg_wrbmp_write_colormap", scope: !128, file: !128, line: 131, type: !129, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !130)
!174 = !DILocation(line: 139, column: 13, scope: !173)
!175 = !DILocation(line: 139, column: 8, scope: !173)
!176 = !DILocation(line: 141, column: 17, scope: !173)
!177 = !DILocation(line: 141, column: 38, scope: !173)
!178 = !DILocation(line: 141, column: 10, scope: !173)
!179 = !DILocation(line: 144, column: 13, scope: !173)
!180 = !DILocation(line: 0, scope: !173)
!181 = !DILocation(line: 144, column: 22, scope: !173)
!182 = !DILocation(line: 144, column: 7, scope: !173)
!183 = !DILocation(line: 145, column: 36, scope: !173)
!184 = !DILocation(line: 145, column: 9, scope: !173)
!185 = !DILocation(line: 147, column: 36, scope: !173)
!186 = !DILocation(line: 147, column: 9, scope: !173)
!187 = !DILocation(line: 149, column: 36, scope: !173)
!188 = !DILocation(line: 149, column: 9, scope: !173)
!189 = !DILocation(line: 153, column: 11, scope: !173)
!190 = !DILocation(line: 154, column: 7, scope: !173)
!191 = !DILocation(line: 144, column: 28, scope: !173)
!192 = distinct !{!192, !182, !190, !166}
!193 = !DILocation(line: 155, column: 5, scope: !173)
!194 = !DILocation(line: 158, column: 13, scope: !173)
!195 = !DILocation(line: 158, column: 22, scope: !173)
!196 = !DILocation(line: 158, column: 7, scope: !173)
!197 = !DILocation(line: 160, column: 36, scope: !173)
!198 = !DILocation(line: 160, column: 9, scope: !173)
!199 = !DILocation(line: 162, column: 36, scope: !173)
!200 = !DILocation(line: 162, column: 9, scope: !173)
!201 = !DILocation(line: 164, column: 36, scope: !173)
!202 = !DILocation(line: 164, column: 9, scope: !173)
!203 = !DILocation(line: 168, column: 11, scope: !173)
!204 = !DILocation(line: 169, column: 7, scope: !173)
!205 = !DILocation(line: 158, column: 28, scope: !173)
!206 = distinct !{!206, !196, !204, !166}
!207 = !DILocation(line: 171, column: 3, scope: !173)
!208 = !DILocation(line: 174, column: 11, scope: !173)
!209 = !DILocation(line: 174, column: 20, scope: !173)
!210 = !DILocation(line: 174, column: 5, scope: !173)
!211 = !DILocation(line: 175, column: 7, scope: !173)
!212 = !DILocation(line: 176, column: 7, scope: !173)
!213 = !DILocation(line: 177, column: 7, scope: !173)
!214 = !DILocation(line: 180, column: 9, scope: !173)
!215 = !DILocation(line: 181, column: 5, scope: !173)
!216 = !DILocation(line: 174, column: 26, scope: !173)
!217 = distinct !{!217, !210, !215, !166}
!218 = !DILocation(line: 186, column: 3, scope: !173)
!219 = !DILocation(line: 193, column: 3, scope: !173)
!220 = distinct !{!220, !218, !219, !166}
!221 = !DILocation(line: 194, column: 1, scope: !173)
!222 = distinct !DISubprogram(name: "cjpeg_wrbmp_main", scope: !128, file: !128, line: 196, type: !129, scopeLine: 197, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !130)
!223 = !DILocation(line: 198, column: 3, scope: !222)
!224 = !DILocation(line: 199, column: 3, scope: !222)
!225 = !DILocation(line: 201, column: 3, scope: !222)
!226 = !DILocation(line: 202, column: 3, scope: !222)
!227 = !DILocation(line: 203, column: 1, scope: !222)
!228 = distinct !DISubprogram(name: "cjpeg_wrbmp_return", scope: !128, file: !128, line: 205, type: !129, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !130)
!229 = !DILocation(line: 207, column: 12, scope: !228)
!230 = !DILocation(line: 207, column: 50, scope: !228)
!231 = !DILocation(line: 207, column: 3, scope: !228)
!232 = distinct !DISubprogram(name: "main", scope: !128, file: !128, line: 210, type: !129, scopeLine: 211, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !130)
!233 = !DILocation(line: 212, column: 3, scope: !232)
!234 = !DILocation(line: 213, column: 3, scope: !232)
!235 = !DILocation(line: 215, column: 12, scope: !232)
!236 = !DILocation(line: 215, column: 3, scope: !232)
!237 = distinct !DISubprogram(name: "cjpeg_wrbmp_initInput", scope: !238, file: !238, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!238 = !DIFile(filename: "batchtest/cjpeg_wrbmp/input.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "40a8438eda4e1c4ba13ee9d4cf6beda0")
!239 = !DILocation(line: 25, column: 26, scope: !237)
!240 = !DILocation(line: 81, column: 9, scope: !237)
!241 = !DILocation(line: 0, scope: !237)
!242 = !DILocation(line: 81, column: 18, scope: !237)
!243 = !DILocation(line: 81, column: 3, scope: !237)
!244 = !DILocation(line: 83, column: 11, scope: !237)
!245 = !DILocation(line: 83, column: 20, scope: !237)
!246 = !DILocation(line: 83, column: 5, scope: !237)
!247 = !DILocation(line: 84, column: 40, scope: !237)
!248 = !DILocation(line: 84, column: 7, scope: !237)
!249 = !DILocation(line: 84, column: 38, scope: !237)
!250 = !DILocation(line: 83, column: 26, scope: !237)
!251 = distinct !{!251, !246, !252, !166}
!252 = !DILocation(line: 84, column: 52, scope: !237)
!253 = !DILocation(line: 85, column: 3, scope: !237)
!254 = !DILocation(line: 81, column: 24, scope: !237)
!255 = distinct !{!255, !243, !253, !166}
!256 = !DILocation(line: 86, column: 1, scope: !237)
!257 = distinct !DISubprogram(name: "__absvdi2", scope: !5, file: !5, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !130)
!258 = !DILocation(line: 25, column: 11, scope: !257)
!259 = !DILocation(line: 25, column: 9, scope: !257)
!260 = !DILocation(line: 26, column: 9, scope: !257)
!261 = !DILocation(line: 28, column: 20, scope: !257)
!262 = !DILocation(line: 28, column: 5, scope: !257)
!263 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !57, file: !57, line: 57, type: !129, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !130)
!264 = !DILocation(line: 59, column: 1, scope: !263)
!265 = distinct !DISubprogram(name: "__absvsi2", scope: !7, file: !7, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !130)
!266 = !DILocation(line: 25, column: 11, scope: !265)
!267 = !DILocation(line: 25, column: 9, scope: !265)
!268 = !DILocation(line: 26, column: 9, scope: !265)
!269 = !DILocation(line: 28, column: 20, scope: !265)
!270 = !DILocation(line: 28, column: 5, scope: !265)
!271 = distinct !DISubprogram(name: "__addvdi3", scope: !11, file: !11, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !130)
!272 = !DILocation(line: 24, column: 27, scope: !271)
!273 = !DILocation(line: 25, column: 11, scope: !271)
!274 = !DILocation(line: 25, column: 9, scope: !271)
!275 = !DILocation(line: 27, column: 15, scope: !271)
!276 = !DILocation(line: 27, column: 13, scope: !271)
!277 = !DILocation(line: 28, column: 13, scope: !271)
!278 = !DILocation(line: 29, column: 5, scope: !271)
!279 = !DILocation(line: 32, column: 15, scope: !271)
!280 = !DILocation(line: 32, column: 13, scope: !271)
!281 = !DILocation(line: 33, column: 13, scope: !271)
!282 = !DILocation(line: 35, column: 5, scope: !271)
!283 = distinct !DISubprogram(name: "__addvsi3", scope: !13, file: !13, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !130)
!284 = !DILocation(line: 24, column: 27, scope: !283)
!285 = !DILocation(line: 25, column: 11, scope: !283)
!286 = !DILocation(line: 25, column: 9, scope: !283)
!287 = !DILocation(line: 27, column: 15, scope: !283)
!288 = !DILocation(line: 27, column: 13, scope: !283)
!289 = !DILocation(line: 28, column: 13, scope: !283)
!290 = !DILocation(line: 29, column: 5, scope: !283)
!291 = !DILocation(line: 32, column: 15, scope: !283)
!292 = !DILocation(line: 32, column: 13, scope: !283)
!293 = !DILocation(line: 33, column: 13, scope: !283)
!294 = !DILocation(line: 35, column: 5, scope: !283)
!295 = distinct !DISubprogram(name: "__ashldi3", scope: !17, file: !17, line: 24, type: !129, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !130)
!296 = !DILocation(line: 29, column: 11, scope: !295)
!297 = !DILocation(line: 29, column: 15, scope: !295)
!298 = !DILocation(line: 30, column: 11, scope: !295)
!299 = !DILocation(line: 30, column: 9, scope: !295)
!300 = !DILocation(line: 32, column: 18, scope: !295)
!301 = !DILocation(line: 32, column: 22, scope: !295)
!302 = !DILocation(line: 33, column: 33, scope: !295)
!303 = !DILocation(line: 33, column: 43, scope: !295)
!304 = !DILocation(line: 33, column: 37, scope: !295)
!305 = !DILocation(line: 33, column: 16, scope: !295)
!306 = !DILocation(line: 33, column: 18, scope: !295)
!307 = !DILocation(line: 33, column: 23, scope: !295)
!308 = !DILocation(line: 34, column: 5, scope: !295)
!309 = !DILocation(line: 37, column: 15, scope: !295)
!310 = !DILocation(line: 37, column: 13, scope: !295)
!311 = !DILocation(line: 38, column: 13, scope: !295)
!312 = !DILocation(line: 39, column: 33, scope: !295)
!313 = !DILocation(line: 39, column: 37, scope: !295)
!314 = !DILocation(line: 39, column: 18, scope: !295)
!315 = !DILocation(line: 39, column: 23, scope: !295)
!316 = !DILocation(line: 40, column: 32, scope: !295)
!317 = !DILocation(line: 40, column: 34, scope: !295)
!318 = !DILocation(line: 40, column: 39, scope: !295)
!319 = !DILocation(line: 40, column: 56, scope: !295)
!320 = !DILocation(line: 40, column: 77, scope: !295)
!321 = !DILocation(line: 40, column: 60, scope: !295)
!322 = !DILocation(line: 40, column: 45, scope: !295)
!323 = !DILocation(line: 40, column: 16, scope: !295)
!324 = !DILocation(line: 40, column: 18, scope: !295)
!325 = !DILocation(line: 40, column: 23, scope: !295)
!326 = !DILocation(line: 42, column: 19, scope: !295)
!327 = !DILocation(line: 42, column: 5, scope: !295)
!328 = !DILocation(line: 0, scope: !295)
!329 = !DILocation(line: 43, column: 1, scope: !295)
!330 = distinct !DISubprogram(name: "__ashrdi3", scope: !21, file: !21, line: 24, type: !129, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !130)
!331 = !DILocation(line: 29, column: 11, scope: !330)
!332 = !DILocation(line: 29, column: 15, scope: !330)
!333 = !DILocation(line: 30, column: 11, scope: !330)
!334 = !DILocation(line: 30, column: 9, scope: !330)
!335 = !DILocation(line: 33, column: 31, scope: !330)
!336 = !DILocation(line: 33, column: 33, scope: !330)
!337 = !DILocation(line: 33, column: 38, scope: !330)
!338 = !DILocation(line: 33, column: 16, scope: !330)
!339 = !DILocation(line: 33, column: 18, scope: !330)
!340 = !DILocation(line: 33, column: 23, scope: !330)
!341 = !DILocation(line: 34, column: 30, scope: !330)
!342 = !DILocation(line: 34, column: 32, scope: !330)
!343 = !DILocation(line: 34, column: 43, scope: !330)
!344 = !DILocation(line: 34, column: 37, scope: !330)
!345 = !DILocation(line: 34, column: 18, scope: !330)
!346 = !DILocation(line: 34, column: 22, scope: !330)
!347 = !DILocation(line: 35, column: 5, scope: !330)
!348 = !DILocation(line: 38, column: 15, scope: !330)
!349 = !DILocation(line: 38, column: 13, scope: !330)
!350 = !DILocation(line: 39, column: 13, scope: !330)
!351 = !DILocation(line: 40, column: 32, scope: !330)
!352 = !DILocation(line: 40, column: 34, scope: !330)
!353 = !DILocation(line: 40, column: 39, scope: !330)
!354 = !DILocation(line: 40, column: 16, scope: !330)
!355 = !DILocation(line: 40, column: 18, scope: !330)
!356 = !DILocation(line: 40, column: 24, scope: !330)
!357 = !DILocation(line: 41, column: 31, scope: !330)
!358 = !DILocation(line: 41, column: 33, scope: !330)
!359 = !DILocation(line: 41, column: 55, scope: !330)
!360 = !DILocation(line: 41, column: 38, scope: !330)
!361 = !DILocation(line: 41, column: 72, scope: !330)
!362 = !DILocation(line: 41, column: 76, scope: !330)
!363 = !DILocation(line: 41, column: 61, scope: !330)
!364 = !DILocation(line: 41, column: 18, scope: !330)
!365 = !DILocation(line: 41, column: 22, scope: !330)
!366 = !DILocation(line: 43, column: 19, scope: !330)
!367 = !DILocation(line: 43, column: 5, scope: !330)
!368 = !DILocation(line: 0, scope: !330)
!369 = !DILocation(line: 44, column: 1, scope: !330)
!370 = distinct !DISubprogram(name: "__clzdi2", scope: !25, file: !25, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !130)
!371 = !DILocation(line: 25, column: 7, scope: !370)
!372 = !DILocation(line: 25, column: 11, scope: !370)
!373 = !DILocation(line: 26, column: 26, scope: !370)
!374 = !DILocation(line: 26, column: 28, scope: !370)
!375 = !DILocation(line: 26, column: 33, scope: !370)
!376 = !DILocation(line: 27, column: 29, scope: !370)
!377 = !DILocation(line: 27, column: 31, scope: !370)
!378 = !DILocation(line: 27, column: 49, scope: !370)
!379 = !DILocation(line: 27, column: 42, scope: !370)
!380 = !DILocation(line: 27, column: 12, scope: !370)
!381 = !{i32 0, i32 33}
!382 = !DILocation(line: 28, column: 15, scope: !370)
!383 = !DILocation(line: 27, column: 59, scope: !370)
!384 = !DILocation(line: 27, column: 5, scope: !370)
!385 = distinct !DISubprogram(name: "__clzsi2", scope: !27, file: !27, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !130)
!386 = !DILocation(line: 25, column: 34, scope: !385)
!387 = !DILocation(line: 25, column: 40, scope: !385)
!388 = !DILocation(line: 26, column: 14, scope: !385)
!389 = !DILocation(line: 26, column: 7, scope: !385)
!390 = !DILocation(line: 29, column: 13, scope: !385)
!391 = !DILocation(line: 29, column: 23, scope: !385)
!392 = !DILocation(line: 29, column: 29, scope: !385)
!393 = !DILocation(line: 30, column: 13, scope: !385)
!394 = !DILocation(line: 30, column: 7, scope: !385)
!395 = !DILocation(line: 31, column: 7, scope: !385)
!396 = !DILocation(line: 33, column: 13, scope: !385)
!397 = !DILocation(line: 33, column: 21, scope: !385)
!398 = !DILocation(line: 33, column: 27, scope: !385)
!399 = !DILocation(line: 34, column: 13, scope: !385)
!400 = !DILocation(line: 34, column: 7, scope: !385)
!401 = !DILocation(line: 35, column: 7, scope: !385)
!402 = !DILocation(line: 37, column: 13, scope: !385)
!403 = !DILocation(line: 37, column: 20, scope: !385)
!404 = !DILocation(line: 37, column: 26, scope: !385)
!405 = !DILocation(line: 38, column: 13, scope: !385)
!406 = !DILocation(line: 38, column: 7, scope: !385)
!407 = !DILocation(line: 39, column: 7, scope: !385)
!408 = !DILocation(line: 52, column: 20, scope: !385)
!409 = !DILocation(line: 52, column: 37, scope: !385)
!410 = !DILocation(line: 52, column: 25, scope: !385)
!411 = !DILocation(line: 52, column: 14, scope: !385)
!412 = !DILocation(line: 52, column: 5, scope: !385)
!413 = distinct !DISubprogram(name: "__cmpdi2", scope: !31, file: !31, line: 23, type: !129, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !130)
!414 = !DILocation(line: 26, column: 7, scope: !413)
!415 = !DILocation(line: 26, column: 11, scope: !413)
!416 = !DILocation(line: 28, column: 7, scope: !413)
!417 = !DILocation(line: 28, column: 11, scope: !413)
!418 = !DILocation(line: 29, column: 11, scope: !413)
!419 = !DILocation(line: 29, column: 13, scope: !413)
!420 = !DILocation(line: 29, column: 22, scope: !413)
!421 = !DILocation(line: 29, column: 24, scope: !413)
!422 = !DILocation(line: 29, column: 18, scope: !413)
!423 = !DILocation(line: 29, column: 9, scope: !413)
!424 = !DILocation(line: 30, column: 9, scope: !413)
!425 = !DILocation(line: 31, column: 11, scope: !413)
!426 = !DILocation(line: 31, column: 13, scope: !413)
!427 = !DILocation(line: 31, column: 22, scope: !413)
!428 = !DILocation(line: 31, column: 24, scope: !413)
!429 = !DILocation(line: 31, column: 18, scope: !413)
!430 = !DILocation(line: 31, column: 9, scope: !413)
!431 = !DILocation(line: 32, column: 9, scope: !413)
!432 = !DILocation(line: 33, column: 13, scope: !413)
!433 = !DILocation(line: 33, column: 23, scope: !413)
!434 = !DILocation(line: 33, column: 17, scope: !413)
!435 = !DILocation(line: 33, column: 9, scope: !413)
!436 = !DILocation(line: 34, column: 9, scope: !413)
!437 = !DILocation(line: 35, column: 13, scope: !413)
!438 = !DILocation(line: 35, column: 23, scope: !413)
!439 = !DILocation(line: 35, column: 17, scope: !413)
!440 = !DILocation(line: 35, column: 9, scope: !413)
!441 = !DILocation(line: 36, column: 9, scope: !413)
!442 = !DILocation(line: 37, column: 5, scope: !413)
!443 = !DILocation(line: 0, scope: !413)
!444 = !DILocation(line: 38, column: 1, scope: !413)
!445 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !31, file: !31, line: 46, type: !129, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !130)
!446 = !DILocation(line: 48, column: 9, scope: !445)
!447 = !DILocation(line: 48, column: 24, scope: !445)
!448 = !DILocation(line: 48, column: 2, scope: !445)
!449 = distinct !DISubprogram(name: "__ctzdi2", scope: !35, file: !35, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !130)
!450 = !DILocation(line: 25, column: 7, scope: !449)
!451 = !DILocation(line: 25, column: 11, scope: !449)
!452 = !DILocation(line: 26, column: 28, scope: !449)
!453 = !DILocation(line: 26, column: 32, scope: !449)
!454 = !DILocation(line: 27, column: 29, scope: !449)
!455 = !DILocation(line: 27, column: 31, scope: !449)
!456 = !DILocation(line: 27, column: 41, scope: !449)
!457 = !DILocation(line: 27, column: 12, scope: !449)
!458 = !DILocation(line: 28, column: 18, scope: !449)
!459 = !DILocation(line: 27, column: 59, scope: !449)
!460 = !DILocation(line: 27, column: 5, scope: !449)
!461 = distinct !DISubprogram(name: "__ctzsi2", scope: !37, file: !37, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !130)
!462 = !DILocation(line: 25, column: 20, scope: !461)
!463 = !DILocation(line: 25, column: 34, scope: !461)
!464 = !DILocation(line: 25, column: 40, scope: !461)
!465 = !DILocation(line: 26, column: 7, scope: !461)
!466 = !DILocation(line: 29, column: 13, scope: !461)
!467 = !DILocation(line: 29, column: 23, scope: !461)
!468 = !DILocation(line: 29, column: 29, scope: !461)
!469 = !DILocation(line: 30, column: 7, scope: !461)
!470 = !DILocation(line: 31, column: 7, scope: !461)
!471 = !DILocation(line: 33, column: 13, scope: !461)
!472 = !DILocation(line: 33, column: 21, scope: !461)
!473 = !DILocation(line: 33, column: 27, scope: !461)
!474 = !DILocation(line: 34, column: 7, scope: !461)
!475 = !DILocation(line: 35, column: 7, scope: !461)
!476 = !DILocation(line: 37, column: 13, scope: !461)
!477 = !DILocation(line: 37, column: 20, scope: !461)
!478 = !DILocation(line: 37, column: 26, scope: !461)
!479 = !DILocation(line: 38, column: 7, scope: !461)
!480 = !DILocation(line: 40, column: 7, scope: !461)
!481 = !DILocation(line: 56, column: 25, scope: !461)
!482 = !DILocation(line: 56, column: 20, scope: !461)
!483 = !DILocation(line: 56, column: 44, scope: !461)
!484 = !DILocation(line: 56, column: 32, scope: !461)
!485 = !DILocation(line: 56, column: 14, scope: !461)
!486 = !DILocation(line: 56, column: 5, scope: !461)
!487 = distinct !DISubprogram(name: "__divdi3", scope: !41, file: !41, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !130)
!488 = !DILocation(line: 23, column: 20, scope: !487)
!489 = !DILocation(line: 24, column: 20, scope: !487)
!490 = !DILocation(line: 25, column: 12, scope: !487)
!491 = !DILocation(line: 25, column: 19, scope: !487)
!492 = !DILocation(line: 26, column: 12, scope: !487)
!493 = !DILocation(line: 26, column: 19, scope: !487)
!494 = !DILocation(line: 27, column: 9, scope: !487)
!495 = !DILocation(line: 28, column: 13, scope: !487)
!496 = !DILocation(line: 28, column: 44, scope: !487)
!497 = !DILocation(line: 28, column: 51, scope: !487)
!498 = !DILocation(line: 28, column: 5, scope: !487)
!499 = distinct !DISubprogram(name: "__udivmoddi4", scope: !99, file: !99, line: 24, type: !129, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !130)
!500 = !DILocation(line: 29, column: 7, scope: !499)
!501 = !DILocation(line: 29, column: 11, scope: !499)
!502 = !DILocation(line: 31, column: 7, scope: !499)
!503 = !DILocation(line: 31, column: 11, scope: !499)
!504 = !DILocation(line: 36, column: 11, scope: !499)
!505 = !DILocation(line: 36, column: 13, scope: !499)
!506 = !DILocation(line: 36, column: 18, scope: !499)
!507 = !DILocation(line: 36, column: 9, scope: !499)
!508 = !DILocation(line: 38, column: 15, scope: !499)
!509 = !DILocation(line: 38, column: 17, scope: !499)
!510 = !DILocation(line: 38, column: 22, scope: !499)
!511 = !DILocation(line: 38, column: 13, scope: !499)
!512 = !DILocation(line: 44, column: 17, scope: !499)
!513 = !DILocation(line: 45, column: 28, scope: !499)
!514 = !DILocation(line: 45, column: 38, scope: !499)
!515 = !DILocation(line: 45, column: 32, scope: !499)
!516 = !DILocation(line: 45, column: 24, scope: !499)
!517 = !DILocation(line: 45, column: 22, scope: !499)
!518 = !DILocation(line: 45, column: 17, scope: !499)
!519 = !DILocation(line: 46, column: 24, scope: !499)
!520 = !DILocation(line: 46, column: 34, scope: !499)
!521 = !DILocation(line: 46, column: 28, scope: !499)
!522 = !DILocation(line: 46, column: 20, scope: !499)
!523 = !DILocation(line: 46, column: 13, scope: !499)
!524 = !DILocation(line: 52, column: 13, scope: !499)
!525 = !DILocation(line: 53, column: 24, scope: !499)
!526 = !DILocation(line: 53, column: 20, scope: !499)
!527 = !DILocation(line: 53, column: 18, scope: !499)
!528 = !DILocation(line: 53, column: 13, scope: !499)
!529 = !DILocation(line: 54, column: 9, scope: !499)
!530 = !DILocation(line: 57, column: 13, scope: !499)
!531 = !DILocation(line: 57, column: 17, scope: !499)
!532 = !DILocation(line: 57, column: 9, scope: !499)
!533 = !DILocation(line: 59, column: 15, scope: !499)
!534 = !DILocation(line: 59, column: 17, scope: !499)
!535 = !DILocation(line: 59, column: 22, scope: !499)
!536 = !DILocation(line: 59, column: 13, scope: !499)
!537 = !DILocation(line: 65, column: 17, scope: !499)
!538 = !DILocation(line: 66, column: 26, scope: !499)
!539 = !DILocation(line: 66, column: 28, scope: !499)
!540 = !DILocation(line: 66, column: 39, scope: !499)
!541 = !DILocation(line: 66, column: 33, scope: !499)
!542 = !DILocation(line: 66, column: 24, scope: !499)
!543 = !DILocation(line: 66, column: 22, scope: !499)
!544 = !DILocation(line: 66, column: 17, scope: !499)
!545 = !DILocation(line: 67, column: 22, scope: !499)
!546 = !DILocation(line: 67, column: 24, scope: !499)
!547 = !DILocation(line: 67, column: 35, scope: !499)
!548 = !DILocation(line: 67, column: 29, scope: !499)
!549 = !DILocation(line: 67, column: 20, scope: !499)
!550 = !DILocation(line: 67, column: 13, scope: !499)
!551 = !DILocation(line: 70, column: 17, scope: !499)
!552 = !DILocation(line: 70, column: 21, scope: !499)
!553 = !DILocation(line: 70, column: 13, scope: !499)
!554 = !DILocation(line: 76, column: 17, scope: !499)
!555 = !DILocation(line: 78, column: 30, scope: !499)
!556 = !DILocation(line: 78, column: 32, scope: !499)
!557 = !DILocation(line: 78, column: 41, scope: !499)
!558 = !DILocation(line: 78, column: 43, scope: !499)
!559 = !DILocation(line: 78, column: 37, scope: !499)
!560 = !DILocation(line: 78, column: 19, scope: !499)
!561 = !DILocation(line: 78, column: 21, scope: !499)
!562 = !DILocation(line: 78, column: 26, scope: !499)
!563 = !DILocation(line: 79, column: 21, scope: !499)
!564 = !DILocation(line: 79, column: 25, scope: !499)
!565 = !DILocation(line: 80, column: 26, scope: !499)
!566 = !DILocation(line: 80, column: 22, scope: !499)
!567 = !DILocation(line: 81, column: 13, scope: !499)
!568 = !DILocation(line: 82, column: 22, scope: !499)
!569 = !DILocation(line: 82, column: 24, scope: !499)
!570 = !DILocation(line: 82, column: 33, scope: !499)
!571 = !DILocation(line: 82, column: 35, scope: !499)
!572 = !DILocation(line: 82, column: 29, scope: !499)
!573 = !DILocation(line: 82, column: 20, scope: !499)
!574 = !DILocation(line: 82, column: 13, scope: !499)
!575 = !DILocation(line: 88, column: 16, scope: !499)
!576 = !DILocation(line: 88, column: 18, scope: !499)
!577 = !DILocation(line: 88, column: 28, scope: !499)
!578 = !DILocation(line: 88, column: 30, scope: !499)
!579 = !DILocation(line: 88, column: 35, scope: !499)
!580 = !DILocation(line: 88, column: 23, scope: !499)
!581 = !DILocation(line: 88, column: 41, scope: !499)
!582 = !DILocation(line: 88, column: 13, scope: !499)
!583 = !DILocation(line: 90, column: 17, scope: !499)
!584 = !DILocation(line: 92, column: 31, scope: !499)
!585 = !DILocation(line: 92, column: 21, scope: !499)
!586 = !DILocation(line: 92, column: 25, scope: !499)
!587 = !DILocation(line: 93, column: 30, scope: !499)
!588 = !DILocation(line: 93, column: 32, scope: !499)
!589 = !DILocation(line: 93, column: 42, scope: !499)
!590 = !DILocation(line: 93, column: 44, scope: !499)
!591 = !DILocation(line: 93, column: 49, scope: !499)
!592 = !DILocation(line: 93, column: 37, scope: !499)
!593 = !DILocation(line: 93, column: 19, scope: !499)
!594 = !DILocation(line: 93, column: 21, scope: !499)
!595 = !DILocation(line: 93, column: 26, scope: !499)
!596 = !DILocation(line: 94, column: 26, scope: !499)
!597 = !DILocation(line: 94, column: 22, scope: !499)
!598 = !DILocation(line: 95, column: 13, scope: !499)
!599 = !DILocation(line: 96, column: 22, scope: !499)
!600 = !DILocation(line: 96, column: 24, scope: !499)
!601 = !DILocation(line: 96, column: 48, scope: !499)
!602 = !DILocation(line: 96, column: 50, scope: !499)
!603 = !DILocation(line: 96, column: 32, scope: !499)
!604 = !DILocation(line: 96, column: 29, scope: !499)
!605 = !DILocation(line: 96, column: 20, scope: !499)
!606 = !DILocation(line: 96, column: 13, scope: !499)
!607 = !DILocation(line: 102, column: 30, scope: !499)
!608 = !DILocation(line: 102, column: 32, scope: !499)
!609 = !DILocation(line: 102, column: 14, scope: !499)
!610 = !DILocation(line: 102, column: 56, scope: !499)
!611 = !DILocation(line: 102, column: 58, scope: !499)
!612 = !DILocation(line: 102, column: 40, scope: !499)
!613 = !DILocation(line: 102, column: 38, scope: !499)
!614 = !DILocation(line: 104, column: 16, scope: !499)
!615 = !DILocation(line: 104, column: 13, scope: !499)
!616 = !DILocation(line: 106, column: 16, scope: !499)
!617 = !DILocation(line: 107, column: 26, scope: !499)
!618 = !DILocation(line: 107, column: 22, scope: !499)
!619 = !DILocation(line: 107, column: 17, scope: !499)
!620 = !DILocation(line: 108, column: 13, scope: !499)
!621 = !DILocation(line: 110, column: 9, scope: !499)
!622 = !DILocation(line: 113, column: 13, scope: !499)
!623 = !DILocation(line: 113, column: 17, scope: !499)
!624 = !DILocation(line: 114, column: 24, scope: !499)
!625 = !DILocation(line: 114, column: 45, scope: !499)
!626 = !DILocation(line: 114, column: 28, scope: !499)
!627 = !DILocation(line: 114, column: 11, scope: !499)
!628 = !DILocation(line: 114, column: 13, scope: !499)
!629 = !DILocation(line: 114, column: 18, scope: !499)
!630 = !DILocation(line: 116, column: 22, scope: !499)
!631 = !DILocation(line: 116, column: 24, scope: !499)
!632 = !DILocation(line: 116, column: 29, scope: !499)
!633 = !DILocation(line: 116, column: 11, scope: !499)
!634 = !DILocation(line: 116, column: 13, scope: !499)
!635 = !DILocation(line: 116, column: 18, scope: !499)
!636 = !DILocation(line: 117, column: 22, scope: !499)
!637 = !DILocation(line: 117, column: 24, scope: !499)
!638 = !DILocation(line: 117, column: 46, scope: !499)
!639 = !DILocation(line: 117, column: 29, scope: !499)
!640 = !DILocation(line: 117, column: 60, scope: !499)
!641 = !DILocation(line: 117, column: 64, scope: !499)
!642 = !DILocation(line: 117, column: 53, scope: !499)
!643 = !DILocation(line: 117, column: 13, scope: !499)
!644 = !DILocation(line: 117, column: 17, scope: !499)
!645 = !DILocation(line: 118, column: 5, scope: !499)
!646 = !DILocation(line: 121, column: 15, scope: !499)
!647 = !DILocation(line: 121, column: 17, scope: !499)
!648 = !DILocation(line: 121, column: 22, scope: !499)
!649 = !DILocation(line: 121, column: 13, scope: !499)
!650 = !DILocation(line: 127, column: 22, scope: !499)
!651 = !DILocation(line: 127, column: 43, scope: !499)
!652 = !DILocation(line: 127, column: 17, scope: !499)
!653 = !DILocation(line: 129, column: 21, scope: !499)
!654 = !DILocation(line: 130, column: 32, scope: !499)
!655 = !DILocation(line: 130, column: 43, scope: !499)
!656 = !DILocation(line: 130, column: 47, scope: !499)
!657 = !DILocation(line: 130, column: 36, scope: !499)
!658 = !DILocation(line: 130, column: 28, scope: !499)
!659 = !DILocation(line: 130, column: 26, scope: !499)
!660 = !DILocation(line: 130, column: 21, scope: !499)
!661 = !DILocation(line: 131, column: 25, scope: !499)
!662 = !DILocation(line: 131, column: 29, scope: !499)
!663 = !DILocation(line: 131, column: 21, scope: !499)
!664 = !DILocation(line: 132, column: 30, scope: !499)
!665 = !DILocation(line: 132, column: 21, scope: !499)
!666 = !DILocation(line: 133, column: 40, scope: !499)
!667 = !DILocation(line: 133, column: 22, scope: !499)
!668 = !DILocation(line: 134, column: 30, scope: !499)
!669 = !DILocation(line: 134, column: 32, scope: !499)
!670 = !DILocation(line: 134, column: 37, scope: !499)
!671 = !DILocation(line: 134, column: 19, scope: !499)
!672 = !DILocation(line: 134, column: 21, scope: !499)
!673 = !DILocation(line: 134, column: 26, scope: !499)
!674 = !DILocation(line: 135, column: 30, scope: !499)
!675 = !DILocation(line: 135, column: 32, scope: !499)
!676 = !DILocation(line: 135, column: 54, scope: !499)
!677 = !DILocation(line: 135, column: 37, scope: !499)
!678 = !DILocation(line: 135, column: 68, scope: !499)
!679 = !DILocation(line: 135, column: 72, scope: !499)
!680 = !DILocation(line: 135, column: 61, scope: !499)
!681 = !DILocation(line: 135, column: 21, scope: !499)
!682 = !DILocation(line: 135, column: 25, scope: !499)
!683 = !DILocation(line: 136, column: 26, scope: !499)
!684 = !DILocation(line: 136, column: 17, scope: !499)
!685 = !DILocation(line: 142, column: 55, scope: !499)
!686 = !DILocation(line: 142, column: 37, scope: !499)
!687 = !DILocation(line: 142, column: 35, scope: !499)
!688 = !DILocation(line: 142, column: 78, scope: !499)
!689 = !DILocation(line: 142, column: 80, scope: !499)
!690 = !DILocation(line: 142, column: 62, scope: !499)
!691 = !DILocation(line: 142, column: 60, scope: !499)
!692 = !DILocation(line: 147, column: 20, scope: !499)
!693 = !DILocation(line: 147, column: 17, scope: !499)
!694 = !DILocation(line: 149, column: 21, scope: !499)
!695 = !DILocation(line: 149, column: 25, scope: !499)
!696 = !DILocation(line: 150, column: 32, scope: !499)
!697 = !DILocation(line: 150, column: 19, scope: !499)
!698 = !DILocation(line: 150, column: 21, scope: !499)
!699 = !DILocation(line: 150, column: 26, scope: !499)
!700 = !DILocation(line: 151, column: 19, scope: !499)
!701 = !DILocation(line: 151, column: 21, scope: !499)
!702 = !DILocation(line: 151, column: 26, scope: !499)
!703 = !DILocation(line: 152, column: 29, scope: !499)
!704 = !DILocation(line: 152, column: 31, scope: !499)
!705 = !DILocation(line: 152, column: 21, scope: !499)
!706 = !DILocation(line: 152, column: 25, scope: !499)
!707 = !DILocation(line: 153, column: 13, scope: !499)
!708 = !DILocation(line: 154, column: 25, scope: !499)
!709 = !DILocation(line: 154, column: 22, scope: !499)
!710 = !DILocation(line: 156, column: 21, scope: !499)
!711 = !DILocation(line: 156, column: 25, scope: !499)
!712 = !DILocation(line: 157, column: 32, scope: !499)
!713 = !DILocation(line: 157, column: 53, scope: !499)
!714 = !DILocation(line: 157, column: 36, scope: !499)
!715 = !DILocation(line: 157, column: 19, scope: !499)
!716 = !DILocation(line: 157, column: 21, scope: !499)
!717 = !DILocation(line: 157, column: 26, scope: !499)
!718 = !DILocation(line: 158, column: 30, scope: !499)
!719 = !DILocation(line: 158, column: 32, scope: !499)
!720 = !DILocation(line: 158, column: 37, scope: !499)
!721 = !DILocation(line: 158, column: 19, scope: !499)
!722 = !DILocation(line: 158, column: 21, scope: !499)
!723 = !DILocation(line: 158, column: 26, scope: !499)
!724 = !DILocation(line: 159, column: 30, scope: !499)
!725 = !DILocation(line: 159, column: 32, scope: !499)
!726 = !DILocation(line: 159, column: 54, scope: !499)
!727 = !DILocation(line: 159, column: 37, scope: !499)
!728 = !DILocation(line: 159, column: 68, scope: !499)
!729 = !DILocation(line: 159, column: 72, scope: !499)
!730 = !DILocation(line: 159, column: 61, scope: !499)
!731 = !DILocation(line: 159, column: 21, scope: !499)
!732 = !DILocation(line: 159, column: 25, scope: !499)
!733 = !DILocation(line: 160, column: 13, scope: !499)
!734 = !DILocation(line: 163, column: 31, scope: !499)
!735 = !DILocation(line: 163, column: 53, scope: !499)
!736 = !DILocation(line: 163, column: 35, scope: !499)
!737 = !DILocation(line: 163, column: 21, scope: !499)
!738 = !DILocation(line: 163, column: 25, scope: !499)
!739 = !DILocation(line: 164, column: 31, scope: !499)
!740 = !DILocation(line: 164, column: 33, scope: !499)
!741 = !DILocation(line: 164, column: 56, scope: !499)
!742 = !DILocation(line: 164, column: 38, scope: !499)
!743 = !DILocation(line: 165, column: 33, scope: !499)
!744 = !DILocation(line: 165, column: 44, scope: !499)
!745 = !DILocation(line: 165, column: 37, scope: !499)
!746 = !DILocation(line: 164, column: 63, scope: !499)
!747 = !DILocation(line: 164, column: 19, scope: !499)
!748 = !DILocation(line: 164, column: 21, scope: !499)
!749 = !DILocation(line: 164, column: 26, scope: !499)
!750 = !DILocation(line: 166, column: 19, scope: !499)
!751 = !DILocation(line: 166, column: 21, scope: !499)
!752 = !DILocation(line: 166, column: 26, scope: !499)
!753 = !DILocation(line: 167, column: 29, scope: !499)
!754 = !DILocation(line: 167, column: 31, scope: !499)
!755 = !DILocation(line: 167, column: 43, scope: !499)
!756 = !DILocation(line: 167, column: 36, scope: !499)
!757 = !DILocation(line: 167, column: 21, scope: !499)
!758 = !DILocation(line: 167, column: 25, scope: !499)
!759 = !DILocation(line: 169, column: 9, scope: !499)
!760 = !DILocation(line: 176, column: 34, scope: !499)
!761 = !DILocation(line: 176, column: 36, scope: !499)
!762 = !DILocation(line: 176, column: 18, scope: !499)
!763 = !DILocation(line: 176, column: 60, scope: !499)
!764 = !DILocation(line: 176, column: 62, scope: !499)
!765 = !DILocation(line: 176, column: 44, scope: !499)
!766 = !DILocation(line: 176, column: 42, scope: !499)
!767 = !DILocation(line: 178, column: 20, scope: !499)
!768 = !DILocation(line: 178, column: 17, scope: !499)
!769 = !DILocation(line: 180, column: 21, scope: !499)
!770 = !DILocation(line: 181, column: 30, scope: !499)
!771 = !DILocation(line: 181, column: 26, scope: !499)
!772 = !DILocation(line: 181, column: 21, scope: !499)
!773 = !DILocation(line: 182, column: 17, scope: !499)
!774 = !DILocation(line: 184, column: 13, scope: !499)
!775 = !DILocation(line: 187, column: 17, scope: !499)
!776 = !DILocation(line: 187, column: 21, scope: !499)
!777 = !DILocation(line: 188, column: 20, scope: !499)
!778 = !DILocation(line: 188, column: 17, scope: !499)
!779 = !DILocation(line: 190, column: 32, scope: !499)
!780 = !DILocation(line: 190, column: 19, scope: !499)
!781 = !DILocation(line: 190, column: 21, scope: !499)
!782 = !DILocation(line: 190, column: 26, scope: !499)
!783 = !DILocation(line: 191, column: 19, scope: !499)
!784 = !DILocation(line: 191, column: 21, scope: !499)
!785 = !DILocation(line: 191, column: 26, scope: !499)
!786 = !DILocation(line: 192, column: 29, scope: !499)
!787 = !DILocation(line: 192, column: 31, scope: !499)
!788 = !DILocation(line: 192, column: 21, scope: !499)
!789 = !DILocation(line: 192, column: 25, scope: !499)
!790 = !DILocation(line: 193, column: 13, scope: !499)
!791 = !DILocation(line: 196, column: 32, scope: !499)
!792 = !DILocation(line: 196, column: 53, scope: !499)
!793 = !DILocation(line: 196, column: 36, scope: !499)
!794 = !DILocation(line: 196, column: 19, scope: !499)
!795 = !DILocation(line: 196, column: 21, scope: !499)
!796 = !DILocation(line: 196, column: 26, scope: !499)
!797 = !DILocation(line: 197, column: 30, scope: !499)
!798 = !DILocation(line: 197, column: 32, scope: !499)
!799 = !DILocation(line: 197, column: 37, scope: !499)
!800 = !DILocation(line: 197, column: 19, scope: !499)
!801 = !DILocation(line: 197, column: 21, scope: !499)
!802 = !DILocation(line: 197, column: 26, scope: !499)
!803 = !DILocation(line: 198, column: 30, scope: !499)
!804 = !DILocation(line: 198, column: 32, scope: !499)
!805 = !DILocation(line: 198, column: 54, scope: !499)
!806 = !DILocation(line: 198, column: 37, scope: !499)
!807 = !DILocation(line: 198, column: 68, scope: !499)
!808 = !DILocation(line: 198, column: 72, scope: !499)
!809 = !DILocation(line: 198, column: 61, scope: !499)
!810 = !DILocation(line: 198, column: 21, scope: !499)
!811 = !DILocation(line: 198, column: 25, scope: !499)
!812 = !DILocation(line: 0, scope: !499)
!813 = !DILocation(line: 209, column: 5, scope: !499)
!814 = !DILocation(line: 209, column: 15, scope: !499)
!815 = !DILocation(line: 212, column: 23, scope: !499)
!816 = !DILocation(line: 212, column: 25, scope: !499)
!817 = !DILocation(line: 212, column: 43, scope: !499)
!818 = !DILocation(line: 212, column: 36, scope: !499)
!819 = !DILocation(line: 212, column: 11, scope: !499)
!820 = !DILocation(line: 212, column: 13, scope: !499)
!821 = !DILocation(line: 212, column: 18, scope: !499)
!822 = !DILocation(line: 213, column: 41, scope: !499)
!823 = !DILocation(line: 213, column: 43, scope: !499)
!824 = !DILocation(line: 213, column: 36, scope: !499)
!825 = !DILocation(line: 213, column: 13, scope: !499)
!826 = !DILocation(line: 213, column: 18, scope: !499)
!827 = !DILocation(line: 214, column: 23, scope: !499)
!828 = !DILocation(line: 214, column: 25, scope: !499)
!829 = !DILocation(line: 214, column: 43, scope: !499)
!830 = !DILocation(line: 214, column: 36, scope: !499)
!831 = !DILocation(line: 214, column: 11, scope: !499)
!832 = !DILocation(line: 214, column: 13, scope: !499)
!833 = !DILocation(line: 214, column: 18, scope: !499)
!834 = !DILocation(line: 215, column: 30, scope: !499)
!835 = !DILocation(line: 215, column: 36, scope: !499)
!836 = !DILocation(line: 215, column: 13, scope: !499)
!837 = !DILocation(line: 215, column: 18, scope: !499)
!838 = !DILocation(line: 223, column: 37, scope: !499)
!839 = !DILocation(line: 223, column: 45, scope: !499)
!840 = !DILocation(line: 223, column: 49, scope: !499)
!841 = !DILocation(line: 225, column: 24, scope: !499)
!842 = !DILocation(line: 225, column: 11, scope: !499)
!843 = !DILocation(line: 225, column: 15, scope: !499)
!844 = !DILocation(line: 226, column: 5, scope: !499)
!845 = !DILocation(line: 224, column: 19, scope: !499)
!846 = !DILocation(line: 224, column: 17, scope: !499)
!847 = !DILocation(line: 209, column: 20, scope: !499)
!848 = distinct !{!848, !813, !844, !166}
!849 = !DILocation(line: 227, column: 16, scope: !499)
!850 = !DILocation(line: 227, column: 20, scope: !499)
!851 = !DILocation(line: 227, column: 28, scope: !499)
!852 = !DILocation(line: 227, column: 26, scope: !499)
!853 = !DILocation(line: 227, column: 7, scope: !499)
!854 = !DILocation(line: 227, column: 11, scope: !499)
!855 = !DILocation(line: 228, column: 9, scope: !499)
!856 = !DILocation(line: 229, column: 18, scope: !499)
!857 = !DILocation(line: 229, column: 14, scope: !499)
!858 = !DILocation(line: 229, column: 9, scope: !499)
!859 = !DILocation(line: 230, column: 14, scope: !499)
!860 = !DILocation(line: 230, column: 5, scope: !499)
!861 = !DILocation(line: 231, column: 1, scope: !499)
!862 = distinct !DISubprogram(name: "__divmoddi4", scope: !43, file: !43, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !130)
!863 = !DILocation(line: 22, column: 14, scope: !862)
!864 = !DILocation(line: 23, column: 16, scope: !862)
!865 = !DILocation(line: 23, column: 12, scope: !862)
!866 = !DILocation(line: 23, column: 8, scope: !862)
!867 = !DILocation(line: 24, column: 3, scope: !862)
!868 = distinct !DISubprogram(name: "__divmodsi4", scope: !45, file: !45, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !130)
!869 = !DILocation(line: 22, column: 14, scope: !868)
!870 = !DILocation(line: 23, column: 16, scope: !868)
!871 = !DILocation(line: 23, column: 12, scope: !868)
!872 = !DILocation(line: 23, column: 8, scope: !868)
!873 = !DILocation(line: 24, column: 3, scope: !868)
!874 = distinct !DISubprogram(name: "__divsi3", scope: !47, file: !47, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !130)
!875 = !DILocation(line: 25, column: 20, scope: !874)
!876 = !DILocation(line: 26, column: 20, scope: !874)
!877 = !DILocation(line: 27, column: 12, scope: !874)
!878 = !DILocation(line: 27, column: 19, scope: !874)
!879 = !DILocation(line: 28, column: 12, scope: !874)
!880 = !DILocation(line: 28, column: 19, scope: !874)
!881 = !DILocation(line: 29, column: 9, scope: !874)
!882 = !DILocation(line: 36, column: 22, scope: !874)
!883 = !DILocation(line: 36, column: 33, scope: !874)
!884 = !DILocation(line: 36, column: 40, scope: !874)
!885 = !DILocation(line: 36, column: 5, scope: !874)
!886 = distinct !DISubprogram(name: "__ffsdi2", scope: !51, file: !51, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !130)
!887 = !DILocation(line: 25, column: 7, scope: !886)
!888 = !DILocation(line: 25, column: 11, scope: !886)
!889 = !DILocation(line: 26, column: 13, scope: !886)
!890 = !DILocation(line: 26, column: 17, scope: !886)
!891 = !DILocation(line: 26, column: 9, scope: !886)
!892 = !DILocation(line: 28, column: 15, scope: !886)
!893 = !DILocation(line: 28, column: 17, scope: !886)
!894 = !DILocation(line: 28, column: 22, scope: !886)
!895 = !DILocation(line: 28, column: 13, scope: !886)
!896 = !DILocation(line: 29, column: 13, scope: !886)
!897 = !DILocation(line: 30, column: 32, scope: !886)
!898 = !DILocation(line: 30, column: 34, scope: !886)
!899 = !DILocation(line: 30, column: 16, scope: !886)
!900 = !DILocation(line: 30, column: 40, scope: !886)
!901 = !DILocation(line: 30, column: 9, scope: !886)
!902 = !DILocation(line: 32, column: 30, scope: !886)
!903 = !DILocation(line: 32, column: 12, scope: !886)
!904 = !DILocation(line: 32, column: 35, scope: !886)
!905 = !DILocation(line: 32, column: 5, scope: !886)
!906 = !DILocation(line: 0, scope: !886)
!907 = !DILocation(line: 33, column: 1, scope: !886)
!908 = distinct !DISubprogram(name: "__ffssi2", scope: !53, file: !53, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !130)
!909 = !DILocation(line: 24, column: 11, scope: !908)
!910 = !DILocation(line: 24, column: 9, scope: !908)
!911 = !DILocation(line: 26, column: 9, scope: !908)
!912 = !DILocation(line: 28, column: 12, scope: !908)
!913 = !DILocation(line: 28, column: 29, scope: !908)
!914 = !DILocation(line: 28, column: 5, scope: !908)
!915 = !DILocation(line: 0, scope: !908)
!916 = !DILocation(line: 29, column: 1, scope: !908)
!917 = distinct !DISubprogram(name: "__lshrdi3", scope: !59, file: !59, line: 24, type: !129, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !130)
!918 = !DILocation(line: 29, column: 11, scope: !917)
!919 = !DILocation(line: 29, column: 15, scope: !917)
!920 = !DILocation(line: 30, column: 11, scope: !917)
!921 = !DILocation(line: 30, column: 9, scope: !917)
!922 = !DILocation(line: 32, column: 16, scope: !917)
!923 = !DILocation(line: 32, column: 18, scope: !917)
!924 = !DILocation(line: 32, column: 23, scope: !917)
!925 = !DILocation(line: 33, column: 30, scope: !917)
!926 = !DILocation(line: 33, column: 32, scope: !917)
!927 = !DILocation(line: 33, column: 43, scope: !917)
!928 = !DILocation(line: 33, column: 37, scope: !917)
!929 = !DILocation(line: 33, column: 18, scope: !917)
!930 = !DILocation(line: 33, column: 22, scope: !917)
!931 = !DILocation(line: 34, column: 5, scope: !917)
!932 = !DILocation(line: 37, column: 15, scope: !917)
!933 = !DILocation(line: 37, column: 13, scope: !917)
!934 = !DILocation(line: 38, column: 13, scope: !917)
!935 = !DILocation(line: 39, column: 32, scope: !917)
!936 = !DILocation(line: 39, column: 34, scope: !917)
!937 = !DILocation(line: 39, column: 39, scope: !917)
!938 = !DILocation(line: 39, column: 16, scope: !917)
!939 = !DILocation(line: 39, column: 18, scope: !917)
!940 = !DILocation(line: 39, column: 24, scope: !917)
!941 = !DILocation(line: 40, column: 31, scope: !917)
!942 = !DILocation(line: 40, column: 33, scope: !917)
!943 = !DILocation(line: 40, column: 55, scope: !917)
!944 = !DILocation(line: 40, column: 38, scope: !917)
!945 = !DILocation(line: 40, column: 72, scope: !917)
!946 = !DILocation(line: 40, column: 76, scope: !917)
!947 = !DILocation(line: 40, column: 61, scope: !917)
!948 = !DILocation(line: 40, column: 18, scope: !917)
!949 = !DILocation(line: 40, column: 22, scope: !917)
!950 = !DILocation(line: 42, column: 19, scope: !917)
!951 = !DILocation(line: 42, column: 5, scope: !917)
!952 = !DILocation(line: 0, scope: !917)
!953 = !DILocation(line: 43, column: 1, scope: !917)
!954 = distinct !DISubprogram(name: "__moddi3", scope: !63, file: !63, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !130)
!955 = !DILocation(line: 24, column: 17, scope: !954)
!956 = !DILocation(line: 25, column: 11, scope: !954)
!957 = !DILocation(line: 26, column: 12, scope: !954)
!958 = !DILocation(line: 26, column: 17, scope: !954)
!959 = !DILocation(line: 28, column: 5, scope: !954)
!960 = !DILocation(line: 29, column: 21, scope: !954)
!961 = !DILocation(line: 29, column: 23, scope: !954)
!962 = !DILocation(line: 29, column: 28, scope: !954)
!963 = !DILocation(line: 29, column: 5, scope: !954)
!964 = distinct !DISubprogram(name: "__modsi3", scope: !65, file: !65, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !130)
!965 = !DILocation(line: 22, column: 16, scope: !964)
!966 = !DILocation(line: 22, column: 31, scope: !964)
!967 = !DILocation(line: 22, column: 14, scope: !964)
!968 = !DILocation(line: 22, column: 5, scope: !964)
!969 = distinct !DISubprogram(name: "__mulvdi3", scope: !69, file: !69, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !130)
!970 = !DILocation(line: 27, column: 11, scope: !969)
!971 = !DILocation(line: 27, column: 9, scope: !969)
!972 = !DILocation(line: 29, column: 15, scope: !969)
!973 = !DILocation(line: 29, column: 20, scope: !969)
!974 = !DILocation(line: 29, column: 25, scope: !969)
!975 = !DILocation(line: 29, column: 13, scope: !969)
!976 = !DILocation(line: 30, column: 13, scope: !969)
!977 = !DILocation(line: 31, column: 9, scope: !969)
!978 = !DILocation(line: 33, column: 11, scope: !969)
!979 = !DILocation(line: 33, column: 9, scope: !969)
!980 = !DILocation(line: 35, column: 15, scope: !969)
!981 = !DILocation(line: 35, column: 20, scope: !969)
!982 = !DILocation(line: 35, column: 25, scope: !969)
!983 = !DILocation(line: 35, column: 13, scope: !969)
!984 = !DILocation(line: 36, column: 13, scope: !969)
!985 = !DILocation(line: 37, column: 9, scope: !969)
!986 = !DILocation(line: 39, column: 19, scope: !969)
!987 = !DILocation(line: 40, column: 23, scope: !969)
!988 = !DILocation(line: 40, column: 29, scope: !969)
!989 = !DILocation(line: 41, column: 19, scope: !969)
!990 = !DILocation(line: 42, column: 23, scope: !969)
!991 = !DILocation(line: 42, column: 29, scope: !969)
!992 = !DILocation(line: 43, column: 15, scope: !969)
!993 = !DILocation(line: 43, column: 19, scope: !969)
!994 = !DILocation(line: 43, column: 28, scope: !969)
!995 = !DILocation(line: 43, column: 9, scope: !969)
!996 = !DILocation(line: 44, column: 9, scope: !969)
!997 = !DILocation(line: 45, column: 12, scope: !969)
!998 = !DILocation(line: 45, column: 9, scope: !969)
!999 = !DILocation(line: 47, column: 25, scope: !969)
!1000 = !DILocation(line: 47, column: 19, scope: !969)
!1001 = !DILocation(line: 47, column: 13, scope: !969)
!1002 = !DILocation(line: 48, column: 13, scope: !969)
!1003 = !DILocation(line: 49, column: 5, scope: !969)
!1004 = !DILocation(line: 52, column: 27, scope: !969)
!1005 = !DILocation(line: 52, column: 25, scope: !969)
!1006 = !DILocation(line: 52, column: 19, scope: !969)
!1007 = !DILocation(line: 52, column: 13, scope: !969)
!1008 = !DILocation(line: 53, column: 13, scope: !969)
!1009 = !DILocation(line: 55, column: 5, scope: !969)
!1010 = !DILocation(line: 0, scope: !969)
!1011 = !DILocation(line: 56, column: 1, scope: !969)
!1012 = distinct !DISubprogram(name: "__mulvsi3", scope: !71, file: !71, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !70, retainedNodes: !130)
!1013 = !DILocation(line: 27, column: 11, scope: !1012)
!1014 = !DILocation(line: 27, column: 9, scope: !1012)
!1015 = !DILocation(line: 29, column: 15, scope: !1012)
!1016 = !DILocation(line: 29, column: 20, scope: !1012)
!1017 = !DILocation(line: 29, column: 25, scope: !1012)
!1018 = !DILocation(line: 29, column: 13, scope: !1012)
!1019 = !DILocation(line: 30, column: 13, scope: !1012)
!1020 = !DILocation(line: 31, column: 9, scope: !1012)
!1021 = !DILocation(line: 33, column: 11, scope: !1012)
!1022 = !DILocation(line: 33, column: 9, scope: !1012)
!1023 = !DILocation(line: 35, column: 15, scope: !1012)
!1024 = !DILocation(line: 35, column: 20, scope: !1012)
!1025 = !DILocation(line: 35, column: 25, scope: !1012)
!1026 = !DILocation(line: 35, column: 13, scope: !1012)
!1027 = !DILocation(line: 36, column: 13, scope: !1012)
!1028 = !DILocation(line: 37, column: 9, scope: !1012)
!1029 = !DILocation(line: 39, column: 19, scope: !1012)
!1030 = !DILocation(line: 40, column: 23, scope: !1012)
!1031 = !DILocation(line: 40, column: 29, scope: !1012)
!1032 = !DILocation(line: 41, column: 19, scope: !1012)
!1033 = !DILocation(line: 42, column: 23, scope: !1012)
!1034 = !DILocation(line: 42, column: 29, scope: !1012)
!1035 = !DILocation(line: 43, column: 15, scope: !1012)
!1036 = !DILocation(line: 43, column: 19, scope: !1012)
!1037 = !DILocation(line: 43, column: 28, scope: !1012)
!1038 = !DILocation(line: 43, column: 9, scope: !1012)
!1039 = !DILocation(line: 44, column: 9, scope: !1012)
!1040 = !DILocation(line: 45, column: 12, scope: !1012)
!1041 = !DILocation(line: 45, column: 9, scope: !1012)
!1042 = !DILocation(line: 47, column: 25, scope: !1012)
!1043 = !DILocation(line: 47, column: 19, scope: !1012)
!1044 = !DILocation(line: 47, column: 13, scope: !1012)
!1045 = !DILocation(line: 48, column: 13, scope: !1012)
!1046 = !DILocation(line: 49, column: 5, scope: !1012)
!1047 = !DILocation(line: 52, column: 27, scope: !1012)
!1048 = !DILocation(line: 52, column: 25, scope: !1012)
!1049 = !DILocation(line: 52, column: 19, scope: !1012)
!1050 = !DILocation(line: 52, column: 13, scope: !1012)
!1051 = !DILocation(line: 53, column: 13, scope: !1012)
!1052 = !DILocation(line: 55, column: 5, scope: !1012)
!1053 = !DILocation(line: 0, scope: !1012)
!1054 = !DILocation(line: 56, column: 1, scope: !1012)
!1055 = distinct !DISubprogram(name: "__paritydi2", scope: !75, file: !75, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !130)
!1056 = !DILocation(line: 23, column: 7, scope: !1055)
!1057 = !DILocation(line: 23, column: 11, scope: !1055)
!1058 = !DILocation(line: 24, column: 26, scope: !1055)
!1059 = !DILocation(line: 24, column: 28, scope: !1055)
!1060 = !DILocation(line: 24, column: 39, scope: !1055)
!1061 = !DILocation(line: 24, column: 33, scope: !1055)
!1062 = !DILocation(line: 24, column: 12, scope: !1055)
!1063 = !DILocation(line: 24, column: 5, scope: !1055)
!1064 = distinct !DISubprogram(name: "__paritysi2", scope: !77, file: !77, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !130)
!1065 = !DILocation(line: 23, column: 12, scope: !1064)
!1066 = !DILocation(line: 23, column: 7, scope: !1064)
!1067 = !DILocation(line: 24, column: 12, scope: !1064)
!1068 = !DILocation(line: 24, column: 7, scope: !1064)
!1069 = !DILocation(line: 25, column: 12, scope: !1064)
!1070 = !DILocation(line: 25, column: 7, scope: !1064)
!1071 = !DILocation(line: 26, column: 26, scope: !1064)
!1072 = !DILocation(line: 26, column: 20, scope: !1064)
!1073 = !DILocation(line: 26, column: 34, scope: !1064)
!1074 = !DILocation(line: 26, column: 5, scope: !1064)
!1075 = distinct !DISubprogram(name: "__popcountdi2", scope: !81, file: !81, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !130)
!1076 = !DILocation(line: 23, column: 20, scope: !1075)
!1077 = !DILocation(line: 23, column: 26, scope: !1075)
!1078 = !DILocation(line: 23, column: 13, scope: !1075)
!1079 = !DILocation(line: 25, column: 15, scope: !1075)
!1080 = !DILocation(line: 25, column: 21, scope: !1075)
!1081 = !DILocation(line: 25, column: 52, scope: !1075)
!1082 = !DILocation(line: 25, column: 46, scope: !1075)
!1083 = !DILocation(line: 27, column: 20, scope: !1075)
!1084 = !DILocation(line: 27, column: 14, scope: !1075)
!1085 = !DILocation(line: 27, column: 27, scope: !1075)
!1086 = !DILocation(line: 29, column: 34, scope: !1075)
!1087 = !DILocation(line: 29, column: 28, scope: !1075)
!1088 = !DILocation(line: 29, column: 16, scope: !1075)
!1089 = !DILocation(line: 32, column: 16, scope: !1075)
!1090 = !DILocation(line: 32, column: 11, scope: !1075)
!1091 = !DILocation(line: 35, column: 20, scope: !1075)
!1092 = !DILocation(line: 35, column: 15, scope: !1075)
!1093 = !DILocation(line: 35, column: 27, scope: !1075)
!1094 = !DILocation(line: 35, column: 5, scope: !1075)
!1095 = distinct !DISubprogram(name: "__popcountsi2", scope: !83, file: !83, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !130)
!1096 = !DILocation(line: 23, column: 17, scope: !1095)
!1097 = !DILocation(line: 23, column: 23, scope: !1095)
!1098 = !DILocation(line: 23, column: 11, scope: !1095)
!1099 = !DILocation(line: 25, column: 13, scope: !1095)
!1100 = !DILocation(line: 25, column: 19, scope: !1095)
!1101 = !DILocation(line: 25, column: 38, scope: !1095)
!1102 = !DILocation(line: 25, column: 33, scope: !1095)
!1103 = !DILocation(line: 27, column: 17, scope: !1095)
!1104 = !DILocation(line: 27, column: 12, scope: !1095)
!1105 = !DILocation(line: 27, column: 24, scope: !1095)
!1106 = !DILocation(line: 29, column: 17, scope: !1095)
!1107 = !DILocation(line: 29, column: 12, scope: !1095)
!1108 = !DILocation(line: 32, column: 20, scope: !1095)
!1109 = !DILocation(line: 32, column: 15, scope: !1095)
!1110 = !DILocation(line: 32, column: 27, scope: !1095)
!1111 = !DILocation(line: 32, column: 5, scope: !1095)
!1112 = distinct !DISubprogram(name: "__subvdi3", scope: !87, file: !87, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !130)
!1113 = !DILocation(line: 24, column: 27, scope: !1112)
!1114 = !DILocation(line: 25, column: 11, scope: !1112)
!1115 = !DILocation(line: 25, column: 9, scope: !1112)
!1116 = !DILocation(line: 27, column: 15, scope: !1112)
!1117 = !DILocation(line: 27, column: 13, scope: !1112)
!1118 = !DILocation(line: 28, column: 13, scope: !1112)
!1119 = !DILocation(line: 29, column: 5, scope: !1112)
!1120 = !DILocation(line: 32, column: 15, scope: !1112)
!1121 = !DILocation(line: 32, column: 13, scope: !1112)
!1122 = !DILocation(line: 33, column: 13, scope: !1112)
!1123 = !DILocation(line: 35, column: 5, scope: !1112)
!1124 = distinct !DISubprogram(name: "__subvsi3", scope: !89, file: !89, line: 22, type: !129, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !88, retainedNodes: !130)
!1125 = !DILocation(line: 24, column: 27, scope: !1124)
!1126 = !DILocation(line: 25, column: 11, scope: !1124)
!1127 = !DILocation(line: 25, column: 9, scope: !1124)
!1128 = !DILocation(line: 27, column: 15, scope: !1124)
!1129 = !DILocation(line: 27, column: 13, scope: !1124)
!1130 = !DILocation(line: 28, column: 13, scope: !1124)
!1131 = !DILocation(line: 29, column: 5, scope: !1124)
!1132 = !DILocation(line: 32, column: 15, scope: !1124)
!1133 = !DILocation(line: 32, column: 13, scope: !1124)
!1134 = !DILocation(line: 33, column: 13, scope: !1124)
!1135 = !DILocation(line: 35, column: 5, scope: !1124)
!1136 = distinct !DISubprogram(name: "__ucmpdi2", scope: !93, file: !93, line: 23, type: !129, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !92, retainedNodes: !130)
!1137 = !DILocation(line: 26, column: 7, scope: !1136)
!1138 = !DILocation(line: 26, column: 11, scope: !1136)
!1139 = !DILocation(line: 28, column: 7, scope: !1136)
!1140 = !DILocation(line: 28, column: 11, scope: !1136)
!1141 = !DILocation(line: 29, column: 11, scope: !1136)
!1142 = !DILocation(line: 29, column: 13, scope: !1136)
!1143 = !DILocation(line: 29, column: 22, scope: !1136)
!1144 = !DILocation(line: 29, column: 24, scope: !1136)
!1145 = !DILocation(line: 29, column: 18, scope: !1136)
!1146 = !DILocation(line: 29, column: 9, scope: !1136)
!1147 = !DILocation(line: 30, column: 9, scope: !1136)
!1148 = !DILocation(line: 31, column: 11, scope: !1136)
!1149 = !DILocation(line: 31, column: 13, scope: !1136)
!1150 = !DILocation(line: 31, column: 22, scope: !1136)
!1151 = !DILocation(line: 31, column: 24, scope: !1136)
!1152 = !DILocation(line: 31, column: 18, scope: !1136)
!1153 = !DILocation(line: 31, column: 9, scope: !1136)
!1154 = !DILocation(line: 32, column: 9, scope: !1136)
!1155 = !DILocation(line: 33, column: 13, scope: !1136)
!1156 = !DILocation(line: 33, column: 23, scope: !1136)
!1157 = !DILocation(line: 33, column: 17, scope: !1136)
!1158 = !DILocation(line: 33, column: 9, scope: !1136)
!1159 = !DILocation(line: 34, column: 9, scope: !1136)
!1160 = !DILocation(line: 35, column: 13, scope: !1136)
!1161 = !DILocation(line: 35, column: 23, scope: !1136)
!1162 = !DILocation(line: 35, column: 17, scope: !1136)
!1163 = !DILocation(line: 35, column: 9, scope: !1136)
!1164 = !DILocation(line: 36, column: 9, scope: !1136)
!1165 = !DILocation(line: 37, column: 5, scope: !1136)
!1166 = !DILocation(line: 0, scope: !1136)
!1167 = !DILocation(line: 38, column: 1, scope: !1136)
!1168 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !93, file: !93, line: 46, type: !129, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !92, retainedNodes: !130)
!1169 = !DILocation(line: 48, column: 9, scope: !1168)
!1170 = !DILocation(line: 48, column: 25, scope: !1168)
!1171 = !DILocation(line: 48, column: 2, scope: !1168)
!1172 = distinct !DISubprogram(name: "__udivdi3", scope: !97, file: !97, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !130)
!1173 = !DILocation(line: 22, column: 12, scope: !1172)
!1174 = !DILocation(line: 22, column: 5, scope: !1172)
!1175 = distinct !DISubprogram(name: "__udivmodsi4", scope: !101, file: !101, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !130)
!1176 = !DILocation(line: 22, column: 14, scope: !1175)
!1177 = !DILocation(line: 23, column: 16, scope: !1175)
!1178 = !DILocation(line: 23, column: 12, scope: !1175)
!1179 = !DILocation(line: 23, column: 8, scope: !1175)
!1180 = !DILocation(line: 24, column: 3, scope: !1175)
!1181 = distinct !DISubprogram(name: "__udivsi3", scope: !105, file: !105, line: 25, type: !129, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !130)
!1182 = !DILocation(line: 32, column: 11, scope: !1181)
!1183 = !DILocation(line: 32, column: 9, scope: !1181)
!1184 = !DILocation(line: 33, column: 9, scope: !1181)
!1185 = !DILocation(line: 34, column: 11, scope: !1181)
!1186 = !DILocation(line: 34, column: 9, scope: !1181)
!1187 = !DILocation(line: 35, column: 9, scope: !1181)
!1188 = !DILocation(line: 36, column: 10, scope: !1181)
!1189 = !DILocation(line: 36, column: 29, scope: !1181)
!1190 = !DILocation(line: 36, column: 27, scope: !1181)
!1191 = !DILocation(line: 38, column: 12, scope: !1181)
!1192 = !DILocation(line: 38, column: 9, scope: !1181)
!1193 = !DILocation(line: 39, column: 9, scope: !1181)
!1194 = !DILocation(line: 40, column: 12, scope: !1181)
!1195 = !DILocation(line: 40, column: 9, scope: !1181)
!1196 = !DILocation(line: 41, column: 9, scope: !1181)
!1197 = !DILocation(line: 42, column: 5, scope: !1181)
!1198 = !DILocation(line: 45, column: 28, scope: !1181)
!1199 = !DILocation(line: 45, column: 11, scope: !1181)
!1200 = !DILocation(line: 46, column: 11, scope: !1181)
!1201 = !DILocation(line: 48, column: 5, scope: !1181)
!1202 = !DILocation(line: 0, scope: !1181)
!1203 = !DILocation(line: 48, column: 15, scope: !1181)
!1204 = !DILocation(line: 51, column: 22, scope: !1181)
!1205 = !DILocation(line: 60, column: 41, scope: !1181)
!1206 = !DILocation(line: 63, column: 5, scope: !1181)
!1207 = !DILocation(line: 62, column: 16, scope: !1181)
!1208 = !DILocation(line: 62, column: 11, scope: !1181)
!1209 = !DILocation(line: 61, column: 19, scope: !1181)
!1210 = !DILocation(line: 52, column: 16, scope: !1181)
!1211 = !DILocation(line: 52, column: 22, scope: !1181)
!1212 = !DILocation(line: 48, column: 20, scope: !1181)
!1213 = distinct !{!1213, !1201, !1206, !166}
!1214 = !DILocation(line: 64, column: 12, scope: !1181)
!1215 = !DILocation(line: 64, column: 18, scope: !1181)
!1216 = !DILocation(line: 65, column: 5, scope: !1181)
!1217 = !DILocation(line: 66, column: 1, scope: !1181)
!1218 = distinct !DISubprogram(name: "__umoddi3", scope: !109, file: !109, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !130)
!1219 = !DILocation(line: 23, column: 5, scope: !1218)
!1220 = !DILocation(line: 24, column: 12, scope: !1218)
!1221 = !DILocation(line: 24, column: 5, scope: !1218)
!1222 = distinct !DISubprogram(name: "__umodsi3", scope: !111, file: !111, line: 20, type: !129, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !130)
!1223 = !DILocation(line: 22, column: 16, scope: !1222)
!1224 = !DILocation(line: 22, column: 32, scope: !1222)
!1225 = !DILocation(line: 22, column: 14, scope: !1222)
!1226 = !DILocation(line: 22, column: 5, scope: !1222)
!1227 = distinct !DISubprogram(name: "memcpy", scope: !115, file: !115, line: 3, type: !129, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !130)
!1228 = !DILocation(line: 8, column: 6, scope: !1227)
!1229 = !DILocation(line: 0, scope: !1227)
!1230 = !DILocation(line: 8, column: 19, scope: !1227)
!1231 = !DILocation(line: 8, column: 2, scope: !1227)
!1232 = !DILocation(line: 9, column: 21, scope: !1227)
!1233 = !DILocation(line: 9, column: 3, scope: !1227)
!1234 = !DILocation(line: 9, column: 19, scope: !1227)
!1235 = !DILocation(line: 10, column: 2, scope: !1227)
!1236 = !DILocation(line: 8, column: 26, scope: !1227)
!1237 = distinct !{!1237, !1231, !1235, !166}
!1238 = !DILocation(line: 11, column: 1, scope: !1227)
!1239 = distinct !DISubprogram(name: "memset", scope: !115, file: !115, line: 13, type: !129, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !130)
!1240 = !DILocation(line: 17, column: 6, scope: !1239)
!1241 = !DILocation(line: 0, scope: !1239)
!1242 = !DILocation(line: 17, column: 19, scope: !1239)
!1243 = !DILocation(line: 17, column: 2, scope: !1239)
!1244 = !DILocation(line: 18, column: 13, scope: !1239)
!1245 = !DILocation(line: 18, column: 3, scope: !1239)
!1246 = !DILocation(line: 18, column: 11, scope: !1239)
!1247 = !DILocation(line: 19, column: 2, scope: !1239)
!1248 = !DILocation(line: 17, column: 26, scope: !1239)
!1249 = distinct !{!1249, !1243, !1247, !166}
!1250 = !DILocation(line: 20, column: 2, scope: !1239)
