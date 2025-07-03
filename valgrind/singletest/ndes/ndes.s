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
	.file	1 "/workspaces/llvmta/testcases/singletest" "ndes/ndes.c"
	.globl	ndes_init                       @ -- Begin function ndes_init
	.p2align	2
	.type	ndes_init,%function
	.code	32                              @ @ndes_init
ndes_init:
.Lfunc_begin0:
	.loc	1 64 0                          @ ndes/ndes.c:64:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:                                @ %entry
	ldr	r1, .LCPI0_0
	ldr	r2, .LCPI0_1
	mov	r0, #0
.Ltmp0:
	@DEBUG_VALUE: ndes_init:i <- 0
	@DEBUG_VALUE: ndes_init:i <- $r0
	.loc	1 79 3 prologue_end             @ ndes/ndes.c:79:3
	cmp	r0, #57
	beq	.LBB0_2
.Ltmp1:
.LBB0_1:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: ndes_init:i <- $r0
	.loc	1 80 22                         @ ndes/ndes.c:80:22
	ldrb	r3, [r1, r0]
	.loc	1 80 20 is_stmt 0               @ ndes/ndes.c:80:20
	strb	r3, [r2, r0]
	.loc	1 79 25 is_stmt 1               @ ndes/ndes.c:79:25
	add	r0, r0, #1
.Ltmp2:
	@DEBUG_VALUE: ndes_init:i <- $r0
	@DEBUG_VALUE: ndes_init:i <- $r0
	.loc	1 79 3 is_stmt 0                @ ndes/ndes.c:79:3
	cmp	r0, #57
	bne	.LBB0_1
.Ltmp3:
.LBB0_2:                                @ %for.end
	@DEBUG_VALUE: ndes_init:i <- $r0
	.loc	1 0 3                           @ ndes/ndes.c:0:3
	ldr	r1, .LCPI0_2
	ldr	r2, .LCPI0_3
	mov	r0, #0
.Ltmp4:
	@DEBUG_VALUE: ndes_init:i <- 0
	@DEBUG_VALUE: ndes_init:i <- $r0
	.loc	1 82 3 is_stmt 1                @ ndes/ndes.c:82:3
	cmp	r0, #49
	beq	.LBB0_4
.Ltmp5:
.LBB0_3:                                @ %for.body4
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: ndes_init:i <- $r0
	.loc	1 83 22                         @ ndes/ndes.c:83:22
	ldrb	r3, [r1, r0]
	.loc	1 83 20 is_stmt 0               @ ndes/ndes.c:83:20
	strb	r3, [r2, r0]
	.loc	1 82 25 is_stmt 1               @ ndes/ndes.c:82:25
	add	r0, r0, #1
.Ltmp6:
	@DEBUG_VALUE: ndes_init:i <- $r0
	@DEBUG_VALUE: ndes_init:i <- $r0
	.loc	1 82 3 is_stmt 0                @ ndes/ndes.c:82:3
	cmp	r0, #49
	bne	.LBB0_3
.Ltmp7:
.LBB0_4:                                @ %for.end9
	@DEBUG_VALUE: ndes_init:i <- $r0
	.loc	1 85 14 is_stmt 1               @ ndes/ndes.c:85:14
	ldr	r0, .LCPI0_4
.Ltmp8:
	.loc	1 0 14 is_stmt 0                @ ndes/ndes.c:0:14
	mov	r1, #26
	mov	r2, #35
	.loc	1 85 14                         @ ndes/ndes.c:85:14
	str	r2, [r0]
	.loc	1 86 14 is_stmt 1               @ ndes/ndes.c:86:14
	str	r1, [r0, #4]
	.loc	1 87 14                         @ ndes/ndes.c:87:14
	ldr	r0, .LCPI0_5
	mov	r1, #16
	mov	r2, #2
	.loc	1 88 14                         @ ndes/ndes.c:88:14
	str	r1, [r0, #4]
	.loc	1 87 14                         @ ndes/ndes.c:87:14
	str	r2, [r0]
	.loc	1 90 17                         @ ndes/ndes.c:90:17
	ldr	r0, .LCPI0_6
	.loc	1 90 15 is_stmt 0               @ ndes/ndes.c:90:15
	ldr	r1, .LCPI0_7
	.loc	1 90 17                         @ ndes/ndes.c:90:17
	ldr	r0, [r0]
	.loc	1 90 15                         @ ndes/ndes.c:90:15
	str	r0, [r1]
	.loc	1 91 12 is_stmt 1               @ ndes/ndes.c:91:12
	ldr	r1, .LCPI0_8
	str	r0, [r1]
	.loc	1 92 1                          @ ndes/ndes.c:92:1
	bx	lr
.Ltmp9:
	.p2align	2
@ %bb.5:
	.loc	1 0 1 is_stmt 0                 @ ndes/ndes.c:0:1
.LCPI0_0:
	.long	ndes_init.ndes_ipc1_tmp
.LCPI0_1:
	.long	ndes_ipc1
.LCPI0_2:
	.long	ndes_init.ndes_ipc2_tmp
.LCPI0_3:
	.long	ndes_ipc2
.LCPI0_4:
	.long	ndes_inp
.LCPI0_5:
	.long	ndes_key
.LCPI0_6:
	.long	ndes_value
.LCPI0_7:
	.long	ndes_newkey
.LCPI0_8:
	.long	ndes_isw
.Lfunc_end0:
	.size	ndes_init, .Lfunc_end0-ndes_init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ndes_des                        @ -- Begin function ndes_des
	.p2align	2
	.type	ndes_des,%function
	.code	32                              @ @ndes_des
ndes_des:
.Lfunc_begin1:
	.loc	1 98 0 is_stmt 1                @ ndes/ndes.c:98:0
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
	sub	sp, sp, #48
.Ltmp10:
	@DEBUG_VALUE: ndes_des:newkey <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: ndes_des:isw <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: ndes_des:out <- [DW_OP_plus_uconst 16] [$r11+0]
	.loc	1 127 8 prologue_end            @ ndes/ndes.c:127:8
	ldr	r7, .LCPI1_0
	str	r1, [r11, #-28]
	str	r0, [r11, #-32]
	ldr	r0, [r11, #8]
	str	r3, [sp, #36]
	str	r2, [sp, #32]
	ldr	r1, [r7]
.Ltmp11:
	.loc	1 127 8 is_stmt 0               @ ndes/ndes.c:127:8
	cmp	r1, #0
	beq	.LBB1_3
.Ltmp12:
@ %bb.1:                                @ %if.then
	@DEBUG_VALUE: ndes_des:out <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: ndes_des:isw <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: ndes_des:newkey <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: ndes_des:shifter <- 1
	.loc	1 129 19 is_stmt 1              @ ndes/ndes.c:129:19
	ldr	r1, .LCPI1_1
	mov	r2, #1
	mov	r3, #0
	.loc	1 128 14                        @ ndes/ndes.c:128:14
	str	r3, [r7]
.Ltmp13:
	@DEBUG_VALUE: ndes_des:j <- 2
	.loc	1 129 19                        @ ndes/ndes.c:129:19
	str	r2, [r1, #4]
.Ltmp14:
	@DEBUG_VALUE: ndes_des:shifter <- $r2
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r3
	.loc	1 132 5                         @ ndes/ndes.c:132:5
	cmp	r3, #31
	beq	.LBB1_3
.Ltmp15:
.LBB1_2:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r3
	@DEBUG_VALUE: ndes_des:shifter <- $r2
	@DEBUG_VALUE: ndes_des:out <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: ndes_des:isw <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: ndes_des:newkey <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 133 21                        @ ndes/ndes.c:133:21
	add	r7, r1, r3, lsl #2
	.loc	1 133 33 is_stmt 0              @ ndes/ndes.c:133:33
	lsl	r2, r2, #1
.Ltmp16:
	@DEBUG_VALUE: ndes_des:shifter <- $r2
	.loc	1 132 5 is_stmt 1               @ ndes/ndes.c:132:5
	add	r3, r3, #1
.Ltmp17:
	.loc	1 133 21                        @ ndes/ndes.c:133:21
	str	r2, [r7, #8]
.Ltmp18:
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_plus_uconst 3, DW_OP_stack_value] $r3
	@DEBUG_VALUE: ndes_des:shifter <- $r2
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r3
	.loc	1 132 5                         @ ndes/ndes.c:132:5
	cmp	r3, #31
	bne	.LBB1_2
.Ltmp19:
.LBB1_3:                                @ %if.end
	@DEBUG_VALUE: ndes_des:out <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: ndes_des:isw <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: ndes_des:newkey <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 136 8                         @ ndes/ndes.c:136:8
	ldr	r1, [r0]
.Ltmp20:
	.loc	1 136 8 is_stmt 0               @ ndes/ndes.c:136:8
	cmp	r1, #0
	beq	.LBB1_8
.Ltmp21:
@ %bb.4:                                @ %if.then2
	@DEBUG_VALUE: ndes_des:out <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: ndes_des:isw <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: ndes_des:newkey <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 138 29 is_stmt 1              @ ndes/ndes.c:138:29
	ldr	r5, .LCPI1_2
.Ltmp22:
	@DEBUG_VALUE: ndes_des:k <- 56
	@DEBUG_VALUE: ndes_des:j <- 28
	.loc	1 0 29 is_stmt 0                @ ndes/ndes.c:0:29
	ldr	r8, .LCPI1_3
	mov	r4, #0
	.loc	1 137 13 is_stmt 1              @ ndes/ndes.c:137:13
	str	r4, [r0]
	.loc	1 138 29                        @ ndes/ndes.c:138:29
	str	r4, [r5]
	.loc	1 138 16 is_stmt 0              @ ndes/ndes.c:138:16
	str	r4, [r5, #4]
.Ltmp23:
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_plus_uconst 28, DW_OP_stack_value] $r4
	@DEBUG_VALUE: ndes_des:k <- [DW_OP_plus_uconst 56, DW_OP_stack_value] $r4
	.loc	1 141 5 is_stmt 1               @ ndes/ndes.c:141:5
	cmn	r4, #28
	beq	.LBB1_6
.Ltmp24:
.LBB1_5:                                @ %for.body5
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: ndes_des:k <- [DW_OP_plus_uconst 56, DW_OP_stack_value] $r4
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_plus_uconst 28, DW_OP_stack_value] $r4
	@DEBUG_VALUE: ndes_des:out <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: ndes_des:isw <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: ndes_des:newkey <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 142 60                        @ ndes/ndes.c:142:60
	add	r7, r8, r4
	.loc	1 142 42 is_stmt 0              @ ndes/ndes.c:142:42
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #36]
	.loc	1 142 31                        @ ndes/ndes.c:142:31
	ldr	r6, [r5, #4]
	.loc	1 142 42                        @ ndes/ndes.c:142:42
	mov	r3, #32
	.loc	1 142 60                        @ ndes/ndes.c:142:60
	ldrb	r2, [r7, #28]
	.loc	1 142 42                        @ ndes/ndes.c:142:42
	bl	ndes_getbit
	.loc	1 142 40                        @ ndes/ndes.c:142:40
	orr	r0, r0, r6, lsl #1
	.loc	1 143 29 is_stmt 1              @ ndes/ndes.c:143:29
	ldr	r6, [r5]
	.loc	1 144 55                        @ ndes/ndes.c:144:55
	ldrb	r2, [r7, #56]
	.loc	1 144 37 is_stmt 0              @ ndes/ndes.c:144:37
	ldr	r1, [sp, #36]
	mov	r3, #32
	.loc	1 142 18 is_stmt 1              @ ndes/ndes.c:142:18
	str	r0, [r5, #4]
	.loc	1 143 31                        @ ndes/ndes.c:143:31
	lsl	r0, r6, #1
	.loc	1 143 18 is_stmt 0              @ ndes/ndes.c:143:18
	str	r0, [r5]
	.loc	1 144 37 is_stmt 1              @ ndes/ndes.c:144:37
	ldr	r0, [sp, #32]
	bl	ndes_getbit
	.loc	1 144 35 is_stmt 0              @ ndes/ndes.c:144:35
	orr	r0, r0, r6, lsl #1
.Ltmp25:
	.loc	1 141 5 is_stmt 1               @ ndes/ndes.c:141:5
	sub	r4, r4, #1
.Ltmp26:
	.loc	1 144 18                        @ ndes/ndes.c:144:18
	str	r0, [r5]
.Ltmp27:
	@DEBUG_VALUE: ndes_des:k <- [DW_OP_plus_uconst 55, DW_OP_stack_value] $r4
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_plus_uconst 27, DW_OP_stack_value] $r4
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_plus_uconst 28, DW_OP_stack_value] $r4
	@DEBUG_VALUE: ndes_des:k <- [DW_OP_plus_uconst 56, DW_OP_stack_value] $r4
	.loc	1 141 5                         @ ndes/ndes.c:141:5
	cmn	r4, #28
	bne	.LBB1_5
.Ltmp28:
.LBB1_6:                                @ %for.end15
	@DEBUG_VALUE: ndes_des:k <- [DW_OP_plus_uconst 56, DW_OP_stack_value] $r4
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_plus_uconst 28, DW_OP_stack_value] $r4
	@DEBUG_VALUE: ndes_des:out <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: ndes_des:isw <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: ndes_des:newkey <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 0 5 is_stmt 0                 @ ndes/ndes.c:0:5
	ldr	r0, .LCPI1_4
	mov	r4, #1
.Ltmp29:
	@DEBUG_VALUE: ndes_des:i <- 1
	add	r5, sp, #8
	add	r6, r0, #12
.Ltmp30:
	@DEBUG_VALUE: ndes_des:i <- $r4
	.loc	1 148 5 is_stmt 1               @ ndes/ndes.c:148:5
	cmp	r4, #17
	beq	.LBB1_8
.Ltmp31:
.LBB1_7:                                @ %for.body19
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: ndes_des:i <- $r4
	@DEBUG_VALUE: ndes_des:out <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: ndes_des:isw <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: ndes_des:newkey <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 149 12                        @ ndes/ndes.c:149:12
	ldm	r6, {r0, r1, r2}
	add	r3, sp, #8
	stm	r3, {r0, r1, r2}
	.loc	1 150 7                         @ ndes/ndes.c:150:7
	mov	r0, r4
	mov	r1, r5
	bl	ndes_ks
	.loc	1 151 18                        @ ndes/ndes.c:151:18
	add	r2, sp, #8
.Ltmp32:
	.loc	1 148 28                        @ ndes/ndes.c:148:28
	add	r4, r4, #1
.Ltmp33:
	@DEBUG_VALUE: ndes_des:i <- $r4
	.loc	1 151 18                        @ ndes/ndes.c:151:18
	ldm	r2, {r0, r1, r2}
	stm	r6!, {r0, r1, r2}
.Ltmp34:
	@DEBUG_VALUE: ndes_des:i <- $r4
	.loc	1 148 5                         @ ndes/ndes.c:148:5
	cmp	r4, #17
	bne	.LBB1_7
.Ltmp35:
.LBB1_8:                                @ %if.end25
	@DEBUG_VALUE: ndes_des:out <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: ndes_des:isw <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: ndes_des:newkey <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 0 5 is_stmt 0                 @ ndes/ndes.c:0:5
	ldr	r4, [r11, #16]
	ldr	r8, [r11, #12]
	ldr	r9, .LCPI1_5
	mov	r6, #0
	.loc	1 155 10 is_stmt 1              @ ndes/ndes.c:155:10
	str	r6, [sp, #24]
	.loc	1 155 19 is_stmt 0              @ ndes/ndes.c:155:19
	str	r6, [sp, #20]
.Ltmp36:
	@DEBUG_VALUE: ndes_des:k <- 64
	@DEBUG_VALUE: ndes_des:j <- 32
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 32, DW_OP_plus, DW_OP_stack_value] $r6
	@DEBUG_VALUE: ndes_des:k <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 64, DW_OP_plus, DW_OP_stack_value] $r6
	.loc	1 158 3 is_stmt 1               @ ndes/ndes.c:158:3
	cmp	r6, #32
	beq	.LBB1_10
.Ltmp37:
.LBB1_9:                                @ %for.body29
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: ndes_des:k <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 64, DW_OP_plus, DW_OP_stack_value] $r6
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 32, DW_OP_plus, DW_OP_stack_value] $r6
	@DEBUG_VALUE: ndes_des:out <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: ndes_des:isw <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: ndes_des:newkey <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 159 19                        @ ndes/ndes.c:159:19
	ldr	r5, [sp, #24]
	.loc	1 160 45                        @ ndes/ndes.c:160:45
	sub	r7, r9, r6
	.loc	1 160 27 is_stmt 0              @ ndes/ndes.c:160:27
	mov	r3, #32
	.loc	1 159 21 is_stmt 1              @ ndes/ndes.c:159:21
	lsl	r0, r5, #1
	.loc	1 159 12 is_stmt 0              @ ndes/ndes.c:159:12
	str	r0, [sp, #24]
	.loc	1 160 45 is_stmt 1              @ ndes/ndes.c:160:45
	ldrb	r2, [r7, #32]
	.loc	1 160 27 is_stmt 0              @ ndes/ndes.c:160:27
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	bl	ndes_getbit
	.loc	1 160 25                        @ ndes/ndes.c:160:25
	orr	r0, r0, r5, lsl #1
	.loc	1 161 19 is_stmt 1              @ ndes/ndes.c:161:19
	ldr	r5, [sp, #20]
	.loc	1 162 27                        @ ndes/ndes.c:162:27
	mov	r3, #32
	.loc	1 160 12                        @ ndes/ndes.c:160:12
	str	r0, [sp, #24]
	.loc	1 161 21                        @ ndes/ndes.c:161:21
	lsl	r0, r5, #1
	.loc	1 161 12 is_stmt 0              @ ndes/ndes.c:161:12
	str	r0, [sp, #20]
	.loc	1 162 45 is_stmt 1              @ ndes/ndes.c:162:45
	ldrb	r2, [r7, #64]
	.loc	1 162 27 is_stmt 0              @ ndes/ndes.c:162:27
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	bl	ndes_getbit
	.loc	1 162 25                        @ ndes/ndes.c:162:25
	orr	r0, r0, r5, lsl #1
.Ltmp38:
	.loc	1 158 3 is_stmt 1               @ ndes/ndes.c:158:3
	add	r6, r6, #1
.Ltmp39:
	.loc	1 162 12                        @ ndes/ndes.c:162:12
	str	r0, [sp, #20]
.Ltmp40:
	@DEBUG_VALUE: ndes_des:k <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 63, DW_OP_plus, DW_OP_stack_value] $r6
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 31, DW_OP_plus, DW_OP_stack_value] $r6
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 32, DW_OP_plus, DW_OP_stack_value] $r6
	@DEBUG_VALUE: ndes_des:k <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 64, DW_OP_plus, DW_OP_stack_value] $r6
	.loc	1 158 3                         @ ndes/ndes.c:158:3
	cmp	r6, #32
	bne	.LBB1_9
.Ltmp41:
.LBB1_10:                               @ %for.end51
	@DEBUG_VALUE: ndes_des:k <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 64, DW_OP_plus, DW_OP_stack_value] $r6
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 32, DW_OP_plus, DW_OP_stack_value] $r6
	@DEBUG_VALUE: ndes_des:out <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: ndes_des:isw <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: ndes_des:newkey <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 0 3 is_stmt 0                 @ ndes/ndes.c:0:3
	ldr	r7, .LCPI1_4
	mov	r6, #1
.Ltmp42:
	@DEBUG_VALUE: ndes_des:i <- 1
	add	r5, sp, #28
.Ltmp43:
	@DEBUG_VALUE: ndes_des:i <- $r6
	.loc	1 165 3 is_stmt 1               @ ndes/ndes.c:165:3
	cmp	r6, #17
	beq	.LBB1_12
.Ltmp44:
.LBB1_11:                               @ %for.body55
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: ndes_des:i <- $r6
	@DEBUG_VALUE: ndes_des:out <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: ndes_des:isw <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: ndes_des:newkey <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 166 12                        @ ndes/ndes.c:166:12
	cmp	r8, #1
	mov	r0, r6
	.loc	1 167 5                         @ ndes/ndes.c:167:5
	mov	r3, r7
	str	r5, [sp]
	.loc	1 166 26                        @ ndes/ndes.c:166:26
	rsbeq	r0, r6, #17
.Ltmp45:
	@DEBUG_VALUE: ndes_des:ii <- $r0
	.loc	1 167 5                         @ ndes/ndes.c:167:5
	add	r0, r0, r0, lsl #1
.Ltmp46:
	ldr	r1, [r3, r0, lsl #2]!
	.loc	1 167 22 is_stmt 0              @ ndes/ndes.c:167:22
	ldr	r0, [sp, #20]
.Ltmp47:
	@DEBUG_VALUE: ndes_des:ic <- [DW_OP_plus_uconst 28, DW_OP_deref] $sp
	.loc	1 167 5                         @ ndes/ndes.c:167:5
	ldmib	r3, {r2, r3}
	bl	ndes_cyfun
	.loc	1 169 19 is_stmt 1              @ ndes/ndes.c:169:19
	ldr	r0, [sp, #20]
	.loc	1 168 16                        @ ndes/ndes.c:168:16
	ldr	r1, [sp, #24]
.Ltmp48:
	.loc	1 165 26                        @ ndes/ndes.c:165:26
	add	r6, r6, #1
.Ltmp49:
	@DEBUG_VALUE: ndes_des:i <- $r6
	.loc	1 169 12                        @ ndes/ndes.c:169:12
	str	r0, [sp, #24]
	.loc	1 168 8                         @ ndes/ndes.c:168:8
	ldr	r0, [sp, #28]
.Ltmp50:
	@DEBUG_VALUE: ndes_des:ic <- $r0
	eor	r0, r0, r1
.Ltmp51:
	@DEBUG_VALUE: ndes_des:ic <- $r0
	str	r0, [sp, #28]
	.loc	1 170 12                        @ ndes/ndes.c:170:12
	str	r0, [sp, #20]
.Ltmp52:
	@DEBUG_VALUE: ndes_des:i <- $r6
	.loc	1 165 3                         @ ndes/ndes.c:165:3
	cmp	r6, #17
	bne	.LBB1_11
.Ltmp53:
.LBB1_12:                               @ %for.end66
	@DEBUG_VALUE: ndes_des:i <- $r6
	@DEBUG_VALUE: ndes_des:out <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: ndes_des:isw <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: ndes_des:newkey <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 173 13                        @ ndes/ndes.c:173:13
	ldr	r1, [sp, #24]
.Ltmp54:
	@DEBUG_VALUE: ndes_des:ic <- $r1
	.loc	1 174 17                        @ ndes/ndes.c:174:17
	ldr	r0, [sp, #20]
	ldr	r8, .LCPI1_6
	mov	r5, #0
	.loc	1 176 27                        @ ndes/ndes.c:176:27
	str	r5, [r4]
	.loc	1 176 14 is_stmt 0              @ ndes/ndes.c:176:14
	str	r5, [r4, #4]
	.loc	1 173 6 is_stmt 1               @ ndes/ndes.c:173:6
	str	r1, [sp, #28]
	.loc	1 175 10                        @ ndes/ndes.c:175:10
	str	r1, [sp, #20]
	.loc	1 174 10                        @ ndes/ndes.c:174:10
	str	r0, [sp, #24]
.Ltmp55:
	@DEBUG_VALUE: ndes_des:k <- 64
	@DEBUG_VALUE: ndes_des:j <- 32
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 32, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_des:k <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 64, DW_OP_plus, DW_OP_stack_value] $r5
	.loc	1 179 3                         @ ndes/ndes.c:179:3
	cmp	r5, #32
	beq	.LBB1_14
.Ltmp56:
.LBB1_13:                               @ %for.body76
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: ndes_des:k <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 64, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 32, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_des:out <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: ndes_des:isw <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: ndes_des:newkey <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 180 27                        @ ndes/ndes.c:180:27
	ldr	r7, [r4, #4]
	.loc	1 181 54                        @ ndes/ndes.c:181:54
	sub	r6, r8, r5
	.loc	1 181 35 is_stmt 0              @ ndes/ndes.c:181:35
	mov	r3, #32
	.loc	1 180 29 is_stmt 1              @ ndes/ndes.c:180:29
	lsl	r0, r7, #1
	.loc	1 180 16 is_stmt 0              @ ndes/ndes.c:180:16
	str	r0, [r4, #4]
	.loc	1 181 54 is_stmt 1              @ ndes/ndes.c:181:54
	ldrb	r2, [r6, #32]
	.loc	1 181 35 is_stmt 0              @ ndes/ndes.c:181:35
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #24]
	bl	ndes_getbit
	.loc	1 181 33                        @ ndes/ndes.c:181:33
	orr	r0, r0, r7, lsl #1
	.loc	1 182 27 is_stmt 1              @ ndes/ndes.c:182:27
	ldr	r7, [r4]
	.loc	1 183 35                        @ ndes/ndes.c:183:35
	mov	r3, #32
	.loc	1 181 16                        @ ndes/ndes.c:181:16
	str	r0, [r4, #4]
	.loc	1 182 29                        @ ndes/ndes.c:182:29
	lsl	r0, r7, #1
	.loc	1 182 16 is_stmt 0              @ ndes/ndes.c:182:16
	str	r0, [r4]
	.loc	1 183 54 is_stmt 1              @ ndes/ndes.c:183:54
	ldrb	r2, [r6, #64]
	.loc	1 183 35 is_stmt 0              @ ndes/ndes.c:183:35
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #24]
	bl	ndes_getbit
	.loc	1 183 33                        @ ndes/ndes.c:183:33
	orr	r0, r0, r7, lsl #1
.Ltmp57:
	.loc	1 179 3 is_stmt 1               @ ndes/ndes.c:179:3
	add	r5, r5, #1
.Ltmp58:
	.loc	1 183 16                        @ ndes/ndes.c:183:16
	str	r0, [r4]
.Ltmp59:
	@DEBUG_VALUE: ndes_des:k <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 63, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 31, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 32, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_des:k <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 64, DW_OP_plus, DW_OP_stack_value] $r5
	.loc	1 179 3                         @ ndes/ndes.c:179:3
	cmp	r5, #32
	bne	.LBB1_13
.Ltmp60:
.LBB1_14:                               @ %for.end98
	@DEBUG_VALUE: ndes_des:k <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 64, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_des:j <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 32, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_des:out <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: ndes_des:isw <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: ndes_des:newkey <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 185 1                         @ ndes/ndes.c:185:1
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
.Ltmp61:
	bx	lr
.Ltmp62:
	.p2align	2
@ %bb.15:
	.loc	1 0 1 is_stmt 0                 @ ndes/ndes.c:0:1
.LCPI1_0:
	.long	ndes_des.initflag
.LCPI1_1:
	.long	ndes_bit
.LCPI1_2:
	.long	ndes_icd
.LCPI1_3:
	.long	ndes_ipc1
.LCPI1_4:
	.long	ndes_des.kns
.LCPI1_5:
	.long	ndes_des.ip
.LCPI1_6:
	.long	ndes_des.ipm
.Lfunc_end1:
	.size	ndes_des, .Lfunc_end1-ndes_des
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ndes_getbit                     @ -- Begin function ndes_getbit
	.p2align	2
	.type	ndes_getbit,%function
	.code	32                              @ @ndes_getbit
ndes_getbit:
.Lfunc_begin2:
	.loc	1 334 0 is_stmt 1               @ ndes/ndes.c:334:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: ndes_getbit:bitno <- $r2
	@DEBUG_VALUE: ndes_getbit:nbits <- $r3
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
.Ltmp63:
	.loc	1 335 8 prologue_end            @ ndes/ndes.c:335:8
	cmp	r2, r3
	stm	sp, {r0, r1}
	ble	.LBB2_2
.Ltmp64:
@ %bb.1:                                @ %if.else
	@DEBUG_VALUE: ndes_getbit:nbits <- $r3
	@DEBUG_VALUE: ndes_getbit:bitno <- $r2
	.loc	1 338 12                        @ ndes/ndes.c:338:12
	ldr	r1, .LCPI2_0
	.loc	1 338 28 is_stmt 0              @ ndes/ndes.c:338:28
	sub	r0, r2, r3
	.loc	1 338 12                        @ ndes/ndes.c:338:12
	ldr	r0, [r1, r0, lsl #2]
	.loc	1 338 47                        @ ndes/ndes.c:338:47
	ldr	r1, [sp]
	b	.LBB2_3
.Ltmp65:
.LBB2_2:                                @ %if.then
	@DEBUG_VALUE: ndes_getbit:nbits <- $r3
	@DEBUG_VALUE: ndes_getbit:bitno <- $r2
	.loc	1 336 12 is_stmt 1              @ ndes/ndes.c:336:12
	ldr	r0, .LCPI2_0
	.loc	1 336 39 is_stmt 0              @ ndes/ndes.c:336:39
	ldr	r1, [sp, #4]
	.loc	1 336 12                        @ ndes/ndes.c:336:12
	ldr	r0, [r0, r2, lsl #2]
.Ltmp66:
.LBB2_3:                                @ %return
	@DEBUG_VALUE: ndes_getbit:nbits <- $r3
	@DEBUG_VALUE: ndes_getbit:bitno <- $r2
	.loc	1 0 0                           @ ndes/ndes.c:0:0
	and	r0, r0, r1
	cmp	r0, #0
	movne	r0, #1
.Ltmp67:
	.loc	1 339 1 is_stmt 1               @ ndes/ndes.c:339:1
	add	sp, sp, #8
	bx	lr
.Ltmp68:
	.p2align	2
@ %bb.4:
	.loc	1 0 1 is_stmt 0                 @ ndes/ndes.c:0:1
.LCPI2_0:
	.long	ndes_bit
.Lfunc_end2:
	.size	ndes_getbit, .Lfunc_end2-ndes_getbit
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ndes_ks                         @ -- Begin function ndes_ks
	.p2align	2
	.type	ndes_ks,%function
	.code	32                              @ @ndes_ks
ndes_ks:
.Lfunc_begin3:
	.loc	1 342 0 is_stmt 1               @ ndes/ndes.c:342:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: ndes_ks:n <- $r0
	@DEBUG_VALUE: ndes_ks:kn <- $r1
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
	mov	r4, r1
.Ltmp69:
	@DEBUG_VALUE: ndes_ks:kn <- $r4
	@DEBUG_VALUE: ndes_ks:kn <- $r4
	.loc	1 345 15 prologue_end           @ ndes/ndes.c:345:15
	cmp	r0, #1
	beq	.LBB3_2
.Ltmp70:
@ %bb.1:                                @ %lor.lhs.false
	@DEBUG_VALUE: ndes_ks:kn <- $r4
	@DEBUG_VALUE: ndes_ks:n <- $r0
	.loc	1 345 25 is_stmt 0              @ ndes/ndes.c:345:25
	cmp	r0, #2
	.loc	1 345 35                        @ ndes/ndes.c:345:35
	cmpne	r0, #9
	bne	.LBB3_6
.Ltmp71:
.LBB3_2:                                @ %if.then
	@DEBUG_VALUE: ndes_ks:kn <- $r4
	@DEBUG_VALUE: ndes_ks:n <- $r0
	.loc	1 346 29 is_stmt 1              @ ndes/ndes.c:346:29
	ldr	r0, .LCPI3_0
.Ltmp72:
	@DEBUG_VALUE: ndes_ks:n <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	1 347 29                        @ ndes/ndes.c:347:29
	ldm	r0, {r1, r2}
	.loc	1 346 55                        @ ndes/ndes.c:346:55
	and	r3, r2, #1
	.loc	1 346 31 is_stmt 0              @ ndes/ndes.c:346:31
	orr	r2, r2, r3, lsl #28
	.loc	1 346 65                        @ ndes/ndes.c:346:65
	lsr	r2, r2, #1
	.loc	1 347 55 is_stmt 1              @ ndes/ndes.c:347:55
	and	r3, r1, #1
	.loc	1 347 31 is_stmt 0              @ ndes/ndes.c:347:31
	orr	r1, r1, r3, lsl #28
	.loc	1 347 65                        @ ndes/ndes.c:347:65
	lsr	r1, r1, #1
	.loc	1 347 16                        @ ndes/ndes.c:347:16
	stm	r0, {r1, r2}
.Ltmp73:
.LBB3_3:                                @ %if.end
	@DEBUG_VALUE: ndes_ks:n <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: ndes_ks:kn <- $r4
	.loc	1 0 16                          @ ndes/ndes.c:0:16
	ldr	r8, .LCPI3_1
	ldr	r10, .LCPI3_0
	mov	r9, #255
	mov	r5, #0
.Ltmp74:
	@DEBUG_VALUE: ndes_ks:l <- 48
	@DEBUG_VALUE: ndes_ks:k <- 32
	@DEBUG_VALUE: ndes_ks:j <- 16
	orr	r9, r9, #65280
	.loc	1 356 37 is_stmt 1              @ ndes/ndes.c:356:37
	str	r5, [r4]
	.loc	1 356 25 is_stmt 0              @ ndes/ndes.c:356:25
	str	r5, [r4, #4]
	.loc	1 356 13                        @ ndes/ndes.c:356:13
	str	r5, [r4, #8]
.Ltmp75:
	@DEBUG_VALUE: ndes_ks:j <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 16, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_ks:k <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 32, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_ks:l <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 48, DW_OP_plus, DW_OP_stack_value] $r5
	.loc	1 359 3 is_stmt 1               @ ndes/ndes.c:359:3
	cmp	r5, #16
	beq	.LBB3_5
.Ltmp76:
.LBB3_4:                                @ %for.body22
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: ndes_ks:l <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 48, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_ks:k <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 32, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_ks:j <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 16, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_ks:n <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: ndes_ks:kn <- $r4
	.loc	1 360 25                        @ ndes/ndes.c:360:25
	ldr	r7, [r4, #8]
	.loc	1 362 40                        @ ndes/ndes.c:362:40
	sub	r6, r8, r5
	.loc	1 362 17 is_stmt 0              @ ndes/ndes.c:362:17
	mov	r3, #28
	.loc	1 360 27 is_stmt 1              @ ndes/ndes.c:360:27
	lsl	r0, r7, #1
	.loc	1 360 15 is_stmt 0              @ ndes/ndes.c:360:15
	str	r0, [r4, #8]
	.loc	1 362 17 is_stmt 1              @ ndes/ndes.c:362:17
	ldm	r10, {r0, r1}
	.loc	1 362 40 is_stmt 0              @ ndes/ndes.c:362:40
	ldrb	r2, [r6, #16]
	.loc	1 362 17                        @ ndes/ndes.c:362:17
	bl	ndes_getbit
	.loc	1 361 33 is_stmt 1              @ ndes/ndes.c:361:33
	and	r0, r0, r9
	.loc	1 365 17                        @ ndes/ndes.c:365:17
	mov	r3, #28
	.loc	1 361 31                        @ ndes/ndes.c:361:31
	orr	r0, r0, r7, lsl #1
	.loc	1 363 25                        @ ndes/ndes.c:363:25
	ldr	r7, [r4, #4]
	.loc	1 361 15                        @ ndes/ndes.c:361:15
	str	r0, [r4, #8]
	.loc	1 363 27                        @ ndes/ndes.c:363:27
	lsl	r0, r7, #1
	.loc	1 363 15 is_stmt 0              @ ndes/ndes.c:363:15
	str	r0, [r4, #4]
	.loc	1 365 40 is_stmt 1              @ ndes/ndes.c:365:40
	ldrb	r2, [r6, #32]
	.loc	1 365 17 is_stmt 0              @ ndes/ndes.c:365:17
	ldm	r10, {r0, r1}
	bl	ndes_getbit
	.loc	1 364 33 is_stmt 1              @ ndes/ndes.c:364:33
	and	r0, r0, r9
	.loc	1 368 17                        @ ndes/ndes.c:368:17
	mov	r3, #28
	.loc	1 364 31                        @ ndes/ndes.c:364:31
	orr	r0, r0, r7, lsl #1
	.loc	1 366 25                        @ ndes/ndes.c:366:25
	ldr	r7, [r4]
	.loc	1 364 15                        @ ndes/ndes.c:364:15
	str	r0, [r4, #4]
	.loc	1 366 27                        @ ndes/ndes.c:366:27
	lsl	r0, r7, #1
	.loc	1 366 15 is_stmt 0              @ ndes/ndes.c:366:15
	str	r0, [r4]
	.loc	1 368 40 is_stmt 1              @ ndes/ndes.c:368:40
	ldrb	r2, [r6, #48]
	.loc	1 368 17 is_stmt 0              @ ndes/ndes.c:368:17
	ldm	r10, {r0, r1}
	bl	ndes_getbit
	.loc	1 367 33 is_stmt 1              @ ndes/ndes.c:367:33
	and	r0, r0, r9
.Ltmp77:
	.loc	1 359 3                         @ ndes/ndes.c:359:3
	add	r5, r5, #1
.Ltmp78:
	.loc	1 367 31                        @ ndes/ndes.c:367:31
	orr	r0, r0, r7, lsl #1
	.loc	1 367 15 is_stmt 0              @ ndes/ndes.c:367:15
	str	r0, [r4]
.Ltmp79:
	@DEBUG_VALUE: ndes_ks:l <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 47, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_ks:k <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 31, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_ks:j <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 15, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_ks:j <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 16, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_ks:k <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 32, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_ks:l <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 48, DW_OP_plus, DW_OP_stack_value] $r5
	.loc	1 359 3 is_stmt 1               @ ndes/ndes.c:359:3
	cmp	r5, #16
	bne	.LBB3_4
.Ltmp80:
.LBB3_5:                                @ %for.end56
	@DEBUG_VALUE: ndes_ks:l <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 48, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_ks:k <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 32, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_ks:j <- [DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 16, DW_OP_plus, DW_OP_stack_value] $r5
	@DEBUG_VALUE: ndes_ks:n <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: ndes_ks:kn <- $r4
	.loc	1 370 1                         @ ndes/ndes.c:370:1
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
.Ltmp81:
	@DEBUG_VALUE: ndes_ks:kn <- [DW_OP_LLVM_entry_value 1] $r1
	bx	lr
.Ltmp82:
.LBB3_6:                                @ %lor.lhs.false4
	@DEBUG_VALUE: ndes_ks:kn <- $r4
	@DEBUG_VALUE: ndes_ks:n <- $r0
	.loc	1 345 8                         @ ndes/ndes.c:345:8
	cmp	r0, #16
	beq	.LBB3_2
.Ltmp83:
@ %bb.7:                                @ %if.else
	@DEBUG_VALUE: ndes_ks:kn <- $r4
	@DEBUG_VALUE: ndes_ks:n <- $r0
	.loc	1 0 8 is_stmt 0                 @ ndes/ndes.c:0:8
	ldr	r1, .LCPI3_0
	mov	r0, #2
.Ltmp84:
	@DEBUG_VALUE: ndes_ks:n <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: ndes_ks:i <- 1
	@DEBUG_VALUE: ndes_ks:i <- [DW_OP_consts 2, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r0
	.loc	1 350 5 is_stmt 1               @ ndes/ndes.c:350:5
	cmp	r0, #0
	beq	.LBB3_3
.Ltmp85:
.LBB3_8:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: ndes_ks:i <- [DW_OP_consts 2, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r0
	@DEBUG_VALUE: ndes_ks:n <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: ndes_ks:kn <- $r4
	.loc	1 352 31                        @ ndes/ndes.c:352:31
	ldm	r1, {r2, r3}
	.loc	1 351 57                        @ ndes/ndes.c:351:57
	and	r7, r3, #1
.Ltmp86:
	.loc	1 350 5                         @ ndes/ndes.c:350:5
	sub	r0, r0, #1
.Ltmp87:
	.loc	1 351 33                        @ ndes/ndes.c:351:33
	orr	r3, r3, r7, lsl #28
	.loc	1 351 67 is_stmt 0              @ ndes/ndes.c:351:67
	lsr	r3, r3, #1
	.loc	1 352 57 is_stmt 1              @ ndes/ndes.c:352:57
	and	r7, r2, #1
	.loc	1 352 33 is_stmt 0              @ ndes/ndes.c:352:33
	orr	r2, r2, r7, lsl #28
	.loc	1 352 67                        @ ndes/ndes.c:352:67
	lsr	r2, r2, #1
.Ltmp88:
	@DEBUG_VALUE: ndes_ks:i <- [DW_OP_consts 2, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 2, DW_OP_plus, DW_OP_stack_value] $r0
	.loc	1 352 18                        @ ndes/ndes.c:352:18
	stm	r1, {r2, r3}
.Ltmp89:
	@DEBUG_VALUE: ndes_ks:i <- [DW_OP_consts 2, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r0
	.loc	1 350 5 is_stmt 1               @ ndes/ndes.c:350:5
	cmp	r0, #0
	bne	.LBB3_8
	b	.LBB3_3
.Ltmp90:
	.p2align	2
@ %bb.9:
	.loc	1 0 5 is_stmt 0                 @ ndes/ndes.c:0:5
.LCPI3_0:
	.long	ndes_icd
.LCPI3_1:
	.long	ndes_ipc2
.Lfunc_end3:
	.size	ndes_ks, .Lfunc_end3-ndes_ks
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ndes_cyfun                      @ -- Begin function ndes_cyfun
	.p2align	2
	.type	ndes_cyfun,%function
	.code	32                              @ @ndes_cyfun
ndes_cyfun:
.Lfunc_begin4:
	.loc	1 189 0 is_stmt 1               @ ndes/ndes.c:189:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: ndes_cyfun:ir <- $r0
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
	sub	sp, sp, #60
.Ltmp91:
	@DEBUG_VALUE: ndes_cyfun:iout <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 281 17 prologue_end           @ ndes/ndes.c:281:17
	ldr	r5, .LCPI4_0
	ldr	r8, .LCPI4_3
	ldr	r4, [r5]
	ldr	r12, [r5, #4]
	ldr	lr, [r5, #8]
	ldr	r5, [r5, #12]
	str	r4, [sp, #32]
	str	r12, [sp, #36]
	str	lr, [sp, #40]
	sub	r12, r11, #40
	ldr	lr, .LCPI4_1
	str	r5, [sp, #44]
	mov	r5, #1
	stm	r12, {r1, r2, r3}
	ldr	r12, [r11, #8]
.Ltmp92:
	@DEBUG_VALUE: ndes_cyfun:m <- 48
	@DEBUG_VALUE: ndes_cyfun:l <- 32
	.loc	1 0 17 is_stmt 0                @ ndes/ndes.c:0:17
	mov	r1, #0
	.loc	1 290 8 is_stmt 1               @ ndes/ndes.c:290:8
	str	r1, [sp, #28]
	.loc	1 290 15 is_stmt 0              @ ndes/ndes.c:290:15
	str	r1, [sp, #24]
	.loc	1 290 22                        @ ndes/ndes.c:290:22
	str	r1, [sp, #20]
	mov	r1, #16
.Ltmp93:
	.loc	1 293 11 is_stmt 1              @ ndes/ndes.c:293:11
	str	r1, [sp, #4]
	add	r1, lr, #128
.Ltmp94:
.LBB4_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: ndes_cyfun:iout <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: ndes_cyfun:ir <- $r0
	@DEBUG_VALUE: ndes_cyfun:l <- [DW_OP_LLVM_arg 0, DW_OP_consts 128, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_minus, DW_OP_consts 18446744073709551612, DW_OP_div, DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 32, DW_OP_plus, DW_OP_stack_value] undef
	@DEBUG_VALUE: ndes_cyfun:m <- [DW_OP_LLVM_arg 0, DW_OP_consts 128, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_minus, DW_OP_consts 18446744073709551612, DW_OP_div, DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 48, DW_OP_plus, DW_OP_stack_value] undef
	.loc	1 293 33 is_stmt 0              @ ndes/ndes.c:293:33
	ldr	r4, [sp, #4]
.Ltmp95:
	.loc	1 293 3                         @ ndes/ndes.c:293:3
	cmp	r4, #1
	blt	.LBB4_3
.Ltmp96:
@ %bb.2:                                @ %for.body
                                        @   in Loop: Header=BB4_1 Depth=1
	@DEBUG_VALUE: ndes_cyfun:iout <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: ndes_cyfun:ir <- $r0
	.loc	1 294 17 is_stmt 1              @ ndes/ndes.c:294:17
	ldr	r6, [sp, #28]
	.loc	1 296 17                        @ ndes/ndes.c:296:17
	ldr	r4, [sp, #20]
	.loc	1 295 17                        @ ndes/ndes.c:295:17
	ldr	r3, [sp, #24]
	.loc	1 294 38                        @ ndes/ndes.c:294:38
	ldr	r7, [sp, #4]
	.loc	1 294 33 is_stmt 0              @ ndes/ndes.c:294:33
	ldr	r7, [lr, r7, lsl #2]
	.loc	1 294 19                        @ ndes/ndes.c:294:19
	lsl	r2, r6, #1
	.loc	1 294 30                        @ ndes/ndes.c:294:30
	ldr	r7, [r8, r7, lsl #2]
	.loc	1 294 26                        @ ndes/ndes.c:294:26
	tst	r7, r0
	orrne	r2, r5, r6, lsl #1
	.loc	1 295 19 is_stmt 1              @ ndes/ndes.c:295:19
	lsl	r6, r3, #1
	.loc	1 294 10                        @ ndes/ndes.c:294:10
	str	r2, [sp, #28]
	.loc	1 295 33                        @ ndes/ndes.c:295:33
	ldr	r2, [r1]
	.loc	1 295 30 is_stmt 0              @ ndes/ndes.c:295:30
	ldr	r2, [r8, r2, lsl #2]
	.loc	1 295 26                        @ ndes/ndes.c:295:26
	tst	r2, r0
	orrne	r6, r5, r3, lsl #1
	.loc	1 295 10                        @ ndes/ndes.c:295:10
	str	r6, [sp, #24]
	.loc	1 296 33 is_stmt 1              @ ndes/ndes.c:296:33
	ldr	r2, [r1, #64]
.Ltmp97:
	.loc	1 293 42                        @ ndes/ndes.c:293:42
	ldr	r3, [sp, #4]
	.loc	1 293 3 is_stmt 0               @ ndes/ndes.c:293:3
	sub	r1, r1, #4
	.loc	1 293 42                        @ ndes/ndes.c:293:42
	sub	r3, r3, #1
	str	r3, [sp, #4]
.Ltmp98:
	.loc	1 296 19 is_stmt 1              @ ndes/ndes.c:296:19
	lsl	r3, r4, #1
	.loc	1 296 30 is_stmt 0              @ ndes/ndes.c:296:30
	ldr	r2, [r8, r2, lsl #2]
	.loc	1 296 26                        @ ndes/ndes.c:296:26
	tst	r2, r0
	orrne	r3, r5, r4, lsl #1
	.loc	1 296 10                        @ ndes/ndes.c:296:10
	str	r3, [sp, #20]
.Ltmp99:
	@DEBUG_VALUE: ndes_cyfun:m <- [DW_OP_LLVM_arg 0, DW_OP_consts 128, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_minus, DW_OP_consts 18446744073709551612, DW_OP_div, DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 47, DW_OP_plus, DW_OP_stack_value] $r1, $lr
	@DEBUG_VALUE: ndes_cyfun:l <- [DW_OP_LLVM_arg 0, DW_OP_consts 128, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_minus, DW_OP_consts 18446744073709551612, DW_OP_div, DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 31, DW_OP_plus, DW_OP_stack_value] $r1, $lr
	.loc	1 0 10                          @ ndes/ndes.c:0:10
	b	.LBB4_1
.Ltmp100:
.LBB4_3:                                @ %for.end
	@DEBUG_VALUE: ndes_cyfun:iout <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: ndes_cyfun:ir <- $r0
	mov	r0, #1
.Ltmp101:
	@DEBUG_VALUE: ndes_cyfun:ir <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	1 300 13 is_stmt 1              @ ndes/ndes.c:300:13
	sub	r2, r11, #40
.Ltmp102:
	.loc	1 305 11                        @ ndes/ndes.c:305:11
	str	r0, [sp, #4]
.Ltmp103:
	.loc	1 300 13                        @ ndes/ndes.c:300:13
	ldm	r2, {r0, r1, r2}
	.loc	1 300 8 is_stmt 0               @ ndes/ndes.c:300:8
	ldr	r3, [sp, #20]
	.loc	1 299 8 is_stmt 1               @ ndes/ndes.c:299:8
	ldr	r7, [sp, #24]
	.loc	1 298 8                         @ ndes/ndes.c:298:8
	ldr	r6, [sp, #28]
	.loc	1 300 8                         @ ndes/ndes.c:300:8
	eor	r0, r3, r0
	.loc	1 299 8                         @ ndes/ndes.c:299:8
	eor	r7, r7, r1
	.loc	1 298 8                         @ ndes/ndes.c:298:8
	eor	r1, r6, r2
	.loc	1 300 8                         @ ndes/ndes.c:300:8
	str	r0, [sp, #20]
	.loc	1 302 37                        @ ndes/ndes.c:302:37
	lsl	r0, r0, #8
	.loc	1 298 8                         @ ndes/ndes.c:298:8
	str	r1, [sp, #28]
	.loc	1 301 45                        @ ndes/ndes.c:301:45
	add	r1, r1, r7, lsl #16
.Ltmp104:
	@DEBUG_VALUE: ndes_cyfun:ietmp1 <- $r1
	.loc	1 299 8                         @ ndes/ndes.c:299:8
	str	r7, [sp, #24]
	.loc	1 302 44                        @ ndes/ndes.c:302:44
	add	r3, r0, r7, lsr #8
.Ltmp105:
	@DEBUG_VALUE: ndes_cyfun:ietmp2 <- $r3
	.loc	1 0 44 is_stmt 0                @ ndes/ndes.c:0:44
	add	r0, sp, #11
.Ltmp106:
	@DEBUG_VALUE: ndes_cyfun:m <- 5
	.loc	1 305 9 is_stmt 1               @ ndes/ndes.c:305:9
	add	r5, r0, #5
.Ltmp107:
.LBB4_4:                                @ %for.cond40
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: ndes_cyfun:ietmp2 <- $r3
	@DEBUG_VALUE: ndes_cyfun:ir <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: ndes_cyfun:iout <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: ndes_cyfun:m <- [DW_OP_LLVM_arg 0, DW_OP_consts 5, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 11, DW_OP_plus, DW_OP_minus, DW_OP_consts 5, DW_OP_plus, DW_OP_stack_value] $r5, $sp
	@DEBUG_VALUE: ndes_cyfun:ietmp1 <- $r1
	@DEBUG_VALUE: ndes_cyfun:ietmp2 <- $r3
	.loc	1 305 23 is_stmt 0              @ ndes/ndes.c:305:23
	ldr	r2, [sp, #4]
.Ltmp108:
	.loc	1 305 3                         @ ndes/ndes.c:305:3
	cmp	r2, #4
	bgt	.LBB4_6
.Ltmp109:
@ %bb.5:                                @ %for.body42
                                        @   in Loop: Header=BB4_4 Depth=1
	@DEBUG_VALUE: ndes_cyfun:m <- [DW_OP_LLVM_arg 0, DW_OP_consts 5, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 11, DW_OP_plus, DW_OP_minus, DW_OP_consts 5, DW_OP_plus, DW_OP_stack_value] $r5, $sp
	@DEBUG_VALUE: ndes_cyfun:ietmp2 <- $r3
	@DEBUG_VALUE: ndes_cyfun:ietmp1 <- $r1
	@DEBUG_VALUE: ndes_cyfun:ir <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: ndes_cyfun:iout <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 306 10 is_stmt 1              @ ndes/ndes.c:306:10
	ldr	r7, [sp, #4]
	.loc	1 306 16 is_stmt 0              @ ndes/ndes.c:306:16
	and	r2, r1, #63
	.loc	1 308 12 is_stmt 1              @ ndes/ndes.c:308:12
	lsr	r1, r1, #6
.Ltmp110:
	@DEBUG_VALUE: ndes_cyfun:ietmp2 <- [DW_OP_constu 6, DW_OP_shr, DW_OP_stack_value] $r3
	@DEBUG_VALUE: ndes_cyfun:ietmp1 <- [DW_OP_constu 6, DW_OP_shr, DW_OP_stack_value] $r1
	.loc	1 306 14                        @ ndes/ndes.c:306:14
	strb	r2, [r0, r7]
.Ltmp111:
	.loc	1 305 32                        @ ndes/ndes.c:305:32
	ldr	r2, [sp, #4]
	add	r2, r2, #1
	str	r2, [sp, #4]
.Ltmp112:
	.loc	1 307 16                        @ ndes/ndes.c:307:16
	and	r2, r3, #63
	.loc	1 309 12                        @ ndes/ndes.c:309:12
	lsr	r3, r3, #6
.Ltmp113:
	@DEBUG_VALUE: ndes_cyfun:ietmp2 <- $r3
	@DEBUG_VALUE: ndes_cyfun:m <- [DW_OP_LLVM_arg 0, DW_OP_consts 5, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 11, DW_OP_plus, DW_OP_minus, DW_OP_consts 6, DW_OP_plus, DW_OP_stack_value] $r5, $sp
	.loc	1 307 14                        @ ndes/ndes.c:307:14
	strb	r2, [r5], #1
.Ltmp114:
	.loc	1 0 14 is_stmt 0                @ ndes/ndes.c:0:14
	b	.LBB4_4
.Ltmp115:
.LBB4_6:                                @ %for.end52
	@DEBUG_VALUE: ndes_cyfun:m <- [DW_OP_LLVM_arg 0, DW_OP_consts 5, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 11, DW_OP_plus, DW_OP_minus, DW_OP_consts 5, DW_OP_plus, DW_OP_stack_value] $r5, $sp
	@DEBUG_VALUE: ndes_cyfun:ietmp2 <- $r3
	@DEBUG_VALUE: ndes_cyfun:ietmp1 <- $r1
	@DEBUG_VALUE: ndes_cyfun:ir <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: ndes_cyfun:iout <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: ndes_cyfun:itmp <- 0
	ldr	r9, .LCPI4_4
	mov	r1, #8
.Ltmp116:
	mov	r3, #0
.Ltmp117:
	mov	lr, #2
	add	r10, sp, #32
.Ltmp118:
	.loc	1 315 12 is_stmt 1              @ ndes/ndes.c:315:12
	str	r1, [sp]
	mov	r1, #1
.Ltmp119:
.LBB4_7:                                @ %for.cond53
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: ndes_cyfun:ir <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: ndes_cyfun:iout <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: ndes_cyfun:itmp <- $r3
	.loc	1 315 17 is_stmt 0              @ ndes/ndes.c:315:17
	ldr	r2, [sp]
.Ltmp120:
	.loc	1 315 3                         @ ndes/ndes.c:315:3
	cmp	r2, #1
	blt	.LBB4_9
.Ltmp121:
@ %bb.8:                                @ %for.body56
                                        @   in Loop: Header=BB4_7 Depth=1
	@DEBUG_VALUE: ndes_cyfun:itmp <- $r3
	@DEBUG_VALUE: ndes_cyfun:ir <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: ndes_cyfun:iout <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 316 14 is_stmt 1              @ ndes/ndes.c:316:14
	ldr	r2, [sp]
	.loc	1 316 9 is_stmt 0               @ ndes/ndes.c:316:9
	ldrb	r2, [r0, r2]
	.loc	1 316 7                         @ ndes/ndes.c:316:7
	str	r2, [sp, #4]
	.loc	1 317 16 is_stmt 1              @ ndes/ndes.c:317:16
	ldr	r2, [sp, #4]
	.loc	1 317 39 is_stmt 0              @ ndes/ndes.c:317:39
	ldr	r6, [sp, #4]
	.loc	1 318 16 is_stmt 1              @ ndes/ndes.c:318:16
	ldr	r7, [sp, #4]
	.loc	1 318 37 is_stmt 0              @ ndes/ndes.c:318:37
	ldr	r4, [sp, #4]
	.loc	1 319 18 is_stmt 1              @ ndes/ndes.c:319:18
	ldr	r5, [sp, #4]
	.loc	1 318 26                        @ ndes/ndes.c:318:26
	and	r7, r7, #2
	.loc	1 318 39 is_stmt 0              @ ndes/ndes.c:318:39
	and	r4, r4, #4
	.loc	1 319 28 is_stmt 1              @ ndes/ndes.c:319:28
	and	r5, lr, r5, lsr #2
	.loc	1 317 26                        @ ndes/ndes.c:317:26
	and	r2, r2, #1
	.loc	1 318 33                        @ ndes/ndes.c:318:33
	orr	r4, r4, r7, lsl #2
	.loc	1 319 12                        @ ndes/ndes.c:319:12
	orr	r4, r4, r5
	.loc	1 319 41 is_stmt 0              @ ndes/ndes.c:319:41
	ldr	r5, [sp, #4]
	.loc	1 319 52                        @ ndes/ndes.c:319:52
	and	r5, r1, r5, lsr #4
	.loc	1 319 35                        @ ndes/ndes.c:319:35
	orr	r4, r4, r5
.Ltmp122:
	@DEBUG_VALUE: ndes_cyfun:icol <- $r4
	.loc	1 317 50 is_stmt 1              @ ndes/ndes.c:317:50
	and	r5, r1, r6, lsr #5
	.loc	1 320 11                        @ ndes/ndes.c:320:11
	add	r4, r4, r4, lsl #3
.Ltmp123:
	.loc	1 317 33                        @ ndes/ndes.c:317:33
	orr	r2, r5, r2, lsl #1
.Ltmp124:
	@DEBUG_VALUE: ndes_cyfun:irow <- $r2
	.loc	1 320 11                        @ ndes/ndes.c:320:11
	add	r4, r9, r4, lsl #4
	add	r2, r2, r2, lsl #3
.Ltmp125:
	add	r2, r4, r2, lsl #2
	.loc	1 320 31 is_stmt 0              @ ndes/ndes.c:320:31
	ldr	r4, [sp]
	.loc	1 320 11                        @ ndes/ndes.c:320:11
	ldr	r2, [r2, r4, lsl #2]
.Ltmp126:
	@DEBUG_VALUE: ndes_cyfun:iss <- $r2
	.loc	1 321 28 is_stmt 1              @ ndes/ndes.c:321:28
	ldrb	r2, [r10, r2]
.Ltmp127:
	.loc	1 315 28                        @ ndes/ndes.c:315:28
	ldr	r4, [sp]
	sub	r4, r4, #1
.Ltmp128:
	.loc	1 321 26                        @ ndes/ndes.c:321:26
	orr	r3, r2, r3, lsl #4
.Ltmp129:
	@DEBUG_VALUE: ndes_cyfun:itmp <- $r3
	.loc	1 315 28                        @ ndes/ndes.c:315:28
	str	r4, [sp]
.Ltmp130:
	@DEBUG_VALUE: ndes_cyfun:itmp <- [DW_OP_LLVM_arg 0, DW_OP_constu 4, DW_OP_shl, DW_OP_LLVM_arg 1, DW_OP_or, DW_OP_stack_value] $r3, $r2
	.loc	1 0 28 is_stmt 0                @ ndes/ndes.c:0:28
	b	.LBB4_7
.Ltmp131:
.LBB4_9:                                @ %for.end83
	@DEBUG_VALUE: ndes_cyfun:itmp <- $r3
	@DEBUG_VALUE: ndes_cyfun:ir <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: ndes_cyfun:iout <- [DW_OP_plus_uconst 8] [$r11+0]
	mov	r0, #0
	.loc	1 324 9 is_stmt 1               @ ndes/ndes.c:324:9
	str	r0, [r12]
	mov	r0, #32
.Ltmp132:
.LBB4_10:                               @ %for.cond84
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: ndes_cyfun:itmp <- $r3
	@DEBUG_VALUE: ndes_cyfun:ir <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: ndes_cyfun:iout <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 0 0 is_stmt 0                 @ ndes/ndes.c:0:0
	str	r0, [sp, #4]
.Ltmp133:
	.loc	1 328 17 is_stmt 1              @ ndes/ndes.c:328:17
	ldr	r0, [sp, #4]
.Ltmp134:
	.loc	1 328 3 is_stmt 0               @ ndes/ndes.c:328:3
	cmp	r0, #1
	blt	.LBB4_12
.Ltmp135:
@ %bb.11:                               @ %for.body87
                                        @   in Loop: Header=BB4_10 Depth=1
	@DEBUG_VALUE: ndes_cyfun:itmp <- $r3
	@DEBUG_VALUE: ndes_cyfun:ir <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: ndes_cyfun:iout <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 329 15 is_stmt 1              @ ndes/ndes.c:329:15
	ldr	r0, [r12]
	.loc	1 329 21 is_stmt 0              @ ndes/ndes.c:329:21
	lsl	r0, r0, #1
	.loc	1 329 11                        @ ndes/ndes.c:329:11
	str	r0, [r12]
	.loc	1 328 26 is_stmt 1              @ ndes/ndes.c:328:26
	ldr	r0, [sp, #4]
	sub	r0, r0, #1
	b	.LBB4_10
.Ltmp136:
.LBB4_12:                               @ %for.end91
	@DEBUG_VALUE: ndes_cyfun:itmp <- $r3
	@DEBUG_VALUE: ndes_cyfun:ir <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: ndes_cyfun:iout <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 330 22                        @ ndes/ndes.c:330:22
	ldr	r0, [sp, #4]
	.loc	1 330 17 is_stmt 0              @ ndes/ndes.c:330:17
	ldr	r1, .LCPI4_2
	ldr	r0, [r1, r0, lsl #2]
	.loc	1 330 9                         @ ndes/ndes.c:330:9
	ldr	r1, [r12]
	.loc	1 330 14                        @ ndes/ndes.c:330:14
	ldr	r0, [r8, r0, lsl #2]
	.loc	1 330 9                         @ ndes/ndes.c:330:9
	tst	r0, r3
	orrne	r1, r1, #1
	str	r1, [r12]
	.loc	1 331 1 is_stmt 1               @ ndes/ndes.c:331:1
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	bx	lr
.Ltmp137:
	.p2align	2
@ %bb.13:
	.loc	1 0 1 is_stmt 0                 @ ndes/ndes.c:0:1
.LCPI4_0:
	.long	.L__const.ndes_cyfun.ibin
.LCPI4_1:
	.long	ndes_cyfun.iet
.LCPI4_2:
	.long	ndes_cyfun.ipp
.LCPI4_3:
	.long	ndes_bit
.LCPI4_4:
	.long	ndes_cyfun.is
.Lfunc_end4:
	.size	ndes_cyfun, .Lfunc_end4-ndes_cyfun
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ndes_return                     @ -- Begin function ndes_return
	.p2align	2
	.type	ndes_return,%function
	.code	32                              @ @ndes_return
ndes_return:
.Lfunc_begin5:
	.loc	1 373 0 is_stmt 1               @ ndes/ndes.c:373:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	1 374 21 prologue_end           @ ndes/ndes.c:374:21
	ldr	r0, .LCPI5_0
	.loc	1 374 34 is_stmt 0              @ ndes/ndes.c:374:34
	ldr	r1, [r0]
	.loc	1 374 21                        @ ndes/ndes.c:374:21
	ldr	r0, [r0, #4]
	.loc	1 374 23                        @ ndes/ndes.c:374:23
	add	r0, r0, r1
	mov	r1, #2048
	orr	r1, r1, #8388608
	.loc	1 374 54                        @ ndes/ndes.c:374:54
	subs	r0, r0, r1
	movne	r0, #1
	.loc	1 374 3                         @ ndes/ndes.c:374:3
	bx	lr
.Ltmp138:
	.p2align	2
@ %bb.1:
	.loc	1 0 3                           @ ndes/ndes.c:0:3
.LCPI5_0:
	.long	ndes_icd
.Lfunc_end5:
	.size	ndes_return, .Lfunc_end5-ndes_return
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ndes_main                       @ -- Begin function ndes_main
	.p2align	2
	.type	ndes_main,%function
	.code	32                              @ @ndes_main
ndes_main:
.Lfunc_begin6:
	.loc	1 378 0 is_stmt 1               @ ndes/ndes.c:378:0
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
.Ltmp139:
	.loc	1 379 47 prologue_end           @ ndes/ndes.c:379:47
	ldr	r12, .LCPI6_2
	.loc	1 379 3 is_stmt 0               @ ndes/ndes.c:379:3
	ldr	r0, .LCPI6_0
	ldr	r1, .LCPI6_1
	ldr	lr, .LCPI6_3
	.loc	1 379 47                        @ ndes/ndes.c:379:47
	ldr	r12, [r12]
	.loc	1 379 3                         @ ndes/ndes.c:379:3
	ldm	r0, {r2, r3}
	ldm	r1, {r0, r1}
	stmib	sp, {r12, lr}
	ldr	r12, .LCPI6_4
	str	r12, [sp]
	bl	ndes_des
	.loc	1 380 1 is_stmt 1               @ ndes/ndes.c:380:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp140:
	.p2align	2
@ %bb.1:
	.loc	1 0 1 is_stmt 0                 @ ndes/ndes.c:0:1
.LCPI6_0:
	.long	ndes_key
.LCPI6_1:
	.long	ndes_inp
.LCPI6_2:
	.long	ndes_isw
.LCPI6_3:
	.long	ndes_out
.LCPI6_4:
	.long	ndes_newkey
.Lfunc_end6:
	.size	ndes_main, .Lfunc_end6-ndes_main
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
	.loc	1 385 0 is_stmt 1               @ ndes/ndes.c:385:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp141:
	.loc	1 386 3 prologue_end            @ ndes/ndes.c:386:3
	bl	ndes_init
	.loc	1 387 3                         @ ndes/ndes.c:387:3
	bl	ndes_main
	.loc	1 389 12                        @ ndes/ndes.c:389:12
	bl	ndes_return
	.loc	1 389 3 is_stmt 0               @ ndes/ndes.c:389:3
	pop	{r11, lr}
	bx	lr
.Ltmp142:
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
.Ltmp143:
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
.Ltmp144:
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
.Ltmp145:
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
.Ltmp146:
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
.Ltmp147:
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
.Ltmp148:
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
.Ltmp149:
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
.Ltmp150:
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
.Ltmp151:
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
.Ltmp152:
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
.Ltmp153:
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
.Ltmp154:
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
.Ltmp155:
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
.Ltmp156:
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
.Ltmp157:
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
.Ltmp158:
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
.Ltmp159:
	.loc	10 48 9 prologue_end            @ ../cmpdi2.c:48:9
	bl	__cmpdi2
	.loc	10 48 24 is_stmt 0              @ ../cmpdi2.c:48:24
	sub	r0, r0, #1
	.loc	10 48 2                         @ ../cmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp160:
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
.Ltmp161:
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
.Ltmp162:
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
.Ltmp163:
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
.Ltmp164:
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
.Ltmp165:
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
.Ltmp166:
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
.Ltmp167:
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
.Ltmp168:
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
.Ltmp169:
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
.Ltmp170:
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
.Ltmp171:
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
.Ltmp172:
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
.Ltmp173:
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
.Ltmp174:
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
.Ltmp175:
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
.Ltmp176:
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
.Ltmp177:
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
.Ltmp178:
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
.Ltmp179:
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
.Ltmp180:
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
.Ltmp181:
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
.Ltmp182:
	.loc	22 22 16 prologue_end           @ ../modsi3.c:22:16
	bl	__divsi3
	.loc	22 22 31 is_stmt 0              @ ../modsi3.c:22:31
	mul	r1, r0, r4
	.loc	22 22 14                        @ ../modsi3.c:22:14
	sub	r0, r5, r1
	.loc	22 22 5                         @ ../modsi3.c:22:5
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp183:
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
.Ltmp184:
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
.Ltmp185:
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
.Ltmp186:
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
.Ltmp187:
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
.Ltmp188:
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
.Ltmp189:
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
.Ltmp190:
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
.Ltmp191:
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
.Ltmp192:
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
.Ltmp193:
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
.Ltmp194:
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
.Ltmp195:
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
.Ltmp196:
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
.Ltmp197:
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
.Ltmp198:
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
.Ltmp199:
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
.Ltmp200:
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
.Ltmp201:
	.loc	31 48 9 prologue_end            @ ../ucmpdi2.c:48:9
	bl	__ucmpdi2
	.loc	31 48 25 is_stmt 0              @ ../ucmpdi2.c:48:25
	sub	r0, r0, #1
	.loc	31 48 2                         @ ../ucmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp202:
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
.Ltmp203:
	.loc	32 22 12 prologue_end           @ ../udivdi3.c:22:12
	str	r12, [sp]
	bl	__udivmoddi4
	.loc	32 22 5 is_stmt 0               @ ../udivdi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp204:
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
.Ltmp205:
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
.Ltmp206:
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
.Ltmp207:
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
.Ltmp208:
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
.Ltmp209:
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
.Ltmp210:
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
.Ltmp211:
	.loc	36 22 16 prologue_end           @ ../umodsi3.c:22:16
	bl	__udivsi3
	.loc	36 22 32 is_stmt 0              @ ../umodsi3.c:22:32
	mul	r1, r0, r4
	.loc	36 22 14                        @ ../umodsi3.c:22:14
	sub	r0, r5, r1
	.loc	36 22 5                         @ ../umodsi3.c:22:5
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp212:
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
.Ltmp213:
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
.Ltmp214:
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
.Ltmp215:
.Lfunc_end47:
	.size	memset, .Lfunc_end47-memset
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.type	ndes_value,%object              @ @ndes_value
	.data
	.globl	ndes_value
	.p2align	2
ndes_value:
	.long	1                               @ 0x1
	.size	ndes_value, 4

	.type	ndes_init.ndes_ipc1_tmp,%object @ @ndes_init.ndes_ipc1_tmp
ndes_init.ndes_ipc1_tmp:
	.ascii	"\00091)!\031\021\t\001:2*\"\032\022\n\002;3+#\033\023\013\003<4,$?7/'\037\027\017\007>6.&\036\026\016\006=5-%\035\025\r\005\034\024\f\004"
	.size	ndes_init.ndes_ipc1_tmp, 57

	.type	ndes_init.ndes_ipc2_tmp,%object @ @ndes_init.ndes_ipc2_tmp
ndes_init.ndes_ipc2_tmp:
	.ascii	"\000\016\021\013\030\001\005\003\034\017\006\025\n\027\023\f\004\032\b\020\007\033\024\r\002)4\037%/7\036(3-!0,1'8\"5.*2$\035 "
	.size	ndes_init.ndes_ipc2_tmp, 49

	.type	ndes_ipc1,%object               @ @ndes_ipc1
	.local	ndes_ipc1
	.comm	ndes_ipc1,57,1
	.type	ndes_ipc2,%object               @ @ndes_ipc2
	.local	ndes_ipc2
	.comm	ndes_ipc2,49,1
	.type	ndes_inp,%object                @ @ndes_inp
	.bss
	.globl	ndes_inp
	.p2align	2
ndes_inp:
	.zero	8
	.size	ndes_inp, 8

	.type	ndes_key,%object                @ @ndes_key
	.globl	ndes_key
	.p2align	2
ndes_key:
	.zero	8
	.size	ndes_key, 8

	.type	ndes_newkey,%object             @ @ndes_newkey
	.globl	ndes_newkey
	.p2align	2
ndes_newkey:
	.long	0                               @ 0x0
	.size	ndes_newkey, 4

	.type	ndes_isw,%object                @ @ndes_isw
	.globl	ndes_isw
	.p2align	2
ndes_isw:
	.long	0                               @ 0x0
	.size	ndes_isw, 4

	.type	ndes_des.ip,%object             @ @ndes_des.ip
	.data
ndes_des.ip:
	.ascii	"\000:2*\"\032\022\n\002<4,$\034\024\f\004>6.&\036\026\016\006@80( \030\020\b91)!\031\021\t\001;3+#\033\023\013\003=5-%\035\025\r\005?7/'\037\027\017\007"
	.size	ndes_des.ip, 65

	.type	ndes_des.ipm,%object            @ @ndes_des.ipm
ndes_des.ipm:
	.ascii	"\000(\b0\0208\030@ '\007/\0177\027?\037&\006.\0166\026>\036%\005-\r5\025=\035$\004,\f4\024<\034#\003+\0133\023;\033\"\002*\n2\022:\032!\001)\t1\0219\031"
	.size	ndes_des.ipm, 65

	.type	ndes_des.kns,%object            @ @ndes_des.kns
	.local	ndes_des.kns
	.comm	ndes_des.kns,204,4
	.type	ndes_des.initflag,%object       @ @ndes_des.initflag
	.p2align	2
ndes_des.initflag:
	.long	1                               @ 0x1
	.size	ndes_des.initflag, 4

	.type	ndes_bit,%object                @ @ndes_bit
	.bss
	.globl	ndes_bit
	.p2align	2
ndes_bit:
	.zero	132
	.size	ndes_bit, 132

	.type	ndes_icd,%object                @ @ndes_icd
	.local	ndes_icd
	.comm	ndes_icd,8,4
	.type	ndes_cyfun.iet,%object          @ @ndes_cyfun.iet
	.data
	.p2align	2
ndes_cyfun.iet:
	.long	0                               @ 0x0
	.long	32                              @ 0x20
	.long	1                               @ 0x1
	.long	2                               @ 0x2
	.long	3                               @ 0x3
	.long	4                               @ 0x4
	.long	5                               @ 0x5
	.long	4                               @ 0x4
	.long	5                               @ 0x5
	.long	6                               @ 0x6
	.long	7                               @ 0x7
	.long	8                               @ 0x8
	.long	9                               @ 0x9
	.long	8                               @ 0x8
	.long	9                               @ 0x9
	.long	10                              @ 0xa
	.long	11                              @ 0xb
	.long	12                              @ 0xc
	.long	13                              @ 0xd
	.long	12                              @ 0xc
	.long	13                              @ 0xd
	.long	14                              @ 0xe
	.long	15                              @ 0xf
	.long	16                              @ 0x10
	.long	17                              @ 0x11
	.long	16                              @ 0x10
	.long	17                              @ 0x11
	.long	18                              @ 0x12
	.long	19                              @ 0x13
	.long	20                              @ 0x14
	.long	21                              @ 0x15
	.long	20                              @ 0x14
	.long	21                              @ 0x15
	.long	22                              @ 0x16
	.long	23                              @ 0x17
	.long	24                              @ 0x18
	.long	25                              @ 0x19
	.long	24                              @ 0x18
	.long	25                              @ 0x19
	.long	26                              @ 0x1a
	.long	27                              @ 0x1b
	.long	28                              @ 0x1c
	.long	29                              @ 0x1d
	.long	28                              @ 0x1c
	.long	29                              @ 0x1d
	.long	30                              @ 0x1e
	.long	31                              @ 0x1f
	.long	32                              @ 0x20
	.long	1                               @ 0x1
	.size	ndes_cyfun.iet, 196

	.type	ndes_cyfun.ipp,%object          @ @ndes_cyfun.ipp
	.p2align	2
ndes_cyfun.ipp:
	.long	0                               @ 0x0
	.long	16                              @ 0x10
	.long	7                               @ 0x7
	.long	20                              @ 0x14
	.long	21                              @ 0x15
	.long	29                              @ 0x1d
	.long	12                              @ 0xc
	.long	28                              @ 0x1c
	.long	17                              @ 0x11
	.long	1                               @ 0x1
	.long	15                              @ 0xf
	.long	23                              @ 0x17
	.long	26                              @ 0x1a
	.long	5                               @ 0x5
	.long	18                              @ 0x12
	.long	31                              @ 0x1f
	.long	10                              @ 0xa
	.long	2                               @ 0x2
	.long	8                               @ 0x8
	.long	24                              @ 0x18
	.long	14                              @ 0xe
	.long	32                              @ 0x20
	.long	27                              @ 0x1b
	.long	3                               @ 0x3
	.long	9                               @ 0x9
	.long	19                              @ 0x13
	.long	13                              @ 0xd
	.long	30                              @ 0x1e
	.long	6                               @ 0x6
	.long	22                              @ 0x16
	.long	11                              @ 0xb
	.long	4                               @ 0x4
	.long	25                              @ 0x19
	.size	ndes_cyfun.ipp, 132

	.type	ndes_cyfun.is,%object           @ @ndes_cyfun.is
	.p2align	2
ndes_cyfun.is:
	.long	0                               @ 0x0
	.long	14                              @ 0xe
	.long	15                              @ 0xf
	.long	10                              @ 0xa
	.long	7                               @ 0x7
	.long	2                               @ 0x2
	.long	12                              @ 0xc
	.long	4                               @ 0x4
	.long	13                              @ 0xd
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	3                               @ 0x3
	.long	13                              @ 0xd
	.long	13                              @ 0xd
	.long	14                              @ 0xe
	.long	10                              @ 0xa
	.long	13                              @ 0xd
	.long	1                               @ 0x1
	.long	0                               @ 0x0
	.long	4                               @ 0x4
	.long	0                               @ 0x0
	.long	13                              @ 0xd
	.long	10                              @ 0xa
	.long	4                               @ 0x4
	.long	9                               @ 0x9
	.long	1                               @ 0x1
	.long	7                               @ 0x7
	.long	0                               @ 0x0
	.long	15                              @ 0xf
	.long	13                              @ 0xd
	.long	1                               @ 0x1
	.long	3                               @ 0x3
	.long	11                              @ 0xb
	.long	4                               @ 0x4
	.long	6                               @ 0x6
	.long	2                               @ 0x2
	.long	0                               @ 0x0
	.long	4                               @ 0x4
	.long	1                               @ 0x1
	.long	0                               @ 0x0
	.long	13                              @ 0xd
	.long	12                              @ 0xc
	.long	1                               @ 0x1
	.long	11                              @ 0xb
	.long	2                               @ 0x2
	.long	0                               @ 0x0
	.long	15                              @ 0xf
	.long	13                              @ 0xd
	.long	7                               @ 0x7
	.long	8                               @ 0x8
	.long	11                              @ 0xb
	.long	15                              @ 0xf
	.long	0                               @ 0x0
	.long	15                              @ 0xf
	.long	0                               @ 0x0
	.long	1                               @ 0x1
	.long	14                              @ 0xe
	.long	6                               @ 0x6
	.long	6                               @ 0x6
	.long	2                               @ 0x2
	.long	14                              @ 0xe
	.long	4                               @ 0x4
	.long	11                              @ 0xb
	.long	0                               @ 0x0
	.long	12                              @ 0xc
	.long	8                               @ 0x8
	.long	10                              @ 0xa
	.long	15                              @ 0xf
	.long	8                               @ 0x8
	.long	3                               @ 0x3
	.long	11                              @ 0xb
	.long	1                               @ 0x1
	.long	0                               @ 0x0
	.long	13                              @ 0xd
	.long	8                               @ 0x8
	.long	9                               @ 0x9
	.long	14                              @ 0xe
	.long	4                               @ 0x4
	.long	10                              @ 0xa
	.long	2                               @ 0x2
	.long	8                               @ 0x8
	.long	0                               @ 0x0
	.long	7                               @ 0x7
	.long	4                               @ 0x4
	.long	0                               @ 0x0
	.long	11                              @ 0xb
	.long	2                               @ 0x2
	.long	4                               @ 0x4
	.long	11                              @ 0xb
	.long	13                              @ 0xd
	.long	0                               @ 0x0
	.long	14                              @ 0xe
	.long	7                               @ 0x7
	.long	4                               @ 0x4
	.long	9                               @ 0x9
	.long	1                               @ 0x1
	.long	15                              @ 0xf
	.long	11                              @ 0xb
	.long	4                               @ 0x4
	.long	0                               @ 0x0
	.long	8                               @ 0x8
	.long	10                              @ 0xa
	.long	13                              @ 0xd
	.long	0                               @ 0x0
	.long	12                              @ 0xc
	.long	2                               @ 0x2
	.long	13                              @ 0xd
	.long	14                              @ 0xe
	.long	0                               @ 0x0
	.long	1                               @ 0x1
	.long	14                              @ 0xe
	.long	14                              @ 0xe
	.long	3                               @ 0x3
	.long	1                               @ 0x1
	.long	15                              @ 0xf
	.long	14                              @ 0xe
	.long	4                               @ 0x4
	.long	0                               @ 0x0
	.long	4                               @ 0x4
	.long	7                               @ 0x7
	.long	9                               @ 0x9
	.long	5                               @ 0x5
	.long	12                              @ 0xc
	.long	2                               @ 0x2
	.long	7                               @ 0x7
	.long	8                               @ 0x8
	.long	0                               @ 0x0
	.long	8                               @ 0x8
	.long	11                              @ 0xb
	.long	9                               @ 0x9
	.long	0                               @ 0x0
	.long	11                              @ 0xb
	.long	5                               @ 0x5
	.long	13                              @ 0xd
	.long	1                               @ 0x1
	.long	0                               @ 0x0
	.long	2                               @ 0x2
	.long	1                               @ 0x1
	.long	0                               @ 0x0
	.long	6                               @ 0x6
	.long	7                               @ 0x7
	.long	12                              @ 0xc
	.long	8                               @ 0x8
	.long	7                               @ 0x7
	.long	0                               @ 0x0
	.long	2                               @ 0x2
	.long	6                               @ 0x6
	.long	6                               @ 0x6
	.long	0                               @ 0x0
	.long	7                               @ 0x7
	.long	9                               @ 0x9
	.long	15                              @ 0xf
	.long	6                               @ 0x6
	.long	0                               @ 0x0
	.long	14                              @ 0xe
	.long	15                              @ 0xf
	.long	3                               @ 0x3
	.long	6                               @ 0x6
	.long	4                               @ 0x4
	.long	7                               @ 0x7
	.long	4                               @ 0x4
	.long	10                              @ 0xa
	.long	0                               @ 0x0
	.long	13                              @ 0xd
	.long	10                              @ 0xa
	.long	8                               @ 0x8
	.long	12                              @ 0xc
	.long	10                              @ 0xa
	.long	2                               @ 0x2
	.long	12                              @ 0xc
	.long	9                               @ 0x9
	.long	0                               @ 0x0
	.long	4                               @ 0x4
	.long	3                               @ 0x3
	.long	6                               @ 0x6
	.long	10                              @ 0xa
	.long	1                               @ 0x1
	.long	9                               @ 0x9
	.long	1                               @ 0x1
	.long	4                               @ 0x4
	.long	0                               @ 0x0
	.long	15                              @ 0xf
	.long	11                              @ 0xb
	.long	3                               @ 0x3
	.long	6                               @ 0x6
	.long	10                              @ 0xa
	.long	2                               @ 0x2
	.long	0                               @ 0x0
	.long	15                              @ 0xf
	.long	0                               @ 0x0
	.long	2                               @ 0x2
	.long	2                               @ 0x2
	.long	4                               @ 0x4
	.long	15                              @ 0xf
	.long	7                               @ 0x7
	.long	12                              @ 0xc
	.long	9                               @ 0x9
	.long	3                               @ 0x3
	.long	0                               @ 0x0
	.long	6                               @ 0x6
	.long	4                               @ 0x4
	.long	15                              @ 0xf
	.long	11                              @ 0xb
	.long	13                              @ 0xd
	.long	8                               @ 0x8
	.long	3                               @ 0x3
	.long	12                              @ 0xc
	.long	0                               @ 0x0
	.long	9                               @ 0x9
	.long	15                              @ 0xf
	.long	9                               @ 0x9
	.long	1                               @ 0x1
	.long	14                              @ 0xe
	.long	5                               @ 0x5
	.long	4                               @ 0x4
	.long	10                              @ 0xa
	.long	0                               @ 0x0
	.long	11                              @ 0xb
	.long	3                               @ 0x3
	.long	15                              @ 0xf
	.long	9                               @ 0x9
	.long	11                              @ 0xb
	.long	6                               @ 0x6
	.long	8                               @ 0x8
	.long	11                              @ 0xb
	.long	0                               @ 0x0
	.long	13                              @ 0xd
	.long	8                               @ 0x8
	.long	6                               @ 0x6
	.long	0                               @ 0x0
	.long	13                              @ 0xd
	.long	9                               @ 0x9
	.long	1                               @ 0x1
	.long	7                               @ 0x7
	.long	0                               @ 0x0
	.long	2                               @ 0x2
	.long	13                              @ 0xd
	.long	3                               @ 0x3
	.long	7                               @ 0x7
	.long	7                               @ 0x7
	.long	12                              @ 0xc
	.long	7                               @ 0x7
	.long	14                              @ 0xe
	.long	0                               @ 0x0
	.long	1                               @ 0x1
	.long	4                               @ 0x4
	.long	8                               @ 0x8
	.long	13                              @ 0xd
	.long	2                               @ 0x2
	.long	15                              @ 0xf
	.long	10                              @ 0xa
	.long	8                               @ 0x8
	.long	0                               @ 0x0
	.long	8                               @ 0x8
	.long	4                               @ 0x4
	.long	5                               @ 0x5
	.long	10                              @ 0xa
	.long	6                               @ 0x6
	.long	8                               @ 0x8
	.long	13                              @ 0xd
	.long	1                               @ 0x1
	.long	0                               @ 0x0
	.long	1                               @ 0x1
	.long	14                              @ 0xe
	.long	10                              @ 0xa
	.long	3                               @ 0x3
	.long	1                               @ 0x1
	.long	5                               @ 0x5
	.long	10                              @ 0xa
	.long	4                               @ 0x4
	.long	0                               @ 0x0
	.long	11                              @ 0xb
	.long	1                               @ 0x1
	.long	0                               @ 0x0
	.long	13                              @ 0xd
	.long	8                               @ 0x8
	.long	3                               @ 0x3
	.long	14                              @ 0xe
	.long	2                               @ 0x2
	.long	0                               @ 0x0
	.long	7                               @ 0x7
	.long	2                               @ 0x2
	.long	7                               @ 0x7
	.long	8                               @ 0x8
	.long	13                              @ 0xd
	.long	10                              @ 0xa
	.long	7                               @ 0x7
	.long	13                              @ 0xd
	.long	0                               @ 0x0
	.long	3                               @ 0x3
	.long	9                               @ 0x9
	.long	1                               @ 0x1
	.long	1                               @ 0x1
	.long	8                               @ 0x8
	.long	0                               @ 0x0
	.long	3                               @ 0x3
	.long	10                              @ 0xa
	.long	0                               @ 0x0
	.long	10                              @ 0xa
	.long	12                              @ 0xc
	.long	2                               @ 0x2
	.long	4                               @ 0x4
	.long	5                               @ 0x5
	.long	6                               @ 0x6
	.long	14                              @ 0xe
	.long	12                              @ 0xc
	.long	0                               @ 0x0
	.long	15                              @ 0xf
	.long	5                               @ 0x5
	.long	11                              @ 0xb
	.long	15                              @ 0xf
	.long	15                              @ 0xf
	.long	7                               @ 0x7
	.long	10                              @ 0xa
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	5                               @ 0x5
	.long	11                              @ 0xb
	.long	4                               @ 0x4
	.long	9                               @ 0x9
	.long	6                               @ 0x6
	.long	11                              @ 0xb
	.long	9                               @ 0x9
	.long	15                              @ 0xf
	.long	0                               @ 0x0
	.long	10                              @ 0xa
	.long	7                               @ 0x7
	.long	13                              @ 0xd
	.long	2                               @ 0x2
	.long	5                               @ 0x5
	.long	13                              @ 0xd
	.long	12                              @ 0xc
	.long	9                               @ 0x9
	.long	0                               @ 0x0
	.long	6                               @ 0x6
	.long	0                               @ 0x0
	.long	8                               @ 0x8
	.long	7                               @ 0x7
	.long	0                               @ 0x0
	.long	1                               @ 0x1
	.long	3                               @ 0x3
	.long	5                               @ 0x5
	.long	0                               @ 0x0
	.long	12                              @ 0xc
	.long	8                               @ 0x8
	.long	1                               @ 0x1
	.long	1                               @ 0x1
	.long	9                               @ 0x9
	.long	0                               @ 0x0
	.long	15                              @ 0xf
	.long	6                               @ 0x6
	.long	0                               @ 0x0
	.long	11                              @ 0xb
	.long	6                               @ 0x6
	.long	15                              @ 0xf
	.long	4                               @ 0x4
	.long	15                              @ 0xf
	.long	14                              @ 0xe
	.long	5                               @ 0x5
	.long	12                              @ 0xc
	.long	0                               @ 0x0
	.long	6                               @ 0x6
	.long	2                               @ 0x2
	.long	12                              @ 0xc
	.long	8                               @ 0x8
	.long	3                               @ 0x3
	.long	3                               @ 0x3
	.long	9                               @ 0x9
	.long	3                               @ 0x3
	.long	0                               @ 0x0
	.long	12                              @ 0xc
	.long	1                               @ 0x1
	.long	5                               @ 0x5
	.long	2                               @ 0x2
	.long	15                              @ 0xf
	.long	13                              @ 0xd
	.long	5                               @ 0x5
	.long	6                               @ 0x6
	.long	0                               @ 0x0
	.long	9                               @ 0x9
	.long	12                              @ 0xc
	.long	2                               @ 0x2
	.long	3                               @ 0x3
	.long	12                              @ 0xc
	.long	4                               @ 0x4
	.long	6                               @ 0x6
	.long	10                              @ 0xa
	.long	0                               @ 0x0
	.long	3                               @ 0x3
	.long	7                               @ 0x7
	.long	14                              @ 0xe
	.long	5                               @ 0x5
	.long	0                               @ 0x0
	.long	1                               @ 0x1
	.long	0                               @ 0x0
	.long	9                               @ 0x9
	.long	0                               @ 0x0
	.long	12                              @ 0xc
	.long	13                              @ 0xd
	.long	7                               @ 0x7
	.long	5                               @ 0x5
	.long	15                              @ 0xf
	.long	4                               @ 0x4
	.long	7                               @ 0x7
	.long	14                              @ 0xe
	.long	0                               @ 0x0
	.long	11                              @ 0xb
	.long	10                              @ 0xa
	.long	14                              @ 0xe
	.long	12                              @ 0xc
	.long	10                              @ 0xa
	.long	14                              @ 0xe
	.long	12                              @ 0xc
	.long	11                              @ 0xb
	.long	0                               @ 0x0
	.long	7                               @ 0x7
	.long	6                               @ 0x6
	.long	12                              @ 0xc
	.long	14                              @ 0xe
	.long	5                               @ 0x5
	.long	10                              @ 0xa
	.long	8                               @ 0x8
	.long	13                              @ 0xd
	.long	0                               @ 0x0
	.long	14                              @ 0xe
	.long	12                              @ 0xc
	.long	3                               @ 0x3
	.long	11                              @ 0xb
	.long	9                               @ 0x9
	.long	7                               @ 0x7
	.long	15                              @ 0xf
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	5                               @ 0x5
	.long	12                              @ 0xc
	.long	11                              @ 0xb
	.long	11                              @ 0xb
	.long	13                              @ 0xd
	.long	14                              @ 0xe
	.long	5                               @ 0x5
	.long	5                               @ 0x5
	.long	0                               @ 0x0
	.long	9                               @ 0x9
	.long	6                               @ 0x6
	.long	12                              @ 0xc
	.long	1                               @ 0x1
	.long	3                               @ 0x3
	.long	0                               @ 0x0
	.long	2                               @ 0x2
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	3                               @ 0x3
	.long	9                               @ 0x9
	.long	5                               @ 0x5
	.long	5                               @ 0x5
	.long	6                               @ 0x6
	.long	1                               @ 0x1
	.long	0                               @ 0x0
	.long	15                              @ 0xf
	.long	0                               @ 0x0
	.long	10                              @ 0xa
	.long	0                               @ 0x0
	.long	11                              @ 0xb
	.long	12                              @ 0xc
	.long	10                              @ 0xa
	.long	6                               @ 0x6
	.long	14                              @ 0xe
	.long	3                               @ 0x3
	.long	0                               @ 0x0
	.long	9                               @ 0x9
	.long	0                               @ 0x0
	.long	4                               @ 0x4
	.long	12                              @ 0xc
	.long	0                               @ 0x0
	.long	7                               @ 0x7
	.long	10                              @ 0xa
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	5                               @ 0x5
	.long	9                               @ 0x9
	.long	11                              @ 0xb
	.long	10                              @ 0xa
	.long	9                               @ 0x9
	.long	11                              @ 0xb
	.long	15                              @ 0xf
	.long	14                              @ 0xe
	.long	0                               @ 0x0
	.long	10                              @ 0xa
	.long	3                               @ 0x3
	.long	10                              @ 0xa
	.long	2                               @ 0x2
	.long	3                               @ 0x3
	.long	13                              @ 0xd
	.long	5                               @ 0x5
	.long	3                               @ 0x3
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	5                               @ 0x5
	.long	5                               @ 0x5
	.long	7                               @ 0x7
	.long	4                               @ 0x4
	.long	0                               @ 0x0
	.long	2                               @ 0x2
	.long	5                               @ 0x5
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	5                               @ 0x5
	.long	2                               @ 0x2
	.long	4                               @ 0x4
	.long	14                              @ 0xe
	.long	5                               @ 0x5
	.long	6                               @ 0x6
	.long	12                              @ 0xc
	.long	0                               @ 0x0
	.long	3                               @ 0x3
	.long	11                              @ 0xb
	.long	15                              @ 0xf
	.long	14                              @ 0xe
	.long	8                               @ 0x8
	.long	3                               @ 0x3
	.long	8                               @ 0x8
	.long	9                               @ 0x9
	.long	0                               @ 0x0
	.long	5                               @ 0x5
	.long	2                               @ 0x2
	.long	14                              @ 0xe
	.long	8                               @ 0x8
	.long	0                               @ 0x0
	.long	11                              @ 0xb
	.long	9                               @ 0x9
	.long	5                               @ 0x5
	.long	0                               @ 0x0
	.long	6                               @ 0x6
	.long	14                              @ 0xe
	.long	2                               @ 0x2
	.long	2                               @ 0x2
	.long	5                               @ 0x5
	.long	8                               @ 0x8
	.long	3                               @ 0x3
	.long	6                               @ 0x6
	.long	0                               @ 0x0
	.long	7                               @ 0x7
	.long	10                              @ 0xa
	.long	8                               @ 0x8
	.long	15                              @ 0xf
	.long	9                               @ 0x9
	.long	11                              @ 0xb
	.long	1                               @ 0x1
	.long	7                               @ 0x7
	.long	0                               @ 0x0
	.long	8                               @ 0x8
	.long	5                               @ 0x5
	.long	1                               @ 0x1
	.long	9                               @ 0x9
	.long	6                               @ 0x6
	.long	8                               @ 0x8
	.long	6                               @ 0x6
	.long	2                               @ 0x2
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	15                              @ 0xf
	.long	7                               @ 0x7
	.long	4                               @ 0x4
	.long	14                              @ 0xe
	.long	6                               @ 0x6
	.long	2                               @ 0x2
	.long	8                               @ 0x8
	.long	0                               @ 0x0
	.long	13                              @ 0xd
	.long	9                               @ 0x9
	.long	12                              @ 0xc
	.long	14                              @ 0xe
	.long	3                               @ 0x3
	.long	13                              @ 0xd
	.long	12                              @ 0xc
	.long	11                              @ 0xb
	.size	ndes_cyfun.is, 2304

	.type	.L__const.ndes_cyfun.ibin,%object @ @__const.ndes_cyfun.ibin
	.section	.rodata.cst16,"aM",%progbits,16
	.p2align	2
.L__const.ndes_cyfun.ibin:
	.ascii	"\000\b\004\f\002\n\006\016\001\t\005\r\003\013\007\017"
	.size	.L__const.ndes_cyfun.ibin, 16

	.type	ndes_out,%object                @ @ndes_out
	.bss
	.globl	ndes_out
	.p2align	2
ndes_out:
	.zero	8
	.size	ndes_out, 8

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
	.long	21                              @ Offset entry count
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
	.long	.Ldebug_loc13-.Lloclists_table_base0
	.long	.Ldebug_loc14-.Lloclists_table_base0
	.long	.Ldebug_loc15-.Lloclists_table_base0
	.long	.Ldebug_loc16-.Lloclists_table_base0
	.long	.Ldebug_loc17-.Lloclists_table_base0
	.long	.Ldebug_loc18-.Lloclists_table_base0
	.long	.Ldebug_loc19-.Lloclists_table_base0
	.long	.Ldebug_loc20-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          @   ending offset
	.byte	2                               @ Loc expr size
	.byte	49                              @ DW_OP_lit1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	2                               @ 2
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	115                             @ DW_OP_breg3
	.byte	2                               @ 2
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	115                             @ DW_OP_breg3
	.byte	2                               @ 2
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	28                              @ 28
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	116                             @ DW_OP_breg4
	.byte	28                              @ 28
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	116                             @ DW_OP_breg4
	.byte	28                              @ 28
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          @   ending offset
	.byte	9                               @ Loc expr size
	.byte	118                             @ DW_OP_breg6
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	32                              @ 32
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          @   ending offset
	.byte	9                               @ Loc expr size
	.byte	118                             @ DW_OP_breg6
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	32                              @ 32
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          @   ending offset
	.byte	9                               @ Loc expr size
	.byte	117                             @ DW_OP_breg5
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	32                              @ 32
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          @   ending offset
	.byte	9                               @ Loc expr size
	.byte	117                             @ DW_OP_breg5
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	32                              @ 32
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	56                              @ 56
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	116                             @ DW_OP_breg4
	.byte	56                              @ 56
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	116                             @ DW_OP_breg4
	.byte	56                              @ 56
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          @   ending offset
	.byte	10                              @ Loc expr size
	.byte	118                             @ DW_OP_breg6
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	192                             @ 64
	.byte	0                               @ 
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          @   ending offset
	.byte	10                              @ Loc expr size
	.byte	118                             @ DW_OP_breg6
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	192                             @ 64
	.byte	0                               @ 
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          @   ending offset
	.byte	10                              @ Loc expr size
	.byte	117                             @ DW_OP_breg5
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	192                             @ 64
	.byte	0                               @ 
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          @   ending offset
	.byte	10                              @ Loc expr size
	.byte	117                             @ DW_OP_breg5
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	192                             @ 64
	.byte	0                               @ 
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	1                               @ 1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	1                               @ 1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          @   ending offset
	.byte	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	28                              @ 28
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	48                              @ 48
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          @   ending offset
	.byte	9                               @ Loc expr size
	.byte	117                             @ DW_OP_breg5
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	48                              @ 48
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          @   ending offset
	.byte	9                               @ Loc expr size
	.byte	117                             @ DW_OP_breg5
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	48                              @ 48
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	32                              @ 32
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          @   ending offset
	.byte	9                               @ Loc expr size
	.byte	117                             @ DW_OP_breg5
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	32                              @ 32
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          @   ending offset
	.byte	9                               @ Loc expr size
	.byte	117                             @ DW_OP_breg5
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	32                              @ 32
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	16                              @ 16
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          @   ending offset
	.byte	9                               @ Loc expr size
	.byte	117                             @ DW_OP_breg5
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	16                              @ 16
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          @   ending offset
	.byte	9                               @ Loc expr size
	.byte	117                             @ DW_OP_breg5
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	16                              @ 16
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          @   ending offset
	.byte	12                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	2                               @ 2
	.byte	28                              @ DW_OP_minus
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	27                              @ DW_OP_div
	.byte	17                              @ DW_OP_consts
	.byte	1                               @ 1
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          @   ending offset
	.byte	12                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	2                               @ 2
	.byte	28                              @ DW_OP_minus
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	27                              @ DW_OP_div
	.byte	17                              @ DW_OP_consts
	.byte	2                               @ 2
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          @   ending offset
	.byte	12                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	2                               @ 2
	.byte	28                              @ DW_OP_minus
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	27                              @ DW_OP_div
	.byte	17                              @ DW_OP_consts
	.byte	1                               @ 1
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	48                              @ 48
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         @   ending offset
	.byte	19                              @ Loc expr size
	.byte	113                             @ DW_OP_breg1
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	128                             @ 128
	.byte	1                               @ 
	.byte	126                             @ DW_OP_breg14
	.byte	0                               @ 0
	.byte	34                              @ DW_OP_plus
	.byte	28                              @ DW_OP_minus
	.byte	17                              @ DW_OP_consts
	.byte	124                             @ -4
	.byte	27                              @ DW_OP_div
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	47                              @ 47
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	5                               @ 5
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         @   ending offset
	.byte	12                              @ Loc expr size
	.byte	117                             @ DW_OP_breg5
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	5                               @ 5
	.byte	125                             @ DW_OP_breg13
	.byte	11                              @ 11
	.byte	34                              @ DW_OP_plus
	.byte	28                              @ DW_OP_minus
	.byte	17                              @ DW_OP_consts
	.byte	5                               @ 5
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         @   ending offset
	.byte	12                              @ Loc expr size
	.byte	117                             @ DW_OP_breg5
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	5                               @ 5
	.byte	125                             @ DW_OP_breg13
	.byte	11                              @ 11
	.byte	34                              @ DW_OP_plus
	.byte	28                              @ DW_OP_minus
	.byte	17                              @ DW_OP_consts
	.byte	6                               @ 6
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         @   ending offset
	.byte	12                              @ Loc expr size
	.byte	117                             @ DW_OP_breg5
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	5                               @ 5
	.byte	125                             @ DW_OP_breg13
	.byte	11                              @ 11
	.byte	34                              @ DW_OP_plus
	.byte	28                              @ DW_OP_minus
	.byte	17                              @ DW_OP_consts
	.byte	5                               @ 5
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	32                              @ 32
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         @   ending offset
	.byte	19                              @ Loc expr size
	.byte	113                             @ DW_OP_breg1
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	128                             @ 128
	.byte	1                               @ 
	.byte	126                             @ DW_OP_breg14
	.byte	0                               @ 0
	.byte	34                              @ DW_OP_plus
	.byte	28                              @ DW_OP_minus
	.byte	17                              @ DW_OP_consts
	.byte	124                             @ -4
	.byte	27                              @ DW_OP_div
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	31                              @ 31
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         @   ending offset
	.byte	5                               @ Loc expr size
	.byte	113                             @ DW_OP_breg1
	.byte	0                               @ 0
	.byte	54                              @ DW_OP_lit6
	.byte	37                              @ DW_OP_shr
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	83                              @ DW_OP_reg3
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         @   ending offset
	.byte	5                               @ Loc expr size
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	54                              @ DW_OP_lit6
	.byte	37                              @ DW_OP_shr
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	83                              @ DW_OP_reg3
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         @   ending offset
	.byte	2                               @ Loc expr size
	.byte	48                              @ DW_OP_lit0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	83                              @ DW_OP_reg3
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         @   ending offset
	.byte	8                               @ Loc expr size
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	52                              @ DW_OP_lit4
	.byte	36                              @ DW_OP_shl
	.byte	114                             @ DW_OP_breg2
	.byte	0                               @ 0
	.byte	33                              @ DW_OP_or
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	83                              @ DW_OP_reg3
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
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
	.byte	4                               @ Abbreviation Code
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
	.byte	5                               @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	6                               @ Abbreviation Code
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
	.byte	7                               @ Abbreviation Code
	.byte	1                               @ DW_TAG_array_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	8                               @ Abbreviation Code
	.byte	33                              @ DW_TAG_subrange_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	55                              @ DW_AT_count
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	9                               @ Abbreviation Code
	.byte	53                              @ DW_TAG_volatile_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	10                              @ Abbreviation Code
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
	.byte	11                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
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
	.byte	12                              @ Abbreviation Code
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
	.byte	13                              @ Abbreviation Code
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
	.byte	14                              @ Abbreviation Code
	.byte	19                              @ DW_TAG_structure_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	15                              @ Abbreviation Code
	.byte	13                              @ DW_TAG_member
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	56                              @ DW_AT_data_member_location
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	16                              @ Abbreviation Code
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
	.byte	17                              @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	18                              @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	34                              @ DW_FORM_loclistx
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	19                              @ Abbreviation Code
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
	.byte	5                               @ DW_FORM_data2
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	20                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	21                              @ Abbreviation Code
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
	.byte	5                               @ DW_FORM_data2
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	22                              @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	34                              @ DW_FORM_loclistx
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	23                              @ Abbreviation Code
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
	.byte	5                               @ DW_FORM_data2
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	24                              @ Abbreviation Code
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
	.byte	5                               @ DW_FORM_data2
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	25                              @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	26                              @ Abbreviation Code
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
	.byte	1                               @ Abbrev [1] 0xc:0x415 DW_TAG_compile_unit
	.byte	0                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	1                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	2                               @ DW_AT_comp_dir
	.byte	19                              @ DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin0       @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
	.byte	2                               @ Abbrev [2] 0x27:0xb DW_TAG_variable
	.byte	3                               @ DW_AT_name
	.long	50                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	43                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               @ Abbrev [3] 0x32:0x4 DW_TAG_base_type
	.byte	4                               @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	4                               @ Abbrev [4] 0x36:0x2c DW_TAG_subprogram
	.byte	19                              @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	75                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	63                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	5                               @ Abbrev [5] 0x41:0xb DW_TAG_variable
	.byte	5                               @ DW_AT_name
	.long	98                              @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	66                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	1
	.byte	5                               @ Abbrev [5] 0x4c:0xb DW_TAG_variable
	.byte	8                               @ DW_AT_name
	.long	123                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	72                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	2
	.byte	6                               @ Abbrev [6] 0x57:0xa DW_TAG_variable
	.byte	1                               @ DW_AT_location
	.byte	80
	.byte	83                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	65                              @ DW_AT_decl_line
	.long	1003                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	7                               @ Abbrev [7] 0x62:0xc DW_TAG_array_type
	.long	110                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x67:0x6 DW_TAG_subrange_type
	.long	119                             @ DW_AT_type
	.byte	57                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x6e:0x5 DW_TAG_volatile_type
	.long	115                             @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x73:0x4 DW_TAG_base_type
	.byte	6                               @ DW_AT_name
	.byte	8                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	10                              @ Abbrev [10] 0x77:0x4 DW_TAG_base_type
	.byte	7                               @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	7                               @ DW_AT_encoding
	.byte	7                               @ Abbrev [7] 0x7b:0xc DW_TAG_array_type
	.long	110                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x80:0x6 DW_TAG_subrange_type
	.long	119                             @ DW_AT_type
	.byte	49                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	4                               @ Abbrev [4] 0x87:0xbb DW_TAG_subprogram
	.byte	20                              @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	76                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	96                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	5                               @ Abbrev [5] 0x92:0xb DW_TAG_variable
	.byte	9                               @ DW_AT_name
	.long	322                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	99                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	3
	.byte	5                               @ Abbrev [5] 0x9d:0xb DW_TAG_variable
	.byte	10                              @ DW_AT_name
	.long	322                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	107                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	4
	.byte	5                               @ Abbrev [5] 0xa8:0xb DW_TAG_variable
	.byte	11                              @ DW_AT_name
	.long	334                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	114                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	5
	.byte	5                               @ Abbrev [5] 0xb3:0xb DW_TAG_variable
	.byte	18                              @ DW_AT_name
	.long	50                              @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	117                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	6
	.byte	11                              @ Abbrev [11] 0xbe:0xb DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	96
	.byte	85                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	96                              @ DW_AT_decl_line
	.long	698                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0xc9:0xb DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	125
	.byte	32
	.byte	86                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	96                              @ DW_AT_decl_line
	.long	698                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0xd4:0xb DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.byte	89                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	96                              @ DW_AT_decl_line
	.long	1007                            @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0xdf:0xb DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	12
	.byte	90                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	96                              @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0xea:0xb DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	16
	.byte	91                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	97                              @ DW_AT_decl_line
	.long	1012                            @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0xf5:0xb DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	125
	.byte	20
	.byte	87                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	124                             @ DW_AT_decl_line
	.long	698                             @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x100:0xb DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	125
	.byte	8
	.byte	88                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	125                             @ DW_AT_decl_line
	.long	346                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x10b:0x9 DW_TAG_variable
	.byte	0                               @ DW_AT_location
	.byte	92                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	123                             @ DW_AT_decl_line
	.long	387                             @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x114:0x9 DW_TAG_variable
	.byte	1                               @ DW_AT_location
	.byte	93                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	122                             @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x11d:0x9 DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	94                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	122                             @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x126:0x9 DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	83                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	122                             @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x12f:0x9 DW_TAG_variable
	.byte	4                               @ DW_AT_location
	.byte	95                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	122                             @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	12                              @ Abbrev [12] 0x138:0x9 DW_TAG_variable
	.byte	5                               @ DW_AT_location
	.byte	96                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	123                             @ DW_AT_decl_line
	.long	387                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	7                               @ Abbrev [7] 0x142:0xc DW_TAG_array_type
	.long	110                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x147:0x6 DW_TAG_subrange_type
	.long	119                             @ DW_AT_type
	.byte	65                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	7                               @ Abbrev [7] 0x14e:0xc DW_TAG_array_type
	.long	346                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x153:0x6 DW_TAG_subrange_type
	.long	119                             @ DW_AT_type
	.byte	17                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	13                              @ Abbrev [13] 0x15a:0x8 DW_TAG_typedef
	.long	354                             @ DW_AT_type
	.byte	17                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	31                              @ DW_AT_decl_line
	.byte	14                              @ Abbrev [14] 0x162:0x21 DW_TAG_structure_type
	.byte	16                              @ DW_AT_name
	.byte	12                              @ DW_AT_byte_size
	.byte	1                               @ DW_AT_decl_file
	.byte	29                              @ DW_AT_decl_line
	.byte	15                              @ Abbrev [15] 0x167:0x9 DW_TAG_member
	.byte	12                              @ DW_AT_name
	.long	387                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	30                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	15                              @ Abbrev [15] 0x170:0x9 DW_TAG_member
	.byte	14                              @ DW_AT_name
	.long	387                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	30                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	15                              @ Abbrev [15] 0x179:0x9 DW_TAG_member
	.byte	15                              @ DW_AT_name
	.long	387                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	30                              @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	3                               @ Abbrev [3] 0x183:0x4 DW_TAG_base_type
	.byte	13                              @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	4                               @ Abbrev [4] 0x187:0xd8 DW_TAG_subprogram
	.byte	23                              @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	79                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	188                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	5                               @ Abbrev [5] 0x192:0xb DW_TAG_variable
	.byte	19                              @ DW_AT_name
	.long	607                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	190                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	7
	.byte	5                               @ Abbrev [5] 0x19d:0xb DW_TAG_variable
	.byte	21                              @ DW_AT_name
	.long	628                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	195                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	8
	.byte	5                               @ Abbrev [5] 0x1a8:0xb DW_TAG_variable
	.byte	22                              @ DW_AT_name
	.long	640                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	199                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	9
	.byte	16                              @ Abbrev [16] 0x1b3:0x9 DW_TAG_formal_parameter
	.byte	12                              @ DW_AT_location
	.byte	106                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	188                             @ DW_AT_decl_line
	.long	387                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x1bc:0xb DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	88
	.byte	94                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	188                             @ DW_AT_decl_line
	.long	346                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x1c7:0xb DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.byte	107                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	188                             @ DW_AT_decl_line
	.long	1051                            @ DW_AT_type
	.byte	17                              @ Abbrev [17] 0x1d2:0xc DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	125
	.byte	32
	.byte	102                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	281                             @ DW_AT_decl_line
	.long	1022                            @ DW_AT_type
	.byte	17                              @ Abbrev [17] 0x1de:0xc DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	125
	.byte	20
	.byte	103                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	282                             @ DW_AT_decl_line
	.long	346                             @ DW_AT_type
	.byte	17                              @ Abbrev [17] 0x1ea:0xc DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	125
	.byte	11
	.byte	104                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	284                             @ DW_AT_decl_line
	.long	1034                            @ DW_AT_type
	.byte	17                              @ Abbrev [17] 0x1f6:0xc DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	125
	.byte	4
	.byte	93                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	286                             @ DW_AT_decl_line
	.long	1046                            @ DW_AT_type
	.byte	17                              @ Abbrev [17] 0x202:0xc DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	125
	.byte	0
	.byte	105                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	286                             @ DW_AT_decl_line
	.long	1046                            @ DW_AT_type
	.byte	18                              @ Abbrev [18] 0x20e:0xa DW_TAG_variable
	.byte	13                              @ DW_AT_location
	.byte	108                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	285                             @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	18                              @ Abbrev [18] 0x218:0xa DW_TAG_variable
	.byte	14                              @ DW_AT_location
	.byte	12                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	285                             @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	18                              @ Abbrev [18] 0x222:0xa DW_TAG_variable
	.byte	15                              @ DW_AT_location
	.byte	109                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	283                             @ DW_AT_decl_line
	.long	387                             @ DW_AT_type
	.byte	18                              @ Abbrev [18] 0x22c:0xa DW_TAG_variable
	.byte	16                              @ DW_AT_location
	.byte	110                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	283                             @ DW_AT_decl_line
	.long	387                             @ DW_AT_type
	.byte	18                              @ Abbrev [18] 0x236:0xa DW_TAG_variable
	.byte	17                              @ DW_AT_location
	.byte	87                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	283                             @ DW_AT_decl_line
	.long	387                             @ DW_AT_type
	.byte	18                              @ Abbrev [18] 0x240:0xa DW_TAG_variable
	.byte	18                              @ DW_AT_location
	.byte	111                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	285                             @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	18                              @ Abbrev [18] 0x24a:0xa DW_TAG_variable
	.byte	19                              @ DW_AT_location
	.byte	112                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	285                             @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	18                              @ Abbrev [18] 0x254:0xa DW_TAG_variable
	.byte	20                              @ DW_AT_location
	.byte	113                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	285                             @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	7                               @ Abbrev [7] 0x25f:0xc DW_TAG_array_type
	.long	619                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x264:0x6 DW_TAG_subrange_type
	.long	119                             @ DW_AT_type
	.byte	49                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x26b:0x5 DW_TAG_volatile_type
	.long	624                             @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x270:0x4 DW_TAG_base_type
	.byte	20                              @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	7                               @ Abbrev [7] 0x274:0xc DW_TAG_array_type
	.long	619                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x279:0x6 DW_TAG_subrange_type
	.long	119                             @ DW_AT_type
	.byte	33                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	7                               @ Abbrev [7] 0x280:0x18 DW_TAG_array_type
	.long	619                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x285:0x6 DW_TAG_subrange_type
	.long	119                             @ DW_AT_type
	.byte	16                              @ DW_AT_count
	.byte	8                               @ Abbrev [8] 0x28b:0x6 DW_TAG_subrange_type
	.long	119                             @ DW_AT_type
	.byte	4                               @ DW_AT_count
	.byte	8                               @ Abbrev [8] 0x291:0x6 DW_TAG_subrange_type
	.long	119                             @ DW_AT_type
	.byte	9                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	2                               @ Abbrev [2] 0x298:0xb DW_TAG_variable
	.byte	23                              @ DW_AT_name
	.long	675                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	33                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	10
	.byte	7                               @ Abbrev [7] 0x2a3:0xc DW_TAG_array_type
	.long	387                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x2a8:0x6 DW_TAG_subrange_type
	.long	119                             @ DW_AT_type
	.byte	33                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	2                               @ Abbrev [2] 0x2af:0xb DW_TAG_variable
	.byte	24                              @ DW_AT_name
	.long	698                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	34                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	11
	.byte	13                              @ Abbrev [13] 0x2ba:0x8 DW_TAG_typedef
	.long	706                             @ DW_AT_type
	.byte	26                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	28                              @ DW_AT_decl_line
	.byte	14                              @ Abbrev [14] 0x2c2:0x18 DW_TAG_structure_type
	.byte	25                              @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	1                               @ DW_AT_decl_file
	.byte	26                              @ DW_AT_decl_line
	.byte	15                              @ Abbrev [15] 0x2c7:0x9 DW_TAG_member
	.byte	12                              @ DW_AT_name
	.long	387                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	27                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	15                              @ Abbrev [15] 0x2d0:0x9 DW_TAG_member
	.byte	15                              @ DW_AT_name
	.long	387                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	27                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	2                               @ Abbrev [2] 0x2da:0xb DW_TAG_variable
	.byte	27                              @ DW_AT_name
	.long	698                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	34                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	12
	.byte	2                               @ Abbrev [2] 0x2e5:0xb DW_TAG_variable
	.byte	28                              @ DW_AT_name
	.long	698                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	34                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	13
	.byte	2                               @ Abbrev [2] 0x2f0:0xb DW_TAG_variable
	.byte	29                              @ DW_AT_name
	.long	50                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	35                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	14
	.byte	2                               @ Abbrev [2] 0x2fb:0xb DW_TAG_variable
	.byte	30                              @ DW_AT_name
	.long	50                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	35                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	15
	.byte	5                               @ Abbrev [5] 0x306:0xb DW_TAG_variable
	.byte	31                              @ DW_AT_name
	.long	698                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	37                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	16
	.byte	5                               @ Abbrev [5] 0x311:0xb DW_TAG_variable
	.byte	32                              @ DW_AT_name
	.long	796                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	38                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	17
	.byte	7                               @ Abbrev [7] 0x31c:0xc DW_TAG_array_type
	.long	115                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x321:0x6 DW_TAG_subrange_type
	.long	119                             @ DW_AT_type
	.byte	57                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	5                               @ Abbrev [5] 0x328:0xb DW_TAG_variable
	.byte	33                              @ DW_AT_name
	.long	819                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	39                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	18
	.byte	7                               @ Abbrev [7] 0x333:0xc DW_TAG_array_type
	.long	115                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x338:0x6 DW_TAG_subrange_type
	.long	119                             @ DW_AT_type
	.byte	49                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	3                               @ Abbrev [3] 0x33f:0x4 DW_TAG_base_type
	.byte	34                              @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	19                              @ Abbrev [19] 0x343:0x33 DW_TAG_subprogram
	.byte	21                              @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	77                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	333                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	387                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	20                              @ Abbrev [20] 0x353:0xc DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	125
	.byte	0
	.byte	97                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	333                             @ DW_AT_decl_line
	.long	698                             @ DW_AT_type
	.byte	20                              @ Abbrev [20] 0x35f:0xb DW_TAG_formal_parameter
	.byte	1                               @ DW_AT_location
	.byte	82
	.byte	98                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	333                             @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	20                              @ Abbrev [20] 0x36a:0xb DW_TAG_formal_parameter
	.byte	1                               @ DW_AT_location
	.byte	83
	.byte	99                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	333                             @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	21                              @ Abbrev [21] 0x376:0x49 DW_TAG_subprogram
	.byte	22                              @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	78                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	341                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	22                              @ Abbrev [22] 0x382:0xa DW_TAG_formal_parameter
	.byte	6                               @ DW_AT_location
	.byte	100                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	341                             @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	22                              @ Abbrev [22] 0x38c:0xa DW_TAG_formal_parameter
	.byte	7                               @ DW_AT_location
	.byte	101                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	341                             @ DW_AT_decl_line
	.long	1017                            @ DW_AT_type
	.byte	18                              @ Abbrev [18] 0x396:0xa DW_TAG_variable
	.byte	8                               @ DW_AT_location
	.byte	12                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	343                             @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	18                              @ Abbrev [18] 0x3a0:0xa DW_TAG_variable
	.byte	9                               @ DW_AT_location
	.byte	94                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	343                             @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	18                              @ Abbrev [18] 0x3aa:0xa DW_TAG_variable
	.byte	10                              @ DW_AT_location
	.byte	93                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	343                             @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	18                              @ Abbrev [18] 0x3b4:0xa DW_TAG_variable
	.byte	11                              @ DW_AT_location
	.byte	83                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	343                             @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	23                              @ Abbrev [23] 0x3bf:0x10 DW_TAG_subprogram
	.byte	24                              @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	80                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	372                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	50                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	24                              @ Abbrev [24] 0x3cf:0xc DW_TAG_subprogram
	.byte	25                              @ DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	81                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	377                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	23                              @ Abbrev [23] 0x3db:0x10 DW_TAG_subprogram
	.byte	26                              @ DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	82                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	384                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	50                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	3                               @ Abbrev [3] 0x3eb:0x4 DW_TAG_base_type
	.byte	84                              @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	25                              @ Abbrev [25] 0x3ef:0x5 DW_TAG_pointer_type
	.long	50                              @ DW_AT_type
	.byte	25                              @ Abbrev [25] 0x3f4:0x5 DW_TAG_pointer_type
	.long	698                             @ DW_AT_type
	.byte	25                              @ Abbrev [25] 0x3f9:0x5 DW_TAG_pointer_type
	.long	346                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x3fe:0xc DW_TAG_array_type
	.long	110                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x403:0x6 DW_TAG_subrange_type
	.long	119                             @ DW_AT_type
	.byte	16                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	7                               @ Abbrev [7] 0x40a:0xc DW_TAG_array_type
	.long	115                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x40f:0x6 DW_TAG_subrange_type
	.long	119                             @ DW_AT_type
	.byte	9                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x416:0x5 DW_TAG_volatile_type
	.long	50                              @ DW_AT_type
	.byte	25                              @ Abbrev [25] 0x41b:0x5 DW_TAG_pointer_type
	.long	387                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
.Ldebug_info_end0:
.Lcu_begin1:
	.long	.Ldebug_info_end1-.Ldebug_info_start1 @ Length of Unit
.Ldebug_info_start1:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	36                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	27                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	38                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	28                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	39                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	29                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	40                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	30                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	41                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	31                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	42                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	32                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	43                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	33                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	44                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	34                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	45                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	35                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	46                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	36                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	47                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	37                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	48                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	38                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	49                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	39                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	50                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	40                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	51                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	41                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	52                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	42                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	53                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	43                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	54                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	44                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	55                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	45                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	56                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	46                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	57                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	47                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	58                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	48                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	59                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	49                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	60                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	50                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	61                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	51                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	62                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	52                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	63                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	53                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	64                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	54                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	65                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	55                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	66                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	56                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	67                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	57                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	68                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	58                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	69                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	59                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	70                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	60                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	71                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	61                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	72                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	37                              @ DW_AT_comp_dir
	.byte	62                              @ DW_AT_low_pc
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
	.byte	26                              @ Abbrev [26] 0xc:0x1b DW_TAG_compile_unit
	.byte	35                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	73                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	74                              @ DW_AT_comp_dir
	.byte	63                              @ DW_AT_low_pc
	.long	.Lfunc_end47-.Lfunc_begin46     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end37:
	.section	.debug_str_offsets,"",%progbits
	.long	460                             @ Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)" @ string offset=0
.Linfo_string1:
	.asciz	"/workspaces/llvmta/testcases/singletest/ndes/ndes.c" @ string offset=100
.Linfo_string2:
	.asciz	"/workspaces/llvmta/testcases/singletest/matrix1" @ string offset=152
.Linfo_string3:
	.asciz	"ndes_value"                    @ string offset=200
.Linfo_string4:
	.asciz	"int"                           @ string offset=211
.Linfo_string5:
	.asciz	"ndes_ipc1_tmp"                 @ string offset=215
.Linfo_string6:
	.asciz	"char"                          @ string offset=229
.Linfo_string7:
	.asciz	"__ARRAY_SIZE_TYPE__"           @ string offset=234
.Linfo_string8:
	.asciz	"ndes_ipc2_tmp"                 @ string offset=254
.Linfo_string9:
	.asciz	"ip"                            @ string offset=268
.Linfo_string10:
	.asciz	"ipm"                           @ string offset=271
.Linfo_string11:
	.asciz	"kns"                           @ string offset=275
.Linfo_string12:
	.asciz	"l"                             @ string offset=279
.Linfo_string13:
	.asciz	"unsigned long"                 @ string offset=281
.Linfo_string14:
	.asciz	"c"                             @ string offset=295
.Linfo_string15:
	.asciz	"r"                             @ string offset=297
.Linfo_string16:
	.asciz	"NDES_GREAT"                    @ string offset=299
.Linfo_string17:
	.asciz	"ndes_great"                    @ string offset=310
.Linfo_string18:
	.asciz	"initflag"                      @ string offset=321
.Linfo_string19:
	.asciz	"iet"                           @ string offset=330
.Linfo_string20:
	.asciz	"long"                          @ string offset=334
.Linfo_string21:
	.asciz	"ipp"                           @ string offset=339
.Linfo_string22:
	.asciz	"is"                            @ string offset=343
.Linfo_string23:
	.asciz	"ndes_bit"                      @ string offset=346
.Linfo_string24:
	.asciz	"ndes_inp"                      @ string offset=355
.Linfo_string25:
	.asciz	"NDES_IMMENSE"                  @ string offset=364
.Linfo_string26:
	.asciz	"ndes_immense"                  @ string offset=377
.Linfo_string27:
	.asciz	"ndes_key"                      @ string offset=390
.Linfo_string28:
	.asciz	"ndes_out"                      @ string offset=399
.Linfo_string29:
	.asciz	"ndes_newkey"                   @ string offset=408
.Linfo_string30:
	.asciz	"ndes_isw"                      @ string offset=420
.Linfo_string31:
	.asciz	"ndes_icd"                      @ string offset=429
.Linfo_string32:
	.asciz	"ndes_ipc1"                     @ string offset=438
.Linfo_string33:
	.asciz	"ndes_ipc2"                     @ string offset=448
.Linfo_string34:
	.asciz	"unsigned short"                @ string offset=458
.Linfo_string35:
	.asciz	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)" @ string offset=473
.Linfo_string36:
	.asciz	"../absvdi2.c"                  @ string offset=594
.Linfo_string37:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" @ string offset=607
.Linfo_string38:
	.asciz	"../int_util.c"                 @ string offset=669
.Linfo_string39:
	.asciz	"../absvsi2.c"                  @ string offset=683
.Linfo_string40:
	.asciz	"../addvdi3.c"                  @ string offset=696
.Linfo_string41:
	.asciz	"../addvsi3.c"                  @ string offset=709
.Linfo_string42:
	.asciz	"../ashldi3.c"                  @ string offset=722
.Linfo_string43:
	.asciz	"../ashrdi3.c"                  @ string offset=735
.Linfo_string44:
	.asciz	"../clzdi2.c"                   @ string offset=748
.Linfo_string45:
	.asciz	"../clzsi2.c"                   @ string offset=760
.Linfo_string46:
	.asciz	"../cmpdi2.c"                   @ string offset=772
.Linfo_string47:
	.asciz	"../ctzdi2.c"                   @ string offset=784
.Linfo_string48:
	.asciz	"../ctzsi2.c"                   @ string offset=796
.Linfo_string49:
	.asciz	"../divdi3.c"                   @ string offset=808
.Linfo_string50:
	.asciz	"../udivmoddi4.c"               @ string offset=820
.Linfo_string51:
	.asciz	"../divmoddi4.c"                @ string offset=836
.Linfo_string52:
	.asciz	"../divmodsi4.c"                @ string offset=851
.Linfo_string53:
	.asciz	"../divsi3.c"                   @ string offset=866
.Linfo_string54:
	.asciz	"../ffsdi2.c"                   @ string offset=878
.Linfo_string55:
	.asciz	"../ffssi2.c"                   @ string offset=890
.Linfo_string56:
	.asciz	"../lshrdi3.c"                  @ string offset=902
.Linfo_string57:
	.asciz	"../moddi3.c"                   @ string offset=915
.Linfo_string58:
	.asciz	"../modsi3.c"                   @ string offset=927
.Linfo_string59:
	.asciz	"../mulvdi3.c"                  @ string offset=939
.Linfo_string60:
	.asciz	"../mulvsi3.c"                  @ string offset=952
.Linfo_string61:
	.asciz	"../paritydi2.c"                @ string offset=965
.Linfo_string62:
	.asciz	"../paritysi2.c"                @ string offset=980
.Linfo_string63:
	.asciz	"../popcountdi2.c"              @ string offset=995
.Linfo_string64:
	.asciz	"../popcountsi2.c"              @ string offset=1012
.Linfo_string65:
	.asciz	"../subvdi3.c"                  @ string offset=1029
.Linfo_string66:
	.asciz	"../subvsi3.c"                  @ string offset=1042
.Linfo_string67:
	.asciz	"../ucmpdi2.c"                  @ string offset=1055
.Linfo_string68:
	.asciz	"../udivdi3.c"                  @ string offset=1068
.Linfo_string69:
	.asciz	"../udivmodsi4.c"               @ string offset=1081
.Linfo_string70:
	.asciz	"../udivsi3.c"                  @ string offset=1097
.Linfo_string71:
	.asciz	"../umoddi3.c"                  @ string offset=1110
.Linfo_string72:
	.asciz	"../umodsi3.c"                  @ string offset=1123
.Linfo_string73:
	.asciz	"../memory.c"                   @ string offset=1136
.Linfo_string74:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" @ string offset=1148
.Linfo_string75:
	.asciz	"ndes_init"                     @ string offset=1210
.Linfo_string76:
	.asciz	"ndes_des"                      @ string offset=1220
.Linfo_string77:
	.asciz	"ndes_getbit"                   @ string offset=1229
.Linfo_string78:
	.asciz	"ndes_ks"                       @ string offset=1241
.Linfo_string79:
	.asciz	"ndes_cyfun"                    @ string offset=1249
.Linfo_string80:
	.asciz	"ndes_return"                   @ string offset=1260
.Linfo_string81:
	.asciz	"ndes_main"                     @ string offset=1272
.Linfo_string82:
	.asciz	"main"                          @ string offset=1282
.Linfo_string83:
	.asciz	"i"                             @ string offset=1287
.Linfo_string84:
	.asciz	"unsigned int"                  @ string offset=1289
.Linfo_string85:
	.asciz	"inp"                           @ string offset=1302
.Linfo_string86:
	.asciz	"key"                           @ string offset=1306
.Linfo_string87:
	.asciz	"itmp"                          @ string offset=1310
.Linfo_string88:
	.asciz	"pg"                            @ string offset=1315
.Linfo_string89:
	.asciz	"newkey"                        @ string offset=1318
.Linfo_string90:
	.asciz	"isw"                           @ string offset=1325
.Linfo_string91:
	.asciz	"out"                           @ string offset=1329
.Linfo_string92:
	.asciz	"shifter"                       @ string offset=1333
.Linfo_string93:
	.asciz	"j"                             @ string offset=1341
.Linfo_string94:
	.asciz	"k"                             @ string offset=1343
.Linfo_string95:
	.asciz	"ii"                            @ string offset=1345
.Linfo_string96:
	.asciz	"ic"                            @ string offset=1348
.Linfo_string97:
	.asciz	"source"                        @ string offset=1351
.Linfo_string98:
	.asciz	"bitno"                         @ string offset=1358
.Linfo_string99:
	.asciz	"nbits"                         @ string offset=1364
.Linfo_string100:
	.asciz	"n"                             @ string offset=1370
.Linfo_string101:
	.asciz	"kn"                            @ string offset=1372
.Linfo_string102:
	.asciz	"ibin"                          @ string offset=1375
.Linfo_string103:
	.asciz	"ie"                            @ string offset=1380
.Linfo_string104:
	.asciz	"iec"                           @ string offset=1383
.Linfo_string105:
	.asciz	"jj"                            @ string offset=1387
.Linfo_string106:
	.asciz	"ir"                            @ string offset=1390
.Linfo_string107:
	.asciz	"iout"                          @ string offset=1393
.Linfo_string108:
	.asciz	"m"                             @ string offset=1398
.Linfo_string109:
	.asciz	"ietmp1"                        @ string offset=1400
.Linfo_string110:
	.asciz	"ietmp2"                        @ string offset=1407
.Linfo_string111:
	.asciz	"icol"                          @ string offset=1414
.Linfo_string112:
	.asciz	"irow"                          @ string offset=1419
.Linfo_string113:
	.asciz	"iss"                           @ string offset=1424
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
	.long	.Linfo_string70
	.long	.Linfo_string71
	.long	.Linfo_string72
	.long	.Linfo_string73
	.long	.Linfo_string74
	.long	.Linfo_string75
	.long	.Linfo_string76
	.long	.Linfo_string77
	.long	.Linfo_string78
	.long	.Linfo_string79
	.long	.Linfo_string80
	.long	.Linfo_string81
	.long	.Linfo_string82
	.long	.Linfo_string83
	.long	.Linfo_string84
	.long	.Linfo_string85
	.long	.Linfo_string86
	.long	.Linfo_string87
	.long	.Linfo_string88
	.long	.Linfo_string89
	.long	.Linfo_string90
	.long	.Linfo_string91
	.long	.Linfo_string92
	.long	.Linfo_string93
	.long	.Linfo_string94
	.long	.Linfo_string95
	.long	.Linfo_string96
	.long	.Linfo_string97
	.long	.Linfo_string98
	.long	.Linfo_string99
	.long	.Linfo_string100
	.long	.Linfo_string101
	.long	.Linfo_string102
	.long	.Linfo_string103
	.long	.Linfo_string104
	.long	.Linfo_string105
	.long	.Linfo_string106
	.long	.Linfo_string107
	.long	.Linfo_string108
	.long	.Linfo_string109
	.long	.Linfo_string110
	.long	.Linfo_string111
	.long	.Linfo_string112
	.long	.Linfo_string113
	.section	.debug_addr,"",%progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 @ Length of contribution
.Ldebug_addr_start0:
	.short	5                               @ DWARF version number
	.byte	4                               @ Address size
	.byte	0                               @ Segment selector size
.Laddr_table_base0:
	.long	ndes_value
	.long	ndes_init.ndes_ipc1_tmp
	.long	ndes_init.ndes_ipc2_tmp
	.long	ndes_des.ip
	.long	ndes_des.ipm
	.long	ndes_des.kns
	.long	ndes_des.initflag
	.long	ndes_cyfun.iet
	.long	ndes_cyfun.ipp
	.long	ndes_cyfun.is
	.long	ndes_bit
	.long	ndes_inp
	.long	ndes_key
	.long	ndes_out
	.long	ndes_newkey
	.long	ndes_isw
	.long	ndes_icd
	.long	ndes_ipc1
	.long	ndes_ipc2
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
