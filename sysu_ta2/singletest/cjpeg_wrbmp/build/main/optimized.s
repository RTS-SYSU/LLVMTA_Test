	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 2	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 1	@ Tag_THUMB_ISA_use
	.fpu	vfpv2
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"llvm-link"
	.globl	cjpeg_wrbmp_init                @ -- Begin function cjpeg_wrbmp_init
	.p2align	2
	.type	cjpeg_wrbmp_init,%function
	.code	32                              @ @cjpeg_wrbmp_init
cjpeg_wrbmp_init:
.Lfunc_begin0:
	.file	1 "/workspaces/llvmta/testcases" "batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c" md5 0x80481e07bccae433bca801d844389a9b
	.loc	1 80 0                          @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:80:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp0:
	.loc	1 81 3 prologue_end             @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:81:3
	bl	cjpeg_wrbmp_initInput
	.loc	1 83 50                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:83:50
	ldr	r12, .LCPI0_0
	mov	r0, #0
	str	r0, [r12, #8]
	mov	r3, #30
	.loc	1 84 50                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:84:50
	str	r3, [r12, #112]
	mov	r1, #256
	.loc	1 85 50                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:85:50
	str	r1, [r12, #128]
	mov	r2, #2
	.loc	1 86 50                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:86:50
	str	r2, [r12, #116]
	.loc	1 88 50                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:88:50
	ldr	r2, .LCPI0_1
	str	r0, [r2, #8]
	.loc	1 89 50                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:89:50
	str	r3, [r2, #112]
	.loc	1 90 50                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:90:50
	str	r1, [r2, #128]
	mov	r1, #3
	.loc	1 91 50                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:91:50
	str	r1, [r2, #116]
	.loc	1 93 27                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:93:27
	ldr	r2, .LCPI0_2
	ldr	r1, .LCPI0_3
	str	r1, [r2]
	.loc	1 95 24                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:95:24
	ldr	r1, .LCPI0_4
	str	r0, [r1]
	.loc	1 96 1                          @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:96:1
	pop	{r11, lr}
	bx	lr
.Ltmp1:
	.p2align	2
@ %bb.1:
	.loc	1 0 1 is_stmt 0                 @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:0:1
.LCPI0_0:
	.long	cjpeg_wrbmp_jpeg_dec_1
.LCPI0_1:
	.long	cjpeg_wrbmp_jpeg_dec_2
.LCPI0_2:
	.long	cjpeg_wrbmp_jpeg_stream
.LCPI0_3:
	.long	cjpeg_wrbmp_output_array
.LCPI0_4:
	.long	cjpeg_wrbmp_checksum
.Lfunc_end0:
	.size	cjpeg_wrbmp_init, .Lfunc_end0-cjpeg_wrbmp_init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	cjpeg_wrbmp_putc_modified       @ -- Begin function cjpeg_wrbmp_putc_modified
	.p2align	2
	.type	cjpeg_wrbmp_putc_modified,%function
	.code	32                              @ @cjpeg_wrbmp_putc_modified
cjpeg_wrbmp_putc_modified:
.Lfunc_begin1:
	.loc	1 102 0 is_stmt 1               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:102:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	1 103 6 prologue_end            @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:103:6
	ldr	r2, .LCPI1_0
	ldr	r1, [r2]
	.loc	1 103 32 is_stmt 0              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:103:32
	strb	r0, [r1]
	.loc	1 105 3 is_stmt 1               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:105:3
	ldr	r1, [r2]
	add	r1, r1, #1
	str	r1, [r2]
	.loc	1 107 24                        @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:107:24
	ldr	r2, .LCPI1_1
	ldr	r1, [r2]
	add	r1, r1, r0
	str	r1, [r2]
	.loc	1 109 3                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:109:3
	bx	lr
.Ltmp2:
	.p2align	2
@ %bb.1:
	.loc	1 0 3 is_stmt 0                 @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:0:3
.LCPI1_0:
	.long	cjpeg_wrbmp_jpeg_stream
.LCPI1_1:
	.long	cjpeg_wrbmp_checksum
.Lfunc_end1:
	.size	cjpeg_wrbmp_putc_modified, .Lfunc_end1-cjpeg_wrbmp_putc_modified
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	cjpeg_wrbmp_finish_output_bmp   @ -- Begin function cjpeg_wrbmp_finish_output_bmp
	.p2align	2
	.type	cjpeg_wrbmp_finish_output_bmp,%function
	.code	32                              @ @cjpeg_wrbmp_finish_output_bmp
cjpeg_wrbmp_finish_output_bmp:
.Lfunc_begin2:
	.loc	1 113 0 is_stmt 1               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:113:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp3:
	.loc	1 116 44 prologue_end           @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:116:44
	ldr	r0, [r0, #8]
	str	r0, [sp, #8]                    @ 4-byte Spill
	mov	r0, #2
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	1 120 9                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:120:9
	b	.LBB2_1
.LBB2_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:0:0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 120 3                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:120:3
	cmp	r0, #0
	beq	.LBB2_4
	b	.LBB2_2
.LBB2_2:                                @ %for.body
                                        @   in Loop: Header=BB2_1 Depth=1
	.loc	1 122 53 is_stmt 1              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:122:53
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp]                        @ 4-byte Reload
	ldr	r2, [r0, #112]
	.loc	1 122 67 is_stmt 0              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:122:67
	sub	r2, r2, r3
	.loc	1 122 34                        @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:122:34
	str	r2, [r1, #4]
	.loc	1 123 50 is_stmt 1              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:123:50
	ldr	r0, [r0, #112]
	.loc	1 123 32 is_stmt 0              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:123:32
	str	r0, [r1, #8]
	.loc	1 125 3 is_stmt 1               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:125:3
	b	.LBB2_3
.LBB2_3:                                @ %for.inc
                                        @   in Loop: Header=BB2_1 Depth=1
	.loc	1 120 27                        @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:120:27
	ldr	r0, [sp]                        @ 4-byte Reload
	sub	r0, r0, #1
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	1 120 3 is_stmt 0               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:120:3
	b	.LBB2_1
.LBB2_4:                                @ %for.end
	.loc	1 127 8 is_stmt 1               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:127:8
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB2_6
	b	.LBB2_5
.LBB2_5:                                @ %if.then
	.loc	1 128 37                        @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:128:37
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [r1, #20]
	add	r0, r0, #1
	str	r0, [r1, #20]
	.loc	1 128 5 is_stmt 0               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:128:5
	b	.LBB2_6
.LBB2_6:                                @ %if.end
	.loc	1 129 1 is_stmt 1               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:129:1
	add	sp, sp, #16
	bx	lr
.Ltmp4:
.Lfunc_end2:
	.size	cjpeg_wrbmp_finish_output_bmp, .Lfunc_end2-cjpeg_wrbmp_finish_output_bmp
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	cjpeg_wrbmp_write_colormap      @ -- Begin function cjpeg_wrbmp_write_colormap
	.p2align	2
	.type	cjpeg_wrbmp_write_colormap,%function
	.code	32                              @ @cjpeg_wrbmp_write_colormap
cjpeg_wrbmp_write_colormap:
.Lfunc_begin3:
	.loc	1 134 0                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:134:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #48
	str	r0, [r11, #-4]                  @ 4-byte Spill
.Ltmp5:
	.loc	1 139 8 prologue_end            @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:139:8
	cmp	r3, #0
	beq	.LBB3_13
	b	.LBB3_1
.LBB3_1:                                @ %if.then
	.loc	1 141 17                        @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:141:17
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r0, [r0, #116]
	.loc	1 141 10 is_stmt 0              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:141:10
	cmp	r0, #3
	bne	.LBB3_7
	b	.LBB3_2
.LBB3_2:                                @ %if.then2
	.loc	1 0 10                          @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:0:10
	mov	r0, #0
	str	r0, [r11, #-8]                  @ 4-byte Spill
	.loc	1 144 13 is_stmt 1              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:144:13
	b	.LBB3_3
.LBB3_3:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:0:0
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	1 144 7                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:144:7
	cmp	r0, #2
	beq	.LBB3_6
	b	.LBB3_4
.LBB3_4:                                @ %for.body
                                        @   in Loop: Header=BB3_3 Depth=1
	.loc	1 145 36 is_stmt 1              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:145:36
	ldr	r1, [r11, #-12]                 @ 4-byte Reload
	ldr	r0, .LCPI3_0
	str	r0, [r11, #-16]                 @ 4-byte Spill
	add	r0, r0, r1
	str	r0, [r11, #-20]                 @ 4-byte Spill
	ldrb	r0, [r0, #512]
	.loc	1 145 9 is_stmt 0               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:145:9
	bl	cjpeg_wrbmp_putc_modified
                                        @ kill: def $r1 killed $r0
	.loc	1 147 36 is_stmt 1              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:147:36
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	ldrb	r0, [r0, #256]
	.loc	1 147 9 is_stmt 0               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:147:9
	bl	cjpeg_wrbmp_putc_modified
	ldr	r1, [r11, #-12]                 @ 4-byte Reload
                                        @ kill: def $r2 killed $r0
	.loc	1 149 36 is_stmt 1              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:149:36
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	ldrb	r0, [r0, r1]
	.loc	1 149 9 is_stmt 0               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:149:9
	bl	cjpeg_wrbmp_putc_modified
	mov	r0, #0
	.loc	1 153 11 is_stmt 1              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:153:11
	bl	cjpeg_wrbmp_putc_modified
	.loc	1 154 7                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:154:7
	b	.LBB3_5
.LBB3_5:                                @ %for.inc
                                        @   in Loop: Header=BB3_3 Depth=1
	.loc	1 144 28                        @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:144:28
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [r11, #-8]                  @ 4-byte Spill
	.loc	1 144 7 is_stmt 0               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:144:7
	b	.LBB3_3
.LBB3_6:                                @ %for.end
	.loc	1 155 5 is_stmt 1               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:155:5
	b	.LBB3_12
.LBB3_7:                                @ %if.else
	.loc	1 0 5 is_stmt 0                 @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:0:5
	mov	r0, #0
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	1 158 13 is_stmt 1              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:158:13
	b	.LBB3_8
.LBB3_8:                                @ %for.cond11
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:0:0
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	str	r0, [sp, #20]                   @ 4-byte Spill
	.loc	1 158 7                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:158:7
	cmp	r0, #2
	beq	.LBB3_11
	b	.LBB3_9
.LBB3_9:                                @ %for.body14
                                        @   in Loop: Header=BB3_8 Depth=1
	.loc	1 160 36 is_stmt 1              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:160:36
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	ldr	r0, .LCPI3_0
	str	r0, [sp, #16]                   @ 4-byte Spill
	add	r0, r0, r1
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldrb	r0, [r0, #512]
	.loc	1 160 9 is_stmt 0               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:160:9
	bl	cjpeg_wrbmp_putc_modified
                                        @ kill: def $r1 killed $r0
	.loc	1 162 36 is_stmt 1              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:162:36
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldrb	r0, [r0, #256]
	.loc	1 162 9 is_stmt 0               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:162:9
	bl	cjpeg_wrbmp_putc_modified
	ldr	r1, [sp, #20]                   @ 4-byte Reload
                                        @ kill: def $r2 killed $r0
	.loc	1 164 36 is_stmt 1              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:164:36
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldrb	r0, [r0, r1]
	.loc	1 164 9 is_stmt 0               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:164:9
	bl	cjpeg_wrbmp_putc_modified
	mov	r0, #0
	.loc	1 168 11 is_stmt 1              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:168:11
	bl	cjpeg_wrbmp_putc_modified
	.loc	1 169 7                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:169:7
	b	.LBB3_10
.LBB3_10:                               @ %for.inc25
                                        @   in Loop: Header=BB3_8 Depth=1
	.loc	1 158 28                        @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:158:28
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	1 158 7 is_stmt 0               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:158:7
	b	.LBB3_8
.LBB3_11:                               @ %for.end27
	.loc	1 0 7                           @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:0:7
	b	.LBB3_12
.LBB3_12:                               @ %if.end
	.loc	1 171 3 is_stmt 1               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:171:3
	b	.LBB3_18
.LBB3_13:                               @ %if.else28
	.loc	1 0 3 is_stmt 0                 @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:0:3
	mov	r0, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 174 11 is_stmt 1              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:174:11
	b	.LBB3_14
.LBB3_14:                               @ %for.cond29
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:0:0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 174 5                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:174:5
	cmp	r0, #2
	beq	.LBB3_17
	b	.LBB3_15
.LBB3_15:                               @ %for.body32
                                        @   in Loop: Header=BB3_14 Depth=1
	.loc	1 175 7 is_stmt 1               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:175:7
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	bl	cjpeg_wrbmp_putc_modified
                                        @ kill: def $r1 killed $r0
	.loc	1 176 7                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:176:7
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	bl	cjpeg_wrbmp_putc_modified
                                        @ kill: def $r1 killed $r0
	.loc	1 177 7                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:177:7
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	bl	cjpeg_wrbmp_putc_modified
	mov	r0, #0
	.loc	1 180 9                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:180:9
	bl	cjpeg_wrbmp_putc_modified
	.loc	1 181 5                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:181:5
	b	.LBB3_16
.LBB3_16:                               @ %for.inc37
                                        @   in Loop: Header=BB3_14 Depth=1
	.loc	1 174 26                        @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:174:26
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 174 5 is_stmt 0               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:174:5
	b	.LBB3_14
.LBB3_17:                               @ %for.end39
	.loc	1 0 5                           @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:0:5
	b	.LBB3_18
.LBB3_18:                               @ %if.end40
	.loc	1 186 3 is_stmt 1               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:186:3
	b	.LBB3_19
.LBB3_19:                               @ %for.cond41
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 3 is_stmt 0                 @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:0:3
	mov	r0, #1
	.loc	1 186 3                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:186:3
	cmp	r0, #0
	bne	.LBB3_22
	b	.LBB3_20
.LBB3_20:                               @ %for.body44
                                        @   in Loop: Header=BB3_19 Depth=1
	.loc	1 193 3 is_stmt 1               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:193:3
	b	.LBB3_21
.LBB3_21:                               @ %for.inc49
                                        @   in Loop: Header=BB3_19 Depth=1
	.loc	1 186 3                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:186:3
	b	.LBB3_19
.LBB3_22:                               @ %for.end51
	.loc	1 194 1                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:194:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp6:
	.p2align	2
@ %bb.23:
	.loc	1 0 1 is_stmt 0                 @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:0:1
.LCPI3_0:
	.long	cjpeg_wrbmp_colormap
.Lfunc_end3:
	.size	cjpeg_wrbmp_write_colormap, .Lfunc_end3-cjpeg_wrbmp_write_colormap
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	cjpeg_wrbmp_main                @ -- Begin function cjpeg_wrbmp_main
	.p2align	2
	.type	cjpeg_wrbmp_main,%function
	.code	32                              @ @cjpeg_wrbmp_main
cjpeg_wrbmp_main:
.Lfunc_begin4:
	.loc	1 197 0 is_stmt 1               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:197:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #24
.Ltmp7:
	.loc	1 198 3 prologue_end            @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:198:3
	ldr	r0, .LCPI4_0
	str	r0, [sp, #4]                    @ 4-byte Spill
	bl	cjpeg_wrbmp_finish_output_bmp
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	r1, #768
	str	r1, [sp, #12]                   @ 4-byte Spill
	mov	r2, #4
	str	r2, [r11, #-8]                  @ 4-byte Spill
	mov	r3, #1
	str	r3, [r11, #-4]                  @ 4-byte Spill
	.loc	1 199 3                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:199:3
	bl	cjpeg_wrbmp_write_colormap
	.loc	1 201 3                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:201:3
	ldr	r0, .LCPI4_1
	str	r0, [sp, #8]                    @ 4-byte Spill
	bl	cjpeg_wrbmp_finish_output_bmp
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [r11, #-8]                  @ 4-byte Reload
	ldr	r3, [r11, #-4]                  @ 4-byte Reload
	.loc	1 202 3                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:202:3
	bl	cjpeg_wrbmp_write_colormap
	.loc	1 203 1                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:203:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp8:
	.p2align	2
@ %bb.1:
	.loc	1 0 1 is_stmt 0                 @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:0:1
.LCPI4_0:
	.long	cjpeg_wrbmp_jpeg_dec_1
.LCPI4_1:
	.long	cjpeg_wrbmp_jpeg_dec_2
.Lfunc_end4:
	.size	cjpeg_wrbmp_main, .Lfunc_end4-cjpeg_wrbmp_main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	cjpeg_wrbmp_return              @ -- Begin function cjpeg_wrbmp_return
	.p2align	2
	.type	cjpeg_wrbmp_return,%function
	.code	32                              @ @cjpeg_wrbmp_return
cjpeg_wrbmp_return:
.Lfunc_begin5:
	.loc	1 206 0 is_stmt 1               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:206:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	1 207 12 prologue_end           @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:207:12
	ldr	r0, .LCPI5_0
	ldr	r0, [r0]
	ldr	r1, .LCPI5_1
	.loc	1 207 50 is_stmt 0              @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:207:50
	subs	r0, r0, r1
	movne	r0, #1
	.loc	1 207 3                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:207:3
	bx	lr
.Ltmp9:
	.p2align	2
@ %bb.1:
	.loc	1 0 3                           @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:0:3
.LCPI5_0:
	.long	cjpeg_wrbmp_checksum
.LCPI5_1:
	.long	209330                          @ 0x331b2
.Lfunc_end5:
	.size	cjpeg_wrbmp_return, .Lfunc_end5-cjpeg_wrbmp_return
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	main                            @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                              @ @main
main:
.Lfunc_begin6:
	.loc	1 211 0 is_stmt 1               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:211:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp10:
	.loc	1 212 3 prologue_end            @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:212:3
	bl	cjpeg_wrbmp_init
	.loc	1 213 3                         @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:213:3
	bl	cjpeg_wrbmp_main
	.loc	1 215 12                        @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:215:12
	bl	cjpeg_wrbmp_return
	.loc	1 215 3 is_stmt 0               @ batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c:215:3
	pop	{r11, lr}
	bx	lr
.Ltmp11:
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	cjpeg_wrbmp_initInput           @ -- Begin function cjpeg_wrbmp_initInput
	.p2align	2
	.type	cjpeg_wrbmp_initInput,%function
	.code	32                              @ @cjpeg_wrbmp_initInput
cjpeg_wrbmp_initInput:
.Lfunc_begin7:
	.file	2 "/workspaces/llvmta/testcases" "batchtest/cjpeg_wrbmp/input.c" md5 0x40a8438eda4e1c4ba13ee9d4cf6beda0
	.loc	2 23 0 is_stmt 1                @ batchtest/cjpeg_wrbmp/input.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r4, r5, r11, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r5, -12
	.cfi_offset r4, -16
	add	r11, sp, #8
	.cfi_def_cfa r11, 8
	sub	sp, sp, #784
.Ltmp12:
	.loc	2 25 26 prologue_end            @ batchtest/cjpeg_wrbmp/input.c:25:26
	ldr	r1, .LCPI7_0
	add	r0, sp, #16
	mov	r2, #768
	bl	memcpy
	mov	r0, #0
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	2 81 9                          @ batchtest/cjpeg_wrbmp/input.c:81:9
	b	.LBB7_1
.LBB7_1:                                @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB7_3 Depth 2
	.loc	2 0 0 is_stmt 0                 @ batchtest/cjpeg_wrbmp/input.c:0:0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	2 81 3                          @ batchtest/cjpeg_wrbmp/input.c:81:3
	cmp	r0, #2
	beq	.LBB7_8
	b	.LBB7_2
.LBB7_2:                                @ %for.body
                                        @   in Loop: Header=BB7_1 Depth=1
	.loc	2 0 3                           @ batchtest/cjpeg_wrbmp/input.c:0:3
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	2 83 11 is_stmt 1               @ batchtest/cjpeg_wrbmp/input.c:83:11
	b	.LBB7_3
.LBB7_3:                                @ %for.cond1
                                        @   Parent Loop BB7_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	2 0 0 is_stmt 0                 @ batchtest/cjpeg_wrbmp/input.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	2 83 5                          @ batchtest/cjpeg_wrbmp/input.c:83:5
	cmp	r0, #2
	beq	.LBB7_6
	b	.LBB7_4
.LBB7_4:                                @ %for.body3
                                        @   in Loop: Header=BB7_3 Depth=2
	.loc	2 0 5                           @ batchtest/cjpeg_wrbmp/input.c:0:5
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	add	r0, sp, #16
	.loc	2 84 40 is_stmt 1               @ batchtest/cjpeg_wrbmp/input.c:84:40
	add	r0, r0, r3, lsl #8
	ldrb	r0, [r0, r2]
	.loc	2 84 7 is_stmt 0                @ batchtest/cjpeg_wrbmp/input.c:84:7
	ldr	r1, .LCPI7_1
	add	r1, r1, r3, lsl #8
	.loc	2 84 38                         @ batchtest/cjpeg_wrbmp/input.c:84:38
	strb	r0, [r1, r2]
	.loc	2 84 7                          @ batchtest/cjpeg_wrbmp/input.c:84:7
	b	.LBB7_5
.LBB7_5:                                @ %for.inc
                                        @   in Loop: Header=BB7_3 Depth=2
	.loc	2 83 26 is_stmt 1               @ batchtest/cjpeg_wrbmp/input.c:83:26
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	2 83 5 is_stmt 0                @ batchtest/cjpeg_wrbmp/input.c:83:5
	b	.LBB7_3
.LBB7_6:                                @ %for.end
                                        @   in Loop: Header=BB7_1 Depth=1
	.loc	2 85 3 is_stmt 1                @ batchtest/cjpeg_wrbmp/input.c:85:3
	b	.LBB7_7
.LBB7_7:                                @ %for.inc7
                                        @   in Loop: Header=BB7_1 Depth=1
	.loc	2 81 24                         @ batchtest/cjpeg_wrbmp/input.c:81:24
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	2 81 3 is_stmt 0                @ batchtest/cjpeg_wrbmp/input.c:81:3
	b	.LBB7_1
.LBB7_8:                                @ %for.end9
	.loc	2 86 1 is_stmt 1                @ batchtest/cjpeg_wrbmp/input.c:86:1
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp13:
	.p2align	2
@ %bb.9:
	.loc	2 0 1 is_stmt 0                 @ batchtest/cjpeg_wrbmp/input.c:0:1
.LCPI7_0:
	.long	.L__const.cjpeg_wrbmp_initInput.tmp
.LCPI7_1:
	.long	cjpeg_wrbmp_colormap
.Lfunc_end7:
	.size	cjpeg_wrbmp_initInput, .Lfunc_end7-cjpeg_wrbmp_initInput
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__absvdi2                       @ -- Begin function __absvdi2
	.p2align	2
	.type	__absvdi2,%function
	.code	32                              @ @__absvdi2
__absvdi2:
.Lfunc_begin8:
	.file	3 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../absvdi2.c" md5 0xf0fa545ed84eab29322431dd903e1bd2
	.loc	3 23 0 is_stmt 1                @ ../absvdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	mov	r2, r1
	str	r2, [sp]                        @ 4-byte Spill
	mov	r2, r0
	str	r2, [sp, #4]                    @ 4-byte Spill
.Ltmp14:
	.loc	3 25 11 prologue_end            @ ../absvdi2.c:25:11
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	3 25 9 is_stmt 0                @ ../absvdi2.c:25:9
	cmp	r0, #0
	bne	.LBB8_2
	b	.LBB8_1
.LBB8_1:                                @ %if.then
	.loc	3 26 9 is_stmt 1                @ ../absvdi2.c:26:9
	ldr	r0, .LCPI8_0
	ldr	r2, .LCPI8_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.LBB8_2:                                @ %if.end
	.loc	3 28 20                         @ ../absvdi2.c:28:20
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adds	r0, r0, r2, asr #31
	eor	r0, r0, r2, asr #31
	adc	r1, r2, r2, asr #31
	eor	r1, r1, r2, asr #31
	.loc	3 28 5 is_stmt 0                @ ../absvdi2.c:28:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp15:
	.p2align	2
@ %bb.3:
	.loc	3 0 5                           @ ../absvdi2.c:0:5
.LCPI8_0:
	.long	.L.str
.LCPI8_1:
	.long	.L__func__.__absvdi2
.Lfunc_end8:
	.size	__absvdi2, .Lfunc_end8-__absvdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.hidden	compilerrt_abort_impl           @ -- Begin function compilerrt_abort_impl
	.weak	compilerrt_abort_impl
	.p2align	2
	.type	compilerrt_abort_impl,%function
	.code	32                              @ @compilerrt_abort_impl
compilerrt_abort_impl:
.Lfunc_begin9:
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
.Lfunc_end9:
	.size	compilerrt_abort_impl, .Lfunc_end9-compilerrt_abort_impl
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__absvsi2                       @ -- Begin function __absvsi2
	.p2align	2
	.type	__absvsi2,%function
	.code	32                              @ @__absvsi2
__absvsi2:
.Lfunc_begin10:
	.file	4 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../absvsi2.c" md5 0x4c623fefc2c7ed3929c6e73514b667d1
	.loc	4 23 0 is_stmt 1                @ ../absvsi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp16:
	.loc	4 25 9 prologue_end             @ ../absvsi2.c:25:9
	cmp	r0, #-2147483648
	bne	.LBB10_2
	b	.LBB10_1
.LBB10_1:                               @ %if.then
	.loc	4 26 9                          @ ../absvsi2.c:26:9
	ldr	r0, .LCPI10_0
	ldr	r2, .LCPI10_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.LBB10_2:                               @ %if.end
	.loc	4 28 20                         @ ../absvsi2.c:28:20
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	bpl	.LBB10_4
@ %bb.3:                                @ %if.end
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	rsb	r0, r0, #0
	str	r0, [sp]                        @ 4-byte Spill
.LBB10_4:                               @ %if.end
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	4 28 5 is_stmt 0                @ ../absvsi2.c:28:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp17:
	.p2align	2
@ %bb.5:
	.loc	4 0 5                           @ ../absvsi2.c:0:5
.LCPI10_0:
	.long	.L.str.1
.LCPI10_1:
	.long	.L__func__.__absvsi2
.Lfunc_end10:
	.size	__absvsi2, .Lfunc_end10-__absvsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__addvdi3                       @ -- Begin function __addvdi3
	.p2align	2
	.type	__addvdi3,%function
	.code	32                              @ @__addvdi3
__addvdi3:
.Lfunc_begin11:
	.file	5 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../addvdi3.c" md5 0xaa240ee8ce7c28b2c3bcec10a7603d3f
	.loc	5 23 0 is_stmt 1                @ ../addvdi3.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #16
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
	mov	r12, r1
	str	r12, [sp]                       @ 4-byte Spill
	mov	r12, r0
	str	r12, [sp, #4]                   @ 4-byte Spill
.Ltmp18:
	.loc	5 24 27 prologue_end            @ ../addvdi3.c:24:27
	adds	r0, r0, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	adc	r0, r1, r3
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	5 25 9                          @ ../addvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB11_4
	b	.LBB11_1
.LBB11_1:                               @ %if.then
	.loc	5 27 15                         @ ../addvdi3.c:27:15
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	5 27 13 is_stmt 0               @ ../addvdi3.c:27:13
	bge	.LBB11_3
	b	.LBB11_2
.LBB11_2:                               @ %if.then2
	.loc	5 28 13 is_stmt 1               @ ../addvdi3.c:28:13
	ldr	r0, .LCPI11_0
	ldr	r2, .LCPI11_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB11_3:                               @ %if.end
	.loc	5 29 5                          @ ../addvdi3.c:29:5
	b	.LBB11_7
.LBB11_4:                               @ %if.else
	.loc	5 32 15                         @ ../addvdi3.c:32:15
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	5 32 13 is_stmt 0               @ ../addvdi3.c:32:13
	blt	.LBB11_6
	b	.LBB11_5
.LBB11_5:                               @ %if.then4
	.loc	5 33 13 is_stmt 1               @ ../addvdi3.c:33:13
	ldr	r0, .LCPI11_0
	ldr	r2, .LCPI11_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB11_6:                               @ %if.end5
	.loc	5 0 13 is_stmt 0                @ ../addvdi3.c:0:13
	b	.LBB11_7
.LBB11_7:                               @ %if.end6
	.loc	5 35 5 is_stmt 1                @ ../addvdi3.c:35:5
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp19:
	.p2align	2
@ %bb.8:
	.loc	5 0 5 is_stmt 0                 @ ../addvdi3.c:0:5
.LCPI11_0:
	.long	.L.str.2
.LCPI11_1:
	.long	.L__func__.__addvdi3
.Lfunc_end11:
	.size	__addvdi3, .Lfunc_end11-__addvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__addvsi3                       @ -- Begin function __addvsi3
	.p2align	2
	.type	__addvsi3,%function
	.code	32                              @ @__addvsi3
__addvsi3:
.Lfunc_begin12:
	.file	6 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../addvsi3.c" md5 0x6cd4d40cc00928f1aaf6f29e299078cd
	.loc	6 23 0 is_stmt 1                @ ../addvsi3.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	str	r0, [sp]                        @ 4-byte Spill
.Ltmp20:
	.loc	6 24 27 prologue_end            @ ../addvsi3.c:24:27
	add	r0, r0, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	6 25 9                          @ ../addvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB12_4
	b	.LBB12_1
.LBB12_1:                               @ %if.then
	.loc	6 27 13                         @ ../addvsi3.c:27:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	bge	.LBB12_3
	b	.LBB12_2
.LBB12_2:                               @ %if.then2
	.loc	6 28 13                         @ ../addvsi3.c:28:13
	ldr	r0, .LCPI12_0
	ldr	r2, .LCPI12_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB12_3:                               @ %if.end
	.loc	6 29 5                          @ ../addvsi3.c:29:5
	b	.LBB12_7
.LBB12_4:                               @ %if.else
	.loc	6 32 13                         @ ../addvsi3.c:32:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	blt	.LBB12_6
	b	.LBB12_5
.LBB12_5:                               @ %if.then4
	.loc	6 33 13                         @ ../addvsi3.c:33:13
	ldr	r0, .LCPI12_0
	ldr	r2, .LCPI12_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB12_6:                               @ %if.end5
	.loc	6 0 13 is_stmt 0                @ ../addvsi3.c:0:13
	b	.LBB12_7
.LBB12_7:                               @ %if.end6
	.loc	6 35 5 is_stmt 1                @ ../addvsi3.c:35:5
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp21:
	.p2align	2
@ %bb.8:
	.loc	6 0 5 is_stmt 0                 @ ../addvsi3.c:0:5
.LCPI12_0:
	.long	.L.str.3
.LCPI12_1:
	.long	.L__func__.__addvsi3
.Lfunc_end12:
	.size	__addvsi3, .Lfunc_end12-__addvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ashldi3                       @ -- Begin function __ashldi3
	.p2align	2
	.type	__ashldi3,%function
	.code	32                              @ @__ashldi3
__ashldi3:
.Lfunc_begin13:
	.file	7 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ashldi3.c" md5 0xae5236ddcefaf3e5efc4feba69d334b1
	.loc	7 25 0 is_stmt 1                @ ../ashldi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #40
	.cfi_def_cfa_offset 40
	str	r2, [sp, #12]                   @ 4-byte Spill
	mov	r3, r1
	str	r3, [sp, #16]                   @ 4-byte Spill
	mov	r3, r0
	str	r3, [sp, #20]                   @ 4-byte Spill
.Ltmp22:
	.loc	7 29 15 prologue_end            @ ../ashldi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	7 30 9                          @ ../ashldi3.c:30:9
	tst	r2, #32
	beq	.LBB13_2
	b	.LBB13_1
.LBB13_1:                               @ %if.then
	.loc	7 0 9 is_stmt 0                 @ ../ashldi3.c:0:9
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mov	r0, #0
	.loc	7 32 22 is_stmt 1               @ ../ashldi3.c:32:22
	str	r0, [sp, #24]
	.loc	7 33 33                         @ ../ashldi3.c:33:33
	ldr	r0, [sp, #32]
	.loc	7 33 43 is_stmt 0               @ ../ashldi3.c:33:43
	sub	r1, r1, #32
	.loc	7 33 37                         @ ../ashldi3.c:33:37
	lsl	r0, r0, r1
	.loc	7 33 23                         @ ../ashldi3.c:33:23
	str	r0, [sp, #28]
	.loc	7 34 5 is_stmt 1                @ ../ashldi3.c:34:5
	b	.LBB13_5
.LBB13_2:                               @ %if.else
	.loc	7 37 13                         @ ../ashldi3.c:37:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB13_4
	b	.LBB13_3
.LBB13_3:                               @ %if.then4
	.loc	7 0 13 is_stmt 0                @ ../ashldi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	7 38 13 is_stmt 1               @ ../ashldi3.c:38:13
	b	.LBB13_6
.LBB13_4:                               @ %if.end
	.loc	7 39 33                         @ ../ashldi3.c:39:33
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #32]
	.loc	7 39 37 is_stmt 0               @ ../ashldi3.c:39:37
	lsl	r0, r0, r2
	.loc	7 39 23                         @ ../ashldi3.c:39:23
	str	r0, [sp, #24]
	.loc	7 40 56 is_stmt 1               @ ../ashldi3.c:40:56
	ldr	r1, [sp, #32]
	.loc	7 40 34 is_stmt 0               @ ../ashldi3.c:40:34
	ldr	r0, [sp, #36]
	.loc	7 40 39                         @ ../ashldi3.c:40:39
	lsl	r0, r0, r2
	.loc	7 40 77                         @ ../ashldi3.c:40:77
	rsb	r2, r2, #32
	.loc	7 40 45                         @ ../ashldi3.c:40:45
	orr	r0, r0, r1, lsr r2
	.loc	7 40 23                         @ ../ashldi3.c:40:23
	str	r0, [sp, #28]
	b	.LBB13_5
.LBB13_5:                               @ %if.end18
	.loc	7 42 19 is_stmt 1               @ ../ashldi3.c:42:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	7 42 5 is_stmt 0                @ ../ashldi3.c:42:5
	b	.LBB13_6
.LBB13_6:                               @ %return
	.loc	7 0 0                           @ ../ashldi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	7 43 1 is_stmt 1                @ ../ashldi3.c:43:1
	add	sp, sp, #40
	bx	lr
.Ltmp23:
.Lfunc_end13:
	.size	__ashldi3, .Lfunc_end13-__ashldi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ashrdi3                       @ -- Begin function __ashrdi3
	.p2align	2
	.type	__ashrdi3,%function
	.code	32                              @ @__ashrdi3
__ashrdi3:
.Lfunc_begin14:
	.file	8 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ashrdi3.c" md5 0xdf60b7a82095e7d7b5c11e1095a5679a
	.loc	8 25 0                          @ ../ashrdi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #40
	.cfi_def_cfa_offset 40
	str	r2, [sp, #12]                   @ 4-byte Spill
	mov	r3, r1
	str	r3, [sp, #16]                   @ 4-byte Spill
	mov	r3, r0
	str	r3, [sp, #20]                   @ 4-byte Spill
.Ltmp24:
	.loc	8 29 15 prologue_end            @ ../ashrdi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	8 30 9                          @ ../ashrdi3.c:30:9
	tst	r2, #32
	beq	.LBB14_2
	b	.LBB14_1
.LBB14_1:                               @ %if.then
	.loc	8 33 33                         @ ../ashrdi3.c:33:33
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #36]
	.loc	8 33 38 is_stmt 0               @ ../ashrdi3.c:33:38
	asr	r0, r0, #31
	.loc	8 33 23                         @ ../ashrdi3.c:33:23
	str	r0, [sp, #28]
	.loc	8 34 32 is_stmt 1               @ ../ashrdi3.c:34:32
	ldr	r0, [sp, #36]
	.loc	8 34 43 is_stmt 0               @ ../ashrdi3.c:34:43
	sub	r1, r1, #32
	.loc	8 34 37                         @ ../ashrdi3.c:34:37
	asr	r0, r0, r1
	.loc	8 34 22                         @ ../ashrdi3.c:34:22
	str	r0, [sp, #24]
	.loc	8 35 5 is_stmt 1                @ ../ashrdi3.c:35:5
	b	.LBB14_5
.LBB14_2:                               @ %if.else
	.loc	8 38 13                         @ ../ashrdi3.c:38:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB14_4
	b	.LBB14_3
.LBB14_3:                               @ %if.then7
	.loc	8 0 13 is_stmt 0                @ ../ashrdi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	8 39 13 is_stmt 1               @ ../ashrdi3.c:39:13
	b	.LBB14_6
.LBB14_4:                               @ %if.end
	.loc	8 40 34                         @ ../ashrdi3.c:40:34
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #36]
	.loc	8 40 39 is_stmt 0               @ ../ashrdi3.c:40:39
	asr	r0, r0, r2
	.loc	8 40 24                         @ ../ashrdi3.c:40:24
	str	r0, [sp, #28]
	.loc	8 41 72 is_stmt 1               @ ../ashrdi3.c:41:72
	ldr	r1, [sp, #32]
	.loc	8 41 33 is_stmt 0               @ ../ashrdi3.c:41:33
	ldr	r0, [sp, #36]
	.loc	8 41 55                         @ ../ashrdi3.c:41:55
	rsb	r3, r2, #32
	.loc	8 41 38                         @ ../ashrdi3.c:41:38
	lsl	r0, r0, r3
	.loc	8 41 61                         @ ../ashrdi3.c:41:61
	orr	r0, r0, r1, lsr r2
	.loc	8 41 22                         @ ../ashrdi3.c:41:22
	str	r0, [sp, #24]
	b	.LBB14_5
.LBB14_5:                               @ %if.end21
	.loc	8 43 19 is_stmt 1               @ ../ashrdi3.c:43:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	8 43 5 is_stmt 0                @ ../ashrdi3.c:43:5
	b	.LBB14_6
.LBB14_6:                               @ %return
	.loc	8 0 0                           @ ../ashrdi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	8 44 1 is_stmt 1                @ ../ashrdi3.c:44:1
	add	sp, sp, #40
	bx	lr
.Ltmp25:
.Lfunc_end14:
	.size	__ashrdi3, .Lfunc_end14-__ashrdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__clzdi2                        @ -- Begin function __clzdi2
	.p2align	2
	.type	__clzdi2,%function
	.code	32                              @ @__clzdi2
__clzdi2:
.Lfunc_begin15:
	.file	9 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../clzdi2.c" md5 0x901c40e0319a50689080965b20695c3e
	.loc	9 23 0                          @ ../clzdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp26:
	.loc	9 25 11 prologue_end            @ ../clzdi2.c:25:11
	str	r1, [sp, #4]
	str	r0, [sp]
	.loc	9 27 49                         @ ../clzdi2.c:27:49
	ldr	r1, [sp]
	.loc	9 26 28                         @ ../clzdi2.c:26:28
	ldr	r2, [sp, #4]
	.loc	9 27 42                         @ ../clzdi2.c:27:42
	cmp	r2, #0
	mov	r0, r2
	moveq	r0, r1
	.loc	9 27 12 is_stmt 0               @ ../clzdi2.c:27:12
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r1, .LCPI15_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r3, .LCPI15_1
	and	r1, r3, r0, lsr #2
	and	r0, r0, r3
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI15_2
	and	r0, r0, r1
	ldr	r1, .LCPI15_3
	mul	r3, r0, r1
	lsr	r0, r3, #24
	mov	r1, #32
	.loc	9 27 59                         @ ../clzdi2.c:27:59
	add	r1, r1, r3, lsr #24
	cmp	r2, #0
	moveq	r0, r1
	.loc	9 27 5                          @ ../clzdi2.c:27:5
	add	sp, sp, #8
	bx	lr
.Ltmp27:
	.p2align	2
@ %bb.1:
	.loc	9 0 5                           @ ../clzdi2.c:0:5
.LCPI15_0:
	.long	1431655765                      @ 0x55555555
.LCPI15_1:
	.long	858993459                       @ 0x33333333
.LCPI15_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI15_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end15:
	.size	__clzdi2, .Lfunc_end15-__clzdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__clzsi2                        @ -- Begin function __clzsi2
	.p2align	2
	.type	__clzsi2,%function
	.code	32                              @ @__clzsi2
__clzsi2:
.Lfunc_begin16:
	.file	10 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../clzsi2.c" md5 0x9b0156c55102d3143e17bdf85bafbc30
	.loc	10 23 0 is_stmt 1               @ ../clzsi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	mov	r3, r0
	mov	r2, #0
	cmp	r3, #65536
	movlo	r2, #1
.Ltmp28:
	.loc	10 25 40 prologue_end           @ ../clzsi2.c:25:40
	lsl	r0, r2, #4
	mov	r1, #16
	.loc	10 26 14                        @ ../clzsi2.c:26:14
	sub	r12, r1, r2, lsl #4
	.loc	10 26 7 is_stmt 0               @ ../clzsi2.c:26:7
	lsr	r2, r3, r12
	mov	r1, #65280
	.loc	10 29 13 is_stmt 1              @ ../clzsi2.c:29:13
	and	r1, r1, r3, lsr r12
	rsbs	r3, r1, #0
	adc	r1, r1, r3
	mov	r3, #8
	.loc	10 30 13                        @ ../clzsi2.c:30:13
	sub	r12, r3, r1, lsl #3
	.loc	10 30 7 is_stmt 0               @ ../clzsi2.c:30:7
	lsr	r3, r2, r12
	.loc	10 31 7 is_stmt 1               @ ../clzsi2.c:31:7
	orr	r0, r0, r1, lsl #3
	mov	r1, #240
	.loc	10 33 13                        @ ../clzsi2.c:33:13
	and	r1, r1, r2, lsr r12
	rsbs	r2, r1, #0
	adc	r1, r1, r2
	mov	r2, #4
	.loc	10 34 13                        @ ../clzsi2.c:34:13
	sub	r12, r2, r1, lsl #2
	.loc	10 34 7 is_stmt 0               @ ../clzsi2.c:34:7
	lsr	r2, r3, r12
	.loc	10 35 7 is_stmt 1               @ ../clzsi2.c:35:7
	orr	r0, r0, r1, lsl #2
	mov	r1, #12
	.loc	10 37 13                        @ ../clzsi2.c:37:13
	and	r1, r1, r3, lsr r12
	rsbs	r3, r1, #0
	adc	lr, r1, r3
	mov	r1, #2
	.loc	10 38 13                        @ ../clzsi2.c:38:13
	sub	r12, r1, lr, lsl #1
	.loc	10 38 7 is_stmt 0               @ ../clzsi2.c:38:7
	lsr	r3, r2, r12
	.loc	10 39 7 is_stmt 1               @ ../clzsi2.c:39:7
	orr	r0, r0, lr, lsl #1
	.loc	10 52 20                        @ ../clzsi2.c:52:20
	sub	r1, r1, r2, lsr r12
	mvn	r2, #1
	.loc	10 52 37 is_stmt 0              @ ../clzsi2.c:52:37
	orr	r2, r2, r3, lsr #1
	add	r2, r2, #1
	.loc	10 52 25                        @ ../clzsi2.c:52:25
	and	r1, r1, r2
	.loc	10 52 14                        @ ../clzsi2.c:52:14
	add	r0, r0, r1
	.loc	10 52 5                         @ ../clzsi2.c:52:5
	pop	{r11, lr}
	bx	lr
.Ltmp29:
.Lfunc_end16:
	.size	__clzsi2, .Lfunc_end16-__clzsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__cmpdi2                        @ -- Begin function __cmpdi2
	.p2align	2
	.type	__cmpdi2,%function
	.code	32                              @ @__cmpdi2
__cmpdi2:
.Lfunc_begin17:
	.file	11 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../cmpdi2.c" md5 0x79ec8a4b383c8374d228cd0869637319
	.loc	11 24 0 is_stmt 1               @ ../cmpdi2.c:24:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp30:
	.loc	11 26 11 prologue_end           @ ../cmpdi2.c:26:11
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	.loc	11 28 11                        @ ../cmpdi2.c:28:11
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	.loc	11 29 13                        @ ../cmpdi2.c:29:13
	ldr	r0, [sp, #20]
	.loc	11 29 24 is_stmt 0              @ ../cmpdi2.c:29:24
	ldr	r1, [sp, #12]
	.loc	11 29 9                         @ ../cmpdi2.c:29:9
	cmp	r0, r1
	bge	.LBB17_2
	b	.LBB17_1
.LBB17_1:                               @ %if.then
	.loc	11 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	11 30 9 is_stmt 1               @ ../cmpdi2.c:30:9
	b	.LBB17_9
.LBB17_2:                               @ %if.end
	.loc	11 31 13                        @ ../cmpdi2.c:31:13
	ldr	r0, [sp, #20]
	.loc	11 31 24 is_stmt 0              @ ../cmpdi2.c:31:24
	ldr	r1, [sp, #12]
	.loc	11 31 9                         @ ../cmpdi2.c:31:9
	cmp	r0, r1
	ble	.LBB17_4
	b	.LBB17_3
.LBB17_3:                               @ %if.then9
	.loc	11 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	11 32 9 is_stmt 1               @ ../cmpdi2.c:32:9
	b	.LBB17_9
.LBB17_4:                               @ %if.end10
	.loc	11 33 13                        @ ../cmpdi2.c:33:13
	ldr	r0, [sp, #16]
	.loc	11 33 23 is_stmt 0              @ ../cmpdi2.c:33:23
	ldr	r1, [sp, #8]
	.loc	11 33 9                         @ ../cmpdi2.c:33:9
	cmp	r0, r1
	bhs	.LBB17_6
	b	.LBB17_5
.LBB17_5:                               @ %if.then15
	.loc	11 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	11 34 9 is_stmt 1               @ ../cmpdi2.c:34:9
	b	.LBB17_9
.LBB17_6:                               @ %if.end16
	.loc	11 35 13                        @ ../cmpdi2.c:35:13
	ldr	r0, [sp, #16]
	.loc	11 35 23 is_stmt 0              @ ../cmpdi2.c:35:23
	ldr	r1, [sp, #8]
	.loc	11 35 9                         @ ../cmpdi2.c:35:9
	cmp	r0, r1
	bls	.LBB17_8
	b	.LBB17_7
.LBB17_7:                               @ %if.then22
	.loc	11 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	11 36 9 is_stmt 1               @ ../cmpdi2.c:36:9
	b	.LBB17_9
.LBB17_8:                               @ %if.end23
	.loc	11 0 9 is_stmt 0                @ ../cmpdi2.c:0:9
	mov	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	11 37 5 is_stmt 1               @ ../cmpdi2.c:37:5
	b	.LBB17_9
.LBB17_9:                               @ %return
	.loc	11 0 0 is_stmt 0                @ ../cmpdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	11 38 1 is_stmt 1               @ ../cmpdi2.c:38:1
	add	sp, sp, #24
	bx	lr
.Ltmp31:
.Lfunc_end17:
	.size	__cmpdi2, .Lfunc_end17-__cmpdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__aeabi_lcmp                    @ -- Begin function __aeabi_lcmp
	.p2align	2
	.type	__aeabi_lcmp,%function
	.code	32                              @ @__aeabi_lcmp
__aeabi_lcmp:
.Lfunc_begin18:
	.loc	11 47 0                         @ ../cmpdi2.c:47:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp32:
	.loc	11 48 9 prologue_end            @ ../cmpdi2.c:48:9
	bl	__cmpdi2
	.loc	11 48 24 is_stmt 0              @ ../cmpdi2.c:48:24
	sub	r0, r0, #1
	.loc	11 48 2                         @ ../cmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp33:
.Lfunc_end18:
	.size	__aeabi_lcmp, .Lfunc_end18-__aeabi_lcmp
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ctzdi2                        @ -- Begin function __ctzdi2
	.p2align	2
	.type	__ctzdi2,%function
	.code	32                              @ @__ctzdi2
__ctzdi2:
.Lfunc_begin19:
	.file	12 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ctzdi2.c" md5 0x0415a3f61808ca646548bc24b48a844a
	.loc	12 23 0 is_stmt 1               @ ../ctzdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp34:
	.loc	12 25 11 prologue_end           @ ../ctzdi2.c:25:11
	str	r1, [sp, #4]
	str	r0, [sp]
	.loc	12 26 28                        @ ../ctzdi2.c:26:28
	ldr	r2, [sp]
	.loc	12 27 31                        @ ../ctzdi2.c:27:31
	ldr	r0, [sp, #4]
	.loc	12 27 41 is_stmt 0              @ ../ctzdi2.c:27:41
	cmp	r2, #0
	mov	r1, r2
	moveq	r1, r0
	.loc	12 27 12                        @ ../ctzdi2.c:27:12
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI19_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r3, .LCPI19_1
	and	r1, r3, r0, lsr #2
	and	r0, r0, r3
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI19_2
	and	r0, r0, r1
	ldr	r1, .LCPI19_3
	mul	r3, r0, r1
	lsr	r0, r3, #24
	mov	r1, #32
	.loc	12 27 59                        @ ../ctzdi2.c:27:59
	add	r1, r1, r3, lsr #24
	cmp	r2, #0
	moveq	r0, r1
	.loc	12 27 5                         @ ../ctzdi2.c:27:5
	add	sp, sp, #8
	bx	lr
.Ltmp35:
	.p2align	2
@ %bb.1:
	.loc	12 0 5                          @ ../ctzdi2.c:0:5
.LCPI19_0:
	.long	1431655765                      @ 0x55555555
.LCPI19_1:
	.long	858993459                       @ 0x33333333
.LCPI19_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI19_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end19:
	.size	__ctzdi2, .Lfunc_end19-__ctzdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ctzsi2                        @ -- Begin function __ctzsi2
	.p2align	2
	.type	__ctzsi2,%function
	.code	32                              @ @__ctzsi2
__ctzsi2:
.Lfunc_begin20:
	.file	13 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ctzsi2.c" md5 0x0372a2c6647eddaa73c0b61d8d03c3b1
	.loc	13 23 0 is_stmt 1               @ ../ctzsi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r2, r0
	mov	r0, #255
	orr	r0, r0, #65280
.Ltmp36:
	.loc	13 25 20 prologue_end           @ ../ctzsi2.c:25:20
	and	r0, r2, r0
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	.loc	13 25 40 is_stmt 0              @ ../ctzsi2.c:25:40
	lsl	r0, r0, #4
	.loc	13 26 7 is_stmt 1               @ ../ctzsi2.c:26:7
	lsr	r3, r2, r0
	mov	r1, #255
	.loc	13 29 13                        @ ../ctzsi2.c:29:13
	and	r1, r1, r2, lsr r0
	rsbs	r2, r1, #0
	adc	r1, r1, r2
	.loc	13 29 29 is_stmt 0              @ ../ctzsi2.c:29:29
	lsl	r12, r1, #3
	.loc	13 30 7 is_stmt 1               @ ../ctzsi2.c:30:7
	lsr	r2, r3, r12
	.loc	13 31 7                         @ ../ctzsi2.c:31:7
	orr	r0, r0, r1, lsl #3
	mov	r1, #15
	.loc	13 33 13                        @ ../ctzsi2.c:33:13
	and	r1, r1, r3, lsr r12
	rsbs	r3, r1, #0
	adc	r1, r1, r3
	.loc	13 33 27 is_stmt 0              @ ../ctzsi2.c:33:27
	lsl	r12, r1, #2
	.loc	13 34 7 is_stmt 1               @ ../ctzsi2.c:34:7
	lsr	r3, r2, r12
	.loc	13 35 7                         @ ../ctzsi2.c:35:7
	orr	r0, r0, r1, lsl #2
	mov	r1, #3
	.loc	13 37 13                        @ ../ctzsi2.c:37:13
	and	r1, r1, r2, lsr r12
	rsbs	r2, r1, #0
	adc	r1, r1, r2
	.loc	13 37 26 is_stmt 0              @ ../ctzsi2.c:37:26
	lsl	r12, r1, #1
	.loc	13 38 7 is_stmt 1               @ ../ctzsi2.c:38:7
	lsr	r2, r3, r12
	.loc	13 40 7                         @ ../ctzsi2.c:40:7
	orr	r0, r0, r1, lsl #1
	mov	r1, #1
	.loc	13 56 25                        @ ../ctzsi2.c:56:25
	and	r1, r1, r2, lsr #1
	.loc	13 56 20 is_stmt 0              @ ../ctzsi2.c:56:20
	rsb	r1, r1, #2
	mvn	r2, #1
	.loc	13 56 44                        @ ../ctzsi2.c:56:44
	orr	r2, r2, r3, lsr r12
	add	r2, r2, #1
	.loc	13 56 32                        @ ../ctzsi2.c:56:32
	and	r1, r1, r2
	.loc	13 56 14                        @ ../ctzsi2.c:56:14
	add	r0, r0, r1
	.loc	13 56 5                         @ ../ctzsi2.c:56:5
	bx	lr
.Ltmp37:
.Lfunc_end20:
	.size	__ctzsi2, .Lfunc_end20-__ctzsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divdi3                        @ -- Begin function __divdi3
	.p2align	2
	.type	__divdi3,%function
	.code	32                              @ @__divdi3
__divdi3:
.Lfunc_begin21:
	.file	14 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divdi3.c" md5 0x281227589e0794a81d7211e4ee4a402c
	.loc	14 21 0 is_stmt 1               @ ../divdi3.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	mov	lr, r3
	mov	r3, r1
                                        @ kill: def $r1 killed $lr
                                        @ kill: def $r1 killed $r2
                                        @ kill: def $r1 killed $r3
                                        @ kill: def $r1 killed $r0
.Ltmp38:
	.loc	14 23 20 prologue_end           @ ../divdi3.c:23:20
	asr	r12, r3, #31
	.loc	14 25 12                        @ ../divdi3.c:25:12
	eor	r0, r0, r3, asr #31
	eor	r1, r3, r3, asr #31
	.loc	14 25 19 is_stmt 0              @ ../divdi3.c:25:19
	subs	r0, r0, r3, asr #31
	sbc	r1, r1, r3, asr #31
	.loc	14 26 12 is_stmt 1              @ ../divdi3.c:26:12
	eor	r2, r2, lr, asr #31
	eor	r3, lr, lr, asr #31
	.loc	14 26 19 is_stmt 0              @ ../divdi3.c:26:19
	subs	r2, r2, lr, asr #31
	sbc	r3, r3, lr, asr #31
	.loc	14 27 9 is_stmt 1               @ ../divdi3.c:27:9
	eor	r12, r12, lr, asr #31
	str	r12, [sp, #4]                   @ 4-byte Spill
	.loc	14 28 13                        @ ../divdi3.c:28:13
	mov	lr, sp
	mov	r12, #0
	str	r12, [lr]
	bl	__udivmoddi4
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	.loc	14 28 44 is_stmt 0              @ ../divdi3.c:28:44
	eor	r1, r1, r2
	eor	r0, r0, r2
	.loc	14 28 51                        @ ../divdi3.c:28:51
	subs	r0, r0, r2
	sbc	r1, r1, r2
	.loc	14 28 5                         @ ../divdi3.c:28:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp39:
.Lfunc_end21:
	.size	__divdi3, .Lfunc_end21-__divdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivmoddi4                    @ -- Begin function __udivmoddi4
	.p2align	2
	.type	__udivmoddi4,%function
	.code	32                              @ @__udivmoddi4
__udivmoddi4:
.Lfunc_begin22:
	.file	15 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivmoddi4.c" md5 0xeca4b147be989cda91330ba5b56ed879
	.loc	15 25 0 is_stmt 1               @ ../udivmoddi4.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #88
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	ldr	r12, [r11, #8]
	str	r12, [r11, #-36]                @ 4-byte Spill
.Ltmp40:
	.loc	15 29 11 prologue_end           @ ../udivmoddi4.c:29:11
	str	r1, [r11, #-4]
	str	r0, [r11, #-8]
	.loc	15 31 11                        @ ../udivmoddi4.c:31:11
	str	r3, [r11, #-12]
	str	r2, [r11, #-16]
	.loc	15 36 13                        @ ../udivmoddi4.c:36:13
	ldr	r0, [r11, #-4]
	.loc	15 36 9 is_stmt 0               @ ../udivmoddi4.c:36:9
	cmp	r0, #0
	bne	.LBB22_8
	b	.LBB22_1
.LBB22_1:                               @ %if.then
	.loc	15 38 17 is_stmt 1              @ ../udivmoddi4.c:38:17
	ldr	r0, [r11, #-12]
	.loc	15 38 13 is_stmt 0              @ ../udivmoddi4.c:38:13
	cmp	r0, #0
	bne	.LBB22_5
	b	.LBB22_2
.LBB22_2:                               @ %if.then5
	.loc	15 44 17 is_stmt 1              @ ../udivmoddi4.c:44:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB22_4
	b	.LBB22_3
.LBB22_3:                               @ %if.then6
	.loc	15 45 28                        @ ../udivmoddi4.c:45:28
	ldr	r0, [r11, #-8]
	.loc	15 45 38 is_stmt 0              @ ../udivmoddi4.c:45:38
	ldr	r1, [r11, #-16]
	.loc	15 45 32                        @ ../udivmoddi4.c:45:32
	bl	__umodsi3
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	mov	r2, #0
	.loc	15 45 22                        @ ../udivmoddi4.c:45:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	15 45 17                        @ ../udivmoddi4.c:45:17
	b	.LBB22_4
.LBB22_4:                               @ %if.end
	.loc	15 46 24 is_stmt 1              @ ../udivmoddi4.c:46:24
	ldr	r0, [r11, #-8]
	.loc	15 46 34 is_stmt 0              @ ../udivmoddi4.c:46:34
	ldr	r1, [r11, #-16]
	.loc	15 46 28                        @ ../udivmoddi4.c:46:28
	bl	__udivsi3
	mov	r1, r0
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	15 46 13                        @ ../udivmoddi4.c:46:13
	b	.LBB22_56
.LBB22_5:                               @ %if.end16
	.loc	15 52 13 is_stmt 1              @ ../udivmoddi4.c:52:13
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB22_7
	b	.LBB22_6
.LBB22_6:                               @ %if.then18
	.loc	15 53 24                        @ ../udivmoddi4.c:53:24
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	mov	r2, #0
	.loc	15 53 18 is_stmt 0              @ ../udivmoddi4.c:53:18
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	15 53 13                        @ ../udivmoddi4.c:53:13
	b	.LBB22_7
.LBB22_7:                               @ %if.end22
	.loc	15 0 13                         @ ../udivmoddi4.c:0:13
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	15 54 9 is_stmt 1               @ ../udivmoddi4.c:54:9
	b	.LBB22_56
.LBB22_8:                               @ %if.end23
	.loc	15 57 13                        @ ../udivmoddi4.c:57:13
	ldr	r0, [r11, #-16]
	.loc	15 57 9 is_stmt 0               @ ../udivmoddi4.c:57:9
	cmp	r0, #0
	bne	.LBB22_26
	b	.LBB22_9
.LBB22_9:                               @ %if.then28
	.loc	15 59 17 is_stmt 1              @ ../udivmoddi4.c:59:17
	ldr	r0, [r11, #-12]
	.loc	15 59 13 is_stmt 0              @ ../udivmoddi4.c:59:13
	cmp	r0, #0
	bne	.LBB22_13
	b	.LBB22_10
.LBB22_10:                              @ %if.then33
	.loc	15 65 17 is_stmt 1              @ ../udivmoddi4.c:65:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB22_12
	b	.LBB22_11
.LBB22_11:                              @ %if.then35
	.loc	15 66 28                        @ ../udivmoddi4.c:66:28
	ldr	r0, [r11, #-4]
	.loc	15 66 39 is_stmt 0              @ ../udivmoddi4.c:66:39
	ldr	r1, [r11, #-16]
	.loc	15 66 33                        @ ../udivmoddi4.c:66:33
	bl	__umodsi3
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	mov	r2, #0
	.loc	15 66 22                        @ ../udivmoddi4.c:66:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	15 66 17                        @ ../udivmoddi4.c:66:17
	b	.LBB22_12
.LBB22_12:                              @ %if.end42
	.loc	15 67 24 is_stmt 1              @ ../udivmoddi4.c:67:24
	ldr	r0, [r11, #-4]
	.loc	15 67 35 is_stmt 0              @ ../udivmoddi4.c:67:35
	ldr	r1, [r11, #-16]
	.loc	15 67 29                        @ ../udivmoddi4.c:67:29
	bl	__udivsi3
	mov	r1, r0
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	15 67 13                        @ ../udivmoddi4.c:67:13
	b	.LBB22_56
.LBB22_13:                              @ %if.end49
	.loc	15 70 17 is_stmt 1              @ ../udivmoddi4.c:70:17
	ldr	r0, [r11, #-8]
	.loc	15 70 13 is_stmt 0              @ ../udivmoddi4.c:70:13
	cmp	r0, #0
	bne	.LBB22_17
	b	.LBB22_14
.LBB22_14:                              @ %if.then54
	.loc	15 76 17 is_stmt 1              @ ../udivmoddi4.c:76:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB22_16
	b	.LBB22_15
.LBB22_15:                              @ %if.then56
	.loc	15 78 32                        @ ../udivmoddi4.c:78:32
	ldr	r0, [r11, #-4]
	.loc	15 78 43 is_stmt 0              @ ../udivmoddi4.c:78:43
	ldr	r1, [r11, #-12]
	.loc	15 78 37                        @ ../udivmoddi4.c:78:37
	bl	__umodsi3
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	.loc	15 78 26                        @ ../udivmoddi4.c:78:26
	str	r0, [r11, #-28]
	mov	r0, #0
	.loc	15 79 25 is_stmt 1              @ ../udivmoddi4.c:79:25
	str	r0, [r11, #-32]
	.loc	15 80 26                        @ ../udivmoddi4.c:80:26
	ldr	r0, [r11, #-32]
	ldr	r2, [r11, #-28]
	.loc	15 80 22 is_stmt 0              @ ../udivmoddi4.c:80:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	15 81 13 is_stmt 1              @ ../udivmoddi4.c:81:13
	b	.LBB22_16
.LBB22_16:                              @ %if.end67
	.loc	15 82 24                        @ ../udivmoddi4.c:82:24
	ldr	r0, [r11, #-4]
	.loc	15 82 35 is_stmt 0              @ ../udivmoddi4.c:82:35
	ldr	r1, [r11, #-12]
	.loc	15 82 29                        @ ../udivmoddi4.c:82:29
	bl	__udivsi3
	mov	r1, r0
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	15 82 13                        @ ../udivmoddi4.c:82:13
	b	.LBB22_56
.LBB22_17:                              @ %if.end74
	.loc	15 88 18 is_stmt 1              @ ../udivmoddi4.c:88:18
	ldr	r0, [r11, #-12]
	.loc	15 88 35 is_stmt 0              @ ../udivmoddi4.c:88:35
	sub	r1, r0, #1
	.loc	15 88 13                        @ ../udivmoddi4.c:88:13
	tst	r0, r1
	bne	.LBB22_21
	b	.LBB22_18
.LBB22_18:                              @ %if.then81
	.loc	15 90 17 is_stmt 1              @ ../udivmoddi4.c:90:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB22_20
	b	.LBB22_19
.LBB22_19:                              @ %if.then83
	.loc	15 92 31                        @ ../udivmoddi4.c:92:31
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	.loc	15 92 25 is_stmt 0              @ ../udivmoddi4.c:92:25
	str	r0, [r11, #-32]
	.loc	15 93 32 is_stmt 1              @ ../udivmoddi4.c:93:32
	ldr	r0, [r11, #-4]
	.loc	15 93 44 is_stmt 0              @ ../udivmoddi4.c:93:44
	ldr	r2, [r11, #-12]
	.loc	15 93 49                        @ ../udivmoddi4.c:93:49
	sub	r2, r2, #1
	.loc	15 93 37                        @ ../udivmoddi4.c:93:37
	and	r0, r0, r2
	.loc	15 93 26                        @ ../udivmoddi4.c:93:26
	str	r0, [r11, #-28]
	.loc	15 94 26 is_stmt 1              @ ../udivmoddi4.c:94:26
	ldr	r0, [r11, #-32]
	ldr	r2, [r11, #-28]
	.loc	15 94 22 is_stmt 0              @ ../udivmoddi4.c:94:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	15 95 13 is_stmt 1              @ ../udivmoddi4.c:95:13
	b	.LBB22_20
.LBB22_20:                              @ %if.end97
	.loc	15 96 24                        @ ../udivmoddi4.c:96:24
	ldr	r0, [r11, #-4]
	.loc	15 96 50 is_stmt 0              @ ../udivmoddi4.c:96:50
	ldr	r2, [r11, #-12]
	.loc	15 96 32                        @ ../udivmoddi4.c:96:32
	sub	r1, r2, #1
	bic	r1, r1, r2
	ldr	r2, .LCPI22_0
	and	r2, r2, r1, lsr #1
	sub	r1, r1, r2
	ldr	r3, .LCPI22_1
	and	r2, r3, r1, lsr #2
	and	r1, r1, r3
	add	r1, r1, r2
	add	r1, r1, r1, lsr #4
	ldr	r2, .LCPI22_2
	and	r2, r1, r2
	ldr	r3, .LCPI22_3
	mul	r1, r2, r3
	lsr	r1, r1, #24
	.loc	15 96 29                        @ ../udivmoddi4.c:96:29
	lsr	r1, r0, r1
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	15 96 13                        @ ../udivmoddi4.c:96:13
	b	.LBB22_56
.LBB22_21:                              @ %if.end103
	.loc	15 102 32 is_stmt 1             @ ../udivmoddi4.c:102:32
	ldr	r0, [r11, #-12]
	.loc	15 102 14 is_stmt 0             @ ../udivmoddi4.c:102:14
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI22_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI22_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI22_2
	and	r1, r0, r2
	ldr	r3, .LCPI22_3
	mul	r0, r1, r3
	lsr	r0, r0, #24
	.loc	15 102 58                       @ ../udivmoddi4.c:102:58
	ldr	r1, [r11, #-4]
	.loc	15 102 40                       @ ../udivmoddi4.c:102:40
	orr	r1, r1, r1, lsr #1
	orr	r1, r1, r1, lsr #2
	orr	r1, r1, r1, lsr #4
	orr	r1, r1, r1, lsr #8
	orr	r1, r1, r1, lsr #16
	mvn	r1, r1
	and	r12, r12, r1, lsr #1
	sub	r1, r1, r12
	and	r12, lr, r1, lsr #2
	and	r1, r1, lr
	add	r1, r1, r12
	add	r1, r1, r1, lsr #4
	and	r2, r1, r2
	mul	r1, r2, r3
	.loc	15 102 38                       @ ../udivmoddi4.c:102:38
	sub	r0, r0, r1, lsr #24
	str	r0, [sp, #40]                   @ 4-byte Spill
	.loc	15 104 13 is_stmt 1             @ ../udivmoddi4.c:104:13
	cmp	r0, #31
	blo	.LBB22_25
	b	.LBB22_22
.LBB22_22:                              @ %if.then111
	.loc	15 106 16                       @ ../udivmoddi4.c:106:16
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB22_24
	b	.LBB22_23
.LBB22_23:                              @ %if.then113
	.loc	15 107 26                       @ ../udivmoddi4.c:107:26
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldr	r2, [r11, #-4]
	.loc	15 107 22 is_stmt 0             @ ../udivmoddi4.c:107:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	15 107 17                       @ ../udivmoddi4.c:107:17
	b	.LBB22_24
.LBB22_24:                              @ %if.end115
	.loc	15 0 17                         @ ../udivmoddi4.c:0:17
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	15 108 13 is_stmt 1             @ ../udivmoddi4.c:108:13
	b	.LBB22_56
.LBB22_25:                              @ %if.end116
	.loc	15 110 9                        @ ../udivmoddi4.c:110:9
	ldr	r2, [sp, #40]                   @ 4-byte Reload
	add	r0, r2, #1
	mov	r1, #0
	.loc	15 113 17                       @ ../udivmoddi4.c:113:17
	str	r1, [r11, #-24]
	.loc	15 114 24                       @ ../udivmoddi4.c:114:24
	ldr	r1, [r11, #-8]
	.loc	15 114 45 is_stmt 0             @ ../udivmoddi4.c:114:45
	rsb	r3, r2, #31
	.loc	15 114 28                       @ ../udivmoddi4.c:114:28
	lsl	r1, r1, r3
	.loc	15 114 18                       @ ../udivmoddi4.c:114:18
	str	r1, [r11, #-20]
	.loc	15 116 24 is_stmt 1             @ ../udivmoddi4.c:116:24
	ldr	r1, [r11, #-4]
	.loc	15 116 29 is_stmt 0             @ ../udivmoddi4.c:116:29
	lsr	r1, r1, r0
	.loc	15 116 18                       @ ../udivmoddi4.c:116:18
	str	r1, [r11, #-28]
	.loc	15 117 60 is_stmt 1             @ ../udivmoddi4.c:117:60
	ldr	r2, [r11, #-8]
	.loc	15 117 24 is_stmt 0             @ ../udivmoddi4.c:117:24
	ldr	r1, [r11, #-4]
	.loc	15 117 29                       @ ../udivmoddi4.c:117:29
	lsl	r1, r1, r3
	.loc	15 117 53                       @ ../udivmoddi4.c:117:53
	orr	r1, r1, r2, lsr r0
	.loc	15 117 17                       @ ../udivmoddi4.c:117:17
	str	r1, [r11, #-32]
	str	r0, [sp, #36]                   @ 4-byte Spill
	.loc	15 118 5 is_stmt 1              @ ../udivmoddi4.c:118:5
	b	.LBB22_49
.LBB22_26:                              @ %if.else
	.loc	15 121 17                       @ ../udivmoddi4.c:121:17
	ldr	r0, [r11, #-12]
	.loc	15 121 13 is_stmt 0             @ ../udivmoddi4.c:121:13
	cmp	r0, #0
	bne	.LBB22_40
	b	.LBB22_27
.LBB22_27:                              @ %if.then142
	.loc	15 127 22 is_stmt 1             @ ../udivmoddi4.c:127:22
	ldr	r0, [r11, #-16]
	.loc	15 127 17 is_stmt 0             @ ../udivmoddi4.c:127:17
	sub	r1, r0, #1
	tst	r0, r1
	bne	.LBB22_33
	b	.LBB22_28
.LBB22_28:                              @ %if.then151
	.loc	15 129 21 is_stmt 1             @ ../udivmoddi4.c:129:21
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB22_30
	b	.LBB22_29
.LBB22_29:                              @ %if.then153
	.loc	15 130 32                       @ ../udivmoddi4.c:130:32
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	.loc	15 130 43 is_stmt 0             @ ../udivmoddi4.c:130:43
	ldr	r2, [r11, #-16]
	.loc	15 130 47                       @ ../udivmoddi4.c:130:47
	sub	r2, r2, #1
	.loc	15 130 36                       @ ../udivmoddi4.c:130:36
	and	r0, r0, r2
	mov	r2, #0
	.loc	15 130 26                       @ ../udivmoddi4.c:130:26
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	15 130 21                       @ ../udivmoddi4.c:130:21
	b	.LBB22_30
.LBB22_30:                              @ %if.end161
	.loc	15 131 25 is_stmt 1             @ ../udivmoddi4.c:131:25
	ldr	r0, [r11, #-16]
	.loc	15 131 21 is_stmt 0             @ ../udivmoddi4.c:131:21
	cmp	r0, #1
	bne	.LBB22_32
	b	.LBB22_31
.LBB22_31:                              @ %if.then166
	.loc	15 132 30 is_stmt 1             @ ../udivmoddi4.c:132:30
	ldr	r1, [r11, #-8]
	ldr	r0, [r11, #-4]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	15 132 21 is_stmt 0             @ ../udivmoddi4.c:132:21
	b	.LBB22_56
.LBB22_32:                              @ %if.end168
	.loc	15 133 40 is_stmt 1             @ ../udivmoddi4.c:133:40
	ldr	r1, [r11, #-16]
	.loc	15 133 22 is_stmt 0             @ ../udivmoddi4.c:133:22
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI22_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI22_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI22_2
	and	r0, r0, r1
	ldr	r1, .LCPI22_3
	mul	r12, r0, r1
	lsr	r2, r12, #24
	.loc	15 134 32 is_stmt 1             @ ../udivmoddi4.c:134:32
	ldr	r0, [r11, #-4]
	.loc	15 134 37 is_stmt 0             @ ../udivmoddi4.c:134:37
	lsr	r0, r0, r2
	.loc	15 134 26                       @ ../udivmoddi4.c:134:26
	str	r0, [r11, #-20]
	.loc	15 135 68 is_stmt 1             @ ../udivmoddi4.c:135:68
	ldr	r1, [r11, #-8]
	.loc	15 135 32 is_stmt 0             @ ../udivmoddi4.c:135:32
	ldr	r0, [r11, #-4]
	mov	r3, #32
	.loc	15 135 54                       @ ../udivmoddi4.c:135:54
	sub	r3, r3, r12, lsr #24
	.loc	15 135 37                       @ ../udivmoddi4.c:135:37
	lsl	r0, r0, r3
	.loc	15 135 61                       @ ../udivmoddi4.c:135:61
	orr	r0, r0, r1, lsr r2
	.loc	15 135 25                       @ ../udivmoddi4.c:135:25
	str	r0, [r11, #-24]
	.loc	15 136 26 is_stmt 1             @ ../udivmoddi4.c:136:26
	ldr	r1, [r11, #-24]
	ldr	r0, [r11, #-20]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	15 136 17 is_stmt 0             @ ../udivmoddi4.c:136:17
	b	.LBB22_56
.LBB22_33:                              @ %if.end187
	.loc	15 142 55 is_stmt 1             @ ../udivmoddi4.c:142:55
	ldr	r0, [r11, #-16]
	.loc	15 142 37 is_stmt 0             @ ../udivmoddi4.c:142:37
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI22_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI22_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI22_2
	and	r1, r0, r2
	ldr	r3, .LCPI22_3
	mul	r0, r1, r3
	lsr	r0, r0, #24
	.loc	15 142 80                       @ ../udivmoddi4.c:142:80
	ldr	r1, [r11, #-4]
	.loc	15 142 62                       @ ../udivmoddi4.c:142:62
	orr	r1, r1, r1, lsr #1
	orr	r1, r1, r1, lsr #2
	orr	r1, r1, r1, lsr #4
	orr	r1, r1, r1, lsr #8
	orr	r1, r1, r1, lsr #16
	mvn	r1, r1
	and	r12, r12, r1, lsr #1
	sub	r1, r1, r12
	and	r12, lr, r1, lsr #2
	and	r1, r1, lr
	add	r1, r1, r12
	add	r1, r1, r1, lsr #4
	and	r2, r1, r2
	mul	r1, r2, r3
	.loc	15 142 60                       @ ../udivmoddi4.c:142:60
	sub	r0, r0, r1, lsr #24
	add	r0, r0, #33
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	15 147 17 is_stmt 1             @ ../udivmoddi4.c:147:17
	cmp	r0, #32
	bne	.LBB22_35
	b	.LBB22_34
.LBB22_34:                              @ %if.then195
	.loc	15 0 17 is_stmt 0               @ ../udivmoddi4.c:0:17
	mov	r0, #0
	.loc	15 149 25 is_stmt 1             @ ../udivmoddi4.c:149:25
	str	r0, [r11, #-24]
	.loc	15 150 32                       @ ../udivmoddi4.c:150:32
	ldr	r1, [r11, #-8]
	.loc	15 150 26 is_stmt 0             @ ../udivmoddi4.c:150:26
	str	r1, [r11, #-20]
	.loc	15 151 26 is_stmt 1             @ ../udivmoddi4.c:151:26
	str	r0, [r11, #-28]
	.loc	15 152 31                       @ ../udivmoddi4.c:152:31
	ldr	r0, [r11, #-4]
	.loc	15 152 25 is_stmt 0             @ ../udivmoddi4.c:152:25
	str	r0, [r11, #-32]
	.loc	15 153 13 is_stmt 1             @ ../udivmoddi4.c:153:13
	b	.LBB22_39
.LBB22_35:                              @ %if.else208
	.loc	15 154 22                       @ ../udivmoddi4.c:154:22
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	cmp	r0, #31
	bhi	.LBB22_37
	b	.LBB22_36
.LBB22_36:                              @ %if.then211
	.loc	15 0 22 is_stmt 0               @ ../udivmoddi4.c:0:22
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	mov	r0, #0
	.loc	15 156 25 is_stmt 1             @ ../udivmoddi4.c:156:25
	str	r0, [r11, #-24]
	.loc	15 157 32                       @ ../udivmoddi4.c:157:32
	ldr	r0, [r11, #-8]
	.loc	15 157 53 is_stmt 0             @ ../udivmoddi4.c:157:53
	rsb	r3, r2, #32
	.loc	15 157 36                       @ ../udivmoddi4.c:157:36
	lsl	r0, r0, r3
	.loc	15 157 26                       @ ../udivmoddi4.c:157:26
	str	r0, [r11, #-20]
	.loc	15 158 32 is_stmt 1             @ ../udivmoddi4.c:158:32
	ldr	r0, [r11, #-4]
	.loc	15 158 37 is_stmt 0             @ ../udivmoddi4.c:158:37
	lsr	r0, r0, r2
	.loc	15 158 26                       @ ../udivmoddi4.c:158:26
	str	r0, [r11, #-28]
	.loc	15 159 68 is_stmt 1             @ ../udivmoddi4.c:159:68
	ldr	r1, [r11, #-8]
	.loc	15 159 32 is_stmt 0             @ ../udivmoddi4.c:159:32
	ldr	r0, [r11, #-4]
	.loc	15 159 37                       @ ../udivmoddi4.c:159:37
	lsl	r0, r0, r3
	.loc	15 159 61                       @ ../udivmoddi4.c:159:61
	orr	r0, r0, r1, lsr r2
	.loc	15 159 25                       @ ../udivmoddi4.c:159:25
	str	r0, [r11, #-32]
	.loc	15 160 13 is_stmt 1             @ ../udivmoddi4.c:160:13
	b	.LBB22_38
.LBB22_37:                              @ %if.else235
	.loc	15 163 31                       @ ../udivmoddi4.c:163:31
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	ldr	r0, [r11, #-8]
	.loc	15 163 53 is_stmt 0             @ ../udivmoddi4.c:163:53
	rsb	r3, r1, #64
	.loc	15 163 35                       @ ../udivmoddi4.c:163:35
	lsl	r0, r0, r3
	.loc	15 163 25                       @ ../udivmoddi4.c:163:25
	str	r0, [r11, #-24]
	.loc	15 165 33 is_stmt 1             @ ../udivmoddi4.c:165:33
	ldr	r2, [r11, #-8]
	.loc	15 164 33                       @ ../udivmoddi4.c:164:33
	ldr	r0, [r11, #-4]
	.loc	15 164 38 is_stmt 0             @ ../udivmoddi4.c:164:38
	lsl	r0, r0, r3
	.loc	15 165 44 is_stmt 1             @ ../udivmoddi4.c:165:44
	sub	r1, r1, #32
	.loc	15 164 63                       @ ../udivmoddi4.c:164:63
	orr	r0, r0, r2, lsr r1
	.loc	15 164 26 is_stmt 0             @ ../udivmoddi4.c:164:26
	str	r0, [r11, #-20]
	mov	r0, #0
	.loc	15 166 26 is_stmt 1             @ ../udivmoddi4.c:166:26
	str	r0, [r11, #-28]
	.loc	15 167 31                       @ ../udivmoddi4.c:167:31
	ldr	r0, [r11, #-4]
	.loc	15 167 36 is_stmt 0             @ ../udivmoddi4.c:167:36
	lsr	r0, r0, r1
	.loc	15 167 25                       @ ../udivmoddi4.c:167:25
	str	r0, [r11, #-32]
	b	.LBB22_38
.LBB22_38:                              @ %if.end261
	.loc	15 0 25                         @ ../udivmoddi4.c:0:25
	b	.LBB22_39
.LBB22_39:                              @ %if.end262
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	str	r0, [sp, #28]                   @ 4-byte Spill
	.loc	15 169 9 is_stmt 1              @ ../udivmoddi4.c:169:9
	b	.LBB22_48
.LBB22_40:                              @ %if.else263
	.loc	15 176 36                       @ ../udivmoddi4.c:176:36
	ldr	r0, [r11, #-12]
	.loc	15 176 18 is_stmt 0             @ ../udivmoddi4.c:176:18
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI22_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI22_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI22_2
	and	r1, r0, r2
	ldr	r3, .LCPI22_3
	mul	r0, r1, r3
	lsr	r0, r0, #24
	.loc	15 176 62                       @ ../udivmoddi4.c:176:62
	ldr	r1, [r11, #-4]
	.loc	15 176 44                       @ ../udivmoddi4.c:176:44
	orr	r1, r1, r1, lsr #1
	orr	r1, r1, r1, lsr #2
	orr	r1, r1, r1, lsr #4
	orr	r1, r1, r1, lsr #8
	orr	r1, r1, r1, lsr #16
	mvn	r1, r1
	and	r12, r12, r1, lsr #1
	sub	r1, r1, r12
	and	r12, lr, r1, lsr #2
	and	r1, r1, lr
	add	r1, r1, r12
	add	r1, r1, r1, lsr #4
	and	r2, r1, r2
	mul	r1, r2, r3
	.loc	15 176 42                       @ ../udivmoddi4.c:176:42
	sub	r0, r0, r1, lsr #24
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	15 178 17 is_stmt 1             @ ../udivmoddi4.c:178:17
	cmp	r0, #32
	blo	.LBB22_44
	b	.LBB22_41
.LBB22_41:                              @ %if.then271
	.loc	15 180 21                       @ ../udivmoddi4.c:180:21
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB22_43
	b	.LBB22_42
.LBB22_42:                              @ %if.then273
	.loc	15 181 30                       @ ../udivmoddi4.c:181:30
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldr	r2, [r11, #-4]
	.loc	15 181 26 is_stmt 0             @ ../udivmoddi4.c:181:26
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	15 181 21                       @ ../udivmoddi4.c:181:21
	b	.LBB22_43
.LBB22_43:                              @ %if.end275
	.loc	15 0 21                         @ ../udivmoddi4.c:0:21
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	15 182 17 is_stmt 1             @ ../udivmoddi4.c:182:17
	b	.LBB22_56
.LBB22_44:                              @ %if.end276
	.loc	15 184 13                       @ ../udivmoddi4.c:184:13
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #20]                   @ 4-byte Spill
	mov	r1, #0
	.loc	15 187 21                       @ ../udivmoddi4.c:187:21
	str	r1, [r11, #-24]
	.loc	15 188 17                       @ ../udivmoddi4.c:188:17
	cmp	r0, #32
	bne	.LBB22_46
	b	.LBB22_45
.LBB22_45:                              @ %if.then282
	.loc	15 190 32                       @ ../udivmoddi4.c:190:32
	ldr	r0, [r11, #-8]
	.loc	15 190 26 is_stmt 0             @ ../udivmoddi4.c:190:26
	str	r0, [r11, #-20]
	mov	r0, #0
	.loc	15 191 26 is_stmt 1             @ ../udivmoddi4.c:191:26
	str	r0, [r11, #-28]
	.loc	15 192 31                       @ ../udivmoddi4.c:192:31
	ldr	r0, [r11, #-4]
	.loc	15 192 25 is_stmt 0             @ ../udivmoddi4.c:192:25
	str	r0, [r11, #-32]
	.loc	15 193 13 is_stmt 1             @ ../udivmoddi4.c:193:13
	b	.LBB22_47
.LBB22_46:                              @ %if.else293
	.loc	15 196 32                       @ ../udivmoddi4.c:196:32
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	ldr	r0, [r11, #-8]
	.loc	15 196 53 is_stmt 0             @ ../udivmoddi4.c:196:53
	rsb	r3, r1, #31
	.loc	15 196 36                       @ ../udivmoddi4.c:196:36
	lsl	r0, r0, r3
	.loc	15 196 26                       @ ../udivmoddi4.c:196:26
	str	r0, [r11, #-20]
	.loc	15 197 32 is_stmt 1             @ ../udivmoddi4.c:197:32
	ldr	r0, [r11, #-4]
	.loc	15 197 37 is_stmt 0             @ ../udivmoddi4.c:197:37
	lsr	r0, r0, r2
	.loc	15 197 26                       @ ../udivmoddi4.c:197:26
	str	r0, [r11, #-28]
	.loc	15 198 68 is_stmt 1             @ ../udivmoddi4.c:198:68
	ldr	r1, [r11, #-8]
	.loc	15 198 32 is_stmt 0             @ ../udivmoddi4.c:198:32
	ldr	r0, [r11, #-4]
	.loc	15 198 37                       @ ../udivmoddi4.c:198:37
	lsl	r0, r0, r3
	.loc	15 198 61                       @ ../udivmoddi4.c:198:61
	orr	r0, r0, r1, lsr r2
	.loc	15 198 25                       @ ../udivmoddi4.c:198:25
	str	r0, [r11, #-32]
	b	.LBB22_47
.LBB22_47:                              @ %if.end315
	.loc	15 0 25                         @ ../udivmoddi4.c:0:25
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	str	r0, [sp, #28]                   @ 4-byte Spill
	b	.LBB22_48
.LBB22_48:                              @ %if.end316
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	str	r0, [sp, #36]                   @ 4-byte Spill
	b	.LBB22_49
.LBB22_49:                              @ %if.end317
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	mov	r0, #0
	str	r1, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	15 209 5 is_stmt 1              @ ../udivmoddi4.c:209:5
	b	.LBB22_50
.LBB22_50:                              @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	15 0 0 is_stmt 0                @ ../udivmoddi4.c:0:0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	15 209 5                        @ ../udivmoddi4.c:209:5
	cmp	r0, #0
	beq	.LBB22_53
	b	.LBB22_51
.LBB22_51:                              @ %for.body
                                        @   in Loop: Header=BB22_50 Depth=1
	.loc	15 212 43 is_stmt 1             @ ../udivmoddi4.c:212:43
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [r11, #-32]
	.loc	15 212 25 is_stmt 0             @ ../udivmoddi4.c:212:25
	ldr	r2, [r11, #-28]
	.loc	15 212 36                       @ ../udivmoddi4.c:212:36
	lsl	r2, r2, #1
	orr	r2, r2, r1, lsr #31
	.loc	15 212 18                       @ ../udivmoddi4.c:212:18
	str	r2, [r11, #-28]
	.loc	15 213 43 is_stmt 1             @ ../udivmoddi4.c:213:43
	ldr	r2, [r11, #-20]
	.loc	15 213 36 is_stmt 0             @ ../udivmoddi4.c:213:36
	lsl	r1, r1, #1
	orr	r1, r1, r2, lsr #31
	.loc	15 213 18                       @ ../udivmoddi4.c:213:18
	str	r1, [r11, #-32]
	.loc	15 214 43 is_stmt 1             @ ../udivmoddi4.c:214:43
	ldr	r1, [r11, #-24]
	.loc	15 214 25 is_stmt 0             @ ../udivmoddi4.c:214:25
	ldr	r2, [r11, #-20]
	.loc	15 214 36                       @ ../udivmoddi4.c:214:36
	lsl	r2, r2, #1
	orr	r2, r2, r1, lsr #31
	.loc	15 214 18                       @ ../udivmoddi4.c:214:18
	str	r2, [r11, #-20]
	.loc	15 215 36 is_stmt 1             @ ../udivmoddi4.c:215:36
	orr	r0, r0, r1, lsl #1
	.loc	15 215 18 is_stmt 0             @ ../udivmoddi4.c:215:18
	str	r0, [r11, #-24]
	.loc	15 223 37 is_stmt 1             @ ../udivmoddi4.c:223:37
	ldr	r12, [r11, #-16]
	ldr	r2, [r11, #-12]
	.loc	15 223 45 is_stmt 0             @ ../udivmoddi4.c:223:45
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	.loc	15 223 49                       @ ../udivmoddi4.c:223:49
	mvn	r3, r1
	mvn	lr, r0
	adds	lr, r12, lr
	adc	r3, r2, r3
	str	r3, [sp]                        @ 4-byte Spill
	.loc	15 225 15 is_stmt 1             @ ../udivmoddi4.c:225:15
	subs	r12, r0, r12
	sbc	r2, r1, r2
	cmp	r3, #0
	movmi	r0, r12
	cmp	r3, #0
	movmi	r1, r2
	str	r1, [r11, #-28]
	str	r0, [r11, #-32]
	.loc	15 226 5                        @ ../udivmoddi4.c:226:5
	b	.LBB22_52
.LBB22_52:                              @ %for.inc
                                        @   in Loop: Header=BB22_50 Depth=1
	.loc	15 224 19                       @ ../udivmoddi4.c:224:19
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp]                        @ 4-byte Reload
	lsr	r0, r0, #31
	.loc	15 209 20                       @ ../udivmoddi4.c:209:20
	sub	r1, r1, #1
	str	r1, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	15 209 5 is_stmt 0              @ ../udivmoddi4.c:209:5
	b	.LBB22_50
.LBB22_53:                              @ %for.end
	.loc	15 227 16 is_stmt 1             @ ../udivmoddi4.c:227:16
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [r11, #-24]
	ldr	r1, [r11, #-20]
	.loc	15 227 20 is_stmt 0             @ ../udivmoddi4.c:227:20
	lsl	r1, r1, #1
	orr	r1, r1, r3, lsr #31
	.loc	15 227 26                       @ ../udivmoddi4.c:227:26
	orr	r2, r2, r3, lsl #1
	.loc	15 227 11                       @ ../udivmoddi4.c:227:11
	str	r2, [r11, #-24]
	str	r1, [r11, #-20]
	.loc	15 228 9 is_stmt 1              @ ../udivmoddi4.c:228:9
	cmp	r0, #0
	beq	.LBB22_55
	b	.LBB22_54
.LBB22_54:                              @ %if.then371
	.loc	15 229 18                       @ ../udivmoddi4.c:229:18
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-32]
	ldr	r2, [r11, #-28]
	.loc	15 229 14 is_stmt 0             @ ../udivmoddi4.c:229:14
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	15 229 9                        @ ../udivmoddi4.c:229:9
	b	.LBB22_55
.LBB22_55:                              @ %if.end373
	.loc	15 230 14 is_stmt 1             @ ../udivmoddi4.c:230:14
	ldr	r1, [r11, #-24]
	ldr	r0, [r11, #-20]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	15 230 5 is_stmt 0              @ ../udivmoddi4.c:230:5
	b	.LBB22_56
.LBB22_56:                              @ %return
	.loc	15 0 0                          @ ../udivmoddi4.c:0:0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldr	r1, [r11, #-40]                 @ 4-byte Reload
	.loc	15 231 1 is_stmt 1              @ ../udivmoddi4.c:231:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp41:
	.p2align	2
@ %bb.57:
	.loc	15 0 1 is_stmt 0                @ ../udivmoddi4.c:0:1
.LCPI22_0:
	.long	1431655765                      @ 0x55555555
.LCPI22_1:
	.long	858993459                       @ 0x33333333
.LCPI22_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI22_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end22:
	.size	__udivmoddi4, .Lfunc_end22-__udivmoddi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divmoddi4                     @ -- Begin function __divmoddi4
	.p2align	2
	.type	__divmoddi4,%function
	.code	32                              @ @__divmoddi4
__divmoddi4:
.Lfunc_begin23:
	.file	16 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divmoddi4.c" md5 0xbd72633dccf26f3dd8ee74bf04f7fdac
	.loc	16 21 0 is_stmt 1               @ ../divmoddi4.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r4, r5, r6, r7, r11, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r7, -12
	.cfi_offset r6, -16
	.cfi_offset r5, -20
	.cfi_offset r4, -24
	add	r11, sp, #16
	.cfi_def_cfa r11, 8
	sub	sp, sp, #16
	str	r3, [sp, #12]                   @ 4-byte Spill
	mov	r5, r2
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp]                        @ 4-byte Spill
                                        @ kill: def $r2 killed $r3
                                        @ kill: def $r2 killed $r5
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	ldr	r2, [r11, #8]
	str	r2, [sp, #8]                    @ 4-byte Spill
.Ltmp42:
	.loc	16 22 14 prologue_end           @ ../divmoddi4.c:22:14
	mov	r2, r5
	bl	__divdi3
	ldr	r12, [sp]                       @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	ldr	lr, [sp, #12]                   @ 4-byte Reload
	.loc	16 23 16                        @ ../divmoddi4.c:23:16
	umull	r4, r7, r0, r5
	mla	r6, r0, lr, r7
	mla	lr, r1, r5, r6
	.loc	16 23 12 is_stmt 0              @ ../divmoddi4.c:23:12
	subs	r12, r12, r4
	sbc	r2, r2, lr
	.loc	16 23 8                         @ ../divmoddi4.c:23:8
	str	r12, [r3]
	str	r2, [r3, #4]
	.loc	16 24 3 is_stmt 1               @ ../divmoddi4.c:24:3
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
.Ltmp43:
.Lfunc_end23:
	.size	__divmoddi4, .Lfunc_end23-__divmoddi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divmodsi4                     @ -- Begin function __divmodsi4
	.p2align	2
	.type	__divmodsi4,%function
	.code	32                              @ @__divmodsi4
__divmodsi4:
.Lfunc_begin24:
	.file	17 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divmodsi4.c" md5 0x0cf7caca427f8ea020b675e27b5985b5
	.loc	17 21 0                         @ ../divmodsi4.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #16
	str	r2, [r11, #-4]                  @ 4-byte Spill
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
.Ltmp44:
	.loc	17 22 14 prologue_end           @ ../divmodsi4.c:22:14
	bl	__divsi3
	ldr	r12, [sp, #4]                   @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [r11, #-4]                  @ 4-byte Reload
	.loc	17 23 16                        @ ../divmodsi4.c:23:16
	mul	r3, r0, r12
	.loc	17 23 12 is_stmt 0              @ ../divmodsi4.c:23:12
	sub	r1, r1, r3
	.loc	17 23 8                         @ ../divmodsi4.c:23:8
	str	r1, [r2]
	.loc	17 24 3 is_stmt 1               @ ../divmodsi4.c:24:3
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp45:
.Lfunc_end24:
	.size	__divmodsi4, .Lfunc_end24-__divmodsi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divsi3                        @ -- Begin function __divsi3
	.p2align	2
	.type	__divsi3,%function
	.code	32                              @ @__divsi3
__divsi3:
.Lfunc_begin25:
	.file	18 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divsi3.c" md5 0x7845e3e46788425cf69d463f3cfe00e5
	.loc	18 23 0                         @ ../divsi3.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	mov	r3, r1
	mov	r1, r0
.Ltmp46:
	.loc	18 25 20 prologue_end           @ ../divsi3.c:25:20
	asr	r2, r1, #31
	.loc	18 27 12                        @ ../divsi3.c:27:12
	eor	r0, r1, r1, asr #31
	.loc	18 27 19 is_stmt 0              @ ../divsi3.c:27:19
	sub	r0, r0, r1, asr #31
	.loc	18 28 12 is_stmt 1              @ ../divsi3.c:28:12
	eor	r1, r3, r3, asr #31
	.loc	18 28 19 is_stmt 0              @ ../divsi3.c:28:19
	sub	r1, r1, r3, asr #31
	.loc	18 29 9 is_stmt 1               @ ../divsi3.c:29:9
	eor	r2, r2, r3, asr #31
	str	r2, [sp, #4]                    @ 4-byte Spill
	.loc	18 36 22                        @ ../divsi3.c:36:22
	bl	__udivsi3
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	.loc	18 36 33 is_stmt 0              @ ../divsi3.c:36:33
	eor	r0, r0, r1
	.loc	18 36 40                        @ ../divsi3.c:36:40
	sub	r0, r0, r1
	.loc	18 36 5                         @ ../divsi3.c:36:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp47:
.Lfunc_end25:
	.size	__divsi3, .Lfunc_end25-__divsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ffsdi2                        @ -- Begin function __ffsdi2
	.p2align	2
	.type	__ffsdi2,%function
	.code	32                              @ @__ffsdi2
__ffsdi2:
.Lfunc_begin26:
	.file	19 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ffsdi2.c" md5 0x4b800e1cad35a0bc99971441032171a3
	.loc	19 23 0 is_stmt 1               @ ../ffsdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp48:
	.loc	19 25 11 prologue_end           @ ../ffsdi2.c:25:11
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	19 26 13                        @ ../ffsdi2.c:26:13
	ldr	r0, [sp, #8]
	.loc	19 26 9 is_stmt 0               @ ../ffsdi2.c:26:9
	cmp	r0, #0
	bne	.LBB26_4
	b	.LBB26_1
.LBB26_1:                               @ %if.then
	.loc	19 28 17 is_stmt 1              @ ../ffsdi2.c:28:17
	ldr	r0, [sp, #12]
	.loc	19 28 13 is_stmt 0              @ ../ffsdi2.c:28:13
	cmp	r0, #0
	bne	.LBB26_3
	b	.LBB26_2
.LBB26_2:                               @ %if.then3
	.loc	19 0 13                         @ ../ffsdi2.c:0:13
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	19 29 13 is_stmt 1              @ ../ffsdi2.c:29:13
	b	.LBB26_5
.LBB26_3:                               @ %if.end
	.loc	19 30 34                        @ ../ffsdi2.c:30:34
	ldr	r1, [sp, #12]
	.loc	19 30 16 is_stmt 0              @ ../ffsdi2.c:30:16
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI26_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI26_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI26_2
	and	r0, r0, r1
	ldr	r2, .LCPI26_3
	mul	r1, r0, r2
	mov	r0, #33
	.loc	19 30 40                        @ ../ffsdi2.c:30:40
	add	r0, r0, r1, lsr #24
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	19 30 9                         @ ../ffsdi2.c:30:9
	b	.LBB26_5
.LBB26_4:                               @ %if.end6
	.loc	19 32 30 is_stmt 1              @ ../ffsdi2.c:32:30
	ldr	r1, [sp, #8]
	.loc	19 32 12 is_stmt 0              @ ../ffsdi2.c:32:12
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI26_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI26_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI26_2
	and	r0, r0, r1
	ldr	r2, .LCPI26_3
	mul	r1, r0, r2
	mov	r0, #1
	.loc	19 32 35                        @ ../ffsdi2.c:32:35
	add	r0, r0, r1, lsr #24
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	19 32 5                         @ ../ffsdi2.c:32:5
	b	.LBB26_5
.LBB26_5:                               @ %return
	.loc	19 0 0                          @ ../ffsdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	19 33 1 is_stmt 1               @ ../ffsdi2.c:33:1
	add	sp, sp, #16
	bx	lr
.Ltmp49:
	.p2align	2
@ %bb.6:
	.loc	19 0 1 is_stmt 0                @ ../ffsdi2.c:0:1
.LCPI26_0:
	.long	1431655765                      @ 0x55555555
.LCPI26_1:
	.long	858993459                       @ 0x33333333
.LCPI26_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI26_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end26:
	.size	__ffsdi2, .Lfunc_end26-__ffsdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ffssi2                        @ -- Begin function __ffssi2
	.p2align	2
	.type	__ffssi2,%function
	.code	32                              @ @__ffssi2
__ffssi2:
.Lfunc_begin27:
	.file	20 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ffssi2.c" md5 0x182169d6765bddc2bf1b03cc7a4f47cb
	.loc	20 23 0 is_stmt 1               @ ../ffssi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp50:
	.loc	20 24 9 prologue_end            @ ../ffssi2.c:24:9
	cmp	r0, #0
	bne	.LBB27_2
	b	.LBB27_1
.LBB27_1:                               @ %if.then
	.loc	20 0 9 is_stmt 0                @ ../ffssi2.c:0:9
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	.loc	20 26 9 is_stmt 1               @ ../ffssi2.c:26:9
	b	.LBB27_3
.LBB27_2:                               @ %if.end
	.loc	20 28 12                        @ ../ffssi2.c:28:12
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI27_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI27_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI27_2
	and	r0, r0, r1
	ldr	r2, .LCPI27_3
	mul	r1, r0, r2
	mov	r0, #1
	.loc	20 28 29 is_stmt 0              @ ../ffssi2.c:28:29
	add	r0, r0, r1, lsr #24
	str	r0, [sp]                        @ 4-byte Spill
	.loc	20 28 5                         @ ../ffssi2.c:28:5
	b	.LBB27_3
.LBB27_3:                               @ %return
	.loc	20 0 0                          @ ../ffssi2.c:0:0
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	20 29 1 is_stmt 1               @ ../ffssi2.c:29:1
	add	sp, sp, #8
	bx	lr
.Ltmp51:
	.p2align	2
@ %bb.4:
	.loc	20 0 1 is_stmt 0                @ ../ffssi2.c:0:1
.LCPI27_0:
	.long	1431655765                      @ 0x55555555
.LCPI27_1:
	.long	858993459                       @ 0x33333333
.LCPI27_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI27_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end27:
	.size	__ffssi2, .Lfunc_end27-__ffssi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__lshrdi3                       @ -- Begin function __lshrdi3
	.p2align	2
	.type	__lshrdi3,%function
	.code	32                              @ @__lshrdi3
__lshrdi3:
.Lfunc_begin28:
	.file	21 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../lshrdi3.c" md5 0xc456e45323b3205c3b32d82b51570771
	.loc	21 25 0 is_stmt 1               @ ../lshrdi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #40
	.cfi_def_cfa_offset 40
	str	r2, [sp, #12]                   @ 4-byte Spill
	mov	r3, r1
	str	r3, [sp, #16]                   @ 4-byte Spill
	mov	r3, r0
	str	r3, [sp, #20]                   @ 4-byte Spill
.Ltmp52:
	.loc	21 29 15 prologue_end           @ ../lshrdi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	21 30 9                         @ ../lshrdi3.c:30:9
	tst	r2, #32
	beq	.LBB28_2
	b	.LBB28_1
.LBB28_1:                               @ %if.then
	.loc	21 0 9 is_stmt 0                @ ../lshrdi3.c:0:9
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mov	r0, #0
	.loc	21 32 23 is_stmt 1              @ ../lshrdi3.c:32:23
	str	r0, [sp, #28]
	.loc	21 33 32                        @ ../lshrdi3.c:33:32
	ldr	r0, [sp, #36]
	.loc	21 33 43 is_stmt 0              @ ../lshrdi3.c:33:43
	sub	r1, r1, #32
	.loc	21 33 37                        @ ../lshrdi3.c:33:37
	lsr	r0, r0, r1
	.loc	21 33 22                        @ ../lshrdi3.c:33:22
	str	r0, [sp, #24]
	.loc	21 34 5 is_stmt 1               @ ../lshrdi3.c:34:5
	b	.LBB28_5
.LBB28_2:                               @ %if.else
	.loc	21 37 13                        @ ../lshrdi3.c:37:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB28_4
	b	.LBB28_3
.LBB28_3:                               @ %if.then4
	.loc	21 0 13 is_stmt 0               @ ../lshrdi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	21 38 13 is_stmt 1              @ ../lshrdi3.c:38:13
	b	.LBB28_6
.LBB28_4:                               @ %if.end
	.loc	21 39 34                        @ ../lshrdi3.c:39:34
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #36]
	.loc	21 39 39 is_stmt 0              @ ../lshrdi3.c:39:39
	lsr	r0, r0, r2
	.loc	21 39 24                        @ ../lshrdi3.c:39:24
	str	r0, [sp, #28]
	.loc	21 40 72 is_stmt 1              @ ../lshrdi3.c:40:72
	ldr	r1, [sp, #32]
	.loc	21 40 33 is_stmt 0              @ ../lshrdi3.c:40:33
	ldr	r0, [sp, #36]
	.loc	21 40 55                        @ ../lshrdi3.c:40:55
	rsb	r3, r2, #32
	.loc	21 40 38                        @ ../lshrdi3.c:40:38
	lsl	r0, r0, r3
	.loc	21 40 61                        @ ../lshrdi3.c:40:61
	orr	r0, r0, r1, lsr r2
	.loc	21 40 22                        @ ../lshrdi3.c:40:22
	str	r0, [sp, #24]
	b	.LBB28_5
.LBB28_5:                               @ %if.end18
	.loc	21 42 19 is_stmt 1              @ ../lshrdi3.c:42:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	21 42 5 is_stmt 0               @ ../lshrdi3.c:42:5
	b	.LBB28_6
.LBB28_6:                               @ %return
	.loc	21 0 0                          @ ../lshrdi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	21 43 1 is_stmt 1               @ ../lshrdi3.c:43:1
	add	sp, sp, #40
	bx	lr
.Ltmp53:
.Lfunc_end28:
	.size	__lshrdi3, .Lfunc_end28-__lshrdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__moddi3                        @ -- Begin function __moddi3
	.p2align	2
	.type	__moddi3,%function
	.code	32                              @ @__moddi3
__moddi3:
.Lfunc_begin29:
	.file	22 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../moddi3.c" md5 0x76733914157a978303cbe3d6f6d1c647
	.loc	22 21 0                         @ ../moddi3.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #16
	mov	r12, r1
	str	r12, [sp, #4]                   @ 4-byte Spill
                                        @ kill: def $r1 killed $r3
                                        @ kill: def $r1 killed $r2
                                        @ kill: def $r1 killed $r12
                                        @ kill: def $r1 killed $r0
.Ltmp54:
	.loc	22 24 17 prologue_end           @ ../moddi3.c:24:17
	adds	r1, r2, r3, asr #31
	eor	r2, r1, r3, asr #31
	adc	r1, r3, r3, asr #31
	eor	r3, r1, r3, asr #31
	.loc	22 26 12                        @ ../moddi3.c:26:12
	eor	r0, r0, r12, asr #31
	eor	r1, r12, r12, asr #31
	.loc	22 26 17 is_stmt 0              @ ../moddi3.c:26:17
	subs	r0, r0, r12, asr #31
	sbc	r1, r1, r12, asr #31
	.loc	22 28 5 is_stmt 1               @ ../moddi3.c:28:5
	mov	lr, sp
	add	r12, sp, #8
	str	r12, [lr]
	bl	__udivmoddi4
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	.loc	22 29 21                        @ ../moddi3.c:29:21
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	.loc	22 29 23 is_stmt 0              @ ../moddi3.c:29:23
	eor	r1, r1, r2, asr #31
	eor	r0, r0, r2, asr #31
	.loc	22 29 28                        @ ../moddi3.c:29:28
	subs	r0, r0, r2, asr #31
	sbc	r1, r1, r2, asr #31
	.loc	22 29 5                         @ ../moddi3.c:29:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp55:
.Lfunc_end29:
	.size	__moddi3, .Lfunc_end29-__moddi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__modsi3                        @ -- Begin function __modsi3
	.p2align	2
	.type	__modsi3,%function
	.code	32                              @ @__modsi3
__modsi3:
.Lfunc_begin30:
	.file	23 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../modsi3.c" md5 0xada583aff17540d2228ce14dc879fdc8
	.loc	23 21 0 is_stmt 1               @ ../modsi3.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp56:
	.loc	23 22 16 prologue_end           @ ../modsi3.c:22:16
	bl	__divsi3
	ldr	r3, [sp]                        @ 4-byte Reload
	mov	r2, r0
	.loc	23 22 31 is_stmt 0              @ ../modsi3.c:22:31
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mul	r1, r2, r3
	.loc	23 22 14                        @ ../modsi3.c:22:14
	sub	r0, r0, r1
	.loc	23 22 5                         @ ../modsi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp57:
.Lfunc_end30:
	.size	__modsi3, .Lfunc_end30-__modsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__mulvdi3                       @ -- Begin function __mulvdi3
	.p2align	2
	.type	__mulvdi3,%function
	.code	32                              @ @__mulvdi3
__mulvdi3:
.Lfunc_begin31:
	.file	24 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../mulvdi3.c" md5 0xbb6aa1440e4e37fe94db90279d27db10
	.loc	24 23 0 is_stmt 1               @ ../mulvdi3.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r4, r10, r11, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r10, -12
	.cfi_offset r4, -16
	add	r11, sp, #8
	.cfi_def_cfa r11, 8
	sub	sp, sp, #48
	str	r3, [r11, #-24]                 @ 4-byte Spill
	str	r2, [r11, #-20]                 @ 4-byte Spill
	mov	r2, r1
	str	r2, [r11, #-16]                 @ 4-byte Spill
	mov	r2, r0
	str	r2, [r11, #-12]                 @ 4-byte Spill
.Ltmp58:
	.loc	24 27 11 prologue_end           @ ../mulvdi3.c:27:11
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	24 27 9 is_stmt 0               @ ../mulvdi3.c:27:9
	cmp	r0, #0
	bne	.LBB31_5
	b	.LBB31_1
.LBB31_1:                               @ %if.then
	.loc	24 29 15 is_stmt 1              @ ../mulvdi3.c:29:15
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	orr	r0, r0, r1
	.loc	24 29 20 is_stmt 0              @ ../mulvdi3.c:29:20
	cmp	r0, #0
	beq	.LBB31_3
	b	.LBB31_2
.LBB31_2:                               @ %lor.lhs.false
	.loc	24 29 25                        @ ../mulvdi3.c:29:25
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	eor	r0, r0, #1
	orr	r0, r0, r1
	.loc	24 29 13                        @ ../mulvdi3.c:29:13
	cmp	r0, #0
	bne	.LBB31_4
	b	.LBB31_3
.LBB31_3:                               @ %if.then3
	.loc	24 30 13 is_stmt 1              @ ../mulvdi3.c:30:13
	b	.LBB31_21
.LBB31_4:                               @ %if.end
	.loc	24 31 9                         @ ../mulvdi3.c:31:9
	ldr	r0, .LCPI31_0
	ldr	r2, .LCPI31_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB31_5:                               @ %if.end4
	.loc	24 33 11                        @ ../mulvdi3.c:33:11
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	24 33 9 is_stmt 0               @ ../mulvdi3.c:33:9
	cmp	r0, #0
	bne	.LBB31_10
	b	.LBB31_6
.LBB31_6:                               @ %if.then6
	.loc	24 35 15 is_stmt 1              @ ../mulvdi3.c:35:15
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	orr	r0, r0, r1
	.loc	24 35 20 is_stmt 0              @ ../mulvdi3.c:35:20
	cmp	r0, #0
	beq	.LBB31_8
	b	.LBB31_7
.LBB31_7:                               @ %lor.lhs.false8
	.loc	24 35 25                        @ ../mulvdi3.c:35:25
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	eor	r0, r0, #1
	orr	r0, r0, r1
	.loc	24 35 13                        @ ../mulvdi3.c:35:13
	cmp	r0, #0
	bne	.LBB31_9
	b	.LBB31_8
.LBB31_8:                               @ %if.then10
	.loc	24 36 13 is_stmt 1              @ ../mulvdi3.c:36:13
	b	.LBB31_21
.LBB31_9:                               @ %if.end12
	.loc	24 37 9                         @ ../mulvdi3.c:37:9
	ldr	r0, .LCPI31_0
	ldr	r2, .LCPI31_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB31_10:                              @ %if.end13
	.loc	24 39 19                        @ ../mulvdi3.c:39:19
	ldr	r3, [r11, #-24]                 @ 4-byte Reload
	ldr	r2, [r11, #-20]                 @ 4-byte Reload
	ldr	r12, [r11, #-16]                @ 4-byte Reload
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	asr	r1, r12, #31
	str	r1, [sp]                        @ 4-byte Spill
	str	r1, [sp, #4]                    @ 4-byte Spill
	.loc	24 40 23                        @ ../mulvdi3.c:40:23
	eor	r1, r0, r12, asr #31
	eor	r0, r12, r12, asr #31
	.loc	24 40 29 is_stmt 0              @ ../mulvdi3.c:40:29
	subs	r1, r1, r12, asr #31
	str	r1, [sp, #8]                    @ 4-byte Spill
	sbc	r0, r0, r12, asr #31
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	24 41 19 is_stmt 1              @ ../mulvdi3.c:41:19
	asr	r12, r3, #31
	str	r12, [sp, #16]                  @ 4-byte Spill
	str	r12, [sp, #20]                  @ 4-byte Spill
	.loc	24 42 23                        @ ../mulvdi3.c:42:23
	eor	r12, r2, r3, asr #31
	eor	r2, r3, r3, asr #31
	.loc	24 42 29 is_stmt 0              @ ../mulvdi3.c:42:29
	subs	r12, r12, r3, asr #31
	str	r12, [sp, #24]                  @ 4-byte Spill
	sbc	r2, r2, r3, asr #31
	str	r2, [sp, #28]                   @ 4-byte Spill
	.loc	24 43 15 is_stmt 1              @ ../mulvdi3.c:43:15
	subs	r1, r1, #2
	sbcs	r0, r0, #0
	.loc	24 43 19 is_stmt 0              @ ../mulvdi3.c:43:19
	blt	.LBB31_12
	b	.LBB31_11
.LBB31_11:                              @ %lor.lhs.false18
	.loc	24 43 28                        @ ../mulvdi3.c:43:28
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	rsbs	r1, r1, #1
	rscs	r0, r0, #0
	.loc	24 43 9                         @ ../mulvdi3.c:43:9
	blt	.LBB31_13
	b	.LBB31_12
.LBB31_12:                              @ %if.then20
	.loc	24 44 9 is_stmt 1               @ ../mulvdi3.c:44:9
	b	.LBB31_21
.LBB31_13:                              @ %if.end22
	.loc	24 45 12                        @ ../mulvdi3.c:45:12
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r3, [sp, #16]                   @ 4-byte Reload
	eor	r0, r0, r3
	eor	r1, r1, r2
	orr	r0, r0, r1
	.loc	24 45 9 is_stmt 0               @ ../mulvdi3.c:45:9
	cmp	r0, #0
	bne	.LBB31_17
	b	.LBB31_14
.LBB31_14:                              @ %if.then24
	.loc	24 47 25 is_stmt 1              @ ../mulvdi3.c:47:25
	ldr	r3, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	mvn	r0, #0
	mvn	r1, #-2147483648
	bl	__divdi3
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	.loc	24 47 19 is_stmt 0              @ ../mulvdi3.c:47:19
	subs	r2, r2, r3
	sbcs	r0, r1, r0
	.loc	24 47 13                        @ ../mulvdi3.c:47:13
	bge	.LBB31_16
	b	.LBB31_15
.LBB31_15:                              @ %if.then26
	.loc	24 48 13 is_stmt 1              @ ../mulvdi3.c:48:13
	ldr	r0, .LCPI31_0
	ldr	r2, .LCPI31_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB31_16:                              @ %if.end27
	.loc	24 49 5                         @ ../mulvdi3.c:49:5
	b	.LBB31_20
.LBB31_17:                              @ %if.else
	.loc	24 52 27                        @ ../mulvdi3.c:52:27
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	rsbs	r2, r1, #0
	rsc	r3, r0, #0
	mov	r0, #0
	mov	r1, #-2147483648
	.loc	24 52 25 is_stmt 0              @ ../mulvdi3.c:52:25
	bl	__divdi3
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	.loc	24 52 19                        @ ../mulvdi3.c:52:19
	subs	r2, r2, r3
	sbcs	r0, r1, r0
	.loc	24 52 13                        @ ../mulvdi3.c:52:13
	bge	.LBB31_19
	b	.LBB31_18
.LBB31_18:                              @ %if.then31
	.loc	24 53 13 is_stmt 1              @ ../mulvdi3.c:53:13
	ldr	r0, .LCPI31_0
	ldr	r2, .LCPI31_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.LBB31_19:                              @ %if.end32
	.loc	24 0 13 is_stmt 0               @ ../mulvdi3.c:0:13
	b	.LBB31_20
.LBB31_20:                              @ %if.end33
	.loc	24 55 5 is_stmt 1               @ ../mulvdi3.c:55:5
	b	.LBB31_21
.LBB31_21:                              @ %return
	.loc	24 0 0 is_stmt 0                @ ../mulvdi3.c:0:0
	ldr	r2, [r11, #-16]                 @ 4-byte Reload
	ldr	r3, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-12]                 @ 4-byte Reload
	ldr	lr, [r11, #-24]                 @ 4-byte Reload
	umull	r0, r4, r1, r3
	mla	r12, r1, lr, r4
	mla	r1, r2, r3, r12
	.loc	24 56 1 is_stmt 1               @ ../mulvdi3.c:56:1
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp59:
	.p2align	2
@ %bb.22:
	.loc	24 0 1 is_stmt 0                @ ../mulvdi3.c:0:1
.LCPI31_0:
	.long	.L.str.8
.LCPI31_1:
	.long	.L__func__.__mulvdi3
.Lfunc_end31:
	.size	__mulvdi3, .Lfunc_end31-__mulvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__mulvsi3                       @ -- Begin function __mulvsi3
	.p2align	2
	.type	__mulvsi3,%function
	.code	32                              @ @__mulvsi3
__mulvsi3:
.Lfunc_begin32:
	.file	25 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../mulvsi3.c" md5 0x32cd947949fac3c039bd0839cd5d7c78
	.loc	25 23 0 is_stmt 1               @ ../mulvsi3.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #24
	str	r1, [r11, #-8]                  @ 4-byte Spill
	str	r0, [r11, #-4]                  @ 4-byte Spill
.Ltmp60:
	.loc	25 27 9 prologue_end            @ ../mulvsi3.c:27:9
	cmp	r0, #-2147483648
	bne	.LBB32_5
	b	.LBB32_1
.LBB32_1:                               @ %if.then
	.loc	25 29 20                        @ ../mulvsi3.c:29:20
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB32_3
	b	.LBB32_2
.LBB32_2:                               @ %lor.lhs.false
	.loc	25 29 13 is_stmt 0              @ ../mulvsi3.c:29:13
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB32_4
	b	.LBB32_3
.LBB32_3:                               @ %if.then3
	.loc	25 30 13 is_stmt 1              @ ../mulvsi3.c:30:13
	b	.LBB32_21
.LBB32_4:                               @ %if.end
	.loc	25 31 9                         @ ../mulvsi3.c:31:9
	ldr	r0, .LCPI32_0
	ldr	r2, .LCPI32_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB32_5:                               @ %if.end4
	.loc	25 33 9                         @ ../mulvsi3.c:33:9
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #-2147483648
	bne	.LBB32_10
	b	.LBB32_6
.LBB32_6:                               @ %if.then6
	.loc	25 35 20                        @ ../mulvsi3.c:35:20
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB32_8
	b	.LBB32_7
.LBB32_7:                               @ %lor.lhs.false8
	.loc	25 35 13 is_stmt 0              @ ../mulvsi3.c:35:13
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB32_9
	b	.LBB32_8
.LBB32_8:                               @ %if.then10
	.loc	25 36 13 is_stmt 1              @ ../mulvsi3.c:36:13
	b	.LBB32_21
.LBB32_9:                               @ %if.end12
	.loc	25 37 9                         @ ../mulvsi3.c:37:9
	ldr	r0, .LCPI32_0
	ldr	r2, .LCPI32_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB32_10:                              @ %if.end13
	.loc	25 39 19                        @ ../mulvsi3.c:39:19
	ldr	r2, [r11, #-8]                  @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	asr	r0, r1, #31
	str	r0, [sp]                        @ 4-byte Spill
	.loc	25 40 23                        @ ../mulvsi3.c:40:23
	eor	r0, r1, r1, asr #31
	.loc	25 40 29 is_stmt 0              @ ../mulvsi3.c:40:29
	sub	r0, r0, r1, asr #31
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	25 41 19 is_stmt 1              @ ../mulvsi3.c:41:19
	asr	r1, r2, #31
	str	r1, [sp, #8]                    @ 4-byte Spill
	.loc	25 42 23                        @ ../mulvsi3.c:42:23
	eor	r1, r2, r2, asr #31
	.loc	25 42 29 is_stmt 0              @ ../mulvsi3.c:42:29
	sub	r1, r1, r2, asr #31
	str	r1, [sp, #12]                   @ 4-byte Spill
	.loc	25 43 19 is_stmt 1              @ ../mulvsi3.c:43:19
	cmp	r0, #2
	blt	.LBB32_12
	b	.LBB32_11
.LBB32_11:                              @ %lor.lhs.false18
	.loc	25 43 9 is_stmt 0               @ ../mulvsi3.c:43:9
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #1
	bgt	.LBB32_13
	b	.LBB32_12
.LBB32_12:                              @ %if.then20
	.loc	25 44 9 is_stmt 1               @ ../mulvsi3.c:44:9
	b	.LBB32_21
.LBB32_13:                              @ %if.end22
	.loc	25 45 9                         @ ../mulvsi3.c:45:9
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	cmp	r0, r1
	bne	.LBB32_17
	b	.LBB32_14
.LBB32_14:                              @ %if.then24
	.loc	25 47 25                        @ ../mulvsi3.c:47:25
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mvn	r0, #-2147483648
	bl	__divsi3
	mov	r1, r0
	.loc	25 47 13 is_stmt 0              @ ../mulvsi3.c:47:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB32_16
	b	.LBB32_15
.LBB32_15:                              @ %if.then26
	.loc	25 48 13 is_stmt 1              @ ../mulvsi3.c:48:13
	ldr	r0, .LCPI32_0
	ldr	r2, .LCPI32_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB32_16:                              @ %if.end27
	.loc	25 49 5                         @ ../mulvsi3.c:49:5
	b	.LBB32_20
.LBB32_17:                              @ %if.else
	.loc	25 52 27                        @ ../mulvsi3.c:52:27
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	rsb	r1, r0, #0
	mov	r0, #-2147483648
	.loc	25 52 25 is_stmt 0              @ ../mulvsi3.c:52:25
	bl	__divsi3
	mov	r1, r0
	.loc	25 52 13                        @ ../mulvsi3.c:52:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB32_19
	b	.LBB32_18
.LBB32_18:                              @ %if.then31
	.loc	25 53 13 is_stmt 1              @ ../mulvsi3.c:53:13
	ldr	r0, .LCPI32_0
	ldr	r2, .LCPI32_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.LBB32_19:                              @ %if.end32
	.loc	25 0 13 is_stmt 0               @ ../mulvsi3.c:0:13
	b	.LBB32_20
.LBB32_20:                              @ %if.end33
	.loc	25 55 5 is_stmt 1               @ ../mulvsi3.c:55:5
	b	.LBB32_21
.LBB32_21:                              @ %return
	.loc	25 0 0 is_stmt 0                @ ../mulvsi3.c:0:0
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [r11, #-8]                  @ 4-byte Reload
	mul	r0, r1, r2
	.loc	25 56 1 is_stmt 1               @ ../mulvsi3.c:56:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp61:
	.p2align	2
@ %bb.22:
	.loc	25 0 1 is_stmt 0                @ ../mulvsi3.c:0:1
.LCPI32_0:
	.long	.L.str.9
.LCPI32_1:
	.long	.L__func__.__mulvsi3
.Lfunc_end32:
	.size	__mulvsi3, .Lfunc_end32-__mulvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__paritydi2                     @ -- Begin function __paritydi2
	.p2align	2
	.type	__paritydi2,%function
	.code	32                              @ @__paritydi2
__paritydi2:
.Lfunc_begin33:
	.file	26 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../paritydi2.c" md5 0xbd9549e31bcebf1c2265048ea6f18a77
	.loc	26 21 0 is_stmt 1               @ ../paritydi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp62:
	.loc	26 23 11 prologue_end           @ ../paritydi2.c:23:11
	str	r1, [sp, #4]
	str	r0, [sp]
	.loc	26 24 39                        @ ../paritydi2.c:24:39
	ldr	r1, [sp]
	.loc	26 24 28 is_stmt 0              @ ../paritydi2.c:24:28
	ldr	r0, [sp, #4]
	.loc	26 24 33                        @ ../paritydi2.c:24:33
	eor	r0, r0, r1
	.loc	26 24 12                        @ ../paritydi2.c:24:12
	bl	__paritysi2
	.loc	26 24 5                         @ ../paritydi2.c:24:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp63:
.Lfunc_end33:
	.size	__paritydi2, .Lfunc_end33-__paritydi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__paritysi2                     @ -- Begin function __paritysi2
	.p2align	2
	.type	__paritysi2,%function
	.code	32                              @ @__paritysi2
__paritysi2:
.Lfunc_begin34:
	.file	27 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../paritysi2.c" md5 0x235e89e1ac3c55fb43879550247ea25b
	.loc	27 21 0 is_stmt 1               @ ../paritysi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	27 23 7 prologue_end            @ ../paritysi2.c:23:7
	eor	r0, r0, r0, lsr #16
	.loc	27 24 7                         @ ../paritysi2.c:24:7
	eor	r0, r0, r0, lsr #8
	.loc	27 25 7                         @ ../paritysi2.c:25:7
	eor	r0, r0, r0, lsr #4
	.loc	27 26 26                        @ ../paritysi2.c:26:26
	and	r2, r0, #15
	mov	r1, #150
	orr	r1, r1, #26880
	mov	r0, #1
	.loc	27 26 34 is_stmt 0              @ ../paritysi2.c:26:34
	and	r0, r0, r1, lsr r2
	.loc	27 26 5                         @ ../paritysi2.c:26:5
	bx	lr
.Ltmp64:
.Lfunc_end34:
	.size	__paritysi2, .Lfunc_end34-__paritysi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__popcountdi2                   @ -- Begin function __popcountdi2
	.p2align	2
	.type	__popcountdi2,%function
	.code	32                              @ @__popcountdi2
__popcountdi2:
.Lfunc_begin35:
	.file	28 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountdi2.c" md5 0x05f001da7fc478c773612fd707769c2a
	.loc	28 21 0 is_stmt 1               @ ../popcountdi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r2, r0
                                        @ kill: def $r0 killed $r1
                                        @ kill: def $r0 killed $r2
.Ltmp65:
	.loc	28 23 20 prologue_end           @ ../popcountdi2.c:23:20
	lsrs	r0, r1, #1
	rrx	r3, r2
	ldr	r12, .LCPI35_0
	.loc	28 23 26 is_stmt 0              @ ../popcountdi2.c:23:26
	and	r0, r0, r12
	and	r3, r3, r12
	.loc	28 23 13                        @ ../popcountdi2.c:23:13
	subs	r2, r2, r3
	sbc	r3, r1, r0
	ldr	r12, .LCPI35_1
	.loc	28 25 21 is_stmt 1              @ ../popcountdi2.c:25:21
	and	r1, r12, r3, lsr #2
	and	r0, r12, r2, lsr #2
	.loc	28 25 52 is_stmt 0              @ ../popcountdi2.c:25:52
	and	r3, r3, r12
	and	r2, r2, r12
	.loc	28 25 46                        @ ../popcountdi2.c:25:46
	add	r1, r1, r3
	add	r0, r0, r2
	.loc	28 27 14 is_stmt 1              @ ../popcountdi2.c:27:14
	add	r1, r1, r1, lsr #4
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI35_2
	.loc	28 27 27 is_stmt 0              @ ../popcountdi2.c:27:27
	and	r1, r1, r2
	and	r0, r0, r2
	.loc	28 29 28 is_stmt 1              @ ../popcountdi2.c:29:28
	add	r0, r0, r1
	.loc	28 32 11                        @ ../popcountdi2.c:32:11
	add	r0, r0, r0, lsr #16
	.loc	28 35 15                        @ ../popcountdi2.c:35:15
	add	r0, r0, r0, lsr #8
	.loc	28 35 27 is_stmt 0              @ ../popcountdi2.c:35:27
	and	r0, r0, #255
	.loc	28 35 5                         @ ../popcountdi2.c:35:5
	bx	lr
.Ltmp66:
	.p2align	2
@ %bb.1:
	.loc	28 0 5                          @ ../popcountdi2.c:0:5
.LCPI35_0:
	.long	1431655765                      @ 0x55555555
.LCPI35_1:
	.long	858993459                       @ 0x33333333
.LCPI35_2:
	.long	252645135                       @ 0xf0f0f0f
.Lfunc_end35:
	.size	__popcountdi2, .Lfunc_end35-__popcountdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__popcountsi2                   @ -- Begin function __popcountsi2
	.p2align	2
	.type	__popcountsi2,%function
	.code	32                              @ @__popcountsi2
__popcountsi2:
.Lfunc_begin36:
	.file	29 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountsi2.c" md5 0xf9ebedb2d8810ee5a54fff38e1b09d64
	.loc	29 21 0 is_stmt 1               @ ../popcountsi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	ldr	r1, .LCPI36_0
.Ltmp67:
	.loc	29 23 23 prologue_end           @ ../popcountsi2.c:23:23
	and	r1, r1, r0, lsr #1
	.loc	29 23 11 is_stmt 0              @ ../popcountsi2.c:23:11
	sub	r1, r0, r1
	ldr	r2, .LCPI36_1
	.loc	29 25 19 is_stmt 1              @ ../popcountsi2.c:25:19
	and	r0, r2, r1, lsr #2
	.loc	29 25 38 is_stmt 0              @ ../popcountsi2.c:25:38
	and	r1, r1, r2
	.loc	29 25 33                        @ ../popcountsi2.c:25:33
	add	r0, r0, r1
	.loc	29 27 12 is_stmt 1              @ ../popcountsi2.c:27:12
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI36_2
	.loc	29 27 24 is_stmt 0              @ ../popcountsi2.c:27:24
	and	r0, r0, r1
	.loc	29 29 12 is_stmt 1              @ ../popcountsi2.c:29:12
	add	r0, r0, r0, lsr #16
	.loc	29 32 15                        @ ../popcountsi2.c:32:15
	add	r0, r0, r0, lsr #8
	.loc	29 32 27 is_stmt 0              @ ../popcountsi2.c:32:27
	and	r0, r0, #255
	.loc	29 32 5                         @ ../popcountsi2.c:32:5
	bx	lr
.Ltmp68:
	.p2align	2
@ %bb.1:
	.loc	29 0 5                          @ ../popcountsi2.c:0:5
.LCPI36_0:
	.long	1431655765                      @ 0x55555555
.LCPI36_1:
	.long	858993459                       @ 0x33333333
.LCPI36_2:
	.long	252645135                       @ 0xf0f0f0f
.Lfunc_end36:
	.size	__popcountsi2, .Lfunc_end36-__popcountsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__subvdi3                       @ -- Begin function __subvdi3
	.p2align	2
	.type	__subvdi3,%function
	.code	32                              @ @__subvdi3
__subvdi3:
.Lfunc_begin37:
	.file	30 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../subvdi3.c" md5 0x5774ab7a3a8e168deb55531047d6a873
	.loc	30 23 0 is_stmt 1               @ ../subvdi3.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #16
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
	mov	r12, r1
	str	r12, [sp]                       @ 4-byte Spill
	mov	r12, r0
	str	r12, [sp, #4]                   @ 4-byte Spill
.Ltmp69:
	.loc	30 24 27 prologue_end           @ ../subvdi3.c:24:27
	subs	r0, r0, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	sbc	r0, r1, r3
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	30 25 9                         @ ../subvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB37_4
	b	.LBB37_1
.LBB37_1:                               @ %if.then
	.loc	30 27 15                        @ ../subvdi3.c:27:15
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	30 27 13 is_stmt 0              @ ../subvdi3.c:27:13
	bge	.LBB37_3
	b	.LBB37_2
.LBB37_2:                               @ %if.then2
	.loc	30 28 13 is_stmt 1              @ ../subvdi3.c:28:13
	ldr	r0, .LCPI37_0
	ldr	r2, .LCPI37_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB37_3:                               @ %if.end
	.loc	30 29 5                         @ ../subvdi3.c:29:5
	b	.LBB37_7
.LBB37_4:                               @ %if.else
	.loc	30 32 15                        @ ../subvdi3.c:32:15
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	30 32 13 is_stmt 0              @ ../subvdi3.c:32:13
	blt	.LBB37_6
	b	.LBB37_5
.LBB37_5:                               @ %if.then4
	.loc	30 33 13 is_stmt 1              @ ../subvdi3.c:33:13
	ldr	r0, .LCPI37_0
	ldr	r2, .LCPI37_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB37_6:                               @ %if.end5
	.loc	30 0 13 is_stmt 0               @ ../subvdi3.c:0:13
	b	.LBB37_7
.LBB37_7:                               @ %if.end6
	.loc	30 35 5 is_stmt 1               @ ../subvdi3.c:35:5
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp70:
	.p2align	2
@ %bb.8:
	.loc	30 0 5 is_stmt 0                @ ../subvdi3.c:0:5
.LCPI37_0:
	.long	.L.str.12
.LCPI37_1:
	.long	.L__func__.__subvdi3
.Lfunc_end37:
	.size	__subvdi3, .Lfunc_end37-__subvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__subvsi3                       @ -- Begin function __subvsi3
	.p2align	2
	.type	__subvsi3,%function
	.code	32                              @ @__subvsi3
__subvsi3:
.Lfunc_begin38:
	.file	31 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../subvsi3.c" md5 0xc9558a85e8fabce36f42a29933bd87e9
	.loc	31 23 0 is_stmt 1               @ ../subvsi3.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	str	r0, [sp]                        @ 4-byte Spill
.Ltmp71:
	.loc	31 24 27 prologue_end           @ ../subvsi3.c:24:27
	sub	r0, r0, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	31 25 9                         @ ../subvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB38_4
	b	.LBB38_1
.LBB38_1:                               @ %if.then
	.loc	31 27 13                        @ ../subvsi3.c:27:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB38_3
	b	.LBB38_2
.LBB38_2:                               @ %if.then2
	.loc	31 28 13                        @ ../subvsi3.c:28:13
	ldr	r0, .LCPI38_0
	ldr	r2, .LCPI38_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB38_3:                               @ %if.end
	.loc	31 29 5                         @ ../subvsi3.c:29:5
	b	.LBB38_7
.LBB38_4:                               @ %if.else
	.loc	31 32 13                        @ ../subvsi3.c:32:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	bgt	.LBB38_6
	b	.LBB38_5
.LBB38_5:                               @ %if.then4
	.loc	31 33 13                        @ ../subvsi3.c:33:13
	ldr	r0, .LCPI38_0
	ldr	r2, .LCPI38_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB38_6:                               @ %if.end5
	.loc	31 0 13 is_stmt 0               @ ../subvsi3.c:0:13
	b	.LBB38_7
.LBB38_7:                               @ %if.end6
	.loc	31 35 5 is_stmt 1               @ ../subvsi3.c:35:5
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp72:
	.p2align	2
@ %bb.8:
	.loc	31 0 5 is_stmt 0                @ ../subvsi3.c:0:5
.LCPI38_0:
	.long	.L.str.13
.LCPI38_1:
	.long	.L__func__.__subvsi3
.Lfunc_end38:
	.size	__subvsi3, .Lfunc_end38-__subvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ucmpdi2                       @ -- Begin function __ucmpdi2
	.p2align	2
	.type	__ucmpdi2,%function
	.code	32                              @ @__ucmpdi2
__ucmpdi2:
.Lfunc_begin39:
	.file	32 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ucmpdi2.c" md5 0x79f778ef54939446d175079e19d07756
	.loc	32 24 0 is_stmt 1               @ ../ucmpdi2.c:24:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp73:
	.loc	32 26 11 prologue_end           @ ../ucmpdi2.c:26:11
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	.loc	32 28 11                        @ ../ucmpdi2.c:28:11
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	.loc	32 29 13                        @ ../ucmpdi2.c:29:13
	ldr	r0, [sp, #20]
	.loc	32 29 24 is_stmt 0              @ ../ucmpdi2.c:29:24
	ldr	r1, [sp, #12]
	.loc	32 29 9                         @ ../ucmpdi2.c:29:9
	cmp	r0, r1
	bhs	.LBB39_2
	b	.LBB39_1
.LBB39_1:                               @ %if.then
	.loc	32 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	32 30 9 is_stmt 1               @ ../ucmpdi2.c:30:9
	b	.LBB39_9
.LBB39_2:                               @ %if.end
	.loc	32 31 13                        @ ../ucmpdi2.c:31:13
	ldr	r0, [sp, #20]
	.loc	32 31 24 is_stmt 0              @ ../ucmpdi2.c:31:24
	ldr	r1, [sp, #12]
	.loc	32 31 9                         @ ../ucmpdi2.c:31:9
	cmp	r0, r1
	bls	.LBB39_4
	b	.LBB39_3
.LBB39_3:                               @ %if.then9
	.loc	32 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	32 32 9 is_stmt 1               @ ../ucmpdi2.c:32:9
	b	.LBB39_9
.LBB39_4:                               @ %if.end10
	.loc	32 33 13                        @ ../ucmpdi2.c:33:13
	ldr	r0, [sp, #16]
	.loc	32 33 23 is_stmt 0              @ ../ucmpdi2.c:33:23
	ldr	r1, [sp, #8]
	.loc	32 33 9                         @ ../ucmpdi2.c:33:9
	cmp	r0, r1
	bhs	.LBB39_6
	b	.LBB39_5
.LBB39_5:                               @ %if.then15
	.loc	32 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	32 34 9 is_stmt 1               @ ../ucmpdi2.c:34:9
	b	.LBB39_9
.LBB39_6:                               @ %if.end16
	.loc	32 35 13                        @ ../ucmpdi2.c:35:13
	ldr	r0, [sp, #16]
	.loc	32 35 23 is_stmt 0              @ ../ucmpdi2.c:35:23
	ldr	r1, [sp, #8]
	.loc	32 35 9                         @ ../ucmpdi2.c:35:9
	cmp	r0, r1
	bls	.LBB39_8
	b	.LBB39_7
.LBB39_7:                               @ %if.then22
	.loc	32 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	32 36 9 is_stmt 1               @ ../ucmpdi2.c:36:9
	b	.LBB39_9
.LBB39_8:                               @ %if.end23
	.loc	32 0 9 is_stmt 0                @ ../ucmpdi2.c:0:9
	mov	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	32 37 5 is_stmt 1               @ ../ucmpdi2.c:37:5
	b	.LBB39_9
.LBB39_9:                               @ %return
	.loc	32 0 0 is_stmt 0                @ ../ucmpdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	32 38 1 is_stmt 1               @ ../ucmpdi2.c:38:1
	add	sp, sp, #24
	bx	lr
.Ltmp74:
.Lfunc_end39:
	.size	__ucmpdi2, .Lfunc_end39-__ucmpdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__aeabi_ulcmp                   @ -- Begin function __aeabi_ulcmp
	.p2align	2
	.type	__aeabi_ulcmp,%function
	.code	32                              @ @__aeabi_ulcmp
__aeabi_ulcmp:
.Lfunc_begin40:
	.loc	32 47 0                         @ ../ucmpdi2.c:47:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp75:
	.loc	32 48 9 prologue_end            @ ../ucmpdi2.c:48:9
	bl	__ucmpdi2
	.loc	32 48 25 is_stmt 0              @ ../ucmpdi2.c:48:25
	sub	r0, r0, #1
	.loc	32 48 2                         @ ../ucmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp76:
.Lfunc_end40:
	.size	__aeabi_ulcmp, .Lfunc_end40-__aeabi_ulcmp
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivdi3                       @ -- Begin function __udivdi3
	.p2align	2
	.type	__udivdi3,%function
	.code	32                              @ @__udivdi3
__udivdi3:
.Lfunc_begin41:
	.file	33 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivdi3.c" md5 0x580a28989090b62fc3d261faa6e31a6b
	.loc	33 21 0 is_stmt 1               @ ../udivdi3.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp77:
	.loc	33 22 12 prologue_end           @ ../udivdi3.c:22:12
	mov	lr, sp
	mov	r12, #0
	str	r12, [lr]
	bl	__udivmoddi4
	.loc	33 22 5 is_stmt 0               @ ../udivdi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp78:
.Lfunc_end41:
	.size	__udivdi3, .Lfunc_end41-__udivdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivmodsi4                    @ -- Begin function __udivmodsi4
	.p2align	2
	.type	__udivmodsi4,%function
	.code	32                              @ @__udivmodsi4
__udivmodsi4:
.Lfunc_begin42:
	.file	34 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivmodsi4.c" md5 0xc0341684574a20dbcfbe4df0ab9f8538
	.loc	34 21 0 is_stmt 1               @ ../udivmodsi4.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #16
	str	r2, [r11, #-4]                  @ 4-byte Spill
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
.Ltmp79:
	.loc	34 22 14 prologue_end           @ ../udivmodsi4.c:22:14
	bl	__udivsi3
	ldr	r12, [sp, #4]                   @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [r11, #-4]                  @ 4-byte Reload
	.loc	34 23 16                        @ ../udivmodsi4.c:23:16
	mul	r3, r0, r12
	.loc	34 23 12 is_stmt 0              @ ../udivmodsi4.c:23:12
	sub	r1, r1, r3
	.loc	34 23 8                         @ ../udivmodsi4.c:23:8
	str	r1, [r2]
	.loc	34 24 3 is_stmt 1               @ ../udivmodsi4.c:24:3
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp80:
.Lfunc_end42:
	.size	__udivmodsi4, .Lfunc_end42-__udivmodsi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivsi3                       @ -- Begin function __udivsi3
	.p2align	2
	.type	__udivsi3,%function
	.code	32                              @ @__udivsi3
__udivsi3:
.Lfunc_begin43:
	.file	35 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivsi3.c" md5 0xb74987a973aededf95faab34db33f58a
	.loc	35 26 0                         @ ../udivsi3.c:26:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #64
	str	r1, [r11, #-8]                  @ 4-byte Spill
	str	r0, [r11, #-4]                  @ 4-byte Spill
.Ltmp81:
	.loc	35 32 9 prologue_end            @ ../udivsi3.c:32:9
	cmp	r1, #0
	bne	.LBB43_2
	b	.LBB43_1
.LBB43_1:                               @ %if.then
	.loc	35 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	35 33 9 is_stmt 1               @ ../udivsi3.c:33:9
	b	.LBB43_13
.LBB43_2:                               @ %if.end
	.loc	35 34 9                         @ ../udivsi3.c:34:9
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB43_4
	b	.LBB43_3
.LBB43_3:                               @ %if.then2
	.loc	35 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	35 35 9 is_stmt 1               @ ../udivsi3.c:35:9
	b	.LBB43_13
.LBB43_4:                               @ %if.end3
	.loc	35 36 10                        @ ../udivsi3.c:36:10
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	bl	__clzsi2
	mov	r1, r0
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	str	r1, [r11, #-20]                 @ 4-byte Spill
	.loc	35 36 29 is_stmt 0              @ ../udivsi3.c:36:29
	bl	__clzsi2
	mov	r1, r0
	.loc	35 36 27                        @ ../udivsi3.c:36:27
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	sub	r0, r0, r1
	str	r0, [r11, #-16]                 @ 4-byte Spill
	.loc	35 38 9 is_stmt 1               @ ../udivsi3.c:38:9
	cmp	r0, #32
	blo	.LBB43_6
	b	.LBB43_5
.LBB43_5:                               @ %if.then5
	.loc	35 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	35 39 9 is_stmt 1               @ ../udivsi3.c:39:9
	b	.LBB43_13
.LBB43_6:                               @ %if.end6
	.loc	35 40 9                         @ ../udivsi3.c:40:9
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	cmp	r0, #31
	bne	.LBB43_8
	b	.LBB43_7
.LBB43_7:                               @ %if.then8
	.loc	35 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	35 41 9 is_stmt 1               @ ../udivsi3.c:41:9
	b	.LBB43_13
.LBB43_8:                               @ %if.end9
	.loc	35 42 5                         @ ../udivsi3.c:42:5
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [r11, #-16]                 @ 4-byte Reload
	add	r1, r2, #1
	.loc	35 45 28                        @ ../udivsi3.c:45:28
	rsb	r2, r2, #31
	.loc	35 45 11 is_stmt 0              @ ../udivsi3.c:45:11
	lsl	r3, r0, r2
	.loc	35 46 11 is_stmt 1              @ ../udivsi3.c:46:11
	lsr	r2, r0, r1
	mov	r0, #0
	str	r3, [sp, #28]                   @ 4-byte Spill
	str	r2, [sp, #32]                   @ 4-byte Spill
	str	r1, [r11, #-28]                 @ 4-byte Spill
	str	r0, [r11, #-24]                 @ 4-byte Spill
	.loc	35 48 5                         @ ../udivsi3.c:48:5
	b	.LBB43_9
.LBB43_9:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	35 0 0 is_stmt 0                @ ../udivsi3.c:0:0
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	ldr	r0, [r11, #-28]                 @ 4-byte Reload
	ldr	r3, [r11, #-24]                 @ 4-byte Reload
	str	r3, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	str	r2, [sp, #20]                   @ 4-byte Spill
	str	r1, [sp, #24]                   @ 4-byte Spill
	.loc	35 48 5                         @ ../udivsi3.c:48:5
	cmp	r0, #0
	beq	.LBB43_12
	b	.LBB43_10
.LBB43_10:                              @ %for.body
                                        @   in Loop: Header=BB43_9 Depth=1
	.loc	35 51 22 is_stmt 1              @ ../udivsi3.c:51:22
	ldr	r1, [r11, #-8]                  @ 4-byte Reload
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	lsl	r0, r0, #1
	orr	r0, r0, r2, lsr #31
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	35 60 41                        @ ../udivsi3.c:60:41
	mvn	r0, r0
	add	r0, r0, r1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	35 63 5                         @ ../udivsi3.c:63:5
	b	.LBB43_11
.LBB43_11:                              @ %for.inc
                                        @   in Loop: Header=BB43_9 Depth=1
	.loc	35 62 11                        @ ../udivsi3.c:62:11
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r3, [sp, #12]                   @ 4-byte Reload
	ldr	r12, [sp, #24]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	lr, [r11, #-8]                  @ 4-byte Reload
	sub	lr, r2, lr
	cmp	r0, #0
	movmi	r2, lr
	.loc	35 61 19                        @ ../udivsi3.c:61:19
	lsr	r0, r0, #31
	.loc	35 52 22                        @ ../udivsi3.c:52:22
	orr	r3, r3, r12, lsl #1
	.loc	35 48 20                        @ ../udivsi3.c:48:20
	sub	r1, r1, #1
	str	r3, [sp, #28]                   @ 4-byte Spill
	str	r2, [sp, #32]                   @ 4-byte Spill
	str	r1, [r11, #-28]                 @ 4-byte Spill
	str	r0, [r11, #-24]                 @ 4-byte Spill
	.loc	35 48 5 is_stmt 0               @ ../udivsi3.c:48:5
	b	.LBB43_9
.LBB43_12:                              @ %for.end
	.loc	35 64 18 is_stmt 1              @ ../udivsi3.c:64:18
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	orr	r0, r0, r1, lsl #1
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	35 65 5                         @ ../udivsi3.c:65:5
	b	.LBB43_13
.LBB43_13:                              @ %return
	.loc	35 0 0 is_stmt 0                @ ../udivsi3.c:0:0
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	.loc	35 66 1 is_stmt 1               @ ../udivsi3.c:66:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp82:
.Lfunc_end43:
	.size	__udivsi3, .Lfunc_end43-__udivsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__umoddi3                       @ -- Begin function __umoddi3
	.p2align	2
	.type	__umoddi3,%function
	.code	32                              @ @__umoddi3
__umoddi3:
.Lfunc_begin44:
	.file	36 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../umoddi3.c" md5 0x1a99e635325595a81040fb97dab88295
	.loc	36 21 0                         @ ../umoddi3.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #16
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp83:
	.loc	36 23 5 prologue_end            @ ../umoddi3.c:23:5
	mov	lr, sp
	add	r12, sp, #8
	str	r12, [lr]
	bl	__udivmoddi4
	.loc	36 24 12                        @ ../umoddi3.c:24:12
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	.loc	36 24 5 is_stmt 0               @ ../umoddi3.c:24:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp84:
.Lfunc_end44:
	.size	__umoddi3, .Lfunc_end44-__umoddi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__umodsi3                       @ -- Begin function __umodsi3
	.p2align	2
	.type	__umodsi3,%function
	.code	32                              @ @__umodsi3
__umodsi3:
.Lfunc_begin45:
	.file	37 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../umodsi3.c" md5 0xce74ac33cd2bd170a84f43824cae8961
	.loc	37 21 0 is_stmt 1               @ ../umodsi3.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp85:
	.loc	37 22 16 prologue_end           @ ../umodsi3.c:22:16
	bl	__udivsi3
	ldr	r3, [sp]                        @ 4-byte Reload
	mov	r2, r0
	.loc	37 22 32 is_stmt 0              @ ../umodsi3.c:22:32
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mul	r1, r2, r3
	.loc	37 22 14                        @ ../umodsi3.c:22:14
	sub	r0, r0, r1
	.loc	37 22 5                         @ ../umodsi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp86:
.Lfunc_end45:
	.size	__umodsi3, .Lfunc_end45-__umodsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	memcpy                          @ -- Begin function memcpy
	.p2align	2
	.type	memcpy,%function
	.code	32                              @ @memcpy
memcpy:
.Lfunc_begin46:
	.file	38 "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" "../memory.c" md5 0xfa9c872a007b30a353222cd13b38538d
	.loc	38 4 0 is_stmt 1                @ ../memory.c:4:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #20
	.cfi_def_cfa_offset 20
	str	r2, [sp, #4]                    @ 4-byte Spill
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #16]                   @ 4-byte Spill
.Ltmp87:
	.loc	38 8 6 prologue_end             @ ../memory.c:8:6
	b	.LBB46_1
.LBB46_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	38 0 0 is_stmt 0                @ ../memory.c:0:0
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	38 8 2                          @ ../memory.c:8:2
	cmp	r0, r1
	beq	.LBB46_4
	b	.LBB46_2
.LBB46_2:                               @ %for.body
                                        @   in Loop: Header=BB46_1 Depth=1
	.loc	38 9 21 is_stmt 1               @ ../memory.c:9:21
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldrb	r0, [r0, r2]
	.loc	38 9 19 is_stmt 0               @ ../memory.c:9:19
	strb	r0, [r1, r2]
	.loc	38 10 2 is_stmt 1               @ ../memory.c:10:2
	b	.LBB46_3
.LBB46_3:                               @ %for.inc
                                        @   in Loop: Header=BB46_1 Depth=1
	.loc	38 8 26                         @ ../memory.c:8:26
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	38 8 2 is_stmt 0                @ ../memory.c:8:2
	b	.LBB46_1
.LBB46_4:                               @ %for.end
                                        @ implicit-def: $r0
	.loc	38 11 1 is_stmt 1               @ ../memory.c:11:1
	add	sp, sp, #20
	bx	lr
.Ltmp88:
.Lfunc_end46:
	.size	memcpy, .Lfunc_end46-memcpy
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	memset                          @ -- Begin function memset
	.p2align	2
	.type	memset,%function
	.code	32                              @ @memset
memset:
.Lfunc_begin47:
	.loc	38 14 0                         @ ../memory.c:14:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #20
	.cfi_def_cfa_offset 20
	str	r2, [sp, #4]                    @ 4-byte Spill
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #16]                   @ 4-byte Spill
.Ltmp89:
	.loc	38 17 6 prologue_end            @ ../memory.c:17:6
	b	.LBB47_1
.LBB47_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	38 0 0 is_stmt 0                @ ../memory.c:0:0
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	38 17 2                         @ ../memory.c:17:2
	cmp	r0, r1
	beq	.LBB47_4
	b	.LBB47_2
.LBB47_2:                               @ %for.body
                                        @   in Loop: Header=BB47_1 Depth=1
	.loc	38 18 11 is_stmt 1              @ ../memory.c:18:11
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	strb	r0, [r1, r2]
	.loc	38 19 2                         @ ../memory.c:19:2
	b	.LBB47_3
.LBB47_3:                               @ %for.inc
                                        @   in Loop: Header=BB47_1 Depth=1
	.loc	38 17 26                        @ ../memory.c:17:26
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	38 17 2 is_stmt 0               @ ../memory.c:17:2
	b	.LBB47_1
.LBB47_4:                               @ %for.end
	.loc	38 20 2 is_stmt 1               @ ../memory.c:20:2
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	add	sp, sp, #20
	bx	lr
.Ltmp90:
.Lfunc_end47:
	.size	memset, .Lfunc_end47-memset
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.type	cjpeg_wrbmp_jpeg_dec_1,%object  @ @cjpeg_wrbmp_jpeg_dec_1
	.bss
	.globl	cjpeg_wrbmp_jpeg_dec_1
	.p2align	2
cjpeg_wrbmp_jpeg_dec_1:
	.zero	460
	.size	cjpeg_wrbmp_jpeg_dec_1, 460

	.type	cjpeg_wrbmp_jpeg_dec_2,%object  @ @cjpeg_wrbmp_jpeg_dec_2
	.globl	cjpeg_wrbmp_jpeg_dec_2
	.p2align	2
cjpeg_wrbmp_jpeg_dec_2:
	.zero	460
	.size	cjpeg_wrbmp_jpeg_dec_2, 460

	.type	cjpeg_wrbmp_output_array,%object @ @cjpeg_wrbmp_output_array
	.globl	cjpeg_wrbmp_output_array
cjpeg_wrbmp_output_array:
	.zero	6144
	.size	cjpeg_wrbmp_output_array, 6144

	.type	cjpeg_wrbmp_jpeg_stream,%object @ @cjpeg_wrbmp_jpeg_stream
	.globl	cjpeg_wrbmp_jpeg_stream
	.p2align	2
cjpeg_wrbmp_jpeg_stream:
	.long	0
	.size	cjpeg_wrbmp_jpeg_stream, 4

	.type	cjpeg_wrbmp_checksum,%object    @ @cjpeg_wrbmp_checksum
	.globl	cjpeg_wrbmp_checksum
	.p2align	2
cjpeg_wrbmp_checksum:
	.long	0                               @ 0x0
	.size	cjpeg_wrbmp_checksum, 4

	.type	cjpeg_wrbmp_djpeg_dest,%object  @ @cjpeg_wrbmp_djpeg_dest
	.globl	cjpeg_wrbmp_djpeg_dest
	.p2align	2
cjpeg_wrbmp_djpeg_dest:
	.zero	24
	.size	cjpeg_wrbmp_djpeg_dest, 24

	.type	cjpeg_wrbmp_bmp_dest,%object    @ @cjpeg_wrbmp_bmp_dest
	.globl	cjpeg_wrbmp_bmp_dest
	.p2align	2
cjpeg_wrbmp_bmp_dest:
	.zero	48
	.size	cjpeg_wrbmp_bmp_dest, 48

	.type	.L__const.cjpeg_wrbmp_initInput.tmp,%object @ @__const.cjpeg_wrbmp_initInput.tmp
	.section	.rodata,"a",%progbits
.L__const.cjpeg_wrbmp_initInput.tmp:
	.ascii	",i\231G\227\240\274Z\321\203\335r]|\320\317\3326\221q\231\357\342S\363\227bCr\231S\272tH\274\276m\242\332\205\320\321s\373\207Y\217\342\346\366\230\363\230s\264N\366\244\372uL\226\230\274\373\303\177o\341\320^]\217\203\311\323c]\276\235y\360u\271\247\211\230\274\372;\370\365s\360\300\321\217\210b\340\247\207\204\275H\371\315,j`\223\367\371\344\340\371\276p\207\250_\315\253:pO\316K\362\274\275\341\271Q\335\231\364\306\253\243\237\321\360\212\224\317\246\300\274\227b\276\321\232\341H`\371\277\337\317\243\317\205\373\267\207\211\237\367\247S{\307\313\220\216\355M\200u\251\312\210\200\274\2507\336\251t<K\257f\331\250\271\275\341}\300po\250\357\341\250a\201\276\257\251\341\252\342\341\342\340\206j\372\336\224\361\250\246\240_\276f\264\301o\227\245\253\3104\206\251\337\246\341\251o\271m8\364\235\372\342\347w\274"
	.ascii	"*\217.[T\311\214[R\214\037X,\2539s\316;\221ut5\350uP<B@u\256Y\262\223?S;g\213\323@Dbv5wZ\241\350\253b\260\354v\235\264MrX\034w(aE\275\374\341w`\333TRi\2361\310=uN?\223\214ElZ\241i\276rTLF+\234\336`H\217Zi8\220N\201#Bed1i\202\240\357\201\215S+Dj\204S\\\202\257?\203O\300i9\240v\242\215N\300\200\316\311\313\242\237\243\335\267\235\261\275\300\201\2026h-e\3744[\2611\335to\217\\\216\237\203\255=\237\255Q\201\326\325\221\217\350C\221\202c\355n\240\203C2\201\203\177L\\\313`\316\260\264Uc\242v@N\276\277-e\201:H\3231ssU=dtk\217u\333\232\341\256\240\243w\276j\2721-\261\223U\212*\256;DxG\2018\225aDX\224<\357\263\225h"
	.ascii	",L%8L\230z\231M\277)L'a.m\254+t[f1\311DX-5_\240\257f\244t2L-V\275\3302=]\304[d:t\337\246f~\335\236V\3537qx4s*V7\245\367\302\240l\252lbM\250*\263F`>G\330dG\233y\222V\206ir1d2w\332_Q\334Nf2}D\252$>w\201,\227H\217\361\203\211OI7z\314IJ\203\3355YH\262<@\221\235\234\261e\264p\302\316\262\250\335\231\311w\336\245\274\324u\264-\206*\202\345/k\254(\335\222\204\212n\220\274p\204@\242\221\214\310\265\327\213\305\267j~tY\314\230{\2414.\203\247\255>F\227\227\305\261\270`ae\2026?\215\271-~`.G\254&rdjEv\212\177c\177\306\314\362\370\305\361J\275\262\374A-\224\221a\250-o+@\244Pq/\210S*[\305_\336\247\\b"
	.size	.L__const.cjpeg_wrbmp_initInput.tmp, 768

	.type	cjpeg_wrbmp_colormap,%object    @ @cjpeg_wrbmp_colormap
	.bss
	.globl	cjpeg_wrbmp_colormap
cjpeg_wrbmp_colormap:
	.zero	768
	.size	cjpeg_wrbmp_colormap, 768

	.type	.L.str,%object                  @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"../absvdi2.c"
	.size	.L.str, 13

	.type	.L__func__.__absvdi2,%object    @ @__func__.__absvdi2
.L__func__.__absvdi2:
	.asciz	"__absvdi2"
	.size	.L__func__.__absvdi2, 10

	.type	.L.str.1,%object                @ @.str.1
.L.str.1:
	.asciz	"../absvsi2.c"
	.size	.L.str.1, 13

	.type	.L__func__.__absvsi2,%object    @ @__func__.__absvsi2
.L__func__.__absvsi2:
	.asciz	"__absvsi2"
	.size	.L__func__.__absvsi2, 10

	.type	.L.str.2,%object                @ @.str.2
.L.str.2:
	.asciz	"../addvdi3.c"
	.size	.L.str.2, 13

	.type	.L__func__.__addvdi3,%object    @ @__func__.__addvdi3
.L__func__.__addvdi3:
	.asciz	"__addvdi3"
	.size	.L__func__.__addvdi3, 10

	.type	.L.str.3,%object                @ @.str.3
.L.str.3:
	.asciz	"../addvsi3.c"
	.size	.L.str.3, 13

	.type	.L__func__.__addvsi3,%object    @ @__func__.__addvsi3
.L__func__.__addvsi3:
	.asciz	"__addvsi3"
	.size	.L__func__.__addvsi3, 10

	.type	.L.str.8,%object                @ @.str.8
.L.str.8:
	.asciz	"../mulvdi3.c"
	.size	.L.str.8, 13

	.type	.L__func__.__mulvdi3,%object    @ @__func__.__mulvdi3
.L__func__.__mulvdi3:
	.asciz	"__mulvdi3"
	.size	.L__func__.__mulvdi3, 10

	.type	.L.str.9,%object                @ @.str.9
.L.str.9:
	.asciz	"../mulvsi3.c"
	.size	.L.str.9, 13

	.type	.L__func__.__mulvsi3,%object    @ @__func__.__mulvsi3
.L__func__.__mulvsi3:
	.asciz	"__mulvsi3"
	.size	.L__func__.__mulvsi3, 10

	.type	.L.str.12,%object               @ @.str.12
.L.str.12:
	.asciz	"../subvdi3.c"
	.size	.L.str.12, 13

	.type	.L__func__.__subvdi3,%object    @ @__func__.__subvdi3
.L__func__.__subvdi3:
	.asciz	"__subvdi3"
	.size	.L__func__.__subvdi3, 10

	.type	.L.str.13,%object               @ @.str.13
.L.str.13:
	.asciz	"../subvsi3.c"
	.size	.L.str.13, 13

	.type	.L__func__.__subvsi3,%object    @ @__func__.__subvsi3
.L__func__.__subvsi3:
	.asciz	"__subvsi3"
	.size	.L__func__.__subvsi3, 10

	.section	.debug_abbrev,"",%progbits
	.byte	1                               @ Abbreviation Code
	.byte	17                              @ DW_TAG_compile_unit
	.byte	0                               @ DW_CHILDREN_no
	.byte	37                              @ DW_AT_producer
	.byte	37                              @ DW_FORM_strx1
	.byte	19                              @ DW_AT_language
	.byte	5                               @ DW_FORM_data2
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	114                             @ DW_AT_str_offsets_base
	.byte	23                              @ DW_FORM_sec_offset
	.byte	16                              @ DW_AT_stmt_list
	.byte	23                              @ DW_FORM_sec_offset
	.byte	27                              @ DW_AT_comp_dir
	.byte	37                              @ DW_FORM_strx1
	.byte	17                              @ DW_AT_low_pc
	.byte	27                              @ DW_FORM_addrx
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	115                             @ DW_AT_addr_base
	.byte	23                              @ DW_FORM_sec_offset
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	0                               @ EOM(3)
	.section	.debug_info,"",%progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 @ Length of Unit
.Ldebug_info_start0:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	0                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	1                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	2                               @ DW_AT_comp_dir
	.byte	0                               @ DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin0       @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end0:
.Lcu_begin1:
	.long	.Ldebug_info_end1-.Ldebug_info_start1 @ Length of Unit
.Ldebug_info_start1:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	0                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	3                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	2                               @ DW_AT_comp_dir
	.byte	1                               @ DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end1:
.Lcu_begin2:
	.long	.Ldebug_info_end2-.Ldebug_info_start2 @ Length of Unit
.Ldebug_info_start2:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	5                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	2                               @ DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end2:
.Lcu_begin3:
	.long	.Ldebug_info_end3-.Ldebug_info_start3 @ Length of Unit
.Ldebug_info_start3:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	7                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	3                               @ DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end3:
.Lcu_begin4:
	.long	.Ldebug_info_end4-.Ldebug_info_start4 @ Length of Unit
.Ldebug_info_start4:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	8                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	4                               @ DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end4:
.Lcu_begin5:
	.long	.Ldebug_info_end5-.Ldebug_info_start5 @ Length of Unit
.Ldebug_info_start5:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	9                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	5                               @ DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end5:
.Lcu_begin6:
	.long	.Ldebug_info_end6-.Ldebug_info_start6 @ Length of Unit
.Ldebug_info_start6:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	10                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	6                               @ DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end6:
.Lcu_begin7:
	.long	.Ldebug_info_end7-.Ldebug_info_start7 @ Length of Unit
.Ldebug_info_start7:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	11                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	7                               @ DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end7:
.Lcu_begin8:
	.long	.Ldebug_info_end8-.Ldebug_info_start8 @ Length of Unit
.Ldebug_info_start8:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	12                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	8                               @ DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin14     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end8:
.Lcu_begin9:
	.long	.Ldebug_info_end9-.Ldebug_info_start9 @ Length of Unit
.Ldebug_info_start9:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	13                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	9                               @ DW_AT_low_pc
	.long	.Lfunc_end15-.Lfunc_begin15     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end9:
.Lcu_begin10:
	.long	.Ldebug_info_end10-.Ldebug_info_start10 @ Length of Unit
.Ldebug_info_start10:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	14                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	10                              @ DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin16     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end10:
.Lcu_begin11:
	.long	.Ldebug_info_end11-.Ldebug_info_start11 @ Length of Unit
.Ldebug_info_start11:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	15                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	11                              @ DW_AT_low_pc
	.long	.Lfunc_end18-.Lfunc_begin17     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end11:
.Lcu_begin12:
	.long	.Ldebug_info_end12-.Ldebug_info_start12 @ Length of Unit
.Ldebug_info_start12:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	16                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	12                              @ DW_AT_low_pc
	.long	.Lfunc_end19-.Lfunc_begin19     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end12:
.Lcu_begin13:
	.long	.Ldebug_info_end13-.Ldebug_info_start13 @ Length of Unit
.Ldebug_info_start13:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	17                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	13                              @ DW_AT_low_pc
	.long	.Lfunc_end20-.Lfunc_begin20     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end13:
.Lcu_begin14:
	.long	.Ldebug_info_end14-.Ldebug_info_start14 @ Length of Unit
.Ldebug_info_start14:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	18                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	14                              @ DW_AT_low_pc
	.long	.Lfunc_end21-.Lfunc_begin21     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end14:
.Lcu_begin15:
	.long	.Ldebug_info_end15-.Ldebug_info_start15 @ Length of Unit
.Ldebug_info_start15:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	19                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	15                              @ DW_AT_low_pc
	.long	.Lfunc_end22-.Lfunc_begin22     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end15:
.Lcu_begin16:
	.long	.Ldebug_info_end16-.Ldebug_info_start16 @ Length of Unit
.Ldebug_info_start16:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	20                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	16                              @ DW_AT_low_pc
	.long	.Lfunc_end23-.Lfunc_begin23     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end16:
.Lcu_begin17:
	.long	.Ldebug_info_end17-.Ldebug_info_start17 @ Length of Unit
.Ldebug_info_start17:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	21                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	17                              @ DW_AT_low_pc
	.long	.Lfunc_end24-.Lfunc_begin24     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end17:
.Lcu_begin18:
	.long	.Ldebug_info_end18-.Ldebug_info_start18 @ Length of Unit
.Ldebug_info_start18:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	22                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	18                              @ DW_AT_low_pc
	.long	.Lfunc_end25-.Lfunc_begin25     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end18:
.Lcu_begin19:
	.long	.Ldebug_info_end19-.Ldebug_info_start19 @ Length of Unit
.Ldebug_info_start19:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	23                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	19                              @ DW_AT_low_pc
	.long	.Lfunc_end26-.Lfunc_begin26     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end19:
.Lcu_begin20:
	.long	.Ldebug_info_end20-.Ldebug_info_start20 @ Length of Unit
.Ldebug_info_start20:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	24                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	20                              @ DW_AT_low_pc
	.long	.Lfunc_end27-.Lfunc_begin27     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end20:
.Lcu_begin21:
	.long	.Ldebug_info_end21-.Ldebug_info_start21 @ Length of Unit
.Ldebug_info_start21:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	25                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	21                              @ DW_AT_low_pc
	.long	.Lfunc_end28-.Lfunc_begin28     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end21:
.Lcu_begin22:
	.long	.Ldebug_info_end22-.Ldebug_info_start22 @ Length of Unit
.Ldebug_info_start22:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	26                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	22                              @ DW_AT_low_pc
	.long	.Lfunc_end29-.Lfunc_begin29     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end22:
.Lcu_begin23:
	.long	.Ldebug_info_end23-.Ldebug_info_start23 @ Length of Unit
.Ldebug_info_start23:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	27                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	23                              @ DW_AT_low_pc
	.long	.Lfunc_end30-.Lfunc_begin30     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end23:
.Lcu_begin24:
	.long	.Ldebug_info_end24-.Ldebug_info_start24 @ Length of Unit
.Ldebug_info_start24:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	28                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	24                              @ DW_AT_low_pc
	.long	.Lfunc_end31-.Lfunc_begin31     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end24:
.Lcu_begin25:
	.long	.Ldebug_info_end25-.Ldebug_info_start25 @ Length of Unit
.Ldebug_info_start25:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	29                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	25                              @ DW_AT_low_pc
	.long	.Lfunc_end32-.Lfunc_begin32     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end25:
.Lcu_begin26:
	.long	.Ldebug_info_end26-.Ldebug_info_start26 @ Length of Unit
.Ldebug_info_start26:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	30                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	26                              @ DW_AT_low_pc
	.long	.Lfunc_end33-.Lfunc_begin33     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end26:
.Lcu_begin27:
	.long	.Ldebug_info_end27-.Ldebug_info_start27 @ Length of Unit
.Ldebug_info_start27:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	31                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	27                              @ DW_AT_low_pc
	.long	.Lfunc_end34-.Lfunc_begin34     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end27:
.Lcu_begin28:
	.long	.Ldebug_info_end28-.Ldebug_info_start28 @ Length of Unit
.Ldebug_info_start28:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	32                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	28                              @ DW_AT_low_pc
	.long	.Lfunc_end35-.Lfunc_begin35     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end28:
.Lcu_begin29:
	.long	.Ldebug_info_end29-.Ldebug_info_start29 @ Length of Unit
.Ldebug_info_start29:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	33                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	29                              @ DW_AT_low_pc
	.long	.Lfunc_end36-.Lfunc_begin36     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end29:
.Lcu_begin30:
	.long	.Ldebug_info_end30-.Ldebug_info_start30 @ Length of Unit
.Ldebug_info_start30:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	34                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	30                              @ DW_AT_low_pc
	.long	.Lfunc_end37-.Lfunc_begin37     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end30:
.Lcu_begin31:
	.long	.Ldebug_info_end31-.Ldebug_info_start31 @ Length of Unit
.Ldebug_info_start31:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	35                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	31                              @ DW_AT_low_pc
	.long	.Lfunc_end38-.Lfunc_begin38     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end31:
.Lcu_begin32:
	.long	.Ldebug_info_end32-.Ldebug_info_start32 @ Length of Unit
.Ldebug_info_start32:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	36                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	32                              @ DW_AT_low_pc
	.long	.Lfunc_end40-.Lfunc_begin39     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end32:
.Lcu_begin33:
	.long	.Ldebug_info_end33-.Ldebug_info_start33 @ Length of Unit
.Ldebug_info_start33:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	37                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	33                              @ DW_AT_low_pc
	.long	.Lfunc_end41-.Lfunc_begin41     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end33:
.Lcu_begin34:
	.long	.Ldebug_info_end34-.Ldebug_info_start34 @ Length of Unit
.Ldebug_info_start34:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	38                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	34                              @ DW_AT_low_pc
	.long	.Lfunc_end42-.Lfunc_begin42     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end34:
.Lcu_begin35:
	.long	.Ldebug_info_end35-.Ldebug_info_start35 @ Length of Unit
.Ldebug_info_start35:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	39                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	35                              @ DW_AT_low_pc
	.long	.Lfunc_end43-.Lfunc_begin43     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end35:
.Lcu_begin36:
	.long	.Ldebug_info_end36-.Ldebug_info_start36 @ Length of Unit
.Ldebug_info_start36:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	40                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	36                              @ DW_AT_low_pc
	.long	.Lfunc_end44-.Lfunc_begin44     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end36:
.Lcu_begin37:
	.long	.Ldebug_info_end37-.Ldebug_info_start37 @ Length of Unit
.Ldebug_info_start37:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	41                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	6                               @ DW_AT_comp_dir
	.byte	37                              @ DW_AT_low_pc
	.long	.Lfunc_end45-.Lfunc_begin45     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end37:
.Lcu_begin38:
	.long	.Ldebug_info_end38-.Ldebug_info_start38 @ Length of Unit
.Ldebug_info_start38:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	4                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	42                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	43                              @ DW_AT_comp_dir
	.byte	38                              @ DW_AT_low_pc
	.long	.Lfunc_end47-.Lfunc_begin46     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end38:
	.section	.debug_str_offsets,"",%progbits
	.long	180                             @ Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)" @ string offset=0
.Linfo_string1:
	.asciz	"/workspaces/llvmta/testcases/batchtest/cjpeg_wrbmp/cjpeg_wrbmp.c" @ string offset=100
.Linfo_string2:
	.asciz	"/workspaces/llvmta/testcases/tmp.HgxNsMNts5" @ string offset=165
.Linfo_string3:
	.asciz	"/workspaces/llvmta/testcases/batchtest/cjpeg_wrbmp/input.c" @ string offset=209
.Linfo_string4:
	.asciz	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)" @ string offset=268
.Linfo_string5:
	.asciz	"../absvdi2.c"                  @ string offset=389
.Linfo_string6:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" @ string offset=402
.Linfo_string7:
	.asciz	"../int_util.c"                 @ string offset=464
.Linfo_string8:
	.asciz	"../absvsi2.c"                  @ string offset=478
.Linfo_string9:
	.asciz	"../addvdi3.c"                  @ string offset=491
.Linfo_string10:
	.asciz	"../addvsi3.c"                  @ string offset=504
.Linfo_string11:
	.asciz	"../ashldi3.c"                  @ string offset=517
.Linfo_string12:
	.asciz	"../ashrdi3.c"                  @ string offset=530
.Linfo_string13:
	.asciz	"../clzdi2.c"                   @ string offset=543
.Linfo_string14:
	.asciz	"../clzsi2.c"                   @ string offset=555
.Linfo_string15:
	.asciz	"../cmpdi2.c"                   @ string offset=567
.Linfo_string16:
	.asciz	"../ctzdi2.c"                   @ string offset=579
.Linfo_string17:
	.asciz	"../ctzsi2.c"                   @ string offset=591
.Linfo_string18:
	.asciz	"../divdi3.c"                   @ string offset=603
.Linfo_string19:
	.asciz	"../udivmoddi4.c"               @ string offset=615
.Linfo_string20:
	.asciz	"../divmoddi4.c"                @ string offset=631
.Linfo_string21:
	.asciz	"../divmodsi4.c"                @ string offset=646
.Linfo_string22:
	.asciz	"../divsi3.c"                   @ string offset=661
.Linfo_string23:
	.asciz	"../ffsdi2.c"                   @ string offset=673
.Linfo_string24:
	.asciz	"../ffssi2.c"                   @ string offset=685
.Linfo_string25:
	.asciz	"../lshrdi3.c"                  @ string offset=697
.Linfo_string26:
	.asciz	"../moddi3.c"                   @ string offset=710
.Linfo_string27:
	.asciz	"../modsi3.c"                   @ string offset=722
.Linfo_string28:
	.asciz	"../mulvdi3.c"                  @ string offset=734
.Linfo_string29:
	.asciz	"../mulvsi3.c"                  @ string offset=747
.Linfo_string30:
	.asciz	"../paritydi2.c"                @ string offset=760
.Linfo_string31:
	.asciz	"../paritysi2.c"                @ string offset=775
.Linfo_string32:
	.asciz	"../popcountdi2.c"              @ string offset=790
.Linfo_string33:
	.asciz	"../popcountsi2.c"              @ string offset=807
.Linfo_string34:
	.asciz	"../subvdi3.c"                  @ string offset=824
.Linfo_string35:
	.asciz	"../subvsi3.c"                  @ string offset=837
.Linfo_string36:
	.asciz	"../ucmpdi2.c"                  @ string offset=850
.Linfo_string37:
	.asciz	"../udivdi3.c"                  @ string offset=863
.Linfo_string38:
	.asciz	"../udivmodsi4.c"               @ string offset=876
.Linfo_string39:
	.asciz	"../udivsi3.c"                  @ string offset=892
.Linfo_string40:
	.asciz	"../umoddi3.c"                  @ string offset=905
.Linfo_string41:
	.asciz	"../umodsi3.c"                  @ string offset=918
.Linfo_string42:
	.asciz	"../memory.c"                   @ string offset=931
.Linfo_string43:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" @ string offset=943
	.section	.debug_str_offsets,"",%progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.long	.Linfo_string12
	.long	.Linfo_string13
	.long	.Linfo_string14
	.long	.Linfo_string15
	.long	.Linfo_string16
	.long	.Linfo_string17
	.long	.Linfo_string18
	.long	.Linfo_string19
	.long	.Linfo_string20
	.long	.Linfo_string21
	.long	.Linfo_string22
	.long	.Linfo_string23
	.long	.Linfo_string24
	.long	.Linfo_string25
	.long	.Linfo_string26
	.long	.Linfo_string27
	.long	.Linfo_string28
	.long	.Linfo_string29
	.long	.Linfo_string30
	.long	.Linfo_string31
	.long	.Linfo_string32
	.long	.Linfo_string33
	.long	.Linfo_string34
	.long	.Linfo_string35
	.long	.Linfo_string36
	.long	.Linfo_string37
	.long	.Linfo_string38
	.long	.Linfo_string39
	.long	.Linfo_string40
	.long	.Linfo_string41
	.long	.Linfo_string42
	.long	.Linfo_string43
	.section	.debug_addr,"",%progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 @ Length of contribution
.Ldebug_addr_start0:
	.short	5                               @ DWARF version number
	.byte	4                               @ Address size
	.byte	0                               @ Segment selector size
.Laddr_table_base0:
	.long	.Lfunc_begin0
	.long	.Lfunc_begin7
	.long	.Lfunc_begin8
	.long	.Lfunc_begin9
	.long	.Lfunc_begin10
	.long	.Lfunc_begin11
	.long	.Lfunc_begin12
	.long	.Lfunc_begin13
	.long	.Lfunc_begin14
	.long	.Lfunc_begin15
	.long	.Lfunc_begin16
	.long	.Lfunc_begin17
	.long	.Lfunc_begin19
	.long	.Lfunc_begin20
	.long	.Lfunc_begin21
	.long	.Lfunc_begin22
	.long	.Lfunc_begin23
	.long	.Lfunc_begin24
	.long	.Lfunc_begin25
	.long	.Lfunc_begin26
	.long	.Lfunc_begin27
	.long	.Lfunc_begin28
	.long	.Lfunc_begin29
	.long	.Lfunc_begin30
	.long	.Lfunc_begin31
	.long	.Lfunc_begin32
	.long	.Lfunc_begin33
	.long	.Lfunc_begin34
	.long	.Lfunc_begin35
	.long	.Lfunc_begin36
	.long	.Lfunc_begin37
	.long	.Lfunc_begin38
	.long	.Lfunc_begin39
	.long	.Lfunc_begin41
	.long	.Lfunc_begin42
	.long	.Lfunc_begin43
	.long	.Lfunc_begin44
	.long	.Lfunc_begin45
	.long	.Lfunc_begin46
.Ldebug_addr_end0:
	.globl	__aeabi_llsl
	.type	__aeabi_llsl,%function
.set __aeabi_llsl, __ashldi3
	.globl	__aeabi_lasr
	.type	__aeabi_lasr,%function
.set __aeabi_lasr, __ashrdi3
	.globl	__aeabi_idiv
	.type	__aeabi_idiv,%function
.set __aeabi_idiv, __divsi3
	.globl	__aeabi_llsr
	.type	__aeabi_llsr,%function
.set __aeabi_llsr, __lshrdi3
	.globl	__aeabi_uidiv
	.type	__aeabi_uidiv,%function
.set __aeabi_uidiv, __udivsi3
	.ident	"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)"
	.ident	"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.section	".note.GNU-stack","",%progbits
	.section	.debug_line,"",%progbits
.Lline_table_start0:
