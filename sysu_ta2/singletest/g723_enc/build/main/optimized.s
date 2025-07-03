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
	.globl	g723_enc_fmult                  @ -- Begin function g723_enc_fmult
	.p2align	2
	.type	g723_enc_fmult,%function
	.code	32                              @ @g723_enc_fmult
g723_enc_fmult:
.Lfunc_begin0:
	.file	1 "/workspaces/llvmta/testcases" "batchtest/g723_enc/g723_enc.c" md5 0x2ace5cafdf45d5556fee9feb4e30ede7
	.loc	1 203 0                         @ batchtest/g723_enc/g723_enc.c:203:0
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
	sub	sp, sp, #8
	str	r1, [sp, #4]                    @ 4-byte Spill
.Ltmp0:
	.loc	1 209 11 prologue_end           @ batchtest/g723_enc/g723_enc.c:209:11
	ldr	r1, .LCPI0_0
	mov	r0, #255
	orr	r0, r0, #7936
	mov	r2, #3
	bl	g723_enc_quan
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	sub	r2, r0, #6
	.loc	1 210 22                        @ batchtest/g723_enc/g723_enc.c:210:22
	lsl	r0, r2, #16
	mov	r1, #0
	.loc	1 210 21 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:210:21
	sub	r12, r1, r0, asr #16
	mov	r0, #15
	.loc	1 211 12 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:211:12
	and	r0, r0, r3, lsr #6
	add	r0, r0, r2
	sub	r2, r0, #13
	mov	r0, #16711680
	orr	r0, r0, #520093696
	.loc	1 213 15                        @ batchtest/g723_enc/g723_enc.c:213:15
	lsl	r0, r0, r12
	asr	r0, r0, #16
	.loc	1 213 30 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:213:30
	and	r12, r3, #63
	.loc	1 213 22                        @ batchtest/g723_enc/g723_enc.c:213:22
	mul	r3, r0, r12
	mov	r0, #196608
	.loc	1 214 14 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:214:14
	add	r0, r0, r3, lsl #12
	asr	r0, r0, #16
	.loc	1 214 26 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:214:26
	lsl	r2, r2, #16
	.loc	1 214 25                        @ batchtest/g723_enc/g723_enc.c:214:25
	sub	r1, r1, r2, asr #16
	.loc	1 214 22                        @ batchtest/g723_enc/g723_enc.c:214:22
	asr	r0, r0, r1
	.loc	1 216 3 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:216:3
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp1:
	.p2align	2
@ %bb.1:
	.loc	1 0 3 is_stmt 0                 @ batchtest/g723_enc/g723_enc.c:0:3
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
	.loc	1 244 0 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:244:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	1 250 9 prologue_end            @ batchtest/g723_enc/g723_enc.c:250:9
	b	.LBB1_1
.LBB1_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 9 is_stmt 0                 @ batchtest/g723_enc/g723_enc.c:0:9
	mov	r0, #1
	.loc	1 250 3                         @ batchtest/g723_enc/g723_enc.c:250:3
	cmp	r0, #0
	bne	.LBB1_4
	b	.LBB1_2
.LBB1_2:                                @ %for.body
                                        @   in Loop: Header=BB1_1 Depth=1
	.loc	1 255 3 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:255:3
	b	.LBB1_3
.LBB1_3:                                @ %for.inc
                                        @   in Loop: Header=BB1_1 Depth=1
	.loc	1 250 3                         @ batchtest/g723_enc/g723_enc.c:250:3
	b	.LBB1_1
.LBB1_4:                                @ %for.end
	.loc	1 0 3 is_stmt 0                 @ batchtest/g723_enc/g723_enc.c:0:3
	mov	r0, #0
	.loc	1 257 3 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:257:3
	bx	lr
.Ltmp2:
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
	.loc	1 222 0                         @ batchtest/g723_enc/g723_enc.c:222:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	1 223 3 prologue_end            @ batchtest/g723_enc/g723_enc.c:223:3
	bx	lr
.Ltmp3:
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
	.loc	1 270 0                         @ batchtest/g723_enc/g723_enc.c:270:0
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
	mov	r1, r0
	str	r1, [sp, #12]                   @ 4-byte Spill
.Ltmp4:
	.loc	1 274 26 prologue_end           @ batchtest/g723_enc/g723_enc.c:274:26
	ldrsh	r0, [r1, #16]
	.loc	1 274 44 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:274:44
	asr	r0, r0, #2
	.loc	1 274 50                        @ batchtest/g723_enc/g723_enc.c:274:50
	ldrsh	r1, [r1, #32]
	.loc	1 274 10                        @ batchtest/g723_enc/g723_enc.c:274:10
	bl	g723_enc_fmult
	mov	r1, #1
	str	r1, [r11, #-8]                  @ 4-byte Spill
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	1 276 9 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:276:9
	b	.LBB3_1
.LBB3_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/g723_enc/g723_enc.c:0:0
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 276 3                         @ batchtest/g723_enc/g723_enc.c:276:3
	cmp	r0, #2
	beq	.LBB3_4
	b	.LBB3_2
.LBB3_2:                                @ %for.body
                                        @   in Loop: Header=BB3_1 Depth=1
	.loc	1 277 29 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:277:29
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	add	r1, r0, r1, lsl #1
	ldrsh	r0, [r1, #16]
	.loc	1 277 47 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:277:47
	asr	r0, r0, #2
	.loc	1 277 53                        @ batchtest/g723_enc/g723_enc.c:277:53
	ldrsh	r1, [r1, #32]
	.loc	1 277 13                        @ batchtest/g723_enc/g723_enc.c:277:13
	bl	g723_enc_fmult
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 277 5                         @ batchtest/g723_enc/g723_enc.c:277:5
	b	.LBB3_3
.LBB3_3:                                @ %for.inc
                                        @   in Loop: Header=BB3_1 Depth=1
	.loc	1 277 10                        @ batchtest/g723_enc/g723_enc.c:277:10
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	add	r0, r0, r2
	.loc	1 276 24 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:276:24
	add	r1, r1, #1
	str	r1, [r11, #-8]                  @ 4-byte Spill
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	1 276 3 is_stmt 0               @ batchtest/g723_enc/g723_enc.c:276:3
	b	.LBB3_1
.LBB3_4:                                @ %for.end
	.loc	1 279 3 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:279:3
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp5:
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
	.loc	1 292 0                         @ batchtest/g723_enc/g723_enc.c:292:0
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
	mov	r1, r0
	str	r1, [sp]                        @ 4-byte Spill
.Ltmp6:
	.loc	1 293 28 prologue_end           @ batchtest/g723_enc/g723_enc.c:293:28
	ldrsh	r0, [r1, #14]
	.loc	1 293 46 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:293:46
	asr	r0, r0, #2
	.loc	1 293 52                        @ batchtest/g723_enc/g723_enc.c:293:52
	ldrsh	r1, [r1, #46]
	.loc	1 293 12                        @ batchtest/g723_enc/g723_enc.c:293:12
	bl	g723_enc_fmult
	ldr	r1, [sp]                        @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 294 28 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:294:28
	ldrsh	r0, [r1, #12]
	.loc	1 294 46 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:294:46
	asr	r0, r0, #2
	.loc	1 294 52                        @ batchtest/g723_enc/g723_enc.c:294:52
	ldrsh	r1, [r1, #44]
	.loc	1 294 12                        @ batchtest/g723_enc/g723_enc.c:294:12
	bl	g723_enc_fmult
	mov	r1, r0
	.loc	1 293 73 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:293:73
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	add	r0, r0, r1
	.loc	1 293 3 is_stmt 0               @ batchtest/g723_enc/g723_enc.c:293:3
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp7:
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
	.loc	1 306 0 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:306:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	1 311 23 prologue_end           @ batchtest/g723_enc/g723_enc.c:311:23
	ldrsh	r0, [r0, #4]
	.loc	1 311 3 is_stmt 0               @ batchtest/g723_enc/g723_enc.c:311:3
	bx	lr
.Ltmp8:
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
	.loc	1 329 0 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:329:0
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
	str	r3, [sp, #8]                    @ 4-byte Spill
	str	r2, [sp, #4]                    @ 4-byte Spill
	str	r1, [sp]                        @ 4-byte Spill
.Ltmp9:
	.loc	1 342 9 prologue_end            @ batchtest/g723_enc/g723_enc.c:342:9
	bl	g723_enc_abs
	.loc	1 343 24                        @ batchtest/g723_enc/g723_enc.c:343:24
	lsl	r0, r0, #16
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	1 343 28 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:343:28
	asr	r0, r0, #17
	.loc	1 343 9                         @ batchtest/g723_enc/g723_enc.c:343:9
	ldr	r1, .LCPI6_0
	mov	r2, #15
	bl	g723_enc_quan
	ldr	r12, [sp]                       @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	mov	r3, r0
	.loc	1 344 18 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:344:18
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	asr	r0, r0, #9
	.loc	1 344 28 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:344:28
	lsl	lr, r3, #16
	asr	lr, lr, #16
	.loc	1 344 25                        @ batchtest/g723_enc/g723_enc.c:344:25
	asr	lr, r0, lr
	mov	r0, #8323072
	.loc	1 352 9 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:352:9
	and	r0, r0, lr, lsl #16
	orr	r0, r0, r3, lsl #23
	mov	r3, #16711680
	orr	r3, r3, #-16777216
	.loc	1 359 22                        @ batchtest/g723_enc/g723_enc.c:359:22
	and	r3, r3, r12, lsl #14
	sub	r0, r0, r3
	asr	r0, r0, #16
	.loc	1 359 7 is_stmt 0               @ batchtest/g723_enc/g723_enc.c:359:7
	bl	g723_enc_quan
	.loc	1 361 3 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:361:3
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp10:
	.p2align	2
@ %bb.1:
	.loc	1 0 3 is_stmt 0                 @ batchtest/g723_enc/g723_enc.c:0:3
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
	.loc	1 375 0 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:375:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	ldr	r1, .LCPI7_0
.Ltmp11:
	.loc	1 384 12 prologue_end           @ batchtest/g723_enc/g723_enc.c:384:12
	cmp	r0, #0
	movne	r0, r1
	.loc	1 384 3 is_stmt 0               @ batchtest/g723_enc/g723_enc.c:384:3
	bx	lr
.Ltmp12:
	.p2align	2
@ %bb.1:
	.loc	1 0 3                           @ batchtest/g723_enc/g723_enc.c:0:3
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
	.loc	1 404 0 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:404:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
	str	r3, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #36]
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r1, [sp, #32]
	str	r1, [sp, #20]                   @ 4-byte Spill
.Ltmp13:
	.loc	1 420 22 prologue_end           @ batchtest/g723_enc/g723_enc.c:420:22
	ldr	r0, [r0]
	.loc	1 423 12                        @ batchtest/g723_enc/g723_enc.c:423:12
	lsl	r0, r0, #1
	.loc	1 423 10 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:423:10
	cmp	r0, #655360
	blt	.LBB8_2
	b	.LBB8_1
.LBB8_1:                                @ %cond.true
	b	.LBB8_3
.LBB8_2:                                @ %cond.false
	b	.LBB8_3
.LBB8_3:                                @ %cond.end
	.loc	1 0 10                          @ batchtest/g723_enc/g723_enc.c:0:10
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	mov	r0, #544
	.loc	1 435 17 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:435:17
	strh	r0, [r1, #4]
	.loc	1 440 52                        @ batchtest/g723_enc/g723_enc.c:440:52
	ldr	r0, [r1]
	.loc	1 440 40 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:440:40
	rsb	r2, r0, #0
	.loc	1 440 34                        @ batchtest/g723_enc/g723_enc.c:440:34
	add	r0, r0, r2, asr #6
	.loc	1 440 17                        @ batchtest/g723_enc/g723_enc.c:440:17
	add	r0, r0, #544
	str	r0, [r1]
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 445 21 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:445:21
	strh	r0, [r1, #12]
	.loc	1 446 21                        @ batchtest/g723_enc/g723_enc.c:446:21
	strh	r0, [r1, #14]
	.loc	1 447 21                        @ batchtest/g723_enc/g723_enc.c:447:21
	strh	r0, [r1, #16]
	.loc	1 448 21                        @ batchtest/g723_enc/g723_enc.c:448:21
	strh	r0, [r1, #18]
	.loc	1 449 21                        @ batchtest/g723_enc/g723_enc.c:449:21
	strh	r0, [r1, #20]
	.loc	1 450 21                        @ batchtest/g723_enc/g723_enc.c:450:21
	strh	r0, [r1, #22]
	.loc	1 451 21                        @ batchtest/g723_enc/g723_enc.c:451:21
	strh	r0, [r1, #24]
	.loc	1 452 21                        @ batchtest/g723_enc/g723_enc.c:452:21
	strh	r0, [r1, #26]
	mov	r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 456 9                         @ batchtest/g723_enc/g723_enc.c:456:9
	b	.LBB8_4
.LBB8_4:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/g723_enc/g723_enc.c:0:0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 456 3                         @ batchtest/g723_enc/g723_enc.c:456:3
	cmp	r0, #0
	beq	.LBB8_7
	b	.LBB8_5
.LBB8_5:                                @ %for.body
                                        @   in Loop: Header=BB8_4 Depth=1
	.loc	1 457 28 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:457:28
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	add	r1, r0, r1, lsl #1
	ldrh	r0, [r1, #30]
	.loc	1 457 26 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:457:26
	strh	r0, [r1, #32]
	.loc	1 457 5                         @ batchtest/g723_enc/g723_enc.c:457:5
	b	.LBB8_6
.LBB8_6:                                @ %for.inc
                                        @   in Loop: Header=BB8_4 Depth=1
	.loc	1 456 30 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:456:30
	ldr	r0, [sp]                        @ 4-byte Reload
	sub	r0, r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 456 3 is_stmt 0               @ batchtest/g723_enc/g723_enc.c:456:3
	b	.LBB8_4
.LBB8_7:                                @ %for.end
	.loc	1 416 9 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:416:9
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	lsr	r0, r0, #31
	mov	r3, #3104
	orr	r3, r3, #61440
	.loc	1 459 22                        @ batchtest/g723_enc/g723_enc.c:459:22
	strh	r3, [r1, #32]
	.loc	1 462 24                        @ batchtest/g723_enc/g723_enc.c:462:24
	ldrh	r3, [r1, #44]
	.loc	1 462 22 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:462:22
	strh	r3, [r1, #46]
	mov	r3, #32
	.loc	1 464 22 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:464:22
	strh	r3, [r1, #44]
	.loc	1 468 24                        @ batchtest/g723_enc/g723_enc.c:468:24
	ldrh	r3, [r1, #28]
	.loc	1 468 22 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:468:22
	strh	r3, [r1, #30]
	.loc	1 469 22 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:469:22
	strh	r0, [r1, #28]
	mov	r0, #0
	.loc	1 472 17                        @ batchtest/g723_enc/g723_enc.c:472:17
	strb	r0, [r1, #48]
	.loc	1 478 28                        @ batchtest/g723_enc/g723_enc.c:478:28
	ldrsh	r0, [r1, #6]
	.loc	1 478 26 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:478:26
	sub	r3, r2, r0
	.loc	1 478 18                        @ batchtest/g723_enc/g723_enc.c:478:18
	add	r0, r0, r3, lsr #5
	strh	r0, [r1, #6]
	.loc	1 479 39 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:479:39
	ldrsh	r0, [r1, #8]
	.loc	1 479 37 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:479:37
	rsb	r2, r0, r2, lsl #2
	.loc	1 479 18                        @ batchtest/g723_enc/g723_enc.c:479:18
	add	r0, r0, r2, lsr #7
	strh	r0, [r1, #8]
	mov	r0, #256
	.loc	1 481 17 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:481:17
	strh	r0, [r1, #10]
	.loc	1 482 1                         @ batchtest/g723_enc/g723_enc.c:482:1
	add	sp, sp, #24
	bx	lr
.Ltmp14:
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
	.loc	1 492 0                         @ batchtest/g723_enc/g723_enc.c:492:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	mov	r1, r0
	lsl	r0, r1, #24
	asr	r0, r0, #24
                                        @ kill: def $r2 killed $r1
.Ltmp15:
	.loc	1 496 9 prologue_end            @ batchtest/g723_enc/g723_enc.c:496:9
	eor	r3, r1, #85
	mov	r1, #264
	.loc	1 498 30                        @ batchtest/g723_enc/g723_enc.c:498:30
	orr	r1, r1, r3, lsl #4
	mov	r2, #7
	.loc	1 499 42                        @ batchtest/g723_enc/g723_enc.c:499:42
	and	r2, r2, r3, lsr #4
	.loc	1 500 5                         @ batchtest/g723_enc/g723_enc.c:500:5
	and	r1, r1, #504
	.loc	1 501 13                        @ batchtest/g723_enc/g723_enc.c:501:13
	sub	r2, r2, #1
	.loc	1 501 5 is_stmt 0               @ batchtest/g723_enc/g723_enc.c:501:5
	lsl	r1, r1, r2
	str	r1, [sp, #4]                    @ 4-byte Spill
	.loc	1 503 12 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:503:12
	cmn	r0, #1
	bgt	.LBB9_2
	b	.LBB9_1
.LBB9_1:                                @ %cond.true
	.loc	1 0 12 is_stmt 0                @ batchtest/g723_enc/g723_enc.c:0:12
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 503 12                        @ batchtest/g723_enc/g723_enc.c:503:12
	b	.LBB9_3
.LBB9_2:                                @ %cond.false
	.loc	1 503 39                        @ batchtest/g723_enc/g723_enc.c:503:39
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	rsb	r0, r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 503 12                        @ batchtest/g723_enc/g723_enc.c:503:12
	b	.LBB9_3
.LBB9_3:                                @ %cond.end
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	1 503 3                         @ batchtest/g723_enc/g723_enc.c:503:3
	add	sp, sp, #8
	bx	lr
.Ltmp16:
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
	.loc	1 519 0 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:519:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	mov	r1, r0
	lsl	r0, r1, #24
	asr	r0, r0, #24
                                        @ kill: def $r2 killed $r1
.Ltmp17:
	.loc	1 523 11 prologue_end           @ batchtest/g723_enc/g723_enc.c:523:11
	mvn	r3, r1
	mov	r1, #132
	.loc	1 529 39                        @ batchtest/g723_enc/g723_enc.c:529:39
	orr	r1, r1, r3, lsl #3
	and	r1, r1, #255
	mov	r2, #7
	.loc	1 530 46                        @ batchtest/g723_enc/g723_enc.c:530:46
	and	r2, r2, r3, lsr #4
	.loc	1 530 5 is_stmt 0               @ batchtest/g723_enc/g723_enc.c:530:5
	lsl	r1, r1, r2
	str	r1, [sp, #4]                    @ 4-byte Spill
	.loc	1 532 12 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:532:12
	cmp	r0, #0
	bmi	.LBB10_2
	b	.LBB10_1
.LBB10_1:                               @ %cond.true
	.loc	1 532 42 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:532:42
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	rsb	r0, r0, #132
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 532 12                        @ batchtest/g723_enc/g723_enc.c:532:12
	b	.LBB10_3
.LBB10_2:                               @ %cond.false
	.loc	1 532 54                        @ batchtest/g723_enc/g723_enc.c:532:54
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	sub	r0, r0, #132
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 532 12                        @ batchtest/g723_enc/g723_enc.c:532:12
	b	.LBB10_3
.LBB10_3:                               @ %cond.end
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	1 532 3                         @ batchtest/g723_enc/g723_enc.c:532:3
	add	sp, sp, #8
	bx	lr
.Ltmp18:
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
	.loc	1 547 0 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:547:0
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
	sub	sp, sp, #48
	mov	r6, r2
.Ltmp19:
	.loc	1 556 8 prologue_end            @ batchtest/g723_enc/g723_enc.c:556:8
	and	r0, r0, #255
	bl	g723_enc_alaw2linear
	.loc	1 556 35 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:556:35
	lsr	r0, r0, #2
	str	r0, [sp, #20]                   @ 4-byte Spill
	.loc	1 559 10 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:559:10
	mov	r0, r6
	bl	g723_enc_predictor_zero
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	1 560 9                         @ batchtest/g723_enc/g723_enc.c:560:9
	lsl	r0, r0, #16
	str	r0, [sp, #28]                   @ 4-byte Spill
	.loc	1 561 16                        @ batchtest/g723_enc/g723_enc.c:561:16
	mov	r0, r6
	bl	g723_enc_predictor_pole
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	mov	r2, r0
	.loc	1 561 14 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:561:14
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	add	r1, r1, r2
	.loc	1 562 8 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:562:8
	lsl	r1, r1, #16
	str	r1, [sp, #32]                   @ 4-byte Spill
	.loc	1 564 10                        @ batchtest/g723_enc/g723_enc.c:564:10
	sub	r0, r0, r1, asr #17
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	1 567 7                         @ batchtest/g723_enc/g723_enc.c:567:7
	mov	r0, r6
	bl	g723_enc_step_size
	mov	r1, r0
	.loc	1 568 26                        @ batchtest/g723_enc/g723_enc.c:568:26
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	lsl	r0, r0, #16
	asr	r0, r0, #16
	.loc	1 568 29 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:568:29
	lsl	r1, r1, #16
	asr	r1, r1, #16
	str	r1, [r11, #-28]                 @ 4-byte Spill
	.loc	1 568 7                         @ batchtest/g723_enc/g723_enc.c:568:7
	ldr	r2, .LCPI11_0
	mov	r3, #3
	str	r3, [r11, #-24]                 @ 4-byte Spill
	bl	g723_enc_quantize
	ldr	r2, [r11, #-28]                 @ 4-byte Reload
	mov	r1, r0
	.loc	1 569 32 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:569:32
	and	r0, r1, #4
	.loc	1 569 37 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:569:37
	lsl	r5, r1, #16
	asr	r1, r5, #16
	str	r1, [r11, #-20]                 @ 4-byte Spill
	ldr	r1, .LCPI11_1
	add	r1, r1, r5, asr #15
	ldrsh	r1, [r1]
	.loc	1 569 8                         @ batchtest/g723_enc/g723_enc.c:569:8
	bl	g723_enc_reconstruct
	ldr	r2, [sp, #28]                   @ 4-byte Reload
	ldr	r3, [sp, #32]                   @ 4-byte Reload
	ldr	r1, [r11, #-28]                 @ 4-byte Reload
	mov	r4, r0
	.loc	1 572 12 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:572:12
	ldr	r0, [r11, #-24]                 @ 4-byte Reload
	add	lr, r4, r3, asr #17
	.loc	1 574 14                        @ batchtest/g723_enc/g723_enc.c:574:14
	add	r2, lr, r2, asr #17
	.loc	1 574 20 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:574:20
	sub	r12, r2, r3, asr #17
	.loc	1 576 26 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:576:26
	ldr	r2, .LCPI11_2
	add	r2, r2, r5, asr #15
	ldrsh	r2, [r2]
	.loc	1 576 47 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:576:47
	ldr	r3, .LCPI11_3
	add	r3, r3, r5, asr #15
	ldrsh	r3, [r3]
	.loc	1 576 68                        @ batchtest/g723_enc/g723_enc.c:576:68
	lsl	r4, r4, #16
	asr	r4, r4, #16
	.loc	1 576 72                        @ batchtest/g723_enc/g723_enc.c:576:72
	lsl	lr, lr, #16
	asr	r5, lr, #16
	.loc	1 576 76                        @ batchtest/g723_enc/g723_enc.c:576:76
	lsl	r12, r12, #16
	asr	r12, r12, #16
	.loc	1 576 3                         @ batchtest/g723_enc/g723_enc.c:576:3
	mov	lr, sp
	str	r6, [lr, #12]
	str	r5, [lr, #4]
	str	r4, [lr]
	str	r12, [lr, #8]
	bl	g723_enc_update
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	.loc	1 579 3 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:579:3
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, lr}
	bx	lr
.Ltmp20:
	.p2align	2
@ %bb.1:
	.loc	1 0 3 is_stmt 0                 @ batchtest/g723_enc/g723_enc.c:0:3
.LCPI11_0:
	.long	g723_enc_qtab_723_24
.LCPI11_1:
	.long	g723_enc_dqlntab
.LCPI11_2:
	.long	g723_enc_witab
.LCPI11_3:
	.long	g723_enc_fitab
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
	.loc	1 590 0 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:590:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	mov	r12, r1
	mov	lr, r0
                                        @ kill: def $r0 killed $lr
.Ltmp21:
	.loc	1 596 27 prologue_end           @ batchtest/g723_enc/g723_enc.c:596:27
	ldr	r0, .LCPI12_0
	ldr	r2, [r0]
	.loc	1 596 14 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:596:14
	ldr	r3, .LCPI12_1
	ldr	r1, [r3]
	orr	r1, r1, lr, lsl r2
	str	r1, [r3]
	.loc	1 597 12 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:597:12
	add	r2, r2, r12
	.loc	1 600 12                        @ batchtest/g723_enc/g723_enc.c:600:12
	sub	r2, r2, #8
	str	r2, [r0]
	.loc	1 601 14                        @ batchtest/g723_enc/g723_enc.c:601:14
	lsr	r2, r1, #8
	str	r2, [r3]
	.loc	1 604 26                        @ batchtest/g723_enc/g723_enc.c:604:26
	and	r3, r1, #255
	.loc	1 604 20 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:604:20
	ldr	r2, .LCPI12_2
	ldr	r1, [r2]
	.loc	1 604 3                         @ batchtest/g723_enc/g723_enc.c:604:3
	ldr	r12, .LCPI12_3
	.loc	1 604 24                        @ batchtest/g723_enc/g723_enc.c:604:24
	str	r3, [r12, r1, lsl #2]
	.loc	1 605 10 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:605:10
	add	r1, r1, #1
	.loc	1 605 5 is_stmt 0               @ batchtest/g723_enc/g723_enc.c:605:5
	str	r1, [r2]
	.loc	1 608 12 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:608:12
	ldr	r1, [r0]
	mov	r0, #0
	.loc	1 608 21 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:608:21
	cmp	r1, #0
	movgt	r0, #1
	.loc	1 608 3                         @ batchtest/g723_enc/g723_enc.c:608:3
	pop	{r11, lr}
	bx	lr
.Ltmp22:
	.p2align	2
@ %bb.1:
	.loc	1 0 3                           @ batchtest/g723_enc/g723_enc.c:0:3
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
	.loc	1 625 0 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:625:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #20
	.cfi_def_cfa_offset 20
	mov	r1, r0
	str	r1, [sp, #12]                   @ 4-byte Spill
	mov	r0, #34816
.Ltmp23:
	.loc	1 628 17 prologue_end           @ batchtest/g723_enc/g723_enc.c:628:17
	str	r0, [r1]
	mov	r0, #544
	.loc	1 629 17                        @ batchtest/g723_enc/g723_enc.c:629:17
	strh	r0, [r1, #4]
	mov	r0, #0
	.loc	1 630 18                        @ batchtest/g723_enc/g723_enc.c:630:18
	strh	r0, [r1, #6]
	.loc	1 631 18                        @ batchtest/g723_enc/g723_enc.c:631:18
	strh	r0, [r1, #8]
	.loc	1 632 17                        @ batchtest/g723_enc/g723_enc.c:632:17
	strh	r0, [r1, #10]
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	1 635 9                         @ batchtest/g723_enc/g723_enc.c:635:9
	b	.LBB13_1
.LBB13_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/g723_enc/g723_enc.c:0:0
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 635 3                         @ batchtest/g723_enc/g723_enc.c:635:3
	cmp	r0, #1
	beq	.LBB13_4
	b	.LBB13_2
.LBB13_2:                               @ %for.body
                                        @   in Loop: Header=BB13_1 Depth=1
	.loc	1 636 5 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:636:5
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	add	r1, r0, r1, lsl #1
	mov	r0, #0
	.loc	1 636 26 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:636:26
	strh	r0, [r1, #12]
	.loc	1 637 27 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:637:27
	strh	r0, [r1, #28]
	mov	r0, #32
	.loc	1 638 27                        @ batchtest/g723_enc/g723_enc.c:638:27
	strh	r0, [r1, #44]
	.loc	1 639 3                         @ batchtest/g723_enc/g723_enc.c:639:3
	b	.LBB13_3
.LBB13_3:                               @ %for.inc
                                        @   in Loop: Header=BB13_1 Depth=1
	.loc	1 635 33                        @ batchtest/g723_enc/g723_enc.c:635:33
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	1 635 3 is_stmt 0               @ batchtest/g723_enc/g723_enc.c:635:3
	b	.LBB13_1
.LBB13_4:                               @ %for.end
	.loc	1 0 3                           @ batchtest/g723_enc/g723_enc.c:0:3
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 641 9 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:641:9
	b	.LBB13_5
.LBB13_5:                               @ %for.cond3
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/g723_enc/g723_enc.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 641 3                         @ batchtest/g723_enc/g723_enc.c:641:3
	cmp	r0, #1
	beq	.LBB13_8
	b	.LBB13_6
.LBB13_6:                               @ %for.body5
                                        @   in Loop: Header=BB13_5 Depth=1
	.loc	1 642 5 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:642:5
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	add	r1, r0, r1, lsl #1
	mov	r0, #0
	.loc	1 642 26 is_stmt 0              @ batchtest/g723_enc/g723_enc.c:642:26
	strh	r0, [r1, #16]
	mov	r0, #32
	.loc	1 643 27 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:643:27
	strh	r0, [r1, #32]
	.loc	1 644 3                         @ batchtest/g723_enc/g723_enc.c:644:3
	b	.LBB13_7
.LBB13_7:                               @ %for.inc8
                                        @   in Loop: Header=BB13_5 Depth=1
	.loc	1 641 33                        @ batchtest/g723_enc/g723_enc.c:641:33
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 641 3 is_stmt 0               @ batchtest/g723_enc/g723_enc.c:641:3
	b	.LBB13_5
.LBB13_8:                               @ %for.end10
	.loc	1 0 3                           @ batchtest/g723_enc/g723_enc.c:0:3
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mov	r0, #0
	.loc	1 645 17 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:645:17
	strb	r0, [r1, #48]
	.loc	1 646 1                         @ batchtest/g723_enc/g723_enc.c:646:1
	add	sp, sp, #20
	bx	lr
.Ltmp24:
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
	.loc	1 650 0                         @ batchtest/g723_enc/g723_enc.c:650:0
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
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp25:
	.loc	1 652 16 prologue_end           @ batchtest/g723_enc/g723_enc.c:652:16
	str	r0, [r11, #-4]
	.loc	1 653 3                         @ batchtest/g723_enc/g723_enc.c:653:3
	ldr	r0, .LCPI14_0
	bl	g723_enc_init_state
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 656 9                         @ batchtest/g723_enc/g723_enc.c:656:9
	b	.LBB14_1
.LBB14_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/g723_enc/g723_enc.c:0:0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 656 3                         @ batchtest/g723_enc/g723_enc.c:656:3
	cmp	r0, #1
	beq	.LBB14_4
	b	.LBB14_2
.LBB14_2:                               @ %for.body
                                        @   in Loop: Header=BB14_1 Depth=1
	.loc	1 657 28 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:657:28
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r3, [r11, #-4]
	.loc	1 657 5 is_stmt 0               @ batchtest/g723_enc/g723_enc.c:657:5
	ldr	r1, .LCPI14_1
	.loc	1 657 25                        @ batchtest/g723_enc/g723_enc.c:657:25
	ldr	r0, [r1, r2, lsl #2]
	add	r0, r0, r3
	str	r0, [r1, r2, lsl #2]
	.loc	1 657 5                         @ batchtest/g723_enc/g723_enc.c:657:5
	b	.LBB14_3
.LBB14_3:                               @ %for.inc
                                        @   in Loop: Header=BB14_1 Depth=1
	.loc	1 656 24 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:656:24
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 656 3 is_stmt 0               @ batchtest/g723_enc/g723_enc.c:656:3
	b	.LBB14_1
.LBB14_4:                               @ %for.end
	.loc	1 658 1 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:658:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp26:
	.p2align	2
@ %bb.5:
	.loc	1 0 1 is_stmt 0                 @ batchtest/g723_enc/g723_enc.c:0:1
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
	.loc	1 662 0 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:662:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	1 667 9 prologue_end            @ batchtest/g723_enc/g723_enc.c:667:9
	b	.LBB15_1
.LBB15_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 9 is_stmt 0                 @ batchtest/g723_enc/g723_enc.c:0:9
	mov	r0, #1
	.loc	1 667 3                         @ batchtest/g723_enc/g723_enc.c:667:3
	cmp	r0, #0
	bne	.LBB15_4
	b	.LBB15_2
.LBB15_2:                               @ %for.body
                                        @   in Loop: Header=BB15_1 Depth=1
	.loc	1 668 5 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:668:5
	b	.LBB15_3
.LBB15_3:                               @ %for.inc
                                        @   in Loop: Header=BB15_1 Depth=1
	.loc	1 667 3                         @ batchtest/g723_enc/g723_enc.c:667:3
	b	.LBB15_1
.LBB15_4:                               @ %for.end
	.loc	1 0 3 is_stmt 0                 @ batchtest/g723_enc/g723_enc.c:0:3
	mov	r0, #0
	.loc	1 670 3 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:670:3
	bx	lr
.Ltmp27:
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
	.loc	1 678 0                         @ batchtest/g723_enc/g723_enc.c:678:0
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
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp28:
	.loc	1 693 9 prologue_end            @ batchtest/g723_enc/g723_enc.c:693:9
	b	.LBB16_1
.LBB16_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/g723_enc/g723_enc.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 693 3                         @ batchtest/g723_enc/g723_enc.c:693:3
	cmp	r0, #1
	beq	.LBB16_4
	b	.LBB16_2
.LBB16_2:                               @ %for.body
                                        @   in Loop: Header=BB16_1 Depth=1
	.loc	1 694 15 is_stmt 1              @ batchtest/g723_enc/g723_enc.c:694:15
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r0, .LCPI16_0
	add	r0, r0, r1, lsl #2
	ldrsh	r0, [r0]
	.loc	1 695 12                        @ batchtest/g723_enc/g723_enc.c:695:12
	ldr	r2, .LCPI16_1
	mov	r1, #2
	bl	g723_enc_g723_24_encoder
	.loc	1 696 13                        @ batchtest/g723_enc/g723_enc.c:696:13
	and	r0, r0, #255
	mov	r1, #3
	bl	g723_enc_pack_output
	.loc	1 697 3                         @ batchtest/g723_enc/g723_enc.c:697:3
	b	.LBB16_3
.LBB16_3:                               @ %for.inc
                                        @   in Loop: Header=BB16_1 Depth=1
	.loc	1 693 24                        @ batchtest/g723_enc/g723_enc.c:693:24
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 693 3 is_stmt 0               @ batchtest/g723_enc/g723_enc.c:693:3
	b	.LBB16_1
.LBB16_4:                               @ %for.end
	.loc	1 699 1 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:699:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp29:
	.p2align	2
@ %bb.5:
	.loc	1 0 1 is_stmt 0                 @ batchtest/g723_enc/g723_enc.c:0:1
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
	.loc	1 703 0 is_stmt 1               @ batchtest/g723_enc/g723_enc.c:703:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp30:
	.loc	1 704 3 prologue_end            @ batchtest/g723_enc/g723_enc.c:704:3
	bl	g723_enc_init
	.loc	1 705 3                         @ batchtest/g723_enc/g723_enc.c:705:3
	bl	g723_enc_main
	.loc	1 707 12                        @ batchtest/g723_enc/g723_enc.c:707:12
	bl	g723_enc_return
	.loc	1 707 3 is_stmt 0               @ batchtest/g723_enc/g723_enc.c:707:3
	pop	{r11, lr}
	bx	lr
.Ltmp31:
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
.Ltmp32:
	.loc	2 25 11 prologue_end            @ ../absvdi2.c:25:11
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	2 25 9 is_stmt 0                @ ../absvdi2.c:25:9
	cmp	r0, #0
	bne	.LBB18_2
	b	.LBB18_1
.LBB18_1:                               @ %if.then
	.loc	2 26 9 is_stmt 1                @ ../absvdi2.c:26:9
	ldr	r0, .LCPI18_0
	ldr	r2, .LCPI18_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.LBB18_2:                               @ %if.end
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
.Ltmp33:
	.p2align	2
@ %bb.3:
	.loc	2 0 5                           @ ../absvdi2.c:0:5
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
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp34:
	.loc	3 25 9 prologue_end             @ ../absvsi2.c:25:9
	cmp	r0, #-2147483648
	bne	.LBB20_2
	b	.LBB20_1
.LBB20_1:                               @ %if.then
	.loc	3 26 9                          @ ../absvsi2.c:26:9
	ldr	r0, .LCPI20_0
	ldr	r2, .LCPI20_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.LBB20_2:                               @ %if.end
	.loc	3 28 20                         @ ../absvsi2.c:28:20
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	bpl	.LBB20_4
@ %bb.3:                                @ %if.end
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	rsb	r0, r0, #0
	str	r0, [sp]                        @ 4-byte Spill
.LBB20_4:                               @ %if.end
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	3 28 5 is_stmt 0                @ ../absvsi2.c:28:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp35:
	.p2align	2
@ %bb.5:
	.loc	3 0 5                           @ ../absvsi2.c:0:5
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
	sub	sp, sp, #16
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
	mov	r12, r1
	str	r12, [sp]                       @ 4-byte Spill
	mov	r12, r0
	str	r12, [sp, #4]                   @ 4-byte Spill
.Ltmp36:
	.loc	4 24 27 prologue_end            @ ../addvdi3.c:24:27
	adds	r0, r0, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	adc	r0, r1, r3
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	4 25 9                          @ ../addvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB21_4
	b	.LBB21_1
.LBB21_1:                               @ %if.then
	.loc	4 27 15                         @ ../addvdi3.c:27:15
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	4 27 13 is_stmt 0               @ ../addvdi3.c:27:13
	bge	.LBB21_3
	b	.LBB21_2
.LBB21_2:                               @ %if.then2
	.loc	4 28 13 is_stmt 1               @ ../addvdi3.c:28:13
	ldr	r0, .LCPI21_0
	ldr	r2, .LCPI21_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB21_3:                               @ %if.end
	.loc	4 29 5                          @ ../addvdi3.c:29:5
	b	.LBB21_7
.LBB21_4:                               @ %if.else
	.loc	4 32 15                         @ ../addvdi3.c:32:15
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	4 32 13 is_stmt 0               @ ../addvdi3.c:32:13
	blt	.LBB21_6
	b	.LBB21_5
.LBB21_5:                               @ %if.then4
	.loc	4 33 13 is_stmt 1               @ ../addvdi3.c:33:13
	ldr	r0, .LCPI21_0
	ldr	r2, .LCPI21_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB21_6:                               @ %if.end5
	.loc	4 0 13 is_stmt 0                @ ../addvdi3.c:0:13
	b	.LBB21_7
.LBB21_7:                               @ %if.end6
	.loc	4 35 5 is_stmt 1                @ ../addvdi3.c:35:5
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp37:
	.p2align	2
@ %bb.8:
	.loc	4 0 5 is_stmt 0                 @ ../addvdi3.c:0:5
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
	sub	sp, sp, #8
	str	r0, [sp]                        @ 4-byte Spill
.Ltmp38:
	.loc	5 24 27 prologue_end            @ ../addvsi3.c:24:27
	add	r0, r0, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	5 25 9                          @ ../addvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB22_4
	b	.LBB22_1
.LBB22_1:                               @ %if.then
	.loc	5 27 13                         @ ../addvsi3.c:27:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	bge	.LBB22_3
	b	.LBB22_2
.LBB22_2:                               @ %if.then2
	.loc	5 28 13                         @ ../addvsi3.c:28:13
	ldr	r0, .LCPI22_0
	ldr	r2, .LCPI22_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB22_3:                               @ %if.end
	.loc	5 29 5                          @ ../addvsi3.c:29:5
	b	.LBB22_7
.LBB22_4:                               @ %if.else
	.loc	5 32 13                         @ ../addvsi3.c:32:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	blt	.LBB22_6
	b	.LBB22_5
.LBB22_5:                               @ %if.then4
	.loc	5 33 13                         @ ../addvsi3.c:33:13
	ldr	r0, .LCPI22_0
	ldr	r2, .LCPI22_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB22_6:                               @ %if.end5
	.loc	5 0 13 is_stmt 0                @ ../addvsi3.c:0:13
	b	.LBB22_7
.LBB22_7:                               @ %if.end6
	.loc	5 35 5 is_stmt 1                @ ../addvsi3.c:35:5
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp39:
	.p2align	2
@ %bb.8:
	.loc	5 0 5 is_stmt 0                 @ ../addvsi3.c:0:5
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
	sub	sp, sp, #40
	.cfi_def_cfa_offset 40
	str	r2, [sp, #12]                   @ 4-byte Spill
	mov	r3, r1
	str	r3, [sp, #16]                   @ 4-byte Spill
	mov	r3, r0
	str	r3, [sp, #20]                   @ 4-byte Spill
.Ltmp40:
	.loc	6 29 15 prologue_end            @ ../ashldi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	6 30 9                          @ ../ashldi3.c:30:9
	tst	r2, #32
	beq	.LBB23_2
	b	.LBB23_1
.LBB23_1:                               @ %if.then
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
	b	.LBB23_5
.LBB23_2:                               @ %if.else
	.loc	6 37 13                         @ ../ashldi3.c:37:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB23_4
	b	.LBB23_3
.LBB23_3:                               @ %if.then4
	.loc	6 0 13 is_stmt 0                @ ../ashldi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	6 38 13 is_stmt 1               @ ../ashldi3.c:38:13
	b	.LBB23_6
.LBB23_4:                               @ %if.end
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
	b	.LBB23_5
.LBB23_5:                               @ %if.end18
	.loc	6 42 19 is_stmt 1               @ ../ashldi3.c:42:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	6 42 5 is_stmt 0                @ ../ashldi3.c:42:5
	b	.LBB23_6
.LBB23_6:                               @ %return
	.loc	6 0 0                           @ ../ashldi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	6 43 1 is_stmt 1                @ ../ashldi3.c:43:1
	add	sp, sp, #40
	bx	lr
.Ltmp41:
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
	sub	sp, sp, #40
	.cfi_def_cfa_offset 40
	str	r2, [sp, #12]                   @ 4-byte Spill
	mov	r3, r1
	str	r3, [sp, #16]                   @ 4-byte Spill
	mov	r3, r0
	str	r3, [sp, #20]                   @ 4-byte Spill
.Ltmp42:
	.loc	7 29 15 prologue_end            @ ../ashrdi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	7 30 9                          @ ../ashrdi3.c:30:9
	tst	r2, #32
	beq	.LBB24_2
	b	.LBB24_1
.LBB24_1:                               @ %if.then
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
	b	.LBB24_5
.LBB24_2:                               @ %if.else
	.loc	7 38 13                         @ ../ashrdi3.c:38:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB24_4
	b	.LBB24_3
.LBB24_3:                               @ %if.then7
	.loc	7 0 13 is_stmt 0                @ ../ashrdi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	7 39 13 is_stmt 1               @ ../ashrdi3.c:39:13
	b	.LBB24_6
.LBB24_4:                               @ %if.end
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
	b	.LBB24_5
.LBB24_5:                               @ %if.end21
	.loc	7 43 19 is_stmt 1               @ ../ashrdi3.c:43:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	7 43 5 is_stmt 0                @ ../ashrdi3.c:43:5
	b	.LBB24_6
.LBB24_6:                               @ %return
	.loc	7 0 0                           @ ../ashrdi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	7 44 1 is_stmt 1                @ ../ashrdi3.c:44:1
	add	sp, sp, #40
	bx	lr
.Ltmp43:
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
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp44:
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
	ldr	r1, .LCPI25_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r3, .LCPI25_1
	and	r1, r3, r0, lsr #2
	and	r0, r0, r3
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI25_2
	and	r0, r0, r1
	ldr	r1, .LCPI25_3
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
.Ltmp45:
	.p2align	2
@ %bb.1:
	.loc	8 0 5                           @ ../clzdi2.c:0:5
.LCPI25_0:
	.long	1431655765                      @ 0x55555555
.LCPI25_1:
	.long	858993459                       @ 0x33333333
.LCPI25_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI25_3:
	.long	16843009                        @ 0x1010101
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
.Ltmp46:
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
.Ltmp47:
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
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp48:
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
	bge	.LBB27_2
	b	.LBB27_1
.LBB27_1:                               @ %if.then
	.loc	10 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	10 30 9 is_stmt 1               @ ../cmpdi2.c:30:9
	b	.LBB27_9
.LBB27_2:                               @ %if.end
	.loc	10 31 13                        @ ../cmpdi2.c:31:13
	ldr	r0, [sp, #20]
	.loc	10 31 24 is_stmt 0              @ ../cmpdi2.c:31:24
	ldr	r1, [sp, #12]
	.loc	10 31 9                         @ ../cmpdi2.c:31:9
	cmp	r0, r1
	ble	.LBB27_4
	b	.LBB27_3
.LBB27_3:                               @ %if.then9
	.loc	10 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	10 32 9 is_stmt 1               @ ../cmpdi2.c:32:9
	b	.LBB27_9
.LBB27_4:                               @ %if.end10
	.loc	10 33 13                        @ ../cmpdi2.c:33:13
	ldr	r0, [sp, #16]
	.loc	10 33 23 is_stmt 0              @ ../cmpdi2.c:33:23
	ldr	r1, [sp, #8]
	.loc	10 33 9                         @ ../cmpdi2.c:33:9
	cmp	r0, r1
	bhs	.LBB27_6
	b	.LBB27_5
.LBB27_5:                               @ %if.then15
	.loc	10 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	10 34 9 is_stmt 1               @ ../cmpdi2.c:34:9
	b	.LBB27_9
.LBB27_6:                               @ %if.end16
	.loc	10 35 13                        @ ../cmpdi2.c:35:13
	ldr	r0, [sp, #16]
	.loc	10 35 23 is_stmt 0              @ ../cmpdi2.c:35:23
	ldr	r1, [sp, #8]
	.loc	10 35 9                         @ ../cmpdi2.c:35:9
	cmp	r0, r1
	bls	.LBB27_8
	b	.LBB27_7
.LBB27_7:                               @ %if.then22
	.loc	10 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	10 36 9 is_stmt 1               @ ../cmpdi2.c:36:9
	b	.LBB27_9
.LBB27_8:                               @ %if.end23
	.loc	10 0 9 is_stmt 0                @ ../cmpdi2.c:0:9
	mov	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	10 37 5 is_stmt 1               @ ../cmpdi2.c:37:5
	b	.LBB27_9
.LBB27_9:                               @ %return
	.loc	10 0 0 is_stmt 0                @ ../cmpdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	10 38 1 is_stmt 1               @ ../cmpdi2.c:38:1
	add	sp, sp, #24
	bx	lr
.Ltmp49:
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
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp50:
	.loc	10 48 9 prologue_end            @ ../cmpdi2.c:48:9
	bl	__cmpdi2
	.loc	10 48 24 is_stmt 0              @ ../cmpdi2.c:48:24
	sub	r0, r0, #1
	.loc	10 48 2                         @ ../cmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp51:
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
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp52:
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
	ldr	r1, .LCPI29_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r3, .LCPI29_1
	and	r1, r3, r0, lsr #2
	and	r0, r0, r3
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI29_2
	and	r0, r0, r1
	ldr	r1, .LCPI29_3
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
.Ltmp53:
	.p2align	2
@ %bb.1:
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
	mov	r2, r0
	mov	r0, #255
	orr	r0, r0, #65280
.Ltmp54:
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
.Ltmp55:
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
.Ltmp56:
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
.Ltmp57:
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
.Ltmp58:
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
	bne	.LBB32_8
	b	.LBB32_1
.LBB32_1:                               @ %if.then
	.loc	14 38 17 is_stmt 1              @ ../udivmoddi4.c:38:17
	ldr	r0, [r11, #-12]
	.loc	14 38 13 is_stmt 0              @ ../udivmoddi4.c:38:13
	cmp	r0, #0
	bne	.LBB32_5
	b	.LBB32_2
.LBB32_2:                               @ %if.then5
	.loc	14 44 17 is_stmt 1              @ ../udivmoddi4.c:44:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB32_4
	b	.LBB32_3
.LBB32_3:                               @ %if.then6
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
	b	.LBB32_4
.LBB32_4:                               @ %if.end
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
	b	.LBB32_56
.LBB32_5:                               @ %if.end16
	.loc	14 52 13 is_stmt 1              @ ../udivmoddi4.c:52:13
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB32_7
	b	.LBB32_6
.LBB32_6:                               @ %if.then18
	.loc	14 53 24                        @ ../udivmoddi4.c:53:24
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	mov	r2, #0
	.loc	14 53 18 is_stmt 0              @ ../udivmoddi4.c:53:18
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	14 53 13                        @ ../udivmoddi4.c:53:13
	b	.LBB32_7
.LBB32_7:                               @ %if.end22
	.loc	14 0 13                         @ ../udivmoddi4.c:0:13
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 54 9 is_stmt 1               @ ../udivmoddi4.c:54:9
	b	.LBB32_56
.LBB32_8:                               @ %if.end23
	.loc	14 57 13                        @ ../udivmoddi4.c:57:13
	ldr	r0, [r11, #-16]
	.loc	14 57 9 is_stmt 0               @ ../udivmoddi4.c:57:9
	cmp	r0, #0
	bne	.LBB32_26
	b	.LBB32_9
.LBB32_9:                               @ %if.then28
	.loc	14 59 17 is_stmt 1              @ ../udivmoddi4.c:59:17
	ldr	r0, [r11, #-12]
	.loc	14 59 13 is_stmt 0              @ ../udivmoddi4.c:59:13
	cmp	r0, #0
	bne	.LBB32_13
	b	.LBB32_10
.LBB32_10:                              @ %if.then33
	.loc	14 65 17 is_stmt 1              @ ../udivmoddi4.c:65:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB32_12
	b	.LBB32_11
.LBB32_11:                              @ %if.then35
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
	b	.LBB32_12
.LBB32_12:                              @ %if.end42
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
	b	.LBB32_56
.LBB32_13:                              @ %if.end49
	.loc	14 70 17 is_stmt 1              @ ../udivmoddi4.c:70:17
	ldr	r0, [r11, #-8]
	.loc	14 70 13 is_stmt 0              @ ../udivmoddi4.c:70:13
	cmp	r0, #0
	bne	.LBB32_17
	b	.LBB32_14
.LBB32_14:                              @ %if.then54
	.loc	14 76 17 is_stmt 1              @ ../udivmoddi4.c:76:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB32_16
	b	.LBB32_15
.LBB32_15:                              @ %if.then56
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
	b	.LBB32_16
.LBB32_16:                              @ %if.end67
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
	b	.LBB32_56
.LBB32_17:                              @ %if.end74
	.loc	14 88 18 is_stmt 1              @ ../udivmoddi4.c:88:18
	ldr	r0, [r11, #-12]
	.loc	14 88 35 is_stmt 0              @ ../udivmoddi4.c:88:35
	sub	r1, r0, #1
	.loc	14 88 13                        @ ../udivmoddi4.c:88:13
	tst	r0, r1
	bne	.LBB32_21
	b	.LBB32_18
.LBB32_18:                              @ %if.then81
	.loc	14 90 17 is_stmt 1              @ ../udivmoddi4.c:90:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB32_20
	b	.LBB32_19
.LBB32_19:                              @ %if.then83
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
	b	.LBB32_20
.LBB32_20:                              @ %if.end97
	.loc	14 96 24                        @ ../udivmoddi4.c:96:24
	ldr	r0, [r11, #-4]
	.loc	14 96 50 is_stmt 0              @ ../udivmoddi4.c:96:50
	ldr	r2, [r11, #-12]
	.loc	14 96 32                        @ ../udivmoddi4.c:96:32
	sub	r1, r2, #1
	bic	r1, r1, r2
	ldr	r2, .LCPI32_0
	and	r2, r2, r1, lsr #1
	sub	r1, r1, r2
	ldr	r3, .LCPI32_1
	and	r2, r3, r1, lsr #2
	and	r1, r1, r3
	add	r1, r1, r2
	add	r1, r1, r1, lsr #4
	ldr	r2, .LCPI32_2
	and	r2, r1, r2
	ldr	r3, .LCPI32_3
	mul	r1, r2, r3
	lsr	r1, r1, #24
	.loc	14 96 29                        @ ../udivmoddi4.c:96:29
	lsr	r1, r0, r1
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 96 13                        @ ../udivmoddi4.c:96:13
	b	.LBB32_56
.LBB32_21:                              @ %if.end103
	.loc	14 102 32 is_stmt 1             @ ../udivmoddi4.c:102:32
	ldr	r0, [r11, #-12]
	.loc	14 102 14 is_stmt 0             @ ../udivmoddi4.c:102:14
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI32_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI32_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI32_2
	and	r1, r0, r2
	ldr	r3, .LCPI32_3
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
	blo	.LBB32_25
	b	.LBB32_22
.LBB32_22:                              @ %if.then111
	.loc	14 106 16                       @ ../udivmoddi4.c:106:16
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB32_24
	b	.LBB32_23
.LBB32_23:                              @ %if.then113
	.loc	14 107 26                       @ ../udivmoddi4.c:107:26
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldr	r2, [r11, #-4]
	.loc	14 107 22 is_stmt 0             @ ../udivmoddi4.c:107:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	14 107 17                       @ ../udivmoddi4.c:107:17
	b	.LBB32_24
.LBB32_24:                              @ %if.end115
	.loc	14 0 17                         @ ../udivmoddi4.c:0:17
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 108 13 is_stmt 1             @ ../udivmoddi4.c:108:13
	b	.LBB32_56
.LBB32_25:                              @ %if.end116
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
	b	.LBB32_49
.LBB32_26:                              @ %if.else
	.loc	14 121 17                       @ ../udivmoddi4.c:121:17
	ldr	r0, [r11, #-12]
	.loc	14 121 13 is_stmt 0             @ ../udivmoddi4.c:121:13
	cmp	r0, #0
	bne	.LBB32_40
	b	.LBB32_27
.LBB32_27:                              @ %if.then142
	.loc	14 127 22 is_stmt 1             @ ../udivmoddi4.c:127:22
	ldr	r0, [r11, #-16]
	.loc	14 127 17 is_stmt 0             @ ../udivmoddi4.c:127:17
	sub	r1, r0, #1
	tst	r0, r1
	bne	.LBB32_33
	b	.LBB32_28
.LBB32_28:                              @ %if.then151
	.loc	14 129 21 is_stmt 1             @ ../udivmoddi4.c:129:21
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB32_30
	b	.LBB32_29
.LBB32_29:                              @ %if.then153
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
	b	.LBB32_30
.LBB32_30:                              @ %if.end161
	.loc	14 131 25 is_stmt 1             @ ../udivmoddi4.c:131:25
	ldr	r0, [r11, #-16]
	.loc	14 131 21 is_stmt 0             @ ../udivmoddi4.c:131:21
	cmp	r0, #1
	bne	.LBB32_32
	b	.LBB32_31
.LBB32_31:                              @ %if.then166
	.loc	14 132 30 is_stmt 1             @ ../udivmoddi4.c:132:30
	ldr	r1, [r11, #-8]
	ldr	r0, [r11, #-4]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 132 21 is_stmt 0             @ ../udivmoddi4.c:132:21
	b	.LBB32_56
.LBB32_32:                              @ %if.end168
	.loc	14 133 40 is_stmt 1             @ ../udivmoddi4.c:133:40
	ldr	r1, [r11, #-16]
	.loc	14 133 22 is_stmt 0             @ ../udivmoddi4.c:133:22
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI32_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI32_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI32_2
	and	r0, r0, r1
	ldr	r1, .LCPI32_3
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
	b	.LBB32_56
.LBB32_33:                              @ %if.end187
	.loc	14 142 55 is_stmt 1             @ ../udivmoddi4.c:142:55
	ldr	r0, [r11, #-16]
	.loc	14 142 37 is_stmt 0             @ ../udivmoddi4.c:142:37
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI32_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI32_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI32_2
	and	r1, r0, r2
	ldr	r3, .LCPI32_3
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
	bne	.LBB32_35
	b	.LBB32_34
.LBB32_34:                              @ %if.then195
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
	b	.LBB32_39
.LBB32_35:                              @ %if.else208
	.loc	14 154 22                       @ ../udivmoddi4.c:154:22
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	cmp	r0, #31
	bhi	.LBB32_37
	b	.LBB32_36
.LBB32_36:                              @ %if.then211
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
	b	.LBB32_38
.LBB32_37:                              @ %if.else235
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
	b	.LBB32_38
.LBB32_38:                              @ %if.end261
	.loc	14 0 25                         @ ../udivmoddi4.c:0:25
	b	.LBB32_39
.LBB32_39:                              @ %if.end262
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	str	r0, [sp, #28]                   @ 4-byte Spill
	.loc	14 169 9 is_stmt 1              @ ../udivmoddi4.c:169:9
	b	.LBB32_48
.LBB32_40:                              @ %if.else263
	.loc	14 176 36                       @ ../udivmoddi4.c:176:36
	ldr	r0, [r11, #-12]
	.loc	14 176 18 is_stmt 0             @ ../udivmoddi4.c:176:18
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI32_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI32_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI32_2
	and	r1, r0, r2
	ldr	r3, .LCPI32_3
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
	blo	.LBB32_44
	b	.LBB32_41
.LBB32_41:                              @ %if.then271
	.loc	14 180 21                       @ ../udivmoddi4.c:180:21
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB32_43
	b	.LBB32_42
.LBB32_42:                              @ %if.then273
	.loc	14 181 30                       @ ../udivmoddi4.c:181:30
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldr	r2, [r11, #-4]
	.loc	14 181 26 is_stmt 0             @ ../udivmoddi4.c:181:26
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	14 181 21                       @ ../udivmoddi4.c:181:21
	b	.LBB32_43
.LBB32_43:                              @ %if.end275
	.loc	14 0 21                         @ ../udivmoddi4.c:0:21
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 182 17 is_stmt 1             @ ../udivmoddi4.c:182:17
	b	.LBB32_56
.LBB32_44:                              @ %if.end276
	.loc	14 184 13                       @ ../udivmoddi4.c:184:13
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #20]                   @ 4-byte Spill
	mov	r1, #0
	.loc	14 187 21                       @ ../udivmoddi4.c:187:21
	str	r1, [r11, #-24]
	.loc	14 188 17                       @ ../udivmoddi4.c:188:17
	cmp	r0, #32
	bne	.LBB32_46
	b	.LBB32_45
.LBB32_45:                              @ %if.then282
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
	b	.LBB32_47
.LBB32_46:                              @ %if.else293
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
	b	.LBB32_47
.LBB32_47:                              @ %if.end315
	.loc	14 0 25                         @ ../udivmoddi4.c:0:25
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	str	r0, [sp, #28]                   @ 4-byte Spill
	b	.LBB32_48
.LBB32_48:                              @ %if.end316
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	str	r0, [sp, #36]                   @ 4-byte Spill
	b	.LBB32_49
.LBB32_49:                              @ %if.end317
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	mov	r0, #0
	str	r1, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	14 209 5 is_stmt 1              @ ../udivmoddi4.c:209:5
	b	.LBB32_50
.LBB32_50:                              @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	14 0 0 is_stmt 0                @ ../udivmoddi4.c:0:0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	14 209 5                        @ ../udivmoddi4.c:209:5
	cmp	r0, #0
	beq	.LBB32_53
	b	.LBB32_51
.LBB32_51:                              @ %for.body
                                        @   in Loop: Header=BB32_50 Depth=1
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
	b	.LBB32_52
.LBB32_52:                              @ %for.inc
                                        @   in Loop: Header=BB32_50 Depth=1
	.loc	14 224 19                       @ ../udivmoddi4.c:224:19
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp]                        @ 4-byte Reload
	lsr	r0, r0, #31
	.loc	14 209 20                       @ ../udivmoddi4.c:209:20
	sub	r1, r1, #1
	str	r1, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	14 209 5 is_stmt 0              @ ../udivmoddi4.c:209:5
	b	.LBB32_50
.LBB32_53:                              @ %for.end
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
	beq	.LBB32_55
	b	.LBB32_54
.LBB32_54:                              @ %if.then371
	.loc	14 229 18                       @ ../udivmoddi4.c:229:18
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-32]
	ldr	r2, [r11, #-28]
	.loc	14 229 14 is_stmt 0             @ ../udivmoddi4.c:229:14
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	14 229 9                        @ ../udivmoddi4.c:229:9
	b	.LBB32_55
.LBB32_55:                              @ %if.end373
	.loc	14 230 14 is_stmt 1             @ ../udivmoddi4.c:230:14
	ldr	r1, [r11, #-24]
	ldr	r0, [r11, #-20]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 230 5 is_stmt 0              @ ../udivmoddi4.c:230:5
	b	.LBB32_56
.LBB32_56:                              @ %return
	.loc	14 0 0                          @ ../udivmoddi4.c:0:0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldr	r1, [r11, #-40]                 @ 4-byte Reload
	.loc	14 231 1 is_stmt 1              @ ../udivmoddi4.c:231:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp59:
	.p2align	2
@ %bb.57:
	.loc	14 0 1 is_stmt 0                @ ../udivmoddi4.c:0:1
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
.Ltmp60:
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
.Ltmp61:
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
.Ltmp62:
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
.Ltmp63:
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
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	mov	r3, r1
	mov	r1, r0
.Ltmp64:
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
.Ltmp65:
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp66:
	.loc	18 25 11 prologue_end           @ ../ffsdi2.c:25:11
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	18 26 13                        @ ../ffsdi2.c:26:13
	ldr	r0, [sp, #8]
	.loc	18 26 9 is_stmt 0               @ ../ffsdi2.c:26:9
	cmp	r0, #0
	bne	.LBB36_4
	b	.LBB36_1
.LBB36_1:                               @ %if.then
	.loc	18 28 17 is_stmt 1              @ ../ffsdi2.c:28:17
	ldr	r0, [sp, #12]
	.loc	18 28 13 is_stmt 0              @ ../ffsdi2.c:28:13
	cmp	r0, #0
	bne	.LBB36_3
	b	.LBB36_2
.LBB36_2:                               @ %if.then3
	.loc	18 0 13                         @ ../ffsdi2.c:0:13
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	18 29 13 is_stmt 1              @ ../ffsdi2.c:29:13
	b	.LBB36_5
.LBB36_3:                               @ %if.end
	.loc	18 30 34                        @ ../ffsdi2.c:30:34
	ldr	r1, [sp, #12]
	.loc	18 30 16 is_stmt 0              @ ../ffsdi2.c:30:16
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI36_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI36_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI36_2
	and	r0, r0, r1
	ldr	r2, .LCPI36_3
	mul	r1, r0, r2
	mov	r0, #33
	.loc	18 30 40                        @ ../ffsdi2.c:30:40
	add	r0, r0, r1, lsr #24
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	18 30 9                         @ ../ffsdi2.c:30:9
	b	.LBB36_5
.LBB36_4:                               @ %if.end6
	.loc	18 32 30 is_stmt 1              @ ../ffsdi2.c:32:30
	ldr	r1, [sp, #8]
	.loc	18 32 12 is_stmt 0              @ ../ffsdi2.c:32:12
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI36_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI36_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI36_2
	and	r0, r0, r1
	ldr	r2, .LCPI36_3
	mul	r1, r0, r2
	mov	r0, #1
	.loc	18 32 35                        @ ../ffsdi2.c:32:35
	add	r0, r0, r1, lsr #24
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	18 32 5                         @ ../ffsdi2.c:32:5
	b	.LBB36_5
.LBB36_5:                               @ %return
	.loc	18 0 0                          @ ../ffsdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	18 33 1 is_stmt 1               @ ../ffsdi2.c:33:1
	add	sp, sp, #16
	bx	lr
.Ltmp67:
	.p2align	2
@ %bb.6:
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
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp68:
	.loc	19 24 9 prologue_end            @ ../ffssi2.c:24:9
	cmp	r0, #0
	bne	.LBB37_2
	b	.LBB37_1
.LBB37_1:                               @ %if.then
	.loc	19 0 9 is_stmt 0                @ ../ffssi2.c:0:9
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	.loc	19 26 9 is_stmt 1               @ ../ffssi2.c:26:9
	b	.LBB37_3
.LBB37_2:                               @ %if.end
	.loc	19 28 12                        @ ../ffssi2.c:28:12
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI37_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI37_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI37_2
	and	r0, r0, r1
	ldr	r2, .LCPI37_3
	mul	r1, r0, r2
	mov	r0, #1
	.loc	19 28 29 is_stmt 0              @ ../ffssi2.c:28:29
	add	r0, r0, r1, lsr #24
	str	r0, [sp]                        @ 4-byte Spill
	.loc	19 28 5                         @ ../ffssi2.c:28:5
	b	.LBB37_3
.LBB37_3:                               @ %return
	.loc	19 0 0                          @ ../ffssi2.c:0:0
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	19 29 1 is_stmt 1               @ ../ffssi2.c:29:1
	add	sp, sp, #8
	bx	lr
.Ltmp69:
	.p2align	2
@ %bb.4:
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
	sub	sp, sp, #40
	.cfi_def_cfa_offset 40
	str	r2, [sp, #12]                   @ 4-byte Spill
	mov	r3, r1
	str	r3, [sp, #16]                   @ 4-byte Spill
	mov	r3, r0
	str	r3, [sp, #20]                   @ 4-byte Spill
.Ltmp70:
	.loc	20 29 15 prologue_end           @ ../lshrdi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	20 30 9                         @ ../lshrdi3.c:30:9
	tst	r2, #32
	beq	.LBB38_2
	b	.LBB38_1
.LBB38_1:                               @ %if.then
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
	b	.LBB38_5
.LBB38_2:                               @ %if.else
	.loc	20 37 13                        @ ../lshrdi3.c:37:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB38_4
	b	.LBB38_3
.LBB38_3:                               @ %if.then4
	.loc	20 0 13 is_stmt 0               @ ../lshrdi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	20 38 13 is_stmt 1              @ ../lshrdi3.c:38:13
	b	.LBB38_6
.LBB38_4:                               @ %if.end
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
	b	.LBB38_5
.LBB38_5:                               @ %if.end18
	.loc	20 42 19 is_stmt 1              @ ../lshrdi3.c:42:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	20 42 5 is_stmt 0               @ ../lshrdi3.c:42:5
	b	.LBB38_6
.LBB38_6:                               @ %return
	.loc	20 0 0                          @ ../lshrdi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	20 43 1 is_stmt 1               @ ../lshrdi3.c:43:1
	add	sp, sp, #40
	bx	lr
.Ltmp71:
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
.Ltmp72:
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
.Ltmp73:
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
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp74:
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
.Ltmp75:
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
.Ltmp76:
	.loc	23 27 11 prologue_end           @ ../mulvdi3.c:27:11
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	23 27 9 is_stmt 0               @ ../mulvdi3.c:27:9
	cmp	r0, #0
	bne	.LBB41_5
	b	.LBB41_1
.LBB41_1:                               @ %if.then
	.loc	23 29 15 is_stmt 1              @ ../mulvdi3.c:29:15
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	orr	r0, r0, r1
	.loc	23 29 20 is_stmt 0              @ ../mulvdi3.c:29:20
	cmp	r0, #0
	beq	.LBB41_3
	b	.LBB41_2
.LBB41_2:                               @ %lor.lhs.false
	.loc	23 29 25                        @ ../mulvdi3.c:29:25
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	eor	r0, r0, #1
	orr	r0, r0, r1
	.loc	23 29 13                        @ ../mulvdi3.c:29:13
	cmp	r0, #0
	bne	.LBB41_4
	b	.LBB41_3
.LBB41_3:                               @ %if.then3
	.loc	23 30 13 is_stmt 1              @ ../mulvdi3.c:30:13
	b	.LBB41_21
.LBB41_4:                               @ %if.end
	.loc	23 31 9                         @ ../mulvdi3.c:31:9
	ldr	r0, .LCPI41_0
	ldr	r2, .LCPI41_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB41_5:                               @ %if.end4
	.loc	23 33 11                        @ ../mulvdi3.c:33:11
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	23 33 9 is_stmt 0               @ ../mulvdi3.c:33:9
	cmp	r0, #0
	bne	.LBB41_10
	b	.LBB41_6
.LBB41_6:                               @ %if.then6
	.loc	23 35 15 is_stmt 1              @ ../mulvdi3.c:35:15
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	orr	r0, r0, r1
	.loc	23 35 20 is_stmt 0              @ ../mulvdi3.c:35:20
	cmp	r0, #0
	beq	.LBB41_8
	b	.LBB41_7
.LBB41_7:                               @ %lor.lhs.false8
	.loc	23 35 25                        @ ../mulvdi3.c:35:25
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	eor	r0, r0, #1
	orr	r0, r0, r1
	.loc	23 35 13                        @ ../mulvdi3.c:35:13
	cmp	r0, #0
	bne	.LBB41_9
	b	.LBB41_8
.LBB41_8:                               @ %if.then10
	.loc	23 36 13 is_stmt 1              @ ../mulvdi3.c:36:13
	b	.LBB41_21
.LBB41_9:                               @ %if.end12
	.loc	23 37 9                         @ ../mulvdi3.c:37:9
	ldr	r0, .LCPI41_0
	ldr	r2, .LCPI41_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB41_10:                              @ %if.end13
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
	blt	.LBB41_12
	b	.LBB41_11
.LBB41_11:                              @ %lor.lhs.false18
	.loc	23 43 28                        @ ../mulvdi3.c:43:28
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	rsbs	r1, r1, #1
	rscs	r0, r0, #0
	.loc	23 43 9                         @ ../mulvdi3.c:43:9
	blt	.LBB41_13
	b	.LBB41_12
.LBB41_12:                              @ %if.then20
	.loc	23 44 9 is_stmt 1               @ ../mulvdi3.c:44:9
	b	.LBB41_21
.LBB41_13:                              @ %if.end22
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
	bne	.LBB41_17
	b	.LBB41_14
.LBB41_14:                              @ %if.then24
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
	bge	.LBB41_16
	b	.LBB41_15
.LBB41_15:                              @ %if.then26
	.loc	23 48 13 is_stmt 1              @ ../mulvdi3.c:48:13
	ldr	r0, .LCPI41_0
	ldr	r2, .LCPI41_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB41_16:                              @ %if.end27
	.loc	23 49 5                         @ ../mulvdi3.c:49:5
	b	.LBB41_20
.LBB41_17:                              @ %if.else
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
	bge	.LBB41_19
	b	.LBB41_18
.LBB41_18:                              @ %if.then31
	.loc	23 53 13 is_stmt 1              @ ../mulvdi3.c:53:13
	ldr	r0, .LCPI41_0
	ldr	r2, .LCPI41_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.LBB41_19:                              @ %if.end32
	.loc	23 0 13 is_stmt 0               @ ../mulvdi3.c:0:13
	b	.LBB41_20
.LBB41_20:                              @ %if.end33
	.loc	23 55 5 is_stmt 1               @ ../mulvdi3.c:55:5
	b	.LBB41_21
.LBB41_21:                              @ %return
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
.Ltmp77:
	.p2align	2
@ %bb.22:
	.loc	23 0 1 is_stmt 0                @ ../mulvdi3.c:0:1
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
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #24
	str	r1, [r11, #-8]                  @ 4-byte Spill
	str	r0, [r11, #-4]                  @ 4-byte Spill
.Ltmp78:
	.loc	24 27 9 prologue_end            @ ../mulvsi3.c:27:9
	cmp	r0, #-2147483648
	bne	.LBB42_5
	b	.LBB42_1
.LBB42_1:                               @ %if.then
	.loc	24 29 20                        @ ../mulvsi3.c:29:20
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB42_3
	b	.LBB42_2
.LBB42_2:                               @ %lor.lhs.false
	.loc	24 29 13 is_stmt 0              @ ../mulvsi3.c:29:13
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB42_4
	b	.LBB42_3
.LBB42_3:                               @ %if.then3
	.loc	24 30 13 is_stmt 1              @ ../mulvsi3.c:30:13
	b	.LBB42_21
.LBB42_4:                               @ %if.end
	.loc	24 31 9                         @ ../mulvsi3.c:31:9
	ldr	r0, .LCPI42_0
	ldr	r2, .LCPI42_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB42_5:                               @ %if.end4
	.loc	24 33 9                         @ ../mulvsi3.c:33:9
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #-2147483648
	bne	.LBB42_10
	b	.LBB42_6
.LBB42_6:                               @ %if.then6
	.loc	24 35 20                        @ ../mulvsi3.c:35:20
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB42_8
	b	.LBB42_7
.LBB42_7:                               @ %lor.lhs.false8
	.loc	24 35 13 is_stmt 0              @ ../mulvsi3.c:35:13
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB42_9
	b	.LBB42_8
.LBB42_8:                               @ %if.then10
	.loc	24 36 13 is_stmt 1              @ ../mulvsi3.c:36:13
	b	.LBB42_21
.LBB42_9:                               @ %if.end12
	.loc	24 37 9                         @ ../mulvsi3.c:37:9
	ldr	r0, .LCPI42_0
	ldr	r2, .LCPI42_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB42_10:                              @ %if.end13
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
	blt	.LBB42_12
	b	.LBB42_11
.LBB42_11:                              @ %lor.lhs.false18
	.loc	24 43 9 is_stmt 0               @ ../mulvsi3.c:43:9
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #1
	bgt	.LBB42_13
	b	.LBB42_12
.LBB42_12:                              @ %if.then20
	.loc	24 44 9 is_stmt 1               @ ../mulvsi3.c:44:9
	b	.LBB42_21
.LBB42_13:                              @ %if.end22
	.loc	24 45 9                         @ ../mulvsi3.c:45:9
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	cmp	r0, r1
	bne	.LBB42_17
	b	.LBB42_14
.LBB42_14:                              @ %if.then24
	.loc	24 47 25                        @ ../mulvsi3.c:47:25
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mvn	r0, #-2147483648
	bl	__divsi3
	mov	r1, r0
	.loc	24 47 13 is_stmt 0              @ ../mulvsi3.c:47:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB42_16
	b	.LBB42_15
.LBB42_15:                              @ %if.then26
	.loc	24 48 13 is_stmt 1              @ ../mulvsi3.c:48:13
	ldr	r0, .LCPI42_0
	ldr	r2, .LCPI42_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB42_16:                              @ %if.end27
	.loc	24 49 5                         @ ../mulvsi3.c:49:5
	b	.LBB42_20
.LBB42_17:                              @ %if.else
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
	ble	.LBB42_19
	b	.LBB42_18
.LBB42_18:                              @ %if.then31
	.loc	24 53 13 is_stmt 1              @ ../mulvsi3.c:53:13
	ldr	r0, .LCPI42_0
	ldr	r2, .LCPI42_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.LBB42_19:                              @ %if.end32
	.loc	24 0 13 is_stmt 0               @ ../mulvsi3.c:0:13
	b	.LBB42_20
.LBB42_20:                              @ %if.end33
	.loc	24 55 5 is_stmt 1               @ ../mulvsi3.c:55:5
	b	.LBB42_21
.LBB42_21:                              @ %return
	.loc	24 0 0 is_stmt 0                @ ../mulvsi3.c:0:0
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [r11, #-8]                  @ 4-byte Reload
	mul	r0, r1, r2
	.loc	24 56 1 is_stmt 1               @ ../mulvsi3.c:56:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp79:
	.p2align	2
@ %bb.22:
	.loc	24 0 1 is_stmt 0                @ ../mulvsi3.c:0:1
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
	sub	sp, sp, #8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp80:
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
.Ltmp81:
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
.Ltmp82:
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
	mov	r2, r0
                                        @ kill: def $r0 killed $r1
                                        @ kill: def $r0 killed $r2
.Ltmp83:
	.loc	27 23 20 prologue_end           @ ../popcountdi2.c:23:20
	lsrs	r0, r1, #1
	rrx	r3, r2
	ldr	r12, .LCPI45_0
	.loc	27 23 26 is_stmt 0              @ ../popcountdi2.c:23:26
	and	r0, r0, r12
	and	r3, r3, r12
	.loc	27 23 13                        @ ../popcountdi2.c:23:13
	subs	r2, r2, r3
	sbc	r3, r1, r0
	ldr	r12, .LCPI45_1
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
	ldr	r2, .LCPI45_2
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
.Ltmp84:
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
.Ltmp85:
	.loc	28 23 23 prologue_end           @ ../popcountsi2.c:23:23
	and	r1, r1, r0, lsr #1
	.loc	28 23 11 is_stmt 0              @ ../popcountsi2.c:23:11
	sub	r1, r0, r1
	ldr	r2, .LCPI46_1
	.loc	28 25 19 is_stmt 1              @ ../popcountsi2.c:25:19
	and	r0, r2, r1, lsr #2
	.loc	28 25 38 is_stmt 0              @ ../popcountsi2.c:25:38
	and	r1, r1, r2
	.loc	28 25 33                        @ ../popcountsi2.c:25:33
	add	r0, r0, r1
	.loc	28 27 12 is_stmt 1              @ ../popcountsi2.c:27:12
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI46_2
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
.Ltmp86:
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
	sub	sp, sp, #16
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
	mov	r12, r1
	str	r12, [sp]                       @ 4-byte Spill
	mov	r12, r0
	str	r12, [sp, #4]                   @ 4-byte Spill
.Ltmp87:
	.loc	29 24 27 prologue_end           @ ../subvdi3.c:24:27
	subs	r0, r0, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	sbc	r0, r1, r3
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	29 25 9                         @ ../subvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB47_4
	b	.LBB47_1
.LBB47_1:                               @ %if.then
	.loc	29 27 15                        @ ../subvdi3.c:27:15
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	29 27 13 is_stmt 0              @ ../subvdi3.c:27:13
	bge	.LBB47_3
	b	.LBB47_2
.LBB47_2:                               @ %if.then2
	.loc	29 28 13 is_stmt 1              @ ../subvdi3.c:28:13
	ldr	r0, .LCPI47_0
	ldr	r2, .LCPI47_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB47_3:                               @ %if.end
	.loc	29 29 5                         @ ../subvdi3.c:29:5
	b	.LBB47_7
.LBB47_4:                               @ %if.else
	.loc	29 32 15                        @ ../subvdi3.c:32:15
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	29 32 13 is_stmt 0              @ ../subvdi3.c:32:13
	blt	.LBB47_6
	b	.LBB47_5
.LBB47_5:                               @ %if.then4
	.loc	29 33 13 is_stmt 1              @ ../subvdi3.c:33:13
	ldr	r0, .LCPI47_0
	ldr	r2, .LCPI47_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB47_6:                               @ %if.end5
	.loc	29 0 13 is_stmt 0               @ ../subvdi3.c:0:13
	b	.LBB47_7
.LBB47_7:                               @ %if.end6
	.loc	29 35 5 is_stmt 1               @ ../subvdi3.c:35:5
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp88:
	.p2align	2
@ %bb.8:
	.loc	29 0 5 is_stmt 0                @ ../subvdi3.c:0:5
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
	sub	sp, sp, #8
	str	r0, [sp]                        @ 4-byte Spill
.Ltmp89:
	.loc	30 24 27 prologue_end           @ ../subvsi3.c:24:27
	sub	r0, r0, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	30 25 9                         @ ../subvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB48_4
	b	.LBB48_1
.LBB48_1:                               @ %if.then
	.loc	30 27 13                        @ ../subvsi3.c:27:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB48_3
	b	.LBB48_2
.LBB48_2:                               @ %if.then2
	.loc	30 28 13                        @ ../subvsi3.c:28:13
	ldr	r0, .LCPI48_0
	ldr	r2, .LCPI48_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB48_3:                               @ %if.end
	.loc	30 29 5                         @ ../subvsi3.c:29:5
	b	.LBB48_7
.LBB48_4:                               @ %if.else
	.loc	30 32 13                        @ ../subvsi3.c:32:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	bgt	.LBB48_6
	b	.LBB48_5
.LBB48_5:                               @ %if.then4
	.loc	30 33 13                        @ ../subvsi3.c:33:13
	ldr	r0, .LCPI48_0
	ldr	r2, .LCPI48_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB48_6:                               @ %if.end5
	.loc	30 0 13 is_stmt 0               @ ../subvsi3.c:0:13
	b	.LBB48_7
.LBB48_7:                               @ %if.end6
	.loc	30 35 5 is_stmt 1               @ ../subvsi3.c:35:5
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp90:
	.p2align	2
@ %bb.8:
	.loc	30 0 5 is_stmt 0                @ ../subvsi3.c:0:5
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
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp91:
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
	bhs	.LBB49_2
	b	.LBB49_1
.LBB49_1:                               @ %if.then
	.loc	31 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	31 30 9 is_stmt 1               @ ../ucmpdi2.c:30:9
	b	.LBB49_9
.LBB49_2:                               @ %if.end
	.loc	31 31 13                        @ ../ucmpdi2.c:31:13
	ldr	r0, [sp, #20]
	.loc	31 31 24 is_stmt 0              @ ../ucmpdi2.c:31:24
	ldr	r1, [sp, #12]
	.loc	31 31 9                         @ ../ucmpdi2.c:31:9
	cmp	r0, r1
	bls	.LBB49_4
	b	.LBB49_3
.LBB49_3:                               @ %if.then9
	.loc	31 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	31 32 9 is_stmt 1               @ ../ucmpdi2.c:32:9
	b	.LBB49_9
.LBB49_4:                               @ %if.end10
	.loc	31 33 13                        @ ../ucmpdi2.c:33:13
	ldr	r0, [sp, #16]
	.loc	31 33 23 is_stmt 0              @ ../ucmpdi2.c:33:23
	ldr	r1, [sp, #8]
	.loc	31 33 9                         @ ../ucmpdi2.c:33:9
	cmp	r0, r1
	bhs	.LBB49_6
	b	.LBB49_5
.LBB49_5:                               @ %if.then15
	.loc	31 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	31 34 9 is_stmt 1               @ ../ucmpdi2.c:34:9
	b	.LBB49_9
.LBB49_6:                               @ %if.end16
	.loc	31 35 13                        @ ../ucmpdi2.c:35:13
	ldr	r0, [sp, #16]
	.loc	31 35 23 is_stmt 0              @ ../ucmpdi2.c:35:23
	ldr	r1, [sp, #8]
	.loc	31 35 9                         @ ../ucmpdi2.c:35:9
	cmp	r0, r1
	bls	.LBB49_8
	b	.LBB49_7
.LBB49_7:                               @ %if.then22
	.loc	31 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	31 36 9 is_stmt 1               @ ../ucmpdi2.c:36:9
	b	.LBB49_9
.LBB49_8:                               @ %if.end23
	.loc	31 0 9 is_stmt 0                @ ../ucmpdi2.c:0:9
	mov	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	31 37 5 is_stmt 1               @ ../ucmpdi2.c:37:5
	b	.LBB49_9
.LBB49_9:                               @ %return
	.loc	31 0 0 is_stmt 0                @ ../ucmpdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	31 38 1 is_stmt 1               @ ../ucmpdi2.c:38:1
	add	sp, sp, #24
	bx	lr
.Ltmp92:
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
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp93:
	.loc	31 48 9 prologue_end            @ ../ucmpdi2.c:48:9
	bl	__ucmpdi2
	.loc	31 48 25 is_stmt 0              @ ../ucmpdi2.c:48:25
	sub	r0, r0, #1
	.loc	31 48 2                         @ ../ucmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp94:
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
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp95:
	.loc	32 22 12 prologue_end           @ ../udivdi3.c:22:12
	mov	lr, sp
	mov	r12, #0
	str	r12, [lr]
	bl	__udivmoddi4
	.loc	32 22 5 is_stmt 0               @ ../udivdi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp96:
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
.Ltmp97:
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
.Ltmp98:
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
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #64
	str	r1, [r11, #-8]                  @ 4-byte Spill
	str	r0, [r11, #-4]                  @ 4-byte Spill
.Ltmp99:
	.loc	34 32 9 prologue_end            @ ../udivsi3.c:32:9
	cmp	r1, #0
	bne	.LBB53_2
	b	.LBB53_1
.LBB53_1:                               @ %if.then
	.loc	34 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	34 33 9 is_stmt 1               @ ../udivsi3.c:33:9
	b	.LBB53_13
.LBB53_2:                               @ %if.end
	.loc	34 34 9                         @ ../udivsi3.c:34:9
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB53_4
	b	.LBB53_3
.LBB53_3:                               @ %if.then2
	.loc	34 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	34 35 9 is_stmt 1               @ ../udivsi3.c:35:9
	b	.LBB53_13
.LBB53_4:                               @ %if.end3
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
	blo	.LBB53_6
	b	.LBB53_5
.LBB53_5:                               @ %if.then5
	.loc	34 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	34 39 9 is_stmt 1               @ ../udivsi3.c:39:9
	b	.LBB53_13
.LBB53_6:                               @ %if.end6
	.loc	34 40 9                         @ ../udivsi3.c:40:9
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	cmp	r0, #31
	bne	.LBB53_8
	b	.LBB53_7
.LBB53_7:                               @ %if.then8
	.loc	34 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	34 41 9 is_stmt 1               @ ../udivsi3.c:41:9
	b	.LBB53_13
.LBB53_8:                               @ %if.end9
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
	b	.LBB53_9
.LBB53_9:                               @ %for.cond
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
	beq	.LBB53_12
	b	.LBB53_10
.LBB53_10:                              @ %for.body
                                        @   in Loop: Header=BB53_9 Depth=1
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
	b	.LBB53_11
.LBB53_11:                              @ %for.inc
                                        @   in Loop: Header=BB53_9 Depth=1
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
	b	.LBB53_9
.LBB53_12:                              @ %for.end
	.loc	34 64 18 is_stmt 1              @ ../udivsi3.c:64:18
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	orr	r0, r0, r1, lsl #1
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	34 65 5                         @ ../udivsi3.c:65:5
	b	.LBB53_13
.LBB53_13:                              @ %return
	.loc	34 0 0 is_stmt 0                @ ../udivsi3.c:0:0
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	.loc	34 66 1 is_stmt 1               @ ../udivsi3.c:66:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp100:
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
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp101:
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
.Ltmp102:
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
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp103:
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
.Ltmp104:
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
	sub	sp, sp, #20
	.cfi_def_cfa_offset 20
	str	r2, [sp, #4]                    @ 4-byte Spill
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #16]                   @ 4-byte Spill
.Ltmp105:
	.loc	37 8 6 prologue_end             @ ../memory.c:8:6
	b	.LBB56_1
.LBB56_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	37 0 0 is_stmt 0                @ ../memory.c:0:0
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	37 8 2                          @ ../memory.c:8:2
	cmp	r0, r1
	beq	.LBB56_4
	b	.LBB56_2
.LBB56_2:                               @ %for.body
                                        @   in Loop: Header=BB56_1 Depth=1
	.loc	37 9 21 is_stmt 1               @ ../memory.c:9:21
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldrb	r0, [r0, r2]
	.loc	37 9 19 is_stmt 0               @ ../memory.c:9:19
	strb	r0, [r1, r2]
	.loc	37 10 2 is_stmt 1               @ ../memory.c:10:2
	b	.LBB56_3
.LBB56_3:                               @ %for.inc
                                        @   in Loop: Header=BB56_1 Depth=1
	.loc	37 8 26                         @ ../memory.c:8:26
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	37 8 2 is_stmt 0                @ ../memory.c:8:2
	b	.LBB56_1
.LBB56_4:                               @ %for.end
                                        @ implicit-def: $r0
	.loc	37 11 1 is_stmt 1               @ ../memory.c:11:1
	add	sp, sp, #20
	bx	lr
.Ltmp106:
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
	sub	sp, sp, #20
	.cfi_def_cfa_offset 20
	str	r2, [sp, #4]                    @ 4-byte Spill
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #16]                   @ 4-byte Spill
.Ltmp107:
	.loc	37 17 6 prologue_end            @ ../memory.c:17:6
	b	.LBB57_1
.LBB57_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	37 0 0 is_stmt 0                @ ../memory.c:0:0
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	37 17 2                         @ ../memory.c:17:2
	cmp	r0, r1
	beq	.LBB57_4
	b	.LBB57_2
.LBB57_2:                               @ %for.body
                                        @   in Loop: Header=BB57_1 Depth=1
	.loc	37 18 11 is_stmt 1              @ ../memory.c:18:11
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	strb	r0, [r1, r2]
	.loc	37 19 2                         @ ../memory.c:19:2
	b	.LBB57_3
.LBB57_3:                               @ %for.inc
                                        @   in Loop: Header=BB57_1 Depth=1
	.loc	37 17 26                        @ ../memory.c:17:26
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	37 17 2 is_stmt 0               @ ../memory.c:17:2
	b	.LBB57_1
.LBB57_4:                               @ %for.end
	.loc	37 20 2 is_stmt 1               @ ../memory.c:20:2
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	add	sp, sp, #20
	bx	lr
.Ltmp108:
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
	.long	.Lfunc_end17-.Lfunc_begin0      @ DW_AT_high_pc
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
	.long	.Lfunc_end18-.Lfunc_begin18     @ DW_AT_high_pc
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
	.long	.Lfunc_end19-.Lfunc_begin19     @ DW_AT_high_pc
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
	.long	.Lfunc_end20-.Lfunc_begin20     @ DW_AT_high_pc
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
	.long	.Lfunc_end21-.Lfunc_begin21     @ DW_AT_high_pc
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
	.long	.Lfunc_end22-.Lfunc_begin22     @ DW_AT_high_pc
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
	.long	.Lfunc_end23-.Lfunc_begin23     @ DW_AT_high_pc
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
	.long	.Lfunc_end24-.Lfunc_begin24     @ DW_AT_high_pc
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
	.long	.Lfunc_end25-.Lfunc_begin25     @ DW_AT_high_pc
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
	.long	.Lfunc_end26-.Lfunc_begin26     @ DW_AT_high_pc
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
	.long	.Lfunc_end28-.Lfunc_begin27     @ DW_AT_high_pc
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
	.long	.Lfunc_end29-.Lfunc_begin29     @ DW_AT_high_pc
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
	.long	.Lfunc_end30-.Lfunc_begin30     @ DW_AT_high_pc
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
	.long	.Lfunc_end31-.Lfunc_begin31     @ DW_AT_high_pc
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
	.long	.Lfunc_end32-.Lfunc_begin32     @ DW_AT_high_pc
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
	.long	.Lfunc_end33-.Lfunc_begin33     @ DW_AT_high_pc
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
	.long	.Lfunc_end34-.Lfunc_begin34     @ DW_AT_high_pc
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
	.long	.Lfunc_end35-.Lfunc_begin35     @ DW_AT_high_pc
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
	.long	.Lfunc_end36-.Lfunc_begin36     @ DW_AT_high_pc
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
	.long	.Lfunc_end37-.Lfunc_begin37     @ DW_AT_high_pc
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
	.long	.Lfunc_end38-.Lfunc_begin38     @ DW_AT_high_pc
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
	.long	.Lfunc_end39-.Lfunc_begin39     @ DW_AT_high_pc
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
	.long	.Lfunc_end40-.Lfunc_begin40     @ DW_AT_high_pc
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
	.long	.Lfunc_end41-.Lfunc_begin41     @ DW_AT_high_pc
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
	.long	.Lfunc_end42-.Lfunc_begin42     @ DW_AT_high_pc
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
	.long	.Lfunc_end43-.Lfunc_begin43     @ DW_AT_high_pc
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
	.long	.Lfunc_end44-.Lfunc_begin44     @ DW_AT_high_pc
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
	.long	.Lfunc_end45-.Lfunc_begin45     @ DW_AT_high_pc
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
	.long	.Lfunc_end46-.Lfunc_begin46     @ DW_AT_high_pc
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
	.long	.Lfunc_end47-.Lfunc_begin47     @ DW_AT_high_pc
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
	.long	.Lfunc_end48-.Lfunc_begin48     @ DW_AT_high_pc
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
	.long	.Lfunc_end50-.Lfunc_begin49     @ DW_AT_high_pc
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
	.long	.Lfunc_end51-.Lfunc_begin51     @ DW_AT_high_pc
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
	.long	.Lfunc_end52-.Lfunc_begin52     @ DW_AT_high_pc
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
	.long	.Lfunc_end53-.Lfunc_begin53     @ DW_AT_high_pc
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
	.long	.Lfunc_end54-.Lfunc_begin54     @ DW_AT_high_pc
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
	.long	.Lfunc_end55-.Lfunc_begin55     @ DW_AT_high_pc
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
	.long	.Lfunc_end57-.Lfunc_begin56     @ DW_AT_high_pc
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
	.asciz	"/workspaces/llvmta/testcases/batchtest/g723_enc/g723_enc.c" @ string offset=100
.Linfo_string2:
	.asciz	"/workspaces/llvmta/testcases/tmp.nudlGPqgFM" @ string offset=159
.Linfo_string3:
	.asciz	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)" @ string offset=203
.Linfo_string4:
	.asciz	"../absvdi2.c"                  @ string offset=324
.Linfo_string5:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" @ string offset=337
.Linfo_string6:
	.asciz	"../int_util.c"                 @ string offset=399
.Linfo_string7:
	.asciz	"../absvsi2.c"                  @ string offset=413
.Linfo_string8:
	.asciz	"../addvdi3.c"                  @ string offset=426
.Linfo_string9:
	.asciz	"../addvsi3.c"                  @ string offset=439
.Linfo_string10:
	.asciz	"../ashldi3.c"                  @ string offset=452
.Linfo_string11:
	.asciz	"../ashrdi3.c"                  @ string offset=465
.Linfo_string12:
	.asciz	"../clzdi2.c"                   @ string offset=478
.Linfo_string13:
	.asciz	"../clzsi2.c"                   @ string offset=490
.Linfo_string14:
	.asciz	"../cmpdi2.c"                   @ string offset=502
.Linfo_string15:
	.asciz	"../ctzdi2.c"                   @ string offset=514
.Linfo_string16:
	.asciz	"../ctzsi2.c"                   @ string offset=526
.Linfo_string17:
	.asciz	"../divdi3.c"                   @ string offset=538
.Linfo_string18:
	.asciz	"../udivmoddi4.c"               @ string offset=550
.Linfo_string19:
	.asciz	"../divmoddi4.c"                @ string offset=566
.Linfo_string20:
	.asciz	"../divmodsi4.c"                @ string offset=581
.Linfo_string21:
	.asciz	"../divsi3.c"                   @ string offset=596
.Linfo_string22:
	.asciz	"../ffsdi2.c"                   @ string offset=608
.Linfo_string23:
	.asciz	"../ffssi2.c"                   @ string offset=620
.Linfo_string24:
	.asciz	"../lshrdi3.c"                  @ string offset=632
.Linfo_string25:
	.asciz	"../moddi3.c"                   @ string offset=645
.Linfo_string26:
	.asciz	"../modsi3.c"                   @ string offset=657
.Linfo_string27:
	.asciz	"../mulvdi3.c"                  @ string offset=669
.Linfo_string28:
	.asciz	"../mulvsi3.c"                  @ string offset=682
.Linfo_string29:
	.asciz	"../paritydi2.c"                @ string offset=695
.Linfo_string30:
	.asciz	"../paritysi2.c"                @ string offset=710
.Linfo_string31:
	.asciz	"../popcountdi2.c"              @ string offset=725
.Linfo_string32:
	.asciz	"../popcountsi2.c"              @ string offset=742
.Linfo_string33:
	.asciz	"../subvdi3.c"                  @ string offset=759
.Linfo_string34:
	.asciz	"../subvsi3.c"                  @ string offset=772
.Linfo_string35:
	.asciz	"../ucmpdi2.c"                  @ string offset=785
.Linfo_string36:
	.asciz	"../udivdi3.c"                  @ string offset=798
.Linfo_string37:
	.asciz	"../udivmodsi4.c"               @ string offset=811
.Linfo_string38:
	.asciz	"../udivsi3.c"                  @ string offset=827
.Linfo_string39:
	.asciz	"../umoddi3.c"                  @ string offset=840
.Linfo_string40:
	.asciz	"../umodsi3.c"                  @ string offset=853
.Linfo_string41:
	.asciz	"../memory.c"                   @ string offset=866
.Linfo_string42:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" @ string offset=878
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
