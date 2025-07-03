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
	.globl	matrix1_pin_down                @ -- Begin function matrix1_pin_down
	.p2align	2
	.type	matrix1_pin_down,%function
	.code	32                              @ @matrix1_pin_down
matrix1_pin_down:
.Lfunc_begin0:
	.file	1 "/workspaces/llvmta/testcases" "batchtest/matrix1/matrix1.c" md5 0x966e1fde80bfda5fc29084cbb04c6680
	.loc	1 87 0                          @ batchtest/matrix1/matrix1.c:87:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #40
	.cfi_def_cfa_offset 40
	str	r2, [sp, #20]                   @ 4-byte Spill
	str	r1, [sp, #24]                   @ 4-byte Spill
	str	r0, [sp, #28]                   @ 4-byte Spill
	mov	r0, #1
.Ltmp0:
	.loc	1 89 16 prologue_end            @ batchtest/matrix1/matrix1.c:89:16
	str	r0, [sp, #36]
	mov	r0, #0
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	1 91 45                         @ batchtest/matrix1/matrix1.c:91:45
	b	.LBB0_1
.LBB0_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/matrix1/matrix1.c:0:0
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	1 91 40                         @ batchtest/matrix1/matrix1.c:91:40
	cmp	r0, #1
	beq	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                @ %for.body
                                        @   in Loop: Header=BB0_1 Depth=1
	.loc	1 91 75                         @ batchtest/matrix1/matrix1.c:91:75
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	ldr	r0, [sp, #36]
	.loc	1 91 73                         @ batchtest/matrix1/matrix1.c:91:73
	str	r0, [r1, r2, lsl #2]
	.loc	1 91 68                         @ batchtest/matrix1/matrix1.c:91:68
	b	.LBB0_3
.LBB0_3:                                @ %for.inc
                                        @   in Loop: Header=BB0_1 Depth=1
	.loc	1 91 64                         @ batchtest/matrix1/matrix1.c:91:64
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	1 91 40                         @ batchtest/matrix1/matrix1.c:91:40
	b	.LBB0_1
.LBB0_4:                                @ %for.end
	.loc	1 0 40                          @ batchtest/matrix1/matrix1.c:0:40
	mov	r0, #0
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	1 93 45 is_stmt 1               @ batchtest/matrix1/matrix1.c:93:45
	b	.LBB0_5
.LBB0_5:                                @ %for.cond1
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/matrix1/matrix1.c:0:0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 93 40                         @ batchtest/matrix1/matrix1.c:93:40
	cmp	r0, #1
	beq	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                @ %for.body3
                                        @   in Loop: Header=BB0_5 Depth=1
	.loc	1 93 75                         @ batchtest/matrix1/matrix1.c:93:75
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp, #36]
	.loc	1 93 73                         @ batchtest/matrix1/matrix1.c:93:73
	str	r0, [r1, r2, lsl #2]
	.loc	1 93 68                         @ batchtest/matrix1/matrix1.c:93:68
	b	.LBB0_7
.LBB0_7:                                @ %for.inc5
                                        @   in Loop: Header=BB0_5 Depth=1
	.loc	1 93 64                         @ batchtest/matrix1/matrix1.c:93:64
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	1 93 40                         @ batchtest/matrix1/matrix1.c:93:40
	b	.LBB0_5
.LBB0_8:                                @ %for.end7
	.loc	1 0 40                          @ batchtest/matrix1/matrix1.c:0:40
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 95 45 is_stmt 1               @ batchtest/matrix1/matrix1.c:95:45
	b	.LBB0_9
.LBB0_9:                                @ %for.cond8
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/matrix1/matrix1.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 95 40                         @ batchtest/matrix1/matrix1.c:95:40
	cmp	r0, #1
	beq	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               @ %for.body10
                                        @   in Loop: Header=BB0_9 Depth=1
	.loc	1 0 40                          @ batchtest/matrix1/matrix1.c:0:40
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	mov	r0, #0
	.loc	1 95 73                         @ batchtest/matrix1/matrix1.c:95:73
	str	r0, [r1, r2, lsl #2]
	.loc	1 95 68                         @ batchtest/matrix1/matrix1.c:95:68
	b	.LBB0_11
.LBB0_11:                               @ %for.inc12
                                        @   in Loop: Header=BB0_9 Depth=1
	.loc	1 95 64                         @ batchtest/matrix1/matrix1.c:95:64
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 95 40                         @ batchtest/matrix1/matrix1.c:95:40
	b	.LBB0_9
.LBB0_12:                               @ %for.end14
	.loc	1 96 1 is_stmt 1                @ batchtest/matrix1/matrix1.c:96:1
	add	sp, sp, #40
	bx	lr
.Ltmp1:
.Lfunc_end0:
	.size	matrix1_pin_down, .Lfunc_end0-matrix1_pin_down
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	matrix1_init                    @ -- Begin function matrix1_init
	.p2align	2
	.type	matrix1_init,%function
	.code	32                              @ @matrix1_init
matrix1_init:
.Lfunc_begin1:
	.loc	1 98 0                          @ batchtest/matrix1/matrix1.c:98:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp2:
	.loc	1 99 3 prologue_end             @ batchtest/matrix1/matrix1.c:99:3
	ldr	r0, .LCPI1_0
	ldr	r1, .LCPI1_1
	ldr	r2, .LCPI1_2
	bl	matrix1_pin_down
	.loc	1 100 1                         @ batchtest/matrix1/matrix1.c:100:1
	pop	{r11, lr}
	bx	lr
.Ltmp3:
	.p2align	2
@ %bb.1:
	.loc	1 0 1 is_stmt 0                 @ batchtest/matrix1/matrix1.c:0:1
.LCPI1_0:
	.long	matrix1_A
.LCPI1_1:
	.long	matrix1_B
.LCPI1_2:
	.long	matrix1_C
.Lfunc_end1:
	.size	matrix1_init, .Lfunc_end1-matrix1_init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	matrix1_return                  @ -- Begin function matrix1_return
	.p2align	2
	.type	matrix1_return,%function
	.code	32                              @ @matrix1_return
matrix1_return:
.Lfunc_begin2:
	.loc	1 106 0 is_stmt 1               @ batchtest/matrix1/matrix1.c:106:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
.Ltmp4:
	.loc	1 110 45 prologue_end           @ batchtest/matrix1/matrix1.c:110:45
	b	.LBB2_1
.LBB2_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/matrix1/matrix1.c:0:0
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	str	r1, [sp, #4]                    @ 4-byte Spill
	.loc	1 110 40                        @ batchtest/matrix1/matrix1.c:110:40
	cmp	r0, #1
	beq	.LBB2_4
	b	.LBB2_2
.LBB2_2:                                @ %for.body
                                        @   in Loop: Header=BB2_1 Depth=1
	.loc	1 110 68                        @ batchtest/matrix1/matrix1.c:110:68
	b	.LBB2_3
.LBB2_3:                                @ %for.inc
                                        @   in Loop: Header=BB2_1 Depth=1
	.loc	1 111 7 is_stmt 1               @ batchtest/matrix1/matrix1.c:111:7
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r2, .LCPI2_0
	ldr	r2, [r2, r0, lsl #2]
	.loc	1 110 77                        @ batchtest/matrix1/matrix1.c:110:77
	add	r1, r1, r2
	.loc	1 110 64 is_stmt 0              @ batchtest/matrix1/matrix1.c:110:64
	add	r0, r0, #1
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	1 110 40                        @ batchtest/matrix1/matrix1.c:110:40
	b	.LBB2_1
.LBB2_4:                                @ %for.end
	.loc	1 113 11 is_stmt 1              @ batchtest/matrix1/matrix1.c:113:11
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	subs	r0, r0, #1000
	mvnne	r0, #0
	.loc	1 113 3 is_stmt 0               @ batchtest/matrix1/matrix1.c:113:3
	add	sp, sp, #16
	bx	lr
.Ltmp5:
	.p2align	2
@ %bb.5:
	.loc	1 0 3                           @ batchtest/matrix1/matrix1.c:0:3
.LCPI2_0:
	.long	matrix1_C
.Lfunc_end2:
	.size	matrix1_return, .Lfunc_end2-matrix1_return
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	matrix1_main                    @ -- Begin function matrix1_main
	.p2align	2
	.type	matrix1_main,%function
	.code	32                              @ @matrix1_main
matrix1_main:
.Lfunc_begin3:
	.loc	1 120 0 is_stmt 1               @ batchtest/matrix1/matrix1.c:120:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	ldr	r0, .LCPI3_0
	mov	r1, #0
	str	r1, [sp, #56]                   @ 4-byte Spill
	str	r0, [sp, #60]                   @ 4-byte Spill
.Ltmp6:
	.loc	1 127 43 prologue_end           @ batchtest/matrix1/matrix1.c:127:43
	b	.LBB3_1
.LBB3_1:                                @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB3_3 Depth 2
                                        @       Child Loop BB3_5 Depth 3
	.loc	1 123 17                        @ batchtest/matrix1/matrix1.c:123:17
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #60]                   @ 4-byte Reload
	str	r1, [sp, #48]                   @ 4-byte Spill
	str	r0, [sp, #52]                   @ 4-byte Spill
	.loc	1 127 38                        @ batchtest/matrix1/matrix1.c:127:38
	cmp	r0, #1
	beq	.LBB3_12
	b	.LBB3_2
.LBB3_2:                                @ %for.body
                                        @   in Loop: Header=BB3_1 Depth=1
	.loc	1 0 38 is_stmt 0                @ batchtest/matrix1/matrix1.c:0:38
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	ldr	r0, .LCPI3_1
	mov	r2, #0
	str	r2, [sp, #36]                   @ 4-byte Spill
	str	r1, [sp, #40]                   @ 4-byte Spill
	str	r0, [sp, #44]                   @ 4-byte Spill
	.loc	1 130 45 is_stmt 1              @ batchtest/matrix1/matrix1.c:130:45
	b	.LBB3_3
.LBB3_3:                                @ %for.cond1
                                        @   Parent Loop BB3_1 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB3_5 Depth 3
	.loc	1 128 9                         @ batchtest/matrix1/matrix1.c:128:9
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	ldr	r2, [sp, #44]                   @ 4-byte Reload
	str	r2, [sp, #24]                   @ 4-byte Spill
	str	r1, [sp, #28]                   @ 4-byte Spill
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	1 130 40                        @ batchtest/matrix1/matrix1.c:130:40
	cmp	r0, #1
	beq	.LBB3_10
	b	.LBB3_4
.LBB3_4:                                @ %for.body3
                                        @   in Loop: Header=BB3_3 Depth=2
	.loc	1 131 14                        @ batchtest/matrix1/matrix1.c:131:14
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r3, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp, #52]                   @ 4-byte Reload
	ldr	r1, .LCPI3_2
	add	r1, r1, r2, lsl #2
	mov	r2, #0
	.loc	1 133 12                        @ batchtest/matrix1/matrix1.c:133:12
	str	r2, [r3]
	str	r2, [sp, #12]                   @ 4-byte Spill
	str	r1, [sp, #16]                   @ 4-byte Spill
	str	r0, [sp, #20]                   @ 4-byte Spill
	.loc	1 134 47                        @ batchtest/matrix1/matrix1.c:134:47
	b	.LBB3_5
.LBB3_5:                                @ %for.cond4
                                        @   Parent Loop BB3_1 Depth=1
                                        @     Parent Loop BB3_3 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	.loc	1 0 0 is_stmt 0                 @ batchtest/matrix1/matrix1.c:0:0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	str	r2, [sp]                        @ 4-byte Spill
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 134 42                        @ batchtest/matrix1/matrix1.c:134:42
	cmp	r0, #1
	beq	.LBB3_8
	b	.LBB3_6
.LBB3_6:                                @ %for.body6
                                        @   in Loop: Header=BB3_5 Depth=3
	.loc	1 136 19 is_stmt 1              @ batchtest/matrix1/matrix1.c:136:19
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r2, [r2]
	.loc	1 136 28 is_stmt 0              @ batchtest/matrix1/matrix1.c:136:28
	ldr	r3, [r0]
	.loc	1 136 16                        @ batchtest/matrix1/matrix1.c:136:16
	ldr	r12, [r1]
	mla	r0, r2, r3, r12
	str	r0, [r1]
	.loc	1 136 11                        @ batchtest/matrix1/matrix1.c:136:11
	b	.LBB3_7
.LBB3_7:                                @ %for.inc
                                        @   in Loop: Header=BB3_5 Depth=3
	.loc	1 136 32                        @ batchtest/matrix1/matrix1.c:136:32
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	add	r1, r1, #4
	.loc	1 136 23                        @ batchtest/matrix1/matrix1.c:136:23
	add	r0, r0, #4
	.loc	1 135 48 is_stmt 1              @ batchtest/matrix1/matrix1.c:135:48
	add	r2, r2, #1
	str	r2, [sp, #12]                   @ 4-byte Spill
	str	r1, [sp, #16]                   @ 4-byte Spill
	str	r0, [sp, #20]                   @ 4-byte Spill
	.loc	1 134 42                        @ batchtest/matrix1/matrix1.c:134:42
	b	.LBB3_5
.LBB3_8:                                @ %for.end
                                        @   in Loop: Header=BB3_3 Depth=2
	.loc	1 139 5                         @ batchtest/matrix1/matrix1.c:139:5
	b	.LBB3_9
.LBB3_9:                                @ %for.inc10
                                        @   in Loop: Header=BB3_3 Depth=2
	.loc	1 138 10                        @ batchtest/matrix1/matrix1.c:138:10
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	add	r1, r1, #4
	.loc	1 130 60                        @ batchtest/matrix1/matrix1.c:130:60
	add	r2, r2, #1
	str	r2, [sp, #36]                   @ 4-byte Spill
	str	r1, [sp, #40]                   @ 4-byte Spill
	str	r0, [sp, #44]                   @ 4-byte Spill
	.loc	1 130 40 is_stmt 0              @ batchtest/matrix1/matrix1.c:130:40
	b	.LBB3_3
.LBB3_10:                               @ %for.end12
                                        @   in Loop: Header=BB3_1 Depth=1
	.loc	1 140 3 is_stmt 1               @ batchtest/matrix1/matrix1.c:140:3
	b	.LBB3_11
.LBB3_11:                               @ %for.inc13
                                        @   in Loop: Header=BB3_1 Depth=1
	.loc	1 127 58                        @ batchtest/matrix1/matrix1.c:127:58
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	add	r1, r1, #1
	str	r1, [sp, #56]                   @ 4-byte Spill
	str	r0, [sp, #60]                   @ 4-byte Spill
	.loc	1 127 38 is_stmt 0              @ batchtest/matrix1/matrix1.c:127:38
	b	.LBB3_1
.LBB3_12:                               @ %for.end15
	.loc	1 141 1 is_stmt 1               @ batchtest/matrix1/matrix1.c:141:1
	add	sp, sp, #64
	bx	lr
.Ltmp7:
	.p2align	2
@ %bb.13:
	.loc	1 0 1 is_stmt 0                 @ batchtest/matrix1/matrix1.c:0:1
.LCPI3_0:
	.long	matrix1_C
.LCPI3_1:
	.long	matrix1_A
.LCPI3_2:
	.long	matrix1_B
.Lfunc_end3:
	.size	matrix1_main, .Lfunc_end3-matrix1_main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	main                            @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                              @ @main
main:
.Lfunc_begin4:
	.loc	1 143 0 is_stmt 1               @ batchtest/matrix1/matrix1.c:143:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp8:
	.loc	1 144 3 prologue_end            @ batchtest/matrix1/matrix1.c:144:3
	bl	matrix1_init
	.loc	1 145 3                         @ batchtest/matrix1/matrix1.c:145:3
	bl	matrix1_main
	.loc	1 147 10                        @ batchtest/matrix1/matrix1.c:147:10
	bl	matrix1_return
	.loc	1 147 3 is_stmt 0               @ batchtest/matrix1/matrix1.c:147:3
	pop	{r11, lr}
	bx	lr
.Ltmp9:
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__absvdi2                       @ -- Begin function __absvdi2
	.p2align	2
	.type	__absvdi2,%function
	.code	32                              @ @__absvdi2
__absvdi2:
.Lfunc_begin5:
	.file	2 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../absvdi2.c" md5 0xf0fa545ed84eab29322431dd903e1bd2
	.loc	2 23 0 is_stmt 1                @ ../absvdi2.c:23:0
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
.Ltmp10:
	.loc	2 25 11 prologue_end            @ ../absvdi2.c:25:11
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	2 25 9 is_stmt 0                @ ../absvdi2.c:25:9
	cmp	r0, #0
	bne	.LBB5_2
	b	.LBB5_1
.LBB5_1:                                @ %if.then
	.loc	2 26 9 is_stmt 1                @ ../absvdi2.c:26:9
	ldr	r0, .LCPI5_0
	ldr	r2, .LCPI5_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.LBB5_2:                                @ %if.end
	.loc	2 28 20                         @ ../absvdi2.c:28:20
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adds	r0, r0, r2, asr #31
	eor	r0, r0, r2, asr #31
	adc	r1, r2, r2, asr #31
	eor	r1, r1, r2, asr #31
	.loc	2 28 5 is_stmt 0                @ ../absvdi2.c:28:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp11:
	.p2align	2
@ %bb.3:
	.loc	2 0 5                           @ ../absvdi2.c:0:5
.LCPI5_0:
	.long	.L.str
.LCPI5_1:
	.long	.L__func__.__absvdi2
.Lfunc_end5:
	.size	__absvdi2, .Lfunc_end5-__absvdi2
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
.Lfunc_begin6:
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
.Lfunc_end6:
	.size	compilerrt_abort_impl, .Lfunc_end6-compilerrt_abort_impl
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__absvsi2                       @ -- Begin function __absvsi2
	.p2align	2
	.type	__absvsi2,%function
	.code	32                              @ @__absvsi2
__absvsi2:
.Lfunc_begin7:
	.file	3 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../absvsi2.c" md5 0x4c623fefc2c7ed3929c6e73514b667d1
	.loc	3 23 0 is_stmt 1                @ ../absvsi2.c:23:0
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
.Ltmp12:
	.loc	3 25 9 prologue_end             @ ../absvsi2.c:25:9
	cmp	r0, #-2147483648
	bne	.LBB7_2
	b	.LBB7_1
.LBB7_1:                                @ %if.then
	.loc	3 26 9                          @ ../absvsi2.c:26:9
	ldr	r0, .LCPI7_0
	ldr	r2, .LCPI7_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.LBB7_2:                                @ %if.end
	.loc	3 28 20                         @ ../absvsi2.c:28:20
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	bpl	.LBB7_4
@ %bb.3:                                @ %if.end
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	rsb	r0, r0, #0
	str	r0, [sp]                        @ 4-byte Spill
.LBB7_4:                                @ %if.end
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	3 28 5 is_stmt 0                @ ../absvsi2.c:28:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp13:
	.p2align	2
@ %bb.5:
	.loc	3 0 5                           @ ../absvsi2.c:0:5
.LCPI7_0:
	.long	.L.str.1
.LCPI7_1:
	.long	.L__func__.__absvsi2
.Lfunc_end7:
	.size	__absvsi2, .Lfunc_end7-__absvsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__addvdi3                       @ -- Begin function __addvdi3
	.p2align	2
	.type	__addvdi3,%function
	.code	32                              @ @__addvdi3
__addvdi3:
.Lfunc_begin8:
	.file	4 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../addvdi3.c" md5 0xaa240ee8ce7c28b2c3bcec10a7603d3f
	.loc	4 23 0 is_stmt 1                @ ../addvdi3.c:23:0
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
.Ltmp14:
	.loc	4 24 27 prologue_end            @ ../addvdi3.c:24:27
	adds	r0, r0, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	adc	r0, r1, r3
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	4 25 9                          @ ../addvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB8_4
	b	.LBB8_1
.LBB8_1:                                @ %if.then
	.loc	4 27 15                         @ ../addvdi3.c:27:15
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	4 27 13 is_stmt 0               @ ../addvdi3.c:27:13
	bge	.LBB8_3
	b	.LBB8_2
.LBB8_2:                                @ %if.then2
	.loc	4 28 13 is_stmt 1               @ ../addvdi3.c:28:13
	ldr	r0, .LCPI8_0
	ldr	r2, .LCPI8_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB8_3:                                @ %if.end
	.loc	4 29 5                          @ ../addvdi3.c:29:5
	b	.LBB8_7
.LBB8_4:                                @ %if.else
	.loc	4 32 15                         @ ../addvdi3.c:32:15
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	4 32 13 is_stmt 0               @ ../addvdi3.c:32:13
	blt	.LBB8_6
	b	.LBB8_5
.LBB8_5:                                @ %if.then4
	.loc	4 33 13 is_stmt 1               @ ../addvdi3.c:33:13
	ldr	r0, .LCPI8_0
	ldr	r2, .LCPI8_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB8_6:                                @ %if.end5
	.loc	4 0 13 is_stmt 0                @ ../addvdi3.c:0:13
	b	.LBB8_7
.LBB8_7:                                @ %if.end6
	.loc	4 35 5 is_stmt 1                @ ../addvdi3.c:35:5
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp15:
	.p2align	2
@ %bb.8:
	.loc	4 0 5 is_stmt 0                 @ ../addvdi3.c:0:5
.LCPI8_0:
	.long	.L.str.2
.LCPI8_1:
	.long	.L__func__.__addvdi3
.Lfunc_end8:
	.size	__addvdi3, .Lfunc_end8-__addvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__addvsi3                       @ -- Begin function __addvsi3
	.p2align	2
	.type	__addvsi3,%function
	.code	32                              @ @__addvsi3
__addvsi3:
.Lfunc_begin9:
	.file	5 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../addvsi3.c" md5 0x6cd4d40cc00928f1aaf6f29e299078cd
	.loc	5 23 0 is_stmt 1                @ ../addvsi3.c:23:0
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
.Ltmp16:
	.loc	5 24 27 prologue_end            @ ../addvsi3.c:24:27
	add	r0, r0, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	5 25 9                          @ ../addvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB9_4
	b	.LBB9_1
.LBB9_1:                                @ %if.then
	.loc	5 27 13                         @ ../addvsi3.c:27:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	bge	.LBB9_3
	b	.LBB9_2
.LBB9_2:                                @ %if.then2
	.loc	5 28 13                         @ ../addvsi3.c:28:13
	ldr	r0, .LCPI9_0
	ldr	r2, .LCPI9_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB9_3:                                @ %if.end
	.loc	5 29 5                          @ ../addvsi3.c:29:5
	b	.LBB9_7
.LBB9_4:                                @ %if.else
	.loc	5 32 13                         @ ../addvsi3.c:32:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	blt	.LBB9_6
	b	.LBB9_5
.LBB9_5:                                @ %if.then4
	.loc	5 33 13                         @ ../addvsi3.c:33:13
	ldr	r0, .LCPI9_0
	ldr	r2, .LCPI9_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB9_6:                                @ %if.end5
	.loc	5 0 13 is_stmt 0                @ ../addvsi3.c:0:13
	b	.LBB9_7
.LBB9_7:                                @ %if.end6
	.loc	5 35 5 is_stmt 1                @ ../addvsi3.c:35:5
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp17:
	.p2align	2
@ %bb.8:
	.loc	5 0 5 is_stmt 0                 @ ../addvsi3.c:0:5
.LCPI9_0:
	.long	.L.str.3
.LCPI9_1:
	.long	.L__func__.__addvsi3
.Lfunc_end9:
	.size	__addvsi3, .Lfunc_end9-__addvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ashldi3                       @ -- Begin function __ashldi3
	.p2align	2
	.type	__ashldi3,%function
	.code	32                              @ @__ashldi3
__ashldi3:
.Lfunc_begin10:
	.file	6 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ashldi3.c" md5 0xae5236ddcefaf3e5efc4feba69d334b1
	.loc	6 25 0 is_stmt 1                @ ../ashldi3.c:25:0
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
.Ltmp18:
	.loc	6 29 15 prologue_end            @ ../ashldi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	6 30 9                          @ ../ashldi3.c:30:9
	tst	r2, #32
	beq	.LBB10_2
	b	.LBB10_1
.LBB10_1:                               @ %if.then
	.loc	6 0 9 is_stmt 0                 @ ../ashldi3.c:0:9
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mov	r0, #0
	.loc	6 32 22 is_stmt 1               @ ../ashldi3.c:32:22
	str	r0, [sp, #24]
	.loc	6 33 33                         @ ../ashldi3.c:33:33
	ldr	r0, [sp, #32]
	.loc	6 33 43 is_stmt 0               @ ../ashldi3.c:33:43
	sub	r1, r1, #32
	.loc	6 33 37                         @ ../ashldi3.c:33:37
	lsl	r0, r0, r1
	.loc	6 33 23                         @ ../ashldi3.c:33:23
	str	r0, [sp, #28]
	.loc	6 34 5 is_stmt 1                @ ../ashldi3.c:34:5
	b	.LBB10_5
.LBB10_2:                               @ %if.else
	.loc	6 37 13                         @ ../ashldi3.c:37:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB10_4
	b	.LBB10_3
.LBB10_3:                               @ %if.then4
	.loc	6 0 13 is_stmt 0                @ ../ashldi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	6 38 13 is_stmt 1               @ ../ashldi3.c:38:13
	b	.LBB10_6
.LBB10_4:                               @ %if.end
	.loc	6 39 33                         @ ../ashldi3.c:39:33
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #32]
	.loc	6 39 37 is_stmt 0               @ ../ashldi3.c:39:37
	lsl	r0, r0, r2
	.loc	6 39 23                         @ ../ashldi3.c:39:23
	str	r0, [sp, #24]
	.loc	6 40 56 is_stmt 1               @ ../ashldi3.c:40:56
	ldr	r1, [sp, #32]
	.loc	6 40 34 is_stmt 0               @ ../ashldi3.c:40:34
	ldr	r0, [sp, #36]
	.loc	6 40 39                         @ ../ashldi3.c:40:39
	lsl	r0, r0, r2
	.loc	6 40 77                         @ ../ashldi3.c:40:77
	rsb	r2, r2, #32
	.loc	6 40 45                         @ ../ashldi3.c:40:45
	orr	r0, r0, r1, lsr r2
	.loc	6 40 23                         @ ../ashldi3.c:40:23
	str	r0, [sp, #28]
	b	.LBB10_5
.LBB10_5:                               @ %if.end18
	.loc	6 42 19 is_stmt 1               @ ../ashldi3.c:42:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	6 42 5 is_stmt 0                @ ../ashldi3.c:42:5
	b	.LBB10_6
.LBB10_6:                               @ %return
	.loc	6 0 0                           @ ../ashldi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	6 43 1 is_stmt 1                @ ../ashldi3.c:43:1
	add	sp, sp, #40
	bx	lr
.Ltmp19:
.Lfunc_end10:
	.size	__ashldi3, .Lfunc_end10-__ashldi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ashrdi3                       @ -- Begin function __ashrdi3
	.p2align	2
	.type	__ashrdi3,%function
	.code	32                              @ @__ashrdi3
__ashrdi3:
.Lfunc_begin11:
	.file	7 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ashrdi3.c" md5 0xdf60b7a82095e7d7b5c11e1095a5679a
	.loc	7 25 0                          @ ../ashrdi3.c:25:0
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
.Ltmp20:
	.loc	7 29 15 prologue_end            @ ../ashrdi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	7 30 9                          @ ../ashrdi3.c:30:9
	tst	r2, #32
	beq	.LBB11_2
	b	.LBB11_1
.LBB11_1:                               @ %if.then
	.loc	7 33 33                         @ ../ashrdi3.c:33:33
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #36]
	.loc	7 33 38 is_stmt 0               @ ../ashrdi3.c:33:38
	asr	r0, r0, #31
	.loc	7 33 23                         @ ../ashrdi3.c:33:23
	str	r0, [sp, #28]
	.loc	7 34 32 is_stmt 1               @ ../ashrdi3.c:34:32
	ldr	r0, [sp, #36]
	.loc	7 34 43 is_stmt 0               @ ../ashrdi3.c:34:43
	sub	r1, r1, #32
	.loc	7 34 37                         @ ../ashrdi3.c:34:37
	asr	r0, r0, r1
	.loc	7 34 22                         @ ../ashrdi3.c:34:22
	str	r0, [sp, #24]
	.loc	7 35 5 is_stmt 1                @ ../ashrdi3.c:35:5
	b	.LBB11_5
.LBB11_2:                               @ %if.else
	.loc	7 38 13                         @ ../ashrdi3.c:38:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB11_4
	b	.LBB11_3
.LBB11_3:                               @ %if.then7
	.loc	7 0 13 is_stmt 0                @ ../ashrdi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	7 39 13 is_stmt 1               @ ../ashrdi3.c:39:13
	b	.LBB11_6
.LBB11_4:                               @ %if.end
	.loc	7 40 34                         @ ../ashrdi3.c:40:34
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #36]
	.loc	7 40 39 is_stmt 0               @ ../ashrdi3.c:40:39
	asr	r0, r0, r2
	.loc	7 40 24                         @ ../ashrdi3.c:40:24
	str	r0, [sp, #28]
	.loc	7 41 72 is_stmt 1               @ ../ashrdi3.c:41:72
	ldr	r1, [sp, #32]
	.loc	7 41 33 is_stmt 0               @ ../ashrdi3.c:41:33
	ldr	r0, [sp, #36]
	.loc	7 41 55                         @ ../ashrdi3.c:41:55
	rsb	r3, r2, #32
	.loc	7 41 38                         @ ../ashrdi3.c:41:38
	lsl	r0, r0, r3
	.loc	7 41 61                         @ ../ashrdi3.c:41:61
	orr	r0, r0, r1, lsr r2
	.loc	7 41 22                         @ ../ashrdi3.c:41:22
	str	r0, [sp, #24]
	b	.LBB11_5
.LBB11_5:                               @ %if.end21
	.loc	7 43 19 is_stmt 1               @ ../ashrdi3.c:43:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	7 43 5 is_stmt 0                @ ../ashrdi3.c:43:5
	b	.LBB11_6
.LBB11_6:                               @ %return
	.loc	7 0 0                           @ ../ashrdi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	7 44 1 is_stmt 1                @ ../ashrdi3.c:44:1
	add	sp, sp, #40
	bx	lr
.Ltmp21:
.Lfunc_end11:
	.size	__ashrdi3, .Lfunc_end11-__ashrdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__clzdi2                        @ -- Begin function __clzdi2
	.p2align	2
	.type	__clzdi2,%function
	.code	32                              @ @__clzdi2
__clzdi2:
.Lfunc_begin12:
	.file	8 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../clzdi2.c" md5 0x901c40e0319a50689080965b20695c3e
	.loc	8 23 0                          @ ../clzdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp22:
	.loc	8 25 11 prologue_end            @ ../clzdi2.c:25:11
	str	r1, [sp, #4]
	str	r0, [sp]
	.loc	8 27 49                         @ ../clzdi2.c:27:49
	ldr	r1, [sp]
	.loc	8 26 28                         @ ../clzdi2.c:26:28
	ldr	r2, [sp, #4]
	.loc	8 27 42                         @ ../clzdi2.c:27:42
	cmp	r2, #0
	mov	r0, r2
	moveq	r0, r1
	.loc	8 27 12 is_stmt 0               @ ../clzdi2.c:27:12
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r1, .LCPI12_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r3, .LCPI12_1
	and	r1, r3, r0, lsr #2
	and	r0, r0, r3
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI12_2
	and	r0, r0, r1
	ldr	r1, .LCPI12_3
	mul	r3, r0, r1
	lsr	r0, r3, #24
	mov	r1, #32
	.loc	8 27 59                         @ ../clzdi2.c:27:59
	add	r1, r1, r3, lsr #24
	cmp	r2, #0
	moveq	r0, r1
	.loc	8 27 5                          @ ../clzdi2.c:27:5
	add	sp, sp, #8
	bx	lr
.Ltmp23:
	.p2align	2
@ %bb.1:
	.loc	8 0 5                           @ ../clzdi2.c:0:5
.LCPI12_0:
	.long	1431655765                      @ 0x55555555
.LCPI12_1:
	.long	858993459                       @ 0x33333333
.LCPI12_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI12_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end12:
	.size	__clzdi2, .Lfunc_end12-__clzdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__clzsi2                        @ -- Begin function __clzsi2
	.p2align	2
	.type	__clzsi2,%function
	.code	32                              @ @__clzsi2
__clzsi2:
.Lfunc_begin13:
	.file	9 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../clzsi2.c" md5 0x9b0156c55102d3143e17bdf85bafbc30
	.loc	9 23 0 is_stmt 1                @ ../clzsi2.c:23:0
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
.Ltmp24:
	.loc	9 25 40 prologue_end            @ ../clzsi2.c:25:40
	lsl	r0, r2, #4
	mov	r1, #16
	.loc	9 26 14                         @ ../clzsi2.c:26:14
	sub	r12, r1, r2, lsl #4
	.loc	9 26 7 is_stmt 0                @ ../clzsi2.c:26:7
	lsr	r2, r3, r12
	mov	r1, #65280
	.loc	9 29 13 is_stmt 1               @ ../clzsi2.c:29:13
	and	r1, r1, r3, lsr r12
	rsbs	r3, r1, #0
	adc	r1, r1, r3
	mov	r3, #8
	.loc	9 30 13                         @ ../clzsi2.c:30:13
	sub	r12, r3, r1, lsl #3
	.loc	9 30 7 is_stmt 0                @ ../clzsi2.c:30:7
	lsr	r3, r2, r12
	.loc	9 31 7 is_stmt 1                @ ../clzsi2.c:31:7
	orr	r0, r0, r1, lsl #3
	mov	r1, #240
	.loc	9 33 13                         @ ../clzsi2.c:33:13
	and	r1, r1, r2, lsr r12
	rsbs	r2, r1, #0
	adc	r1, r1, r2
	mov	r2, #4
	.loc	9 34 13                         @ ../clzsi2.c:34:13
	sub	r12, r2, r1, lsl #2
	.loc	9 34 7 is_stmt 0                @ ../clzsi2.c:34:7
	lsr	r2, r3, r12
	.loc	9 35 7 is_stmt 1                @ ../clzsi2.c:35:7
	orr	r0, r0, r1, lsl #2
	mov	r1, #12
	.loc	9 37 13                         @ ../clzsi2.c:37:13
	and	r1, r1, r3, lsr r12
	rsbs	r3, r1, #0
	adc	lr, r1, r3
	mov	r1, #2
	.loc	9 38 13                         @ ../clzsi2.c:38:13
	sub	r12, r1, lr, lsl #1
	.loc	9 38 7 is_stmt 0                @ ../clzsi2.c:38:7
	lsr	r3, r2, r12
	.loc	9 39 7 is_stmt 1                @ ../clzsi2.c:39:7
	orr	r0, r0, lr, lsl #1
	.loc	9 52 20                         @ ../clzsi2.c:52:20
	sub	r1, r1, r2, lsr r12
	mvn	r2, #1
	.loc	9 52 37 is_stmt 0               @ ../clzsi2.c:52:37
	orr	r2, r2, r3, lsr #1
	add	r2, r2, #1
	.loc	9 52 25                         @ ../clzsi2.c:52:25
	and	r1, r1, r2
	.loc	9 52 14                         @ ../clzsi2.c:52:14
	add	r0, r0, r1
	.loc	9 52 5                          @ ../clzsi2.c:52:5
	pop	{r11, lr}
	bx	lr
.Ltmp25:
.Lfunc_end13:
	.size	__clzsi2, .Lfunc_end13-__clzsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__cmpdi2                        @ -- Begin function __cmpdi2
	.p2align	2
	.type	__cmpdi2,%function
	.code	32                              @ @__cmpdi2
__cmpdi2:
.Lfunc_begin14:
	.file	10 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../cmpdi2.c" md5 0x79ec8a4b383c8374d228cd0869637319
	.loc	10 24 0 is_stmt 1               @ ../cmpdi2.c:24:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp26:
	.loc	10 26 11 prologue_end           @ ../cmpdi2.c:26:11
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	.loc	10 28 11                        @ ../cmpdi2.c:28:11
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	.loc	10 29 13                        @ ../cmpdi2.c:29:13
	ldr	r0, [sp, #20]
	.loc	10 29 24 is_stmt 0              @ ../cmpdi2.c:29:24
	ldr	r1, [sp, #12]
	.loc	10 29 9                         @ ../cmpdi2.c:29:9
	cmp	r0, r1
	bge	.LBB14_2
	b	.LBB14_1
.LBB14_1:                               @ %if.then
	.loc	10 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	10 30 9 is_stmt 1               @ ../cmpdi2.c:30:9
	b	.LBB14_9
.LBB14_2:                               @ %if.end
	.loc	10 31 13                        @ ../cmpdi2.c:31:13
	ldr	r0, [sp, #20]
	.loc	10 31 24 is_stmt 0              @ ../cmpdi2.c:31:24
	ldr	r1, [sp, #12]
	.loc	10 31 9                         @ ../cmpdi2.c:31:9
	cmp	r0, r1
	ble	.LBB14_4
	b	.LBB14_3
.LBB14_3:                               @ %if.then9
	.loc	10 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	10 32 9 is_stmt 1               @ ../cmpdi2.c:32:9
	b	.LBB14_9
.LBB14_4:                               @ %if.end10
	.loc	10 33 13                        @ ../cmpdi2.c:33:13
	ldr	r0, [sp, #16]
	.loc	10 33 23 is_stmt 0              @ ../cmpdi2.c:33:23
	ldr	r1, [sp, #8]
	.loc	10 33 9                         @ ../cmpdi2.c:33:9
	cmp	r0, r1
	bhs	.LBB14_6
	b	.LBB14_5
.LBB14_5:                               @ %if.then15
	.loc	10 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	10 34 9 is_stmt 1               @ ../cmpdi2.c:34:9
	b	.LBB14_9
.LBB14_6:                               @ %if.end16
	.loc	10 35 13                        @ ../cmpdi2.c:35:13
	ldr	r0, [sp, #16]
	.loc	10 35 23 is_stmt 0              @ ../cmpdi2.c:35:23
	ldr	r1, [sp, #8]
	.loc	10 35 9                         @ ../cmpdi2.c:35:9
	cmp	r0, r1
	bls	.LBB14_8
	b	.LBB14_7
.LBB14_7:                               @ %if.then22
	.loc	10 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	10 36 9 is_stmt 1               @ ../cmpdi2.c:36:9
	b	.LBB14_9
.LBB14_8:                               @ %if.end23
	.loc	10 0 9 is_stmt 0                @ ../cmpdi2.c:0:9
	mov	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	10 37 5 is_stmt 1               @ ../cmpdi2.c:37:5
	b	.LBB14_9
.LBB14_9:                               @ %return
	.loc	10 0 0 is_stmt 0                @ ../cmpdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	10 38 1 is_stmt 1               @ ../cmpdi2.c:38:1
	add	sp, sp, #24
	bx	lr
.Ltmp27:
.Lfunc_end14:
	.size	__cmpdi2, .Lfunc_end14-__cmpdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__aeabi_lcmp                    @ -- Begin function __aeabi_lcmp
	.p2align	2
	.type	__aeabi_lcmp,%function
	.code	32                              @ @__aeabi_lcmp
__aeabi_lcmp:
.Lfunc_begin15:
	.loc	10 47 0                         @ ../cmpdi2.c:47:0
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
.Ltmp28:
	.loc	10 48 9 prologue_end            @ ../cmpdi2.c:48:9
	bl	__cmpdi2
	.loc	10 48 24 is_stmt 0              @ ../cmpdi2.c:48:24
	sub	r0, r0, #1
	.loc	10 48 2                         @ ../cmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp29:
.Lfunc_end15:
	.size	__aeabi_lcmp, .Lfunc_end15-__aeabi_lcmp
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ctzdi2                        @ -- Begin function __ctzdi2
	.p2align	2
	.type	__ctzdi2,%function
	.code	32                              @ @__ctzdi2
__ctzdi2:
.Lfunc_begin16:
	.file	11 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ctzdi2.c" md5 0x0415a3f61808ca646548bc24b48a844a
	.loc	11 23 0 is_stmt 1               @ ../ctzdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp30:
	.loc	11 25 11 prologue_end           @ ../ctzdi2.c:25:11
	str	r1, [sp, #4]
	str	r0, [sp]
	.loc	11 26 28                        @ ../ctzdi2.c:26:28
	ldr	r2, [sp]
	.loc	11 27 31                        @ ../ctzdi2.c:27:31
	ldr	r0, [sp, #4]
	.loc	11 27 41 is_stmt 0              @ ../ctzdi2.c:27:41
	cmp	r2, #0
	mov	r1, r2
	moveq	r1, r0
	.loc	11 27 12                        @ ../ctzdi2.c:27:12
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI16_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r3, .LCPI16_1
	and	r1, r3, r0, lsr #2
	and	r0, r0, r3
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI16_2
	and	r0, r0, r1
	ldr	r1, .LCPI16_3
	mul	r3, r0, r1
	lsr	r0, r3, #24
	mov	r1, #32
	.loc	11 27 59                        @ ../ctzdi2.c:27:59
	add	r1, r1, r3, lsr #24
	cmp	r2, #0
	moveq	r0, r1
	.loc	11 27 5                         @ ../ctzdi2.c:27:5
	add	sp, sp, #8
	bx	lr
.Ltmp31:
	.p2align	2
@ %bb.1:
	.loc	11 0 5                          @ ../ctzdi2.c:0:5
.LCPI16_0:
	.long	1431655765                      @ 0x55555555
.LCPI16_1:
	.long	858993459                       @ 0x33333333
.LCPI16_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI16_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end16:
	.size	__ctzdi2, .Lfunc_end16-__ctzdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ctzsi2                        @ -- Begin function __ctzsi2
	.p2align	2
	.type	__ctzsi2,%function
	.code	32                              @ @__ctzsi2
__ctzsi2:
.Lfunc_begin17:
	.file	12 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ctzsi2.c" md5 0x0372a2c6647eddaa73c0b61d8d03c3b1
	.loc	12 23 0 is_stmt 1               @ ../ctzsi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r2, r0
	mov	r0, #255
	orr	r0, r0, #65280
.Ltmp32:
	.loc	12 25 20 prologue_end           @ ../ctzsi2.c:25:20
	and	r0, r2, r0
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	.loc	12 25 40 is_stmt 0              @ ../ctzsi2.c:25:40
	lsl	r0, r0, #4
	.loc	12 26 7 is_stmt 1               @ ../ctzsi2.c:26:7
	lsr	r3, r2, r0
	mov	r1, #255
	.loc	12 29 13                        @ ../ctzsi2.c:29:13
	and	r1, r1, r2, lsr r0
	rsbs	r2, r1, #0
	adc	r1, r1, r2
	.loc	12 29 29 is_stmt 0              @ ../ctzsi2.c:29:29
	lsl	r12, r1, #3
	.loc	12 30 7 is_stmt 1               @ ../ctzsi2.c:30:7
	lsr	r2, r3, r12
	.loc	12 31 7                         @ ../ctzsi2.c:31:7
	orr	r0, r0, r1, lsl #3
	mov	r1, #15
	.loc	12 33 13                        @ ../ctzsi2.c:33:13
	and	r1, r1, r3, lsr r12
	rsbs	r3, r1, #0
	adc	r1, r1, r3
	.loc	12 33 27 is_stmt 0              @ ../ctzsi2.c:33:27
	lsl	r12, r1, #2
	.loc	12 34 7 is_stmt 1               @ ../ctzsi2.c:34:7
	lsr	r3, r2, r12
	.loc	12 35 7                         @ ../ctzsi2.c:35:7
	orr	r0, r0, r1, lsl #2
	mov	r1, #3
	.loc	12 37 13                        @ ../ctzsi2.c:37:13
	and	r1, r1, r2, lsr r12
	rsbs	r2, r1, #0
	adc	r1, r1, r2
	.loc	12 37 26 is_stmt 0              @ ../ctzsi2.c:37:26
	lsl	r12, r1, #1
	.loc	12 38 7 is_stmt 1               @ ../ctzsi2.c:38:7
	lsr	r2, r3, r12
	.loc	12 40 7                         @ ../ctzsi2.c:40:7
	orr	r0, r0, r1, lsl #1
	mov	r1, #1
	.loc	12 56 25                        @ ../ctzsi2.c:56:25
	and	r1, r1, r2, lsr #1
	.loc	12 56 20 is_stmt 0              @ ../ctzsi2.c:56:20
	rsb	r1, r1, #2
	mvn	r2, #1
	.loc	12 56 44                        @ ../ctzsi2.c:56:44
	orr	r2, r2, r3, lsr r12
	add	r2, r2, #1
	.loc	12 56 32                        @ ../ctzsi2.c:56:32
	and	r1, r1, r2
	.loc	12 56 14                        @ ../ctzsi2.c:56:14
	add	r0, r0, r1
	.loc	12 56 5                         @ ../ctzsi2.c:56:5
	bx	lr
.Ltmp33:
.Lfunc_end17:
	.size	__ctzsi2, .Lfunc_end17-__ctzsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divdi3                        @ -- Begin function __divdi3
	.p2align	2
	.type	__divdi3,%function
	.code	32                              @ @__divdi3
__divdi3:
.Lfunc_begin18:
	.file	13 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divdi3.c" md5 0x281227589e0794a81d7211e4ee4a402c
	.loc	13 21 0 is_stmt 1               @ ../divdi3.c:21:0
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
.Ltmp34:
	.loc	13 23 20 prologue_end           @ ../divdi3.c:23:20
	asr	r12, r3, #31
	.loc	13 25 12                        @ ../divdi3.c:25:12
	eor	r0, r0, r3, asr #31
	eor	r1, r3, r3, asr #31
	.loc	13 25 19 is_stmt 0              @ ../divdi3.c:25:19
	subs	r0, r0, r3, asr #31
	sbc	r1, r1, r3, asr #31
	.loc	13 26 12 is_stmt 1              @ ../divdi3.c:26:12
	eor	r2, r2, lr, asr #31
	eor	r3, lr, lr, asr #31
	.loc	13 26 19 is_stmt 0              @ ../divdi3.c:26:19
	subs	r2, r2, lr, asr #31
	sbc	r3, r3, lr, asr #31
	.loc	13 27 9 is_stmt 1               @ ../divdi3.c:27:9
	eor	r12, r12, lr, asr #31
	str	r12, [sp, #4]                   @ 4-byte Spill
	.loc	13 28 13                        @ ../divdi3.c:28:13
	mov	lr, sp
	mov	r12, #0
	str	r12, [lr]
	bl	__udivmoddi4
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	.loc	13 28 44 is_stmt 0              @ ../divdi3.c:28:44
	eor	r1, r1, r2
	eor	r0, r0, r2
	.loc	13 28 51                        @ ../divdi3.c:28:51
	subs	r0, r0, r2
	sbc	r1, r1, r2
	.loc	13 28 5                         @ ../divdi3.c:28:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp35:
.Lfunc_end18:
	.size	__divdi3, .Lfunc_end18-__divdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivmoddi4                    @ -- Begin function __udivmoddi4
	.p2align	2
	.type	__udivmoddi4,%function
	.code	32                              @ @__udivmoddi4
__udivmoddi4:
.Lfunc_begin19:
	.file	14 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivmoddi4.c" md5 0xeca4b147be989cda91330ba5b56ed879
	.loc	14 25 0 is_stmt 1               @ ../udivmoddi4.c:25:0
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
.Ltmp36:
	.loc	14 29 11 prologue_end           @ ../udivmoddi4.c:29:11
	str	r1, [r11, #-4]
	str	r0, [r11, #-8]
	.loc	14 31 11                        @ ../udivmoddi4.c:31:11
	str	r3, [r11, #-12]
	str	r2, [r11, #-16]
	.loc	14 36 13                        @ ../udivmoddi4.c:36:13
	ldr	r0, [r11, #-4]
	.loc	14 36 9 is_stmt 0               @ ../udivmoddi4.c:36:9
	cmp	r0, #0
	bne	.LBB19_8
	b	.LBB19_1
.LBB19_1:                               @ %if.then
	.loc	14 38 17 is_stmt 1              @ ../udivmoddi4.c:38:17
	ldr	r0, [r11, #-12]
	.loc	14 38 13 is_stmt 0              @ ../udivmoddi4.c:38:13
	cmp	r0, #0
	bne	.LBB19_5
	b	.LBB19_2
.LBB19_2:                               @ %if.then5
	.loc	14 44 17 is_stmt 1              @ ../udivmoddi4.c:44:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB19_4
	b	.LBB19_3
.LBB19_3:                               @ %if.then6
	.loc	14 45 28                        @ ../udivmoddi4.c:45:28
	ldr	r0, [r11, #-8]
	.loc	14 45 38 is_stmt 0              @ ../udivmoddi4.c:45:38
	ldr	r1, [r11, #-16]
	.loc	14 45 32                        @ ../udivmoddi4.c:45:32
	bl	__umodsi3
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	mov	r2, #0
	.loc	14 45 22                        @ ../udivmoddi4.c:45:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	14 45 17                        @ ../udivmoddi4.c:45:17
	b	.LBB19_4
.LBB19_4:                               @ %if.end
	.loc	14 46 24 is_stmt 1              @ ../udivmoddi4.c:46:24
	ldr	r0, [r11, #-8]
	.loc	14 46 34 is_stmt 0              @ ../udivmoddi4.c:46:34
	ldr	r1, [r11, #-16]
	.loc	14 46 28                        @ ../udivmoddi4.c:46:28
	bl	__udivsi3
	mov	r1, r0
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 46 13                        @ ../udivmoddi4.c:46:13
	b	.LBB19_56
.LBB19_5:                               @ %if.end16
	.loc	14 52 13 is_stmt 1              @ ../udivmoddi4.c:52:13
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB19_7
	b	.LBB19_6
.LBB19_6:                               @ %if.then18
	.loc	14 53 24                        @ ../udivmoddi4.c:53:24
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	mov	r2, #0
	.loc	14 53 18 is_stmt 0              @ ../udivmoddi4.c:53:18
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	14 53 13                        @ ../udivmoddi4.c:53:13
	b	.LBB19_7
.LBB19_7:                               @ %if.end22
	.loc	14 0 13                         @ ../udivmoddi4.c:0:13
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 54 9 is_stmt 1               @ ../udivmoddi4.c:54:9
	b	.LBB19_56
.LBB19_8:                               @ %if.end23
	.loc	14 57 13                        @ ../udivmoddi4.c:57:13
	ldr	r0, [r11, #-16]
	.loc	14 57 9 is_stmt 0               @ ../udivmoddi4.c:57:9
	cmp	r0, #0
	bne	.LBB19_26
	b	.LBB19_9
.LBB19_9:                               @ %if.then28
	.loc	14 59 17 is_stmt 1              @ ../udivmoddi4.c:59:17
	ldr	r0, [r11, #-12]
	.loc	14 59 13 is_stmt 0              @ ../udivmoddi4.c:59:13
	cmp	r0, #0
	bne	.LBB19_13
	b	.LBB19_10
.LBB19_10:                              @ %if.then33
	.loc	14 65 17 is_stmt 1              @ ../udivmoddi4.c:65:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB19_12
	b	.LBB19_11
.LBB19_11:                              @ %if.then35
	.loc	14 66 28                        @ ../udivmoddi4.c:66:28
	ldr	r0, [r11, #-4]
	.loc	14 66 39 is_stmt 0              @ ../udivmoddi4.c:66:39
	ldr	r1, [r11, #-16]
	.loc	14 66 33                        @ ../udivmoddi4.c:66:33
	bl	__umodsi3
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	mov	r2, #0
	.loc	14 66 22                        @ ../udivmoddi4.c:66:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	14 66 17                        @ ../udivmoddi4.c:66:17
	b	.LBB19_12
.LBB19_12:                              @ %if.end42
	.loc	14 67 24 is_stmt 1              @ ../udivmoddi4.c:67:24
	ldr	r0, [r11, #-4]
	.loc	14 67 35 is_stmt 0              @ ../udivmoddi4.c:67:35
	ldr	r1, [r11, #-16]
	.loc	14 67 29                        @ ../udivmoddi4.c:67:29
	bl	__udivsi3
	mov	r1, r0
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 67 13                        @ ../udivmoddi4.c:67:13
	b	.LBB19_56
.LBB19_13:                              @ %if.end49
	.loc	14 70 17 is_stmt 1              @ ../udivmoddi4.c:70:17
	ldr	r0, [r11, #-8]
	.loc	14 70 13 is_stmt 0              @ ../udivmoddi4.c:70:13
	cmp	r0, #0
	bne	.LBB19_17
	b	.LBB19_14
.LBB19_14:                              @ %if.then54
	.loc	14 76 17 is_stmt 1              @ ../udivmoddi4.c:76:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB19_16
	b	.LBB19_15
.LBB19_15:                              @ %if.then56
	.loc	14 78 32                        @ ../udivmoddi4.c:78:32
	ldr	r0, [r11, #-4]
	.loc	14 78 43 is_stmt 0              @ ../udivmoddi4.c:78:43
	ldr	r1, [r11, #-12]
	.loc	14 78 37                        @ ../udivmoddi4.c:78:37
	bl	__umodsi3
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	.loc	14 78 26                        @ ../udivmoddi4.c:78:26
	str	r0, [r11, #-28]
	mov	r0, #0
	.loc	14 79 25 is_stmt 1              @ ../udivmoddi4.c:79:25
	str	r0, [r11, #-32]
	.loc	14 80 26                        @ ../udivmoddi4.c:80:26
	ldr	r0, [r11, #-32]
	ldr	r2, [r11, #-28]
	.loc	14 80 22 is_stmt 0              @ ../udivmoddi4.c:80:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	14 81 13 is_stmt 1              @ ../udivmoddi4.c:81:13
	b	.LBB19_16
.LBB19_16:                              @ %if.end67
	.loc	14 82 24                        @ ../udivmoddi4.c:82:24
	ldr	r0, [r11, #-4]
	.loc	14 82 35 is_stmt 0              @ ../udivmoddi4.c:82:35
	ldr	r1, [r11, #-12]
	.loc	14 82 29                        @ ../udivmoddi4.c:82:29
	bl	__udivsi3
	mov	r1, r0
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 82 13                        @ ../udivmoddi4.c:82:13
	b	.LBB19_56
.LBB19_17:                              @ %if.end74
	.loc	14 88 18 is_stmt 1              @ ../udivmoddi4.c:88:18
	ldr	r0, [r11, #-12]
	.loc	14 88 35 is_stmt 0              @ ../udivmoddi4.c:88:35
	sub	r1, r0, #1
	.loc	14 88 13                        @ ../udivmoddi4.c:88:13
	tst	r0, r1
	bne	.LBB19_21
	b	.LBB19_18
.LBB19_18:                              @ %if.then81
	.loc	14 90 17 is_stmt 1              @ ../udivmoddi4.c:90:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB19_20
	b	.LBB19_19
.LBB19_19:                              @ %if.then83
	.loc	14 92 31                        @ ../udivmoddi4.c:92:31
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	.loc	14 92 25 is_stmt 0              @ ../udivmoddi4.c:92:25
	str	r0, [r11, #-32]
	.loc	14 93 32 is_stmt 1              @ ../udivmoddi4.c:93:32
	ldr	r0, [r11, #-4]
	.loc	14 93 44 is_stmt 0              @ ../udivmoddi4.c:93:44
	ldr	r2, [r11, #-12]
	.loc	14 93 49                        @ ../udivmoddi4.c:93:49
	sub	r2, r2, #1
	.loc	14 93 37                        @ ../udivmoddi4.c:93:37
	and	r0, r0, r2
	.loc	14 93 26                        @ ../udivmoddi4.c:93:26
	str	r0, [r11, #-28]
	.loc	14 94 26 is_stmt 1              @ ../udivmoddi4.c:94:26
	ldr	r0, [r11, #-32]
	ldr	r2, [r11, #-28]
	.loc	14 94 22 is_stmt 0              @ ../udivmoddi4.c:94:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	14 95 13 is_stmt 1              @ ../udivmoddi4.c:95:13
	b	.LBB19_20
.LBB19_20:                              @ %if.end97
	.loc	14 96 24                        @ ../udivmoddi4.c:96:24
	ldr	r0, [r11, #-4]
	.loc	14 96 50 is_stmt 0              @ ../udivmoddi4.c:96:50
	ldr	r2, [r11, #-12]
	.loc	14 96 32                        @ ../udivmoddi4.c:96:32
	sub	r1, r2, #1
	bic	r1, r1, r2
	ldr	r2, .LCPI19_0
	and	r2, r2, r1, lsr #1
	sub	r1, r1, r2
	ldr	r3, .LCPI19_1
	and	r2, r3, r1, lsr #2
	and	r1, r1, r3
	add	r1, r1, r2
	add	r1, r1, r1, lsr #4
	ldr	r2, .LCPI19_2
	and	r2, r1, r2
	ldr	r3, .LCPI19_3
	mul	r1, r2, r3
	lsr	r1, r1, #24
	.loc	14 96 29                        @ ../udivmoddi4.c:96:29
	lsr	r1, r0, r1
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 96 13                        @ ../udivmoddi4.c:96:13
	b	.LBB19_56
.LBB19_21:                              @ %if.end103
	.loc	14 102 32 is_stmt 1             @ ../udivmoddi4.c:102:32
	ldr	r0, [r11, #-12]
	.loc	14 102 14 is_stmt 0             @ ../udivmoddi4.c:102:14
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI19_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI19_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI19_2
	and	r1, r0, r2
	ldr	r3, .LCPI19_3
	mul	r0, r1, r3
	lsr	r0, r0, #24
	.loc	14 102 58                       @ ../udivmoddi4.c:102:58
	ldr	r1, [r11, #-4]
	.loc	14 102 40                       @ ../udivmoddi4.c:102:40
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
	.loc	14 102 38                       @ ../udivmoddi4.c:102:38
	sub	r0, r0, r1, lsr #24
	str	r0, [sp, #40]                   @ 4-byte Spill
	.loc	14 104 13 is_stmt 1             @ ../udivmoddi4.c:104:13
	cmp	r0, #31
	blo	.LBB19_25
	b	.LBB19_22
.LBB19_22:                              @ %if.then111
	.loc	14 106 16                       @ ../udivmoddi4.c:106:16
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB19_24
	b	.LBB19_23
.LBB19_23:                              @ %if.then113
	.loc	14 107 26                       @ ../udivmoddi4.c:107:26
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldr	r2, [r11, #-4]
	.loc	14 107 22 is_stmt 0             @ ../udivmoddi4.c:107:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	14 107 17                       @ ../udivmoddi4.c:107:17
	b	.LBB19_24
.LBB19_24:                              @ %if.end115
	.loc	14 0 17                         @ ../udivmoddi4.c:0:17
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 108 13 is_stmt 1             @ ../udivmoddi4.c:108:13
	b	.LBB19_56
.LBB19_25:                              @ %if.end116
	.loc	14 110 9                        @ ../udivmoddi4.c:110:9
	ldr	r2, [sp, #40]                   @ 4-byte Reload
	add	r0, r2, #1
	mov	r1, #0
	.loc	14 113 17                       @ ../udivmoddi4.c:113:17
	str	r1, [r11, #-24]
	.loc	14 114 24                       @ ../udivmoddi4.c:114:24
	ldr	r1, [r11, #-8]
	.loc	14 114 45 is_stmt 0             @ ../udivmoddi4.c:114:45
	rsb	r3, r2, #31
	.loc	14 114 28                       @ ../udivmoddi4.c:114:28
	lsl	r1, r1, r3
	.loc	14 114 18                       @ ../udivmoddi4.c:114:18
	str	r1, [r11, #-20]
	.loc	14 116 24 is_stmt 1             @ ../udivmoddi4.c:116:24
	ldr	r1, [r11, #-4]
	.loc	14 116 29 is_stmt 0             @ ../udivmoddi4.c:116:29
	lsr	r1, r1, r0
	.loc	14 116 18                       @ ../udivmoddi4.c:116:18
	str	r1, [r11, #-28]
	.loc	14 117 60 is_stmt 1             @ ../udivmoddi4.c:117:60
	ldr	r2, [r11, #-8]
	.loc	14 117 24 is_stmt 0             @ ../udivmoddi4.c:117:24
	ldr	r1, [r11, #-4]
	.loc	14 117 29                       @ ../udivmoddi4.c:117:29
	lsl	r1, r1, r3
	.loc	14 117 53                       @ ../udivmoddi4.c:117:53
	orr	r1, r1, r2, lsr r0
	.loc	14 117 17                       @ ../udivmoddi4.c:117:17
	str	r1, [r11, #-32]
	str	r0, [sp, #36]                   @ 4-byte Spill
	.loc	14 118 5 is_stmt 1              @ ../udivmoddi4.c:118:5
	b	.LBB19_49
.LBB19_26:                              @ %if.else
	.loc	14 121 17                       @ ../udivmoddi4.c:121:17
	ldr	r0, [r11, #-12]
	.loc	14 121 13 is_stmt 0             @ ../udivmoddi4.c:121:13
	cmp	r0, #0
	bne	.LBB19_40
	b	.LBB19_27
.LBB19_27:                              @ %if.then142
	.loc	14 127 22 is_stmt 1             @ ../udivmoddi4.c:127:22
	ldr	r0, [r11, #-16]
	.loc	14 127 17 is_stmt 0             @ ../udivmoddi4.c:127:17
	sub	r1, r0, #1
	tst	r0, r1
	bne	.LBB19_33
	b	.LBB19_28
.LBB19_28:                              @ %if.then151
	.loc	14 129 21 is_stmt 1             @ ../udivmoddi4.c:129:21
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB19_30
	b	.LBB19_29
.LBB19_29:                              @ %if.then153
	.loc	14 130 32                       @ ../udivmoddi4.c:130:32
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	.loc	14 130 43 is_stmt 0             @ ../udivmoddi4.c:130:43
	ldr	r2, [r11, #-16]
	.loc	14 130 47                       @ ../udivmoddi4.c:130:47
	sub	r2, r2, #1
	.loc	14 130 36                       @ ../udivmoddi4.c:130:36
	and	r0, r0, r2
	mov	r2, #0
	.loc	14 130 26                       @ ../udivmoddi4.c:130:26
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	14 130 21                       @ ../udivmoddi4.c:130:21
	b	.LBB19_30
.LBB19_30:                              @ %if.end161
	.loc	14 131 25 is_stmt 1             @ ../udivmoddi4.c:131:25
	ldr	r0, [r11, #-16]
	.loc	14 131 21 is_stmt 0             @ ../udivmoddi4.c:131:21
	cmp	r0, #1
	bne	.LBB19_32
	b	.LBB19_31
.LBB19_31:                              @ %if.then166
	.loc	14 132 30 is_stmt 1             @ ../udivmoddi4.c:132:30
	ldr	r1, [r11, #-8]
	ldr	r0, [r11, #-4]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 132 21 is_stmt 0             @ ../udivmoddi4.c:132:21
	b	.LBB19_56
.LBB19_32:                              @ %if.end168
	.loc	14 133 40 is_stmt 1             @ ../udivmoddi4.c:133:40
	ldr	r1, [r11, #-16]
	.loc	14 133 22 is_stmt 0             @ ../udivmoddi4.c:133:22
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI19_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI19_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI19_2
	and	r0, r0, r1
	ldr	r1, .LCPI19_3
	mul	r12, r0, r1
	lsr	r2, r12, #24
	.loc	14 134 32 is_stmt 1             @ ../udivmoddi4.c:134:32
	ldr	r0, [r11, #-4]
	.loc	14 134 37 is_stmt 0             @ ../udivmoddi4.c:134:37
	lsr	r0, r0, r2
	.loc	14 134 26                       @ ../udivmoddi4.c:134:26
	str	r0, [r11, #-20]
	.loc	14 135 68 is_stmt 1             @ ../udivmoddi4.c:135:68
	ldr	r1, [r11, #-8]
	.loc	14 135 32 is_stmt 0             @ ../udivmoddi4.c:135:32
	ldr	r0, [r11, #-4]
	mov	r3, #32
	.loc	14 135 54                       @ ../udivmoddi4.c:135:54
	sub	r3, r3, r12, lsr #24
	.loc	14 135 37                       @ ../udivmoddi4.c:135:37
	lsl	r0, r0, r3
	.loc	14 135 61                       @ ../udivmoddi4.c:135:61
	orr	r0, r0, r1, lsr r2
	.loc	14 135 25                       @ ../udivmoddi4.c:135:25
	str	r0, [r11, #-24]
	.loc	14 136 26 is_stmt 1             @ ../udivmoddi4.c:136:26
	ldr	r1, [r11, #-24]
	ldr	r0, [r11, #-20]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 136 17 is_stmt 0             @ ../udivmoddi4.c:136:17
	b	.LBB19_56
.LBB19_33:                              @ %if.end187
	.loc	14 142 55 is_stmt 1             @ ../udivmoddi4.c:142:55
	ldr	r0, [r11, #-16]
	.loc	14 142 37 is_stmt 0             @ ../udivmoddi4.c:142:37
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI19_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI19_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI19_2
	and	r1, r0, r2
	ldr	r3, .LCPI19_3
	mul	r0, r1, r3
	lsr	r0, r0, #24
	.loc	14 142 80                       @ ../udivmoddi4.c:142:80
	ldr	r1, [r11, #-4]
	.loc	14 142 62                       @ ../udivmoddi4.c:142:62
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
	.loc	14 142 60                       @ ../udivmoddi4.c:142:60
	sub	r0, r0, r1, lsr #24
	add	r0, r0, #33
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	14 147 17 is_stmt 1             @ ../udivmoddi4.c:147:17
	cmp	r0, #32
	bne	.LBB19_35
	b	.LBB19_34
.LBB19_34:                              @ %if.then195
	.loc	14 0 17 is_stmt 0               @ ../udivmoddi4.c:0:17
	mov	r0, #0
	.loc	14 149 25 is_stmt 1             @ ../udivmoddi4.c:149:25
	str	r0, [r11, #-24]
	.loc	14 150 32                       @ ../udivmoddi4.c:150:32
	ldr	r1, [r11, #-8]
	.loc	14 150 26 is_stmt 0             @ ../udivmoddi4.c:150:26
	str	r1, [r11, #-20]
	.loc	14 151 26 is_stmt 1             @ ../udivmoddi4.c:151:26
	str	r0, [r11, #-28]
	.loc	14 152 31                       @ ../udivmoddi4.c:152:31
	ldr	r0, [r11, #-4]
	.loc	14 152 25 is_stmt 0             @ ../udivmoddi4.c:152:25
	str	r0, [r11, #-32]
	.loc	14 153 13 is_stmt 1             @ ../udivmoddi4.c:153:13
	b	.LBB19_39
.LBB19_35:                              @ %if.else208
	.loc	14 154 22                       @ ../udivmoddi4.c:154:22
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	cmp	r0, #31
	bhi	.LBB19_37
	b	.LBB19_36
.LBB19_36:                              @ %if.then211
	.loc	14 0 22 is_stmt 0               @ ../udivmoddi4.c:0:22
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	mov	r0, #0
	.loc	14 156 25 is_stmt 1             @ ../udivmoddi4.c:156:25
	str	r0, [r11, #-24]
	.loc	14 157 32                       @ ../udivmoddi4.c:157:32
	ldr	r0, [r11, #-8]
	.loc	14 157 53 is_stmt 0             @ ../udivmoddi4.c:157:53
	rsb	r3, r2, #32
	.loc	14 157 36                       @ ../udivmoddi4.c:157:36
	lsl	r0, r0, r3
	.loc	14 157 26                       @ ../udivmoddi4.c:157:26
	str	r0, [r11, #-20]
	.loc	14 158 32 is_stmt 1             @ ../udivmoddi4.c:158:32
	ldr	r0, [r11, #-4]
	.loc	14 158 37 is_stmt 0             @ ../udivmoddi4.c:158:37
	lsr	r0, r0, r2
	.loc	14 158 26                       @ ../udivmoddi4.c:158:26
	str	r0, [r11, #-28]
	.loc	14 159 68 is_stmt 1             @ ../udivmoddi4.c:159:68
	ldr	r1, [r11, #-8]
	.loc	14 159 32 is_stmt 0             @ ../udivmoddi4.c:159:32
	ldr	r0, [r11, #-4]
	.loc	14 159 37                       @ ../udivmoddi4.c:159:37
	lsl	r0, r0, r3
	.loc	14 159 61                       @ ../udivmoddi4.c:159:61
	orr	r0, r0, r1, lsr r2
	.loc	14 159 25                       @ ../udivmoddi4.c:159:25
	str	r0, [r11, #-32]
	.loc	14 160 13 is_stmt 1             @ ../udivmoddi4.c:160:13
	b	.LBB19_38
.LBB19_37:                              @ %if.else235
	.loc	14 163 31                       @ ../udivmoddi4.c:163:31
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	ldr	r0, [r11, #-8]
	.loc	14 163 53 is_stmt 0             @ ../udivmoddi4.c:163:53
	rsb	r3, r1, #64
	.loc	14 163 35                       @ ../udivmoddi4.c:163:35
	lsl	r0, r0, r3
	.loc	14 163 25                       @ ../udivmoddi4.c:163:25
	str	r0, [r11, #-24]
	.loc	14 165 33 is_stmt 1             @ ../udivmoddi4.c:165:33
	ldr	r2, [r11, #-8]
	.loc	14 164 33                       @ ../udivmoddi4.c:164:33
	ldr	r0, [r11, #-4]
	.loc	14 164 38 is_stmt 0             @ ../udivmoddi4.c:164:38
	lsl	r0, r0, r3
	.loc	14 165 44 is_stmt 1             @ ../udivmoddi4.c:165:44
	sub	r1, r1, #32
	.loc	14 164 63                       @ ../udivmoddi4.c:164:63
	orr	r0, r0, r2, lsr r1
	.loc	14 164 26 is_stmt 0             @ ../udivmoddi4.c:164:26
	str	r0, [r11, #-20]
	mov	r0, #0
	.loc	14 166 26 is_stmt 1             @ ../udivmoddi4.c:166:26
	str	r0, [r11, #-28]
	.loc	14 167 31                       @ ../udivmoddi4.c:167:31
	ldr	r0, [r11, #-4]
	.loc	14 167 36 is_stmt 0             @ ../udivmoddi4.c:167:36
	lsr	r0, r0, r1
	.loc	14 167 25                       @ ../udivmoddi4.c:167:25
	str	r0, [r11, #-32]
	b	.LBB19_38
.LBB19_38:                              @ %if.end261
	.loc	14 0 25                         @ ../udivmoddi4.c:0:25
	b	.LBB19_39
.LBB19_39:                              @ %if.end262
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	str	r0, [sp, #28]                   @ 4-byte Spill
	.loc	14 169 9 is_stmt 1              @ ../udivmoddi4.c:169:9
	b	.LBB19_48
.LBB19_40:                              @ %if.else263
	.loc	14 176 36                       @ ../udivmoddi4.c:176:36
	ldr	r0, [r11, #-12]
	.loc	14 176 18 is_stmt 0             @ ../udivmoddi4.c:176:18
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI19_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI19_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI19_2
	and	r1, r0, r2
	ldr	r3, .LCPI19_3
	mul	r0, r1, r3
	lsr	r0, r0, #24
	.loc	14 176 62                       @ ../udivmoddi4.c:176:62
	ldr	r1, [r11, #-4]
	.loc	14 176 44                       @ ../udivmoddi4.c:176:44
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
	.loc	14 176 42                       @ ../udivmoddi4.c:176:42
	sub	r0, r0, r1, lsr #24
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	14 178 17 is_stmt 1             @ ../udivmoddi4.c:178:17
	cmp	r0, #32
	blo	.LBB19_44
	b	.LBB19_41
.LBB19_41:                              @ %if.then271
	.loc	14 180 21                       @ ../udivmoddi4.c:180:21
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB19_43
	b	.LBB19_42
.LBB19_42:                              @ %if.then273
	.loc	14 181 30                       @ ../udivmoddi4.c:181:30
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldr	r2, [r11, #-4]
	.loc	14 181 26 is_stmt 0             @ ../udivmoddi4.c:181:26
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	14 181 21                       @ ../udivmoddi4.c:181:21
	b	.LBB19_43
.LBB19_43:                              @ %if.end275
	.loc	14 0 21                         @ ../udivmoddi4.c:0:21
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 182 17 is_stmt 1             @ ../udivmoddi4.c:182:17
	b	.LBB19_56
.LBB19_44:                              @ %if.end276
	.loc	14 184 13                       @ ../udivmoddi4.c:184:13
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #20]                   @ 4-byte Spill
	mov	r1, #0
	.loc	14 187 21                       @ ../udivmoddi4.c:187:21
	str	r1, [r11, #-24]
	.loc	14 188 17                       @ ../udivmoddi4.c:188:17
	cmp	r0, #32
	bne	.LBB19_46
	b	.LBB19_45
.LBB19_45:                              @ %if.then282
	.loc	14 190 32                       @ ../udivmoddi4.c:190:32
	ldr	r0, [r11, #-8]
	.loc	14 190 26 is_stmt 0             @ ../udivmoddi4.c:190:26
	str	r0, [r11, #-20]
	mov	r0, #0
	.loc	14 191 26 is_stmt 1             @ ../udivmoddi4.c:191:26
	str	r0, [r11, #-28]
	.loc	14 192 31                       @ ../udivmoddi4.c:192:31
	ldr	r0, [r11, #-4]
	.loc	14 192 25 is_stmt 0             @ ../udivmoddi4.c:192:25
	str	r0, [r11, #-32]
	.loc	14 193 13 is_stmt 1             @ ../udivmoddi4.c:193:13
	b	.LBB19_47
.LBB19_46:                              @ %if.else293
	.loc	14 196 32                       @ ../udivmoddi4.c:196:32
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	ldr	r0, [r11, #-8]
	.loc	14 196 53 is_stmt 0             @ ../udivmoddi4.c:196:53
	rsb	r3, r1, #31
	.loc	14 196 36                       @ ../udivmoddi4.c:196:36
	lsl	r0, r0, r3
	.loc	14 196 26                       @ ../udivmoddi4.c:196:26
	str	r0, [r11, #-20]
	.loc	14 197 32 is_stmt 1             @ ../udivmoddi4.c:197:32
	ldr	r0, [r11, #-4]
	.loc	14 197 37 is_stmt 0             @ ../udivmoddi4.c:197:37
	lsr	r0, r0, r2
	.loc	14 197 26                       @ ../udivmoddi4.c:197:26
	str	r0, [r11, #-28]
	.loc	14 198 68 is_stmt 1             @ ../udivmoddi4.c:198:68
	ldr	r1, [r11, #-8]
	.loc	14 198 32 is_stmt 0             @ ../udivmoddi4.c:198:32
	ldr	r0, [r11, #-4]
	.loc	14 198 37                       @ ../udivmoddi4.c:198:37
	lsl	r0, r0, r3
	.loc	14 198 61                       @ ../udivmoddi4.c:198:61
	orr	r0, r0, r1, lsr r2
	.loc	14 198 25                       @ ../udivmoddi4.c:198:25
	str	r0, [r11, #-32]
	b	.LBB19_47
.LBB19_47:                              @ %if.end315
	.loc	14 0 25                         @ ../udivmoddi4.c:0:25
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	str	r0, [sp, #28]                   @ 4-byte Spill
	b	.LBB19_48
.LBB19_48:                              @ %if.end316
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	str	r0, [sp, #36]                   @ 4-byte Spill
	b	.LBB19_49
.LBB19_49:                              @ %if.end317
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	mov	r0, #0
	str	r1, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	14 209 5 is_stmt 1              @ ../udivmoddi4.c:209:5
	b	.LBB19_50
.LBB19_50:                              @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	14 0 0 is_stmt 0                @ ../udivmoddi4.c:0:0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	14 209 5                        @ ../udivmoddi4.c:209:5
	cmp	r0, #0
	beq	.LBB19_53
	b	.LBB19_51
.LBB19_51:                              @ %for.body
                                        @   in Loop: Header=BB19_50 Depth=1
	.loc	14 212 43 is_stmt 1             @ ../udivmoddi4.c:212:43
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [r11, #-32]
	.loc	14 212 25 is_stmt 0             @ ../udivmoddi4.c:212:25
	ldr	r2, [r11, #-28]
	.loc	14 212 36                       @ ../udivmoddi4.c:212:36
	lsl	r2, r2, #1
	orr	r2, r2, r1, lsr #31
	.loc	14 212 18                       @ ../udivmoddi4.c:212:18
	str	r2, [r11, #-28]
	.loc	14 213 43 is_stmt 1             @ ../udivmoddi4.c:213:43
	ldr	r2, [r11, #-20]
	.loc	14 213 36 is_stmt 0             @ ../udivmoddi4.c:213:36
	lsl	r1, r1, #1
	orr	r1, r1, r2, lsr #31
	.loc	14 213 18                       @ ../udivmoddi4.c:213:18
	str	r1, [r11, #-32]
	.loc	14 214 43 is_stmt 1             @ ../udivmoddi4.c:214:43
	ldr	r1, [r11, #-24]
	.loc	14 214 25 is_stmt 0             @ ../udivmoddi4.c:214:25
	ldr	r2, [r11, #-20]
	.loc	14 214 36                       @ ../udivmoddi4.c:214:36
	lsl	r2, r2, #1
	orr	r2, r2, r1, lsr #31
	.loc	14 214 18                       @ ../udivmoddi4.c:214:18
	str	r2, [r11, #-20]
	.loc	14 215 36 is_stmt 1             @ ../udivmoddi4.c:215:36
	orr	r0, r0, r1, lsl #1
	.loc	14 215 18 is_stmt 0             @ ../udivmoddi4.c:215:18
	str	r0, [r11, #-24]
	.loc	14 223 37 is_stmt 1             @ ../udivmoddi4.c:223:37
	ldr	r12, [r11, #-16]
	ldr	r2, [r11, #-12]
	.loc	14 223 45 is_stmt 0             @ ../udivmoddi4.c:223:45
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	.loc	14 223 49                       @ ../udivmoddi4.c:223:49
	mvn	r3, r1
	mvn	lr, r0
	adds	lr, r12, lr
	adc	r3, r2, r3
	str	r3, [sp]                        @ 4-byte Spill
	.loc	14 225 15 is_stmt 1             @ ../udivmoddi4.c:225:15
	subs	r12, r0, r12
	sbc	r2, r1, r2
	cmp	r3, #0
	movmi	r0, r12
	cmp	r3, #0
	movmi	r1, r2
	str	r1, [r11, #-28]
	str	r0, [r11, #-32]
	.loc	14 226 5                        @ ../udivmoddi4.c:226:5
	b	.LBB19_52
.LBB19_52:                              @ %for.inc
                                        @   in Loop: Header=BB19_50 Depth=1
	.loc	14 224 19                       @ ../udivmoddi4.c:224:19
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp]                        @ 4-byte Reload
	lsr	r0, r0, #31
	.loc	14 209 20                       @ ../udivmoddi4.c:209:20
	sub	r1, r1, #1
	str	r1, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	14 209 5 is_stmt 0              @ ../udivmoddi4.c:209:5
	b	.LBB19_50
.LBB19_53:                              @ %for.end
	.loc	14 227 16 is_stmt 1             @ ../udivmoddi4.c:227:16
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [r11, #-24]
	ldr	r1, [r11, #-20]
	.loc	14 227 20 is_stmt 0             @ ../udivmoddi4.c:227:20
	lsl	r1, r1, #1
	orr	r1, r1, r3, lsr #31
	.loc	14 227 26                       @ ../udivmoddi4.c:227:26
	orr	r2, r2, r3, lsl #1
	.loc	14 227 11                       @ ../udivmoddi4.c:227:11
	str	r2, [r11, #-24]
	str	r1, [r11, #-20]
	.loc	14 228 9 is_stmt 1              @ ../udivmoddi4.c:228:9
	cmp	r0, #0
	beq	.LBB19_55
	b	.LBB19_54
.LBB19_54:                              @ %if.then371
	.loc	14 229 18                       @ ../udivmoddi4.c:229:18
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-32]
	ldr	r2, [r11, #-28]
	.loc	14 229 14 is_stmt 0             @ ../udivmoddi4.c:229:14
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	14 229 9                        @ ../udivmoddi4.c:229:9
	b	.LBB19_55
.LBB19_55:                              @ %if.end373
	.loc	14 230 14 is_stmt 1             @ ../udivmoddi4.c:230:14
	ldr	r1, [r11, #-24]
	ldr	r0, [r11, #-20]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 230 5 is_stmt 0              @ ../udivmoddi4.c:230:5
	b	.LBB19_56
.LBB19_56:                              @ %return
	.loc	14 0 0                          @ ../udivmoddi4.c:0:0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldr	r1, [r11, #-40]                 @ 4-byte Reload
	.loc	14 231 1 is_stmt 1              @ ../udivmoddi4.c:231:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp37:
	.p2align	2
@ %bb.57:
	.loc	14 0 1 is_stmt 0                @ ../udivmoddi4.c:0:1
.LCPI19_0:
	.long	1431655765                      @ 0x55555555
.LCPI19_1:
	.long	858993459                       @ 0x33333333
.LCPI19_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI19_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end19:
	.size	__udivmoddi4, .Lfunc_end19-__udivmoddi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divmoddi4                     @ -- Begin function __divmoddi4
	.p2align	2
	.type	__divmoddi4,%function
	.code	32                              @ @__divmoddi4
__divmoddi4:
.Lfunc_begin20:
	.file	15 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divmoddi4.c" md5 0xbd72633dccf26f3dd8ee74bf04f7fdac
	.loc	15 21 0 is_stmt 1               @ ../divmoddi4.c:21:0
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
.Ltmp38:
	.loc	15 22 14 prologue_end           @ ../divmoddi4.c:22:14
	mov	r2, r5
	bl	__divdi3
	ldr	r12, [sp]                       @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	ldr	lr, [sp, #12]                   @ 4-byte Reload
	.loc	15 23 16                        @ ../divmoddi4.c:23:16
	umull	r4, r7, r0, r5
	mla	r6, r0, lr, r7
	mla	lr, r1, r5, r6
	.loc	15 23 12 is_stmt 0              @ ../divmoddi4.c:23:12
	subs	r12, r12, r4
	sbc	r2, r2, lr
	.loc	15 23 8                         @ ../divmoddi4.c:23:8
	str	r12, [r3]
	str	r2, [r3, #4]
	.loc	15 24 3 is_stmt 1               @ ../divmoddi4.c:24:3
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
.Ltmp39:
.Lfunc_end20:
	.size	__divmoddi4, .Lfunc_end20-__divmoddi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divmodsi4                     @ -- Begin function __divmodsi4
	.p2align	2
	.type	__divmodsi4,%function
	.code	32                              @ @__divmodsi4
__divmodsi4:
.Lfunc_begin21:
	.file	16 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divmodsi4.c" md5 0x0cf7caca427f8ea020b675e27b5985b5
	.loc	16 21 0                         @ ../divmodsi4.c:21:0
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
.Ltmp40:
	.loc	16 22 14 prologue_end           @ ../divmodsi4.c:22:14
	bl	__divsi3
	ldr	r12, [sp, #4]                   @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [r11, #-4]                  @ 4-byte Reload
	.loc	16 23 16                        @ ../divmodsi4.c:23:16
	mul	r3, r0, r12
	.loc	16 23 12 is_stmt 0              @ ../divmodsi4.c:23:12
	sub	r1, r1, r3
	.loc	16 23 8                         @ ../divmodsi4.c:23:8
	str	r1, [r2]
	.loc	16 24 3 is_stmt 1               @ ../divmodsi4.c:24:3
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp41:
.Lfunc_end21:
	.size	__divmodsi4, .Lfunc_end21-__divmodsi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divsi3                        @ -- Begin function __divsi3
	.p2align	2
	.type	__divsi3,%function
	.code	32                              @ @__divsi3
__divsi3:
.Lfunc_begin22:
	.file	17 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divsi3.c" md5 0x7845e3e46788425cf69d463f3cfe00e5
	.loc	17 23 0                         @ ../divsi3.c:23:0
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
.Ltmp42:
	.loc	17 25 20 prologue_end           @ ../divsi3.c:25:20
	asr	r2, r1, #31
	.loc	17 27 12                        @ ../divsi3.c:27:12
	eor	r0, r1, r1, asr #31
	.loc	17 27 19 is_stmt 0              @ ../divsi3.c:27:19
	sub	r0, r0, r1, asr #31
	.loc	17 28 12 is_stmt 1              @ ../divsi3.c:28:12
	eor	r1, r3, r3, asr #31
	.loc	17 28 19 is_stmt 0              @ ../divsi3.c:28:19
	sub	r1, r1, r3, asr #31
	.loc	17 29 9 is_stmt 1               @ ../divsi3.c:29:9
	eor	r2, r2, r3, asr #31
	str	r2, [sp, #4]                    @ 4-byte Spill
	.loc	17 36 22                        @ ../divsi3.c:36:22
	bl	__udivsi3
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	.loc	17 36 33 is_stmt 0              @ ../divsi3.c:36:33
	eor	r0, r0, r1
	.loc	17 36 40                        @ ../divsi3.c:36:40
	sub	r0, r0, r1
	.loc	17 36 5                         @ ../divsi3.c:36:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp43:
.Lfunc_end22:
	.size	__divsi3, .Lfunc_end22-__divsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ffsdi2                        @ -- Begin function __ffsdi2
	.p2align	2
	.type	__ffsdi2,%function
	.code	32                              @ @__ffsdi2
__ffsdi2:
.Lfunc_begin23:
	.file	18 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ffsdi2.c" md5 0x4b800e1cad35a0bc99971441032171a3
	.loc	18 23 0 is_stmt 1               @ ../ffsdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp44:
	.loc	18 25 11 prologue_end           @ ../ffsdi2.c:25:11
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	18 26 13                        @ ../ffsdi2.c:26:13
	ldr	r0, [sp, #8]
	.loc	18 26 9 is_stmt 0               @ ../ffsdi2.c:26:9
	cmp	r0, #0
	bne	.LBB23_4
	b	.LBB23_1
.LBB23_1:                               @ %if.then
	.loc	18 28 17 is_stmt 1              @ ../ffsdi2.c:28:17
	ldr	r0, [sp, #12]
	.loc	18 28 13 is_stmt 0              @ ../ffsdi2.c:28:13
	cmp	r0, #0
	bne	.LBB23_3
	b	.LBB23_2
.LBB23_2:                               @ %if.then3
	.loc	18 0 13                         @ ../ffsdi2.c:0:13
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	18 29 13 is_stmt 1              @ ../ffsdi2.c:29:13
	b	.LBB23_5
.LBB23_3:                               @ %if.end
	.loc	18 30 34                        @ ../ffsdi2.c:30:34
	ldr	r1, [sp, #12]
	.loc	18 30 16 is_stmt 0              @ ../ffsdi2.c:30:16
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI23_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI23_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI23_2
	and	r0, r0, r1
	ldr	r2, .LCPI23_3
	mul	r1, r0, r2
	mov	r0, #33
	.loc	18 30 40                        @ ../ffsdi2.c:30:40
	add	r0, r0, r1, lsr #24
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	18 30 9                         @ ../ffsdi2.c:30:9
	b	.LBB23_5
.LBB23_4:                               @ %if.end6
	.loc	18 32 30 is_stmt 1              @ ../ffsdi2.c:32:30
	ldr	r1, [sp, #8]
	.loc	18 32 12 is_stmt 0              @ ../ffsdi2.c:32:12
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI23_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI23_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI23_2
	and	r0, r0, r1
	ldr	r2, .LCPI23_3
	mul	r1, r0, r2
	mov	r0, #1
	.loc	18 32 35                        @ ../ffsdi2.c:32:35
	add	r0, r0, r1, lsr #24
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	18 32 5                         @ ../ffsdi2.c:32:5
	b	.LBB23_5
.LBB23_5:                               @ %return
	.loc	18 0 0                          @ ../ffsdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	18 33 1 is_stmt 1               @ ../ffsdi2.c:33:1
	add	sp, sp, #16
	bx	lr
.Ltmp45:
	.p2align	2
@ %bb.6:
	.loc	18 0 1 is_stmt 0                @ ../ffsdi2.c:0:1
.LCPI23_0:
	.long	1431655765                      @ 0x55555555
.LCPI23_1:
	.long	858993459                       @ 0x33333333
.LCPI23_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI23_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end23:
	.size	__ffsdi2, .Lfunc_end23-__ffsdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ffssi2                        @ -- Begin function __ffssi2
	.p2align	2
	.type	__ffssi2,%function
	.code	32                              @ @__ffssi2
__ffssi2:
.Lfunc_begin24:
	.file	19 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ffssi2.c" md5 0x182169d6765bddc2bf1b03cc7a4f47cb
	.loc	19 23 0 is_stmt 1               @ ../ffssi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp46:
	.loc	19 24 9 prologue_end            @ ../ffssi2.c:24:9
	cmp	r0, #0
	bne	.LBB24_2
	b	.LBB24_1
.LBB24_1:                               @ %if.then
	.loc	19 0 9 is_stmt 0                @ ../ffssi2.c:0:9
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	.loc	19 26 9 is_stmt 1               @ ../ffssi2.c:26:9
	b	.LBB24_3
.LBB24_2:                               @ %if.end
	.loc	19 28 12                        @ ../ffssi2.c:28:12
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI24_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI24_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI24_2
	and	r0, r0, r1
	ldr	r2, .LCPI24_3
	mul	r1, r0, r2
	mov	r0, #1
	.loc	19 28 29 is_stmt 0              @ ../ffssi2.c:28:29
	add	r0, r0, r1, lsr #24
	str	r0, [sp]                        @ 4-byte Spill
	.loc	19 28 5                         @ ../ffssi2.c:28:5
	b	.LBB24_3
.LBB24_3:                               @ %return
	.loc	19 0 0                          @ ../ffssi2.c:0:0
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	19 29 1 is_stmt 1               @ ../ffssi2.c:29:1
	add	sp, sp, #8
	bx	lr
.Ltmp47:
	.p2align	2
@ %bb.4:
	.loc	19 0 1 is_stmt 0                @ ../ffssi2.c:0:1
.LCPI24_0:
	.long	1431655765                      @ 0x55555555
.LCPI24_1:
	.long	858993459                       @ 0x33333333
.LCPI24_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI24_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end24:
	.size	__ffssi2, .Lfunc_end24-__ffssi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__lshrdi3                       @ -- Begin function __lshrdi3
	.p2align	2
	.type	__lshrdi3,%function
	.code	32                              @ @__lshrdi3
__lshrdi3:
.Lfunc_begin25:
	.file	20 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../lshrdi3.c" md5 0xc456e45323b3205c3b32d82b51570771
	.loc	20 25 0 is_stmt 1               @ ../lshrdi3.c:25:0
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
.Ltmp48:
	.loc	20 29 15 prologue_end           @ ../lshrdi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	20 30 9                         @ ../lshrdi3.c:30:9
	tst	r2, #32
	beq	.LBB25_2
	b	.LBB25_1
.LBB25_1:                               @ %if.then
	.loc	20 0 9 is_stmt 0                @ ../lshrdi3.c:0:9
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mov	r0, #0
	.loc	20 32 23 is_stmt 1              @ ../lshrdi3.c:32:23
	str	r0, [sp, #28]
	.loc	20 33 32                        @ ../lshrdi3.c:33:32
	ldr	r0, [sp, #36]
	.loc	20 33 43 is_stmt 0              @ ../lshrdi3.c:33:43
	sub	r1, r1, #32
	.loc	20 33 37                        @ ../lshrdi3.c:33:37
	lsr	r0, r0, r1
	.loc	20 33 22                        @ ../lshrdi3.c:33:22
	str	r0, [sp, #24]
	.loc	20 34 5 is_stmt 1               @ ../lshrdi3.c:34:5
	b	.LBB25_5
.LBB25_2:                               @ %if.else
	.loc	20 37 13                        @ ../lshrdi3.c:37:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB25_4
	b	.LBB25_3
.LBB25_3:                               @ %if.then4
	.loc	20 0 13 is_stmt 0               @ ../lshrdi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	20 38 13 is_stmt 1              @ ../lshrdi3.c:38:13
	b	.LBB25_6
.LBB25_4:                               @ %if.end
	.loc	20 39 34                        @ ../lshrdi3.c:39:34
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #36]
	.loc	20 39 39 is_stmt 0              @ ../lshrdi3.c:39:39
	lsr	r0, r0, r2
	.loc	20 39 24                        @ ../lshrdi3.c:39:24
	str	r0, [sp, #28]
	.loc	20 40 72 is_stmt 1              @ ../lshrdi3.c:40:72
	ldr	r1, [sp, #32]
	.loc	20 40 33 is_stmt 0              @ ../lshrdi3.c:40:33
	ldr	r0, [sp, #36]
	.loc	20 40 55                        @ ../lshrdi3.c:40:55
	rsb	r3, r2, #32
	.loc	20 40 38                        @ ../lshrdi3.c:40:38
	lsl	r0, r0, r3
	.loc	20 40 61                        @ ../lshrdi3.c:40:61
	orr	r0, r0, r1, lsr r2
	.loc	20 40 22                        @ ../lshrdi3.c:40:22
	str	r0, [sp, #24]
	b	.LBB25_5
.LBB25_5:                               @ %if.end18
	.loc	20 42 19 is_stmt 1              @ ../lshrdi3.c:42:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	20 42 5 is_stmt 0               @ ../lshrdi3.c:42:5
	b	.LBB25_6
.LBB25_6:                               @ %return
	.loc	20 0 0                          @ ../lshrdi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	20 43 1 is_stmt 1               @ ../lshrdi3.c:43:1
	add	sp, sp, #40
	bx	lr
.Ltmp49:
.Lfunc_end25:
	.size	__lshrdi3, .Lfunc_end25-__lshrdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__moddi3                        @ -- Begin function __moddi3
	.p2align	2
	.type	__moddi3,%function
	.code	32                              @ @__moddi3
__moddi3:
.Lfunc_begin26:
	.file	21 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../moddi3.c" md5 0x76733914157a978303cbe3d6f6d1c647
	.loc	21 21 0                         @ ../moddi3.c:21:0
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
.Ltmp50:
	.loc	21 24 17 prologue_end           @ ../moddi3.c:24:17
	adds	r1, r2, r3, asr #31
	eor	r2, r1, r3, asr #31
	adc	r1, r3, r3, asr #31
	eor	r3, r1, r3, asr #31
	.loc	21 26 12                        @ ../moddi3.c:26:12
	eor	r0, r0, r12, asr #31
	eor	r1, r12, r12, asr #31
	.loc	21 26 17 is_stmt 0              @ ../moddi3.c:26:17
	subs	r0, r0, r12, asr #31
	sbc	r1, r1, r12, asr #31
	.loc	21 28 5 is_stmt 1               @ ../moddi3.c:28:5
	mov	lr, sp
	add	r12, sp, #8
	str	r12, [lr]
	bl	__udivmoddi4
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	.loc	21 29 21                        @ ../moddi3.c:29:21
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	.loc	21 29 23 is_stmt 0              @ ../moddi3.c:29:23
	eor	r1, r1, r2, asr #31
	eor	r0, r0, r2, asr #31
	.loc	21 29 28                        @ ../moddi3.c:29:28
	subs	r0, r0, r2, asr #31
	sbc	r1, r1, r2, asr #31
	.loc	21 29 5                         @ ../moddi3.c:29:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp51:
.Lfunc_end26:
	.size	__moddi3, .Lfunc_end26-__moddi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__modsi3                        @ -- Begin function __modsi3
	.p2align	2
	.type	__modsi3,%function
	.code	32                              @ @__modsi3
__modsi3:
.Lfunc_begin27:
	.file	22 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../modsi3.c" md5 0xada583aff17540d2228ce14dc879fdc8
	.loc	22 21 0 is_stmt 1               @ ../modsi3.c:21:0
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
.Ltmp52:
	.loc	22 22 16 prologue_end           @ ../modsi3.c:22:16
	bl	__divsi3
	ldr	r3, [sp]                        @ 4-byte Reload
	mov	r2, r0
	.loc	22 22 31 is_stmt 0              @ ../modsi3.c:22:31
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mul	r1, r2, r3
	.loc	22 22 14                        @ ../modsi3.c:22:14
	sub	r0, r0, r1
	.loc	22 22 5                         @ ../modsi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp53:
.Lfunc_end27:
	.size	__modsi3, .Lfunc_end27-__modsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__mulvdi3                       @ -- Begin function __mulvdi3
	.p2align	2
	.type	__mulvdi3,%function
	.code	32                              @ @__mulvdi3
__mulvdi3:
.Lfunc_begin28:
	.file	23 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../mulvdi3.c" md5 0xbb6aa1440e4e37fe94db90279d27db10
	.loc	23 23 0 is_stmt 1               @ ../mulvdi3.c:23:0
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
.Ltmp54:
	.loc	23 27 11 prologue_end           @ ../mulvdi3.c:27:11
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	23 27 9 is_stmt 0               @ ../mulvdi3.c:27:9
	cmp	r0, #0
	bne	.LBB28_5
	b	.LBB28_1
.LBB28_1:                               @ %if.then
	.loc	23 29 15 is_stmt 1              @ ../mulvdi3.c:29:15
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	orr	r0, r0, r1
	.loc	23 29 20 is_stmt 0              @ ../mulvdi3.c:29:20
	cmp	r0, #0
	beq	.LBB28_3
	b	.LBB28_2
.LBB28_2:                               @ %lor.lhs.false
	.loc	23 29 25                        @ ../mulvdi3.c:29:25
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	eor	r0, r0, #1
	orr	r0, r0, r1
	.loc	23 29 13                        @ ../mulvdi3.c:29:13
	cmp	r0, #0
	bne	.LBB28_4
	b	.LBB28_3
.LBB28_3:                               @ %if.then3
	.loc	23 30 13 is_stmt 1              @ ../mulvdi3.c:30:13
	b	.LBB28_21
.LBB28_4:                               @ %if.end
	.loc	23 31 9                         @ ../mulvdi3.c:31:9
	ldr	r0, .LCPI28_0
	ldr	r2, .LCPI28_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB28_5:                               @ %if.end4
	.loc	23 33 11                        @ ../mulvdi3.c:33:11
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	23 33 9 is_stmt 0               @ ../mulvdi3.c:33:9
	cmp	r0, #0
	bne	.LBB28_10
	b	.LBB28_6
.LBB28_6:                               @ %if.then6
	.loc	23 35 15 is_stmt 1              @ ../mulvdi3.c:35:15
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	orr	r0, r0, r1
	.loc	23 35 20 is_stmt 0              @ ../mulvdi3.c:35:20
	cmp	r0, #0
	beq	.LBB28_8
	b	.LBB28_7
.LBB28_7:                               @ %lor.lhs.false8
	.loc	23 35 25                        @ ../mulvdi3.c:35:25
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	eor	r0, r0, #1
	orr	r0, r0, r1
	.loc	23 35 13                        @ ../mulvdi3.c:35:13
	cmp	r0, #0
	bne	.LBB28_9
	b	.LBB28_8
.LBB28_8:                               @ %if.then10
	.loc	23 36 13 is_stmt 1              @ ../mulvdi3.c:36:13
	b	.LBB28_21
.LBB28_9:                               @ %if.end12
	.loc	23 37 9                         @ ../mulvdi3.c:37:9
	ldr	r0, .LCPI28_0
	ldr	r2, .LCPI28_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB28_10:                              @ %if.end13
	.loc	23 39 19                        @ ../mulvdi3.c:39:19
	ldr	r3, [r11, #-24]                 @ 4-byte Reload
	ldr	r2, [r11, #-20]                 @ 4-byte Reload
	ldr	r12, [r11, #-16]                @ 4-byte Reload
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	asr	r1, r12, #31
	str	r1, [sp]                        @ 4-byte Spill
	str	r1, [sp, #4]                    @ 4-byte Spill
	.loc	23 40 23                        @ ../mulvdi3.c:40:23
	eor	r1, r0, r12, asr #31
	eor	r0, r12, r12, asr #31
	.loc	23 40 29 is_stmt 0              @ ../mulvdi3.c:40:29
	subs	r1, r1, r12, asr #31
	str	r1, [sp, #8]                    @ 4-byte Spill
	sbc	r0, r0, r12, asr #31
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	23 41 19 is_stmt 1              @ ../mulvdi3.c:41:19
	asr	r12, r3, #31
	str	r12, [sp, #16]                  @ 4-byte Spill
	str	r12, [sp, #20]                  @ 4-byte Spill
	.loc	23 42 23                        @ ../mulvdi3.c:42:23
	eor	r12, r2, r3, asr #31
	eor	r2, r3, r3, asr #31
	.loc	23 42 29 is_stmt 0              @ ../mulvdi3.c:42:29
	subs	r12, r12, r3, asr #31
	str	r12, [sp, #24]                  @ 4-byte Spill
	sbc	r2, r2, r3, asr #31
	str	r2, [sp, #28]                   @ 4-byte Spill
	.loc	23 43 15 is_stmt 1              @ ../mulvdi3.c:43:15
	subs	r1, r1, #2
	sbcs	r0, r0, #0
	.loc	23 43 19 is_stmt 0              @ ../mulvdi3.c:43:19
	blt	.LBB28_12
	b	.LBB28_11
.LBB28_11:                              @ %lor.lhs.false18
	.loc	23 43 28                        @ ../mulvdi3.c:43:28
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	rsbs	r1, r1, #1
	rscs	r0, r0, #0
	.loc	23 43 9                         @ ../mulvdi3.c:43:9
	blt	.LBB28_13
	b	.LBB28_12
.LBB28_12:                              @ %if.then20
	.loc	23 44 9 is_stmt 1               @ ../mulvdi3.c:44:9
	b	.LBB28_21
.LBB28_13:                              @ %if.end22
	.loc	23 45 12                        @ ../mulvdi3.c:45:12
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r3, [sp, #16]                   @ 4-byte Reload
	eor	r0, r0, r3
	eor	r1, r1, r2
	orr	r0, r0, r1
	.loc	23 45 9 is_stmt 0               @ ../mulvdi3.c:45:9
	cmp	r0, #0
	bne	.LBB28_17
	b	.LBB28_14
.LBB28_14:                              @ %if.then24
	.loc	23 47 25 is_stmt 1              @ ../mulvdi3.c:47:25
	ldr	r3, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	mvn	r0, #0
	mvn	r1, #-2147483648
	bl	__divdi3
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	.loc	23 47 19 is_stmt 0              @ ../mulvdi3.c:47:19
	subs	r2, r2, r3
	sbcs	r0, r1, r0
	.loc	23 47 13                        @ ../mulvdi3.c:47:13
	bge	.LBB28_16
	b	.LBB28_15
.LBB28_15:                              @ %if.then26
	.loc	23 48 13 is_stmt 1              @ ../mulvdi3.c:48:13
	ldr	r0, .LCPI28_0
	ldr	r2, .LCPI28_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB28_16:                              @ %if.end27
	.loc	23 49 5                         @ ../mulvdi3.c:49:5
	b	.LBB28_20
.LBB28_17:                              @ %if.else
	.loc	23 52 27                        @ ../mulvdi3.c:52:27
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	rsbs	r2, r1, #0
	rsc	r3, r0, #0
	mov	r0, #0
	mov	r1, #-2147483648
	.loc	23 52 25 is_stmt 0              @ ../mulvdi3.c:52:25
	bl	__divdi3
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	.loc	23 52 19                        @ ../mulvdi3.c:52:19
	subs	r2, r2, r3
	sbcs	r0, r1, r0
	.loc	23 52 13                        @ ../mulvdi3.c:52:13
	bge	.LBB28_19
	b	.LBB28_18
.LBB28_18:                              @ %if.then31
	.loc	23 53 13 is_stmt 1              @ ../mulvdi3.c:53:13
	ldr	r0, .LCPI28_0
	ldr	r2, .LCPI28_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.LBB28_19:                              @ %if.end32
	.loc	23 0 13 is_stmt 0               @ ../mulvdi3.c:0:13
	b	.LBB28_20
.LBB28_20:                              @ %if.end33
	.loc	23 55 5 is_stmt 1               @ ../mulvdi3.c:55:5
	b	.LBB28_21
.LBB28_21:                              @ %return
	.loc	23 0 0 is_stmt 0                @ ../mulvdi3.c:0:0
	ldr	r2, [r11, #-16]                 @ 4-byte Reload
	ldr	r3, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-12]                 @ 4-byte Reload
	ldr	lr, [r11, #-24]                 @ 4-byte Reload
	umull	r0, r4, r1, r3
	mla	r12, r1, lr, r4
	mla	r1, r2, r3, r12
	.loc	23 56 1 is_stmt 1               @ ../mulvdi3.c:56:1
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp55:
	.p2align	2
@ %bb.22:
	.loc	23 0 1 is_stmt 0                @ ../mulvdi3.c:0:1
.LCPI28_0:
	.long	.L.str.8
.LCPI28_1:
	.long	.L__func__.__mulvdi3
.Lfunc_end28:
	.size	__mulvdi3, .Lfunc_end28-__mulvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__mulvsi3                       @ -- Begin function __mulvsi3
	.p2align	2
	.type	__mulvsi3,%function
	.code	32                              @ @__mulvsi3
__mulvsi3:
.Lfunc_begin29:
	.file	24 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../mulvsi3.c" md5 0x32cd947949fac3c039bd0839cd5d7c78
	.loc	24 23 0 is_stmt 1               @ ../mulvsi3.c:23:0
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
.Ltmp56:
	.loc	24 27 9 prologue_end            @ ../mulvsi3.c:27:9
	cmp	r0, #-2147483648
	bne	.LBB29_5
	b	.LBB29_1
.LBB29_1:                               @ %if.then
	.loc	24 29 20                        @ ../mulvsi3.c:29:20
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB29_3
	b	.LBB29_2
.LBB29_2:                               @ %lor.lhs.false
	.loc	24 29 13 is_stmt 0              @ ../mulvsi3.c:29:13
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB29_4
	b	.LBB29_3
.LBB29_3:                               @ %if.then3
	.loc	24 30 13 is_stmt 1              @ ../mulvsi3.c:30:13
	b	.LBB29_21
.LBB29_4:                               @ %if.end
	.loc	24 31 9                         @ ../mulvsi3.c:31:9
	ldr	r0, .LCPI29_0
	ldr	r2, .LCPI29_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB29_5:                               @ %if.end4
	.loc	24 33 9                         @ ../mulvsi3.c:33:9
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #-2147483648
	bne	.LBB29_10
	b	.LBB29_6
.LBB29_6:                               @ %if.then6
	.loc	24 35 20                        @ ../mulvsi3.c:35:20
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB29_8
	b	.LBB29_7
.LBB29_7:                               @ %lor.lhs.false8
	.loc	24 35 13 is_stmt 0              @ ../mulvsi3.c:35:13
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB29_9
	b	.LBB29_8
.LBB29_8:                               @ %if.then10
	.loc	24 36 13 is_stmt 1              @ ../mulvsi3.c:36:13
	b	.LBB29_21
.LBB29_9:                               @ %if.end12
	.loc	24 37 9                         @ ../mulvsi3.c:37:9
	ldr	r0, .LCPI29_0
	ldr	r2, .LCPI29_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB29_10:                              @ %if.end13
	.loc	24 39 19                        @ ../mulvsi3.c:39:19
	ldr	r2, [r11, #-8]                  @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	asr	r0, r1, #31
	str	r0, [sp]                        @ 4-byte Spill
	.loc	24 40 23                        @ ../mulvsi3.c:40:23
	eor	r0, r1, r1, asr #31
	.loc	24 40 29 is_stmt 0              @ ../mulvsi3.c:40:29
	sub	r0, r0, r1, asr #31
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	24 41 19 is_stmt 1              @ ../mulvsi3.c:41:19
	asr	r1, r2, #31
	str	r1, [sp, #8]                    @ 4-byte Spill
	.loc	24 42 23                        @ ../mulvsi3.c:42:23
	eor	r1, r2, r2, asr #31
	.loc	24 42 29 is_stmt 0              @ ../mulvsi3.c:42:29
	sub	r1, r1, r2, asr #31
	str	r1, [sp, #12]                   @ 4-byte Spill
	.loc	24 43 19 is_stmt 1              @ ../mulvsi3.c:43:19
	cmp	r0, #2
	blt	.LBB29_12
	b	.LBB29_11
.LBB29_11:                              @ %lor.lhs.false18
	.loc	24 43 9 is_stmt 0               @ ../mulvsi3.c:43:9
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #1
	bgt	.LBB29_13
	b	.LBB29_12
.LBB29_12:                              @ %if.then20
	.loc	24 44 9 is_stmt 1               @ ../mulvsi3.c:44:9
	b	.LBB29_21
.LBB29_13:                              @ %if.end22
	.loc	24 45 9                         @ ../mulvsi3.c:45:9
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	cmp	r0, r1
	bne	.LBB29_17
	b	.LBB29_14
.LBB29_14:                              @ %if.then24
	.loc	24 47 25                        @ ../mulvsi3.c:47:25
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mvn	r0, #-2147483648
	bl	__divsi3
	mov	r1, r0
	.loc	24 47 13 is_stmt 0              @ ../mulvsi3.c:47:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB29_16
	b	.LBB29_15
.LBB29_15:                              @ %if.then26
	.loc	24 48 13 is_stmt 1              @ ../mulvsi3.c:48:13
	ldr	r0, .LCPI29_0
	ldr	r2, .LCPI29_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB29_16:                              @ %if.end27
	.loc	24 49 5                         @ ../mulvsi3.c:49:5
	b	.LBB29_20
.LBB29_17:                              @ %if.else
	.loc	24 52 27                        @ ../mulvsi3.c:52:27
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	rsb	r1, r0, #0
	mov	r0, #-2147483648
	.loc	24 52 25 is_stmt 0              @ ../mulvsi3.c:52:25
	bl	__divsi3
	mov	r1, r0
	.loc	24 52 13                        @ ../mulvsi3.c:52:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB29_19
	b	.LBB29_18
.LBB29_18:                              @ %if.then31
	.loc	24 53 13 is_stmt 1              @ ../mulvsi3.c:53:13
	ldr	r0, .LCPI29_0
	ldr	r2, .LCPI29_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.LBB29_19:                              @ %if.end32
	.loc	24 0 13 is_stmt 0               @ ../mulvsi3.c:0:13
	b	.LBB29_20
.LBB29_20:                              @ %if.end33
	.loc	24 55 5 is_stmt 1               @ ../mulvsi3.c:55:5
	b	.LBB29_21
.LBB29_21:                              @ %return
	.loc	24 0 0 is_stmt 0                @ ../mulvsi3.c:0:0
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [r11, #-8]                  @ 4-byte Reload
	mul	r0, r1, r2
	.loc	24 56 1 is_stmt 1               @ ../mulvsi3.c:56:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp57:
	.p2align	2
@ %bb.22:
	.loc	24 0 1 is_stmt 0                @ ../mulvsi3.c:0:1
.LCPI29_0:
	.long	.L.str.9
.LCPI29_1:
	.long	.L__func__.__mulvsi3
.Lfunc_end29:
	.size	__mulvsi3, .Lfunc_end29-__mulvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__paritydi2                     @ -- Begin function __paritydi2
	.p2align	2
	.type	__paritydi2,%function
	.code	32                              @ @__paritydi2
__paritydi2:
.Lfunc_begin30:
	.file	25 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../paritydi2.c" md5 0xbd9549e31bcebf1c2265048ea6f18a77
	.loc	25 21 0 is_stmt 1               @ ../paritydi2.c:21:0
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
.Ltmp58:
	.loc	25 23 11 prologue_end           @ ../paritydi2.c:23:11
	str	r1, [sp, #4]
	str	r0, [sp]
	.loc	25 24 39                        @ ../paritydi2.c:24:39
	ldr	r1, [sp]
	.loc	25 24 28 is_stmt 0              @ ../paritydi2.c:24:28
	ldr	r0, [sp, #4]
	.loc	25 24 33                        @ ../paritydi2.c:24:33
	eor	r0, r0, r1
	.loc	25 24 12                        @ ../paritydi2.c:24:12
	bl	__paritysi2
	.loc	25 24 5                         @ ../paritydi2.c:24:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp59:
.Lfunc_end30:
	.size	__paritydi2, .Lfunc_end30-__paritydi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__paritysi2                     @ -- Begin function __paritysi2
	.p2align	2
	.type	__paritysi2,%function
	.code	32                              @ @__paritysi2
__paritysi2:
.Lfunc_begin31:
	.file	26 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../paritysi2.c" md5 0x235e89e1ac3c55fb43879550247ea25b
	.loc	26 21 0 is_stmt 1               @ ../paritysi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	26 23 7 prologue_end            @ ../paritysi2.c:23:7
	eor	r0, r0, r0, lsr #16
	.loc	26 24 7                         @ ../paritysi2.c:24:7
	eor	r0, r0, r0, lsr #8
	.loc	26 25 7                         @ ../paritysi2.c:25:7
	eor	r0, r0, r0, lsr #4
	.loc	26 26 26                        @ ../paritysi2.c:26:26
	and	r2, r0, #15
	mov	r1, #150
	orr	r1, r1, #26880
	mov	r0, #1
	.loc	26 26 34 is_stmt 0              @ ../paritysi2.c:26:34
	and	r0, r0, r1, lsr r2
	.loc	26 26 5                         @ ../paritysi2.c:26:5
	bx	lr
.Ltmp60:
.Lfunc_end31:
	.size	__paritysi2, .Lfunc_end31-__paritysi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__popcountdi2                   @ -- Begin function __popcountdi2
	.p2align	2
	.type	__popcountdi2,%function
	.code	32                              @ @__popcountdi2
__popcountdi2:
.Lfunc_begin32:
	.file	27 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountdi2.c" md5 0x05f001da7fc478c773612fd707769c2a
	.loc	27 21 0 is_stmt 1               @ ../popcountdi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r2, r0
                                        @ kill: def $r0 killed $r1
                                        @ kill: def $r0 killed $r2
.Ltmp61:
	.loc	27 23 20 prologue_end           @ ../popcountdi2.c:23:20
	lsrs	r0, r1, #1
	rrx	r3, r2
	ldr	r12, .LCPI32_0
	.loc	27 23 26 is_stmt 0              @ ../popcountdi2.c:23:26
	and	r0, r0, r12
	and	r3, r3, r12
	.loc	27 23 13                        @ ../popcountdi2.c:23:13
	subs	r2, r2, r3
	sbc	r3, r1, r0
	ldr	r12, .LCPI32_1
	.loc	27 25 21 is_stmt 1              @ ../popcountdi2.c:25:21
	and	r1, r12, r3, lsr #2
	and	r0, r12, r2, lsr #2
	.loc	27 25 52 is_stmt 0              @ ../popcountdi2.c:25:52
	and	r3, r3, r12
	and	r2, r2, r12
	.loc	27 25 46                        @ ../popcountdi2.c:25:46
	add	r1, r1, r3
	add	r0, r0, r2
	.loc	27 27 14 is_stmt 1              @ ../popcountdi2.c:27:14
	add	r1, r1, r1, lsr #4
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI32_2
	.loc	27 27 27 is_stmt 0              @ ../popcountdi2.c:27:27
	and	r1, r1, r2
	and	r0, r0, r2
	.loc	27 29 28 is_stmt 1              @ ../popcountdi2.c:29:28
	add	r0, r0, r1
	.loc	27 32 11                        @ ../popcountdi2.c:32:11
	add	r0, r0, r0, lsr #16
	.loc	27 35 15                        @ ../popcountdi2.c:35:15
	add	r0, r0, r0, lsr #8
	.loc	27 35 27 is_stmt 0              @ ../popcountdi2.c:35:27
	and	r0, r0, #255
	.loc	27 35 5                         @ ../popcountdi2.c:35:5
	bx	lr
.Ltmp62:
	.p2align	2
@ %bb.1:
	.loc	27 0 5                          @ ../popcountdi2.c:0:5
.LCPI32_0:
	.long	1431655765                      @ 0x55555555
.LCPI32_1:
	.long	858993459                       @ 0x33333333
.LCPI32_2:
	.long	252645135                       @ 0xf0f0f0f
.Lfunc_end32:
	.size	__popcountdi2, .Lfunc_end32-__popcountdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__popcountsi2                   @ -- Begin function __popcountsi2
	.p2align	2
	.type	__popcountsi2,%function
	.code	32                              @ @__popcountsi2
__popcountsi2:
.Lfunc_begin33:
	.file	28 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountsi2.c" md5 0xf9ebedb2d8810ee5a54fff38e1b09d64
	.loc	28 21 0 is_stmt 1               @ ../popcountsi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	ldr	r1, .LCPI33_0
.Ltmp63:
	.loc	28 23 23 prologue_end           @ ../popcountsi2.c:23:23
	and	r1, r1, r0, lsr #1
	.loc	28 23 11 is_stmt 0              @ ../popcountsi2.c:23:11
	sub	r1, r0, r1
	ldr	r2, .LCPI33_1
	.loc	28 25 19 is_stmt 1              @ ../popcountsi2.c:25:19
	and	r0, r2, r1, lsr #2
	.loc	28 25 38 is_stmt 0              @ ../popcountsi2.c:25:38
	and	r1, r1, r2
	.loc	28 25 33                        @ ../popcountsi2.c:25:33
	add	r0, r0, r1
	.loc	28 27 12 is_stmt 1              @ ../popcountsi2.c:27:12
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI33_2
	.loc	28 27 24 is_stmt 0              @ ../popcountsi2.c:27:24
	and	r0, r0, r1
	.loc	28 29 12 is_stmt 1              @ ../popcountsi2.c:29:12
	add	r0, r0, r0, lsr #16
	.loc	28 32 15                        @ ../popcountsi2.c:32:15
	add	r0, r0, r0, lsr #8
	.loc	28 32 27 is_stmt 0              @ ../popcountsi2.c:32:27
	and	r0, r0, #255
	.loc	28 32 5                         @ ../popcountsi2.c:32:5
	bx	lr
.Ltmp64:
	.p2align	2
@ %bb.1:
	.loc	28 0 5                          @ ../popcountsi2.c:0:5
.LCPI33_0:
	.long	1431655765                      @ 0x55555555
.LCPI33_1:
	.long	858993459                       @ 0x33333333
.LCPI33_2:
	.long	252645135                       @ 0xf0f0f0f
.Lfunc_end33:
	.size	__popcountsi2, .Lfunc_end33-__popcountsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__subvdi3                       @ -- Begin function __subvdi3
	.p2align	2
	.type	__subvdi3,%function
	.code	32                              @ @__subvdi3
__subvdi3:
.Lfunc_begin34:
	.file	29 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../subvdi3.c" md5 0x5774ab7a3a8e168deb55531047d6a873
	.loc	29 23 0 is_stmt 1               @ ../subvdi3.c:23:0
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
.Ltmp65:
	.loc	29 24 27 prologue_end           @ ../subvdi3.c:24:27
	subs	r0, r0, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	sbc	r0, r1, r3
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	29 25 9                         @ ../subvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB34_4
	b	.LBB34_1
.LBB34_1:                               @ %if.then
	.loc	29 27 15                        @ ../subvdi3.c:27:15
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	29 27 13 is_stmt 0              @ ../subvdi3.c:27:13
	bge	.LBB34_3
	b	.LBB34_2
.LBB34_2:                               @ %if.then2
	.loc	29 28 13 is_stmt 1              @ ../subvdi3.c:28:13
	ldr	r0, .LCPI34_0
	ldr	r2, .LCPI34_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB34_3:                               @ %if.end
	.loc	29 29 5                         @ ../subvdi3.c:29:5
	b	.LBB34_7
.LBB34_4:                               @ %if.else
	.loc	29 32 15                        @ ../subvdi3.c:32:15
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	29 32 13 is_stmt 0              @ ../subvdi3.c:32:13
	blt	.LBB34_6
	b	.LBB34_5
.LBB34_5:                               @ %if.then4
	.loc	29 33 13 is_stmt 1              @ ../subvdi3.c:33:13
	ldr	r0, .LCPI34_0
	ldr	r2, .LCPI34_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB34_6:                               @ %if.end5
	.loc	29 0 13 is_stmt 0               @ ../subvdi3.c:0:13
	b	.LBB34_7
.LBB34_7:                               @ %if.end6
	.loc	29 35 5 is_stmt 1               @ ../subvdi3.c:35:5
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp66:
	.p2align	2
@ %bb.8:
	.loc	29 0 5 is_stmt 0                @ ../subvdi3.c:0:5
.LCPI34_0:
	.long	.L.str.12
.LCPI34_1:
	.long	.L__func__.__subvdi3
.Lfunc_end34:
	.size	__subvdi3, .Lfunc_end34-__subvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__subvsi3                       @ -- Begin function __subvsi3
	.p2align	2
	.type	__subvsi3,%function
	.code	32                              @ @__subvsi3
__subvsi3:
.Lfunc_begin35:
	.file	30 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../subvsi3.c" md5 0xc9558a85e8fabce36f42a29933bd87e9
	.loc	30 23 0 is_stmt 1               @ ../subvsi3.c:23:0
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
.Ltmp67:
	.loc	30 24 27 prologue_end           @ ../subvsi3.c:24:27
	sub	r0, r0, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	30 25 9                         @ ../subvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB35_4
	b	.LBB35_1
.LBB35_1:                               @ %if.then
	.loc	30 27 13                        @ ../subvsi3.c:27:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB35_3
	b	.LBB35_2
.LBB35_2:                               @ %if.then2
	.loc	30 28 13                        @ ../subvsi3.c:28:13
	ldr	r0, .LCPI35_0
	ldr	r2, .LCPI35_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB35_3:                               @ %if.end
	.loc	30 29 5                         @ ../subvsi3.c:29:5
	b	.LBB35_7
.LBB35_4:                               @ %if.else
	.loc	30 32 13                        @ ../subvsi3.c:32:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	bgt	.LBB35_6
	b	.LBB35_5
.LBB35_5:                               @ %if.then4
	.loc	30 33 13                        @ ../subvsi3.c:33:13
	ldr	r0, .LCPI35_0
	ldr	r2, .LCPI35_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB35_6:                               @ %if.end5
	.loc	30 0 13 is_stmt 0               @ ../subvsi3.c:0:13
	b	.LBB35_7
.LBB35_7:                               @ %if.end6
	.loc	30 35 5 is_stmt 1               @ ../subvsi3.c:35:5
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp68:
	.p2align	2
@ %bb.8:
	.loc	30 0 5 is_stmt 0                @ ../subvsi3.c:0:5
.LCPI35_0:
	.long	.L.str.13
.LCPI35_1:
	.long	.L__func__.__subvsi3
.Lfunc_end35:
	.size	__subvsi3, .Lfunc_end35-__subvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ucmpdi2                       @ -- Begin function __ucmpdi2
	.p2align	2
	.type	__ucmpdi2,%function
	.code	32                              @ @__ucmpdi2
__ucmpdi2:
.Lfunc_begin36:
	.file	31 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ucmpdi2.c" md5 0x79f778ef54939446d175079e19d07756
	.loc	31 24 0 is_stmt 1               @ ../ucmpdi2.c:24:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp69:
	.loc	31 26 11 prologue_end           @ ../ucmpdi2.c:26:11
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	.loc	31 28 11                        @ ../ucmpdi2.c:28:11
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	.loc	31 29 13                        @ ../ucmpdi2.c:29:13
	ldr	r0, [sp, #20]
	.loc	31 29 24 is_stmt 0              @ ../ucmpdi2.c:29:24
	ldr	r1, [sp, #12]
	.loc	31 29 9                         @ ../ucmpdi2.c:29:9
	cmp	r0, r1
	bhs	.LBB36_2
	b	.LBB36_1
.LBB36_1:                               @ %if.then
	.loc	31 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	31 30 9 is_stmt 1               @ ../ucmpdi2.c:30:9
	b	.LBB36_9
.LBB36_2:                               @ %if.end
	.loc	31 31 13                        @ ../ucmpdi2.c:31:13
	ldr	r0, [sp, #20]
	.loc	31 31 24 is_stmt 0              @ ../ucmpdi2.c:31:24
	ldr	r1, [sp, #12]
	.loc	31 31 9                         @ ../ucmpdi2.c:31:9
	cmp	r0, r1
	bls	.LBB36_4
	b	.LBB36_3
.LBB36_3:                               @ %if.then9
	.loc	31 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	31 32 9 is_stmt 1               @ ../ucmpdi2.c:32:9
	b	.LBB36_9
.LBB36_4:                               @ %if.end10
	.loc	31 33 13                        @ ../ucmpdi2.c:33:13
	ldr	r0, [sp, #16]
	.loc	31 33 23 is_stmt 0              @ ../ucmpdi2.c:33:23
	ldr	r1, [sp, #8]
	.loc	31 33 9                         @ ../ucmpdi2.c:33:9
	cmp	r0, r1
	bhs	.LBB36_6
	b	.LBB36_5
.LBB36_5:                               @ %if.then15
	.loc	31 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	31 34 9 is_stmt 1               @ ../ucmpdi2.c:34:9
	b	.LBB36_9
.LBB36_6:                               @ %if.end16
	.loc	31 35 13                        @ ../ucmpdi2.c:35:13
	ldr	r0, [sp, #16]
	.loc	31 35 23 is_stmt 0              @ ../ucmpdi2.c:35:23
	ldr	r1, [sp, #8]
	.loc	31 35 9                         @ ../ucmpdi2.c:35:9
	cmp	r0, r1
	bls	.LBB36_8
	b	.LBB36_7
.LBB36_7:                               @ %if.then22
	.loc	31 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	31 36 9 is_stmt 1               @ ../ucmpdi2.c:36:9
	b	.LBB36_9
.LBB36_8:                               @ %if.end23
	.loc	31 0 9 is_stmt 0                @ ../ucmpdi2.c:0:9
	mov	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	31 37 5 is_stmt 1               @ ../ucmpdi2.c:37:5
	b	.LBB36_9
.LBB36_9:                               @ %return
	.loc	31 0 0 is_stmt 0                @ ../ucmpdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	31 38 1 is_stmt 1               @ ../ucmpdi2.c:38:1
	add	sp, sp, #24
	bx	lr
.Ltmp70:
.Lfunc_end36:
	.size	__ucmpdi2, .Lfunc_end36-__ucmpdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__aeabi_ulcmp                   @ -- Begin function __aeabi_ulcmp
	.p2align	2
	.type	__aeabi_ulcmp,%function
	.code	32                              @ @__aeabi_ulcmp
__aeabi_ulcmp:
.Lfunc_begin37:
	.loc	31 47 0                         @ ../ucmpdi2.c:47:0
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
.Ltmp71:
	.loc	31 48 9 prologue_end            @ ../ucmpdi2.c:48:9
	bl	__ucmpdi2
	.loc	31 48 25 is_stmt 0              @ ../ucmpdi2.c:48:25
	sub	r0, r0, #1
	.loc	31 48 2                         @ ../ucmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp72:
.Lfunc_end37:
	.size	__aeabi_ulcmp, .Lfunc_end37-__aeabi_ulcmp
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivdi3                       @ -- Begin function __udivdi3
	.p2align	2
	.type	__udivdi3,%function
	.code	32                              @ @__udivdi3
__udivdi3:
.Lfunc_begin38:
	.file	32 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivdi3.c" md5 0x580a28989090b62fc3d261faa6e31a6b
	.loc	32 21 0 is_stmt 1               @ ../udivdi3.c:21:0
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
.Ltmp73:
	.loc	32 22 12 prologue_end           @ ../udivdi3.c:22:12
	mov	lr, sp
	mov	r12, #0
	str	r12, [lr]
	bl	__udivmoddi4
	.loc	32 22 5 is_stmt 0               @ ../udivdi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp74:
.Lfunc_end38:
	.size	__udivdi3, .Lfunc_end38-__udivdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivmodsi4                    @ -- Begin function __udivmodsi4
	.p2align	2
	.type	__udivmodsi4,%function
	.code	32                              @ @__udivmodsi4
__udivmodsi4:
.Lfunc_begin39:
	.file	33 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivmodsi4.c" md5 0xc0341684574a20dbcfbe4df0ab9f8538
	.loc	33 21 0 is_stmt 1               @ ../udivmodsi4.c:21:0
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
.Ltmp75:
	.loc	33 22 14 prologue_end           @ ../udivmodsi4.c:22:14
	bl	__udivsi3
	ldr	r12, [sp, #4]                   @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [r11, #-4]                  @ 4-byte Reload
	.loc	33 23 16                        @ ../udivmodsi4.c:23:16
	mul	r3, r0, r12
	.loc	33 23 12 is_stmt 0              @ ../udivmodsi4.c:23:12
	sub	r1, r1, r3
	.loc	33 23 8                         @ ../udivmodsi4.c:23:8
	str	r1, [r2]
	.loc	33 24 3 is_stmt 1               @ ../udivmodsi4.c:24:3
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp76:
.Lfunc_end39:
	.size	__udivmodsi4, .Lfunc_end39-__udivmodsi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivsi3                       @ -- Begin function __udivsi3
	.p2align	2
	.type	__udivsi3,%function
	.code	32                              @ @__udivsi3
__udivsi3:
.Lfunc_begin40:
	.file	34 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivsi3.c" md5 0xb74987a973aededf95faab34db33f58a
	.loc	34 26 0                         @ ../udivsi3.c:26:0
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
.Ltmp77:
	.loc	34 32 9 prologue_end            @ ../udivsi3.c:32:9
	cmp	r1, #0
	bne	.LBB40_2
	b	.LBB40_1
.LBB40_1:                               @ %if.then
	.loc	34 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	34 33 9 is_stmt 1               @ ../udivsi3.c:33:9
	b	.LBB40_13
.LBB40_2:                               @ %if.end
	.loc	34 34 9                         @ ../udivsi3.c:34:9
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB40_4
	b	.LBB40_3
.LBB40_3:                               @ %if.then2
	.loc	34 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	34 35 9 is_stmt 1               @ ../udivsi3.c:35:9
	b	.LBB40_13
.LBB40_4:                               @ %if.end3
	.loc	34 36 10                        @ ../udivsi3.c:36:10
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	bl	__clzsi2
	mov	r1, r0
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	str	r1, [r11, #-20]                 @ 4-byte Spill
	.loc	34 36 29 is_stmt 0              @ ../udivsi3.c:36:29
	bl	__clzsi2
	mov	r1, r0
	.loc	34 36 27                        @ ../udivsi3.c:36:27
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	sub	r0, r0, r1
	str	r0, [r11, #-16]                 @ 4-byte Spill
	.loc	34 38 9 is_stmt 1               @ ../udivsi3.c:38:9
	cmp	r0, #32
	blo	.LBB40_6
	b	.LBB40_5
.LBB40_5:                               @ %if.then5
	.loc	34 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	34 39 9 is_stmt 1               @ ../udivsi3.c:39:9
	b	.LBB40_13
.LBB40_6:                               @ %if.end6
	.loc	34 40 9                         @ ../udivsi3.c:40:9
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	cmp	r0, #31
	bne	.LBB40_8
	b	.LBB40_7
.LBB40_7:                               @ %if.then8
	.loc	34 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	34 41 9 is_stmt 1               @ ../udivsi3.c:41:9
	b	.LBB40_13
.LBB40_8:                               @ %if.end9
	.loc	34 42 5                         @ ../udivsi3.c:42:5
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [r11, #-16]                 @ 4-byte Reload
	add	r1, r2, #1
	.loc	34 45 28                        @ ../udivsi3.c:45:28
	rsb	r2, r2, #31
	.loc	34 45 11 is_stmt 0              @ ../udivsi3.c:45:11
	lsl	r3, r0, r2
	.loc	34 46 11 is_stmt 1              @ ../udivsi3.c:46:11
	lsr	r2, r0, r1
	mov	r0, #0
	str	r3, [sp, #28]                   @ 4-byte Spill
	str	r2, [sp, #32]                   @ 4-byte Spill
	str	r1, [r11, #-28]                 @ 4-byte Spill
	str	r0, [r11, #-24]                 @ 4-byte Spill
	.loc	34 48 5                         @ ../udivsi3.c:48:5
	b	.LBB40_9
.LBB40_9:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	34 0 0 is_stmt 0                @ ../udivsi3.c:0:0
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	ldr	r0, [r11, #-28]                 @ 4-byte Reload
	ldr	r3, [r11, #-24]                 @ 4-byte Reload
	str	r3, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	str	r2, [sp, #20]                   @ 4-byte Spill
	str	r1, [sp, #24]                   @ 4-byte Spill
	.loc	34 48 5                         @ ../udivsi3.c:48:5
	cmp	r0, #0
	beq	.LBB40_12
	b	.LBB40_10
.LBB40_10:                              @ %for.body
                                        @   in Loop: Header=BB40_9 Depth=1
	.loc	34 51 22 is_stmt 1              @ ../udivsi3.c:51:22
	ldr	r1, [r11, #-8]                  @ 4-byte Reload
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	lsl	r0, r0, #1
	orr	r0, r0, r2, lsr #31
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	34 60 41                        @ ../udivsi3.c:60:41
	mvn	r0, r0
	add	r0, r0, r1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	34 63 5                         @ ../udivsi3.c:63:5
	b	.LBB40_11
.LBB40_11:                              @ %for.inc
                                        @   in Loop: Header=BB40_9 Depth=1
	.loc	34 62 11                        @ ../udivsi3.c:62:11
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r3, [sp, #12]                   @ 4-byte Reload
	ldr	r12, [sp, #24]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	lr, [r11, #-8]                  @ 4-byte Reload
	sub	lr, r2, lr
	cmp	r0, #0
	movmi	r2, lr
	.loc	34 61 19                        @ ../udivsi3.c:61:19
	lsr	r0, r0, #31
	.loc	34 52 22                        @ ../udivsi3.c:52:22
	orr	r3, r3, r12, lsl #1
	.loc	34 48 20                        @ ../udivsi3.c:48:20
	sub	r1, r1, #1
	str	r3, [sp, #28]                   @ 4-byte Spill
	str	r2, [sp, #32]                   @ 4-byte Spill
	str	r1, [r11, #-28]                 @ 4-byte Spill
	str	r0, [r11, #-24]                 @ 4-byte Spill
	.loc	34 48 5 is_stmt 0               @ ../udivsi3.c:48:5
	b	.LBB40_9
.LBB40_12:                              @ %for.end
	.loc	34 64 18 is_stmt 1              @ ../udivsi3.c:64:18
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	orr	r0, r0, r1, lsl #1
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	34 65 5                         @ ../udivsi3.c:65:5
	b	.LBB40_13
.LBB40_13:                              @ %return
	.loc	34 0 0 is_stmt 0                @ ../udivsi3.c:0:0
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	.loc	34 66 1 is_stmt 1               @ ../udivsi3.c:66:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp78:
.Lfunc_end40:
	.size	__udivsi3, .Lfunc_end40-__udivsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__umoddi3                       @ -- Begin function __umoddi3
	.p2align	2
	.type	__umoddi3,%function
	.code	32                              @ @__umoddi3
__umoddi3:
.Lfunc_begin41:
	.file	35 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../umoddi3.c" md5 0x1a99e635325595a81040fb97dab88295
	.loc	35 21 0                         @ ../umoddi3.c:21:0
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
.Ltmp79:
	.loc	35 23 5 prologue_end            @ ../umoddi3.c:23:5
	mov	lr, sp
	add	r12, sp, #8
	str	r12, [lr]
	bl	__udivmoddi4
	.loc	35 24 12                        @ ../umoddi3.c:24:12
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	.loc	35 24 5 is_stmt 0               @ ../umoddi3.c:24:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp80:
.Lfunc_end41:
	.size	__umoddi3, .Lfunc_end41-__umoddi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__umodsi3                       @ -- Begin function __umodsi3
	.p2align	2
	.type	__umodsi3,%function
	.code	32                              @ @__umodsi3
__umodsi3:
.Lfunc_begin42:
	.file	36 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../umodsi3.c" md5 0xce74ac33cd2bd170a84f43824cae8961
	.loc	36 21 0 is_stmt 1               @ ../umodsi3.c:21:0
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
.Ltmp81:
	.loc	36 22 16 prologue_end           @ ../umodsi3.c:22:16
	bl	__udivsi3
	ldr	r3, [sp]                        @ 4-byte Reload
	mov	r2, r0
	.loc	36 22 32 is_stmt 0              @ ../umodsi3.c:22:32
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mul	r1, r2, r3
	.loc	36 22 14                        @ ../umodsi3.c:22:14
	sub	r0, r0, r1
	.loc	36 22 5                         @ ../umodsi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp82:
.Lfunc_end42:
	.size	__umodsi3, .Lfunc_end42-__umodsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	memcpy                          @ -- Begin function memcpy
	.p2align	2
	.type	memcpy,%function
	.code	32                              @ @memcpy
memcpy:
.Lfunc_begin43:
	.file	37 "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" "../memory.c" md5 0xfa9c872a007b30a353222cd13b38538d
	.loc	37 4 0 is_stmt 1                @ ../memory.c:4:0
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
.Ltmp83:
	.loc	37 8 6 prologue_end             @ ../memory.c:8:6
	b	.LBB43_1
.LBB43_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	37 0 0 is_stmt 0                @ ../memory.c:0:0
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	37 8 2                          @ ../memory.c:8:2
	cmp	r0, r1
	beq	.LBB43_4
	b	.LBB43_2
.LBB43_2:                               @ %for.body
                                        @   in Loop: Header=BB43_1 Depth=1
	.loc	37 9 21 is_stmt 1               @ ../memory.c:9:21
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldrb	r0, [r0, r2]
	.loc	37 9 19 is_stmt 0               @ ../memory.c:9:19
	strb	r0, [r1, r2]
	.loc	37 10 2 is_stmt 1               @ ../memory.c:10:2
	b	.LBB43_3
.LBB43_3:                               @ %for.inc
                                        @   in Loop: Header=BB43_1 Depth=1
	.loc	37 8 26                         @ ../memory.c:8:26
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	37 8 2 is_stmt 0                @ ../memory.c:8:2
	b	.LBB43_1
.LBB43_4:                               @ %for.end
                                        @ implicit-def: $r0
	.loc	37 11 1 is_stmt 1               @ ../memory.c:11:1
	add	sp, sp, #20
	bx	lr
.Ltmp84:
.Lfunc_end43:
	.size	memcpy, .Lfunc_end43-memcpy
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	memset                          @ -- Begin function memset
	.p2align	2
	.type	memset,%function
	.code	32                              @ @memset
memset:
.Lfunc_begin44:
	.loc	37 14 0                         @ ../memory.c:14:0
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
.Ltmp85:
	.loc	37 17 6 prologue_end            @ ../memory.c:17:6
	b	.LBB44_1
.LBB44_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	37 0 0 is_stmt 0                @ ../memory.c:0:0
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	37 17 2                         @ ../memory.c:17:2
	cmp	r0, r1
	beq	.LBB44_4
	b	.LBB44_2
.LBB44_2:                               @ %for.body
                                        @   in Loop: Header=BB44_1 Depth=1
	.loc	37 18 11 is_stmt 1              @ ../memory.c:18:11
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	strb	r0, [r1, r2]
	.loc	37 19 2                         @ ../memory.c:19:2
	b	.LBB44_3
.LBB44_3:                               @ %for.inc
                                        @   in Loop: Header=BB44_1 Depth=1
	.loc	37 17 26                        @ ../memory.c:17:26
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	37 17 2 is_stmt 0               @ ../memory.c:17:2
	b	.LBB44_1
.LBB44_4:                               @ %for.end
	.loc	37 20 2 is_stmt 1               @ ../memory.c:20:2
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	add	sp, sp, #20
	bx	lr
.Ltmp86:
.Lfunc_end44:
	.size	memset, .Lfunc_end44-memset
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.type	matrix1_A,%object               @ @matrix1_A
	.bss
	.globl	matrix1_A
	.p2align	2
matrix1_A:
	.zero	4
	.size	matrix1_A, 4

	.type	matrix1_B,%object               @ @matrix1_B
	.globl	matrix1_B
	.p2align	2
matrix1_B:
	.zero	4
	.size	matrix1_B, 4

	.type	matrix1_C,%object               @ @matrix1_C
	.globl	matrix1_C
	.p2align	2
matrix1_C:
	.zero	4
	.size	matrix1_C, 4

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
	.long	.Lfunc_end4-.Lfunc_begin0       @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	4                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	1                               @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	6                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	2                               @ DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	7                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	3                               @ DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	8                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	4                               @ DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	9                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	5                               @ DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	10                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	6                               @ DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	11                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	7                               @ DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	12                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	8                               @ DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	13                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	9                               @ DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	14                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	10                              @ DW_AT_low_pc
	.long	.Lfunc_end15-.Lfunc_begin14     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	15                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	11                              @ DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin16     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	16                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	12                              @ DW_AT_low_pc
	.long	.Lfunc_end17-.Lfunc_begin17     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	17                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	13                              @ DW_AT_low_pc
	.long	.Lfunc_end18-.Lfunc_begin18     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	18                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	14                              @ DW_AT_low_pc
	.long	.Lfunc_end19-.Lfunc_begin19     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	19                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	15                              @ DW_AT_low_pc
	.long	.Lfunc_end20-.Lfunc_begin20     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	20                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	16                              @ DW_AT_low_pc
	.long	.Lfunc_end21-.Lfunc_begin21     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	21                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	17                              @ DW_AT_low_pc
	.long	.Lfunc_end22-.Lfunc_begin22     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	22                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	18                              @ DW_AT_low_pc
	.long	.Lfunc_end23-.Lfunc_begin23     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	23                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	19                              @ DW_AT_low_pc
	.long	.Lfunc_end24-.Lfunc_begin24     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	24                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	20                              @ DW_AT_low_pc
	.long	.Lfunc_end25-.Lfunc_begin25     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	25                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	21                              @ DW_AT_low_pc
	.long	.Lfunc_end26-.Lfunc_begin26     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	26                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	22                              @ DW_AT_low_pc
	.long	.Lfunc_end27-.Lfunc_begin27     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	27                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	23                              @ DW_AT_low_pc
	.long	.Lfunc_end28-.Lfunc_begin28     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	28                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	24                              @ DW_AT_low_pc
	.long	.Lfunc_end29-.Lfunc_begin29     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	29                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	25                              @ DW_AT_low_pc
	.long	.Lfunc_end30-.Lfunc_begin30     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	30                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	26                              @ DW_AT_low_pc
	.long	.Lfunc_end31-.Lfunc_begin31     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	31                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	27                              @ DW_AT_low_pc
	.long	.Lfunc_end32-.Lfunc_begin32     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	32                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	28                              @ DW_AT_low_pc
	.long	.Lfunc_end33-.Lfunc_begin33     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	33                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	29                              @ DW_AT_low_pc
	.long	.Lfunc_end34-.Lfunc_begin34     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	34                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	30                              @ DW_AT_low_pc
	.long	.Lfunc_end35-.Lfunc_begin35     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	35                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	31                              @ DW_AT_low_pc
	.long	.Lfunc_end37-.Lfunc_begin36     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	36                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	32                              @ DW_AT_low_pc
	.long	.Lfunc_end38-.Lfunc_begin38     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	37                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	33                              @ DW_AT_low_pc
	.long	.Lfunc_end39-.Lfunc_begin39     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	38                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	34                              @ DW_AT_low_pc
	.long	.Lfunc_end40-.Lfunc_begin40     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	39                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	35                              @ DW_AT_low_pc
	.long	.Lfunc_end41-.Lfunc_begin41     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	40                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	5                               @ DW_AT_comp_dir
	.byte	36                              @ DW_AT_low_pc
	.long	.Lfunc_end42-.Lfunc_begin42     @ DW_AT_high_pc
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
	.byte	3                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	41                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	42                              @ DW_AT_comp_dir
	.byte	37                              @ DW_AT_low_pc
	.long	.Lfunc_end44-.Lfunc_begin43     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end37:
	.section	.debug_str_offsets,"",%progbits
	.long	176                             @ Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)" @ string offset=0
.Linfo_string1:
	.asciz	"/workspaces/llvmta/testcases/batchtest/matrix1/matrix1.c" @ string offset=100
.Linfo_string2:
	.asciz	"/workspaces/llvmta/testcases/tmp.VasF5cfScI" @ string offset=157
.Linfo_string3:
	.asciz	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)" @ string offset=201
.Linfo_string4:
	.asciz	"../absvdi2.c"                  @ string offset=322
.Linfo_string5:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" @ string offset=335
.Linfo_string6:
	.asciz	"../int_util.c"                 @ string offset=397
.Linfo_string7:
	.asciz	"../absvsi2.c"                  @ string offset=411
.Linfo_string8:
	.asciz	"../addvdi3.c"                  @ string offset=424
.Linfo_string9:
	.asciz	"../addvsi3.c"                  @ string offset=437
.Linfo_string10:
	.asciz	"../ashldi3.c"                  @ string offset=450
.Linfo_string11:
	.asciz	"../ashrdi3.c"                  @ string offset=463
.Linfo_string12:
	.asciz	"../clzdi2.c"                   @ string offset=476
.Linfo_string13:
	.asciz	"../clzsi2.c"                   @ string offset=488
.Linfo_string14:
	.asciz	"../cmpdi2.c"                   @ string offset=500
.Linfo_string15:
	.asciz	"../ctzdi2.c"                   @ string offset=512
.Linfo_string16:
	.asciz	"../ctzsi2.c"                   @ string offset=524
.Linfo_string17:
	.asciz	"../divdi3.c"                   @ string offset=536
.Linfo_string18:
	.asciz	"../udivmoddi4.c"               @ string offset=548
.Linfo_string19:
	.asciz	"../divmoddi4.c"                @ string offset=564
.Linfo_string20:
	.asciz	"../divmodsi4.c"                @ string offset=579
.Linfo_string21:
	.asciz	"../divsi3.c"                   @ string offset=594
.Linfo_string22:
	.asciz	"../ffsdi2.c"                   @ string offset=606
.Linfo_string23:
	.asciz	"../ffssi2.c"                   @ string offset=618
.Linfo_string24:
	.asciz	"../lshrdi3.c"                  @ string offset=630
.Linfo_string25:
	.asciz	"../moddi3.c"                   @ string offset=643
.Linfo_string26:
	.asciz	"../modsi3.c"                   @ string offset=655
.Linfo_string27:
	.asciz	"../mulvdi3.c"                  @ string offset=667
.Linfo_string28:
	.asciz	"../mulvsi3.c"                  @ string offset=680
.Linfo_string29:
	.asciz	"../paritydi2.c"                @ string offset=693
.Linfo_string30:
	.asciz	"../paritysi2.c"                @ string offset=708
.Linfo_string31:
	.asciz	"../popcountdi2.c"              @ string offset=723
.Linfo_string32:
	.asciz	"../popcountsi2.c"              @ string offset=740
.Linfo_string33:
	.asciz	"../subvdi3.c"                  @ string offset=757
.Linfo_string34:
	.asciz	"../subvsi3.c"                  @ string offset=770
.Linfo_string35:
	.asciz	"../ucmpdi2.c"                  @ string offset=783
.Linfo_string36:
	.asciz	"../udivdi3.c"                  @ string offset=796
.Linfo_string37:
	.asciz	"../udivmodsi4.c"               @ string offset=809
.Linfo_string38:
	.asciz	"../udivsi3.c"                  @ string offset=825
.Linfo_string39:
	.asciz	"../umoddi3.c"                  @ string offset=838
.Linfo_string40:
	.asciz	"../umodsi3.c"                  @ string offset=851
.Linfo_string41:
	.asciz	"../memory.c"                   @ string offset=864
.Linfo_string42:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" @ string offset=876
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
	.section	.debug_addr,"",%progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 @ Length of contribution
.Ldebug_addr_start0:
	.short	5                               @ DWARF version number
	.byte	4                               @ Address size
	.byte	0                               @ Segment selector size
.Laddr_table_base0:
	.long	.Lfunc_begin0
	.long	.Lfunc_begin5
	.long	.Lfunc_begin6
	.long	.Lfunc_begin7
	.long	.Lfunc_begin8
	.long	.Lfunc_begin9
	.long	.Lfunc_begin10
	.long	.Lfunc_begin11
	.long	.Lfunc_begin12
	.long	.Lfunc_begin13
	.long	.Lfunc_begin14
	.long	.Lfunc_begin16
	.long	.Lfunc_begin17
	.long	.Lfunc_begin18
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
	.long	.Lfunc_begin38
	.long	.Lfunc_begin39
	.long	.Lfunc_begin40
	.long	.Lfunc_begin41
	.long	.Lfunc_begin42
	.long	.Lfunc_begin43
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
