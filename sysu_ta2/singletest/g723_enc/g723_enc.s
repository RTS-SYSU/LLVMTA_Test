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
	.file	1 "/workspaces/llvmta/testcases/singletest" "g723_enc/g723_enc.c"
	.globl	g723_enc_fmult                  @ -- Begin function g723_enc_fmult
	.p2align	2
	.type	g723_enc_fmult,%function
	.code	32                              @ @g723_enc_fmult
g723_enc_fmult:
.Lfunc_begin0:
	.loc	1 203 0                         @ g723_enc/g723_enc.c:203:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: g723_enc_fmult:an <- $r0
	@DEBUG_VALUE: g723_enc_fmult:srn <- $r1
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
	mov	r4, r1
.Ltmp0:
	@DEBUG_VALUE: g723_enc_fmult:srn <- $r4
	@DEBUG_VALUE: g723_enc_fmult:srn <- $r4
	mov	r5, r0
.Ltmp1:
	@DEBUG_VALUE: g723_enc_fmult:an <- $r5
	.loc	1 208 11 prologue_end           @ g723_enc/g723_enc.c:208:11
	cmp	r0, #0
	mov	r7, r0
	bgt	.LBB0_2
.Ltmp2:
@ %bb.1:                                @ %cond.false
	@DEBUG_VALUE: g723_enc_fmult:an <- $r5
	@DEBUG_VALUE: g723_enc_fmult:srn <- $r4
	.loc	1 0 11 is_stmt 0                @ g723_enc/g723_enc.c:0:11
	mov	r1, #255
	.loc	1 208 33                        @ g723_enc/g723_enc.c:208:33
	rsb	r0, r5, #0
	orr	r1, r1, #7936
	.loc	1 208 39                        @ g723_enc/g723_enc.c:208:39
	and	r7, r0, r1
.Ltmp3:
.LBB0_2:                                @ %cond.end
	@DEBUG_VALUE: g723_enc_fmult:an <- $r5
	@DEBUG_VALUE: g723_enc_fmult:srn <- $r4
	@DEBUG_VALUE: g723_enc_fmult:anmag <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r7
	.loc	1 209 11 is_stmt 1              @ g723_enc/g723_enc.c:209:11
	ldr	r1, .LCPI0_0
	.loc	1 209 26 is_stmt 0              @ g723_enc/g723_enc.c:209:26
	lsl	r0, r7, #16
	.loc	1 209 11                        @ g723_enc/g723_enc.c:209:11
	mov	r2, #3
	.loc	1 209 26                        @ g723_enc/g723_enc.c:209:26
	asr	r6, r0, #16
	.loc	1 209 11                        @ g723_enc/g723_enc.c:209:11
	mov	r0, r6
	bl	g723_enc_quan
	sub	r0, r0, #6
.Ltmp4:
	@DEBUG_VALUE: g723_enc_fmult:anexp <- $r0
	lsl	r0, r0, #16
.Ltmp5:
	asr	r1, r0, #16
	mov	r0, #255
	orr	r0, r0, #65280
	.loc	1 210 12 is_stmt 1              @ g723_enc/g723_enc.c:210:12
	tst	r7, r0
	beq	.LBB0_5
.Ltmp6:
@ %bb.3:                                @ %cond.false9
	@DEBUG_VALUE: g723_enc_fmult:anmag <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r7
	@DEBUG_VALUE: g723_enc_fmult:an <- $r5
	@DEBUG_VALUE: g723_enc_fmult:srn <- $r4
	.loc	1 211 12                        @ g723_enc/g723_enc.c:211:12
	cmp	r1, #0
	bmi	.LBB0_6
.Ltmp7:
@ %bb.4:                                @ %cond.true13
	@DEBUG_VALUE: g723_enc_fmult:anmag <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r7
	@DEBUG_VALUE: g723_enc_fmult:an <- $r5
	@DEBUG_VALUE: g723_enc_fmult:srn <- $r4
	.loc	1 211 35 is_stmt 0              @ g723_enc/g723_enc.c:211:35
	and	r2, r1, r0
	asr	r2, r6, r2
	b	.LBB0_7
.Ltmp8:
.LBB0_5:
	@DEBUG_VALUE: g723_enc_fmult:anmag <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r7
	@DEBUG_VALUE: g723_enc_fmult:an <- $r5
	@DEBUG_VALUE: g723_enc_fmult:srn <- $r4
	.loc	1 0 35                          @ g723_enc/g723_enc.c:0:35
	mov	r2, #32
	b	.LBB0_7
.Ltmp9:
.LBB0_6:                                @ %cond.false16
	@DEBUG_VALUE: g723_enc_fmult:anmag <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r7
	@DEBUG_VALUE: g723_enc_fmult:an <- $r5
	@DEBUG_VALUE: g723_enc_fmult:srn <- $r4
	.loc	1 211 55                        @ g723_enc/g723_enc.c:211:55
	rsb	r2, r1, #0
	.loc	1 211 52                        @ g723_enc/g723_enc.c:211:52
	lsl	r2, r6, r2
.Ltmp10:
.LBB0_7:                                @ %cond.end22
	@DEBUG_VALUE: g723_enc_fmult:anmag <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r7
	@DEBUG_VALUE: g723_enc_fmult:an <- $r5
	@DEBUG_VALUE: g723_enc_fmult:srn <- $r4
	@DEBUG_VALUE: g723_enc_fmult:anmant <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r2
	.loc	1 214 15 is_stmt 1              @ g723_enc/g723_enc.c:214:15
	lsl	r2, r2, #16
.Ltmp11:
	.loc	1 214 30 is_stmt 0              @ g723_enc/g723_enc.c:214:30
	and	r3, r4, #63
	.loc	1 214 15                        @ g723_enc/g723_enc.c:214:15
	asr	r2, r2, #16
	.loc	1 214 22                        @ g723_enc/g723_enc.c:214:22
	mul	r7, r2, r3
.Ltmp12:
	.loc	1 0 22                          @ g723_enc/g723_enc.c:0:22
	mov	r3, #15
	.loc	1 212 12 is_stmt 1              @ g723_enc/g723_enc.c:212:12
	and	r3, r3, r4, lsr #6
	.loc	1 214 38                        @ g723_enc/g723_enc.c:214:38
	add	r2, r7, #48
	.loc	1 212 12                        @ g723_enc/g723_enc.c:212:12
	add	r1, r3, r1
	.loc	1 214 47                        @ g723_enc/g723_enc.c:214:47
	lsr	r2, r2, #4
.Ltmp13:
	@DEBUG_VALUE: g723_enc_fmult:wanmant <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r2
	.loc	1 212 12                        @ g723_enc/g723_enc.c:212:12
	sub	r1, r1, #13
.Ltmp14:
	@DEBUG_VALUE: g723_enc_fmult:wanexp <- $r1
	lsl	r1, r1, #16
.Ltmp15:
	asr	r1, r1, #16
	.loc	1 215 12                        @ g723_enc/g723_enc.c:215:12
	cmp	r1, #0
	bmi	.LBB0_9
.Ltmp16:
@ %bb.8:                                @ %cond.true38
	@DEBUG_VALUE: g723_enc_fmult:wanmant <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r2
	@DEBUG_VALUE: g723_enc_fmult:an <- $r5
	@DEBUG_VALUE: g723_enc_fmult:srn <- $r4
	@DEBUG_VALUE: g723_enc_fmult:wanmant <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r2
	.loc	1 215 42 is_stmt 0              @ g723_enc/g723_enc.c:215:42
	and	r0, r1, r0
	mov	r1, #255
	orr	r1, r1, #32512
	.loc	1 215 54                        @ g723_enc/g723_enc.c:215:54
	and	r0, r1, r2, lsl r0
	b	.LBB0_10
.Ltmp17:
.LBB0_9:                                @ %cond.false43
	@DEBUG_VALUE: g723_enc_fmult:wanmant <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r2
	@DEBUG_VALUE: g723_enc_fmult:an <- $r5
	@DEBUG_VALUE: g723_enc_fmult:srn <- $r4
	.loc	1 216 25 is_stmt 1              @ g723_enc/g723_enc.c:216:25
	rsb	r0, r1, #0
	.loc	1 216 14 is_stmt 0              @ g723_enc/g723_enc.c:216:14
	lsl	r1, r2, #16
	asr	r1, r1, #16
	.loc	1 216 22                        @ g723_enc/g723_enc.c:216:22
	asr	r0, r1, r0
.Ltmp18:
.LBB0_10:                               @ %cond.end48
	@DEBUG_VALUE: g723_enc_fmult:wanmant <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r2
	@DEBUG_VALUE: g723_enc_fmult:an <- $r5
	@DEBUG_VALUE: g723_enc_fmult:srn <- $r4
	@DEBUG_VALUE: g723_enc_fmult:retval <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	.loc	1 218 19 is_stmt 1              @ g723_enc/g723_enc.c:218:19
	eor	r1, r5, r4
	.loc	1 218 12 is_stmt 0              @ g723_enc/g723_enc.c:218:12
	cmn	r1, #1
	@DEBUG_VALUE: g723_enc_fmult:retval <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	.loc	1 218 35                        @ g723_enc/g723_enc.c:218:35
	rsble	r0, r0, #0
.Ltmp19:
	.loc	1 218 3                         @ g723_enc/g723_enc.c:218:3
	pop	{r4, r5, r6, r7, r11, lr}
.Ltmp20:
	@DEBUG_VALUE: g723_enc_fmult:an <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: g723_enc_fmult:srn <- [DW_OP_LLVM_entry_value 1] $r1
	bx	lr
.Ltmp21:
	.p2align	2
@ %bb.11:
	.loc	1 0 3                           @ g723_enc/g723_enc.c:0:3
.LCPI0_0:
	.long	g723_enc_power2
.Lfunc_end0:
	.size	g723_enc_fmult, .Lfunc_end0-g723_enc_fmult
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	g723_enc_quan                   @ -- Begin function g723_enc_quan
	.p2align	2
	.type	g723_enc_quan,%function
	.code	32                              @ @g723_enc_quan
g723_enc_quan:
.Lfunc_begin1:
	.loc	1 246 0 is_stmt 1               @ g723_enc/g723_enc.c:246:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: g723_enc_quan:val <- $r0
	@DEBUG_VALUE: g723_enc_quan:table <- $r1
	@DEBUG_VALUE: g723_enc_quan:size <- $r2
	push	{r4, r10, r11, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r10, -12
	.cfi_offset r4, -16
	add	r11, sp, #8
	.cfi_def_cfa r11, 8
.Ltmp22:
	@DEBUG_VALUE: g723_enc_quan:j <- 0
	@DEBUG_VALUE: g723_enc_quan:k <- 1
	@DEBUG_VALUE: g723_enc_quan:i <- 0
	.loc	1 252 9 prologue_end            @ g723_enc/g723_enc.c:252:9
	bic	lr, r2, r2, asr #31
	mov	r3, #1
	mov	r2, #0
.Ltmp23:
	@DEBUG_VALUE: g723_enc_quan:size <- [DW_OP_LLVM_entry_value 1] $r2
	.loc	1 0 9 is_stmt 0                 @ g723_enc/g723_enc.c:0:9
	mov	r12, #0
	b	.LBB1_2
.Ltmp24:
.LBB1_1:                                @ %if.end4
                                        @   in Loop: Header=BB1_2 Depth=1
	@DEBUG_VALUE: g723_enc_quan:i <- $r2
	@DEBUG_VALUE: g723_enc_quan:size <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_quan:table <- $r1
	@DEBUG_VALUE: g723_enc_quan:val <- $r0
	@DEBUG_VALUE: g723_enc_quan:table <- $r1
	@DEBUG_VALUE: g723_enc_quan:j <- $r12
	@DEBUG_VALUE: g723_enc_quan:k <- $r3
	.loc	1 252 26                        @ g723_enc/g723_enc.c:252:26
	add	r2, r2, #1
.Ltmp25:
	@DEBUG_VALUE: g723_enc_quan:i <- $r2
.LBB1_2:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: g723_enc_quan:size <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_quan:table <- $r1
	@DEBUG_VALUE: g723_enc_quan:val <- $r0
	@DEBUG_VALUE: g723_enc_quan:table <- $r1
	@DEBUG_VALUE: g723_enc_quan:j <- $r12
	@DEBUG_VALUE: g723_enc_quan:k <- $r3
	@DEBUG_VALUE: g723_enc_quan:i <- $r2
	.loc	1 252 3                         @ g723_enc/g723_enc.c:252:3
	cmp	lr, r2
	beq	.LBB1_5
.Ltmp26:
@ %bb.3:                                @ %for.body
                                        @   in Loop: Header=BB1_2 Depth=1
	@DEBUG_VALUE: g723_enc_quan:i <- $r2
	@DEBUG_VALUE: g723_enc_quan:k <- $r3
	@DEBUG_VALUE: g723_enc_quan:j <- $r12
	@DEBUG_VALUE: g723_enc_quan:size <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_quan:table <- $r1
	@DEBUG_VALUE: g723_enc_quan:val <- $r0
	.loc	1 254 10 is_stmt 1              @ g723_enc/g723_enc.c:254:10
	cmp	r3, #0
	beq	.LBB1_1
.Ltmp27:
@ %bb.4:                                @ %if.then
                                        @   in Loop: Header=BB1_2 Depth=1
	@DEBUG_VALUE: g723_enc_quan:i <- $r2
	@DEBUG_VALUE: g723_enc_quan:k <- $r3
	@DEBUG_VALUE: g723_enc_quan:j <- $r12
	@DEBUG_VALUE: g723_enc_quan:size <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_quan:table <- $r1
	@DEBUG_VALUE: g723_enc_quan:val <- $r0
	.loc	1 255 18                        @ g723_enc/g723_enc.c:255:18
	ldrsh	r4, [r1], #2
.Ltmp28:
	@DEBUG_VALUE: g723_enc_quan:table <- $r1
	.loc	1 255 12 is_stmt 0              @ g723_enc/g723_enc.c:255:12
	cmp	r4, r0
	movgt	r3, #0
.Ltmp29:
	@DEBUG_VALUE: g723_enc_quan:k <- 0
	@DEBUG_VALUE: g723_enc_quan:j <- $r2
	.loc	1 0 12                          @ g723_enc/g723_enc.c:0:12
	movgt	r12, r2
	b	.LBB1_1
.Ltmp30:
.LBB1_5:                                @ %for.end
	@DEBUG_VALUE: g723_enc_quan:i <- $r2
	@DEBUG_VALUE: g723_enc_quan:k <- $r3
	@DEBUG_VALUE: g723_enc_quan:j <- $r12
	@DEBUG_VALUE: g723_enc_quan:size <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_quan:table <- $r1
	@DEBUG_VALUE: g723_enc_quan:val <- $r0
	.loc	1 262 3 is_stmt 1               @ g723_enc/g723_enc.c:262:3
	mov	r0, r12
.Ltmp31:
	@DEBUG_VALUE: g723_enc_quan:val <- [DW_OP_LLVM_entry_value 1] $r0
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp32:
.Lfunc_end1:
	.size	g723_enc_quan, .Lfunc_end1-g723_enc_quan
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	g723_enc_abs                    @ -- Begin function g723_enc_abs
	.p2align	2
	.type	g723_enc_abs,%function
	.code	32                              @ @g723_enc_abs
g723_enc_abs:
.Lfunc_begin2:
	.loc	1 224 0                         @ g723_enc/g723_enc.c:224:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: g723_enc_abs:num <- $r0
	.loc	1 225 10 prologue_end           @ g723_enc/g723_enc.c:225:10
	cmn	r0, #1
	.loc	1 225 24 is_stmt 0              @ g723_enc/g723_enc.c:225:24
	rsble	r0, r0, #0
.Ltmp33:
	@DEBUG_VALUE: g723_enc_abs:num <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	1 225 3                         @ g723_enc/g723_enc.c:225:3
	bx	lr
.Ltmp34:
.Lfunc_end2:
	.size	g723_enc_abs, .Lfunc_end2-g723_enc_abs
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	g723_enc_predictor_zero         @ -- Begin function g723_enc_predictor_zero
	.p2align	2
	.type	g723_enc_predictor_zero,%function
	.code	32                              @ @g723_enc_predictor_zero
g723_enc_predictor_zero:
.Lfunc_begin3:
	.loc	1 275 0 is_stmt 1               @ g723_enc/g723_enc.c:275:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: g723_enc_predictor_zero:state_ptr <- $r0
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
.Ltmp35:
	@DEBUG_VALUE: g723_enc_predictor_zero:state_ptr <- $r4
	.loc	1 279 50 prologue_end           @ g723_enc/g723_enc.c:279:50
	ldrsh	r1, [r0, #32]
	.loc	1 279 26 is_stmt 0              @ g723_enc/g723_enc.c:279:26
	ldrsh	r0, [r0, #16]
	.loc	1 279 44                        @ g723_enc/g723_enc.c:279:44
	asr	r0, r0, #2
	.loc	1 279 10                        @ g723_enc/g723_enc.c:279:10
	bl	g723_enc_fmult
	mov	r5, r0
.Ltmp36:
	@DEBUG_VALUE: g723_enc_predictor_zero:sezi <- $r5
	.loc	1 0 10                          @ g723_enc/g723_enc.c:0:10
	mov	r6, #0
.Ltmp37:
	@DEBUG_VALUE: g723_enc_predictor_zero:i <- 1
	@DEBUG_VALUE: g723_enc_predictor_zero:sezi <- $r5
	@DEBUG_VALUE: g723_enc_predictor_zero:i <- [DW_OP_consts 2, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r6
	.loc	1 281 3 is_stmt 1               @ g723_enc/g723_enc.c:281:3
	cmp	r6, #10
	beq	.LBB3_2
.Ltmp38:
.LBB3_1:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: g723_enc_predictor_zero:i <- [DW_OP_consts 2, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r6
	@DEBUG_VALUE: g723_enc_predictor_zero:sezi <- $r5
	@DEBUG_VALUE: g723_enc_predictor_zero:state_ptr <- $r4
	.loc	1 282 29                        @ g723_enc/g723_enc.c:282:29
	add	r0, r4, r6
	.loc	1 282 53 is_stmt 0              @ g723_enc/g723_enc.c:282:53
	ldrsh	r1, [r0, #34]
	.loc	1 282 29                        @ g723_enc/g723_enc.c:282:29
	ldrsh	r0, [r0, #18]
	.loc	1 282 47                        @ g723_enc/g723_enc.c:282:47
	asr	r0, r0, #2
	.loc	1 282 13                        @ g723_enc/g723_enc.c:282:13
	bl	g723_enc_fmult
.Ltmp39:
	@DEBUG_VALUE: g723_enc_predictor_zero:sezi <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r5, $r0
	.loc	1 282 10                        @ g723_enc/g723_enc.c:282:10
	add	r5, r5, r0
.Ltmp40:
	@DEBUG_VALUE: g723_enc_predictor_zero:i <- [DW_OP_consts 2, DW_OP_div, DW_OP_consts 2, DW_OP_plus, DW_OP_stack_value] $r6
	@DEBUG_VALUE: g723_enc_predictor_zero:sezi <- $r5
	.loc	1 281 3 is_stmt 1               @ g723_enc/g723_enc.c:281:3
	add	r6, r6, #2
.Ltmp41:
	@DEBUG_VALUE: g723_enc_predictor_zero:sezi <- $r5
	@DEBUG_VALUE: g723_enc_predictor_zero:i <- [DW_OP_consts 2, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r6
	.loc	1 281 3 is_stmt 0               @ g723_enc/g723_enc.c:281:3
	cmp	r6, #10
	bne	.LBB3_1
.Ltmp42:
.LBB3_2:                                @ %for.end
	@DEBUG_VALUE: g723_enc_predictor_zero:i <- [DW_OP_consts 2, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r6
	@DEBUG_VALUE: g723_enc_predictor_zero:sezi <- $r5
	@DEBUG_VALUE: g723_enc_predictor_zero:state_ptr <- $r4
	.loc	1 284 3 is_stmt 1               @ g723_enc/g723_enc.c:284:3
	mov	r0, r5
	pop	{r4, r5, r6, r10, r11, lr}
.Ltmp43:
	@DEBUG_VALUE: g723_enc_predictor_zero:state_ptr <- [DW_OP_LLVM_entry_value 1] $r0
	bx	lr
.Ltmp44:
.Lfunc_end3:
	.size	g723_enc_predictor_zero, .Lfunc_end3-g723_enc_predictor_zero
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	g723_enc_predictor_pole         @ -- Begin function g723_enc_predictor_pole
	.p2align	2
	.type	g723_enc_predictor_pole,%function
	.code	32                              @ @g723_enc_predictor_pole
g723_enc_predictor_pole:
.Lfunc_begin4:
	.loc	1 297 0                         @ g723_enc/g723_enc.c:297:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: g723_enc_predictor_pole:state_ptr <- $r0
	push	{r4, r5, r11, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r5, -12
	.cfi_offset r4, -16
	add	r11, sp, #8
	.cfi_def_cfa r11, 8
	mov	r4, r0
.Ltmp45:
	@DEBUG_VALUE: g723_enc_predictor_pole:state_ptr <- $r4
	.loc	1 298 52 prologue_end           @ g723_enc/g723_enc.c:298:52
	ldrsh	r1, [r0, #46]
	.loc	1 298 28 is_stmt 0              @ g723_enc/g723_enc.c:298:28
	ldrsh	r0, [r0, #14]
	.loc	1 298 46                        @ g723_enc/g723_enc.c:298:46
	asr	r0, r0, #2
	.loc	1 298 12                        @ g723_enc/g723_enc.c:298:12
	bl	g723_enc_fmult
	mov	r5, r0
	.loc	1 299 28 is_stmt 1              @ g723_enc/g723_enc.c:299:28
	ldrsh	r0, [r4, #12]
	.loc	1 299 52 is_stmt 0              @ g723_enc/g723_enc.c:299:52
	ldrsh	r1, [r4, #44]
	.loc	1 299 46                        @ g723_enc/g723_enc.c:299:46
	asr	r0, r0, #2
	.loc	1 299 12                        @ g723_enc/g723_enc.c:299:12
	bl	g723_enc_fmult
	.loc	1 298 73 is_stmt 1              @ g723_enc/g723_enc.c:298:73
	add	r0, r5, r0
	.loc	1 298 3 is_stmt 0               @ g723_enc/g723_enc.c:298:3
	pop	{r4, r5, r11, lr}
.Ltmp46:
	@DEBUG_VALUE: g723_enc_predictor_pole:state_ptr <- [DW_OP_LLVM_entry_value 1] $r0
	bx	lr
.Ltmp47:
.Lfunc_end4:
	.size	g723_enc_predictor_pole, .Lfunc_end4-g723_enc_predictor_pole
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	g723_enc_step_size              @ -- Begin function g723_enc_step_size
	.p2align	2
	.type	g723_enc_step_size,%function
	.code	32                              @ @g723_enc_step_size
g723_enc_step_size:
.Lfunc_begin5:
	.loc	1 311 0 is_stmt 1               @ g723_enc/g723_enc.c:311:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: g723_enc_step_size:state_ptr <- $r0
	.loc	1 316 19 prologue_end           @ g723_enc/g723_enc.c:316:19
	ldrsh	r1, [r0, #10]
.Ltmp48:
	.loc	1 316 8 is_stmt 0               @ g723_enc/g723_enc.c:316:8
	cmp	r1, #256
.Ltmp49:
	.loc	1 317 25 is_stmt 1              @ g723_enc/g723_enc.c:317:25
	ldrshge	r0, [r0, #4]
.Ltmp50:
	@DEBUG_VALUE: g723_enc_step_size:state_ptr <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	1 330 1                         @ g723_enc/g723_enc.c:330:1
	bxge	lr
.Ltmp51:
.LBB5_1:                                @ %if.else
	@DEBUG_VALUE: g723_enc_step_size:state_ptr <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	1 319 20                        @ g723_enc/g723_enc.c:319:20
	ldr	r3, [r0]
	.loc	1 320 22                        @ g723_enc/g723_enc.c:320:22
	ldrsh	r1, [r0, #4]
	.loc	1 321 21                        @ g723_enc/g723_enc.c:321:21
	ldrsh	r0, [r0, #10]
	.loc	1 320 25                        @ g723_enc/g723_enc.c:320:25
	sub	r1, r1, r3, asr #6
.Ltmp52:
	@DEBUG_VALUE: g723_enc_step_size:dif <- $r1
	.loc	1 321 24                        @ g723_enc/g723_enc.c:321:24
	asr	r2, r0, #2
	.loc	1 319 23                        @ g723_enc/g723_enc.c:319:23
	asr	r0, r3, #6
.Ltmp53:
	@DEBUG_VALUE: g723_enc_step_size:al <- $r2
	@DEBUG_VALUE: g723_enc_step_size:y <- $r0
	.loc	1 322 10                        @ g723_enc/g723_enc.c:322:10
	cmp	r1, #1
.Ltmp54:
	.loc	1 323 18                        @ g723_enc/g723_enc.c:323:18
	mulge	r3, r1, r2
	.loc	1 323 9 is_stmt 0               @ g723_enc/g723_enc.c:323:9
	addge	r0, r0, r3, asr #6
.Ltmp55:
	@DEBUG_VALUE: g723_enc_step_size:y <- $r0
	.loc	1 330 1 is_stmt 1               @ g723_enc/g723_enc.c:330:1
	bxge	lr
.Ltmp56:
.LBB5_2:                                @ %if.else12
	@DEBUG_VALUE: g723_enc_step_size:y <- $r0
	@DEBUG_VALUE: g723_enc_step_size:al <- $r2
	@DEBUG_VALUE: g723_enc_step_size:dif <- $r1
	@DEBUG_VALUE: g723_enc_step_size:state_ptr <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	1 325 12                        @ g723_enc/g723_enc.c:325:12
	cmn	r1, #1
.Ltmp57:
	.loc	1 326 20                        @ g723_enc/g723_enc.c:326:20
	mulle	r3, r1, r2
	.loc	1 326 25 is_stmt 0              @ g723_enc/g723_enc.c:326:25
	addle	r1, r3, #63
.Ltmp58:
	.loc	1 326 11                        @ g723_enc/g723_enc.c:326:11
	addle	r0, r0, r1, asr #6
.Ltmp59:
	@DEBUG_VALUE: g723_enc_step_size:y <- $r0
	.loc	1 330 1 is_stmt 1               @ g723_enc/g723_enc.c:330:1
	bx	lr
.Ltmp60:
.Lfunc_end5:
	.size	g723_enc_step_size, .Lfunc_end5-g723_enc_step_size
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	g723_enc_quantize               @ -- Begin function g723_enc_quantize
	.p2align	2
	.type	g723_enc_quantize,%function
	.code	32                              @ @g723_enc_quantize
g723_enc_quantize:
.Lfunc_begin6:
	.loc	1 347 0                         @ g723_enc/g723_enc.c:347:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: g723_enc_quantize:d <- $r0
	@DEBUG_VALUE: g723_enc_quantize:y <- $r1
	@DEBUG_VALUE: g723_enc_quantize:table <- $r2
	@DEBUG_VALUE: g723_enc_quantize:size <- $r3
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
	mov	r8, r3
.Ltmp61:
	@DEBUG_VALUE: g723_enc_quantize:size <- $r8
	@DEBUG_VALUE: g723_enc_quantize:size <- $r8
	mov	r6, r2
.Ltmp62:
	@DEBUG_VALUE: g723_enc_quantize:table <- $r6
	@DEBUG_VALUE: g723_enc_quantize:table <- $r6
	mov	r7, r1
.Ltmp63:
	@DEBUG_VALUE: g723_enc_quantize:y <- $r7
	@DEBUG_VALUE: g723_enc_quantize:y <- $r7
	mov	r5, r0
.Ltmp64:
	@DEBUG_VALUE: g723_enc_quantize:d <- $r5
	.loc	1 360 9 prologue_end            @ g723_enc/g723_enc.c:360:9
	bl	g723_enc_abs
.Ltmp65:
	@DEBUG_VALUE: g723_enc_quantize:dqm <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	.loc	1 361 9                         @ g723_enc/g723_enc.c:361:9
	ldr	r1, .LCPI6_0
	.loc	1 361 24 is_stmt 0              @ g723_enc/g723_enc.c:361:24
	lsl	r4, r0, #16
	.loc	1 361 9                         @ g723_enc/g723_enc.c:361:9
	mov	r2, #15
	.loc	1 361 28                        @ g723_enc/g723_enc.c:361:28
	asr	r0, r4, #17
.Ltmp66:
	.loc	1 361 9                         @ g723_enc/g723_enc.c:361:9
	bl	g723_enc_quan
.Ltmp67:
	@DEBUG_VALUE: g723_enc_quantize:exp <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	.loc	1 362 28 is_stmt 1              @ g723_enc/g723_enc.c:362:28
	lsl	r1, r0, #16
	.loc	1 362 18 is_stmt 0              @ g723_enc/g723_enc.c:362:18
	asr	r2, r4, #9
	.loc	1 362 28                        @ g723_enc/g723_enc.c:362:28
	asr	r1, r1, #16
	.loc	1 362 25                        @ g723_enc/g723_enc.c:362:25
	asr	r1, r2, r1
.Ltmp68:
	@DEBUG_VALUE: g723_enc_quantize:dl <- [DW_OP_LLVM_arg 0, DW_OP_constu 7, DW_OP_shl, DW_OP_LLVM_arg 1, DW_OP_constu 127, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0, $r1
	@DEBUG_VALUE: g723_enc_quantize:mant <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_constu 127, DW_OP_and, DW_OP_stack_value] $r1
	.loc	1 0 25                          @ g723_enc/g723_enc.c:0:25
	mov	r2, #8323072
	.loc	1 370 9 is_stmt 1               @ g723_enc/g723_enc.c:370:9
	and	r1, r2, r1, lsl #16
.Ltmp69:
	.loc	1 377 7                         @ g723_enc/g723_enc.c:377:7
	mov	r2, r8
	.loc	1 370 9                         @ g723_enc/g723_enc.c:370:9
	orr	r0, r1, r0, lsl #23
.Ltmp70:
	.loc	1 0 9 is_stmt 0                 @ g723_enc/g723_enc.c:0:9
	mov	r1, #16711680
	orr	r1, r1, #-16777216
.Ltmp71:
	@DEBUG_VALUE: g723_enc_quantize:dln <- [DW_OP_LLVM_arg 0, DW_OP_constu 16, DW_OP_shr, DW_OP_LLVM_arg 1, DW_OP_constu 2, DW_OP_shr, DW_OP_minus, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0, $r7
	.loc	1 377 22 is_stmt 1              @ g723_enc/g723_enc.c:377:22
	and	r1, r1, r7, lsl #14
	sub	r0, r0, r1
.Ltmp72:
	.loc	1 377 7 is_stmt 0               @ g723_enc/g723_enc.c:377:7
	mov	r1, r6
.Ltmp73:
	@DEBUG_VALUE: g723_enc_quantize:table <- $r1
	.loc	1 377 22                        @ g723_enc/g723_enc.c:377:22
	asr	r0, r0, #16
	.loc	1 377 7                         @ g723_enc/g723_enc.c:377:7
	bl	g723_enc_quan
.Ltmp74:
	@DEBUG_VALUE: g723_enc_quantize:i <- $r0
	.loc	1 379 8 is_stmt 1               @ g723_enc/g723_enc.c:379:8
	cmn	r5, #1
	ble	.LBB6_2
.Ltmp75:
@ %bb.1:                                @ %if.else
	@DEBUG_VALUE: g723_enc_quantize:i <- $r0
	@DEBUG_VALUE: g723_enc_quantize:d <- $r5
	@DEBUG_VALUE: g723_enc_quantize:y <- $r7
	@DEBUG_VALUE: g723_enc_quantize:size <- $r8
	.loc	1 382 10                        @ g723_enc/g723_enc.c:382:10
	cmp	r0, #0
	moveq	r0, #1
.Ltmp76:
	.loc	1 383 30                        @ g723_enc/g723_enc.c:383:30
	orreq	r0, r0, r8, lsl #1
.Ltmp77:
	.loc	1 386 1                         @ g723_enc/g723_enc.c:386:1
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
.Ltmp78:
	@DEBUG_VALUE: g723_enc_quantize:size <- [DW_OP_LLVM_entry_value 1] $r3
	@DEBUG_VALUE: g723_enc_quantize:y <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: g723_enc_quantize:d <- [DW_OP_LLVM_entry_value 1] $r0
	bx	lr
.Ltmp79:
.LBB6_2:                                @ %if.then
	@DEBUG_VALUE: g723_enc_quantize:i <- $r0
	@DEBUG_VALUE: g723_enc_quantize:d <- $r5
	@DEBUG_VALUE: g723_enc_quantize:y <- $r7
	@DEBUG_VALUE: g723_enc_quantize:size <- $r8
	.loc	1 0 1 is_stmt 0                 @ g723_enc/g723_enc.c:0:1
	mov	r1, #1
.Ltmp80:
	.loc	1 380 28 is_stmt 1              @ g723_enc/g723_enc.c:380:28
	orr	r1, r1, r8, lsl #1
	.loc	1 380 32 is_stmt 0              @ g723_enc/g723_enc.c:380:32
	sub	r0, r1, r0
.Ltmp81:
	.loc	1 386 1 is_stmt 1               @ g723_enc/g723_enc.c:386:1
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
.Ltmp82:
	@DEBUG_VALUE: g723_enc_quantize:size <- [DW_OP_LLVM_entry_value 1] $r3
	@DEBUG_VALUE: g723_enc_quantize:y <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: g723_enc_quantize:d <- [DW_OP_LLVM_entry_value 1] $r0
	bx	lr
.Ltmp83:
	.p2align	2
@ %bb.3:
	.loc	1 0 1 is_stmt 0                 @ g723_enc/g723_enc.c:0:1
.LCPI6_0:
	.long	g723_enc_power2
.Lfunc_end6:
	.size	g723_enc_quantize, .Lfunc_end6-g723_enc_quantize
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	g723_enc_reconstruct            @ -- Begin function g723_enc_reconstruct
	.p2align	2
	.type	g723_enc_reconstruct,%function
	.code	32                              @ @g723_enc_reconstruct
g723_enc_reconstruct:
.Lfunc_begin7:
	.loc	1 399 0 is_stmt 1               @ g723_enc/g723_enc.c:399:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: g723_enc_reconstruct:sign <- $r0
	@DEBUG_VALUE: g723_enc_reconstruct:dqln <- $r1
	@DEBUG_VALUE: g723_enc_reconstruct:y <- $r2
	mov	r3, r0
.Ltmp84:
	@DEBUG_VALUE: g723_enc_reconstruct:sign <- $r3
	.loc	1 405 14 prologue_end           @ g723_enc/g723_enc.c:405:14
	add	r0, r1, r2, lsr #2
.Ltmp85:
	@DEBUG_VALUE: g723_enc_reconstruct:dql <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	.loc	1 407 8                         @ g723_enc/g723_enc.c:407:8
	tst	r0, #32768
	bne	.LBB7_2
.Ltmp86:
@ %bb.1:                                @ %if.else
	@DEBUG_VALUE: g723_enc_reconstruct:dql <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	@DEBUG_VALUE: g723_enc_reconstruct:sign <- $r3
	@DEBUG_VALUE: g723_enc_reconstruct:y <- $r2
	@DEBUG_VALUE: g723_enc_reconstruct:dqln <- $r1
	@DEBUG_VALUE: g723_enc_reconstruct:dql <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	.loc	1 0 8 is_stmt 0                 @ g723_enc/g723_enc.c:0:8
	mov	r1, #15
.Ltmp87:
	@DEBUG_VALUE: g723_enc_reconstruct:dqln <- [DW_OP_LLVM_entry_value 1] $r1
	mov	r2, #16256
.Ltmp88:
	@DEBUG_VALUE: g723_enc_reconstruct:y <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_reconstruct:dqt <- [DW_OP_constu 127, DW_OP_and, DW_OP_constu 128, DW_OP_or, DW_OP_stack_value] $r0
	@DEBUG_VALUE: g723_enc_reconstruct:dex <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_constu 7, DW_OP_shr, DW_OP_constu 15, DW_OP_and, DW_OP_stack_value] $r0
	.loc	1 413 14 is_stmt 1              @ g723_enc/g723_enc.c:413:14
	cmp	r3, #0
.Ltmp89:
	@DEBUG_VALUE: g723_enc_reconstruct:dq <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	.loc	1 410 11                        @ g723_enc/g723_enc.c:410:11
	and	r1, r1, r0, lsr #7
	.loc	1 412 16                        @ g723_enc/g723_enc.c:412:16
	and	r0, r2, r0, lsl #7
.Ltmp90:
	.loc	1 412 31 is_stmt 0              @ g723_enc/g723_enc.c:412:31
	rsb	r1, r1, #14
	.loc	1 412 16                        @ g723_enc/g723_enc.c:412:16
	orr	r0, r0, #16384
	.loc	1 412 23                        @ g723_enc/g723_enc.c:412:23
	lsr	r0, r0, r1
.Ltmp91:
	@DEBUG_VALUE: g723_enc_reconstruct:dq <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	.loc	1 0 23                          @ g723_enc/g723_enc.c:0:23
	ldrne	r1, .LCPI7_0
	.loc	1 413 30 is_stmt 1              @ g723_enc/g723_enc.c:413:30
	orrne	r0, r0, r1
.Ltmp92:
	.loc	1 415 1                         @ g723_enc/g723_enc.c:415:1
	bx	lr
.Ltmp93:
.LBB7_2:                                @ %if.then
	@DEBUG_VALUE: g723_enc_reconstruct:dql <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	@DEBUG_VALUE: g723_enc_reconstruct:sign <- $r3
	@DEBUG_VALUE: g723_enc_reconstruct:y <- $r2
	@DEBUG_VALUE: g723_enc_reconstruct:dqln <- $r1
	.loc	1 0 1 is_stmt 0                 @ g723_enc/g723_enc.c:0:1
	ldr	r0, .LCPI7_0
.Ltmp94:
	.loc	1 408 14 is_stmt 1              @ g723_enc/g723_enc.c:408:14
	cmp	r3, #0
	moveq	r0, r3
.Ltmp95:
	.loc	1 415 1                         @ g723_enc/g723_enc.c:415:1
	bx	lr
.Ltmp96:
	.p2align	2
@ %bb.3:
	.loc	1 0 1 is_stmt 0                 @ g723_enc/g723_enc.c:0:1
.LCPI7_0:
	.long	4294934528                      @ 0xffff8000
.Lfunc_end7:
	.size	g723_enc_reconstruct, .Lfunc_end7-g723_enc_reconstruct
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	g723_enc_update                 @ -- Begin function g723_enc_update
	.p2align	2
	.type	g723_enc_update,%function
	.code	32                              @ @g723_enc_update
g723_enc_update:
.Lfunc_begin8:
	.loc	1 433 0 is_stmt 1               @ g723_enc/g723_enc.c:433:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	@DEBUG_VALUE: g723_enc_update:y <- $r1
	@DEBUG_VALUE: g723_enc_update:wi <- $r2
	@DEBUG_VALUE: g723_enc_update:fi <- $r3
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
	sub	sp, sp, #12
.Ltmp97:
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	ldr	r5, [r11, #20]
	ldr	r8, [r11, #8]
.Ltmp98:
	@DEBUG_VALUE: g723_enc_update:pk0 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] undef
	@DEBUG_VALUE: g723_enc_update:mag <- undef
	str	r3, [sp]                        @ 4-byte Spill
.Ltmp99:
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	mov	r10, #255
	orr	r10, r10, #32512
.Ltmp100:
	.loc	1 449 22 prologue_end           @ g723_enc/g723_enc.c:449:22
	ldr	r7, [r5]
	.loc	1 449 25 is_stmt 0              @ g723_enc/g723_enc.c:449:25
	lsr	r3, r7, #15
.Ltmp101:
	@DEBUG_VALUE: g723_enc_update:ylfrac <- [DW_OP_constu 10, DW_OP_shr, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $r7
	@DEBUG_VALUE: g723_enc_update:thr1 <- [DW_OP_LLVM_arg 0, DW_OP_constu 10, DW_OP_shr, DW_OP_constu 31, DW_OP_and, DW_OP_constu 32, DW_OP_or, DW_OP_LLVM_arg 1, DW_OP_constu 16, DW_OP_shl, DW_OP_constu 16, DW_OP_shra, DW_OP_shl, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r7, $r3
	@DEBUG_VALUE: g723_enc_update:ylint <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r3
	.loc	1 452 12 is_stmt 1              @ g723_enc/g723_enc.c:452:12
	lsl	r6, r3, #16
	mov	r3, #31744
.Ltmp102:
	.loc	1 452 10 is_stmt 0              @ g723_enc/g723_enc.c:452:10
	cmp	r6, #589824
	bgt	.LBB8_2
.Ltmp103:
@ %bb.1:                                @ %cond.false
	@DEBUG_VALUE: g723_enc_update:ylfrac <- [DW_OP_constu 10, DW_OP_shr, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $r7
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:wi <- $r2
	@DEBUG_VALUE: g723_enc_update:y <- $r1
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	@DEBUG_VALUE: g723_enc_update:thr1 <- [DW_OP_LLVM_arg 0, DW_OP_constu 31, DW_OP_and, DW_OP_constu 32, DW_OP_or, DW_OP_LLVM_arg 1, DW_OP_constu 16, DW_OP_shl, DW_OP_constu 16, DW_OP_shra, DW_OP_shl, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] undef
	@DEBUG_VALUE: g723_enc_update:ylfrac <- [DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] undef
	.loc	1 0 10                          @ g723_enc/g723_enc.c:0:10
	mov	r3, #31
	.loc	1 450 12 is_stmt 1              @ g723_enc/g723_enc.c:450:12
	and	r3, r3, r7, lsr #10
.Ltmp104:
	@DEBUG_VALUE: g723_enc_update:ylfrac <- $r3
	@DEBUG_VALUE: g723_enc_update:thr1 <- [DW_OP_LLVM_arg 0, DW_OP_constu 32, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_constu 16, DW_OP_shl, DW_OP_constu 16, DW_OP_shra, DW_OP_shl, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] undef
	.loc	1 451 29                        @ g723_enc/g723_enc.c:451:29
	asr	r7, r6, #16
.Ltmp105:
	@DEBUG_VALUE: g723_enc_update:thr1 <- [DW_OP_LLVM_arg 0, DW_OP_constu 10, DW_OP_shr, DW_OP_constu 31, DW_OP_and, DW_OP_constu 32, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_shl, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] undef
	.loc	1 451 15 is_stmt 0              @ g723_enc/g723_enc.c:451:15
	orr	r3, r3, #32
.Ltmp106:
	@DEBUG_VALUE: g723_enc_update:thr1 <- [DW_OP_LLVM_arg 0, DW_OP_constu 10, DW_OP_shr, DW_OP_constu 31, DW_OP_and, DW_OP_constu 32, DW_OP_or, DW_OP_LLVM_arg 1, DW_OP_constu 16, DW_OP_shra, DW_OP_shl, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] undef
	.loc	1 451 26                        @ g723_enc/g723_enc.c:451:26
	lsl	r3, r3, r7
.Ltmp107:
	@DEBUG_VALUE: g723_enc_update:thr1 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r3
	.loc	1 452 37 is_stmt 1              @ g723_enc/g723_enc.c:452:37
	lsl	r3, r3, #16
.Ltmp108:
	asr	r3, r3, #16
.Ltmp109:
.LBB8_2:                                @ %cond.end
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:wi <- $r2
	@DEBUG_VALUE: g723_enc_update:y <- $r1
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 454 19                        @ g723_enc/g723_enc.c:454:19
	ldrb	r7, [r5, #48]
	and	r6, r8, r10
.Ltmp110:
	@DEBUG_VALUE: g723_enc_update:dqthr <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 1, DW_OP_shra, DW_OP_plus, DW_OP_constu 1, DW_OP_shra, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r3
	@DEBUG_VALUE: g723_enc_update:thr2 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r3
	@DEBUG_VALUE: g723_enc_update:pk0 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] undef
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	.loc	1 0 19 is_stmt 0                @ g723_enc/g723_enc.c:0:19
	mov	r4, #0
.Ltmp111:
	.loc	1 454 8                         @ g723_enc/g723_enc.c:454:8
	cmp	r7, #0
	beq	.LBB8_4
.Ltmp112:
@ %bb.3:                                @ %if.else
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:thr2 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r3
	@DEBUG_VALUE: g723_enc_update:dqthr <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 1, DW_OP_shra, DW_OP_plus, DW_OP_constu 1, DW_OP_shra, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r3
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:wi <- $r2
	@DEBUG_VALUE: g723_enc_update:y <- $r1
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	@DEBUG_VALUE: g723_enc_update:dqthr <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_constu 1, DW_OP_shra, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] undef
	.loc	1 453 18 is_stmt 1              @ g723_enc/g723_enc.c:453:18
	add	r3, r3, r3, asr #1
.Ltmp113:
	@DEBUG_VALUE: g723_enc_update:dqthr <- [DW_OP_constu 1, DW_OP_shr, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r3
	.loc	1 457 10                        @ g723_enc/g723_enc.c:457:10
	cmp	r6, r3, asr #1
	movgt	r4, #1
.Ltmp114:
	@DEBUG_VALUE: g723_enc_update:tr <- 1
.LBB8_4:                                @ %if.end31
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:wi <- $r2
	@DEBUG_VALUE: g723_enc_update:y <- $r1
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 468 30                        @ g723_enc/g723_enc.c:468:30
	sub	r2, r2, r1
.Ltmp115:
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	.loc	1 0 30 is_stmt 0                @ g723_enc/g723_enc.c:0:30
	ldr	r12, [r11, #16]
.Ltmp116:
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:pk0 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] undef
	.loc	1 468 21                        @ g723_enc/g723_enc.c:468:21
	add	r2, r1, r2, lsr #5
	.loc	1 468 17                        @ g723_enc/g723_enc.c:468:17
	strh	r2, [r5, #4]
.Ltmp117:
	.loc	1 471 8 is_stmt 1               @ g723_enc/g723_enc.c:471:8
	lsl	r2, r2, #16
.Ltmp118:
	.loc	1 471 8 is_stmt 0               @ g723_enc/g723_enc.c:471:8
	cmp	r2, #35651584
	bge	.LBB8_6
.Ltmp119:
@ %bb.5:                                @ %if.then39
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:y <- $r1
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 0 8                           @ g723_enc/g723_enc.c:0:8
	mov	r2, #544
	b	.LBB8_8
.Ltmp120:
.LBB8_6:                                @ %if.else41
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:y <- $r1
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 474 21 is_stmt 1              @ g723_enc/g723_enc.c:474:21
	ldrsh	r2, [r5, #4]
.Ltmp121:
	.loc	1 474 10 is_stmt 0              @ g723_enc/g723_enc.c:474:10
	cmp	r2, #5120
	ble	.LBB8_9
.Ltmp122:
@ %bb.7:                                @ %if.then46
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:y <- $r1
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 0 10                          @ g723_enc/g723_enc.c:0:10
	mov	r2, #5120
.Ltmp123:
.LBB8_8:                                @ %if.end49
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:y <- $r1
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	strh	r2, [r5, #4]
.Ltmp124:
.LBB8_9:                                @ %if.end49
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:y <- $r1
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 479 52 is_stmt 1              @ g723_enc/g723_enc.c:479:52
	ldr	r7, [r5]
	.loc	1 479 31 is_stmt 0              @ g723_enc/g723_enc.c:479:31
	ldrsh	r2, [r5, #4]
	str	r1, [sp, #4]                    @ 4-byte Spill
.Ltmp125:
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	.loc	1 0 31                          @ g723_enc/g723_enc.c:0:31
	lsr	r1, r12, #31
.Ltmp126:
	@DEBUG_VALUE: g723_enc_update:pk0 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r1
	.loc	1 484 8 is_stmt 1               @ g723_enc/g723_enc.c:484:8
	cmp	r4, #0
	str	r1, [sp, #8]                    @ 4-byte Spill
	.loc	1 479 40                        @ g723_enc/g723_enc.c:479:40
	rsb	r3, r7, #0
	.loc	1 479 34 is_stmt 0              @ g723_enc/g723_enc.c:479:34
	add	r2, r2, r3, asr #6
	.loc	1 479 17                        @ g723_enc/g723_enc.c:479:17
	add	r2, r7, r2
	str	r2, [r5]
	.loc	1 484 8 is_stmt 1               @ g723_enc/g723_enc.c:484:8
	beq	.LBB8_15
.Ltmp127:
@ %bb.10:                               @ %if.then61
	@DEBUG_VALUE: g723_enc_update:pk0 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r1
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 0 8 is_stmt 0                 @ g723_enc/g723_enc.c:0:8
	mov	r0, #0
.Ltmp128:
	@DEBUG_VALUE: g723_enc_update:code_size <- [DW_OP_LLVM_entry_value 1] $r0
                                        @ implicit-def: $r9
	.loc	1 485 23 is_stmt 1              @ g723_enc/g723_enc.c:485:23
	str	r0, [r5, #12]
	.loc	1 487 23                        @ g723_enc/g723_enc.c:487:23
	str	r0, [r5, #16]
	.loc	1 489 23                        @ g723_enc/g723_enc.c:489:23
	str	r0, [r5, #20]
	.loc	1 491 23                        @ g723_enc/g723_enc.c:491:23
	str	r0, [r5, #24]
.Ltmp129:
.LBB8_11:                               @ %if.end275
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 0 23 is_stmt 0                @ g723_enc/g723_enc.c:0:23
	ldr	r7, [r11, #12]
	mov	r0, #0
.Ltmp130:
	@DEBUG_VALUE: g723_enc_update:cnt <- 5
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:cnt <- [DW_OP_consts 18446744073709551614, DW_OP_div, DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 5, DW_OP_plus, DW_OP_stack_value] $r0
	.loc	1 566 3 is_stmt 1               @ g723_enc/g723_enc.c:566:3
	cmn	r0, #10
	beq	.LBB8_13
.Ltmp131:
.LBB8_12:                               @ %for.body279
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: g723_enc_update:cnt <- [DW_OP_consts 18446744073709551614, DW_OP_div, DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 5, DW_OP_plus, DW_OP_stack_value] $r0
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 567 28                        @ g723_enc/g723_enc.c:567:28
	add	r1, r5, r0
	.loc	1 566 3                         @ g723_enc/g723_enc.c:566:3
	sub	r0, r0, #2
.Ltmp132:
	.loc	1 567 28                        @ g723_enc/g723_enc.c:567:28
	ldrh	r2, [r1, #40]
	.loc	1 567 26 is_stmt 0              @ g723_enc/g723_enc.c:567:26
	strh	r2, [r1, #42]
.Ltmp133:
	@DEBUG_VALUE: g723_enc_update:cnt <- [DW_OP_consts 18446744073709551614, DW_OP_div, DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 4, DW_OP_plus, DW_OP_stack_value] $r0
	@DEBUG_VALUE: g723_enc_update:cnt <- [DW_OP_consts 18446744073709551614, DW_OP_div, DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 5, DW_OP_plus, DW_OP_stack_value] $r0
	.loc	1 566 3 is_stmt 1               @ g723_enc/g723_enc.c:566:3
	cmn	r0, #10
	bne	.LBB8_12
.Ltmp134:
.LBB8_13:                               @ %for.end286
	@DEBUG_VALUE: g723_enc_update:cnt <- [DW_OP_consts 18446744073709551614, DW_OP_div, DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 5, DW_OP_plus, DW_OP_stack_value] $r0
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 569 8                         @ g723_enc/g723_enc.c:569:8
	cmp	r6, #0
	beq	.LBB8_18
.Ltmp135:
@ %bb.14:                               @ %if.else297
	@DEBUG_VALUE: g723_enc_update:cnt <- [DW_OP_consts 18446744073709551614, DW_OP_div, DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 5, DW_OP_plus, DW_OP_stack_value] $r0
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 572 11                        @ g723_enc/g723_enc.c:572:11
	ldr	r1, .LCPI8_0
	mov	r0, r6
.Ltmp136:
	mov	r2, #15
	bl	g723_enc_quan
.Ltmp137:
	@DEBUG_VALUE: g723_enc_update:exp <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	.loc	1 575 26                        @ g723_enc/g723_enc.c:575:26
	lsl	r0, r0, #16
.Ltmp138:
	.loc	1 575 47 is_stmt 0              @ g723_enc/g723_enc.c:575:47
	lsl	r1, r6, #6
	.loc	1 573 26 is_stmt 1              @ g723_enc/g723_enc.c:573:26
	cmp	r8, #0
	.loc	1 575 57                        @ g723_enc/g723_enc.c:575:57
	asr	r2, r0, #16
	.loc	1 575 30 is_stmt 0              @ g723_enc/g723_enc.c:575:30
	asr	r0, r0, #10
	.loc	1 575 37                        @ g723_enc/g723_enc.c:575:37
	add	r0, r0, r1, lsr r2
	.loc	1 575 63                        @ g723_enc/g723_enc.c:575:63
	submi	r0, r0, #1024
	b	.LBB8_19
.Ltmp139:
.LBB8_15:                               @ %if.else75
	@DEBUG_VALUE: g723_enc_update:pk0 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r1
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 494 18 is_stmt 1              @ g723_enc/g723_enc.c:494:18
	ldrh	r2, [r5, #28]
	.loc	1 498 10                        @ g723_enc/g723_enc.c:498:10
	cmp	r12, #0
	.loc	1 494 12                        @ g723_enc/g723_enc.c:494:12
	eor	lr, r2, r1
.Ltmp140:
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	.loc	1 497 11                        @ g723_enc/g723_enc.c:497:11
	ldrsh	r2, [r5, #14]
	.loc	1 497 29 is_stmt 0              @ g723_enc/g723_enc.c:497:29
	sub	r9, r2, r2, asr #7
.Ltmp141:
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	.loc	1 498 10 is_stmt 1              @ g723_enc/g723_enc.c:498:10
	beq	.LBB8_31
.Ltmp142:
@ %bb.16:                               @ %if.then91
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:pk0 <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r1
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 499 13                        @ g723_enc/g723_enc.c:499:13
	cmp	lr, #0
	mvn	r1, #126
.Ltmp143:
	.loc	1 499 45 is_stmt 0              @ g723_enc/g723_enc.c:499:45
	ldrheq	r2, [r5, #12]
	sub	r1, r1, #12288
.Ltmp144:
	.loc	1 500 16 is_stmt 1              @ g723_enc/g723_enc.c:500:16
	add	r3, r1, #4224
.Ltmp145:
	.loc	1 499 44                        @ g723_enc/g723_enc.c:499:44
	rsbeq	r7, r2, #0
	.loc	1 499 24 is_stmt 0              @ g723_enc/g723_enc.c:499:24
	ldrhne	r7, [r5, #12]
.Ltmp146:
	@DEBUG_VALUE: g723_enc_update:fa1 <- $r7
	.loc	1 500 16 is_stmt 1              @ g723_enc/g723_enc.c:500:16
	lsl	r7, r7, #16
.Ltmp147:
	asr	r2, r7, #16
.Ltmp148:
	.loc	1 500 12 is_stmt 0              @ g723_enc/g723_enc.c:500:12
	cmp	r2, r3
	bge	.LBB8_25
.Ltmp149:
@ %bb.17:                               @ %if.then108
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 501 13 is_stmt 1              @ g723_enc/g723_enc.c:501:13
	sub	r7, r9, #256
.Ltmp150:
	@DEBUG_VALUE: g723_enc_update:a2p <- $r7
	.loc	1 0 13 is_stmt 0                @ g723_enc/g723_enc.c:0:13
	b	.LBB8_26
.Ltmp151:
.LBB8_18:                               @ %if.then290
	@DEBUG_VALUE: g723_enc_update:cnt <- [DW_OP_consts 18446744073709551614, DW_OP_div, DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 5, DW_OP_plus, DW_OP_stack_value] $r0
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	ldr	r0, .LCPI8_1
.Ltmp152:
	.loc	1 570 26 is_stmt 1              @ g723_enc/g723_enc.c:570:26
	cmn	r8, #1
	movgt	r0, #32
.Ltmp153:
.LBB8_19:                               @ %cond.end319
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 0 0 is_stmt 0                 @ g723_enc/g723_enc.c:0:0
	strh	r0, [r5, #32]
.Ltmp154:
	.loc	1 579 24 is_stmt 1              @ g723_enc/g723_enc.c:579:24
	ldrh	r0, [r5, #44]
	.loc	1 581 8                         @ g723_enc/g723_enc.c:581:8
	cmp	r7, #0
	.loc	1 579 22                        @ g723_enc/g723_enc.c:579:22
	strh	r0, [r5, #46]
	.loc	1 581 8                         @ g723_enc/g723_enc.c:581:8
	beq	.LBB8_22
.Ltmp155:
@ %bb.20:                               @ %if.else334
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 584 10                        @ g723_enc/g723_enc.c:584:10
	cmp	r7, #1
	blt	.LBB8_23
.Ltmp156:
@ %bb.21:                               @ %if.then337
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 585 13                        @ g723_enc/g723_enc.c:585:13
	ldr	r1, .LCPI8_0
	mov	r0, r7
	mov	r2, #15
	bl	g723_enc_quan
.Ltmp157:
	@DEBUG_VALUE: g723_enc_update:exp <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	.loc	1 586 34                        @ g723_enc/g723_enc.c:586:34
	lsl	r1, r0, #6
	.loc	1 586 60 is_stmt 0              @ g723_enc/g723_enc.c:586:60
	lsl	r0, r0, #16
.Ltmp158:
	.loc	1 586 50                        @ g723_enc/g723_enc.c:586:50
	lsl	r2, r7, #6
	.loc	1 586 60                        @ g723_enc/g723_enc.c:586:60
	asr	r0, r0, #16
	.loc	1 586 41                        @ g723_enc/g723_enc.c:586:41
	add	r0, r1, r2, asr r0
	b	.LBB8_42
.Ltmp159:
.LBB8_22:                               @ %if.then331
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 0 41                          @ g723_enc/g723_enc.c:0:41
	mov	r0, #32
	b	.LBB8_42
.Ltmp160:
.LBB8_23:                               @ %if.else349
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 588 12 is_stmt 1              @ g723_enc/g723_enc.c:588:12
	cmn	r7, #32768
	ble	.LBB8_41
.Ltmp161:
@ %bb.24:                               @ %if.then352
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 589 15                        @ g723_enc/g723_enc.c:589:15
	rsb	r0, r7, #0
.Ltmp162:
	@DEBUG_VALUE: g723_enc_update:mag <- $r0
	.loc	1 590 15                        @ g723_enc/g723_enc.c:590:15
	ldr	r1, .LCPI8_0
	mov	r2, #15
	.loc	1 590 30 is_stmt 0              @ g723_enc/g723_enc.c:590:30
	lsl	r0, r0, #16
.Ltmp163:
	asr	r6, r0, #16
	.loc	1 590 15                        @ g723_enc/g723_enc.c:590:15
	mov	r0, r6
	bl	g723_enc_quan
.Ltmp164:
	@DEBUG_VALUE: g723_enc_update:exp <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	.loc	1 591 37 is_stmt 1              @ g723_enc/g723_enc.c:591:37
	lsl	r1, r0, #6
	.loc	1 591 64 is_stmt 0              @ g723_enc/g723_enc.c:591:64
	lsl	r0, r0, #16
.Ltmp165:
	.loc	1 591 54                        @ g723_enc/g723_enc.c:591:54
	lsl	r2, r6, #6
	.loc	1 591 64                        @ g723_enc/g723_enc.c:591:64
	asr	r0, r0, #16
	.loc	1 591 44                        @ g723_enc/g723_enc.c:591:44
	add	r0, r1, r2, asr r0
	.loc	1 591 31                        @ g723_enc/g723_enc.c:591:31
	sub	r0, r0, #1024
	b	.LBB8_42
.Ltmp166:
.LBB8_25:                               @ %if.else112
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 503 14 is_stmt 1              @ g723_enc/g723_enc.c:503:14
	cmp	r2, #8192
.Ltmp167:
	.loc	1 506 15                        @ g723_enc/g723_enc.c:506:15
	addlt	r7, r9, r7, asr #21
	.loc	1 504 15                        @ g723_enc/g723_enc.c:504:15
	addge	r7, r9, #255
.Ltmp168:
	@DEBUG_VALUE: g723_enc_update:a2p <- $r7
.LBB8_26:                               @ %if.end127
	@DEBUG_VALUE: g723_enc_update:a2p <- $r7
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	@DEBUG_VALUE: g723_enc_update:a2p <- $r7
	.loc	1 507 18                        @ g723_enc/g723_enc.c:507:18
	ldrsh	r2, [r5, #30]
.Ltmp169:
	.loc	1 507 12 is_stmt 0              @ g723_enc/g723_enc.c:507:12
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	cmp	r1, r2
	bne	.LBB8_29
.Ltmp170:
@ %bb.27:                               @ %if.else150
	@DEBUG_VALUE: g723_enc_update:a2p <- $r7
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 517 18 is_stmt 1              @ g723_enc/g723_enc.c:517:18
	lsl	r2, r7, #16
.Ltmp171:
	.loc	1 517 14 is_stmt 0              @ g723_enc/g723_enc.c:517:14
	mvn	r1, #126
	mov	r9, #53248
.Ltmp172:
	.loc	1 517 18                        @ g723_enc/g723_enc.c:517:18
	asr	r2, r2, #16
.Ltmp173:
	.loc	1 517 14                        @ g723_enc/g723_enc.c:517:14
	sub	r1, r1, #12288
	cmp	r2, r1
	blt	.LBB8_31
.Ltmp174:
@ %bb.28:                               @ %if.else155
	@DEBUG_VALUE: g723_enc_update:a2p <- $r7
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 0 14                          @ g723_enc/g723_enc.c:0:14
	mov	r9, #12288
.Ltmp175:
	.loc	1 520 16 is_stmt 1              @ g723_enc/g723_enc.c:520:16
	cmp	r2, #12160
.Ltmp176:
	.loc	1 523 17                        @ g723_enc/g723_enc.c:523:17
	addlt	r9, r7, #128
.Ltmp177:
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	.loc	1 0 17 is_stmt 0                @ g723_enc/g723_enc.c:0:17
	b	.LBB8_31
.Ltmp178:
.LBB8_29:                               @ %if.then134
	@DEBUG_VALUE: g723_enc_update:a2p <- $r7
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 509 18 is_stmt 1              @ g723_enc/g723_enc.c:509:18
	mvn	r1, #126
	lsl	r2, r7, #16
	mov	r9, #53248
	sub	r1, r1, #12288
	asr	r2, r2, #16
	add	r3, r1, #256
.Ltmp179:
	.loc	1 509 14 is_stmt 0              @ g723_enc/g723_enc.c:509:14
	cmp	r2, r3
	blt	.LBB8_31
.Ltmp180:
@ %bb.30:                               @ %if.else139
	@DEBUG_VALUE: g723_enc_update:a2p <- $r7
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 0 14                          @ g723_enc/g723_enc.c:0:14
	mov	r9, #12288
.Ltmp181:
	.loc	1 512 16 is_stmt 1              @ g723_enc/g723_enc.c:512:16
	cmp	r2, #12416
.Ltmp182:
	.loc	1 515 17                        @ g723_enc/g723_enc.c:515:17
	sublt	r9, r7, #128
.Ltmp183:
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
.LBB8_31:                               @ %if.end167
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	.loc	1 532 26                        @ g723_enc/g723_enc.c:532:26
	ldrsh	r2, [r5, #12]
	.loc	1 533 10                        @ g723_enc/g723_enc.c:533:10
	cmp	r12, #0
	.loc	1 528 23                        @ g723_enc/g723_enc.c:528:23
	strh	r9, [r5, #14]
	.loc	1 532 23                        @ g723_enc/g723_enc.c:532:23
	sub	r2, r2, r2, lsr #8
	strh	r2, [r5, #12]
	.loc	1 533 10                        @ g723_enc/g723_enc.c:533:10
	beq	.LBB8_33
.Ltmp184:
@ %bb.32:                               @ %if.then181
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 537 27                        @ g723_enc/g723_enc.c:537:27
	ldrh	r2, [r5, #12]
.Ltmp185:
	.loc	1 534 12                        @ g723_enc/g723_enc.c:534:12
	cmp	lr, #0
.Ltmp186:
	.loc	1 537 27                        @ g723_enc/g723_enc.c:537:27
	subne	r2, r2, #192
	.loc	1 535 27                        @ g723_enc/g723_enc.c:535:27
	addeq	r2, r2, #192
	.loc	1 0 0 is_stmt 0                 @ g723_enc/g723_enc.c:0:0
	strh	r2, [r5, #12]
.Ltmp187:
.LBB8_33:                               @ %if.end198
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 542 10 is_stmt 1              @ g723_enc/g723_enc.c:542:10
	ldrsh	r7, [r5, #12]
.Ltmp188:
	.loc	1 541 18                        @ g723_enc/g723_enc.c:541:18
	rsb	r2, r9, #15360
.Ltmp189:
	@DEBUG_VALUE: g723_enc_update:a1ul <- $r2
	.loc	1 0 18 is_stmt 0                @ g723_enc/g723_enc.c:0:18
	mov	r3, #0
	.loc	1 541 18                        @ g723_enc/g723_enc.c:541:18
	lsl	r2, r2, #16
.Ltmp190:
	.loc	1 542 30 is_stmt 1              @ g723_enc/g723_enc.c:542:30
	sub	r3, r3, r2, asr #16
.Ltmp191:
	.loc	1 542 10 is_stmt 0              @ g723_enc/g723_enc.c:542:10
	cmp	r7, r3
	bge	.LBB8_35
.Ltmp192:
@ %bb.34:                               @ %if.then209
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 541 18 is_stmt 1              @ g723_enc/g723_enc.c:541:18
	sub	r2, r9, #15360
.Ltmp193:
	.loc	1 0 0 is_stmt 0                 @ g723_enc/g723_enc.c:0:0
	strh	r2, [r5, #12]
	b	.LBB8_36
.Ltmp194:
.LBB8_35:                               @ %if.else215
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 545 12 is_stmt 1              @ g723_enc/g723_enc.c:545:12
	ldrsh	r3, [r5, #12]
.Ltmp195:
	.loc	1 0 0 is_stmt 0                 @ g723_enc/g723_enc.c:0:0
	asr	r2, r2, #16
.Ltmp196:
	.loc	1 545 12                        @ g723_enc/g723_enc.c:545:12
	cmp	r3, r2
	.loc	1 0 0                           @ g723_enc/g723_enc.c:0:0
	strhgt	r2, [r5, #12]
.Ltmp197:
.LBB8_36:                               @ %if.end226
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	mov	r2, #0
.Ltmp198:
	@DEBUG_VALUE: g723_enc_update:cnt <- 0
	b	.LBB8_38
.Ltmp199:
.LBB8_37:                               @ %if.end274
                                        @   in Loop: Header=BB8_38 Depth=1
	@DEBUG_VALUE: g723_enc_update:cnt <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $r2
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	@DEBUG_VALUE: g723_enc_update:cnt <- [DW_OP_consts 2, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r2
	.loc	1 550 5 is_stmt 1               @ g723_enc/g723_enc.c:550:5
	add	r2, r2, #2
.Ltmp200:
.LBB8_38:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	@DEBUG_VALUE: g723_enc_update:cnt <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $r2
	.loc	1 550 5 is_stmt 0               @ g723_enc/g723_enc.c:550:5
	cmp	r2, #12
	beq	.LBB8_11
.Ltmp201:
@ %bb.39:                               @ %for.body
                                        @   in Loop: Header=BB8_38 Depth=1
	@DEBUG_VALUE: g723_enc_update:cnt <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $r2
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 554 32 is_stmt 1              @ g723_enc/g723_enc.c:554:32
	add	r3, r5, r2
.Ltmp202:
	.loc	1 551 12                        @ g723_enc/g723_enc.c:551:12
	cmp	r0, #5
.Ltmp203:
	.loc	1 554 32                        @ g723_enc/g723_enc.c:554:32
	ldrsh	r7, [r3, #16]
	.loc	1 554 29 is_stmt 0              @ g723_enc/g723_enc.c:554:29
	subne	r7, r7, r7, lsr #8
	.loc	1 552 29 is_stmt 1              @ g723_enc/g723_enc.c:552:29
	subeq	r7, r7, r7, lsr #9
.Ltmp204:
	.loc	1 555 12                        @ g723_enc/g723_enc.c:555:12
	tst	r8, r10
.Ltmp205:
	.loc	1 0 0 is_stmt 0                 @ g723_enc/g723_enc.c:0:0
	strh	r7, [r3, #16]
.Ltmp206:
	.loc	1 555 12                        @ g723_enc/g723_enc.c:555:12
	beq	.LBB8_37
.Ltmp207:
@ %bb.40:                               @ %if.then254
                                        @   in Loop: Header=BB8_38 Depth=1
	@DEBUG_VALUE: g723_enc_update:cnt <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $r2
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:pks1 <- $lr
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:code_size <- $r0
	.loc	1 556 21 is_stmt 1              @ g723_enc/g723_enc.c:556:21
	add	r3, r5, r2
	ldrsh	r7, [r3, #32]
	.loc	1 556 19 is_stmt 0              @ g723_enc/g723_enc.c:556:19
	eors	r7, r7, r8
	.loc	1 559 31 is_stmt 1              @ g723_enc/g723_enc.c:559:31
	ldrh	r7, [r3, #16]
	submi	r7, r7, #128
	.loc	1 557 31                        @ g723_enc/g723_enc.c:557:31
	addpl	r7, r7, #128
	.loc	1 0 0 is_stmt 0                 @ g723_enc/g723_enc.c:0:0
	strh	r7, [r3, #16]
	b	.LBB8_37
.Ltmp208:
.LBB8_41:                               @ %if.else369
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:mag <- $r6
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	ldr	r0, .LCPI8_1
.Ltmp209:
.LBB8_42:                               @ %if.end374
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	strh	r0, [r5, #44]
.Ltmp210:
	.loc	1 596 24 is_stmt 1              @ g723_enc/g723_enc.c:596:24
	ldrh	r0, [r5, #28]
	.loc	1 600 8                         @ g723_enc/g723_enc.c:600:8
	cmp	r4, #0
	.loc	1 596 22                        @ g723_enc/g723_enc.c:596:22
	strh	r0, [r5, #30]
	.loc	1 597 22                        @ g723_enc/g723_enc.c:597:22
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	strh	r0, [r5, #28]
	.loc	1 600 8                         @ g723_enc/g723_enc.c:600:8
	bne	.LBB8_45
.Ltmp211:
@ %bb.43:                               @ %if.else386
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 603 14                        @ g723_enc/g723_enc.c:603:14
	lsl	r0, r9, #16
	asr	r0, r0, #16
.Ltmp212:
	.loc	1 603 10 is_stmt 0              @ g723_enc/g723_enc.c:603:10
	cmn	r0, #11776
	bge	.LBB8_45
.Ltmp213:
@ %bb.44:                               @ %if.then390
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 0 10                          @ g723_enc/g723_enc.c:0:10
	mov	r0, #1
	b	.LBB8_46
.Ltmp214:
.LBB8_45:                               @ %if.else392
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	mov	r0, #0
.Ltmp215:
.LBB8_46:                               @ %if.end395
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_plus_uconst 4] [$sp+0]
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	strb	r0, [r5, #48]
.Ltmp216:
	.loc	1 611 28 is_stmt 1              @ g723_enc/g723_enc.c:611:28
	ldrsh	r0, [r5, #6]
	ldr	r3, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
.Ltmp217:
	@DEBUG_VALUE: g723_enc_update:y <- $r2
	.loc	1 614 8                         @ g723_enc/g723_enc.c:614:8
	cmp	r4, #0
	.loc	1 611 26                        @ g723_enc/g723_enc.c:611:26
	sub	r1, r3, r0
	.loc	1 611 18 is_stmt 0              @ g723_enc/g723_enc.c:611:18
	add	r0, r0, r1, lsr #5
	strh	r0, [r5, #6]
	.loc	1 612 39 is_stmt 1              @ g723_enc/g723_enc.c:612:39
	ldrsh	r0, [r5, #8]
	.loc	1 612 37 is_stmt 0              @ g723_enc/g723_enc.c:612:37
	rsb	r1, r0, r3, lsl #2
	.loc	1 612 18                        @ g723_enc/g723_enc.c:612:18
	add	r0, r0, r1, lsr #7
	strh	r0, [r5, #8]
	.loc	1 614 8 is_stmt 1               @ g723_enc/g723_enc.c:614:8
	beq	.LBB8_48
.Ltmp218:
@ %bb.47:                               @ %if.then414
	@DEBUG_VALUE: g723_enc_update:y <- $r2
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 0 8 is_stmt 0                 @ g723_enc/g723_enc.c:0:8
	mov	r0, #256
	b	.LBB8_54
.Ltmp219:
.LBB8_48:                               @ %if.else415
	@DEBUG_VALUE: g723_enc_update:y <- $r2
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 617 10 is_stmt 1              @ g723_enc/g723_enc.c:617:10
	cmp	r2, #1536
	blt	.LBB8_52
.Ltmp220:
@ %bb.49:                               @ %if.else427
	@DEBUG_VALUE: g723_enc_update:y <- $r2
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 620 23                        @ g723_enc/g723_enc.c:620:23
	ldrb	r0, [r5, #48]
.Ltmp221:
	.loc	1 620 12 is_stmt 0              @ g723_enc/g723_enc.c:620:12
	cmp	r0, #1
	beq	.LBB8_52
.Ltmp222:
@ %bb.50:                               @ %if.else441
	@DEBUG_VALUE: g723_enc_update:y <- $r2
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 623 41 is_stmt 1              @ g723_enc/g723_enc.c:623:41
	ldrsh	r0, [r5, #6]
	.loc	1 623 65 is_stmt 0              @ g723_enc/g723_enc.c:623:65
	ldrsh	r1, [r5, #8]
	.loc	1 623 52                        @ g723_enc/g723_enc.c:623:52
	rsb	r0, r1, r0, lsl #2
	.loc	1 623 14                        @ g723_enc/g723_enc.c:623:14
	bl	g723_enc_abs
.Ltmp223:
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_LLVM_entry_value 1] $r1
	.loc	1 624 27 is_stmt 1              @ g723_enc/g723_enc.c:624:27
	ldrsh	r1, [r5, #8]
.Ltmp224:
	.loc	1 623 14                        @ g723_enc/g723_enc.c:623:14
	cmp	r0, r1, asr #3
	bge	.LBB8_52
.Ltmp225:
@ %bb.51:                               @ %if.else463
	@DEBUG_VALUE: g723_enc_update:y <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 627 31                        @ g723_enc/g723_enc.c:627:31
	ldrsh	r0, [r5, #10]
	.loc	1 627 30 is_stmt 0              @ g723_enc/g723_enc.c:627:30
	rsb	r1, r0, #0
	b	.LBB8_53
.Ltmp226:
.LBB8_52:                               @ %if.then418
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	.loc	1 0 0                           @ g723_enc/g723_enc.c:0:0
	ldrsh	r0, [r5, #10]
	rsb	r1, r0, #512
.Ltmp227:
.LBB8_53:                               @ %if.end475
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	add	r0, r0, r1, lsr #4
.Ltmp228:
.LBB8_54:                               @ %if.end475
	@DEBUG_VALUE: g723_enc_update:a2p <- $r9
	@DEBUG_VALUE: g723_enc_update:tr <- $r4
	@DEBUG_VALUE: g723_enc_update:wi <- [DW_OP_LLVM_entry_value 1] $r2
	@DEBUG_VALUE: g723_enc_update:fi <- [$sp+0]
	@DEBUG_VALUE: g723_enc_update:state_ptr <- [DW_OP_plus_uconst 20] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dqsez <- [DW_OP_plus_uconst 16] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:sr <- [DW_OP_plus_uconst 12] [$r11+0]
	@DEBUG_VALUE: g723_enc_update:dq <- [DW_OP_plus_uconst 8] [$r11+0]
	strh	r0, [r5, #10]
.Ltmp229:
	.loc	1 629 1 is_stmt 1               @ g723_enc/g723_enc.c:629:1
	sub	sp, r11, #28
.Ltmp230:
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
.Ltmp231:
	bx	lr
.Ltmp232:
	.p2align	2
@ %bb.55:
	.loc	1 0 1 is_stmt 0                 @ g723_enc/g723_enc.c:0:1
.LCPI8_0:
	.long	g723_enc_power2
.LCPI8_1:
	.long	4294966304                      @ 0xfffffc20
.Lfunc_end8:
	.size	g723_enc_update, .Lfunc_end8-g723_enc_update
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	g723_enc_alaw2linear            @ -- Begin function g723_enc_alaw2linear
	.p2align	2
	.type	g723_enc_alaw2linear,%function
	.code	32                              @ @g723_enc_alaw2linear
g723_enc_alaw2linear:
.Lfunc_begin9:
	.loc	1 639 0 is_stmt 1               @ g723_enc/g723_enc.c:639:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: g723_enc_alaw2linear:a_val <- $r0
	.loc	1 643 9 prologue_end            @ g723_enc/g723_enc.c:643:9
	eor	r1, r0, #85
	mov	r2, #7
	mov	r3, #255
.Ltmp233:
	@DEBUG_VALUE: g723_enc_alaw2linear:a_val <- [DW_OP_constu 85, DW_OP_xor, DW_OP_stack_value] $r0
	.loc	1 646 42                        @ g723_enc/g723_enc.c:646:42
	and	r2, r2, r1, lsr #4
	.loc	1 645 30                        @ g723_enc/g723_enc.c:645:30
	and	r1, r3, r1, lsl #4
.Ltmp234:
	@DEBUG_VALUE: g723_enc_alaw2linear:seg <- $r2
	@DEBUG_VALUE: g723_enc_alaw2linear:t <- $r1
	.loc	1 647 3                         @ g723_enc/g723_enc.c:647:3
	cmp	r2, #1
	beq	.LBB9_3
.Ltmp235:
@ %bb.1:                                @ %entry
	@DEBUG_VALUE: g723_enc_alaw2linear:t <- $r1
	@DEBUG_VALUE: g723_enc_alaw2linear:seg <- $r2
	@DEBUG_VALUE: g723_enc_alaw2linear:a_val <- [DW_OP_constu 85, DW_OP_xor, DW_OP_stack_value] $r0
	cmp	r2, #0
	bne	.LBB9_4
.Ltmp236:
@ %bb.2:                                @ %sw.bb
	@DEBUG_VALUE: g723_enc_alaw2linear:t <- $r1
	@DEBUG_VALUE: g723_enc_alaw2linear:seg <- $r2
	@DEBUG_VALUE: g723_enc_alaw2linear:a_val <- [DW_OP_constu 85, DW_OP_xor, DW_OP_stack_value] $r0
	.loc	1 649 9                         @ g723_enc/g723_enc.c:649:9
	orr	r1, r1, #8
.Ltmp237:
	@DEBUG_VALUE: g723_enc_alaw2linear:t <- $r1
	.loc	1 0 9 is_stmt 0                 @ g723_enc/g723_enc.c:0:9
	b	.LBB9_5
.Ltmp238:
.LBB9_3:                                @ %sw.bb5
	@DEBUG_VALUE: g723_enc_alaw2linear:t <- $r1
	@DEBUG_VALUE: g723_enc_alaw2linear:seg <- $r2
	@DEBUG_VALUE: g723_enc_alaw2linear:a_val <- [DW_OP_constu 85, DW_OP_xor, DW_OP_stack_value] $r0
	.loc	1 652 9 is_stmt 1               @ g723_enc/g723_enc.c:652:9
	orr	r1, r1, #264
.Ltmp239:
	@DEBUG_VALUE: g723_enc_alaw2linear:t <- $r1
	.loc	1 0 9 is_stmt 0                 @ g723_enc/g723_enc.c:0:9
	b	.LBB9_5
.Ltmp240:
.LBB9_4:                                @ %sw.default
	@DEBUG_VALUE: g723_enc_alaw2linear:t <- $r1
	@DEBUG_VALUE: g723_enc_alaw2linear:seg <- $r2
	@DEBUG_VALUE: g723_enc_alaw2linear:a_val <- [DW_OP_constu 85, DW_OP_xor, DW_OP_stack_value] $r0
	.loc	1 656 17 is_stmt 1              @ g723_enc/g723_enc.c:656:17
	sub	r2, r2, #1
.Ltmp241:
	.loc	1 655 9                         @ g723_enc/g723_enc.c:655:9
	orr	r1, r1, #264
.Ltmp242:
	@DEBUG_VALUE: g723_enc_alaw2linear:t <- $r1
	.loc	1 656 9                         @ g723_enc/g723_enc.c:656:9
	lsl	r1, r1, r2
.Ltmp243:
	@DEBUG_VALUE: g723_enc_alaw2linear:t <- $r1
.LBB9_5:                                @ %sw.epilog
	@DEBUG_VALUE: g723_enc_alaw2linear:t <- $r1
	@DEBUG_VALUE: g723_enc_alaw2linear:a_val <- [DW_OP_constu 85, DW_OP_xor, DW_OP_stack_value] $r0
	@DEBUG_VALUE: g723_enc_alaw2linear:t <- $r1
	.loc	1 658 20                        @ g723_enc/g723_enc.c:658:20
	lsl	r0, r0, #24
.Ltmp244:
	asr	r0, r0, #24
	.loc	1 658 12 is_stmt 0              @ g723_enc/g723_enc.c:658:12
	cmp	r0, #0
	.loc	1 658 39                        @ g723_enc/g723_enc.c:658:39
	rsbpl	r1, r1, #0
.Ltmp245:
	.loc	1 658 3                         @ g723_enc/g723_enc.c:658:3
	mov	r0, r1
	bx	lr
.Ltmp246:
.Lfunc_end9:
	.size	g723_enc_alaw2linear, .Lfunc_end9-g723_enc_alaw2linear
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	g723_enc_ulaw2linear            @ -- Begin function g723_enc_ulaw2linear
	.p2align	2
	.type	g723_enc_ulaw2linear,%function
	.code	32                              @ @g723_enc_ulaw2linear
g723_enc_ulaw2linear:
.Lfunc_begin10:
	.loc	1 674 0 is_stmt 1               @ g723_enc/g723_enc.c:674:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: g723_enc_ulaw2linear:u_val <- $r0
	.loc	1 678 11 prologue_end           @ g723_enc/g723_enc.c:678:11
	mvn	r1, r0
.Ltmp247:
	@DEBUG_VALUE: g723_enc_ulaw2linear:u_val <- $r1
	.loc	1 0 11 is_stmt 0                @ g723_enc/g723_enc.c:0:11
	mov	r2, #7
	mov	r3, #132
	lsl	r0, r0, #24
	.loc	1 685 46 is_stmt 1              @ g723_enc/g723_enc.c:685:46
	and	r2, r2, r1, lsr #4
	.loc	1 684 39                        @ g723_enc/g723_enc.c:684:39
	orr	r1, r3, r1, lsl #3
.Ltmp248:
	.loc	1 0 39 is_stmt 0                @ g723_enc/g723_enc.c:0:39
	asr	r0, r0, #24
	.loc	1 684 39                        @ g723_enc/g723_enc.c:684:39
	and	r1, r1, #255
.Ltmp249:
	@DEBUG_VALUE: g723_enc_ulaw2linear:t <- $r1
	.loc	1 687 12 is_stmt 1              @ g723_enc/g723_enc.c:687:12
	cmp	r0, #0
	.loc	1 685 5                         @ g723_enc/g723_enc.c:685:5
	lsl	r1, r1, r2
.Ltmp250:
	@DEBUG_VALUE: g723_enc_ulaw2linear:t <- $r1
	.loc	1 687 54                        @ g723_enc/g723_enc.c:687:54
	submi	r0, r1, #132
	.loc	1 687 42 is_stmt 0              @ g723_enc/g723_enc.c:687:42
	rsbpl	r0, r1, #132
	.loc	1 687 3                         @ g723_enc/g723_enc.c:687:3
	bx	lr
.Ltmp251:
.Lfunc_end10:
	.size	g723_enc_ulaw2linear, .Lfunc_end10-g723_enc_ulaw2linear
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	g723_enc_g723_24_encoder        @ -- Begin function g723_enc_g723_24_encoder
	.p2align	2
	.type	g723_enc_g723_24_encoder,%function
	.code	32                              @ @g723_enc_g723_24_encoder
g723_enc_g723_24_encoder:
.Lfunc_begin11:
	.loc	1 702 0 is_stmt 1               @ g723_enc/g723_enc.c:702:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sl <- $r0
	@DEBUG_VALUE: g723_enc_g723_24_encoder:in_coding <- $r1
	@DEBUG_VALUE: g723_enc_g723_24_encoder:state_ptr <- $r2
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
	sub	sp, sp, #16
	mov	r8, r2
.Ltmp252:
	@DEBUG_VALUE: g723_enc_g723_24_encoder:state_ptr <- $r8
	@DEBUG_VALUE: g723_enc_g723_24_encoder:state_ptr <- $r8
	mov	r5, r0
.Ltmp253:
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sl <- $r5
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sl <- $r5
	.loc	1 710 3 prologue_end            @ g723_enc/g723_enc.c:710:3
	cmp	r1, #1
	beq	.LBB11_4
.Ltmp254:
@ %bb.1:                                @ %entry
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sl <- $r5
	@DEBUG_VALUE: g723_enc_g723_24_encoder:state_ptr <- $r8
	@DEBUG_VALUE: g723_enc_g723_24_encoder:in_coding <- $r1
	cmp	r1, #3
	beq	.LBB11_6
.Ltmp255:
@ %bb.2:                                @ %entry
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sl <- $r5
	@DEBUG_VALUE: g723_enc_g723_24_encoder:state_ptr <- $r8
	@DEBUG_VALUE: g723_enc_g723_24_encoder:in_coding <- $r1
	cmp	r1, #2
	bne	.LBB11_10
.Ltmp256:
@ %bb.3:                                @ %sw.bb
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sl <- $r5
	@DEBUG_VALUE: g723_enc_g723_24_encoder:state_ptr <- $r8
	@DEBUG_VALUE: g723_enc_g723_24_encoder:in_coding <- $r1
	.loc	1 712 12                        @ g723_enc/g723_enc.c:712:12
	and	r0, r5, #255
	bl	g723_enc_alaw2linear
.Ltmp257:
	@DEBUG_VALUE: g723_enc_g723_24_encoder:in_coding <- [DW_OP_LLVM_entry_value 1] $r1
	.loc	1 0 12 is_stmt 0                @ g723_enc/g723_enc.c:0:12
	b	.LBB11_5
.Ltmp258:
.LBB11_4:                               @ %sw.bb1
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sl <- $r5
	@DEBUG_VALUE: g723_enc_g723_24_encoder:state_ptr <- $r8
	@DEBUG_VALUE: g723_enc_g723_24_encoder:in_coding <- $r1
	.loc	1 715 12 is_stmt 1              @ g723_enc/g723_enc.c:715:12
	and	r0, r5, #255
	bl	g723_enc_ulaw2linear
.Ltmp259:
	@DEBUG_VALUE: g723_enc_g723_24_encoder:in_coding <- [DW_OP_LLVM_entry_value 1] $r1
.LBB11_5:                               @ %sw.epilog
	@DEBUG_VALUE: g723_enc_g723_24_encoder:in_coding <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sl <- $r5
	@DEBUG_VALUE: g723_enc_g723_24_encoder:state_ptr <- $r8
	.loc	1 0 0 is_stmt 0                 @ g723_enc/g723_enc.c:0:0
	mov	r5, r0
.Ltmp260:
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sl <- [DW_OP_constu 2, DW_OP_shra, DW_OP_stack_value] $r5
.LBB11_6:                               @ %sw.epilog
	@DEBUG_VALUE: g723_enc_g723_24_encoder:state_ptr <- $r8
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sl <- [DW_OP_constu 2, DW_OP_shra, DW_OP_stack_value] $r5
	.loc	1 724 10 is_stmt 1              @ g723_enc/g723_enc.c:724:10
	mov	r0, r8
	bl	g723_enc_predictor_zero
	mov	r6, r0
.Ltmp261:
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sezi <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r6
	.loc	1 726 16                        @ g723_enc/g723_enc.c:726:16
	mov	r0, r8
	bl	g723_enc_predictor_pole
	.loc	1 726 14 is_stmt 0              @ g723_enc/g723_enc.c:726:14
	add	r0, r6, r0
.Ltmp262:
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sei <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	.loc	1 727 8 is_stmt 1               @ g723_enc/g723_enc.c:727:8
	lsl	r4, r0, #16
.Ltmp263:
	.loc	1 0 0 is_stmt 0                 @ g723_enc/g723_enc.c:0:0
	lsr	r0, r5, #2
.Ltmp264:
	.loc	1 729 10 is_stmt 1              @ g723_enc/g723_enc.c:729:10
	sub	r0, r0, r4, asr #17
.Ltmp265:
	@DEBUG_VALUE: g723_enc_g723_24_encoder:d <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	.loc	1 733 26                        @ g723_enc/g723_enc.c:733:26
	lsl	r5, r0, #16
.Ltmp266:
	.loc	1 732 7                         @ g723_enc/g723_enc.c:732:7
	mov	r0, r8
.Ltmp267:
	bl	g723_enc_step_size
.Ltmp268:
	@DEBUG_VALUE: g723_enc_g723_24_encoder:y <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	.loc	1 733 7                         @ g723_enc/g723_enc.c:733:7
	ldr	r2, .LCPI11_0
	.loc	1 733 29 is_stmt 0              @ g723_enc/g723_enc.c:733:29
	lsl	r0, r0, #16
.Ltmp269:
	.loc	1 733 26                        @ g723_enc/g723_enc.c:733:26
	asr	r1, r5, #16
	.loc	1 733 7                         @ g723_enc/g723_enc.c:733:7
	mov	r3, #3
	.loc	1 733 29                        @ g723_enc/g723_enc.c:733:29
	asr	r5, r0, #16
	.loc	1 733 7                         @ g723_enc/g723_enc.c:733:7
	mov	r0, r1
	mov	r1, r5
	bl	g723_enc_quantize
.Ltmp270:
	@DEBUG_VALUE: g723_enc_g723_24_encoder:i <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	.loc	1 734 37 is_stmt 1              @ g723_enc/g723_enc.c:734:37
	ldr	r1, .LCPI11_1
	lsl	r7, r0, #16
	.loc	1 734 32 is_stmt 0              @ g723_enc/g723_enc.c:734:32
	and	r0, r0, #4
.Ltmp271:
	.loc	1 734 8                         @ g723_enc/g723_enc.c:734:8
	mov	r2, r5
	.loc	1 734 37                        @ g723_enc/g723_enc.c:734:37
	add	r1, r1, r7, asr #15
	ldrsh	r1, [r1]
	.loc	1 734 8                         @ g723_enc/g723_enc.c:734:8
	bl	g723_enc_reconstruct
.Ltmp272:
	@DEBUG_VALUE: g723_enc_g723_24_encoder:dq <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	.loc	1 725 9 is_stmt 1               @ g723_enc/g723_enc.c:725:9
	lsl	r2, r6, #16
	.loc	1 727 12                        @ g723_enc/g723_enc.c:727:12
	asr	r1, r4, #17
.Ltmp273:
	@DEBUG_VALUE: g723_enc_g723_24_encoder:se <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r1
	.loc	1 737 8                         @ g723_enc/g723_enc.c:737:8
	tst	r0, #32768
	.loc	1 725 14                        @ g723_enc/g723_enc.c:725:14
	asr	r6, r2, #17
.Ltmp274:
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sez <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r6
	.loc	1 737 8                         @ g723_enc/g723_enc.c:737:8
	bne	.LBB11_8
.Ltmp275:
@ %bb.7:                                @ %cond.false
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sez <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r6
	@DEBUG_VALUE: g723_enc_g723_24_encoder:se <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r1
	@DEBUG_VALUE: g723_enc_g723_24_encoder:dq <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	@DEBUG_VALUE: g723_enc_g723_24_encoder:state_ptr <- $r8
	.loc	1 737 49 is_stmt 0              @ g723_enc/g723_enc.c:737:49
	lsl	r2, r0, #16
	.loc	1 737 47                        @ g723_enc/g723_enc.c:737:47
	add	r4, r1, r2, asr #16
	b	.LBB11_9
.Ltmp276:
.LBB11_8:                               @ %cond.true
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sez <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r6
	@DEBUG_VALUE: g723_enc_g723_24_encoder:se <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r1
	@DEBUG_VALUE: g723_enc_g723_24_encoder:dq <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	@DEBUG_VALUE: g723_enc_g723_24_encoder:state_ptr <- $r8
	@DEBUG_VALUE: g723_enc_g723_24_encoder:dq <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	@DEBUG_VALUE: g723_enc_g723_24_encoder:se <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r1
	.loc	1 0 47                          @ g723_enc/g723_enc.c:0:47
	mov	r2, #255
	orr	r2, r2, #16128
	.loc	1 737 31                        @ g723_enc/g723_enc.c:737:31
	and	r2, r0, r2
	.loc	1 737 24                        @ g723_enc/g723_enc.c:737:24
	sub	r4, r1, r2
.Ltmp277:
.LBB11_9:                               @ %cond.end
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sez <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r6
	@DEBUG_VALUE: g723_enc_g723_24_encoder:se <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r1
	@DEBUG_VALUE: g723_enc_g723_24_encoder:dq <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r0
	@DEBUG_VALUE: g723_enc_g723_24_encoder:state_ptr <- $r8
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sr <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r4
	.loc	1 741 47 is_stmt 1              @ g723_enc/g723_enc.c:741:47
	ldr	r2, .LCPI11_2
	.loc	1 739 14                        @ g723_enc/g723_enc.c:739:14
	add	r6, r4, r6
.Ltmp278:
	.loc	1 741 68                        @ g723_enc/g723_enc.c:741:68
	lsl	r0, r0, #16
.Ltmp279:
	.loc	1 741 3 is_stmt 0               @ g723_enc/g723_enc.c:741:3
	str	r8, [sp, #12]
	.loc	1 739 20 is_stmt 1              @ g723_enc/g723_enc.c:739:20
	sub	r1, r6, r1
.Ltmp280:
	@DEBUG_VALUE: g723_enc_g723_24_encoder:dqsez <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] $r1
	.loc	1 741 72                        @ g723_enc/g723_enc.c:741:72
	lsl	r6, r4, #16
	.loc	1 741 68 is_stmt 0              @ g723_enc/g723_enc.c:741:68
	asr	r0, r0, #16
	.loc	1 741 76                        @ g723_enc/g723_enc.c:741:76
	lsl	r1, r1, #16
.Ltmp281:
	.loc	1 741 72                        @ g723_enc/g723_enc.c:741:72
	asr	r6, r6, #16
	.loc	1 741 3                         @ g723_enc/g723_enc.c:741:3
	stm	sp, {r0, r6}
	mov	r0, #3
	.loc	1 741 76                        @ g723_enc/g723_enc.c:741:76
	asr	r1, r1, #16
	.loc	1 741 47                        @ g723_enc/g723_enc.c:741:47
	add	r2, r2, r7, asr #15
	.loc	1 741 3                         @ g723_enc/g723_enc.c:741:3
	str	r1, [sp, #8]
	mov	r1, r5
	.loc	1 741 47                        @ g723_enc/g723_enc.c:741:47
	ldrsh	r3, [r2]
	.loc	1 741 26                        @ g723_enc/g723_enc.c:741:26
	ldr	r2, .LCPI11_3
	add	r2, r2, r7, asr #15
	ldrsh	r2, [r2]
	.loc	1 741 3                         @ g723_enc/g723_enc.c:741:3
	bl	g723_enc_update
	.loc	1 741 26                        @ g723_enc/g723_enc.c:741:26
	asr	r0, r7, #16
	b	.LBB11_11
.Ltmp282:
.LBB11_10:                              @ %sw.default
	@DEBUG_VALUE: g723_enc_g723_24_encoder:sl <- $r5
	@DEBUG_VALUE: g723_enc_g723_24_encoder:state_ptr <- $r8
	@DEBUG_VALUE: g723_enc_g723_24_encoder:in_coding <- $r1
	.loc	1 0 26                          @ g723_enc/g723_enc.c:0:26
	mvn	r0, #0
.Ltmp283:
.LBB11_11:                              @ %return
	@DEBUG_VALUE: g723_enc_g723_24_encoder:state_ptr <- $r8
	.loc	1 745 1 is_stmt 1               @ g723_enc/g723_enc.c:745:1
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
.Ltmp284:
	@DEBUG_VALUE: g723_enc_g723_24_encoder:state_ptr <- [DW_OP_LLVM_entry_value 1] $r2
	bx	lr
.Ltmp285:
	.p2align	2
@ %bb.12:
	.loc	1 0 1 is_stmt 0                 @ g723_enc/g723_enc.c:0:1
.LCPI11_0:
	.long	g723_enc_qtab_723_24
.LCPI11_1:
	.long	g723_enc_dqlntab
.LCPI11_2:
	.long	g723_enc_fitab
.LCPI11_3:
	.long	g723_enc_witab
.Lfunc_end11:
	.size	g723_enc_g723_24_encoder, .Lfunc_end11-g723_enc_g723_24_encoder
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	g723_enc_pack_output            @ -- Begin function g723_enc_pack_output
	.p2align	2
	.type	g723_enc_pack_output,%function
	.code	32                              @ @g723_enc_pack_output
g723_enc_pack_output:
.Lfunc_begin12:
	.loc	1 755 0 is_stmt 1               @ g723_enc/g723_enc.c:755:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: g723_enc_pack_output:code <- $r0
	@DEBUG_VALUE: g723_enc_pack_output:bits <- $r1
	push	{r4, r10, r11, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r10, -12
	.cfi_offset r4, -16
	add	r11, sp, #8
	.cfi_def_cfa r11, 8
.Ltmp286:
	.loc	1 761 27 prologue_end           @ g723_enc/g723_enc.c:761:27
	ldr	lr, .LCPI12_0
	.loc	1 761 14 is_stmt 0              @ g723_enc/g723_enc.c:761:14
	ldr	r12, .LCPI12_1
	.loc	1 761 27                        @ g723_enc/g723_enc.c:761:27
	ldr	r3, [lr]
	.loc	1 761 14                        @ g723_enc/g723_enc.c:761:14
	ldr	r2, [r12]
	orr	r0, r2, r0, lsl r3
.Ltmp287:
	@DEBUG_VALUE: g723_enc_pack_output:code <- [DW_OP_LLVM_entry_value 1] $r0
	str	r0, [r12]
	.loc	1 762 12 is_stmt 1              @ g723_enc/g723_enc.c:762:12
	add	r0, r3, r1
	.loc	1 763 8                         @ g723_enc/g723_enc.c:763:8
	cmp	r0, #8
	.loc	1 762 12                        @ g723_enc/g723_enc.c:762:12
	str	r0, [lr]
	.loc	1 763 8                         @ g723_enc/g723_enc.c:763:8
	blt	.LBB12_2
.Ltmp288:
@ %bb.1:                                @ %if.then
	@DEBUG_VALUE: g723_enc_pack_output:code <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: g723_enc_pack_output:bits <- $r1
	.loc	1 769 22                        @ g723_enc/g723_enc.c:769:22
	ldr	r0, .LCPI12_2
	.loc	1 764 16                        @ g723_enc/g723_enc.c:764:16
	ldr	r2, [r12]
.Ltmp289:
	@DEBUG_VALUE: g723_enc_pack_output:out_byte <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r2
	.loc	1 769 5                         @ g723_enc/g723_enc.c:769:5
	ldr	r4, .LCPI12_3
	.loc	1 769 22 is_stmt 0              @ g723_enc/g723_enc.c:769:22
	ldr	r1, [r0]
.Ltmp290:
	@DEBUG_VALUE: g723_enc_pack_output:bits <- [DW_OP_LLVM_entry_value 1] $r1
	.loc	1 769 28                        @ g723_enc/g723_enc.c:769:28
	and	r3, r2, #255
	.loc	1 766 16 is_stmt 1              @ g723_enc/g723_enc.c:766:16
	lsr	r2, r2, #8
.Ltmp291:
	str	r2, [r12]
	.loc	1 769 26                        @ g723_enc/g723_enc.c:769:26
	str	r3, [r4, r1, lsl #2]
	.loc	1 765 14                        @ g723_enc/g723_enc.c:765:14
	ldr	r3, [lr]
	.loc	1 770 12                        @ g723_enc/g723_enc.c:770:12
	add	r1, r1, #1
	.loc	1 770 7 is_stmt 0               @ g723_enc/g723_enc.c:770:7
	str	r1, [r0]
	.loc	1 765 14 is_stmt 1              @ g723_enc/g723_enc.c:765:14
	sub	r3, r3, #8
	str	r3, [lr]
.Ltmp292:
.LBB12_2:                               @ %if.end
	@DEBUG_VALUE: g723_enc_pack_output:code <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	1 773 12                        @ g723_enc/g723_enc.c:773:12
	ldr	r1, [lr]
	mov	r0, #0
	.loc	1 773 21 is_stmt 0              @ g723_enc/g723_enc.c:773:21
	cmp	r1, #0
	movgt	r0, #1
	.loc	1 773 3                         @ g723_enc/g723_enc.c:773:3
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp293:
	.p2align	2
@ %bb.3:
	.loc	1 0 3                           @ g723_enc/g723_enc.c:0:3
.LCPI12_0:
	.long	g723_enc_pack_output.out_bits
.LCPI12_1:
	.long	g723_enc_pack_output.out_buffer
.LCPI12_2:
	.long	g723_enc_pack_output.i
.LCPI12_3:
	.long	g723_enc_OUTPUT
.Lfunc_end12:
	.size	g723_enc_pack_output, .Lfunc_end12-g723_enc_pack_output
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	g723_enc_init_state             @ -- Begin function g723_enc_init_state
	.p2align	2
	.type	g723_enc_init_state,%function
	.code	32                              @ @g723_enc_init_state
g723_enc_init_state:
.Lfunc_begin13:
	.loc	1 790 0 is_stmt 1               @ g723_enc/g723_enc.c:790:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: g723_enc_init_state:state_ptr <- $r0
	mov	r3, #34816
.Ltmp294:
	@DEBUG_VALUE: g723_enc_init_state:cnta <- 0
	mov	r1, #0
	mov	r2, #544
	mov	r12, #32
.Ltmp295:
	.loc	1 793 17 prologue_end           @ g723_enc/g723_enc.c:793:17
	str	r3, [r0]
	mov	r3, #0
	.loc	1 794 17                        @ g723_enc/g723_enc.c:794:17
	str	r2, [r0, #4]
	.loc	1 796 18                        @ g723_enc/g723_enc.c:796:18
	str	r1, [r0, #8]
.Ltmp296:
	@DEBUG_VALUE: g723_enc_init_state:cnta <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $r3
	.loc	1 800 3                         @ g723_enc/g723_enc.c:800:3
	cmp	r3, #4
	beq	.LBB13_2
.Ltmp297:
.LBB13_1:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: g723_enc_init_state:cnta <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $r3
	@DEBUG_VALUE: g723_enc_init_state:state_ptr <- $r0
	.loc	1 801 26                        @ g723_enc/g723_enc.c:801:26
	add	r2, r0, r3
.Ltmp298:
	.loc	1 800 3                         @ g723_enc/g723_enc.c:800:3
	add	r3, r3, #2
.Ltmp299:
	.loc	1 803 27                        @ g723_enc/g723_enc.c:803:27
	strh	r12, [r2, #44]
	.loc	1 802 27                        @ g723_enc/g723_enc.c:802:27
	strh	r1, [r2, #28]
	.loc	1 801 26                        @ g723_enc/g723_enc.c:801:26
	strh	r1, [r2, #12]
.Ltmp300:
	@DEBUG_VALUE: g723_enc_init_state:cnta <- [DW_OP_consts 2, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r3
	@DEBUG_VALUE: g723_enc_init_state:cnta <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $r3
	.loc	1 800 3                         @ g723_enc/g723_enc.c:800:3
	cmp	r3, #4
	bne	.LBB13_1
.Ltmp301:
.LBB13_2:                               @ %for.end
	@DEBUG_VALUE: g723_enc_init_state:cnta <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $r3
	@DEBUG_VALUE: g723_enc_init_state:state_ptr <- $r0
	.loc	1 0 3 is_stmt 0                 @ g723_enc/g723_enc.c:0:3
	mov	r12, #0
.Ltmp302:
	@DEBUG_VALUE: g723_enc_init_state:cnta <- 0
	mov	r2, #32
	mov	r3, #0
.Ltmp303:
	@DEBUG_VALUE: g723_enc_init_state:cnta <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $r3
	.loc	1 806 3 is_stmt 1               @ g723_enc/g723_enc.c:806:3
	cmp	r3, #12
	beq	.LBB13_4
.Ltmp304:
.LBB13_3:                               @ %for.body5
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: g723_enc_init_state:cnta <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $r3
	@DEBUG_VALUE: g723_enc_init_state:state_ptr <- $r0
	.loc	1 807 26                        @ g723_enc/g723_enc.c:807:26
	add	r1, r0, r3
.Ltmp305:
	.loc	1 806 3                         @ g723_enc/g723_enc.c:806:3
	add	r3, r3, #2
.Ltmp306:
	.loc	1 808 27                        @ g723_enc/g723_enc.c:808:27
	strh	r2, [r1, #32]
	.loc	1 807 26                        @ g723_enc/g723_enc.c:807:26
	strh	r12, [r1, #16]
.Ltmp307:
	@DEBUG_VALUE: g723_enc_init_state:cnta <- [DW_OP_consts 2, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r3
	@DEBUG_VALUE: g723_enc_init_state:cnta <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $r3
	.loc	1 806 3                         @ g723_enc/g723_enc.c:806:3
	cmp	r3, #12
	bne	.LBB13_3
.Ltmp308:
.LBB13_4:                               @ %for.end10
	@DEBUG_VALUE: g723_enc_init_state:cnta <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $r3
	@DEBUG_VALUE: g723_enc_init_state:state_ptr <- $r0
	.loc	1 0 3 is_stmt 0                 @ g723_enc/g723_enc.c:0:3
	mov	r1, #0
	.loc	1 810 17 is_stmt 1              @ g723_enc/g723_enc.c:810:17
	strb	r1, [r0, #48]
	.loc	1 811 1                         @ g723_enc/g723_enc.c:811:1
	bx	lr
.Ltmp309:
.Lfunc_end13:
	.size	g723_enc_init_state, .Lfunc_end13-g723_enc_init_state
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	g723_enc_init                   @ -- Begin function g723_enc_init
	.p2align	2
	.type	g723_enc_init,%function
	.code	32                              @ @g723_enc_init
g723_enc_init:
.Lfunc_begin14:
	.loc	1 815 0                         @ g723_enc/g723_enc.c:815:0
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
.Ltmp310:
	.loc	1 818 3 prologue_end            @ g723_enc/g723_enc.c:818:3
	ldr	r0, .LCPI14_0
	mov	r4, #0
	.loc	1 817 16                        @ g723_enc/g723_enc.c:817:16
	str	r4, [sp, #4]
	.loc	1 818 3                         @ g723_enc/g723_enc.c:818:3
	bl	g723_enc_init_state
.Ltmp311:
	@DEBUG_VALUE: g723_enc_init:i <- 0
	.loc	1 0 3 is_stmt 0                 @ g723_enc/g723_enc.c:0:3
	ldr	r0, .LCPI14_1
.Ltmp312:
	@DEBUG_VALUE: g723_enc_init:i <- $r4
	.loc	1 821 3 is_stmt 1               @ g723_enc/g723_enc.c:821:3
	cmp	r4, #256
	beq	.LBB14_2
.Ltmp313:
.LBB14_1:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: g723_enc_init:i <- $r4
	.loc	1 822 25                        @ g723_enc/g723_enc.c:822:25
	ldr	r1, [r0, r4, lsl #2]
	.loc	1 822 28 is_stmt 0              @ g723_enc/g723_enc.c:822:28
	ldr	r2, [sp, #4]
	.loc	1 822 25                        @ g723_enc/g723_enc.c:822:25
	add	r1, r1, r2
	str	r1, [r0, r4, lsl #2]
	.loc	1 821 26 is_stmt 1              @ g723_enc/g723_enc.c:821:26
	add	r4, r4, #1
.Ltmp314:
	@DEBUG_VALUE: g723_enc_init:i <- $r4
	@DEBUG_VALUE: g723_enc_init:i <- $r4
	.loc	1 821 3 is_stmt 0               @ g723_enc/g723_enc.c:821:3
	cmp	r4, #256
	bne	.LBB14_1
.Ltmp315:
.LBB14_2:                               @ %for.end
	@DEBUG_VALUE: g723_enc_init:i <- $r4
	.loc	1 823 1 is_stmt 1               @ g723_enc/g723_enc.c:823:1
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
.Ltmp316:
	bx	lr
.Ltmp317:
	.p2align	2
@ %bb.3:
	.loc	1 0 1 is_stmt 0                 @ g723_enc/g723_enc.c:0:1
.LCPI14_0:
	.long	g723_enc_state
.LCPI14_1:
	.long	g723_enc_INPUT
.Lfunc_end14:
	.size	g723_enc_init, .Lfunc_end14-g723_enc_init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	g723_enc_return                 @ -- Begin function g723_enc_return
	.p2align	2
	.type	g723_enc_return,%function
	.code	32                              @ @g723_enc_return
g723_enc_return:
.Lfunc_begin15:
	.loc	1 827 0 is_stmt 1               @ g723_enc/g723_enc.c:827:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	ldr	r1, .LCPI15_0
	mov	r0, #0
.Ltmp318:
	@DEBUG_VALUE: g723_enc_return:i <- 0
	@DEBUG_VALUE: g723_enc_return:check_sum <- 0
	mov	r2, #0
.Ltmp319:
	@DEBUG_VALUE: g723_enc_return:check_sum <- $r0
	@DEBUG_VALUE: g723_enc_return:i <- $r2
	.loc	1 832 3 prologue_end            @ g723_enc/g723_enc.c:832:3
	cmp	r2, #256
	beq	.LBB15_2
.Ltmp320:
.LBB15_1:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: g723_enc_return:i <- $r2
	@DEBUG_VALUE: g723_enc_return:check_sum <- $r0
	@DEBUG_VALUE: g723_enc_return:check_sum <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] undef, undef
	.loc	1 833 18                        @ g723_enc/g723_enc.c:833:18
	ldr	r3, [r1, r2, lsl #2]
.Ltmp321:
	@DEBUG_VALUE: g723_enc_return:check_sum <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $r0, $r3
	.loc	1 832 26                        @ g723_enc/g723_enc.c:832:26
	add	r2, r2, #1
.Ltmp322:
	@DEBUG_VALUE: g723_enc_return:i <- $r2
	.loc	1 833 15                        @ g723_enc/g723_enc.c:833:15
	add	r0, r0, r3
.Ltmp323:
	@DEBUG_VALUE: g723_enc_return:check_sum <- $r0
	@DEBUG_VALUE: g723_enc_return:check_sum <- $r0
	@DEBUG_VALUE: g723_enc_return:i <- $r2
	.loc	1 832 3                         @ g723_enc/g723_enc.c:832:3
	cmp	r2, #256
	bne	.LBB15_1
.Ltmp324:
.LBB15_2:                               @ %for.end
	@DEBUG_VALUE: g723_enc_return:i <- $r2
	@DEBUG_VALUE: g723_enc_return:check_sum <- $r0
	.loc	1 0 3 is_stmt 0                 @ g723_enc/g723_enc.c:0:3
	mov	r1, #732
	orr	r1, r1, #23552
	.loc	1 835 22 is_stmt 1              @ g723_enc/g723_enc.c:835:22
	subs	r0, r0, r1
.Ltmp325:
	movne	r0, #1
	.loc	1 835 3 is_stmt 0               @ g723_enc/g723_enc.c:835:3
	bx	lr
.Ltmp326:
	.p2align	2
@ %bb.3:
	.loc	1 0 3                           @ g723_enc/g723_enc.c:0:3
.LCPI15_0:
	.long	g723_enc_OUTPUT
.Lfunc_end15:
	.size	g723_enc_return, .Lfunc_end15-g723_enc_return
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	g723_enc_main                   @ -- Begin function g723_enc_main
	.p2align	2
	.type	g723_enc_main,%function
	.code	32                              @ @g723_enc_main
g723_enc_main:
.Lfunc_begin16:
	.loc	1 843 0 is_stmt 1               @ g723_enc/g723_enc.c:843:0
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
	ldr	r6, .LCPI16_0
	ldr	r4, .LCPI16_1
	mov	r5, #0
.Ltmp327:
	@DEBUG_VALUE: g723_enc_main:in_buf <- undef
	@DEBUG_VALUE: g723_enc_main:in_coding <- 2
	@DEBUG_VALUE: g723_enc_main:enc_bits <- 3
	@DEBUG_VALUE: g723_enc_main:i <- 0
                                        @ implicit-def: $r0
	@DEBUG_VALUE: g723_enc_main:i <- $r5
	@DEBUG_VALUE: g723_enc_main:resid <- $r0
	.loc	1 858 3 prologue_end            @ g723_enc/g723_enc.c:858:3
	cmp	r5, #256
	beq	.LBB16_2
.Ltmp328:
.LBB16_1:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: g723_enc_main:resid <- $r0
	@DEBUG_VALUE: g723_enc_main:i <- $r5
	@DEBUG_VALUE: g723_enc_main:enc_bits <- 3
	@DEBUG_VALUE: g723_enc_main:in_coding <- 2
	.loc	1 859 15                        @ g723_enc/g723_enc.c:859:15
	add	r0, r6, r5, lsl #2
.Ltmp329:
	.loc	1 860 12                        @ g723_enc/g723_enc.c:860:12
	mov	r1, #2
	mov	r2, r4
	.loc	1 859 15                        @ g723_enc/g723_enc.c:859:15
	ldrsh	r0, [r0]
.Ltmp330:
	@DEBUG_VALUE: g723_enc_main:sample_short <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value] undef
	.loc	1 860 12                        @ g723_enc/g723_enc.c:860:12
	bl	g723_enc_g723_24_encoder
	.loc	1 861 13                        @ g723_enc/g723_enc.c:861:13
	and	r0, r0, #255
.Ltmp331:
	@DEBUG_VALUE: g723_enc_main:code <- $r0
	mov	r1, #3
	bl	g723_enc_pack_output
.Ltmp332:
	@DEBUG_VALUE: g723_enc_main:resid <- $r0
	.loc	1 858 26                        @ g723_enc/g723_enc.c:858:26
	add	r5, r5, #1
.Ltmp333:
	@DEBUG_VALUE: g723_enc_main:i <- $r5
	@DEBUG_VALUE: g723_enc_main:i <- $r5
	@DEBUG_VALUE: g723_enc_main:resid <- $r0
	.loc	1 858 3 is_stmt 0               @ g723_enc/g723_enc.c:858:3
	cmp	r5, #256
	bne	.LBB16_1
.Ltmp334:
.LBB16_2:                               @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: g723_enc_main:resid <- $r0
	@DEBUG_VALUE: g723_enc_main:enc_bits <- 3
	@DEBUG_VALUE: g723_enc_main:in_coding <- 2
	@DEBUG_VALUE: g723_enc_main:resid <- $r0
	.loc	1 866 3 is_stmt 1               @ g723_enc/g723_enc.c:866:3
	cmp	r0, #0
	.loc	1 868 1                         @ g723_enc/g723_enc.c:868:1
	popeq	{r4, r5, r6, r10, r11, lr}
	bxeq	lr
.Ltmp335:
.LBB16_3:                               @ %while.body
                                        @   in Loop: Header=BB16_2 Depth=1
	@DEBUG_VALUE: g723_enc_main:resid <- $r0
	@DEBUG_VALUE: g723_enc_main:enc_bits <- 3
	@DEBUG_VALUE: g723_enc_main:in_coding <- 2
	.loc	1 867 13                        @ g723_enc/g723_enc.c:867:13
	mov	r0, #0
.Ltmp336:
	mov	r1, #3
	bl	g723_enc_pack_output
.Ltmp337:
	@DEBUG_VALUE: g723_enc_main:resid <- $r0
	.loc	1 0 13 is_stmt 0                @ g723_enc/g723_enc.c:0:13
	b	.LBB16_2
.Ltmp338:
	.p2align	2
@ %bb.4:
.LCPI16_0:
	.long	g723_enc_INPUT
.LCPI16_1:
	.long	g723_enc_state
.Lfunc_end16:
	.size	g723_enc_main, .Lfunc_end16-g723_enc_main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	main                            @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                              @ @main
main:
.Lfunc_begin17:
	.loc	1 872 0 is_stmt 1               @ g723_enc/g723_enc.c:872:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp339:
	.loc	1 873 3 prologue_end            @ g723_enc/g723_enc.c:873:3
	bl	g723_enc_init
	.loc	1 874 3                         @ g723_enc/g723_enc.c:874:3
	bl	g723_enc_main
	.loc	1 876 12                        @ g723_enc/g723_enc.c:876:12
	bl	g723_enc_return
	.loc	1 876 3 is_stmt 0               @ g723_enc/g723_enc.c:876:3
	pop	{r11, lr}
	bx	lr
.Ltmp340:
.Lfunc_end17:
	.size	main, .Lfunc_end17-main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__absvdi2                       @ -- Begin function __absvdi2
	.p2align	2
	.type	__absvdi2,%function
	.code	32                              @ @__absvdi2
__absvdi2:
.Lfunc_begin18:
	.file	2 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../absvdi2.c" md5 0xf0fa545ed84eab29322431dd903e1bd2
	.loc	2 23 0 is_stmt 1                @ ../absvdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	2 25 11 prologue_end            @ ../absvdi2.c:25:11
	eor	r2, r1, #-2147483648
	orrs	r2, r0, r2
	.loc	2 25 9 is_stmt 0                @ ../absvdi2.c:25:9
	beq	.LBB18_2
@ %bb.1:                                @ %if.end
	.loc	2 28 20 is_stmt 1               @ ../absvdi2.c:28:20
	adds	r0, r0, r1, asr #31
	adc	r2, r1, r1, asr #31
	eor	r0, r0, r1, asr #31
	eor	r1, r2, r1, asr #31
	.loc	2 28 5 is_stmt 0                @ ../absvdi2.c:28:5
	bx	lr
.LBB18_2:                               @ %if.then
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	.loc	2 26 9 is_stmt 1                @ ../absvdi2.c:26:9
	ldr	r0, .LCPI18_0
	ldr	r2, .LCPI18_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.Ltmp341:
	.p2align	2
@ %bb.3:
	.loc	2 0 9 is_stmt 0                 @ ../absvdi2.c:0:9
.LCPI18_0:
	.long	.L.str
.LCPI18_1:
	.long	.L__func__.__absvdi2
.Lfunc_end18:
	.size	__absvdi2, .Lfunc_end18-__absvdi2
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
.Lfunc_begin19:
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
.Lfunc_end19:
	.size	compilerrt_abort_impl, .Lfunc_end19-compilerrt_abort_impl
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__absvsi2                       @ -- Begin function __absvsi2
	.p2align	2
	.type	__absvsi2,%function
	.code	32                              @ @__absvsi2
__absvsi2:
.Lfunc_begin20:
	.file	3 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../absvsi2.c" md5 0x4c623fefc2c7ed3929c6e73514b667d1
	.loc	3 23 0 is_stmt 1                @ ../absvsi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	3 25 9 prologue_end             @ ../absvsi2.c:25:9
	cmp	r0, #-2147483648
	beq	.LBB20_2
@ %bb.1:                                @ %if.end
	.loc	3 28 20                         @ ../absvsi2.c:28:20
	cmp	r0, #0
	rsbmi	r0, r0, #0
	.loc	3 28 5 is_stmt 0                @ ../absvsi2.c:28:5
	bx	lr
.LBB20_2:                               @ %if.then
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	.loc	3 26 9 is_stmt 1                @ ../absvsi2.c:26:9
	ldr	r0, .LCPI20_0
	ldr	r2, .LCPI20_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.Ltmp342:
	.p2align	2
@ %bb.3:
	.loc	3 0 9 is_stmt 0                 @ ../absvsi2.c:0:9
.LCPI20_0:
	.long	.L.str.1
.LCPI20_1:
	.long	.L__func__.__absvsi2
.Lfunc_end20:
	.size	__absvsi2, .Lfunc_end20-__absvsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__addvdi3                       @ -- Begin function __addvdi3
	.p2align	2
	.type	__addvdi3,%function
	.code	32                              @ @__addvdi3
__addvdi3:
.Lfunc_begin21:
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
.Ltmp343:
	.loc	4 24 27 prologue_end            @ ../addvdi3.c:24:27
	adds	r0, r0, r2
	mov	r12, r1
	adc	r1, r1, r3
	.loc	4 25 9                          @ ../addvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB21_3
@ %bb.1:                                @ %if.then
	.loc	4 27 15                         @ ../addvdi3.c:27:15
	subs	r2, r0, lr
	sbcs	r2, r1, r12
	.loc	4 27 13 is_stmt 0               @ ../addvdi3.c:27:13
	bge	.LBB21_4
@ %bb.2:                                @ %if.then2
	.loc	4 28 13 is_stmt 1               @ ../addvdi3.c:28:13
	ldr	r0, .LCPI21_0
	ldr	r2, .LCPI21_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB21_3:                               @ %if.else
	.loc	4 32 15                         @ ../addvdi3.c:32:15
	subs	r2, r0, lr
	sbcs	r2, r1, r12
	.loc	4 32 13 is_stmt 0               @ ../addvdi3.c:32:13
	bge	.LBB21_5
.LBB21_4:                               @ %if.end6
	.loc	4 35 5 is_stmt 1                @ ../addvdi3.c:35:5
	pop	{r11, lr}
	bx	lr
.LBB21_5:                               @ %if.then4
	.loc	4 33 13                         @ ../addvdi3.c:33:13
	ldr	r0, .LCPI21_0
	ldr	r2, .LCPI21_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.Ltmp344:
	.p2align	2
@ %bb.6:
	.loc	4 0 13 is_stmt 0                @ ../addvdi3.c:0:13
.LCPI21_0:
	.long	.L.str.2
.LCPI21_1:
	.long	.L__func__.__addvdi3
.Lfunc_end21:
	.size	__addvdi3, .Lfunc_end21-__addvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__addvsi3                       @ -- Begin function __addvsi3
	.p2align	2
	.type	__addvsi3,%function
	.code	32                              @ @__addvsi3
__addvsi3:
.Lfunc_begin22:
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
.Ltmp345:
	.loc	5 24 27 prologue_end            @ ../addvsi3.c:24:27
	add	r0, r0, r1
	.loc	5 25 9                          @ ../addvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB22_3
@ %bb.1:                                @ %if.then
	.loc	5 27 13                         @ ../addvsi3.c:27:13
	cmp	r0, r2
	bge	.LBB22_4
@ %bb.2:                                @ %if.then2
	.loc	5 28 13                         @ ../addvsi3.c:28:13
	ldr	r0, .LCPI22_0
	ldr	r2, .LCPI22_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB22_3:                               @ %if.else
	.loc	5 32 13                         @ ../addvsi3.c:32:13
	cmp	r0, r2
	bge	.LBB22_5
.LBB22_4:                               @ %if.end6
	.loc	5 35 5                          @ ../addvsi3.c:35:5
	pop	{r11, lr}
	bx	lr
.LBB22_5:                               @ %if.then4
	.loc	5 33 13                         @ ../addvsi3.c:33:13
	ldr	r0, .LCPI22_0
	ldr	r2, .LCPI22_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.Ltmp346:
	.p2align	2
@ %bb.6:
	.loc	5 0 13 is_stmt 0                @ ../addvsi3.c:0:13
.LCPI22_0:
	.long	.L.str.3
.LCPI22_1:
	.long	.L__func__.__addvsi3
.Lfunc_end22:
	.size	__addvsi3, .Lfunc_end22-__addvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ashldi3                       @ -- Begin function __ashldi3
	.p2align	2
	.type	__ashldi3,%function
	.code	32                              @ @__ashldi3
__ashldi3:
.Lfunc_begin23:
	.file	6 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ashldi3.c" md5 0xae5236ddcefaf3e5efc4feba69d334b1
	.loc	6 25 0 is_stmt 1                @ ../ashldi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp347:
	.loc	6 30 9 prologue_end             @ ../ashldi3.c:30:9
	tst	r2, #32
	.loc	6 29 15                         @ ../ashldi3.c:29:15
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	6 30 9                          @ ../ashldi3.c:30:9
	bne	.LBB23_3
@ %bb.1:                                @ %if.else
	.loc	6 37 13                         @ ../ashldi3.c:37:13
	cmp	r2, #0
	beq	.LBB23_5
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
	b	.LBB23_4
.LBB23_3:                               @ %if.then
	.loc	6 33 33                         @ ../ashldi3.c:33:33
	ldr	r1, [sp, #8]
	mov	r0, #0
	.loc	6 32 22                         @ ../ashldi3.c:32:22
	str	r0, [sp]
	.loc	6 33 43                         @ ../ashldi3.c:33:43
	sub	r0, r2, #32
	.loc	6 33 37 is_stmt 0               @ ../ashldi3.c:33:37
	lsl	r0, r1, r0
.LBB23_4:                               @ %if.end18
	.loc	6 0 0                           @ ../ashldi3.c:0:0
	str	r0, [sp, #4]
	.loc	6 42 19 is_stmt 1               @ ../ashldi3.c:42:19
	ldm	sp, {r0, r1}
.LBB23_5:                               @ %return
	.loc	6 43 1                          @ ../ashldi3.c:43:1
	add	sp, sp, #16
	bx	lr
.Ltmp348:
.Lfunc_end23:
	.size	__ashldi3, .Lfunc_end23-__ashldi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ashrdi3                       @ -- Begin function __ashrdi3
	.p2align	2
	.type	__ashrdi3,%function
	.code	32                              @ @__ashrdi3
__ashrdi3:
.Lfunc_begin24:
	.file	7 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ashrdi3.c" md5 0xdf60b7a82095e7d7b5c11e1095a5679a
	.loc	7 25 0                          @ ../ashrdi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp349:
	.loc	7 30 9 prologue_end             @ ../ashrdi3.c:30:9
	tst	r2, #32
	.loc	7 29 15                         @ ../ashrdi3.c:29:15
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	7 30 9                          @ ../ashrdi3.c:30:9
	bne	.LBB24_3
@ %bb.1:                                @ %if.else
	.loc	7 38 13                         @ ../ashrdi3.c:38:13
	cmp	r2, #0
	beq	.LBB24_5
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
	b	.LBB24_4
.LBB24_3:                               @ %if.then
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
.LBB24_4:                               @ %if.end21
	.loc	7 0 0                           @ ../ashrdi3.c:0:0
	str	r0, [sp]
	.loc	7 43 19 is_stmt 1               @ ../ashrdi3.c:43:19
	ldm	sp, {r0, r1}
.LBB24_5:                               @ %return
	.loc	7 44 1                          @ ../ashrdi3.c:44:1
	add	sp, sp, #16
	bx	lr
.Ltmp350:
.Lfunc_end24:
	.size	__ashrdi3, .Lfunc_end24-__ashrdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__clzdi2                        @ -- Begin function __clzdi2
	.p2align	2
	.type	__clzdi2,%function
	.code	32                              @ @__clzdi2
__clzdi2:
.Lfunc_begin25:
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
.Ltmp351:
	.loc	8 27 42 prologue_end            @ ../clzdi2.c:27:42
	cmp	r1, #0
	.loc	8 25 11                         @ ../clzdi2.c:25:11
	stm	sp, {r0, r1}
	mov	r4, r1
	.loc	8 27 42                         @ ../clzdi2.c:27:42
	movne	r0, r1
	.loc	8 27 12 is_stmt 0               @ ../clzdi2.c:27:12
	cmp	r0, #0
	beq	.LBB25_2
@ %bb.1:                                @ %cond.false
	bl	__clzsi2
	b	.LBB25_3
.LBB25_2:
	.loc	8 0 12                          @ ../clzdi2.c:0:12
	mov	r0, #32
.LBB25_3:                               @ %cond.end
	.loc	8 27 59                         @ ../clzdi2.c:27:59
	cmp	r4, #0
	addeq	r0, r0, #32
	.loc	8 27 5                          @ ../clzdi2.c:27:5
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp352:
.Lfunc_end25:
	.size	__clzdi2, .Lfunc_end25-__clzdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__clzsi2                        @ -- Begin function __clzsi2
	.p2align	2
	.type	__clzsi2,%function
	.code	32                              @ @__clzsi2
__clzsi2:
.Lfunc_begin26:
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
.Ltmp353:
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
.Ltmp354:
.Lfunc_end26:
	.size	__clzsi2, .Lfunc_end26-__clzsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__cmpdi2                        @ -- Begin function __cmpdi2
	.p2align	2
	.type	__cmpdi2,%function
	.code	32                              @ @__cmpdi2
__cmpdi2:
.Lfunc_begin27:
	.file	10 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../cmpdi2.c" md5 0x79ec8a4b383c8374d228cd0869637319
	.loc	10 24 0 is_stmt 1               @ ../cmpdi2.c:24:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp355:
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
	blt	.LBB27_4
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
.LBB27_2:                               @ %if.end10
	.loc	10 33 23                        @ ../cmpdi2.c:33:23
	ldr	r1, [sp]
	.loc	10 33 13 is_stmt 0              @ ../cmpdi2.c:33:13
	ldr	r2, [sp, #8]
	.loc	10 33 9                         @ ../cmpdi2.c:33:9
	cmp	r2, r1
	blo	.LBB27_4
@ %bb.3:                                @ %if.end16
	.loc	10 35 23 is_stmt 1              @ ../cmpdi2.c:35:23
	ldr	r0, [sp]
	.loc	10 35 13 is_stmt 0              @ ../cmpdi2.c:35:13
	ldr	r1, [sp, #8]
	.loc	10 35 9                         @ ../cmpdi2.c:35:9
	cmp	r1, r0
	mov	r0, #2
	movls	r0, #1
.LBB27_4:                               @ %return
	.loc	10 38 1 is_stmt 1               @ ../cmpdi2.c:38:1
	add	sp, sp, #16
	bx	lr
.Ltmp356:
.Lfunc_end27:
	.size	__cmpdi2, .Lfunc_end27-__cmpdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__aeabi_lcmp                    @ -- Begin function __aeabi_lcmp
	.p2align	2
	.type	__aeabi_lcmp,%function
	.code	32                              @ @__aeabi_lcmp
__aeabi_lcmp:
.Lfunc_begin28:
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
.Ltmp357:
	.loc	10 48 9 prologue_end            @ ../cmpdi2.c:48:9
	bl	__cmpdi2
	.loc	10 48 24 is_stmt 0              @ ../cmpdi2.c:48:24
	sub	r0, r0, #1
	.loc	10 48 2                         @ ../cmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp358:
.Lfunc_end28:
	.size	__aeabi_lcmp, .Lfunc_end28-__aeabi_lcmp
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ctzdi2                        @ -- Begin function __ctzdi2
	.p2align	2
	.type	__ctzdi2,%function
	.code	32                              @ @__ctzdi2
__ctzdi2:
.Lfunc_begin29:
	.file	11 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ctzdi2.c" md5 0x0415a3f61808ca646548bc24b48a844a
	.loc	11 23 0 is_stmt 1               @ ../ctzdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
.Ltmp359:
	.loc	11 27 41 prologue_end           @ ../ctzdi2.c:27:41
	cmp	r0, #0
	.loc	11 25 11                        @ ../ctzdi2.c:25:11
	stm	sp, {r0, r1}
	.loc	11 27 41                        @ ../ctzdi2.c:27:41
	movne	r1, r0
	.loc	11 27 12 is_stmt 0              @ ../ctzdi2.c:27:12
	cmp	r1, #0
	beq	.LBB29_2
@ %bb.1:                                @ %cond.false
	sub	r2, r1, #1
	bic	r1, r2, r1
	ldr	r2, .LCPI29_0
	and	r2, r2, r1, lsr #1
	sub	r1, r1, r2
	ldr	r2, .LCPI29_1
	and	r3, r2, r1, lsr #2
	and	r1, r1, r2
	ldr	r2, .LCPI29_2
	add	r1, r1, r3
	add	r1, r1, r1, lsr #4
	and	r1, r1, r2
	ldr	r2, .LCPI29_3
	mul	r3, r1, r2
	lsr	r1, r3, #24
	b	.LBB29_3
.LBB29_2:
	.loc	11 0 12                         @ ../ctzdi2.c:0:12
	mov	r1, #32
.LBB29_3:                               @ %cond.end
	.loc	11 27 59                        @ ../ctzdi2.c:27:59
	cmp	r0, #0
	addeq	r1, r1, #32
	.loc	11 27 5                         @ ../ctzdi2.c:27:5
	mov	r0, r1
	add	sp, sp, #8
	bx	lr
.Ltmp360:
	.p2align	2
@ %bb.4:
	.loc	11 0 5                          @ ../ctzdi2.c:0:5
.LCPI29_0:
	.long	1431655765                      @ 0x55555555
.LCPI29_1:
	.long	858993459                       @ 0x33333333
.LCPI29_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI29_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end29:
	.size	__ctzdi2, .Lfunc_end29-__ctzdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ctzsi2                        @ -- Begin function __ctzsi2
	.p2align	2
	.type	__ctzsi2,%function
	.code	32                              @ @__ctzsi2
__ctzsi2:
.Lfunc_begin30:
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
.Ltmp361:
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
.Ltmp362:
.Lfunc_end30:
	.size	__ctzsi2, .Lfunc_end30-__ctzsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divdi3                        @ -- Begin function __divdi3
	.p2align	2
	.type	__divdi3,%function
	.code	32                              @ @__divdi3
__divdi3:
.Lfunc_begin31:
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
.Ltmp363:
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
.Ltmp364:
.Lfunc_end31:
	.size	__divdi3, .Lfunc_end31-__divdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivmoddi4                    @ -- Begin function __udivmoddi4
	.p2align	2
	.type	__udivmoddi4,%function
	.code	32                              @ @__udivmoddi4
__udivmoddi4:
.Lfunc_begin32:
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
.Ltmp365:
	.loc	14 36 9 prologue_end            @ ../udivmoddi4.c:36:9
	cmp	r1, #0
	.loc	14 29 11                        @ ../udivmoddi4.c:29:11
	str	r1, [sp, #28]
	str	r0, [sp, #24]
	.loc	14 31 11                        @ ../udivmoddi4.c:31:11
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	.loc	14 36 9                         @ ../udivmoddi4.c:36:9
	beq	.LBB32_9
@ %bb.1:                                @ %if.end23
	.loc	14 57 13                        @ ../udivmoddi4.c:57:13
	ldr	r0, [sp, #16]
	.loc	14 57 9 is_stmt 0               @ ../udivmoddi4.c:57:9
	cmp	r0, #0
	beq	.LBB32_13
@ %bb.2:                                @ %if.else
	.loc	14 121 17 is_stmt 1             @ ../udivmoddi4.c:121:17
	ldr	r0, [sp, #20]
	.loc	14 121 13 is_stmt 0             @ ../udivmoddi4.c:121:13
	cmp	r0, #0
	beq	.LBB32_22
@ %bb.3:                                @ %if.else263
	.loc	14 176 36 is_stmt 1             @ ../udivmoddi4.c:176:36
	ldr	r0, [sp, #20]
	mov	r4, #32
	mov	r5, #32
	.loc	14 176 18 is_stmt 0             @ ../udivmoddi4.c:176:18
	cmp	r0, #0
	beq	.LBB32_5
@ %bb.4:                                @ %cond.false29
	bl	__clzsi2
	mov	r5, r0
.LBB32_5:                               @ %cond.end30
	.loc	14 176 62                       @ ../udivmoddi4.c:176:62
	ldr	r0, [sp, #28]
	.loc	14 176 44                       @ ../udivmoddi4.c:176:44
	cmp	r0, #0
	beq	.LBB32_7
@ %bb.6:                                @ %cond.false33
	bl	__clzsi2
	mov	r4, r0
.LBB32_7:                               @ %cond.end34
	.loc	14 176 42                       @ ../udivmoddi4.c:176:42
	sub	r1, r5, r4
	.loc	14 178 17 is_stmt 1             @ ../udivmoddi4.c:178:17
	cmp	r1, #32
	blo	.LBB32_30
.LBB32_8:                               @ %if.then111
	.loc	14 0 0 is_stmt 0                @ ../udivmoddi4.c:0:0
	cmp	r8, #0
	ldrne	r0, [sp, #24]
	ldrne	r1, [sp, #28]
	stmne	r8, {r0, r1}
	b	.LBB32_12
.LBB32_9:                               @ %if.then
	.loc	14 38 17 is_stmt 1              @ ../udivmoddi4.c:38:17
	ldr	r0, [sp, #20]
	.loc	14 38 13 is_stmt 0              @ ../udivmoddi4.c:38:13
	cmp	r0, #0
	beq	.LBB32_27
@ %bb.10:                               @ %if.end16
	.loc	14 52 13 is_stmt 1              @ ../udivmoddi4.c:52:13
	cmp	r8, #0
	beq	.LBB32_12
@ %bb.11:                               @ %if.then18
	.loc	14 53 24                        @ ../udivmoddi4.c:53:24
	ldr	r1, [sp, #24]
	mov	r0, #0
	.loc	14 53 18 is_stmt 0              @ ../udivmoddi4.c:53:18
	str	r0, [r8, #4]
	str	r1, [r8]
	mov	r1, #0
	b	.LBB32_49
.LBB32_12:
	.loc	14 0 18                         @ ../udivmoddi4.c:0:18
	mov	r0, #0
	mov	r1, #0
	b	.LBB32_49
.LBB32_13:                              @ %if.then28
	.loc	14 59 17 is_stmt 1              @ ../udivmoddi4.c:59:17
	ldr	r0, [sp, #20]
	.loc	14 59 13 is_stmt 0              @ ../udivmoddi4.c:59:13
	cmp	r0, #0
	beq	.LBB32_32
@ %bb.14:                               @ %if.end49
	.loc	14 70 17 is_stmt 1              @ ../udivmoddi4.c:70:17
	ldr	r0, [sp, #24]
	.loc	14 70 13 is_stmt 0              @ ../udivmoddi4.c:70:13
	cmp	r0, #0
	beq	.LBB32_50
@ %bb.15:                               @ %if.end74
	.loc	14 88 18 is_stmt 1              @ ../udivmoddi4.c:88:18
	ldr	r0, [sp, #20]
	.loc	14 88 35 is_stmt 0              @ ../udivmoddi4.c:88:35
	sub	r1, r0, #1
	.loc	14 88 13                        @ ../udivmoddi4.c:88:13
	tst	r0, r1
	beq	.LBB32_57
@ %bb.16:                               @ %if.end103
	.loc	14 102 32 is_stmt 1             @ ../udivmoddi4.c:102:32
	ldr	r0, [sp, #20]
	mov	r4, #32
	mov	r5, #32
	.loc	14 102 14 is_stmt 0             @ ../udivmoddi4.c:102:14
	cmp	r0, #0
	beq	.LBB32_18
@ %bb.17:                               @ %cond.false6
	bl	__clzsi2
	mov	r5, r0
.LBB32_18:                              @ %cond.end7
	.loc	14 102 58                       @ ../udivmoddi4.c:102:58
	ldr	r0, [sp, #28]
	.loc	14 102 40                       @ ../udivmoddi4.c:102:40
	cmp	r0, #0
	beq	.LBB32_20
@ %bb.19:                               @ %cond.false10
	bl	__clzsi2
	mov	r4, r0
.LBB32_20:                              @ %cond.end11
	.loc	14 102 38                       @ ../udivmoddi4.c:102:38
	sub	r0, r5, r4
	.loc	14 104 13 is_stmt 1             @ ../udivmoddi4.c:104:13
	cmp	r0, #31
	bhs	.LBB32_8
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
	b	.LBB32_44
.LBB32_22:                              @ %if.then142
	.loc	14 127 22 is_stmt 1             @ ../udivmoddi4.c:127:22
	ldr	r0, [sp, #16]
	.loc	14 127 17 is_stmt 0             @ ../udivmoddi4.c:127:17
	sub	r1, r0, #1
	tst	r0, r1
	bne	.LBB32_37
@ %bb.23:                               @ %if.then151
	.loc	14 129 21 is_stmt 1             @ ../udivmoddi4.c:129:21
	cmp	r8, #0
	beq	.LBB32_25
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
.LBB32_25:                              @ %if.end161
	.loc	14 131 25 is_stmt 1             @ ../udivmoddi4.c:131:25
	ldr	r0, [sp, #16]
	.loc	14 131 21 is_stmt 0             @ ../udivmoddi4.c:131:21
	cmp	r0, #1
	bne	.LBB32_53
@ %bb.26:                               @ %if.then166
	.loc	14 132 30 is_stmt 1             @ ../udivmoddi4.c:132:30
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	b	.LBB32_49
.LBB32_27:                              @ %if.then5
	.loc	14 44 17                        @ ../udivmoddi4.c:44:17
	cmp	r8, #0
	beq	.LBB32_29
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
.LBB32_29:                              @ %if.end
	.loc	14 46 24 is_stmt 1              @ ../udivmoddi4.c:46:24
	ldr	r0, [sp, #24]
	b	.LBB32_35
.LBB32_30:                              @ %if.end276
	.loc	14 184 13                       @ ../udivmoddi4.c:184:13
	add	r12, r1, #1
	mov	r2, #0
	.loc	14 188 17                       @ ../udivmoddi4.c:188:17
	cmp	r12, #32
	.loc	14 187 21                       @ ../udivmoddi4.c:187:21
	str	r2, [sp, #8]
	.loc	14 188 17                       @ ../udivmoddi4.c:188:17
	bne	.LBB32_43
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
	b	.LBB32_46
.LBB32_32:                              @ %if.then33
	.loc	14 65 17                        @ ../udivmoddi4.c:65:17
	cmp	r8, #0
	beq	.LBB32_34
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
.LBB32_34:                              @ %if.end42
	.loc	14 67 24 is_stmt 1              @ ../udivmoddi4.c:67:24
	ldr	r0, [sp, #28]
.LBB32_35:                              @ %return
	.loc	14 0 0 is_stmt 0                @ ../udivmoddi4.c:0:0
	ldr	r1, [sp, #16]
.LBB32_36:                              @ %return
	bl	__udivsi3
	mov	r1, #0
	b	.LBB32_49
.LBB32_37:                              @ %if.end187
	.loc	14 142 55 is_stmt 1             @ ../udivmoddi4.c:142:55
	ldr	r1, [sp, #16]
	mov	r4, #32
	mov	r0, #32
	.loc	14 142 37 is_stmt 0             @ ../udivmoddi4.c:142:37
	cmp	r1, #0
	beq	.LBB32_39
@ %bb.38:                               @ %cond.false21
	mov	r0, r1
	bl	__clzsi2
.LBB32_39:                              @ %cond.end22
	.loc	14 142 35                       @ ../udivmoddi4.c:142:35
	add	r5, r0, #33
	.loc	14 142 80                       @ ../udivmoddi4.c:142:80
	ldr	r0, [sp, #28]
	.loc	14 142 62                       @ ../udivmoddi4.c:142:62
	cmp	r0, #0
	beq	.LBB32_41
@ %bb.40:                               @ %cond.false25
	bl	__clzsi2
	mov	r4, r0
.LBB32_41:                              @ %cond.end26
	.loc	14 142 60                       @ ../udivmoddi4.c:142:60
	sub	r12, r5, r4
	mov	r1, #0
	.loc	14 147 17 is_stmt 1             @ ../udivmoddi4.c:147:17
	cmp	r12, #32
	bne	.LBB32_55
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
	b	.LBB32_46
.LBB32_43:                              @ %if.else293
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
.LBB32_44:                              @ %if.end317
	.loc	14 0 0                          @ ../udivmoddi4.c:0:0
	lsl	r1, r3, r1
	orr	r1, r1, r2, lsr r12
.LBB32_45:                              @ %if.end317
	str	r1, [sp]
.LBB32_46:                              @ %if.end317
	mov	r1, #0
	.loc	14 209 5 is_stmt 1              @ ../udivmoddi4.c:209:5
	cmp	r12, #0
	beq	.LBB32_48
.LBB32_47:                              @ %for.body
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
	bne	.LBB32_47
.LBB32_48:                              @ %for.end
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
.LBB32_49:                              @ %return
	.loc	14 231 1                        @ ../udivmoddi4.c:231:1
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
	bx	lr
.LBB32_50:                              @ %if.then54
	.loc	14 76 17                        @ ../udivmoddi4.c:76:17
	cmp	r8, #0
	beq	.LBB32_52
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
.LBB32_52:                              @ %if.end67
	.loc	14 82 24                        @ ../udivmoddi4.c:82:24
	ldr	r0, [sp, #28]
	.loc	14 82 35 is_stmt 0              @ ../udivmoddi4.c:82:35
	ldr	r1, [sp, #20]
	b	.LBB32_36
.LBB32_53:                              @ %if.end168
	.loc	14 133 40 is_stmt 1             @ ../udivmoddi4.c:133:40
	ldr	r0, [sp, #16]
	.loc	14 133 22 is_stmt 0             @ ../udivmoddi4.c:133:22
	cmp	r0, #0
	beq	.LBB32_62
@ %bb.54:                               @ %cond.false16
	sub	r1, r0, #1
	bic	r0, r1, r0
	ldr	r1, .LCPI32_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r1, .LCPI32_1
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	ldr	r1, .LCPI32_2
	add	r0, r0, r2
	add	r0, r0, r0, lsr #4
	and	r0, r0, r1
	ldr	r1, .LCPI32_3
	mul	r2, r0, r1
	lsr	r0, r2, #24
	b	.LBB32_63
.LBB32_55:                              @ %if.else208
	.loc	14 154 22 is_stmt 1             @ ../udivmoddi4.c:154:22
	cmp	r12, #31
	bhi	.LBB32_61
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
	b	.LBB32_45
.LBB32_57:                              @ %if.then81
	.loc	14 90 17                        @ ../udivmoddi4.c:90:17
	cmp	r8, #0
	beq	.LBB32_59
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
.LBB32_59:                              @ %if.end97
	.loc	14 96 50                        @ ../udivmoddi4.c:96:50
	ldr	r1, [sp, #20]
	.loc	14 96 24 is_stmt 0              @ ../udivmoddi4.c:96:24
	ldr	r0, [sp, #28]
	.loc	14 96 32                        @ ../udivmoddi4.c:96:32
	cmp	r1, #0
	beq	.LBB32_64
@ %bb.60:                               @ %cond.false
	sub	r2, r1, #1
	bic	r1, r2, r1
	ldr	r2, .LCPI32_0
	and	r2, r2, r1, lsr #1
	sub	r1, r1, r2
	ldr	r2, .LCPI32_1
	and	r3, r2, r1, lsr #2
	and	r1, r1, r2
	ldr	r2, .LCPI32_2
	add	r1, r1, r3
	add	r1, r1, r1, lsr #4
	and	r1, r1, r2
	ldr	r2, .LCPI32_3
	mul	r3, r1, r2
	lsr	r1, r3, #24
	b	.LBB32_65
.LBB32_61:                              @ %if.else235
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
	b	.LBB32_46
.LBB32_62:
	.loc	14 0 26 is_stmt 0               @ ../udivmoddi4.c:0:26
	mov	r0, #32
.LBB32_63:                              @ %cond.end17
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
	b	.LBB32_49
.LBB32_64:
	.loc	14 0 25 is_stmt 0               @ ../udivmoddi4.c:0:25
	mov	r1, #32
.LBB32_65:                              @ %cond.end
	.loc	14 96 29 is_stmt 1              @ ../udivmoddi4.c:96:29
	lsr	r0, r0, r1
	mov	r1, #0
	b	.LBB32_49
.Ltmp366:
	.p2align	2
@ %bb.66:
	.loc	14 0 29 is_stmt 0               @ ../udivmoddi4.c:0:29
.LCPI32_0:
	.long	1431655765                      @ 0x55555555
.LCPI32_1:
	.long	858993459                       @ 0x33333333
.LCPI32_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI32_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end32:
	.size	__udivmoddi4, .Lfunc_end32-__udivmoddi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divmoddi4                     @ -- Begin function __divmoddi4
	.p2align	2
	.type	__divmoddi4,%function
	.code	32                              @ @__divmoddi4
__divmoddi4:
.Lfunc_begin33:
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
.Ltmp367:
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
.Ltmp368:
.Lfunc_end33:
	.size	__divmoddi4, .Lfunc_end33-__divmoddi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divmodsi4                     @ -- Begin function __divmodsi4
	.p2align	2
	.type	__divmodsi4,%function
	.code	32                              @ @__divmodsi4
__divmodsi4:
.Lfunc_begin34:
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
.Ltmp369:
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
.Ltmp370:
.Lfunc_end34:
	.size	__divmodsi4, .Lfunc_end34-__divmodsi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divsi3                        @ -- Begin function __divsi3
	.p2align	2
	.type	__divsi3,%function
	.code	32                              @ @__divsi3
__divsi3:
.Lfunc_begin35:
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
.Ltmp371:
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
.Ltmp372:
.Lfunc_end35:
	.size	__divsi3, .Lfunc_end35-__divsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ffsdi2                        @ -- Begin function __ffsdi2
	.p2align	2
	.type	__ffsdi2,%function
	.code	32                              @ @__ffsdi2
__ffsdi2:
.Lfunc_begin36:
	.file	18 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ffsdi2.c" md5 0x4b800e1cad35a0bc99971441032171a3
	.loc	18 23 0 is_stmt 1               @ ../ffsdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
.Ltmp373:
	.loc	18 26 9 prologue_end            @ ../ffsdi2.c:26:9
	cmp	r0, #0
	.loc	18 25 11                        @ ../ffsdi2.c:25:11
	stm	sp, {r0, r1}
	.loc	18 26 9                         @ ../ffsdi2.c:26:9
	beq	.LBB36_3
@ %bb.1:                                @ %if.end6
	.loc	18 32 30                        @ ../ffsdi2.c:32:30
	ldr	r0, [sp]
	.loc	18 32 12 is_stmt 0              @ ../ffsdi2.c:32:12
	cmp	r0, #0
	beq	.LBB36_6
@ %bb.2:                                @ %cond.false2
	sub	r1, r0, #1
	bic	r0, r1, r0
	ldr	r1, .LCPI36_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r1, .LCPI36_1
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	ldr	r1, .LCPI36_2
	add	r0, r0, r2
	add	r0, r0, r0, lsr #4
	and	r0, r0, r1
	ldr	r1, .LCPI36_3
	mul	r2, r0, r1
	lsr	r0, r2, #24
	b	.LBB36_7
.LBB36_3:                               @ %if.then
	.loc	18 28 17 is_stmt 1              @ ../ffsdi2.c:28:17
	ldr	r0, [sp, #4]
	.loc	18 28 13 is_stmt 0              @ ../ffsdi2.c:28:13
	cmp	r0, #0
	moveq	r0, #0
	.loc	18 33 1 is_stmt 1               @ ../ffsdi2.c:33:1
	addeq	sp, sp, #8
	bxeq	lr
.LBB36_4:                               @ %if.end
	.loc	18 30 34                        @ ../ffsdi2.c:30:34
	ldr	r0, [sp, #4]
	.loc	18 30 16 is_stmt 0              @ ../ffsdi2.c:30:16
	cmp	r0, #0
	beq	.LBB36_8
@ %bb.5:                                @ %cond.false
	sub	r1, r0, #1
	bic	r0, r1, r0
	ldr	r1, .LCPI36_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r1, .LCPI36_1
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	ldr	r1, .LCPI36_2
	add	r0, r0, r2
	add	r0, r0, r0, lsr #4
	and	r0, r0, r1
	ldr	r1, .LCPI36_3
	mul	r2, r0, r1
	lsr	r0, r2, #24
	b	.LBB36_9
.LBB36_6:
	.loc	18 0 16                         @ ../ffsdi2.c:0:16
	mov	r0, #32
.LBB36_7:                               @ %cond.end3
	.loc	18 32 35 is_stmt 1              @ ../ffsdi2.c:32:35
	add	r0, r0, #1
	.loc	18 33 1                         @ ../ffsdi2.c:33:1
	add	sp, sp, #8
	bx	lr
.LBB36_8:
	.loc	18 0 1 is_stmt 0                @ ../ffsdi2.c:0:1
	mov	r0, #32
.LBB36_9:
	.loc	18 30 40 is_stmt 1              @ ../ffsdi2.c:30:40
	add	r0, r0, #33
	.loc	18 33 1                         @ ../ffsdi2.c:33:1
	add	sp, sp, #8
	bx	lr
.Ltmp374:
	.p2align	2
@ %bb.10:
	.loc	18 0 1 is_stmt 0                @ ../ffsdi2.c:0:1
.LCPI36_0:
	.long	1431655765                      @ 0x55555555
.LCPI36_1:
	.long	858993459                       @ 0x33333333
.LCPI36_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI36_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end36:
	.size	__ffsdi2, .Lfunc_end36-__ffsdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ffssi2                        @ -- Begin function __ffssi2
	.p2align	2
	.type	__ffssi2,%function
	.code	32                              @ @__ffssi2
__ffssi2:
.Lfunc_begin37:
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
.LBB37_1:                               @ %if.end
	.loc	19 28 12                        @ ../ffssi2.c:28:12
	sub	r1, r0, #1
	bic	r0, r1, r0
	ldr	r1, .LCPI37_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r1, .LCPI37_1
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	ldr	r1, .LCPI37_2
	add	r0, r0, r2
	add	r0, r0, r0, lsr #4
	and	r0, r0, r1
	ldr	r1, .LCPI37_3
	mul	r2, r0, r1
	mov	r0, #1
	.loc	19 28 29 is_stmt 0              @ ../ffssi2.c:28:29
	add	r0, r0, r2, lsr #24
	.loc	19 29 1 is_stmt 1               @ ../ffssi2.c:29:1
	bx	lr
.Ltmp375:
	.p2align	2
@ %bb.2:
	.loc	19 0 1 is_stmt 0                @ ../ffssi2.c:0:1
.LCPI37_0:
	.long	1431655765                      @ 0x55555555
.LCPI37_1:
	.long	858993459                       @ 0x33333333
.LCPI37_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI37_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end37:
	.size	__ffssi2, .Lfunc_end37-__ffssi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__lshrdi3                       @ -- Begin function __lshrdi3
	.p2align	2
	.type	__lshrdi3,%function
	.code	32                              @ @__lshrdi3
__lshrdi3:
.Lfunc_begin38:
	.file	20 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../lshrdi3.c" md5 0xc456e45323b3205c3b32d82b51570771
	.loc	20 25 0 is_stmt 1               @ ../lshrdi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp376:
	.loc	20 30 9 prologue_end            @ ../lshrdi3.c:30:9
	tst	r2, #32
	.loc	20 29 15                        @ ../lshrdi3.c:29:15
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	20 30 9                         @ ../lshrdi3.c:30:9
	bne	.LBB38_3
@ %bb.1:                                @ %if.else
	.loc	20 37 13                        @ ../lshrdi3.c:37:13
	cmp	r2, #0
	beq	.LBB38_5
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
	b	.LBB38_4
.LBB38_3:                               @ %if.then
	.loc	20 33 32 is_stmt 1              @ ../lshrdi3.c:33:32
	ldr	r1, [sp, #12]
	mov	r0, #0
	.loc	20 32 23                        @ ../lshrdi3.c:32:23
	str	r0, [sp, #4]
	.loc	20 33 43                        @ ../lshrdi3.c:33:43
	sub	r0, r2, #32
	.loc	20 33 37 is_stmt 0              @ ../lshrdi3.c:33:37
	lsr	r0, r1, r0
.LBB38_4:                               @ %if.end18
	.loc	20 0 0                          @ ../lshrdi3.c:0:0
	str	r0, [sp]
	.loc	20 42 19 is_stmt 1              @ ../lshrdi3.c:42:19
	ldm	sp, {r0, r1}
.LBB38_5:                               @ %return
	.loc	20 43 1                         @ ../lshrdi3.c:43:1
	add	sp, sp, #16
	bx	lr
.Ltmp377:
.Lfunc_end38:
	.size	__lshrdi3, .Lfunc_end38-__lshrdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__moddi3                        @ -- Begin function __moddi3
	.p2align	2
	.type	__moddi3,%function
	.code	32                              @ @__moddi3
__moddi3:
.Lfunc_begin39:
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
.Ltmp378:
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
.Ltmp379:
.Lfunc_end39:
	.size	__moddi3, .Lfunc_end39-__moddi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__modsi3                        @ -- Begin function __modsi3
	.p2align	2
	.type	__modsi3,%function
	.code	32                              @ @__modsi3
__modsi3:
.Lfunc_begin40:
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
.Ltmp380:
	.loc	22 22 16 prologue_end           @ ../modsi3.c:22:16
	bl	__divsi3
	.loc	22 22 31 is_stmt 0              @ ../modsi3.c:22:31
	mul	r1, r0, r4
	.loc	22 22 14                        @ ../modsi3.c:22:14
	sub	r0, r5, r1
	.loc	22 22 5                         @ ../modsi3.c:22:5
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp381:
.Lfunc_end40:
	.size	__modsi3, .Lfunc_end40-__modsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__mulvdi3                       @ -- Begin function __mulvdi3
	.p2align	2
	.type	__mulvdi3,%function
	.code	32                              @ @__mulvdi3
__mulvdi3:
.Lfunc_begin41:
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
.Ltmp382:
	.loc	23 27 11 prologue_end           @ ../mulvdi3.c:27:11
	eor	r0, r1, #-2147483648
	mov	r5, r3
	mov	r4, r2
	mov	r6, r1
	orrs	r0, r7, r0
	.loc	23 27 9 is_stmt 0               @ ../mulvdi3.c:27:9
	bne	.LBB41_3
@ %bb.1:                                @ %if.then
	.loc	23 29 15 is_stmt 1              @ ../mulvdi3.c:29:15
	orrs	r0, r4, r5
	.loc	23 29 25 is_stmt 0              @ ../mulvdi3.c:29:25
	eorne	r0, r4, #1
	orrsne	r0, r0, r5
	beq	.LBB41_12
@ %bb.2:                                @ %if.end
	.loc	23 31 9 is_stmt 1               @ ../mulvdi3.c:31:9
	ldr	r0, .LCPI41_0
	ldr	r2, .LCPI41_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB41_3:                               @ %if.end4
	.loc	23 0 9 is_stmt 0                @ ../mulvdi3.c:0:9
	mov	r0, #-2147483648
	.loc	23 33 11 is_stmt 1              @ ../mulvdi3.c:33:11
	eor	r0, r5, r0
	orrs	r0, r4, r0
	.loc	23 33 9 is_stmt 0               @ ../mulvdi3.c:33:9
	bne	.LBB41_6
@ %bb.4:                                @ %if.then6
	.loc	23 35 15 is_stmt 1              @ ../mulvdi3.c:35:15
	orrs	r0, r7, r6
	.loc	23 35 25 is_stmt 0              @ ../mulvdi3.c:35:25
	eorne	r0, r7, #1
	orrsne	r0, r0, r6
	beq	.LBB41_12
@ %bb.5:                                @ %if.end12
	.loc	23 37 9 is_stmt 1               @ ../mulvdi3.c:37:9
	ldr	r0, .LCPI41_0
	ldr	r2, .LCPI41_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB41_6:                               @ %if.end13
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
	blt	.LBB41_12
@ %bb.7:                                @ %lor.lhs.false18
	.loc	23 43 28                        @ ../mulvdi3.c:43:28
	subs	r0, r2, #2
	sbcs	r0, r3, #0
	.loc	23 43 9                         @ ../mulvdi3.c:43:9
	blt	.LBB41_12
@ %bb.8:                                @ %if.end22
	.loc	23 0 0                          @ ../mulvdi3.c:0:0
	asr	r0, r5, #31
	asr	r1, r6, #31
	.loc	23 45 12 is_stmt 1              @ ../mulvdi3.c:45:12
	eor	r0, r1, r0
	orrs	r0, r0, r0
	.loc	23 45 9 is_stmt 0               @ ../mulvdi3.c:45:9
	bne	.LBB41_11
@ %bb.9:                                @ %if.then24
	.loc	23 47 25 is_stmt 1              @ ../mulvdi3.c:47:25
	mvn	r0, #0
	mvn	r1, #-2147483648
	bl	__divdi3
	.loc	23 47 19 is_stmt 0              @ ../mulvdi3.c:47:19
	subs	r0, r0, r9
	sbcs	r0, r1, r8
	.loc	23 47 13                        @ ../mulvdi3.c:47:13
	bge	.LBB41_12
@ %bb.10:                               @ %if.then26
	.loc	23 48 13 is_stmt 1              @ ../mulvdi3.c:48:13
	ldr	r0, .LCPI41_0
	ldr	r2, .LCPI41_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB41_11:                              @ %if.else
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
	blt	.LBB41_13
.LBB41_12:                              @ %return
	.loc	23 0 0                          @ ../mulvdi3.c:0:0
	umull	r0, r1, r7, r4
	mla	r2, r7, r5, r1
	mla	r1, r6, r4, r2
	.loc	23 56 1 is_stmt 1               @ ../mulvdi3.c:56:1
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	bx	lr
.LBB41_13:                              @ %if.then31
	.loc	23 53 13                        @ ../mulvdi3.c:53:13
	ldr	r0, .LCPI41_0
	ldr	r2, .LCPI41_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.Ltmp383:
	.p2align	2
@ %bb.14:
	.loc	23 0 13 is_stmt 0               @ ../mulvdi3.c:0:13
.LCPI41_0:
	.long	.L.str.8
.LCPI41_1:
	.long	.L__func__.__mulvdi3
.Lfunc_end41:
	.size	__mulvdi3, .Lfunc_end41-__mulvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__mulvsi3                       @ -- Begin function __mulvsi3
	.p2align	2
	.type	__mulvsi3,%function
	.code	32                              @ @__mulvsi3
__mulvsi3:
.Lfunc_begin42:
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
.Ltmp384:
	.loc	24 27 9 prologue_end            @ ../mulvsi3.c:27:9
	cmp	r0, #-2147483648
	bne	.LBB42_3
@ %bb.1:                                @ %if.then
	.loc	24 29 20                        @ ../mulvsi3.c:29:20
	cmp	r4, #0
	.loc	24 29 13 is_stmt 0              @ ../mulvsi3.c:29:13
	cmpne	r4, #1
	beq	.LBB42_12
@ %bb.2:                                @ %if.end
	.loc	24 31 9 is_stmt 1               @ ../mulvsi3.c:31:9
	ldr	r0, .LCPI42_0
	ldr	r2, .LCPI42_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB42_3:                               @ %if.end4
	.loc	24 33 9                         @ ../mulvsi3.c:33:9
	cmp	r4, #-2147483648
	bne	.LBB42_6
@ %bb.4:                                @ %if.then6
	.loc	24 35 20                        @ ../mulvsi3.c:35:20
	cmp	r5, #0
	.loc	24 35 13 is_stmt 0              @ ../mulvsi3.c:35:13
	cmpne	r5, #1
	beq	.LBB42_12
@ %bb.5:                                @ %if.end12
	.loc	24 37 9 is_stmt 1               @ ../mulvsi3.c:37:9
	ldr	r0, .LCPI42_0
	ldr	r2, .LCPI42_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB42_6:                               @ %if.end13
	.loc	24 40 23                        @ ../mulvsi3.c:40:23
	eor	r0, r5, r5, asr #31
	.loc	24 40 29 is_stmt 0              @ ../mulvsi3.c:40:29
	sub	r6, r0, r5, asr #31
	.loc	24 43 19 is_stmt 1              @ ../mulvsi3.c:43:19
	cmp	r6, #2
	blt	.LBB42_12
@ %bb.7:                                @ %lor.lhs.false18
	.loc	24 0 0 is_stmt 0                @ ../mulvsi3.c:0:0
	eor	r0, r4, r4, asr #31
	sub	r1, r0, r4, asr #31
	.loc	24 43 9                         @ ../mulvsi3.c:43:9
	cmp	r1, #2
	blt	.LBB42_12
@ %bb.8:                                @ %if.end22
	.loc	24 0 0                          @ ../mulvsi3.c:0:0
	asr	r0, r4, #31
	asr	r2, r5, #31
	.loc	24 45 9 is_stmt 1               @ ../mulvsi3.c:45:9
	cmp	r2, r0
	bne	.LBB42_11
@ %bb.9:                                @ %if.then24
	.loc	24 47 25                        @ ../mulvsi3.c:47:25
	mvn	r0, #-2147483648
	bl	__divsi3
	.loc	24 47 13 is_stmt 0              @ ../mulvsi3.c:47:13
	cmp	r6, r0
	ble	.LBB42_12
@ %bb.10:                               @ %if.then26
	.loc	24 48 13 is_stmt 1              @ ../mulvsi3.c:48:13
	ldr	r0, .LCPI42_0
	ldr	r2, .LCPI42_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB42_11:                              @ %if.else
	.loc	24 52 27                        @ ../mulvsi3.c:52:27
	rsb	r1, r1, #0
	.loc	24 52 25 is_stmt 0              @ ../mulvsi3.c:52:25
	mov	r0, #-2147483648
	bl	__divsi3
	.loc	24 52 13                        @ ../mulvsi3.c:52:13
	cmp	r6, r0
	bgt	.LBB42_13
.LBB42_12:                              @ %return
	.loc	24 0 0                          @ ../mulvsi3.c:0:0
	mul	r0, r5, r4
	.loc	24 56 1 is_stmt 1               @ ../mulvsi3.c:56:1
	pop	{r4, r5, r6, r10, r11, lr}
	bx	lr
.LBB42_13:                              @ %if.then31
	.loc	24 53 13                        @ ../mulvsi3.c:53:13
	ldr	r0, .LCPI42_0
	ldr	r2, .LCPI42_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.Ltmp385:
	.p2align	2
@ %bb.14:
	.loc	24 0 13 is_stmt 0               @ ../mulvsi3.c:0:13
.LCPI42_0:
	.long	.L.str.9
.LCPI42_1:
	.long	.L__func__.__mulvsi3
.Lfunc_end42:
	.size	__mulvsi3, .Lfunc_end42-__mulvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__paritydi2                     @ -- Begin function __paritydi2
	.p2align	2
	.type	__paritydi2,%function
	.code	32                              @ @__paritydi2
__paritydi2:
.Lfunc_begin43:
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
.Ltmp386:
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
.Ltmp387:
.Lfunc_end43:
	.size	__paritydi2, .Lfunc_end43-__paritydi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__paritysi2                     @ -- Begin function __paritysi2
	.p2align	2
	.type	__paritysi2,%function
	.code	32                              @ @__paritysi2
__paritysi2:
.Lfunc_begin44:
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
.Ltmp388:
.Lfunc_end44:
	.size	__paritysi2, .Lfunc_end44-__paritysi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__popcountdi2                   @ -- Begin function __popcountdi2
	.p2align	2
	.type	__popcountdi2,%function
	.code	32                              @ @__popcountdi2
__popcountdi2:
.Lfunc_begin45:
	.file	27 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountdi2.c" md5 0x05f001da7fc478c773612fd707769c2a
	.loc	27 21 0 is_stmt 1               @ ../popcountdi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	ldr	r12, .LCPI45_0
.Ltmp389:
	.loc	27 23 20 prologue_end           @ ../popcountdi2.c:23:20
	lsrs	r2, r1, #1
	rrx	r3, r0
	.loc	27 23 26 is_stmt 0              @ ../popcountdi2.c:23:26
	and	r3, r3, r12
	and	r2, r2, r12
	ldr	r12, .LCPI45_2
	.loc	27 23 13                        @ ../popcountdi2.c:23:13
	subs	r0, r0, r3
	sbc	r1, r1, r2
	ldr	r2, .LCPI45_1
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
.Ltmp390:
	.p2align	2
@ %bb.1:
	.loc	27 0 5                          @ ../popcountdi2.c:0:5
.LCPI45_0:
	.long	1431655765                      @ 0x55555555
.LCPI45_1:
	.long	858993459                       @ 0x33333333
.LCPI45_2:
	.long	252645135                       @ 0xf0f0f0f
.Lfunc_end45:
	.size	__popcountdi2, .Lfunc_end45-__popcountdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__popcountsi2                   @ -- Begin function __popcountsi2
	.p2align	2
	.type	__popcountsi2,%function
	.code	32                              @ @__popcountsi2
__popcountsi2:
.Lfunc_begin46:
	.file	28 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountsi2.c" md5 0xf9ebedb2d8810ee5a54fff38e1b09d64
	.loc	28 21 0 is_stmt 1               @ ../popcountsi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	ldr	r1, .LCPI46_0
.Ltmp391:
	.loc	28 23 23 prologue_end           @ ../popcountsi2.c:23:23
	and	r1, r1, r0, lsr #1
	.loc	28 23 11 is_stmt 0              @ ../popcountsi2.c:23:11
	sub	r0, r0, r1
	ldr	r1, .LCPI46_1
	.loc	28 25 38 is_stmt 1              @ ../popcountsi2.c:25:38
	and	r2, r0, r1
	.loc	28 25 19 is_stmt 0              @ ../popcountsi2.c:25:19
	and	r0, r1, r0, lsr #2
	ldr	r1, .LCPI46_2
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
.Ltmp392:
	.p2align	2
@ %bb.1:
	.loc	28 0 5                          @ ../popcountsi2.c:0:5
.LCPI46_0:
	.long	1431655765                      @ 0x55555555
.LCPI46_1:
	.long	858993459                       @ 0x33333333
.LCPI46_2:
	.long	252645135                       @ 0xf0f0f0f
.Lfunc_end46:
	.size	__popcountsi2, .Lfunc_end46-__popcountsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__subvdi3                       @ -- Begin function __subvdi3
	.p2align	2
	.type	__subvdi3,%function
	.code	32                              @ @__subvdi3
__subvdi3:
.Lfunc_begin47:
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
.Ltmp393:
	.loc	29 24 27 prologue_end           @ ../subvdi3.c:24:27
	subs	r0, r0, r2
	mov	r12, r1
	sbc	r1, r1, r3
	.loc	29 25 9                         @ ../subvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB47_3
@ %bb.1:                                @ %if.then
	.loc	29 27 15                        @ ../subvdi3.c:27:15
	subs	r2, lr, r0
	sbcs	r2, r12, r1
	.loc	29 27 13 is_stmt 0              @ ../subvdi3.c:27:13
	bge	.LBB47_4
@ %bb.2:                                @ %if.then2
	.loc	29 28 13 is_stmt 1              @ ../subvdi3.c:28:13
	ldr	r0, .LCPI47_0
	ldr	r2, .LCPI47_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB47_3:                               @ %if.else
	.loc	29 32 15                        @ ../subvdi3.c:32:15
	subs	r2, lr, r0
	sbcs	r2, r12, r1
	.loc	29 32 13 is_stmt 0              @ ../subvdi3.c:32:13
	bge	.LBB47_5
.LBB47_4:                               @ %if.end6
	.loc	29 35 5 is_stmt 1               @ ../subvdi3.c:35:5
	pop	{r11, lr}
	bx	lr
.LBB47_5:                               @ %if.then4
	.loc	29 33 13                        @ ../subvdi3.c:33:13
	ldr	r0, .LCPI47_0
	ldr	r2, .LCPI47_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.Ltmp394:
	.p2align	2
@ %bb.6:
	.loc	29 0 13 is_stmt 0               @ ../subvdi3.c:0:13
.LCPI47_0:
	.long	.L.str.12
.LCPI47_1:
	.long	.L__func__.__subvdi3
.Lfunc_end47:
	.size	__subvdi3, .Lfunc_end47-__subvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__subvsi3                       @ -- Begin function __subvsi3
	.p2align	2
	.type	__subvsi3,%function
	.code	32                              @ @__subvsi3
__subvsi3:
.Lfunc_begin48:
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
.Ltmp395:
	.loc	30 24 27 prologue_end           @ ../subvsi3.c:24:27
	sub	r0, r0, r1
	.loc	30 25 9                         @ ../subvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB48_3
@ %bb.1:                                @ %if.then
	.loc	30 27 13                        @ ../subvsi3.c:27:13
	cmp	r0, r2
	ble	.LBB48_4
@ %bb.2:                                @ %if.then2
	.loc	30 28 13                        @ ../subvsi3.c:28:13
	ldr	r0, .LCPI48_0
	ldr	r2, .LCPI48_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB48_3:                               @ %if.else
	.loc	30 32 13                        @ ../subvsi3.c:32:13
	cmp	r0, r2
	ble	.LBB48_5
.LBB48_4:                               @ %if.end6
	.loc	30 35 5                         @ ../subvsi3.c:35:5
	pop	{r11, lr}
	bx	lr
.LBB48_5:                               @ %if.then4
	.loc	30 33 13                        @ ../subvsi3.c:33:13
	ldr	r0, .LCPI48_0
	ldr	r2, .LCPI48_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.Ltmp396:
	.p2align	2
@ %bb.6:
	.loc	30 0 13 is_stmt 0               @ ../subvsi3.c:0:13
.LCPI48_0:
	.long	.L.str.13
.LCPI48_1:
	.long	.L__func__.__subvsi3
.Lfunc_end48:
	.size	__subvsi3, .Lfunc_end48-__subvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ucmpdi2                       @ -- Begin function __ucmpdi2
	.p2align	2
	.type	__ucmpdi2,%function
	.code	32                              @ @__ucmpdi2
__ucmpdi2:
.Lfunc_begin49:
	.file	31 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ucmpdi2.c" md5 0x79f778ef54939446d175079e19d07756
	.loc	31 24 0 is_stmt 1               @ ../ucmpdi2.c:24:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp397:
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
	blo	.LBB49_4
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
.LBB49_2:                               @ %if.end10
	.loc	31 33 23                        @ ../ucmpdi2.c:33:23
	ldr	r1, [sp]
	.loc	31 33 13 is_stmt 0              @ ../ucmpdi2.c:33:13
	ldr	r2, [sp, #8]
	.loc	31 33 9                         @ ../ucmpdi2.c:33:9
	cmp	r2, r1
	blo	.LBB49_4
@ %bb.3:                                @ %if.end16
	.loc	31 35 23 is_stmt 1              @ ../ucmpdi2.c:35:23
	ldr	r0, [sp]
	.loc	31 35 13 is_stmt 0              @ ../ucmpdi2.c:35:13
	ldr	r1, [sp, #8]
	.loc	31 35 9                         @ ../ucmpdi2.c:35:9
	cmp	r1, r0
	mov	r0, #2
	movls	r0, #1
.LBB49_4:                               @ %return
	.loc	31 38 1 is_stmt 1               @ ../ucmpdi2.c:38:1
	add	sp, sp, #16
	bx	lr
.Ltmp398:
.Lfunc_end49:
	.size	__ucmpdi2, .Lfunc_end49-__ucmpdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__aeabi_ulcmp                   @ -- Begin function __aeabi_ulcmp
	.p2align	2
	.type	__aeabi_ulcmp,%function
	.code	32                              @ @__aeabi_ulcmp
__aeabi_ulcmp:
.Lfunc_begin50:
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
.Ltmp399:
	.loc	31 48 9 prologue_end            @ ../ucmpdi2.c:48:9
	bl	__ucmpdi2
	.loc	31 48 25 is_stmt 0              @ ../ucmpdi2.c:48:25
	sub	r0, r0, #1
	.loc	31 48 2                         @ ../ucmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp400:
.Lfunc_end50:
	.size	__aeabi_ulcmp, .Lfunc_end50-__aeabi_ulcmp
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivdi3                       @ -- Begin function __udivdi3
	.p2align	2
	.type	__udivdi3,%function
	.code	32                              @ @__udivdi3
__udivdi3:
.Lfunc_begin51:
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
.Ltmp401:
	.loc	32 22 12 prologue_end           @ ../udivdi3.c:22:12
	str	r12, [sp]
	bl	__udivmoddi4
	.loc	32 22 5 is_stmt 0               @ ../udivdi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp402:
.Lfunc_end51:
	.size	__udivdi3, .Lfunc_end51-__udivdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivmodsi4                    @ -- Begin function __udivmodsi4
	.p2align	2
	.type	__udivmodsi4,%function
	.code	32                              @ @__udivmodsi4
__udivmodsi4:
.Lfunc_begin52:
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
.Ltmp403:
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
.Ltmp404:
.Lfunc_end52:
	.size	__udivmodsi4, .Lfunc_end52-__udivmodsi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivsi3                       @ -- Begin function __udivsi3
	.p2align	2
	.type	__udivsi3,%function
	.code	32                              @ @__udivsi3
__udivsi3:
.Lfunc_begin53:
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
.Ltmp405:
	.loc	34 32 9 prologue_end            @ ../udivsi3.c:32:9
	cmp	r1, #0
	mov	r5, #0
	movne	r6, r0
	.loc	34 34 9                         @ ../udivsi3.c:34:9
	cmpne	r0, #0
	bne	.LBB53_2
.LBB53_1:                               @ %return
	.loc	34 66 1                         @ ../udivsi3.c:66:1
	mov	r0, r5
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
.LBB53_2:                               @ %if.end3
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
	bhi	.LBB53_1
@ %bb.3:                                @ %if.end6
	.loc	34 40 9                         @ ../udivsi3.c:40:9
	bne	.LBB53_5
@ %bb.4:
	.loc	34 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r5, r6
	b	.LBB53_1
.LBB53_5:                               @ %if.end9
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
	beq	.LBB53_7
.LBB53_6:                               @ %for.body
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
	bne	.LBB53_6
.LBB53_7:                               @ %for.end
	.loc	34 64 18                        @ ../udivsi3.c:64:18
	orr	r5, r3, r1, lsl #1
	b	.LBB53_1
.Ltmp406:
.Lfunc_end53:
	.size	__udivsi3, .Lfunc_end53-__udivsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__umoddi3                       @ -- Begin function __umoddi3
	.p2align	2
	.type	__umoddi3,%function
	.code	32                              @ @__umoddi3
__umoddi3:
.Lfunc_begin54:
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
.Ltmp407:
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
.Ltmp408:
.Lfunc_end54:
	.size	__umoddi3, .Lfunc_end54-__umoddi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__umodsi3                       @ -- Begin function __umodsi3
	.p2align	2
	.type	__umodsi3,%function
	.code	32                              @ @__umodsi3
__umodsi3:
.Lfunc_begin55:
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
.Ltmp409:
	.loc	36 22 16 prologue_end           @ ../umodsi3.c:22:16
	bl	__udivsi3
	.loc	36 22 32 is_stmt 0              @ ../umodsi3.c:22:32
	mul	r1, r0, r4
	.loc	36 22 14                        @ ../umodsi3.c:22:14
	sub	r0, r5, r1
	.loc	36 22 5                         @ ../umodsi3.c:22:5
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp410:
.Lfunc_end55:
	.size	__umodsi3, .Lfunc_end55-__umodsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	memcpy                          @ -- Begin function memcpy
	.p2align	2
	.type	memcpy,%function
	.code	32                              @ @memcpy
memcpy:
.Lfunc_begin56:
	.file	37 "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" "../memory.c" md5 0xfa9c872a007b30a353222cd13b38538d
	.loc	37 4 0 is_stmt 1                @ ../memory.c:4:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
.LBB56_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	37 8 2 prologue_end             @ ../memory.c:8:2
	cmp	r2, #0
	.loc	37 11 1                         @ ../memory.c:11:1
	bxeq	lr
.LBB56_2:                               @ %for.body
                                        @   in Loop: Header=BB56_1 Depth=1
	.loc	37 9 21                         @ ../memory.c:9:21
	ldrb	r3, [r1]
	.loc	37 8 2                          @ ../memory.c:8:2
	sub	r2, r2, #1
	add	r1, r1, #1
	.loc	37 9 19                         @ ../memory.c:9:19
	strb	r3, [r0]
	.loc	37 8 2                          @ ../memory.c:8:2
	add	r0, r0, #1
	b	.LBB56_1
.Ltmp411:
.Lfunc_end56:
	.size	memcpy, .Lfunc_end56-memcpy
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	memset                          @ -- Begin function memset
	.p2align	2
	.type	memset,%function
	.code	32                              @ @memset
memset:
.Lfunc_begin57:
	.loc	37 14 0                         @ ../memory.c:14:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r3, #0
.LBB57_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
.Ltmp412:
	.loc	37 17 2 prologue_end            @ ../memory.c:17:2
	cmp	r2, r3
	.loc	37 20 2                         @ ../memory.c:20:2
	bxeq	lr
.LBB57_2:                               @ %for.body
                                        @   in Loop: Header=BB57_1 Depth=1
	.loc	37 18 11                        @ ../memory.c:18:11
	strb	r1, [r0, r3]
	.loc	37 17 26                        @ ../memory.c:17:26
	add	r3, r3, #1
	b	.LBB57_1
.Ltmp413:
.Lfunc_end57:
	.size	memset, .Lfunc_end57-memset
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.type	g723_enc_INPUT,%object          @ @g723_enc_INPUT
	.data
	.globl	g723_enc_INPUT
	.p2align	2
g723_enc_INPUT:
	.long	51                              @ 0x33
	.long	17                              @ 0x11
	.long	31                              @ 0x1f
	.long	53                              @ 0x35
	.long	95                              @ 0x5f
	.long	17                              @ 0x11
	.long	70                              @ 0x46
	.long	22                              @ 0x16
	.long	49                              @ 0x31
	.long	12                              @ 0xc
	.long	8                               @ 0x8
	.long	39                              @ 0x27
	.long	28                              @ 0x1c
	.long	37                              @ 0x25
	.long	99                              @ 0x63
	.long	54                              @ 0x36
	.long	77                              @ 0x4d
	.long	65                              @ 0x41
	.long	77                              @ 0x4d
	.long	78                              @ 0x4e
	.long	83                              @ 0x53
	.long	15                              @ 0xf
	.long	63                              @ 0x3f
	.long	31                              @ 0x1f
	.long	35                              @ 0x23
	.long	92                              @ 0x5c
	.long	52                              @ 0x34
	.long	40                              @ 0x28
	.long	61                              @ 0x3d
	.long	79                              @ 0x4f
	.long	94                              @ 0x5e
	.long	87                              @ 0x57
	.long	87                              @ 0x57
	.long	68                              @ 0x44
	.long	76                              @ 0x4c
	.long	58                              @ 0x3a
	.long	39                              @ 0x27
	.long	35                              @ 0x23
	.long	20                              @ 0x14
	.long	83                              @ 0x53
	.long	42                              @ 0x2a
	.long	46                              @ 0x2e
	.long	98                              @ 0x62
	.long	12                              @ 0xc
	.long	21                              @ 0x15
	.long	96                              @ 0x60
	.long	74                              @ 0x4a
	.long	41                              @ 0x29
	.long	78                              @ 0x4e
	.long	76                              @ 0x4c
	.long	96                              @ 0x60
	.long	2                               @ 0x2
	.long	32                              @ 0x20
	.long	76                              @ 0x4c
	.long	24                              @ 0x18
	.long	59                              @ 0x3b
	.long	4                               @ 0x4
	.long	96                              @ 0x60
	.long	32                              @ 0x20
	.long	5                               @ 0x5
	.long	44                              @ 0x2c
	.long	92                              @ 0x5c
	.long	57                              @ 0x39
	.long	12                              @ 0xc
	.long	57                              @ 0x39
	.long	25                              @ 0x19
	.long	50                              @ 0x32
	.long	23                              @ 0x17
	.long	48                              @ 0x30
	.long	41                              @ 0x29
	.long	88                              @ 0x58
	.long	43                              @ 0x2b
	.long	36                              @ 0x24
	.long	38                              @ 0x26
	.long	4                               @ 0x4
	.long	16                              @ 0x10
	.long	52                              @ 0x34
	.long	70                              @ 0x46
	.long	9                               @ 0x9
	.long	40                              @ 0x28
	.long	78                              @ 0x4e
	.long	24                              @ 0x18
	.long	34                              @ 0x22
	.long	23                              @ 0x17
	.long	30                              @ 0x1e
	.long	30                              @ 0x1e
	.long	89                              @ 0x59
	.long	3                               @ 0x3
	.long	65                              @ 0x41
	.long	40                              @ 0x28
	.long	68                              @ 0x44
	.long	73                              @ 0x49
	.long	94                              @ 0x5e
	.long	23                              @ 0x17
	.long	84                              @ 0x54
	.long	97                              @ 0x61
	.long	78                              @ 0x4e
	.long	43                              @ 0x2b
	.long	68                              @ 0x44
	.long	81                              @ 0x51
	.long	16                              @ 0x10
	.long	28                              @ 0x1c
	.long	13                              @ 0xd
	.long	87                              @ 0x57
	.long	75                              @ 0x4b
	.long	21                              @ 0x15
	.long	14                              @ 0xe
	.long	29                              @ 0x1d
	.long	81                              @ 0x51
	.long	22                              @ 0x16
	.long	56                              @ 0x38
	.long	72                              @ 0x48
	.long	19                              @ 0x13
	.long	99                              @ 0x63
	.long	25                              @ 0x19
	.long	43                              @ 0x2b
	.long	76                              @ 0x4c
	.long	86                              @ 0x56
	.long	90                              @ 0x5a
	.long	98                              @ 0x62
	.long	39                              @ 0x27
	.long	43                              @ 0x2b
	.long	12                              @ 0xc
	.long	46                              @ 0x2e
	.long	24                              @ 0x18
	.long	99                              @ 0x63
	.long	65                              @ 0x41
	.long	61                              @ 0x3d
	.long	24                              @ 0x18
	.long	45                              @ 0x2d
	.long	79                              @ 0x4f
	.long	7                               @ 0x7
	.long	48                              @ 0x30
	.long	15                              @ 0xf
	.long	24                              @ 0x18
	.long	95                              @ 0x5f
	.long	62                              @ 0x3e
	.long	99                              @ 0x63
	.long	48                              @ 0x30
	.long	80                              @ 0x50
	.long	75                              @ 0x4b
	.long	38                              @ 0x26
	.long	48                              @ 0x30
	.long	53                              @ 0x35
	.long	9                               @ 0x9
	.long	60                              @ 0x3c
	.long	35                              @ 0x23
	.long	14                              @ 0xe
	.long	78                              @ 0x4e
	.long	71                              @ 0x47
	.long	45                              @ 0x2d
	.long	71                              @ 0x47
	.long	9                               @ 0x9
	.long	97                              @ 0x61
	.long	55                              @ 0x37
	.long	74                              @ 0x4a
	.long	58                              @ 0x3a
	.long	64                              @ 0x40
	.long	78                              @ 0x4e
	.long	18                              @ 0x12
	.long	30                              @ 0x1e
	.long	28                              @ 0x1c
	.long	69                              @ 0x45
	.long	29                              @ 0x1d
	.long	57                              @ 0x39
	.long	42                              @ 0x2a
	.long	30                              @ 0x1e
	.long	44                              @ 0x2c
	.long	57                              @ 0x39
	.long	49                              @ 0x31
	.long	61                              @ 0x3d
	.long	42                              @ 0x2a
	.long	13                              @ 0xd
	.long	25                              @ 0x19
	.long	3                               @ 0x3
	.long	98                              @ 0x62
	.long	11                              @ 0xb
	.long	38                              @ 0x26
	.long	65                              @ 0x41
	.long	35                              @ 0x23
	.long	55                              @ 0x37
	.long	36                              @ 0x24
	.long	57                              @ 0x39
	.long	48                              @ 0x30
	.long	16                              @ 0x10
	.long	62                              @ 0x3e
	.long	17                              @ 0x11
	.long	56                              @ 0x38
	.long	29                              @ 0x1d
	.long	88                              @ 0x58
	.long	84                              @ 0x54
	.long	85                              @ 0x55
	.long	90                              @ 0x5a
	.long	60                              @ 0x3c
	.long	54                              @ 0x36
	.long	16                              @ 0x10
	.long	66                              @ 0x42
	.long	69                              @ 0x45
	.long	26                              @ 0x1a
	.long	10                              @ 0xa
	.long	82                              @ 0x52
	.long	19                              @ 0x13
	.long	42                              @ 0x2a
	.long	35                              @ 0x23
	.long	84                              @ 0x54
	.long	13                              @ 0xd
	.long	26                              @ 0x1a
	.long	17                              @ 0x11
	.long	48                              @ 0x30
	.long	38                              @ 0x26
	.long	50                              @ 0x32
	.long	50                              @ 0x32
	.long	35                              @ 0x23
	.long	53                              @ 0x35
	.long	12                              @ 0xc
	.long	52                              @ 0x34
	.long	61                              @ 0x3d
	.long	74                              @ 0x4a
	.long	56                              @ 0x38
	.long	34                              @ 0x22
	.long	80                              @ 0x50
	.long	59                              @ 0x3b
	.long	26                              @ 0x1a
	.long	67                              @ 0x43
	.long	55                              @ 0x37
	.long	79                              @ 0x4f
	.long	89                              @ 0x59
	.long	89                              @ 0x59
	.long	6                               @ 0x6
	.long	80                              @ 0x50
	.long	91                              @ 0x5b
	.long	65                              @ 0x41
	.long	16                              @ 0x10
	.long	30                              @ 0x1e
	.long	16                              @ 0x10
	.long	28                              @ 0x1c
	.long	85                              @ 0x55
	.long	54                              @ 0x36
	.long	3                               @ 0x3
	.long	20                              @ 0x14
	.long	2                               @ 0x2
	.long	36                              @ 0x24
	.long	62                              @ 0x3e
	.long	52                              @ 0x34
	.long	55                              @ 0x37
	.long	15                              @ 0xf
	.long	83                              @ 0x53
	.long	3                               @ 0x3
	.long	2                               @ 0x2
	.long	38                              @ 0x26
	.long	62                              @ 0x3e
	.long	2                               @ 0x2
	.long	63                              @ 0x3f
	.long	92                              @ 0x5c
	.long	37                              @ 0x25
	.long	73                              @ 0x49
	.size	g723_enc_INPUT, 1024

	.type	g723_enc_power2,%object         @ @g723_enc_power2
	.globl	g723_enc_power2
	.p2align	1
g723_enc_power2:
	.short	1                               @ 0x1
	.short	2                               @ 0x2
	.short	4                               @ 0x4
	.short	8                               @ 0x8
	.short	16                              @ 0x10
	.short	32                              @ 0x20
	.short	64                              @ 0x40
	.short	128                             @ 0x80
	.short	256                             @ 0x100
	.short	512                             @ 0x200
	.short	1024                            @ 0x400
	.short	2048                            @ 0x800
	.short	4096                            @ 0x1000
	.short	8192                            @ 0x2000
	.short	16384                           @ 0x4000
	.size	g723_enc_power2, 30

	.type	g723_enc_qtab_723_24,%object    @ @g723_enc_qtab_723_24
	.globl	g723_enc_qtab_723_24
	.p2align	1
g723_enc_qtab_723_24:
	.short	8                               @ 0x8
	.short	218                             @ 0xda
	.short	331                             @ 0x14b
	.size	g723_enc_qtab_723_24, 6

	.type	g723_enc_dqlntab,%object        @ @g723_enc_dqlntab
	.globl	g723_enc_dqlntab
	.p2align	1
g723_enc_dqlntab:
	.short	63488                           @ 0xf800
	.short	4                               @ 0x4
	.short	135                             @ 0x87
	.short	213                             @ 0xd5
	.short	273                             @ 0x111
	.short	323                             @ 0x143
	.short	373                             @ 0x175
	.short	425                             @ 0x1a9
	.short	425                             @ 0x1a9
	.short	373                             @ 0x175
	.short	323                             @ 0x143
	.short	273                             @ 0x111
	.short	213                             @ 0xd5
	.short	135                             @ 0x87
	.short	4                               @ 0x4
	.short	63488                           @ 0xf800
	.size	g723_enc_dqlntab, 32

	.type	g723_enc_witab,%object          @ @g723_enc_witab
	.globl	g723_enc_witab
	.p2align	1
g723_enc_witab:
	.short	65524                           @ 0xfff4
	.short	18                              @ 0x12
	.short	41                              @ 0x29
	.short	64                              @ 0x40
	.short	112                             @ 0x70
	.short	198                             @ 0xc6
	.short	355                             @ 0x163
	.short	1122                            @ 0x462
	.short	1122                            @ 0x462
	.short	355                             @ 0x163
	.short	198                             @ 0xc6
	.short	112                             @ 0x70
	.short	64                              @ 0x40
	.short	41                              @ 0x29
	.short	18                              @ 0x12
	.short	65524                           @ 0xfff4
	.size	g723_enc_witab, 32

	.type	g723_enc_fitab,%object          @ @g723_enc_fitab
	.globl	g723_enc_fitab
	.p2align	1
g723_enc_fitab:
	.short	0                               @ 0x0
	.short	0                               @ 0x0
	.short	0                               @ 0x0
	.short	512                             @ 0x200
	.short	512                             @ 0x200
	.short	512                             @ 0x200
	.short	1536                            @ 0x600
	.short	3584                            @ 0xe00
	.short	3584                            @ 0xe00
	.short	1536                            @ 0x600
	.short	512                             @ 0x200
	.short	512                             @ 0x200
	.short	512                             @ 0x200
	.short	0                               @ 0x0
	.short	0                               @ 0x0
	.short	0                               @ 0x0
	.size	g723_enc_fitab, 32

	.type	g723_enc_pack_output.out_buffer,%object @ @g723_enc_pack_output.out_buffer
	.local	g723_enc_pack_output.out_buffer
	.comm	g723_enc_pack_output.out_buffer,4,4
	.type	g723_enc_pack_output.out_bits,%object @ @g723_enc_pack_output.out_bits
	.local	g723_enc_pack_output.out_bits
	.comm	g723_enc_pack_output.out_bits,4,4
	.type	g723_enc_pack_output.i,%object  @ @g723_enc_pack_output.i
	.local	g723_enc_pack_output.i
	.comm	g723_enc_pack_output.i,4,4
	.type	g723_enc_OUTPUT,%object         @ @g723_enc_OUTPUT
	.bss
	.globl	g723_enc_OUTPUT
	.p2align	2
g723_enc_OUTPUT:
	.zero	1024
	.size	g723_enc_OUTPUT, 1024

	.type	g723_enc_state,%object          @ @g723_enc_state
	.globl	g723_enc_state
	.p2align	2
g723_enc_state:
	.zero	52
	.size	g723_enc_state, 52

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
	.long	84                              @ Offset entry count
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
	.long	.Ldebug_loc21-.Lloclists_table_base0
	.long	.Ldebug_loc22-.Lloclists_table_base0
	.long	.Ldebug_loc23-.Lloclists_table_base0
	.long	.Ldebug_loc24-.Lloclists_table_base0
	.long	.Ldebug_loc25-.Lloclists_table_base0
	.long	.Ldebug_loc26-.Lloclists_table_base0
	.long	.Ldebug_loc27-.Lloclists_table_base0
	.long	.Ldebug_loc28-.Lloclists_table_base0
	.long	.Ldebug_loc29-.Lloclists_table_base0
	.long	.Ldebug_loc30-.Lloclists_table_base0
	.long	.Ldebug_loc31-.Lloclists_table_base0
	.long	.Ldebug_loc32-.Lloclists_table_base0
	.long	.Ldebug_loc33-.Lloclists_table_base0
	.long	.Ldebug_loc34-.Lloclists_table_base0
	.long	.Ldebug_loc35-.Lloclists_table_base0
	.long	.Ldebug_loc36-.Lloclists_table_base0
	.long	.Ldebug_loc37-.Lloclists_table_base0
	.long	.Ldebug_loc38-.Lloclists_table_base0
	.long	.Ldebug_loc39-.Lloclists_table_base0
	.long	.Ldebug_loc40-.Lloclists_table_base0
	.long	.Ldebug_loc41-.Lloclists_table_base0
	.long	.Ldebug_loc42-.Lloclists_table_base0
	.long	.Ldebug_loc43-.Lloclists_table_base0
	.long	.Ldebug_loc44-.Lloclists_table_base0
	.long	.Ldebug_loc45-.Lloclists_table_base0
	.long	.Ldebug_loc46-.Lloclists_table_base0
	.long	.Ldebug_loc47-.Lloclists_table_base0
	.long	.Ldebug_loc48-.Lloclists_table_base0
	.long	.Ldebug_loc49-.Lloclists_table_base0
	.long	.Ldebug_loc50-.Lloclists_table_base0
	.long	.Ldebug_loc51-.Lloclists_table_base0
	.long	.Ldebug_loc52-.Lloclists_table_base0
	.long	.Ldebug_loc53-.Lloclists_table_base0
	.long	.Ldebug_loc54-.Lloclists_table_base0
	.long	.Ldebug_loc55-.Lloclists_table_base0
	.long	.Ldebug_loc56-.Lloclists_table_base0
	.long	.Ldebug_loc57-.Lloclists_table_base0
	.long	.Ldebug_loc58-.Lloclists_table_base0
	.long	.Ldebug_loc59-.Lloclists_table_base0
	.long	.Ldebug_loc60-.Lloclists_table_base0
	.long	.Ldebug_loc61-.Lloclists_table_base0
	.long	.Ldebug_loc62-.Lloclists_table_base0
	.long	.Ldebug_loc63-.Lloclists_table_base0
	.long	.Ldebug_loc64-.Lloclists_table_base0
	.long	.Ldebug_loc65-.Lloclists_table_base0
	.long	.Ldebug_loc66-.Lloclists_table_base0
	.long	.Ldebug_loc67-.Lloclists_table_base0
	.long	.Ldebug_loc68-.Lloclists_table_base0
	.long	.Ldebug_loc69-.Lloclists_table_base0
	.long	.Ldebug_loc70-.Lloclists_table_base0
	.long	.Ldebug_loc71-.Lloclists_table_base0
	.long	.Ldebug_loc72-.Lloclists_table_base0
	.long	.Ldebug_loc73-.Lloclists_table_base0
	.long	.Ldebug_loc74-.Lloclists_table_base0
	.long	.Ldebug_loc75-.Lloclists_table_base0
	.long	.Ldebug_loc76-.Lloclists_table_base0
	.long	.Ldebug_loc77-.Lloclists_table_base0
	.long	.Ldebug_loc78-.Lloclists_table_base0
	.long	.Ldebug_loc79-.Lloclists_table_base0
	.long	.Ldebug_loc80-.Lloclists_table_base0
	.long	.Ldebug_loc81-.Lloclists_table_base0
	.long	.Ldebug_loc82-.Lloclists_table_base0
	.long	.Ldebug_loc83-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp0-.Lfunc_begin0           @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          @   ending offset
	.byte	13                              @ Loc expr size
	.byte	119                             @ DW_OP_breg7
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          @   ending offset
	.byte	13                              @ Loc expr size
	.byte	114                             @ DW_OP_breg2
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          @   ending offset
	.byte	13                              @ Loc expr size
	.byte	114                             @ DW_OP_breg2
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          @   ending offset
	.byte	13                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          @   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          @   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	82                              @ DW_OP_reg2
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	92                              @ DW_OP_reg12
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          @   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      @   ending offset
	.byte	1                               @ Loc expr size
	.byte	92                              @ DW_OP_reg12
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	1                               @ 1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	83                              @ DW_OP_reg3
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          @   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      @   ending offset
	.byte	1                               @ Loc expr size
	.byte	83                              @ DW_OP_reg3
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          @   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          @   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          @   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	117                             @ DW_OP_breg5
	.byte	0                               @ 0
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          @   ending offset
	.byte	9                               @ Loc expr size
	.byte	118                             @ DW_OP_breg6
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	2                               @ 2
	.byte	27                              @ DW_OP_div
	.byte	17                              @ DW_OP_consts
	.byte	1                               @ 1
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          @   ending offset
	.byte	9                               @ Loc expr size
	.byte	118                             @ DW_OP_breg6
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	2                               @ 2
	.byte	27                              @ DW_OP_div
	.byte	17                              @ DW_OP_consts
	.byte	2                               @ 2
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          @   ending offset
	.byte	9                               @ Loc expr size
	.byte	118                             @ DW_OP_breg6
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	2                               @ 2
	.byte	27                              @ DW_OP_div
	.byte	17                              @ DW_OP_consts
	.byte	1                               @ 1
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          @   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          @   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          @   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          @   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	83                              @ DW_OP_reg3
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	88                              @ DW_OP_reg8
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	83                              @ DW_OP_reg3
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	88                              @ DW_OP_reg8
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	83                              @ DW_OP_reg3
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          @   ending offset
	.byte	13                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          @   ending offset
	.byte	13                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          @   ending offset
	.byte	21                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	55                              @ DW_OP_lit7
	.byte	36                              @ DW_OP_shl
	.byte	113                             @ DW_OP_breg1
	.byte	0                               @ 0
	.byte	16                              @ DW_OP_constu
	.byte	127                             @ 127
	.byte	26                              @ DW_OP_and
	.byte	33                              @ DW_OP_or
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          @   ending offset
	.byte	16                              @ Loc expr size
	.byte	113                             @ DW_OP_breg1
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	16                              @ DW_OP_constu
	.byte	127                             @ 127
	.byte	26                              @ DW_OP_and
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          @   ending offset
	.byte	20                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	64                              @ DW_OP_lit16
	.byte	37                              @ DW_OP_shr
	.byte	119                             @ DW_OP_breg7
	.byte	0                               @ 0
	.byte	50                              @ DW_OP_lit2
	.byte	37                              @ DW_OP_shr
	.byte	28                              @ DW_OP_minus
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	83                              @ DW_OP_reg3
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	82                              @ DW_OP_reg2
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          @   ending offset
	.byte	13                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          @   ending offset
	.byte	13                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          @   ending offset
	.byte	10                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	16                              @ DW_OP_constu
	.byte	127                             @ 127
	.byte	26                              @ DW_OP_and
	.byte	16                              @ DW_OP_constu
	.byte	128                             @ 128
	.byte	1                               @ 
	.byte	33                              @ DW_OP_or
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          @   ending offset
	.byte	17                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	55                              @ DW_OP_lit7
	.byte	37                              @ DW_OP_shr
	.byte	63                              @ DW_OP_lit15
	.byte	26                              @ DW_OP_and
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          @   ending offset
	.byte	13                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          @   ending offset
	.byte	13                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin8-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp208-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin8-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp217-.Lfunc_begin0         @   ending offset
	.byte	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	4                               @ 4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp217-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp223-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp223-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp226-.Lfunc_begin0         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc41:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin8-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp232-.Lfunc_begin0         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	82                              @ DW_OP_reg2
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc42:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin8-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp99-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	83                              @ DW_OP_reg3
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          @   starting offset
	.uleb128 .Ltmp230-.Lfunc_begin0         @   ending offset
	.byte	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	0                               @ 0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc43:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	113                             @ DW_OP_breg1
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	113                             @ DW_OP_breg1
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc44:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp162-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp209-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc45:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         @   ending offset
	.byte	7                               @ Loc expr size
	.byte	119                             @ DW_OP_breg7
	.byte	0                               @ 0
	.byte	58                              @ DW_OP_lit10
	.byte	37                              @ DW_OP_shr
	.byte	79                              @ DW_OP_lit31
	.byte	26                              @ DW_OP_and
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	83                              @ DW_OP_reg3
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc46:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         @   ending offset
	.byte	27                              @ Loc expr size
	.byte	119                             @ DW_OP_breg7
	.byte	0                               @ 0
	.byte	58                              @ DW_OP_lit10
	.byte	37                              @ DW_OP_shr
	.byte	79                              @ DW_OP_lit31
	.byte	26                              @ DW_OP_and
	.byte	16                              @ DW_OP_constu
	.byte	32                              @ 32
	.byte	33                              @ DW_OP_or
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	64                              @ DW_OP_lit16
	.byte	36                              @ DW_OP_shl
	.byte	64                              @ DW_OP_lit16
	.byte	38                              @ DW_OP_shra
	.byte	36                              @ DW_OP_shl
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc47:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc48:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         @   ending offset
	.byte	20                              @ Loc expr size
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	49                              @ DW_OP_lit1
	.byte	38                              @ DW_OP_shra
	.byte	34                              @ DW_OP_plus
	.byte	49                              @ DW_OP_lit1
	.byte	38                              @ DW_OP_shra
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         @   ending offset
	.byte	15                              @ Loc expr size
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	49                              @ DW_OP_lit1
	.byte	37                              @ DW_OP_shr
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc49:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc50:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp231-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc51:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         @   ending offset
	.byte	12                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	126                             @ -2
	.byte	27                              @ DW_OP_div
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	5                               @ 5
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp136-.Lfunc_begin0         @   ending offset
	.byte	12                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	126                             @ -2
	.byte	27                              @ DW_OP_div
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	5                               @ 5
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         @   ending offset
	.byte	12                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	126                             @ -2
	.byte	27                              @ DW_OP_div
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	30                              @ DW_OP_mul
	.byte	17                              @ DW_OP_consts
	.byte	5                               @ 5
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp198-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp199-.Lfunc_begin0         @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp199-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp200-.Lfunc_begin0         @   ending offset
	.byte	9                               @ Loc expr size
	.byte	114                             @ DW_OP_breg2
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	2                               @ 2
	.byte	27                              @ DW_OP_div
	.byte	17                              @ DW_OP_consts
	.byte	1                               @ 1
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp200-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp208-.Lfunc_begin0         @   ending offset
	.byte	6                               @ Loc expr size
	.byte	114                             @ DW_OP_breg2
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	2                               @ 2
	.byte	27                              @ DW_OP_div
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc52:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp150-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp168-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp177-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp177-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp178-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp178-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp183-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp183-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp231-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc53:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp158-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp164-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp165-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc54:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp140-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	94                              @ DW_OP_reg14
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp208-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	94                              @ DW_OP_reg14
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc55:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp146-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp147-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc56:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp189-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp190-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc57:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin9-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp233-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp244-.Lfunc_begin0         @   ending offset
	.byte	6                               @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	16                              @ DW_OP_constu
	.byte	85                              @ 85
	.byte	39                              @ DW_OP_xor
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc58:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp234-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp241-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc59:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp234-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp245-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc60:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin0   @   starting offset
	.uleb128 .Ltmp247-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp247-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp248-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc61:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp249-.Lfunc_begin0         @   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc62:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   @   starting offset
	.uleb128 .Ltmp253-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp253-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp260-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp260-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp266-.Lfunc_begin0         @   ending offset
	.byte	5                               @ Loc expr size
	.byte	117                             @ DW_OP_breg5
	.byte	0                               @ 0
	.byte	50                              @ DW_OP_lit2
	.byte	38                              @ DW_OP_shra
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp282-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp283-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc63:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   @   starting offset
	.uleb128 .Ltmp257-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp257-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp258-.Lfunc_begin0         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp258-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp259-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp259-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp260-.Lfunc_begin0         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp282-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp283-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc64:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   @   starting offset
	.uleb128 .Ltmp252-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp252-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp284-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	88                              @ DW_OP_reg8
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp284-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp285-.Lfunc_begin0         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	82                              @ DW_OP_reg2
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc65:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp261-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp274-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	118                             @ DW_OP_breg6
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc66:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp262-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp264-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc67:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp265-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp267-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc68:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp268-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp269-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc69:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp270-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp271-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc70:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp272-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp279-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc71:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp273-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp280-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	113                             @ DW_OP_breg1
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc72:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp274-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp278-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	118                             @ DW_OP_breg6
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc73:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp277-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp282-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	116                             @ DW_OP_breg4
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc74:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp280-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp281-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	113                             @ DW_OP_breg1
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\253\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc75:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin12-.Lfunc_begin0   @   starting offset
	.uleb128 .Ltmp287-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp287-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp293-.Lfunc_begin0         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc76:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin12-.Lfunc_begin0   @   starting offset
	.uleb128 .Ltmp290-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp290-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp292-.Lfunc_begin0         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc77:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp289-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp291-.Lfunc_begin0         @   ending offset
	.byte	13                              @ Loc expr size
	.byte	114                             @ DW_OP_breg2
	.byte	0                               @ 0
	.byte	168                             @ DW_OP_convert
	.asciz	"\247\200\200"                  @ 
	.byte	168                             @ DW_OP_convert
	.asciz	"\257\200\200"                  @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc78:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp294-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp296-.Lfunc_begin0         @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp296-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp299-.Lfunc_begin0         @   ending offset
	.byte	6                               @ Loc expr size
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	2                               @ 2
	.byte	27                              @ DW_OP_div
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp300-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp302-.Lfunc_begin0         @   ending offset
	.byte	6                               @ Loc expr size
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	2                               @ 2
	.byte	27                              @ DW_OP_div
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp302-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp303-.Lfunc_begin0         @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp303-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp306-.Lfunc_begin0         @   ending offset
	.byte	6                               @ Loc expr size
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	2                               @ 2
	.byte	27                              @ DW_OP_div
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp307-.Lfunc_begin0         @   starting offset
	.uleb128 .Lfunc_end13-.Lfunc_begin0     @   ending offset
	.byte	6                               @ Loc expr size
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	2                               @ 2
	.byte	27                              @ DW_OP_div
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc79:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp311-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp312-.Lfunc_begin0         @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp312-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp316-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc80:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp318-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp319-.Lfunc_begin0         @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp319-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp326-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc81:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp318-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp319-.Lfunc_begin0         @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp319-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp320-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp321-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp323-.Lfunc_begin0         @   ending offset
	.byte	6                               @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp323-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp325-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc82:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp327-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp329-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp332-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp336-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp337-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp338-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc83:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp331-.Lfunc_begin0         @   starting offset
	.uleb128 .Ltmp332-.Lfunc_begin0         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
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
	.byte	3                               @ Abbreviation Code
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
	.byte	4                               @ Abbreviation Code
	.byte	1                               @ DW_TAG_array_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	5                               @ Abbreviation Code
	.byte	33                              @ DW_TAG_subrange_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	55                              @ DW_AT_count
	.byte	5                               @ DW_FORM_data2
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
	.byte	33                              @ DW_TAG_subrange_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	55                              @ DW_AT_count
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	8                               @ Abbreviation Code
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
	.byte	9                               @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	10                              @ Abbreviation Code
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
	.byte	11                              @ Abbreviation Code
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
	.byte	12                              @ Abbreviation Code
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
	.byte	13                              @ Abbreviation Code
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
	.byte	14                              @ Abbreviation Code
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
	.byte	15                              @ Abbreviation Code
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
	.byte	16                              @ Abbreviation Code
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
	.byte	17                              @ Abbreviation Code
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
	.byte	18                              @ Abbreviation Code
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
	.byte	19                              @ Abbreviation Code
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
	.byte	20                              @ Abbreviation Code
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
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	21                              @ Abbreviation Code
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
	.byte	22                              @ Abbreviation Code
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
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	23                              @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	28                              @ DW_AT_const_value
	.byte	13                              @ DW_FORM_sdata
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
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
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
	.byte	53                              @ DW_TAG_volatile_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	27                              @ Abbreviation Code
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
	.byte	1                               @ Abbrev [1] 0xc:0x649 DW_TAG_compile_unit
	.byte	0                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	1                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	2                               @ DW_AT_comp_dir
	.byte	11                              @ DW_AT_low_pc
	.long	.Lfunc_end17-.Lfunc_begin0      @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
	.byte	2                               @ Abbrev [2] 0x27:0x4 DW_TAG_base_type
	.byte	74                              @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	2                               @ Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	73                              @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	2                               @ Abbrev [2] 0x2f:0x4 DW_TAG_base_type
	.byte	72                              @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	3                               @ Abbrev [3] 0x33:0xb DW_TAG_variable
	.byte	3                               @ DW_AT_name
	.long	62                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	117                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	0
	.byte	4                               @ Abbrev [4] 0x3e:0xd DW_TAG_array_type
	.long	75                              @ DW_AT_type
	.byte	5                               @ Abbrev [5] 0x43:0x7 DW_TAG_subrange_type
	.long	79                              @ DW_AT_type
	.short	256                             @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	2                               @ Abbrev [2] 0x4b:0x4 DW_TAG_base_type
	.byte	4                               @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	6                               @ Abbrev [6] 0x4f:0x4 DW_TAG_base_type
	.byte	5                               @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	7                               @ DW_AT_encoding
	.byte	3                               @ Abbrev [3] 0x53:0xb DW_TAG_variable
	.byte	6                               @ DW_AT_name
	.long	94                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	140                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	1
	.byte	4                               @ Abbrev [4] 0x5e:0xc DW_TAG_array_type
	.long	106                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x63:0x6 DW_TAG_subrange_type
	.long	79                              @ DW_AT_type
	.byte	15                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	2                               @ Abbrev [2] 0x6a:0x4 DW_TAG_base_type
	.byte	7                               @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	2                               @ DW_AT_byte_size
	.byte	3                               @ Abbrev [3] 0x6e:0xb DW_TAG_variable
	.byte	8                               @ DW_AT_name
	.long	121                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	150                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	2
	.byte	4                               @ Abbrev [4] 0x79:0xc DW_TAG_array_type
	.long	106                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x7e:0x6 DW_TAG_subrange_type
	.long	79                              @ DW_AT_type
	.byte	3                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	3                               @ Abbrev [3] 0x85:0xb DW_TAG_variable
	.byte	9                               @ DW_AT_name
	.long	144                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	156                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	3
	.byte	4                               @ Abbrev [4] 0x90:0xc DW_TAG_array_type
	.long	106                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x95:0x6 DW_TAG_subrange_type
	.long	79                              @ DW_AT_type
	.byte	16                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	3                               @ Abbrev [3] 0x9c:0xb DW_TAG_variable
	.byte	10                              @ DW_AT_name
	.long	144                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	161                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	4
	.byte	3                               @ Abbrev [3] 0xa7:0xb DW_TAG_variable
	.byte	11                              @ DW_AT_name
	.long	144                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	169                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	5
	.byte	8                               @ Abbrev [8] 0xb2:0x53 DW_TAG_subprogram
	.byte	23                              @ DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	87                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	752                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	261                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	9                               @ Abbrev [9] 0xc2:0xc DW_TAG_variable
	.byte	12                              @ DW_AT_name
	.long	75                              @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	756                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	6
	.byte	9                               @ Abbrev [9] 0xce:0xc DW_TAG_variable
	.byte	13                              @ DW_AT_name
	.long	261                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	757                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	7
	.byte	9                               @ Abbrev [9] 0xda:0xc DW_TAG_variable
	.byte	15                              @ DW_AT_name
	.long	261                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.short	759                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	8
	.byte	10                              @ Abbrev [10] 0xe6:0xa DW_TAG_formal_parameter
	.byte	75                              @ DW_AT_location
	.byte	150                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	753                             @ DW_AT_decl_line
	.long	1611                            @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0xf0:0xa DW_TAG_formal_parameter
	.byte	76                              @ DW_AT_location
	.byte	151                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	754                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0xfa:0xa DW_TAG_variable
	.byte	77                              @ DW_AT_location
	.byte	152                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	758                             @ DW_AT_decl_line
	.long	1611                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	2                               @ Abbrev [2] 0x105:0x4 DW_TAG_base_type
	.byte	14                              @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	3                               @ Abbrev [3] 0x109:0xb DW_TAG_variable
	.byte	16                              @ DW_AT_name
	.long	276                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	115                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	9
	.byte	12                              @ Abbrev [12] 0x114:0x69 DW_TAG_structure_type
	.byte	30                              @ DW_AT_name
	.byte	52                              @ DW_AT_byte_size
	.byte	1                               @ DW_AT_decl_file
	.byte	33                              @ DW_AT_decl_line
	.byte	13                              @ Abbrev [13] 0x119:0x9 DW_TAG_member
	.byte	17                              @ DW_AT_name
	.long	381                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	34                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x122:0x9 DW_TAG_member
	.byte	19                              @ DW_AT_name
	.long	106                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	35                              @ DW_AT_decl_line
	.byte	4                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x12b:0x9 DW_TAG_member
	.byte	20                              @ DW_AT_name
	.long	106                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	36                              @ DW_AT_decl_line
	.byte	6                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x134:0x9 DW_TAG_member
	.byte	21                              @ DW_AT_name
	.long	106                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	37                              @ DW_AT_decl_line
	.byte	8                               @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x13d:0x9 DW_TAG_member
	.byte	22                              @ DW_AT_name
	.long	106                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	38                              @ DW_AT_decl_line
	.byte	10                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x146:0x9 DW_TAG_member
	.byte	23                              @ DW_AT_name
	.long	385                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	40                              @ DW_AT_decl_line
	.byte	12                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x14f:0x9 DW_TAG_member
	.byte	24                              @ DW_AT_name
	.long	397                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	41                              @ DW_AT_decl_line
	.byte	16                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x158:0x9 DW_TAG_member
	.byte	25                              @ DW_AT_name
	.long	385                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	42                              @ DW_AT_decl_line
	.byte	28                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x161:0x9 DW_TAG_member
	.byte	26                              @ DW_AT_name
	.long	397                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
	.byte	32                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x16a:0x9 DW_TAG_member
	.byte	27                              @ DW_AT_name
	.long	385                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	51                              @ DW_AT_decl_line
	.byte	44                              @ DW_AT_data_member_location
	.byte	13                              @ Abbrev [13] 0x173:0x9 DW_TAG_member
	.byte	28                              @ DW_AT_name
	.long	409                             @ DW_AT_type
	.byte	1                               @ DW_AT_decl_file
	.byte	56                              @ DW_AT_decl_line
	.byte	48                              @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	2                               @ Abbrev [2] 0x17d:0x4 DW_TAG_base_type
	.byte	18                              @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	4                               @ Abbrev [4] 0x181:0xc DW_TAG_array_type
	.long	106                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x186:0x6 DW_TAG_subrange_type
	.long	79                              @ DW_AT_type
	.byte	2                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	4                               @ Abbrev [4] 0x18d:0xc DW_TAG_array_type
	.long	106                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x192:0x6 DW_TAG_subrange_type
	.long	79                              @ DW_AT_type
	.byte	6                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	2                               @ Abbrev [2] 0x199:0x4 DW_TAG_base_type
	.byte	29                              @ DW_AT_name
	.byte	8                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	3                               @ Abbrev [3] 0x19d:0xb DW_TAG_variable
	.byte	31                              @ DW_AT_name
	.long	62                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	138                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	10
	.byte	14                              @ Abbrev [14] 0x1a8:0x58 DW_TAG_subprogram
	.byte	11                              @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	75                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	200                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	261                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	15                              @ Abbrev [15] 0x1b7:0x9 DW_TAG_formal_parameter
	.byte	0                               @ DW_AT_location
	.byte	93                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	201                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	15                              @ Abbrev [15] 0x1c0:0x9 DW_TAG_formal_parameter
	.byte	1                               @ DW_AT_location
	.byte	94                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	202                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	16                              @ Abbrev [16] 0x1c9:0x9 DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	95                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	204                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	16                              @ Abbrev [16] 0x1d2:0x9 DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	96                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	204                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	16                              @ Abbrev [16] 0x1db:0x9 DW_TAG_variable
	.byte	4                               @ DW_AT_location
	.byte	97                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	204                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	16                              @ Abbrev [16] 0x1e4:0x9 DW_TAG_variable
	.byte	5                               @ DW_AT_location
	.byte	98                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	205                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	16                              @ Abbrev [16] 0x1ed:0x9 DW_TAG_variable
	.byte	6                               @ DW_AT_location
	.byte	99                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	205                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	16                              @ Abbrev [16] 0x1f6:0x9 DW_TAG_variable
	.byte	7                               @ DW_AT_location
	.byte	100                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	206                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	14                              @ Abbrev [14] 0x200:0x47 DW_TAG_subprogram
	.byte	12                              @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	76                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	242                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	261                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	15                              @ Abbrev [15] 0x20f:0x9 DW_TAG_formal_parameter
	.byte	8                               @ DW_AT_location
	.byte	101                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	243                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	17                              @ Abbrev [17] 0x218:0xa DW_TAG_formal_parameter
	.byte	1                               @ DW_AT_location
	.byte	81
	.byte	102                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	244                             @ DW_AT_decl_line
	.long	1601                            @ DW_AT_type
	.byte	15                              @ Abbrev [15] 0x222:0x9 DW_TAG_formal_parameter
	.byte	9                               @ DW_AT_location
	.byte	103                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	245                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	16                              @ Abbrev [16] 0x22b:0x9 DW_TAG_variable
	.byte	10                              @ DW_AT_location
	.byte	104                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	248                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	16                              @ Abbrev [16] 0x234:0x9 DW_TAG_variable
	.byte	11                              @ DW_AT_location
	.byte	105                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	249                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	16                              @ Abbrev [16] 0x23d:0x9 DW_TAG_variable
	.byte	12                              @ DW_AT_location
	.byte	15                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	247                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	14                              @ Abbrev [14] 0x247:0x19 DW_TAG_subprogram
	.byte	13                              @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	77                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	223                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	261                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	15                              @ Abbrev [15] 0x256:0x9 DW_TAG_formal_parameter
	.byte	13                              @ DW_AT_location
	.byte	106                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	223                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	8                               @ Abbrev [8] 0x260:0x2f DW_TAG_subprogram
	.byte	14                              @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	78                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	273                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	261                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	10                              @ Abbrev [10] 0x270:0xa DW_TAG_formal_parameter
	.byte	14                              @ DW_AT_location
	.byte	107                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	274                             @ DW_AT_decl_line
	.long	1606                            @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x27a:0xa DW_TAG_variable
	.byte	15                              @ DW_AT_location
	.byte	108                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	277                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x284:0xa DW_TAG_variable
	.byte	16                              @ DW_AT_location
	.byte	15                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	276                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	8                               @ Abbrev [8] 0x28f:0x1b DW_TAG_subprogram
	.byte	15                              @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	79                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	295                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	261                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	10                              @ Abbrev [10] 0x29f:0xa DW_TAG_formal_parameter
	.byte	17                              @ DW_AT_location
	.byte	107                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	296                             @ DW_AT_decl_line
	.long	1606                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	8                               @ Abbrev [8] 0x2aa:0x39 DW_TAG_subprogram
	.byte	16                              @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	80                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	309                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	261                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	10                              @ Abbrev [10] 0x2ba:0xa DW_TAG_formal_parameter
	.byte	18                              @ DW_AT_location
	.byte	107                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	310                             @ DW_AT_decl_line
	.long	1606                            @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x2c4:0xa DW_TAG_variable
	.byte	19                              @ DW_AT_location
	.byte	109                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	313                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x2ce:0xa DW_TAG_variable
	.byte	20                              @ DW_AT_location
	.byte	110                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	314                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x2d8:0xa DW_TAG_variable
	.byte	21                              @ DW_AT_location
	.byte	111                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	312                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	8                               @ Abbrev [8] 0x2e3:0x75 DW_TAG_subprogram
	.byte	17                              @ DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	81                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	342                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	261                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	10                              @ Abbrev [10] 0x2f3:0xa DW_TAG_formal_parameter
	.byte	22                              @ DW_AT_location
	.byte	112                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	343                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x2fd:0xa DW_TAG_formal_parameter
	.byte	23                              @ DW_AT_location
	.byte	111                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	344                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x307:0xa DW_TAG_formal_parameter
	.byte	24                              @ DW_AT_location
	.byte	102                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	345                             @ DW_AT_decl_line
	.long	1601                            @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x311:0xa DW_TAG_formal_parameter
	.byte	25                              @ DW_AT_location
	.byte	103                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	346                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x31b:0xa DW_TAG_variable
	.byte	26                              @ DW_AT_location
	.byte	113                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	348                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x325:0xa DW_TAG_variable
	.byte	27                              @ DW_AT_location
	.byte	114                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	349                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x32f:0xa DW_TAG_variable
	.byte	28                              @ DW_AT_location
	.byte	115                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	351                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x339:0xa DW_TAG_variable
	.byte	29                              @ DW_AT_location
	.byte	116                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	350                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x343:0xa DW_TAG_variable
	.byte	30                              @ DW_AT_location
	.byte	117                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	352                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x34d:0xa DW_TAG_variable
	.byte	31                              @ DW_AT_location
	.byte	15                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	353                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	8                               @ Abbrev [8] 0x358:0x57 DW_TAG_subprogram
	.byte	18                              @ DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	82                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	395                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	261                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	10                              @ Abbrev [10] 0x368:0xa DW_TAG_formal_parameter
	.byte	32                              @ DW_AT_location
	.byte	118                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	396                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x372:0xa DW_TAG_formal_parameter
	.byte	33                              @ DW_AT_location
	.byte	119                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	397                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x37c:0xa DW_TAG_formal_parameter
	.byte	34                              @ DW_AT_location
	.byte	111                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	398                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x386:0xa DW_TAG_variable
	.byte	35                              @ DW_AT_location
	.byte	120                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	400                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x390:0xa DW_TAG_variable
	.byte	36                              @ DW_AT_location
	.byte	121                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	402                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x39a:0xa DW_TAG_variable
	.byte	37                              @ DW_AT_location
	.byte	122                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	401                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x3a4:0xa DW_TAG_variable
	.byte	38                              @ DW_AT_location
	.byte	26                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	403                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	18                              @ Abbrev [18] 0x3af:0xf1 DW_TAG_subprogram
	.byte	19                              @ DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	83                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	424                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	10                              @ Abbrev [10] 0x3bb:0xa DW_TAG_formal_parameter
	.byte	39                              @ DW_AT_location
	.byte	123                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	425                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x3c5:0xa DW_TAG_formal_parameter
	.byte	40                              @ DW_AT_location
	.byte	111                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	426                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x3cf:0xa DW_TAG_formal_parameter
	.byte	41                              @ DW_AT_location
	.byte	124                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	427                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x3d9:0xa DW_TAG_formal_parameter
	.byte	42                              @ DW_AT_location
	.byte	125                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	428                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	19                              @ Abbrev [19] 0x3e3:0xc DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	8
	.byte	26                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	429                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	19                              @ Abbrev [19] 0x3ef:0xc DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	12
	.byte	27                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	430                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	19                              @ Abbrev [19] 0x3fb:0xc DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	16
	.byte	126                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	431                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	19                              @ Abbrev [19] 0x407:0xc DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	20
	.byte	107                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	432                             @ DW_AT_decl_line
	.long	1606                            @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x413:0xa DW_TAG_variable
	.byte	43                              @ DW_AT_location
	.byte	127                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	443                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x41d:0xa DW_TAG_variable
	.byte	44                              @ DW_AT_location
	.byte	128                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	435                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x427:0xa DW_TAG_variable
	.byte	45                              @ DW_AT_location
	.byte	129                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	442                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x431:0xa DW_TAG_variable
	.byte	46                              @ DW_AT_location
	.byte	130                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	442                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x43b:0xa DW_TAG_variable
	.byte	47                              @ DW_AT_location
	.byte	131                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	441                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x445:0xa DW_TAG_variable
	.byte	48                              @ DW_AT_location
	.byte	132                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	441                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x44f:0xa DW_TAG_variable
	.byte	49                              @ DW_AT_location
	.byte	133                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	441                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x459:0xa DW_TAG_variable
	.byte	50                              @ DW_AT_location
	.byte	134                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	440                             @ DW_AT_decl_line
	.long	409                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x463:0xa DW_TAG_variable
	.byte	51                              @ DW_AT_location
	.byte	135                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	434                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x46d:0xa DW_TAG_variable
	.byte	52                              @ DW_AT_location
	.byte	136                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	436                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x477:0xa DW_TAG_variable
	.byte	53                              @ DW_AT_location
	.byte	114                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	435                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x481:0xa DW_TAG_variable
	.byte	54                              @ DW_AT_location
	.byte	137                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	438                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x48b:0xa DW_TAG_variable
	.byte	55                              @ DW_AT_location
	.byte	138                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	439                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x495:0xa DW_TAG_variable
	.byte	56                              @ DW_AT_location
	.byte	139                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	437                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	8                               @ Abbrev [8] 0x4a0:0x2f DW_TAG_subprogram
	.byte	20                              @ DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	84                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	637                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	261                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	10                              @ Abbrev [10] 0x4b0:0xa DW_TAG_formal_parameter
	.byte	57                              @ DW_AT_location
	.byte	140                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	638                             @ DW_AT_decl_line
	.long	1611                            @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x4ba:0xa DW_TAG_variable
	.byte	58                              @ DW_AT_location
	.byte	142                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	641                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x4c4:0xa DW_TAG_variable
	.byte	59                              @ DW_AT_location
	.byte	143                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	640                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	8                               @ Abbrev [8] 0x4cf:0x25 DW_TAG_subprogram
	.byte	21                              @ DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	85                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	672                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	261                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	10                              @ Abbrev [10] 0x4df:0xa DW_TAG_formal_parameter
	.byte	60                              @ DW_AT_location
	.byte	144                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	673                             @ DW_AT_decl_line
	.long	1611                            @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x4e9:0xa DW_TAG_variable
	.byte	61                              @ DW_AT_location
	.byte	143                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	675                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	8                               @ Abbrev [8] 0x4f4:0x93 DW_TAG_subprogram
	.byte	22                              @ DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	86                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	698                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	261                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	10                              @ Abbrev [10] 0x504:0xa DW_TAG_formal_parameter
	.byte	62                              @ DW_AT_location
	.byte	145                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	699                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x50e:0xa DW_TAG_formal_parameter
	.byte	63                              @ DW_AT_location
	.byte	146                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	700                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0x518:0xa DW_TAG_formal_parameter
	.byte	64                              @ DW_AT_location
	.byte	107                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	701                             @ DW_AT_decl_line
	.long	1606                            @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x522:0xa DW_TAG_variable
	.byte	65                              @ DW_AT_location
	.byte	108                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	703                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x52c:0xa DW_TAG_variable
	.byte	66                              @ DW_AT_location
	.byte	147                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	703                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x536:0xa DW_TAG_variable
	.byte	67                              @ DW_AT_location
	.byte	112                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	704                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x540:0xa DW_TAG_variable
	.byte	68                              @ DW_AT_location
	.byte	111                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	705                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x54a:0xa DW_TAG_variable
	.byte	69                              @ DW_AT_location
	.byte	15                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	708                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x554:0xa DW_TAG_variable
	.byte	70                              @ DW_AT_location
	.byte	26                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	708                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x55e:0xa DW_TAG_variable
	.byte	71                              @ DW_AT_location
	.byte	148                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	703                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x568:0xa DW_TAG_variable
	.byte	72                              @ DW_AT_location
	.byte	149                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	703                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x572:0xa DW_TAG_variable
	.byte	73                              @ DW_AT_location
	.byte	27                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	706                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x57c:0xa DW_TAG_variable
	.byte	74                              @ DW_AT_location
	.byte	126                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	707                             @ DW_AT_decl_line
	.long	106                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	18                              @ Abbrev [18] 0x587:0x22 DW_TAG_subprogram
	.byte	24                              @ DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	88                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	788                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	19                              @ Abbrev [19] 0x593:0xb DW_TAG_formal_parameter
	.byte	1                               @ DW_AT_location
	.byte	80
	.byte	107                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	789                             @ DW_AT_decl_line
	.long	1606                            @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x59e:0xa DW_TAG_variable
	.byte	78                              @ DW_AT_location
	.byte	153                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	791                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	20                              @ Abbrev [20] 0x5a9:0x23 DW_TAG_subprogram
	.byte	25                              @ DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin14     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	89                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	814                             @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	21                              @ Abbrev [21] 0x5b5:0xc DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	125
	.byte	4
	.byte	154                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	817                             @ DW_AT_decl_line
	.long	1615                            @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x5c1:0xa DW_TAG_variable
	.byte	79                              @ DW_AT_location
	.byte	15                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	816                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	22                              @ Abbrev [22] 0x5cc:0x25 DW_TAG_subprogram
	.byte	26                              @ DW_AT_low_pc
	.long	.Lfunc_end15-.Lfunc_begin15     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	90                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	826                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	11                              @ Abbrev [11] 0x5dc:0xa DW_TAG_variable
	.byte	80                              @ DW_AT_location
	.byte	15                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	828                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x5e6:0xa DW_TAG_variable
	.byte	81                              @ DW_AT_location
	.byte	155                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	829                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	20                              @ Abbrev [20] 0x5f1:0x40 DW_TAG_subprogram
	.byte	27                              @ DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin16     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	91                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	842                             @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	23                              @ Abbrev [23] 0x5fd:0xa DW_TAG_variable
	.byte	2                               @ DW_AT_const_value
	.byte	146                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	848                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	23                              @ Abbrev [23] 0x607:0xa DW_TAG_variable
	.byte	3                               @ DW_AT_const_value
	.byte	156                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	850                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0x611:0xb DW_TAG_variable
	.byte	1                               @ DW_AT_location
	.byte	85
	.byte	15                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	851                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x61c:0xa DW_TAG_variable
	.byte	82                              @ DW_AT_location
	.byte	157                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	847                             @ DW_AT_decl_line
	.long	261                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x626:0xa DW_TAG_variable
	.byte	83                              @ DW_AT_location
	.byte	150                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	846                             @ DW_AT_decl_line
	.long	1611                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	24                              @ Abbrev [24] 0x631:0x10 DW_TAG_subprogram
	.byte	28                              @ DW_AT_low_pc
	.long	.Lfunc_end17-.Lfunc_begin17     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	92                              @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.short	871                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	261                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	25                              @ Abbrev [25] 0x641:0x5 DW_TAG_pointer_type
	.long	106                             @ DW_AT_type
	.byte	25                              @ Abbrev [25] 0x646:0x5 DW_TAG_pointer_type
	.long	276                             @ DW_AT_type
	.byte	2                               @ Abbrev [2] 0x64b:0x4 DW_TAG_base_type
	.byte	141                             @ DW_AT_name
	.byte	8                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	26                              @ Abbrev [26] 0x64f:0x5 DW_TAG_volatile_type
	.long	261                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
.Ldebug_info_end0:
.Lcu_begin1:
	.long	.Ldebug_info_end1-.Ldebug_info_start1 @ Length of Unit
.Ldebug_info_start1:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	33                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	29                              @ DW_AT_low_pc
	.long	.Lfunc_end18-.Lfunc_begin18     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	35                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	30                              @ DW_AT_low_pc
	.long	.Lfunc_end19-.Lfunc_begin19     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	36                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	31                              @ DW_AT_low_pc
	.long	.Lfunc_end20-.Lfunc_begin20     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	37                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	32                              @ DW_AT_low_pc
	.long	.Lfunc_end21-.Lfunc_begin21     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	38                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	33                              @ DW_AT_low_pc
	.long	.Lfunc_end22-.Lfunc_begin22     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	39                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	34                              @ DW_AT_low_pc
	.long	.Lfunc_end23-.Lfunc_begin23     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	40                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	35                              @ DW_AT_low_pc
	.long	.Lfunc_end24-.Lfunc_begin24     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	41                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	36                              @ DW_AT_low_pc
	.long	.Lfunc_end25-.Lfunc_begin25     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	42                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	37                              @ DW_AT_low_pc
	.long	.Lfunc_end26-.Lfunc_begin26     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	43                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	38                              @ DW_AT_low_pc
	.long	.Lfunc_end28-.Lfunc_begin27     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	44                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	39                              @ DW_AT_low_pc
	.long	.Lfunc_end29-.Lfunc_begin29     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	45                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	40                              @ DW_AT_low_pc
	.long	.Lfunc_end30-.Lfunc_begin30     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	46                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	41                              @ DW_AT_low_pc
	.long	.Lfunc_end31-.Lfunc_begin31     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	47                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	42                              @ DW_AT_low_pc
	.long	.Lfunc_end32-.Lfunc_begin32     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	48                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	43                              @ DW_AT_low_pc
	.long	.Lfunc_end33-.Lfunc_begin33     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	49                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	44                              @ DW_AT_low_pc
	.long	.Lfunc_end34-.Lfunc_begin34     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	50                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	45                              @ DW_AT_low_pc
	.long	.Lfunc_end35-.Lfunc_begin35     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	51                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	46                              @ DW_AT_low_pc
	.long	.Lfunc_end36-.Lfunc_begin36     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	52                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	47                              @ DW_AT_low_pc
	.long	.Lfunc_end37-.Lfunc_begin37     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	53                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	48                              @ DW_AT_low_pc
	.long	.Lfunc_end38-.Lfunc_begin38     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	54                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	49                              @ DW_AT_low_pc
	.long	.Lfunc_end39-.Lfunc_begin39     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	55                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	50                              @ DW_AT_low_pc
	.long	.Lfunc_end40-.Lfunc_begin40     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	56                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	51                              @ DW_AT_low_pc
	.long	.Lfunc_end41-.Lfunc_begin41     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	57                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	52                              @ DW_AT_low_pc
	.long	.Lfunc_end42-.Lfunc_begin42     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	58                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	53                              @ DW_AT_low_pc
	.long	.Lfunc_end43-.Lfunc_begin43     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	59                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	54                              @ DW_AT_low_pc
	.long	.Lfunc_end44-.Lfunc_begin44     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	60                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	55                              @ DW_AT_low_pc
	.long	.Lfunc_end45-.Lfunc_begin45     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	61                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	56                              @ DW_AT_low_pc
	.long	.Lfunc_end46-.Lfunc_begin46     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	62                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	57                              @ DW_AT_low_pc
	.long	.Lfunc_end47-.Lfunc_begin47     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	63                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	58                              @ DW_AT_low_pc
	.long	.Lfunc_end48-.Lfunc_begin48     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	64                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	59                              @ DW_AT_low_pc
	.long	.Lfunc_end50-.Lfunc_begin49     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	65                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	60                              @ DW_AT_low_pc
	.long	.Lfunc_end51-.Lfunc_begin51     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	66                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	61                              @ DW_AT_low_pc
	.long	.Lfunc_end52-.Lfunc_begin52     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	67                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	62                              @ DW_AT_low_pc
	.long	.Lfunc_end53-.Lfunc_begin53     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	68                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	63                              @ DW_AT_low_pc
	.long	.Lfunc_end54-.Lfunc_begin54     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	69                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	34                              @ DW_AT_comp_dir
	.byte	64                              @ DW_AT_low_pc
	.long	.Lfunc_end55-.Lfunc_begin55     @ DW_AT_high_pc
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
	.byte	27                              @ Abbrev [27] 0xc:0x1b DW_TAG_compile_unit
	.byte	32                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	70                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	71                              @ DW_AT_comp_dir
	.byte	65                              @ DW_AT_low_pc
	.long	.Lfunc_end57-.Lfunc_begin56     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end37:
	.section	.debug_str_offsets,"",%progbits
	.long	636                             @ Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)" @ string offset=0
.Linfo_string1:
	.asciz	"/workspaces/llvmta/testcases/singletest/g723_enc/g723_enc.c" @ string offset=100
.Linfo_string2:
	.asciz	"/workspaces/llvmta/testcases/singletest/fir2dim" @ string offset=160
.Linfo_string3:
	.asciz	"g723_enc_INPUT"                @ string offset=208
.Linfo_string4:
	.asciz	"unsigned int"                  @ string offset=223
.Linfo_string5:
	.asciz	"__ARRAY_SIZE_TYPE__"           @ string offset=236
.Linfo_string6:
	.asciz	"g723_enc_power2"               @ string offset=256
.Linfo_string7:
	.asciz	"short"                         @ string offset=272
.Linfo_string8:
	.asciz	"g723_enc_qtab_723_24"          @ string offset=278
.Linfo_string9:
	.asciz	"g723_enc_dqlntab"              @ string offset=299
.Linfo_string10:
	.asciz	"g723_enc_witab"                @ string offset=316
.Linfo_string11:
	.asciz	"g723_enc_fitab"                @ string offset=331
.Linfo_string12:
	.asciz	"out_buffer"                    @ string offset=346
.Linfo_string13:
	.asciz	"out_bits"                      @ string offset=357
.Linfo_string14:
	.asciz	"int"                           @ string offset=366
.Linfo_string15:
	.asciz	"i"                             @ string offset=370
.Linfo_string16:
	.asciz	"g723_enc_state"                @ string offset=372
.Linfo_string17:
	.asciz	"yl"                            @ string offset=387
.Linfo_string18:
	.asciz	"long"                          @ string offset=390
.Linfo_string19:
	.asciz	"yu"                            @ string offset=395
.Linfo_string20:
	.asciz	"dms"                           @ string offset=398
.Linfo_string21:
	.asciz	"dml"                           @ string offset=402
.Linfo_string22:
	.asciz	"ap"                            @ string offset=406
.Linfo_string23:
	.asciz	"a"                             @ string offset=409
.Linfo_string24:
	.asciz	"b"                             @ string offset=411
.Linfo_string25:
	.asciz	"pk"                            @ string offset=413
.Linfo_string26:
	.asciz	"dq"                            @ string offset=416
.Linfo_string27:
	.asciz	"sr"                            @ string offset=419
.Linfo_string28:
	.asciz	"td"                            @ string offset=422
.Linfo_string29:
	.asciz	"char"                          @ string offset=425
.Linfo_string30:
	.asciz	"g723_enc_state_t"              @ string offset=430
.Linfo_string31:
	.asciz	"g723_enc_OUTPUT"               @ string offset=447
.Linfo_string32:
	.asciz	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)" @ string offset=463
.Linfo_string33:
	.asciz	"../absvdi2.c"                  @ string offset=584
.Linfo_string34:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" @ string offset=597
.Linfo_string35:
	.asciz	"../int_util.c"                 @ string offset=659
.Linfo_string36:
	.asciz	"../absvsi2.c"                  @ string offset=673
.Linfo_string37:
	.asciz	"../addvdi3.c"                  @ string offset=686
.Linfo_string38:
	.asciz	"../addvsi3.c"                  @ string offset=699
.Linfo_string39:
	.asciz	"../ashldi3.c"                  @ string offset=712
.Linfo_string40:
	.asciz	"../ashrdi3.c"                  @ string offset=725
.Linfo_string41:
	.asciz	"../clzdi2.c"                   @ string offset=738
.Linfo_string42:
	.asciz	"../clzsi2.c"                   @ string offset=750
.Linfo_string43:
	.asciz	"../cmpdi2.c"                   @ string offset=762
.Linfo_string44:
	.asciz	"../ctzdi2.c"                   @ string offset=774
.Linfo_string45:
	.asciz	"../ctzsi2.c"                   @ string offset=786
.Linfo_string46:
	.asciz	"../divdi3.c"                   @ string offset=798
.Linfo_string47:
	.asciz	"../udivmoddi4.c"               @ string offset=810
.Linfo_string48:
	.asciz	"../divmoddi4.c"                @ string offset=826
.Linfo_string49:
	.asciz	"../divmodsi4.c"                @ string offset=841
.Linfo_string50:
	.asciz	"../divsi3.c"                   @ string offset=856
.Linfo_string51:
	.asciz	"../ffsdi2.c"                   @ string offset=868
.Linfo_string52:
	.asciz	"../ffssi2.c"                   @ string offset=880
.Linfo_string53:
	.asciz	"../lshrdi3.c"                  @ string offset=892
.Linfo_string54:
	.asciz	"../moddi3.c"                   @ string offset=905
.Linfo_string55:
	.asciz	"../modsi3.c"                   @ string offset=917
.Linfo_string56:
	.asciz	"../mulvdi3.c"                  @ string offset=929
.Linfo_string57:
	.asciz	"../mulvsi3.c"                  @ string offset=942
.Linfo_string58:
	.asciz	"../paritydi2.c"                @ string offset=955
.Linfo_string59:
	.asciz	"../paritysi2.c"                @ string offset=970
.Linfo_string60:
	.asciz	"../popcountdi2.c"              @ string offset=985
.Linfo_string61:
	.asciz	"../popcountsi2.c"              @ string offset=1002
.Linfo_string62:
	.asciz	"../subvdi3.c"                  @ string offset=1019
.Linfo_string63:
	.asciz	"../subvsi3.c"                  @ string offset=1032
.Linfo_string64:
	.asciz	"../ucmpdi2.c"                  @ string offset=1045
.Linfo_string65:
	.asciz	"../udivdi3.c"                  @ string offset=1058
.Linfo_string66:
	.asciz	"../udivmodsi4.c"               @ string offset=1071
.Linfo_string67:
	.asciz	"../udivsi3.c"                  @ string offset=1087
.Linfo_string68:
	.asciz	"../umoddi3.c"                  @ string offset=1100
.Linfo_string69:
	.asciz	"../umodsi3.c"                  @ string offset=1113
.Linfo_string70:
	.asciz	"../memory.c"                   @ string offset=1126
.Linfo_string71:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" @ string offset=1138
.Linfo_string72:
	.asciz	"DW_ATE_unsigned_8"             @ string offset=1200
.Linfo_string73:
	.asciz	"DW_ATE_unsigned_16"            @ string offset=1218
.Linfo_string74:
	.asciz	"DW_ATE_unsigned_32"            @ string offset=1237
.Linfo_string75:
	.asciz	"g723_enc_fmult"                @ string offset=1256
.Linfo_string76:
	.asciz	"g723_enc_quan"                 @ string offset=1271
.Linfo_string77:
	.asciz	"g723_enc_abs"                  @ string offset=1285
.Linfo_string78:
	.asciz	"g723_enc_predictor_zero"       @ string offset=1298
.Linfo_string79:
	.asciz	"g723_enc_predictor_pole"       @ string offset=1322
.Linfo_string80:
	.asciz	"g723_enc_step_size"            @ string offset=1346
.Linfo_string81:
	.asciz	"g723_enc_quantize"             @ string offset=1365
.Linfo_string82:
	.asciz	"g723_enc_reconstruct"          @ string offset=1383
.Linfo_string83:
	.asciz	"g723_enc_update"               @ string offset=1404
.Linfo_string84:
	.asciz	"g723_enc_alaw2linear"          @ string offset=1420
.Linfo_string85:
	.asciz	"g723_enc_ulaw2linear"          @ string offset=1441
.Linfo_string86:
	.asciz	"g723_enc_g723_24_encoder"      @ string offset=1462
.Linfo_string87:
	.asciz	"g723_enc_pack_output"          @ string offset=1487
.Linfo_string88:
	.asciz	"g723_enc_init_state"           @ string offset=1508
.Linfo_string89:
	.asciz	"g723_enc_init"                 @ string offset=1528
.Linfo_string90:
	.asciz	"g723_enc_return"               @ string offset=1542
.Linfo_string91:
	.asciz	"g723_enc_main"                 @ string offset=1558
.Linfo_string92:
	.asciz	"main"                          @ string offset=1572
.Linfo_string93:
	.asciz	"an"                            @ string offset=1577
.Linfo_string94:
	.asciz	"srn"                           @ string offset=1580
.Linfo_string95:
	.asciz	"anmag"                         @ string offset=1584
.Linfo_string96:
	.asciz	"anexp"                         @ string offset=1590
.Linfo_string97:
	.asciz	"anmant"                        @ string offset=1596
.Linfo_string98:
	.asciz	"wanmant"                       @ string offset=1603
.Linfo_string99:
	.asciz	"wanexp"                        @ string offset=1611
.Linfo_string100:
	.asciz	"retval"                        @ string offset=1618
.Linfo_string101:
	.asciz	"val"                           @ string offset=1625
.Linfo_string102:
	.asciz	"table"                         @ string offset=1629
.Linfo_string103:
	.asciz	"size"                          @ string offset=1635
.Linfo_string104:
	.asciz	"j"                             @ string offset=1640
.Linfo_string105:
	.asciz	"k"                             @ string offset=1642
.Linfo_string106:
	.asciz	"num"                           @ string offset=1644
.Linfo_string107:
	.asciz	"state_ptr"                     @ string offset=1648
.Linfo_string108:
	.asciz	"sezi"                          @ string offset=1658
.Linfo_string109:
	.asciz	"dif"                           @ string offset=1663
.Linfo_string110:
	.asciz	"al"                            @ string offset=1667
.Linfo_string111:
	.asciz	"y"                             @ string offset=1670
.Linfo_string112:
	.asciz	"d"                             @ string offset=1672
.Linfo_string113:
	.asciz	"dqm"                           @ string offset=1674
.Linfo_string114:
	.asciz	"exp"                           @ string offset=1678
.Linfo_string115:
	.asciz	"dl"                            @ string offset=1682
.Linfo_string116:
	.asciz	"mant"                          @ string offset=1685
.Linfo_string117:
	.asciz	"dln"                           @ string offset=1690
.Linfo_string118:
	.asciz	"sign"                          @ string offset=1694
.Linfo_string119:
	.asciz	"dqln"                          @ string offset=1699
.Linfo_string120:
	.asciz	"dql"                           @ string offset=1704
.Linfo_string121:
	.asciz	"dqt"                           @ string offset=1708
.Linfo_string122:
	.asciz	"dex"                           @ string offset=1712
.Linfo_string123:
	.asciz	"code_size"                     @ string offset=1716
.Linfo_string124:
	.asciz	"wi"                            @ string offset=1726
.Linfo_string125:
	.asciz	"fi"                            @ string offset=1729
.Linfo_string126:
	.asciz	"dqsez"                         @ string offset=1732
.Linfo_string127:
	.asciz	"pk0"                           @ string offset=1738
.Linfo_string128:
	.asciz	"mag"                           @ string offset=1742
.Linfo_string129:
	.asciz	"ylfrac"                        @ string offset=1746
.Linfo_string130:
	.asciz	"thr1"                          @ string offset=1753
.Linfo_string131:
	.asciz	"ylint"                         @ string offset=1758
.Linfo_string132:
	.asciz	"dqthr"                         @ string offset=1764
.Linfo_string133:
	.asciz	"thr2"                          @ string offset=1770
.Linfo_string134:
	.asciz	"tr"                            @ string offset=1775
.Linfo_string135:
	.asciz	"cnt"                           @ string offset=1778
.Linfo_string136:
	.asciz	"a2p"                           @ string offset=1782
.Linfo_string137:
	.asciz	"pks1"                          @ string offset=1786
.Linfo_string138:
	.asciz	"fa1"                           @ string offset=1791
.Linfo_string139:
	.asciz	"a1ul"                          @ string offset=1795
.Linfo_string140:
	.asciz	"a_val"                         @ string offset=1800
.Linfo_string141:
	.asciz	"unsigned char"                 @ string offset=1806
.Linfo_string142:
	.asciz	"seg"                           @ string offset=1820
.Linfo_string143:
	.asciz	"t"                             @ string offset=1824
.Linfo_string144:
	.asciz	"u_val"                         @ string offset=1826
.Linfo_string145:
	.asciz	"sl"                            @ string offset=1832
.Linfo_string146:
	.asciz	"in_coding"                     @ string offset=1835
.Linfo_string147:
	.asciz	"sei"                           @ string offset=1845
.Linfo_string148:
	.asciz	"se"                            @ string offset=1849
.Linfo_string149:
	.asciz	"sez"                           @ string offset=1852
.Linfo_string150:
	.asciz	"code"                          @ string offset=1856
.Linfo_string151:
	.asciz	"bits"                          @ string offset=1861
.Linfo_string152:
	.asciz	"out_byte"                      @ string offset=1866
.Linfo_string153:
	.asciz	"cnta"                          @ string offset=1875
.Linfo_string154:
	.asciz	"x"                             @ string offset=1880
.Linfo_string155:
	.asciz	"check_sum"                     @ string offset=1882
.Linfo_string156:
	.asciz	"enc_bits"                      @ string offset=1892
.Linfo_string157:
	.asciz	"resid"                         @ string offset=1901
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
	.long	.Linfo_string114
	.long	.Linfo_string115
	.long	.Linfo_string116
	.long	.Linfo_string117
	.long	.Linfo_string118
	.long	.Linfo_string119
	.long	.Linfo_string120
	.long	.Linfo_string121
	.long	.Linfo_string122
	.long	.Linfo_string123
	.long	.Linfo_string124
	.long	.Linfo_string125
	.long	.Linfo_string126
	.long	.Linfo_string127
	.long	.Linfo_string128
	.long	.Linfo_string129
	.long	.Linfo_string130
	.long	.Linfo_string131
	.long	.Linfo_string132
	.long	.Linfo_string133
	.long	.Linfo_string134
	.long	.Linfo_string135
	.long	.Linfo_string136
	.long	.Linfo_string137
	.long	.Linfo_string138
	.long	.Linfo_string139
	.long	.Linfo_string140
	.long	.Linfo_string141
	.long	.Linfo_string142
	.long	.Linfo_string143
	.long	.Linfo_string144
	.long	.Linfo_string145
	.long	.Linfo_string146
	.long	.Linfo_string147
	.long	.Linfo_string148
	.long	.Linfo_string149
	.long	.Linfo_string150
	.long	.Linfo_string151
	.long	.Linfo_string152
	.long	.Linfo_string153
	.long	.Linfo_string154
	.long	.Linfo_string155
	.long	.Linfo_string156
	.long	.Linfo_string157
	.section	.debug_addr,"",%progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 @ Length of contribution
.Ldebug_addr_start0:
	.short	5                               @ DWARF version number
	.byte	4                               @ Address size
	.byte	0                               @ Segment selector size
.Laddr_table_base0:
	.long	g723_enc_INPUT
	.long	g723_enc_power2
	.long	g723_enc_qtab_723_24
	.long	g723_enc_dqlntab
	.long	g723_enc_witab
	.long	g723_enc_fitab
	.long	g723_enc_pack_output.out_buffer
	.long	g723_enc_pack_output.out_bits
	.long	g723_enc_pack_output.i
	.long	g723_enc_state
	.long	g723_enc_OUTPUT
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
	.long	.Lfunc_begin47
	.long	.Lfunc_begin48
	.long	.Lfunc_begin49
	.long	.Lfunc_begin51
	.long	.Lfunc_begin52
	.long	.Lfunc_begin53
	.long	.Lfunc_begin54
	.long	.Lfunc_begin55
	.long	.Lfunc_begin56
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
