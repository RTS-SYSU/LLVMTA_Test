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
	.globl	ndes_init                       @ -- Begin function ndes_init
	.p2align	2
	.type	ndes_init,%function
	.code	32                              @ @ndes_init
ndes_init:
.Lfunc_begin0:
	.file	1 "/workspaces/llvmta/testcases" "batchtest/ndes/ndes.c" md5 0x1dbf55eeb6d2b1d38e6a64b015f1acba
	.loc	1 64 0                          @ batchtest/ndes/ndes.c:64:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	r0, #0
	str	r0, [sp, #12]                   @ 4-byte Spill
.Ltmp0:
	.loc	1 79 9 prologue_end             @ batchtest/ndes/ndes.c:79:9
	b	.LBB0_1
.LBB0_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/ndes/ndes.c:0:0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 79 3                          @ batchtest/ndes/ndes.c:79:3
	cmp	r0, #10
	beq	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                @ %for.body
                                        @   in Loop: Header=BB0_1 Depth=1
	.loc	1 80 22 is_stmt 1               @ batchtest/ndes/ndes.c:80:22
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r0, .LCPI0_0
	ldrb	r0, [r0, r2]
	.loc	1 80 5 is_stmt 0                @ batchtest/ndes/ndes.c:80:5
	ldr	r1, .LCPI0_1
	.loc	1 80 20                         @ batchtest/ndes/ndes.c:80:20
	strb	r0, [r1, r2]
	.loc	1 80 5                          @ batchtest/ndes/ndes.c:80:5
	b	.LBB0_3
.LBB0_3:                                @ %for.inc
                                        @   in Loop: Header=BB0_1 Depth=1
	.loc	1 79 25 is_stmt 1               @ batchtest/ndes/ndes.c:79:25
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	1 79 3 is_stmt 0                @ batchtest/ndes/ndes.c:79:3
	b	.LBB0_1
.LBB0_4:                                @ %for.end
	.loc	1 0 3                           @ batchtest/ndes/ndes.c:0:3
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 82 9 is_stmt 1                @ batchtest/ndes/ndes.c:82:9
	b	.LBB0_5
.LBB0_5:                                @ %for.cond2
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/ndes/ndes.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 82 3                          @ batchtest/ndes/ndes.c:82:3
	cmp	r0, #10
	beq	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                @ %for.body4
                                        @   in Loop: Header=BB0_5 Depth=1
	.loc	1 83 22 is_stmt 1               @ batchtest/ndes/ndes.c:83:22
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, .LCPI0_2
	ldrb	r0, [r0, r2]
	.loc	1 83 5 is_stmt 0                @ batchtest/ndes/ndes.c:83:5
	ldr	r1, .LCPI0_3
	.loc	1 83 20                         @ batchtest/ndes/ndes.c:83:20
	strb	r0, [r1, r2]
	.loc	1 83 5                          @ batchtest/ndes/ndes.c:83:5
	b	.LBB0_7
.LBB0_7:                                @ %for.inc7
                                        @   in Loop: Header=BB0_5 Depth=1
	.loc	1 82 25 is_stmt 1               @ batchtest/ndes/ndes.c:82:25
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 82 3 is_stmt 0                @ batchtest/ndes/ndes.c:82:3
	b	.LBB0_5
.LBB0_8:                                @ %for.end9
	.loc	1 85 14 is_stmt 1               @ batchtest/ndes/ndes.c:85:14
	ldr	r1, .LCPI0_4
	mov	r0, #35
	str	r0, [r1]
	mov	r0, #26
	.loc	1 86 14                         @ batchtest/ndes/ndes.c:86:14
	str	r0, [r1, #4]
	.loc	1 87 14                         @ batchtest/ndes/ndes.c:87:14
	ldr	r1, .LCPI0_5
	mov	r0, #2
	str	r0, [r1]
	mov	r0, #16
	.loc	1 88 14                         @ batchtest/ndes/ndes.c:88:14
	str	r0, [r1, #4]
	.loc	1 90 17                         @ batchtest/ndes/ndes.c:90:17
	ldr	r0, .LCPI0_6
	ldr	r0, [r0]
	.loc	1 90 15 is_stmt 0               @ batchtest/ndes/ndes.c:90:15
	ldr	r1, .LCPI0_7
	str	r0, [r1]
	.loc	1 91 12 is_stmt 1               @ batchtest/ndes/ndes.c:91:12
	ldr	r1, .LCPI0_8
	str	r0, [r1]
	.loc	1 92 1                          @ batchtest/ndes/ndes.c:92:1
	add	sp, sp, #16
	bx	lr
.Ltmp1:
	.p2align	2
@ %bb.9:
	.loc	1 0 1 is_stmt 0                 @ batchtest/ndes/ndes.c:0:1
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
	.loc	1 98 0 is_stmt 1                @ batchtest/ndes/ndes.c:98:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #200
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	ldr	r12, [r11, #16]
	str	r12, [r11, #-52]                @ 4-byte Spill
	ldr	r12, [r11, #12]
	str	r12, [r11, #-48]                @ 4-byte Spill
	ldr	r12, [r11, #8]
	str	r12, [r11, #-44]                @ 4-byte Spill
	str	r0, [r11, #-8]
	str	r1, [r11, #-4]
	str	r2, [r11, #-16]
	str	r3, [r11, #-12]
.Ltmp2:
	.loc	1 127 8 prologue_end            @ batchtest/ndes/ndes.c:127:8
	ldr	r0, .LCPI1_0
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB1_6
	b	.LBB1_1
.LBB1_1:                                @ %if.then
	.loc	1 128 14                        @ batchtest/ndes/ndes.c:128:14
	ldr	r1, .LCPI1_0
	mov	r0, #0
	str	r0, [r1]
	.loc	1 129 19                        @ batchtest/ndes/ndes.c:129:19
	ldr	r1, .LCPI1_1
	mov	r0, #1
	str	r0, [r1, #4]
	mov	r1, #2
	str	r1, [r11, #-60]                 @ 4-byte Spill
	str	r0, [r11, #-56]                 @ 4-byte Spill
	.loc	1 132 11                        @ batchtest/ndes/ndes.c:132:11
	b	.LBB1_2
.LBB1_2:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/ndes/ndes.c:0:0
	ldr	r0, [r11, #-60]                 @ 4-byte Reload
	ldr	r1, [r11, #-56]                 @ 4-byte Reload
	str	r1, [r11, #-68]                 @ 4-byte Spill
	str	r0, [r11, #-64]                 @ 4-byte Spill
	.loc	1 132 5                         @ batchtest/ndes/ndes.c:132:5
	cmp	r0, #3
	beq	.LBB1_5
	b	.LBB1_3
.LBB1_3:                                @ %for.body
                                        @   in Loop: Header=BB1_2 Depth=1
	.loc	1 133 33 is_stmt 1              @ batchtest/ndes/ndes.c:133:33
	ldr	r2, [r11, #-64]                 @ 4-byte Reload
	ldr	r0, [r11, #-68]                 @ 4-byte Reload
	lsl	r0, r0, #1
	str	r0, [r11, #-72]                 @ 4-byte Spill
	.loc	1 133 7 is_stmt 0               @ batchtest/ndes/ndes.c:133:7
	ldr	r1, .LCPI1_1
	.loc	1 133 21                        @ batchtest/ndes/ndes.c:133:21
	str	r0, [r1, r2, lsl #2]
	.loc	1 133 7                         @ batchtest/ndes/ndes.c:133:7
	b	.LBB1_4
.LBB1_4:                                @ %for.inc
                                        @   in Loop: Header=BB1_2 Depth=1
	.loc	1 132 27 is_stmt 1              @ batchtest/ndes/ndes.c:132:27
	ldr	r0, [r11, #-72]                 @ 4-byte Reload
	ldr	r1, [r11, #-64]                 @ 4-byte Reload
	add	r1, r1, #1
	str	r1, [r11, #-60]                 @ 4-byte Spill
	str	r0, [r11, #-56]                 @ 4-byte Spill
	.loc	1 132 5 is_stmt 0               @ batchtest/ndes/ndes.c:132:5
	b	.LBB1_2
.LBB1_5:                                @ %for.end
	.loc	1 134 3 is_stmt 1               @ batchtest/ndes/ndes.c:134:3
	b	.LBB1_6
.LBB1_6:                                @ %if.end
	.loc	1 136 8                         @ batchtest/ndes/ndes.c:136:8
	ldr	r0, [r11, #-44]                 @ 4-byte Reload
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB1_16
	b	.LBB1_7
.LBB1_7:                                @ %if.then2
	.loc	1 0 8 is_stmt 0                 @ batchtest/ndes/ndes.c:0:8
	ldr	r1, [r11, #-44]                 @ 4-byte Reload
	mov	r0, #0
	.loc	1 137 13 is_stmt 1              @ batchtest/ndes/ndes.c:137:13
	str	r0, [r1]
	.loc	1 138 29                        @ batchtest/ndes/ndes.c:138:29
	ldr	r1, .LCPI1_2
	str	r0, [r1]
	.loc	1 138 16 is_stmt 0              @ batchtest/ndes/ndes.c:138:16
	str	r0, [r1, #4]
	mov	r0, #10
	mov	r1, #1
	str	r1, [r11, #-80]                 @ 4-byte Spill
	str	r0, [r11, #-76]                 @ 4-byte Spill
	.loc	1 141 11 is_stmt 1              @ batchtest/ndes/ndes.c:141:11
	b	.LBB1_8
.LBB1_8:                                @ %for.cond3
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/ndes/ndes.c:0:0
	ldr	r0, [r11, #-80]                 @ 4-byte Reload
	ldr	r1, [r11, #-76]                 @ 4-byte Reload
	str	r1, [r11, #-88]                 @ 4-byte Spill
	str	r0, [r11, #-84]                 @ 4-byte Spill
	.loc	1 141 5                         @ batchtest/ndes/ndes.c:141:5
	cmp	r0, #0
	beq	.LBB1_11
	b	.LBB1_9
.LBB1_9:                                @ %for.body5
                                        @   in Loop: Header=BB1_8 Depth=1
	.loc	1 142 31 is_stmt 1              @ batchtest/ndes/ndes.c:142:31
	ldr	r1, [r11, #-84]                 @ 4-byte Reload
	ldr	r0, .LCPI1_2
	str	r0, [r11, #-92]                 @ 4-byte Spill
	ldr	r0, [r0, #4]
	str	r0, [sp, #96]                   @ 4-byte Spill
	.loc	1 142 60 is_stmt 0              @ batchtest/ndes/ndes.c:142:60
	ldr	r0, .LCPI1_3
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldrb	r2, [r0, r1]
	.loc	1 142 42                        @ batchtest/ndes/ndes.c:142:42
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	mov	r3, #32
	str	r3, [sp, #92]                   @ 4-byte Spill
	bl	ndes_getbit
	ldr	r1, [r11, #-88]                 @ 4-byte Reload
	ldr	r3, [sp, #92]                   @ 4-byte Reload
	ldr	r12, [r11, #-92]                @ 4-byte Reload
	ldr	lr, [sp, #96]                   @ 4-byte Reload
	mov	r2, r0
	.loc	1 142 40                        @ batchtest/ndes/ndes.c:142:40
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	orr	r2, r2, lr, lsl #1
	.loc	1 142 18                        @ batchtest/ndes/ndes.c:142:18
	str	r2, [r12, #4]
	.loc	1 143 29 is_stmt 1              @ batchtest/ndes/ndes.c:143:29
	ldr	r2, [r12]
	str	r2, [r11, #-96]                 @ 4-byte Spill
	.loc	1 143 31 is_stmt 0              @ batchtest/ndes/ndes.c:143:31
	lsl	r2, r2, #1
	.loc	1 143 18                        @ batchtest/ndes/ndes.c:143:18
	str	r2, [r12]
	.loc	1 144 55 is_stmt 1              @ batchtest/ndes/ndes.c:144:55
	ldrb	r2, [r0, r1]
	.loc	1 144 37 is_stmt 0              @ batchtest/ndes/ndes.c:144:37
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	bl	ndes_getbit
	ldr	r2, [r11, #-96]                 @ 4-byte Reload
	ldr	r1, [r11, #-92]                 @ 4-byte Reload
	.loc	1 144 35                        @ batchtest/ndes/ndes.c:144:35
	orr	r0, r0, r2, lsl #1
	.loc	1 144 18                        @ batchtest/ndes/ndes.c:144:18
	str	r0, [r1]
	.loc	1 145 5 is_stmt 1               @ batchtest/ndes/ndes.c:145:5
	b	.LBB1_10
.LBB1_10:                               @ %for.inc13
                                        @   in Loop: Header=BB1_8 Depth=1
	.loc	1 141 35                        @ batchtest/ndes/ndes.c:141:35
	ldr	r0, [r11, #-88]                 @ 4-byte Reload
	ldr	r1, [r11, #-84]                 @ 4-byte Reload
	sub	r1, r1, #1
	.loc	1 141 40 is_stmt 0              @ batchtest/ndes/ndes.c:141:40
	sub	r0, r0, #1
	str	r1, [r11, #-80]                 @ 4-byte Spill
	str	r0, [r11, #-76]                 @ 4-byte Spill
	.loc	1 141 5                         @ batchtest/ndes/ndes.c:141:5
	b	.LBB1_8
.LBB1_11:                               @ %for.end15
	.loc	1 0 5                           @ batchtest/ndes/ndes.c:0:5
	mov	r0, #16
	str	r0, [sp, #88]                   @ 4-byte Spill
	.loc	1 148 11 is_stmt 1              @ batchtest/ndes/ndes.c:148:11
	b	.LBB1_12
.LBB1_12:                               @ %for.cond16
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/ndes/ndes.c:0:0
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	str	r0, [sp, #84]                   @ 4-byte Spill
	.loc	1 148 5                         @ batchtest/ndes/ndes.c:148:5
	cmp	r0, #17
	beq	.LBB1_15
	b	.LBB1_13
.LBB1_13:                               @ %for.body19
                                        @   in Loop: Header=BB1_12 Depth=1
	.loc	1 149 12 is_stmt 1              @ batchtest/ndes/ndes.c:149:12
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	add	r1, r0, r0, lsl #1
	ldr	r2, .LCPI1_4
	ldr	r1, [r2, r1, lsl #2]!
	str	r2, [sp, #80]                   @ 4-byte Spill
	str	r1, [r11, #-40]
	ldr	r1, [r2, #4]
	ldr	r2, [r2, #8]
	str	r2, [r11, #-32]
	str	r1, [r11, #-36]
	sub	r1, r11, #40
	.loc	1 150 7                         @ batchtest/ndes/ndes.c:150:7
	bl	ndes_ks
	ldr	r1, [sp, #80]                   @ 4-byte Reload
	.loc	1 151 18                        @ batchtest/ndes/ndes.c:151:18
	ldr	r0, [r11, #-40]
	ldr	r2, [r11, #-36]
	ldr	r3, [r11, #-32]
	str	r3, [r1, #8]
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	1 152 5                         @ batchtest/ndes/ndes.c:152:5
	b	.LBB1_14
.LBB1_14:                               @ %for.inc22
                                        @   in Loop: Header=BB1_12 Depth=1
	.loc	1 148 29                        @ batchtest/ndes/ndes.c:148:29
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #88]                   @ 4-byte Spill
	.loc	1 148 5 is_stmt 0               @ batchtest/ndes/ndes.c:148:5
	b	.LBB1_12
.LBB1_15:                               @ %for.end24
	.loc	1 153 3 is_stmt 1               @ batchtest/ndes/ndes.c:153:3
	b	.LBB1_16
.LBB1_16:                               @ %if.end25
	.loc	1 0 3 is_stmt 0                 @ batchtest/ndes/ndes.c:0:3
	mov	r0, #0
	.loc	1 155 19 is_stmt 1              @ batchtest/ndes/ndes.c:155:19
	str	r0, [r11, #-28]
	.loc	1 155 10 is_stmt 0              @ batchtest/ndes/ndes.c:155:10
	str	r0, [r11, #-24]
	mov	r0, #64
	mov	r1, #1
	str	r1, [sp, #72]                   @ 4-byte Spill
	str	r0, [sp, #76]                   @ 4-byte Spill
	.loc	1 158 9 is_stmt 1               @ batchtest/ndes/ndes.c:158:9
	b	.LBB1_17
.LBB1_17:                               @ %for.cond26
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/ndes/ndes.c:0:0
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	str	r1, [sp, #64]                   @ 4-byte Spill
	str	r0, [sp, #68]                   @ 4-byte Spill
	.loc	1 158 3                         @ batchtest/ndes/ndes.c:158:3
	cmp	r0, #0
	beq	.LBB1_20
	b	.LBB1_18
.LBB1_18:                               @ %for.body29
                                        @   in Loop: Header=BB1_17 Depth=1
	.loc	1 159 19 is_stmt 1              @ batchtest/ndes/ndes.c:159:19
	ldr	r1, [sp, #68]                   @ 4-byte Reload
	ldr	r0, [r11, #-24]
	str	r0, [sp, #48]                   @ 4-byte Spill
	.loc	1 159 21 is_stmt 0              @ batchtest/ndes/ndes.c:159:21
	lsl	r0, r0, #1
	.loc	1 159 12                        @ batchtest/ndes/ndes.c:159:12
	str	r0, [r11, #-24]
	.loc	1 160 45 is_stmt 1              @ batchtest/ndes/ndes.c:160:45
	ldr	r0, .LCPI1_5
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldrb	r2, [r0, r1]
	.loc	1 160 27 is_stmt 0              @ batchtest/ndes/ndes.c:160:27
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	mov	r3, #32
	str	r3, [sp, #52]                   @ 4-byte Spill
	bl	ndes_getbit
	ldr	r12, [sp, #48]                  @ 4-byte Reload
	ldr	r1, [sp, #64]                   @ 4-byte Reload
	ldr	r3, [sp, #52]                   @ 4-byte Reload
	mov	r2, r0
	.loc	1 160 25                        @ batchtest/ndes/ndes.c:160:25
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	orr	r2, r2, r12, lsl #1
	.loc	1 160 12                        @ batchtest/ndes/ndes.c:160:12
	str	r2, [r11, #-24]
	.loc	1 161 19 is_stmt 1              @ batchtest/ndes/ndes.c:161:19
	ldr	r2, [r11, #-28]
	str	r2, [sp, #60]                   @ 4-byte Spill
	.loc	1 161 21 is_stmt 0              @ batchtest/ndes/ndes.c:161:21
	lsl	r2, r2, #1
	.loc	1 161 12                        @ batchtest/ndes/ndes.c:161:12
	str	r2, [r11, #-28]
	.loc	1 162 45 is_stmt 1              @ batchtest/ndes/ndes.c:162:45
	ldrb	r2, [r0, r1]
	.loc	1 162 27 is_stmt 0              @ batchtest/ndes/ndes.c:162:27
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	bl	ndes_getbit
	ldr	r1, [sp, #60]                   @ 4-byte Reload
	.loc	1 162 25                        @ batchtest/ndes/ndes.c:162:25
	orr	r0, r0, r1, lsl #1
	.loc	1 162 12                        @ batchtest/ndes/ndes.c:162:12
	str	r0, [r11, #-28]
	.loc	1 163 3 is_stmt 1               @ batchtest/ndes/ndes.c:163:3
	b	.LBB1_19
.LBB1_19:                               @ %for.inc48
                                        @   in Loop: Header=BB1_17 Depth=1
	.loc	1 158 33                        @ batchtest/ndes/ndes.c:158:33
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #68]                   @ 4-byte Reload
	sub	r1, r1, #1
	.loc	1 158 38 is_stmt 0              @ batchtest/ndes/ndes.c:158:38
	sub	r0, r0, #1
	str	r1, [sp, #72]                   @ 4-byte Spill
	str	r0, [sp, #76]                   @ 4-byte Spill
	.loc	1 158 3                         @ batchtest/ndes/ndes.c:158:3
	b	.LBB1_17
.LBB1_20:                               @ %for.end51
	.loc	1 0 3                           @ batchtest/ndes/ndes.c:0:3
	mov	r0, #16
	str	r0, [sp, #44]                   @ 4-byte Spill
	.loc	1 165 9 is_stmt 1               @ batchtest/ndes/ndes.c:165:9
	b	.LBB1_21
.LBB1_21:                               @ %for.cond52
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/ndes/ndes.c:0:0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	str	r0, [sp, #40]                   @ 4-byte Spill
	.loc	1 165 3                         @ batchtest/ndes/ndes.c:165:3
	cmp	r0, #17
	beq	.LBB1_27
	b	.LBB1_22
.LBB1_22:                               @ %for.body55
                                        @   in Loop: Header=BB1_21 Depth=1
	.loc	1 166 12 is_stmt 1              @ batchtest/ndes/ndes.c:166:12
	ldr	r0, [r11, #-48]                 @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB1_24
	b	.LBB1_23
.LBB1_23:                               @ %cond.true
                                        @   in Loop: Header=BB1_21 Depth=1
	.loc	1 166 26 is_stmt 0              @ batchtest/ndes/ndes.c:166:26
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	rsb	r0, r0, #17
	str	r0, [sp, #36]                   @ 4-byte Spill
	.loc	1 166 12                        @ batchtest/ndes/ndes.c:166:12
	b	.LBB1_25
.LBB1_24:                               @ %cond.false
                                        @   in Loop: Header=BB1_21 Depth=1
	.loc	1 0 12                          @ batchtest/ndes/ndes.c:0:12
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	str	r0, [sp, #36]                   @ 4-byte Spill
	.loc	1 166 12                        @ batchtest/ndes/ndes.c:166:12
	b	.LBB1_25
.LBB1_25:                               @ %cond.end
                                        @   in Loop: Header=BB1_21 Depth=1
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	.loc	1 167 22 is_stmt 1              @ batchtest/ndes/ndes.c:167:22
	ldr	r0, [r11, #-28]
	.loc	1 167 5 is_stmt 0               @ batchtest/ndes/ndes.c:167:5
	add	r1, r1, r1, lsl #1
	ldr	r3, .LCPI1_4
	ldr	r1, [r3, r1, lsl #2]!
	ldr	r2, [r3, #4]
	ldr	r3, [r3, #8]
	mov	lr, sp
	sub	r12, r11, #20
	str	r12, [lr]
	bl	ndes_cyfun
	.loc	1 168 16 is_stmt 1              @ batchtest/ndes/ndes.c:168:16
	ldr	r1, [r11, #-24]
	.loc	1 168 8 is_stmt 0               @ batchtest/ndes/ndes.c:168:8
	ldr	r0, [r11, #-20]
	eor	r0, r0, r1
	str	r0, [r11, #-20]
	.loc	1 169 19 is_stmt 1              @ batchtest/ndes/ndes.c:169:19
	ldr	r1, [r11, #-28]
	.loc	1 169 12 is_stmt 0              @ batchtest/ndes/ndes.c:169:12
	str	r1, [r11, #-24]
	.loc	1 170 12 is_stmt 1              @ batchtest/ndes/ndes.c:170:12
	str	r0, [r11, #-28]
	.loc	1 171 3                         @ batchtest/ndes/ndes.c:171:3
	b	.LBB1_26
.LBB1_26:                               @ %for.inc64
                                        @   in Loop: Header=BB1_21 Depth=1
	.loc	1 165 27                        @ batchtest/ndes/ndes.c:165:27
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #44]                   @ 4-byte Spill
	.loc	1 165 3 is_stmt 0               @ batchtest/ndes/ndes.c:165:3
	b	.LBB1_21
.LBB1_27:                               @ %for.end66
	.loc	1 173 13 is_stmt 1              @ batchtest/ndes/ndes.c:173:13
	ldr	r1, [r11, #-52]                 @ 4-byte Reload
	ldr	r0, [r11, #-24]
	.loc	1 173 6 is_stmt 0               @ batchtest/ndes/ndes.c:173:6
	str	r0, [r11, #-20]
	.loc	1 174 17 is_stmt 1              @ batchtest/ndes/ndes.c:174:17
	ldr	r2, [r11, #-28]
	.loc	1 174 10 is_stmt 0              @ batchtest/ndes/ndes.c:174:10
	str	r2, [r11, #-24]
	.loc	1 175 10 is_stmt 1              @ batchtest/ndes/ndes.c:175:10
	str	r0, [r11, #-28]
	mov	r0, #0
	.loc	1 176 27                        @ batchtest/ndes/ndes.c:176:27
	str	r0, [r1]
	.loc	1 176 14 is_stmt 0              @ batchtest/ndes/ndes.c:176:14
	str	r0, [r1, #4]
	mov	r0, #64
	mov	r1, #1
	str	r1, [sp, #28]                   @ 4-byte Spill
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	1 179 9 is_stmt 1               @ batchtest/ndes/ndes.c:179:9
	b	.LBB1_28
.LBB1_28:                               @ %for.cond73
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/ndes/ndes.c:0:0
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	str	r1, [sp, #20]                   @ 4-byte Spill
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	1 179 3                         @ batchtest/ndes/ndes.c:179:3
	cmp	r0, #0
	beq	.LBB1_31
	b	.LBB1_29
.LBB1_29:                               @ %for.body76
                                        @   in Loop: Header=BB1_28 Depth=1
	.loc	1 180 27 is_stmt 1              @ batchtest/ndes/ndes.c:180:27
	ldr	r2, [r11, #-52]                 @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	ldr	r0, [r2, #4]
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 180 29 is_stmt 0              @ batchtest/ndes/ndes.c:180:29
	lsl	r0, r0, #1
	.loc	1 180 16                        @ batchtest/ndes/ndes.c:180:16
	str	r0, [r2, #4]
	.loc	1 181 54 is_stmt 1              @ batchtest/ndes/ndes.c:181:54
	ldr	r0, .LCPI1_6
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldrb	r2, [r0, r1]
	.loc	1 181 35 is_stmt 0              @ batchtest/ndes/ndes.c:181:35
	ldr	r0, [r11, #-28]
	ldr	r1, [r11, #-24]
	mov	r3, #32
	str	r3, [sp, #4]                    @ 4-byte Spill
	bl	ndes_getbit
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	ldr	r12, [r11, #-52]                @ 4-byte Reload
	ldr	lr, [sp, #8]                    @ 4-byte Reload
	mov	r2, r0
	.loc	1 181 33                        @ batchtest/ndes/ndes.c:181:33
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	orr	r2, r2, lr, lsl #1
	.loc	1 181 16                        @ batchtest/ndes/ndes.c:181:16
	str	r2, [r12, #4]
	.loc	1 182 27 is_stmt 1              @ batchtest/ndes/ndes.c:182:27
	ldr	r2, [r12]
	str	r2, [sp, #16]                   @ 4-byte Spill
	.loc	1 182 29 is_stmt 0              @ batchtest/ndes/ndes.c:182:29
	lsl	r2, r2, #1
	.loc	1 182 16                        @ batchtest/ndes/ndes.c:182:16
	str	r2, [r12]
	.loc	1 183 54 is_stmt 1              @ batchtest/ndes/ndes.c:183:54
	ldrb	r2, [r0, r1]
	.loc	1 183 35 is_stmt 0              @ batchtest/ndes/ndes.c:183:35
	ldr	r0, [r11, #-28]
	ldr	r1, [r11, #-24]
	bl	ndes_getbit
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [r11, #-52]                 @ 4-byte Reload
	.loc	1 183 33                        @ batchtest/ndes/ndes.c:183:33
	orr	r0, r0, r2, lsl #1
	.loc	1 183 16                        @ batchtest/ndes/ndes.c:183:16
	str	r0, [r1]
	.loc	1 184 3 is_stmt 1               @ batchtest/ndes/ndes.c:184:3
	b	.LBB1_30
.LBB1_30:                               @ %for.inc95
                                        @   in Loop: Header=BB1_28 Depth=1
	.loc	1 179 33                        @ batchtest/ndes/ndes.c:179:33
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	sub	r1, r1, #1
	.loc	1 179 38 is_stmt 0              @ batchtest/ndes/ndes.c:179:38
	sub	r0, r0, #1
	str	r1, [sp, #28]                   @ 4-byte Spill
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	1 179 3                         @ batchtest/ndes/ndes.c:179:3
	b	.LBB1_28
.LBB1_31:                               @ %for.end98
	.loc	1 185 1 is_stmt 1               @ batchtest/ndes/ndes.c:185:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp3:
	.p2align	2
@ %bb.32:
	.loc	1 0 1 is_stmt 0                 @ batchtest/ndes/ndes.c:0:1
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
	.loc	1 334 0 is_stmt 1               @ batchtest/ndes/ndes.c:334:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #20
	.cfi_def_cfa_offset 20
	str	r3, [sp, #4]                    @ 4-byte Spill
	str	r2, [sp, #8]                    @ 4-byte Spill
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	str	r0, [sp, #12]
	str	r1, [sp, #16]
.Ltmp4:
	.loc	1 335 8 prologue_end            @ batchtest/ndes/ndes.c:335:8
	cmp	r2, r3
	bgt	.LBB2_2
	b	.LBB2_1
.LBB2_1:                                @ %if.then
	.loc	1 336 12                        @ batchtest/ndes/ndes.c:336:12
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, .LCPI2_0
	ldr	r0, [r0, r1, lsl #2]
	.loc	1 336 39 is_stmt 0              @ batchtest/ndes/ndes.c:336:39
	ldr	r1, [sp, #16]
	.loc	1 336 30                        @ batchtest/ndes/ndes.c:336:30
	and	r0, r0, r1
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 336 5                         @ batchtest/ndes/ndes.c:336:5
	b	.LBB2_3
.LBB2_2:                                @ %if.else
	.loc	1 338 28 is_stmt 1              @ batchtest/ndes/ndes.c:338:28
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	sub	r1, r0, r1
	.loc	1 338 12 is_stmt 0              @ batchtest/ndes/ndes.c:338:12
	ldr	r0, .LCPI2_0
	ldr	r0, [r0, r1, lsl #2]
	.loc	1 338 47                        @ batchtest/ndes/ndes.c:338:47
	ldr	r1, [sp, #12]
	.loc	1 338 38                        @ batchtest/ndes/ndes.c:338:38
	and	r0, r0, r1
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 338 5                         @ batchtest/ndes/ndes.c:338:5
	b	.LBB2_3
.LBB2_3:                                @ %return
	.loc	1 0 5                           @ batchtest/ndes/ndes.c:0:5
	ldr	r0, [sp]                        @ 4-byte Reload
	cmp	r0, #0
	movne	r0, #1
	.loc	1 339 1 is_stmt 1               @ batchtest/ndes/ndes.c:339:1
	add	sp, sp, #20
	bx	lr
.Ltmp5:
	.p2align	2
@ %bb.4:
	.loc	1 0 1 is_stmt 0                 @ batchtest/ndes/ndes.c:0:1
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
	.loc	1 342 0 is_stmt 1               @ batchtest/ndes/ndes.c:342:0
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
	sub	sp, sp, #64
	str	r1, [r11, #-16]                 @ 4-byte Spill
	str	r0, [r11, #-12]                 @ 4-byte Spill
.Ltmp6:
	.loc	1 345 15 prologue_end           @ batchtest/ndes/ndes.c:345:15
	cmp	r0, #1
	beq	.LBB3_4
	b	.LBB3_1
.LBB3_1:                                @ %lor.lhs.false
	.loc	1 345 25 is_stmt 0              @ batchtest/ndes/ndes.c:345:25
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	cmp	r0, #2
	beq	.LBB3_4
	b	.LBB3_2
.LBB3_2:                                @ %lor.lhs.false2
	.loc	1 345 35                        @ batchtest/ndes/ndes.c:345:35
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	cmp	r0, #9
	beq	.LBB3_4
	b	.LBB3_3
.LBB3_3:                                @ %lor.lhs.false4
	.loc	1 345 8                         @ batchtest/ndes/ndes.c:345:8
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	cmp	r0, #16
	bne	.LBB3_5
	b	.LBB3_4
.LBB3_4:                                @ %if.then
	.loc	1 346 29 is_stmt 1              @ batchtest/ndes/ndes.c:346:29
	ldr	r1, .LCPI3_0
	ldr	r0, [r1, #4]
	.loc	1 346 55 is_stmt 0              @ batchtest/ndes/ndes.c:346:55
	and	r2, r0, #1
	.loc	1 346 31                        @ batchtest/ndes/ndes.c:346:31
	orr	r0, r0, r2, lsl #28
	.loc	1 346 65                        @ batchtest/ndes/ndes.c:346:65
	lsr	r0, r0, #1
	.loc	1 346 16                        @ batchtest/ndes/ndes.c:346:16
	str	r0, [r1, #4]
	.loc	1 347 29 is_stmt 1              @ batchtest/ndes/ndes.c:347:29
	ldr	r0, [r1]
	.loc	1 347 55 is_stmt 0              @ batchtest/ndes/ndes.c:347:55
	and	r2, r0, #1
	.loc	1 347 31                        @ batchtest/ndes/ndes.c:347:31
	orr	r0, r0, r2, lsl #28
	.loc	1 347 65                        @ batchtest/ndes/ndes.c:347:65
	lsr	r0, r0, #1
	.loc	1 347 16                        @ batchtest/ndes/ndes.c:347:16
	str	r0, [r1]
	.loc	1 348 3 is_stmt 1               @ batchtest/ndes/ndes.c:348:3
	b	.LBB3_10
.LBB3_5:                                @ %if.else
	.loc	1 0 3 is_stmt 0                 @ batchtest/ndes/ndes.c:0:3
	mov	r0, #1
	str	r0, [r11, #-20]                 @ 4-byte Spill
	.loc	1 350 11 is_stmt 1              @ batchtest/ndes/ndes.c:350:11
	b	.LBB3_6
.LBB3_6:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/ndes/ndes.c:0:0
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	str	r0, [r11, #-24]                 @ 4-byte Spill
	.loc	1 350 5                         @ batchtest/ndes/ndes.c:350:5
	cmp	r0, #3
	beq	.LBB3_9
	b	.LBB3_7
.LBB3_7:                                @ %for.body
                                        @   in Loop: Header=BB3_6 Depth=1
	.loc	1 351 31 is_stmt 1              @ batchtest/ndes/ndes.c:351:31
	ldr	r1, .LCPI3_0
	ldr	r0, [r1, #4]
	.loc	1 351 57 is_stmt 0              @ batchtest/ndes/ndes.c:351:57
	and	r2, r0, #1
	.loc	1 351 33                        @ batchtest/ndes/ndes.c:351:33
	orr	r0, r0, r2, lsl #28
	.loc	1 351 67                        @ batchtest/ndes/ndes.c:351:67
	lsr	r0, r0, #1
	.loc	1 351 18                        @ batchtest/ndes/ndes.c:351:18
	str	r0, [r1, #4]
	.loc	1 352 31 is_stmt 1              @ batchtest/ndes/ndes.c:352:31
	ldr	r0, [r1]
	.loc	1 352 57 is_stmt 0              @ batchtest/ndes/ndes.c:352:57
	and	r2, r0, #1
	.loc	1 352 33                        @ batchtest/ndes/ndes.c:352:33
	orr	r0, r0, r2, lsl #28
	.loc	1 352 67                        @ batchtest/ndes/ndes.c:352:67
	lsr	r0, r0, #1
	.loc	1 352 18                        @ batchtest/ndes/ndes.c:352:18
	str	r0, [r1]
	.loc	1 353 5 is_stmt 1               @ batchtest/ndes/ndes.c:353:5
	b	.LBB3_8
.LBB3_8:                                @ %for.inc
                                        @   in Loop: Header=BB3_6 Depth=1
	.loc	1 350 27                        @ batchtest/ndes/ndes.c:350:27
	ldr	r0, [r11, #-24]                 @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [r11, #-20]                 @ 4-byte Spill
	.loc	1 350 5 is_stmt 0               @ batchtest/ndes/ndes.c:350:5
	b	.LBB3_6
.LBB3_9:                                @ %for.end
	.loc	1 0 5                           @ batchtest/ndes/ndes.c:0:5
	b	.LBB3_10
.LBB3_10:                               @ %if.end
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	mov	r0, #0
	.loc	1 356 37 is_stmt 1              @ batchtest/ndes/ndes.c:356:37
	str	r0, [r1]
	.loc	1 356 25 is_stmt 0              @ batchtest/ndes/ndes.c:356:25
	str	r0, [r1, #4]
	.loc	1 356 13                        @ batchtest/ndes/ndes.c:356:13
	str	r0, [r1, #8]
	mov	r0, #48
	mov	r1, #32
	mov	r2, #16
	str	r2, [sp, #36]                   @ 4-byte Spill
	str	r1, [r11, #-32]                 @ 4-byte Spill
	str	r0, [r11, #-28]                 @ 4-byte Spill
	.loc	1 359 9 is_stmt 1               @ batchtest/ndes/ndes.c:359:9
	b	.LBB3_11
.LBB3_11:                               @ %for.cond20
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ batchtest/ndes/ndes.c:0:0
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [r11, #-32]                 @ 4-byte Reload
	ldr	r2, [r11, #-28]                 @ 4-byte Reload
	str	r2, [sp, #24]                   @ 4-byte Spill
	str	r1, [sp, #28]                   @ 4-byte Spill
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	1 359 3                         @ batchtest/ndes/ndes.c:359:3
	cmp	r0, #0
	beq	.LBB3_14
	b	.LBB3_12
.LBB3_12:                               @ %for.body22
                                        @   in Loop: Header=BB3_11 Depth=1
	.loc	1 360 25 is_stmt 1              @ batchtest/ndes/ndes.c:360:25
	ldr	r2, [r11, #-16]                 @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	ldr	r4, [r2, #8]
	.loc	1 360 27 is_stmt 0              @ batchtest/ndes/ndes.c:360:27
	lsl	r0, r4, #1
	.loc	1 360 15                        @ batchtest/ndes/ndes.c:360:15
	str	r0, [r2, #8]
	.loc	1 362 40 is_stmt 1              @ batchtest/ndes/ndes.c:362:40
	ldr	r0, .LCPI3_1
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldrb	r2, [r0, r1]
	.loc	1 362 17 is_stmt 0              @ batchtest/ndes/ndes.c:362:17
	ldr	r1, .LCPI3_0
	str	r1, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	mov	r3, #28
	str	r3, [sp, #8]                    @ 4-byte Spill
	bl	ndes_getbit
	ldr	r2, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	ldr	lr, [r11, #-16]                 @ 4-byte Reload
	mov	r12, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	mov	r5, #255
	orr	r5, r5, #65280
	str	r5, [sp, #16]                   @ 4-byte Spill
	.loc	1 361 33 is_stmt 1              @ batchtest/ndes/ndes.c:361:33
	and	r12, r12, r5
	.loc	1 361 31 is_stmt 0              @ batchtest/ndes/ndes.c:361:31
	orr	r12, r12, r4, lsl #1
	.loc	1 361 15                        @ batchtest/ndes/ndes.c:361:15
	str	r12, [lr, #8]
	.loc	1 363 25 is_stmt 1              @ batchtest/ndes/ndes.c:363:25
	ldr	r4, [lr, #4]
	.loc	1 363 27 is_stmt 0              @ batchtest/ndes/ndes.c:363:27
	lsl	r12, r4, #1
	.loc	1 363 15                        @ batchtest/ndes/ndes.c:363:15
	str	r12, [lr, #4]
	.loc	1 365 40 is_stmt 1              @ batchtest/ndes/ndes.c:365:40
	ldrb	r2, [r0, r2]
	.loc	1 365 17 is_stmt 0              @ batchtest/ndes/ndes.c:365:17
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	bl	ndes_getbit
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	ldr	lr, [r11, #-16]                 @ 4-byte Reload
	mov	r12, r0
	.loc	1 364 33 is_stmt 1              @ batchtest/ndes/ndes.c:364:33
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	and	r12, r12, r5
	.loc	1 364 31 is_stmt 0              @ batchtest/ndes/ndes.c:364:31
	orr	r12, r12, r4, lsl #1
	.loc	1 364 15                        @ batchtest/ndes/ndes.c:364:15
	str	r12, [lr, #4]
	.loc	1 366 25 is_stmt 1              @ batchtest/ndes/ndes.c:366:25
	ldr	r12, [lr]
	str	r12, [sp, #20]                  @ 4-byte Spill
	.loc	1 366 27 is_stmt 0              @ batchtest/ndes/ndes.c:366:27
	lsl	r12, r12, #1
	.loc	1 366 15                        @ batchtest/ndes/ndes.c:366:15
	str	r12, [lr]
	.loc	1 368 40 is_stmt 1              @ batchtest/ndes/ndes.c:368:40
	ldrb	r2, [r0, r2]
	.loc	1 368 17 is_stmt 0              @ batchtest/ndes/ndes.c:368:17
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	bl	ndes_getbit
	ldr	r3, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	.loc	1 367 33 is_stmt 1              @ batchtest/ndes/ndes.c:367:33
	and	r0, r0, r3
	.loc	1 367 31 is_stmt 0              @ batchtest/ndes/ndes.c:367:31
	orr	r0, r0, r2, lsl #1
	.loc	1 367 15                        @ batchtest/ndes/ndes.c:367:15
	str	r0, [r1]
	.loc	1 369 3 is_stmt 1               @ batchtest/ndes/ndes.c:369:3
	b	.LBB3_13
.LBB3_13:                               @ %for.inc53
                                        @   in Loop: Header=BB3_11 Depth=1
	.loc	1 359 42                        @ batchtest/ndes/ndes.c:359:42
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	sub	r2, r2, #1
	.loc	1 359 47 is_stmt 0              @ batchtest/ndes/ndes.c:359:47
	sub	r1, r1, #1
	.loc	1 359 52                        @ batchtest/ndes/ndes.c:359:52
	sub	r0, r0, #1
	str	r2, [sp, #36]                   @ 4-byte Spill
	str	r1, [r11, #-32]                 @ 4-byte Spill
	str	r0, [r11, #-28]                 @ 4-byte Spill
	.loc	1 359 3                         @ batchtest/ndes/ndes.c:359:3
	b	.LBB3_11
.LBB3_14:                               @ %for.end56
	.loc	1 370 1 is_stmt 1               @ batchtest/ndes/ndes.c:370:1
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp7:
	.p2align	2
@ %bb.15:
	.loc	1 0 1 is_stmt 0                 @ batchtest/ndes/ndes.c:0:1
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
	.loc	1 189 0 is_stmt 1               @ batchtest/ndes/ndes.c:189:0
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
	sub	sp, sp, #124
	str	r0, [sp, #44]                   @ 4-byte Spill
                                        @ kill: def $r0 killed $r3
                                        @ kill: def $r0 killed $r2
                                        @ kill: def $r0 killed $r1
	ldr	r0, [r11, #8]
	str	r0, [sp, #48]                   @ 4-byte Spill
	str	r1, [r11, #-28]
	str	r2, [r11, #-24]
	str	r3, [r11, #-20]
.Ltmp8:
	.loc	1 281 17 prologue_end           @ batchtest/ndes/ndes.c:281:17
	ldr	r2, .LCPI4_0
	str	r2, [sp, #52]                   @ 4-byte Spill
	ldrb	r0, [r2]
	ldrb	r3, [r2, #1]
	ldrb	r1, [r2, #2]
	ldrb	r12, [r2, #3]
	orr	r1, r1, r12, lsl #8
	orr	r0, r0, r3, lsl #8
	orr	r0, r0, r1, lsl #16
	str	r0, [r11, #-44]
	ldrb	r1, [r2, #13]
	mov	r3, r2
	ldrb	r0, [r3, #12]!
	orr	r0, r0, r1, lsl #8
	ldrb	r1, [r3, #2]
	ldrb	r3, [r3, #3]
	orr	r1, r1, r3, lsl #8
	orr	r0, r0, r1, lsl #16
	str	r0, [r11, #-32]
	ldrb	r1, [r2, #9]
	mov	r3, r2
	ldrb	r0, [r3, #8]!
	orr	r0, r0, r1, lsl #8
	ldrb	r1, [r3, #2]
	ldrb	r3, [r3, #3]
	orr	r1, r1, r3, lsl #8
	orr	r0, r0, r1, lsl #16
	str	r0, [r11, #-36]
	ldrb	r1, [r2, #5]
	ldrb	r0, [r2, #4]!
	orr	r0, r0, r1, lsl #8
	ldrb	r1, [r2, #2]
	ldrb	r2, [r2, #3]
	orr	r1, r1, r2, lsl #8
	orr	r0, r0, r1, lsl #16
	str	r0, [r11, #-40]
	mov	r0, #0
	.loc	1 290 22                        @ batchtest/ndes/ndes.c:290:22
	str	r0, [r11, #-56]
	.loc	1 290 15 is_stmt 0              @ batchtest/ndes/ndes.c:290:15
	str	r0, [r11, #-52]
	.loc	1 290 8                         @ batchtest/ndes/ndes.c:290:8
	str	r0, [r11, #-48]
	mov	r0, #16
	.loc	1 293 11 is_stmt 1              @ batchtest/ndes/ndes.c:293:11
	str	r0, [sp, #68]
	mov	r0, #48
	mov	r1, #32
	str	r1, [sp, #56]                   @ 4-byte Spill
	str	r0, [sp, #60]                   @ 4-byte Spill
	.loc	1 293 9 is_stmt 0               @ batchtest/ndes/ndes.c:293:9
	b	.LBB4_1
.LBB4_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0                           @ batchtest/ndes/ndes.c:0:0
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #60]                   @ 4-byte Reload
	str	r1, [sp, #36]                   @ 4-byte Spill
	str	r0, [sp, #40]                   @ 4-byte Spill
	.loc	1 293 33                        @ batchtest/ndes/ndes.c:293:33
	ldr	r0, [sp, #68]
	.loc	1 293 3                         @ batchtest/ndes/ndes.c:293:3
	cmp	r0, #1
	blt	.LBB4_4
	b	.LBB4_2
.LBB4_2:                                @ %for.body
                                        @   in Loop: Header=BB4_1 Depth=1
	.loc	1 294 17 is_stmt 1              @ batchtest/ndes/ndes.c:294:17
	ldr	r3, [sp, #44]                   @ 4-byte Reload
	ldr	r4, [sp, #36]                   @ 4-byte Reload
	ldr	r5, [sp, #40]                   @ 4-byte Reload
	ldr	r12, [r11, #-48]
	.loc	1 294 19 is_stmt 0              @ batchtest/ndes/ndes.c:294:19
	lsl	r0, r12, #1
	.loc	1 294 38                        @ batchtest/ndes/ndes.c:294:38
	ldr	r1, [sp, #68]
	.loc	1 294 33                        @ batchtest/ndes/ndes.c:294:33
	ldr	lr, .LCPI4_4
	ldr	r1, [lr, r1, lsl #2]
	.loc	1 294 30                        @ batchtest/ndes/ndes.c:294:30
	ldr	r2, .LCPI4_2
	ldr	r6, [r2, r1, lsl #2]
	mov	r1, #1
	.loc	1 294 26                        @ batchtest/ndes/ndes.c:294:26
	orr	r12, r1, r12, lsl #1
	tst	r6, r3
	movne	r0, r12
	.loc	1 294 10                        @ batchtest/ndes/ndes.c:294:10
	str	r0, [r11, #-48]
	.loc	1 295 17 is_stmt 1              @ batchtest/ndes/ndes.c:295:17
	ldr	r12, [r11, #-52]
	.loc	1 295 19 is_stmt 0              @ batchtest/ndes/ndes.c:295:19
	lsl	r0, r12, #1
	.loc	1 295 33                        @ batchtest/ndes/ndes.c:295:33
	ldr	r5, [lr, r5, lsl #2]
	.loc	1 295 30                        @ batchtest/ndes/ndes.c:295:30
	ldr	r5, [r2, r5, lsl #2]
	.loc	1 295 26                        @ batchtest/ndes/ndes.c:295:26
	orr	r12, r1, r12, lsl #1
	tst	r5, r3
	movne	r0, r12
	.loc	1 295 10                        @ batchtest/ndes/ndes.c:295:10
	str	r0, [r11, #-52]
	.loc	1 296 17 is_stmt 1              @ batchtest/ndes/ndes.c:296:17
	ldr	r12, [r11, #-56]
	.loc	1 296 19 is_stmt 0              @ batchtest/ndes/ndes.c:296:19
	lsl	r0, r12, #1
	.loc	1 296 33                        @ batchtest/ndes/ndes.c:296:33
	ldr	lr, [lr, r4, lsl #2]
	.loc	1 296 30                        @ batchtest/ndes/ndes.c:296:30
	ldr	r2, [r2, lr, lsl #2]
	.loc	1 296 26                        @ batchtest/ndes/ndes.c:296:26
	orr	r1, r1, r12, lsl #1
	tst	r2, r3
	movne	r0, r1
	.loc	1 296 10                        @ batchtest/ndes/ndes.c:296:10
	str	r0, [r11, #-56]
	.loc	1 297 3 is_stmt 1               @ batchtest/ndes/ndes.c:297:3
	b	.LBB4_3
.LBB4_3:                                @ %for.inc
                                        @   in Loop: Header=BB4_1 Depth=1
	.loc	1 293 42                        @ batchtest/ndes/ndes.c:293:42
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	ldr	r2, [sp, #68]
	sub	r2, r2, #1
	str	r2, [sp, #68]
	.loc	1 293 47 is_stmt 0              @ batchtest/ndes/ndes.c:293:47
	sub	r1, r1, #1
	.loc	1 293 52                        @ batchtest/ndes/ndes.c:293:52
	sub	r0, r0, #1
	str	r1, [sp, #56]                   @ 4-byte Spill
	str	r0, [sp, #60]                   @ 4-byte Spill
	.loc	1 293 3                         @ batchtest/ndes/ndes.c:293:3
	b	.LBB4_1
.LBB4_4:                                @ %for.end
	.loc	1 298 13 is_stmt 1              @ batchtest/ndes/ndes.c:298:13
	ldr	r1, [r11, #-20]
	.loc	1 298 8 is_stmt 0               @ batchtest/ndes/ndes.c:298:8
	ldr	r0, [r11, #-48]
	eor	r0, r0, r1
	str	r0, [r11, #-48]
	.loc	1 299 13 is_stmt 1              @ batchtest/ndes/ndes.c:299:13
	ldr	r1, [r11, #-24]
	.loc	1 299 8 is_stmt 0               @ batchtest/ndes/ndes.c:299:8
	ldr	r0, [r11, #-52]
	eor	r0, r0, r1
	str	r0, [r11, #-52]
	.loc	1 300 13 is_stmt 1              @ batchtest/ndes/ndes.c:300:13
	ldr	r1, [r11, #-28]
	.loc	1 300 8 is_stmt 0               @ batchtest/ndes/ndes.c:300:8
	ldr	r0, [r11, #-56]
	eor	r0, r0, r1
	str	r0, [r11, #-56]
	.loc	1 302 35 is_stmt 1              @ batchtest/ndes/ndes.c:302:35
	ldr	r0, [r11, #-56]
	.loc	1 301 35                        @ batchtest/ndes/ndes.c:301:35
	ldr	r2, [r11, #-52]
	.loc	1 301 68 is_stmt 0              @ batchtest/ndes/ndes.c:301:68
	ldr	r1, [r11, #-48]
	.loc	1 301 45                        @ batchtest/ndes/ndes.c:301:45
	add	r1, r1, r2, lsl #16
	.loc	1 302 37 is_stmt 1              @ batchtest/ndes/ndes.c:302:37
	lsl	r0, r0, #8
	.loc	1 302 44 is_stmt 0              @ batchtest/ndes/ndes.c:302:44
	add	r2, r0, r2, lsr #8
	mov	r0, #1
	.loc	1 305 11 is_stmt 1              @ batchtest/ndes/ndes.c:305:11
	str	r0, [sp, #68]
	mov	r0, #5
	str	r2, [sp, #24]                   @ 4-byte Spill
	str	r1, [sp, #28]                   @ 4-byte Spill
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	1 305 9 is_stmt 0               @ batchtest/ndes/ndes.c:305:9
	b	.LBB4_5
.LBB4_5:                                @ %for.cond40
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0                           @ batchtest/ndes/ndes.c:0:0
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	str	r2, [sp, #12]                   @ 4-byte Spill
	str	r1, [sp, #16]                   @ 4-byte Spill
	str	r0, [sp, #20]                   @ 4-byte Spill
	.loc	1 305 23                        @ batchtest/ndes/ndes.c:305:23
	ldr	r0, [sp, #68]
	.loc	1 305 3                         @ batchtest/ndes/ndes.c:305:3
	cmp	r0, #4
	bgt	.LBB4_8
	b	.LBB4_6
.LBB4_6:                                @ %for.body42
                                        @   in Loop: Header=BB4_5 Depth=1
	.loc	1 306 16 is_stmt 1              @ batchtest/ndes/ndes.c:306:16
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	and	r3, r1, #63
	.loc	1 306 10 is_stmt 0              @ batchtest/ndes/ndes.c:306:10
	ldr	r12, [sp, #68]
	sub	r1, r11, #65
	.loc	1 306 14                        @ batchtest/ndes/ndes.c:306:14
	strb	r3, [r1, r12]
	.loc	1 307 16 is_stmt 1              @ batchtest/ndes/ndes.c:307:16
	and	r0, r0, #63
	.loc	1 307 14 is_stmt 0              @ batchtest/ndes/ndes.c:307:14
	strb	r0, [r1, r2]
	.loc	1 310 3 is_stmt 1               @ batchtest/ndes/ndes.c:310:3
	b	.LBB4_7
.LBB4_7:                                @ %for.inc50
                                        @   in Loop: Header=BB4_5 Depth=1
	.loc	1 309 12                        @ batchtest/ndes/ndes.c:309:12
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	lsr	r2, r2, #6
	.loc	1 308 12                        @ batchtest/ndes/ndes.c:308:12
	lsr	r1, r1, #6
	.loc	1 305 32                        @ batchtest/ndes/ndes.c:305:32
	ldr	r3, [sp, #68]
	add	r3, r3, #1
	str	r3, [sp, #68]
	.loc	1 305 37 is_stmt 0              @ batchtest/ndes/ndes.c:305:37
	add	r0, r0, #1
	str	r2, [sp, #24]                   @ 4-byte Spill
	str	r1, [sp, #28]                   @ 4-byte Spill
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	1 305 3                         @ batchtest/ndes/ndes.c:305:3
	b	.LBB4_5
.LBB4_8:                                @ %for.end52
	.loc	1 0 3                           @ batchtest/ndes/ndes.c:0:3
	mov	r0, #8
	.loc	1 315 12 is_stmt 1              @ batchtest/ndes/ndes.c:315:12
	str	r0, [sp, #64]
	mov	r0, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 315 9 is_stmt 0               @ batchtest/ndes/ndes.c:315:9
	b	.LBB4_9
.LBB4_9:                                @ %for.cond53
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0                           @ batchtest/ndes/ndes.c:0:0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 315 17                        @ batchtest/ndes/ndes.c:315:17
	ldr	r0, [sp, #64]
	.loc	1 315 3                         @ batchtest/ndes/ndes.c:315:3
	cmp	r0, #1
	blt	.LBB4_12
	b	.LBB4_10
.LBB4_10:                               @ %for.body56
                                        @   in Loop: Header=BB4_9 Depth=1
	.loc	1 316 14 is_stmt 1              @ batchtest/ndes/ndes.c:316:14
	ldr	r1, [sp, #64]
	sub	r0, r11, #65
	.loc	1 316 9 is_stmt 0               @ batchtest/ndes/ndes.c:316:9
	ldrb	r0, [r0, r1]
	.loc	1 316 7                         @ batchtest/ndes/ndes.c:316:7
	str	r0, [sp, #68]
	.loc	1 317 16 is_stmt 1              @ batchtest/ndes/ndes.c:317:16
	ldr	r0, [sp, #68]
	.loc	1 317 26 is_stmt 0              @ batchtest/ndes/ndes.c:317:26
	and	r2, r0, #1
	.loc	1 317 39                        @ batchtest/ndes/ndes.c:317:39
	ldr	r0, [sp, #68]
	mov	r1, #1
	.loc	1 317 50                        @ batchtest/ndes/ndes.c:317:50
	and	r0, r1, r0, lsr #5
	.loc	1 317 33                        @ batchtest/ndes/ndes.c:317:33
	orr	r2, r0, r2, lsl #1
	.loc	1 318 16 is_stmt 1              @ batchtest/ndes/ndes.c:318:16
	ldr	r0, [sp, #68]
	.loc	1 318 26 is_stmt 0              @ batchtest/ndes/ndes.c:318:26
	and	r3, r0, #2
	.loc	1 318 37                        @ batchtest/ndes/ndes.c:318:37
	ldr	r0, [sp, #68]
	.loc	1 318 39                        @ batchtest/ndes/ndes.c:318:39
	and	r0, r0, #4
	.loc	1 318 33                        @ batchtest/ndes/ndes.c:318:33
	orr	r0, r0, r3, lsl #2
	.loc	1 319 18 is_stmt 1              @ batchtest/ndes/ndes.c:319:18
	ldr	r12, [sp, #68]
	mov	r3, #2
	.loc	1 319 28 is_stmt 0              @ batchtest/ndes/ndes.c:319:28
	and	r3, r3, r12, lsr #2
	.loc	1 319 12                        @ batchtest/ndes/ndes.c:319:12
	orr	r0, r0, r3
	.loc	1 319 41                        @ batchtest/ndes/ndes.c:319:41
	ldr	r3, [sp, #68]
	.loc	1 319 52                        @ batchtest/ndes/ndes.c:319:52
	and	r1, r1, r3, lsr #4
	.loc	1 319 35                        @ batchtest/ndes/ndes.c:319:35
	orr	r0, r0, r1
	.loc	1 320 31 is_stmt 1              @ batchtest/ndes/ndes.c:320:31
	ldr	r1, [sp, #64]
	.loc	1 320 11 is_stmt 0              @ batchtest/ndes/ndes.c:320:11
	add	r3, r0, r0, lsl #3
	ldr	r0, .LCPI4_3
	add	r0, r0, r3, lsl #4
	add	r2, r2, r2, lsl #3
	add	r0, r0, r2, lsl #2
	ldr	r1, [r0, r1, lsl #2]
	sub	r0, r11, #44
	.loc	1 321 28 is_stmt 1              @ batchtest/ndes/ndes.c:321:28
	ldrb	r0, [r0, r1]
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 322 3                         @ batchtest/ndes/ndes.c:322:3
	b	.LBB4_11
.LBB4_11:                               @ %for.inc81
                                        @   in Loop: Header=BB4_9 Depth=1
	.loc	1 321 28                        @ batchtest/ndes/ndes.c:321:28
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp]                        @ 4-byte Reload
	and	r0, r0, #255
	.loc	1 321 26 is_stmt 0              @ batchtest/ndes/ndes.c:321:26
	orr	r0, r0, r1, lsl #4
	.loc	1 315 28 is_stmt 1              @ batchtest/ndes/ndes.c:315:28
	ldr	r1, [sp, #64]
	sub	r1, r1, #1
	str	r1, [sp, #64]
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 315 3 is_stmt 0               @ batchtest/ndes/ndes.c:315:3
	b	.LBB4_9
.LBB4_12:                               @ %for.end83
	.loc	1 0 3                           @ batchtest/ndes/ndes.c:0:3
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	mov	r0, #0
	.loc	1 324 9 is_stmt 1               @ batchtest/ndes/ndes.c:324:9
	str	r0, [r1]
	mov	r0, #32
	.loc	1 328 11                        @ batchtest/ndes/ndes.c:328:11
	str	r0, [sp, #68]
	.loc	1 328 9 is_stmt 0               @ batchtest/ndes/ndes.c:328:9
	b	.LBB4_13
.LBB4_13:                               @ %for.cond84
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 328 17                        @ batchtest/ndes/ndes.c:328:17
	ldr	r0, [sp, #68]
	.loc	1 328 3                         @ batchtest/ndes/ndes.c:328:3
	cmp	r0, #1
	blt	.LBB4_16
	b	.LBB4_14
.LBB4_14:                               @ %for.body87
                                        @   in Loop: Header=BB4_13 Depth=1
	.loc	1 329 15 is_stmt 1              @ batchtest/ndes/ndes.c:329:15
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	ldr	r0, [r1]
	.loc	1 329 21 is_stmt 0              @ batchtest/ndes/ndes.c:329:21
	lsl	r0, r0, #1
	.loc	1 329 11                        @ batchtest/ndes/ndes.c:329:11
	str	r0, [r1]
	.loc	1 329 5                         @ batchtest/ndes/ndes.c:329:5
	b	.LBB4_15
.LBB4_15:                               @ %for.inc89
                                        @   in Loop: Header=BB4_13 Depth=1
	.loc	1 328 26 is_stmt 1              @ batchtest/ndes/ndes.c:328:26
	ldr	r0, [sp, #68]
	sub	r0, r0, #1
	str	r0, [sp, #68]
	.loc	1 328 3 is_stmt 0               @ batchtest/ndes/ndes.c:328:3
	b	.LBB4_13
.LBB4_16:                               @ %for.end91
	.loc	1 330 22 is_stmt 1              @ batchtest/ndes/ndes.c:330:22
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	ldr	r12, [sp, #4]                   @ 4-byte Reload
	ldr	r2, [sp, #68]
	.loc	1 330 17 is_stmt 0              @ batchtest/ndes/ndes.c:330:17
	ldr	r0, .LCPI4_1
	ldr	r2, [r0, r2, lsl #2]
	.loc	1 330 14                        @ batchtest/ndes/ndes.c:330:14
	ldr	r0, .LCPI4_2
	ldr	r3, [r0, r2, lsl #2]
	.loc	1 330 9                         @ batchtest/ndes/ndes.c:330:9
	ldr	r0, [r1]
	orr	r2, r0, #1
	tst	r3, r12
	movne	r0, r2
	str	r0, [r1]
	.loc	1 331 1 is_stmt 1               @ batchtest/ndes/ndes.c:331:1
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, lr}
	bx	lr
.Ltmp9:
	.p2align	2
@ %bb.17:
	.loc	1 0 1 is_stmt 0                 @ batchtest/ndes/ndes.c:0:1
.LCPI4_0:
	.long	.L__const.ndes_cyfun.ibin
.LCPI4_1:
	.long	ndes_cyfun.ipp
.LCPI4_2:
	.long	ndes_bit
.LCPI4_3:
	.long	ndes_cyfun.is
.LCPI4_4:
	.long	ndes_cyfun.iet
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
	.loc	1 373 0 is_stmt 1               @ batchtest/ndes/ndes.c:373:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	1 374 21 prologue_end           @ batchtest/ndes/ndes.c:374:21
	ldr	r0, .LCPI5_0
	.loc	1 374 34 is_stmt 0              @ batchtest/ndes/ndes.c:374:34
	ldr	r1, [r0]
	.loc	1 374 21                        @ batchtest/ndes/ndes.c:374:21
	ldr	r0, [r0, #4]
	.loc	1 374 23                        @ batchtest/ndes/ndes.c:374:23
	add	r0, r0, r1
	mov	r1, #2048
	orr	r1, r1, #8388608
	.loc	1 374 54                        @ batchtest/ndes/ndes.c:374:54
	subs	r0, r0, r1
	movne	r0, #1
	.loc	1 374 3                         @ batchtest/ndes/ndes.c:374:3
	bx	lr
.Ltmp10:
	.p2align	2
@ %bb.1:
	.loc	1 0 3                           @ batchtest/ndes/ndes.c:0:3
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
	.loc	1 378 0 is_stmt 1               @ batchtest/ndes/ndes.c:378:0
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
	sub	sp, sp, #16
.Ltmp11:
	.loc	1 379 47 prologue_end           @ batchtest/ndes/ndes.c:379:47
	ldr	r0, .LCPI6_0
	ldr	r12, [r0]
	.loc	1 379 3 is_stmt 0               @ batchtest/ndes/ndes.c:379:3
	ldr	r1, .LCPI6_1
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	ldr	r3, .LCPI6_2
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	ldr	r4, .LCPI6_3
	mov	lr, sp
	str	r4, [lr, #8]
	str	r12, [lr, #4]
	ldr	r12, .LCPI6_4
	str	r12, [lr]
	bl	ndes_des
	.loc	1 380 1 is_stmt 1               @ batchtest/ndes/ndes.c:380:1
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp12:
	.p2align	2
@ %bb.1:
	.loc	1 0 1 is_stmt 0                 @ batchtest/ndes/ndes.c:0:1
.LCPI6_0:
	.long	ndes_isw
.LCPI6_1:
	.long	ndes_inp
.LCPI6_2:
	.long	ndes_key
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
	.loc	1 385 0 is_stmt 1               @ batchtest/ndes/ndes.c:385:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp13:
	.loc	1 386 3 prologue_end            @ batchtest/ndes/ndes.c:386:3
	bl	ndes_init
	.loc	1 387 3                         @ batchtest/ndes/ndes.c:387:3
	bl	ndes_main
	.loc	1 389 12                        @ batchtest/ndes/ndes.c:389:12
	bl	ndes_return
	.loc	1 389 3 is_stmt 0               @ batchtest/ndes/ndes.c:389:3
	pop	{r11, lr}
	bx	lr
.Ltmp14:
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
.Ltmp15:
	.loc	2 25 11 prologue_end            @ ../absvdi2.c:25:11
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	2 25 9 is_stmt 0                @ ../absvdi2.c:25:9
	cmp	r0, #0
	bne	.LBB8_2
	b	.LBB8_1
.LBB8_1:                                @ %if.then
	.loc	2 26 9 is_stmt 1                @ ../absvdi2.c:26:9
	ldr	r0, .LCPI8_0
	ldr	r2, .LCPI8_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.LBB8_2:                                @ %if.end
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
.Ltmp16:
	.p2align	2
@ %bb.3:
	.loc	2 0 5                           @ ../absvdi2.c:0:5
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
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp17:
	.loc	3 25 9 prologue_end             @ ../absvsi2.c:25:9
	cmp	r0, #-2147483648
	bne	.LBB10_2
	b	.LBB10_1
.LBB10_1:                               @ %if.then
	.loc	3 26 9                          @ ../absvsi2.c:26:9
	ldr	r0, .LCPI10_0
	ldr	r2, .LCPI10_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.LBB10_2:                               @ %if.end
	.loc	3 28 20                         @ ../absvsi2.c:28:20
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
	.loc	3 28 5 is_stmt 0                @ ../absvsi2.c:28:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp18:
	.p2align	2
@ %bb.5:
	.loc	3 0 5                           @ ../absvsi2.c:0:5
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
	sub	sp, sp, #16
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
	mov	r12, r1
	str	r12, [sp]                       @ 4-byte Spill
	mov	r12, r0
	str	r12, [sp, #4]                   @ 4-byte Spill
.Ltmp19:
	.loc	4 24 27 prologue_end            @ ../addvdi3.c:24:27
	adds	r0, r0, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	adc	r0, r1, r3
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	4 25 9                          @ ../addvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB11_4
	b	.LBB11_1
.LBB11_1:                               @ %if.then
	.loc	4 27 15                         @ ../addvdi3.c:27:15
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	4 27 13 is_stmt 0               @ ../addvdi3.c:27:13
	bge	.LBB11_3
	b	.LBB11_2
.LBB11_2:                               @ %if.then2
	.loc	4 28 13 is_stmt 1               @ ../addvdi3.c:28:13
	ldr	r0, .LCPI11_0
	ldr	r2, .LCPI11_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB11_3:                               @ %if.end
	.loc	4 29 5                          @ ../addvdi3.c:29:5
	b	.LBB11_7
.LBB11_4:                               @ %if.else
	.loc	4 32 15                         @ ../addvdi3.c:32:15
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	4 32 13 is_stmt 0               @ ../addvdi3.c:32:13
	blt	.LBB11_6
	b	.LBB11_5
.LBB11_5:                               @ %if.then4
	.loc	4 33 13 is_stmt 1               @ ../addvdi3.c:33:13
	ldr	r0, .LCPI11_0
	ldr	r2, .LCPI11_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB11_6:                               @ %if.end5
	.loc	4 0 13 is_stmt 0                @ ../addvdi3.c:0:13
	b	.LBB11_7
.LBB11_7:                               @ %if.end6
	.loc	4 35 5 is_stmt 1                @ ../addvdi3.c:35:5
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp20:
	.p2align	2
@ %bb.8:
	.loc	4 0 5 is_stmt 0                 @ ../addvdi3.c:0:5
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
	sub	sp, sp, #8
	str	r0, [sp]                        @ 4-byte Spill
.Ltmp21:
	.loc	5 24 27 prologue_end            @ ../addvsi3.c:24:27
	add	r0, r0, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	5 25 9                          @ ../addvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB12_4
	b	.LBB12_1
.LBB12_1:                               @ %if.then
	.loc	5 27 13                         @ ../addvsi3.c:27:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	bge	.LBB12_3
	b	.LBB12_2
.LBB12_2:                               @ %if.then2
	.loc	5 28 13                         @ ../addvsi3.c:28:13
	ldr	r0, .LCPI12_0
	ldr	r2, .LCPI12_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB12_3:                               @ %if.end
	.loc	5 29 5                          @ ../addvsi3.c:29:5
	b	.LBB12_7
.LBB12_4:                               @ %if.else
	.loc	5 32 13                         @ ../addvsi3.c:32:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	blt	.LBB12_6
	b	.LBB12_5
.LBB12_5:                               @ %if.then4
	.loc	5 33 13                         @ ../addvsi3.c:33:13
	ldr	r0, .LCPI12_0
	ldr	r2, .LCPI12_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB12_6:                               @ %if.end5
	.loc	5 0 13 is_stmt 0                @ ../addvsi3.c:0:13
	b	.LBB12_7
.LBB12_7:                               @ %if.end6
	.loc	5 35 5 is_stmt 1                @ ../addvsi3.c:35:5
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp22:
	.p2align	2
@ %bb.8:
	.loc	5 0 5 is_stmt 0                 @ ../addvsi3.c:0:5
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
	sub	sp, sp, #40
	.cfi_def_cfa_offset 40
	str	r2, [sp, #12]                   @ 4-byte Spill
	mov	r3, r1
	str	r3, [sp, #16]                   @ 4-byte Spill
	mov	r3, r0
	str	r3, [sp, #20]                   @ 4-byte Spill
.Ltmp23:
	.loc	6 29 15 prologue_end            @ ../ashldi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	6 30 9                          @ ../ashldi3.c:30:9
	tst	r2, #32
	beq	.LBB13_2
	b	.LBB13_1
.LBB13_1:                               @ %if.then
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
	b	.LBB13_5
.LBB13_2:                               @ %if.else
	.loc	6 37 13                         @ ../ashldi3.c:37:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB13_4
	b	.LBB13_3
.LBB13_3:                               @ %if.then4
	.loc	6 0 13 is_stmt 0                @ ../ashldi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	6 38 13 is_stmt 1               @ ../ashldi3.c:38:13
	b	.LBB13_6
.LBB13_4:                               @ %if.end
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
	b	.LBB13_5
.LBB13_5:                               @ %if.end18
	.loc	6 42 19 is_stmt 1               @ ../ashldi3.c:42:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	6 42 5 is_stmt 0                @ ../ashldi3.c:42:5
	b	.LBB13_6
.LBB13_6:                               @ %return
	.loc	6 0 0                           @ ../ashldi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	6 43 1 is_stmt 1                @ ../ashldi3.c:43:1
	add	sp, sp, #40
	bx	lr
.Ltmp24:
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
	sub	sp, sp, #40
	.cfi_def_cfa_offset 40
	str	r2, [sp, #12]                   @ 4-byte Spill
	mov	r3, r1
	str	r3, [sp, #16]                   @ 4-byte Spill
	mov	r3, r0
	str	r3, [sp, #20]                   @ 4-byte Spill
.Ltmp25:
	.loc	7 29 15 prologue_end            @ ../ashrdi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	7 30 9                          @ ../ashrdi3.c:30:9
	tst	r2, #32
	beq	.LBB14_2
	b	.LBB14_1
.LBB14_1:                               @ %if.then
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
	b	.LBB14_5
.LBB14_2:                               @ %if.else
	.loc	7 38 13                         @ ../ashrdi3.c:38:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB14_4
	b	.LBB14_3
.LBB14_3:                               @ %if.then7
	.loc	7 0 13 is_stmt 0                @ ../ashrdi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	7 39 13 is_stmt 1               @ ../ashrdi3.c:39:13
	b	.LBB14_6
.LBB14_4:                               @ %if.end
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
	b	.LBB14_5
.LBB14_5:                               @ %if.end21
	.loc	7 43 19 is_stmt 1               @ ../ashrdi3.c:43:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	7 43 5 is_stmt 0                @ ../ashrdi3.c:43:5
	b	.LBB14_6
.LBB14_6:                               @ %return
	.loc	7 0 0                           @ ../ashrdi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	7 44 1 is_stmt 1                @ ../ashrdi3.c:44:1
	add	sp, sp, #40
	bx	lr
.Ltmp26:
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
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp27:
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
	.loc	8 27 59                         @ ../clzdi2.c:27:59
	add	r1, r1, r3, lsr #24
	cmp	r2, #0
	moveq	r0, r1
	.loc	8 27 5                          @ ../clzdi2.c:27:5
	add	sp, sp, #8
	bx	lr
.Ltmp28:
	.p2align	2
@ %bb.1:
	.loc	8 0 5                           @ ../clzdi2.c:0:5
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
.Ltmp29:
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
.Ltmp30:
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
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp31:
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
	bge	.LBB17_2
	b	.LBB17_1
.LBB17_1:                               @ %if.then
	.loc	10 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	10 30 9 is_stmt 1               @ ../cmpdi2.c:30:9
	b	.LBB17_9
.LBB17_2:                               @ %if.end
	.loc	10 31 13                        @ ../cmpdi2.c:31:13
	ldr	r0, [sp, #20]
	.loc	10 31 24 is_stmt 0              @ ../cmpdi2.c:31:24
	ldr	r1, [sp, #12]
	.loc	10 31 9                         @ ../cmpdi2.c:31:9
	cmp	r0, r1
	ble	.LBB17_4
	b	.LBB17_3
.LBB17_3:                               @ %if.then9
	.loc	10 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	10 32 9 is_stmt 1               @ ../cmpdi2.c:32:9
	b	.LBB17_9
.LBB17_4:                               @ %if.end10
	.loc	10 33 13                        @ ../cmpdi2.c:33:13
	ldr	r0, [sp, #16]
	.loc	10 33 23 is_stmt 0              @ ../cmpdi2.c:33:23
	ldr	r1, [sp, #8]
	.loc	10 33 9                         @ ../cmpdi2.c:33:9
	cmp	r0, r1
	bhs	.LBB17_6
	b	.LBB17_5
.LBB17_5:                               @ %if.then15
	.loc	10 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	10 34 9 is_stmt 1               @ ../cmpdi2.c:34:9
	b	.LBB17_9
.LBB17_6:                               @ %if.end16
	.loc	10 35 13                        @ ../cmpdi2.c:35:13
	ldr	r0, [sp, #16]
	.loc	10 35 23 is_stmt 0              @ ../cmpdi2.c:35:23
	ldr	r1, [sp, #8]
	.loc	10 35 9                         @ ../cmpdi2.c:35:9
	cmp	r0, r1
	bls	.LBB17_8
	b	.LBB17_7
.LBB17_7:                               @ %if.then22
	.loc	10 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	10 36 9 is_stmt 1               @ ../cmpdi2.c:36:9
	b	.LBB17_9
.LBB17_8:                               @ %if.end23
	.loc	10 0 9 is_stmt 0                @ ../cmpdi2.c:0:9
	mov	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	10 37 5 is_stmt 1               @ ../cmpdi2.c:37:5
	b	.LBB17_9
.LBB17_9:                               @ %return
	.loc	10 0 0 is_stmt 0                @ ../cmpdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	10 38 1 is_stmt 1               @ ../cmpdi2.c:38:1
	add	sp, sp, #24
	bx	lr
.Ltmp32:
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
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp33:
	.loc	10 48 9 prologue_end            @ ../cmpdi2.c:48:9
	bl	__cmpdi2
	.loc	10 48 24 is_stmt 0              @ ../cmpdi2.c:48:24
	sub	r0, r0, #1
	.loc	10 48 2                         @ ../cmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp34:
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
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp35:
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
	.loc	11 27 59                        @ ../ctzdi2.c:27:59
	add	r1, r1, r3, lsr #24
	cmp	r2, #0
	moveq	r0, r1
	.loc	11 27 5                         @ ../ctzdi2.c:27:5
	add	sp, sp, #8
	bx	lr
.Ltmp36:
	.p2align	2
@ %bb.1:
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
	mov	r2, r0
	mov	r0, #255
	orr	r0, r0, #65280
.Ltmp37:
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
.Ltmp38:
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
.Ltmp39:
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
.Ltmp40:
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
.Ltmp41:
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
	bne	.LBB22_8
	b	.LBB22_1
.LBB22_1:                               @ %if.then
	.loc	14 38 17 is_stmt 1              @ ../udivmoddi4.c:38:17
	ldr	r0, [r11, #-12]
	.loc	14 38 13 is_stmt 0              @ ../udivmoddi4.c:38:13
	cmp	r0, #0
	bne	.LBB22_5
	b	.LBB22_2
.LBB22_2:                               @ %if.then5
	.loc	14 44 17 is_stmt 1              @ ../udivmoddi4.c:44:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB22_4
	b	.LBB22_3
.LBB22_3:                               @ %if.then6
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
	b	.LBB22_4
.LBB22_4:                               @ %if.end
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
	b	.LBB22_56
.LBB22_5:                               @ %if.end16
	.loc	14 52 13 is_stmt 1              @ ../udivmoddi4.c:52:13
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB22_7
	b	.LBB22_6
.LBB22_6:                               @ %if.then18
	.loc	14 53 24                        @ ../udivmoddi4.c:53:24
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	mov	r2, #0
	.loc	14 53 18 is_stmt 0              @ ../udivmoddi4.c:53:18
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	14 53 13                        @ ../udivmoddi4.c:53:13
	b	.LBB22_7
.LBB22_7:                               @ %if.end22
	.loc	14 0 13                         @ ../udivmoddi4.c:0:13
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 54 9 is_stmt 1               @ ../udivmoddi4.c:54:9
	b	.LBB22_56
.LBB22_8:                               @ %if.end23
	.loc	14 57 13                        @ ../udivmoddi4.c:57:13
	ldr	r0, [r11, #-16]
	.loc	14 57 9 is_stmt 0               @ ../udivmoddi4.c:57:9
	cmp	r0, #0
	bne	.LBB22_26
	b	.LBB22_9
.LBB22_9:                               @ %if.then28
	.loc	14 59 17 is_stmt 1              @ ../udivmoddi4.c:59:17
	ldr	r0, [r11, #-12]
	.loc	14 59 13 is_stmt 0              @ ../udivmoddi4.c:59:13
	cmp	r0, #0
	bne	.LBB22_13
	b	.LBB22_10
.LBB22_10:                              @ %if.then33
	.loc	14 65 17 is_stmt 1              @ ../udivmoddi4.c:65:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB22_12
	b	.LBB22_11
.LBB22_11:                              @ %if.then35
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
	b	.LBB22_12
.LBB22_12:                              @ %if.end42
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
	b	.LBB22_56
.LBB22_13:                              @ %if.end49
	.loc	14 70 17 is_stmt 1              @ ../udivmoddi4.c:70:17
	ldr	r0, [r11, #-8]
	.loc	14 70 13 is_stmt 0              @ ../udivmoddi4.c:70:13
	cmp	r0, #0
	bne	.LBB22_17
	b	.LBB22_14
.LBB22_14:                              @ %if.then54
	.loc	14 76 17 is_stmt 1              @ ../udivmoddi4.c:76:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB22_16
	b	.LBB22_15
.LBB22_15:                              @ %if.then56
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
	b	.LBB22_16
.LBB22_16:                              @ %if.end67
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
	b	.LBB22_56
.LBB22_17:                              @ %if.end74
	.loc	14 88 18 is_stmt 1              @ ../udivmoddi4.c:88:18
	ldr	r0, [r11, #-12]
	.loc	14 88 35 is_stmt 0              @ ../udivmoddi4.c:88:35
	sub	r1, r0, #1
	.loc	14 88 13                        @ ../udivmoddi4.c:88:13
	tst	r0, r1
	bne	.LBB22_21
	b	.LBB22_18
.LBB22_18:                              @ %if.then81
	.loc	14 90 17 is_stmt 1              @ ../udivmoddi4.c:90:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB22_20
	b	.LBB22_19
.LBB22_19:                              @ %if.then83
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
	b	.LBB22_20
.LBB22_20:                              @ %if.end97
	.loc	14 96 24                        @ ../udivmoddi4.c:96:24
	ldr	r0, [r11, #-4]
	.loc	14 96 50 is_stmt 0              @ ../udivmoddi4.c:96:50
	ldr	r2, [r11, #-12]
	.loc	14 96 32                        @ ../udivmoddi4.c:96:32
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
	.loc	14 96 29                        @ ../udivmoddi4.c:96:29
	lsr	r1, r0, r1
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 96 13                        @ ../udivmoddi4.c:96:13
	b	.LBB22_56
.LBB22_21:                              @ %if.end103
	.loc	14 102 32 is_stmt 1             @ ../udivmoddi4.c:102:32
	ldr	r0, [r11, #-12]
	.loc	14 102 14 is_stmt 0             @ ../udivmoddi4.c:102:14
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
	blo	.LBB22_25
	b	.LBB22_22
.LBB22_22:                              @ %if.then111
	.loc	14 106 16                       @ ../udivmoddi4.c:106:16
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB22_24
	b	.LBB22_23
.LBB22_23:                              @ %if.then113
	.loc	14 107 26                       @ ../udivmoddi4.c:107:26
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldr	r2, [r11, #-4]
	.loc	14 107 22 is_stmt 0             @ ../udivmoddi4.c:107:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	14 107 17                       @ ../udivmoddi4.c:107:17
	b	.LBB22_24
.LBB22_24:                              @ %if.end115
	.loc	14 0 17                         @ ../udivmoddi4.c:0:17
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 108 13 is_stmt 1             @ ../udivmoddi4.c:108:13
	b	.LBB22_56
.LBB22_25:                              @ %if.end116
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
	b	.LBB22_49
.LBB22_26:                              @ %if.else
	.loc	14 121 17                       @ ../udivmoddi4.c:121:17
	ldr	r0, [r11, #-12]
	.loc	14 121 13 is_stmt 0             @ ../udivmoddi4.c:121:13
	cmp	r0, #0
	bne	.LBB22_40
	b	.LBB22_27
.LBB22_27:                              @ %if.then142
	.loc	14 127 22 is_stmt 1             @ ../udivmoddi4.c:127:22
	ldr	r0, [r11, #-16]
	.loc	14 127 17 is_stmt 0             @ ../udivmoddi4.c:127:17
	sub	r1, r0, #1
	tst	r0, r1
	bne	.LBB22_33
	b	.LBB22_28
.LBB22_28:                              @ %if.then151
	.loc	14 129 21 is_stmt 1             @ ../udivmoddi4.c:129:21
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB22_30
	b	.LBB22_29
.LBB22_29:                              @ %if.then153
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
	b	.LBB22_30
.LBB22_30:                              @ %if.end161
	.loc	14 131 25 is_stmt 1             @ ../udivmoddi4.c:131:25
	ldr	r0, [r11, #-16]
	.loc	14 131 21 is_stmt 0             @ ../udivmoddi4.c:131:21
	cmp	r0, #1
	bne	.LBB22_32
	b	.LBB22_31
.LBB22_31:                              @ %if.then166
	.loc	14 132 30 is_stmt 1             @ ../udivmoddi4.c:132:30
	ldr	r1, [r11, #-8]
	ldr	r0, [r11, #-4]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 132 21 is_stmt 0             @ ../udivmoddi4.c:132:21
	b	.LBB22_56
.LBB22_32:                              @ %if.end168
	.loc	14 133 40 is_stmt 1             @ ../udivmoddi4.c:133:40
	ldr	r1, [r11, #-16]
	.loc	14 133 22 is_stmt 0             @ ../udivmoddi4.c:133:22
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
	b	.LBB22_56
.LBB22_33:                              @ %if.end187
	.loc	14 142 55 is_stmt 1             @ ../udivmoddi4.c:142:55
	ldr	r0, [r11, #-16]
	.loc	14 142 37 is_stmt 0             @ ../udivmoddi4.c:142:37
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
	bne	.LBB22_35
	b	.LBB22_34
.LBB22_34:                              @ %if.then195
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
	b	.LBB22_39
.LBB22_35:                              @ %if.else208
	.loc	14 154 22                       @ ../udivmoddi4.c:154:22
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	cmp	r0, #31
	bhi	.LBB22_37
	b	.LBB22_36
.LBB22_36:                              @ %if.then211
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
	b	.LBB22_38
.LBB22_37:                              @ %if.else235
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
	b	.LBB22_38
.LBB22_38:                              @ %if.end261
	.loc	14 0 25                         @ ../udivmoddi4.c:0:25
	b	.LBB22_39
.LBB22_39:                              @ %if.end262
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	str	r0, [sp, #28]                   @ 4-byte Spill
	.loc	14 169 9 is_stmt 1              @ ../udivmoddi4.c:169:9
	b	.LBB22_48
.LBB22_40:                              @ %if.else263
	.loc	14 176 36                       @ ../udivmoddi4.c:176:36
	ldr	r0, [r11, #-12]
	.loc	14 176 18 is_stmt 0             @ ../udivmoddi4.c:176:18
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
	blo	.LBB22_44
	b	.LBB22_41
.LBB22_41:                              @ %if.then271
	.loc	14 180 21                       @ ../udivmoddi4.c:180:21
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB22_43
	b	.LBB22_42
.LBB22_42:                              @ %if.then273
	.loc	14 181 30                       @ ../udivmoddi4.c:181:30
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldr	r2, [r11, #-4]
	.loc	14 181 26 is_stmt 0             @ ../udivmoddi4.c:181:26
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	14 181 21                       @ ../udivmoddi4.c:181:21
	b	.LBB22_43
.LBB22_43:                              @ %if.end275
	.loc	14 0 21                         @ ../udivmoddi4.c:0:21
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 182 17 is_stmt 1             @ ../udivmoddi4.c:182:17
	b	.LBB22_56
.LBB22_44:                              @ %if.end276
	.loc	14 184 13                       @ ../udivmoddi4.c:184:13
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #20]                   @ 4-byte Spill
	mov	r1, #0
	.loc	14 187 21                       @ ../udivmoddi4.c:187:21
	str	r1, [r11, #-24]
	.loc	14 188 17                       @ ../udivmoddi4.c:188:17
	cmp	r0, #32
	bne	.LBB22_46
	b	.LBB22_45
.LBB22_45:                              @ %if.then282
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
	b	.LBB22_47
.LBB22_46:                              @ %if.else293
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
	b	.LBB22_47
.LBB22_47:                              @ %if.end315
	.loc	14 0 25                         @ ../udivmoddi4.c:0:25
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
	.loc	14 209 5 is_stmt 1              @ ../udivmoddi4.c:209:5
	b	.LBB22_50
.LBB22_50:                              @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	14 0 0 is_stmt 0                @ ../udivmoddi4.c:0:0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	14 209 5                        @ ../udivmoddi4.c:209:5
	cmp	r0, #0
	beq	.LBB22_53
	b	.LBB22_51
.LBB22_51:                              @ %for.body
                                        @   in Loop: Header=BB22_50 Depth=1
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
	b	.LBB22_52
.LBB22_52:                              @ %for.inc
                                        @   in Loop: Header=BB22_50 Depth=1
	.loc	14 224 19                       @ ../udivmoddi4.c:224:19
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp]                        @ 4-byte Reload
	lsr	r0, r0, #31
	.loc	14 209 20                       @ ../udivmoddi4.c:209:20
	sub	r1, r1, #1
	str	r1, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	14 209 5 is_stmt 0              @ ../udivmoddi4.c:209:5
	b	.LBB22_50
.LBB22_53:                              @ %for.end
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
	beq	.LBB22_55
	b	.LBB22_54
.LBB22_54:                              @ %if.then371
	.loc	14 229 18                       @ ../udivmoddi4.c:229:18
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-32]
	ldr	r2, [r11, #-28]
	.loc	14 229 14 is_stmt 0             @ ../udivmoddi4.c:229:14
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	14 229 9                        @ ../udivmoddi4.c:229:9
	b	.LBB22_55
.LBB22_55:                              @ %if.end373
	.loc	14 230 14 is_stmt 1             @ ../udivmoddi4.c:230:14
	ldr	r1, [r11, #-24]
	ldr	r0, [r11, #-20]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	14 230 5 is_stmt 0              @ ../udivmoddi4.c:230:5
	b	.LBB22_56
.LBB22_56:                              @ %return
	.loc	14 0 0                          @ ../udivmoddi4.c:0:0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldr	r1, [r11, #-40]                 @ 4-byte Reload
	.loc	14 231 1 is_stmt 1              @ ../udivmoddi4.c:231:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp42:
	.p2align	2
@ %bb.57:
	.loc	14 0 1 is_stmt 0                @ ../udivmoddi4.c:0:1
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
.Ltmp43:
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
.Ltmp44:
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
.Ltmp45:
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
.Ltmp46:
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
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	mov	r3, r1
	mov	r1, r0
.Ltmp47:
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
.Ltmp48:
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp49:
	.loc	18 25 11 prologue_end           @ ../ffsdi2.c:25:11
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	18 26 13                        @ ../ffsdi2.c:26:13
	ldr	r0, [sp, #8]
	.loc	18 26 9 is_stmt 0               @ ../ffsdi2.c:26:9
	cmp	r0, #0
	bne	.LBB26_4
	b	.LBB26_1
.LBB26_1:                               @ %if.then
	.loc	18 28 17 is_stmt 1              @ ../ffsdi2.c:28:17
	ldr	r0, [sp, #12]
	.loc	18 28 13 is_stmt 0              @ ../ffsdi2.c:28:13
	cmp	r0, #0
	bne	.LBB26_3
	b	.LBB26_2
.LBB26_2:                               @ %if.then3
	.loc	18 0 13                         @ ../ffsdi2.c:0:13
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	18 29 13 is_stmt 1              @ ../ffsdi2.c:29:13
	b	.LBB26_5
.LBB26_3:                               @ %if.end
	.loc	18 30 34                        @ ../ffsdi2.c:30:34
	ldr	r1, [sp, #12]
	.loc	18 30 16 is_stmt 0              @ ../ffsdi2.c:30:16
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
	.loc	18 30 40                        @ ../ffsdi2.c:30:40
	add	r0, r0, r1, lsr #24
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	18 30 9                         @ ../ffsdi2.c:30:9
	b	.LBB26_5
.LBB26_4:                               @ %if.end6
	.loc	18 32 30 is_stmt 1              @ ../ffsdi2.c:32:30
	ldr	r1, [sp, #8]
	.loc	18 32 12 is_stmt 0              @ ../ffsdi2.c:32:12
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
	.loc	18 32 35                        @ ../ffsdi2.c:32:35
	add	r0, r0, r1, lsr #24
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	18 32 5                         @ ../ffsdi2.c:32:5
	b	.LBB26_5
.LBB26_5:                               @ %return
	.loc	18 0 0                          @ ../ffsdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	18 33 1 is_stmt 1               @ ../ffsdi2.c:33:1
	add	sp, sp, #16
	bx	lr
.Ltmp50:
	.p2align	2
@ %bb.6:
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
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp51:
	.loc	19 24 9 prologue_end            @ ../ffssi2.c:24:9
	cmp	r0, #0
	bne	.LBB27_2
	b	.LBB27_1
.LBB27_1:                               @ %if.then
	.loc	19 0 9 is_stmt 0                @ ../ffssi2.c:0:9
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	.loc	19 26 9 is_stmt 1               @ ../ffssi2.c:26:9
	b	.LBB27_3
.LBB27_2:                               @ %if.end
	.loc	19 28 12                        @ ../ffssi2.c:28:12
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
	.loc	19 28 29 is_stmt 0              @ ../ffssi2.c:28:29
	add	r0, r0, r1, lsr #24
	str	r0, [sp]                        @ 4-byte Spill
	.loc	19 28 5                         @ ../ffssi2.c:28:5
	b	.LBB27_3
.LBB27_3:                               @ %return
	.loc	19 0 0                          @ ../ffssi2.c:0:0
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	19 29 1 is_stmt 1               @ ../ffssi2.c:29:1
	add	sp, sp, #8
	bx	lr
.Ltmp52:
	.p2align	2
@ %bb.4:
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
	sub	sp, sp, #40
	.cfi_def_cfa_offset 40
	str	r2, [sp, #12]                   @ 4-byte Spill
	mov	r3, r1
	str	r3, [sp, #16]                   @ 4-byte Spill
	mov	r3, r0
	str	r3, [sp, #20]                   @ 4-byte Spill
.Ltmp53:
	.loc	20 29 15 prologue_end           @ ../lshrdi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	20 30 9                         @ ../lshrdi3.c:30:9
	tst	r2, #32
	beq	.LBB28_2
	b	.LBB28_1
.LBB28_1:                               @ %if.then
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
	b	.LBB28_5
.LBB28_2:                               @ %if.else
	.loc	20 37 13                        @ ../lshrdi3.c:37:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB28_4
	b	.LBB28_3
.LBB28_3:                               @ %if.then4
	.loc	20 0 13 is_stmt 0               @ ../lshrdi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	20 38 13 is_stmt 1              @ ../lshrdi3.c:38:13
	b	.LBB28_6
.LBB28_4:                               @ %if.end
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
	b	.LBB28_5
.LBB28_5:                               @ %if.end18
	.loc	20 42 19 is_stmt 1              @ ../lshrdi3.c:42:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	20 42 5 is_stmt 0               @ ../lshrdi3.c:42:5
	b	.LBB28_6
.LBB28_6:                               @ %return
	.loc	20 0 0                          @ ../lshrdi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	20 43 1 is_stmt 1               @ ../lshrdi3.c:43:1
	add	sp, sp, #40
	bx	lr
.Ltmp54:
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
.Ltmp55:
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
.Ltmp56:
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
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp57:
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
.Ltmp58:
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
.Ltmp59:
	.loc	23 27 11 prologue_end           @ ../mulvdi3.c:27:11
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	23 27 9 is_stmt 0               @ ../mulvdi3.c:27:9
	cmp	r0, #0
	bne	.LBB31_5
	b	.LBB31_1
.LBB31_1:                               @ %if.then
	.loc	23 29 15 is_stmt 1              @ ../mulvdi3.c:29:15
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	orr	r0, r0, r1
	.loc	23 29 20 is_stmt 0              @ ../mulvdi3.c:29:20
	cmp	r0, #0
	beq	.LBB31_3
	b	.LBB31_2
.LBB31_2:                               @ %lor.lhs.false
	.loc	23 29 25                        @ ../mulvdi3.c:29:25
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	eor	r0, r0, #1
	orr	r0, r0, r1
	.loc	23 29 13                        @ ../mulvdi3.c:29:13
	cmp	r0, #0
	bne	.LBB31_4
	b	.LBB31_3
.LBB31_3:                               @ %if.then3
	.loc	23 30 13 is_stmt 1              @ ../mulvdi3.c:30:13
	b	.LBB31_21
.LBB31_4:                               @ %if.end
	.loc	23 31 9                         @ ../mulvdi3.c:31:9
	ldr	r0, .LCPI31_0
	ldr	r2, .LCPI31_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB31_5:                               @ %if.end4
	.loc	23 33 11                        @ ../mulvdi3.c:33:11
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	23 33 9 is_stmt 0               @ ../mulvdi3.c:33:9
	cmp	r0, #0
	bne	.LBB31_10
	b	.LBB31_6
.LBB31_6:                               @ %if.then6
	.loc	23 35 15 is_stmt 1              @ ../mulvdi3.c:35:15
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	orr	r0, r0, r1
	.loc	23 35 20 is_stmt 0              @ ../mulvdi3.c:35:20
	cmp	r0, #0
	beq	.LBB31_8
	b	.LBB31_7
.LBB31_7:                               @ %lor.lhs.false8
	.loc	23 35 25                        @ ../mulvdi3.c:35:25
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	eor	r0, r0, #1
	orr	r0, r0, r1
	.loc	23 35 13                        @ ../mulvdi3.c:35:13
	cmp	r0, #0
	bne	.LBB31_9
	b	.LBB31_8
.LBB31_8:                               @ %if.then10
	.loc	23 36 13 is_stmt 1              @ ../mulvdi3.c:36:13
	b	.LBB31_21
.LBB31_9:                               @ %if.end12
	.loc	23 37 9                         @ ../mulvdi3.c:37:9
	ldr	r0, .LCPI31_0
	ldr	r2, .LCPI31_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB31_10:                              @ %if.end13
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
	blt	.LBB31_12
	b	.LBB31_11
.LBB31_11:                              @ %lor.lhs.false18
	.loc	23 43 28                        @ ../mulvdi3.c:43:28
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	rsbs	r1, r1, #1
	rscs	r0, r0, #0
	.loc	23 43 9                         @ ../mulvdi3.c:43:9
	blt	.LBB31_13
	b	.LBB31_12
.LBB31_12:                              @ %if.then20
	.loc	23 44 9 is_stmt 1               @ ../mulvdi3.c:44:9
	b	.LBB31_21
.LBB31_13:                              @ %if.end22
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
	bne	.LBB31_17
	b	.LBB31_14
.LBB31_14:                              @ %if.then24
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
	bge	.LBB31_16
	b	.LBB31_15
.LBB31_15:                              @ %if.then26
	.loc	23 48 13 is_stmt 1              @ ../mulvdi3.c:48:13
	ldr	r0, .LCPI31_0
	ldr	r2, .LCPI31_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB31_16:                              @ %if.end27
	.loc	23 49 5                         @ ../mulvdi3.c:49:5
	b	.LBB31_20
.LBB31_17:                              @ %if.else
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
	bge	.LBB31_19
	b	.LBB31_18
.LBB31_18:                              @ %if.then31
	.loc	23 53 13 is_stmt 1              @ ../mulvdi3.c:53:13
	ldr	r0, .LCPI31_0
	ldr	r2, .LCPI31_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.LBB31_19:                              @ %if.end32
	.loc	23 0 13 is_stmt 0               @ ../mulvdi3.c:0:13
	b	.LBB31_20
.LBB31_20:                              @ %if.end33
	.loc	23 55 5 is_stmt 1               @ ../mulvdi3.c:55:5
	b	.LBB31_21
.LBB31_21:                              @ %return
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
.Ltmp60:
	.p2align	2
@ %bb.22:
	.loc	23 0 1 is_stmt 0                @ ../mulvdi3.c:0:1
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
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #24
	str	r1, [r11, #-8]                  @ 4-byte Spill
	str	r0, [r11, #-4]                  @ 4-byte Spill
.Ltmp61:
	.loc	24 27 9 prologue_end            @ ../mulvsi3.c:27:9
	cmp	r0, #-2147483648
	bne	.LBB32_5
	b	.LBB32_1
.LBB32_1:                               @ %if.then
	.loc	24 29 20                        @ ../mulvsi3.c:29:20
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB32_3
	b	.LBB32_2
.LBB32_2:                               @ %lor.lhs.false
	.loc	24 29 13 is_stmt 0              @ ../mulvsi3.c:29:13
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB32_4
	b	.LBB32_3
.LBB32_3:                               @ %if.then3
	.loc	24 30 13 is_stmt 1              @ ../mulvsi3.c:30:13
	b	.LBB32_21
.LBB32_4:                               @ %if.end
	.loc	24 31 9                         @ ../mulvsi3.c:31:9
	ldr	r0, .LCPI32_0
	ldr	r2, .LCPI32_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB32_5:                               @ %if.end4
	.loc	24 33 9                         @ ../mulvsi3.c:33:9
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #-2147483648
	bne	.LBB32_10
	b	.LBB32_6
.LBB32_6:                               @ %if.then6
	.loc	24 35 20                        @ ../mulvsi3.c:35:20
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB32_8
	b	.LBB32_7
.LBB32_7:                               @ %lor.lhs.false8
	.loc	24 35 13 is_stmt 0              @ ../mulvsi3.c:35:13
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB32_9
	b	.LBB32_8
.LBB32_8:                               @ %if.then10
	.loc	24 36 13 is_stmt 1              @ ../mulvsi3.c:36:13
	b	.LBB32_21
.LBB32_9:                               @ %if.end12
	.loc	24 37 9                         @ ../mulvsi3.c:37:9
	ldr	r0, .LCPI32_0
	ldr	r2, .LCPI32_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB32_10:                              @ %if.end13
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
	blt	.LBB32_12
	b	.LBB32_11
.LBB32_11:                              @ %lor.lhs.false18
	.loc	24 43 9 is_stmt 0               @ ../mulvsi3.c:43:9
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #1
	bgt	.LBB32_13
	b	.LBB32_12
.LBB32_12:                              @ %if.then20
	.loc	24 44 9 is_stmt 1               @ ../mulvsi3.c:44:9
	b	.LBB32_21
.LBB32_13:                              @ %if.end22
	.loc	24 45 9                         @ ../mulvsi3.c:45:9
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	cmp	r0, r1
	bne	.LBB32_17
	b	.LBB32_14
.LBB32_14:                              @ %if.then24
	.loc	24 47 25                        @ ../mulvsi3.c:47:25
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mvn	r0, #-2147483648
	bl	__divsi3
	mov	r1, r0
	.loc	24 47 13 is_stmt 0              @ ../mulvsi3.c:47:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB32_16
	b	.LBB32_15
.LBB32_15:                              @ %if.then26
	.loc	24 48 13 is_stmt 1              @ ../mulvsi3.c:48:13
	ldr	r0, .LCPI32_0
	ldr	r2, .LCPI32_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB32_16:                              @ %if.end27
	.loc	24 49 5                         @ ../mulvsi3.c:49:5
	b	.LBB32_20
.LBB32_17:                              @ %if.else
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
	ble	.LBB32_19
	b	.LBB32_18
.LBB32_18:                              @ %if.then31
	.loc	24 53 13 is_stmt 1              @ ../mulvsi3.c:53:13
	ldr	r0, .LCPI32_0
	ldr	r2, .LCPI32_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.LBB32_19:                              @ %if.end32
	.loc	24 0 13 is_stmt 0               @ ../mulvsi3.c:0:13
	b	.LBB32_20
.LBB32_20:                              @ %if.end33
	.loc	24 55 5 is_stmt 1               @ ../mulvsi3.c:55:5
	b	.LBB32_21
.LBB32_21:                              @ %return
	.loc	24 0 0 is_stmt 0                @ ../mulvsi3.c:0:0
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [r11, #-8]                  @ 4-byte Reload
	mul	r0, r1, r2
	.loc	24 56 1 is_stmt 1               @ ../mulvsi3.c:56:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp62:
	.p2align	2
@ %bb.22:
	.loc	24 0 1 is_stmt 0                @ ../mulvsi3.c:0:1
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
	sub	sp, sp, #8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp63:
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
.Ltmp64:
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
.Ltmp65:
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
	mov	r2, r0
                                        @ kill: def $r0 killed $r1
                                        @ kill: def $r0 killed $r2
.Ltmp66:
	.loc	27 23 20 prologue_end           @ ../popcountdi2.c:23:20
	lsrs	r0, r1, #1
	rrx	r3, r2
	ldr	r12, .LCPI35_0
	.loc	27 23 26 is_stmt 0              @ ../popcountdi2.c:23:26
	and	r0, r0, r12
	and	r3, r3, r12
	.loc	27 23 13                        @ ../popcountdi2.c:23:13
	subs	r2, r2, r3
	sbc	r3, r1, r0
	ldr	r12, .LCPI35_1
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
	ldr	r2, .LCPI35_2
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
.Ltmp67:
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
.Ltmp68:
	.loc	28 23 23 prologue_end           @ ../popcountsi2.c:23:23
	and	r1, r1, r0, lsr #1
	.loc	28 23 11 is_stmt 0              @ ../popcountsi2.c:23:11
	sub	r1, r0, r1
	ldr	r2, .LCPI36_1
	.loc	28 25 19 is_stmt 1              @ ../popcountsi2.c:25:19
	and	r0, r2, r1, lsr #2
	.loc	28 25 38 is_stmt 0              @ ../popcountsi2.c:25:38
	and	r1, r1, r2
	.loc	28 25 33                        @ ../popcountsi2.c:25:33
	add	r0, r0, r1
	.loc	28 27 12 is_stmt 1              @ ../popcountsi2.c:27:12
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI36_2
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
.Ltmp69:
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
	sub	sp, sp, #16
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
	mov	r12, r1
	str	r12, [sp]                       @ 4-byte Spill
	mov	r12, r0
	str	r12, [sp, #4]                   @ 4-byte Spill
.Ltmp70:
	.loc	29 24 27 prologue_end           @ ../subvdi3.c:24:27
	subs	r0, r0, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	sbc	r0, r1, r3
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	29 25 9                         @ ../subvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB37_4
	b	.LBB37_1
.LBB37_1:                               @ %if.then
	.loc	29 27 15                        @ ../subvdi3.c:27:15
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	29 27 13 is_stmt 0              @ ../subvdi3.c:27:13
	bge	.LBB37_3
	b	.LBB37_2
.LBB37_2:                               @ %if.then2
	.loc	29 28 13 is_stmt 1              @ ../subvdi3.c:28:13
	ldr	r0, .LCPI37_0
	ldr	r2, .LCPI37_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB37_3:                               @ %if.end
	.loc	29 29 5                         @ ../subvdi3.c:29:5
	b	.LBB37_7
.LBB37_4:                               @ %if.else
	.loc	29 32 15                        @ ../subvdi3.c:32:15
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	29 32 13 is_stmt 0              @ ../subvdi3.c:32:13
	blt	.LBB37_6
	b	.LBB37_5
.LBB37_5:                               @ %if.then4
	.loc	29 33 13 is_stmt 1              @ ../subvdi3.c:33:13
	ldr	r0, .LCPI37_0
	ldr	r2, .LCPI37_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB37_6:                               @ %if.end5
	.loc	29 0 13 is_stmt 0               @ ../subvdi3.c:0:13
	b	.LBB37_7
.LBB37_7:                               @ %if.end6
	.loc	29 35 5 is_stmt 1               @ ../subvdi3.c:35:5
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp71:
	.p2align	2
@ %bb.8:
	.loc	29 0 5 is_stmt 0                @ ../subvdi3.c:0:5
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
	sub	sp, sp, #8
	str	r0, [sp]                        @ 4-byte Spill
.Ltmp72:
	.loc	30 24 27 prologue_end           @ ../subvsi3.c:24:27
	sub	r0, r0, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	30 25 9                         @ ../subvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB38_4
	b	.LBB38_1
.LBB38_1:                               @ %if.then
	.loc	30 27 13                        @ ../subvsi3.c:27:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB38_3
	b	.LBB38_2
.LBB38_2:                               @ %if.then2
	.loc	30 28 13                        @ ../subvsi3.c:28:13
	ldr	r0, .LCPI38_0
	ldr	r2, .LCPI38_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB38_3:                               @ %if.end
	.loc	30 29 5                         @ ../subvsi3.c:29:5
	b	.LBB38_7
.LBB38_4:                               @ %if.else
	.loc	30 32 13                        @ ../subvsi3.c:32:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	bgt	.LBB38_6
	b	.LBB38_5
.LBB38_5:                               @ %if.then4
	.loc	30 33 13                        @ ../subvsi3.c:33:13
	ldr	r0, .LCPI38_0
	ldr	r2, .LCPI38_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB38_6:                               @ %if.end5
	.loc	30 0 13 is_stmt 0               @ ../subvsi3.c:0:13
	b	.LBB38_7
.LBB38_7:                               @ %if.end6
	.loc	30 35 5 is_stmt 1               @ ../subvsi3.c:35:5
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp73:
	.p2align	2
@ %bb.8:
	.loc	30 0 5 is_stmt 0                @ ../subvsi3.c:0:5
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
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp74:
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
	bhs	.LBB39_2
	b	.LBB39_1
.LBB39_1:                               @ %if.then
	.loc	31 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	31 30 9 is_stmt 1               @ ../ucmpdi2.c:30:9
	b	.LBB39_9
.LBB39_2:                               @ %if.end
	.loc	31 31 13                        @ ../ucmpdi2.c:31:13
	ldr	r0, [sp, #20]
	.loc	31 31 24 is_stmt 0              @ ../ucmpdi2.c:31:24
	ldr	r1, [sp, #12]
	.loc	31 31 9                         @ ../ucmpdi2.c:31:9
	cmp	r0, r1
	bls	.LBB39_4
	b	.LBB39_3
.LBB39_3:                               @ %if.then9
	.loc	31 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	31 32 9 is_stmt 1               @ ../ucmpdi2.c:32:9
	b	.LBB39_9
.LBB39_4:                               @ %if.end10
	.loc	31 33 13                        @ ../ucmpdi2.c:33:13
	ldr	r0, [sp, #16]
	.loc	31 33 23 is_stmt 0              @ ../ucmpdi2.c:33:23
	ldr	r1, [sp, #8]
	.loc	31 33 9                         @ ../ucmpdi2.c:33:9
	cmp	r0, r1
	bhs	.LBB39_6
	b	.LBB39_5
.LBB39_5:                               @ %if.then15
	.loc	31 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	31 34 9 is_stmt 1               @ ../ucmpdi2.c:34:9
	b	.LBB39_9
.LBB39_6:                               @ %if.end16
	.loc	31 35 13                        @ ../ucmpdi2.c:35:13
	ldr	r0, [sp, #16]
	.loc	31 35 23 is_stmt 0              @ ../ucmpdi2.c:35:23
	ldr	r1, [sp, #8]
	.loc	31 35 9                         @ ../ucmpdi2.c:35:9
	cmp	r0, r1
	bls	.LBB39_8
	b	.LBB39_7
.LBB39_7:                               @ %if.then22
	.loc	31 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	31 36 9 is_stmt 1               @ ../ucmpdi2.c:36:9
	b	.LBB39_9
.LBB39_8:                               @ %if.end23
	.loc	31 0 9 is_stmt 0                @ ../ucmpdi2.c:0:9
	mov	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	31 37 5 is_stmt 1               @ ../ucmpdi2.c:37:5
	b	.LBB39_9
.LBB39_9:                               @ %return
	.loc	31 0 0 is_stmt 0                @ ../ucmpdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	31 38 1 is_stmt 1               @ ../ucmpdi2.c:38:1
	add	sp, sp, #24
	bx	lr
.Ltmp75:
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
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp76:
	.loc	31 48 9 prologue_end            @ ../ucmpdi2.c:48:9
	bl	__ucmpdi2
	.loc	31 48 25 is_stmt 0              @ ../ucmpdi2.c:48:25
	sub	r0, r0, #1
	.loc	31 48 2                         @ ../ucmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp77:
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
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp78:
	.loc	32 22 12 prologue_end           @ ../udivdi3.c:22:12
	mov	lr, sp
	mov	r12, #0
	str	r12, [lr]
	bl	__udivmoddi4
	.loc	32 22 5 is_stmt 0               @ ../udivdi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp79:
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
.Ltmp80:
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
.Ltmp81:
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
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #64
	str	r1, [r11, #-8]                  @ 4-byte Spill
	str	r0, [r11, #-4]                  @ 4-byte Spill
.Ltmp82:
	.loc	34 32 9 prologue_end            @ ../udivsi3.c:32:9
	cmp	r1, #0
	bne	.LBB43_2
	b	.LBB43_1
.LBB43_1:                               @ %if.then
	.loc	34 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	34 33 9 is_stmt 1               @ ../udivsi3.c:33:9
	b	.LBB43_13
.LBB43_2:                               @ %if.end
	.loc	34 34 9                         @ ../udivsi3.c:34:9
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB43_4
	b	.LBB43_3
.LBB43_3:                               @ %if.then2
	.loc	34 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	34 35 9 is_stmt 1               @ ../udivsi3.c:35:9
	b	.LBB43_13
.LBB43_4:                               @ %if.end3
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
	blo	.LBB43_6
	b	.LBB43_5
.LBB43_5:                               @ %if.then5
	.loc	34 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	34 39 9 is_stmt 1               @ ../udivsi3.c:39:9
	b	.LBB43_13
.LBB43_6:                               @ %if.end6
	.loc	34 40 9                         @ ../udivsi3.c:40:9
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	cmp	r0, #31
	bne	.LBB43_8
	b	.LBB43_7
.LBB43_7:                               @ %if.then8
	.loc	34 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	34 41 9 is_stmt 1               @ ../udivsi3.c:41:9
	b	.LBB43_13
.LBB43_8:                               @ %if.end9
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
	b	.LBB43_9
.LBB43_9:                               @ %for.cond
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
	beq	.LBB43_12
	b	.LBB43_10
.LBB43_10:                              @ %for.body
                                        @   in Loop: Header=BB43_9 Depth=1
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
	b	.LBB43_11
.LBB43_11:                              @ %for.inc
                                        @   in Loop: Header=BB43_9 Depth=1
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
	b	.LBB43_9
.LBB43_12:                              @ %for.end
	.loc	34 64 18 is_stmt 1              @ ../udivsi3.c:64:18
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	orr	r0, r0, r1, lsl #1
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	34 65 5                         @ ../udivsi3.c:65:5
	b	.LBB43_13
.LBB43_13:                              @ %return
	.loc	34 0 0 is_stmt 0                @ ../udivsi3.c:0:0
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	.loc	34 66 1 is_stmt 1               @ ../udivsi3.c:66:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp83:
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
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp84:
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
.Ltmp85:
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
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp86:
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
.Ltmp87:
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
	sub	sp, sp, #20
	.cfi_def_cfa_offset 20
	str	r2, [sp, #4]                    @ 4-byte Spill
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #16]                   @ 4-byte Spill
.Ltmp88:
	.loc	37 8 6 prologue_end             @ ../memory.c:8:6
	b	.LBB46_1
.LBB46_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	37 0 0 is_stmt 0                @ ../memory.c:0:0
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	37 8 2                          @ ../memory.c:8:2
	cmp	r0, r1
	beq	.LBB46_4
	b	.LBB46_2
.LBB46_2:                               @ %for.body
                                        @   in Loop: Header=BB46_1 Depth=1
	.loc	37 9 21 is_stmt 1               @ ../memory.c:9:21
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldrb	r0, [r0, r2]
	.loc	37 9 19 is_stmt 0               @ ../memory.c:9:19
	strb	r0, [r1, r2]
	.loc	37 10 2 is_stmt 1               @ ../memory.c:10:2
	b	.LBB46_3
.LBB46_3:                               @ %for.inc
                                        @   in Loop: Header=BB46_1 Depth=1
	.loc	37 8 26                         @ ../memory.c:8:26
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	37 8 2 is_stmt 0                @ ../memory.c:8:2
	b	.LBB46_1
.LBB46_4:                               @ %for.end
                                        @ implicit-def: $r0
	.loc	37 11 1 is_stmt 1               @ ../memory.c:11:1
	add	sp, sp, #20
	bx	lr
.Ltmp89:
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
	sub	sp, sp, #20
	.cfi_def_cfa_offset 20
	str	r2, [sp, #4]                    @ 4-byte Spill
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #16]                   @ 4-byte Spill
.Ltmp90:
	.loc	37 17 6 prologue_end            @ ../memory.c:17:6
	b	.LBB47_1
.LBB47_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	37 0 0 is_stmt 0                @ ../memory.c:0:0
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	37 17 2                         @ ../memory.c:17:2
	cmp	r0, r1
	beq	.LBB47_4
	b	.LBB47_2
.LBB47_2:                               @ %for.body
                                        @   in Loop: Header=BB47_1 Depth=1
	.loc	37 18 11 is_stmt 1              @ ../memory.c:18:11
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	strb	r0, [r1, r2]
	.loc	37 19 2                         @ ../memory.c:19:2
	b	.LBB47_3
.LBB47_3:                               @ %for.inc
                                        @   in Loop: Header=BB47_1 Depth=1
	.loc	37 17 26                        @ ../memory.c:17:26
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	37 17 2 is_stmt 0               @ ../memory.c:17:2
	b	.LBB47_1
.LBB47_4:                               @ %for.end
	.loc	37 20 2 is_stmt 1               @ ../memory.c:20:2
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	add	sp, sp, #20
	bx	lr
.Ltmp91:
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
	.long	.Lfunc_end7-.Lfunc_begin0       @ DW_AT_high_pc
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
	.long	.Lfunc_end8-.Lfunc_begin8       @ DW_AT_high_pc
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
	.long	.Lfunc_end9-.Lfunc_begin9       @ DW_AT_high_pc
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
	.long	.Lfunc_end10-.Lfunc_begin10     @ DW_AT_high_pc
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
	.long	.Lfunc_end11-.Lfunc_begin11     @ DW_AT_high_pc
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
	.long	.Lfunc_end12-.Lfunc_begin12     @ DW_AT_high_pc
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
	.long	.Lfunc_end13-.Lfunc_begin13     @ DW_AT_high_pc
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
	.long	.Lfunc_end14-.Lfunc_begin14     @ DW_AT_high_pc
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
	.long	.Lfunc_end15-.Lfunc_begin15     @ DW_AT_high_pc
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
	.long	.Lfunc_end16-.Lfunc_begin16     @ DW_AT_high_pc
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
	.long	.Lfunc_end18-.Lfunc_begin17     @ DW_AT_high_pc
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
	.long	.Lfunc_end19-.Lfunc_begin19     @ DW_AT_high_pc
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
	.long	.Lfunc_end20-.Lfunc_begin20     @ DW_AT_high_pc
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
	.long	.Lfunc_end21-.Lfunc_begin21     @ DW_AT_high_pc
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
	.long	.Lfunc_end22-.Lfunc_begin22     @ DW_AT_high_pc
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
	.long	.Lfunc_end23-.Lfunc_begin23     @ DW_AT_high_pc
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
	.long	.Lfunc_end24-.Lfunc_begin24     @ DW_AT_high_pc
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
	.long	.Lfunc_end25-.Lfunc_begin25     @ DW_AT_high_pc
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
	.long	.Lfunc_end26-.Lfunc_begin26     @ DW_AT_high_pc
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
	.long	.Lfunc_end27-.Lfunc_begin27     @ DW_AT_high_pc
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
	.long	.Lfunc_end28-.Lfunc_begin28     @ DW_AT_high_pc
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
	.long	.Lfunc_end29-.Lfunc_begin29     @ DW_AT_high_pc
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
	.long	.Lfunc_end30-.Lfunc_begin30     @ DW_AT_high_pc
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
	.long	.Lfunc_end31-.Lfunc_begin31     @ DW_AT_high_pc
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
	.long	.Lfunc_end32-.Lfunc_begin32     @ DW_AT_high_pc
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
	.long	.Lfunc_end33-.Lfunc_begin33     @ DW_AT_high_pc
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
	.long	.Lfunc_end34-.Lfunc_begin34     @ DW_AT_high_pc
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
	.long	.Lfunc_end35-.Lfunc_begin35     @ DW_AT_high_pc
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
	.long	.Lfunc_end36-.Lfunc_begin36     @ DW_AT_high_pc
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
	.long	.Lfunc_end37-.Lfunc_begin37     @ DW_AT_high_pc
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
	.long	.Lfunc_end38-.Lfunc_begin38     @ DW_AT_high_pc
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
	.long	.Lfunc_end40-.Lfunc_begin39     @ DW_AT_high_pc
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
	.long	.Lfunc_end41-.Lfunc_begin41     @ DW_AT_high_pc
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
	.long	.Lfunc_end42-.Lfunc_begin42     @ DW_AT_high_pc
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
	.long	.Lfunc_end43-.Lfunc_begin43     @ DW_AT_high_pc
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
	.long	.Lfunc_end44-.Lfunc_begin44     @ DW_AT_high_pc
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
	.long	.Lfunc_end45-.Lfunc_begin45     @ DW_AT_high_pc
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
	.long	.Lfunc_end47-.Lfunc_begin46     @ DW_AT_high_pc
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
	.asciz	"/workspaces/llvmta/testcases/batchtest/ndes/ndes.c" @ string offset=100
.Linfo_string2:
	.asciz	"/workspaces/llvmta/testcases/tmp.VgtG6Ru486" @ string offset=151
.Linfo_string3:
	.asciz	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)" @ string offset=195
.Linfo_string4:
	.asciz	"../absvdi2.c"                  @ string offset=316
.Linfo_string5:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" @ string offset=329
.Linfo_string6:
	.asciz	"../int_util.c"                 @ string offset=391
.Linfo_string7:
	.asciz	"../absvsi2.c"                  @ string offset=405
.Linfo_string8:
	.asciz	"../addvdi3.c"                  @ string offset=418
.Linfo_string9:
	.asciz	"../addvsi3.c"                  @ string offset=431
.Linfo_string10:
	.asciz	"../ashldi3.c"                  @ string offset=444
.Linfo_string11:
	.asciz	"../ashrdi3.c"                  @ string offset=457
.Linfo_string12:
	.asciz	"../clzdi2.c"                   @ string offset=470
.Linfo_string13:
	.asciz	"../clzsi2.c"                   @ string offset=482
.Linfo_string14:
	.asciz	"../cmpdi2.c"                   @ string offset=494
.Linfo_string15:
	.asciz	"../ctzdi2.c"                   @ string offset=506
.Linfo_string16:
	.asciz	"../ctzsi2.c"                   @ string offset=518
.Linfo_string17:
	.asciz	"../divdi3.c"                   @ string offset=530
.Linfo_string18:
	.asciz	"../udivmoddi4.c"               @ string offset=542
.Linfo_string19:
	.asciz	"../divmoddi4.c"                @ string offset=558
.Linfo_string20:
	.asciz	"../divmodsi4.c"                @ string offset=573
.Linfo_string21:
	.asciz	"../divsi3.c"                   @ string offset=588
.Linfo_string22:
	.asciz	"../ffsdi2.c"                   @ string offset=600
.Linfo_string23:
	.asciz	"../ffssi2.c"                   @ string offset=612
.Linfo_string24:
	.asciz	"../lshrdi3.c"                  @ string offset=624
.Linfo_string25:
	.asciz	"../moddi3.c"                   @ string offset=637
.Linfo_string26:
	.asciz	"../modsi3.c"                   @ string offset=649
.Linfo_string27:
	.asciz	"../mulvdi3.c"                  @ string offset=661
.Linfo_string28:
	.asciz	"../mulvsi3.c"                  @ string offset=674
.Linfo_string29:
	.asciz	"../paritydi2.c"                @ string offset=687
.Linfo_string30:
	.asciz	"../paritysi2.c"                @ string offset=702
.Linfo_string31:
	.asciz	"../popcountdi2.c"              @ string offset=717
.Linfo_string32:
	.asciz	"../popcountsi2.c"              @ string offset=734
.Linfo_string33:
	.asciz	"../subvdi3.c"                  @ string offset=751
.Linfo_string34:
	.asciz	"../subvsi3.c"                  @ string offset=764
.Linfo_string35:
	.asciz	"../ucmpdi2.c"                  @ string offset=777
.Linfo_string36:
	.asciz	"../udivdi3.c"                  @ string offset=790
.Linfo_string37:
	.asciz	"../udivmodsi4.c"               @ string offset=803
.Linfo_string38:
	.asciz	"../udivsi3.c"                  @ string offset=819
.Linfo_string39:
	.asciz	"../umoddi3.c"                  @ string offset=832
.Linfo_string40:
	.asciz	"../umodsi3.c"                  @ string offset=845
.Linfo_string41:
	.asciz	"../memory.c"                   @ string offset=858
.Linfo_string42:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" @ string offset=870
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
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
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
