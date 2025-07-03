; ModuleID = '/workspaces/llvmta/testcases/batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c'
source_filename = "/workspaces/llvmta/testcases/batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c"
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

@cjpeg_wrbmp_jpeg_dec_1 = dso_local global %struct.cjpeg_wrbmp_jpeg_decompress_struct zeroinitializer, align 4
@cjpeg_wrbmp_jpeg_dec_2 = dso_local global %struct.cjpeg_wrbmp_jpeg_decompress_struct zeroinitializer, align 4
@cjpeg_wrbmp_output_array = dso_local global [6144 x i8] zeroinitializer, align 1
@cjpeg_wrbmp_jpeg_stream = dso_local global i8* null, align 4
@cjpeg_wrbmp_checksum = dso_local global i32 0, align 4
@cjpeg_wrbmp_colormap = external dso_local global [3 x [256 x i8]], align 1
@cjpeg_wrbmp_djpeg_dest = dso_local global %struct.cjpeg_wrbmp_djpeg_dest_struct zeroinitializer, align 4
@cjpeg_wrbmp_bmp_dest = dso_local global %struct.cjpeg_wrbmp_bmp_dest_struct zeroinitializer, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_init() #0 !dbg !12 {
entry:
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_initInput() #2, !dbg !16
  store %struct.cjpeg_wrbmp_jpeg_progress_mgr* null, %struct.cjpeg_wrbmp_jpeg_progress_mgr** getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_1, i32 0, i32 2), align 4, !dbg !17
  store i32 30, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_1, i32 0, i32 28), align 4, !dbg !18
  store i32 256, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_1, i32 0, i32 32), align 4, !dbg !19
  store i32 2, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_1, i32 0, i32 29), align 4, !dbg !20
  store %struct.cjpeg_wrbmp_jpeg_progress_mgr* null, %struct.cjpeg_wrbmp_jpeg_progress_mgr** getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_2, i32 0, i32 2), align 4, !dbg !21
  store i32 30, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_2, i32 0, i32 28), align 4, !dbg !22
  store i32 256, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_2, i32 0, i32 32), align 4, !dbg !23
  store i32 3, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_2, i32 0, i32 29), align 4, !dbg !24
  store i8* getelementptr inbounds ([6144 x i8], [6144 x i8]* @cjpeg_wrbmp_output_array, i32 0, i32 0), i8** @cjpeg_wrbmp_jpeg_stream, align 4, !dbg !25
  store i32 0, i32* @cjpeg_wrbmp_checksum, align 4, !dbg !26
  ret void, !dbg !27
}

declare dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_initInput() #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %character) #0 !dbg !28 {
entry:
  %character.addr = alloca i32, align 4
  store i32 %character, i32* %character.addr, align 4
  %0 = load i32, i32* %character.addr, align 4, !dbg !29
  %conv = trunc i32 %0 to i8, !dbg !29
  %1 = load i8*, i8** @cjpeg_wrbmp_jpeg_stream, align 4, !dbg !30
  store i8 %conv, i8* %1, align 1, !dbg !31
  %2 = load i8*, i8** @cjpeg_wrbmp_jpeg_stream, align 4, !dbg !32
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1, !dbg !32
  store i8* %incdec.ptr, i8** @cjpeg_wrbmp_jpeg_stream, align 4, !dbg !32
  %3 = load i32, i32* %character.addr, align 4, !dbg !33
  %4 = load i32, i32* @cjpeg_wrbmp_checksum, align 4, !dbg !34
  %add = add nsw i32 %4, %3, !dbg !34
  store i32 %add, i32* @cjpeg_wrbmp_checksum, align 4, !dbg !34
  %5 = load i32, i32* %character.addr, align 4, !dbg !35
  ret i32 %5, !dbg !36
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_finish_output_bmp(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef %cinfo) #0 !dbg !37 {
entry:
  %cinfo.addr = alloca %struct.cjpeg_wrbmp_jpeg_decompress_struct*, align 4
  %row = alloca i32, align 4
  %progress = alloca %struct.cjpeg_wrbmp_cdjpeg_progress_mgr*, align 4
  store %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, %struct.cjpeg_wrbmp_jpeg_decompress_struct** %cinfo.addr, align 4
  %0 = load %struct.cjpeg_wrbmp_jpeg_decompress_struct*, %struct.cjpeg_wrbmp_jpeg_decompress_struct** %cinfo.addr, align 4, !dbg !38
  %progress1 = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %0, i32 0, i32 2, !dbg !39
  %1 = load %struct.cjpeg_wrbmp_jpeg_progress_mgr*, %struct.cjpeg_wrbmp_jpeg_progress_mgr** %progress1, align 4, !dbg !39
  %2 = bitcast %struct.cjpeg_wrbmp_jpeg_progress_mgr* %1 to %struct.cjpeg_wrbmp_cdjpeg_progress_mgr*, !dbg !40
  store %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %2, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr** %progress, align 4, !dbg !41
  store i32 2, i32* %row, align 4, !dbg !42
  br label %for.cond, !dbg !43

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %row, align 4, !dbg !44
  %cmp = icmp ugt i32 %3, 0, !dbg !45
  br i1 %cmp, label %for.body, label %for.end, !dbg !46

for.body:                                         ; preds = %for.cond
  %4 = load %struct.cjpeg_wrbmp_jpeg_decompress_struct*, %struct.cjpeg_wrbmp_jpeg_decompress_struct** %cinfo.addr, align 4, !dbg !47
  %output_height = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %4, i32 0, i32 28, !dbg !48
  %5 = load i32, i32* %output_height, align 4, !dbg !48
  %6 = load i32, i32* %row, align 4, !dbg !49
  %sub = sub i32 %5, %6, !dbg !50
  %7 = load %struct.cjpeg_wrbmp_cdjpeg_progress_mgr*, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr** %progress, align 4, !dbg !51
  %pub = getelementptr inbounds %struct.cjpeg_wrbmp_cdjpeg_progress_mgr, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %7, i32 0, i32 0, !dbg !52
  %pass_counter = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_progress_mgr, %struct.cjpeg_wrbmp_jpeg_progress_mgr* %pub, i32 0, i32 1, !dbg !53
  store i32 %sub, i32* %pass_counter, align 4, !dbg !54
  %8 = load %struct.cjpeg_wrbmp_jpeg_decompress_struct*, %struct.cjpeg_wrbmp_jpeg_decompress_struct** %cinfo.addr, align 4, !dbg !55
  %output_height2 = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %8, i32 0, i32 28, !dbg !56
  %9 = load i32, i32* %output_height2, align 4, !dbg !56
  %10 = load %struct.cjpeg_wrbmp_cdjpeg_progress_mgr*, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr** %progress, align 4, !dbg !57
  %pub3 = getelementptr inbounds %struct.cjpeg_wrbmp_cdjpeg_progress_mgr, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %10, i32 0, i32 0, !dbg !58
  %pass_limit = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_progress_mgr, %struct.cjpeg_wrbmp_jpeg_progress_mgr* %pub3, i32 0, i32 2, !dbg !59
  store i32 %9, i32* %pass_limit, align 4, !dbg !60
  br label %for.inc, !dbg !61

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %row, align 4, !dbg !62
  %dec = add i32 %11, -1, !dbg !62
  store i32 %dec, i32* %row, align 4, !dbg !62
  br label %for.cond, !dbg !46, !llvm.loop !63

for.end:                                          ; preds = %for.cond
  %12 = load %struct.cjpeg_wrbmp_cdjpeg_progress_mgr*, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr** %progress, align 4, !dbg !65
  %cmp4 = icmp ne %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %12, null, !dbg !66
  br i1 %cmp4, label %if.then, label %if.end, !dbg !65

if.then:                                          ; preds = %for.end
  %13 = load %struct.cjpeg_wrbmp_cdjpeg_progress_mgr*, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr** %progress, align 4, !dbg !67
  %completed_extra_passes = getelementptr inbounds %struct.cjpeg_wrbmp_cdjpeg_progress_mgr, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %13, i32 0, i32 1, !dbg !68
  %14 = load i32, i32* %completed_extra_passes, align 4, !dbg !69
  %inc = add nsw i32 %14, 1, !dbg !69
  store i32 %inc, i32* %completed_extra_passes, align 4, !dbg !69
  br label %if.end, !dbg !67

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !70
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_write_colormap(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef %cinfo, i32 noundef %map_colors, i32 noundef %map_entry_size, i32 noundef %cMap) #0 !dbg !71 {
entry:
  %cinfo.addr = alloca %struct.cjpeg_wrbmp_jpeg_decompress_struct*, align 4
  %map_colors.addr = alloca i32, align 4
  %map_entry_size.addr = alloca i32, align 4
  %cMap.addr = alloca i32, align 4
  %num_colors = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, %struct.cjpeg_wrbmp_jpeg_decompress_struct** %cinfo.addr, align 4
  store i32 %map_colors, i32* %map_colors.addr, align 4
  store i32 %map_entry_size, i32* %map_entry_size.addr, align 4
  store i32 %cMap, i32* %cMap.addr, align 4
  %0 = load %struct.cjpeg_wrbmp_jpeg_decompress_struct*, %struct.cjpeg_wrbmp_jpeg_decompress_struct** %cinfo.addr, align 4, !dbg !72
  %actual_number_of_colors = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %0, i32 0, i32 32, !dbg !73
  %1 = load i32, i32* %actual_number_of_colors, align 4, !dbg !73
  store i32 %1, i32* %num_colors, align 4, !dbg !74
  %2 = load i32, i32* %cMap.addr, align 4, !dbg !75
  %cmp = icmp ne i32 %2, 0, !dbg !76
  br i1 %cmp, label %if.then, label %if.else28, !dbg !75

if.then:                                          ; preds = %entry
  %3 = load %struct.cjpeg_wrbmp_jpeg_decompress_struct*, %struct.cjpeg_wrbmp_jpeg_decompress_struct** %cinfo.addr, align 4, !dbg !77
  %out_color_components = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %3, i32 0, i32 29, !dbg !78
  %4 = load i32, i32* %out_color_components, align 4, !dbg !78
  %cmp1 = icmp eq i32 %4, 3, !dbg !79
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !77

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %i, align 4, !dbg !80
  br label %for.cond, !dbg !81

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, i32* %i, align 4, !dbg !82
  %cmp3 = icmp slt i32 %5, 2, !dbg !83
  br i1 %cmp3, label %for.body, label %for.end, !dbg !84

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !85
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* getelementptr inbounds ([3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 2), i32 0, i32 %6, !dbg !85
  %7 = load i8, i8* %arrayidx, align 1, !dbg !85
  %conv = zext i8 %7 to i32, !dbg !85
  %call = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv) #2, !dbg !86
  %8 = load i32, i32* %i, align 4, !dbg !87
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* getelementptr inbounds ([3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 1), i32 0, i32 %8, !dbg !87
  %9 = load i8, i8* %arrayidx4, align 1, !dbg !87
  %conv5 = zext i8 %9 to i32, !dbg !87
  %call6 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv5) #2, !dbg !88
  %10 = load i32, i32* %i, align 4, !dbg !89
  %arrayidx7 = getelementptr inbounds [256 x i8], [256 x i8]* getelementptr inbounds ([3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 0), i32 0, i32 %10, !dbg !89
  %11 = load i8, i8* %arrayidx7, align 1, !dbg !89
  %conv8 = zext i8 %11 to i32, !dbg !89
  %call9 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv8) #2, !dbg !90
  %call10 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #2, !dbg !91
  br label %for.inc, !dbg !92

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !93
  %inc = add nsw i32 %12, 1, !dbg !93
  store i32 %inc, i32* %i, align 4, !dbg !93
  br label %for.cond, !dbg !84, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !95

if.else:                                          ; preds = %if.then
  store i32 0, i32* %i, align 4, !dbg !96
  br label %for.cond11, !dbg !97

for.cond11:                                       ; preds = %for.inc25, %if.else
  %13 = load i32, i32* %i, align 4, !dbg !98
  %cmp12 = icmp slt i32 %13, 2, !dbg !99
  br i1 %cmp12, label %for.body14, label %for.end27, !dbg !100

for.body14:                                       ; preds = %for.cond11
  %14 = load i32, i32* %i, align 4, !dbg !101
  %arrayidx15 = getelementptr inbounds [256 x i8], [256 x i8]* getelementptr inbounds ([3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 2), i32 0, i32 %14, !dbg !101
  %15 = load i8, i8* %arrayidx15, align 1, !dbg !101
  %conv16 = zext i8 %15 to i32, !dbg !101
  %call17 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv16) #2, !dbg !102
  %16 = load i32, i32* %i, align 4, !dbg !103
  %arrayidx18 = getelementptr inbounds [256 x i8], [256 x i8]* getelementptr inbounds ([3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 1), i32 0, i32 %16, !dbg !103
  %17 = load i8, i8* %arrayidx18, align 1, !dbg !103
  %conv19 = zext i8 %17 to i32, !dbg !103
  %call20 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv19) #2, !dbg !104
  %18 = load i32, i32* %i, align 4, !dbg !105
  %arrayidx21 = getelementptr inbounds [256 x i8], [256 x i8]* getelementptr inbounds ([3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 0), i32 0, i32 %18, !dbg !105
  %19 = load i8, i8* %arrayidx21, align 1, !dbg !105
  %conv22 = zext i8 %19 to i32, !dbg !105
  %call23 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv22) #2, !dbg !106
  %call24 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #2, !dbg !107
  br label %for.inc25, !dbg !108

for.inc25:                                        ; preds = %for.body14
  %20 = load i32, i32* %i, align 4, !dbg !109
  %inc26 = add nsw i32 %20, 1, !dbg !109
  store i32 %inc26, i32* %i, align 4, !dbg !109
  br label %for.cond11, !dbg !100, !llvm.loop !110

for.end27:                                        ; preds = %for.cond11
  br label %if.end

if.end:                                           ; preds = %for.end27, %for.end
  br label %if.end40, !dbg !111

if.else28:                                        ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !112
  br label %for.cond29, !dbg !113

for.cond29:                                       ; preds = %for.inc37, %if.else28
  %21 = load i32, i32* %i, align 4, !dbg !114
  %cmp30 = icmp slt i32 %21, 2, !dbg !115
  br i1 %cmp30, label %for.body32, label %for.end39, !dbg !116

for.body32:                                       ; preds = %for.cond29
  %22 = load i32, i32* %i, align 4, !dbg !117
  %call33 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %22) #2, !dbg !118
  %23 = load i32, i32* %i, align 4, !dbg !119
  %call34 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %23) #2, !dbg !120
  %24 = load i32, i32* %i, align 4, !dbg !121
  %call35 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %24) #2, !dbg !122
  %call36 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #2, !dbg !123
  br label %for.inc37, !dbg !124

for.inc37:                                        ; preds = %for.body32
  %25 = load i32, i32* %i, align 4, !dbg !125
  %inc38 = add nsw i32 %25, 1, !dbg !125
  store i32 %inc38, i32* %i, align 4, !dbg !125
  br label %for.cond29, !dbg !116, !llvm.loop !126

for.end39:                                        ; preds = %for.cond29
  br label %if.end40

if.end40:                                         ; preds = %for.end39, %if.end
  br label %for.cond41, !dbg !127

for.cond41:                                       ; preds = %for.inc49, %if.end40
  %26 = load i32, i32* %i, align 4, !dbg !128
  %cmp42 = icmp slt i32 %26, 2, !dbg !129
  br i1 %cmp42, label %for.body44, label %for.end51, !dbg !127

for.body44:                                       ; preds = %for.cond41
  %call45 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #2, !dbg !130
  %call46 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #2, !dbg !131
  %call47 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #2, !dbg !132
  %call48 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #2, !dbg !133
  br label %for.inc49, !dbg !134

for.inc49:                                        ; preds = %for.body44
  %27 = load i32, i32* %i, align 4, !dbg !135
  %inc50 = add nsw i32 %27, 1, !dbg !135
  store i32 %inc50, i32* %i, align 4, !dbg !135
  br label %for.cond41, !dbg !127, !llvm.loop !136

for.end51:                                        ; preds = %for.cond41
  ret void, !dbg !137
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_main() #0 !dbg !138 {
entry:
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_finish_output_bmp(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef @cjpeg_wrbmp_jpeg_dec_1) #2, !dbg !139
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_write_colormap(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef @cjpeg_wrbmp_jpeg_dec_1, i32 noundef 768, i32 noundef 4, i32 noundef 1) #2, !dbg !140
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_finish_output_bmp(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef @cjpeg_wrbmp_jpeg_dec_2) #2, !dbg !141
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_write_colormap(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef @cjpeg_wrbmp_jpeg_dec_2, i32 noundef 768, i32 noundef 4, i32 noundef 1) #2, !dbg !142
  ret void, !dbg !143
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cjpeg_wrbmp_return() #0 !dbg !144 {
entry:
  %0 = load i32, i32* @cjpeg_wrbmp_checksum, align 4, !dbg !145
  %add = add nsw i32 %0, -209330, !dbg !146
  %cmp = icmp ne i32 %add, 0, !dbg !147
  %conv = zext i1 %cmp to i32, !dbg !147
  ret i32 %conv, !dbg !148
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !149 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_init() #2, !dbg !150
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_main() #2, !dbg !151
  %call = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_return() #2, !dbg !152
  ret i32 %call, !dbg !153
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c", directory: "/workspaces/llvmta/testcases/tmp.HgxNsMNts5", checksumkind: CSK_MD5, checksum: "80481e07bccae433bca801d844389a9b")
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
!12 = distinct !DISubprogram(name: "cjpeg_wrbmp_init", scope: !13, file: !13, line: 79, type: !14, scopeLine: 80, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "80481e07bccae433bca801d844389a9b")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 81, column: 3, scope: !12)
!17 = !DILocation(line: 83, column: 50, scope: !12)
!18 = !DILocation(line: 84, column: 50, scope: !12)
!19 = !DILocation(line: 85, column: 50, scope: !12)
!20 = !DILocation(line: 86, column: 50, scope: !12)
!21 = !DILocation(line: 88, column: 50, scope: !12)
!22 = !DILocation(line: 89, column: 50, scope: !12)
!23 = !DILocation(line: 90, column: 50, scope: !12)
!24 = !DILocation(line: 91, column: 50, scope: !12)
!25 = !DILocation(line: 93, column: 27, scope: !12)
!26 = !DILocation(line: 95, column: 24, scope: !12)
!27 = !DILocation(line: 96, column: 1, scope: !12)
!28 = distinct !DISubprogram(name: "cjpeg_wrbmp_putc_modified", scope: !13, file: !13, line: 101, type: !14, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!29 = !DILocation(line: 103, column: 34, scope: !28)
!30 = !DILocation(line: 103, column: 6, scope: !28)
!31 = !DILocation(line: 103, column: 32, scope: !28)
!32 = !DILocation(line: 105, column: 3, scope: !28)
!33 = !DILocation(line: 107, column: 27, scope: !28)
!34 = !DILocation(line: 107, column: 24, scope: !28)
!35 = !DILocation(line: 109, column: 10, scope: !28)
!36 = !DILocation(line: 109, column: 3, scope: !28)
!37 = distinct !DISubprogram(name: "cjpeg_wrbmp_finish_output_bmp", scope: !13, file: !13, line: 112, type: !14, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!38 = !DILocation(line: 116, column: 37, scope: !37)
!39 = !DILocation(line: 116, column: 44, scope: !37)
!40 = !DILocation(line: 116, column: 5, scope: !37)
!41 = !DILocation(line: 115, column: 31, scope: !37)
!42 = !DILocation(line: 120, column: 13, scope: !37)
!43 = !DILocation(line: 120, column: 9, scope: !37)
!44 = !DILocation(line: 120, column: 18, scope: !37)
!45 = !DILocation(line: 120, column: 22, scope: !37)
!46 = !DILocation(line: 120, column: 3, scope: !37)
!47 = !DILocation(line: 122, column: 46, scope: !37)
!48 = !DILocation(line: 122, column: 53, scope: !37)
!49 = !DILocation(line: 122, column: 69, scope: !37)
!50 = !DILocation(line: 122, column: 67, scope: !37)
!51 = !DILocation(line: 122, column: 7, scope: !37)
!52 = !DILocation(line: 122, column: 17, scope: !37)
!53 = !DILocation(line: 122, column: 21, scope: !37)
!54 = !DILocation(line: 122, column: 34, scope: !37)
!55 = !DILocation(line: 123, column: 43, scope: !37)
!56 = !DILocation(line: 123, column: 50, scope: !37)
!57 = !DILocation(line: 123, column: 7, scope: !37)
!58 = !DILocation(line: 123, column: 17, scope: !37)
!59 = !DILocation(line: 123, column: 21, scope: !37)
!60 = !DILocation(line: 123, column: 32, scope: !37)
!61 = !DILocation(line: 125, column: 3, scope: !37)
!62 = !DILocation(line: 120, column: 27, scope: !37)
!63 = distinct !{!63, !46, !61, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !DILocation(line: 127, column: 8, scope: !37)
!66 = !DILocation(line: 127, column: 17, scope: !37)
!67 = !DILocation(line: 128, column: 5, scope: !37)
!68 = !DILocation(line: 128, column: 15, scope: !37)
!69 = !DILocation(line: 128, column: 37, scope: !37)
!70 = !DILocation(line: 129, column: 1, scope: !37)
!71 = distinct !DISubprogram(name: "cjpeg_wrbmp_write_colormap", scope: !13, file: !13, line: 131, type: !14, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!72 = !DILocation(line: 136, column: 20, scope: !71)
!73 = !DILocation(line: 136, column: 27, scope: !71)
!74 = !DILocation(line: 136, column: 7, scope: !71)
!75 = !DILocation(line: 139, column: 8, scope: !71)
!76 = !DILocation(line: 139, column: 13, scope: !71)
!77 = !DILocation(line: 141, column: 10, scope: !71)
!78 = !DILocation(line: 141, column: 17, scope: !71)
!79 = !DILocation(line: 141, column: 38, scope: !71)
!80 = !DILocation(line: 144, column: 15, scope: !71)
!81 = !DILocation(line: 144, column: 13, scope: !71)
!82 = !DILocation(line: 144, column: 20, scope: !71)
!83 = !DILocation(line: 144, column: 22, scope: !71)
!84 = !DILocation(line: 144, column: 7, scope: !71)
!85 = !DILocation(line: 145, column: 36, scope: !71)
!86 = !DILocation(line: 145, column: 9, scope: !71)
!87 = !DILocation(line: 147, column: 36, scope: !71)
!88 = !DILocation(line: 147, column: 9, scope: !71)
!89 = !DILocation(line: 149, column: 36, scope: !71)
!90 = !DILocation(line: 149, column: 9, scope: !71)
!91 = !DILocation(line: 153, column: 11, scope: !71)
!92 = !DILocation(line: 154, column: 7, scope: !71)
!93 = !DILocation(line: 144, column: 28, scope: !71)
!94 = distinct !{!94, !84, !92, !64}
!95 = !DILocation(line: 155, column: 5, scope: !71)
!96 = !DILocation(line: 158, column: 15, scope: !71)
!97 = !DILocation(line: 158, column: 13, scope: !71)
!98 = !DILocation(line: 158, column: 20, scope: !71)
!99 = !DILocation(line: 158, column: 22, scope: !71)
!100 = !DILocation(line: 158, column: 7, scope: !71)
!101 = !DILocation(line: 160, column: 36, scope: !71)
!102 = !DILocation(line: 160, column: 9, scope: !71)
!103 = !DILocation(line: 162, column: 36, scope: !71)
!104 = !DILocation(line: 162, column: 9, scope: !71)
!105 = !DILocation(line: 164, column: 36, scope: !71)
!106 = !DILocation(line: 164, column: 9, scope: !71)
!107 = !DILocation(line: 168, column: 11, scope: !71)
!108 = !DILocation(line: 169, column: 7, scope: !71)
!109 = !DILocation(line: 158, column: 28, scope: !71)
!110 = distinct !{!110, !100, !108, !64}
!111 = !DILocation(line: 171, column: 3, scope: !71)
!112 = !DILocation(line: 174, column: 13, scope: !71)
!113 = !DILocation(line: 174, column: 11, scope: !71)
!114 = !DILocation(line: 174, column: 18, scope: !71)
!115 = !DILocation(line: 174, column: 20, scope: !71)
!116 = !DILocation(line: 174, column: 5, scope: !71)
!117 = !DILocation(line: 175, column: 34, scope: !71)
!118 = !DILocation(line: 175, column: 7, scope: !71)
!119 = !DILocation(line: 176, column: 34, scope: !71)
!120 = !DILocation(line: 176, column: 7, scope: !71)
!121 = !DILocation(line: 177, column: 34, scope: !71)
!122 = !DILocation(line: 177, column: 7, scope: !71)
!123 = !DILocation(line: 180, column: 9, scope: !71)
!124 = !DILocation(line: 181, column: 5, scope: !71)
!125 = !DILocation(line: 174, column: 26, scope: !71)
!126 = distinct !{!126, !116, !124, !64}
!127 = !DILocation(line: 186, column: 3, scope: !71)
!128 = !DILocation(line: 186, column: 11, scope: !71)
!129 = !DILocation(line: 186, column: 13, scope: !71)
!130 = !DILocation(line: 187, column: 5, scope: !71)
!131 = !DILocation(line: 188, column: 5, scope: !71)
!132 = !DILocation(line: 189, column: 5, scope: !71)
!133 = !DILocation(line: 192, column: 7, scope: !71)
!134 = !DILocation(line: 193, column: 3, scope: !71)
!135 = !DILocation(line: 186, column: 19, scope: !71)
!136 = distinct !{!136, !127, !134, !64}
!137 = !DILocation(line: 194, column: 1, scope: !71)
!138 = distinct !DISubprogram(name: "cjpeg_wrbmp_main", scope: !13, file: !13, line: 196, type: !14, scopeLine: 197, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!139 = !DILocation(line: 198, column: 3, scope: !138)
!140 = !DILocation(line: 199, column: 3, scope: !138)
!141 = !DILocation(line: 201, column: 3, scope: !138)
!142 = !DILocation(line: 202, column: 3, scope: !138)
!143 = !DILocation(line: 203, column: 1, scope: !138)
!144 = distinct !DISubprogram(name: "cjpeg_wrbmp_return", scope: !13, file: !13, line: 205, type: !14, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!145 = !DILocation(line: 207, column: 12, scope: !144)
!146 = !DILocation(line: 207, column: 34, scope: !144)
!147 = !DILocation(line: 207, column: 50, scope: !144)
!148 = !DILocation(line: 207, column: 3, scope: !144)
!149 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 210, type: !14, scopeLine: 211, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!150 = !DILocation(line: 212, column: 3, scope: !149)
!151 = !DILocation(line: 213, column: 3, scope: !149)
!152 = !DILocation(line: 215, column: 12, scope: !149)
!153 = !DILocation(line: 215, column: 3, scope: !149)
