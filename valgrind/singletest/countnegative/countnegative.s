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
	.file	1 "/workspaces/llvmta/testcases/singletest" "countnegative/countnegative.c"
	.globl	countnegative_initSeed          @ -- Begin function countnegative_initSeed
	.p2align	2
	.type	countnegative_initSeed,%function
	.code	32                              @ @countnegative_initSeed
countnegative_initSeed:
.Lfunc_begin0:
	.loc	1 56 0                          @ countnegative/countnegative.c:56:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	1 57 22 prologue_end            @ countnegative/countnegative.c:57:22
	ldr	r0, .LCPI0_0
	mov	r1, #0
	str	r1, [r0]
	.loc	1 58 1                          @ countnegative/countnegative.c:58:1
	bx	lr
.Ltmp0:
	.p2align	2
@ %bb.1:
	.loc	1 0 1 is_stmt 0                 @ countnegative/countnegative.c:0:1
.LCPI0_0:
	.long	countnegative_seed
.Lfunc_end0:
	.size	countnegative_initSeed, .Lfunc_end0-countnegative_initSeed
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	countnegative_randomInteger     @ -- Begin function countnegative_randomInteger
	.p2align	2
	.type	countnegative_randomInteger,%function
	.code	32                              @ @countnegative_randomInteger
countnegative_randomInteger:
.Lfunc_begin1:
	.loc	1 64 0 is_stmt 1                @ countnegative/countnegative.c:64:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	1 65 28 prologue_end            @ countnegative/countnegative.c:65:28
	ldr	r12, .LCPI1_0
	mov	r2, #133
	ldr	r1, [r12]
	.loc	1 65 47 is_stmt 0               @ countnegative/countnegative.c:65:47
	mul	r3, r1, r2
	ldr	r2, .LCPI1_1
	.loc	1 65 55                         @ countnegative/countnegative.c:65:55
	add	r1, r3, #81
	.loc	1 65 62                         @ countnegative/countnegative.c:65:62
	smull	r3, r0, r1, r2
	asr	r2, r0, #9
	add	r0, r2, r0, lsr #31
	mov	r2, #159
	orr	r2, r2, #7936
	mul	r3, r0, r2
	sub	r0, r1, r3
	.loc	1 65 22                         @ countnegative/countnegative.c:65:22
	str	r0, [r12]
	.loc	1 66 11 is_stmt 1               @ countnegative/countnegative.c:66:11
	ldr	r0, [r12]
	.loc	1 66 3 is_stmt 0                @ countnegative/countnegative.c:66:3
	bx	lr
.Ltmp1:
	.p2align	2
@ %bb.1:
	.loc	1 0 3                           @ countnegative/countnegative.c:0:3
.LCPI1_0:
	.long	countnegative_seed
.LCPI1_1:
	.long	271652039                       @ 0x103114c7
.Lfunc_end1:
	.size	countnegative_randomInteger, .Lfunc_end1-countnegative_randomInteger
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	countnegative_initialize        @ -- Begin function countnegative_initialize
	.p2align	2
	.type	countnegative_initialize,%function
	.code	32                              @ @countnegative_initialize
countnegative_initialize:
.Lfunc_begin2:
	.loc	1 73 0 is_stmt 1                @ countnegative/countnegative.c:73:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: countnegative_initialize:Array <- $r0
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
	mov	r4, r0
.Ltmp2:
	@DEBUG_VALUE: countnegative_initialize:Array <- $r4
	@DEBUG_VALUE: countnegative_initialize:Array <- $r4
	mov	r5, #0
.Ltmp3:
	@DEBUG_VALUE: countnegative_initialize:OuterIndex <- 0
	b	.LBB2_2
.Ltmp4:
.LBB2_1:                                @ %for.end
                                        @   in Loop: Header=BB2_2 Depth=1
	.loc	1 77 3 prologue_end             @ countnegative/countnegative.c:77:3
	add	r4, r4, #80
	.loc	1 77 57 is_stmt 0               @ countnegative/countnegative.c:77:57
	add	r5, r5, #1
.Ltmp5:
	@DEBUG_VALUE: countnegative_initialize:OuterIndex <- $r5
.LBB2_2:                                @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB2_4 Depth 2
	@DEBUG_VALUE: countnegative_initialize:OuterIndex <- $r5
	.loc	1 77 3                          @ countnegative/countnegative.c:77:3
	cmp	r5, #20
.Ltmp6:
	.loc	1 81 1 is_stmt 1                @ countnegative/countnegative.c:81:1
	popeq	{r4, r5, r6, r10, r11, lr}
.Ltmp7:
	@DEBUG_VALUE: countnegative_initialize:Array <- [DW_OP_LLVM_entry_value 1] $r0
	bxeq	lr
.Ltmp8:
.LBB2_3:                                @ %for.body
                                        @   in Loop: Header=BB2_2 Depth=1
	.loc	1 0 1 is_stmt 0                 @ countnegative/countnegative.c:0:1
	mov	r6, #0
.Ltmp9:
	@DEBUG_VALUE: countnegative_initialize:InnerIndex <- 0
	@DEBUG_VALUE: countnegative_initialize:InnerIndex <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 80, DW_OP_div, DW_OP_stack_value] undef
	.loc	1 79 5 is_stmt 1                @ countnegative/countnegative.c:79:5
	cmn	r6, #20
	beq	.LBB2_1
.Ltmp10:
.LBB2_4:                                @ %for.body3
                                        @   Parent Loop BB2_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	1 80 44                         @ countnegative/countnegative.c:80:44
	bl	countnegative_randomInteger
	.loc	1 80 41 is_stmt 0               @ countnegative/countnegative.c:80:41
	str	r0, [r4, -r6, lsl #2]
.Ltmp11:
	@DEBUG_VALUE: countnegative_initialize:InnerIndex <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 80, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] undef
	.loc	1 79 5 is_stmt 1                @ countnegative/countnegative.c:79:5
	sub	r6, r6, #1
.Ltmp12:
	@DEBUG_VALUE: countnegative_initialize:InnerIndex <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 80, DW_OP_div, DW_OP_stack_value] undef
	.loc	1 79 5 is_stmt 0                @ countnegative/countnegative.c:79:5
	cmn	r6, #20
	bne	.LBB2_4
	b	.LBB2_1
.Ltmp13:
.Lfunc_end2:
	.size	countnegative_initialize, .Lfunc_end2-countnegative_initialize
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	countnegative_init              @ -- Begin function countnegative_init
	.p2align	2
	.type	countnegative_init,%function
	.code	32                              @ @countnegative_init
countnegative_init:
.Lfunc_begin3:
	.loc	1 84 0 is_stmt 1                @ countnegative/countnegative.c:84:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp14:
	.loc	1 85 3 prologue_end             @ countnegative/countnegative.c:85:3
	bl	countnegative_initSeed
	.loc	1 86 3                          @ countnegative/countnegative.c:86:3
	ldr	r0, .LCPI3_0
	bl	countnegative_initialize
	.loc	1 87 1                          @ countnegative/countnegative.c:87:1
	pop	{r11, lr}
	bx	lr
.Ltmp15:
	.p2align	2
@ %bb.1:
	.loc	1 0 1 is_stmt 0                 @ countnegative/countnegative.c:0:1
.LCPI3_0:
	.long	countnegative_array
.Lfunc_end3:
	.size	countnegative_init, .Lfunc_end3-countnegative_init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	countnegative_return            @ -- Begin function countnegative_return
	.p2align	2
	.type	countnegative_return,%function
	.code	32                              @ @countnegative_return
countnegative_return:
.Lfunc_begin4:
	.loc	1 90 0 is_stmt 1                @ countnegative/countnegative.c:90:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	1 92 20 prologue_end            @ countnegative/countnegative.c:92:20
	ldr	r0, .LCPI4_0
	.loc	1 91 20                         @ countnegative/countnegative.c:91:20
	ldr	r1, .LCPI4_1
	.loc	1 92 20                         @ countnegative/countnegative.c:92:20
	ldr	r0, [r0]
	.loc	1 91 20                         @ countnegative/countnegative.c:91:20
	ldr	r1, [r1]
	.loc	1 91 43 is_stmt 0               @ countnegative/countnegative.c:91:43
	add	r0, r1, r0
	.loc	1 93 20 is_stmt 1               @ countnegative/countnegative.c:93:20
	ldr	r1, .LCPI4_2
	ldr	r1, [r1]
	.loc	1 92 41                         @ countnegative/countnegative.c:92:41
	add	r0, r0, r1
	.loc	1 94 20                         @ countnegative/countnegative.c:94:20
	ldr	r1, .LCPI4_3
	ldr	r1, [r1]
	.loc	1 93 43                         @ countnegative/countnegative.c:93:43
	add	r0, r0, r1
.Ltmp16:
	@DEBUG_VALUE: countnegative_return:checksum <- $r0
	.loc	1 0 43 is_stmt 0                @ countnegative/countnegative.c:0:43
	ldr	r1, .LCPI4_4
	.loc	1 96 12 is_stmt 1               @ countnegative/countnegative.c:96:12
	subs	r0, r0, r1
.Ltmp17:
	mvnne	r0, #0
	.loc	1 96 3 is_stmt 0                @ countnegative/countnegative.c:96:3
	bx	lr
.Ltmp18:
	.p2align	2
@ %bb.1:
	.loc	1 0 3                           @ countnegative/countnegative.c:0:3
.LCPI4_0:
	.long	countnegative_poscnt
.LCPI4_1:
	.long	countnegative_postotal
.LCPI4_2:
	.long	countnegative_negtotal
.LCPI4_3:
	.long	countnegative_negcnt
.LCPI4_4:
	.long	1538270                         @ 0x1778de
.Lfunc_end4:
	.size	countnegative_return, .Lfunc_end4-countnegative_return
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	countnegative_sum               @ -- Begin function countnegative_sum
	.p2align	2
	.type	countnegative_sum,%function
	.code	32                              @ @countnegative_sum
countnegative_sum:
.Lfunc_begin5:
	.loc	1 100 0 is_stmt 1               @ countnegative/countnegative.c:100:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: countnegative_sum:Array <- $r0
	push	{r4, r5, r11, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r5, -12
	.cfi_offset r4, -16
	add	r11, sp, #8
	.cfi_def_cfa r11, 8
	mov	r2, #0
.Ltmp19:
	@DEBUG_VALUE: countnegative_sum:Outer <- 0
	@DEBUG_VALUE: countnegative_sum:Ncnt <- 0
	@DEBUG_VALUE: countnegative_sum:Pcnt <- 0
	@DEBUG_VALUE: countnegative_sum:Ntotal <- 0
	@DEBUG_VALUE: countnegative_sum:Ptotal <- 0
	mov	r12, #0
	mov	r1, #0
	mov	lr, #0
	mov	r3, #0
	b	.LBB5_2
.Ltmp20:
.LBB5_1:                                @ %for.end
                                        @   in Loop: Header=BB5_2 Depth=1
	@DEBUG_VALUE: countnegative_sum:Outer <- $lr
	@DEBUG_VALUE: countnegative_sum:Ncnt <- $r3
	@DEBUG_VALUE: countnegative_sum:Pcnt <- $r2
	@DEBUG_VALUE: countnegative_sum:Ntotal <- $r12
	@DEBUG_VALUE: countnegative_sum:Ptotal <- $r1
	.loc	1 109 3 prologue_end            @ countnegative/countnegative.c:109:3
	add	r0, r0, #80
.Ltmp21:
	@DEBUG_VALUE: countnegative_sum:Array <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	1 109 42 is_stmt 0              @ countnegative/countnegative.c:109:42
	add	lr, lr, #1
.Ltmp22:
	@DEBUG_VALUE: countnegative_sum:Outer <- $lr
.LBB5_2:                                @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB5_5 Depth 2
	@DEBUG_VALUE: countnegative_sum:Ptotal <- $r1
	@DEBUG_VALUE: countnegative_sum:Ntotal <- $r12
	@DEBUG_VALUE: countnegative_sum:Pcnt <- $r2
	@DEBUG_VALUE: countnegative_sum:Ncnt <- $r3
	@DEBUG_VALUE: countnegative_sum:Outer <- $lr
	.loc	1 109 3                         @ countnegative/countnegative.c:109:3
	cmp	lr, #20
	beq	.LBB5_7
.Ltmp23:
@ %bb.3:                                @ %for.body
                                        @   in Loop: Header=BB5_2 Depth=1
	@DEBUG_VALUE: countnegative_sum:Outer <- $lr
	@DEBUG_VALUE: countnegative_sum:Ncnt <- $r3
	@DEBUG_VALUE: countnegative_sum:Pcnt <- $r2
	@DEBUG_VALUE: countnegative_sum:Ntotal <- $r12
	@DEBUG_VALUE: countnegative_sum:Ptotal <- $r1
	.loc	1 0 3                           @ countnegative/countnegative.c:0:3
	mov	r4, #0
.Ltmp24:
	@DEBUG_VALUE: countnegative_sum:Inner <- 0
	@DEBUG_VALUE: countnegative_sum:Ptotal <- $r1
	@DEBUG_VALUE: countnegative_sum:Ntotal <- $r12
	@DEBUG_VALUE: countnegative_sum:Pcnt <- $r2
	@DEBUG_VALUE: countnegative_sum:Ncnt <- $r3
	@DEBUG_VALUE: countnegative_sum:Inner <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 80, DW_OP_div, DW_OP_stack_value] undef
	.loc	1 111 5 is_stmt 1               @ countnegative/countnegative.c:111:5
	cmn	r4, #20
	bne	.LBB5_5
	b	.LBB5_1
.Ltmp25:
.LBB5_4:                                @ %if.then
                                        @   in Loop: Header=BB5_5 Depth=2
	@DEBUG_VALUE: countnegative_sum:Outer <- $lr
	@DEBUG_VALUE: countnegative_sum:Ncnt <- $r3
	@DEBUG_VALUE: countnegative_sum:Pcnt <- $r2
	@DEBUG_VALUE: countnegative_sum:Ntotal <- $r12
	@DEBUG_VALUE: countnegative_sum:Ptotal <- $r1
	.loc	1 113 19                        @ countnegative/countnegative.c:113:19
	ldr	r5, [r0, -r4, lsl #2]
	.loc	1 114 13                        @ countnegative/countnegative.c:114:13
	add	r2, r2, #1
.Ltmp26:
	@DEBUG_VALUE: countnegative_sum:Inner <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 80, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] undef
	@DEBUG_VALUE: countnegative_sum:Ncnt <- $r3
	@DEBUG_VALUE: countnegative_sum:Pcnt <- $r2
	@DEBUG_VALUE: countnegative_sum:Ntotal <- $r12
	.loc	1 111 5                         @ countnegative/countnegative.c:111:5
	sub	r4, r4, #1
.Ltmp27:
	.loc	1 113 16                        @ countnegative/countnegative.c:113:16
	add	r1, r1, r5
.Ltmp28:
	@DEBUG_VALUE: countnegative_sum:Ptotal <- $r1
	@DEBUG_VALUE: countnegative_sum:Ptotal <- $r1
	@DEBUG_VALUE: countnegative_sum:Ntotal <- $r12
	@DEBUG_VALUE: countnegative_sum:Pcnt <- $r2
	@DEBUG_VALUE: countnegative_sum:Ncnt <- $r3
	@DEBUG_VALUE: countnegative_sum:Inner <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 80, DW_OP_div, DW_OP_stack_value] undef
	.loc	1 111 5                         @ countnegative/countnegative.c:111:5
	cmn	r4, #20
	beq	.LBB5_1
.Ltmp29:
.LBB5_5:                                @ %for.body3
                                        @   Parent Loop BB5_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	@DEBUG_VALUE: countnegative_sum:Outer <- $lr
	@DEBUG_VALUE: countnegative_sum:Ncnt <- $r3
	@DEBUG_VALUE: countnegative_sum:Pcnt <- $r2
	@DEBUG_VALUE: countnegative_sum:Ntotal <- $r12
	@DEBUG_VALUE: countnegative_sum:Ptotal <- $r1
	.loc	1 112 12                        @ countnegative/countnegative.c:112:12
	ldr	r5, [r0, -r4, lsl #2]
.Ltmp30:
	.loc	1 112 12 is_stmt 0              @ countnegative/countnegative.c:112:12
	cmp	r5, #0
	bpl	.LBB5_4
.Ltmp31:
@ %bb.6:                                @ %if.else
                                        @   in Loop: Header=BB5_5 Depth=2
	@DEBUG_VALUE: countnegative_sum:Outer <- $lr
	@DEBUG_VALUE: countnegative_sum:Ncnt <- $r3
	@DEBUG_VALUE: countnegative_sum:Pcnt <- $r2
	@DEBUG_VALUE: countnegative_sum:Ntotal <- $r12
	@DEBUG_VALUE: countnegative_sum:Ptotal <- $r1
	.loc	1 116 19 is_stmt 1              @ countnegative/countnegative.c:116:19
	ldr	r5, [r0, -r4, lsl #2]
	.loc	1 117 13                        @ countnegative/countnegative.c:117:13
	add	r3, r3, #1
.Ltmp32:
	@DEBUG_VALUE: countnegative_sum:Inner <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 80, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] undef
	@DEBUG_VALUE: countnegative_sum:Ncnt <- $r3
	@DEBUG_VALUE: countnegative_sum:Pcnt <- $r2
	@DEBUG_VALUE: countnegative_sum:Ptotal <- $r1
	.loc	1 111 5                         @ countnegative/countnegative.c:111:5
	sub	r4, r4, #1
.Ltmp33:
	.loc	1 116 16                        @ countnegative/countnegative.c:116:16
	add	r12, r12, r5
.Ltmp34:
	@DEBUG_VALUE: countnegative_sum:Ntotal <- $r12
	@DEBUG_VALUE: countnegative_sum:Ptotal <- $r1
	@DEBUG_VALUE: countnegative_sum:Ntotal <- $r12
	@DEBUG_VALUE: countnegative_sum:Pcnt <- $r2
	@DEBUG_VALUE: countnegative_sum:Ncnt <- $r3
	@DEBUG_VALUE: countnegative_sum:Inner <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 80, DW_OP_div, DW_OP_stack_value] undef
	.loc	1 111 5                         @ countnegative/countnegative.c:111:5
	cmn	r4, #20
	bne	.LBB5_5
	b	.LBB5_1
.Ltmp35:
.LBB5_7:                                @ %for.end15
	@DEBUG_VALUE: countnegative_sum:Outer <- $lr
	@DEBUG_VALUE: countnegative_sum:Ncnt <- $r3
	@DEBUG_VALUE: countnegative_sum:Pcnt <- $r2
	@DEBUG_VALUE: countnegative_sum:Ntotal <- $r12
	@DEBUG_VALUE: countnegative_sum:Ptotal <- $r1
	.loc	1 121 24                        @ countnegative/countnegative.c:121:24
	ldr	r0, .LCPI5_0
.Ltmp36:
	@DEBUG_VALUE: countnegative_sum:Array <- [DW_OP_LLVM_entry_value 1] $r0
	str	r2, [r0]
	.loc	1 120 26                        @ countnegative/countnegative.c:120:26
	ldr	r0, .LCPI5_1
	str	r1, [r0]
	.loc	1 122 26                        @ countnegative/countnegative.c:122:26
	ldr	r0, .LCPI5_2
	str	r12, [r0]
	.loc	1 123 24                        @ countnegative/countnegative.c:123:24
	ldr	r0, .LCPI5_3
	str	r3, [r0]
	.loc	1 124 1                         @ countnegative/countnegative.c:124:1
	pop	{r4, r5, r11, lr}
.Ltmp37:
	bx	lr
.Ltmp38:
	.p2align	2
@ %bb.8:
	.loc	1 0 1 is_stmt 0                 @ countnegative/countnegative.c:0:1
.LCPI5_0:
	.long	countnegative_poscnt
.LCPI5_1:
	.long	countnegative_postotal
.LCPI5_2:
	.long	countnegative_negtotal
.LCPI5_3:
	.long	countnegative_negcnt
.Lfunc_end5:
	.size	countnegative_sum, .Lfunc_end5-countnegative_sum
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	countnegative_main              @ -- Begin function countnegative_main
	.p2align	2
	.type	countnegative_main,%function
	.code	32                              @ @countnegative_main
countnegative_main:
.Lfunc_begin6:
	.loc	1 130 0 is_stmt 1               @ countnegative/countnegative.c:130:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp39:
	.loc	1 131 3 prologue_end            @ countnegative/countnegative.c:131:3
	ldr	r0, .LCPI6_0
	bl	countnegative_sum
	.loc	1 132 1                         @ countnegative/countnegative.c:132:1
	pop	{r11, lr}
	bx	lr
.Ltmp40:
	.p2align	2
@ %bb.1:
	.loc	1 0 1 is_stmt 0                 @ countnegative/countnegative.c:0:1
.LCPI6_0:
	.long	countnegative_array
.Lfunc_end6:
	.size	countnegative_main, .Lfunc_end6-countnegative_main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	main                            @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                              @ @main
main:
.Lfunc_begin7:
	.loc	1 135 0 is_stmt 1               @ countnegative/countnegative.c:135:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp41:
	.loc	1 136 3 prologue_end            @ countnegative/countnegative.c:136:3
	bl	countnegative_init
	.loc	1 137 3                         @ countnegative/countnegative.c:137:3
	bl	countnegative_main
	.loc	1 139 12                        @ countnegative/countnegative.c:139:12
	bl	countnegative_return
	.loc	1 139 3 is_stmt 0               @ countnegative/countnegative.c:139:3
	pop	{r11, lr}
	bx	lr
.Ltmp42:
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
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
	.file	2 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../absvdi2.c" md5 0xf0fa545ed84eab29322431dd903e1bd2
	.loc	2 23 0 is_stmt 1                @ ../absvdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	2 25 11 prologue_end            @ ../absvdi2.c:25:11
	eor	r2, r1, #-2147483648
	orrs	r2, r0, r2
	.loc	2 25 9 is_stmt 0                @ ../absvdi2.c:25:9
	beq	.LBB8_2
@ %bb.1:                                @ %if.end
	.loc	2 28 20 is_stmt 1               @ ../absvdi2.c:28:20
	adds	r0, r0, r1, asr #31
	adc	r2, r1, r1, asr #31
	eor	r0, r0, r1, asr #31
	eor	r1, r2, r1, asr #31
	.loc	2 28 5 is_stmt 0                @ ../absvdi2.c:28:5
	bx	lr
.LBB8_2:                                @ %if.then
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	.loc	2 26 9 is_stmt 1                @ ../absvdi2.c:26:9
	ldr	r0, .LCPI8_0
	ldr	r2, .LCPI8_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.Ltmp43:
	.p2align	2
@ %bb.3:
	.loc	2 0 9 is_stmt 0                 @ ../absvdi2.c:0:9
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
	.file	3 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../absvsi2.c" md5 0x4c623fefc2c7ed3929c6e73514b667d1
	.loc	3 23 0 is_stmt 1                @ ../absvsi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	3 25 9 prologue_end             @ ../absvsi2.c:25:9
	cmp	r0, #-2147483648
	beq	.LBB10_2
@ %bb.1:                                @ %if.end
	.loc	3 28 20                         @ ../absvsi2.c:28:20
	cmp	r0, #0
	rsbmi	r0, r0, #0
	.loc	3 28 5 is_stmt 0                @ ../absvsi2.c:28:5
	bx	lr
.LBB10_2:                               @ %if.then
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	.loc	3 26 9 is_stmt 1                @ ../absvsi2.c:26:9
	ldr	r0, .LCPI10_0
	ldr	r2, .LCPI10_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.Ltmp44:
	.p2align	2
@ %bb.3:
	.loc	3 0 9 is_stmt 0                 @ ../absvsi2.c:0:9
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
.Ltmp45:
	.loc	4 24 27 prologue_end            @ ../addvdi3.c:24:27
	adds	r0, r0, r2
	mov	r12, r1
	adc	r1, r1, r3
	.loc	4 25 9                          @ ../addvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB11_3
@ %bb.1:                                @ %if.then
	.loc	4 27 15                         @ ../addvdi3.c:27:15
	subs	r2, r0, lr
	sbcs	r2, r1, r12
	.loc	4 27 13 is_stmt 0               @ ../addvdi3.c:27:13
	bge	.LBB11_4
@ %bb.2:                                @ %if.then2
	.loc	4 28 13 is_stmt 1               @ ../addvdi3.c:28:13
	ldr	r0, .LCPI11_0
	ldr	r2, .LCPI11_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB11_3:                               @ %if.else
	.loc	4 32 15                         @ ../addvdi3.c:32:15
	subs	r2, r0, lr
	sbcs	r2, r1, r12
	.loc	4 32 13 is_stmt 0               @ ../addvdi3.c:32:13
	bge	.LBB11_5
.LBB11_4:                               @ %if.end6
	.loc	4 35 5 is_stmt 1                @ ../addvdi3.c:35:5
	pop	{r11, lr}
	bx	lr
.LBB11_5:                               @ %if.then4
	.loc	4 33 13                         @ ../addvdi3.c:33:13
	ldr	r0, .LCPI11_0
	ldr	r2, .LCPI11_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.Ltmp46:
	.p2align	2
@ %bb.6:
	.loc	4 0 13 is_stmt 0                @ ../addvdi3.c:0:13
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
.Ltmp47:
	.loc	5 24 27 prologue_end            @ ../addvsi3.c:24:27
	add	r0, r0, r1
	.loc	5 25 9                          @ ../addvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB12_3
@ %bb.1:                                @ %if.then
	.loc	5 27 13                         @ ../addvsi3.c:27:13
	cmp	r0, r2
	bge	.LBB12_4
@ %bb.2:                                @ %if.then2
	.loc	5 28 13                         @ ../addvsi3.c:28:13
	ldr	r0, .LCPI12_0
	ldr	r2, .LCPI12_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB12_3:                               @ %if.else
	.loc	5 32 13                         @ ../addvsi3.c:32:13
	cmp	r0, r2
	bge	.LBB12_5
.LBB12_4:                               @ %if.end6
	.loc	5 35 5                          @ ../addvsi3.c:35:5
	pop	{r11, lr}
	bx	lr
.LBB12_5:                               @ %if.then4
	.loc	5 33 13                         @ ../addvsi3.c:33:13
	ldr	r0, .LCPI12_0
	ldr	r2, .LCPI12_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.Ltmp48:
	.p2align	2
@ %bb.6:
	.loc	5 0 13 is_stmt 0                @ ../addvsi3.c:0:13
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
	.file	6 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ashldi3.c" md5 0xae5236ddcefaf3e5efc4feba69d334b1
	.loc	6 25 0 is_stmt 1                @ ../ashldi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp49:
	.loc	6 30 9 prologue_end             @ ../ashldi3.c:30:9
	tst	r2, #32
	.loc	6 29 15                         @ ../ashldi3.c:29:15
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	6 30 9                          @ ../ashldi3.c:30:9
	bne	.LBB13_3
@ %bb.1:                                @ %if.else
	.loc	6 37 13                         @ ../ashldi3.c:37:13
	cmp	r2, #0
	beq	.LBB13_5
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
	b	.LBB13_4
.LBB13_3:                               @ %if.then
	.loc	6 33 33                         @ ../ashldi3.c:33:33
	ldr	r1, [sp, #8]
	mov	r0, #0
	.loc	6 32 22                         @ ../ashldi3.c:32:22
	str	r0, [sp]
	.loc	6 33 43                         @ ../ashldi3.c:33:43
	sub	r0, r2, #32
	.loc	6 33 37 is_stmt 0               @ ../ashldi3.c:33:37
	lsl	r0, r1, r0
.LBB13_4:                               @ %if.end18
	.loc	6 0 0                           @ ../ashldi3.c:0:0
	str	r0, [sp, #4]
	.loc	6 42 19 is_stmt 1               @ ../ashldi3.c:42:19
	ldm	sp, {r0, r1}
.LBB13_5:                               @ %return
	.loc	6 43 1                          @ ../ashldi3.c:43:1
	add	sp, sp, #16
	bx	lr
.Ltmp50:
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
	.file	7 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ashrdi3.c" md5 0xdf60b7a82095e7d7b5c11e1095a5679a
	.loc	7 25 0                          @ ../ashrdi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp51:
	.loc	7 30 9 prologue_end             @ ../ashrdi3.c:30:9
	tst	r2, #32
	.loc	7 29 15                         @ ../ashrdi3.c:29:15
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	7 30 9                          @ ../ashrdi3.c:30:9
	bne	.LBB14_3
@ %bb.1:                                @ %if.else
	.loc	7 38 13                         @ ../ashrdi3.c:38:13
	cmp	r2, #0
	beq	.LBB14_5
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
	b	.LBB14_4
.LBB14_3:                               @ %if.then
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
.LBB14_4:                               @ %if.end21
	.loc	7 0 0                           @ ../ashrdi3.c:0:0
	str	r0, [sp]
	.loc	7 43 19 is_stmt 1               @ ../ashrdi3.c:43:19
	ldm	sp, {r0, r1}
.LBB14_5:                               @ %return
	.loc	7 44 1                          @ ../ashrdi3.c:44:1
	add	sp, sp, #16
	bx	lr
.Ltmp52:
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
.Ltmp53:
	.loc	8 27 42 prologue_end            @ ../clzdi2.c:27:42
	cmp	r1, #0
	.loc	8 25 11                         @ ../clzdi2.c:25:11
	stm	sp, {r0, r1}
	mov	r4, r1
	.loc	8 27 42                         @ ../clzdi2.c:27:42
	movne	r0, r1
	.loc	8 27 12 is_stmt 0               @ ../clzdi2.c:27:12
	cmp	r0, #0
	beq	.LBB15_2
@ %bb.1:                                @ %cond.false
	bl	__clzsi2
	b	.LBB15_3
.LBB15_2:
	.loc	8 0 12                          @ ../clzdi2.c:0:12
	mov	r0, #32
.LBB15_3:                               @ %cond.end
	.loc	8 27 59                         @ ../clzdi2.c:27:59
	cmp	r4, #0
	addeq	r0, r0, #32
	.loc	8 27 5                          @ ../clzdi2.c:27:5
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp54:
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
.Ltmp55:
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
.Ltmp56:
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
	.file	10 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../cmpdi2.c" md5 0x79ec8a4b383c8374d228cd0869637319
	.loc	10 24 0 is_stmt 1               @ ../cmpdi2.c:24:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp57:
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
	blt	.LBB17_4
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
.LBB17_2:                               @ %if.end10
	.loc	10 33 23                        @ ../cmpdi2.c:33:23
	ldr	r1, [sp]
	.loc	10 33 13 is_stmt 0              @ ../cmpdi2.c:33:13
	ldr	r2, [sp, #8]
	.loc	10 33 9                         @ ../cmpdi2.c:33:9
	cmp	r2, r1
	blo	.LBB17_4
@ %bb.3:                                @ %if.end16
	.loc	10 35 23 is_stmt 1              @ ../cmpdi2.c:35:23
	ldr	r0, [sp]
	.loc	10 35 13 is_stmt 0              @ ../cmpdi2.c:35:13
	ldr	r1, [sp, #8]
	.loc	10 35 9                         @ ../cmpdi2.c:35:9
	cmp	r1, r0
	mov	r0, #2
	movls	r0, #1
.LBB17_4:                               @ %return
	.loc	10 38 1 is_stmt 1               @ ../cmpdi2.c:38:1
	add	sp, sp, #16
	bx	lr
.Ltmp58:
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
.Ltmp59:
	.loc	10 48 9 prologue_end            @ ../cmpdi2.c:48:9
	bl	__cmpdi2
	.loc	10 48 24 is_stmt 0              @ ../cmpdi2.c:48:24
	sub	r0, r0, #1
	.loc	10 48 2                         @ ../cmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp60:
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
	.file	11 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ctzdi2.c" md5 0x0415a3f61808ca646548bc24b48a844a
	.loc	11 23 0 is_stmt 1               @ ../ctzdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
.Ltmp61:
	.loc	11 27 41 prologue_end           @ ../ctzdi2.c:27:41
	cmp	r0, #0
	.loc	11 25 11                        @ ../ctzdi2.c:25:11
	stm	sp, {r0, r1}
	.loc	11 27 41                        @ ../ctzdi2.c:27:41
	movne	r1, r0
	.loc	11 27 12 is_stmt 0              @ ../ctzdi2.c:27:12
	cmp	r1, #0
	beq	.LBB19_2
@ %bb.1:                                @ %cond.false
	sub	r2, r1, #1
	bic	r1, r2, r1
	ldr	r2, .LCPI19_0
	and	r2, r2, r1, lsr #1
	sub	r1, r1, r2
	ldr	r2, .LCPI19_1
	and	r3, r2, r1, lsr #2
	and	r1, r1, r2
	ldr	r2, .LCPI19_2
	add	r1, r1, r3
	add	r1, r1, r1, lsr #4
	and	r1, r1, r2
	ldr	r2, .LCPI19_3
	mul	r3, r1, r2
	lsr	r1, r3, #24
	b	.LBB19_3
.LBB19_2:
	.loc	11 0 12                         @ ../ctzdi2.c:0:12
	mov	r1, #32
.LBB19_3:                               @ %cond.end
	.loc	11 27 59                        @ ../ctzdi2.c:27:59
	cmp	r0, #0
	addeq	r1, r1, #32
	.loc	11 27 5                         @ ../ctzdi2.c:27:5
	mov	r0, r1
	add	sp, sp, #8
	bx	lr
.Ltmp62:
	.p2align	2
@ %bb.4:
	.loc	11 0 5                          @ ../ctzdi2.c:0:5
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
.Ltmp63:
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
.Ltmp64:
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
.Ltmp65:
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
.Ltmp66:
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
.Ltmp67:
	.loc	14 36 9 prologue_end            @ ../udivmoddi4.c:36:9
	cmp	r1, #0
	.loc	14 29 11                        @ ../udivmoddi4.c:29:11
	str	r1, [sp, #28]
	str	r0, [sp, #24]
	.loc	14 31 11                        @ ../udivmoddi4.c:31:11
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	.loc	14 36 9                         @ ../udivmoddi4.c:36:9
	beq	.LBB22_9
@ %bb.1:                                @ %if.end23
	.loc	14 57 13                        @ ../udivmoddi4.c:57:13
	ldr	r0, [sp, #16]
	.loc	14 57 9 is_stmt 0               @ ../udivmoddi4.c:57:9
	cmp	r0, #0
	beq	.LBB22_13
@ %bb.2:                                @ %if.else
	.loc	14 121 17 is_stmt 1             @ ../udivmoddi4.c:121:17
	ldr	r0, [sp, #20]
	.loc	14 121 13 is_stmt 0             @ ../udivmoddi4.c:121:13
	cmp	r0, #0
	beq	.LBB22_22
@ %bb.3:                                @ %if.else263
	.loc	14 176 36 is_stmt 1             @ ../udivmoddi4.c:176:36
	ldr	r0, [sp, #20]
	mov	r4, #32
	mov	r5, #32
	.loc	14 176 18 is_stmt 0             @ ../udivmoddi4.c:176:18
	cmp	r0, #0
	beq	.LBB22_5
@ %bb.4:                                @ %cond.false29
	bl	__clzsi2
	mov	r5, r0
.LBB22_5:                               @ %cond.end30
	.loc	14 176 62                       @ ../udivmoddi4.c:176:62
	ldr	r0, [sp, #28]
	.loc	14 176 44                       @ ../udivmoddi4.c:176:44
	cmp	r0, #0
	beq	.LBB22_7
@ %bb.6:                                @ %cond.false33
	bl	__clzsi2
	mov	r4, r0
.LBB22_7:                               @ %cond.end34
	.loc	14 176 42                       @ ../udivmoddi4.c:176:42
	sub	r1, r5, r4
	.loc	14 178 17 is_stmt 1             @ ../udivmoddi4.c:178:17
	cmp	r1, #32
	blo	.LBB22_30
.LBB22_8:                               @ %if.then111
	.loc	14 0 0 is_stmt 0                @ ../udivmoddi4.c:0:0
	cmp	r8, #0
	ldrne	r0, [sp, #24]
	ldrne	r1, [sp, #28]
	stmne	r8, {r0, r1}
	b	.LBB22_12
.LBB22_9:                               @ %if.then
	.loc	14 38 17 is_stmt 1              @ ../udivmoddi4.c:38:17
	ldr	r0, [sp, #20]
	.loc	14 38 13 is_stmt 0              @ ../udivmoddi4.c:38:13
	cmp	r0, #0
	beq	.LBB22_27
@ %bb.10:                               @ %if.end16
	.loc	14 52 13 is_stmt 1              @ ../udivmoddi4.c:52:13
	cmp	r8, #0
	beq	.LBB22_12
@ %bb.11:                               @ %if.then18
	.loc	14 53 24                        @ ../udivmoddi4.c:53:24
	ldr	r1, [sp, #24]
	mov	r0, #0
	.loc	14 53 18 is_stmt 0              @ ../udivmoddi4.c:53:18
	str	r0, [r8, #4]
	str	r1, [r8]
	mov	r1, #0
	b	.LBB22_49
.LBB22_12:
	.loc	14 0 18                         @ ../udivmoddi4.c:0:18
	mov	r0, #0
	mov	r1, #0
	b	.LBB22_49
.LBB22_13:                              @ %if.then28
	.loc	14 59 17 is_stmt 1              @ ../udivmoddi4.c:59:17
	ldr	r0, [sp, #20]
	.loc	14 59 13 is_stmt 0              @ ../udivmoddi4.c:59:13
	cmp	r0, #0
	beq	.LBB22_32
@ %bb.14:                               @ %if.end49
	.loc	14 70 17 is_stmt 1              @ ../udivmoddi4.c:70:17
	ldr	r0, [sp, #24]
	.loc	14 70 13 is_stmt 0              @ ../udivmoddi4.c:70:13
	cmp	r0, #0
	beq	.LBB22_50
@ %bb.15:                               @ %if.end74
	.loc	14 88 18 is_stmt 1              @ ../udivmoddi4.c:88:18
	ldr	r0, [sp, #20]
	.loc	14 88 35 is_stmt 0              @ ../udivmoddi4.c:88:35
	sub	r1, r0, #1
	.loc	14 88 13                        @ ../udivmoddi4.c:88:13
	tst	r0, r1
	beq	.LBB22_57
@ %bb.16:                               @ %if.end103
	.loc	14 102 32 is_stmt 1             @ ../udivmoddi4.c:102:32
	ldr	r0, [sp, #20]
	mov	r4, #32
	mov	r5, #32
	.loc	14 102 14 is_stmt 0             @ ../udivmoddi4.c:102:14
	cmp	r0, #0
	beq	.LBB22_18
@ %bb.17:                               @ %cond.false6
	bl	__clzsi2
	mov	r5, r0
.LBB22_18:                              @ %cond.end7
	.loc	14 102 58                       @ ../udivmoddi4.c:102:58
	ldr	r0, [sp, #28]
	.loc	14 102 40                       @ ../udivmoddi4.c:102:40
	cmp	r0, #0
	beq	.LBB22_20
@ %bb.19:                               @ %cond.false10
	bl	__clzsi2
	mov	r4, r0
.LBB22_20:                              @ %cond.end11
	.loc	14 102 38                       @ ../udivmoddi4.c:102:38
	sub	r0, r5, r4
	.loc	14 104 13 is_stmt 1             @ ../udivmoddi4.c:104:13
	cmp	r0, #31
	bhs	.LBB22_8
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
	b	.LBB22_44
.LBB22_22:                              @ %if.then142
	.loc	14 127 22 is_stmt 1             @ ../udivmoddi4.c:127:22
	ldr	r0, [sp, #16]
	.loc	14 127 17 is_stmt 0             @ ../udivmoddi4.c:127:17
	sub	r1, r0, #1
	tst	r0, r1
	bne	.LBB22_37
@ %bb.23:                               @ %if.then151
	.loc	14 129 21 is_stmt 1             @ ../udivmoddi4.c:129:21
	cmp	r8, #0
	beq	.LBB22_25
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
.LBB22_25:                              @ %if.end161
	.loc	14 131 25 is_stmt 1             @ ../udivmoddi4.c:131:25
	ldr	r0, [sp, #16]
	.loc	14 131 21 is_stmt 0             @ ../udivmoddi4.c:131:21
	cmp	r0, #1
	bne	.LBB22_53
@ %bb.26:                               @ %if.then166
	.loc	14 132 30 is_stmt 1             @ ../udivmoddi4.c:132:30
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	b	.LBB22_49
.LBB22_27:                              @ %if.then5
	.loc	14 44 17                        @ ../udivmoddi4.c:44:17
	cmp	r8, #0
	beq	.LBB22_29
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
.LBB22_29:                              @ %if.end
	.loc	14 46 24 is_stmt 1              @ ../udivmoddi4.c:46:24
	ldr	r0, [sp, #24]
	b	.LBB22_35
.LBB22_30:                              @ %if.end276
	.loc	14 184 13                       @ ../udivmoddi4.c:184:13
	add	r12, r1, #1
	mov	r2, #0
	.loc	14 188 17                       @ ../udivmoddi4.c:188:17
	cmp	r12, #32
	.loc	14 187 21                       @ ../udivmoddi4.c:187:21
	str	r2, [sp, #8]
	.loc	14 188 17                       @ ../udivmoddi4.c:188:17
	bne	.LBB22_43
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
	b	.LBB22_46
.LBB22_32:                              @ %if.then33
	.loc	14 65 17                        @ ../udivmoddi4.c:65:17
	cmp	r8, #0
	beq	.LBB22_34
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
.LBB22_34:                              @ %if.end42
	.loc	14 67 24 is_stmt 1              @ ../udivmoddi4.c:67:24
	ldr	r0, [sp, #28]
.LBB22_35:                              @ %return
	.loc	14 0 0 is_stmt 0                @ ../udivmoddi4.c:0:0
	ldr	r1, [sp, #16]
.LBB22_36:                              @ %return
	bl	__udivsi3
	mov	r1, #0
	b	.LBB22_49
.LBB22_37:                              @ %if.end187
	.loc	14 142 55 is_stmt 1             @ ../udivmoddi4.c:142:55
	ldr	r1, [sp, #16]
	mov	r4, #32
	mov	r0, #32
	.loc	14 142 37 is_stmt 0             @ ../udivmoddi4.c:142:37
	cmp	r1, #0
	beq	.LBB22_39
@ %bb.38:                               @ %cond.false21
	mov	r0, r1
	bl	__clzsi2
.LBB22_39:                              @ %cond.end22
	.loc	14 142 35                       @ ../udivmoddi4.c:142:35
	add	r5, r0, #33
	.loc	14 142 80                       @ ../udivmoddi4.c:142:80
	ldr	r0, [sp, #28]
	.loc	14 142 62                       @ ../udivmoddi4.c:142:62
	cmp	r0, #0
	beq	.LBB22_41
@ %bb.40:                               @ %cond.false25
	bl	__clzsi2
	mov	r4, r0
.LBB22_41:                              @ %cond.end26
	.loc	14 142 60                       @ ../udivmoddi4.c:142:60
	sub	r12, r5, r4
	mov	r1, #0
	.loc	14 147 17 is_stmt 1             @ ../udivmoddi4.c:147:17
	cmp	r12, #32
	bne	.LBB22_55
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
	b	.LBB22_46
.LBB22_43:                              @ %if.else293
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
.LBB22_44:                              @ %if.end317
	.loc	14 0 0                          @ ../udivmoddi4.c:0:0
	lsl	r1, r3, r1
	orr	r1, r1, r2, lsr r12
.LBB22_45:                              @ %if.end317
	str	r1, [sp]
.LBB22_46:                              @ %if.end317
	mov	r1, #0
	.loc	14 209 5 is_stmt 1              @ ../udivmoddi4.c:209:5
	cmp	r12, #0
	beq	.LBB22_48
.LBB22_47:                              @ %for.body
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
	bne	.LBB22_47
.LBB22_48:                              @ %for.end
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
.LBB22_49:                              @ %return
	.loc	14 231 1                        @ ../udivmoddi4.c:231:1
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
	bx	lr
.LBB22_50:                              @ %if.then54
	.loc	14 76 17                        @ ../udivmoddi4.c:76:17
	cmp	r8, #0
	beq	.LBB22_52
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
.LBB22_52:                              @ %if.end67
	.loc	14 82 24                        @ ../udivmoddi4.c:82:24
	ldr	r0, [sp, #28]
	.loc	14 82 35 is_stmt 0              @ ../udivmoddi4.c:82:35
	ldr	r1, [sp, #20]
	b	.LBB22_36
.LBB22_53:                              @ %if.end168
	.loc	14 133 40 is_stmt 1             @ ../udivmoddi4.c:133:40
	ldr	r0, [sp, #16]
	.loc	14 133 22 is_stmt 0             @ ../udivmoddi4.c:133:22
	cmp	r0, #0
	beq	.LBB22_62
@ %bb.54:                               @ %cond.false16
	sub	r1, r0, #1
	bic	r0, r1, r0
	ldr	r1, .LCPI22_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r1, .LCPI22_1
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	ldr	r1, .LCPI22_2
	add	r0, r0, r2
	add	r0, r0, r0, lsr #4
	and	r0, r0, r1
	ldr	r1, .LCPI22_3
	mul	r2, r0, r1
	lsr	r0, r2, #24
	b	.LBB22_63
.LBB22_55:                              @ %if.else208
	.loc	14 154 22 is_stmt 1             @ ../udivmoddi4.c:154:22
	cmp	r12, #31
	bhi	.LBB22_61
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
	b	.LBB22_45
.LBB22_57:                              @ %if.then81
	.loc	14 90 17                        @ ../udivmoddi4.c:90:17
	cmp	r8, #0
	beq	.LBB22_59
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
.LBB22_59:                              @ %if.end97
	.loc	14 96 50                        @ ../udivmoddi4.c:96:50
	ldr	r1, [sp, #20]
	.loc	14 96 24 is_stmt 0              @ ../udivmoddi4.c:96:24
	ldr	r0, [sp, #28]
	.loc	14 96 32                        @ ../udivmoddi4.c:96:32
	cmp	r1, #0
	beq	.LBB22_64
@ %bb.60:                               @ %cond.false
	sub	r2, r1, #1
	bic	r1, r2, r1
	ldr	r2, .LCPI22_0
	and	r2, r2, r1, lsr #1
	sub	r1, r1, r2
	ldr	r2, .LCPI22_1
	and	r3, r2, r1, lsr #2
	and	r1, r1, r2
	ldr	r2, .LCPI22_2
	add	r1, r1, r3
	add	r1, r1, r1, lsr #4
	and	r1, r1, r2
	ldr	r2, .LCPI22_3
	mul	r3, r1, r2
	lsr	r1, r3, #24
	b	.LBB22_65
.LBB22_61:                              @ %if.else235
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
	b	.LBB22_46
.LBB22_62:
	.loc	14 0 26 is_stmt 0               @ ../udivmoddi4.c:0:26
	mov	r0, #32
.LBB22_63:                              @ %cond.end17
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
	b	.LBB22_49
.LBB22_64:
	.loc	14 0 25 is_stmt 0               @ ../udivmoddi4.c:0:25
	mov	r1, #32
.LBB22_65:                              @ %cond.end
	.loc	14 96 29 is_stmt 1              @ ../udivmoddi4.c:96:29
	lsr	r0, r0, r1
	mov	r1, #0
	b	.LBB22_49
.Ltmp68:
	.p2align	2
@ %bb.66:
	.loc	14 0 29 is_stmt 0               @ ../udivmoddi4.c:0:29
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
.Ltmp69:
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
.Ltmp70:
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
.Ltmp71:
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
.Ltmp72:
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
.Ltmp73:
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
.Ltmp74:
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
	.file	18 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ffsdi2.c" md5 0x4b800e1cad35a0bc99971441032171a3
	.loc	18 23 0 is_stmt 1               @ ../ffsdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
.Ltmp75:
	.loc	18 26 9 prologue_end            @ ../ffsdi2.c:26:9
	cmp	r0, #0
	.loc	18 25 11                        @ ../ffsdi2.c:25:11
	stm	sp, {r0, r1}
	.loc	18 26 9                         @ ../ffsdi2.c:26:9
	beq	.LBB26_3
@ %bb.1:                                @ %if.end6
	.loc	18 32 30                        @ ../ffsdi2.c:32:30
	ldr	r0, [sp]
	.loc	18 32 12 is_stmt 0              @ ../ffsdi2.c:32:12
	cmp	r0, #0
	beq	.LBB26_6
@ %bb.2:                                @ %cond.false2
	sub	r1, r0, #1
	bic	r0, r1, r0
	ldr	r1, .LCPI26_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r1, .LCPI26_1
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	ldr	r1, .LCPI26_2
	add	r0, r0, r2
	add	r0, r0, r0, lsr #4
	and	r0, r0, r1
	ldr	r1, .LCPI26_3
	mul	r2, r0, r1
	lsr	r0, r2, #24
	b	.LBB26_7
.LBB26_3:                               @ %if.then
	.loc	18 28 17 is_stmt 1              @ ../ffsdi2.c:28:17
	ldr	r0, [sp, #4]
	.loc	18 28 13 is_stmt 0              @ ../ffsdi2.c:28:13
	cmp	r0, #0
	moveq	r0, #0
	.loc	18 33 1 is_stmt 1               @ ../ffsdi2.c:33:1
	addeq	sp, sp, #8
	bxeq	lr
.LBB26_4:                               @ %if.end
	.loc	18 30 34                        @ ../ffsdi2.c:30:34
	ldr	r0, [sp, #4]
	.loc	18 30 16 is_stmt 0              @ ../ffsdi2.c:30:16
	cmp	r0, #0
	beq	.LBB26_8
@ %bb.5:                                @ %cond.false
	sub	r1, r0, #1
	bic	r0, r1, r0
	ldr	r1, .LCPI26_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r1, .LCPI26_1
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	ldr	r1, .LCPI26_2
	add	r0, r0, r2
	add	r0, r0, r0, lsr #4
	and	r0, r0, r1
	ldr	r1, .LCPI26_3
	mul	r2, r0, r1
	lsr	r0, r2, #24
	b	.LBB26_9
.LBB26_6:
	.loc	18 0 16                         @ ../ffsdi2.c:0:16
	mov	r0, #32
.LBB26_7:                               @ %cond.end3
	.loc	18 32 35 is_stmt 1              @ ../ffsdi2.c:32:35
	add	r0, r0, #1
	.loc	18 33 1                         @ ../ffsdi2.c:33:1
	add	sp, sp, #8
	bx	lr
.LBB26_8:
	.loc	18 0 1 is_stmt 0                @ ../ffsdi2.c:0:1
	mov	r0, #32
.LBB26_9:
	.loc	18 30 40 is_stmt 1              @ ../ffsdi2.c:30:40
	add	r0, r0, #33
	.loc	18 33 1                         @ ../ffsdi2.c:33:1
	add	sp, sp, #8
	bx	lr
.Ltmp76:
	.p2align	2
@ %bb.10:
	.loc	18 0 1 is_stmt 0                @ ../ffsdi2.c:0:1
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
.LBB27_1:                               @ %if.end
	.loc	19 28 12                        @ ../ffssi2.c:28:12
	sub	r1, r0, #1
	bic	r0, r1, r0
	ldr	r1, .LCPI27_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r1, .LCPI27_1
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	ldr	r1, .LCPI27_2
	add	r0, r0, r2
	add	r0, r0, r0, lsr #4
	and	r0, r0, r1
	ldr	r1, .LCPI27_3
	mul	r2, r0, r1
	mov	r0, #1
	.loc	19 28 29 is_stmt 0              @ ../ffssi2.c:28:29
	add	r0, r0, r2, lsr #24
	.loc	19 29 1 is_stmt 1               @ ../ffssi2.c:29:1
	bx	lr
.Ltmp77:
	.p2align	2
@ %bb.2:
	.loc	19 0 1 is_stmt 0                @ ../ffssi2.c:0:1
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
	.file	20 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../lshrdi3.c" md5 0xc456e45323b3205c3b32d82b51570771
	.loc	20 25 0 is_stmt 1               @ ../lshrdi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp78:
	.loc	20 30 9 prologue_end            @ ../lshrdi3.c:30:9
	tst	r2, #32
	.loc	20 29 15                        @ ../lshrdi3.c:29:15
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	20 30 9                         @ ../lshrdi3.c:30:9
	bne	.LBB28_3
@ %bb.1:                                @ %if.else
	.loc	20 37 13                        @ ../lshrdi3.c:37:13
	cmp	r2, #0
	beq	.LBB28_5
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
	b	.LBB28_4
.LBB28_3:                               @ %if.then
	.loc	20 33 32 is_stmt 1              @ ../lshrdi3.c:33:32
	ldr	r1, [sp, #12]
	mov	r0, #0
	.loc	20 32 23                        @ ../lshrdi3.c:32:23
	str	r0, [sp, #4]
	.loc	20 33 43                        @ ../lshrdi3.c:33:43
	sub	r0, r2, #32
	.loc	20 33 37 is_stmt 0              @ ../lshrdi3.c:33:37
	lsr	r0, r1, r0
.LBB28_4:                               @ %if.end18
	.loc	20 0 0                          @ ../lshrdi3.c:0:0
	str	r0, [sp]
	.loc	20 42 19 is_stmt 1              @ ../lshrdi3.c:42:19
	ldm	sp, {r0, r1}
.LBB28_5:                               @ %return
	.loc	20 43 1                         @ ../lshrdi3.c:43:1
	add	sp, sp, #16
	bx	lr
.Ltmp79:
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
.Ltmp80:
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
.Ltmp81:
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
.Ltmp82:
	.loc	22 22 16 prologue_end           @ ../modsi3.c:22:16
	bl	__divsi3
	.loc	22 22 31 is_stmt 0              @ ../modsi3.c:22:31
	mul	r1, r0, r4
	.loc	22 22 14                        @ ../modsi3.c:22:14
	sub	r0, r5, r1
	.loc	22 22 5                         @ ../modsi3.c:22:5
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp83:
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
.Ltmp84:
	.loc	23 27 11 prologue_end           @ ../mulvdi3.c:27:11
	eor	r0, r1, #-2147483648
	mov	r5, r3
	mov	r4, r2
	mov	r6, r1
	orrs	r0, r7, r0
	.loc	23 27 9 is_stmt 0               @ ../mulvdi3.c:27:9
	bne	.LBB31_3
@ %bb.1:                                @ %if.then
	.loc	23 29 15 is_stmt 1              @ ../mulvdi3.c:29:15
	orrs	r0, r4, r5
	.loc	23 29 25 is_stmt 0              @ ../mulvdi3.c:29:25
	eorne	r0, r4, #1
	orrsne	r0, r0, r5
	beq	.LBB31_12
@ %bb.2:                                @ %if.end
	.loc	23 31 9 is_stmt 1               @ ../mulvdi3.c:31:9
	ldr	r0, .LCPI31_0
	ldr	r2, .LCPI31_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB31_3:                               @ %if.end4
	.loc	23 0 9 is_stmt 0                @ ../mulvdi3.c:0:9
	mov	r0, #-2147483648
	.loc	23 33 11 is_stmt 1              @ ../mulvdi3.c:33:11
	eor	r0, r5, r0
	orrs	r0, r4, r0
	.loc	23 33 9 is_stmt 0               @ ../mulvdi3.c:33:9
	bne	.LBB31_6
@ %bb.4:                                @ %if.then6
	.loc	23 35 15 is_stmt 1              @ ../mulvdi3.c:35:15
	orrs	r0, r7, r6
	.loc	23 35 25 is_stmt 0              @ ../mulvdi3.c:35:25
	eorne	r0, r7, #1
	orrsne	r0, r0, r6
	beq	.LBB31_12
@ %bb.5:                                @ %if.end12
	.loc	23 37 9 is_stmt 1               @ ../mulvdi3.c:37:9
	ldr	r0, .LCPI31_0
	ldr	r2, .LCPI31_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB31_6:                               @ %if.end13
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
	blt	.LBB31_12
@ %bb.7:                                @ %lor.lhs.false18
	.loc	23 43 28                        @ ../mulvdi3.c:43:28
	subs	r0, r2, #2
	sbcs	r0, r3, #0
	.loc	23 43 9                         @ ../mulvdi3.c:43:9
	blt	.LBB31_12
@ %bb.8:                                @ %if.end22
	.loc	23 0 0                          @ ../mulvdi3.c:0:0
	asr	r0, r5, #31
	asr	r1, r6, #31
	.loc	23 45 12 is_stmt 1              @ ../mulvdi3.c:45:12
	eor	r0, r1, r0
	orrs	r0, r0, r0
	.loc	23 45 9 is_stmt 0               @ ../mulvdi3.c:45:9
	bne	.LBB31_11
@ %bb.9:                                @ %if.then24
	.loc	23 47 25 is_stmt 1              @ ../mulvdi3.c:47:25
	mvn	r0, #0
	mvn	r1, #-2147483648
	bl	__divdi3
	.loc	23 47 19 is_stmt 0              @ ../mulvdi3.c:47:19
	subs	r0, r0, r9
	sbcs	r0, r1, r8
	.loc	23 47 13                        @ ../mulvdi3.c:47:13
	bge	.LBB31_12
@ %bb.10:                               @ %if.then26
	.loc	23 48 13 is_stmt 1              @ ../mulvdi3.c:48:13
	ldr	r0, .LCPI31_0
	ldr	r2, .LCPI31_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB31_11:                              @ %if.else
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
	blt	.LBB31_13
.LBB31_12:                              @ %return
	.loc	23 0 0                          @ ../mulvdi3.c:0:0
	umull	r0, r1, r7, r4
	mla	r2, r7, r5, r1
	mla	r1, r6, r4, r2
	.loc	23 56 1 is_stmt 1               @ ../mulvdi3.c:56:1
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	bx	lr
.LBB31_13:                              @ %if.then31
	.loc	23 53 13                        @ ../mulvdi3.c:53:13
	ldr	r0, .LCPI31_0
	ldr	r2, .LCPI31_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.Ltmp85:
	.p2align	2
@ %bb.14:
	.loc	23 0 13 is_stmt 0               @ ../mulvdi3.c:0:13
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
.Ltmp86:
	.loc	24 27 9 prologue_end            @ ../mulvsi3.c:27:9
	cmp	r0, #-2147483648
	bne	.LBB32_3
@ %bb.1:                                @ %if.then
	.loc	24 29 20                        @ ../mulvsi3.c:29:20
	cmp	r4, #0
	.loc	24 29 13 is_stmt 0              @ ../mulvsi3.c:29:13
	cmpne	r4, #1
	beq	.LBB32_12
@ %bb.2:                                @ %if.end
	.loc	24 31 9 is_stmt 1               @ ../mulvsi3.c:31:9
	ldr	r0, .LCPI32_0
	ldr	r2, .LCPI32_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB32_3:                               @ %if.end4
	.loc	24 33 9                         @ ../mulvsi3.c:33:9
	cmp	r4, #-2147483648
	bne	.LBB32_6
@ %bb.4:                                @ %if.then6
	.loc	24 35 20                        @ ../mulvsi3.c:35:20
	cmp	r5, #0
	.loc	24 35 13 is_stmt 0              @ ../mulvsi3.c:35:13
	cmpne	r5, #1
	beq	.LBB32_12
@ %bb.5:                                @ %if.end12
	.loc	24 37 9 is_stmt 1               @ ../mulvsi3.c:37:9
	ldr	r0, .LCPI32_0
	ldr	r2, .LCPI32_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB32_6:                               @ %if.end13
	.loc	24 40 23                        @ ../mulvsi3.c:40:23
	eor	r0, r5, r5, asr #31
	.loc	24 40 29 is_stmt 0              @ ../mulvsi3.c:40:29
	sub	r6, r0, r5, asr #31
	.loc	24 43 19 is_stmt 1              @ ../mulvsi3.c:43:19
	cmp	r6, #2
	blt	.LBB32_12
@ %bb.7:                                @ %lor.lhs.false18
	.loc	24 0 0 is_stmt 0                @ ../mulvsi3.c:0:0
	eor	r0, r4, r4, asr #31
	sub	r1, r0, r4, asr #31
	.loc	24 43 9                         @ ../mulvsi3.c:43:9
	cmp	r1, #2
	blt	.LBB32_12
@ %bb.8:                                @ %if.end22
	.loc	24 0 0                          @ ../mulvsi3.c:0:0
	asr	r0, r4, #31
	asr	r2, r5, #31
	.loc	24 45 9 is_stmt 1               @ ../mulvsi3.c:45:9
	cmp	r2, r0
	bne	.LBB32_11
@ %bb.9:                                @ %if.then24
	.loc	24 47 25                        @ ../mulvsi3.c:47:25
	mvn	r0, #-2147483648
	bl	__divsi3
	.loc	24 47 13 is_stmt 0              @ ../mulvsi3.c:47:13
	cmp	r6, r0
	ble	.LBB32_12
@ %bb.10:                               @ %if.then26
	.loc	24 48 13 is_stmt 1              @ ../mulvsi3.c:48:13
	ldr	r0, .LCPI32_0
	ldr	r2, .LCPI32_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB32_11:                              @ %if.else
	.loc	24 52 27                        @ ../mulvsi3.c:52:27
	rsb	r1, r1, #0
	.loc	24 52 25 is_stmt 0              @ ../mulvsi3.c:52:25
	mov	r0, #-2147483648
	bl	__divsi3
	.loc	24 52 13                        @ ../mulvsi3.c:52:13
	cmp	r6, r0
	bgt	.LBB32_13
.LBB32_12:                              @ %return
	.loc	24 0 0                          @ ../mulvsi3.c:0:0
	mul	r0, r5, r4
	.loc	24 56 1 is_stmt 1               @ ../mulvsi3.c:56:1
	pop	{r4, r5, r6, r10, r11, lr}
	bx	lr
.LBB32_13:                              @ %if.then31
	.loc	24 53 13                        @ ../mulvsi3.c:53:13
	ldr	r0, .LCPI32_0
	ldr	r2, .LCPI32_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.Ltmp87:
	.p2align	2
@ %bb.14:
	.loc	24 0 13 is_stmt 0               @ ../mulvsi3.c:0:13
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
.Ltmp88:
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
.Ltmp89:
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
.Ltmp90:
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
	.file	27 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountdi2.c" md5 0x05f001da7fc478c773612fd707769c2a
	.loc	27 21 0 is_stmt 1               @ ../popcountdi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	ldr	r12, .LCPI35_0
.Ltmp91:
	.loc	27 23 20 prologue_end           @ ../popcountdi2.c:23:20
	lsrs	r2, r1, #1
	rrx	r3, r0
	.loc	27 23 26 is_stmt 0              @ ../popcountdi2.c:23:26
	and	r3, r3, r12
	and	r2, r2, r12
	ldr	r12, .LCPI35_2
	.loc	27 23 13                        @ ../popcountdi2.c:23:13
	subs	r0, r0, r3
	sbc	r1, r1, r2
	ldr	r2, .LCPI35_1
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
.Ltmp92:
	.p2align	2
@ %bb.1:
	.loc	27 0 5                          @ ../popcountdi2.c:0:5
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
	.file	28 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountsi2.c" md5 0xf9ebedb2d8810ee5a54fff38e1b09d64
	.loc	28 21 0 is_stmt 1               @ ../popcountsi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	ldr	r1, .LCPI36_0
.Ltmp93:
	.loc	28 23 23 prologue_end           @ ../popcountsi2.c:23:23
	and	r1, r1, r0, lsr #1
	.loc	28 23 11 is_stmt 0              @ ../popcountsi2.c:23:11
	sub	r0, r0, r1
	ldr	r1, .LCPI36_1
	.loc	28 25 38 is_stmt 1              @ ../popcountsi2.c:25:38
	and	r2, r0, r1
	.loc	28 25 19 is_stmt 0              @ ../popcountsi2.c:25:19
	and	r0, r1, r0, lsr #2
	ldr	r1, .LCPI36_2
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
.Ltmp94:
	.p2align	2
@ %bb.1:
	.loc	28 0 5                          @ ../popcountsi2.c:0:5
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
.Ltmp95:
	.loc	29 24 27 prologue_end           @ ../subvdi3.c:24:27
	subs	r0, r0, r2
	mov	r12, r1
	sbc	r1, r1, r3
	.loc	29 25 9                         @ ../subvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB37_3
@ %bb.1:                                @ %if.then
	.loc	29 27 15                        @ ../subvdi3.c:27:15
	subs	r2, lr, r0
	sbcs	r2, r12, r1
	.loc	29 27 13 is_stmt 0              @ ../subvdi3.c:27:13
	bge	.LBB37_4
@ %bb.2:                                @ %if.then2
	.loc	29 28 13 is_stmt 1              @ ../subvdi3.c:28:13
	ldr	r0, .LCPI37_0
	ldr	r2, .LCPI37_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB37_3:                               @ %if.else
	.loc	29 32 15                        @ ../subvdi3.c:32:15
	subs	r2, lr, r0
	sbcs	r2, r12, r1
	.loc	29 32 13 is_stmt 0              @ ../subvdi3.c:32:13
	bge	.LBB37_5
.LBB37_4:                               @ %if.end6
	.loc	29 35 5 is_stmt 1               @ ../subvdi3.c:35:5
	pop	{r11, lr}
	bx	lr
.LBB37_5:                               @ %if.then4
	.loc	29 33 13                        @ ../subvdi3.c:33:13
	ldr	r0, .LCPI37_0
	ldr	r2, .LCPI37_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.Ltmp96:
	.p2align	2
@ %bb.6:
	.loc	29 0 13 is_stmt 0               @ ../subvdi3.c:0:13
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
.Ltmp97:
	.loc	30 24 27 prologue_end           @ ../subvsi3.c:24:27
	sub	r0, r0, r1
	.loc	30 25 9                         @ ../subvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB38_3
@ %bb.1:                                @ %if.then
	.loc	30 27 13                        @ ../subvsi3.c:27:13
	cmp	r0, r2
	ble	.LBB38_4
@ %bb.2:                                @ %if.then2
	.loc	30 28 13                        @ ../subvsi3.c:28:13
	ldr	r0, .LCPI38_0
	ldr	r2, .LCPI38_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB38_3:                               @ %if.else
	.loc	30 32 13                        @ ../subvsi3.c:32:13
	cmp	r0, r2
	ble	.LBB38_5
.LBB38_4:                               @ %if.end6
	.loc	30 35 5                         @ ../subvsi3.c:35:5
	pop	{r11, lr}
	bx	lr
.LBB38_5:                               @ %if.then4
	.loc	30 33 13                        @ ../subvsi3.c:33:13
	ldr	r0, .LCPI38_0
	ldr	r2, .LCPI38_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.Ltmp98:
	.p2align	2
@ %bb.6:
	.loc	30 0 13 is_stmt 0               @ ../subvsi3.c:0:13
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
	.file	31 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ucmpdi2.c" md5 0x79f778ef54939446d175079e19d07756
	.loc	31 24 0 is_stmt 1               @ ../ucmpdi2.c:24:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp99:
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
	blo	.LBB39_4
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
.LBB39_2:                               @ %if.end10
	.loc	31 33 23                        @ ../ucmpdi2.c:33:23
	ldr	r1, [sp]
	.loc	31 33 13 is_stmt 0              @ ../ucmpdi2.c:33:13
	ldr	r2, [sp, #8]
	.loc	31 33 9                         @ ../ucmpdi2.c:33:9
	cmp	r2, r1
	blo	.LBB39_4
@ %bb.3:                                @ %if.end16
	.loc	31 35 23 is_stmt 1              @ ../ucmpdi2.c:35:23
	ldr	r0, [sp]
	.loc	31 35 13 is_stmt 0              @ ../ucmpdi2.c:35:13
	ldr	r1, [sp, #8]
	.loc	31 35 9                         @ ../ucmpdi2.c:35:9
	cmp	r1, r0
	mov	r0, #2
	movls	r0, #1
.LBB39_4:                               @ %return
	.loc	31 38 1 is_stmt 1               @ ../ucmpdi2.c:38:1
	add	sp, sp, #16
	bx	lr
.Ltmp100:
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
.Ltmp101:
	.loc	31 48 9 prologue_end            @ ../ucmpdi2.c:48:9
	bl	__ucmpdi2
	.loc	31 48 25 is_stmt 0              @ ../ucmpdi2.c:48:25
	sub	r0, r0, #1
	.loc	31 48 2                         @ ../ucmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp102:
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
.Ltmp103:
	.loc	32 22 12 prologue_end           @ ../udivdi3.c:22:12
	str	r12, [sp]
	bl	__udivmoddi4
	.loc	32 22 5 is_stmt 0               @ ../udivdi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp104:
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
.Ltmp105:
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
.Ltmp106:
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
.Ltmp107:
	.loc	34 32 9 prologue_end            @ ../udivsi3.c:32:9
	cmp	r1, #0
	mov	r5, #0
	movne	r6, r0
	.loc	34 34 9                         @ ../udivsi3.c:34:9
	cmpne	r0, #0
	bne	.LBB43_2
.LBB43_1:                               @ %return
	.loc	34 66 1                         @ ../udivsi3.c:66:1
	mov	r0, r5
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
.LBB43_2:                               @ %if.end3
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
	bhi	.LBB43_1
@ %bb.3:                                @ %if.end6
	.loc	34 40 9                         @ ../udivsi3.c:40:9
	bne	.LBB43_5
@ %bb.4:
	.loc	34 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r5, r6
	b	.LBB43_1
.LBB43_5:                               @ %if.end9
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
	beq	.LBB43_7
.LBB43_6:                               @ %for.body
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
	bne	.LBB43_6
.LBB43_7:                               @ %for.end
	.loc	34 64 18                        @ ../udivsi3.c:64:18
	orr	r5, r3, r1, lsl #1
	b	.LBB43_1
.Ltmp108:
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
.Ltmp109:
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
.Ltmp110:
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
.Ltmp111:
	.loc	36 22 16 prologue_end           @ ../umodsi3.c:22:16
	bl	__udivsi3
	.loc	36 22 32 is_stmt 0              @ ../umodsi3.c:22:32
	mul	r1, r0, r4
	.loc	36 22 14                        @ ../umodsi3.c:22:14
	sub	r0, r5, r1
	.loc	36 22 5                         @ ../umodsi3.c:22:5
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp112:
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
	.file	37 "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" "../memory.c" md5 0xfa9c872a007b30a353222cd13b38538d
	.loc	37 4 0 is_stmt 1                @ ../memory.c:4:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
.LBB46_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	37 8 2 prologue_end             @ ../memory.c:8:2
	cmp	r2, #0
	.loc	37 11 1                         @ ../memory.c:11:1
	bxeq	lr
.LBB46_2:                               @ %for.body
                                        @   in Loop: Header=BB46_1 Depth=1
	.loc	37 9 21                         @ ../memory.c:9:21
	ldrb	r3, [r1]
	.loc	37 8 2                          @ ../memory.c:8:2
	sub	r2, r2, #1
	add	r1, r1, #1
	.loc	37 9 19                         @ ../memory.c:9:19
	strb	r3, [r0]
	.loc	37 8 2                          @ ../memory.c:8:2
	add	r0, r0, #1
	b	.LBB46_1
.Ltmp113:
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
	.loc	37 14 0                         @ ../memory.c:14:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r3, #0
.LBB47_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
.Ltmp114:
	.loc	37 17 2 prologue_end            @ ../memory.c:17:2
	cmp	r2, r3
	.loc	37 20 2                         @ ../memory.c:20:2
	bxeq	lr
.LBB47_2:                               @ %for.body
                                        @   in Loop: Header=BB47_1 Depth=1
	.loc	37 18 11                        @ ../memory.c:18:11
	strb	r1, [r0, r3]
	.loc	37 17 26                        @ ../memory.c:17:26
	add	r3, r3, #1
	b	.LBB47_1
.Ltmp115:
.Lfunc_end47:
	.size	memset, .Lfunc_end47-memset
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.type	countnegative_seed,%object      @ @countnegative_seed
	.bss
	.globl	countnegative_seed
	.p2align	2
countnegative_seed:
	.long	0                               @ 0x0
	.size	countnegative_seed, 4

	.type	countnegative_array,%object     @ @countnegative_array
	.globl	countnegative_array
	.p2align	2
countnegative_array:
	.zero	1600
	.size	countnegative_array, 1600

	.type	countnegative_postotal,%object  @ @countnegative_postotal
	.globl	countnegative_postotal
	.p2align	2
countnegative_postotal:
	.long	0                               @ 0x0
	.size	countnegative_postotal, 4

	.type	countnegative_poscnt,%object    @ @countnegative_poscnt
	.globl	countnegative_poscnt
	.p2align	2
countnegative_poscnt:
	.long	0                               @ 0x0
	.size	countnegative_poscnt, 4

	.type	countnegative_negtotal,%object  @ @countnegative_negtotal
	.globl	countnegative_negtotal
	.p2align	2
countnegative_negtotal:
	.long	0                               @ 0x0
	.size	countnegative_negtotal, 4

	.type	countnegative_negcnt,%object    @ @countnegative_negcnt
	.globl	countnegative_negcnt
	.p2align	2
countnegative_negcnt:
	.long	0                               @ 0x0
	.size	countnegative_negcnt, 4

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
	.long	9                               @ Offset entry count
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
.Ldebug_loc0:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	94                              @ DW_OP_reg14
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	83                              @ DW_OP_reg3
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	92                              @ DW_OP_reg12
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
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
	.byte	53                              @ DW_TAG_volatile_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	4                               @ Abbreviation Code
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
	.byte	5                               @ Abbreviation Code
	.byte	22                              @ DW_TAG_typedef
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	6                               @ Abbreviation Code
	.byte	1                               @ DW_TAG_array_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	7                               @ Abbreviation Code
	.byte	33                              @ DW_TAG_subrange_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	55                              @ DW_AT_count
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	8                               @ Abbreviation Code
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
	.byte	9                               @ Abbreviation Code
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
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	10                              @ Abbreviation Code
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
	.byte	14                              @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
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
	.byte	15                              @ Abbreviation Code
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
	.byte	16                              @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	17                              @ Abbreviation Code
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
	.byte	1                               @ Abbrev [1] 0xc:0x15e DW_TAG_compile_unit
	.byte	0                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	1                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	2                               @ DW_AT_comp_dir
	.byte	6                               @ DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin0       @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
	.byte	2                               @ Abbrev [2] 0x27:0xb DW_TAG_variable
	.byte	3                               @ DW_AT_name
	.long	50                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	47                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               @ Abbrev [3] 0x32:0x5 DW_TAG_volatile_type
	.long	55                              @ DW_AT_type
	.byte	4                               @ Abbrev [4] 0x37:0x4 DW_TAG_base_type
	.byte	4                               @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	2                               @ Abbrev [2] 0x3b:0xb DW_TAG_variable
	.byte	5                               @ DW_AT_name
	.long	70                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	48                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	1
	.byte	5                               @ Abbrev [5] 0x46:0x8 DW_TAG_typedef
	.long	78                              @ DW_AT_type
	.byte	7                               @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	30                              @ DW_AT_decl_line
	.byte	6                               @ Abbrev [6] 0x4e:0x12 DW_TAG_array_type
	.long	55                              @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x53:0x6 DW_TAG_subrange_type
	.long	96                              @ DW_AT_type
	.byte	20                              @ DW_AT_count
	.byte	7                               @ Abbrev [7] 0x59:0x6 DW_TAG_subrange_type
	.long	96                              @ DW_AT_type
	.byte	20                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	8                               @ Abbrev [8] 0x60:0x4 DW_TAG_base_type
	.byte	6                               @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	7                               @ DW_AT_encoding
	.byte	2                               @ Abbrev [2] 0x64:0xb DW_TAG_variable
	.byte	8                               @ DW_AT_name
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	49                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	2
	.byte	2                               @ Abbrev [2] 0x6f:0xb DW_TAG_variable
	.byte	9                               @ DW_AT_name
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	49                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	3
	.byte	2                               @ Abbrev [2] 0x7a:0xb DW_TAG_variable
	.byte	10                              @ DW_AT_name
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	50                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	4
	.byte	2                               @ Abbrev [2] 0x85:0xb DW_TAG_variable
	.byte	11                              @ DW_AT_name
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	50                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	5
	.byte	9                               @ Abbrev [9] 0x90:0xb DW_TAG_subprogram
	.byte	6                               @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	52                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	55                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	10                              @ Abbrev [10] 0x9b:0xf DW_TAG_subprogram
	.byte	7                               @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	53                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	11                              @ Abbrev [11] 0xaa:0x26 DW_TAG_subprogram
	.byte	8                               @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	54                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	72                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	12                              @ Abbrev [12] 0xb5:0x9 DW_TAG_formal_parameter
	.byte	0                               @ DW_AT_location
	.byte	60                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	72                              @ DW_AT_decl_line
	.long	344                             @ DW_AT_type
	.byte	13                              @ Abbrev [13] 0xbe:0x9 DW_TAG_variable
	.byte	1                               @ DW_AT_location
	.byte	61                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
	.long	55                              @ DW_AT_type
	.byte	14                              @ Abbrev [14] 0xc7:0x8 DW_TAG_variable
	.byte	62                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	74                              @ DW_AT_decl_line
	.long	55                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0xd0:0xb DW_TAG_subprogram
	.byte	9                               @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	55                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	83                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	15                              @ Abbrev [15] 0xdb:0x19 DW_TAG_subprogram
	.byte	10                              @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	56                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	89                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	13                              @ Abbrev [13] 0xea:0x9 DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	63                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	91                              @ DW_AT_decl_line
	.long	55                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	11                              @ Abbrev [11] 0xf4:0x4a DW_TAG_subprogram
	.byte	11                              @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	57                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	99                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	12                              @ Abbrev [12] 0xff:0x9 DW_TAG_formal_parameter
	.byte	3                               @ DW_AT_location
	.byte	60                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	99                              @ DW_AT_decl_line
	.long	344                             @ DW_AT_type
	.byte	13                              @ Abbrev [13] 0x108:0x9 DW_TAG_variable
	.byte	4                               @ DW_AT_location
	.byte	64                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	101                             @ DW_AT_decl_line
	.long	55                              @ DW_AT_type
	.byte	13                              @ Abbrev [13] 0x111:0x9 DW_TAG_variable
	.byte	5                               @ DW_AT_location
	.byte	65                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	106                             @ DW_AT_decl_line
	.long	55                              @ DW_AT_type
	.byte	13                              @ Abbrev [13] 0x11a:0x9 DW_TAG_variable
	.byte	6                               @ DW_AT_location
	.byte	66                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	105                             @ DW_AT_decl_line
	.long	55                              @ DW_AT_type
	.byte	13                              @ Abbrev [13] 0x123:0x9 DW_TAG_variable
	.byte	7                               @ DW_AT_location
	.byte	67                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	104                             @ DW_AT_decl_line
	.long	55                              @ DW_AT_type
	.byte	13                              @ Abbrev [13] 0x12c:0x9 DW_TAG_variable
	.byte	8                               @ DW_AT_location
	.byte	68                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	103                             @ DW_AT_decl_line
	.long	55                              @ DW_AT_type
	.byte	14                              @ Abbrev [14] 0x135:0x8 DW_TAG_variable
	.byte	69                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	101                             @ DW_AT_decl_line
	.long	55                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x13e:0xb DW_TAG_subprogram
	.byte	12                              @ DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	58                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	129                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	10                              @ Abbrev [10] 0x149:0xf DW_TAG_subprogram
	.byte	13                              @ DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	59                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	134                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	55                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	16                              @ Abbrev [16] 0x158:0x5 DW_TAG_pointer_type
	.long	349                             @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x15d:0xc DW_TAG_array_type
	.long	55                              @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x162:0x6 DW_TAG_subrange_type
	.long	96                              @ DW_AT_type
	.byte	20                              @ DW_AT_count
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	13                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	14                              @ DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	15                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	15                              @ DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	16                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	16                              @ DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	17                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	17                              @ DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	18                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	18                              @ DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	19                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	19                              @ DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	20                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	20                              @ DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin14     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	21                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	21                              @ DW_AT_low_pc
	.long	.Lfunc_end15-.Lfunc_begin15     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	22                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	22                              @ DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin16     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	23                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	23                              @ DW_AT_low_pc
	.long	.Lfunc_end18-.Lfunc_begin17     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	24                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	24                              @ DW_AT_low_pc
	.long	.Lfunc_end19-.Lfunc_begin19     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	25                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	25                              @ DW_AT_low_pc
	.long	.Lfunc_end20-.Lfunc_begin20     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	26                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	26                              @ DW_AT_low_pc
	.long	.Lfunc_end21-.Lfunc_begin21     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	27                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	27                              @ DW_AT_low_pc
	.long	.Lfunc_end22-.Lfunc_begin22     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	28                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	28                              @ DW_AT_low_pc
	.long	.Lfunc_end23-.Lfunc_begin23     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	29                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	29                              @ DW_AT_low_pc
	.long	.Lfunc_end24-.Lfunc_begin24     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	30                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	30                              @ DW_AT_low_pc
	.long	.Lfunc_end25-.Lfunc_begin25     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	31                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	31                              @ DW_AT_low_pc
	.long	.Lfunc_end26-.Lfunc_begin26     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	32                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	32                              @ DW_AT_low_pc
	.long	.Lfunc_end27-.Lfunc_begin27     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	33                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	33                              @ DW_AT_low_pc
	.long	.Lfunc_end28-.Lfunc_begin28     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	34                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	34                              @ DW_AT_low_pc
	.long	.Lfunc_end29-.Lfunc_begin29     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	35                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	35                              @ DW_AT_low_pc
	.long	.Lfunc_end30-.Lfunc_begin30     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	36                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	36                              @ DW_AT_low_pc
	.long	.Lfunc_end31-.Lfunc_begin31     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	37                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	37                              @ DW_AT_low_pc
	.long	.Lfunc_end32-.Lfunc_begin32     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	38                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	38                              @ DW_AT_low_pc
	.long	.Lfunc_end33-.Lfunc_begin33     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	39                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	39                              @ DW_AT_low_pc
	.long	.Lfunc_end34-.Lfunc_begin34     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	40                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	40                              @ DW_AT_low_pc
	.long	.Lfunc_end35-.Lfunc_begin35     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	41                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	41                              @ DW_AT_low_pc
	.long	.Lfunc_end36-.Lfunc_begin36     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	42                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	42                              @ DW_AT_low_pc
	.long	.Lfunc_end37-.Lfunc_begin37     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	43                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	43                              @ DW_AT_low_pc
	.long	.Lfunc_end38-.Lfunc_begin38     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	44                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	44                              @ DW_AT_low_pc
	.long	.Lfunc_end40-.Lfunc_begin39     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	45                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	45                              @ DW_AT_low_pc
	.long	.Lfunc_end41-.Lfunc_begin41     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	46                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	46                              @ DW_AT_low_pc
	.long	.Lfunc_end42-.Lfunc_begin42     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	47                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	47                              @ DW_AT_low_pc
	.long	.Lfunc_end43-.Lfunc_begin43     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	48                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	48                              @ DW_AT_low_pc
	.long	.Lfunc_end44-.Lfunc_begin44     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	49                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	14                              @ DW_AT_comp_dir
	.byte	49                              @ DW_AT_low_pc
	.long	.Lfunc_end45-.Lfunc_begin45     @ DW_AT_high_pc
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
	.byte	17                              @ Abbrev [17] 0xc:0x1b DW_TAG_compile_unit
	.byte	12                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	50                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	51                              @ DW_AT_comp_dir
	.byte	50                              @ DW_AT_low_pc
	.long	.Lfunc_end47-.Lfunc_begin46     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end37:
	.section	.debug_str_offsets,"",%progbits
	.long	284                             @ Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)" @ string offset=0
.Linfo_string1:
	.asciz	"/workspaces/llvmta/testcases/singletest/countnegative/countnegative.c" @ string offset=100
.Linfo_string2:
	.asciz	"/workspaces/llvmta/testcases/singletest/cosf" @ string offset=170
.Linfo_string3:
	.asciz	"countnegative_seed"            @ string offset=215
.Linfo_string4:
	.asciz	"int"                           @ string offset=234
.Linfo_string5:
	.asciz	"countnegative_array"           @ string offset=238
.Linfo_string6:
	.asciz	"__ARRAY_SIZE_TYPE__"           @ string offset=258
.Linfo_string7:
	.asciz	"matrix"                        @ string offset=278
.Linfo_string8:
	.asciz	"countnegative_postotal"        @ string offset=285
.Linfo_string9:
	.asciz	"countnegative_negtotal"        @ string offset=308
.Linfo_string10:
	.asciz	"countnegative_poscnt"          @ string offset=331
.Linfo_string11:
	.asciz	"countnegative_negcnt"          @ string offset=352
.Linfo_string12:
	.asciz	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)" @ string offset=373
.Linfo_string13:
	.asciz	"../absvdi2.c"                  @ string offset=494
.Linfo_string14:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" @ string offset=507
.Linfo_string15:
	.asciz	"../int_util.c"                 @ string offset=569
.Linfo_string16:
	.asciz	"../absvsi2.c"                  @ string offset=583
.Linfo_string17:
	.asciz	"../addvdi3.c"                  @ string offset=596
.Linfo_string18:
	.asciz	"../addvsi3.c"                  @ string offset=609
.Linfo_string19:
	.asciz	"../ashldi3.c"                  @ string offset=622
.Linfo_string20:
	.asciz	"../ashrdi3.c"                  @ string offset=635
.Linfo_string21:
	.asciz	"../clzdi2.c"                   @ string offset=648
.Linfo_string22:
	.asciz	"../clzsi2.c"                   @ string offset=660
.Linfo_string23:
	.asciz	"../cmpdi2.c"                   @ string offset=672
.Linfo_string24:
	.asciz	"../ctzdi2.c"                   @ string offset=684
.Linfo_string25:
	.asciz	"../ctzsi2.c"                   @ string offset=696
.Linfo_string26:
	.asciz	"../divdi3.c"                   @ string offset=708
.Linfo_string27:
	.asciz	"../udivmoddi4.c"               @ string offset=720
.Linfo_string28:
	.asciz	"../divmoddi4.c"                @ string offset=736
.Linfo_string29:
	.asciz	"../divmodsi4.c"                @ string offset=751
.Linfo_string30:
	.asciz	"../divsi3.c"                   @ string offset=766
.Linfo_string31:
	.asciz	"../ffsdi2.c"                   @ string offset=778
.Linfo_string32:
	.asciz	"../ffssi2.c"                   @ string offset=790
.Linfo_string33:
	.asciz	"../lshrdi3.c"                  @ string offset=802
.Linfo_string34:
	.asciz	"../moddi3.c"                   @ string offset=815
.Linfo_string35:
	.asciz	"../modsi3.c"                   @ string offset=827
.Linfo_string36:
	.asciz	"../mulvdi3.c"                  @ string offset=839
.Linfo_string37:
	.asciz	"../mulvsi3.c"                  @ string offset=852
.Linfo_string38:
	.asciz	"../paritydi2.c"                @ string offset=865
.Linfo_string39:
	.asciz	"../paritysi2.c"                @ string offset=880
.Linfo_string40:
	.asciz	"../popcountdi2.c"              @ string offset=895
.Linfo_string41:
	.asciz	"../popcountsi2.c"              @ string offset=912
.Linfo_string42:
	.asciz	"../subvdi3.c"                  @ string offset=929
.Linfo_string43:
	.asciz	"../subvsi3.c"                  @ string offset=942
.Linfo_string44:
	.asciz	"../ucmpdi2.c"                  @ string offset=955
.Linfo_string45:
	.asciz	"../udivdi3.c"                  @ string offset=968
.Linfo_string46:
	.asciz	"../udivmodsi4.c"               @ string offset=981
.Linfo_string47:
	.asciz	"../udivsi3.c"                  @ string offset=997
.Linfo_string48:
	.asciz	"../umoddi3.c"                  @ string offset=1010
.Linfo_string49:
	.asciz	"../umodsi3.c"                  @ string offset=1023
.Linfo_string50:
	.asciz	"../memory.c"                   @ string offset=1036
.Linfo_string51:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" @ string offset=1048
.Linfo_string52:
	.asciz	"countnegative_initSeed"        @ string offset=1110
.Linfo_string53:
	.asciz	"countnegative_randomInteger"   @ string offset=1133
.Linfo_string54:
	.asciz	"countnegative_initialize"      @ string offset=1161
.Linfo_string55:
	.asciz	"countnegative_init"            @ string offset=1186
.Linfo_string56:
	.asciz	"countnegative_return"          @ string offset=1205
.Linfo_string57:
	.asciz	"countnegative_sum"             @ string offset=1226
.Linfo_string58:
	.asciz	"countnegative_main"            @ string offset=1244
.Linfo_string59:
	.asciz	"main"                          @ string offset=1263
.Linfo_string60:
	.asciz	"Array"                         @ string offset=1268
.Linfo_string61:
	.asciz	"OuterIndex"                    @ string offset=1274
.Linfo_string62:
	.asciz	"InnerIndex"                    @ string offset=1285
.Linfo_string63:
	.asciz	"checksum"                      @ string offset=1296
.Linfo_string64:
	.asciz	"Outer"                         @ string offset=1305
.Linfo_string65:
	.asciz	"Ncnt"                          @ string offset=1311
.Linfo_string66:
	.asciz	"Pcnt"                          @ string offset=1316
.Linfo_string67:
	.asciz	"Ntotal"                        @ string offset=1321
.Linfo_string68:
	.asciz	"Ptotal"                        @ string offset=1328
.Linfo_string69:
	.asciz	"Inner"                         @ string offset=1335
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
	.long	.Linfo_string66
	.long	.Linfo_string67
	.long	.Linfo_string68
	.long	.Linfo_string69
	.section	.debug_addr,"",%progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 @ Length of contribution
.Ldebug_addr_start0:
	.short	5                               @ DWARF version number
	.byte	4                               @ Address size
	.byte	0                               @ Segment selector size
.Laddr_table_base0:
	.long	countnegative_seed
	.long	countnegative_array
	.long	countnegative_postotal
	.long	countnegative_negtotal
	.long	countnegative_poscnt
	.long	countnegative_negcnt
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
