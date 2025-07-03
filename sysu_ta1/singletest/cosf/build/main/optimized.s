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
	.globl	cosf_init                       @ -- Begin function cosf_init
	.p2align	2
	.type	cosf_init,%function
	.code	32                              @ @cosf_init
cosf_init:
.Lfunc_begin0:
	.file	1 "/workspaces/llvmta/testcases" "batchtest/cosf/cosf.c" md5 0x8904999a9da5b71daf2776953f115abd
	.loc	1 43 0                          @ batchtest/cosf/cosf.c:43:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	1 43 39 prologue_end            @ batchtest/cosf/cosf.c:43:39
	ldr	r1, .LCPI0_0
	mov	r0, #0
	str	r0, [r1]
	.loc	1 43 47 is_stmt 0               @ batchtest/cosf/cosf.c:43:47
	bx	lr
.Ltmp0:
	.p2align	2
@ %bb.1:
	.loc	1 0 47                          @ batchtest/cosf/cosf.c:0:47
.LCPI0_0:
	.long	cosf_solutions
.Lfunc_end0:
	.size	cosf_init, .Lfunc_end0-cosf_init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	cosf_return                     @ -- Begin function cosf_return
	.p2align	2
	.type	cosf_return,%function
	.code	32                              @ @cosf_return
cosf_return:
.Lfunc_begin1:
	.loc	1 49 0 is_stmt 1                @ batchtest/cosf/cosf.c:49:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #4
	.cfi_def_cfa_offset 4
.Ltmp1:
	.loc	1 50 14 prologue_end            @ batchtest/cosf/cosf.c:50:14
	ldr	r0, .LCPI1_0
	vldr	s0, [r0]
	vcvt.s32.f32	s0, s0
	vmov	r0, s0
	.loc	1 52 7                          @ batchtest/cosf/cosf.c:52:7
	cmn	r0, #4
	bne	.LBB1_2
	b	.LBB1_1
.LBB1_1:                                @ %if.then
	.loc	1 0 7 is_stmt 0                 @ batchtest/cosf/cosf.c:0:7
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 53 5 is_stmt 1                @ batchtest/cosf/cosf.c:53:5
	b	.LBB1_3
.LBB1_2:                                @ %if.else
	.loc	1 0 5 is_stmt 0                 @ batchtest/cosf/cosf.c:0:5
	mvn	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 55 5 is_stmt 1                @ batchtest/cosf/cosf.c:55:5
	b	.LBB1_3
.LBB1_3:                                @ %return
	.loc	1 0 0 is_stmt 0                 @ batchtest/cosf/cosf.c:0:0
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	1 56 1 is_stmt 1                @ batchtest/cosf/cosf.c:56:1
	add	sp, sp, #4
	bx	lr
.Ltmp2:
	.p2align	2
@ %bb.4:
	.loc	1 0 1 is_stmt 0                 @ batchtest/cosf/cosf.c:0:1
.LCPI1_0:
	.long	cosf_solutions
.Lfunc_end1:
	.size	cosf_return, .Lfunc_end1-cosf_return
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	cosf_main                       @ -- Begin function cosf_main
	.p2align	2
	.type	cosf_main,%function
	.code	32                              @ @cosf_main
cosf_main:
.Lfunc_begin2:
	.loc	1 62 0 is_stmt 1                @ batchtest/cosf/cosf.c:62:0
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
	vldr	s0, .LCPI2_0
	vstr	s0, [sp, #4]                    @ 4-byte Spill
.Ltmp3:
	.loc	1 64 45 prologue_end            @ batchtest/cosf/cosf.c:64:45
	b	.LBB2_1
.LBB2_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/cosf/cosf.c:0:0
	vldr	s0, [sp, #4]                    @ 4-byte Reload
	vstr	s0, [sp]                        @ 4-byte Spill
	vldr	s2, .LCPI2_1
	.loc	1 64 40                         @ batchtest/cosf/cosf.c:64:40
	vcmp.f32	s0, s2
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB2_4
	b	.LBB2_2
.LBB2_2:                                @ %for.body
                                        @   in Loop: Header=BB2_1 Depth=1
	.loc	1 65 25 is_stmt 1               @ batchtest/cosf/cosf.c:65:25
	vldr	s0, [sp]                        @ 4-byte Reload
	bl	basicmath___cosf
	vmov.f32	s2, s0
	.loc	1 65 22 is_stmt 0               @ batchtest/cosf/cosf.c:65:22
	ldr	r0, .LCPI2_2
	vldr	s0, [r0]
	vadd.f32	s0, s0, s2
	vstr	s0, [r0]
	.loc	1 65 7                          @ batchtest/cosf/cosf.c:65:7
	b	.LBB2_3
.LBB2_3:                                @ %for.inc
                                        @   in Loop: Header=BB2_1 Depth=1
	.loc	1 0 7                           @ batchtest/cosf/cosf.c:0:7
	vldr	s0, [sp]                        @ 4-byte Reload
	vldr	s2, .LCPI2_3
	.loc	1 64 67 is_stmt 1               @ batchtest/cosf/cosf.c:64:67
	vadd.f32	s0, s0, s2
	vstr	s0, [sp, #4]                    @ 4-byte Spill
	.loc	1 64 40 is_stmt 0               @ batchtest/cosf/cosf.c:64:40
	b	.LBB2_1
.LBB2_4:                                @ %for.end
	.loc	1 66 1 is_stmt 1                @ batchtest/cosf/cosf.c:66:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp4:
	.p2align	2
@ %bb.5:
	.loc	1 0 1 is_stmt 0                 @ batchtest/cosf/cosf.c:0:1
.LCPI2_0:
	.long	0x00000000                      @ float 0
.LCPI2_1:
	.long	0x3e4ccccd                      @ float 0.200000003
.LCPI2_2:
	.long	cosf_solutions
.LCPI2_3:
	.long	0x3dcccccd                      @ float 0.100000001
.Lfunc_end2:
	.size	cosf_main, .Lfunc_end2-cosf_main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	main                            @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                              @ @main
main:
.Lfunc_begin3:
	.loc	1 68 0 is_stmt 1                @ batchtest/cosf/cosf.c:68:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp5:
	.loc	1 69 3 prologue_end             @ batchtest/cosf/cosf.c:69:3
	bl	cosf_init
	.loc	1 70 3                          @ batchtest/cosf/cosf.c:70:3
	bl	cosf_main
	.loc	1 71 10                         @ batchtest/cosf/cosf.c:71:10
	bl	cosf_return
	.loc	1 71 3 is_stmt 0                @ batchtest/cosf/cosf.c:71:3
	pop	{r11, lr}
	bx	lr
.Ltmp6:
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	basicmath___ieee754_acosf       @ -- Begin function basicmath___ieee754_acosf
	.p2align	2
	.type	basicmath___ieee754_acosf,%function
	.code	32                              @ @basicmath___ieee754_acosf
basicmath___ieee754_acosf:
.Lfunc_begin4:
	.file	2 "/workspaces/llvmta/testcases" "batchtest/cosf/wcclibm.c" md5 0xf19b597e9d2a9e9dfbd746090c4130cd
	.loc	2 56 0 is_stmt 1                @ batchtest/cosf/wcclibm.c:56:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #40
	vstr	s0, [r11, #-12]                 @ 4-byte Spill
.Ltmp7:
	.loc	2 59 3 prologue_end             @ batchtest/cosf/wcclibm.c:59:3
	vmov	r0, s0
	str	r0, [r11, #-8]                  @ 4-byte Spill
	.loc	2 60 11                         @ batchtest/cosf/wcclibm.c:60:11
	bic	r0, r0, #-2147483648
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	2 61 8                          @ batchtest/cosf/wcclibm.c:61:8
	cmp	r0, #1065353216
	bne	.LBB4_4
	b	.LBB4_1
.LBB4_1:                                @ %if.then
	.loc	2 62 10                         @ batchtest/cosf/wcclibm.c:62:10
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB4_3
	b	.LBB4_2
.LBB4_2:                                @ %if.then2
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
	vldr	s0, .LCPI4_19
	vstr	s0, [r11, #-16]                 @ 4-byte Spill
	.loc	2 62 19                         @ batchtest/cosf/wcclibm.c:62:19
	b	.LBB4_14
.LBB4_3:                                @ %if.else
	.loc	2 0 19                          @ batchtest/cosf/wcclibm.c:0:19
	vldr	s0, .LCPI4_18
	vstr	s0, [r11, #-16]                 @ 4-byte Spill
	.loc	2 63 10 is_stmt 1               @ batchtest/cosf/wcclibm.c:63:10
	b	.LBB4_14
.LBB4_4:                                @ %if.else3
	.loc	2 65 10                         @ batchtest/cosf/wcclibm.c:65:10
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #1065353216
	bls	.LBB4_6
	b	.LBB4_5
.LBB4_5:                                @ %if.then5
	.loc	2 66 18                         @ batchtest/cosf/wcclibm.c:66:18
	vldr	s0, [r11, #-12]                 @ 4-byte Reload
	vsub.f32	s0, s0, s0
	.loc	2 66 24 is_stmt 0               @ batchtest/cosf/wcclibm.c:66:24
	vdiv.f32	s0, s0, s0
	vstr	s0, [r11, #-16]                 @ 4-byte Spill
	.loc	2 66 7                          @ batchtest/cosf/wcclibm.c:66:7
	b	.LBB4_14
.LBB4_6:                                @ %if.end
	.loc	2 0 7                           @ batchtest/cosf/wcclibm.c:0:7
	b	.LBB4_7
.LBB4_7:                                @ %if.end7
	.loc	2 68 8 is_stmt 1                @ batchtest/cosf/wcclibm.c:68:8
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	lsr	r0, r0, #24
	cmp	r0, #62
	bhi	.LBB4_11
	b	.LBB4_8
.LBB4_8:                                @ %if.then9
	.loc	2 69 10                         @ batchtest/cosf/wcclibm.c:69:10
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #587202560
	bhi	.LBB4_10
	b	.LBB4_9
.LBB4_9:                                @ %if.then11
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
	vldr	s0, .LCPI4_17
	vstr	s0, [r11, #-16]                 @ 4-byte Spill
	.loc	2 69 29                         @ batchtest/cosf/wcclibm.c:69:29
	b	.LBB4_14
.LBB4_10:                               @ %if.end12
	.loc	2 71 11 is_stmt 1               @ batchtest/cosf/wcclibm.c:71:11
	vldr	s2, [r11, #-12]                 @ 4-byte Reload
	vmul.f32	s6, s2, s2
	vstr	s6, [sp, #20]                   @ 4-byte Spill
	vldr	s4, .LCPI4_3
	vldr	s0, .LCPI4_4
	.loc	2 74 55                         @ batchtest/cosf/wcclibm.c:74:55
	vmla.f32	s0, s6, s4
	vldr	s4, .LCPI4_5
	.loc	2 73 53                         @ batchtest/cosf/wcclibm.c:73:53
	vmla.f32	s4, s6, s0
	vldr	s0, .LCPI4_6
	.loc	2 72 73                         @ batchtest/cosf/wcclibm.c:72:73
	vmla.f32	s0, s6, s4
	vldr	s4, .LCPI4_7
	.loc	2 72 51 is_stmt 0               @ batchtest/cosf/wcclibm.c:72:51
	vmla.f32	s4, s6, s0
	vldr	s0, .LCPI4_8
	.loc	2 72 29                         @ batchtest/cosf/wcclibm.c:72:29
	vmla.f32	s0, s6, s4
	.loc	2 72 11                         @ batchtest/cosf/wcclibm.c:72:11
	vmul.f32	s0, s6, s0
	vldr	s4, .LCPI4_9
	vldr	s8, .LCPI4_10
	.loc	2 76 47 is_stmt 1               @ batchtest/cosf/wcclibm.c:76:47
	vmla.f32	s8, s6, s4
	vldr	s4, .LCPI4_11
	.loc	2 75 67                         @ batchtest/cosf/wcclibm.c:75:67
	vmla.f32	s4, s6, s8
	vldr	s8, .LCPI4_12
	.loc	2 75 45 is_stmt 0               @ batchtest/cosf/wcclibm.c:75:45
	vmla.f32	s8, s6, s4
	vldr	s4, .LCPI4_0
	.loc	2 75 23                         @ batchtest/cosf/wcclibm.c:75:23
	vmla.f32	s4, s6, s8
	.loc	2 77 11 is_stmt 1               @ batchtest/cosf/wcclibm.c:77:11
	vdiv.f32	s4, s0, s4
	vldr	s0, .LCPI4_15
	.loc	2 78 58                         @ batchtest/cosf/wcclibm.c:78:58
	vmls.f32	s0, s2, s4
	.loc	2 78 30 is_stmt 0               @ batchtest/cosf/wcclibm.c:78:30
	vsub.f32	s0, s0, s2
	vldr	s2, .LCPI4_16
	vadd.f32	s0, s0, s2
	vstr	s0, [r11, #-16]                 @ 4-byte Spill
	.loc	2 78 5                          @ batchtest/cosf/wcclibm.c:78:5
	b	.LBB4_14
.LBB4_11:                               @ %if.else27
	.loc	2 80 10 is_stmt 1               @ batchtest/cosf/wcclibm.c:80:10
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmn	r0, #1
	bgt	.LBB4_13
	b	.LBB4_12
.LBB4_12:                               @ %if.then29
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
	vldr	s0, [r11, #-12]                 @ 4-byte Reload
	vldr	s2, .LCPI4_0
	.loc	2 81 27 is_stmt 1               @ batchtest/cosf/wcclibm.c:81:27
	vadd.f32	s0, s0, s2
	vldr	s4, .LCPI4_1
	.loc	2 81 33 is_stmt 0               @ batchtest/cosf/wcclibm.c:81:33
	vmul.f32	s0, s0, s4
	vstr	s0, [sp, #8]                    @ 4-byte Spill
	vldr	s6, .LCPI4_3
	vldr	s4, .LCPI4_4
	.loc	2 84 57 is_stmt 1               @ batchtest/cosf/wcclibm.c:84:57
	vmla.f32	s4, s0, s6
	vldr	s6, .LCPI4_5
	.loc	2 83 55                         @ batchtest/cosf/wcclibm.c:83:55
	vmla.f32	s6, s0, s4
	vldr	s4, .LCPI4_6
	.loc	2 82 75                         @ batchtest/cosf/wcclibm.c:82:75
	vmla.f32	s4, s0, s6
	vldr	s6, .LCPI4_7
	.loc	2 82 53 is_stmt 0               @ batchtest/cosf/wcclibm.c:82:53
	vmla.f32	s6, s0, s4
	vldr	s4, .LCPI4_8
	.loc	2 82 31                         @ batchtest/cosf/wcclibm.c:82:31
	vmla.f32	s4, s0, s6
	.loc	2 82 13                         @ batchtest/cosf/wcclibm.c:82:13
	vmul.f32	s4, s0, s4
	vstr	s4, [sp, #16]                   @ 4-byte Spill
	vldr	s6, .LCPI4_9
	vldr	s4, .LCPI4_10
	.loc	2 86 49 is_stmt 1               @ batchtest/cosf/wcclibm.c:86:49
	vmla.f32	s4, s0, s6
	vldr	s6, .LCPI4_11
	.loc	2 85 69                         @ batchtest/cosf/wcclibm.c:85:69
	vmla.f32	s6, s0, s4
	vldr	s4, .LCPI4_12
	.loc	2 85 47 is_stmt 0               @ batchtest/cosf/wcclibm.c:85:47
	vmla.f32	s4, s0, s6
	.loc	2 85 25                         @ batchtest/cosf/wcclibm.c:85:25
	vmla.f32	s2, s0, s4
	vstr	s2, [sp, #12]                   @ 4-byte Spill
	.loc	2 87 11 is_stmt 1               @ batchtest/cosf/wcclibm.c:87:11
	bl	basicmath___ieee754_sqrtf
	vldr	s4, [sp, #12]                   @ 4-byte Reload
	vldr	s2, [sp, #16]                   @ 4-byte Reload
	.loc	2 88 13                         @ batchtest/cosf/wcclibm.c:88:13
	vdiv.f32	s4, s2, s4
	vldr	s2, .LCPI4_13
	.loc	2 89 17                         @ batchtest/cosf/wcclibm.c:89:17
	vmla.f32	s2, s4, s0
	.loc	2 90 49                         @ batchtest/cosf/wcclibm.c:90:49
	vadd.f32	s0, s0, s2
	.loc	2 90 27 is_stmt 0               @ batchtest/cosf/wcclibm.c:90:27
	vadd.f32	s2, s0, s0
	vldr	s0, .LCPI4_14
	vsub.f32	s0, s0, s2
	vstr	s0, [r11, #-16]                 @ 4-byte Spill
	.loc	2 90 7                          @ batchtest/cosf/wcclibm.c:90:7
	b	.LBB4_14
.LBB4_13:                               @ %if.else45
	.loc	2 0 7                           @ batchtest/cosf/wcclibm.c:0:7
	vldr	s2, [r11, #-12]                 @ 4-byte Reload
	vldr	s0, .LCPI4_0
	vstr	s0, [sp]                        @ 4-byte Spill
	.loc	2 93 27 is_stmt 1               @ batchtest/cosf/wcclibm.c:93:27
	vsub.f32	s0, s0, s2
	vldr	s2, .LCPI4_1
	.loc	2 93 33 is_stmt 0               @ batchtest/cosf/wcclibm.c:93:33
	vmul.f32	s0, s0, s2
	vstr	s0, [sp, #4]                    @ 4-byte Spill
	.loc	2 94 11 is_stmt 1               @ batchtest/cosf/wcclibm.c:94:11
	bl	basicmath___ieee754_sqrtf
	vldr	s8, [sp]                        @ 4-byte Reload
	vldr	s10, [sp, #4]                   @ 4-byte Reload
	vmov.f32	s6, s0
	.loc	2 96 7                          @ batchtest/cosf/wcclibm.c:96:7
	vmov	r0, s6
	ldr	r1, .LCPI4_2
	.loc	2 97 7                          @ batchtest/cosf/wcclibm.c:97:7
	and	r0, r0, r1
	vmov	s2, r0
	.loc	2 98 16                         @ batchtest/cosf/wcclibm.c:98:16
	vmov.f32	s0, s10
	vmls.f32	s0, s2, s2
	.loc	2 98 34 is_stmt 0               @ batchtest/cosf/wcclibm.c:98:34
	vadd.f32	s4, s6, s2
	.loc	2 98 28                         @ batchtest/cosf/wcclibm.c:98:28
	vdiv.f32	s0, s0, s4
	vldr	s12, .LCPI4_3
	vldr	s4, .LCPI4_4
	.loc	2 101 57 is_stmt 1              @ batchtest/cosf/wcclibm.c:101:57
	vmla.f32	s4, s10, s12
	vldr	s12, .LCPI4_5
	.loc	2 100 55                        @ batchtest/cosf/wcclibm.c:100:55
	vmla.f32	s12, s10, s4
	vldr	s4, .LCPI4_6
	.loc	2 99 75                         @ batchtest/cosf/wcclibm.c:99:75
	vmla.f32	s4, s10, s12
	vldr	s12, .LCPI4_7
	.loc	2 99 53 is_stmt 0               @ batchtest/cosf/wcclibm.c:99:53
	vmla.f32	s12, s10, s4
	vldr	s4, .LCPI4_8
	.loc	2 99 31                         @ batchtest/cosf/wcclibm.c:99:31
	vmla.f32	s4, s10, s12
	.loc	2 99 13                         @ batchtest/cosf/wcclibm.c:99:13
	vmul.f32	s4, s10, s4
	vldr	s14, .LCPI4_9
	vldr	s12, .LCPI4_10
	.loc	2 103 49 is_stmt 1              @ batchtest/cosf/wcclibm.c:103:49
	vmla.f32	s12, s10, s14
	vldr	s14, .LCPI4_11
	.loc	2 102 69                        @ batchtest/cosf/wcclibm.c:102:69
	vmla.f32	s14, s10, s12
	vldr	s12, .LCPI4_12
	.loc	2 102 47 is_stmt 0              @ batchtest/cosf/wcclibm.c:102:47
	vmla.f32	s12, s10, s14
	.loc	2 102 25                        @ batchtest/cosf/wcclibm.c:102:25
	vmla.f32	s8, s10, s12
	.loc	2 104 13 is_stmt 1              @ batchtest/cosf/wcclibm.c:104:13
	vdiv.f32	s4, s4, s8
	.loc	2 105 17                        @ batchtest/cosf/wcclibm.c:105:17
	vmla.f32	s0, s4, s6
	.loc	2 106 35                        @ batchtest/cosf/wcclibm.c:106:35
	vadd.f32	s0, s0, s2
	.loc	2 106 28 is_stmt 0              @ batchtest/cosf/wcclibm.c:106:28
	vadd.f32	s0, s0, s0
	vstr	s0, [r11, #-16]                 @ 4-byte Spill
	.loc	2 106 7                         @ batchtest/cosf/wcclibm.c:106:7
	b	.LBB4_14
.LBB4_14:                               @ %return
	.loc	2 0 0                           @ batchtest/cosf/wcclibm.c:0:0
	vldr	s0, [r11, #-16]                 @ 4-byte Reload
	.loc	2 108 1 is_stmt 1               @ batchtest/cosf/wcclibm.c:108:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp8:
	.p2align	2
@ %bb.15:
	.loc	2 0 1 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:1
.LCPI4_0:
	.long	0x3f800000                      @ float 1
.LCPI4_1:
	.long	0x3f000000                      @ float 0.5
.LCPI4_2:
	.long	4294963200                      @ 0xfffff000
.LCPI4_3:
	.long	0x3811ef08                      @ float 3.47933092E-5
.LCPI4_4:
	.long	0x3a4f7f04                      @ float 7.91535014E-4
.LCPI4_5:
	.long	0xbd241146                      @ float -0.0400555357
.LCPI4_6:
	.long	0x3e4e0aa8                      @ float 0.201212525
.LCPI4_7:
	.long	0xbea6b090                      @ float -0.325565815
.LCPI4_8:
	.long	0x3e2aaaab                      @ float 0.166666672
.LCPI4_9:
	.long	0x3d9dc62e                      @ float 0.077038154
.LCPI4_10:
	.long	0xbf303361                      @ float -0.688283979
.LCPI4_11:
	.long	0x4001572d                      @ float 2.02094579
.LCPI4_12:
	.long	0xc019d139                      @ float -2.40339494
.LCPI4_13:
	.long	0xb3a22168                      @ float -7.54978942E-8
.LCPI4_14:
	.long	0x40490fda                      @ float 3.1415925
.LCPI4_15:
	.long	0x33a22168                      @ float 7.54978942E-8
.LCPI4_16:
	.long	0x3fc90fda                      @ float 1.57079625
.LCPI4_17:
	.long	0x3fc90fdb                      @ float 1.57079637
.LCPI4_18:
	.long	0x40490fdb                      @ float 3.14159274
.LCPI4_19:
	.long	0x00000000                      @ float 0
.Lfunc_end4:
	.size	basicmath___ieee754_acosf, .Lfunc_end4-basicmath___ieee754_acosf
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	basicmath___ieee754_sqrtf       @ -- Begin function basicmath___ieee754_sqrtf
	.p2align	2
	.type	basicmath___ieee754_sqrtf,%function
	.code	32                              @ @basicmath___ieee754_sqrtf
basicmath___ieee754_sqrtf:
.Lfunc_begin5:
	.loc	2 494 0 is_stmt 1               @ batchtest/cosf/wcclibm.c:494:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #84
	.cfi_def_cfa_offset 84
	vstr	s0, [sp, #76]                   @ 4-byte Spill
.Ltmp9:
	.loc	2 500 3 prologue_end            @ batchtest/cosf/wcclibm.c:500:3
	vmov	r0, s0
	str	r0, [sp, #80]                   @ 4-byte Spill
	mov	r1, #1065353216
	orr	r1, r1, #1073741824
	.loc	2 503 13                        @ batchtest/cosf/wcclibm.c:503:13
	and	r0, r0, r1
	.loc	2 503 8 is_stmt 0               @ batchtest/cosf/wcclibm.c:503:8
	cmp	r0, r1
	bne	.LBB5_2
	b	.LBB5_1
.LBB5_1:                                @ %if.then
	.loc	2 504 18 is_stmt 1              @ batchtest/cosf/wcclibm.c:504:18
	vldr	s0, [sp, #76]                   @ 4-byte Reload
	vmla.f32	s0, s0, s0
	vstr	s0, [sp, #72]                   @ 4-byte Spill
	.loc	2 504 5 is_stmt 0               @ batchtest/cosf/wcclibm.c:504:5
	b	.LBB5_28
.LBB5_2:                                @ %if.end
	.loc	2 508 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:508:8
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	cmp	r0, #0
	bgt	.LBB5_9
	b	.LBB5_3
.LBB5_3:                                @ %if.then2
	.loc	2 0 8 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:8
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	mvn	r1, #-2147483648
	.loc	2 509 10 is_stmt 1              @ batchtest/cosf/wcclibm.c:509:10
	tst	r0, r1
	bne	.LBB5_5
	b	.LBB5_4
.LBB5_4:                                @ %if.then5
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
	vldr	s0, [sp, #76]                   @ 4-byte Reload
	vstr	s0, [sp, #72]                   @ 4-byte Spill
	.loc	2 509 36                        @ batchtest/cosf/wcclibm.c:509:36
	b	.LBB5_28
.LBB5_5:                                @ %if.else
	.loc	2 511 12 is_stmt 1              @ batchtest/cosf/wcclibm.c:511:12
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	cmn	r0, #1
	bgt	.LBB5_7
	b	.LBB5_6
.LBB5_6:                                @ %if.then7
	.loc	2 512 20                        @ batchtest/cosf/wcclibm.c:512:20
	vldr	s0, [sp, #76]                   @ 4-byte Reload
	vsub.f32	s0, s0, s0
	.loc	2 512 26 is_stmt 0              @ batchtest/cosf/wcclibm.c:512:26
	vdiv.f32	s0, s0, s0
	vstr	s0, [sp, #72]                   @ 4-byte Spill
	.loc	2 512 9                         @ batchtest/cosf/wcclibm.c:512:9
	b	.LBB5_28
.LBB5_7:                                @ %if.end9
	.loc	2 0 9                           @ batchtest/cosf/wcclibm.c:0:9
	b	.LBB5_8
.LBB5_8:                                @ %if.end10
	.loc	2 513 3 is_stmt 1               @ batchtest/cosf/wcclibm.c:513:3
	b	.LBB5_9
.LBB5_9:                                @ %if.end11
	.loc	2 515 12                        @ batchtest/cosf/wcclibm.c:515:12
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	asr	r1, r0, #23
	str	r1, [sp, #60]                   @ 4-byte Spill
	mov	r2, #0
	.loc	2 516 8                         @ batchtest/cosf/wcclibm.c:516:8
	cmp	r2, r0, lsr #23
	str	r1, [sp, #64]                   @ 4-byte Spill
	str	r0, [sp, #68]                   @ 4-byte Spill
	bne	.LBB5_15
	b	.LBB5_10
.LBB5_10:                               @ %if.then13
	.loc	2 0 8 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:8
	ldr	r1, [sp, #80]                   @ 4-byte Reload
	mov	r0, #0
	str	r1, [sp, #52]                   @ 4-byte Spill
	str	r0, [sp, #56]                   @ 4-byte Spill
	.loc	2 518 11 is_stmt 1              @ batchtest/cosf/wcclibm.c:518:11
	b	.LBB5_11
.LBB5_11:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	2 0 0 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:0
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [sp, #48]                   @ 4-byte Spill
	.loc	2 518 5                         @ batchtest/cosf/wcclibm.c:518:5
	tst	r0, #8388608
	bne	.LBB5_14
	b	.LBB5_12
.LBB5_12:                               @ %for.body
                                        @   in Loop: Header=BB5_11 Depth=1
	.loc	2 519 7 is_stmt 1               @ batchtest/cosf/wcclibm.c:519:7
	b	.LBB5_13
.LBB5_13:                               @ %for.inc
                                        @   in Loop: Header=BB5_11 Depth=1
	.loc	2 519 10 is_stmt 0              @ batchtest/cosf/wcclibm.c:519:10
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	lsl	r1, r1, #1
	.loc	2 518 45 is_stmt 1              @ batchtest/cosf/wcclibm.c:518:45
	add	r0, r0, #1
	str	r1, [sp, #52]                   @ 4-byte Spill
	str	r0, [sp, #56]                   @ 4-byte Spill
	.loc	2 518 5 is_stmt 0               @ batchtest/cosf/wcclibm.c:518:5
	b	.LBB5_11
.LBB5_14:                               @ %for.end
	.loc	2 520 7 is_stmt 1               @ batchtest/cosf/wcclibm.c:520:7
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldr	r1, [sp, #60]                   @ 4-byte Reload
	ldr	r2, [sp, #44]                   @ 4-byte Reload
	sub	r1, r1, r2
	add	r1, r1, #1
	str	r1, [sp, #64]                   @ 4-byte Spill
	str	r0, [sp, #68]                   @ 4-byte Spill
	.loc	2 521 3                         @ batchtest/cosf/wcclibm.c:521:3
	b	.LBB5_15
.LBB5_15:                               @ %if.end18
	.loc	2 500 3                         @ batchtest/cosf/wcclibm.c:500:3
	ldr	r1, [sp, #64]                   @ 4-byte Reload
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	.loc	2 522 5                         @ batchtest/cosf/wcclibm.c:522:5
	sub	r1, r1, #127
	str	r1, [sp, #32]                   @ 4-byte Spill
	ldr	r2, .LCPI5_0
	.loc	2 523 13                        @ batchtest/cosf/wcclibm.c:523:13
	and	r0, r0, r2
	.loc	2 523 28 is_stmt 0              @ batchtest/cosf/wcclibm.c:523:28
	orr	r0, r0, #8388608
	str	r0, [sp, #36]                   @ 4-byte Spill
	.loc	2 524 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:524:8
	tst	r1, #1
	str	r0, [sp, #40]                   @ 4-byte Spill
	beq	.LBB5_17
	b	.LBB5_16
.LBB5_16:                               @ %if.then22
	.loc	2 525 8                         @ batchtest/cosf/wcclibm.c:525:8
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	lsl	r0, r0, #1
	str	r0, [sp, #40]                   @ 4-byte Spill
	.loc	2 525 5 is_stmt 0               @ batchtest/cosf/wcclibm.c:525:5
	b	.LBB5_17
.LBB5_17:                               @ %if.end23
	.loc	2 0 0                           @ batchtest/cosf/wcclibm.c:0:0
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	mov	r0, #16777216
	mov	r2, #0
	str	r2, [sp, #20]                   @ 4-byte Spill
	str	r1, [sp, #24]                   @ 4-byte Spill
	str	r0, [sp, #28]                   @ 4-byte Spill
	.loc	2 534 3 is_stmt 1               @ batchtest/cosf/wcclibm.c:534:3
	b	.LBB5_18
.LBB5_18:                               @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	2 0 0 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:0
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	str	r0, [sp, #8]                    @ 4-byte Spill
	str	r2, [sp, #12]                   @ 4-byte Spill
	str	r1, [sp, #16]                   @ 4-byte Spill
	.loc	2 534 3                         @ batchtest/cosf/wcclibm.c:534:3
	cmp	r0, #0
	beq	.LBB5_20
	b	.LBB5_19
.LBB5_19:                               @ %while.body
                                        @   in Loop: Header=BB5_18 Depth=1
	.loc	2 535 11 is_stmt 1              @ batchtest/cosf/wcclibm.c:535:11
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	add	r1, r1, r0
	.loc	2 537 16                        @ batchtest/cosf/wcclibm.c:537:16
	add	r2, r1, r0
	.loc	2 538 11                        @ batchtest/cosf/wcclibm.c:538:11
	rsb	r1, r1, r3, lsl #1
	.loc	2 542 7                         @ batchtest/cosf/wcclibm.c:542:7
	lsr	r0, r0, #1
	str	r2, [sp, #20]                   @ 4-byte Spill
	str	r1, [sp, #24]                   @ 4-byte Spill
	str	r0, [sp, #28]                   @ 4-byte Spill
	.loc	2 534 3                         @ batchtest/cosf/wcclibm.c:534:3
	b	.LBB5_18
.LBB5_20:                               @ %while.end
	.loc	2 0 3 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:3
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mvn	r0, #-33554432
	.loc	2 546 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:546:8
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	beq	.LBB5_27
	b	.LBB5_21
.LBB5_21:                               @ %if.then34
	.loc	2 0 8 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:8
	mvn	r0, #-33554432
	mov	r1, #0
	.loc	2 548 10 is_stmt 1              @ batchtest/cosf/wcclibm.c:548:10
	cmp	r1, #0
	str	r0, [sp]                        @ 4-byte Spill
	bne	.LBB5_26
	b	.LBB5_22
.LBB5_22:                               @ %if.then36
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
	mov	r0, #1
	.loc	2 550 12 is_stmt 1              @ batchtest/cosf/wcclibm.c:550:12
	cmp	r0, #0
	bne	.LBB5_24
	b	.LBB5_23
.LBB5_23:                               @ %if.then38
	.loc	2 551 9                         @ batchtest/cosf/wcclibm.c:551:9
	b	.LBB5_25
.LBB5_24:                               @ %if.else40
	.loc	2 0 9 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:9
	b	.LBB5_25
.LBB5_25:                               @ %if.end43
	mov	r0, #33554432
	str	r0, [sp]                        @ 4-byte Spill
	.loc	2 554 5 is_stmt 1               @ batchtest/cosf/wcclibm.c:554:5
	b	.LBB5_26
.LBB5_26:                               @ %if.end44
	.loc	2 0 0 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:0
	ldr	r0, [sp]                        @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	2 555 3 is_stmt 1               @ batchtest/cosf/wcclibm.c:555:3
	b	.LBB5_27
.LBB5_27:                               @ %if.end45
	.loc	2 0 0 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:0
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	mov	r0, #1065353216
	orr	r0, r0, #-1073741824
	.loc	2 557 13 is_stmt 1              @ batchtest/cosf/wcclibm.c:557:13
	and	r0, r0, r2, lsl #22
	.loc	2 556 19                        @ batchtest/cosf/wcclibm.c:556:19
	add	r0, r0, r1, asr #1
	.loc	2 557 6                         @ batchtest/cosf/wcclibm.c:557:6
	add	r0, r0, #1056964608
	.loc	2 558 3                         @ batchtest/cosf/wcclibm.c:558:3
	vmov	s0, r0
	vstr	s0, [sp, #72]                   @ 4-byte Spill
	.loc	2 559 3                         @ batchtest/cosf/wcclibm.c:559:3
	b	.LBB5_28
.LBB5_28:                               @ %return
	.loc	2 0 0 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:0
	vldr	s0, [sp, #72]                   @ 4-byte Reload
	.loc	2 560 1 is_stmt 1               @ batchtest/cosf/wcclibm.c:560:1
	add	sp, sp, #84
	bx	lr
.Ltmp10:
	.p2align	2
@ %bb.29:
	.loc	2 0 1 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:1
.LCPI5_0:
	.long	8388607                         @ 0x7fffff
.Lfunc_end5:
	.size	basicmath___ieee754_sqrtf, .Lfunc_end5-basicmath___ieee754_sqrtf
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	basicmath___ieee754_powf        @ -- Begin function basicmath___ieee754_powf
	.p2align	2
	.type	basicmath___ieee754_powf,%function
	.code	32                              @ @basicmath___ieee754_powf
basicmath___ieee754_powf:
.Lfunc_begin6:
	.loc	2 142 0 is_stmt 1               @ batchtest/cosf/wcclibm.c:142:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #208
	vstr	s1, [r11, #-24]                 @ 4-byte Spill
	vstr	s0, [r11, #-20]                 @ 4-byte Spill
.Ltmp11:
	.loc	2 148 3 prologue_end            @ batchtest/cosf/wcclibm.c:148:3
	vmov	r1, s0
	str	r1, [r11, #-16]                 @ 4-byte Spill
	.loc	2 149 3                         @ batchtest/cosf/wcclibm.c:149:3
	vmov	r0, s1
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	2 150 11                        @ batchtest/cosf/wcclibm.c:150:11
	bic	r1, r1, #-2147483648
	str	r1, [r11, #-8]                  @ 4-byte Spill
	.loc	2 151 11                        @ batchtest/cosf/wcclibm.c:151:11
	bic	r0, r0, #-2147483648
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	2 154 8                         @ batchtest/cosf/wcclibm.c:154:8
	cmp	r0, #0
	bne	.LBB6_2
	b	.LBB6_1
.LBB6_1:                                @ %if.then
	.loc	2 0 8 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:8
	vldr	s0, .LCPI6_43
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 154 18                        @ batchtest/cosf/wcclibm.c:154:18
	b	.LBB6_116
.LBB6_2:                                @ %if.end
	.loc	2 0 18                          @ batchtest/cosf/wcclibm.c:0:18
	vldr	s0, [r11, #-20]                 @ 4-byte Reload
	vldr	s2, .LCPI6_43
	.loc	2 157 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:157:8
	vcmp.f32	s0, s2
	vmrs	APSR_nzcv, fpscr
	bne	.LBB6_4
	b	.LBB6_3
.LBB6_3:                                @ %if.then6
	.loc	2 0 8 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:8
	vldr	s0, .LCPI6_43
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 157 20                        @ batchtest/cosf/wcclibm.c:157:20
	b	.LBB6_116
.LBB6_4:                                @ %if.end7
	.loc	2 0 20                          @ batchtest/cosf/wcclibm.c:0:20
	vldr	s0, [r11, #-20]                 @ 4-byte Reload
	vldr	s2, .LCPI6_44
	.loc	2 158 19 is_stmt 1              @ batchtest/cosf/wcclibm.c:158:19
	vcmp.f32	s0, s2
	vmrs	APSR_nzcv, fpscr
	bne	.LBB6_7
	b	.LBB6_5
.LBB6_5:                                @ %land.lhs.true
	.loc	2 158 22 is_stmt 0              @ batchtest/cosf/wcclibm.c:158:22
	vldr	s0, [r11, #-24]                 @ 4-byte Reload
	bl	basicmath___isinff
	.loc	2 158 8                         @ batchtest/cosf/wcclibm.c:158:8
	cmp	r0, #0
	beq	.LBB6_7
	b	.LBB6_6
.LBB6_6:                                @ %if.then9
	.loc	2 0 8                           @ batchtest/cosf/wcclibm.c:0:8
	vldr	s0, .LCPI6_43
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 158 48                        @ batchtest/cosf/wcclibm.c:158:48
	b	.LBB6_116
.LBB6_7:                                @ %if.end10
	.loc	2 0 48                          @ batchtest/cosf/wcclibm.c:0:48
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	mov	r1, #1065353216
	orr	r1, r1, #1073741824
	.loc	2 161 24 is_stmt 1              @ batchtest/cosf/wcclibm.c:161:24
	cmp	r0, r1
	bhi	.LBB6_9
	b	.LBB6_8
.LBB6_8:                                @ %lor.lhs.false
	.loc	2 0 24 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:24
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, .LCPI6_2
	.loc	2 161 8                         @ batchtest/cosf/wcclibm.c:161:8
	cmp	r0, r1
	blo	.LBB6_10
	b	.LBB6_9
.LBB6_9:                                @ %if.then13
	.loc	2 163 14 is_stmt 1              @ batchtest/cosf/wcclibm.c:163:14
	vldr	s0, [r11, #-20]                 @ 4-byte Reload
	vldr	s2, [r11, #-24]                 @ 4-byte Reload
	vadd.f32	s0, s0, s2
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 163 5 is_stmt 0               @ batchtest/cosf/wcclibm.c:163:5
	b	.LBB6_116
.LBB6_10:                               @ %if.end14
	.loc	2 0 5                           @ batchtest/cosf/wcclibm.c:0:5
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	mov	r0, #0
	.loc	2 171 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:171:8
	cmn	r1, #1
	str	r0, [r11, #-32]                 @ 4-byte Spill
	bgt	.LBB6_19
	b	.LBB6_11
.LBB6_11:                               @ %if.then16
	.loc	2 172 10                        @ batchtest/cosf/wcclibm.c:172:10
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	lsr	r0, r0, #23
	cmp	r0, #151
	blo	.LBB6_13
	b	.LBB6_12
.LBB6_12:                               @ %if.then18
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
	mov	r0, #2
	str	r0, [r11, #-36]                 @ 4-byte Spill
	.loc	2 172 29                        @ batchtest/cosf/wcclibm.c:172:29
	b	.LBB6_18
.LBB6_13:                               @ %if.else
	.loc	2 0 29                          @ batchtest/cosf/wcclibm.c:0:29
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	mov	r0, #0
	.loc	2 174 12 is_stmt 1              @ batchtest/cosf/wcclibm.c:174:12
	cmp	r1, #1065353216
	str	r0, [r11, #-40]                 @ 4-byte Spill
	blo	.LBB6_17
	b	.LBB6_14
.LBB6_14:                               @ %if.then20
	.loc	2 0 12 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:12
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	mov	r0, #150
	.loc	2 176 24 is_stmt 1              @ batchtest/cosf/wcclibm.c:176:24
	sub	r3, r0, r1, lsr #23
	.loc	2 176 16 is_stmt 0              @ batchtest/cosf/wcclibm.c:176:16
	lsr	r2, r1, r3
	mov	r0, r2
	str	r0, [r11, #-48]                 @ 4-byte Spill
	mov	r0, #0
	.loc	2 177 14 is_stmt 1              @ batchtest/cosf/wcclibm.c:177:14
	cmp	r1, r2, lsl r3
	str	r0, [r11, #-44]                 @ 4-byte Spill
	bne	.LBB6_16
	b	.LBB6_15
.LBB6_15:                               @ %if.then25
	.loc	2 177 59 is_stmt 0              @ batchtest/cosf/wcclibm.c:177:59
	ldr	r0, [r11, #-48]                 @ 4-byte Reload
	and	r0, r0, #1
	.loc	2 177 53                        @ batchtest/cosf/wcclibm.c:177:53
	rsb	r0, r0, #2
	str	r0, [r11, #-44]                 @ 4-byte Spill
	.loc	2 177 42                        @ batchtest/cosf/wcclibm.c:177:42
	b	.LBB6_16
.LBB6_16:                               @ %if.end28
	.loc	2 0 0                           @ batchtest/cosf/wcclibm.c:0:0
	ldr	r0, [r11, #-44]                 @ 4-byte Reload
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	2 178 7 is_stmt 1               @ batchtest/cosf/wcclibm.c:178:7
	b	.LBB6_17
.LBB6_17:                               @ %if.end29
	.loc	2 0 0 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:0
	ldr	r0, [r11, #-40]                 @ 4-byte Reload
	str	r0, [r11, #-36]                 @ 4-byte Spill
	b	.LBB6_18
.LBB6_18:                               @ %if.end30
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	str	r0, [r11, #-32]                 @ 4-byte Spill
	.loc	2 179 3 is_stmt 1               @ batchtest/cosf/wcclibm.c:179:3
	b	.LBB6_19
.LBB6_19:                               @ %if.end31
	.loc	2 0 0 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:0
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, [r11, #-32]                 @ 4-byte Reload
	str	r1, [r11, #-52]                 @ 4-byte Spill
	mov	r1, #1065353216
	orr	r1, r1, #1073741824
	.loc	2 182 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:182:8
	cmp	r0, r1
	bne	.LBB6_31
	b	.LBB6_20
.LBB6_20:                               @ %if.then33
	.loc	2 183 10                        @ batchtest/cosf/wcclibm.c:183:10
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #1065353216
	bne	.LBB6_22
	b	.LBB6_21
.LBB6_21:                               @ %if.then35
	.loc	2 184 17                        @ batchtest/cosf/wcclibm.c:184:17
	vldr	s0, [r11, #-24]                 @ 4-byte Reload
	vsub.f32	s0, s0, s0
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 184 7 is_stmt 0               @ batchtest/cosf/wcclibm.c:184:7
	b	.LBB6_116
.LBB6_22:                               @ %if.else37
	.loc	2 186 12 is_stmt 1              @ batchtest/cosf/wcclibm.c:186:12
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #1065353216
	bls	.LBB6_27
	b	.LBB6_23
.LBB6_23:                               @ %if.then39
	.loc	2 187 16                        @ batchtest/cosf/wcclibm.c:187:16
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	cmp	r0, #0
	bmi	.LBB6_25
	b	.LBB6_24
.LBB6_24:                               @ %cond.true
	.loc	2 0 16 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:16
	vldr	s0, [r11, #-24]                 @ 4-byte Reload
	vstr	s0, [r11, #-56]                 @ 4-byte Spill
	.loc	2 187 16                        @ batchtest/cosf/wcclibm.c:187:16
	b	.LBB6_26
.LBB6_25:                               @ %cond.false
	.loc	2 0 16                          @ batchtest/cosf/wcclibm.c:0:16
	vldr	s0, .LCPI6_45
	vstr	s0, [r11, #-56]                 @ 4-byte Spill
	.loc	2 187 16                        @ batchtest/cosf/wcclibm.c:187:16
	b	.LBB6_26
.LBB6_26:                               @ %cond.end
	vldr	s0, [r11, #-56]                 @ 4-byte Reload
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 187 9                         @ batchtest/cosf/wcclibm.c:187:9
	b	.LBB6_116
.LBB6_27:                               @ %if.else41
	.loc	2 189 16 is_stmt 1              @ batchtest/cosf/wcclibm.c:189:16
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	cmn	r0, #1
	bgt	.LBB6_29
	b	.LBB6_28
.LBB6_28:                               @ %cond.true43
	.loc	2 189 29 is_stmt 0              @ batchtest/cosf/wcclibm.c:189:29
	vldr	s0, [r11, #-24]                 @ 4-byte Reload
	vneg.f32	s0, s0
	vstr	s0, [r11, #-60]                 @ 4-byte Spill
	.loc	2 189 16                        @ batchtest/cosf/wcclibm.c:189:16
	b	.LBB6_30
.LBB6_29:                               @ %cond.false44
	.loc	2 0 16                          @ batchtest/cosf/wcclibm.c:0:16
	vldr	s0, .LCPI6_45
	vstr	s0, [r11, #-60]                 @ 4-byte Spill
	.loc	2 189 16                        @ batchtest/cosf/wcclibm.c:189:16
	b	.LBB6_30
.LBB6_30:                               @ %cond.end45
	vldr	s0, [r11, #-60]                 @ 4-byte Reload
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 189 9                         @ batchtest/cosf/wcclibm.c:189:9
	b	.LBB6_116
.LBB6_31:                               @ %if.end47
	.loc	2 191 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:191:8
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #1065353216
	bne	.LBB6_35
	b	.LBB6_32
.LBB6_32:                               @ %if.then49
	.loc	2 192 10                        @ batchtest/cosf/wcclibm.c:192:10
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	cmn	r0, #1
	bgt	.LBB6_34
	b	.LBB6_33
.LBB6_33:                               @ %if.then51
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
	vldr	s2, [r11, #-20]                 @ 4-byte Reload
	vldr	s0, .LCPI6_43
	.loc	2 192 40                        @ batchtest/cosf/wcclibm.c:192:40
	vdiv.f32	s0, s0, s2
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 192 19                        @ batchtest/cosf/wcclibm.c:192:19
	b	.LBB6_116
.LBB6_34:                               @ %if.else52
	.loc	2 0 19                          @ batchtest/cosf/wcclibm.c:0:19
	vldr	s0, [r11, #-20]                 @ 4-byte Reload
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 193 10 is_stmt 1              @ batchtest/cosf/wcclibm.c:193:10
	b	.LBB6_116
.LBB6_35:                               @ %if.end53
	.loc	2 195 8                         @ batchtest/cosf/wcclibm.c:195:8
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	cmp	r0, #1073741824
	bne	.LBB6_37
	b	.LBB6_36
.LBB6_36:                               @ %if.then55
	.loc	2 195 36 is_stmt 0              @ batchtest/cosf/wcclibm.c:195:36
	vldr	s0, [r11, #-20]                 @ 4-byte Reload
	vmul.f32	s0, s0, s0
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 195 27                        @ batchtest/cosf/wcclibm.c:195:27
	b	.LBB6_116
.LBB6_37:                               @ %if.end56
	.loc	2 196 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:196:8
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	cmp	r0, #1056964608
	bne	.LBB6_41
	b	.LBB6_38
.LBB6_38:                               @ %if.then58
	.loc	2 197 10                        @ batchtest/cosf/wcclibm.c:197:10
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	cmp	r0, #0
	bmi	.LBB6_40
	b	.LBB6_39
.LBB6_39:                               @ %if.then60
	.loc	2 198 14                        @ batchtest/cosf/wcclibm.c:198:14
	vldr	s0, [r11, #-20]                 @ 4-byte Reload
	bl	basicmath___ieee754_sqrtf
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 198 7 is_stmt 0               @ batchtest/cosf/wcclibm.c:198:7
	b	.LBB6_116
.LBB6_40:                               @ %if.end62
	.loc	2 199 3 is_stmt 1               @ batchtest/cosf/wcclibm.c:199:3
	b	.LBB6_41
.LBB6_41:                               @ %if.end63
	.loc	2 201 10                        @ batchtest/cosf/wcclibm.c:201:10
	vldr	s0, [r11, #-20]                 @ 4-byte Reload
	bl	basicmath___fabsf
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	vstr	s0, [r11, #-64]                 @ 4-byte Spill
	mov	r1, #1065353216
	orr	r1, r1, #1073741824
	.loc	2 203 25                        @ batchtest/cosf/wcclibm.c:203:25
	cmp	r0, r1
	beq	.LBB6_44
	b	.LBB6_42
.LBB6_42:                               @ %lor.lhs.false66
	.loc	2 203 36 is_stmt 0              @ batchtest/cosf/wcclibm.c:203:36
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB6_44
	b	.LBB6_43
.LBB6_43:                               @ %lor.lhs.false68
	.loc	2 203 8                         @ batchtest/cosf/wcclibm.c:203:8
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #1065353216
	bne	.LBB6_54
	b	.LBB6_44
.LBB6_44:                               @ %if.then70
	.loc	2 205 10 is_stmt 1              @ batchtest/cosf/wcclibm.c:205:10
	vldr	s0, [r11, #-64]                 @ 4-byte Reload
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	cmn	r0, #1
	vstr	s0, [r11, #-68]                 @ 4-byte Spill
	bgt	.LBB6_46
	b	.LBB6_45
.LBB6_45:                               @ %if.then72
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
	vldr	s2, [r11, #-64]                 @ 4-byte Reload
	vldr	s0, .LCPI6_43
	.loc	2 205 37                        @ batchtest/cosf/wcclibm.c:205:37
	vdiv.f32	s0, s0, s2
	vstr	s0, [r11, #-68]                 @ 4-byte Spill
	.loc	2 205 19                        @ batchtest/cosf/wcclibm.c:205:19
	b	.LBB6_46
.LBB6_46:                               @ %if.end74
	.loc	2 0 0                           @ batchtest/cosf/wcclibm.c:0:0
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	vldr	s0, [r11, #-68]                 @ 4-byte Reload
	vstr	s0, [r11, #-76]                 @ 4-byte Spill
	.loc	2 206 10 is_stmt 1              @ batchtest/cosf/wcclibm.c:206:10
	cmn	r0, #1
	vstr	s0, [r11, #-72]                 @ 4-byte Spill
	bgt	.LBB6_53
	b	.LBB6_47
.LBB6_47:                               @ %if.then76
	.loc	2 207 19                        @ batchtest/cosf/wcclibm.c:207:19
	ldr	r1, [r11, #-52]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	sub	r0, r0, #1065353216
	.loc	2 207 34 is_stmt 0              @ batchtest/cosf/wcclibm.c:207:34
	orr	r0, r0, r1
	.loc	2 207 12                        @ batchtest/cosf/wcclibm.c:207:12
	cmp	r0, #0
	bne	.LBB6_49
	b	.LBB6_48
.LBB6_48:                               @ %if.then79
	.loc	2 208 17 is_stmt 1              @ batchtest/cosf/wcclibm.c:208:17
	vldr	s0, [r11, #-76]                 @ 4-byte Reload
	vsub.f32	s0, s0, s0
	.loc	2 208 23 is_stmt 0              @ batchtest/cosf/wcclibm.c:208:23
	vdiv.f32	s0, s0, s0
	vstr	s0, [r11, #-80]                 @ 4-byte Spill
	.loc	2 209 7 is_stmt 1               @ batchtest/cosf/wcclibm.c:209:7
	b	.LBB6_52
.LBB6_49:                               @ %if.else83
	.loc	2 210 14                        @ batchtest/cosf/wcclibm.c:210:14
	vldr	s0, [r11, #-76]                 @ 4-byte Reload
	ldr	r0, [r11, #-52]                 @ 4-byte Reload
	cmp	r0, #1
	vstr	s0, [r11, #-84]                 @ 4-byte Spill
	bne	.LBB6_51
	b	.LBB6_50
.LBB6_50:                               @ %if.then85
	.loc	2 211 15                        @ batchtest/cosf/wcclibm.c:211:15
	vldr	s0, [r11, #-76]                 @ 4-byte Reload
	vneg.f32	s0, s0
	vstr	s0, [r11, #-84]                 @ 4-byte Spill
	.loc	2 211 11 is_stmt 0              @ batchtest/cosf/wcclibm.c:211:11
	b	.LBB6_51
.LBB6_51:                               @ %if.end87
	.loc	2 0 0                           @ batchtest/cosf/wcclibm.c:0:0
	vldr	s0, [r11, #-84]                 @ 4-byte Reload
	vstr	s0, [r11, #-80]                 @ 4-byte Spill
	b	.LBB6_52
.LBB6_52:                               @ %if.end88
	vldr	s0, [r11, #-80]                 @ 4-byte Reload
	vstr	s0, [r11, #-72]                 @ 4-byte Spill
	.loc	2 212 5 is_stmt 1               @ batchtest/cosf/wcclibm.c:212:5
	b	.LBB6_53
.LBB6_53:                               @ %if.end89
	.loc	2 0 0 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:0
	vldr	s0, [r11, #-72]                 @ 4-byte Reload
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 213 5 is_stmt 1               @ batchtest/cosf/wcclibm.c:213:5
	b	.LBB6_116
.LBB6_54:                               @ %if.end90
	.loc	2 0 5 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:5
	ldr	r1, [r11, #-52]                 @ 4-byte Reload
	ldr	r2, [r11, #-16]                 @ 4-byte Reload
	mvn	r0, #0
	.loc	2 217 38 is_stmt 1              @ batchtest/cosf/wcclibm.c:217:38
	add	r0, r0, r2, lsr #31
	.loc	2 217 44 is_stmt 0              @ batchtest/cosf/wcclibm.c:217:44
	orr	r0, r0, r1
	.loc	2 217 8                         @ batchtest/cosf/wcclibm.c:217:8
	cmp	r0, #0
	bne	.LBB6_56
	b	.LBB6_55
.LBB6_55:                               @ %if.then95
	.loc	2 217 73                        @ batchtest/cosf/wcclibm.c:217:73
	vldr	s0, [r11, #-20]                 @ 4-byte Reload
	vsub.f32	s0, s0, s0
	.loc	2 217 79                        @ batchtest/cosf/wcclibm.c:217:79
	vdiv.f32	s0, s0, s0
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 217 62                        @ batchtest/cosf/wcclibm.c:217:62
	b	.LBB6_116
.LBB6_56:                               @ %if.end99
	.loc	2 221 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:221:8
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #1291845632
	bls	.LBB6_64
	b	.LBB6_58
	.p2align	2
@ %bb.57:
	.loc	2 0 8 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:8
.LCPI6_43:
	.long	0x3f800000                      @ float 1
	.p2align	2
.LBB6_58:                               @ %if.then101
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	ldr	r1, .LCPI6_22
	.loc	2 223 10 is_stmt 1              @ batchtest/cosf/wcclibm.c:223:10
	cmp	r0, r1
	bhi	.LBB6_61
	b	.LBB6_59
.LBB6_59:                               @ %if.then103
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
	ldr	r2, [r11, #-12]                 @ 4-byte Reload
	adr	r0, .LCPI6_46
	.loc	2 223 35                        @ batchtest/cosf/wcclibm.c:223:35
	add	r1, r0, #4
	cmp	r2, #0
	movmi	r0, r1
	vldr	s0, [r0]
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 223 28                        @ batchtest/cosf/wcclibm.c:223:28
	b	.LBB6_116
	.p2align	2
@ %bb.60:
	.loc	2 0 28                          @ batchtest/cosf/wcclibm.c:0:28
.LCPI6_44:
	.long	0xbf800000                      @ float -1
	.p2align	2
.LBB6_61:                               @ %if.end106
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	mov	r1, #8
	orr	r1, r1, #1065353216
	.loc	2 225 10 is_stmt 1              @ batchtest/cosf/wcclibm.c:225:10
	cmp	r0, r1
	blo	.LBB6_63
	b	.LBB6_62
.LBB6_62:                               @ %if.then108
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
	ldr	r2, [r11, #-12]                 @ 4-byte Reload
	adr	r0, .LCPI6_46
	.loc	2 225 35                        @ batchtest/cosf/wcclibm.c:225:35
	add	r1, r0, #4
	cmp	r2, #0
	movgt	r0, r1
	vldr	s0, [r0]
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 225 28                        @ batchtest/cosf/wcclibm.c:225:28
	b	.LBB6_116
.LBB6_63:                               @ %if.end111
	.loc	2 0 28                          @ batchtest/cosf/wcclibm.c:0:28
	vldr	s0, [r11, #-20]                 @ 4-byte Reload
	vldr	s2, .LCPI6_44
	.loc	2 229 11 is_stmt 1              @ batchtest/cosf/wcclibm.c:229:11
	vadd.f32	s0, s0, s2
	.loc	2 230 13                        @ batchtest/cosf/wcclibm.c:230:13
	vmul.f32	s2, s0, s0
	vldr	s4, .LCPI6_47
	vldr	s6, .LCPI6_48
	.loc	2 230 70 is_stmt 0              @ batchtest/cosf/wcclibm.c:230:70
	vmla.f32	s6, s0, s4
	vldr	s4, .LCPI6_49
	.loc	2 230 37                        @ batchtest/cosf/wcclibm.c:230:37
	vmls.f32	s4, s0, s6
	.loc	2 230 19                        @ batchtest/cosf/wcclibm.c:230:19
	vmul.f32	s2, s2, s4
	vldr	s4, .LCPI6_50
	.loc	2 232 27 is_stmt 1              @ batchtest/cosf/wcclibm.c:232:27
	vmul.f32	s4, s0, s4
	vldr	s6, .LCPI6_51
	.loc	2 233 31                        @ batchtest/cosf/wcclibm.c:233:31
	vmul.f32	s2, s2, s6
	vldr	s6, .LCPI6_52
	vmla.f32	s2, s0, s6
	.loc	2 234 12                        @ batchtest/cosf/wcclibm.c:234:12
	vadd.f32	s0, s4, s2
	.loc	2 235 5                         @ batchtest/cosf/wcclibm.c:235:5
	vmov	r0, s0
	ldr	r1, .LCPI6_8
	.loc	2 236 5                         @ batchtest/cosf/wcclibm.c:236:5
	and	r0, r0, r1
	vmov	s0, r0
	.loc	2 237 19                        @ batchtest/cosf/wcclibm.c:237:19
	vsub.f32	s4, s0, s4
	.loc	2 237 12 is_stmt 0              @ batchtest/cosf/wcclibm.c:237:12
	vsub.f32	s2, s2, s4
	vstr	s2, [r11, #-92]                 @ 4-byte Spill
	vstr	s0, [r11, #-88]                 @ 4-byte Spill
	.loc	2 238 3 is_stmt 1               @ batchtest/cosf/wcclibm.c:238:3
	b	.LBB6_74
.LBB6_64:                               @ %if.else131
	.loc	2 0 3 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:3
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	mov	r1, #0
	.loc	2 242 10 is_stmt 1              @ batchtest/cosf/wcclibm.c:242:10
	cmp	r1, r0, lsr #23
	str	r1, [r11, #-100]                @ 4-byte Spill
	str	r0, [r11, #-96]                 @ 4-byte Spill
	bne	.LBB6_66
	b	.LBB6_65
.LBB6_65:                               @ %if.then133
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
	vldr	s0, [r11, #-64]                 @ 4-byte Reload
	vldr	s2, .LCPI6_53
	.loc	2 243 10 is_stmt 1              @ batchtest/cosf/wcclibm.c:243:10
	vmul.f32	s0, s0, s2
	.loc	2 245 7                         @ batchtest/cosf/wcclibm.c:245:7
	vmov	r0, s0
	mvn	r1, #23
	str	r1, [r11, #-100]                @ 4-byte Spill
	str	r0, [r11, #-96]                 @ 4-byte Spill
	.loc	2 246 5                         @ batchtest/cosf/wcclibm.c:246:5
	b	.LBB6_66
.LBB6_66:                               @ %if.end139
	.loc	2 0 0 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:0
	ldr	r1, [r11, #-100]                @ 4-byte Reload
	ldr	r0, [r11, #-96]                 @ 4-byte Reload
	.loc	2 247 28 is_stmt 1              @ batchtest/cosf/wcclibm.c:247:28
	add	r1, r1, r0, asr #23
	.loc	2 247 8 is_stmt 0               @ batchtest/cosf/wcclibm.c:247:8
	sub	r1, r1, #127
	str	r1, [sp, #96]                   @ 4-byte Spill
	ldr	r1, .LCPI6_4
	.loc	2 248 13 is_stmt 1              @ batchtest/cosf/wcclibm.c:248:13
	and	r0, r0, r1
	str	r0, [sp, #100]                  @ 4-byte Spill
	.loc	2 250 12                        @ batchtest/cosf/wcclibm.c:250:12
	orr	r1, r0, #1065353216
	str	r1, [sp, #104]                  @ 4-byte Spill
	ldr	r1, .LCPI6_5
	.loc	2 251 10                        @ batchtest/cosf/wcclibm.c:251:10
	cmp	r0, r1
	bhi	.LBB6_68
	b	.LBB6_67
.LBB6_67:                               @ %if.then146
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r1, [sp, #96]                   @ 4-byte Reload
	mov	r2, #0
	str	r2, [sp, #84]                   @ 4-byte Spill
	str	r1, [sp, #88]                   @ 4-byte Spill
	str	r0, [sp, #92]                   @ 4-byte Spill
	.loc	2 251 26                        @ batchtest/cosf/wcclibm.c:251:26
	b	.LBB6_73
.LBB6_68:                               @ %if.else147
	.loc	2 0 26                          @ batchtest/cosf/wcclibm.c:0:26
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r1, .LCPI6_6
	.loc	2 253 12 is_stmt 1              @ batchtest/cosf/wcclibm.c:253:12
	cmp	r0, r1
	bhi	.LBB6_71
	b	.LBB6_69
.LBB6_69:                               @ %if.then149
	.loc	2 0 12 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:12
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r1, [sp, #96]                   @ 4-byte Reload
	mov	r2, #1
	str	r2, [sp, #72]                   @ 4-byte Spill
	str	r1, [sp, #76]                   @ 4-byte Spill
	str	r0, [sp, #80]                   @ 4-byte Spill
	.loc	2 253 27                        @ batchtest/cosf/wcclibm.c:253:27
	b	.LBB6_72
	.p2align	2
@ %bb.70:
	.loc	2 0 27                          @ batchtest/cosf/wcclibm.c:0:27
.LCPI6_45:
	.long	0x00000000                      @ float 0
	.p2align	2
.LBB6_71:                               @ %if.else150
	.loc	2 256 11 is_stmt 1              @ batchtest/cosf/wcclibm.c:256:11
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r1, [sp, #96]                   @ 4-byte Reload
	add	r1, r1, #1
	.loc	2 257 12                        @ batchtest/cosf/wcclibm.c:257:12
	orr	r0, r0, #1056964608
	mov	r2, #0
	str	r2, [sp, #72]                   @ 4-byte Spill
	str	r1, [sp, #76]                   @ 4-byte Spill
	str	r0, [sp, #80]                   @ 4-byte Spill
	b	.LBB6_72
.LBB6_72:                               @ %if.end153
	.loc	2 0 0 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:0
	ldr	r2, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	str	r2, [sp, #84]                   @ 4-byte Spill
	str	r1, [sp, #88]                   @ 4-byte Spill
	str	r0, [sp, #92]                   @ 4-byte Spill
	b	.LBB6_73
.LBB6_73:                               @ %if.end154
	.loc	2 250 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:250:8
	ldr	r2, [sp, #84]                   @ 4-byte Reload
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	ldr	r12, [sp, #92]                  @ 4-byte Reload
	.loc	2 259 5                         @ batchtest/cosf/wcclibm.c:259:5
	vmov	s6, r12
	.loc	2 262 14                        @ batchtest/cosf/wcclibm.c:262:14
	ldr	r1, .LCPI6_7
	add	r1, r1, r2, lsl #2
	vldr	s12, [r1]
	.loc	2 262 12 is_stmt 0              @ batchtest/cosf/wcclibm.c:262:12
	vsub.f32	s2, s6, s12
	.loc	2 263 30 is_stmt 1              @ batchtest/cosf/wcclibm.c:263:30
	vadd.f32	s4, s12, s6
	vldr	s0, .LCPI6_43
	.loc	2 263 23 is_stmt 0              @ batchtest/cosf/wcclibm.c:263:23
	vdiv.f32	s0, s0, s4
	.loc	2 264 11 is_stmt 1              @ batchtest/cosf/wcclibm.c:264:11
	vmul.f32	s8, s2, s0
	.loc	2 266 5                         @ batchtest/cosf/wcclibm.c:266:5
	vmov	r3, s8
	ldr	r1, .LCPI6_8
	.loc	2 267 5                         @ batchtest/cosf/wcclibm.c:267:5
	and	r3, r3, r1
	vmov	s4, r3
	mov	r3, #536870912
	.loc	2 269 5                         @ batchtest/cosf/wcclibm.c:269:5
	orr	r3, r3, r12, asr #1
	add	r3, r3, r2, lsl #21
	add	r3, r3, #262144
	vmov	s10, r3
	.loc	2 270 22                        @ batchtest/cosf/wcclibm.c:270:22
	vsub.f32	s12, s10, s12
	.loc	2 270 14 is_stmt 0              @ batchtest/cosf/wcclibm.c:270:14
	vsub.f32	s6, s6, s12
	.loc	2 271 21 is_stmt 1              @ batchtest/cosf/wcclibm.c:271:21
	vmls.f32	s2, s4, s10
	.loc	2 271 35 is_stmt 0              @ batchtest/cosf/wcclibm.c:271:35
	vmls.f32	s2, s4, s6
	.loc	2 271 13                        @ batchtest/cosf/wcclibm.c:271:13
	vmul.f32	s2, s0, s2
	.loc	2 273 12 is_stmt 1              @ batchtest/cosf/wcclibm.c:273:12
	vmul.f32	s10, s8, s8
	.loc	2 274 12                        @ batchtest/cosf/wcclibm.c:274:12
	vmul.f32	s0, s10, s10
	vldr	s12, .LCPI6_54
	vldr	s6, .LCPI6_55
	.loc	2 276 62                        @ batchtest/cosf/wcclibm.c:276:62
	vmla.f32	s6, s10, s12
	vldr	s12, .LCPI6_56
	.loc	2 275 80                        @ batchtest/cosf/wcclibm.c:275:80
	vmla.f32	s12, s10, s6
	vldr	s6, .LCPI6_48
	.loc	2 275 58 is_stmt 0              @ batchtest/cosf/wcclibm.c:275:58
	vmla.f32	s6, s10, s12
	vldr	s12, .LCPI6_57
	.loc	2 274 56 is_stmt 1              @ batchtest/cosf/wcclibm.c:274:56
	vmla.f32	s12, s10, s6
	vldr	s6, .LCPI6_58
	.loc	2 274 34 is_stmt 0              @ batchtest/cosf/wcclibm.c:274:34
	vmla.f32	s6, s10, s12
	.loc	2 274 17                        @ batchtest/cosf/wcclibm.c:274:17
	vmul.f32	s0, s0, s6
	.loc	2 277 22 is_stmt 1              @ batchtest/cosf/wcclibm.c:277:22
	vadd.f32	s6, s8, s4
	.loc	2 277 7 is_stmt 0               @ batchtest/cosf/wcclibm.c:277:7
	vmla.f32	s0, s2, s6
	.loc	2 278 15 is_stmt 1              @ batchtest/cosf/wcclibm.c:278:15
	vmul.f32	s12, s4, s4
	vldr	s6, .LCPI6_59
	.loc	2 279 25                        @ batchtest/cosf/wcclibm.c:279:25
	vadd.f32	s6, s12, s6
	.loc	2 279 30 is_stmt 0              @ batchtest/cosf/wcclibm.c:279:30
	vadd.f32	s6, s6, s0
	.loc	2 280 5 is_stmt 1               @ batchtest/cosf/wcclibm.c:280:5
	vmov	r3, s6
	.loc	2 281 5                         @ batchtest/cosf/wcclibm.c:281:5
	and	r3, r3, r1
	vmov	s6, r3
	vldr	s10, .LCPI6_60
	.loc	2 282 23                        @ batchtest/cosf/wcclibm.c:282:23
	vadd.f32	s10, s6, s10
	.loc	2 282 41 is_stmt 0              @ batchtest/cosf/wcclibm.c:282:41
	vsub.f32	s10, s10, s12
	.loc	2 282 13                        @ batchtest/cosf/wcclibm.c:282:13
	vsub.f32	s0, s0, s10
	.loc	2 284 13 is_stmt 1              @ batchtest/cosf/wcclibm.c:284:13
	vmul.f32	s4, s4, s6
	.loc	2 285 25                        @ batchtest/cosf/wcclibm.c:285:25
	vmul.f32	s0, s0, s8
	.loc	2 285 19 is_stmt 0              @ batchtest/cosf/wcclibm.c:285:19
	vmla.f32	s0, s2, s6
	.loc	2 287 13 is_stmt 1              @ batchtest/cosf/wcclibm.c:287:13
	vadd.f32	s2, s4, s0
	.loc	2 288 5                         @ batchtest/cosf/wcclibm.c:288:5
	vmov	r3, s2
	.loc	2 289 5                         @ batchtest/cosf/wcclibm.c:289:5
	and	r3, r3, r1
	vmov	s2, r3
	.loc	2 290 21                        @ batchtest/cosf/wcclibm.c:290:21
	vsub.f32	s4, s2, s4
	.loc	2 290 13 is_stmt 0              @ batchtest/cosf/wcclibm.c:290:13
	vsub.f32	s0, s0, s4
	vldr	s4, .LCPI6_61
	.loc	2 291 26 is_stmt 1              @ batchtest/cosf/wcclibm.c:291:26
	vmul.f32	s6, s2, s4
	vldr	s4, .LCPI6_62
	.loc	2 292 38                        @ batchtest/cosf/wcclibm.c:292:38
	vmul.f32	s0, s0, s4
	vldr	s4, .LCPI6_63
	.loc	2 292 32 is_stmt 0              @ batchtest/cosf/wcclibm.c:292:32
	vmla.f32	s0, s2, s4
	.loc	2 292 55                        @ batchtest/cosf/wcclibm.c:292:55
	ldr	r3, .LCPI6_20
	add	r3, r3, r2, lsl #2
	vldr	s2, [r3]
	.loc	2 292 53                        @ batchtest/cosf/wcclibm.c:292:53
	vadd.f32	s2, s0, s2
	.loc	2 294 9 is_stmt 1               @ batchtest/cosf/wcclibm.c:294:9
	vmov	s0, r0
	vcvt.f32.s32	s4, s0
	.loc	2 295 20                        @ batchtest/cosf/wcclibm.c:295:20
	vadd.f32	s0, s6, s2
	.loc	2 295 30 is_stmt 0              @ batchtest/cosf/wcclibm.c:295:30
	ldr	r0, .LCPI6_21
	add	r0, r0, r2, lsl #2
	vldr	s8, [r0]
	.loc	2 295 28                        @ batchtest/cosf/wcclibm.c:295:28
	vadd.f32	s0, s0, s8
	.loc	2 295 52                        @ batchtest/cosf/wcclibm.c:295:52
	vadd.f32	s0, s0, s4
	.loc	2 296 5 is_stmt 1               @ batchtest/cosf/wcclibm.c:296:5
	vmov	r0, s0
	.loc	2 297 5                         @ batchtest/cosf/wcclibm.c:297:5
	and	r0, r0, r1
	vmov	s0, r0
	.loc	2 298 25                        @ batchtest/cosf/wcclibm.c:298:25
	vsub.f32	s4, s0, s4
	.loc	2 298 31 is_stmt 0              @ batchtest/cosf/wcclibm.c:298:31
	vsub.f32	s4, s4, s8
	.loc	2 298 55                        @ batchtest/cosf/wcclibm.c:298:55
	vsub.f32	s4, s4, s6
	.loc	2 298 14                        @ batchtest/cosf/wcclibm.c:298:14
	vsub.f32	s2, s2, s4
	vstr	s2, [r11, #-92]                 @ 4-byte Spill
	vstr	s0, [r11, #-88]                 @ 4-byte Spill
	b	.LBB6_74
.LBB6_74:                               @ %if.end243
	.loc	2 0 0                           @ batchtest/cosf/wcclibm.c:0:0
	ldr	r1, [r11, #-52]                 @ 4-byte Reload
	ldr	r2, [r11, #-16]                 @ 4-byte Reload
	vldr	s0, [r11, #-92]                 @ 4-byte Reload
	vldr	s2, [r11, #-88]                 @ 4-byte Reload
	vstr	s2, [sp, #60]                   @ 4-byte Spill
	vstr	s0, [sp, #64]                   @ 4-byte Spill
	mvn	r0, #0
	.loc	2 302 38 is_stmt 1              @ batchtest/cosf/wcclibm.c:302:38
	add	r0, r0, r2, lsr #31
	.loc	2 302 55 is_stmt 0              @ batchtest/cosf/wcclibm.c:302:55
	sub	r1, r1, #1
	.loc	2 302 44                        @ batchtest/cosf/wcclibm.c:302:44
	orr	r0, r0, r1
	vldr	s0, .LCPI6_0
	.loc	2 302 8                         @ batchtest/cosf/wcclibm.c:302:8
	cmp	r0, #0
	vstr	s0, [sp, #68]                   @ 4-byte Spill
	bne	.LBB6_76
	b	.LBB6_75
.LBB6_75:                               @ %if.then250
	.loc	2 0 8                           @ batchtest/cosf/wcclibm.c:0:8
	vldr	s0, .LCPI6_1
	vstr	s0, [sp, #68]                   @ 4-byte Spill
	.loc	2 303 5 is_stmt 1               @ batchtest/cosf/wcclibm.c:303:5
	b	.LBB6_76
.LBB6_76:                               @ %if.end251
	.loc	2 0 0 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:0
	vldr	s2, [sp, #60]                   @ 4-byte Reload
	vldr	s0, [sp, #64]                   @ 4-byte Reload
	vldr	s8, [r11, #-24]                 @ 4-byte Reload
	vldr	s4, [sp, #68]                   @ 4-byte Reload
	vstr	s4, [sp, #40]                   @ 4-byte Spill
	.loc	2 306 3 is_stmt 1               @ batchtest/cosf/wcclibm.c:306:3
	vmov	r0, s8
	ldr	r1, .LCPI6_8
	.loc	2 307 3                         @ batchtest/cosf/wcclibm.c:307:3
	and	r0, r0, r1
	vmov	s4, r0
	.loc	2 308 13                        @ batchtest/cosf/wcclibm.c:308:13
	vsub.f32	s6, s8, s4
	.loc	2 308 29 is_stmt 0              @ batchtest/cosf/wcclibm.c:308:29
	vmul.f32	s0, s0, s8
	.loc	2 308 25                        @ batchtest/cosf/wcclibm.c:308:25
	vmla.f32	s0, s6, s2
	vstr	s0, [sp, #44]                   @ 4-byte Spill
	.loc	2 309 12 is_stmt 1              @ batchtest/cosf/wcclibm.c:309:12
	vmul.f32	s2, s2, s4
	vstr	s2, [sp, #48]                   @ 4-byte Spill
	.loc	2 310 11                        @ batchtest/cosf/wcclibm.c:310:11
	vadd.f32	s0, s0, s2
	vstr	s0, [sp, #52]                   @ 4-byte Spill
	.loc	2 311 3                         @ batchtest/cosf/wcclibm.c:311:3
	vmov	r0, s0
	str	r0, [sp, #56]                   @ 4-byte Spill
	.loc	2 312 8                         @ batchtest/cosf/wcclibm.c:312:8
	cmp	r0, #1124073472
	ble	.LBB6_78
	b	.LBB6_77
.LBB6_77:                               @ %if.then269
	.loc	2 0 8 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:8
	vldr	s0, [sp, #40]                   @ 4-byte Reload
	vldr	s2, .LCPI6_40
	.loc	2 313 14 is_stmt 1              @ batchtest/cosf/wcclibm.c:313:14
	vmul.f32	s0, s0, s2
	.loc	2 313 31 is_stmt 0              @ batchtest/cosf/wcclibm.c:313:31
	vmul.f32	s0, s0, s2
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 313 5                         @ batchtest/cosf/wcclibm.c:313:5
	b	.LBB6_116
.LBB6_78:                               @ %if.else272
	.loc	2 315 10 is_stmt 1              @ batchtest/cosf/wcclibm.c:315:10
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	cmp	r0, #1124073472
	bne	.LBB6_83
	b	.LBB6_80
	.p2align	2
@ %bb.79:
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
.LCPI6_46:
	.long	0x00000000                      @ float 0
	.long	0x7f800000                      @ float +Inf
	.p2align	2
.LBB6_80:                               @ %if.then275
	vldr	s2, [sp, #52]                   @ 4-byte Reload
	vldr	s4, [sp, #48]                   @ 4-byte Reload
	vldr	s0, [sp, #44]                   @ 4-byte Reload
	vldr	s6, .LCPI6_30
	.loc	2 316 16 is_stmt 1              @ batchtest/cosf/wcclibm.c:316:16
	vadd.f32	s0, s0, s6
	.loc	2 316 36 is_stmt 0              @ batchtest/cosf/wcclibm.c:316:36
	vsub.f32	s2, s2, s4
	.loc	2 316 12                        @ batchtest/cosf/wcclibm.c:316:12
	vcmp.f32	s0, s2
	vmrs	APSR_nzcv, fpscr
	ble	.LBB6_82
	b	.LBB6_81
.LBB6_81:                               @ %if.then280
	.loc	2 0 12                          @ batchtest/cosf/wcclibm.c:0:12
	vldr	s0, [sp, #40]                   @ 4-byte Reload
	vldr	s2, .LCPI6_40
	.loc	2 316 53                        @ batchtest/cosf/wcclibm.c:316:53
	vmul.f32	s0, s0, s2
	.loc	2 316 70                        @ batchtest/cosf/wcclibm.c:316:70
	vmul.f32	s0, s0, s2
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 316 44                        @ batchtest/cosf/wcclibm.c:316:44
	b	.LBB6_116
.LBB6_82:                               @ %if.end283
	.loc	2 318 5 is_stmt 1               @ batchtest/cosf/wcclibm.c:318:5
	b	.LBB6_98
.LBB6_83:                               @ %if.else284
	.loc	2 319 16                        @ batchtest/cosf/wcclibm.c:319:16
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	bic	r0, r0, #-2147483648
	ldr	r1, .LCPI6_28
	.loc	2 319 12 is_stmt 0              @ batchtest/cosf/wcclibm.c:319:12
	cmp	r0, r1
	blo	.LBB6_91
	b	.LBB6_87
	.p2align	2
@ %bb.84:
	.loc	2 0 12                          @ batchtest/cosf/wcclibm.c:0:12
.LCPI6_47:
	.long	0xbe800000                      @ float -0.25
	.p2align	2
@ %bb.85:
.LCPI6_48:
	.long	0x3eaaaaab                      @ float 0.333333343
	.p2align	2
@ %bb.86:
.LCPI6_49:
	.long	0x3f000000                      @ float 0.5
	.p2align	2
.LBB6_87:                               @ %if.then288
	vldr	s0, [sp, #40]                   @ 4-byte Reload
	vldr	s2, .LCPI6_29
	.loc	2 320 18 is_stmt 1              @ batchtest/cosf/wcclibm.c:320:18
	vmul.f32	s0, s0, s2
	.loc	2 320 35 is_stmt 0              @ batchtest/cosf/wcclibm.c:320:35
	vmul.f32	s0, s0, s2
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 320 9                         @ batchtest/cosf/wcclibm.c:320:9
	b	.LBB6_116
	.p2align	2
@ %bb.88:
	.loc	2 0 9                           @ batchtest/cosf/wcclibm.c:0:9
.LCPI6_50:
	.long	0x3fb8aa00                      @ float 1.44268799
	.p2align	2
@ %bb.89:
.LCPI6_51:
	.long	0xbfb8aa3b                      @ float -1.44269502
	.p2align	2
@ %bb.90:
.LCPI6_52:
	.long	0x36eca570                      @ float 7.05260754E-6
	.p2align	2
.LBB6_91:                               @ %if.else291
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	mov	r1, #1441792
	orr	r1, r1, #-1023410176
	.loc	2 322 14 is_stmt 1              @ batchtest/cosf/wcclibm.c:322:14
	cmp	r0, r1
	bne	.LBB6_96
	b	.LBB6_92
.LBB6_92:                               @ %if.then294
	.loc	2 323 25                        @ batchtest/cosf/wcclibm.c:323:25
	vldr	s0, [sp, #44]                   @ 4-byte Reload
	vldr	s2, [sp, #52]                   @ 4-byte Reload
	vldr	s4, [sp, #48]                   @ 4-byte Reload
	vsub.f32	s2, s2, s4
	.loc	2 323 16 is_stmt 0              @ batchtest/cosf/wcclibm.c:323:16
	vcmp.f32	s0, s2
	vmrs	APSR_nzcv, fpscr
	bhi	.LBB6_95
	b	.LBB6_93
.LBB6_93:                               @ %if.then298
	.loc	2 0 16                          @ batchtest/cosf/wcclibm.c:0:16
	vldr	s0, [sp, #40]                   @ 4-byte Reload
	vldr	s2, .LCPI6_29
	.loc	2 323 42                        @ batchtest/cosf/wcclibm.c:323:42
	vmul.f32	s0, s0, s2
	.loc	2 323 59                        @ batchtest/cosf/wcclibm.c:323:59
	vmul.f32	s0, s0, s2
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 323 33                        @ batchtest/cosf/wcclibm.c:323:33
	b	.LBB6_116
	.p2align	2
@ %bb.94:
	.loc	2 0 33                          @ batchtest/cosf/wcclibm.c:0:33
.LCPI6_53:
	.long	0x4b800000                      @ float 16777216
	.p2align	2
.LBB6_95:                               @ %if.end301
	.loc	2 325 9 is_stmt 1               @ batchtest/cosf/wcclibm.c:325:9
	b	.LBB6_96
.LBB6_96:                               @ %if.end302
	.loc	2 0 9 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:9
	b	.LBB6_97
.LBB6_97:                               @ %if.end303
	b	.LBB6_98
.LBB6_98:                               @ %if.end304
	b	.LBB6_99
.LBB6_99:                               @ %if.end305
	.loc	2 329 9 is_stmt 1               @ batchtest/cosf/wcclibm.c:329:9
	vldr	s0, [sp, #48]                   @ 4-byte Reload
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	bic	r1, r0, #-2147483648
	str	r1, [sp, #28]                   @ 4-byte Spill
	mov	r0, #0
	.loc	2 332 8                         @ batchtest/cosf/wcclibm.c:332:8
	cmp	r1, #1056964608
	vstr	s0, [sp, #32]                   @ 4-byte Spill
	str	r0, [sp, #36]                   @ 4-byte Spill
	bls	.LBB6_109
	b	.LBB6_100
.LBB6_100:                              @ %if.then311
	.loc	2 0 8 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:8
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	ldr	r2, [sp, #28]                   @ 4-byte Reload
	mvn	r0, #125
	.loc	2 333 33 is_stmt 1              @ batchtest/cosf/wcclibm.c:333:33
	add	r2, r0, r2, lsr #23
	mov	r0, #8388608
	.loc	2 333 11 is_stmt 0              @ batchtest/cosf/wcclibm.c:333:11
	add	r0, r1, r0, lsr r2
	mov	r2, #255
	.loc	2 334 30 is_stmt 1              @ batchtest/cosf/wcclibm.c:334:30
	and	r2, r2, r0, lsr #23
	.loc	2 334 38 is_stmt 0              @ batchtest/cosf/wcclibm.c:334:38
	sub	r12, r2, #127
	mov	r3, #1065353216
	orr	r3, r3, #-1073741824
	.loc	2 335 5 is_stmt 1               @ batchtest/cosf/wcclibm.c:335:5
	and	r3, r0, r3, asr r12
	vmov	s0, r3
	vstr	s0, [sp, #16]                   @ 4-byte Spill
	ldr	r3, .LCPI6_4
	.loc	2 336 15                        @ batchtest/cosf/wcclibm.c:336:15
	and	r0, r0, r3
	.loc	2 336 30 is_stmt 0              @ batchtest/cosf/wcclibm.c:336:30
	orr	r0, r0, #8388608
	.loc	2 336 53                        @ batchtest/cosf/wcclibm.c:336:53
	rsb	r2, r2, #150
	.loc	2 336 45                        @ batchtest/cosf/wcclibm.c:336:45
	lsr	r0, r0, r2
	str	r0, [sp, #20]                   @ 4-byte Spill
	.loc	2 337 10 is_stmt 1              @ batchtest/cosf/wcclibm.c:337:10
	cmn	r1, #1
	str	r0, [sp, #24]                   @ 4-byte Spill
	bgt	.LBB6_108
	b	.LBB6_107
	.p2align	2
@ %bb.101:
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
.LCPI6_54:
	.long	0x3e53f142                      @ float 0.206975013
	.p2align	2
@ %bb.102:
.LCPI6_55:
	.long	0x3e6c3255                      @ float 0.230660751
	.p2align	2
@ %bb.103:
.LCPI6_56:
	.long	0x3e8ba305                      @ float 0.272728115
	.p2align	2
@ %bb.104:
.LCPI6_57:
	.long	0x3edb6db7                      @ float 0.428571433
	.p2align	2
@ %bb.105:
.LCPI6_58:
	.long	0x3f19999a                      @ float 0.600000024
	.p2align	2
@ %bb.106:
.LCPI6_59:
	.long	0x40400000                      @ float 3
	.p2align	2
.LBB6_107:                              @ %if.then330
	.loc	2 337 22                        @ batchtest/cosf/wcclibm.c:337:22
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	rsb	r0, r0, #0
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	2 337 18                        @ batchtest/cosf/wcclibm.c:337:18
	b	.LBB6_108
.LBB6_108:                              @ %if.end332
	.loc	2 0 0                           @ batchtest/cosf/wcclibm.c:0:0
	vldr	s0, [sp, #48]                   @ 4-byte Reload
	vldr	s2, [sp, #16]                   @ 4-byte Reload
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	.loc	2 338 9 is_stmt 1               @ batchtest/cosf/wcclibm.c:338:9
	vsub.f32	s0, s0, s2
	vstr	s0, [sp, #32]                   @ 4-byte Spill
	str	r0, [sp, #36]                   @ 4-byte Spill
	.loc	2 339 3                         @ batchtest/cosf/wcclibm.c:339:3
	b	.LBB6_109
.LBB6_109:                              @ %if.end334
	.loc	2 0 0 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:0
	vldr	s0, [sp, #44]                   @ 4-byte Reload
	vldr	s6, [sp, #32]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	.loc	2 340 11 is_stmt 1              @ batchtest/cosf/wcclibm.c:340:11
	vadd.f32	s2, s0, s6
	.loc	2 341 3                         @ batchtest/cosf/wcclibm.c:341:3
	vmov	r0, s2
	ldr	r2, .LCPI6_8
	.loc	2 342 3                         @ batchtest/cosf/wcclibm.c:342:3
	and	r0, r0, r2
	vmov	s2, r0
	vldr	s4, .LCPI6_31
	.loc	2 343 9                         @ batchtest/cosf/wcclibm.c:343:9
	vmul.f32	s4, s2, s4
	.loc	2 344 19                        @ batchtest/cosf/wcclibm.c:344:19
	vsub.f32	s6, s2, s6
	.loc	2 344 13 is_stmt 0              @ batchtest/cosf/wcclibm.c:344:13
	vsub.f32	s0, s0, s6
	vldr	s6, .LCPI6_32
	.loc	2 344 49                        @ batchtest/cosf/wcclibm.c:344:49
	vmul.f32	s2, s2, s6
	vldr	s6, .LCPI6_33
	.loc	2 344 45                        @ batchtest/cosf/wcclibm.c:344:45
	vmla.f32	s2, s0, s6
	.loc	2 345 9 is_stmt 1               @ batchtest/cosf/wcclibm.c:345:9
	vadd.f32	s0, s4, s2
	.loc	2 346 15                        @ batchtest/cosf/wcclibm.c:346:15
	vsub.f32	s4, s0, s4
	.loc	2 346 9 is_stmt 0               @ batchtest/cosf/wcclibm.c:346:9
	vsub.f32	s4, s2, s4
	.loc	2 347 10 is_stmt 1              @ batchtest/cosf/wcclibm.c:347:10
	vmul.f32	s2, s0, s0
	vldr	s8, .LCPI6_34
	vldr	s6, .LCPI6_35
	.loc	2 349 55                        @ batchtest/cosf/wcclibm.c:349:55
	vmla.f32	s6, s2, s8
	vldr	s8, .LCPI6_36
	.loc	2 348 74                        @ batchtest/cosf/wcclibm.c:348:74
	vmla.f32	s8, s2, s6
	vldr	s6, .LCPI6_37
	.loc	2 348 53 is_stmt 0              @ batchtest/cosf/wcclibm.c:348:53
	vmla.f32	s6, s2, s8
	vldr	s8, .LCPI6_38
	.loc	2 348 32                        @ batchtest/cosf/wcclibm.c:348:32
	vmla.f32	s8, s2, s6
	.loc	2 348 11                        @ batchtest/cosf/wcclibm.c:348:11
	vmov.f32	s6, s0
	vmls.f32	s6, s2, s8
	.loc	2 350 12 is_stmt 1              @ batchtest/cosf/wcclibm.c:350:12
	vmul.f32	s2, s0, s6
	vldr	s8, .LCPI6_39
	.loc	2 350 26 is_stmt 0              @ batchtest/cosf/wcclibm.c:350:26
	vadd.f32	s6, s6, s8
	.loc	2 350 19                        @ batchtest/cosf/wcclibm.c:350:19
	vdiv.f32	s2, s2, s6
	.loc	2 350 50                        @ batchtest/cosf/wcclibm.c:350:50
	vmla.f32	s4, s0, s4
	.loc	2 350 44                        @ batchtest/cosf/wcclibm.c:350:44
	vsub.f32	s2, s2, s4
	.loc	2 351 22 is_stmt 1              @ batchtest/cosf/wcclibm.c:351:22
	vsub.f32	s0, s0, s2
	vldr	s2, .LCPI6_0
	vadd.f32	s0, s0, s2
	vstr	s0, [sp, #8]                    @ 4-byte Spill
	.loc	2 352 3                         @ batchtest/cosf/wcclibm.c:352:3
	vmov	r0, s0
	.loc	2 353 5                         @ batchtest/cosf/wcclibm.c:353:5
	add	r0, r0, r1, lsl #23
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	2 354 8                         @ batchtest/cosf/wcclibm.c:354:8
	cmp	r0, #8388608
	bge	.LBB6_114
	b	.LBB6_111
	.p2align	2
@ %bb.110:
	.loc	2 0 8 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:8
.LCPI6_60:
	.long	0xc0400000                      @ float -3
	.p2align	2
.LBB6_111:                              @ %if.then373
	.loc	2 354 31                        @ batchtest/cosf/wcclibm.c:354:31
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	vldr	s0, [sp, #8]                    @ 4-byte Reload
	bl	basicmath___scalbnf
	vstr	s0, [sp]                        @ 4-byte Spill
	.loc	2 354 27                        @ batchtest/cosf/wcclibm.c:354:27
	b	.LBB6_115
	.p2align	2
@ %bb.112:
	.loc	2 0 27                          @ batchtest/cosf/wcclibm.c:0:27
.LCPI6_61:
	.long	0x3f763800                      @ float 0.961791992
	.p2align	2
@ %bb.113:
.LCPI6_62:
	.long	0x3f76384f                      @ float 0.9617967
	.p2align	2
.LBB6_114:                              @ %if.else375
	.loc	2 355 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:355:8
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	vmov	s0, r0
	vstr	s0, [sp]                        @ 4-byte Spill
	b	.LBB6_115
.LBB6_115:                              @ %if.end379
	.loc	2 0 0 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:0
	vldr	s0, [sp, #40]                   @ 4-byte Reload
	vldr	s2, [sp]                        @ 4-byte Reload
	.loc	2 356 12 is_stmt 1              @ batchtest/cosf/wcclibm.c:356:12
	vmul.f32	s0, s0, s2
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 356 3 is_stmt 0               @ batchtest/cosf/wcclibm.c:356:3
	b	.LBB6_116
.LBB6_116:                              @ %return
	.loc	2 0 0                           @ batchtest/cosf/wcclibm.c:0:0
	vldr	s0, [r11, #-28]                 @ 4-byte Reload
	.loc	2 357 1 is_stmt 1               @ batchtest/cosf/wcclibm.c:357:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp12:
	.p2align	2
@ %bb.117:
	.loc	2 0 1 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:1
.LCPI6_63:
	.long	0x369dc3a0                      @ float 4.70173836E-6
	.p2align	2
@ %bb.118:
.LCPI6_0:
	.long	0x3f800000                      @ float 1
.LCPI6_1:
	.long	0xbf800000                      @ float -1
.LCPI6_2:
	.long	2139095041                      @ 0x7f800001
.LCPI6_4:
	.long	8388607                         @ 0x7fffff
.LCPI6_5:
	.long	1885297                         @ 0x1cc471
.LCPI6_6:
	.long	6140886                         @ 0x5db3d6
.LCPI6_7:
	.long	basicmath_bp
.LCPI6_8:
	.long	4294963200                      @ 0xfffff000
.LCPI6_20:
	.long	basicmath_dp_l
.LCPI6_21:
	.long	basicmath_dp_h
.LCPI6_22:
	.long	1065353207                      @ 0x3f7ffff7
.LCPI6_28:
	.long	1125515265                      @ 0x43160001
.LCPI6_29:
	.long	0x0da24260                      @ float 1.0E-30
.LCPI6_30:
	.long	0x3338aa3c                      @ float 4.29956657E-8
.LCPI6_31:
	.long	0x3f317200                      @ float 0.693145751
.LCPI6_32:
	.long	0x35bfbe8c                      @ float 1.42860654E-6
.LCPI6_33:
	.long	0x3f317218                      @ float 0.693147182
.LCPI6_34:
	.long	0x3331bb4c                      @ float 4.13813694E-8
.LCPI6_35:
	.long	0xb5ddea0e                      @ float -1.6533902E-6
.LCPI6_36:
	.long	0x388ab355                      @ float 6.61375597E-5
.LCPI6_37:
	.long	0xbb360b61                      @ float -0.00277777785
.LCPI6_38:
	.long	0x3e2aaaab                      @ float 0.166666672
.LCPI6_39:
	.long	0xc0000000                      @ float -2
.LCPI6_40:
	.long	0x7149f2ca                      @ float 1.00000002E+30
.Lfunc_end6:
	.size	basicmath___ieee754_powf, .Lfunc_end6-basicmath___ieee754_powf
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	basicmath___isinff              @ -- Begin function basicmath___isinff
	.p2align	2
	.type	basicmath___isinff,%function
	.code	32                              @ @basicmath___isinff
basicmath___isinff:
.Lfunc_begin7:
	.loc	2 712 0 is_stmt 1               @ batchtest/cosf/wcclibm.c:712:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	2 714 3 prologue_end            @ batchtest/cosf/wcclibm.c:714:3
	vmov	r1, s0
	.loc	2 715 10                        @ batchtest/cosf/wcclibm.c:715:10
	bic	r2, r1, #-2147483648
	mov	r3, #1065353216
	orr	r3, r3, #1073741824
	mov	r0, #0
	.loc	2 718 23                        @ batchtest/cosf/wcclibm.c:718:23
	cmp	r2, r3
	asreq	r0, r1, #30
	.loc	2 718 3 is_stmt 0               @ batchtest/cosf/wcclibm.c:718:3
	bx	lr
.Ltmp13:
.Lfunc_end7:
	.size	basicmath___isinff, .Lfunc_end7-basicmath___isinff
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	basicmath___fabsf               @ -- Begin function basicmath___fabsf
	.p2align	2
	.type	basicmath___fabsf,%function
	.code	32                              @ @basicmath___fabsf
basicmath___fabsf:
.Lfunc_begin8:
	.loc	2 698 0 is_stmt 1               @ batchtest/cosf/wcclibm.c:698:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	2 700 3 prologue_end            @ batchtest/cosf/wcclibm.c:700:3
	vmov	r0, s0
	.loc	2 701 3                         @ batchtest/cosf/wcclibm.c:701:3
	bic	r0, r0, #-2147483648
	vmov	s0, r0
	.loc	2 702 3                         @ batchtest/cosf/wcclibm.c:702:3
	bx	lr
.Ltmp14:
.Lfunc_end8:
	.size	basicmath___fabsf, .Lfunc_end8-basicmath___fabsf
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	basicmath___scalbnf             @ -- Begin function basicmath___scalbnf
	.p2align	2
	.type	basicmath___scalbnf,%function
	.code	32                              @ @basicmath___scalbnf
basicmath___scalbnf:
.Lfunc_begin9:
	.loc	2 730 0                         @ batchtest/cosf/wcclibm.c:730:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #56
	str	r0, [r11, #-24]                 @ 4-byte Spill
	vstr	s0, [r11, #-20]                 @ 4-byte Spill
.Ltmp15:
	.loc	2 732 3 prologue_end            @ batchtest/cosf/wcclibm.c:732:3
	vmov	r0, s0
	str	r0, [r11, #-16]                 @ 4-byte Spill
	mov	r1, #255
	.loc	2 733 27                        @ batchtest/cosf/wcclibm.c:733:27
	and	r1, r1, r0, lsr #23
	.loc	2 734 8                         @ batchtest/cosf/wcclibm.c:734:8
	cmp	r1, #0
	str	r1, [r11, #-12]                 @ 4-byte Spill
	str	r0, [r11, #-8]                  @ 4-byte Spill
	vstr	s0, [r11, #-4]                  @ 4-byte Spill
	bne	.LBB9_4
	b	.LBB9_1
.LBB9_1:                                @ %if.then
	.loc	2 0 8 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:8
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	mvn	r1, #-2147483648
	.loc	2 735 10 is_stmt 1              @ batchtest/cosf/wcclibm.c:735:10
	tst	r0, r1
	bne	.LBB9_3
	b	.LBB9_2
.LBB9_2:                                @ %if.then3
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
	vldr	s0, [r11, #-20]                 @ 4-byte Reload
	vstr	s0, [sp, #28]                   @ 4-byte Spill
	.loc	2 735 37                        @ batchtest/cosf/wcclibm.c:735:37
	b	.LBB9_16
.LBB9_3:                                @ %if.end
	.loc	2 0 37                          @ batchtest/cosf/wcclibm.c:0:37
	vldr	s0, [r11, #-20]                 @ 4-byte Reload
	vldr	s2, .LCPI9_0
	.loc	2 736 7 is_stmt 1               @ batchtest/cosf/wcclibm.c:736:7
	vmul.f32	s0, s0, s2
	.loc	2 737 5                         @ batchtest/cosf/wcclibm.c:737:5
	vmov	r0, s0
	mov	r1, #255
	.loc	2 738 31                        @ batchtest/cosf/wcclibm.c:738:31
	and	r1, r1, r0, lsr #23
	.loc	2 738 39 is_stmt 0              @ batchtest/cosf/wcclibm.c:738:39
	sub	r1, r1, #25
	str	r1, [r11, #-12]                 @ 4-byte Spill
	str	r0, [r11, #-8]                  @ 4-byte Spill
	vstr	s0, [r11, #-4]                  @ 4-byte Spill
	.loc	2 739 3 is_stmt 1               @ batchtest/cosf/wcclibm.c:739:3
	b	.LBB9_4
.LBB9_4:                                @ %if.end9
	.loc	2 0 3 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:3
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	ldr	r1, [r11, #-8]                  @ 4-byte Reload
	vldr	s0, [r11, #-4]                  @ 4-byte Reload
	vstr	s0, [sp, #16]                   @ 4-byte Spill
	str	r1, [sp, #20]                   @ 4-byte Spill
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	2 740 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:740:8
	cmp	r0, #255
	bne	.LBB9_6
	b	.LBB9_5
.LBB9_5:                                @ %if.then11
	.loc	2 740 29 is_stmt 0              @ batchtest/cosf/wcclibm.c:740:29
	vldr	s0, [sp, #16]                   @ 4-byte Reload
	vadd.f32	s0, s0, s0
	vstr	s0, [sp, #28]                   @ 4-byte Spill
	.loc	2 740 20                        @ batchtest/cosf/wcclibm.c:740:20
	b	.LBB9_16
.LBB9_6:                                @ %if.end12
	.loc	2 741 9 is_stmt 1               @ batchtest/cosf/wcclibm.c:741:9
	ldr	r0, [r11, #-24]                 @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	add	r1, r1, r0
	str	r1, [sp, #12]                   @ 4-byte Spill
	mov	r1, #848
	orr	r1, r1, #49152
	.loc	2 742 18                        @ batchtest/cosf/wcclibm.c:742:18
	cmp	r0, r1
	bgt	.LBB9_8
	b	.LBB9_7
.LBB9_7:                                @ %lor.lhs.false
	.loc	2 742 8 is_stmt 0               @ batchtest/cosf/wcclibm.c:742:8
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #255
	blt	.LBB9_9
	b	.LBB9_8
.LBB9_8:                                @ %if.then16
	.loc	2 743 29 is_stmt 1              @ batchtest/cosf/wcclibm.c:743:29
	vldr	s1, [sp, #16]                   @ 4-byte Reload
	vldr	s0, .LCPI9_4
	vstr	s0, [sp, #8]                    @ 4-byte Spill
	bl	basicmath___copysignf
	vldr	s2, [sp, #8]                    @ 4-byte Reload
	.loc	2 743 27 is_stmt 0              @ batchtest/cosf/wcclibm.c:743:27
	vmul.f32	s0, s0, s2
	vstr	s0, [sp, #28]                   @ 4-byte Spill
	.loc	2 743 5                         @ batchtest/cosf/wcclibm.c:743:5
	b	.LBB9_16
.LBB9_9:                                @ %if.end18
	.loc	2 0 5                           @ batchtest/cosf/wcclibm.c:0:5
	ldr	r0, [r11, #-24]                 @ 4-byte Reload
	mvn	r1, #80
	sub	r1, r1, #49920
	.loc	2 745 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:745:8
	cmp	r0, r1
	bgt	.LBB9_11
	b	.LBB9_10
.LBB9_10:                               @ %if.then20
	.loc	2 746 29                        @ batchtest/cosf/wcclibm.c:746:29
	vldr	s1, [sp, #16]                   @ 4-byte Reload
	vldr	s0, .LCPI9_3
	vstr	s0, [sp, #4]                    @ 4-byte Spill
	bl	basicmath___copysignf
	vldr	s2, [sp, #4]                    @ 4-byte Reload
	.loc	2 746 27 is_stmt 0              @ batchtest/cosf/wcclibm.c:746:27
	vmul.f32	s0, s0, s2
	vstr	s0, [sp, #28]                   @ 4-byte Spill
	.loc	2 746 5                         @ batchtest/cosf/wcclibm.c:746:5
	b	.LBB9_16
.LBB9_11:                               @ %if.end23
	.loc	2 748 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:748:8
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB9_13
	b	.LBB9_12
.LBB9_12:                               @ %if.then25
	.loc	2 0 8 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:8
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r2, .LCPI9_1
	.loc	2 749 5 is_stmt 1               @ batchtest/cosf/wcclibm.c:749:5
	and	r0, r0, r2
	orr	r0, r0, r1, lsl #23
	vmov	s0, r0
	vstr	s0, [sp, #28]                   @ 4-byte Spill
	.loc	2 750 5                         @ batchtest/cosf/wcclibm.c:750:5
	b	.LBB9_16
.LBB9_13:                               @ %if.end29
	.loc	2 752 8                         @ batchtest/cosf/wcclibm.c:752:8
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmn	r0, #25
	bgt	.LBB9_15
	b	.LBB9_14
.LBB9_14:                               @ %if.then31
	.loc	2 753 29                        @ batchtest/cosf/wcclibm.c:753:29
	vldr	s1, [sp, #16]                   @ 4-byte Reload
	vldr	s0, .LCPI9_3
	vstr	s0, [sp]                        @ 4-byte Spill
	bl	basicmath___copysignf
	vldr	s2, [sp]                        @ 4-byte Reload
	.loc	2 753 27 is_stmt 0              @ batchtest/cosf/wcclibm.c:753:27
	vmul.f32	s0, s0, s2
	vstr	s0, [sp, #28]                   @ 4-byte Spill
	.loc	2 753 5                         @ batchtest/cosf/wcclibm.c:753:5
	b	.LBB9_16
.LBB9_15:                               @ %if.end34
	.loc	2 0 5                           @ batchtest/cosf/wcclibm.c:0:5
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r2, .LCPI9_1
	.loc	2 756 3 is_stmt 1               @ batchtest/cosf/wcclibm.c:756:3
	and	r0, r0, r2
	add	r1, r1, #25
	orr	r0, r0, r1, lsl #23
	vmov	s0, r0
	vldr	s2, .LCPI9_2
	.loc	2 757 12                        @ batchtest/cosf/wcclibm.c:757:12
	vmul.f32	s0, s0, s2
	vstr	s0, [sp, #28]                   @ 4-byte Spill
	.loc	2 757 3 is_stmt 0               @ batchtest/cosf/wcclibm.c:757:3
	b	.LBB9_16
.LBB9_16:                               @ %return
	.loc	2 0 0                           @ batchtest/cosf/wcclibm.c:0:0
	vldr	s0, [sp, #28]                   @ 4-byte Reload
	.loc	2 758 1 is_stmt 1               @ batchtest/cosf/wcclibm.c:758:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp16:
	.p2align	2
@ %bb.17:
	.loc	2 0 1 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:1
.LCPI9_0:
	.long	0x4c000000                      @ float 33554432
.LCPI9_1:
	.long	2155872255                      @ 0x807fffff
.LCPI9_2:
	.long	0x33000000                      @ float 2.98023224E-8
.LCPI9_3:
	.long	0x0da24260                      @ float 1.0E-30
.LCPI9_4:
	.long	0x7149f2ca                      @ float 1.00000002E+30
.Lfunc_end9:
	.size	basicmath___scalbnf, .Lfunc_end9-basicmath___scalbnf
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	basicmath___copysignf           @ -- Begin function basicmath___copysignf
	.p2align	2
	.type	basicmath___copysignf,%function
	.code	32                              @ @basicmath___copysignf
basicmath___copysignf:
.Lfunc_begin10:
	.loc	2 643 0 is_stmt 1               @ batchtest/cosf/wcclibm.c:643:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	2 645 3 prologue_end            @ batchtest/cosf/wcclibm.c:645:3
	vmov	r0, s0
	.loc	2 646 3                         @ batchtest/cosf/wcclibm.c:646:3
	vmov	r1, s1
	.loc	2 647 3                         @ batchtest/cosf/wcclibm.c:647:3
	bic	r0, r0, #-2147483648
	and	r1, r1, #-2147483648
	orr	r0, r0, r1
	vmov	s0, r0
	.loc	2 648 3                         @ batchtest/cosf/wcclibm.c:648:3
	bx	lr
.Ltmp17:
.Lfunc_end10:
	.size	basicmath___copysignf, .Lfunc_end10-basicmath___copysignf
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	basicmath___ieee754_rem_pio2f   @ -- Begin function basicmath___ieee754_rem_pio2f
	.p2align	2
	.type	basicmath___ieee754_rem_pio2f,%function
	.code	32                              @ @basicmath___ieee754_rem_pio2f
basicmath___ieee754_rem_pio2f:
.Lfunc_begin11:
	.loc	2 399 0                         @ batchtest/cosf/wcclibm.c:399:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #80
	str	r0, [r11, #-16]                 @ 4-byte Spill
	vstr	s0, [r11, #-12]                 @ 4-byte Spill
.Ltmp18:
	.loc	2 403 3 prologue_end            @ batchtest/cosf/wcclibm.c:403:3
	vmov	r0, s0
	str	r0, [r11, #-8]                  @ 4-byte Spill
	.loc	2 404 11                        @ batchtest/cosf/wcclibm.c:404:11
	bic	r0, r0, #-2147483648
	str	r0, [r11, #-4]                  @ 4-byte Spill
	ldr	r1, .LCPI11_0
	.loc	2 405 8                         @ batchtest/cosf/wcclibm.c:405:8
	cmp	r0, r1
	bhi	.LBB11_2
	b	.LBB11_1
.LBB11_1:                               @ %if.then
	.loc	2 406 12                        @ batchtest/cosf/wcclibm.c:406:12
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	vldr	s0, [r11, #-12]                 @ 4-byte Reload
	vstr	s0, [r1]
	mov	r0, #0
	.loc	2 407 12                        @ batchtest/cosf/wcclibm.c:407:12
	str	r0, [r1, #4]
	str	r0, [r11, #-20]                 @ 4-byte Spill
	.loc	2 408 5                         @ batchtest/cosf/wcclibm.c:408:5
	b	.LBB11_27
.LBB11_2:                               @ %if.end
	.loc	2 0 5 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:5
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, .LCPI11_1
	.loc	2 410 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:410:8
	cmp	r0, r1
	bhi	.LBB11_12
	b	.LBB11_3
.LBB11_3:                               @ %if.then3
	.loc	2 411 10                        @ batchtest/cosf/wcclibm.c:411:10
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB11_8
	b	.LBB11_4
.LBB11_4:                               @ %if.then5
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	vldr	s0, [r11, #-12]                 @ 4-byte Reload
	vldr	s2, .LCPI11_5
	.loc	2 412 13 is_stmt 1              @ batchtest/cosf/wcclibm.c:412:13
	vadd.f32	s0, s0, s2
	vstr	s0, [r11, #-24]                 @ 4-byte Spill
	.loc	2 413 17                        @ batchtest/cosf/wcclibm.c:413:17
	bic	r0, r0, #-2147483633
	ldr	r1, .LCPI11_13
	.loc	2 413 12 is_stmt 0              @ batchtest/cosf/wcclibm.c:413:12
	cmp	r0, r1
	beq	.LBB11_6
	b	.LBB11_5
.LBB11_5:                               @ %if.then8
	.loc	2 0 12                          @ batchtest/cosf/wcclibm.c:0:12
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	vldr	s0, [r11, #-24]                 @ 4-byte Reload
	vldr	s2, .LCPI11_14
	.loc	2 414 20 is_stmt 1              @ batchtest/cosf/wcclibm.c:414:20
	vadd.f32	s4, s0, s2
	.loc	2 414 16 is_stmt 0              @ batchtest/cosf/wcclibm.c:414:16
	vstr	s4, [r0]
	.loc	2 415 22 is_stmt 1              @ batchtest/cosf/wcclibm.c:415:22
	vsub.f32	s0, s0, s4
	.loc	2 415 33 is_stmt 0              @ batchtest/cosf/wcclibm.c:415:33
	vadd.f32	s0, s0, s2
	.loc	2 415 16                        @ batchtest/cosf/wcclibm.c:415:16
	vstr	s0, [r0, #4]
	.loc	2 416 7 is_stmt 1               @ batchtest/cosf/wcclibm.c:416:7
	b	.LBB11_7
.LBB11_6:                               @ %if.else
	.loc	2 0 7 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:7
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	vldr	s0, [r11, #-24]                 @ 4-byte Reload
	vldr	s2, .LCPI11_15
	.loc	2 417 11 is_stmt 1              @ batchtest/cosf/wcclibm.c:417:11
	vadd.f32	s0, s0, s2
	vldr	s2, .LCPI11_16
	.loc	2 418 20                        @ batchtest/cosf/wcclibm.c:418:20
	vadd.f32	s4, s0, s2
	.loc	2 418 16 is_stmt 0              @ batchtest/cosf/wcclibm.c:418:16
	vstr	s4, [r0]
	.loc	2 419 22 is_stmt 1              @ batchtest/cosf/wcclibm.c:419:22
	vsub.f32	s0, s0, s4
	.loc	2 419 33 is_stmt 0              @ batchtest/cosf/wcclibm.c:419:33
	vadd.f32	s0, s0, s2
	.loc	2 419 16                        @ batchtest/cosf/wcclibm.c:419:16
	vstr	s0, [r0, #4]
	b	.LBB11_7
.LBB11_7:                               @ %if.end22
	.loc	2 0 16                          @ batchtest/cosf/wcclibm.c:0:16
	mov	r0, #1
	str	r0, [r11, #-20]                 @ 4-byte Spill
	.loc	2 421 7 is_stmt 1               @ batchtest/cosf/wcclibm.c:421:7
	b	.LBB11_27
.LBB11_8:                               @ %if.else23
	.loc	2 0 7 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:7
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	vldr	s0, [r11, #-12]                 @ 4-byte Reload
	vldr	s2, .LCPI11_12
	.loc	2 423 13 is_stmt 1              @ batchtest/cosf/wcclibm.c:423:13
	vadd.f32	s0, s0, s2
	vstr	s0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 424 17                        @ batchtest/cosf/wcclibm.c:424:17
	bic	r0, r0, #-2147483633
	ldr	r1, .LCPI11_13
	.loc	2 424 12 is_stmt 0              @ batchtest/cosf/wcclibm.c:424:12
	cmp	r0, r1
	beq	.LBB11_10
	b	.LBB11_9
.LBB11_9:                               @ %if.then26
	.loc	2 0 12                          @ batchtest/cosf/wcclibm.c:0:12
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	vldr	s0, [r11, #-28]                 @ 4-byte Reload
	vldr	s2, .LCPI11_6
	.loc	2 425 20 is_stmt 1              @ batchtest/cosf/wcclibm.c:425:20
	vadd.f32	s4, s0, s2
	.loc	2 425 16 is_stmt 0              @ batchtest/cosf/wcclibm.c:425:16
	vstr	s4, [r0]
	.loc	2 426 22 is_stmt 1              @ batchtest/cosf/wcclibm.c:426:22
	vsub.f32	s0, s0, s4
	.loc	2 426 33 is_stmt 0              @ batchtest/cosf/wcclibm.c:426:33
	vadd.f32	s0, s0, s2
	.loc	2 426 16                        @ batchtest/cosf/wcclibm.c:426:16
	vstr	s0, [r0, #4]
	.loc	2 427 7 is_stmt 1               @ batchtest/cosf/wcclibm.c:427:7
	b	.LBB11_11
.LBB11_10:                              @ %if.else33
	.loc	2 0 7 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:7
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	vldr	s0, [r11, #-28]                 @ 4-byte Reload
	vldr	s2, .LCPI11_8
	.loc	2 428 11 is_stmt 1              @ batchtest/cosf/wcclibm.c:428:11
	vadd.f32	s0, s0, s2
	vldr	s2, .LCPI11_9
	.loc	2 429 20                        @ batchtest/cosf/wcclibm.c:429:20
	vadd.f32	s4, s0, s2
	.loc	2 429 16 is_stmt 0              @ batchtest/cosf/wcclibm.c:429:16
	vstr	s4, [r0]
	.loc	2 430 22 is_stmt 1              @ batchtest/cosf/wcclibm.c:430:22
	vsub.f32	s0, s0, s4
	.loc	2 430 33 is_stmt 0              @ batchtest/cosf/wcclibm.c:430:33
	vadd.f32	s0, s0, s2
	.loc	2 430 16                        @ batchtest/cosf/wcclibm.c:430:16
	vstr	s0, [r0, #4]
	b	.LBB11_11
.LBB11_11:                              @ %if.end41
	.loc	2 0 16                          @ batchtest/cosf/wcclibm.c:0:16
	mvn	r0, #0
	str	r0, [r11, #-20]                 @ 4-byte Spill
	.loc	2 432 7 is_stmt 1               @ batchtest/cosf/wcclibm.c:432:7
	b	.LBB11_27
.LBB11_12:                              @ %if.end42
	.loc	2 0 7 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:7
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, .LCPI11_2
	.loc	2 435 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:435:8
	cmp	r0, r1
	bhi	.LBB11_24
	b	.LBB11_13
.LBB11_13:                              @ %if.then44
	.loc	2 436 10                        @ batchtest/cosf/wcclibm.c:436:10
	vldr	s0, [r11, #-12]                 @ 4-byte Reload
	bl	basicmath___fabsf
	vmov.f32	s2, s0
	vldr	s4, .LCPI11_3
	vldr	s0, .LCPI11_4
	.loc	2 437 46                        @ batchtest/cosf/wcclibm.c:437:46
	vmla.f32	s0, s2, s4
	.loc	2 437 10 is_stmt 0              @ batchtest/cosf/wcclibm.c:437:10
	vcvt.s32.f32	s0, s0
	vmov	r0, s0
	mov	r1, r0
	str	r1, [sp, #36]                   @ 4-byte Spill
	.loc	2 438 10 is_stmt 1              @ batchtest/cosf/wcclibm.c:438:10
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	vstr	s0, [sp, #40]                   @ 4-byte Spill
	vldr	s4, .LCPI11_5
	.loc	2 439 12                        @ batchtest/cosf/wcclibm.c:439:12
	vmla.f32	s2, s0, s4
	vstr	s2, [r11, #-36]                 @ 4-byte Spill
	vldr	s2, .LCPI11_6
	.loc	2 440 13                        @ batchtest/cosf/wcclibm.c:440:13
	vmul.f32	s0, s0, s2
	vstr	s0, [r11, #-32]                 @ 4-byte Spill
	.loc	2 441 17                        @ batchtest/cosf/wcclibm.c:441:17
	cmp	r0, #31
	bgt	.LBB11_16
	b	.LBB11_14
.LBB11_14:                              @ %land.lhs.true
	.loc	2 0 17 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:17
	ldr	r2, [sp, #36]                   @ 4-byte Reload
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	mvn	r1, #255
	sub	r1, r1, #-2147483648
	.loc	2 441 36                        @ batchtest/cosf/wcclibm.c:441:36
	and	r0, r0, r1
	.loc	2 441 54                        @ batchtest/cosf/wcclibm.c:441:54
	ldr	r1, .LCPI11_7
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1, #-4]
	.loc	2 441 10                        @ batchtest/cosf/wcclibm.c:441:10
	cmp	r0, r1
	beq	.LBB11_16
	b	.LBB11_15
.LBB11_15:                              @ %if.then53
	.loc	2 442 18 is_stmt 1              @ batchtest/cosf/wcclibm.c:442:18
	vldr	s0, [r11, #-32]                 @ 4-byte Reload
	vldr	s2, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	vsub.f32	s4, s2, s0
	.loc	2 442 14 is_stmt 0              @ batchtest/cosf/wcclibm.c:442:14
	vstr	s4, [r0]
	vstr	s2, [sp, #28]                   @ 4-byte Spill
	vstr	s0, [sp, #32]                   @ 4-byte Spill
	.loc	2 443 5 is_stmt 1               @ batchtest/cosf/wcclibm.c:443:5
	b	.LBB11_21
.LBB11_16:                              @ %if.else56
	.loc	2 445 15                        @ batchtest/cosf/wcclibm.c:445:15
	vldr	s0, [r11, #-32]                 @ 4-byte Reload
	vldr	s2, [r11, #-36]                 @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	lsr	r2, r1, #23
	str	r2, [sp, #16]                   @ 4-byte Spill
	.loc	2 446 18                        @ batchtest/cosf/wcclibm.c:446:18
	vsub.f32	s4, s2, s0
	.loc	2 446 14 is_stmt 0              @ batchtest/cosf/wcclibm.c:446:14
	vstr	s4, [r0]
	.loc	2 447 7 is_stmt 1               @ batchtest/cosf/wcclibm.c:447:7
	vmov	r2, s4
	mov	r0, #255
	.loc	2 448 32                        @ batchtest/cosf/wcclibm.c:448:32
	and	r0, r0, r2, lsr #23
	.loc	2 448 13 is_stmt 0              @ batchtest/cosf/wcclibm.c:448:13
	rsb	r0, r0, r1, lsr #23
	.loc	2 449 12 is_stmt 1              @ batchtest/cosf/wcclibm.c:449:12
	cmp	r0, #9
	vstr	s2, [sp, #20]                   @ 4-byte Spill
	vstr	s0, [sp, #24]                   @ 4-byte Spill
	blt	.LBB11_20
	b	.LBB11_17
.LBB11_17:                              @ %if.then68
	.loc	2 0 12 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:12
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	vldr	s4, [sp, #40]                   @ 4-byte Reload
	vldr	s0, [r11, #-36]                 @ 4-byte Reload
	vldr	s2, .LCPI11_8
	.loc	2 451 17 is_stmt 1              @ batchtest/cosf/wcclibm.c:451:17
	vmul.f32	s6, s4, s2
	.loc	2 452 16                        @ batchtest/cosf/wcclibm.c:452:16
	vsub.f32	s2, s0, s6
	vstr	s2, [sp]                        @ 4-byte Spill
	.loc	2 453 45                        @ batchtest/cosf/wcclibm.c:453:45
	vsub.f32	s0, s0, s2
	.loc	2 453 51 is_stmt 0              @ batchtest/cosf/wcclibm.c:453:51
	vsub.f32	s0, s0, s6
	vldr	s6, .LCPI11_9
	.loc	2 453 37                        @ batchtest/cosf/wcclibm.c:453:37
	vnmls.f32	s0, s4, s6
	.loc	2 454 20 is_stmt 1              @ batchtest/cosf/wcclibm.c:454:20
	vsub.f32	s4, s2, s0
	.loc	2 455 9                         @ batchtest/cosf/wcclibm.c:455:9
	vmov	r2, s4
	mov	r1, #255
	.loc	2 456 34                        @ batchtest/cosf/wcclibm.c:456:34
	and	r1, r1, r2, lsr #23
	.loc	2 456 15 is_stmt 0              @ batchtest/cosf/wcclibm.c:456:15
	sub	r0, r0, r1
	.loc	2 457 14 is_stmt 1              @ batchtest/cosf/wcclibm.c:457:14
	cmp	r0, #26
	vstr	s4, [sp, #4]                    @ 4-byte Spill
	vstr	s2, [sp, #8]                    @ 4-byte Spill
	vstr	s0, [sp, #12]                   @ 4-byte Spill
	blt	.LBB11_19
	b	.LBB11_18
.LBB11_18:                              @ %if.then86
	.loc	2 0 14 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:14
	vldr	s4, [sp, #40]                   @ 4-byte Reload
	vldr	s0, [sp]                        @ 4-byte Reload
	vldr	s2, .LCPI11_10
	.loc	2 459 19 is_stmt 1              @ batchtest/cosf/wcclibm.c:459:19
	vmul.f32	s6, s4, s2
	.loc	2 460 18                        @ batchtest/cosf/wcclibm.c:460:18
	vsub.f32	s2, s0, s6
	.loc	2 461 47                        @ batchtest/cosf/wcclibm.c:461:47
	vsub.f32	s0, s0, s2
	.loc	2 461 53 is_stmt 0              @ batchtest/cosf/wcclibm.c:461:53
	vsub.f32	s0, s0, s6
	vldr	s6, .LCPI11_11
	.loc	2 461 39                        @ batchtest/cosf/wcclibm.c:461:39
	vnmls.f32	s0, s4, s6
	.loc	2 462 22 is_stmt 1              @ batchtest/cosf/wcclibm.c:462:22
	vsub.f32	s4, s2, s0
	vstr	s4, [sp, #4]                    @ 4-byte Spill
	vstr	s2, [sp, #8]                    @ 4-byte Spill
	vstr	s0, [sp, #12]                   @ 4-byte Spill
	.loc	2 463 9                         @ batchtest/cosf/wcclibm.c:463:9
	b	.LBB11_19
.LBB11_19:                              @ %if.end95
	.loc	2 0 0 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:0
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	vldr	s4, [sp, #4]                    @ 4-byte Reload
	vldr	s2, [sp, #8]                    @ 4-byte Reload
	vldr	s0, [sp, #12]                   @ 4-byte Reload
	vstr	s4, [r0]
	vstr	s2, [sp, #20]                   @ 4-byte Spill
	vstr	s0, [sp, #24]                   @ 4-byte Spill
	.loc	2 464 7 is_stmt 1               @ batchtest/cosf/wcclibm.c:464:7
	b	.LBB11_20
.LBB11_20:                              @ %if.end96
	.loc	2 0 0 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:0
	vldr	s2, [sp, #20]                   @ 4-byte Reload
	vldr	s0, [sp, #24]                   @ 4-byte Reload
	vstr	s2, [sp, #28]                   @ 4-byte Spill
	vstr	s0, [sp, #32]                   @ 4-byte Spill
	b	.LBB11_21
.LBB11_21:                              @ %if.end97
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	vldr	s0, [sp, #28]                   @ 4-byte Reload
	vldr	s2, [sp, #32]                   @ 4-byte Reload
	.loc	2 466 20 is_stmt 1              @ batchtest/cosf/wcclibm.c:466:20
	vldr	s4, [r1]
	.loc	2 466 18 is_stmt 0              @ batchtest/cosf/wcclibm.c:466:18
	vsub.f32	s0, s0, s4
	.loc	2 466 29                        @ batchtest/cosf/wcclibm.c:466:29
	vsub.f32	s0, s0, s2
	.loc	2 466 12                        @ batchtest/cosf/wcclibm.c:466:12
	vstr	s0, [r1, #4]
	.loc	2 467 10 is_stmt 1              @ batchtest/cosf/wcclibm.c:467:10
	cmn	r0, #1
	bgt	.LBB11_23
	b	.LBB11_22
.LBB11_22:                              @ %if.then104
	.loc	2 468 17                        @ batchtest/cosf/wcclibm.c:468:17
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	vldr	s0, [r1]
	.loc	2 468 16 is_stmt 0              @ batchtest/cosf/wcclibm.c:468:16
	vneg.f32	s0, s0
	.loc	2 468 14                        @ batchtest/cosf/wcclibm.c:468:14
	vstr	s0, [r1]
	.loc	2 469 17 is_stmt 1              @ batchtest/cosf/wcclibm.c:469:17
	vldr	s0, [r1, #4]
	.loc	2 469 16 is_stmt 0              @ batchtest/cosf/wcclibm.c:469:16
	vneg.f32	s0, s0
	.loc	2 469 14                        @ batchtest/cosf/wcclibm.c:469:14
	vstr	s0, [r1, #4]
	.loc	2 470 14 is_stmt 1              @ batchtest/cosf/wcclibm.c:470:14
	rsb	r0, r0, #0
	str	r0, [r11, #-20]                 @ 4-byte Spill
	.loc	2 470 7 is_stmt 0               @ batchtest/cosf/wcclibm.c:470:7
	b	.LBB11_27
.LBB11_23:                              @ %if.else111
	.loc	2 0 7                           @ batchtest/cosf/wcclibm.c:0:7
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	str	r0, [r11, #-20]                 @ 4-byte Spill
	.loc	2 471 14 is_stmt 1              @ batchtest/cosf/wcclibm.c:471:14
	b	.LBB11_27
.LBB11_24:                              @ %if.end112
	.loc	2 476 8                         @ batchtest/cosf/wcclibm.c:476:8
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	lsr	r0, r0, #23
	cmp	r0, #255
	blo	.LBB11_26
	b	.LBB11_25
.LBB11_25:                              @ %if.then115
	.loc	2 477 25                        @ batchtest/cosf/wcclibm.c:477:25
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	vldr	s0, [r11, #-12]                 @ 4-byte Reload
	vsub.f32	s0, s0, s0
	.loc	2 477 21 is_stmt 0              @ batchtest/cosf/wcclibm.c:477:21
	vstr	s0, [r0, #4]
	.loc	2 477 12                        @ batchtest/cosf/wcclibm.c:477:12
	vstr	s0, [r0]
	mov	r0, #0
	str	r0, [r11, #-20]                 @ 4-byte Spill
	.loc	2 478 5 is_stmt 1               @ batchtest/cosf/wcclibm.c:478:5
	b	.LBB11_27
.LBB11_26:                              @ %if.end119
	.loc	2 484 23                        @ batchtest/cosf/wcclibm.c:484:23
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	vldr	s0, [r11, #-12]                 @ 4-byte Reload
	vsub.f32	s0, s0, s0
	.loc	2 484 19 is_stmt 0              @ batchtest/cosf/wcclibm.c:484:19
	vstr	s0, [r0, #4]
	.loc	2 484 10                        @ batchtest/cosf/wcclibm.c:484:10
	vstr	s0, [r0]
	mov	r0, #0
	str	r0, [r11, #-20]                 @ 4-byte Spill
	.loc	2 485 3 is_stmt 1               @ batchtest/cosf/wcclibm.c:485:3
	b	.LBB11_27
.LBB11_27:                              @ %return
	.loc	2 0 0 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:0
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	.loc	2 486 1 is_stmt 1               @ batchtest/cosf/wcclibm.c:486:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp19:
	.p2align	2
@ %bb.28:
	.loc	2 0 1 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:1
.LCPI11_0:
	.long	1061752792                      @ 0x3f490fd8
.LCPI11_1:
	.long	1075235811                      @ 0x4016cbe3
.LCPI11_2:
	.long	1128861568                      @ 0x43490f80
.LCPI11_3:
	.long	0x3f22f984                      @ float 0.636619806
.LCPI11_4:
	.long	0x3f000000                      @ float 0.5
.LCPI11_5:
	.long	0xbfc90f80                      @ float -1.57078552
.LCPI11_6:
	.long	0x37354443                      @ float 1.08043341E-5
.LCPI11_7:
	.long	basicmath_npio2_hw
.LCPI11_8:
	.long	0x37354400                      @ float 1.08042732E-5
.LCPI11_9:
	.long	0x2e85a308                      @ float 6.07709993E-11
.LCPI11_10:
	.long	0x2e85a300                      @ float 6.07709438E-11
.LCPI11_11:
	.long	0x248d3132                      @ float 6.12323426E-17
.LCPI11_12:
	.long	0x3fc90f80                      @ float 1.57078552
.LCPI11_13:
	.long	1070141392                      @ 0x3fc90fd0
.LCPI11_14:
	.long	0xb7354443                      @ float -1.08043341E-5
.LCPI11_15:
	.long	0xb7354400                      @ float -1.08042732E-5
.LCPI11_16:
	.long	0xae85a308                      @ float -6.07709993E-11
.Lfunc_end11:
	.size	basicmath___ieee754_rem_pio2f, .Lfunc_end11-basicmath___ieee754_rem_pio2f
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	basicmath___kernel_cosf         @ -- Begin function basicmath___kernel_cosf
	.p2align	2
	.type	basicmath___kernel_cosf,%function
	.code	32                              @ @basicmath___kernel_cosf
basicmath___kernel_cosf:
.Lfunc_begin12:
	.loc	2 575 0 is_stmt 1               @ batchtest/cosf/wcclibm.c:575:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #28
	.cfi_def_cfa_offset 28
	vstr	s1, [sp, #16]                   @ 4-byte Spill
	vstr	s0, [sp, #20]                   @ 4-byte Spill
.Ltmp20:
	.loc	2 578 3 prologue_end            @ batchtest/cosf/wcclibm.c:578:3
	vmov	r0, s0
	.loc	2 579 6                         @ batchtest/cosf/wcclibm.c:579:6
	bic	r0, r0, #-2147483648
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	2 580 8                         @ batchtest/cosf/wcclibm.c:580:8
	lsr	r0, r0, #25
	cmp	r0, #24
	bhi	.LBB12_4
	b	.LBB12_1
.LBB12_1:                               @ %if.then
	.loc	2 581 12                        @ batchtest/cosf/wcclibm.c:581:12
	vldr	s0, [sp, #20]                   @ 4-byte Reload
	vcvt.s32.f32	s0, s0
	vmov	r0, s0
	.loc	2 581 10 is_stmt 0              @ batchtest/cosf/wcclibm.c:581:10
	cmp	r0, #0
	bne	.LBB12_3
	b	.LBB12_2
.LBB12_2:                               @ %if.then3
	.loc	2 0 10                          @ batchtest/cosf/wcclibm.c:0:10
	vldr	s0, .LCPI12_10
	vstr	s0, [sp, #12]                   @ 4-byte Spill
	.loc	2 581 30                        @ batchtest/cosf/wcclibm.c:581:30
	b	.LBB12_10
.LBB12_3:                               @ %if.end
	.loc	2 582 3 is_stmt 1               @ batchtest/cosf/wcclibm.c:582:3
	b	.LBB12_4
.LBB12_4:                               @ %if.end4
	.loc	2 583 10                        @ batchtest/cosf/wcclibm.c:583:10
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	vldr	s0, [sp, #20]                   @ 4-byte Reload
	vmul.f32	s0, s0, s0
	vstr	s0, [sp, #4]                    @ 4-byte Spill
	vldr	s4, .LCPI12_0
	vldr	s2, .LCPI12_1
	.loc	2 585 71                        @ batchtest/cosf/wcclibm.c:585:71
	vmla.f32	s2, s0, s4
	vldr	s4, .LCPI12_2
	.loc	2 585 50 is_stmt 0              @ batchtest/cosf/wcclibm.c:585:50
	vmla.f32	s4, s0, s2
	vldr	s2, .LCPI12_3
	.loc	2 584 69 is_stmt 1              @ batchtest/cosf/wcclibm.c:584:69
	vmla.f32	s2, s0, s4
	vldr	s4, .LCPI12_4
	.loc	2 584 48 is_stmt 0              @ batchtest/cosf/wcclibm.c:584:48
	vmla.f32	s4, s0, s2
	vldr	s2, .LCPI12_5
	.loc	2 584 27                        @ batchtest/cosf/wcclibm.c:584:27
	vmla.f32	s2, s0, s4
	.loc	2 584 10                        @ batchtest/cosf/wcclibm.c:584:10
	vmul.f32	s0, s0, s2
	vstr	s0, [sp, #8]                    @ 4-byte Spill
	ldr	r1, .LCPI12_6
	.loc	2 586 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:586:8
	cmp	r0, r1
	bhi	.LBB12_6
	b	.LBB12_5
.LBB12_5:                               @ %if.then13
	.loc	2 587 58                        @ batchtest/cosf/wcclibm.c:587:58
	vldr	s0, [sp, #4]                    @ 4-byte Reload
	vldr	s4, [sp, #20]                   @ 4-byte Reload
	vldr	s6, [sp, #16]                   @ 4-byte Reload
	vldr	s2, [sp, #8]                    @ 4-byte Reload
	vmul.f32	s2, s0, s2
	vmls.f32	s2, s4, s6
	vldr	s4, .LCPI12_9
	.loc	2 587 48 is_stmt 0              @ batchtest/cosf/wcclibm.c:587:48
	vnmls.f32	s2, s0, s4
	vldr	s0, .LCPI12_10
	.loc	2 587 26                        @ batchtest/cosf/wcclibm.c:587:26
	vsub.f32	s0, s0, s2
	vstr	s0, [sp, #12]                   @ 4-byte Spill
	.loc	2 587 5                         @ batchtest/cosf/wcclibm.c:587:5
	b	.LBB12_10
.LBB12_6:                               @ %if.else
	.loc	2 0 5                           @ batchtest/cosf/wcclibm.c:0:5
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r1, .LCPI12_7
	.loc	2 589 10 is_stmt 1              @ batchtest/cosf/wcclibm.c:589:10
	cmp	r0, r1
	blo	.LBB12_8
	b	.LBB12_7
.LBB12_7:                               @ %if.then20
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
	vldr	s0, .LCPI12_8
	vstr	s0, [sp]                        @ 4-byte Spill
	.loc	2 590 7 is_stmt 1               @ batchtest/cosf/wcclibm.c:590:7
	b	.LBB12_9
.LBB12_8:                               @ %if.else21
	.loc	2 592 7                         @ batchtest/cosf/wcclibm.c:592:7
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	add	r0, r0, #-16777216
	vmov	s0, r0
	vstr	s0, [sp]                        @ 4-byte Spill
	b	.LBB12_9
.LBB12_9:                               @ %if.end25
	.loc	2 0 0 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:0
	vldr	s6, [sp, #20]                   @ 4-byte Reload
	vldr	s8, [sp, #16]                   @ 4-byte Reload
	vldr	s4, [sp, #4]                    @ 4-byte Reload
	vldr	s10, [sp, #8]                   @ 4-byte Reload
	vldr	s12, [sp]                       @ 4-byte Reload
	vldr	s0, .LCPI12_9
	.loc	2 594 28 is_stmt 1              @ batchtest/cosf/wcclibm.c:594:28
	vmov.f32	s2, s12
	vnmls.f32	s2, s4, s0
	vldr	s0, .LCPI12_10
	.loc	2 595 24                        @ batchtest/cosf/wcclibm.c:595:24
	vsub.f32	s0, s0, s12
	.loc	2 596 31                        @ batchtest/cosf/wcclibm.c:596:31
	vmul.f32	s4, s4, s10
	vmls.f32	s4, s6, s8
	.loc	2 596 21 is_stmt 0              @ batchtest/cosf/wcclibm.c:596:21
	vsub.f32	s2, s2, s4
	.loc	2 596 14                        @ batchtest/cosf/wcclibm.c:596:14
	vsub.f32	s0, s0, s2
	vstr	s0, [sp, #12]                   @ 4-byte Spill
	.loc	2 596 5                         @ batchtest/cosf/wcclibm.c:596:5
	b	.LBB12_10
.LBB12_10:                              @ %return
	.loc	2 0 0                           @ batchtest/cosf/wcclibm.c:0:0
	vldr	s0, [sp, #12]                   @ 4-byte Reload
	.loc	2 598 1 is_stmt 1               @ batchtest/cosf/wcclibm.c:598:1
	add	sp, sp, #28
	bx	lr
.Ltmp21:
	.p2align	2
@ %bb.11:
	.loc	2 0 1 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:1
.LCPI12_0:
	.long	0xad47d74e                      @ float -1.13596476E-11
.LCPI12_1:
	.long	0x310f74f6                      @ float 2.08757234E-9
.LCPI12_2:
	.long	0xb493f27c                      @ float -2.75573143E-7
.LCPI12_3:
	.long	0x37d00d01                      @ float 2.48015876E-5
.LCPI12_4:
	.long	0xbab60b61                      @ float -0.00138888892
.LCPI12_5:
	.long	0x3d2aaaab                      @ float 0.0416666679
.LCPI12_6:
	.long	1050253721                      @ 0x3e999999
.LCPI12_7:
	.long	1061683201                      @ 0x3f480001
.LCPI12_8:
	.long	0x3e900000                      @ float 0.28125
.LCPI12_9:
	.long	0x3f000000                      @ float 0.5
.LCPI12_10:
	.long	0x3f800000                      @ float 1
.Lfunc_end12:
	.size	basicmath___kernel_cosf, .Lfunc_end12-basicmath___kernel_cosf
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	basicmath___kernel_sinf         @ -- Begin function basicmath___kernel_sinf
	.p2align	2
	.type	basicmath___kernel_sinf,%function
	.code	32                              @ @basicmath___kernel_sinf
basicmath___kernel_sinf:
.Lfunc_begin13:
	.loc	2 613 0 is_stmt 1               @ batchtest/cosf/wcclibm.c:613:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #28
	.cfi_def_cfa_offset 28
	str	r0, [sp, #16]                   @ 4-byte Spill
	vstr	s1, [sp, #20]                   @ 4-byte Spill
	vstr	s0, [sp, #24]                   @ 4-byte Spill
.Ltmp22:
	.loc	2 616 3 prologue_end            @ batchtest/cosf/wcclibm.c:616:3
	vmov	r0, s0
	.loc	2 617 6                         @ batchtest/cosf/wcclibm.c:617:6
	and	r0, r0, #2113929216
	.loc	2 618 8                         @ batchtest/cosf/wcclibm.c:618:8
	lsr	r0, r0, #25
	cmp	r0, #24
	bhi	.LBB13_4
	b	.LBB13_1
.LBB13_1:                               @ %if.then
	.loc	2 619 10                        @ batchtest/cosf/wcclibm.c:619:10
	vldr	s0, [sp, #24]                   @ 4-byte Reload
	vcvt.s32.f32	s0, s0
	vmov	r0, s0
	cmp	r0, #0
	bne	.LBB13_3
	b	.LBB13_2
.LBB13_2:                               @ %if.then3
	.loc	2 0 10 is_stmt 0                @ batchtest/cosf/wcclibm.c:0:10
	vldr	s0, [sp, #24]                   @ 4-byte Reload
	vstr	s0, [sp, #12]                   @ 4-byte Spill
	.loc	2 619 26                        @ batchtest/cosf/wcclibm.c:619:26
	b	.LBB13_7
.LBB13_3:                               @ %if.end
	.loc	2 620 3 is_stmt 1               @ batchtest/cosf/wcclibm.c:620:3
	b	.LBB13_4
.LBB13_4:                               @ %if.end4
	.loc	2 621 10                        @ batchtest/cosf/wcclibm.c:621:10
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	vldr	s0, [sp, #24]                   @ 4-byte Reload
	vmul.f32	s2, s0, s0
	vstr	s2, [sp]                        @ 4-byte Spill
	.loc	2 622 10                        @ batchtest/cosf/wcclibm.c:622:10
	vmul.f32	s0, s2, s0
	vstr	s0, [sp, #4]                    @ 4-byte Spill
	vldr	s0, .LCPI13_0
	vldr	s4, .LCPI13_1
	.loc	2 624 44                        @ batchtest/cosf/wcclibm.c:624:44
	vmla.f32	s4, s2, s0
	vldr	s0, .LCPI13_2
	.loc	2 623 63                        @ batchtest/cosf/wcclibm.c:623:63
	vmla.f32	s0, s2, s4
	vldr	s4, .LCPI13_3
	.loc	2 623 42 is_stmt 0              @ batchtest/cosf/wcclibm.c:623:42
	vmla.f32	s4, s2, s0
	vldr	s0, .LCPI13_4
	.loc	2 623 21                        @ batchtest/cosf/wcclibm.c:623:21
	vmla.f32	s0, s2, s4
	vstr	s0, [sp, #8]                    @ 4-byte Spill
	.loc	2 625 8 is_stmt 1               @ batchtest/cosf/wcclibm.c:625:8
	cmp	r0, #0
	bne	.LBB13_6
	b	.LBB13_5
.LBB13_5:                               @ %if.then12
	.loc	2 0 8 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:8
	vldr	s2, [sp, #4]                    @ 4-byte Reload
	vldr	s0, [sp, #24]                   @ 4-byte Reload
	vldr	s6, [sp]                        @ 4-byte Reload
	vldr	s8, [sp, #8]                    @ 4-byte Reload
	vldr	s4, .LCPI13_7
	.loc	2 625 48                        @ batchtest/cosf/wcclibm.c:625:48
	vmla.f32	s4, s6, s8
	.loc	2 625 27                        @ batchtest/cosf/wcclibm.c:625:27
	vmla.f32	s0, s2, s4
	vstr	s0, [sp, #12]                   @ 4-byte Spill
	.loc	2 625 18                        @ batchtest/cosf/wcclibm.c:625:18
	b	.LBB13_7
.LBB13_6:                               @ %if.else
	.loc	2 0 18                          @ batchtest/cosf/wcclibm.c:0:18
	vldr	s0, [sp, #24]                   @ 4-byte Reload
	vldr	s4, [sp, #4]                    @ 4-byte Reload
	vldr	s6, [sp]                        @ 4-byte Reload
	vldr	s2, [sp, #20]                   @ 4-byte Reload
	vldr	s10, [sp, #8]                   @ 4-byte Reload
	vldr	s8, .LCPI13_5
	.loc	2 626 53 is_stmt 1              @ batchtest/cosf/wcclibm.c:626:53
	vmul.f32	s8, s2, s8
	vmls.f32	s8, s10, s4
	.loc	2 626 63 is_stmt 0              @ batchtest/cosf/wcclibm.c:626:63
	vnmls.f32	s2, s6, s8
	vldr	s6, .LCPI13_6
	.loc	2 626 69                        @ batchtest/cosf/wcclibm.c:626:69
	vmla.f32	s2, s4, s6
	.loc	2 626 22                        @ batchtest/cosf/wcclibm.c:626:22
	vsub.f32	s0, s0, s2
	vstr	s0, [sp, #12]                   @ 4-byte Spill
	.loc	2 626 13                        @ batchtest/cosf/wcclibm.c:626:13
	b	.LBB13_7
.LBB13_7:                               @ %return
	.loc	2 0 0                           @ batchtest/cosf/wcclibm.c:0:0
	vldr	s0, [sp, #12]                   @ 4-byte Reload
	.loc	2 628 1 is_stmt 1               @ batchtest/cosf/wcclibm.c:628:1
	add	sp, sp, #28
	bx	lr
.Ltmp23:
	.p2align	2
@ %bb.8:
	.loc	2 0 1 is_stmt 0                 @ batchtest/cosf/wcclibm.c:0:1
.LCPI13_0:
	.long	0x2f2ec9d3                      @ float 1.58969102E-10
.LCPI13_1:
	.long	0xb2d72f34                      @ float -2.50507597E-8
.LCPI13_2:
	.long	0x3638ef1b                      @ float 2.75573143E-6
.LCPI13_3:
	.long	0xb9500d01                      @ float -1.98412701E-4
.LCPI13_4:
	.long	0x3c088889                      @ float 0.00833333377
.LCPI13_5:
	.long	0x3f000000                      @ float 0.5
.LCPI13_6:
	.long	0x3e2aaaab                      @ float 0.166666672
.LCPI13_7:
	.long	0xbe2aaaab                      @ float -0.166666672
.Lfunc_end13:
	.size	basicmath___kernel_sinf, .Lfunc_end13-basicmath___kernel_sinf
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	basicmath___cosf                @ -- Begin function basicmath___cosf
	.p2align	2
	.type	basicmath___cosf,%function
	.code	32                              @ @basicmath___cosf
basicmath___cosf:
.Lfunc_begin14:
	.loc	2 657 0 is_stmt 1               @ batchtest/cosf/wcclibm.c:657:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	2 665 12 prologue_end           @ batchtest/cosf/wcclibm.c:665:12
	vsub.f32	s0, s0, s0
	.loc	2 665 3 is_stmt 0               @ batchtest/cosf/wcclibm.c:665:3
	bx	lr
.Ltmp24:
.Lfunc_end14:
	.size	basicmath___cosf, .Lfunc_end14-basicmath___cosf
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__absvdi2                       @ -- Begin function __absvdi2
	.p2align	2
	.type	__absvdi2,%function
	.code	32                              @ @__absvdi2
__absvdi2:
.Lfunc_begin15:
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
.Ltmp25:
	.loc	3 25 11 prologue_end            @ ../absvdi2.c:25:11
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	3 25 9 is_stmt 0                @ ../absvdi2.c:25:9
	cmp	r0, #0
	bne	.LBB15_2
	b	.LBB15_1
.LBB15_1:                               @ %if.then
	.loc	3 26 9 is_stmt 1                @ ../absvdi2.c:26:9
	ldr	r0, .LCPI15_0
	ldr	r2, .LCPI15_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.LBB15_2:                               @ %if.end
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
.Ltmp26:
	.p2align	2
@ %bb.3:
	.loc	3 0 5                           @ ../absvdi2.c:0:5
.LCPI15_0:
	.long	.L.str
.LCPI15_1:
	.long	.L__func__.__absvdi2
.Lfunc_end15:
	.size	__absvdi2, .Lfunc_end15-__absvdi2
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
.Lfunc_begin16:
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
.Lfunc_end16:
	.size	compilerrt_abort_impl, .Lfunc_end16-compilerrt_abort_impl
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__absvsi2                       @ -- Begin function __absvsi2
	.p2align	2
	.type	__absvsi2,%function
	.code	32                              @ @__absvsi2
__absvsi2:
.Lfunc_begin17:
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
.Ltmp27:
	.loc	4 25 9 prologue_end             @ ../absvsi2.c:25:9
	cmp	r0, #-2147483648
	bne	.LBB17_2
	b	.LBB17_1
.LBB17_1:                               @ %if.then
	.loc	4 26 9                          @ ../absvsi2.c:26:9
	ldr	r0, .LCPI17_0
	ldr	r2, .LCPI17_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.LBB17_2:                               @ %if.end
	.loc	4 28 20                         @ ../absvsi2.c:28:20
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	bpl	.LBB17_4
@ %bb.3:                                @ %if.end
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	rsb	r0, r0, #0
	str	r0, [sp]                        @ 4-byte Spill
.LBB17_4:                               @ %if.end
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	4 28 5 is_stmt 0                @ ../absvsi2.c:28:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp28:
	.p2align	2
@ %bb.5:
	.loc	4 0 5                           @ ../absvsi2.c:0:5
.LCPI17_0:
	.long	.L.str.1
.LCPI17_1:
	.long	.L__func__.__absvsi2
.Lfunc_end17:
	.size	__absvsi2, .Lfunc_end17-__absvsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__addvdi3                       @ -- Begin function __addvdi3
	.p2align	2
	.type	__addvdi3,%function
	.code	32                              @ @__addvdi3
__addvdi3:
.Lfunc_begin18:
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
.Ltmp29:
	.loc	5 24 27 prologue_end            @ ../addvdi3.c:24:27
	adds	r0, r0, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	adc	r0, r1, r3
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	5 25 9                          @ ../addvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB18_4
	b	.LBB18_1
.LBB18_1:                               @ %if.then
	.loc	5 27 15                         @ ../addvdi3.c:27:15
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	5 27 13 is_stmt 0               @ ../addvdi3.c:27:13
	bge	.LBB18_3
	b	.LBB18_2
.LBB18_2:                               @ %if.then2
	.loc	5 28 13 is_stmt 1               @ ../addvdi3.c:28:13
	ldr	r0, .LCPI18_0
	ldr	r2, .LCPI18_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB18_3:                               @ %if.end
	.loc	5 29 5                          @ ../addvdi3.c:29:5
	b	.LBB18_7
.LBB18_4:                               @ %if.else
	.loc	5 32 15                         @ ../addvdi3.c:32:15
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	5 32 13 is_stmt 0               @ ../addvdi3.c:32:13
	blt	.LBB18_6
	b	.LBB18_5
.LBB18_5:                               @ %if.then4
	.loc	5 33 13 is_stmt 1               @ ../addvdi3.c:33:13
	ldr	r0, .LCPI18_0
	ldr	r2, .LCPI18_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB18_6:                               @ %if.end5
	.loc	5 0 13 is_stmt 0                @ ../addvdi3.c:0:13
	b	.LBB18_7
.LBB18_7:                               @ %if.end6
	.loc	5 35 5 is_stmt 1                @ ../addvdi3.c:35:5
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp30:
	.p2align	2
@ %bb.8:
	.loc	5 0 5 is_stmt 0                 @ ../addvdi3.c:0:5
.LCPI18_0:
	.long	.L.str.2
.LCPI18_1:
	.long	.L__func__.__addvdi3
.Lfunc_end18:
	.size	__addvdi3, .Lfunc_end18-__addvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__addvsi3                       @ -- Begin function __addvsi3
	.p2align	2
	.type	__addvsi3,%function
	.code	32                              @ @__addvsi3
__addvsi3:
.Lfunc_begin19:
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
.Ltmp31:
	.loc	6 24 27 prologue_end            @ ../addvsi3.c:24:27
	add	r0, r0, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	6 25 9                          @ ../addvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB19_4
	b	.LBB19_1
.LBB19_1:                               @ %if.then
	.loc	6 27 13                         @ ../addvsi3.c:27:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	bge	.LBB19_3
	b	.LBB19_2
.LBB19_2:                               @ %if.then2
	.loc	6 28 13                         @ ../addvsi3.c:28:13
	ldr	r0, .LCPI19_0
	ldr	r2, .LCPI19_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB19_3:                               @ %if.end
	.loc	6 29 5                          @ ../addvsi3.c:29:5
	b	.LBB19_7
.LBB19_4:                               @ %if.else
	.loc	6 32 13                         @ ../addvsi3.c:32:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	blt	.LBB19_6
	b	.LBB19_5
.LBB19_5:                               @ %if.then4
	.loc	6 33 13                         @ ../addvsi3.c:33:13
	ldr	r0, .LCPI19_0
	ldr	r2, .LCPI19_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB19_6:                               @ %if.end5
	.loc	6 0 13 is_stmt 0                @ ../addvsi3.c:0:13
	b	.LBB19_7
.LBB19_7:                               @ %if.end6
	.loc	6 35 5 is_stmt 1                @ ../addvsi3.c:35:5
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp32:
	.p2align	2
@ %bb.8:
	.loc	6 0 5 is_stmt 0                 @ ../addvsi3.c:0:5
.LCPI19_0:
	.long	.L.str.3
.LCPI19_1:
	.long	.L__func__.__addvsi3
.Lfunc_end19:
	.size	__addvsi3, .Lfunc_end19-__addvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ashldi3                       @ -- Begin function __ashldi3
	.p2align	2
	.type	__ashldi3,%function
	.code	32                              @ @__ashldi3
__ashldi3:
.Lfunc_begin20:
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
.Ltmp33:
	.loc	7 29 15 prologue_end            @ ../ashldi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	7 30 9                          @ ../ashldi3.c:30:9
	tst	r2, #32
	beq	.LBB20_2
	b	.LBB20_1
.LBB20_1:                               @ %if.then
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
	b	.LBB20_5
.LBB20_2:                               @ %if.else
	.loc	7 37 13                         @ ../ashldi3.c:37:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB20_4
	b	.LBB20_3
.LBB20_3:                               @ %if.then4
	.loc	7 0 13 is_stmt 0                @ ../ashldi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	7 38 13 is_stmt 1               @ ../ashldi3.c:38:13
	b	.LBB20_6
.LBB20_4:                               @ %if.end
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
	b	.LBB20_5
.LBB20_5:                               @ %if.end18
	.loc	7 42 19 is_stmt 1               @ ../ashldi3.c:42:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	7 42 5 is_stmt 0                @ ../ashldi3.c:42:5
	b	.LBB20_6
.LBB20_6:                               @ %return
	.loc	7 0 0                           @ ../ashldi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	7 43 1 is_stmt 1                @ ../ashldi3.c:43:1
	add	sp, sp, #40
	bx	lr
.Ltmp34:
.Lfunc_end20:
	.size	__ashldi3, .Lfunc_end20-__ashldi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ashrdi3                       @ -- Begin function __ashrdi3
	.p2align	2
	.type	__ashrdi3,%function
	.code	32                              @ @__ashrdi3
__ashrdi3:
.Lfunc_begin21:
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
.Ltmp35:
	.loc	8 29 15 prologue_end            @ ../ashrdi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	8 30 9                          @ ../ashrdi3.c:30:9
	tst	r2, #32
	beq	.LBB21_2
	b	.LBB21_1
.LBB21_1:                               @ %if.then
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
	b	.LBB21_5
.LBB21_2:                               @ %if.else
	.loc	8 38 13                         @ ../ashrdi3.c:38:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB21_4
	b	.LBB21_3
.LBB21_3:                               @ %if.then7
	.loc	8 0 13 is_stmt 0                @ ../ashrdi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	8 39 13 is_stmt 1               @ ../ashrdi3.c:39:13
	b	.LBB21_6
.LBB21_4:                               @ %if.end
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
	b	.LBB21_5
.LBB21_5:                               @ %if.end21
	.loc	8 43 19 is_stmt 1               @ ../ashrdi3.c:43:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	8 43 5 is_stmt 0                @ ../ashrdi3.c:43:5
	b	.LBB21_6
.LBB21_6:                               @ %return
	.loc	8 0 0                           @ ../ashrdi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	8 44 1 is_stmt 1                @ ../ashrdi3.c:44:1
	add	sp, sp, #40
	bx	lr
.Ltmp36:
.Lfunc_end21:
	.size	__ashrdi3, .Lfunc_end21-__ashrdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__clzdi2                        @ -- Begin function __clzdi2
	.p2align	2
	.type	__clzdi2,%function
	.code	32                              @ @__clzdi2
__clzdi2:
.Lfunc_begin22:
	.file	9 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../clzdi2.c" md5 0x901c40e0319a50689080965b20695c3e
	.loc	9 23 0                          @ ../clzdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp37:
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
	ldr	r1, .LCPI22_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r3, .LCPI22_1
	and	r1, r3, r0, lsr #2
	and	r0, r0, r3
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI22_2
	and	r0, r0, r1
	ldr	r1, .LCPI22_3
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
.Ltmp38:
	.p2align	2
@ %bb.1:
	.loc	9 0 5                           @ ../clzdi2.c:0:5
.LCPI22_0:
	.long	1431655765                      @ 0x55555555
.LCPI22_1:
	.long	858993459                       @ 0x33333333
.LCPI22_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI22_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end22:
	.size	__clzdi2, .Lfunc_end22-__clzdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__clzsi2                        @ -- Begin function __clzsi2
	.p2align	2
	.type	__clzsi2,%function
	.code	32                              @ @__clzsi2
__clzsi2:
.Lfunc_begin23:
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
.Ltmp39:
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
.Ltmp40:
.Lfunc_end23:
	.size	__clzsi2, .Lfunc_end23-__clzsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__cmpdi2                        @ -- Begin function __cmpdi2
	.p2align	2
	.type	__cmpdi2,%function
	.code	32                              @ @__cmpdi2
__cmpdi2:
.Lfunc_begin24:
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
.Ltmp41:
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
	bge	.LBB24_2
	b	.LBB24_1
.LBB24_1:                               @ %if.then
	.loc	11 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	11 30 9 is_stmt 1               @ ../cmpdi2.c:30:9
	b	.LBB24_9
.LBB24_2:                               @ %if.end
	.loc	11 31 13                        @ ../cmpdi2.c:31:13
	ldr	r0, [sp, #20]
	.loc	11 31 24 is_stmt 0              @ ../cmpdi2.c:31:24
	ldr	r1, [sp, #12]
	.loc	11 31 9                         @ ../cmpdi2.c:31:9
	cmp	r0, r1
	ble	.LBB24_4
	b	.LBB24_3
.LBB24_3:                               @ %if.then9
	.loc	11 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	11 32 9 is_stmt 1               @ ../cmpdi2.c:32:9
	b	.LBB24_9
.LBB24_4:                               @ %if.end10
	.loc	11 33 13                        @ ../cmpdi2.c:33:13
	ldr	r0, [sp, #16]
	.loc	11 33 23 is_stmt 0              @ ../cmpdi2.c:33:23
	ldr	r1, [sp, #8]
	.loc	11 33 9                         @ ../cmpdi2.c:33:9
	cmp	r0, r1
	bhs	.LBB24_6
	b	.LBB24_5
.LBB24_5:                               @ %if.then15
	.loc	11 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	11 34 9 is_stmt 1               @ ../cmpdi2.c:34:9
	b	.LBB24_9
.LBB24_6:                               @ %if.end16
	.loc	11 35 13                        @ ../cmpdi2.c:35:13
	ldr	r0, [sp, #16]
	.loc	11 35 23 is_stmt 0              @ ../cmpdi2.c:35:23
	ldr	r1, [sp, #8]
	.loc	11 35 9                         @ ../cmpdi2.c:35:9
	cmp	r0, r1
	bls	.LBB24_8
	b	.LBB24_7
.LBB24_7:                               @ %if.then22
	.loc	11 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	11 36 9 is_stmt 1               @ ../cmpdi2.c:36:9
	b	.LBB24_9
.LBB24_8:                               @ %if.end23
	.loc	11 0 9 is_stmt 0                @ ../cmpdi2.c:0:9
	mov	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	11 37 5 is_stmt 1               @ ../cmpdi2.c:37:5
	b	.LBB24_9
.LBB24_9:                               @ %return
	.loc	11 0 0 is_stmt 0                @ ../cmpdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	11 38 1 is_stmt 1               @ ../cmpdi2.c:38:1
	add	sp, sp, #24
	bx	lr
.Ltmp42:
.Lfunc_end24:
	.size	__cmpdi2, .Lfunc_end24-__cmpdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__aeabi_lcmp                    @ -- Begin function __aeabi_lcmp
	.p2align	2
	.type	__aeabi_lcmp,%function
	.code	32                              @ @__aeabi_lcmp
__aeabi_lcmp:
.Lfunc_begin25:
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
.Ltmp43:
	.loc	11 48 9 prologue_end            @ ../cmpdi2.c:48:9
	bl	__cmpdi2
	.loc	11 48 24 is_stmt 0              @ ../cmpdi2.c:48:24
	sub	r0, r0, #1
	.loc	11 48 2                         @ ../cmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp44:
.Lfunc_end25:
	.size	__aeabi_lcmp, .Lfunc_end25-__aeabi_lcmp
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ctzdi2                        @ -- Begin function __ctzdi2
	.p2align	2
	.type	__ctzdi2,%function
	.code	32                              @ @__ctzdi2
__ctzdi2:
.Lfunc_begin26:
	.file	12 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ctzdi2.c" md5 0x0415a3f61808ca646548bc24b48a844a
	.loc	12 23 0 is_stmt 1               @ ../ctzdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp45:
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
	ldr	r1, .LCPI26_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r3, .LCPI26_1
	and	r1, r3, r0, lsr #2
	and	r0, r0, r3
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI26_2
	and	r0, r0, r1
	ldr	r1, .LCPI26_3
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
.Ltmp46:
	.p2align	2
@ %bb.1:
	.loc	12 0 5                          @ ../ctzdi2.c:0:5
.LCPI26_0:
	.long	1431655765                      @ 0x55555555
.LCPI26_1:
	.long	858993459                       @ 0x33333333
.LCPI26_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI26_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end26:
	.size	__ctzdi2, .Lfunc_end26-__ctzdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ctzsi2                        @ -- Begin function __ctzsi2
	.p2align	2
	.type	__ctzsi2,%function
	.code	32                              @ @__ctzsi2
__ctzsi2:
.Lfunc_begin27:
	.file	13 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ctzsi2.c" md5 0x0372a2c6647eddaa73c0b61d8d03c3b1
	.loc	13 23 0 is_stmt 1               @ ../ctzsi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r2, r0
	mov	r0, #255
	orr	r0, r0, #65280
.Ltmp47:
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
.Ltmp48:
.Lfunc_end27:
	.size	__ctzsi2, .Lfunc_end27-__ctzsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divdi3                        @ -- Begin function __divdi3
	.p2align	2
	.type	__divdi3,%function
	.code	32                              @ @__divdi3
__divdi3:
.Lfunc_begin28:
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
.Ltmp49:
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
.Ltmp50:
.Lfunc_end28:
	.size	__divdi3, .Lfunc_end28-__divdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivmoddi4                    @ -- Begin function __udivmoddi4
	.p2align	2
	.type	__udivmoddi4,%function
	.code	32                              @ @__udivmoddi4
__udivmoddi4:
.Lfunc_begin29:
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
.Ltmp51:
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
	bne	.LBB29_8
	b	.LBB29_1
.LBB29_1:                               @ %if.then
	.loc	15 38 17 is_stmt 1              @ ../udivmoddi4.c:38:17
	ldr	r0, [r11, #-12]
	.loc	15 38 13 is_stmt 0              @ ../udivmoddi4.c:38:13
	cmp	r0, #0
	bne	.LBB29_5
	b	.LBB29_2
.LBB29_2:                               @ %if.then5
	.loc	15 44 17 is_stmt 1              @ ../udivmoddi4.c:44:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB29_4
	b	.LBB29_3
.LBB29_3:                               @ %if.then6
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
	b	.LBB29_4
.LBB29_4:                               @ %if.end
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
	b	.LBB29_56
.LBB29_5:                               @ %if.end16
	.loc	15 52 13 is_stmt 1              @ ../udivmoddi4.c:52:13
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB29_7
	b	.LBB29_6
.LBB29_6:                               @ %if.then18
	.loc	15 53 24                        @ ../udivmoddi4.c:53:24
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	mov	r2, #0
	.loc	15 53 18 is_stmt 0              @ ../udivmoddi4.c:53:18
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	15 53 13                        @ ../udivmoddi4.c:53:13
	b	.LBB29_7
.LBB29_7:                               @ %if.end22
	.loc	15 0 13                         @ ../udivmoddi4.c:0:13
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	15 54 9 is_stmt 1               @ ../udivmoddi4.c:54:9
	b	.LBB29_56
.LBB29_8:                               @ %if.end23
	.loc	15 57 13                        @ ../udivmoddi4.c:57:13
	ldr	r0, [r11, #-16]
	.loc	15 57 9 is_stmt 0               @ ../udivmoddi4.c:57:9
	cmp	r0, #0
	bne	.LBB29_26
	b	.LBB29_9
.LBB29_9:                               @ %if.then28
	.loc	15 59 17 is_stmt 1              @ ../udivmoddi4.c:59:17
	ldr	r0, [r11, #-12]
	.loc	15 59 13 is_stmt 0              @ ../udivmoddi4.c:59:13
	cmp	r0, #0
	bne	.LBB29_13
	b	.LBB29_10
.LBB29_10:                              @ %if.then33
	.loc	15 65 17 is_stmt 1              @ ../udivmoddi4.c:65:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB29_12
	b	.LBB29_11
.LBB29_11:                              @ %if.then35
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
	b	.LBB29_12
.LBB29_12:                              @ %if.end42
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
	b	.LBB29_56
.LBB29_13:                              @ %if.end49
	.loc	15 70 17 is_stmt 1              @ ../udivmoddi4.c:70:17
	ldr	r0, [r11, #-8]
	.loc	15 70 13 is_stmt 0              @ ../udivmoddi4.c:70:13
	cmp	r0, #0
	bne	.LBB29_17
	b	.LBB29_14
.LBB29_14:                              @ %if.then54
	.loc	15 76 17 is_stmt 1              @ ../udivmoddi4.c:76:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB29_16
	b	.LBB29_15
.LBB29_15:                              @ %if.then56
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
	b	.LBB29_16
.LBB29_16:                              @ %if.end67
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
	b	.LBB29_56
.LBB29_17:                              @ %if.end74
	.loc	15 88 18 is_stmt 1              @ ../udivmoddi4.c:88:18
	ldr	r0, [r11, #-12]
	.loc	15 88 35 is_stmt 0              @ ../udivmoddi4.c:88:35
	sub	r1, r0, #1
	.loc	15 88 13                        @ ../udivmoddi4.c:88:13
	tst	r0, r1
	bne	.LBB29_21
	b	.LBB29_18
.LBB29_18:                              @ %if.then81
	.loc	15 90 17 is_stmt 1              @ ../udivmoddi4.c:90:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB29_20
	b	.LBB29_19
.LBB29_19:                              @ %if.then83
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
	b	.LBB29_20
.LBB29_20:                              @ %if.end97
	.loc	15 96 24                        @ ../udivmoddi4.c:96:24
	ldr	r0, [r11, #-4]
	.loc	15 96 50 is_stmt 0              @ ../udivmoddi4.c:96:50
	ldr	r2, [r11, #-12]
	.loc	15 96 32                        @ ../udivmoddi4.c:96:32
	sub	r1, r2, #1
	bic	r1, r1, r2
	ldr	r2, .LCPI29_0
	and	r2, r2, r1, lsr #1
	sub	r1, r1, r2
	ldr	r3, .LCPI29_1
	and	r2, r3, r1, lsr #2
	and	r1, r1, r3
	add	r1, r1, r2
	add	r1, r1, r1, lsr #4
	ldr	r2, .LCPI29_2
	and	r2, r1, r2
	ldr	r3, .LCPI29_3
	mul	r1, r2, r3
	lsr	r1, r1, #24
	.loc	15 96 29                        @ ../udivmoddi4.c:96:29
	lsr	r1, r0, r1
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	15 96 13                        @ ../udivmoddi4.c:96:13
	b	.LBB29_56
.LBB29_21:                              @ %if.end103
	.loc	15 102 32 is_stmt 1             @ ../udivmoddi4.c:102:32
	ldr	r0, [r11, #-12]
	.loc	15 102 14 is_stmt 0             @ ../udivmoddi4.c:102:14
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI29_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI29_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI29_2
	and	r1, r0, r2
	ldr	r3, .LCPI29_3
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
	blo	.LBB29_25
	b	.LBB29_22
.LBB29_22:                              @ %if.then111
	.loc	15 106 16                       @ ../udivmoddi4.c:106:16
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB29_24
	b	.LBB29_23
.LBB29_23:                              @ %if.then113
	.loc	15 107 26                       @ ../udivmoddi4.c:107:26
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldr	r2, [r11, #-4]
	.loc	15 107 22 is_stmt 0             @ ../udivmoddi4.c:107:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	15 107 17                       @ ../udivmoddi4.c:107:17
	b	.LBB29_24
.LBB29_24:                              @ %if.end115
	.loc	15 0 17                         @ ../udivmoddi4.c:0:17
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	15 108 13 is_stmt 1             @ ../udivmoddi4.c:108:13
	b	.LBB29_56
.LBB29_25:                              @ %if.end116
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
	b	.LBB29_49
.LBB29_26:                              @ %if.else
	.loc	15 121 17                       @ ../udivmoddi4.c:121:17
	ldr	r0, [r11, #-12]
	.loc	15 121 13 is_stmt 0             @ ../udivmoddi4.c:121:13
	cmp	r0, #0
	bne	.LBB29_40
	b	.LBB29_27
.LBB29_27:                              @ %if.then142
	.loc	15 127 22 is_stmt 1             @ ../udivmoddi4.c:127:22
	ldr	r0, [r11, #-16]
	.loc	15 127 17 is_stmt 0             @ ../udivmoddi4.c:127:17
	sub	r1, r0, #1
	tst	r0, r1
	bne	.LBB29_33
	b	.LBB29_28
.LBB29_28:                              @ %if.then151
	.loc	15 129 21 is_stmt 1             @ ../udivmoddi4.c:129:21
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB29_30
	b	.LBB29_29
.LBB29_29:                              @ %if.then153
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
	b	.LBB29_30
.LBB29_30:                              @ %if.end161
	.loc	15 131 25 is_stmt 1             @ ../udivmoddi4.c:131:25
	ldr	r0, [r11, #-16]
	.loc	15 131 21 is_stmt 0             @ ../udivmoddi4.c:131:21
	cmp	r0, #1
	bne	.LBB29_32
	b	.LBB29_31
.LBB29_31:                              @ %if.then166
	.loc	15 132 30 is_stmt 1             @ ../udivmoddi4.c:132:30
	ldr	r1, [r11, #-8]
	ldr	r0, [r11, #-4]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	15 132 21 is_stmt 0             @ ../udivmoddi4.c:132:21
	b	.LBB29_56
.LBB29_32:                              @ %if.end168
	.loc	15 133 40 is_stmt 1             @ ../udivmoddi4.c:133:40
	ldr	r1, [r11, #-16]
	.loc	15 133 22 is_stmt 0             @ ../udivmoddi4.c:133:22
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI29_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI29_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI29_2
	and	r0, r0, r1
	ldr	r1, .LCPI29_3
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
	b	.LBB29_56
.LBB29_33:                              @ %if.end187
	.loc	15 142 55 is_stmt 1             @ ../udivmoddi4.c:142:55
	ldr	r0, [r11, #-16]
	.loc	15 142 37 is_stmt 0             @ ../udivmoddi4.c:142:37
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI29_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI29_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI29_2
	and	r1, r0, r2
	ldr	r3, .LCPI29_3
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
	bne	.LBB29_35
	b	.LBB29_34
.LBB29_34:                              @ %if.then195
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
	b	.LBB29_39
.LBB29_35:                              @ %if.else208
	.loc	15 154 22                       @ ../udivmoddi4.c:154:22
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	cmp	r0, #31
	bhi	.LBB29_37
	b	.LBB29_36
.LBB29_36:                              @ %if.then211
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
	b	.LBB29_38
.LBB29_37:                              @ %if.else235
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
	b	.LBB29_38
.LBB29_38:                              @ %if.end261
	.loc	15 0 25                         @ ../udivmoddi4.c:0:25
	b	.LBB29_39
.LBB29_39:                              @ %if.end262
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	str	r0, [sp, #28]                   @ 4-byte Spill
	.loc	15 169 9 is_stmt 1              @ ../udivmoddi4.c:169:9
	b	.LBB29_48
.LBB29_40:                              @ %if.else263
	.loc	15 176 36                       @ ../udivmoddi4.c:176:36
	ldr	r0, [r11, #-12]
	.loc	15 176 18 is_stmt 0             @ ../udivmoddi4.c:176:18
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI29_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI29_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI29_2
	and	r1, r0, r2
	ldr	r3, .LCPI29_3
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
	blo	.LBB29_44
	b	.LBB29_41
.LBB29_41:                              @ %if.then271
	.loc	15 180 21                       @ ../udivmoddi4.c:180:21
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB29_43
	b	.LBB29_42
.LBB29_42:                              @ %if.then273
	.loc	15 181 30                       @ ../udivmoddi4.c:181:30
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldr	r2, [r11, #-4]
	.loc	15 181 26 is_stmt 0             @ ../udivmoddi4.c:181:26
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	15 181 21                       @ ../udivmoddi4.c:181:21
	b	.LBB29_43
.LBB29_43:                              @ %if.end275
	.loc	15 0 21                         @ ../udivmoddi4.c:0:21
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	15 182 17 is_stmt 1             @ ../udivmoddi4.c:182:17
	b	.LBB29_56
.LBB29_44:                              @ %if.end276
	.loc	15 184 13                       @ ../udivmoddi4.c:184:13
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #20]                   @ 4-byte Spill
	mov	r1, #0
	.loc	15 187 21                       @ ../udivmoddi4.c:187:21
	str	r1, [r11, #-24]
	.loc	15 188 17                       @ ../udivmoddi4.c:188:17
	cmp	r0, #32
	bne	.LBB29_46
	b	.LBB29_45
.LBB29_45:                              @ %if.then282
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
	b	.LBB29_47
.LBB29_46:                              @ %if.else293
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
	b	.LBB29_47
.LBB29_47:                              @ %if.end315
	.loc	15 0 25                         @ ../udivmoddi4.c:0:25
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	str	r0, [sp, #28]                   @ 4-byte Spill
	b	.LBB29_48
.LBB29_48:                              @ %if.end316
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	str	r0, [sp, #36]                   @ 4-byte Spill
	b	.LBB29_49
.LBB29_49:                              @ %if.end317
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	mov	r0, #0
	str	r1, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	15 209 5 is_stmt 1              @ ../udivmoddi4.c:209:5
	b	.LBB29_50
.LBB29_50:                              @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	15 0 0 is_stmt 0                @ ../udivmoddi4.c:0:0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	15 209 5                        @ ../udivmoddi4.c:209:5
	cmp	r0, #0
	beq	.LBB29_53
	b	.LBB29_51
.LBB29_51:                              @ %for.body
                                        @   in Loop: Header=BB29_50 Depth=1
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
	b	.LBB29_52
.LBB29_52:                              @ %for.inc
                                        @   in Loop: Header=BB29_50 Depth=1
	.loc	15 224 19                       @ ../udivmoddi4.c:224:19
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp]                        @ 4-byte Reload
	lsr	r0, r0, #31
	.loc	15 209 20                       @ ../udivmoddi4.c:209:20
	sub	r1, r1, #1
	str	r1, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	15 209 5 is_stmt 0              @ ../udivmoddi4.c:209:5
	b	.LBB29_50
.LBB29_53:                              @ %for.end
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
	beq	.LBB29_55
	b	.LBB29_54
.LBB29_54:                              @ %if.then371
	.loc	15 229 18                       @ ../udivmoddi4.c:229:18
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-32]
	ldr	r2, [r11, #-28]
	.loc	15 229 14 is_stmt 0             @ ../udivmoddi4.c:229:14
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	15 229 9                        @ ../udivmoddi4.c:229:9
	b	.LBB29_55
.LBB29_55:                              @ %if.end373
	.loc	15 230 14 is_stmt 1             @ ../udivmoddi4.c:230:14
	ldr	r1, [r11, #-24]
	ldr	r0, [r11, #-20]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	15 230 5 is_stmt 0              @ ../udivmoddi4.c:230:5
	b	.LBB29_56
.LBB29_56:                              @ %return
	.loc	15 0 0                          @ ../udivmoddi4.c:0:0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldr	r1, [r11, #-40]                 @ 4-byte Reload
	.loc	15 231 1 is_stmt 1              @ ../udivmoddi4.c:231:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp52:
	.p2align	2
@ %bb.57:
	.loc	15 0 1 is_stmt 0                @ ../udivmoddi4.c:0:1
.LCPI29_0:
	.long	1431655765                      @ 0x55555555
.LCPI29_1:
	.long	858993459                       @ 0x33333333
.LCPI29_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI29_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end29:
	.size	__udivmoddi4, .Lfunc_end29-__udivmoddi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divmoddi4                     @ -- Begin function __divmoddi4
	.p2align	2
	.type	__divmoddi4,%function
	.code	32                              @ @__divmoddi4
__divmoddi4:
.Lfunc_begin30:
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
.Ltmp53:
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
.Ltmp54:
.Lfunc_end30:
	.size	__divmoddi4, .Lfunc_end30-__divmoddi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divmodsi4                     @ -- Begin function __divmodsi4
	.p2align	2
	.type	__divmodsi4,%function
	.code	32                              @ @__divmodsi4
__divmodsi4:
.Lfunc_begin31:
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
.Ltmp55:
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
.Ltmp56:
.Lfunc_end31:
	.size	__divmodsi4, .Lfunc_end31-__divmodsi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divsi3                        @ -- Begin function __divsi3
	.p2align	2
	.type	__divsi3,%function
	.code	32                              @ @__divsi3
__divsi3:
.Lfunc_begin32:
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
.Ltmp57:
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
.Ltmp58:
.Lfunc_end32:
	.size	__divsi3, .Lfunc_end32-__divsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ffsdi2                        @ -- Begin function __ffsdi2
	.p2align	2
	.type	__ffsdi2,%function
	.code	32                              @ @__ffsdi2
__ffsdi2:
.Lfunc_begin33:
	.file	19 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ffsdi2.c" md5 0x4b800e1cad35a0bc99971441032171a3
	.loc	19 23 0 is_stmt 1               @ ../ffsdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp59:
	.loc	19 25 11 prologue_end           @ ../ffsdi2.c:25:11
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	19 26 13                        @ ../ffsdi2.c:26:13
	ldr	r0, [sp, #8]
	.loc	19 26 9 is_stmt 0               @ ../ffsdi2.c:26:9
	cmp	r0, #0
	bne	.LBB33_4
	b	.LBB33_1
.LBB33_1:                               @ %if.then
	.loc	19 28 17 is_stmt 1              @ ../ffsdi2.c:28:17
	ldr	r0, [sp, #12]
	.loc	19 28 13 is_stmt 0              @ ../ffsdi2.c:28:13
	cmp	r0, #0
	bne	.LBB33_3
	b	.LBB33_2
.LBB33_2:                               @ %if.then3
	.loc	19 0 13                         @ ../ffsdi2.c:0:13
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	19 29 13 is_stmt 1              @ ../ffsdi2.c:29:13
	b	.LBB33_5
.LBB33_3:                               @ %if.end
	.loc	19 30 34                        @ ../ffsdi2.c:30:34
	ldr	r1, [sp, #12]
	.loc	19 30 16 is_stmt 0              @ ../ffsdi2.c:30:16
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI33_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI33_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI33_2
	and	r0, r0, r1
	ldr	r2, .LCPI33_3
	mul	r1, r0, r2
	mov	r0, #33
	.loc	19 30 40                        @ ../ffsdi2.c:30:40
	add	r0, r0, r1, lsr #24
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	19 30 9                         @ ../ffsdi2.c:30:9
	b	.LBB33_5
.LBB33_4:                               @ %if.end6
	.loc	19 32 30 is_stmt 1              @ ../ffsdi2.c:32:30
	ldr	r1, [sp, #8]
	.loc	19 32 12 is_stmt 0              @ ../ffsdi2.c:32:12
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI33_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI33_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI33_2
	and	r0, r0, r1
	ldr	r2, .LCPI33_3
	mul	r1, r0, r2
	mov	r0, #1
	.loc	19 32 35                        @ ../ffsdi2.c:32:35
	add	r0, r0, r1, lsr #24
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	19 32 5                         @ ../ffsdi2.c:32:5
	b	.LBB33_5
.LBB33_5:                               @ %return
	.loc	19 0 0                          @ ../ffsdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	19 33 1 is_stmt 1               @ ../ffsdi2.c:33:1
	add	sp, sp, #16
	bx	lr
.Ltmp60:
	.p2align	2
@ %bb.6:
	.loc	19 0 1 is_stmt 0                @ ../ffsdi2.c:0:1
.LCPI33_0:
	.long	1431655765                      @ 0x55555555
.LCPI33_1:
	.long	858993459                       @ 0x33333333
.LCPI33_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI33_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end33:
	.size	__ffsdi2, .Lfunc_end33-__ffsdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ffssi2                        @ -- Begin function __ffssi2
	.p2align	2
	.type	__ffssi2,%function
	.code	32                              @ @__ffssi2
__ffssi2:
.Lfunc_begin34:
	.file	20 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ffssi2.c" md5 0x182169d6765bddc2bf1b03cc7a4f47cb
	.loc	20 23 0 is_stmt 1               @ ../ffssi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp61:
	.loc	20 24 9 prologue_end            @ ../ffssi2.c:24:9
	cmp	r0, #0
	bne	.LBB34_2
	b	.LBB34_1
.LBB34_1:                               @ %if.then
	.loc	20 0 9 is_stmt 0                @ ../ffssi2.c:0:9
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	.loc	20 26 9 is_stmt 1               @ ../ffssi2.c:26:9
	b	.LBB34_3
.LBB34_2:                               @ %if.end
	.loc	20 28 12                        @ ../ffssi2.c:28:12
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI34_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI34_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI34_2
	and	r0, r0, r1
	ldr	r2, .LCPI34_3
	mul	r1, r0, r2
	mov	r0, #1
	.loc	20 28 29 is_stmt 0              @ ../ffssi2.c:28:29
	add	r0, r0, r1, lsr #24
	str	r0, [sp]                        @ 4-byte Spill
	.loc	20 28 5                         @ ../ffssi2.c:28:5
	b	.LBB34_3
.LBB34_3:                               @ %return
	.loc	20 0 0                          @ ../ffssi2.c:0:0
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	20 29 1 is_stmt 1               @ ../ffssi2.c:29:1
	add	sp, sp, #8
	bx	lr
.Ltmp62:
	.p2align	2
@ %bb.4:
	.loc	20 0 1 is_stmt 0                @ ../ffssi2.c:0:1
.LCPI34_0:
	.long	1431655765                      @ 0x55555555
.LCPI34_1:
	.long	858993459                       @ 0x33333333
.LCPI34_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI34_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end34:
	.size	__ffssi2, .Lfunc_end34-__ffssi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__lshrdi3                       @ -- Begin function __lshrdi3
	.p2align	2
	.type	__lshrdi3,%function
	.code	32                              @ @__lshrdi3
__lshrdi3:
.Lfunc_begin35:
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
.Ltmp63:
	.loc	21 29 15 prologue_end           @ ../lshrdi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	21 30 9                         @ ../lshrdi3.c:30:9
	tst	r2, #32
	beq	.LBB35_2
	b	.LBB35_1
.LBB35_1:                               @ %if.then
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
	b	.LBB35_5
.LBB35_2:                               @ %if.else
	.loc	21 37 13                        @ ../lshrdi3.c:37:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB35_4
	b	.LBB35_3
.LBB35_3:                               @ %if.then4
	.loc	21 0 13 is_stmt 0               @ ../lshrdi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	21 38 13 is_stmt 1              @ ../lshrdi3.c:38:13
	b	.LBB35_6
.LBB35_4:                               @ %if.end
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
	b	.LBB35_5
.LBB35_5:                               @ %if.end18
	.loc	21 42 19 is_stmt 1              @ ../lshrdi3.c:42:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	21 42 5 is_stmt 0               @ ../lshrdi3.c:42:5
	b	.LBB35_6
.LBB35_6:                               @ %return
	.loc	21 0 0                          @ ../lshrdi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	21 43 1 is_stmt 1               @ ../lshrdi3.c:43:1
	add	sp, sp, #40
	bx	lr
.Ltmp64:
.Lfunc_end35:
	.size	__lshrdi3, .Lfunc_end35-__lshrdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__moddi3                        @ -- Begin function __moddi3
	.p2align	2
	.type	__moddi3,%function
	.code	32                              @ @__moddi3
__moddi3:
.Lfunc_begin36:
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
.Ltmp65:
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
.Ltmp66:
.Lfunc_end36:
	.size	__moddi3, .Lfunc_end36-__moddi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__modsi3                        @ -- Begin function __modsi3
	.p2align	2
	.type	__modsi3,%function
	.code	32                              @ @__modsi3
__modsi3:
.Lfunc_begin37:
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
.Ltmp67:
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
.Ltmp68:
.Lfunc_end37:
	.size	__modsi3, .Lfunc_end37-__modsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__mulvdi3                       @ -- Begin function __mulvdi3
	.p2align	2
	.type	__mulvdi3,%function
	.code	32                              @ @__mulvdi3
__mulvdi3:
.Lfunc_begin38:
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
.Ltmp69:
	.loc	24 27 11 prologue_end           @ ../mulvdi3.c:27:11
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	24 27 9 is_stmt 0               @ ../mulvdi3.c:27:9
	cmp	r0, #0
	bne	.LBB38_5
	b	.LBB38_1
.LBB38_1:                               @ %if.then
	.loc	24 29 15 is_stmt 1              @ ../mulvdi3.c:29:15
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	orr	r0, r0, r1
	.loc	24 29 20 is_stmt 0              @ ../mulvdi3.c:29:20
	cmp	r0, #0
	beq	.LBB38_3
	b	.LBB38_2
.LBB38_2:                               @ %lor.lhs.false
	.loc	24 29 25                        @ ../mulvdi3.c:29:25
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	eor	r0, r0, #1
	orr	r0, r0, r1
	.loc	24 29 13                        @ ../mulvdi3.c:29:13
	cmp	r0, #0
	bne	.LBB38_4
	b	.LBB38_3
.LBB38_3:                               @ %if.then3
	.loc	24 30 13 is_stmt 1              @ ../mulvdi3.c:30:13
	b	.LBB38_21
.LBB38_4:                               @ %if.end
	.loc	24 31 9                         @ ../mulvdi3.c:31:9
	ldr	r0, .LCPI38_0
	ldr	r2, .LCPI38_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB38_5:                               @ %if.end4
	.loc	24 33 11                        @ ../mulvdi3.c:33:11
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	24 33 9 is_stmt 0               @ ../mulvdi3.c:33:9
	cmp	r0, #0
	bne	.LBB38_10
	b	.LBB38_6
.LBB38_6:                               @ %if.then6
	.loc	24 35 15 is_stmt 1              @ ../mulvdi3.c:35:15
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	orr	r0, r0, r1
	.loc	24 35 20 is_stmt 0              @ ../mulvdi3.c:35:20
	cmp	r0, #0
	beq	.LBB38_8
	b	.LBB38_7
.LBB38_7:                               @ %lor.lhs.false8
	.loc	24 35 25                        @ ../mulvdi3.c:35:25
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	eor	r0, r0, #1
	orr	r0, r0, r1
	.loc	24 35 13                        @ ../mulvdi3.c:35:13
	cmp	r0, #0
	bne	.LBB38_9
	b	.LBB38_8
.LBB38_8:                               @ %if.then10
	.loc	24 36 13 is_stmt 1              @ ../mulvdi3.c:36:13
	b	.LBB38_21
.LBB38_9:                               @ %if.end12
	.loc	24 37 9                         @ ../mulvdi3.c:37:9
	ldr	r0, .LCPI38_0
	ldr	r2, .LCPI38_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB38_10:                              @ %if.end13
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
	blt	.LBB38_12
	b	.LBB38_11
.LBB38_11:                              @ %lor.lhs.false18
	.loc	24 43 28                        @ ../mulvdi3.c:43:28
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	rsbs	r1, r1, #1
	rscs	r0, r0, #0
	.loc	24 43 9                         @ ../mulvdi3.c:43:9
	blt	.LBB38_13
	b	.LBB38_12
.LBB38_12:                              @ %if.then20
	.loc	24 44 9 is_stmt 1               @ ../mulvdi3.c:44:9
	b	.LBB38_21
.LBB38_13:                              @ %if.end22
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
	bne	.LBB38_17
	b	.LBB38_14
.LBB38_14:                              @ %if.then24
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
	bge	.LBB38_16
	b	.LBB38_15
.LBB38_15:                              @ %if.then26
	.loc	24 48 13 is_stmt 1              @ ../mulvdi3.c:48:13
	ldr	r0, .LCPI38_0
	ldr	r2, .LCPI38_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB38_16:                              @ %if.end27
	.loc	24 49 5                         @ ../mulvdi3.c:49:5
	b	.LBB38_20
.LBB38_17:                              @ %if.else
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
	bge	.LBB38_19
	b	.LBB38_18
.LBB38_18:                              @ %if.then31
	.loc	24 53 13 is_stmt 1              @ ../mulvdi3.c:53:13
	ldr	r0, .LCPI38_0
	ldr	r2, .LCPI38_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.LBB38_19:                              @ %if.end32
	.loc	24 0 13 is_stmt 0               @ ../mulvdi3.c:0:13
	b	.LBB38_20
.LBB38_20:                              @ %if.end33
	.loc	24 55 5 is_stmt 1               @ ../mulvdi3.c:55:5
	b	.LBB38_21
.LBB38_21:                              @ %return
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
.Ltmp70:
	.p2align	2
@ %bb.22:
	.loc	24 0 1 is_stmt 0                @ ../mulvdi3.c:0:1
.LCPI38_0:
	.long	.L.str.8
.LCPI38_1:
	.long	.L__func__.__mulvdi3
.Lfunc_end38:
	.size	__mulvdi3, .Lfunc_end38-__mulvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__mulvsi3                       @ -- Begin function __mulvsi3
	.p2align	2
	.type	__mulvsi3,%function
	.code	32                              @ @__mulvsi3
__mulvsi3:
.Lfunc_begin39:
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
.Ltmp71:
	.loc	25 27 9 prologue_end            @ ../mulvsi3.c:27:9
	cmp	r0, #-2147483648
	bne	.LBB39_5
	b	.LBB39_1
.LBB39_1:                               @ %if.then
	.loc	25 29 20                        @ ../mulvsi3.c:29:20
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB39_3
	b	.LBB39_2
.LBB39_2:                               @ %lor.lhs.false
	.loc	25 29 13 is_stmt 0              @ ../mulvsi3.c:29:13
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB39_4
	b	.LBB39_3
.LBB39_3:                               @ %if.then3
	.loc	25 30 13 is_stmt 1              @ ../mulvsi3.c:30:13
	b	.LBB39_21
.LBB39_4:                               @ %if.end
	.loc	25 31 9                         @ ../mulvsi3.c:31:9
	ldr	r0, .LCPI39_0
	ldr	r2, .LCPI39_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB39_5:                               @ %if.end4
	.loc	25 33 9                         @ ../mulvsi3.c:33:9
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #-2147483648
	bne	.LBB39_10
	b	.LBB39_6
.LBB39_6:                               @ %if.then6
	.loc	25 35 20                        @ ../mulvsi3.c:35:20
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB39_8
	b	.LBB39_7
.LBB39_7:                               @ %lor.lhs.false8
	.loc	25 35 13 is_stmt 0              @ ../mulvsi3.c:35:13
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB39_9
	b	.LBB39_8
.LBB39_8:                               @ %if.then10
	.loc	25 36 13 is_stmt 1              @ ../mulvsi3.c:36:13
	b	.LBB39_21
.LBB39_9:                               @ %if.end12
	.loc	25 37 9                         @ ../mulvsi3.c:37:9
	ldr	r0, .LCPI39_0
	ldr	r2, .LCPI39_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB39_10:                              @ %if.end13
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
	blt	.LBB39_12
	b	.LBB39_11
.LBB39_11:                              @ %lor.lhs.false18
	.loc	25 43 9 is_stmt 0               @ ../mulvsi3.c:43:9
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #1
	bgt	.LBB39_13
	b	.LBB39_12
.LBB39_12:                              @ %if.then20
	.loc	25 44 9 is_stmt 1               @ ../mulvsi3.c:44:9
	b	.LBB39_21
.LBB39_13:                              @ %if.end22
	.loc	25 45 9                         @ ../mulvsi3.c:45:9
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	cmp	r0, r1
	bne	.LBB39_17
	b	.LBB39_14
.LBB39_14:                              @ %if.then24
	.loc	25 47 25                        @ ../mulvsi3.c:47:25
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mvn	r0, #-2147483648
	bl	__divsi3
	mov	r1, r0
	.loc	25 47 13 is_stmt 0              @ ../mulvsi3.c:47:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB39_16
	b	.LBB39_15
.LBB39_15:                              @ %if.then26
	.loc	25 48 13 is_stmt 1              @ ../mulvsi3.c:48:13
	ldr	r0, .LCPI39_0
	ldr	r2, .LCPI39_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB39_16:                              @ %if.end27
	.loc	25 49 5                         @ ../mulvsi3.c:49:5
	b	.LBB39_20
.LBB39_17:                              @ %if.else
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
	ble	.LBB39_19
	b	.LBB39_18
.LBB39_18:                              @ %if.then31
	.loc	25 53 13 is_stmt 1              @ ../mulvsi3.c:53:13
	ldr	r0, .LCPI39_0
	ldr	r2, .LCPI39_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.LBB39_19:                              @ %if.end32
	.loc	25 0 13 is_stmt 0               @ ../mulvsi3.c:0:13
	b	.LBB39_20
.LBB39_20:                              @ %if.end33
	.loc	25 55 5 is_stmt 1               @ ../mulvsi3.c:55:5
	b	.LBB39_21
.LBB39_21:                              @ %return
	.loc	25 0 0 is_stmt 0                @ ../mulvsi3.c:0:0
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [r11, #-8]                  @ 4-byte Reload
	mul	r0, r1, r2
	.loc	25 56 1 is_stmt 1               @ ../mulvsi3.c:56:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp72:
	.p2align	2
@ %bb.22:
	.loc	25 0 1 is_stmt 0                @ ../mulvsi3.c:0:1
.LCPI39_0:
	.long	.L.str.9
.LCPI39_1:
	.long	.L__func__.__mulvsi3
.Lfunc_end39:
	.size	__mulvsi3, .Lfunc_end39-__mulvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__paritydi2                     @ -- Begin function __paritydi2
	.p2align	2
	.type	__paritydi2,%function
	.code	32                              @ @__paritydi2
__paritydi2:
.Lfunc_begin40:
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
.Ltmp73:
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
.Ltmp74:
.Lfunc_end40:
	.size	__paritydi2, .Lfunc_end40-__paritydi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__paritysi2                     @ -- Begin function __paritysi2
	.p2align	2
	.type	__paritysi2,%function
	.code	32                              @ @__paritysi2
__paritysi2:
.Lfunc_begin41:
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
.Ltmp75:
.Lfunc_end41:
	.size	__paritysi2, .Lfunc_end41-__paritysi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__popcountdi2                   @ -- Begin function __popcountdi2
	.p2align	2
	.type	__popcountdi2,%function
	.code	32                              @ @__popcountdi2
__popcountdi2:
.Lfunc_begin42:
	.file	28 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountdi2.c" md5 0x05f001da7fc478c773612fd707769c2a
	.loc	28 21 0 is_stmt 1               @ ../popcountdi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r2, r0
                                        @ kill: def $r0 killed $r1
                                        @ kill: def $r0 killed $r2
.Ltmp76:
	.loc	28 23 20 prologue_end           @ ../popcountdi2.c:23:20
	lsrs	r0, r1, #1
	rrx	r3, r2
	ldr	r12, .LCPI42_0
	.loc	28 23 26 is_stmt 0              @ ../popcountdi2.c:23:26
	and	r0, r0, r12
	and	r3, r3, r12
	.loc	28 23 13                        @ ../popcountdi2.c:23:13
	subs	r2, r2, r3
	sbc	r3, r1, r0
	ldr	r12, .LCPI42_1
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
	ldr	r2, .LCPI42_2
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
.Ltmp77:
	.p2align	2
@ %bb.1:
	.loc	28 0 5                          @ ../popcountdi2.c:0:5
.LCPI42_0:
	.long	1431655765                      @ 0x55555555
.LCPI42_1:
	.long	858993459                       @ 0x33333333
.LCPI42_2:
	.long	252645135                       @ 0xf0f0f0f
.Lfunc_end42:
	.size	__popcountdi2, .Lfunc_end42-__popcountdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__popcountsi2                   @ -- Begin function __popcountsi2
	.p2align	2
	.type	__popcountsi2,%function
	.code	32                              @ @__popcountsi2
__popcountsi2:
.Lfunc_begin43:
	.file	29 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountsi2.c" md5 0xf9ebedb2d8810ee5a54fff38e1b09d64
	.loc	29 21 0 is_stmt 1               @ ../popcountsi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	ldr	r1, .LCPI43_0
.Ltmp78:
	.loc	29 23 23 prologue_end           @ ../popcountsi2.c:23:23
	and	r1, r1, r0, lsr #1
	.loc	29 23 11 is_stmt 0              @ ../popcountsi2.c:23:11
	sub	r1, r0, r1
	ldr	r2, .LCPI43_1
	.loc	29 25 19 is_stmt 1              @ ../popcountsi2.c:25:19
	and	r0, r2, r1, lsr #2
	.loc	29 25 38 is_stmt 0              @ ../popcountsi2.c:25:38
	and	r1, r1, r2
	.loc	29 25 33                        @ ../popcountsi2.c:25:33
	add	r0, r0, r1
	.loc	29 27 12 is_stmt 1              @ ../popcountsi2.c:27:12
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI43_2
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
.Ltmp79:
	.p2align	2
@ %bb.1:
	.loc	29 0 5                          @ ../popcountsi2.c:0:5
.LCPI43_0:
	.long	1431655765                      @ 0x55555555
.LCPI43_1:
	.long	858993459                       @ 0x33333333
.LCPI43_2:
	.long	252645135                       @ 0xf0f0f0f
.Lfunc_end43:
	.size	__popcountsi2, .Lfunc_end43-__popcountsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__subvdi3                       @ -- Begin function __subvdi3
	.p2align	2
	.type	__subvdi3,%function
	.code	32                              @ @__subvdi3
__subvdi3:
.Lfunc_begin44:
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
.Ltmp80:
	.loc	30 24 27 prologue_end           @ ../subvdi3.c:24:27
	subs	r0, r0, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	sbc	r0, r1, r3
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	30 25 9                         @ ../subvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB44_4
	b	.LBB44_1
.LBB44_1:                               @ %if.then
	.loc	30 27 15                        @ ../subvdi3.c:27:15
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	30 27 13 is_stmt 0              @ ../subvdi3.c:27:13
	bge	.LBB44_3
	b	.LBB44_2
.LBB44_2:                               @ %if.then2
	.loc	30 28 13 is_stmt 1              @ ../subvdi3.c:28:13
	ldr	r0, .LCPI44_0
	ldr	r2, .LCPI44_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB44_3:                               @ %if.end
	.loc	30 29 5                         @ ../subvdi3.c:29:5
	b	.LBB44_7
.LBB44_4:                               @ %if.else
	.loc	30 32 15                        @ ../subvdi3.c:32:15
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	30 32 13 is_stmt 0              @ ../subvdi3.c:32:13
	blt	.LBB44_6
	b	.LBB44_5
.LBB44_5:                               @ %if.then4
	.loc	30 33 13 is_stmt 1              @ ../subvdi3.c:33:13
	ldr	r0, .LCPI44_0
	ldr	r2, .LCPI44_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB44_6:                               @ %if.end5
	.loc	30 0 13 is_stmt 0               @ ../subvdi3.c:0:13
	b	.LBB44_7
.LBB44_7:                               @ %if.end6
	.loc	30 35 5 is_stmt 1               @ ../subvdi3.c:35:5
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp81:
	.p2align	2
@ %bb.8:
	.loc	30 0 5 is_stmt 0                @ ../subvdi3.c:0:5
.LCPI44_0:
	.long	.L.str.12
.LCPI44_1:
	.long	.L__func__.__subvdi3
.Lfunc_end44:
	.size	__subvdi3, .Lfunc_end44-__subvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__subvsi3                       @ -- Begin function __subvsi3
	.p2align	2
	.type	__subvsi3,%function
	.code	32                              @ @__subvsi3
__subvsi3:
.Lfunc_begin45:
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
.Ltmp82:
	.loc	31 24 27 prologue_end           @ ../subvsi3.c:24:27
	sub	r0, r0, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	31 25 9                         @ ../subvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB45_4
	b	.LBB45_1
.LBB45_1:                               @ %if.then
	.loc	31 27 13                        @ ../subvsi3.c:27:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB45_3
	b	.LBB45_2
.LBB45_2:                               @ %if.then2
	.loc	31 28 13                        @ ../subvsi3.c:28:13
	ldr	r0, .LCPI45_0
	ldr	r2, .LCPI45_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB45_3:                               @ %if.end
	.loc	31 29 5                         @ ../subvsi3.c:29:5
	b	.LBB45_7
.LBB45_4:                               @ %if.else
	.loc	31 32 13                        @ ../subvsi3.c:32:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	bgt	.LBB45_6
	b	.LBB45_5
.LBB45_5:                               @ %if.then4
	.loc	31 33 13                        @ ../subvsi3.c:33:13
	ldr	r0, .LCPI45_0
	ldr	r2, .LCPI45_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB45_6:                               @ %if.end5
	.loc	31 0 13 is_stmt 0               @ ../subvsi3.c:0:13
	b	.LBB45_7
.LBB45_7:                               @ %if.end6
	.loc	31 35 5 is_stmt 1               @ ../subvsi3.c:35:5
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp83:
	.p2align	2
@ %bb.8:
	.loc	31 0 5 is_stmt 0                @ ../subvsi3.c:0:5
.LCPI45_0:
	.long	.L.str.13
.LCPI45_1:
	.long	.L__func__.__subvsi3
.Lfunc_end45:
	.size	__subvsi3, .Lfunc_end45-__subvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ucmpdi2                       @ -- Begin function __ucmpdi2
	.p2align	2
	.type	__ucmpdi2,%function
	.code	32                              @ @__ucmpdi2
__ucmpdi2:
.Lfunc_begin46:
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
.Ltmp84:
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
	bhs	.LBB46_2
	b	.LBB46_1
.LBB46_1:                               @ %if.then
	.loc	32 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	32 30 9 is_stmt 1               @ ../ucmpdi2.c:30:9
	b	.LBB46_9
.LBB46_2:                               @ %if.end
	.loc	32 31 13                        @ ../ucmpdi2.c:31:13
	ldr	r0, [sp, #20]
	.loc	32 31 24 is_stmt 0              @ ../ucmpdi2.c:31:24
	ldr	r1, [sp, #12]
	.loc	32 31 9                         @ ../ucmpdi2.c:31:9
	cmp	r0, r1
	bls	.LBB46_4
	b	.LBB46_3
.LBB46_3:                               @ %if.then9
	.loc	32 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	32 32 9 is_stmt 1               @ ../ucmpdi2.c:32:9
	b	.LBB46_9
.LBB46_4:                               @ %if.end10
	.loc	32 33 13                        @ ../ucmpdi2.c:33:13
	ldr	r0, [sp, #16]
	.loc	32 33 23 is_stmt 0              @ ../ucmpdi2.c:33:23
	ldr	r1, [sp, #8]
	.loc	32 33 9                         @ ../ucmpdi2.c:33:9
	cmp	r0, r1
	bhs	.LBB46_6
	b	.LBB46_5
.LBB46_5:                               @ %if.then15
	.loc	32 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	32 34 9 is_stmt 1               @ ../ucmpdi2.c:34:9
	b	.LBB46_9
.LBB46_6:                               @ %if.end16
	.loc	32 35 13                        @ ../ucmpdi2.c:35:13
	ldr	r0, [sp, #16]
	.loc	32 35 23 is_stmt 0              @ ../ucmpdi2.c:35:23
	ldr	r1, [sp, #8]
	.loc	32 35 9                         @ ../ucmpdi2.c:35:9
	cmp	r0, r1
	bls	.LBB46_8
	b	.LBB46_7
.LBB46_7:                               @ %if.then22
	.loc	32 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	32 36 9 is_stmt 1               @ ../ucmpdi2.c:36:9
	b	.LBB46_9
.LBB46_8:                               @ %if.end23
	.loc	32 0 9 is_stmt 0                @ ../ucmpdi2.c:0:9
	mov	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	32 37 5 is_stmt 1               @ ../ucmpdi2.c:37:5
	b	.LBB46_9
.LBB46_9:                               @ %return
	.loc	32 0 0 is_stmt 0                @ ../ucmpdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	32 38 1 is_stmt 1               @ ../ucmpdi2.c:38:1
	add	sp, sp, #24
	bx	lr
.Ltmp85:
.Lfunc_end46:
	.size	__ucmpdi2, .Lfunc_end46-__ucmpdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__aeabi_ulcmp                   @ -- Begin function __aeabi_ulcmp
	.p2align	2
	.type	__aeabi_ulcmp,%function
	.code	32                              @ @__aeabi_ulcmp
__aeabi_ulcmp:
.Lfunc_begin47:
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
.Ltmp86:
	.loc	32 48 9 prologue_end            @ ../ucmpdi2.c:48:9
	bl	__ucmpdi2
	.loc	32 48 25 is_stmt 0              @ ../ucmpdi2.c:48:25
	sub	r0, r0, #1
	.loc	32 48 2                         @ ../ucmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp87:
.Lfunc_end47:
	.size	__aeabi_ulcmp, .Lfunc_end47-__aeabi_ulcmp
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivdi3                       @ -- Begin function __udivdi3
	.p2align	2
	.type	__udivdi3,%function
	.code	32                              @ @__udivdi3
__udivdi3:
.Lfunc_begin48:
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
.Ltmp88:
	.loc	33 22 12 prologue_end           @ ../udivdi3.c:22:12
	mov	lr, sp
	mov	r12, #0
	str	r12, [lr]
	bl	__udivmoddi4
	.loc	33 22 5 is_stmt 0               @ ../udivdi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp89:
.Lfunc_end48:
	.size	__udivdi3, .Lfunc_end48-__udivdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivmodsi4                    @ -- Begin function __udivmodsi4
	.p2align	2
	.type	__udivmodsi4,%function
	.code	32                              @ @__udivmodsi4
__udivmodsi4:
.Lfunc_begin49:
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
.Ltmp90:
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
.Ltmp91:
.Lfunc_end49:
	.size	__udivmodsi4, .Lfunc_end49-__udivmodsi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivsi3                       @ -- Begin function __udivsi3
	.p2align	2
	.type	__udivsi3,%function
	.code	32                              @ @__udivsi3
__udivsi3:
.Lfunc_begin50:
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
.Ltmp92:
	.loc	35 32 9 prologue_end            @ ../udivsi3.c:32:9
	cmp	r1, #0
	bne	.LBB50_2
	b	.LBB50_1
.LBB50_1:                               @ %if.then
	.loc	35 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	35 33 9 is_stmt 1               @ ../udivsi3.c:33:9
	b	.LBB50_13
.LBB50_2:                               @ %if.end
	.loc	35 34 9                         @ ../udivsi3.c:34:9
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB50_4
	b	.LBB50_3
.LBB50_3:                               @ %if.then2
	.loc	35 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	35 35 9 is_stmt 1               @ ../udivsi3.c:35:9
	b	.LBB50_13
.LBB50_4:                               @ %if.end3
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
	blo	.LBB50_6
	b	.LBB50_5
.LBB50_5:                               @ %if.then5
	.loc	35 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	35 39 9 is_stmt 1               @ ../udivsi3.c:39:9
	b	.LBB50_13
.LBB50_6:                               @ %if.end6
	.loc	35 40 9                         @ ../udivsi3.c:40:9
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	cmp	r0, #31
	bne	.LBB50_8
	b	.LBB50_7
.LBB50_7:                               @ %if.then8
	.loc	35 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	35 41 9 is_stmt 1               @ ../udivsi3.c:41:9
	b	.LBB50_13
.LBB50_8:                               @ %if.end9
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
	b	.LBB50_9
.LBB50_9:                               @ %for.cond
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
	beq	.LBB50_12
	b	.LBB50_10
.LBB50_10:                              @ %for.body
                                        @   in Loop: Header=BB50_9 Depth=1
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
	b	.LBB50_11
.LBB50_11:                              @ %for.inc
                                        @   in Loop: Header=BB50_9 Depth=1
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
	b	.LBB50_9
.LBB50_12:                              @ %for.end
	.loc	35 64 18 is_stmt 1              @ ../udivsi3.c:64:18
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	orr	r0, r0, r1, lsl #1
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	35 65 5                         @ ../udivsi3.c:65:5
	b	.LBB50_13
.LBB50_13:                              @ %return
	.loc	35 0 0 is_stmt 0                @ ../udivsi3.c:0:0
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	.loc	35 66 1 is_stmt 1               @ ../udivsi3.c:66:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp93:
.Lfunc_end50:
	.size	__udivsi3, .Lfunc_end50-__udivsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__umoddi3                       @ -- Begin function __umoddi3
	.p2align	2
	.type	__umoddi3,%function
	.code	32                              @ @__umoddi3
__umoddi3:
.Lfunc_begin51:
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
.Ltmp94:
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
.Ltmp95:
.Lfunc_end51:
	.size	__umoddi3, .Lfunc_end51-__umoddi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__umodsi3                       @ -- Begin function __umodsi3
	.p2align	2
	.type	__umodsi3,%function
	.code	32                              @ @__umodsi3
__umodsi3:
.Lfunc_begin52:
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
.Ltmp96:
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
.Ltmp97:
.Lfunc_end52:
	.size	__umodsi3, .Lfunc_end52-__umodsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	memcpy                          @ -- Begin function memcpy
	.p2align	2
	.type	memcpy,%function
	.code	32                              @ @memcpy
memcpy:
.Lfunc_begin53:
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
.Ltmp98:
	.loc	38 8 6 prologue_end             @ ../memory.c:8:6
	b	.LBB53_1
.LBB53_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	38 0 0 is_stmt 0                @ ../memory.c:0:0
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	38 8 2                          @ ../memory.c:8:2
	cmp	r0, r1
	beq	.LBB53_4
	b	.LBB53_2
.LBB53_2:                               @ %for.body
                                        @   in Loop: Header=BB53_1 Depth=1
	.loc	38 9 21 is_stmt 1               @ ../memory.c:9:21
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldrb	r0, [r0, r2]
	.loc	38 9 19 is_stmt 0               @ ../memory.c:9:19
	strb	r0, [r1, r2]
	.loc	38 10 2 is_stmt 1               @ ../memory.c:10:2
	b	.LBB53_3
.LBB53_3:                               @ %for.inc
                                        @   in Loop: Header=BB53_1 Depth=1
	.loc	38 8 26                         @ ../memory.c:8:26
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	38 8 2 is_stmt 0                @ ../memory.c:8:2
	b	.LBB53_1
.LBB53_4:                               @ %for.end
                                        @ implicit-def: $r0
	.loc	38 11 1 is_stmt 1               @ ../memory.c:11:1
	add	sp, sp, #20
	bx	lr
.Ltmp99:
.Lfunc_end53:
	.size	memcpy, .Lfunc_end53-memcpy
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	memset                          @ -- Begin function memset
	.p2align	2
	.type	memset,%function
	.code	32                              @ @memset
memset:
.Lfunc_begin54:
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
.Ltmp100:
	.loc	38 17 6 prologue_end            @ ../memory.c:17:6
	b	.LBB54_1
.LBB54_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	38 0 0 is_stmt 0                @ ../memory.c:0:0
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	38 17 2                         @ ../memory.c:17:2
	cmp	r0, r1
	beq	.LBB54_4
	b	.LBB54_2
.LBB54_2:                               @ %for.body
                                        @   in Loop: Header=BB54_1 Depth=1
	.loc	38 18 11 is_stmt 1              @ ../memory.c:18:11
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	strb	r0, [r1, r2]
	.loc	38 19 2                         @ ../memory.c:19:2
	b	.LBB54_3
.LBB54_3:                               @ %for.inc
                                        @   in Loop: Header=BB54_1 Depth=1
	.loc	38 17 26                        @ ../memory.c:17:26
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	38 17 2 is_stmt 0               @ ../memory.c:17:2
	b	.LBB54_1
.LBB54_4:                               @ %for.end
	.loc	38 20 2 is_stmt 1               @ ../memory.c:20:2
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	add	sp, sp, #20
	bx	lr
.Ltmp101:
.Lfunc_end54:
	.size	memset, .Lfunc_end54-memset
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.type	cosf_solutions,%object          @ @cosf_solutions
	.bss
	.globl	cosf_solutions
	.p2align	2
cosf_solutions:
	.long	0x00000000                      @ float 0
	.size	cosf_solutions, 4

	.type	basicmath_bp,%object            @ @basicmath_bp
	.section	.rodata,"a",%progbits
	.p2align	2
basicmath_bp:
	.long	0x3f800000                      @ float 1
	.long	0x3fc00000                      @ float 1.5
	.size	basicmath_bp, 8

	.type	basicmath_dp_l,%object          @ @basicmath_dp_l
	.p2align	2
basicmath_dp_l:
	.long	0x00000000                      @ float 0
	.long	0x35d1cfdc                      @ float 1.56322085E-6
	.size	basicmath_dp_l, 8

	.type	basicmath_dp_h,%object          @ @basicmath_dp_h
	.p2align	2
basicmath_dp_h:
	.long	0x00000000                      @ float 0
	.long	0x3f15c000                      @ float 0.584960938
	.size	basicmath_dp_h, 8

	.type	basicmath_npio2_hw,%object      @ @basicmath_npio2_hw
	.p2align	2
basicmath_npio2_hw:
	.long	1070141184                      @ 0x3fc90f00
	.long	1078529792                      @ 0x40490f00
	.long	1083624192                      @ 0x4096cb00
	.long	1086918400                      @ 0x40c90f00
	.long	1090212608                      @ 0x40fb5300
	.long	1092012800                      @ 0x4116cb00
	.long	1093659904                      @ 0x412fed00
	.long	1095307008                      @ 0x41490f00
	.long	1096954112                      @ 0x41623100
	.long	1098601216                      @ 0x417b5300
	.long	1099577856                      @ 0x418a3a00
	.long	1100401408                      @ 0x4196cb00
	.long	1101224960                      @ 0x41a35c00
	.long	1102048512                      @ 0x41afed00
	.long	1102872064                      @ 0x41bc7e00
	.long	1103695616                      @ 0x41c90f00
	.long	1104519168                      @ 0x41d5a000
	.long	1105342720                      @ 0x41e23100
	.long	1106166272                      @ 0x41eec200
	.long	1106989824                      @ 0x41fb5300
	.long	1107554816                      @ 0x4203f200
	.long	1107966464                      @ 0x420a3a00
	.long	1108378368                      @ 0x42108300
	.long	1108790016                      @ 0x4216cb00
	.long	1109201920                      @ 0x421d1400
	.long	1109613568                      @ 0x42235c00
	.long	1110025472                      @ 0x4229a500
	.long	1110437120                      @ 0x422fed00
	.long	1110849024                      @ 0x42363600
	.long	1111260672                      @ 0x423c7e00
	.long	1111672576                      @ 0x4242c700
	.long	1112084224                      @ 0x42490f00
	.size	basicmath_npio2_hw, 128

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
	.long	.Lfunc_end3-.Lfunc_begin0       @ DW_AT_high_pc
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
	.long	.Lfunc_end14-.Lfunc_begin4      @ DW_AT_high_pc
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
	.long	.Lfunc_end15-.Lfunc_begin15     @ DW_AT_high_pc
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
	.long	.Lfunc_end16-.Lfunc_begin16     @ DW_AT_high_pc
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
	.long	.Lfunc_end17-.Lfunc_begin17     @ DW_AT_high_pc
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
	.long	.Lfunc_end18-.Lfunc_begin18     @ DW_AT_high_pc
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
	.long	.Lfunc_end19-.Lfunc_begin19     @ DW_AT_high_pc
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
	.long	.Lfunc_end20-.Lfunc_begin20     @ DW_AT_high_pc
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
	.long	.Lfunc_end21-.Lfunc_begin21     @ DW_AT_high_pc
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
	.long	.Lfunc_end22-.Lfunc_begin22     @ DW_AT_high_pc
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
	.long	.Lfunc_end23-.Lfunc_begin23     @ DW_AT_high_pc
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
	.long	.Lfunc_end25-.Lfunc_begin24     @ DW_AT_high_pc
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
	.long	.Lfunc_end26-.Lfunc_begin26     @ DW_AT_high_pc
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
	.long	.Lfunc_end27-.Lfunc_begin27     @ DW_AT_high_pc
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
	.long	.Lfunc_end28-.Lfunc_begin28     @ DW_AT_high_pc
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
	.long	.Lfunc_end29-.Lfunc_begin29     @ DW_AT_high_pc
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
	.long	.Lfunc_end30-.Lfunc_begin30     @ DW_AT_high_pc
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
	.long	.Lfunc_end31-.Lfunc_begin31     @ DW_AT_high_pc
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
	.long	.Lfunc_end32-.Lfunc_begin32     @ DW_AT_high_pc
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
	.long	.Lfunc_end33-.Lfunc_begin33     @ DW_AT_high_pc
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
	.long	.Lfunc_end34-.Lfunc_begin34     @ DW_AT_high_pc
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
	.long	.Lfunc_end35-.Lfunc_begin35     @ DW_AT_high_pc
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
	.long	.Lfunc_end36-.Lfunc_begin36     @ DW_AT_high_pc
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
	.long	.Lfunc_end37-.Lfunc_begin37     @ DW_AT_high_pc
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
	.long	.Lfunc_end38-.Lfunc_begin38     @ DW_AT_high_pc
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
	.long	.Lfunc_end39-.Lfunc_begin39     @ DW_AT_high_pc
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
	.long	.Lfunc_end40-.Lfunc_begin40     @ DW_AT_high_pc
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
	.long	.Lfunc_end41-.Lfunc_begin41     @ DW_AT_high_pc
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
	.long	.Lfunc_end42-.Lfunc_begin42     @ DW_AT_high_pc
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
	.long	.Lfunc_end43-.Lfunc_begin43     @ DW_AT_high_pc
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
	.long	.Lfunc_end44-.Lfunc_begin44     @ DW_AT_high_pc
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
	.long	.Lfunc_end45-.Lfunc_begin45     @ DW_AT_high_pc
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
	.long	.Lfunc_end47-.Lfunc_begin46     @ DW_AT_high_pc
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
	.long	.Lfunc_end48-.Lfunc_begin48     @ DW_AT_high_pc
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
	.long	.Lfunc_end49-.Lfunc_begin49     @ DW_AT_high_pc
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
	.long	.Lfunc_end50-.Lfunc_begin50     @ DW_AT_high_pc
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
	.long	.Lfunc_end51-.Lfunc_begin51     @ DW_AT_high_pc
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
	.long	.Lfunc_end52-.Lfunc_begin52     @ DW_AT_high_pc
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
	.long	.Lfunc_end54-.Lfunc_begin53     @ DW_AT_high_pc
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
	.asciz	"/workspaces/llvmta/testcases/batchtest/cosf/cosf.c" @ string offset=100
.Linfo_string2:
	.asciz	"/workspaces/llvmta/testcases/tmp.pWtFTL6MLi" @ string offset=151
.Linfo_string3:
	.asciz	"/workspaces/llvmta/testcases/batchtest/cosf/wcclibm.c" @ string offset=195
.Linfo_string4:
	.asciz	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)" @ string offset=249
.Linfo_string5:
	.asciz	"../absvdi2.c"                  @ string offset=370
.Linfo_string6:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" @ string offset=383
.Linfo_string7:
	.asciz	"../int_util.c"                 @ string offset=445
.Linfo_string8:
	.asciz	"../absvsi2.c"                  @ string offset=459
.Linfo_string9:
	.asciz	"../addvdi3.c"                  @ string offset=472
.Linfo_string10:
	.asciz	"../addvsi3.c"                  @ string offset=485
.Linfo_string11:
	.asciz	"../ashldi3.c"                  @ string offset=498
.Linfo_string12:
	.asciz	"../ashrdi3.c"                  @ string offset=511
.Linfo_string13:
	.asciz	"../clzdi2.c"                   @ string offset=524
.Linfo_string14:
	.asciz	"../clzsi2.c"                   @ string offset=536
.Linfo_string15:
	.asciz	"../cmpdi2.c"                   @ string offset=548
.Linfo_string16:
	.asciz	"../ctzdi2.c"                   @ string offset=560
.Linfo_string17:
	.asciz	"../ctzsi2.c"                   @ string offset=572
.Linfo_string18:
	.asciz	"../divdi3.c"                   @ string offset=584
.Linfo_string19:
	.asciz	"../udivmoddi4.c"               @ string offset=596
.Linfo_string20:
	.asciz	"../divmoddi4.c"                @ string offset=612
.Linfo_string21:
	.asciz	"../divmodsi4.c"                @ string offset=627
.Linfo_string22:
	.asciz	"../divsi3.c"                   @ string offset=642
.Linfo_string23:
	.asciz	"../ffsdi2.c"                   @ string offset=654
.Linfo_string24:
	.asciz	"../ffssi2.c"                   @ string offset=666
.Linfo_string25:
	.asciz	"../lshrdi3.c"                  @ string offset=678
.Linfo_string26:
	.asciz	"../moddi3.c"                   @ string offset=691
.Linfo_string27:
	.asciz	"../modsi3.c"                   @ string offset=703
.Linfo_string28:
	.asciz	"../mulvdi3.c"                  @ string offset=715
.Linfo_string29:
	.asciz	"../mulvsi3.c"                  @ string offset=728
.Linfo_string30:
	.asciz	"../paritydi2.c"                @ string offset=741
.Linfo_string31:
	.asciz	"../paritysi2.c"                @ string offset=756
.Linfo_string32:
	.asciz	"../popcountdi2.c"              @ string offset=771
.Linfo_string33:
	.asciz	"../popcountsi2.c"              @ string offset=788
.Linfo_string34:
	.asciz	"../subvdi3.c"                  @ string offset=805
.Linfo_string35:
	.asciz	"../subvsi3.c"                  @ string offset=818
.Linfo_string36:
	.asciz	"../ucmpdi2.c"                  @ string offset=831
.Linfo_string37:
	.asciz	"../udivdi3.c"                  @ string offset=844
.Linfo_string38:
	.asciz	"../udivmodsi4.c"               @ string offset=857
.Linfo_string39:
	.asciz	"../udivsi3.c"                  @ string offset=873
.Linfo_string40:
	.asciz	"../umoddi3.c"                  @ string offset=886
.Linfo_string41:
	.asciz	"../umodsi3.c"                  @ string offset=899
.Linfo_string42:
	.asciz	"../memory.c"                   @ string offset=912
.Linfo_string43:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" @ string offset=924
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
	.long	.Lfunc_begin4
	.long	.Lfunc_begin15
	.long	.Lfunc_begin16
	.long	.Lfunc_begin17
	.long	.Lfunc_begin18
	.long	.Lfunc_begin19
	.long	.Lfunc_begin20
	.long	.Lfunc_begin21
	.long	.Lfunc_begin22
	.long	.Lfunc_begin23
	.long	.Lfunc_begin24
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
	.long	.Lfunc_begin40
	.long	.Lfunc_begin41
	.long	.Lfunc_begin42
	.long	.Lfunc_begin43
	.long	.Lfunc_begin44
	.long	.Lfunc_begin45
	.long	.Lfunc_begin46
	.long	.Lfunc_begin48
	.long	.Lfunc_begin49
	.long	.Lfunc_begin50
	.long	.Lfunc_begin51
	.long	.Lfunc_begin52
	.long	.Lfunc_begin53
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
