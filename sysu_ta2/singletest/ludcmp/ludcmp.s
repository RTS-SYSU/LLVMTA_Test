	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 2	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 1	@ Tag_THUMB_ISA_use
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"llvm-link"
	.file	1 "/workspaces/llvmta/testcases/singletest" "ludcmp/ludcmp.c"
	.globl	ludcmp_init                     @ -- Begin function ludcmp_init
	.p2align	2
	.type	ludcmp_init,%function
	.code	32                              @ @ludcmp_init
ludcmp_init:
.Lfunc_begin0:
	.loc	1 44 0                          @ ludcmp/ludcmp.c:44:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r10, -12
	.cfi_offset r9, -16
	.cfi_offset r8, -20
	.cfi_offset r7, -24
	.cfi_offset r6, -28
	.cfi_offset r5, -32
	.cfi_offset r4, -36
	add	r11, sp, #28
	.cfi_def_cfa r11, 8
	sub	sp, sp, #4
.Ltmp0:
	@DEBUG_VALUE: ludcmp_init:n <- 5
	ldr	r8, .LCPI0_0
.Ltmp1:
	@DEBUG_VALUE: ludcmp_init:i <- 0
	mov	r10, #2359296
	mov	r7, #0
	orr	r10, r10, #1073741824
.Ltmp2:
	.loc	1 47 19 prologue_end            @ ludcmp/ludcmp.c:47:19
	str	r7, [sp]
	b	.LBB0_2
.Ltmp3:
.LBB0_1:                                @ %if.end26
                                        @   in Loop: Header=BB0_2 Depth=1
	@DEBUG_VALUE: ludcmp_init:w <- [DW_OP_LLVM_fragment 32 32] $r6
	@DEBUG_VALUE: ludcmp_init:w <- [DW_OP_LLVM_fragment 0 32] $r5
	@DEBUG_VALUE: ludcmp_init:j <- $r9
	@DEBUG_VALUE: ludcmp_init:i <- $r7
	@DEBUG_VALUE: ludcmp_init:n <- 5
	.loc	1 50 3                          @ ludcmp/ludcmp.c:50:3
	add	r8, r8, #400
	.loc	1 50 25 is_stmt 0               @ ludcmp/ludcmp.c:50:25
	add	r7, r7, #1
.Ltmp4:
	@DEBUG_VALUE: ludcmp_init:i <- $r7
.LBB0_2:                                @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_5 Depth 2
	@DEBUG_VALUE: ludcmp_init:n <- 5
	@DEBUG_VALUE: ludcmp_init:i <- $r7
	.loc	1 50 3                          @ ludcmp/ludcmp.c:50:3
	cmp	r7, #6
	beq	.LBB0_12
.Ltmp5:
@ %bb.3:                                @ %for.body
                                        @   in Loop: Header=BB0_2 Depth=1
	@DEBUG_VALUE: ludcmp_init:i <- $r7
	@DEBUG_VALUE: ludcmp_init:n <- 5
	.loc	1 0 3                           @ ludcmp/ludcmp.c:0:3
	mov	r5, #0
.Ltmp6:
	@DEBUG_VALUE: ludcmp_init:j <- 0
	@DEBUG_VALUE: ludcmp_init:w <- 0.000000e+00
	mov	r4, r8
	mov	r6, #0
	mov	r9, #0
	b	.LBB0_5
.Ltmp7:
.LBB0_4:                                @ %if.end19
                                        @   in Loop: Header=BB0_5 Depth=2
	@DEBUG_VALUE: ludcmp_init:j <- $r9
	@DEBUG_VALUE: ludcmp_init:i <- $r7
	@DEBUG_VALUE: ludcmp_init:n <- 5
	.loc	1 53 5 is_stmt 1                @ ludcmp/ludcmp.c:53:5
	add	r4, r4, #8
	.loc	1 53 27 is_stmt 0               @ ludcmp/ludcmp.c:53:27
	add	r9, r9, #1
.Ltmp8:
	@DEBUG_VALUE: ludcmp_init:j <- $r9
.LBB0_5:                                @ %for.cond1
                                        @   Parent Loop BB0_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	@DEBUG_VALUE: ludcmp_init:i <- $r7
	@DEBUG_VALUE: ludcmp_init:n <- 5
	@DEBUG_VALUE: ludcmp_init:j <- $r9
	@DEBUG_VALUE: ludcmp_init:w <- [DW_OP_LLVM_fragment 0 32] $r5
	@DEBUG_VALUE: ludcmp_init:w <- [DW_OP_LLVM_fragment 32 32] $r6
	.loc	1 53 5                          @ ludcmp/ludcmp.c:53:5
	cmp	r9, #6
	beq	.LBB0_10
.Ltmp9:
@ %bb.6:                                @ %for.body3
                                        @   in Loop: Header=BB0_5 Depth=2
	@DEBUG_VALUE: ludcmp_init:w <- [DW_OP_LLVM_fragment 32 32] $r6
	@DEBUG_VALUE: ludcmp_init:w <- [DW_OP_LLVM_fragment 0 32] $r5
	@DEBUG_VALUE: ludcmp_init:j <- $r9
	@DEBUG_VALUE: ludcmp_init:i <- $r7
	@DEBUG_VALUE: ludcmp_init:n <- 5
	.loc	1 54 28 is_stmt 1               @ ludcmp/ludcmp.c:54:28
	add	r0, r7, r9
	add	r0, r0, #2
	bl	__floatsidf
	.loc	1 56 12                         @ ludcmp/ludcmp.c:56:12
	cmp	r7, r9
	.loc	1 54 26                         @ ludcmp/ludcmp.c:54:26
	stm	r4, {r0, r1}
	.loc	1 56 12                         @ ludcmp/ludcmp.c:56:12
	bne	.LBB0_8
.Ltmp10:
@ %bb.7:                                @ %if.then
                                        @   in Loop: Header=BB0_5 Depth=2
	@DEBUG_VALUE: ludcmp_init:w <- [DW_OP_LLVM_fragment 32 32] $r6
	@DEBUG_VALUE: ludcmp_init:w <- [DW_OP_LLVM_fragment 0 32] $r5
	@DEBUG_VALUE: ludcmp_init:j <- $r9
	@DEBUG_VALUE: ludcmp_init:i <- $r7
	@DEBUG_VALUE: ludcmp_init:n <- 5
	.loc	1 57 28                         @ ludcmp/ludcmp.c:57:28
	ldm	r4, {r0, r1}
	mov	r2, #0
	mov	r3, r10
	bl	__muldf3
	stm	r4, {r0, r1}
.Ltmp11:
.LBB0_8:                                @ %if.end
                                        @   in Loop: Header=BB0_5 Depth=2
	@DEBUG_VALUE: ludcmp_init:w <- [DW_OP_LLVM_fragment 32 32] $r6
	@DEBUG_VALUE: ludcmp_init:w <- [DW_OP_LLVM_fragment 0 32] $r5
	@DEBUG_VALUE: ludcmp_init:j <- $r9
	@DEBUG_VALUE: ludcmp_init:i <- $r7
	@DEBUG_VALUE: ludcmp_init:n <- 5
	.loc	1 58 12                         @ ludcmp/ludcmp.c:58:12
	ldm	r4, {r2, r3}
	.loc	1 58 9 is_stmt 0                @ ludcmp/ludcmp.c:58:9
	mov	r0, r5
	mov	r1, r6
	bl	__adddf3
	mov	r5, r0
.Ltmp12:
	.loc	1 60 12 is_stmt 1               @ ludcmp/ludcmp.c:60:12
	ldr	r0, [sp]
.Ltmp13:
	.loc	1 58 9                          @ ludcmp/ludcmp.c:58:9
	mov	r6, r1
.Ltmp14:
	@DEBUG_VALUE: ludcmp_init:w <- undef
	.loc	1 60 12                         @ ludcmp/ludcmp.c:60:12
	cmp	r0, #0
	beq	.LBB0_4
.Ltmp15:
@ %bb.9:                                @ %if.then14
                                        @   in Loop: Header=BB0_5 Depth=2
	@DEBUG_VALUE: ludcmp_init:j <- $r9
	@DEBUG_VALUE: ludcmp_init:i <- $r7
	@DEBUG_VALUE: ludcmp_init:n <- 5
	.loc	1 61 31                         @ ludcmp/ludcmp.c:61:31
	ldr	r0, [sp]
	bl	__floatsidf
	mov	r2, r0
	mov	r3, r1
	.loc	1 61 28 is_stmt 0               @ ludcmp/ludcmp.c:61:28
	ldm	r4, {r0, r1}
	bl	__adddf3
	stm	r4, {r0, r1}
	b	.LBB0_4
.Ltmp16:
.LBB0_10:                               @ %for.end
                                        @   in Loop: Header=BB0_2 Depth=1
	@DEBUG_VALUE: ludcmp_init:w <- [DW_OP_LLVM_fragment 32 32] $r6
	@DEBUG_VALUE: ludcmp_init:w <- [DW_OP_LLVM_fragment 0 32] $r5
	@DEBUG_VALUE: ludcmp_init:j <- $r9
	@DEBUG_VALUE: ludcmp_init:i <- $r7
	@DEBUG_VALUE: ludcmp_init:n <- 5
	.loc	1 0 28                          @ ludcmp/ludcmp.c:0:28
	ldr	r4, .LCPI0_1
	.loc	1 64 19 is_stmt 1               @ ludcmp/ludcmp.c:64:19
	mov	r0, r4
	str	r5, [r0, r7, lsl #3]!
	str	r6, [r0, #4]
.Ltmp17:
	.loc	1 65 10                         @ ludcmp/ludcmp.c:65:10
	ldr	r0, [sp]
.Ltmp18:
	.loc	1 65 10 is_stmt 0               @ ludcmp/ludcmp.c:65:10
	cmp	r0, #0
	beq	.LBB0_1
.Ltmp19:
@ %bb.11:                               @ %if.then22
                                        @   in Loop: Header=BB0_2 Depth=1
	@DEBUG_VALUE: ludcmp_init:w <- [DW_OP_LLVM_fragment 32 32] $r6
	@DEBUG_VALUE: ludcmp_init:w <- [DW_OP_LLVM_fragment 0 32] $r5
	@DEBUG_VALUE: ludcmp_init:j <- $r9
	@DEBUG_VALUE: ludcmp_init:i <- $r7
	@DEBUG_VALUE: ludcmp_init:n <- 5
	.loc	1 66 24 is_stmt 1               @ ludcmp/ludcmp.c:66:24
	ldr	r0, [sp]
	bl	__floatsidf
	mov	r2, r0
	.loc	1 66 21 is_stmt 0               @ ludcmp/ludcmp.c:66:21
	ldr	r0, [r4, r7, lsl #3]!
	.loc	1 66 24                         @ ludcmp/ludcmp.c:66:24
	mov	r3, r1
	.loc	1 66 21                         @ ludcmp/ludcmp.c:66:21
	ldr	r1, [r4, #4]
	bl	__adddf3
	stm	r4, {r0, r1}
	b	.LBB0_1
.Ltmp20:
.LBB0_12:                               @ %for.end29
	@DEBUG_VALUE: ludcmp_init:i <- $r7
	@DEBUG_VALUE: ludcmp_init:n <- 5
	.loc	1 68 1 is_stmt 1                @ ludcmp/ludcmp.c:68:1
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
.Ltmp21:
	bx	lr
.Ltmp22:
	.p2align	2
@ %bb.13:
	.loc	1 0 1 is_stmt 0                 @ ludcmp/ludcmp.c:0:1
.LCPI0_0:
	.long	ludcmp_a
.LCPI0_1:
	.long	ludcmp_b
.Lfunc_end0:
	.size	ludcmp_init, .Lfunc_end0-ludcmp_init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ludcmp_return                   @ -- Begin function ludcmp_return
	.p2align	2
	.type	ludcmp_return,%function
	.code	32                              @ @ludcmp_return
ludcmp_return:
.Lfunc_begin1:
	.loc	1 71 0 is_stmt 1                @ ludcmp/ludcmp.c:71:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r4, r5, r6, r10, r11, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r10, -12
	.cfi_offset r6, -16
	.cfi_offset r5, -20
	.cfi_offset r4, -24
	add	r11, sp, #16
	.cfi_def_cfa r11, 8
.Ltmp23:
	@DEBUG_VALUE: ludcmp_return:n <- 5
	.loc	1 73 21 prologue_end            @ ludcmp/ludcmp.c:73:21
	ldr	r0, .LCPI1_0
	ldr	r0, [r0]
	bl	__floatsidf
	ldr	r5, .LCPI1_1
	mov	r4, #0
.Ltmp24:
	@DEBUG_VALUE: ludcmp_return:i <- 0
	@DEBUG_VALUE: ludcmp_return:checksum <- undef
	@DEBUG_VALUE: ludcmp_return:i <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $r4
	@DEBUG_VALUE: ludcmp_return:checksum <- [DW_OP_LLVM_fragment 0 32] $r0
	@DEBUG_VALUE: ludcmp_return:checksum <- [DW_OP_LLVM_fragment 32 32] $r1
	.loc	1 76 3                          @ ludcmp/ludcmp.c:76:3
	cmp	r4, #48
	beq	.LBB1_2
.Ltmp25:
.LBB1_1:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: ludcmp_return:checksum <- [DW_OP_LLVM_fragment 32 32] $r1
	@DEBUG_VALUE: ludcmp_return:checksum <- [DW_OP_LLVM_fragment 0 32] $r0
	@DEBUG_VALUE: ludcmp_return:i <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $r4
	@DEBUG_VALUE: ludcmp_return:n <- 5
	@DEBUG_VALUE: ludcmp_return:checksum <- undef
	.loc	1 77 17                         @ ludcmp/ludcmp.c:77:17
	mov	r3, r5
	ldr	r2, [r3, r4]!
	ldr	r3, [r3, #4]
	.loc	1 77 14 is_stmt 0               @ ludcmp/ludcmp.c:77:14
	bl	__adddf3
.Ltmp26:
	@DEBUG_VALUE: ludcmp_return:i <- [DW_OP_consts 8, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r4
	.loc	1 76 3 is_stmt 1                @ ludcmp/ludcmp.c:76:3
	add	r4, r4, #8
.Ltmp27:
	@DEBUG_VALUE: ludcmp_return:i <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $r4
	@DEBUG_VALUE: ludcmp_return:checksum <- [DW_OP_LLVM_fragment 0 32] $r0
	@DEBUG_VALUE: ludcmp_return:checksum <- [DW_OP_LLVM_fragment 32 32] $r1
	.loc	1 76 3 is_stmt 0                @ ludcmp/ludcmp.c:76:3
	cmp	r4, #48
	bne	.LBB1_1
.Ltmp28:
.LBB1_2:                                @ %for.end
	@DEBUG_VALUE: ludcmp_return:checksum <- [DW_OP_LLVM_fragment 32 32] $r1
	@DEBUG_VALUE: ludcmp_return:checksum <- [DW_OP_LLVM_fragment 0 32] $r0
	@DEBUG_VALUE: ludcmp_return:i <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $r4
	@DEBUG_VALUE: ludcmp_return:n <- 5
	.loc	1 0 3                           @ ludcmp/ludcmp.c:0:3
	mov	r3, #1572864
	.loc	1 80 12 is_stmt 1               @ ludcmp/ludcmp.c:80:12
	mov	r2, #0
	mov	r6, #0
	orr	r3, r3, #-1073741824
	bl	__adddf3
.Ltmp29:
	.loc	1 0 12 is_stmt 0                @ ludcmp/ludcmp.c:0:12
	ldr	r2, .LCPI1_2
	ldr	r3, .LCPI1_3
	.loc	1 80 12                         @ ludcmp/ludcmp.c:80:12
	mov	r4, r0
.Ltmp30:
	mov	r5, r1
.Ltmp31:
	@DEBUG_VALUE: ludcmp_return:checksum <- undef
	.loc	1 81 23 is_stmt 1               @ ludcmp/ludcmp.c:81:23
	bl	__ltdf2
	mov	r1, r0
	mvn	r0, #0
	.loc	1 81 34 is_stmt 0               @ ludcmp/ludcmp.c:81:34
	cmn	r1, #1
	bgt	.LBB1_4
.Ltmp32:
@ %bb.3:                                @ %land.rhs
	@DEBUG_VALUE: ludcmp_return:n <- 5
	.loc	1 0 34                          @ ludcmp/ludcmp.c:0:34
	ldr	r2, .LCPI1_2
	ldr	r3, .LCPI1_4
	mov	r0, r4
	mov	r1, r5
	bl	__gtdf2
	cmp	r0, #1
	mvnlt	r6, #0
	mov	r0, r6
.Ltmp33:
.LBB1_4:                                @ %land.end
	@DEBUG_VALUE: ludcmp_return:n <- 5
	.loc	1 81 3                          @ ludcmp/ludcmp.c:81:3
	pop	{r4, r5, r6, r10, r11, lr}
	bx	lr
.Ltmp34:
	.p2align	2
@ %bb.5:
	.loc	1 0 3                           @ ludcmp/ludcmp.c:0:3
.LCPI1_0:
	.long	ludcmp_chkerr
.LCPI1_1:
	.long	ludcmp_x
.LCPI1_2:
	.long	2696277389                      @ 0xa0b5ed8d
.LCPI1_3:
	.long	1051772663                      @ 0x3eb0c6f7
.LCPI1_4:
	.long	3199256311                      @ 0xbeb0c6f7
.Lfunc_end1:
	.size	ludcmp_return, .Lfunc_end1-ludcmp_return
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ludcmp_fabs                     @ -- Begin function ludcmp_fabs
	.p2align	2
	.type	ludcmp_fabs,%function
	.code	32                              @ @ludcmp_fabs
ludcmp_fabs:
.Lfunc_begin2:
	.loc	1 85 0 is_stmt 1                @ ludcmp/ludcmp.c:85:0
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
.Ltmp35:
	.loc	1 88 10 prologue_end            @ ludcmp/ludcmp.c:88:10
	mov	r2, #0
	mov	r3, #0
	mov	r4, r1
	mov	r5, r0
	bl	__gedf2
.Ltmp36:
	@DEBUG_VALUE: ludcmp_fabs:n <- [DW_OP_LLVM_fragment 0 32] $r5
	@DEBUG_VALUE: ludcmp_fabs:n <- [DW_OP_LLVM_fragment 32 32] $r4
	.loc	1 88 8 is_stmt 0                @ ludcmp/ludcmp.c:88:8
	cmn	r0, #1
	.loc	1 93 3 is_stmt 1                @ ludcmp/ludcmp.c:93:3
	mov	r0, r5
.Ltmp37:
	.loc	1 91 9                          @ ludcmp/ludcmp.c:91:9
	eorle	r4, r4, #-2147483648
.Ltmp38:
	@DEBUG_VALUE: ludcmp_fabs:f <- undef
	@DEBUG_VALUE: ludcmp_fabs:f <- [DW_OP_LLVM_fragment 0 32] $r5
	@DEBUG_VALUE: ludcmp_fabs:f <- [DW_OP_LLVM_fragment 32 32] $r4
	.loc	1 93 3                          @ ludcmp/ludcmp.c:93:3
	mov	r1, r4
	pop	{r4, r5, r11, lr}
.Ltmp39:
	bx	lr
.Ltmp40:
.Lfunc_end2:
	.size	ludcmp_fabs, .Lfunc_end2-ludcmp_fabs
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ludcmp_test                     @ -- Begin function ludcmp_test
	.p2align	2
	.type	ludcmp_test,%function
	.code	32                              @ @ludcmp_test
ludcmp_test:
.Lfunc_begin3:
	.loc	1 97 0                          @ ludcmp/ludcmp.c:97:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: ludcmp_test:n <- $r0
	@DEBUG_VALUE: ludcmp_test:eps <- [DW_OP_LLVM_fragment 0 32] $r2
	@DEBUG_VALUE: ludcmp_test:eps <- [DW_OP_LLVM_fragment 32 32] $r3
	@DEBUG_VALUE: ludcmp_test:n <- $r0
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r10, -12
	.cfi_offset r9, -16
	.cfi_offset r8, -20
	.cfi_offset r7, -24
	.cfi_offset r6, -28
	.cfi_offset r5, -32
	.cfi_offset r4, -36
	add	r11, sp, #28
	.cfi_def_cfa r11, 8
	sub	sp, sp, #852
	mov	r5, #231
.Ltmp41:
	.loc	1 102 15 prologue_end           @ ludcmp/ludcmp.c:102:15
	cmp	r0, #99
	orr	r5, r5, #768
	bgt	.LBB3_31
.Ltmp42:
@ %bb.1:                                @ %lor.lhs.false
	@DEBUG_VALUE: ludcmp_test:eps <- [DW_OP_LLVM_fragment 32 32] $r3
	@DEBUG_VALUE: ludcmp_test:eps <- [DW_OP_LLVM_fragment 0 32] $r2
	@DEBUG_VALUE: ludcmp_test:n <- $r0
	.loc	1 0 15 is_stmt 0                @ ludcmp/ludcmp.c:0:15
	mov	r9, r0
.Ltmp43:
	@DEBUG_VALUE: ludcmp_test:n <- $r9
	@DEBUG_VALUE: ludcmp_test:n <- $r9
	@DEBUG_VALUE: ludcmp_test:eps <- [DW_OP_LLVM_fragment 32 32] $r8
	@DEBUG_VALUE: ludcmp_test:eps <- [DW_OP_LLVM_fragment 0 32] $r7
	mov	r8, r3
.Ltmp44:
	@DEBUG_VALUE: ludcmp_test:eps <- [DW_OP_LLVM_fragment 32 32] $r8
	.loc	1 102 22                        @ ludcmp/ludcmp.c:102:22
	mov	r1, r3
	mov	r7, r2
.Ltmp45:
	@DEBUG_VALUE: ludcmp_test:eps <- [DW_OP_LLVM_fragment 0 32] $r7
	mov	r0, r2
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	bl	__ledf2
.Ltmp46:
	.loc	1 102 8                         @ ludcmp/ludcmp.c:102:8
	cmp	r0, #1
	blt	.LBB3_31
.Ltmp47:
@ %bb.2:                                @ %if.end
	@DEBUG_VALUE: ludcmp_test:eps <- [DW_OP_LLVM_fragment 0 32] $r7
	@DEBUG_VALUE: ludcmp_test:eps <- [DW_OP_LLVM_fragment 32 32] $r8
	@DEBUG_VALUE: ludcmp_test:n <- $r9
	@DEBUG_VALUE: ludcmp_test:i <- 0
	.loc	1 0 8                           @ ludcmp/ludcmp.c:0:8
	ldr	r1, .LCPI3_0
	stm	sp, {r7, r8}                    @ 8-byte Folded Spill
	mov	r10, #8
	str	r9, [sp, #44]                   @ 4-byte Spill
	add	r0, r1, #8
	add	r8, r1, #400
.Ltmp48:
	str	r1, [sp, #20]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
.Ltmp49:
	.loc	1 106 9 is_stmt 1               @ ludcmp/ludcmp.c:106:9
	bic	r0, r9, r9, asr #31
	str	r0, [sp, #8]                    @ 4-byte Spill
	add	r0, r9, #1
	str	r0, [sp, #12]                   @ 4-byte Spill
	b	.LBB3_4
.Ltmp50:
.LBB3_3:                                @ %for.end53
                                        @   in Loop: Header=BB3_4 Depth=1
	.loc	1 106 3 is_stmt 0               @ ludcmp/ludcmp.c:106:3
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	add	r10, r10, #8
	add	r8, r8, #400
	.loc	1 106 24                        @ ludcmp/ludcmp.c:106:24
	add	r4, r4, #1
.Ltmp51:
	@DEBUG_VALUE: ludcmp_test:i <- $r4
	.loc	1 106 3                         @ ludcmp/ludcmp.c:106:3
	add	r0, r0, #8
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	add	r0, r0, #8
	str	r0, [sp, #20]                   @ 4-byte Spill
.Ltmp52:
.LBB3_4:                                @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB3_9 Depth 2
                                        @       Child Loop BB3_12 Depth 3
                                        @     Child Loop BB3_15 Depth 2
                                        @       Child Loop BB3_17 Depth 3
	@DEBUG_VALUE: ludcmp_test:i <- $r4
	.loc	1 106 3                         @ ludcmp/ludcmp.c:106:3
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	cmp	r4, r0
	beq	.LBB3_18
.Ltmp53:
@ %bb.5:                                @ %for.body
                                        @   in Loop: Header=BB3_4 Depth=1
	@DEBUG_VALUE: ludcmp_test:i <- $r4
	.loc	1 107 23 is_stmt 1              @ ludcmp/ludcmp.c:107:23
	ldr	r0, .LCPI3_0
	mov	r1, #400
	mla	r2, r4, r1, r0
	.loc	1 107 10 is_stmt 0              @ ludcmp/ludcmp.c:107:10
	mov	r1, r2
	str	r2, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [r1, r4, lsl #3]!
	ldr	r1, [r1, #4]
	bl	ludcmp_fabs
	.loc	1 107 44                        @ ludcmp/ludcmp.c:107:44
	ldm	sp, {r2, r3}                    @ 8-byte Folded Reload
	bl	__ledf2
.Ltmp54:
	.loc	1 107 10                        @ ludcmp/ludcmp.c:107:10
	cmp	r0, #1
	blt	.LBB3_23
.Ltmp55:
@ %bb.6:                                @ %if.end6
                                        @   in Loop: Header=BB3_4 Depth=1
	@DEBUG_VALUE: ludcmp_test:i <- $r4
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r4
	.loc	1 0 10                          @ ludcmp/ludcmp.c:0:10
	mov	r6, r8
	mov	r2, r4
	str	r4, [sp, #28]                   @ 4-byte Spill
.Ltmp56:
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_plus_uconst 28, DW_OP_deref_size 4, DW_OP_plus_uconst 1, DW_OP_stack_value] $sp
	b	.LBB3_9
.Ltmp57:
.LBB3_7:                                @   in Loop: Header=BB3_9 Depth=2
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 32 32] $r5
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 0 32] $r7
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_plus_uconst 36] [$sp+0]
	ldr	r9, [sp, #44]                   @ 4-byte Reload
	ldr	r4, [sp, #28]                   @ 4-byte Reload
	ldr	r6, [sp, #24]                   @ 4-byte Reload
.Ltmp58:
.LBB3_8:                                @ %if.end21
                                        @   in Loop: Header=BB3_9 Depth=2
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_plus_uconst 36] [$sp+0]
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 0 32] $r7
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 32 32] $r5
	.loc	1 120 32 is_stmt 1              @ ludcmp/ludcmp.c:120:32
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	.loc	1 120 30 is_stmt 0              @ ludcmp/ludcmp.c:120:30
	mov	r1, r5
	.loc	1 120 32                        @ ludcmp/ludcmp.c:120:32
	ldr	r2, [r0, r4, lsl #3]!
	ldr	r3, [r0, #4]
	.loc	1 120 30                        @ ludcmp/ludcmp.c:120:30
	mov	r0, r7
	bl	__divdf3
	ldr	r2, [sp, #32]                   @ 4-byte Reload
.Ltmp59:
	.loc	1 111 5 is_stmt 1               @ ludcmp/ludcmp.c:111:5
	add	r6, r6, #400
.Ltmp60:
	.loc	1 120 26                        @ ludcmp/ludcmp.c:120:26
	str	r0, [r2, r4, lsl #3]!
	str	r1, [r2, #4]
.Ltmp61:
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_plus_uconst 36, DW_OP_deref_size 4, DW_OP_plus_uconst 1, DW_OP_stack_value] $sp
	.loc	1 0 26 is_stmt 0                @ ludcmp/ludcmp.c:0:26
	ldr	r2, [sp, #36]                   @ 4-byte Reload
.Ltmp62:
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r2
.LBB3_9:                                @ %for.cond7
                                        @   Parent Loop BB3_4 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB3_12 Depth 3
	@DEBUG_VALUE: ludcmp_test:j <- undef
	.loc	1 111 5 is_stmt 1               @ ludcmp/ludcmp.c:111:5
	cmp	r2, r9
	beq	.LBB3_13
.Ltmp63:
@ %bb.10:                               @ %for.body9
                                        @   in Loop: Header=BB3_9 Depth=2
	.loc	1 112 11                        @ ludcmp/ludcmp.c:112:11
	ldr	r0, .LCPI3_0
.Ltmp64:
	.loc	1 0 0 is_stmt 0                 @ ludcmp/ludcmp.c:0:0
	add	r2, r2, #1
.Ltmp65:
	@DEBUG_VALUE: ludcmp_test:j <- $r2
	.loc	1 112 11                        @ ludcmp/ludcmp.c:112:11
	mov	r1, #400
	.loc	1 114 12 is_stmt 1              @ ludcmp/ludcmp.c:114:12
	cmp	r4, #0
	str	r2, [sp, #36]                   @ 4-byte Spill
.Ltmp66:
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_plus_uconst 36] [$sp+0]
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_plus_uconst 36] [$sp+0]
	.loc	1 112 11                        @ ludcmp/ludcmp.c:112:11
	mla	r3, r2, r1, r0
	mov	r0, r3
	str	r3, [sp, #32]                   @ 4-byte Spill
	ldr	r7, [r0, r4, lsl #3]!
	ldr	r5, [r0, #4]
.Ltmp67:
	@DEBUG_VALUE: ludcmp_test:w <- undef
	.loc	1 114 12                        @ ludcmp/ludcmp.c:114:12
	beq	.LBB3_8
.Ltmp68:
@ %bb.11:                               @ %if.then13
                                        @   in Loop: Header=BB3_9 Depth=2
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_plus_uconst 36] [$sp+0]
	@DEBUG_VALUE: ludcmp_test:k <- 0
	.loc	1 0 12 is_stmt 0                @ ludcmp/ludcmp.c:0:12
	ldr	r9, [sp, #20]                   @ 4-byte Reload
.Ltmp69:
	@DEBUG_VALUE: ludcmp_test:n <- [DW_OP_LLVM_entry_value 1] $r0
	str	r6, [sp, #24]                   @ 4-byte Spill
.Ltmp70:
	@DEBUG_VALUE: ludcmp_test:k <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] undef
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 0 32] $r7
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 32 32] $r5
	.loc	1 116 9 is_stmt 1               @ ludcmp/ludcmp.c:116:9
	cmp	r4, #0
	beq	.LBB3_7
.Ltmp71:
.LBB3_12:                               @ %for.body16
                                        @   Parent Loop BB3_4 Depth=1
                                        @     Parent Loop BB3_9 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 32 32] $r5
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 0 32] $r7
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_plus_uconst 36] [$sp+0]
	@DEBUG_VALUE: ludcmp_test:w <- undef
	.loc	1 117 16                        @ ludcmp/ludcmp.c:117:16
	ldm	r6!, {r0, r1}
	.loc	1 117 37 is_stmt 0              @ ludcmp/ludcmp.c:117:37
	ldm	r9, {r2, r3}
	.loc	1 117 13                        @ ludcmp/ludcmp.c:117:13
	bl	__muldf3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r5
	bl	__subdf3
	mov	r7, r0
	mov	r5, r1
	.loc	1 116 9 is_stmt 1               @ ludcmp/ludcmp.c:116:9
	sub	r4, r4, #1
.Ltmp72:
	@DEBUG_VALUE: ludcmp_test:k <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 8, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] undef
	add	r9, r9, #400
.Ltmp73:
	@DEBUG_VALUE: ludcmp_test:k <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] undef
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 0 32] $r7
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 32 32] $r5
	.loc	1 116 9 is_stmt 0               @ ludcmp/ludcmp.c:116:9
	cmp	r4, #0
	bne	.LBB3_12
	b	.LBB3_7
.Ltmp74:
.LBB3_13:                               @ %for.end28
                                        @   in Loop: Header=BB3_4 Depth=1
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_plus_uconst 28, DW_OP_deref_size 4, DW_OP_plus_uconst 1, DW_OP_stack_value] $sp
	.loc	1 0 9                           @ ludcmp/ludcmp.c:0:9
	ldr	r6, [sp, #16]                   @ 4-byte Reload
	mov	r1, r4
	b	.LBB3_15
.Ltmp75:
.LBB3_14:                               @ %for.end47
                                        @   in Loop: Header=BB3_15 Depth=2
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 32 32] $r7
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 0 32] $r5
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_plus_uconst 32] [$sp+0]
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_plus_uconst 32, DW_OP_deref_size 4, DW_OP_plus_uconst 1, DW_OP_stack_value] $sp
	ldr	r6, [sp, #36]                   @ 4-byte Reload
.Ltmp76:
	.loc	1 131 30 is_stmt 1              @ ludcmp/ludcmp.c:131:30
	str	r5, [r4, #400]
	str	r7, [r4, #404]
	ldr	r9, [sp, #44]                   @ 4-byte Reload
	ldr	r4, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
.Ltmp77:
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r1
	.loc	1 124 5                         @ ludcmp/ludcmp.c:124:5
	add	r6, r6, #8
.Ltmp78:
.LBB3_15:                               @ %for.cond30
                                        @   Parent Loop BB3_4 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB3_17 Depth 3
	@DEBUG_VALUE: ludcmp_test:j <- undef
	.loc	1 124 5 is_stmt 0               @ ludcmp/ludcmp.c:124:5
	cmp	r1, r9
	beq	.LBB3_3
.Ltmp79:
@ %bb.16:                               @ %for.body32
                                        @   in Loop: Header=BB3_15 Depth=2
	.loc	1 125 11 is_stmt 1              @ ludcmp/ludcmp.c:125:11
	ldr	r0, [sp, #40]                   @ 4-byte Reload
.Ltmp80:
	.loc	1 0 0 is_stmt 0                 @ ludcmp/ludcmp.c:0:0
	add	r1, r1, #1
.Ltmp81:
	@DEBUG_VALUE: ludcmp_test:j <- $r1
	mov	r9, #0
.Ltmp82:
	@DEBUG_VALUE: ludcmp_test:n <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: ludcmp_test:k <- 0
	@DEBUG_VALUE: ludcmp_test:w <- undef
	str	r6, [sp, #36]                   @ 4-byte Spill
	str	r1, [sp, #32]                   @ 4-byte Spill
.Ltmp83:
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_plus_uconst 32] [$sp+0]
	.loc	1 125 11                        @ ludcmp/ludcmp.c:125:11
	add	r4, r0, r1, lsl #3
	ldr	r5, [r4, #400]
	ldr	r7, [r4, #404]
.Ltmp84:
	@DEBUG_VALUE: ludcmp_test:k <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_minus, DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] undef
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 0 32] $r5
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 32 32] $r7
	.loc	1 128 7 is_stmt 1               @ ludcmp/ludcmp.c:128:7
	cmp	r10, r9
	beq	.LBB3_14
.Ltmp85:
.LBB3_17:                               @ %for.body38
                                        @   Parent Loop BB3_4 Depth=1
                                        @     Parent Loop BB3_15 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 32 32] $r7
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 0 32] $r5
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_plus_uconst 32] [$sp+0]
	@DEBUG_VALUE: ludcmp_test:w <- undef
	.loc	1 129 14                        @ ludcmp/ludcmp.c:129:14
	mov	r1, r8
	.loc	1 129 39 is_stmt 0              @ ludcmp/ludcmp.c:129:39
	ldm	r6, {r2, r3}
	.loc	1 129 14                        @ ludcmp/ludcmp.c:129:14
	ldr	r0, [r1, r9]!
	ldr	r1, [r1, #4]
	.loc	1 129 11                        @ ludcmp/ludcmp.c:129:11
	bl	__muldf3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	mov	r1, r7
	bl	__subdf3
	mov	r5, r0
	mov	r7, r1
	.loc	1 128 7 is_stmt 1               @ ludcmp/ludcmp.c:128:7
	add	r9, r9, #8
.Ltmp86:
	@DEBUG_VALUE: ludcmp_test:k <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_minus, DW_OP_consts 8, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] undef
	add	r6, r6, #400
.Ltmp87:
	@DEBUG_VALUE: ludcmp_test:k <- [DW_OP_LLVM_arg 0, DW_OP_consts 8, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_minus, DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] undef
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 0 32] $r5
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 32 32] $r7
	.loc	1 128 7 is_stmt 0               @ ludcmp/ludcmp.c:128:7
	cmp	r10, r9
	bne	.LBB3_17
	b	.LBB3_14
.Ltmp88:
.LBB3_18:                               @ %for.end56
	@DEBUG_VALUE: ludcmp_test:i <- $r4
	.loc	1 135 12 is_stmt 1              @ ludcmp/ludcmp.c:135:12
	ldr	r1, .LCPI3_1
	mov	r4, #1
.Ltmp89:
	@DEBUG_VALUE: ludcmp_test:i <- 1
	ldm	r1, {r0, r1}
	.loc	1 135 10 is_stmt 0              @ ludcmp/ludcmp.c:135:10
	str	r1, [sp, #52]
	str	r0, [sp, #48]
	ldr	r0, [sp, #12]                   @ 4-byte Reload
.Ltmp90:
	.loc	1 138 9 is_stmt 1               @ ludcmp/ludcmp.c:138:9
	cmp	r0, #1
	movle	r0, r4
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, .LCPI3_0
	add	r8, r0, #400
	b	.LBB3_20
.Ltmp91:
.LBB3_19:                               @ %for.end71
                                        @   in Loop: Header=BB3_20 Depth=1
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 0 32] $r6
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 48, DW_OP_minus, DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $r9, $sp
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 32 32] $r5
	@DEBUG_VALUE: ludcmp_test:i <- $r4
	.loc	1 0 9 is_stmt 0                 @ ludcmp/ludcmp.c:0:9
	ldr	r9, [sp, #44]                   @ 4-byte Reload
.Ltmp92:
	add	r0, sp, #48
.Ltmp93:
	.loc	1 138 3                         @ ludcmp/ludcmp.c:138:3
	add	r8, r8, #400
.Ltmp94:
	.loc	1 145 12 is_stmt 1              @ ludcmp/ludcmp.c:145:12
	str	r6, [r0, r4, lsl #3]
	.loc	1 145 5 is_stmt 0               @ ludcmp/ludcmp.c:145:5
	add	r0, r0, r4, lsl #3
.Ltmp95:
	.loc	1 138 25 is_stmt 1              @ ludcmp/ludcmp.c:138:25
	add	r4, r4, #1
.Ltmp96:
	@DEBUG_VALUE: ludcmp_test:i <- $r4
	.loc	1 145 12                        @ ludcmp/ludcmp.c:145:12
	str	r5, [r0, #4]
.Ltmp97:
.LBB3_20:                               @ %for.cond58
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB3_22 Depth 2
	@DEBUG_VALUE: ludcmp_test:i <- $r4
	.loc	1 138 3                         @ ludcmp/ludcmp.c:138:3
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r4, r0
	beq	.LBB3_24
.Ltmp98:
@ %bb.21:                               @ %for.body60
                                        @   in Loop: Header=BB3_20 Depth=1
	@DEBUG_VALUE: ludcmp_test:i <- $r4
	.loc	1 139 9                         @ ludcmp/ludcmp.c:139:9
	ldr	r0, .LCPI3_1
	mov	r7, r4
	mov	r10, r8
	add	r9, sp, #48
.Ltmp99:
	@DEBUG_VALUE: ludcmp_test:n <- [DW_OP_LLVM_entry_value 1] $r0
	ldr	r6, [r0, r4, lsl #3]!
	ldr	r5, [r0, #4]
.Ltmp100:
	@DEBUG_VALUE: ludcmp_test:w <- undef
	@DEBUG_VALUE: ludcmp_test:j <- 0
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 48, DW_OP_minus, DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $r9, $sp
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 0 32] $r6
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 32 32] $r5
	.loc	1 142 5                         @ ludcmp/ludcmp.c:142:5
	cmp	r7, #0
	beq	.LBB3_19
.Ltmp101:
.LBB3_22:                               @ %for.body64
                                        @   Parent Loop BB3_20 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 0 32] $r6
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 48, DW_OP_minus, DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $r9, $sp
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 32 32] $r5
	@DEBUG_VALUE: ludcmp_test:i <- $r4
	@DEBUG_VALUE: ludcmp_test:w <- undef
	.loc	1 143 12                        @ ludcmp/ludcmp.c:143:12
	ldm	r10!, {r0, r1}
	.loc	1 143 33 is_stmt 0              @ ludcmp/ludcmp.c:143:33
	ldm	r9!, {r2, r3}
.Ltmp102:
	.loc	1 143 9                         @ ludcmp/ludcmp.c:143:9
	bl	__muldf3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r5
	bl	__subdf3
	mov	r6, r0
	mov	r5, r1
	.loc	1 142 5 is_stmt 1               @ ludcmp/ludcmp.c:142:5
	sub	r7, r7, #1
.Ltmp103:
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 48, DW_OP_minus, DW_OP_consts 8, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r9, $sp
	@DEBUG_VALUE: ludcmp_test:j <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 48, DW_OP_minus, DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $r9, $sp
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 0 32] $r6
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 32 32] $r5
	.loc	1 142 5 is_stmt 0               @ ludcmp/ludcmp.c:142:5
	cmp	r7, #0
	bne	.LBB3_22
	b	.LBB3_19
.Ltmp104:
.LBB3_23:
	@DEBUG_VALUE: ludcmp_test:i <- $r4
	.loc	1 0 5                           @ ludcmp/ludcmp.c:0:5
	mov	r5, #1
	b	.LBB3_31
.Ltmp105:
.LBB3_24:                               @ %for.end75
	@DEBUG_VALUE: ludcmp_test:i <- $r4
	ldr	r4, .LCPI3_0
.Ltmp106:
	mov	r1, #400
	.loc	1 148 28 is_stmt 1              @ ludcmp/ludcmp.c:148:28
	mla	r0, r9, r1, r4
	add	r1, sp, #48
	ldr	r2, [r0, r9, lsl #3]!
	ldr	r3, [r0, #4]
	.loc	1 148 19 is_stmt 0              @ ludcmp/ludcmp.c:148:19
	ldr	r0, [r1, r9, lsl #3]
	add	r1, r1, r9, lsl #3
	ldr	r1, [r1, #4]
	.loc	1 148 26                        @ ludcmp/ludcmp.c:148:26
	bl	__divdf3
	.loc	1 148 3                         @ ludcmp/ludcmp.c:148:3
	ldr	r2, .LCPI3_2
	.loc	1 148 17                        @ ludcmp/ludcmp.c:148:17
	str	r0, [r2, r9, lsl #3]!
	mov	r0, #408
.Ltmp107:
	@DEBUG_VALUE: ludcmp_test:i <- [DW_OP_plus_uconst 44, DW_OP_deref_size 4, DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $sp
	str	r1, [r2, #4]
.Ltmp108:
	.loc	1 151 9 is_stmt 1               @ ludcmp/ludcmp.c:151:9
	mla	r1, r9, r0, r4
	mov	r4, r2
	sub	r7, r1, #400
	b	.LBB3_26
.Ltmp109:
.LBB3_25:                               @ %for.end95
                                        @   in Loop: Header=BB3_26 Depth=1
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 32 32] $r6
	@DEBUG_VALUE: ludcmp_test:j <- $r9
	@DEBUG_VALUE: ludcmp_test:i <- $r10
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 0 32] $r5
	.loc	1 158 25                        @ ludcmp/ludcmp.c:158:25
	ldr	r1, .LCPI3_0
	mov	r2, #400
	mla	r0, r10, r2, r1
	.loc	1 158 23 is_stmt 0              @ ludcmp/ludcmp.c:158:23
	mov	r1, r6
	.loc	1 158 25                        @ ludcmp/ludcmp.c:158:25
	ldr	r2, [r0, r10, lsl #3]!
	ldr	r3, [r0, #4]
	.loc	1 158 23                        @ ludcmp/ludcmp.c:158:23
	mov	r0, r5
	bl	__divdf3
	.loc	1 158 19                        @ ludcmp/ludcmp.c:158:19
	ldr	r2, .LCPI3_2
.Ltmp110:
	.loc	1 151 3 is_stmt 1               @ ludcmp/ludcmp.c:151:3
	sub	r7, r7, #408
.Ltmp111:
	@DEBUG_VALUE: ludcmp_test:i <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $r10
	.loc	1 0 3 is_stmt 0                 @ ludcmp/ludcmp.c:0:3
	mov	r9, r10
.Ltmp112:
	@DEBUG_VALUE: ludcmp_test:n <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: ludcmp_test:i <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $r9
	.loc	1 158 19 is_stmt 1              @ ludcmp/ludcmp.c:158:19
	str	r0, [r2, r10, lsl #3]!
	ldr	r4, [sp, #40]                   @ 4-byte Reload
	str	r1, [r2, #4]
.Ltmp113:
	.loc	1 151 3                         @ ludcmp/ludcmp.c:151:3
	sub	r4, r4, #8
.Ltmp114:
.LBB3_26:                               @ %for.cond81
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB3_28 Depth 2
	@DEBUG_VALUE: ludcmp_test:i <- undef
	.loc	1 151 3 is_stmt 0               @ ludcmp/ludcmp.c:151:3
	cmp	r9, #1
	blt	.LBB3_30
.Ltmp115:
@ %bb.27:                               @ %for.body83
                                        @   in Loop: Header=BB3_26 Depth=1
	.loc	1 0 0                           @ ludcmp/ludcmp.c:0:0
	sub	r10, r9, #1
.Ltmp116:
	@DEBUG_VALUE: ludcmp_test:i <- $r10
	add	r0, sp, #48
	mov	r8, r7
	str	r4, [sp, #40]                   @ 4-byte Spill
.Ltmp117:
	.loc	1 152 9 is_stmt 1               @ ludcmp/ludcmp.c:152:9
	ldr	r5, [r0, r10, lsl #3]
	add	r0, r0, r10, lsl #3
	ldr	r6, [r0, #4]
.Ltmp118:
	@DEBUG_VALUE: ludcmp_test:w <- undef
	@DEBUG_VALUE: ludcmp_test:j <- $r9
.LBB3_28:                               @ %for.cond86
                                        @   Parent Loop BB3_26 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	@DEBUG_VALUE: ludcmp_test:j <- $r9
	@DEBUG_VALUE: ludcmp_test:i <- $r10
	@DEBUG_VALUE: ludcmp_test:j <- $r9
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 0 32] $r5
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 32 32] $r6
	.loc	1 155 5                         @ ludcmp/ludcmp.c:155:5
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	cmp	r9, r0
	bgt	.LBB3_25
.Ltmp119:
@ %bb.29:                               @ %for.body88
                                        @   in Loop: Header=BB3_28 Depth=2
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 32 32] $r6
	@DEBUG_VALUE: ludcmp_test:j <- $r9
	@DEBUG_VALUE: ludcmp_test:i <- $r10
	@DEBUG_VALUE: ludcmp_test:w <- [DW_OP_LLVM_fragment 0 32] $r5
	@DEBUG_VALUE: ludcmp_test:w <- undef
	.loc	1 156 12                        @ ludcmp/ludcmp.c:156:12
	ldm	r8!, {r0, r1}
	.loc	1 156 33 is_stmt 0              @ ludcmp/ludcmp.c:156:33
	ldm	r4!, {r2, r3}
	.loc	1 156 9                         @ ludcmp/ludcmp.c:156:9
	bl	__muldf3
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	mov	r1, r6
	bl	__subdf3
	mov	r5, r0
	mov	r6, r1
	.loc	1 155 31 is_stmt 1              @ ludcmp/ludcmp.c:155:31
	add	r9, r9, #1
.Ltmp120:
	@DEBUG_VALUE: ludcmp_test:n <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: ludcmp_test:j <- $r9
	.loc	1 0 31 is_stmt 0                @ ludcmp/ludcmp.c:0:31
	b	.LBB3_28
.Ltmp121:
.LBB3_30:
	mov	r5, #0
.LBB3_31:                               @ %return
	.loc	1 162 1 is_stmt 1               @ ludcmp/ludcmp.c:162:1
	mov	r0, r5
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	bx	lr
.Ltmp122:
	.p2align	2
@ %bb.32:
	.loc	1 0 1 is_stmt 0                 @ ludcmp/ludcmp.c:0:1
.LCPI3_0:
	.long	ludcmp_a
.LCPI3_1:
	.long	ludcmp_b
.LCPI3_2:
	.long	ludcmp_x
.Lfunc_end3:
	.size	ludcmp_test, .Lfunc_end3-ludcmp_test
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ludcmp_main                     @ -- Begin function ludcmp_main
	.p2align	2
	.type	ludcmp_main,%function
	.code	32                              @ @ludcmp_main
ludcmp_main:
.Lfunc_begin4:
	.loc	1 165 0 is_stmt 1               @ ludcmp/ludcmp.c:165:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp123:
	@DEBUG_VALUE: ludcmp_main:n <- 5
	@DEBUG_VALUE: ludcmp_main:eps <- 1.000000e+00
	mov	r3, #267386880
.Ltmp124:
	.loc	1 168 19 prologue_end           @ ludcmp/ludcmp.c:168:19
	mov	r0, #5
	mov	r2, #0
	orr	r3, r3, #805306368
	bl	ludcmp_test
	.loc	1 168 17 is_stmt 0              @ ludcmp/ludcmp.c:168:17
	ldr	r1, .LCPI4_0
	str	r0, [r1]
	.loc	1 169 1 is_stmt 1               @ ludcmp/ludcmp.c:169:1
	pop	{r11, lr}
	bx	lr
.Ltmp125:
	.p2align	2
@ %bb.1:
	.loc	1 0 1 is_stmt 0                 @ ludcmp/ludcmp.c:0:1
.LCPI4_0:
	.long	ludcmp_chkerr
.Lfunc_end4:
	.size	ludcmp_main, .Lfunc_end4-ludcmp_main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	main                            @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                              @ @main
main:
.Lfunc_begin5:
	.loc	1 172 0 is_stmt 1               @ ludcmp/ludcmp.c:172:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp126:
	.loc	1 173 3 prologue_end            @ ludcmp/ludcmp.c:173:3
	bl	ludcmp_init
	.loc	1 174 3                         @ ludcmp/ludcmp.c:174:3
	bl	ludcmp_main
	.loc	1 176 12                        @ ludcmp/ludcmp.c:176:12
	bl	ludcmp_return
	.loc	1 176 3 is_stmt 0               @ ludcmp/ludcmp.c:176:3
	pop	{r11, lr}
	bx	lr
.Ltmp127:
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__absvdi2                       @ -- Begin function __absvdi2
	.p2align	2
	.type	__absvdi2,%function
	.code	32                              @ @__absvdi2
__absvdi2:
.Lfunc_begin6:
	.file	2 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../absvdi2.c" md5 0xf0fa545ed84eab29322431dd903e1bd2
	.loc	2 23 0 is_stmt 1                @ ../absvdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	2 25 11 prologue_end            @ ../absvdi2.c:25:11
	eor	r2, r1, #-2147483648
	orrs	r2, r0, r2
	.loc	2 25 9 is_stmt 0                @ ../absvdi2.c:25:9
	beq	.LBB6_2
@ %bb.1:                                @ %if.end
	.loc	2 28 20 is_stmt 1               @ ../absvdi2.c:28:20
	adds	r0, r0, r1, asr #31
	adc	r2, r1, r1, asr #31
	eor	r0, r0, r1, asr #31
	eor	r1, r2, r1, asr #31
	.loc	2 28 5 is_stmt 0                @ ../absvdi2.c:28:5
	bx	lr
.LBB6_2:                                @ %if.then
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	.loc	2 26 9 is_stmt 1                @ ../absvdi2.c:26:9
	ldr	r0, .LCPI6_0
	ldr	r2, .LCPI6_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.Ltmp128:
	.p2align	2
@ %bb.3:
	.loc	2 0 9 is_stmt 0                 @ ../absvdi2.c:0:9
.LCPI6_0:
	.long	.L.str
.LCPI6_1:
	.long	.L__func__.__absvdi2
.Lfunc_end6:
	.size	__absvdi2, .Lfunc_end6-__absvdi2
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
.Lfunc_begin7:
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
.Lfunc_end7:
	.size	compilerrt_abort_impl, .Lfunc_end7-compilerrt_abort_impl
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__absvsi2                       @ -- Begin function __absvsi2
	.p2align	2
	.type	__absvsi2,%function
	.code	32                              @ @__absvsi2
__absvsi2:
.Lfunc_begin8:
	.file	3 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../absvsi2.c" md5 0x4c623fefc2c7ed3929c6e73514b667d1
	.loc	3 23 0 is_stmt 1                @ ../absvsi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	3 25 9 prologue_end             @ ../absvsi2.c:25:9
	cmp	r0, #-2147483648
	beq	.LBB8_2
@ %bb.1:                                @ %if.end
	.loc	3 28 20                         @ ../absvsi2.c:28:20
	cmp	r0, #0
	rsbmi	r0, r0, #0
	.loc	3 28 5 is_stmt 0                @ ../absvsi2.c:28:5
	bx	lr
.LBB8_2:                                @ %if.then
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	.loc	3 26 9 is_stmt 1                @ ../absvsi2.c:26:9
	ldr	r0, .LCPI8_0
	ldr	r2, .LCPI8_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.Ltmp129:
	.p2align	2
@ %bb.3:
	.loc	3 0 9 is_stmt 0                 @ ../absvsi2.c:0:9
.LCPI8_0:
	.long	.L.str.1
.LCPI8_1:
	.long	.L__func__.__absvsi2
.Lfunc_end8:
	.size	__absvsi2, .Lfunc_end8-__absvsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__addvdi3                       @ -- Begin function __addvdi3
	.p2align	2
	.type	__addvdi3,%function
	.code	32                              @ @__addvdi3
__addvdi3:
.Lfunc_begin9:
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
	mov	lr, r0
.Ltmp130:
	.loc	4 24 27 prologue_end            @ ../addvdi3.c:24:27
	adds	r0, r0, r2
	mov	r12, r1
	adc	r1, r1, r3
	.loc	4 25 9                          @ ../addvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB9_3
@ %bb.1:                                @ %if.then
	.loc	4 27 15                         @ ../addvdi3.c:27:15
	subs	r2, r0, lr
	sbcs	r2, r1, r12
	.loc	4 27 13 is_stmt 0               @ ../addvdi3.c:27:13
	bge	.LBB9_4
@ %bb.2:                                @ %if.then2
	.loc	4 28 13 is_stmt 1               @ ../addvdi3.c:28:13
	ldr	r0, .LCPI9_0
	ldr	r2, .LCPI9_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB9_3:                                @ %if.else
	.loc	4 32 15                         @ ../addvdi3.c:32:15
	subs	r2, r0, lr
	sbcs	r2, r1, r12
	.loc	4 32 13 is_stmt 0               @ ../addvdi3.c:32:13
	bge	.LBB9_5
.LBB9_4:                                @ %if.end6
	.loc	4 35 5 is_stmt 1                @ ../addvdi3.c:35:5
	pop	{r11, lr}
	bx	lr
.LBB9_5:                                @ %if.then4
	.loc	4 33 13                         @ ../addvdi3.c:33:13
	ldr	r0, .LCPI9_0
	ldr	r2, .LCPI9_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.Ltmp131:
	.p2align	2
@ %bb.6:
	.loc	4 0 13 is_stmt 0                @ ../addvdi3.c:0:13
.LCPI9_0:
	.long	.L.str.2
.LCPI9_1:
	.long	.L__func__.__addvdi3
.Lfunc_end9:
	.size	__addvdi3, .Lfunc_end9-__addvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__addvsi3                       @ -- Begin function __addvsi3
	.p2align	2
	.type	__addvsi3,%function
	.code	32                              @ @__addvsi3
__addvsi3:
.Lfunc_begin10:
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
	mov	r2, r0
.Ltmp132:
	.loc	5 24 27 prologue_end            @ ../addvsi3.c:24:27
	add	r0, r0, r1
	.loc	5 25 9                          @ ../addvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB10_3
@ %bb.1:                                @ %if.then
	.loc	5 27 13                         @ ../addvsi3.c:27:13
	cmp	r0, r2
	bge	.LBB10_4
@ %bb.2:                                @ %if.then2
	.loc	5 28 13                         @ ../addvsi3.c:28:13
	ldr	r0, .LCPI10_0
	ldr	r2, .LCPI10_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB10_3:                               @ %if.else
	.loc	5 32 13                         @ ../addvsi3.c:32:13
	cmp	r0, r2
	bge	.LBB10_5
.LBB10_4:                               @ %if.end6
	.loc	5 35 5                          @ ../addvsi3.c:35:5
	pop	{r11, lr}
	bx	lr
.LBB10_5:                               @ %if.then4
	.loc	5 33 13                         @ ../addvsi3.c:33:13
	ldr	r0, .LCPI10_0
	ldr	r2, .LCPI10_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.Ltmp133:
	.p2align	2
@ %bb.6:
	.loc	5 0 13 is_stmt 0                @ ../addvsi3.c:0:13
.LCPI10_0:
	.long	.L.str.3
.LCPI10_1:
	.long	.L__func__.__addvsi3
.Lfunc_end10:
	.size	__addvsi3, .Lfunc_end10-__addvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ashldi3                       @ -- Begin function __ashldi3
	.p2align	2
	.type	__ashldi3,%function
	.code	32                              @ @__ashldi3
__ashldi3:
.Lfunc_begin11:
	.file	6 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ashldi3.c" md5 0xae5236ddcefaf3e5efc4feba69d334b1
	.loc	6 25 0 is_stmt 1                @ ../ashldi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp134:
	.loc	6 30 9 prologue_end             @ ../ashldi3.c:30:9
	tst	r2, #32
	.loc	6 29 15                         @ ../ashldi3.c:29:15
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	6 30 9                          @ ../ashldi3.c:30:9
	bne	.LBB11_3
@ %bb.1:                                @ %if.else
	.loc	6 37 13                         @ ../ashldi3.c:37:13
	cmp	r2, #0
	beq	.LBB11_5
@ %bb.2:                                @ %if.end
	.loc	6 40 34                         @ ../ashldi3.c:40:34
	ldr	r1, [sp, #12]
	.loc	6 39 33                         @ ../ashldi3.c:39:33
	ldr	r0, [sp, #8]
	.loc	6 39 37 is_stmt 0               @ ../ashldi3.c:39:37
	lsl	r3, r0, r2
	.loc	6 40 39 is_stmt 1               @ ../ashldi3.c:40:39
	lsl	r1, r1, r2
	.loc	6 40 77 is_stmt 0               @ ../ashldi3.c:40:77
	rsb	r2, r2, #32
	.loc	6 40 45                         @ ../ashldi3.c:40:45
	orr	r0, r1, r0, lsr r2
	.loc	6 39 23 is_stmt 1               @ ../ashldi3.c:39:23
	str	r3, [sp]
	b	.LBB11_4
.LBB11_3:                               @ %if.then
	.loc	6 33 33                         @ ../ashldi3.c:33:33
	ldr	r1, [sp, #8]
	mov	r0, #0
	.loc	6 32 22                         @ ../ashldi3.c:32:22
	str	r0, [sp]
	.loc	6 33 43                         @ ../ashldi3.c:33:43
	sub	r0, r2, #32
	.loc	6 33 37 is_stmt 0               @ ../ashldi3.c:33:37
	lsl	r0, r1, r0
.LBB11_4:                               @ %if.end18
	.loc	6 0 0                           @ ../ashldi3.c:0:0
	str	r0, [sp, #4]
	.loc	6 42 19 is_stmt 1               @ ../ashldi3.c:42:19
	ldm	sp, {r0, r1}
.LBB11_5:                               @ %return
	.loc	6 43 1                          @ ../ashldi3.c:43:1
	add	sp, sp, #16
	bx	lr
.Ltmp135:
.Lfunc_end11:
	.size	__ashldi3, .Lfunc_end11-__ashldi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ashrdi3                       @ -- Begin function __ashrdi3
	.p2align	2
	.type	__ashrdi3,%function
	.code	32                              @ @__ashrdi3
__ashrdi3:
.Lfunc_begin12:
	.file	7 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ashrdi3.c" md5 0xdf60b7a82095e7d7b5c11e1095a5679a
	.loc	7 25 0                          @ ../ashrdi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp136:
	.loc	7 30 9 prologue_end             @ ../ashrdi3.c:30:9
	tst	r2, #32
	.loc	7 29 15                         @ ../ashrdi3.c:29:15
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	7 30 9                          @ ../ashrdi3.c:30:9
	bne	.LBB12_3
@ %bb.1:                                @ %if.else
	.loc	7 38 13                         @ ../ashrdi3.c:38:13
	cmp	r2, #0
	beq	.LBB12_5
@ %bb.2:                                @ %if.end
	.loc	7 40 34                         @ ../ashrdi3.c:40:34
	ldr	r1, [sp, #12]
	.loc	7 41 72                         @ ../ashrdi3.c:41:72
	ldr	r0, [sp, #8]
	.loc	7 40 39                         @ ../ashrdi3.c:40:39
	asr	r3, r1, r2
	.loc	7 40 24 is_stmt 0               @ ../ashrdi3.c:40:24
	str	r3, [sp, #4]
	.loc	7 41 55 is_stmt 1               @ ../ashrdi3.c:41:55
	rsb	r3, r2, #32
	.loc	7 41 38 is_stmt 0               @ ../ashrdi3.c:41:38
	lsl	r1, r1, r3
	.loc	7 41 61                         @ ../ashrdi3.c:41:61
	orr	r0, r1, r0, lsr r2
	b	.LBB12_4
.LBB12_3:                               @ %if.then
	.loc	7 33 33 is_stmt 1               @ ../ashrdi3.c:33:33
	ldr	r0, [sp, #12]
	.loc	7 33 38 is_stmt 0               @ ../ashrdi3.c:33:38
	asr	r1, r0, #31
	.loc	7 33 23                         @ ../ashrdi3.c:33:23
	str	r1, [sp, #4]
	.loc	7 34 43 is_stmt 1               @ ../ashrdi3.c:34:43
	sub	r1, r2, #32
	.loc	7 34 37 is_stmt 0               @ ../ashrdi3.c:34:37
	asr	r0, r0, r1
.LBB12_4:                               @ %if.end21
	.loc	7 0 0                           @ ../ashrdi3.c:0:0
	str	r0, [sp]
	.loc	7 43 19 is_stmt 1               @ ../ashrdi3.c:43:19
	ldm	sp, {r0, r1}
.LBB12_5:                               @ %return
	.loc	7 44 1                          @ ../ashrdi3.c:44:1
	add	sp, sp, #16
	bx	lr
.Ltmp137:
.Lfunc_end12:
	.size	__ashrdi3, .Lfunc_end12-__ashrdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__clzdi2                        @ -- Begin function __clzdi2
	.p2align	2
	.type	__clzdi2,%function
	.code	32                              @ @__clzdi2
__clzdi2:
.Lfunc_begin13:
	.file	8 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../clzdi2.c" md5 0x901c40e0319a50689080965b20695c3e
	.loc	8 23 0                          @ ../clzdi2.c:23:0
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
	sub	sp, sp, #8
.Ltmp138:
	.loc	8 27 42 prologue_end            @ ../clzdi2.c:27:42
	cmp	r1, #0
	.loc	8 25 11                         @ ../clzdi2.c:25:11
	stm	sp, {r0, r1}
	mov	r4, r1
	.loc	8 27 42                         @ ../clzdi2.c:27:42
	movne	r0, r1
	.loc	8 27 12 is_stmt 0               @ ../clzdi2.c:27:12
	cmp	r0, #0
	beq	.LBB13_2
@ %bb.1:                                @ %cond.false
	bl	__clzsi2
	b	.LBB13_3
.LBB13_2:
	.loc	8 0 12                          @ ../clzdi2.c:0:12
	mov	r0, #32
.LBB13_3:                               @ %cond.end
	.loc	8 27 59                         @ ../clzdi2.c:27:59
	cmp	r4, #0
	addeq	r0, r0, #32
	.loc	8 27 5                          @ ../clzdi2.c:27:5
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp139:
.Lfunc_end13:
	.size	__clzdi2, .Lfunc_end13-__clzdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__clzsi2                        @ -- Begin function __clzsi2
	.p2align	2
	.type	__clzsi2,%function
	.code	32                              @ @__clzsi2
__clzsi2:
.Lfunc_begin14:
	.file	9 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../clzsi2.c" md5 0x9b0156c55102d3143e17bdf85bafbc30
	.loc	9 23 0 is_stmt 1                @ ../clzsi2.c:23:0
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
	mov	r12, #0
	cmp	r0, #65536
	mov	r2, #16
	mov	r3, #65280
	movlo	r12, #1
.Ltmp140:
	.loc	9 26 14 prologue_end            @ ../clzsi2.c:26:14
	sub	r2, r2, r12, lsl #4
	.loc	9 29 13                         @ ../clzsi2.c:29:13
	and	r3, r3, r0, lsr r2
	.loc	9 26 7                          @ ../clzsi2.c:26:7
	lsr	r0, r0, r2
	mov	r2, #240
	.loc	9 29 13                         @ ../clzsi2.c:29:13
	rsbs	r1, r3, #0
	adc	lr, r3, r1
	mov	r3, #8
	.loc	9 30 13                         @ ../clzsi2.c:30:13
	sub	r3, r3, lr, lsl #3
	.loc	9 33 13                         @ ../clzsi2.c:33:13
	and	r2, r2, r0, lsr r3
	.loc	9 30 7                          @ ../clzsi2.c:30:7
	lsr	r0, r0, r3
	mov	r3, #12
	.loc	9 33 13                         @ ../clzsi2.c:33:13
	rsbs	r1, r2, #0
	adc	r1, r2, r1
	mov	r2, #4
	.loc	9 34 13                         @ ../clzsi2.c:34:13
	sub	r2, r2, r1, lsl #2
	.loc	9 37 13                         @ ../clzsi2.c:37:13
	and	r3, r3, r0, lsr r2
	.loc	9 34 7                          @ ../clzsi2.c:34:7
	lsr	r0, r0, r2
	.loc	9 37 13                         @ ../clzsi2.c:37:13
	rsbs	r4, r3, #0
	adc	r3, r3, r4
	mov	r4, #2
	.loc	9 38 13                         @ ../clzsi2.c:38:13
	sub	r5, r4, r3, lsl #1
	.loc	9 52 20                         @ ../clzsi2.c:52:20
	sub	r2, r4, r0, lsr r5
	.loc	9 38 7                          @ ../clzsi2.c:38:7
	lsr	r0, r0, r5
	mvn	r4, #1
	.loc	9 52 37                         @ ../clzsi2.c:52:37
	orr	r0, r4, r0, lsr #1
	add	r0, r0, #1
	.loc	9 52 25 is_stmt 0               @ ../clzsi2.c:52:25
	and	r0, r2, r0
	.loc	9 25 40 is_stmt 1               @ ../clzsi2.c:25:40
	lsl	r2, r12, #4
	.loc	9 31 7                          @ ../clzsi2.c:31:7
	orr	r2, r2, lr, lsl #3
	.loc	9 35 7                          @ ../clzsi2.c:35:7
	orr	r1, r2, r1, lsl #2
	.loc	9 39 7                          @ ../clzsi2.c:39:7
	orr	r1, r1, r3, lsl #1
	.loc	9 52 14                         @ ../clzsi2.c:52:14
	add	r0, r1, r0
	.loc	9 52 5 is_stmt 0                @ ../clzsi2.c:52:5
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp141:
.Lfunc_end14:
	.size	__clzsi2, .Lfunc_end14-__clzsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__cmpdi2                        @ -- Begin function __cmpdi2
	.p2align	2
	.type	__cmpdi2,%function
	.code	32                              @ @__cmpdi2
__cmpdi2:
.Lfunc_begin15:
	.file	10 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../cmpdi2.c" md5 0x79ec8a4b383c8374d228cd0869637319
	.loc	10 24 0 is_stmt 1               @ ../cmpdi2.c:24:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp142:
	.loc	10 26 11 prologue_end           @ ../cmpdi2.c:26:11
	str	r0, [sp, #8]
	mov	r0, #0
	.loc	10 29 9                         @ ../cmpdi2.c:29:9
	cmp	r1, r3
	.loc	10 26 11                        @ ../cmpdi2.c:26:11
	str	r1, [sp, #12]
	.loc	10 28 11                        @ ../cmpdi2.c:28:11
	stm	sp, {r2, r3}
	.loc	10 29 9                         @ ../cmpdi2.c:29:9
	blt	.LBB15_4
@ %bb.1:                                @ %if.end
	.loc	10 31 24                        @ ../cmpdi2.c:31:24
	ldr	r1, [sp, #4]
	.loc	10 31 13 is_stmt 0              @ ../cmpdi2.c:31:13
	ldr	r2, [sp, #12]
	.loc	10 31 9                         @ ../cmpdi2.c:31:9
	cmp	r2, r1
	movgt	r0, #2
	.loc	10 38 1 is_stmt 1               @ ../cmpdi2.c:38:1
	addgt	sp, sp, #16
	bxgt	lr
.LBB15_2:                               @ %if.end10
	.loc	10 33 23                        @ ../cmpdi2.c:33:23
	ldr	r1, [sp]
	.loc	10 33 13 is_stmt 0              @ ../cmpdi2.c:33:13
	ldr	r2, [sp, #8]
	.loc	10 33 9                         @ ../cmpdi2.c:33:9
	cmp	r2, r1
	blo	.LBB15_4
@ %bb.3:                                @ %if.end16
	.loc	10 35 23 is_stmt 1              @ ../cmpdi2.c:35:23
	ldr	r0, [sp]
	.loc	10 35 13 is_stmt 0              @ ../cmpdi2.c:35:13
	ldr	r1, [sp, #8]
	.loc	10 35 9                         @ ../cmpdi2.c:35:9
	cmp	r1, r0
	mov	r0, #2
	movls	r0, #1
.LBB15_4:                               @ %return
	.loc	10 38 1 is_stmt 1               @ ../cmpdi2.c:38:1
	add	sp, sp, #16
	bx	lr
.Ltmp143:
.Lfunc_end15:
	.size	__cmpdi2, .Lfunc_end15-__cmpdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__aeabi_lcmp                    @ -- Begin function __aeabi_lcmp
	.p2align	2
	.type	__aeabi_lcmp,%function
	.code	32                              @ @__aeabi_lcmp
__aeabi_lcmp:
.Lfunc_begin16:
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
.Ltmp144:
	.loc	10 48 9 prologue_end            @ ../cmpdi2.c:48:9
	bl	__cmpdi2
	.loc	10 48 24 is_stmt 0              @ ../cmpdi2.c:48:24
	sub	r0, r0, #1
	.loc	10 48 2                         @ ../cmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp145:
.Lfunc_end16:
	.size	__aeabi_lcmp, .Lfunc_end16-__aeabi_lcmp
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ctzdi2                        @ -- Begin function __ctzdi2
	.p2align	2
	.type	__ctzdi2,%function
	.code	32                              @ @__ctzdi2
__ctzdi2:
.Lfunc_begin17:
	.file	11 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ctzdi2.c" md5 0x0415a3f61808ca646548bc24b48a844a
	.loc	11 23 0 is_stmt 1               @ ../ctzdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
.Ltmp146:
	.loc	11 27 41 prologue_end           @ ../ctzdi2.c:27:41
	cmp	r0, #0
	.loc	11 25 11                        @ ../ctzdi2.c:25:11
	stm	sp, {r0, r1}
	.loc	11 27 41                        @ ../ctzdi2.c:27:41
	movne	r1, r0
	.loc	11 27 12 is_stmt 0              @ ../ctzdi2.c:27:12
	cmp	r1, #0
	beq	.LBB17_2
@ %bb.1:                                @ %cond.false
	sub	r2, r1, #1
	bic	r1, r2, r1
	ldr	r2, .LCPI17_0
	and	r2, r2, r1, lsr #1
	sub	r1, r1, r2
	ldr	r2, .LCPI17_1
	and	r3, r2, r1, lsr #2
	and	r1, r1, r2
	ldr	r2, .LCPI17_2
	add	r1, r1, r3
	add	r1, r1, r1, lsr #4
	and	r1, r1, r2
	ldr	r2, .LCPI17_3
	mul	r3, r1, r2
	lsr	r1, r3, #24
	b	.LBB17_3
.LBB17_2:
	.loc	11 0 12                         @ ../ctzdi2.c:0:12
	mov	r1, #32
.LBB17_3:                               @ %cond.end
	.loc	11 27 59                        @ ../ctzdi2.c:27:59
	cmp	r0, #0
	addeq	r1, r1, #32
	.loc	11 27 5                         @ ../ctzdi2.c:27:5
	mov	r0, r1
	add	sp, sp, #8
	bx	lr
.Ltmp147:
	.p2align	2
@ %bb.4:
	.loc	11 0 5                          @ ../ctzdi2.c:0:5
.LCPI17_0:
	.long	1431655765                      @ 0x55555555
.LCPI17_1:
	.long	858993459                       @ 0x33333333
.LCPI17_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI17_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end17:
	.size	__ctzdi2, .Lfunc_end17-__ctzdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ctzsi2                        @ -- Begin function __ctzsi2
	.p2align	2
	.type	__ctzsi2,%function
	.code	32                              @ @__ctzsi2
__ctzsi2:
.Lfunc_begin18:
	.file	12 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ctzsi2.c" md5 0x0372a2c6647eddaa73c0b61d8d03c3b1
	.loc	12 23 0 is_stmt 1               @ ../ctzsi2.c:23:0
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
	mov	r1, #255
	orr	r1, r1, #65280
.Ltmp148:
	.loc	12 25 20 prologue_end           @ ../ctzsi2.c:25:20
	and	r1, r0, r1
	rsbs	r2, r1, #0
	adc	r1, r1, r2
	mov	r2, #255
	.loc	12 25 40 is_stmt 0              @ ../ctzsi2.c:25:40
	lsl	lr, r1, #4
	.loc	12 29 13 is_stmt 1              @ ../ctzsi2.c:29:13
	and	r2, r2, r0, lsr lr
	.loc	12 26 7                         @ ../ctzsi2.c:26:7
	lsr	r0, r0, lr
	.loc	12 29 13                        @ ../ctzsi2.c:29:13
	rsbs	r3, r2, #0
	adc	r12, r2, r3
	mov	r2, #15
	.loc	12 29 29 is_stmt 0              @ ../ctzsi2.c:29:29
	lsl	r3, r12, #3
	.loc	12 33 13 is_stmt 1              @ ../ctzsi2.c:33:13
	and	r2, r2, r0, lsr r3
	.loc	12 30 7                         @ ../ctzsi2.c:30:7
	lsr	r0, r0, r3
	mov	r3, #3
	.loc	12 33 13                        @ ../ctzsi2.c:33:13
	rsbs	r1, r2, #0
	adc	r1, r2, r1
	.loc	12 33 27 is_stmt 0              @ ../ctzsi2.c:33:27
	lsl	r2, r1, #2
	.loc	12 37 13 is_stmt 1              @ ../ctzsi2.c:37:13
	and	r3, r3, r0, lsr r2
	.loc	12 34 7                         @ ../ctzsi2.c:34:7
	lsr	r0, r0, r2
	mvn	r2, #1
	.loc	12 37 13                        @ ../ctzsi2.c:37:13
	rsbs	r4, r3, #0
	adc	r3, r3, r4
	.loc	12 37 26 is_stmt 0              @ ../ctzsi2.c:37:26
	lsl	r4, r3, #1
	.loc	12 56 44 is_stmt 1              @ ../ctzsi2.c:56:44
	orr	r2, r2, r0, lsr r4
	.loc	12 38 7                         @ ../ctzsi2.c:38:7
	lsr	r0, r0, r4
	mov	r4, #1
	.loc	12 56 25                        @ ../ctzsi2.c:56:25
	and	r0, r4, r0, lsr #1
	.loc	12 56 44 is_stmt 0              @ ../ctzsi2.c:56:44
	add	r2, r2, #1
	.loc	12 56 20                        @ ../ctzsi2.c:56:20
	rsb	r0, r0, #2
	.loc	12 56 32                        @ ../ctzsi2.c:56:32
	and	r0, r0, r2
	.loc	12 31 7 is_stmt 1               @ ../ctzsi2.c:31:7
	orr	r2, lr, r12, lsl #3
	.loc	12 35 7                         @ ../ctzsi2.c:35:7
	orr	r1, r2, r1, lsl #2
	.loc	12 40 7                         @ ../ctzsi2.c:40:7
	orr	r1, r1, r3, lsl #1
	.loc	12 56 14                        @ ../ctzsi2.c:56:14
	add	r0, r1, r0
	.loc	12 56 5 is_stmt 0               @ ../ctzsi2.c:56:5
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp149:
.Lfunc_end18:
	.size	__ctzsi2, .Lfunc_end18-__ctzsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divdi3                        @ -- Begin function __divdi3
	.p2align	2
	.type	__divdi3,%function
	.code	32                              @ @__divdi3
__divdi3:
.Lfunc_begin19:
	.file	13 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divdi3.c" md5 0x281227589e0794a81d7211e4ee4a402c
	.loc	13 21 0 is_stmt 1               @ ../divdi3.c:21:0
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
	sub	sp, sp, #8
	mov	r5, r1
	mov	r1, #0
	mov	r4, r3
.Ltmp150:
	.loc	13 26 12 prologue_end           @ ../divdi3.c:26:12
	eor	r2, r2, r3, asr #31
	eor	r3, r3, r3, asr #31
	.loc	13 25 12                        @ ../divdi3.c:25:12
	eor	r0, r0, r5, asr #31
	.loc	13 28 13                        @ ../divdi3.c:28:13
	str	r1, [sp]
	.loc	13 25 12                        @ ../divdi3.c:25:12
	eor	r1, r5, r5, asr #31
	.loc	13 25 19 is_stmt 0              @ ../divdi3.c:25:19
	subs	r0, r0, r5, asr #31
	sbc	r1, r1, r5, asr #31
	.loc	13 26 19 is_stmt 1              @ ../divdi3.c:26:19
	subs	r2, r2, r4, asr #31
	sbc	r3, r3, r4, asr #31
	.loc	13 28 13                        @ ../divdi3.c:28:13
	bl	__udivmoddi4
	.loc	13 23 20                        @ ../divdi3.c:23:20
	asr	r2, r5, #31
	.loc	13 27 9                         @ ../divdi3.c:27:9
	eor	r2, r2, r4, asr #31
	.loc	13 28 44                        @ ../divdi3.c:28:44
	eor	r0, r0, r2
	eor	r1, r1, r2
	.loc	13 28 51 is_stmt 0              @ ../divdi3.c:28:51
	subs	r0, r0, r2
	sbc	r1, r1, r2
	.loc	13 28 5                         @ ../divdi3.c:28:5
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp151:
.Lfunc_end19:
	.size	__divdi3, .Lfunc_end19-__divdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivmoddi4                    @ -- Begin function __udivmoddi4
	.p2align	2
	.type	__udivmoddi4,%function
	.code	32                              @ @__udivmoddi4
__udivmoddi4:
.Lfunc_begin20:
	.file	14 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivmoddi4.c" md5 0xeca4b147be989cda91330ba5b56ed879
	.loc	14 25 0 is_stmt 1               @ ../udivmoddi4.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r10, -12
	.cfi_offset r8, -16
	.cfi_offset r7, -20
	.cfi_offset r6, -24
	.cfi_offset r5, -28
	.cfi_offset r4, -32
	add	r11, sp, #24
	.cfi_def_cfa r11, 8
	sub	sp, sp, #32
	ldr	r8, [r11, #8]
.Ltmp152:
	.loc	14 36 9 prologue_end            @ ../udivmoddi4.c:36:9
	cmp	r1, #0
	.loc	14 29 11                        @ ../udivmoddi4.c:29:11
	str	r1, [sp, #28]
	str	r0, [sp, #24]
	.loc	14 31 11                        @ ../udivmoddi4.c:31:11
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	.loc	14 36 9                         @ ../udivmoddi4.c:36:9
	beq	.LBB20_9
@ %bb.1:                                @ %if.end23
	.loc	14 57 13                        @ ../udivmoddi4.c:57:13
	ldr	r0, [sp, #16]
	.loc	14 57 9 is_stmt 0               @ ../udivmoddi4.c:57:9
	cmp	r0, #0
	beq	.LBB20_13
@ %bb.2:                                @ %if.else
	.loc	14 121 17 is_stmt 1             @ ../udivmoddi4.c:121:17
	ldr	r0, [sp, #20]
	.loc	14 121 13 is_stmt 0             @ ../udivmoddi4.c:121:13
	cmp	r0, #0
	beq	.LBB20_22
@ %bb.3:                                @ %if.else263
	.loc	14 176 36 is_stmt 1             @ ../udivmoddi4.c:176:36
	ldr	r0, [sp, #20]
	mov	r4, #32
	mov	r5, #32
	.loc	14 176 18 is_stmt 0             @ ../udivmoddi4.c:176:18
	cmp	r0, #0
	beq	.LBB20_5
@ %bb.4:                                @ %cond.false29
	bl	__clzsi2
	mov	r5, r0
.LBB20_5:                               @ %cond.end30
	.loc	14 176 62                       @ ../udivmoddi4.c:176:62
	ldr	r0, [sp, #28]
	.loc	14 176 44                       @ ../udivmoddi4.c:176:44
	cmp	r0, #0
	beq	.LBB20_7
@ %bb.6:                                @ %cond.false33
	bl	__clzsi2
	mov	r4, r0
.LBB20_7:                               @ %cond.end34
	.loc	14 176 42                       @ ../udivmoddi4.c:176:42
	sub	r1, r5, r4
	.loc	14 178 17 is_stmt 1             @ ../udivmoddi4.c:178:17
	cmp	r1, #32
	blo	.LBB20_30
.LBB20_8:                               @ %if.then111
	.loc	14 0 0 is_stmt 0                @ ../udivmoddi4.c:0:0
	cmp	r8, #0
	ldrne	r0, [sp, #24]
	ldrne	r1, [sp, #28]
	stmne	r8, {r0, r1}
	b	.LBB20_12
.LBB20_9:                               @ %if.then
	.loc	14 38 17 is_stmt 1              @ ../udivmoddi4.c:38:17
	ldr	r0, [sp, #20]
	.loc	14 38 13 is_stmt 0              @ ../udivmoddi4.c:38:13
	cmp	r0, #0
	beq	.LBB20_27
@ %bb.10:                               @ %if.end16
	.loc	14 52 13 is_stmt 1              @ ../udivmoddi4.c:52:13
	cmp	r8, #0
	beq	.LBB20_12
@ %bb.11:                               @ %if.then18
	.loc	14 53 24                        @ ../udivmoddi4.c:53:24
	ldr	r1, [sp, #24]
	mov	r0, #0
	.loc	14 53 18 is_stmt 0              @ ../udivmoddi4.c:53:18
	str	r0, [r8, #4]
	str	r1, [r8]
	mov	r1, #0
	b	.LBB20_49
.LBB20_12:
	.loc	14 0 18                         @ ../udivmoddi4.c:0:18
	mov	r0, #0
	mov	r1, #0
	b	.LBB20_49
.LBB20_13:                              @ %if.then28
	.loc	14 59 17 is_stmt 1              @ ../udivmoddi4.c:59:17
	ldr	r0, [sp, #20]
	.loc	14 59 13 is_stmt 0              @ ../udivmoddi4.c:59:13
	cmp	r0, #0
	beq	.LBB20_32
@ %bb.14:                               @ %if.end49
	.loc	14 70 17 is_stmt 1              @ ../udivmoddi4.c:70:17
	ldr	r0, [sp, #24]
	.loc	14 70 13 is_stmt 0              @ ../udivmoddi4.c:70:13
	cmp	r0, #0
	beq	.LBB20_50
@ %bb.15:                               @ %if.end74
	.loc	14 88 18 is_stmt 1              @ ../udivmoddi4.c:88:18
	ldr	r0, [sp, #20]
	.loc	14 88 35 is_stmt 0              @ ../udivmoddi4.c:88:35
	sub	r1, r0, #1
	.loc	14 88 13                        @ ../udivmoddi4.c:88:13
	tst	r0, r1
	beq	.LBB20_57
@ %bb.16:                               @ %if.end103
	.loc	14 102 32 is_stmt 1             @ ../udivmoddi4.c:102:32
	ldr	r0, [sp, #20]
	mov	r4, #32
	mov	r5, #32
	.loc	14 102 14 is_stmt 0             @ ../udivmoddi4.c:102:14
	cmp	r0, #0
	beq	.LBB20_18
@ %bb.17:                               @ %cond.false6
	bl	__clzsi2
	mov	r5, r0
.LBB20_18:                              @ %cond.end7
	.loc	14 102 58                       @ ../udivmoddi4.c:102:58
	ldr	r0, [sp, #28]
	.loc	14 102 40                       @ ../udivmoddi4.c:102:40
	cmp	r0, #0
	beq	.LBB20_20
@ %bb.19:                               @ %cond.false10
	bl	__clzsi2
	mov	r4, r0
.LBB20_20:                              @ %cond.end11
	.loc	14 102 38                       @ ../udivmoddi4.c:102:38
	sub	r0, r5, r4
	.loc	14 104 13 is_stmt 1             @ ../udivmoddi4.c:104:13
	cmp	r0, #31
	bhs	.LBB20_8
@ %bb.21:                               @ %if.end116
	.loc	14 114 24                       @ ../udivmoddi4.c:114:24
	ldr	r2, [sp, #24]
	.loc	14 116 24                       @ ../udivmoddi4.c:116:24
	ldr	r3, [sp, #28]
	mov	r1, #0
	.loc	14 110 9                        @ ../udivmoddi4.c:110:9
	add	r12, r0, #1
	.loc	14 113 17                       @ ../udivmoddi4.c:113:17
	str	r1, [sp, #8]
	.loc	14 114 45                       @ ../udivmoddi4.c:114:45
	rsb	r1, r0, #31
	.loc	14 114 28 is_stmt 0             @ ../udivmoddi4.c:114:28
	lsl	r5, r2, r1
	.loc	14 114 18                       @ ../udivmoddi4.c:114:18
	str	r5, [sp, #12]
	.loc	14 116 29 is_stmt 1             @ ../udivmoddi4.c:116:29
	lsr	r5, r3, r12
	.loc	14 116 18 is_stmt 0             @ ../udivmoddi4.c:116:18
	str	r5, [sp, #4]
	b	.LBB20_44
.LBB20_22:                              @ %if.then142
	.loc	14 127 22 is_stmt 1             @ ../udivmoddi4.c:127:22
	ldr	r0, [sp, #16]
	.loc	14 127 17 is_stmt 0             @ ../udivmoddi4.c:127:17
	sub	r1, r0, #1
	tst	r0, r1
	bne	.LBB20_37
@ %bb.23:                               @ %if.then151
	.loc	14 129 21 is_stmt 1             @ ../udivmoddi4.c:129:21
	cmp	r8, #0
	beq	.LBB20_25
@ %bb.24:                               @ %if.then153
	.loc	14 130 43                       @ ../udivmoddi4.c:130:43
	ldr	r1, [sp, #16]
	.loc	14 130 32 is_stmt 0             @ ../udivmoddi4.c:130:32
	ldr	r2, [sp, #24]
	mov	r0, #0
	.loc	14 130 26                       @ ../udivmoddi4.c:130:26
	str	r0, [r8, #4]
	.loc	14 130 47                       @ ../udivmoddi4.c:130:47
	sub	r1, r1, #1
	.loc	14 130 36                       @ ../udivmoddi4.c:130:36
	and	r1, r2, r1
	.loc	14 130 26                       @ ../udivmoddi4.c:130:26
	str	r1, [r8]
.LBB20_25:                              @ %if.end161
	.loc	14 131 25 is_stmt 1             @ ../udivmoddi4.c:131:25
	ldr	r0, [sp, #16]
	.loc	14 131 21 is_stmt 0             @ ../udivmoddi4.c:131:21
	cmp	r0, #1
	bne	.LBB20_53
@ %bb.26:                               @ %if.then166
	.loc	14 132 30 is_stmt 1             @ ../udivmoddi4.c:132:30
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	b	.LBB20_49
.LBB20_27:                              @ %if.then5
	.loc	14 44 17                        @ ../udivmoddi4.c:44:17
	cmp	r8, #0
	beq	.LBB20_29
@ %bb.28:                               @ %if.then6
	.loc	14 0 17 is_stmt 0               @ ../udivmoddi4.c:0:17
	mov	r0, #0
	.loc	14 45 38 is_stmt 1              @ ../udivmoddi4.c:45:38
	ldr	r1, [sp, #16]
	.loc	14 45 22 is_stmt 0              @ ../udivmoddi4.c:45:22
	str	r0, [r8, #4]
	.loc	14 45 28                        @ ../udivmoddi4.c:45:28
	ldr	r0, [sp, #24]
	.loc	14 45 32                        @ ../udivmoddi4.c:45:32
	bl	__umodsi3
	.loc	14 45 22                        @ ../udivmoddi4.c:45:22
	str	r0, [r8]
.LBB20_29:                              @ %if.end
	.loc	14 46 24 is_stmt 1              @ ../udivmoddi4.c:46:24
	ldr	r0, [sp, #24]
	b	.LBB20_35
.LBB20_30:                              @ %if.end276
	.loc	14 184 13                       @ ../udivmoddi4.c:184:13
	add	r12, r1, #1
	mov	r2, #0
	.loc	14 188 17                       @ ../udivmoddi4.c:188:17
	cmp	r12, #32
	.loc	14 187 21                       @ ../udivmoddi4.c:187:21
	str	r2, [sp, #8]
	.loc	14 188 17                       @ ../udivmoddi4.c:188:17
	bne	.LBB20_43
@ %bb.31:                               @ %if.then282
	.loc	14 190 32                       @ ../udivmoddi4.c:190:32
	ldr	r1, [sp, #24]
	.loc	14 192 31                       @ ../udivmoddi4.c:192:31
	ldr	r3, [sp, #28]
	.loc	14 191 26                       @ ../udivmoddi4.c:191:26
	str	r2, [sp, #4]
	.loc	14 190 26                       @ ../udivmoddi4.c:190:26
	str	r1, [sp, #12]
	.loc	14 192 25                       @ ../udivmoddi4.c:192:25
	str	r3, [sp]
	b	.LBB20_46
.LBB20_32:                              @ %if.then33
	.loc	14 65 17                        @ ../udivmoddi4.c:65:17
	cmp	r8, #0
	beq	.LBB20_34
@ %bb.33:                               @ %if.then35
	.loc	14 0 17 is_stmt 0               @ ../udivmoddi4.c:0:17
	mov	r0, #0
	.loc	14 66 39 is_stmt 1              @ ../udivmoddi4.c:66:39
	ldr	r1, [sp, #16]
	.loc	14 66 22 is_stmt 0              @ ../udivmoddi4.c:66:22
	str	r0, [r8, #4]
	.loc	14 66 28                        @ ../udivmoddi4.c:66:28
	ldr	r0, [sp, #28]
	.loc	14 66 33                        @ ../udivmoddi4.c:66:33
	bl	__umodsi3
	.loc	14 66 22                        @ ../udivmoddi4.c:66:22
	str	r0, [r8]
.LBB20_34:                              @ %if.end42
	.loc	14 67 24 is_stmt 1              @ ../udivmoddi4.c:67:24
	ldr	r0, [sp, #28]
.LBB20_35:                              @ %return
	.loc	14 0 0 is_stmt 0                @ ../udivmoddi4.c:0:0
	ldr	r1, [sp, #16]
.LBB20_36:                              @ %return
	bl	__udivsi3
	mov	r1, #0
	b	.LBB20_49
.LBB20_37:                              @ %if.end187
	.loc	14 142 55 is_stmt 1             @ ../udivmoddi4.c:142:55
	ldr	r1, [sp, #16]
	mov	r4, #32
	mov	r0, #32
	.loc	14 142 37 is_stmt 0             @ ../udivmoddi4.c:142:37
	cmp	r1, #0
	beq	.LBB20_39
@ %bb.38:                               @ %cond.false21
	mov	r0, r1
	bl	__clzsi2
.LBB20_39:                              @ %cond.end22
	.loc	14 142 35                       @ ../udivmoddi4.c:142:35
	add	r5, r0, #33
	.loc	14 142 80                       @ ../udivmoddi4.c:142:80
	ldr	r0, [sp, #28]
	.loc	14 142 62                       @ ../udivmoddi4.c:142:62
	cmp	r0, #0
	beq	.LBB20_41
@ %bb.40:                               @ %cond.false25
	bl	__clzsi2
	mov	r4, r0
.LBB20_41:                              @ %cond.end26
	.loc	14 142 60                       @ ../udivmoddi4.c:142:60
	sub	r12, r5, r4
	mov	r1, #0
	.loc	14 147 17 is_stmt 1             @ ../udivmoddi4.c:147:17
	cmp	r12, #32
	bne	.LBB20_55
@ %bb.42:                               @ %if.then195
	.loc	14 150 32                       @ ../udivmoddi4.c:150:32
	ldr	r2, [sp, #24]
	.loc	14 152 31                       @ ../udivmoddi4.c:152:31
	ldr	r3, [sp, #28]
	.loc	14 149 25                       @ ../udivmoddi4.c:149:25
	str	r1, [sp, #8]
	.loc	14 151 26                       @ ../udivmoddi4.c:151:26
	str	r1, [sp, #4]
	.loc	14 150 26                       @ ../udivmoddi4.c:150:26
	str	r2, [sp, #12]
	.loc	14 152 25                       @ ../udivmoddi4.c:152:25
	str	r3, [sp]
	b	.LBB20_46
.LBB20_43:                              @ %if.else293
	.loc	14 197 32                       @ ../udivmoddi4.c:197:32
	ldr	r3, [sp, #28]
	.loc	14 196 32                       @ ../udivmoddi4.c:196:32
	ldr	r2, [sp, #24]
	.loc	14 196 53 is_stmt 0             @ ../udivmoddi4.c:196:53
	rsb	r1, r1, #31
	.loc	14 197 37 is_stmt 1             @ ../udivmoddi4.c:197:37
	lsr	r5, r3, r12
	.loc	14 197 26 is_stmt 0             @ ../udivmoddi4.c:197:26
	str	r5, [sp, #4]
	.loc	14 196 36 is_stmt 1             @ ../udivmoddi4.c:196:36
	lsl	r5, r2, r1
	.loc	14 196 26 is_stmt 0             @ ../udivmoddi4.c:196:26
	str	r5, [sp, #12]
.LBB20_44:                              @ %if.end317
	.loc	14 0 0                          @ ../udivmoddi4.c:0:0
	lsl	r1, r3, r1
	orr	r1, r1, r2, lsr r12
.LBB20_45:                              @ %if.end317
	str	r1, [sp]
.LBB20_46:                              @ %if.end317
	mov	r1, #0
	.loc	14 209 5 is_stmt 1              @ ../udivmoddi4.c:209:5
	cmp	r12, #0
	beq	.LBB20_48
.LBB20_47:                              @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	.loc	14 214 43                       @ ../udivmoddi4.c:214:43
	ldr	r2, [sp, #8]
	.loc	14 213 43                       @ ../udivmoddi4.c:213:43
	ldr	r3, [sp, #12]
	.loc	14 223 37                       @ ../udivmoddi4.c:223:37
	ldr	r5, [sp, #20]
	.loc	14 209 20                       @ ../udivmoddi4.c:209:20
	sub	r12, r12, #1
	.loc	14 215 36                       @ ../udivmoddi4.c:215:36
	orr	r1, r1, r2, lsl #1
	.loc	14 215 18 is_stmt 0             @ ../udivmoddi4.c:215:18
	str	r1, [sp, #8]
	.loc	14 214 36 is_stmt 1             @ ../udivmoddi4.c:214:36
	lsl	r1, r3, #1
	orr	r1, r1, r2, lsr #31
	.loc	14 214 18 is_stmt 0             @ ../udivmoddi4.c:214:18
	str	r1, [sp, #12]
	.loc	14 212 43 is_stmt 1             @ ../udivmoddi4.c:212:43
	ldm	sp, {r1, r2}
	.loc	14 212 36 is_stmt 0             @ ../udivmoddi4.c:212:36
	lsl	r2, r2, #1
	orr	r2, r2, r1, lsr #31
	.loc	14 213 36 is_stmt 1             @ ../udivmoddi4.c:213:36
	lsl	r1, r1, #1
	orr	r1, r1, r3, lsr #31
	.loc	14 223 37                       @ ../udivmoddi4.c:223:37
	ldr	r3, [sp, #16]
	.loc	14 223 49 is_stmt 0             @ ../udivmoddi4.c:223:49
	mvn	r7, r2
	mvn	r0, r1
	.loc	14 225 15 is_stmt 1             @ ../udivmoddi4.c:225:15
	subs	r4, r1, r3
	sbc	r6, r2, r5
	.loc	14 223 49                       @ ../udivmoddi4.c:223:49
	adds	r0, r3, r0
	adcs	r0, r5, r7
	.loc	14 225 15                       @ ../udivmoddi4.c:225:15
	movpl	r4, r1
	movpl	r6, r2
	.loc	14 224 19                       @ ../udivmoddi4.c:224:19
	lsr	r1, r0, #31
	.loc	14 225 15                       @ ../udivmoddi4.c:225:15
	str	r4, [sp]
	str	r6, [sp, #4]
	.loc	14 209 5                        @ ../udivmoddi4.c:209:5
	cmp	r12, #0
	bne	.LBB20_47
.LBB20_48:                              @ %for.end
	.loc	14 227 16                       @ ../udivmoddi4.c:227:16
	ldr	r0, [sp, #8]
	ldr	r2, [sp, #12]
	.loc	14 228 9                        @ ../udivmoddi4.c:228:9
	cmp	r8, #0
	.loc	14 227 26                       @ ../udivmoddi4.c:227:26
	orr	r1, r1, r0, lsl #1
	.loc	14 227 11 is_stmt 0             @ ../udivmoddi4.c:227:11
	str	r1, [sp, #8]
	.loc	14 227 20                       @ ../udivmoddi4.c:227:20
	lsl	r1, r2, #1
	orr	r0, r1, r0, lsr #31
	.loc	14 227 11                       @ ../udivmoddi4.c:227:11
	str	r0, [sp, #12]
	.loc	14 229 18 is_stmt 1             @ ../udivmoddi4.c:229:18
	ldmne	sp, {r0, r1}
	.loc	14 229 14 is_stmt 0             @ ../udivmoddi4.c:229:14
	stmne	r8, {r0, r1}
	.loc	14 230 14 is_stmt 1             @ ../udivmoddi4.c:230:14
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
.LBB20_49:                              @ %return
	.loc	14 231 1                        @ ../udivmoddi4.c:231:1
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
	bx	lr
.LBB20_50:                              @ %if.then54
	.loc	14 76 17                        @ ../udivmoddi4.c:76:17
	cmp	r8, #0
	beq	.LBB20_52
@ %bb.51:                               @ %if.then56
	.loc	14 78 32                        @ ../udivmoddi4.c:78:32
	ldr	r0, [sp, #28]
	.loc	14 78 43 is_stmt 0              @ ../udivmoddi4.c:78:43
	ldr	r1, [sp, #20]
	mov	r4, #0
	.loc	14 80 22 is_stmt 1              @ ../udivmoddi4.c:80:22
	str	r4, [r8]
	.loc	14 78 37                        @ ../udivmoddi4.c:78:37
	bl	__umodsi3
	.loc	14 80 22                        @ ../udivmoddi4.c:80:22
	str	r0, [r8, #4]
	.loc	14 79 25                        @ ../udivmoddi4.c:79:25
	str	r4, [sp]
	.loc	14 78 26                        @ ../udivmoddi4.c:78:26
	str	r0, [sp, #4]
.LBB20_52:                              @ %if.end67
	.loc	14 82 24                        @ ../udivmoddi4.c:82:24
	ldr	r0, [sp, #28]
	.loc	14 82 35 is_stmt 0              @ ../udivmoddi4.c:82:35
	ldr	r1, [sp, #20]
	b	.LBB20_36
.LBB20_53:                              @ %if.end168
	.loc	14 133 40 is_stmt 1             @ ../udivmoddi4.c:133:40
	ldr	r0, [sp, #16]
	.loc	14 133 22 is_stmt 0             @ ../udivmoddi4.c:133:22
	cmp	r0, #0
	beq	.LBB20_62
@ %bb.54:                               @ %cond.false16
	sub	r1, r0, #1
	bic	r0, r1, r0
	ldr	r1, .LCPI20_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r1, .LCPI20_1
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	ldr	r1, .LCPI20_2
	add	r0, r0, r2
	add	r0, r0, r0, lsr #4
	and	r0, r0, r1
	ldr	r1, .LCPI20_3
	mul	r2, r0, r1
	lsr	r0, r2, #24
	b	.LBB20_63
.LBB20_55:                              @ %if.else208
	.loc	14 154 22 is_stmt 1             @ ../udivmoddi4.c:154:22
	cmp	r12, #31
	bhi	.LBB20_61
@ %bb.56:                               @ %if.then211
	.loc	14 158 32                       @ ../udivmoddi4.c:158:32
	ldr	r2, [sp, #28]
	.loc	14 156 25                       @ ../udivmoddi4.c:156:25
	str	r1, [sp, #8]
	.loc	14 157 32                       @ ../udivmoddi4.c:157:32
	ldr	r1, [sp, #24]
	.loc	14 158 37                       @ ../udivmoddi4.c:158:37
	lsr	r3, r2, r12
	.loc	14 158 26 is_stmt 0             @ ../udivmoddi4.c:158:26
	str	r3, [sp, #4]
	.loc	14 157 53 is_stmt 1             @ ../udivmoddi4.c:157:53
	rsb	r3, r12, #32
	.loc	14 157 36 is_stmt 0             @ ../udivmoddi4.c:157:36
	lsl	r5, r1, r3
	.loc	14 159 37 is_stmt 1             @ ../udivmoddi4.c:159:37
	lsl	r2, r2, r3
	.loc	14 157 26                       @ ../udivmoddi4.c:157:26
	str	r5, [sp, #12]
	.loc	14 159 61                       @ ../udivmoddi4.c:159:61
	orr	r1, r2, r1, lsr r12
	b	.LBB20_45
.LBB20_57:                              @ %if.then81
	.loc	14 90 17                        @ ../udivmoddi4.c:90:17
	cmp	r8, #0
	beq	.LBB20_59
@ %bb.58:                               @ %if.then83
	.loc	14 93 44                        @ ../udivmoddi4.c:93:44
	ldr	r2, [sp, #20]
	.loc	14 92 31                        @ ../udivmoddi4.c:92:31
	ldr	r0, [sp, #24]
	.loc	14 93 32                        @ ../udivmoddi4.c:93:32
	ldr	r1, [sp, #28]
	.loc	14 93 49 is_stmt 0              @ ../udivmoddi4.c:93:49
	sub	r2, r2, #1
	.loc	14 93 37                        @ ../udivmoddi4.c:93:37
	and	r1, r1, r2
	.loc	14 94 22 is_stmt 1              @ ../udivmoddi4.c:94:22
	stm	r8, {r0, r1}
	.loc	14 92 25                        @ ../udivmoddi4.c:92:25
	stm	sp, {r0, r1}
.LBB20_59:                              @ %if.end97
	.loc	14 96 50                        @ ../udivmoddi4.c:96:50
	ldr	r1, [sp, #20]
	.loc	14 96 24 is_stmt 0              @ ../udivmoddi4.c:96:24
	ldr	r0, [sp, #28]
	.loc	14 96 32                        @ ../udivmoddi4.c:96:32
	cmp	r1, #0
	beq	.LBB20_64
@ %bb.60:                               @ %cond.false
	sub	r2, r1, #1
	bic	r1, r2, r1
	ldr	r2, .LCPI20_0
	and	r2, r2, r1, lsr #1
	sub	r1, r1, r2
	ldr	r2, .LCPI20_1
	and	r3, r2, r1, lsr #2
	and	r1, r1, r2
	ldr	r2, .LCPI20_2
	add	r1, r1, r3
	add	r1, r1, r1, lsr #4
	and	r1, r1, r2
	ldr	r2, .LCPI20_3
	mul	r3, r1, r2
	lsr	r1, r3, #24
	b	.LBB20_65
.LBB20_61:                              @ %if.else235
	.loc	14 163 31 is_stmt 1             @ ../udivmoddi4.c:163:31
	ldr	r2, [sp, #24]
	.loc	14 164 33                       @ ../udivmoddi4.c:164:33
	ldr	r3, [sp, #28]
	.loc	14 166 26                       @ ../udivmoddi4.c:166:26
	str	r1, [sp, #4]
	.loc	14 163 53                       @ ../udivmoddi4.c:163:53
	rsb	r1, r12, #64
	.loc	14 163 35 is_stmt 0             @ ../udivmoddi4.c:163:35
	lsl	r5, r2, r1
	.loc	14 164 38 is_stmt 1             @ ../udivmoddi4.c:164:38
	lsl	r1, r3, r1
	.loc	14 163 25                       @ ../udivmoddi4.c:163:25
	str	r5, [sp, #8]
	.loc	14 165 44                       @ ../udivmoddi4.c:165:44
	sub	r5, r12, #32
	.loc	14 167 36                       @ ../udivmoddi4.c:167:36
	lsr	r4, r3, r5
	.loc	14 164 63                       @ ../udivmoddi4.c:164:63
	orr	r1, r1, r2, lsr r5
	.loc	14 167 25                       @ ../udivmoddi4.c:167:25
	str	r4, [sp]
	.loc	14 164 26                       @ ../udivmoddi4.c:164:26
	str	r1, [sp, #12]
	b	.LBB20_46
.LBB20_62:
	.loc	14 0 26 is_stmt 0               @ ../udivmoddi4.c:0:26
	mov	r0, #32
.LBB20_63:                              @ %cond.end17
	.loc	14 134 32 is_stmt 1             @ ../udivmoddi4.c:134:32
	ldr	r3, [sp, #28]
	.loc	14 135 68                       @ ../udivmoddi4.c:135:68
	ldr	r2, [sp, #24]
	.loc	14 135 54 is_stmt 0             @ ../udivmoddi4.c:135:54
	rsb	r6, r0, #32
	.loc	14 134 37 is_stmt 1             @ ../udivmoddi4.c:134:37
	lsr	r1, r3, r0
	.loc	14 135 37                       @ ../udivmoddi4.c:135:37
	lsl	r3, r3, r6
	.loc	14 135 61 is_stmt 0             @ ../udivmoddi4.c:135:61
	orr	r0, r3, r2, lsr r0
	.loc	14 134 26 is_stmt 1             @ ../udivmoddi4.c:134:26
	str	r1, [sp, #12]
	.loc	14 135 25                       @ ../udivmoddi4.c:135:25
	str	r0, [sp, #8]
	b	.LBB20_49
.LBB20_64:
	.loc	14 0 25 is_stmt 0               @ ../udivmoddi4.c:0:25
	mov	r1, #32
.LBB20_65:                              @ %cond.end
	.loc	14 96 29 is_stmt 1              @ ../udivmoddi4.c:96:29
	lsr	r0, r0, r1
	mov	r1, #0
	b	.LBB20_49
.Ltmp153:
	.p2align	2
@ %bb.66:
	.loc	14 0 29 is_stmt 0               @ ../udivmoddi4.c:0:29
.LCPI20_0:
	.long	1431655765                      @ 0x55555555
.LCPI20_1:
	.long	858993459                       @ 0x33333333
.LCPI20_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI20_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end20:
	.size	__udivmoddi4, .Lfunc_end20-__udivmoddi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divmoddi4                     @ -- Begin function __divmoddi4
	.p2align	2
	.type	__divmoddi4,%function
	.code	32                              @ @__divmoddi4
__divmoddi4:
.Lfunc_begin21:
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
	mov	r4, r3
	mov	r5, r2
	mov	r6, r1
	mov	r7, r0
.Ltmp154:
	.loc	15 22 14 prologue_end           @ ../divmoddi4.c:22:14
	bl	__divdi3
	ldr	r12, [r11, #8]
	.loc	15 23 16                        @ ../divmoddi4.c:23:16
	umull	r2, r3, r0, r5
	.loc	15 23 12 is_stmt 0              @ ../divmoddi4.c:23:12
	subs	r2, r7, r2
	.loc	15 23 16                        @ ../divmoddi4.c:23:16
	mla	r7, r0, r4, r3
	mla	r3, r1, r5, r7
	.loc	15 23 12                        @ ../divmoddi4.c:23:12
	sbc	r3, r6, r3
	.loc	15 23 8                         @ ../divmoddi4.c:23:8
	stm	r12, {r2, r3}
	.loc	15 24 3 is_stmt 1               @ ../divmoddi4.c:24:3
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
.Ltmp155:
.Lfunc_end21:
	.size	__divmoddi4, .Lfunc_end21-__divmoddi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divmodsi4                     @ -- Begin function __divmodsi4
	.p2align	2
	.type	__divmodsi4,%function
	.code	32                              @ @__divmodsi4
__divmodsi4:
.Lfunc_begin22:
	.file	16 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divmodsi4.c" md5 0x0cf7caca427f8ea020b675e27b5985b5
	.loc	16 21 0                         @ ../divmodsi4.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r4, r5, r6, r10, r11, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r10, -12
	.cfi_offset r6, -16
	.cfi_offset r5, -20
	.cfi_offset r4, -24
	add	r11, sp, #16
	.cfi_def_cfa r11, 8
	mov	r4, r2
	mov	r5, r1
	mov	r6, r0
.Ltmp156:
	.loc	16 22 14 prologue_end           @ ../divmodsi4.c:22:14
	bl	__divsi3
	.loc	16 23 16                        @ ../divmodsi4.c:23:16
	mul	r1, r0, r5
	.loc	16 23 12 is_stmt 0              @ ../divmodsi4.c:23:12
	sub	r1, r6, r1
	.loc	16 23 8                         @ ../divmodsi4.c:23:8
	str	r1, [r4]
	.loc	16 24 3 is_stmt 1               @ ../divmodsi4.c:24:3
	pop	{r4, r5, r6, r10, r11, lr}
	bx	lr
.Ltmp157:
.Lfunc_end22:
	.size	__divmodsi4, .Lfunc_end22-__divmodsi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divsi3                        @ -- Begin function __divsi3
	.p2align	2
	.type	__divsi3,%function
	.code	32                              @ @__divsi3
__divsi3:
.Lfunc_begin23:
	.file	17 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divsi3.c" md5 0x7845e3e46788425cf69d463f3cfe00e5
	.loc	17 23 0                         @ ../divsi3.c:23:0
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
	mov	r4, r1
.Ltmp158:
	.loc	17 28 12 prologue_end           @ ../divsi3.c:28:12
	eor	r1, r1, r1, asr #31
	mov	r5, r0
	.loc	17 27 12                        @ ../divsi3.c:27:12
	eor	r0, r0, r0, asr #31
	.loc	17 27 19 is_stmt 0              @ ../divsi3.c:27:19
	sub	r0, r0, r5, asr #31
	.loc	17 28 19 is_stmt 1              @ ../divsi3.c:28:19
	sub	r1, r1, r4, asr #31
	.loc	17 36 22                        @ ../divsi3.c:36:22
	bl	__udivsi3
	.loc	17 25 20                        @ ../divsi3.c:25:20
	asr	r1, r5, #31
	.loc	17 29 9                         @ ../divsi3.c:29:9
	eor	r1, r1, r4, asr #31
	.loc	17 36 33                        @ ../divsi3.c:36:33
	eor	r0, r0, r1
	.loc	17 36 40 is_stmt 0              @ ../divsi3.c:36:40
	sub	r0, r0, r1
	.loc	17 36 5                         @ ../divsi3.c:36:5
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp159:
.Lfunc_end23:
	.size	__divsi3, .Lfunc_end23-__divsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ffsdi2                        @ -- Begin function __ffsdi2
	.p2align	2
	.type	__ffsdi2,%function
	.code	32                              @ @__ffsdi2
__ffsdi2:
.Lfunc_begin24:
	.file	18 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ffsdi2.c" md5 0x4b800e1cad35a0bc99971441032171a3
	.loc	18 23 0 is_stmt 1               @ ../ffsdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
.Ltmp160:
	.loc	18 26 9 prologue_end            @ ../ffsdi2.c:26:9
	cmp	r0, #0
	.loc	18 25 11                        @ ../ffsdi2.c:25:11
	stm	sp, {r0, r1}
	.loc	18 26 9                         @ ../ffsdi2.c:26:9
	beq	.LBB24_3
@ %bb.1:                                @ %if.end6
	.loc	18 32 30                        @ ../ffsdi2.c:32:30
	ldr	r0, [sp]
	.loc	18 32 12 is_stmt 0              @ ../ffsdi2.c:32:12
	cmp	r0, #0
	beq	.LBB24_6
@ %bb.2:                                @ %cond.false2
	sub	r1, r0, #1
	bic	r0, r1, r0
	ldr	r1, .LCPI24_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r1, .LCPI24_1
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	ldr	r1, .LCPI24_2
	add	r0, r0, r2
	add	r0, r0, r0, lsr #4
	and	r0, r0, r1
	ldr	r1, .LCPI24_3
	mul	r2, r0, r1
	lsr	r0, r2, #24
	b	.LBB24_7
.LBB24_3:                               @ %if.then
	.loc	18 28 17 is_stmt 1              @ ../ffsdi2.c:28:17
	ldr	r0, [sp, #4]
	.loc	18 28 13 is_stmt 0              @ ../ffsdi2.c:28:13
	cmp	r0, #0
	moveq	r0, #0
	.loc	18 33 1 is_stmt 1               @ ../ffsdi2.c:33:1
	addeq	sp, sp, #8
	bxeq	lr
.LBB24_4:                               @ %if.end
	.loc	18 30 34                        @ ../ffsdi2.c:30:34
	ldr	r0, [sp, #4]
	.loc	18 30 16 is_stmt 0              @ ../ffsdi2.c:30:16
	cmp	r0, #0
	beq	.LBB24_8
@ %bb.5:                                @ %cond.false
	sub	r1, r0, #1
	bic	r0, r1, r0
	ldr	r1, .LCPI24_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r1, .LCPI24_1
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	ldr	r1, .LCPI24_2
	add	r0, r0, r2
	add	r0, r0, r0, lsr #4
	and	r0, r0, r1
	ldr	r1, .LCPI24_3
	mul	r2, r0, r1
	lsr	r0, r2, #24
	b	.LBB24_9
.LBB24_6:
	.loc	18 0 16                         @ ../ffsdi2.c:0:16
	mov	r0, #32
.LBB24_7:                               @ %cond.end3
	.loc	18 32 35 is_stmt 1              @ ../ffsdi2.c:32:35
	add	r0, r0, #1
	.loc	18 33 1                         @ ../ffsdi2.c:33:1
	add	sp, sp, #8
	bx	lr
.LBB24_8:
	.loc	18 0 1 is_stmt 0                @ ../ffsdi2.c:0:1
	mov	r0, #32
.LBB24_9:
	.loc	18 30 40 is_stmt 1              @ ../ffsdi2.c:30:40
	add	r0, r0, #33
	.loc	18 33 1                         @ ../ffsdi2.c:33:1
	add	sp, sp, #8
	bx	lr
.Ltmp161:
	.p2align	2
@ %bb.10:
	.loc	18 0 1 is_stmt 0                @ ../ffsdi2.c:0:1
.LCPI24_0:
	.long	1431655765                      @ 0x55555555
.LCPI24_1:
	.long	858993459                       @ 0x33333333
.LCPI24_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI24_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end24:
	.size	__ffsdi2, .Lfunc_end24-__ffsdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ffssi2                        @ -- Begin function __ffssi2
	.p2align	2
	.type	__ffssi2,%function
	.code	32                              @ @__ffssi2
__ffssi2:
.Lfunc_begin25:
	.file	19 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ffssi2.c" md5 0x182169d6765bddc2bf1b03cc7a4f47cb
	.loc	19 23 0 is_stmt 1               @ ../ffssi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	19 24 9 prologue_end            @ ../ffssi2.c:24:9
	cmp	r0, #0
	moveq	r0, #0
	.loc	19 29 1                         @ ../ffssi2.c:29:1
	bxeq	lr
.LBB25_1:                               @ %if.end
	.loc	19 28 12                        @ ../ffssi2.c:28:12
	sub	r1, r0, #1
	bic	r0, r1, r0
	ldr	r1, .LCPI25_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r1, .LCPI25_1
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	ldr	r1, .LCPI25_2
	add	r0, r0, r2
	add	r0, r0, r0, lsr #4
	and	r0, r0, r1
	ldr	r1, .LCPI25_3
	mul	r2, r0, r1
	mov	r0, #1
	.loc	19 28 29 is_stmt 0              @ ../ffssi2.c:28:29
	add	r0, r0, r2, lsr #24
	.loc	19 29 1 is_stmt 1               @ ../ffssi2.c:29:1
	bx	lr
.Ltmp162:
	.p2align	2
@ %bb.2:
	.loc	19 0 1 is_stmt 0                @ ../ffssi2.c:0:1
.LCPI25_0:
	.long	1431655765                      @ 0x55555555
.LCPI25_1:
	.long	858993459                       @ 0x33333333
.LCPI25_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI25_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end25:
	.size	__ffssi2, .Lfunc_end25-__ffssi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__lshrdi3                       @ -- Begin function __lshrdi3
	.p2align	2
	.type	__lshrdi3,%function
	.code	32                              @ @__lshrdi3
__lshrdi3:
.Lfunc_begin26:
	.file	20 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../lshrdi3.c" md5 0xc456e45323b3205c3b32d82b51570771
	.loc	20 25 0 is_stmt 1               @ ../lshrdi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp163:
	.loc	20 30 9 prologue_end            @ ../lshrdi3.c:30:9
	tst	r2, #32
	.loc	20 29 15                        @ ../lshrdi3.c:29:15
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	20 30 9                         @ ../lshrdi3.c:30:9
	bne	.LBB26_3
@ %bb.1:                                @ %if.else
	.loc	20 37 13                        @ ../lshrdi3.c:37:13
	cmp	r2, #0
	beq	.LBB26_5
@ %bb.2:                                @ %if.end
	.loc	20 39 34                        @ ../lshrdi3.c:39:34
	ldr	r1, [sp, #12]
	.loc	20 40 72                        @ ../lshrdi3.c:40:72
	ldr	r0, [sp, #8]
	.loc	20 39 39                        @ ../lshrdi3.c:39:39
	lsr	r3, r1, r2
	.loc	20 39 24 is_stmt 0              @ ../lshrdi3.c:39:24
	str	r3, [sp, #4]
	.loc	20 40 55 is_stmt 1              @ ../lshrdi3.c:40:55
	rsb	r3, r2, #32
	.loc	20 40 38 is_stmt 0              @ ../lshrdi3.c:40:38
	lsl	r1, r1, r3
	.loc	20 40 61                        @ ../lshrdi3.c:40:61
	orr	r0, r1, r0, lsr r2
	b	.LBB26_4
.LBB26_3:                               @ %if.then
	.loc	20 33 32 is_stmt 1              @ ../lshrdi3.c:33:32
	ldr	r1, [sp, #12]
	mov	r0, #0
	.loc	20 32 23                        @ ../lshrdi3.c:32:23
	str	r0, [sp, #4]
	.loc	20 33 43                        @ ../lshrdi3.c:33:43
	sub	r0, r2, #32
	.loc	20 33 37 is_stmt 0              @ ../lshrdi3.c:33:37
	lsr	r0, r1, r0
.LBB26_4:                               @ %if.end18
	.loc	20 0 0                          @ ../lshrdi3.c:0:0
	str	r0, [sp]
	.loc	20 42 19 is_stmt 1              @ ../lshrdi3.c:42:19
	ldm	sp, {r0, r1}
.LBB26_5:                               @ %return
	.loc	20 43 1                         @ ../lshrdi3.c:43:1
	add	sp, sp, #16
	bx	lr
.Ltmp164:
.Lfunc_end26:
	.size	__lshrdi3, .Lfunc_end26-__lshrdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__moddi3                        @ -- Begin function __moddi3
	.p2align	2
	.type	__moddi3,%function
	.code	32                              @ @__moddi3
__moddi3:
.Lfunc_begin27:
	.file	21 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../moddi3.c" md5 0x76733914157a978303cbe3d6f6d1c647
	.loc	21 21 0                         @ ../moddi3.c:21:0
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
	sub	sp, sp, #16
	mov	r5, r1
	add	r1, sp, #8
.Ltmp165:
	.loc	21 26 12 prologue_end           @ ../moddi3.c:26:12
	eor	r0, r0, r5, asr #31
	.loc	21 28 5                         @ ../moddi3.c:28:5
	str	r1, [sp]
	.loc	21 26 12                        @ ../moddi3.c:26:12
	eor	r1, r5, r5, asr #31
	.loc	21 26 17 is_stmt 0              @ ../moddi3.c:26:17
	subs	r0, r0, r5, asr #31
	sbc	r1, r1, r5, asr #31
	.loc	21 24 17 is_stmt 1              @ ../moddi3.c:24:17
	adds	r2, r2, r3, asr #31
	adc	r4, r3, r3, asr #31
	eor	r2, r2, r3, asr #31
	eor	r3, r4, r3, asr #31
	.loc	21 28 5                         @ ../moddi3.c:28:5
	bl	__udivmoddi4
	.loc	21 29 21                        @ ../moddi3.c:29:21
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	.loc	21 29 23 is_stmt 0              @ ../moddi3.c:29:23
	eor	r0, r0, r5, asr #31
	eor	r1, r1, r5, asr #31
	.loc	21 29 28                        @ ../moddi3.c:29:28
	subs	r0, r0, r5, asr #31
	sbc	r1, r1, r5, asr #31
	.loc	21 29 5                         @ ../moddi3.c:29:5
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp166:
.Lfunc_end27:
	.size	__moddi3, .Lfunc_end27-__moddi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__modsi3                        @ -- Begin function __modsi3
	.p2align	2
	.type	__modsi3,%function
	.code	32                              @ @__modsi3
__modsi3:
.Lfunc_begin28:
	.file	22 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../modsi3.c" md5 0xada583aff17540d2228ce14dc879fdc8
	.loc	22 21 0 is_stmt 1               @ ../modsi3.c:21:0
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
	mov	r4, r1
	mov	r5, r0
.Ltmp167:
	.loc	22 22 16 prologue_end           @ ../modsi3.c:22:16
	bl	__divsi3
	.loc	22 22 31 is_stmt 0              @ ../modsi3.c:22:31
	mul	r1, r0, r4
	.loc	22 22 14                        @ ../modsi3.c:22:14
	sub	r0, r5, r1
	.loc	22 22 5                         @ ../modsi3.c:22:5
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp168:
.Lfunc_end28:
	.size	__modsi3, .Lfunc_end28-__modsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__mulvdi3                       @ -- Begin function __mulvdi3
	.p2align	2
	.type	__mulvdi3,%function
	.code	32                              @ @__mulvdi3
__mulvdi3:
.Lfunc_begin29:
	.file	23 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../mulvdi3.c" md5 0xbb6aa1440e4e37fe94db90279d27db10
	.loc	23 23 0 is_stmt 1               @ ../mulvdi3.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r9, -12
	.cfi_offset r8, -16
	.cfi_offset r7, -20
	.cfi_offset r6, -24
	.cfi_offset r5, -28
	.cfi_offset r4, -32
	add	r11, sp, #24
	.cfi_def_cfa r11, 8
	mov	r7, r0
.Ltmp169:
	.loc	23 27 11 prologue_end           @ ../mulvdi3.c:27:11
	eor	r0, r1, #-2147483648
	mov	r5, r3
	mov	r4, r2
	mov	r6, r1
	orrs	r0, r7, r0
	.loc	23 27 9 is_stmt 0               @ ../mulvdi3.c:27:9
	bne	.LBB29_3
@ %bb.1:                                @ %if.then
	.loc	23 29 15 is_stmt 1              @ ../mulvdi3.c:29:15
	orrs	r0, r4, r5
	.loc	23 29 25 is_stmt 0              @ ../mulvdi3.c:29:25
	eorne	r0, r4, #1
	orrsne	r0, r0, r5
	beq	.LBB29_12
@ %bb.2:                                @ %if.end
	.loc	23 31 9 is_stmt 1               @ ../mulvdi3.c:31:9
	ldr	r0, .LCPI29_0
	ldr	r2, .LCPI29_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB29_3:                               @ %if.end4
	.loc	23 0 9 is_stmt 0                @ ../mulvdi3.c:0:9
	mov	r0, #-2147483648
	.loc	23 33 11 is_stmt 1              @ ../mulvdi3.c:33:11
	eor	r0, r5, r0
	orrs	r0, r4, r0
	.loc	23 33 9 is_stmt 0               @ ../mulvdi3.c:33:9
	bne	.LBB29_6
@ %bb.4:                                @ %if.then6
	.loc	23 35 15 is_stmt 1              @ ../mulvdi3.c:35:15
	orrs	r0, r7, r6
	.loc	23 35 25 is_stmt 0              @ ../mulvdi3.c:35:25
	eorne	r0, r7, #1
	orrsne	r0, r0, r6
	beq	.LBB29_12
@ %bb.5:                                @ %if.end12
	.loc	23 37 9 is_stmt 1               @ ../mulvdi3.c:37:9
	ldr	r0, .LCPI29_0
	ldr	r2, .LCPI29_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB29_6:                               @ %if.end13
	.loc	23 42 23                        @ ../mulvdi3.c:42:23
	eor	r0, r4, r5, asr #31
	eor	r1, r5, r5, asr #31
	.loc	23 42 29 is_stmt 0              @ ../mulvdi3.c:42:29
	subs	r2, r0, r5, asr #31
	.loc	23 40 23 is_stmt 1              @ ../mulvdi3.c:40:23
	eor	r0, r7, r6, asr #31
	.loc	23 42 29                        @ ../mulvdi3.c:42:29
	sbc	r3, r1, r5, asr #31
	.loc	23 40 23                        @ ../mulvdi3.c:40:23
	eor	r1, r6, r6, asr #31
	.loc	23 40 29 is_stmt 0              @ ../mulvdi3.c:40:29
	subs	r9, r0, r6, asr #31
	sbc	r8, r1, r6, asr #31
	.loc	23 43 15 is_stmt 1              @ ../mulvdi3.c:43:15
	subs	r0, r9, #2
	sbcs	r0, r8, #0
	.loc	23 43 19 is_stmt 0              @ ../mulvdi3.c:43:19
	blt	.LBB29_12
@ %bb.7:                                @ %lor.lhs.false18
	.loc	23 43 28                        @ ../mulvdi3.c:43:28
	subs	r0, r2, #2
	sbcs	r0, r3, #0
	.loc	23 43 9                         @ ../mulvdi3.c:43:9
	blt	.LBB29_12
@ %bb.8:                                @ %if.end22
	.loc	23 0 0                          @ ../mulvdi3.c:0:0
	asr	r0, r5, #31
	asr	r1, r6, #31
	.loc	23 45 12 is_stmt 1              @ ../mulvdi3.c:45:12
	eor	r0, r1, r0
	orrs	r0, r0, r0
	.loc	23 45 9 is_stmt 0               @ ../mulvdi3.c:45:9
	bne	.LBB29_11
@ %bb.9:                                @ %if.then24
	.loc	23 47 25 is_stmt 1              @ ../mulvdi3.c:47:25
	mvn	r0, #0
	mvn	r1, #-2147483648
	bl	__divdi3
	.loc	23 47 19 is_stmt 0              @ ../mulvdi3.c:47:19
	subs	r0, r0, r9
	sbcs	r0, r1, r8
	.loc	23 47 13                        @ ../mulvdi3.c:47:13
	bge	.LBB29_12
@ %bb.10:                               @ %if.then26
	.loc	23 48 13 is_stmt 1              @ ../mulvdi3.c:48:13
	ldr	r0, .LCPI29_0
	ldr	r2, .LCPI29_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB29_11:                              @ %if.else
	.loc	23 52 27                        @ ../mulvdi3.c:52:27
	rsbs	r2, r2, #0
	.loc	23 52 25 is_stmt 0              @ ../mulvdi3.c:52:25
	mov	r0, #0
	mov	r1, #-2147483648
	.loc	23 52 27                        @ ../mulvdi3.c:52:27
	rsc	r3, r3, #0
	.loc	23 52 25                        @ ../mulvdi3.c:52:25
	bl	__divdi3
	.loc	23 52 19                        @ ../mulvdi3.c:52:19
	subs	r0, r0, r9
	sbcs	r0, r1, r8
	.loc	23 52 13                        @ ../mulvdi3.c:52:13
	blt	.LBB29_13
.LBB29_12:                              @ %return
	.loc	23 0 0                          @ ../mulvdi3.c:0:0
	umull	r0, r1, r7, r4
	mla	r2, r7, r5, r1
	mla	r1, r6, r4, r2
	.loc	23 56 1 is_stmt 1               @ ../mulvdi3.c:56:1
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	bx	lr
.LBB29_13:                              @ %if.then31
	.loc	23 53 13                        @ ../mulvdi3.c:53:13
	ldr	r0, .LCPI29_0
	ldr	r2, .LCPI29_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.Ltmp170:
	.p2align	2
@ %bb.14:
	.loc	23 0 13 is_stmt 0               @ ../mulvdi3.c:0:13
.LCPI29_0:
	.long	.L.str.8
.LCPI29_1:
	.long	.L__func__.__mulvdi3
.Lfunc_end29:
	.size	__mulvdi3, .Lfunc_end29-__mulvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__mulvsi3                       @ -- Begin function __mulvsi3
	.p2align	2
	.type	__mulvsi3,%function
	.code	32                              @ @__mulvsi3
__mulvsi3:
.Lfunc_begin30:
	.file	24 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../mulvsi3.c" md5 0x32cd947949fac3c039bd0839cd5d7c78
	.loc	24 23 0 is_stmt 1               @ ../mulvsi3.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r4, r5, r6, r10, r11, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r10, -12
	.cfi_offset r6, -16
	.cfi_offset r5, -20
	.cfi_offset r4, -24
	add	r11, sp, #16
	.cfi_def_cfa r11, 8
	mov	r4, r1
	mov	r5, r0
.Ltmp171:
	.loc	24 27 9 prologue_end            @ ../mulvsi3.c:27:9
	cmp	r0, #-2147483648
	bne	.LBB30_3
@ %bb.1:                                @ %if.then
	.loc	24 29 20                        @ ../mulvsi3.c:29:20
	cmp	r4, #0
	.loc	24 29 13 is_stmt 0              @ ../mulvsi3.c:29:13
	cmpne	r4, #1
	beq	.LBB30_12
@ %bb.2:                                @ %if.end
	.loc	24 31 9 is_stmt 1               @ ../mulvsi3.c:31:9
	ldr	r0, .LCPI30_0
	ldr	r2, .LCPI30_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB30_3:                               @ %if.end4
	.loc	24 33 9                         @ ../mulvsi3.c:33:9
	cmp	r4, #-2147483648
	bne	.LBB30_6
@ %bb.4:                                @ %if.then6
	.loc	24 35 20                        @ ../mulvsi3.c:35:20
	cmp	r5, #0
	.loc	24 35 13 is_stmt 0              @ ../mulvsi3.c:35:13
	cmpne	r5, #1
	beq	.LBB30_12
@ %bb.5:                                @ %if.end12
	.loc	24 37 9 is_stmt 1               @ ../mulvsi3.c:37:9
	ldr	r0, .LCPI30_0
	ldr	r2, .LCPI30_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB30_6:                               @ %if.end13
	.loc	24 40 23                        @ ../mulvsi3.c:40:23
	eor	r0, r5, r5, asr #31
	.loc	24 40 29 is_stmt 0              @ ../mulvsi3.c:40:29
	sub	r6, r0, r5, asr #31
	.loc	24 43 19 is_stmt 1              @ ../mulvsi3.c:43:19
	cmp	r6, #2
	blt	.LBB30_12
@ %bb.7:                                @ %lor.lhs.false18
	.loc	24 0 0 is_stmt 0                @ ../mulvsi3.c:0:0
	eor	r0, r4, r4, asr #31
	sub	r1, r0, r4, asr #31
	.loc	24 43 9                         @ ../mulvsi3.c:43:9
	cmp	r1, #2
	blt	.LBB30_12
@ %bb.8:                                @ %if.end22
	.loc	24 0 0                          @ ../mulvsi3.c:0:0
	asr	r0, r4, #31
	asr	r2, r5, #31
	.loc	24 45 9 is_stmt 1               @ ../mulvsi3.c:45:9
	cmp	r2, r0
	bne	.LBB30_11
@ %bb.9:                                @ %if.then24
	.loc	24 47 25                        @ ../mulvsi3.c:47:25
	mvn	r0, #-2147483648
	bl	__divsi3
	.loc	24 47 13 is_stmt 0              @ ../mulvsi3.c:47:13
	cmp	r6, r0
	ble	.LBB30_12
@ %bb.10:                               @ %if.then26
	.loc	24 48 13 is_stmt 1              @ ../mulvsi3.c:48:13
	ldr	r0, .LCPI30_0
	ldr	r2, .LCPI30_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB30_11:                              @ %if.else
	.loc	24 52 27                        @ ../mulvsi3.c:52:27
	rsb	r1, r1, #0
	.loc	24 52 25 is_stmt 0              @ ../mulvsi3.c:52:25
	mov	r0, #-2147483648
	bl	__divsi3
	.loc	24 52 13                        @ ../mulvsi3.c:52:13
	cmp	r6, r0
	bgt	.LBB30_13
.LBB30_12:                              @ %return
	.loc	24 0 0                          @ ../mulvsi3.c:0:0
	mul	r0, r5, r4
	.loc	24 56 1 is_stmt 1               @ ../mulvsi3.c:56:1
	pop	{r4, r5, r6, r10, r11, lr}
	bx	lr
.LBB30_13:                              @ %if.then31
	.loc	24 53 13                        @ ../mulvsi3.c:53:13
	ldr	r0, .LCPI30_0
	ldr	r2, .LCPI30_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.Ltmp172:
	.p2align	2
@ %bb.14:
	.loc	24 0 13 is_stmt 0               @ ../mulvsi3.c:0:13
.LCPI30_0:
	.long	.L.str.9
.LCPI30_1:
	.long	.L__func__.__mulvsi3
.Lfunc_end30:
	.size	__mulvsi3, .Lfunc_end30-__mulvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__paritydi2                     @ -- Begin function __paritydi2
	.p2align	2
	.type	__paritydi2,%function
	.code	32                              @ @__paritydi2
__paritydi2:
.Lfunc_begin31:
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
.Ltmp173:
	.loc	25 23 11 prologue_end           @ ../paritydi2.c:23:11
	push	{r0, r1}
	.loc	25 24 33                        @ ../paritydi2.c:24:33
	eor	r0, r1, r0
	.loc	25 24 12 is_stmt 0              @ ../paritydi2.c:24:12
	bl	__paritysi2
	.loc	25 24 5                         @ ../paritydi2.c:24:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp174:
.Lfunc_end31:
	.size	__paritydi2, .Lfunc_end31-__paritydi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__paritysi2                     @ -- Begin function __paritysi2
	.p2align	2
	.type	__paritysi2,%function
	.code	32                              @ @__paritysi2
__paritysi2:
.Lfunc_begin32:
	.file	26 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../paritysi2.c" md5 0x235e89e1ac3c55fb43879550247ea25b
	.loc	26 21 0 is_stmt 1               @ ../paritysi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	26 23 7 prologue_end            @ ../paritysi2.c:23:7
	eor	r0, r0, r0, lsr #16
	mov	r1, #150
	mov	r2, #1
	.loc	26 24 7                         @ ../paritysi2.c:24:7
	eor	r0, r0, r0, lsr #8
	orr	r1, r1, #26880
	.loc	26 25 7                         @ ../paritysi2.c:25:7
	eor	r0, r0, r0, lsr #4
	.loc	26 26 26                        @ ../paritysi2.c:26:26
	and	r0, r0, #15
	.loc	26 26 34 is_stmt 0              @ ../paritysi2.c:26:34
	and	r0, r2, r1, lsr r0
	.loc	26 26 5                         @ ../paritysi2.c:26:5
	bx	lr
.Ltmp175:
.Lfunc_end32:
	.size	__paritysi2, .Lfunc_end32-__paritysi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__popcountdi2                   @ -- Begin function __popcountdi2
	.p2align	2
	.type	__popcountdi2,%function
	.code	32                              @ @__popcountdi2
__popcountdi2:
.Lfunc_begin33:
	.file	27 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountdi2.c" md5 0x05f001da7fc478c773612fd707769c2a
	.loc	27 21 0 is_stmt 1               @ ../popcountdi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	ldr	r12, .LCPI33_0
.Ltmp176:
	.loc	27 23 20 prologue_end           @ ../popcountdi2.c:23:20
	lsrs	r2, r1, #1
	rrx	r3, r0
	.loc	27 23 26 is_stmt 0              @ ../popcountdi2.c:23:26
	and	r3, r3, r12
	and	r2, r2, r12
	ldr	r12, .LCPI33_2
	.loc	27 23 13                        @ ../popcountdi2.c:23:13
	subs	r0, r0, r3
	sbc	r1, r1, r2
	ldr	r2, .LCPI33_1
	.loc	27 25 52 is_stmt 1              @ ../popcountdi2.c:25:52
	and	r3, r1, r2
	.loc	27 25 21 is_stmt 0              @ ../popcountdi2.c:25:21
	and	r1, r2, r1, lsr #2
	.loc	27 25 46                        @ ../popcountdi2.c:25:46
	add	r1, r1, r3
	.loc	27 25 52                        @ ../popcountdi2.c:25:52
	and	r3, r0, r2
	.loc	27 25 21                        @ ../popcountdi2.c:25:21
	and	r0, r2, r0, lsr #2
	.loc	27 25 46                        @ ../popcountdi2.c:25:46
	add	r0, r0, r3
	.loc	27 27 14 is_stmt 1              @ ../popcountdi2.c:27:14
	add	r1, r1, r1, lsr #4
	add	r0, r0, r0, lsr #4
	.loc	27 27 27 is_stmt 0              @ ../popcountdi2.c:27:27
	and	r1, r1, r12
	and	r0, r0, r12
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
.Ltmp177:
	.p2align	2
@ %bb.1:
	.loc	27 0 5                          @ ../popcountdi2.c:0:5
.LCPI33_0:
	.long	1431655765                      @ 0x55555555
.LCPI33_1:
	.long	858993459                       @ 0x33333333
.LCPI33_2:
	.long	252645135                       @ 0xf0f0f0f
.Lfunc_end33:
	.size	__popcountdi2, .Lfunc_end33-__popcountdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__popcountsi2                   @ -- Begin function __popcountsi2
	.p2align	2
	.type	__popcountsi2,%function
	.code	32                              @ @__popcountsi2
__popcountsi2:
.Lfunc_begin34:
	.file	28 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountsi2.c" md5 0xf9ebedb2d8810ee5a54fff38e1b09d64
	.loc	28 21 0 is_stmt 1               @ ../popcountsi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	ldr	r1, .LCPI34_0
.Ltmp178:
	.loc	28 23 23 prologue_end           @ ../popcountsi2.c:23:23
	and	r1, r1, r0, lsr #1
	.loc	28 23 11 is_stmt 0              @ ../popcountsi2.c:23:11
	sub	r0, r0, r1
	ldr	r1, .LCPI34_1
	.loc	28 25 38 is_stmt 1              @ ../popcountsi2.c:25:38
	and	r2, r0, r1
	.loc	28 25 19 is_stmt 0              @ ../popcountsi2.c:25:19
	and	r0, r1, r0, lsr #2
	ldr	r1, .LCPI34_2
	.loc	28 25 33                        @ ../popcountsi2.c:25:33
	add	r0, r0, r2
	.loc	28 27 12 is_stmt 1              @ ../popcountsi2.c:27:12
	add	r0, r0, r0, lsr #4
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
.Ltmp179:
	.p2align	2
@ %bb.1:
	.loc	28 0 5                          @ ../popcountsi2.c:0:5
.LCPI34_0:
	.long	1431655765                      @ 0x55555555
.LCPI34_1:
	.long	858993459                       @ 0x33333333
.LCPI34_2:
	.long	252645135                       @ 0xf0f0f0f
.Lfunc_end34:
	.size	__popcountsi2, .Lfunc_end34-__popcountsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__subvdi3                       @ -- Begin function __subvdi3
	.p2align	2
	.type	__subvdi3,%function
	.code	32                              @ @__subvdi3
__subvdi3:
.Lfunc_begin35:
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
	mov	lr, r0
.Ltmp180:
	.loc	29 24 27 prologue_end           @ ../subvdi3.c:24:27
	subs	r0, r0, r2
	mov	r12, r1
	sbc	r1, r1, r3
	.loc	29 25 9                         @ ../subvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB35_3
@ %bb.1:                                @ %if.then
	.loc	29 27 15                        @ ../subvdi3.c:27:15
	subs	r2, lr, r0
	sbcs	r2, r12, r1
	.loc	29 27 13 is_stmt 0              @ ../subvdi3.c:27:13
	bge	.LBB35_4
@ %bb.2:                                @ %if.then2
	.loc	29 28 13 is_stmt 1              @ ../subvdi3.c:28:13
	ldr	r0, .LCPI35_0
	ldr	r2, .LCPI35_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB35_3:                               @ %if.else
	.loc	29 32 15                        @ ../subvdi3.c:32:15
	subs	r2, lr, r0
	sbcs	r2, r12, r1
	.loc	29 32 13 is_stmt 0              @ ../subvdi3.c:32:13
	bge	.LBB35_5
.LBB35_4:                               @ %if.end6
	.loc	29 35 5 is_stmt 1               @ ../subvdi3.c:35:5
	pop	{r11, lr}
	bx	lr
.LBB35_5:                               @ %if.then4
	.loc	29 33 13                        @ ../subvdi3.c:33:13
	ldr	r0, .LCPI35_0
	ldr	r2, .LCPI35_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.Ltmp181:
	.p2align	2
@ %bb.6:
	.loc	29 0 13 is_stmt 0               @ ../subvdi3.c:0:13
.LCPI35_0:
	.long	.L.str.12
.LCPI35_1:
	.long	.L__func__.__subvdi3
.Lfunc_end35:
	.size	__subvdi3, .Lfunc_end35-__subvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__subvsi3                       @ -- Begin function __subvsi3
	.p2align	2
	.type	__subvsi3,%function
	.code	32                              @ @__subvsi3
__subvsi3:
.Lfunc_begin36:
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
	mov	r2, r0
.Ltmp182:
	.loc	30 24 27 prologue_end           @ ../subvsi3.c:24:27
	sub	r0, r0, r1
	.loc	30 25 9                         @ ../subvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB36_3
@ %bb.1:                                @ %if.then
	.loc	30 27 13                        @ ../subvsi3.c:27:13
	cmp	r0, r2
	ble	.LBB36_4
@ %bb.2:                                @ %if.then2
	.loc	30 28 13                        @ ../subvsi3.c:28:13
	ldr	r0, .LCPI36_0
	ldr	r2, .LCPI36_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB36_3:                               @ %if.else
	.loc	30 32 13                        @ ../subvsi3.c:32:13
	cmp	r0, r2
	ble	.LBB36_5
.LBB36_4:                               @ %if.end6
	.loc	30 35 5                         @ ../subvsi3.c:35:5
	pop	{r11, lr}
	bx	lr
.LBB36_5:                               @ %if.then4
	.loc	30 33 13                        @ ../subvsi3.c:33:13
	ldr	r0, .LCPI36_0
	ldr	r2, .LCPI36_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.Ltmp183:
	.p2align	2
@ %bb.6:
	.loc	30 0 13 is_stmt 0               @ ../subvsi3.c:0:13
.LCPI36_0:
	.long	.L.str.13
.LCPI36_1:
	.long	.L__func__.__subvsi3
.Lfunc_end36:
	.size	__subvsi3, .Lfunc_end36-__subvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ucmpdi2                       @ -- Begin function __ucmpdi2
	.p2align	2
	.type	__ucmpdi2,%function
	.code	32                              @ @__ucmpdi2
__ucmpdi2:
.Lfunc_begin37:
	.file	31 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ucmpdi2.c" md5 0x79f778ef54939446d175079e19d07756
	.loc	31 24 0 is_stmt 1               @ ../ucmpdi2.c:24:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp184:
	.loc	31 26 11 prologue_end           @ ../ucmpdi2.c:26:11
	str	r0, [sp, #8]
	mov	r0, #0
	.loc	31 29 9                         @ ../ucmpdi2.c:29:9
	cmp	r1, r3
	.loc	31 26 11                        @ ../ucmpdi2.c:26:11
	str	r1, [sp, #12]
	.loc	31 28 11                        @ ../ucmpdi2.c:28:11
	stm	sp, {r2, r3}
	.loc	31 29 9                         @ ../ucmpdi2.c:29:9
	blo	.LBB37_4
@ %bb.1:                                @ %if.end
	.loc	31 31 24                        @ ../ucmpdi2.c:31:24
	ldr	r1, [sp, #4]
	.loc	31 31 13 is_stmt 0              @ ../ucmpdi2.c:31:13
	ldr	r2, [sp, #12]
	.loc	31 31 9                         @ ../ucmpdi2.c:31:9
	cmp	r2, r1
	movhi	r0, #2
	.loc	31 38 1 is_stmt 1               @ ../ucmpdi2.c:38:1
	addhi	sp, sp, #16
	bxhi	lr
.LBB37_2:                               @ %if.end10
	.loc	31 33 23                        @ ../ucmpdi2.c:33:23
	ldr	r1, [sp]
	.loc	31 33 13 is_stmt 0              @ ../ucmpdi2.c:33:13
	ldr	r2, [sp, #8]
	.loc	31 33 9                         @ ../ucmpdi2.c:33:9
	cmp	r2, r1
	blo	.LBB37_4
@ %bb.3:                                @ %if.end16
	.loc	31 35 23 is_stmt 1              @ ../ucmpdi2.c:35:23
	ldr	r0, [sp]
	.loc	31 35 13 is_stmt 0              @ ../ucmpdi2.c:35:13
	ldr	r1, [sp, #8]
	.loc	31 35 9                         @ ../ucmpdi2.c:35:9
	cmp	r1, r0
	mov	r0, #2
	movls	r0, #1
.LBB37_4:                               @ %return
	.loc	31 38 1 is_stmt 1               @ ../ucmpdi2.c:38:1
	add	sp, sp, #16
	bx	lr
.Ltmp185:
.Lfunc_end37:
	.size	__ucmpdi2, .Lfunc_end37-__ucmpdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__aeabi_ulcmp                   @ -- Begin function __aeabi_ulcmp
	.p2align	2
	.type	__aeabi_ulcmp,%function
	.code	32                              @ @__aeabi_ulcmp
__aeabi_ulcmp:
.Lfunc_begin38:
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
.Ltmp186:
	.loc	31 48 9 prologue_end            @ ../ucmpdi2.c:48:9
	bl	__ucmpdi2
	.loc	31 48 25 is_stmt 0              @ ../ucmpdi2.c:48:25
	sub	r0, r0, #1
	.loc	31 48 2                         @ ../ucmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp187:
.Lfunc_end38:
	.size	__aeabi_ulcmp, .Lfunc_end38-__aeabi_ulcmp
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivdi3                       @ -- Begin function __udivdi3
	.p2align	2
	.type	__udivdi3,%function
	.code	32                              @ @__udivdi3
__udivdi3:
.Lfunc_begin39:
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
	mov	r12, #0
.Ltmp188:
	.loc	32 22 12 prologue_end           @ ../udivdi3.c:22:12
	str	r12, [sp]
	bl	__udivmoddi4
	.loc	32 22 5 is_stmt 0               @ ../udivdi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp189:
.Lfunc_end39:
	.size	__udivdi3, .Lfunc_end39-__udivdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivmodsi4                    @ -- Begin function __udivmodsi4
	.p2align	2
	.type	__udivmodsi4,%function
	.code	32                              @ @__udivmodsi4
__udivmodsi4:
.Lfunc_begin40:
	.file	33 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivmodsi4.c" md5 0xc0341684574a20dbcfbe4df0ab9f8538
	.loc	33 21 0 is_stmt 1               @ ../udivmodsi4.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r4, r5, r6, r10, r11, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r10, -12
	.cfi_offset r6, -16
	.cfi_offset r5, -20
	.cfi_offset r4, -24
	add	r11, sp, #16
	.cfi_def_cfa r11, 8
	mov	r4, r2
	mov	r5, r1
	mov	r6, r0
.Ltmp190:
	.loc	33 22 14 prologue_end           @ ../udivmodsi4.c:22:14
	bl	__udivsi3
	.loc	33 23 16                        @ ../udivmodsi4.c:23:16
	mul	r1, r0, r5
	.loc	33 23 12 is_stmt 0              @ ../udivmodsi4.c:23:12
	sub	r1, r6, r1
	.loc	33 23 8                         @ ../udivmodsi4.c:23:8
	str	r1, [r4]
	.loc	33 24 3 is_stmt 1               @ ../udivmodsi4.c:24:3
	pop	{r4, r5, r6, r10, r11, lr}
	bx	lr
.Ltmp191:
.Lfunc_end40:
	.size	__udivmodsi4, .Lfunc_end40-__udivmodsi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivsi3                       @ -- Begin function __udivsi3
	.p2align	2
	.type	__udivsi3,%function
	.code	32                              @ @__udivsi3
__udivsi3:
.Lfunc_begin41:
	.file	34 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivsi3.c" md5 0xb74987a973aededf95faab34db33f58a
	.loc	34 26 0                         @ ../udivsi3.c:26:0
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
.Ltmp192:
	.loc	34 32 9 prologue_end            @ ../udivsi3.c:32:9
	cmp	r1, #0
	mov	r5, #0
	movne	r6, r0
	.loc	34 34 9                         @ ../udivsi3.c:34:9
	cmpne	r0, #0
	bne	.LBB41_2
.LBB41_1:                               @ %return
	.loc	34 66 1                         @ ../udivsi3.c:66:1
	mov	r0, r5
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
.LBB41_2:                               @ %if.end3
	.loc	34 36 10                        @ ../udivsi3.c:36:10
	mov	r0, r1
	mov	r4, r1
	bl	__clzsi2
	mov	r7, r0
	.loc	34 36 29 is_stmt 0              @ ../udivsi3.c:36:29
	mov	r0, r6
	bl	__clzsi2
	.loc	34 36 27                        @ ../udivsi3.c:36:27
	sub	r1, r7, r0
	.loc	34 38 9 is_stmt 1               @ ../udivsi3.c:38:9
	cmp	r1, #31
	bhi	.LBB41_1
@ %bb.3:                                @ %if.end6
	.loc	34 40 9                         @ ../udivsi3.c:40:9
	bne	.LBB41_5
@ %bb.4:
	.loc	34 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r5, r6
	b	.LBB41_1
.LBB41_5:                               @ %if.end9
	.loc	34 48 5 is_stmt 1               @ ../udivsi3.c:48:5
	mvn	r2, r7
	mov	r3, #0
	add	r0, r2, r0
	.loc	34 42 5                         @ ../udivsi3.c:42:5
	add	r2, r1, #1
	.loc	34 45 28                        @ ../udivsi3.c:45:28
	rsb	r1, r1, #31
	.loc	34 46 11                        @ ../udivsi3.c:46:11
	lsr	r2, r6, r2
	.loc	34 45 11                        @ ../udivsi3.c:45:11
	lsl	r1, r6, r1
	.loc	34 48 5                         @ ../udivsi3.c:48:5
	cmp	r0, #0
	beq	.LBB41_7
.LBB41_6:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	.loc	34 51 22                        @ ../udivsi3.c:51:22
	lsl	r2, r2, #1
	.loc	34 48 5                         @ ../udivsi3.c:48:5
	add	r0, r0, #1
	.loc	34 51 22                        @ ../udivsi3.c:51:22
	orr	r2, r2, r1, lsr #31
	.loc	34 52 22                        @ ../udivsi3.c:52:22
	orr	r1, r3, r1, lsl #1
	.loc	34 60 41                        @ ../udivsi3.c:60:41
	mvn	r7, r2
	adds	r7, r7, r4
	.loc	34 62 11                        @ ../udivsi3.c:62:11
	submi	r2, r2, r4
	.loc	34 61 19                        @ ../udivsi3.c:61:19
	lsr	r3, r7, #31
	.loc	34 48 5                         @ ../udivsi3.c:48:5
	cmp	r0, #0
	bne	.LBB41_6
.LBB41_7:                               @ %for.end
	.loc	34 64 18                        @ ../udivsi3.c:64:18
	orr	r5, r3, r1, lsl #1
	b	.LBB41_1
.Ltmp193:
.Lfunc_end41:
	.size	__udivsi3, .Lfunc_end41-__udivsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__umoddi3                       @ -- Begin function __umoddi3
	.p2align	2
	.type	__umoddi3,%function
	.code	32                              @ @__umoddi3
__umoddi3:
.Lfunc_begin42:
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
	add	r12, sp, #8
.Ltmp194:
	.loc	35 23 5 prologue_end            @ ../umoddi3.c:23:5
	str	r12, [sp]
	bl	__udivmoddi4
	.loc	35 24 12                        @ ../umoddi3.c:24:12
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	.loc	35 24 5 is_stmt 0               @ ../umoddi3.c:24:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp195:
.Lfunc_end42:
	.size	__umoddi3, .Lfunc_end42-__umoddi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__umodsi3                       @ -- Begin function __umodsi3
	.p2align	2
	.type	__umodsi3,%function
	.code	32                              @ @__umodsi3
__umodsi3:
.Lfunc_begin43:
	.file	36 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../umodsi3.c" md5 0xce74ac33cd2bd170a84f43824cae8961
	.loc	36 21 0 is_stmt 1               @ ../umodsi3.c:21:0
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
	mov	r4, r1
	mov	r5, r0
.Ltmp196:
	.loc	36 22 16 prologue_end           @ ../umodsi3.c:22:16
	bl	__udivsi3
	.loc	36 22 32 is_stmt 0              @ ../umodsi3.c:22:32
	mul	r1, r0, r4
	.loc	36 22 14                        @ ../umodsi3.c:22:14
	sub	r0, r5, r1
	.loc	36 22 5                         @ ../umodsi3.c:22:5
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp197:
.Lfunc_end43:
	.size	__umodsi3, .Lfunc_end43-__umodsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	memcpy                          @ -- Begin function memcpy
	.p2align	2
	.type	memcpy,%function
	.code	32                              @ @memcpy
memcpy:
.Lfunc_begin44:
	.file	37 "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" "../memory.c" md5 0xfa9c872a007b30a353222cd13b38538d
	.loc	37 4 0 is_stmt 1                @ ../memory.c:4:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
.LBB44_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	37 8 2 prologue_end             @ ../memory.c:8:2
	cmp	r2, #0
	.loc	37 11 1                         @ ../memory.c:11:1
	bxeq	lr
.LBB44_2:                               @ %for.body
                                        @   in Loop: Header=BB44_1 Depth=1
	.loc	37 9 21                         @ ../memory.c:9:21
	ldrb	r3, [r1]
	.loc	37 8 2                          @ ../memory.c:8:2
	sub	r2, r2, #1
	add	r1, r1, #1
	.loc	37 9 19                         @ ../memory.c:9:19
	strb	r3, [r0]
	.loc	37 8 2                          @ ../memory.c:8:2
	add	r0, r0, #1
	b	.LBB44_1
.Ltmp198:
.Lfunc_end44:
	.size	memcpy, .Lfunc_end44-memcpy
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	memset                          @ -- Begin function memset
	.p2align	2
	.type	memset,%function
	.code	32                              @ @memset
memset:
.Lfunc_begin45:
	.loc	37 14 0                         @ ../memory.c:14:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r3, #0
.LBB45_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
.Ltmp199:
	.loc	37 17 2 prologue_end            @ ../memory.c:17:2
	cmp	r2, r3
	.loc	37 20 2                         @ ../memory.c:20:2
	bxeq	lr
.LBB45_2:                               @ %for.body
                                        @   in Loop: Header=BB45_1 Depth=1
	.loc	37 18 11                        @ ../memory.c:18:11
	strb	r1, [r0, r3]
	.loc	37 17 26                        @ ../memory.c:17:26
	add	r3, r3, #1
	b	.LBB45_1
.Ltmp200:
.Lfunc_end45:
	.size	memset, .Lfunc_end45-memset
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.type	ludcmp_a,%object                @ @ludcmp_a
	.bss
	.globl	ludcmp_a
	.p2align	3
ludcmp_a:
	.zero	20000
	.size	ludcmp_a, 20000

	.type	ludcmp_b,%object                @ @ludcmp_b
	.globl	ludcmp_b
	.p2align	3
ludcmp_b:
	.zero	400
	.size	ludcmp_b, 400

	.type	ludcmp_chkerr,%object           @ @ludcmp_chkerr
	.globl	ludcmp_chkerr
	.p2align	2
ludcmp_chkerr:
	.long	0                               @ 0x0
	.size	ludcmp_chkerr, 4

	.type	ludcmp_x,%object                @ @ludcmp_x
	.globl	ludcmp_x
	.p2align	3
ludcmp_x:
	.zero	400
	.size	ludcmp_x, 400

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

	.section	.debug_loclists,"",%progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 @ Length
.Ldebug_list_header_start0:
	.short	5                               @ Version
	.byte	4                               @ Address size
	.byte	0                               @ Segment selector size
	.long	13                              @ Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
	.long	.Ldebug_loc5-.Lloclists_table_base0
	.long	.Ldebug_loc6-.Lloclists_table_base0
	.long	.Ldebug_loc7-.Lloclists_table_base0
	.long	.Ldebug_loc8-.Lloclists_table_base0
	.long	.Ldebug_loc9-.Lloclists_table_base0
	.long	.Ldebug_loc10-.Lloclists_table_base0
	.long	.Ldebug_loc11-.Lloclists_table_base0
	.long	.Ldebug_loc12-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           @   ending offset
	.byte	6                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	86                              @ DW_OP_reg6
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           @   ending offset
	.byte	10                              @ Loc expr size
	.byte	158                             @ DW_OP_implicit_value
	.byte	8                               @ 8
	.byte	0                               @  
	.byte	0                               @  
	.byte	0                               @  
	.byte	0                               @  
	.byte	0                               @  
	.byte	0                               @  
	.byte	0                               @  
	.byte	0                               @  
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	86                              @ DW_OP_reg6
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          @   ending offset
	.byte	5                               @ Loc expr size
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	86                              @ DW_OP_reg6
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	86                              @ DW_OP_reg6
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	116                             @ DW_OP_breg4
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	8                               @ 8
	.byte	27                              @ DW_OP_div
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          @   ending offset
	.byte	9                               @ Loc expr size
	.byte	116                             @ DW_OP_breg4
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	8                               @ 8
	.byte	27                              @ DW_OP_div
	.byte	17                              @ DW_OP_consts
	.byte	1                               @ 1
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	116                             @ DW_OP_breg4
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	8                               @ 8
	.byte	27                              @ DW_OP_div
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	81                              @ DW_OP_reg1
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	81                              @ DW_OP_reg1
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	84                              @ DW_OP_reg4
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	84                              @ DW_OP_reg4
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	83                              @ DW_OP_reg3
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	88                              @ DW_OP_reg8
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	1                               @ 1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         @   ending offset
	.byte	7                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	44                              @ 44
	.byte	148                             @ DW_OP_deref_size
	.byte	4                               @ 
	.byte	49                              @ DW_OP_lit1
	.byte	28                              @ DW_OP_minus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	90                              @ DW_OP_reg10
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         @   ending offset
	.byte	3                               @ Loc expr size
	.byte	122                             @ DW_OP_breg10
	.byte	127                             @ -1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         @   ending offset
	.byte	3                               @ Loc expr size
	.byte	121                             @ DW_OP_breg9
	.byte	127                             @ -1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	90                              @ DW_OP_reg10
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	116                             @ DW_OP_breg4
	.byte	1                               @ 1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          @   ending offset
	.byte	7                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	28                              @ 28
	.byte	148                             @ DW_OP_deref_size
	.byte	4                               @ 
	.byte	35                              @ DW_OP_plus_uconst
	.byte	1                               @ 1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          @   ending offset
	.byte	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	36                              @ 36
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          @   ending offset
	.byte	7                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	36                              @ 36
	.byte	148                             @ DW_OP_deref_size
	.byte	4                               @ 
	.byte	35                              @ DW_OP_plus_uconst
	.byte	1                               @ 1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          @   ending offset
	.byte	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	36                              @ 36
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          @   ending offset
	.byte	7                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	28                              @ 28
	.byte	148                             @ DW_OP_deref_size
	.byte	4                               @ 
	.byte	35                              @ DW_OP_plus_uconst
	.byte	1                               @ 1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          @   ending offset
	.byte	7                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	32                              @ 32
	.byte	148                             @ DW_OP_deref_size
	.byte	4                               @ 
	.byte	35                              @ DW_OP_plus_uconst
	.byte	1                               @ 1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	113                             @ DW_OP_breg1
	.byte	1                               @ 1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          @   ending offset
	.byte	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	32                              @ 32
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          @   ending offset
	.byte	9                               @ Loc expr size
	.byte	121                             @ DW_OP_breg9
	.byte	0                               @ 0
	.byte	125                             @ DW_OP_breg13
	.byte	48                              @ 48
	.byte	28                              @ DW_OP_minus
	.byte	17                              @ DW_OP_consts
	.byte	8                               @ 8
	.byte	27                              @ DW_OP_div
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         @   ending offset
	.byte	9                               @ Loc expr size
	.byte	121                             @ DW_OP_breg9
	.byte	0                               @ 0
	.byte	125                             @ DW_OP_breg13
	.byte	48                              @ 48
	.byte	28                              @ DW_OP_minus
	.byte	17                              @ DW_OP_consts
	.byte	8                               @ 8
	.byte	27                              @ DW_OP_div
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         @   ending offset
	.byte	9                               @ Loc expr size
	.byte	121                             @ DW_OP_breg9
	.byte	0                               @ 0
	.byte	125                             @ DW_OP_breg13
	.byte	48                              @ 48
	.byte	28                              @ DW_OP_minus
	.byte	17                              @ DW_OP_consts
	.byte	8                               @ 8
	.byte	27                              @ DW_OP_div
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	85                              @ DW_OP_reg5
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	85                              @ DW_OP_reg5
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	85                              @ DW_OP_reg5
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	87                              @ DW_OP_reg7
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	87                              @ DW_OP_reg7
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	87                              @ DW_OP_reg7
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	85                              @ DW_OP_reg5
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         @   ending offset
	.byte	6                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	85                              @ DW_OP_reg5
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         @   ending offset
	.byte	6                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	85                              @ DW_OP_reg5
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         @   ending offset
	.byte	6                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	86                              @ DW_OP_reg6
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         @   ending offset
	.byte	6                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	86                              @ DW_OP_reg6
	.byte	147                             @ DW_OP_piece
	.byte	4                               @ 4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_list_header_end0:
	.section	.debug_abbrev,"",%progbits
	.byte	1                               @ Abbreviation Code
	.byte	17                              @ DW_TAG_compile_unit
	.byte	1                               @ DW_CHILDREN_yes
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
	.ascii	"\214\001"                      @ DW_AT_loclists_base
	.byte	23                              @ DW_FORM_sec_offset
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	2                               @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	3                               @ Abbreviation Code
	.byte	1                               @ DW_TAG_array_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	4                               @ Abbreviation Code
	.byte	33                              @ DW_TAG_subrange_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	55                              @ DW_AT_count
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	5                               @ Abbreviation Code
	.byte	36                              @ DW_TAG_base_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	62                              @ DW_AT_encoding
	.byte	11                              @ DW_FORM_data1
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	6                               @ Abbreviation Code
	.byte	36                              @ DW_TAG_base_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	62                              @ DW_AT_encoding
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	7                               @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	27                              @ DW_FORM_addrx
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	8                               @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	9                               @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	28                              @ DW_AT_const_value
	.byte	13                              @ DW_FORM_sdata
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	10                              @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	34                              @ DW_FORM_loclistx
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	11                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	27                              @ DW_FORM_addrx
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	12                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	34                              @ DW_FORM_loclistx
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	13                              @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	28                              @ DW_AT_const_value
	.byte	15                              @ DW_FORM_udata
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	14                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	0                               @ DW_CHILDREN_no
	.byte	17                              @ DW_AT_low_pc
	.byte	27                              @ DW_FORM_addrx
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	15                              @ Abbreviation Code
	.byte	53                              @ DW_TAG_volatile_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	16                              @ Abbreviation Code
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
	.ascii	"\214\001"                      @ DW_AT_loclists_base
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
	.byte	1                               @ Abbrev [1] 0xc:0x191 DW_TAG_compile_unit
	.byte	0                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	1                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	2                               @ DW_AT_comp_dir
	.byte	4                               @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin0       @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
	.byte	2                               @ Abbrev [2] 0x27:0xb DW_TAG_variable
	.byte	3                               @ DW_AT_name
	.long	50                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	40                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               @ Abbrev [3] 0x32:0x12 DW_TAG_array_type
	.long	68                              @ DW_AT_type
	.byte	4                               @ Abbrev [4] 0x37:0x6 DW_TAG_subrange_type
	.long	72                              @ DW_AT_type
	.byte	50                              @ DW_AT_count
	.byte	4                               @ Abbrev [4] 0x3d:0x6 DW_TAG_subrange_type
	.long	72                              @ DW_AT_type
	.byte	50                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	5                               @ Abbrev [5] 0x44:0x4 DW_TAG_base_type
	.byte	4                               @ DW_AT_name
	.byte	4                               @ DW_AT_encoding
	.byte	8                               @ DW_AT_byte_size
	.byte	6                               @ Abbrev [6] 0x48:0x4 DW_TAG_base_type
	.byte	5                               @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	7                               @ DW_AT_encoding
	.byte	2                               @ Abbrev [2] 0x4c:0xb DW_TAG_variable
	.byte	6                               @ DW_AT_name
	.long	87                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	40                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               @ Abbrev [3] 0x57:0xc DW_TAG_array_type
	.long	68                              @ DW_AT_type
	.byte	4                               @ Abbrev [4] 0x5c:0x6 DW_TAG_subrange_type
	.long	72                              @ DW_AT_type
	.byte	50                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	2                               @ Abbrev [2] 0x63:0xb DW_TAG_variable
	.byte	7                               @ DW_AT_name
	.long	87                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	40                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	2
	.byte	2                               @ Abbrev [2] 0x6e:0xb DW_TAG_variable
	.byte	8                               @ DW_AT_name
	.long	121                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	41                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	3
	.byte	5                               @ Abbrev [5] 0x79:0x4 DW_TAG_base_type
	.byte	9                               @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	7                               @ Abbrev [7] 0x7d:0x3b DW_TAG_subprogram
	.byte	4                               @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	50                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	43                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	8                               @ Abbrev [8] 0x88:0xb DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	125
	.byte	0
	.byte	56                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	47                              @ DW_AT_decl_line
	.long	395                             @ DW_AT_type
	.byte	9                               @ Abbrev [9] 0x93:0x9 DW_TAG_variable
	.byte	5                               @ DW_AT_const_value
	.byte	57                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	45                              @ DW_AT_decl_line
	.long	121                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x9c:0x9 DW_TAG_variable
	.byte	0                               @ DW_AT_location
	.byte	58                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	45                              @ DW_AT_decl_line
	.long	121                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0xa5:0x9 DW_TAG_variable
	.byte	1                               @ DW_AT_location
	.byte	59                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
	.long	68                              @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0xae:0x9 DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	60                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	45                              @ DW_AT_decl_line
	.long	121                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0xb8:0x2b DW_TAG_subprogram
	.byte	5                               @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	51                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	70                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	121                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	9                               @ Abbrev [9] 0xc7:0x9 DW_TAG_variable
	.byte	5                               @ DW_AT_const_value
	.byte	57                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	72                              @ DW_AT_decl_line
	.long	121                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0xd0:0x9 DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	58                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	72                              @ DW_AT_decl_line
	.long	121                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0xd9:0x9 DW_TAG_variable
	.byte	4                               @ DW_AT_location
	.byte	61                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	73                              @ DW_AT_decl_line
	.long	68                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0xe3:0x22 DW_TAG_subprogram
	.byte	6                               @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	52                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	84                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	68                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	12                              @ Abbrev [12] 0xf2:0x9 DW_TAG_formal_parameter
	.byte	5                               @ DW_AT_location
	.byte	57                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	84                              @ DW_AT_decl_line
	.long	68                              @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0xfb:0x9 DW_TAG_variable
	.byte	6                               @ DW_AT_location
	.byte	62                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	86                              @ DW_AT_decl_line
	.long	68                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0x105:0x51 DW_TAG_subprogram
	.byte	7                               @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	53                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	96                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	121                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	12                              @ Abbrev [12] 0x114:0x9 DW_TAG_formal_parameter
	.byte	7                               @ DW_AT_location
	.byte	57                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	96                              @ DW_AT_decl_line
	.long	121                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x11d:0x9 DW_TAG_formal_parameter
	.byte	8                               @ DW_AT_location
	.byte	64                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	96                              @ DW_AT_decl_line
	.long	68                              @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x126:0xb DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	125
	.byte	48
	.byte	63                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	99                              @ DW_AT_decl_line
	.long	400                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x131:0x9 DW_TAG_variable
	.byte	9                               @ DW_AT_location
	.byte	58                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	98                              @ DW_AT_decl_line
	.long	121                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x13a:0x9 DW_TAG_variable
	.byte	10                              @ DW_AT_location
	.byte	60                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	98                              @ DW_AT_decl_line
	.long	121                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x143:0x9 DW_TAG_variable
	.byte	11                              @ DW_AT_location
	.byte	59                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	99                              @ DW_AT_decl_line
	.long	68                              @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x14c:0x9 DW_TAG_variable
	.byte	12                              @ DW_AT_location
	.byte	65                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	98                              @ DW_AT_decl_line
	.long	121                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	7                               @ Abbrev [7] 0x156:0x26 DW_TAG_subprogram
	.byte	8                               @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	54                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	164                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	9                               @ Abbrev [9] 0x161:0x9 DW_TAG_variable
	.byte	5                               @ DW_AT_const_value
	.byte	57                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	166                             @ DW_AT_decl_line
	.long	121                             @ DW_AT_type
	.byte	13                              @ Abbrev [13] 0x16a:0x11 DW_TAG_variable
	.ascii	"\200\200\200\200\200\200\200\370?" @ DW_AT_const_value
	.byte	64                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	167                             @ DW_AT_decl_line
	.long	68                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	14                              @ Abbrev [14] 0x17c:0xf DW_TAG_subprogram
	.byte	9                               @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	55                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	171                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	121                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	15                              @ Abbrev [15] 0x18b:0x5 DW_TAG_volatile_type
	.long	121                             @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x190:0xc DW_TAG_array_type
	.long	68                              @ DW_AT_type
	.byte	4                               @ Abbrev [4] 0x195:0x6 DW_TAG_subrange_type
	.long	72                              @ DW_AT_type
	.byte	100                             @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
.Ldebug_info_end0:
.Lcu_begin1:
	.long	.Ldebug_info_end1-.Ldebug_info_start1 @ Length of Unit
.Ldebug_info_start1:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	11                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	10                              @ DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end1:
.Lcu_begin2:
	.long	.Ldebug_info_end2-.Ldebug_info_start2 @ Length of Unit
.Ldebug_info_start2:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	13                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	11                              @ DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end2:
.Lcu_begin3:
	.long	.Ldebug_info_end3-.Ldebug_info_start3 @ Length of Unit
.Ldebug_info_start3:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	14                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	12                              @ DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end3:
.Lcu_begin4:
	.long	.Ldebug_info_end4-.Ldebug_info_start4 @ Length of Unit
.Ldebug_info_start4:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	15                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	13                              @ DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end4:
.Lcu_begin5:
	.long	.Ldebug_info_end5-.Ldebug_info_start5 @ Length of Unit
.Ldebug_info_start5:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	16                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	14                              @ DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end5:
.Lcu_begin6:
	.long	.Ldebug_info_end6-.Ldebug_info_start6 @ Length of Unit
.Ldebug_info_start6:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	17                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	15                              @ DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end6:
.Lcu_begin7:
	.long	.Ldebug_info_end7-.Ldebug_info_start7 @ Length of Unit
.Ldebug_info_start7:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	18                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	16                              @ DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end7:
.Lcu_begin8:
	.long	.Ldebug_info_end8-.Ldebug_info_start8 @ Length of Unit
.Ldebug_info_start8:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	19                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	17                              @ DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end8:
.Lcu_begin9:
	.long	.Ldebug_info_end9-.Ldebug_info_start9 @ Length of Unit
.Ldebug_info_start9:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	20                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	18                              @ DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin14     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end9:
.Lcu_begin10:
	.long	.Ldebug_info_end10-.Ldebug_info_start10 @ Length of Unit
.Ldebug_info_start10:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	21                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	19                              @ DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin15     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end10:
.Lcu_begin11:
	.long	.Ldebug_info_end11-.Ldebug_info_start11 @ Length of Unit
.Ldebug_info_start11:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	22                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	20                              @ DW_AT_low_pc
	.long	.Lfunc_end17-.Lfunc_begin17     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end11:
.Lcu_begin12:
	.long	.Ldebug_info_end12-.Ldebug_info_start12 @ Length of Unit
.Ldebug_info_start12:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	23                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	21                              @ DW_AT_low_pc
	.long	.Lfunc_end18-.Lfunc_begin18     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end12:
.Lcu_begin13:
	.long	.Ldebug_info_end13-.Ldebug_info_start13 @ Length of Unit
.Ldebug_info_start13:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	24                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	22                              @ DW_AT_low_pc
	.long	.Lfunc_end19-.Lfunc_begin19     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end13:
.Lcu_begin14:
	.long	.Ldebug_info_end14-.Ldebug_info_start14 @ Length of Unit
.Ldebug_info_start14:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	25                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	23                              @ DW_AT_low_pc
	.long	.Lfunc_end20-.Lfunc_begin20     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end14:
.Lcu_begin15:
	.long	.Ldebug_info_end15-.Ldebug_info_start15 @ Length of Unit
.Ldebug_info_start15:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	26                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	24                              @ DW_AT_low_pc
	.long	.Lfunc_end21-.Lfunc_begin21     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end15:
.Lcu_begin16:
	.long	.Ldebug_info_end16-.Ldebug_info_start16 @ Length of Unit
.Ldebug_info_start16:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	27                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	25                              @ DW_AT_low_pc
	.long	.Lfunc_end22-.Lfunc_begin22     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end16:
.Lcu_begin17:
	.long	.Ldebug_info_end17-.Ldebug_info_start17 @ Length of Unit
.Ldebug_info_start17:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	28                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	26                              @ DW_AT_low_pc
	.long	.Lfunc_end23-.Lfunc_begin23     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end17:
.Lcu_begin18:
	.long	.Ldebug_info_end18-.Ldebug_info_start18 @ Length of Unit
.Ldebug_info_start18:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	29                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	27                              @ DW_AT_low_pc
	.long	.Lfunc_end24-.Lfunc_begin24     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end18:
.Lcu_begin19:
	.long	.Ldebug_info_end19-.Ldebug_info_start19 @ Length of Unit
.Ldebug_info_start19:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	30                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	28                              @ DW_AT_low_pc
	.long	.Lfunc_end25-.Lfunc_begin25     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end19:
.Lcu_begin20:
	.long	.Ldebug_info_end20-.Ldebug_info_start20 @ Length of Unit
.Ldebug_info_start20:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	31                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	29                              @ DW_AT_low_pc
	.long	.Lfunc_end26-.Lfunc_begin26     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end20:
.Lcu_begin21:
	.long	.Ldebug_info_end21-.Ldebug_info_start21 @ Length of Unit
.Ldebug_info_start21:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	32                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	30                              @ DW_AT_low_pc
	.long	.Lfunc_end27-.Lfunc_begin27     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end21:
.Lcu_begin22:
	.long	.Ldebug_info_end22-.Ldebug_info_start22 @ Length of Unit
.Ldebug_info_start22:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	33                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	31                              @ DW_AT_low_pc
	.long	.Lfunc_end28-.Lfunc_begin28     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end22:
.Lcu_begin23:
	.long	.Ldebug_info_end23-.Ldebug_info_start23 @ Length of Unit
.Ldebug_info_start23:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	34                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	32                              @ DW_AT_low_pc
	.long	.Lfunc_end29-.Lfunc_begin29     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end23:
.Lcu_begin24:
	.long	.Ldebug_info_end24-.Ldebug_info_start24 @ Length of Unit
.Ldebug_info_start24:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	35                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	33                              @ DW_AT_low_pc
	.long	.Lfunc_end30-.Lfunc_begin30     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end24:
.Lcu_begin25:
	.long	.Ldebug_info_end25-.Ldebug_info_start25 @ Length of Unit
.Ldebug_info_start25:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	36                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	34                              @ DW_AT_low_pc
	.long	.Lfunc_end31-.Lfunc_begin31     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end25:
.Lcu_begin26:
	.long	.Ldebug_info_end26-.Ldebug_info_start26 @ Length of Unit
.Ldebug_info_start26:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	37                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	35                              @ DW_AT_low_pc
	.long	.Lfunc_end32-.Lfunc_begin32     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end26:
.Lcu_begin27:
	.long	.Ldebug_info_end27-.Ldebug_info_start27 @ Length of Unit
.Ldebug_info_start27:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	38                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	36                              @ DW_AT_low_pc
	.long	.Lfunc_end33-.Lfunc_begin33     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end27:
.Lcu_begin28:
	.long	.Ldebug_info_end28-.Ldebug_info_start28 @ Length of Unit
.Ldebug_info_start28:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	39                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	37                              @ DW_AT_low_pc
	.long	.Lfunc_end34-.Lfunc_begin34     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end28:
.Lcu_begin29:
	.long	.Ldebug_info_end29-.Ldebug_info_start29 @ Length of Unit
.Ldebug_info_start29:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	40                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	38                              @ DW_AT_low_pc
	.long	.Lfunc_end35-.Lfunc_begin35     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end29:
.Lcu_begin30:
	.long	.Ldebug_info_end30-.Ldebug_info_start30 @ Length of Unit
.Ldebug_info_start30:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	41                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	39                              @ DW_AT_low_pc
	.long	.Lfunc_end36-.Lfunc_begin36     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end30:
.Lcu_begin31:
	.long	.Ldebug_info_end31-.Ldebug_info_start31 @ Length of Unit
.Ldebug_info_start31:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	42                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	40                              @ DW_AT_low_pc
	.long	.Lfunc_end38-.Lfunc_begin37     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end31:
.Lcu_begin32:
	.long	.Ldebug_info_end32-.Ldebug_info_start32 @ Length of Unit
.Ldebug_info_start32:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	43                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	41                              @ DW_AT_low_pc
	.long	.Lfunc_end39-.Lfunc_begin39     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end32:
.Lcu_begin33:
	.long	.Ldebug_info_end33-.Ldebug_info_start33 @ Length of Unit
.Ldebug_info_start33:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	44                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	42                              @ DW_AT_low_pc
	.long	.Lfunc_end40-.Lfunc_begin40     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end33:
.Lcu_begin34:
	.long	.Ldebug_info_end34-.Ldebug_info_start34 @ Length of Unit
.Ldebug_info_start34:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	45                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	43                              @ DW_AT_low_pc
	.long	.Lfunc_end41-.Lfunc_begin41     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end34:
.Lcu_begin35:
	.long	.Ldebug_info_end35-.Ldebug_info_start35 @ Length of Unit
.Ldebug_info_start35:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	46                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	44                              @ DW_AT_low_pc
	.long	.Lfunc_end42-.Lfunc_begin42     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end35:
.Lcu_begin36:
	.long	.Ldebug_info_end36-.Ldebug_info_start36 @ Length of Unit
.Ldebug_info_start36:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	47                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	12                              @ DW_AT_comp_dir
	.byte	45                              @ DW_AT_low_pc
	.long	.Lfunc_end43-.Lfunc_begin43     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end36:
.Lcu_begin37:
	.long	.Ldebug_info_end37-.Ldebug_info_start37 @ Length of Unit
.Ldebug_info_start37:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	16                              @ Abbrev [16] 0xc:0x1b DW_TAG_compile_unit
	.byte	10                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	48                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	49                              @ DW_AT_comp_dir
	.byte	46                              @ DW_AT_low_pc
	.long	.Lfunc_end45-.Lfunc_begin44     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end37:
	.section	.debug_str_offsets,"",%progbits
	.long	268                             @ Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)" @ string offset=0
.Linfo_string1:
	.asciz	"/workspaces/llvmta/testcases/singletest/ludcmp/ludcmp.c" @ string offset=100
.Linfo_string2:
	.asciz	"/workspaces/llvmta/testcases/singletest/jfdctint" @ string offset=156
.Linfo_string3:
	.asciz	"ludcmp_a"                      @ string offset=205
.Linfo_string4:
	.asciz	"double"                        @ string offset=214
.Linfo_string5:
	.asciz	"__ARRAY_SIZE_TYPE__"           @ string offset=221
.Linfo_string6:
	.asciz	"ludcmp_b"                      @ string offset=241
.Linfo_string7:
	.asciz	"ludcmp_x"                      @ string offset=250
.Linfo_string8:
	.asciz	"ludcmp_chkerr"                 @ string offset=259
.Linfo_string9:
	.asciz	"int"                           @ string offset=273
.Linfo_string10:
	.asciz	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)" @ string offset=277
.Linfo_string11:
	.asciz	"../absvdi2.c"                  @ string offset=398
.Linfo_string12:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" @ string offset=411
.Linfo_string13:
	.asciz	"../int_util.c"                 @ string offset=473
.Linfo_string14:
	.asciz	"../absvsi2.c"                  @ string offset=487
.Linfo_string15:
	.asciz	"../addvdi3.c"                  @ string offset=500
.Linfo_string16:
	.asciz	"../addvsi3.c"                  @ string offset=513
.Linfo_string17:
	.asciz	"../ashldi3.c"                  @ string offset=526
.Linfo_string18:
	.asciz	"../ashrdi3.c"                  @ string offset=539
.Linfo_string19:
	.asciz	"../clzdi2.c"                   @ string offset=552
.Linfo_string20:
	.asciz	"../clzsi2.c"                   @ string offset=564
.Linfo_string21:
	.asciz	"../cmpdi2.c"                   @ string offset=576
.Linfo_string22:
	.asciz	"../ctzdi2.c"                   @ string offset=588
.Linfo_string23:
	.asciz	"../ctzsi2.c"                   @ string offset=600
.Linfo_string24:
	.asciz	"../divdi3.c"                   @ string offset=612
.Linfo_string25:
	.asciz	"../udivmoddi4.c"               @ string offset=624
.Linfo_string26:
	.asciz	"../divmoddi4.c"                @ string offset=640
.Linfo_string27:
	.asciz	"../divmodsi4.c"                @ string offset=655
.Linfo_string28:
	.asciz	"../divsi3.c"                   @ string offset=670
.Linfo_string29:
	.asciz	"../ffsdi2.c"                   @ string offset=682
.Linfo_string30:
	.asciz	"../ffssi2.c"                   @ string offset=694
.Linfo_string31:
	.asciz	"../lshrdi3.c"                  @ string offset=706
.Linfo_string32:
	.asciz	"../moddi3.c"                   @ string offset=719
.Linfo_string33:
	.asciz	"../modsi3.c"                   @ string offset=731
.Linfo_string34:
	.asciz	"../mulvdi3.c"                  @ string offset=743
.Linfo_string35:
	.asciz	"../mulvsi3.c"                  @ string offset=756
.Linfo_string36:
	.asciz	"../paritydi2.c"                @ string offset=769
.Linfo_string37:
	.asciz	"../paritysi2.c"                @ string offset=784
.Linfo_string38:
	.asciz	"../popcountdi2.c"              @ string offset=799
.Linfo_string39:
	.asciz	"../popcountsi2.c"              @ string offset=816
.Linfo_string40:
	.asciz	"../subvdi3.c"                  @ string offset=833
.Linfo_string41:
	.asciz	"../subvsi3.c"                  @ string offset=846
.Linfo_string42:
	.asciz	"../ucmpdi2.c"                  @ string offset=859
.Linfo_string43:
	.asciz	"../udivdi3.c"                  @ string offset=872
.Linfo_string44:
	.asciz	"../udivmodsi4.c"               @ string offset=885
.Linfo_string45:
	.asciz	"../udivsi3.c"                  @ string offset=901
.Linfo_string46:
	.asciz	"../umoddi3.c"                  @ string offset=914
.Linfo_string47:
	.asciz	"../umodsi3.c"                  @ string offset=927
.Linfo_string48:
	.asciz	"../memory.c"                   @ string offset=940
.Linfo_string49:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" @ string offset=952
.Linfo_string50:
	.asciz	"ludcmp_init"                   @ string offset=1014
.Linfo_string51:
	.asciz	"ludcmp_return"                 @ string offset=1026
.Linfo_string52:
	.asciz	"ludcmp_fabs"                   @ string offset=1040
.Linfo_string53:
	.asciz	"ludcmp_test"                   @ string offset=1052
.Linfo_string54:
	.asciz	"ludcmp_main"                   @ string offset=1064
.Linfo_string55:
	.asciz	"main"                          @ string offset=1076
.Linfo_string56:
	.asciz	"x"                             @ string offset=1081
.Linfo_string57:
	.asciz	"n"                             @ string offset=1083
.Linfo_string58:
	.asciz	"i"                             @ string offset=1085
.Linfo_string59:
	.asciz	"w"                             @ string offset=1087
.Linfo_string60:
	.asciz	"j"                             @ string offset=1089
.Linfo_string61:
	.asciz	"checksum"                      @ string offset=1091
.Linfo_string62:
	.asciz	"f"                             @ string offset=1100
.Linfo_string63:
	.asciz	"y"                             @ string offset=1102
.Linfo_string64:
	.asciz	"eps"                           @ string offset=1104
.Linfo_string65:
	.asciz	"k"                             @ string offset=1108
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
	.long	.Linfo_string44
	.long	.Linfo_string45
	.long	.Linfo_string46
	.long	.Linfo_string47
	.long	.Linfo_string48
	.long	.Linfo_string49
	.long	.Linfo_string50
	.long	.Linfo_string51
	.long	.Linfo_string52
	.long	.Linfo_string53
	.long	.Linfo_string54
	.long	.Linfo_string55
	.long	.Linfo_string56
	.long	.Linfo_string57
	.long	.Linfo_string58
	.long	.Linfo_string59
	.long	.Linfo_string60
	.long	.Linfo_string61
	.long	.Linfo_string62
	.long	.Linfo_string63
	.long	.Linfo_string64
	.long	.Linfo_string65
	.section	.debug_addr,"",%progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 @ Length of contribution
.Ldebug_addr_start0:
	.short	5                               @ DWARF version number
	.byte	4                               @ Address size
	.byte	0                               @ Segment selector size
.Laddr_table_base0:
	.long	ludcmp_a
	.long	ludcmp_b
	.long	ludcmp_x
	.long	ludcmp_chkerr
	.long	.Lfunc_begin0
	.long	.Lfunc_begin1
	.long	.Lfunc_begin2
	.long	.Lfunc_begin3
	.long	.Lfunc_begin4
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
	.long	.Lfunc_begin15
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
	.long	.Lfunc_begin37
	.long	.Lfunc_begin39
	.long	.Lfunc_begin40
	.long	.Lfunc_begin41
	.long	.Lfunc_begin42
	.long	.Lfunc_begin43
	.long	.Lfunc_begin44
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
	.ident	"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)"
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
