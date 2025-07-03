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
	.file	1 "/workspaces/llvmta/testcases/singletest" "cosf/cosf.c"
	.file	2 "/workspaces/llvmta/testcases/singletest" "cosf/wcclibm.c"
	.file	3 "/workspaces/llvmta/testcases/singletest" "cosf/wcclibm.h"
	.globl	cosf_init                       @ -- Begin function cosf_init
	.p2align	2
	.type	cosf_init,%function
	.code	32                              @ @cosf_init
cosf_init:
.Lfunc_begin0:
	.loc	1 47 0                          @ cosf/cosf.c:47:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	1 48 18 prologue_end            @ cosf/cosf.c:48:18
	ldr	r0, .LCPI0_0
	mov	r1, #0
	str	r1, [r0]
	.loc	1 49 1                          @ cosf/cosf.c:49:1
	bx	lr
.Ltmp0:
	.p2align	2
@ %bb.1:
	.loc	1 0 1 is_stmt 0                 @ cosf/cosf.c:0:1
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
	.loc	1 57 0 is_stmt 1                @ cosf/cosf.c:57:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp1:
	.loc	1 58 14 prologue_end            @ cosf/cosf.c:58:14
	ldr	r0, .LCPI1_0
	ldr	r0, [r0]
	bl	__fixsfsi
	mov	r1, r0
.Ltmp2:
	@DEBUG_VALUE: cosf_return:temp <- $r1
	.loc	1 0 14 is_stmt 0                @ cosf/cosf.c:0:14
	mov	r0, #0
	.loc	1 60 8 is_stmt 1                @ cosf/cosf.c:60:8
	cmn	r1, #4
	mvnne	r0, #0
	.loc	1 64 1                          @ cosf/cosf.c:64:1
	pop	{r11, lr}
	bx	lr
.Ltmp3:
	.p2align	2
@ %bb.1:
	.loc	1 0 1 is_stmt 0                 @ cosf/cosf.c:0:1
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
	.loc	1 72 0 is_stmt 1                @ cosf/cosf.c:72:0
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
	ldr	r7, .LCPI2_0
	ldr	r5, .LCPI2_1
	mov	r4, #18874368
	mov	r6, #0
.Ltmp4:
	@DEBUG_VALUE: cosf_main:i <- 0.000000e+00
	orr	r4, r4, #1073741824
.Ltmp5:
.LBB2_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: cosf_main:i <- $r6
	.loc	1 75 21 prologue_end            @ cosf/cosf.c:75:21
	mov	r0, r6
	mov	r1, r4
	bl	__ltsf2
.Ltmp6:
	.loc	1 75 3 is_stmt 0                @ cosf/cosf.c:75:3
	cmn	r0, #1
.Ltmp7:
	.loc	1 77 1 is_stmt 1                @ cosf/cosf.c:77:1
	popgt	{r4, r5, r6, r7, r11, lr}
.Ltmp8:
	bxgt	lr
.LBB2_2:                                @ %for.body
                                        @   in Loop: Header=BB2_1 Depth=1
.Ltmp9:
	.loc	1 76 23                         @ cosf/cosf.c:76:23
	mov	r0, r6
	bl	basicmath___cosf
	mov	r1, r0
	.loc	1 76 20 is_stmt 0               @ cosf/cosf.c:76:20
	ldr	r0, [r7]
	bl	__addsf3
	str	r0, [r7]
	.loc	1 75 29 is_stmt 1               @ cosf/cosf.c:75:29
	mov	r0, r6
	mov	r1, r5
	bl	__addsf3
	mov	r6, r0
.Ltmp10:
	@DEBUG_VALUE: cosf_main:i <- undef
	.loc	1 0 29 is_stmt 0                @ cosf/cosf.c:0:29
	b	.LBB2_1
.Ltmp11:
	.p2align	2
@ %bb.3:
.LCPI2_0:
	.long	cosf_solutions
.LCPI2_1:
	.long	1036831949                      @ 0x3dcccccd
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
	.loc	1 81 0 is_stmt 1                @ cosf/cosf.c:81:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp12:
	.loc	1 82 3 prologue_end             @ cosf/cosf.c:82:3
	bl	cosf_init
	.loc	1 83 3                          @ cosf/cosf.c:83:3
	bl	cosf_main
	.loc	1 84 10                         @ cosf/cosf.c:84:10
	bl	cosf_return
	.loc	1 84 3 is_stmt 0                @ cosf/cosf.c:84:3
	pop	{r11, lr}
	bx	lr
.Ltmp13:
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
	.loc	2 56 0 is_stmt 1                @ cosf/wcclibm.c:56:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- $r0
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
.Ltmp14:
	@DEBUG_VALUE: gf_u <- $r0
	mov	r4, r0
.Ltmp15:
	@DEBUG_VALUE: basicmath___ieee754_acosf:hx <- $r4
	@DEBUG_VALUE: gf_u <- $r4
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- $r4
	.loc	2 60 11 prologue_end            @ cosf/wcclibm.c:60:11
	bic	r0, r0, #-2147483648
.Ltmp16:
	@DEBUG_VALUE: basicmath___ieee754_acosf:ix <- $r0
	.loc	2 61 8                          @ cosf/wcclibm.c:61:8
	cmp	r0, #1065353216
	bne	.LBB4_3
.Ltmp17:
@ %bb.1:                                @ %if.then
	@DEBUG_VALUE: basicmath___ieee754_acosf:ix <- $r0
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- $r4
	@DEBUG_VALUE: basicmath___ieee754_acosf:hx <- $r4
	.loc	2 0 8 is_stmt 0                 @ cosf/wcclibm.c:0:8
	mov	r0, #0
.Ltmp18:
	.loc	2 62 10 is_stmt 1               @ cosf/wcclibm.c:62:10
	cmp	r4, #0
	ldrle	r0, .LCPI4_16
.Ltmp19:
	.loc	2 108 1                         @ cosf/wcclibm.c:108:1
	pople	{r4, r5, r6, r7, r8, r10, r11, lr}
.Ltmp20:
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	bxle	lr
.Ltmp21:
.LBB4_2:                                @ %return
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
	bx	lr
.Ltmp22:
.LBB4_3:                                @ %if.else3
	@DEBUG_VALUE: basicmath___ieee754_acosf:ix <- $r0
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- $r4
	@DEBUG_VALUE: basicmath___ieee754_acosf:hx <- $r4
	.loc	2 65 10                         @ cosf/wcclibm.c:65:10
	bls	.LBB4_5
.Ltmp23:
@ %bb.4:                                @ %if.then5
	@DEBUG_VALUE: basicmath___ieee754_acosf:ix <- $r0
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- $r4
	@DEBUG_VALUE: basicmath___ieee754_acosf:hx <- $r4
	.loc	2 66 18                         @ cosf/wcclibm.c:66:18
	mov	r0, r4
.Ltmp24:
	mov	r1, r4
	bl	__subsf3
	.loc	2 66 24 is_stmt 0               @ cosf/wcclibm.c:66:24
	mov	r1, r0
	bl	__divsf3
.Ltmp25:
	.loc	2 108 1 is_stmt 1               @ cosf/wcclibm.c:108:1
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
.Ltmp26:
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	bx	lr
.Ltmp27:
.LBB4_5:                                @ %if.end
	@DEBUG_VALUE: basicmath___ieee754_acosf:ix <- $r0
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- $r4
	@DEBUG_VALUE: basicmath___ieee754_acosf:hx <- $r4
	.loc	2 68 8                          @ cosf/wcclibm.c:68:8
	lsr	r1, r0, #24
	cmp	r1, #62
	bhi	.LBB4_8
.Ltmp28:
@ %bb.6:                                @ %if.then9
	@DEBUG_VALUE: basicmath___ieee754_acosf:ix <- $r0
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- $r4
	@DEBUG_VALUE: basicmath___ieee754_acosf:hx <- $r4
	.loc	2 69 10                         @ cosf/wcclibm.c:69:10
	cmp	r0, #587202560
	ldrls	r0, .LCPI4_13
.Ltmp29:
	.loc	2 108 1                         @ cosf/wcclibm.c:108:1
	popls	{r4, r5, r6, r7, r8, r10, r11, lr}
.Ltmp30:
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	bxls	lr
.Ltmp31:
.LBB4_7:                                @ %if.end12
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	2 71 11                         @ cosf/wcclibm.c:71:11
	mov	r0, r4
	mov	r1, r4
	bl	__mulsf3
	ldr	r1, .LCPI4_1
	mov	r5, r0
.Ltmp32:
	@DEBUG_VALUE: basicmath___ieee754_acosf:z <- undef
	.loc	2 74 55                         @ cosf/wcclibm.c:74:55
	bl	__mulsf3
	ldr	r1, .LCPI4_2
	bl	__addsf3
	mov	r1, r0
	.loc	2 73 53                         @ cosf/wcclibm.c:73:53
	mov	r0, r5
	bl	__mulsf3
	ldr	r1, .LCPI4_3
	bl	__addsf3
	mov	r1, r0
	.loc	2 72 73                         @ cosf/wcclibm.c:72:73
	mov	r0, r5
	bl	__mulsf3
	ldr	r1, .LCPI4_4
	bl	__addsf3
	mov	r1, r0
	.loc	2 72 51 is_stmt 0               @ cosf/wcclibm.c:72:51
	mov	r0, r5
	bl	__mulsf3
	ldr	r1, .LCPI4_5
	bl	__addsf3
	mov	r1, r0
	.loc	2 72 29                         @ cosf/wcclibm.c:72:29
	mov	r0, r5
	bl	__mulsf3
	ldr	r1, .LCPI4_6
	bl	__addsf3
	mov	r1, r0
	.loc	2 72 11                         @ cosf/wcclibm.c:72:11
	mov	r0, r5
	bl	__mulsf3
	ldr	r1, .LCPI4_7
	mov	r6, r0
.Ltmp33:
	@DEBUG_VALUE: basicmath___ieee754_acosf:p <- undef
	.loc	2 76 47 is_stmt 1               @ cosf/wcclibm.c:76:47
	mov	r0, r5
	bl	__mulsf3
	ldr	r1, .LCPI4_8
	bl	__addsf3
	mov	r1, r0
	.loc	2 75 67                         @ cosf/wcclibm.c:75:67
	mov	r0, r5
	bl	__mulsf3
	ldr	r1, .LCPI4_9
	bl	__addsf3
	mov	r1, r0
	.loc	2 75 45 is_stmt 0               @ cosf/wcclibm.c:75:45
	mov	r0, r5
	bl	__mulsf3
	ldr	r1, .LCPI4_10
	bl	__addsf3
	mov	r1, r0
	.loc	2 75 23                         @ cosf/wcclibm.c:75:23
	mov	r0, r5
	bl	__mulsf3
	mov	r1, #1065353216
	bl	__addsf3
	mov	r1, r0
.Ltmp34:
	@DEBUG_VALUE: basicmath___ieee754_acosf:q <- undef
	.loc	2 77 11 is_stmt 1               @ cosf/wcclibm.c:77:11
	mov	r0, r6
	bl	__divsf3
	mov	r1, r0
.Ltmp35:
	@DEBUG_VALUE: basicmath___ieee754_acosf:r <- undef
	.loc	2 78 58                         @ cosf/wcclibm.c:78:58
	mov	r0, r4
	bl	__mulsf3
	mov	r1, r0
	ldr	r0, .LCPI4_14
	bl	__subsf3
	.loc	2 78 30 is_stmt 0               @ cosf/wcclibm.c:78:30
	mov	r1, r4
	bl	__subsf3
	ldr	r1, .LCPI4_15
	b	.LBB4_10
.Ltmp36:
.LBB4_8:                                @ %if.else27
	@DEBUG_VALUE: basicmath___ieee754_acosf:ix <- $r0
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- $r4
	@DEBUG_VALUE: basicmath___ieee754_acosf:hx <- $r4
	.loc	2 80 10 is_stmt 1               @ cosf/wcclibm.c:80:10
	cmn	r4, #1
	ble	.LBB4_11
.Ltmp37:
@ %bb.9:                                @ %if.else45
	@DEBUG_VALUE: basicmath___ieee754_acosf:ix <- $r0
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- $r4
	@DEBUG_VALUE: basicmath___ieee754_acosf:hx <- $r4
	.loc	2 93 27                         @ cosf/wcclibm.c:93:27
	mov	r0, #1065353216
.Ltmp38:
	mov	r1, r4
	bl	__subsf3
	.loc	2 93 33 is_stmt 0               @ cosf/wcclibm.c:93:33
	mov	r1, #1056964608
	bl	__mulsf3
	mov	r6, r0
.Ltmp39:
	@DEBUG_VALUE: basicmath___ieee754_acosf:z <- undef
	.loc	2 94 11 is_stmt 1               @ cosf/wcclibm.c:94:11
	bl	basicmath___ieee754_sqrtf
	mov	r5, r0
.Ltmp40:
	@DEBUG_VALUE: idf <- $r5
	@DEBUG_VALUE: gf_u <- undef
	@DEBUG_VALUE: basicmath___ieee754_acosf:df <- undef
	@DEBUG_VALUE: basicmath___ieee754_acosf:s <- undef
	.loc	2 0 11 is_stmt 0                @ cosf/wcclibm.c:0:11
	ldr	r0, .LCPI4_0
.Ltmp41:
	.loc	2 97 7 is_stmt 1                @ cosf/wcclibm.c:97:7
	and	r4, r5, r0
.Ltmp42:
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: sf_u <- $r4
	.loc	2 98 16                         @ cosf/wcclibm.c:98:16
	mov	r0, r4
	mov	r1, r4
	bl	__mulsf3
	mov	r1, r0
	mov	r0, r6
	bl	__subsf3
	mov	r7, r0
	.loc	2 98 34 is_stmt 0               @ cosf/wcclibm.c:98:34
	mov	r0, r5
	mov	r1, r4
	bl	__addsf3
	mov	r1, r0
	.loc	2 98 28                         @ cosf/wcclibm.c:98:28
	mov	r0, r7
	bl	__divsf3
	ldr	r1, .LCPI4_1
	mov	r8, r0
.Ltmp43:
	@DEBUG_VALUE: basicmath___ieee754_acosf:c <- undef
	.loc	2 101 57 is_stmt 1              @ cosf/wcclibm.c:101:57
	mov	r0, r6
	bl	__mulsf3
	ldr	r1, .LCPI4_2
	bl	__addsf3
	mov	r1, r0
	.loc	2 100 55                        @ cosf/wcclibm.c:100:55
	mov	r0, r6
	bl	__mulsf3
	ldr	r1, .LCPI4_3
	bl	__addsf3
	mov	r1, r0
	.loc	2 99 75                         @ cosf/wcclibm.c:99:75
	mov	r0, r6
	bl	__mulsf3
	ldr	r1, .LCPI4_4
	bl	__addsf3
	mov	r1, r0
	.loc	2 99 53 is_stmt 0               @ cosf/wcclibm.c:99:53
	mov	r0, r6
	bl	__mulsf3
	ldr	r1, .LCPI4_5
	bl	__addsf3
	mov	r1, r0
	.loc	2 99 31                         @ cosf/wcclibm.c:99:31
	mov	r0, r6
	bl	__mulsf3
	ldr	r1, .LCPI4_6
	bl	__addsf3
	mov	r1, r0
	.loc	2 99 13                         @ cosf/wcclibm.c:99:13
	mov	r0, r6
	bl	__mulsf3
	ldr	r1, .LCPI4_7
	mov	r7, r0
.Ltmp44:
	@DEBUG_VALUE: basicmath___ieee754_acosf:p <- undef
	.loc	2 103 49 is_stmt 1              @ cosf/wcclibm.c:103:49
	mov	r0, r6
	bl	__mulsf3
	ldr	r1, .LCPI4_8
	bl	__addsf3
	mov	r1, r0
	.loc	2 102 69                        @ cosf/wcclibm.c:102:69
	mov	r0, r6
	bl	__mulsf3
	ldr	r1, .LCPI4_9
	bl	__addsf3
	mov	r1, r0
	.loc	2 102 47 is_stmt 0              @ cosf/wcclibm.c:102:47
	mov	r0, r6
	bl	__mulsf3
	ldr	r1, .LCPI4_10
	bl	__addsf3
	mov	r1, r0
	.loc	2 102 25                        @ cosf/wcclibm.c:102:25
	mov	r0, r6
	bl	__mulsf3
	mov	r1, #1065353216
	bl	__addsf3
	mov	r1, r0
.Ltmp45:
	@DEBUG_VALUE: basicmath___ieee754_acosf:q <- undef
	.loc	2 104 13 is_stmt 1              @ cosf/wcclibm.c:104:13
	mov	r0, r7
	bl	__divsf3
.Ltmp46:
	@DEBUG_VALUE: basicmath___ieee754_acosf:r <- undef
	.loc	2 105 17                        @ cosf/wcclibm.c:105:17
	mov	r1, r5
	bl	__mulsf3
	mov	r1, r8
	bl	__addsf3
.Ltmp47:
	@DEBUG_VALUE: basicmath___ieee754_acosf:w <- undef
	.loc	2 106 35                        @ cosf/wcclibm.c:106:35
	mov	r1, r4
	bl	__addsf3
	.loc	2 106 28 is_stmt 0              @ cosf/wcclibm.c:106:28
	mov	r1, r0
.Ltmp48:
.LBB4_10:                               @ %return
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	2 0 0                           @ cosf/wcclibm.c:0:0
	bl	__addsf3
.Ltmp49:
	.loc	2 108 1 is_stmt 1               @ cosf/wcclibm.c:108:1
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
	bx	lr
.Ltmp50:
.LBB4_11:                               @ %if.then29
	@DEBUG_VALUE: basicmath___ieee754_acosf:ix <- $r0
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- $r4
	@DEBUG_VALUE: basicmath___ieee754_acosf:hx <- $r4
	.loc	2 81 27                         @ cosf/wcclibm.c:81:27
	mov	r0, r4
.Ltmp51:
	mov	r1, #1065353216
	bl	__addsf3
	.loc	2 81 33 is_stmt 0               @ cosf/wcclibm.c:81:33
	mov	r1, #1056964608
	bl	__mulsf3
	ldr	r1, .LCPI4_1
	mov	r4, r0
.Ltmp52:
	@DEBUG_VALUE: basicmath___ieee754_acosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_acosf:z <- undef
	.loc	2 84 57 is_stmt 1               @ cosf/wcclibm.c:84:57
	bl	__mulsf3
	ldr	r1, .LCPI4_2
	bl	__addsf3
	mov	r1, r0
	.loc	2 83 55                         @ cosf/wcclibm.c:83:55
	mov	r0, r4
	bl	__mulsf3
	ldr	r1, .LCPI4_3
	bl	__addsf3
	mov	r1, r0
	.loc	2 82 75                         @ cosf/wcclibm.c:82:75
	mov	r0, r4
	bl	__mulsf3
	ldr	r1, .LCPI4_4
	bl	__addsf3
	mov	r1, r0
	.loc	2 82 53 is_stmt 0               @ cosf/wcclibm.c:82:53
	mov	r0, r4
	bl	__mulsf3
	ldr	r1, .LCPI4_5
	bl	__addsf3
	mov	r1, r0
	.loc	2 82 31                         @ cosf/wcclibm.c:82:31
	mov	r0, r4
	bl	__mulsf3
	ldr	r1, .LCPI4_6
	bl	__addsf3
	mov	r1, r0
	.loc	2 82 13                         @ cosf/wcclibm.c:82:13
	mov	r0, r4
	bl	__mulsf3
	ldr	r1, .LCPI4_7
	mov	r5, r0
.Ltmp53:
	@DEBUG_VALUE: basicmath___ieee754_acosf:p <- undef
	.loc	2 86 49 is_stmt 1               @ cosf/wcclibm.c:86:49
	mov	r0, r4
	bl	__mulsf3
	ldr	r1, .LCPI4_8
	bl	__addsf3
	mov	r1, r0
	.loc	2 85 69                         @ cosf/wcclibm.c:85:69
	mov	r0, r4
	bl	__mulsf3
	ldr	r1, .LCPI4_9
	bl	__addsf3
	mov	r1, r0
	.loc	2 85 47 is_stmt 0               @ cosf/wcclibm.c:85:47
	mov	r0, r4
	bl	__mulsf3
	ldr	r1, .LCPI4_10
	bl	__addsf3
	mov	r1, r0
	.loc	2 85 25                         @ cosf/wcclibm.c:85:25
	mov	r0, r4
	bl	__mulsf3
	mov	r1, #1065353216
	bl	__addsf3
	mov	r1, r0
.Ltmp54:
	@DEBUG_VALUE: basicmath___ieee754_acosf:s <- undef
	.loc	2 88 13 is_stmt 1               @ cosf/wcclibm.c:88:13
	mov	r0, r5
	bl	__divsf3
	mov	r5, r0
.Ltmp55:
	@DEBUG_VALUE: basicmath___ieee754_acosf:q <- undef
	.loc	2 87 11                         @ cosf/wcclibm.c:87:11
	mov	r0, r4
	bl	basicmath___ieee754_sqrtf
	mov	r4, r0
.Ltmp56:
	@DEBUG_VALUE: basicmath___ieee754_acosf:r <- undef
	.loc	2 89 17                         @ cosf/wcclibm.c:89:17
	mov	r0, r5
	mov	r1, r4
	bl	__mulsf3
	ldr	r1, .LCPI4_11
	bl	__addsf3
	mov	r1, r0
.Ltmp57:
	@DEBUG_VALUE: basicmath___ieee754_acosf:w <- undef
	.loc	2 90 49                         @ cosf/wcclibm.c:90:49
	mov	r0, r4
	bl	__addsf3
	.loc	2 90 27 is_stmt 0               @ cosf/wcclibm.c:90:27
	mov	r1, r0
	bl	__addsf3
	mov	r1, r0
	ldr	r0, .LCPI4_12
	bl	__subsf3
.Ltmp58:
	.loc	2 108 1 is_stmt 1               @ cosf/wcclibm.c:108:1
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
	bx	lr
.Ltmp59:
	.p2align	2
@ %bb.12:
	.loc	2 0 1 is_stmt 0                 @ cosf/wcclibm.c:0:1
.LCPI4_0:
	.long	4294963200                      @ 0xfffff000
.LCPI4_1:
	.long	940699400                       @ 0x3811ef08
.LCPI4_2:
	.long	978288388                       @ 0x3a4f7f04
.LCPI4_3:
	.long	3173257542                      @ 0xbd241146
.LCPI4_4:
	.long	1045301928                      @ 0x3e4e0aa8
.LCPI4_5:
	.long	3198595216                      @ 0xbea6b090
.LCPI4_6:
	.long	1042983595                      @ 0x3e2aaaab
.LCPI4_7:
	.long	1033750062                      @ 0x3d9dc62e
.LCPI4_8:
	.long	3207607137                      @ 0xbf303361
.LCPI4_9:
	.long	1073829677                      @ 0x4001572d
.LCPI4_10:
	.long	3222917433                      @ 0xc019d139
.LCPI4_11:
	.long	3013747048                      @ 0xb3a22168
.LCPI4_12:
	.long	1078530010                      @ 0x40490fda
.LCPI4_13:
	.long	1070141403                      @ 0x3fc90fdb
.LCPI4_14:
	.long	866263400                       @ 0x33a22168
.LCPI4_15:
	.long	1070141402                      @ 0x3fc90fda
.LCPI4_16:
	.long	1078530011                      @ 0x40490fdb
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
	.loc	2 494 0 is_stmt 1               @ cosf/wcclibm.c:494:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:x <- $r0
	push	{r4, r10, r11, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r10, -12
	.cfi_offset r4, -16
	add	r11, sp, #8
	.cfi_def_cfa r11, 8
	mov	r12, #1065353216
	mov	r4, r0
.Ltmp60:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:x <- $r4
	orr	r12, r12, #1073741824
.Ltmp61:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r4
	.loc	2 503 13 prologue_end           @ cosf/wcclibm.c:503:13
	and	r0, r0, r12
.Ltmp62:
	@DEBUG_VALUE: gf_u <- undef
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:sign <- -2147483648
	.loc	2 503 8 is_stmt 0               @ cosf/wcclibm.c:503:8
	cmp	r0, r12
	bne	.LBB5_2
.Ltmp63:
@ %bb.1:                                @ %if.then
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:sign <- -2147483648
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:x <- $r4
	.loc	2 504 18 is_stmt 1              @ cosf/wcclibm.c:504:18
	mov	r0, r4
	mov	r1, r4
	bl	__mulsf3
	mov	r1, r4
	bl	__addsf3
	mov	r4, r0
.Ltmp64:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:x <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	2 0 18 is_stmt 0                @ cosf/wcclibm.c:0:18
	b	.LBB5_7
.Ltmp65:
.LBB5_2:                                @ %if.end
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:sign <- -2147483648
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:x <- $r4
	.loc	2 508 8 is_stmt 1               @ cosf/wcclibm.c:508:8
	cmp	r4, #0
	ble	.LBB5_8
.Ltmp66:
.LBB5_3:                                @ %if.end11
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:sign <- -2147483648
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:x <- $r4
	.loc	2 0 8 is_stmt 0                 @ cosf/wcclibm.c:0:8
	mov	r1, #0
	.loc	2 515 12 is_stmt 1              @ cosf/wcclibm.c:515:12
	asr	r0, r4, #23
.Ltmp67:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:m <- $r0
	.loc	2 516 8                         @ cosf/wcclibm.c:516:8
	cmp	r1, r4, asr #23
	beq	.LBB5_11
.Ltmp68:
.LBB5_4:                                @ %if.end18
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:sign <- -2147483648
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:m <- $r0
	.loc	2 0 8 is_stmt 0                 @ cosf/wcclibm.c:0:8
	ldr	r1, .LCPI5_0
	.loc	2 522 5 is_stmt 1               @ cosf/wcclibm.c:522:5
	sub	lr, r0, #127
.Ltmp69:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:m <- $lr
	.loc	2 0 5 is_stmt 0                 @ cosf/wcclibm.c:0:5
	mov	r2, #0
.Ltmp70:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:r <- 16777216
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:q <- 0
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:s <- 0
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:m <- [DW_OP_constu 1, DW_OP_shra, DW_OP_stack_value] $lr
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- [DW_OP_constu 1, DW_OP_shl, DW_OP_stack_value] $r3
	mov	r0, #0
	.loc	2 524 8 is_stmt 1               @ cosf/wcclibm.c:524:8
	tst	lr, #1
	.loc	2 523 13                        @ cosf/wcclibm.c:523:13
	and	r1, r4, r1
	mov	r4, #16777216
	.loc	2 523 28 is_stmt 0              @ cosf/wcclibm.c:523:28
	orr	r3, r1, #8388608
.Ltmp71:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r3
	.loc	2 525 8 is_stmt 1               @ cosf/wcclibm.c:525:8
	lslne	r3, r3, #1
.Ltmp72:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r3
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- undef
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:s <- $r0
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:q <- $r2
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:r <- $r4
	.loc	2 534 3                         @ cosf/wcclibm.c:534:3
	cmp	r4, #0
	beq	.LBB5_6
.Ltmp73:
.LBB5_5:                                @ %while.body
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:r <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:q <- $r2
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:s <- $r0
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:m <- [DW_OP_constu 1, DW_OP_shra, DW_OP_stack_value] $lr
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:sign <- -2147483648
	.loc	2 0 0 is_stmt 0                 @ cosf/wcclibm.c:0:0
	lsl	r3, r3, #1
.Ltmp74:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r3
	.loc	2 535 11 is_stmt 1              @ cosf/wcclibm.c:535:11
	add	r1, r0, r4
.Ltmp75:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:t <- $r1
	.loc	2 536 10                        @ cosf/wcclibm.c:536:10
	cmp	r3, r1
.Ltmp76:
	.loc	2 539 11                        @ cosf/wcclibm.c:539:11
	addge	r2, r2, r4
.Ltmp77:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:q <- $r2
	.loc	2 537 16                        @ cosf/wcclibm.c:537:16
	addge	r0, r1, r4
.Ltmp78:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:s <- $r0
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- [DW_OP_constu 1, DW_OP_shl, DW_OP_stack_value] $r3
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:s <- $r0
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:q <- $r2
	.loc	2 538 11                        @ cosf/wcclibm.c:538:11
	subge	r3, r3, r1
.Ltmp79:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r3
	.loc	2 542 7                         @ cosf/wcclibm.c:542:7
	lsr	r4, r4, #1
.Ltmp80:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:r <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- undef
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:s <- $r0
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:q <- $r2
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:r <- $r4
	.loc	2 534 3                         @ cosf/wcclibm.c:534:3
	cmp	r4, #0
	bne	.LBB5_5
.Ltmp81:
.LBB5_6:                                @ %while.end
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:r <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:q <- $r2
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:s <- $r0
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:m <- [DW_OP_constu 1, DW_OP_shra, DW_OP_stack_value] $lr
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:sign <- -2147483648
	.loc	2 546 8                         @ cosf/wcclibm.c:546:8
	cmp	r3, #0
.Ltmp82:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:z <- 1.000000e+00
	.loc	2 553 18                        @ cosf/wcclibm.c:553:18
	andne	r0, r2, #1
.Ltmp83:
	.loc	2 553 11 is_stmt 0              @ cosf/wcclibm.c:553:11
	addne	r2, r2, r0
.Ltmp84:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:q <- $r2
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- undef
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:q <- $r2
	.loc	2 557 13 is_stmt 1              @ cosf/wcclibm.c:557:13
	orr	r0, r12, #-2147483648
	and	r0, r0, lr, lsl #22
	.loc	2 556 19                        @ cosf/wcclibm.c:556:19
	add	r0, r0, r2, asr #1
	.loc	2 557 6                         @ cosf/wcclibm.c:557:6
	add	r4, r0, #1056964608
.Ltmp85:
	@DEBUG_VALUE: sf_u <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:z <- undef
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r4
.LBB5_7:                                @ %return
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:sign <- -2147483648
	.loc	2 560 1                         @ cosf/wcclibm.c:560:1
	mov	r0, r4
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp86:
.LBB5_8:                                @ %if.then2
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:sign <- -2147483648
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:x <- $r4
	.loc	2 0 1 is_stmt 0                 @ cosf/wcclibm.c:0:1
	mvn	r0, #-2147483648
.Ltmp87:
	.loc	2 509 10 is_stmt 1              @ cosf/wcclibm.c:509:10
	tst	r4, r0
	beq	.LBB5_7
.Ltmp88:
@ %bb.9:                                @ %if.else
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:sign <- -2147483648
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:x <- $r4
	.loc	2 511 12                        @ cosf/wcclibm.c:511:12
	cmn	r4, #1
	bgt	.LBB5_3
.Ltmp89:
@ %bb.10:                               @ %if.then7
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:sign <- -2147483648
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:x <- $r4
	.loc	2 512 20                        @ cosf/wcclibm.c:512:20
	mov	r0, r4
	mov	r1, r4
	bl	__subsf3
	.loc	2 512 26 is_stmt 0              @ cosf/wcclibm.c:512:26
	mov	r1, r0
	bl	__divsf3
	mov	r4, r0
.Ltmp90:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:x <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	2 0 26                          @ cosf/wcclibm.c:0:26
	b	.LBB5_7
.Ltmp91:
.LBB5_11:                               @ %if.then13
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:m <- $r0
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:sign <- -2147483648
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:x <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:i <- 0
	.loc	2 518 11 is_stmt 1              @ cosf/wcclibm.c:518:11
	add	r0, r0, #1
.Ltmp92:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 1, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] $r0
	.loc	2 518 5 is_stmt 0               @ cosf/wcclibm.c:518:5
	tst	r4, #8388608
	bne	.LBB5_4
.Ltmp93:
.LBB5_12:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 1, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] $r0
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:sign <- -2147483648
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- [DW_OP_constu 1, DW_OP_shl, DW_OP_stack_value] $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 1, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r0
	.loc	2 518 5                         @ cosf/wcclibm.c:518:5
	sub	r0, r0, #1
.Ltmp94:
	.loc	2 519 10 is_stmt 1              @ cosf/wcclibm.c:519:10
	lsl	r4, r4, #1
.Ltmp95:
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:ix <- $r4
	@DEBUG_VALUE: basicmath___ieee754_sqrtf:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 1, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] $r0
	.loc	2 518 5                         @ cosf/wcclibm.c:518:5
	tst	r4, #8388608
	beq	.LBB5_12
	b	.LBB5_4
.Ltmp96:
	.p2align	2
@ %bb.13:
	.loc	2 0 5 is_stmt 0                 @ cosf/wcclibm.c:0:5
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
	.loc	2 142 0 is_stmt 1               @ cosf/wcclibm.c:142:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r0
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
	sub	sp, sp, #28
.Ltmp97:
	@DEBUG_VALUE: gf_u <- $r0
	@DEBUG_VALUE: gf_u <- $r0
	.loc	2 151 11 prologue_end           @ cosf/wcclibm.c:151:11
	bic	r6, r1, #-2147483648
.Ltmp98:
	@DEBUG_VALUE: gf_u <- undef
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- undef
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 154 8                         @ cosf/wcclibm.c:154:8
	cmp	r6, #0
	beq	.LBB6_7
.Ltmp99:
@ %bb.1:                                @ %if.end
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r0
	.loc	2 0 8 is_stmt 0                 @ cosf/wcclibm.c:0:8
	mov	r4, r1
.Ltmp100:
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	.loc	2 157 10 is_stmt 1              @ cosf/wcclibm.c:157:10
	mov	r1, #1065353216
	mov	r5, r0
.Ltmp101:
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: gf_u <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- undef
	.loc	2 0 10 is_stmt 0                @ cosf/wcclibm.c:0:10
	mov	r7, #1065353216
	.loc	2 157 10                        @ cosf/wcclibm.c:157:10
	bl	__eqsf2
.Ltmp102:
	.loc	2 157 8                         @ cosf/wcclibm.c:157:8
	cmp	r0, #0
	beq	.LBB6_8
.Ltmp103:
@ %bb.2:                                @ %if.end7
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- undef
	.loc	2 0 8                           @ cosf/wcclibm.c:0:8
	mov	r8, #1065353216
.Ltmp104:
	.loc	2 158 10 is_stmt 1              @ cosf/wcclibm.c:158:10
	mov	r0, r5
	orr	r8, r8, #-2147483648
	mov	r1, r8
	bl	__nesf2
	.loc	2 158 19 is_stmt 0              @ cosf/wcclibm.c:158:19
	cmp	r0, #0
	bne	.LBB6_4
.Ltmp105:
@ %bb.3:                                @ %land.lhs.true
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 158 22                        @ cosf/wcclibm.c:158:22
	mov	r0, r4
	bl	basicmath___isinff
.Ltmp106:
	.loc	2 158 8                         @ cosf/wcclibm.c:158:8
	cmp	r0, #0
	bne	.LBB6_8
.Ltmp107:
.LBB6_4:                                @ %if.end10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 0 8                           @ cosf/wcclibm.c:0:8
	mov	r7, #1065353216
	bic	r10, r5, #-2147483648
.Ltmp108:
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	orr	r7, r7, #1073741824
.Ltmp109:
	.loc	2 161 24 is_stmt 1              @ cosf/wcclibm.c:161:24
	cmp	r10, r7
.Ltmp110:
	.loc	2 161 8 is_stmt 0               @ cosf/wcclibm.c:161:8
	cmpls	r6, r7
	bls	.LBB6_9
.Ltmp111:
@ %bb.5:                                @ %if.then13
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 163 14 is_stmt 1              @ cosf/wcclibm.c:163:14
	mov	r0, r5
	mov	r1, r4
	bl	__addsf3
.Ltmp112:
.LBB6_6:                                @ %return
	.loc	2 0 0 is_stmt 0                 @ cosf/wcclibm.c:0:0
	mov	r7, r0
	b	.LBB6_8
.LBB6_7:
.Ltmp113:
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r0
	@DEBUG_VALUE: gf_u <- $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r0
	mov	r7, #1065353216
.Ltmp114:
.LBB6_8:                                @ %return
	.loc	2 357 1 is_stmt 1               @ cosf/wcclibm.c:357:1
	mov	r0, r7
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	bx	lr
.LBB6_9:                                @ %if.end14
.Ltmp115:
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- 0
	.loc	2 171 8                         @ cosf/wcclibm.c:171:8
	cmn	r5, #1
	ble	.LBB6_11
.Ltmp116:
.LBB6_10:
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- 0
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 0 8 is_stmt 0                 @ cosf/wcclibm.c:0:8
	mov	r9, #0
	b	.LBB6_14
.Ltmp117:
.LBB6_11:                               @ %if.then16
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- 0
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 172 13 is_stmt 1              @ cosf/wcclibm.c:172:13
	sub	r0, r7, #872415233
	mov	r9, #2
.Ltmp118:
	.loc	2 172 10 is_stmt 0              @ cosf/wcclibm.c:172:10
	cmp	r6, r0
	bhi	.LBB6_14
.Ltmp119:
@ %bb.12:                               @ %if.else
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- 0
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 0 10                          @ cosf/wcclibm.c:0:10
	ldr	r0, .LCPI6_0
.Ltmp120:
	.loc	2 174 15 is_stmt 1              @ cosf/wcclibm.c:174:15
	orr	r0, r0, #7
.Ltmp121:
	.loc	2 174 12 is_stmt 0              @ cosf/wcclibm.c:174:12
	cmp	r6, r0
	bls	.LBB6_10
.Ltmp122:
@ %bb.13:                               @ %if.then20
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- 0
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	@DEBUG_VALUE: basicmath___ieee754_powf:k <- [DW_OP_constu 127, DW_OP_minus, DW_OP_stack_value] undef
	.loc	2 0 12                          @ cosf/wcclibm.c:0:12
	mov	r0, #150
	mov	r9, #0
.Ltmp123:
	.loc	2 176 24 is_stmt 1              @ cosf/wcclibm.c:176:24
	sub	r1, r0, r6, lsr #23
	.loc	2 176 16 is_stmt 0              @ cosf/wcclibm.c:176:16
	lsr	r0, r6, r1
.Ltmp124:
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r0
	.loc	2 177 14 is_stmt 1              @ cosf/wcclibm.c:177:14
	cmp	r6, r0, lsl r1
.Ltmp125:
	.loc	2 177 59 is_stmt 0              @ cosf/wcclibm.c:177:59
	andeq	r0, r0, #1
.Ltmp126:
	.loc	2 177 53                        @ cosf/wcclibm.c:177:53
	rsbeq	r9, r0, #2
.Ltmp127:
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
.LBB6_14:                               @ %if.end31
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	.loc	2 182 8 is_stmt 1               @ cosf/wcclibm.c:182:8
	cmp	r6, r7
	bne	.LBB6_17
.Ltmp128:
@ %bb.15:                               @ %if.then33
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 183 10                        @ cosf/wcclibm.c:183:10
	cmp	r10, #1065353216
	bne	.LBB6_20
.Ltmp129:
@ %bb.16:                               @ %if.then35
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 184 17                        @ cosf/wcclibm.c:184:17
	mov	r0, r4
	mov	r1, r4
	bl	__subsf3
	b	.LBB6_6
.Ltmp130:
.LBB6_17:                               @ %if.end47
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 191 8                         @ cosf/wcclibm.c:191:8
	cmp	r6, #1065353216
	bne	.LBB6_22
.Ltmp131:
@ %bb.18:                               @ %if.then49
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 192 10                        @ cosf/wcclibm.c:192:10
	cmn	r4, #1
	ble	.LBB6_29
.Ltmp132:
@ %bb.19:
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 0 10 is_stmt 0                @ cosf/wcclibm.c:0:10
	mov	r7, r5
.Ltmp133:
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r7
	b	.LBB6_8
.Ltmp134:
.LBB6_20:                               @ %if.else37
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 186 12 is_stmt 1              @ cosf/wcclibm.c:186:12
	bls	.LBB6_25
.Ltmp135:
@ %bb.21:                               @ %if.then39
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 187 16                        @ cosf/wcclibm.c:187:16
	cmn	r4, #1
	mov	r7, r4
.Ltmp136:
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r7
	.loc	2 0 16 is_stmt 0                @ cosf/wcclibm.c:0:16
	movle	r7, #0
.Ltmp137:
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- [DW_OP_LLVM_entry_value 1] $r1
	b	.LBB6_8
.Ltmp138:
.LBB6_22:                               @ %if.end53
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 195 8 is_stmt 1               @ cosf/wcclibm.c:195:8
	cmp	r4, #1073741824
	bne	.LBB6_26
.Ltmp139:
@ %bb.23:                               @ %if.then55
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 195 36 is_stmt 0              @ cosf/wcclibm.c:195:36
	mov	r0, r5
	mov	r1, r5
.Ltmp140:
.LBB6_24:                               @ %return
	.loc	2 0 0                           @ cosf/wcclibm.c:0:0
	bl	__mulsf3
	b	.LBB6_6
.LBB6_25:                               @ %if.else41
.Ltmp141:
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	mov	r7, #0
.Ltmp142:
	.loc	2 189 16 is_stmt 1              @ cosf/wcclibm.c:189:16
	cmn	r4, #1
	.loc	2 189 29 is_stmt 0              @ cosf/wcclibm.c:189:29
	eorle	r7, r4, #-2147483648
	b	.LBB6_8
.Ltmp143:
.LBB6_26:                               @ %if.end56
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 196 8 is_stmt 1               @ cosf/wcclibm.c:196:8
	cmp	r4, #1056964608
	bne	.LBB6_30
.Ltmp144:
@ %bb.27:                               @ %if.then58
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 197 10                        @ cosf/wcclibm.c:197:10
	cmp	r5, #0
	bmi	.LBB6_30
.Ltmp145:
@ %bb.28:                               @ %if.then60
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 198 14                        @ cosf/wcclibm.c:198:14
	mov	r0, r5
	bl	basicmath___ieee754_sqrtf
	b	.LBB6_6
.Ltmp146:
.LBB6_29:                               @ %if.then51
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 192 40                        @ cosf/wcclibm.c:192:40
	mov	r0, #1065353216
	mov	r1, r5
.Ltmp147:
	.loc	2 0 0 is_stmt 0                 @ cosf/wcclibm.c:0:0
	bl	__divsf3
	b	.LBB6_6
.Ltmp148:
.LBB6_30:                               @ %if.end63
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 201 10 is_stmt 1              @ cosf/wcclibm.c:201:10
	mov	r0, r5
	bl	basicmath___fabsf
.Ltmp149:
	.loc	2 203 25                        @ cosf/wcclibm.c:203:25
	cmp	r10, r7
.Ltmp150:
	.loc	2 201 10                        @ cosf/wcclibm.c:201:10
	mov	r2, r0
.Ltmp151:
	@DEBUG_VALUE: basicmath___ieee754_powf:ax <- undef
	.loc	2 203 36                        @ cosf/wcclibm.c:203:36
	cmpne	r10, #0
	bne	.LBB6_37
.Ltmp152:
.LBB6_31:                               @ %if.then70
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	@DEBUG_VALUE: basicmath___ieee754_powf:z <- $r2
	.loc	2 205 10                        @ cosf/wcclibm.c:205:10
	cmn	r4, #1
	bgt	.LBB6_33
.Ltmp153:
@ %bb.32:                               @ %if.then72
	@DEBUG_VALUE: basicmath___ieee754_powf:z <- $r2
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 205 37 is_stmt 0              @ cosf/wcclibm.c:205:37
	mov	r0, #1065353216
	mov	r1, r2
	bl	__divsf3
.Ltmp154:
	mov	r2, r0
.Ltmp155:
	@DEBUG_VALUE: basicmath___ieee754_powf:z <- undef
.LBB6_33:                               @ %if.end74
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	@DEBUG_VALUE: basicmath___ieee754_powf:z <- $r2
	.loc	2 206 10 is_stmt 1              @ cosf/wcclibm.c:206:10
	cmn	r5, #1
	ble	.LBB6_35
.Ltmp156:
@ %bb.34:
	@DEBUG_VALUE: basicmath___ieee754_powf:z <- $r2
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 0 10 is_stmt 0                @ cosf/wcclibm.c:0:10
	mov	r7, r2
.Ltmp157:
	@DEBUG_VALUE: basicmath___ieee754_powf:z <- $r7
	b	.LBB6_8
.Ltmp158:
.LBB6_35:                               @ %if.then76
	@DEBUG_VALUE: basicmath___ieee754_powf:z <- $r2
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 207 19 is_stmt 1              @ cosf/wcclibm.c:207:19
	sub	r0, r10, #1065353216
	.loc	2 207 34 is_stmt 0              @ cosf/wcclibm.c:207:34
	orrs	r0, r0, r9
.Ltmp159:
	.loc	2 207 12                        @ cosf/wcclibm.c:207:12
	beq	.LBB6_42
.Ltmp160:
@ %bb.36:                               @ %if.else83
	@DEBUG_VALUE: basicmath___ieee754_powf:z <- $r2
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 210 14 is_stmt 1              @ cosf/wcclibm.c:210:14
	cmp	r9, #1
.Ltmp161:
	.loc	2 211 15                        @ cosf/wcclibm.c:211:15
	eoreq	r7, r2, #-2147483648
	movne	r7, r2
.Ltmp162:
	@DEBUG_VALUE: basicmath___ieee754_powf:z <- $r7
	.loc	2 0 15 is_stmt 0                @ cosf/wcclibm.c:0:15
	b	.LBB6_8
.Ltmp163:
.LBB6_37:                               @ %lor.lhs.false68
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 203 8 is_stmt 1               @ cosf/wcclibm.c:203:8
	cmp	r10, #1065353216
	beq	.LBB6_31
.Ltmp164:
@ %bb.38:                               @ %if.end90
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 0 8 is_stmt 0                 @ cosf/wcclibm.c:0:8
	mvn	r0, #0
.Ltmp165:
	.loc	2 217 38 is_stmt 1              @ cosf/wcclibm.c:217:38
	add	r0, r0, r5, lsr #31
	.loc	2 217 44 is_stmt 0              @ cosf/wcclibm.c:217:44
	orrs	r0, r0, r9
.Ltmp166:
	.loc	2 217 8                         @ cosf/wcclibm.c:217:8
	beq	.LBB6_43
.Ltmp167:
@ %bb.39:                               @ %if.end99
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 221 8 is_stmt 1               @ cosf/wcclibm.c:221:8
	cmp	r6, #1291845632
	bls	.LBB6_45
.Ltmp168:
@ %bb.40:                               @ %if.then101
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 0 8 is_stmt 0                 @ cosf/wcclibm.c:0:8
	ldr	r0, .LCPI6_0
.Ltmp169:
	.loc	2 223 10 is_stmt 1              @ cosf/wcclibm.c:223:10
	cmp	r10, r0
	bhs	.LBB6_50
.Ltmp170:
@ %bb.41:                               @ %if.then103
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 223 35 is_stmt 0              @ cosf/wcclibm.c:223:35
	and	r7, r7, r4, asr #31
	b	.LBB6_8
.Ltmp171:
.LBB6_42:                               @ %if.then79
	@DEBUG_VALUE: basicmath___ieee754_powf:z <- $r2
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 208 17 is_stmt 1              @ cosf/wcclibm.c:208:17
	mov	r0, r2
	mov	r1, r2
	b	.LBB6_44
.Ltmp172:
.LBB6_43:                               @ %if.then95
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 217 73                        @ cosf/wcclibm.c:217:73
	mov	r0, r5
	mov	r1, r5
.Ltmp173:
.LBB6_44:                               @ %return
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 0 0 is_stmt 0                 @ cosf/wcclibm.c:0:0
	bl	__subsf3
	mov	r1, r0
	bl	__divsf3
	b	.LBB6_6
.Ltmp174:
.LBB6_45:                               @ %if.else131
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- 0
	mov	r6, #0
.Ltmp175:
	mov	r0, #0
.Ltmp176:
	.loc	2 242 10 is_stmt 1              @ cosf/wcclibm.c:242:10
	cmp	r6, r10, lsr #23
	bne	.LBB6_47
.Ltmp177:
@ %bb.46:                               @ %if.then133
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- 0
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	.loc	2 0 10 is_stmt 0                @ cosf/wcclibm.c:0:10
	mov	r1, #192937984
.Ltmp178:
	.loc	2 243 10 is_stmt 1              @ cosf/wcclibm.c:243:10
	mov	r0, r2
	orr	r1, r1, #1073741824
	bl	__mulsf3
	mov	r10, r0
.Ltmp179:
	@DEBUG_VALUE: gf_u <- undef
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- -24
	@DEBUG_VALUE: basicmath___ieee754_powf:ax <- undef
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	.loc	2 0 10 is_stmt 0                @ cosf/wcclibm.c:0:10
	mvn	r0, #23
.Ltmp180:
.LBB6_47:                               @ %if.end139
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- $r0
	.loc	2 247 28 is_stmt 1              @ cosf/wcclibm.c:247:28
	add	r0, r0, r10, asr #23
.Ltmp181:
	.loc	2 0 28 is_stmt 0                @ cosf/wcclibm.c:0:28
	ldr	r1, .LCPI6_1
	.loc	2 247 8                         @ cosf/wcclibm.c:247:8
	sub	r0, r0, #127
.Ltmp182:
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- $r0
	.loc	2 0 8                           @ cosf/wcclibm.c:0:8
	str	r0, [sp, #16]                   @ 4-byte Spill
.Ltmp183:
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- [DW_OP_plus_uconst 16] [$sp+0]
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- [DW_OP_plus_uconst 16] [$sp+0]
	ldr	r0, .LCPI6_2
	.loc	2 248 13 is_stmt 1              @ cosf/wcclibm.c:248:13
	and	r1, r10, r1
.Ltmp184:
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r1
	.loc	2 250 12                        @ cosf/wcclibm.c:250:12
	orr	r7, r1, #1065353216
.Ltmp185:
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r7
	.loc	2 251 10                        @ cosf/wcclibm.c:251:10
	cmp	r1, r0
	blo	.LBB6_53
.Ltmp186:
@ %bb.48:                               @ %if.else147
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- [DW_OP_plus_uconst 16] [$sp+0]
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	.loc	2 0 10 is_stmt 0                @ cosf/wcclibm.c:0:10
	ldr	r0, .LCPI6_3
.Ltmp187:
	.loc	2 253 12 is_stmt 1              @ cosf/wcclibm.c:253:12
	cmp	r1, r0
	bhs	.LBB6_52
.Ltmp188:
@ %bb.49:
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- [DW_OP_plus_uconst 16] [$sp+0]
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	.loc	2 0 12 is_stmt 0                @ cosf/wcclibm.c:0:12
	mov	r6, #1
	b	.LBB6_53
.Ltmp189:
.LBB6_50:                               @ %if.end106
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 225 13 is_stmt 1              @ cosf/wcclibm.c:225:13
	add	r0, r0, #15
.Ltmp190:
	.loc	2 225 10 is_stmt 0              @ cosf/wcclibm.c:225:10
	cmp	r10, r0
	bls	.LBB6_67
.Ltmp191:
@ %bb.51:                               @ %if.then108
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 225 35                        @ cosf/wcclibm.c:225:35
	cmp	r4, #0
	movle	r7, #0
	b	.LBB6_8
.Ltmp192:
.LBB6_52:                               @ %if.else150
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- [DW_OP_plus_uconst 16] [$sp+0]
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:k <- 0
	.loc	2 256 11 is_stmt 1              @ cosf/wcclibm.c:256:11
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	.loc	2 257 12                        @ cosf/wcclibm.c:257:12
	orr	r7, r1, #1056964608
.Ltmp193:
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r7
	.loc	2 0 12 is_stmt 0                @ cosf/wcclibm.c:0:12
	mov	r6, #0
	.loc	2 256 11 is_stmt 1              @ cosf/wcclibm.c:256:11
	add	r0, r0, #1
.Ltmp194:
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- $r0
	.loc	2 0 11 is_stmt 0                @ cosf/wcclibm.c:0:11
	str	r0, [sp, #16]                   @ 4-byte Spill
.Ltmp195:
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- [DW_OP_plus_uconst 16] [$sp+0]
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- [DW_OP_plus_uconst 16] [$sp+0]
.LBB6_53:                               @ %if.end154
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- [DW_OP_plus_uconst 16] [$sp+0]
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_powf:k <- $r6
	@DEBUG_VALUE: basicmath___ieee754_powf:ax <- undef
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- [DW_OP_plus_uconst 16] [$sp+0]
	@DEBUG_VALUE: sf_u <- $r7
	.loc	2 262 14 is_stmt 1              @ cosf/wcclibm.c:262:14
	ldr	r0, .LCPI6_4
	str	r6, [sp, #20]                   @ 4-byte Spill
.Ltmp196:
	@DEBUG_VALUE: basicmath___ieee754_powf:k <- [DW_OP_plus_uconst 20] [$sp+0]
	ldr	r10, [r0, r6, lsl #2]
	@DEBUG_VALUE: basicmath___ieee754_powf:k <- [DW_OP_plus_uconst 20] [$sp+0]
	.loc	2 262 12 is_stmt 0              @ cosf/wcclibm.c:262:12
	mov	r0, r7
	mov	r1, r10
.Ltmp197:
	bl	__subsf3
	mov	r6, r0
.Ltmp198:
	@DEBUG_VALUE: basicmath___ieee754_powf:u <- undef
	.loc	2 0 12                          @ cosf/wcclibm.c:0:12
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	2 263 30 is_stmt 1              @ cosf/wcclibm.c:263:30
	mov	r0, r10
	mov	r1, r7
	bl	__addsf3
	mov	r1, r0
	.loc	2 263 23 is_stmt 0              @ cosf/wcclibm.c:263:23
	mov	r0, #1065353216
	bl	__divsf3
	mov	r1, r0
.Ltmp199:
	@DEBUG_VALUE: basicmath___ieee754_powf:v <- undef
	.loc	2 0 23                          @ cosf/wcclibm.c:0:23
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	2 264 11 is_stmt 1              @ cosf/wcclibm.c:264:11
	mov	r0, r6
	bl	__mulsf3
	mov	r6, r0
.Ltmp200:
	@DEBUG_VALUE: gf_u <- undef
	@DEBUG_VALUE: s_h <- undef
	@DEBUG_VALUE: basicmath___ieee754_powf:s <- undef
	@DEBUG_VALUE: basicmath___ieee754_powf:is <- $r6
	.loc	2 269 5                         @ cosf/wcclibm.c:269:5
	ldr	r0, [sp, #20]                   @ 4-byte Reload
.Ltmp201:
	@DEBUG_VALUE: basicmath___ieee754_powf:k <- $r0
	.loc	2 270 22                        @ cosf/wcclibm.c:270:22
	mov	r1, r10
.Ltmp202:
	.loc	2 269 5                         @ cosf/wcclibm.c:269:5
	lsl	r0, r0, #21
.Ltmp203:
	@DEBUG_VALUE: basicmath___ieee754_powf:k <- [DW_OP_plus_uconst 20] [$sp+0]
	@DEBUG_VALUE: basicmath___ieee754_powf:k <- [DW_OP_plus_uconst 20] [$sp+0]
	add	r0, r0, r7, lsr #1
	add	r0, r0, #262144
	add	r0, r0, #536870912
.Ltmp204:
	@DEBUG_VALUE: t_h <- undef
	@DEBUG_VALUE: sf_u <- $r0
	.loc	2 0 5 is_stmt 0                 @ cosf/wcclibm.c:0:5
	str	r0, [sp]                        @ 4-byte Spill
.Ltmp205:
	@DEBUG_VALUE: sf_u <- [$sp+0]
	.loc	2 270 22 is_stmt 1              @ cosf/wcclibm.c:270:22
	bl	__subsf3
	mov	r1, r0
	.loc	2 270 14 is_stmt 0              @ cosf/wcclibm.c:270:14
	mov	r0, r7
	bl	__subsf3
	mov	r1, r0
	ldr	r0, .LCPI6_5
	mov	r10, r6
.Ltmp206:
	@DEBUG_VALUE: basicmath___ieee754_powf:is <- $r10
	.loc	2 267 5 is_stmt 1               @ cosf/wcclibm.c:267:5
	and	r7, r6, r0
.Ltmp207:
	@DEBUG_VALUE: sf_u <- $r7
	.loc	2 271 35                        @ cosf/wcclibm.c:271:35
	mov	r0, r7
	str	r7, [sp, #24]                   @ 4-byte Spill
	bl	__mulsf3
	.loc	2 271 21 is_stmt 0              @ cosf/wcclibm.c:271:21
	ldr	r1, [sp]                        @ 4-byte Reload
	.loc	2 271 35                        @ cosf/wcclibm.c:271:35
	mov	r6, r0
.Ltmp208:
	@DEBUG_VALUE: t_l <- undef
	.loc	2 271 21                        @ cosf/wcclibm.c:271:21
	mov	r0, r7
	@DEBUG_VALUE: sf_u <- [DW_OP_plus_uconst 24] [$sp+0]
	bl	__mulsf3
	mov	r1, r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	bl	__subsf3
	.loc	2 271 35                        @ cosf/wcclibm.c:271:35
	mov	r1, r6
	bl	__subsf3
	mov	r1, r0
	.loc	2 271 13                        @ cosf/wcclibm.c:271:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	bl	__mulsf3
	.loc	2 277 22 is_stmt 1              @ cosf/wcclibm.c:277:22
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	@DEBUG_VALUE: sf_u <- [DW_OP_plus_uconst 24] [$sp+0]
	.loc	2 271 13                        @ cosf/wcclibm.c:271:13
	mov	r6, r0
.Ltmp209:
	@DEBUG_VALUE: basicmath___ieee754_powf:r <- undef
	.loc	2 0 13 is_stmt 0                @ cosf/wcclibm.c:0:13
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	2 277 22 is_stmt 1              @ cosf/wcclibm.c:277:22
	mov	r0, r10
	mov	r7, r10
.Ltmp210:
	@DEBUG_VALUE: basicmath___ieee754_powf:is <- $r7
	bl	__addsf3
	mov	r1, r0
	.loc	2 277 7 is_stmt 0               @ cosf/wcclibm.c:277:7
	mov	r0, r6
	bl	__mulsf3
	mov	r6, r0
.Ltmp211:
	@DEBUG_VALUE: s_l <- undef
	.loc	2 273 12 is_stmt 1              @ cosf/wcclibm.c:273:12
	mov	r0, r10
	mov	r1, r10
.Ltmp212:
	@DEBUG_VALUE: basicmath___ieee754_powf:is <- [DW_OP_plus_uconst 8] [$sp+0]
	.loc	2 0 12 is_stmt 0                @ cosf/wcclibm.c:0:12
	str	r10, [sp, #8]                   @ 4-byte Spill
	.loc	2 273 12                        @ cosf/wcclibm.c:273:12
	bl	__mulsf3
	ldr	r1, .LCPI6_6
	mov	r10, r0
	.loc	2 276 62 is_stmt 1              @ cosf/wcclibm.c:276:62
	bl	__mulsf3
	ldr	r1, .LCPI6_7
	bl	__addsf3
	mov	r1, r0
	.loc	2 275 80                        @ cosf/wcclibm.c:275:80
	mov	r0, r10
	bl	__mulsf3
	ldr	r1, .LCPI6_8
	bl	__addsf3
	mov	r1, r0
	.loc	2 275 58 is_stmt 0              @ cosf/wcclibm.c:275:58
	mov	r0, r10
	bl	__mulsf3
	ldr	r1, .LCPI6_9
	bl	__addsf3
	mov	r1, r0
	.loc	2 274 56 is_stmt 1              @ cosf/wcclibm.c:274:56
	mov	r0, r10
	bl	__mulsf3
	ldr	r1, .LCPI6_10
	bl	__addsf3
	mov	r1, r0
	.loc	2 274 34 is_stmt 0              @ cosf/wcclibm.c:274:34
	mov	r0, r10
	bl	__mulsf3
	ldr	r1, .LCPI6_11
	bl	__addsf3
	mov	r7, r0
.Ltmp213:
	@DEBUG_VALUE: s2 <- undef
	.loc	2 274 12                        @ cosf/wcclibm.c:274:12
	mov	r0, r10
	mov	r1, r10
	bl	__mulsf3
	.loc	2 274 17                        @ cosf/wcclibm.c:274:17
	mov	r1, r7
	bl	__mulsf3
	mov	r1, r0
	.loc	2 277 7 is_stmt 1               @ cosf/wcclibm.c:277:7
	mov	r0, r6
	bl	__addsf3
	mov	r10, r0
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	@DEBUG_VALUE: sf_u <- $r0
	.loc	2 278 15                        @ cosf/wcclibm.c:278:15
	mov	r1, r0
	@DEBUG_VALUE: sf_u <- [DW_OP_plus_uconst 24] [$sp+0]
	bl	__mulsf3
	mov	r1, #4194304
	mov	r7, r0
	orr	r1, r1, #1073741824
	.loc	2 279 25                        @ cosf/wcclibm.c:279:25
	bl	__addsf3
	.loc	2 279 30 is_stmt 0              @ cosf/wcclibm.c:279:30
	mov	r1, r10
	bl	__addsf3
.Ltmp214:
	@DEBUG_VALUE: gf_u <- undef
	@DEBUG_VALUE: basicmath___ieee754_powf:is <- $r0
	.loc	2 281 5 is_stmt 1               @ cosf/wcclibm.c:281:5
	ldr	r1, .LCPI6_5
	and	r6, r0, r1
.Ltmp215:
	@DEBUG_VALUE: sf_u <- $r6
	.loc	2 0 5 is_stmt 0                 @ cosf/wcclibm.c:0:5
	mov	r1, #4194304
	orr	r1, r1, #-1073741824
.Ltmp216:
	.loc	2 282 23 is_stmt 1              @ cosf/wcclibm.c:282:23
	mov	r0, r6
.Ltmp217:
	bl	__addsf3
	.loc	2 282 41 is_stmt 0              @ cosf/wcclibm.c:282:41
	mov	r1, r7
	bl	__subsf3
	mov	r1, r0
	.loc	2 282 13                        @ cosf/wcclibm.c:282:13
	mov	r0, r10
	bl	__subsf3
	.loc	2 285 25 is_stmt 1              @ cosf/wcclibm.c:285:25
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	bl	__mulsf3
	mov	r7, r0
	.loc	2 285 19 is_stmt 0              @ cosf/wcclibm.c:285:19
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	mov	r1, r6
	bl	__mulsf3
	mov	r1, r7
	bl	__addsf3
	mov	r7, r0
	.loc	2 284 13 is_stmt 1              @ cosf/wcclibm.c:284:13
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	mov	r1, r6
	bl	__mulsf3
	.loc	2 287 13                        @ cosf/wcclibm.c:287:13
	mov	r1, r7
	.loc	2 284 13                        @ cosf/wcclibm.c:284:13
	mov	r6, r0
.Ltmp218:
	.loc	2 287 13                        @ cosf/wcclibm.c:287:13
	bl	__addsf3
.Ltmp219:
	@DEBUG_VALUE: gf_u <- undef
	@DEBUG_VALUE: basicmath___ieee754_powf:p_h <- undef
	@DEBUG_VALUE: basicmath___ieee754_powf:is <- $r0
	.loc	2 289 5                         @ cosf/wcclibm.c:289:5
	ldr	r1, .LCPI6_5
	and	r10, r0, r1
.Ltmp220:
	@DEBUG_VALUE: sf_u <- $r10
	.loc	2 290 21                        @ cosf/wcclibm.c:290:21
	mov	r1, r6
	mov	r0, r10
.Ltmp221:
	bl	__subsf3
	mov	r1, r0
	.loc	2 290 13 is_stmt 0              @ cosf/wcclibm.c:290:13
	mov	r0, r7
	bl	__subsf3
.Ltmp222:
	@DEBUG_VALUE: basicmath___ieee754_powf:z_h <- undef
	.loc	2 0 13                          @ cosf/wcclibm.c:0:13
	ldr	r1, .LCPI6_12
	.loc	2 292 38 is_stmt 1              @ cosf/wcclibm.c:292:38
	bl	__mulsf3
	ldr	r1, .LCPI6_13
	mov	r6, r0
	.loc	2 292 32 is_stmt 0              @ cosf/wcclibm.c:292:32
	mov	r0, r10
	bl	__mulsf3
	mov	r1, r6
	bl	__addsf3
	.loc	2 292 55                        @ cosf/wcclibm.c:292:55
	ldr	r1, .LCPI6_14
	ldr	r6, [sp, #20]                   @ 4-byte Reload
.Ltmp223:
	@DEBUG_VALUE: basicmath___ieee754_powf:k <- $r6
	ldr	r1, [r1, r6, lsl #2]
	.loc	2 292 53                        @ cosf/wcclibm.c:292:53
	bl	__addsf3
	ldr	r1, .LCPI6_15
	mov	r7, r0
.Ltmp224:
	@DEBUG_VALUE: basicmath___ieee754_powf:p_l <- undef
	.loc	2 0 53                          @ cosf/wcclibm.c:0:53
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	2 291 26 is_stmt 1              @ cosf/wcclibm.c:291:26
	mov	r0, r10
	bl	__mulsf3
.Ltmp225:
	@DEBUG_VALUE: basicmath___ieee754_powf:t <- undef
	.loc	2 295 20                        @ cosf/wcclibm.c:295:20
	mov	r1, r7
	str	r0, [sp, #12]                   @ 4-byte Spill
	bl	__addsf3
	.loc	2 295 30 is_stmt 0              @ cosf/wcclibm.c:295:30
	ldr	r1, .LCPI6_16
	ldr	r7, [r1, r6, lsl #2]
	.loc	2 295 28                        @ cosf/wcclibm.c:295:28
	mov	r1, r7
	bl	__addsf3
	mov	r6, r0
.Ltmp226:
	@DEBUG_VALUE: basicmath___ieee754_powf:z_l <- undef
	.loc	2 294 9 is_stmt 1               @ cosf/wcclibm.c:294:9
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	bl	__floatsisf
	mov	r10, r0
	.loc	2 295 52                        @ cosf/wcclibm.c:295:52
	mov	r0, r6
	mov	r1, r10
	bl	__addsf3
.Ltmp227:
	@DEBUG_VALUE: gf_u <- undef
	@DEBUG_VALUE: basicmath___ieee754_powf:is <- $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:t1 <- undef
	.loc	2 297 5                         @ cosf/wcclibm.c:297:5
	ldr	r1, .LCPI6_5
	and	r6, r0, r1
.Ltmp228:
	@DEBUG_VALUE: sf_u <- $r6
	.loc	2 298 25                        @ cosf/wcclibm.c:298:25
	mov	r1, r10
	mov	r0, r6
.Ltmp229:
	bl	__subsf3
	.loc	2 298 31 is_stmt 0              @ cosf/wcclibm.c:298:31
	mov	r1, r7
	bl	__subsf3
	.loc	2 298 55                        @ cosf/wcclibm.c:298:55
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	bl	__subsf3
	mov	r1, r0
	.loc	2 298 14                        @ cosf/wcclibm.c:298:14
	ldr	r0, [sp, #24]                   @ 4-byte Reload
.Ltmp230:
.LBB6_54:                               @ %if.end243
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	.loc	2 0 0                           @ cosf/wcclibm.c:0:0
	bl	__subsf3
	mov	r10, r0
.Ltmp231:
	@DEBUG_VALUE: basicmath___ieee754_powf:t2 <- undef
	@DEBUG_VALUE: basicmath___ieee754_powf:t1 <- $r6
	@DEBUG_VALUE: basicmath___ieee754_powf:t2 <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:s <- 1.000000e+00
	mvn	r0, #0
.Ltmp232:
	.loc	2 302 55 is_stmt 1              @ cosf/wcclibm.c:302:55
	sub	r1, r9, #1
	mov	r9, #1065353216
.Ltmp233:
	@DEBUG_VALUE: basicmath___ieee754_powf:s <- -1.000000e+00
	.loc	2 302 38 is_stmt 0              @ cosf/wcclibm.c:302:38
	add	r0, r0, r5, lsr #31
	.loc	2 302 44                        @ cosf/wcclibm.c:302:44
	orrs	r0, r0, r1
	moveq	r9, r8
.Ltmp234:
	@DEBUG_VALUE: basicmath___ieee754_powf:s <- $r9
	@DEBUG_VALUE: gf_u <- $r4
	.loc	2 0 44                          @ cosf/wcclibm.c:0:44
	ldr	r8, .LCPI6_5
.Ltmp235:
	@DEBUG_VALUE: basicmath___ieee754_powf:is <- $r4
	.loc	2 308 13 is_stmt 1              @ cosf/wcclibm.c:308:13
	mov	r0, r4
.Ltmp236:
	.loc	2 307 3                         @ cosf/wcclibm.c:307:3
	and	r7, r4, r8
.Ltmp237:
	@DEBUG_VALUE: basicmath___ieee754_powf:y1 <- undef
	@DEBUG_VALUE: sf_u <- $r7
	.loc	2 308 13                        @ cosf/wcclibm.c:308:13
	mov	r1, r7
	bl	__subsf3
	mov	r5, r0
.Ltmp238:
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	2 308 29 is_stmt 0              @ cosf/wcclibm.c:308:29
	mov	r0, r10
	mov	r1, r4
	bl	__mulsf3
	mov	r4, r0
.Ltmp239:
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- [DW_OP_LLVM_entry_value 1] $r1
	.loc	2 308 25                        @ cosf/wcclibm.c:308:25
	mov	r0, r5
	mov	r1, r6
	bl	__mulsf3
	mov	r1, r4
	bl	__addsf3
	mov	r5, r0
.Ltmp240:
	@DEBUG_VALUE: basicmath___ieee754_powf:p_l <- undef
	.loc	2 309 12 is_stmt 1              @ cosf/wcclibm.c:309:12
	mov	r0, r6
	mov	r1, r7
	bl	__mulsf3
	mov	r4, r0
.Ltmp241:
	@DEBUG_VALUE: basicmath___ieee754_powf:p_h <- undef
	.loc	2 310 11                        @ cosf/wcclibm.c:310:11
	mov	r0, r5
	mov	r1, r4
	bl	__addsf3
.Ltmp242:
	@DEBUG_VALUE: gf_u <- undef
	@DEBUG_VALUE: basicmath___ieee754_powf:z <- undef
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r0
	.loc	2 312 8                         @ cosf/wcclibm.c:312:8
	cmp	r0, #1124073472
	bgt	.LBB6_57
.Ltmp243:
@ %bb.55:                               @ %if.else272
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:s <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:t2 <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:t1 <- $r6
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r0
	.loc	2 0 0 is_stmt 0                 @ cosf/wcclibm.c:0:0
	mov	r7, r0
.Ltmp244:
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r7
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r7
	.loc	2 315 10 is_stmt 1              @ cosf/wcclibm.c:315:10
	bne	.LBB6_59
.Ltmp245:
@ %bb.56:                               @ %if.then275
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r7
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:s <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:t2 <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:t1 <- $r6
	.loc	2 0 10 is_stmt 0                @ cosf/wcclibm.c:0:10
	ldr	r1, .LCPI6_22
.Ltmp246:
	.loc	2 316 16 is_stmt 1              @ cosf/wcclibm.c:316:16
	mov	r0, r5
	bl	__addsf3
	mov	r6, r0
.Ltmp247:
	.loc	2 316 36 is_stmt 0              @ cosf/wcclibm.c:316:36
	mov	r0, r7
	mov	r1, r4
	bl	__subsf3
	mov	r1, r0
	.loc	2 316 32                        @ cosf/wcclibm.c:316:32
	mov	r0, r6
	bl	__gtsf2
.Ltmp248:
	.loc	2 316 12                        @ cosf/wcclibm.c:316:12
	cmp	r0, #1
	blt	.LBB6_62
.Ltmp249:
.LBB6_57:                               @ %if.then269
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:s <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:t2 <- $r10
	.loc	2 0 12                          @ cosf/wcclibm.c:0:12
	ldr	r4, .LCPI6_31
.Ltmp250:
.LBB6_58:                               @ %return
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:s <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:t2 <- $r10
	mov	r0, r9
	mov	r1, r4
	bl	__mulsf3
	mov	r1, r4
	b	.LBB6_24
.Ltmp251:
.LBB6_59:                               @ %if.else284
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r7
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:s <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:t2 <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:t1 <- $r6
	ldr	r1, .LCPI6_20
.Ltmp252:
	.loc	2 319 16 is_stmt 1              @ cosf/wcclibm.c:319:16
	bic	r0, r7, #-2147483648
.Ltmp253:
	.loc	2 319 12 is_stmt 0              @ cosf/wcclibm.c:319:12
	cmp	r0, r1
	bhs	.LBB6_68
.Ltmp254:
@ %bb.60:                               @ %if.else291
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r7
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:s <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:t2 <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:t1 <- $r6
	.loc	2 0 12                          @ cosf/wcclibm.c:0:12
	mov	r0, #1441792
	orr	r0, r0, #-1023410176
.Ltmp255:
	.loc	2 322 14 is_stmt 1              @ cosf/wcclibm.c:322:14
	cmp	r7, r0
	bne	.LBB6_62
.Ltmp256:
@ %bb.61:                               @ %if.then294
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r7
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:s <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:t2 <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:t1 <- $r6
	.loc	2 323 25                        @ cosf/wcclibm.c:323:25
	mov	r0, r7
	mov	r1, r4
	bl	__subsf3
	mov	r1, r0
	.loc	2 323 20 is_stmt 0              @ cosf/wcclibm.c:323:20
	mov	r0, r5
	bl	__lesf2
.Ltmp257:
	.loc	2 323 16                        @ cosf/wcclibm.c:323:16
	cmp	r0, #0
	ble	.LBB6_68
.Ltmp258:
.LBB6_62:                               @ %if.end304
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r7
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:s <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:t2 <- $r10
	.loc	2 329 9 is_stmt 1               @ cosf/wcclibm.c:329:9
	bic	r0, r7, #-2147483648
.Ltmp259:
	@DEBUG_VALUE: basicmath___ieee754_powf:i <- $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:k <- [DW_OP_constu 23, DW_OP_shr, DW_OP_constu 127, DW_OP_minus, DW_OP_stack_value] $r0
	.loc	2 0 9 is_stmt 0                 @ cosf/wcclibm.c:0:9
	mov	r1, #0
.Ltmp260:
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- 0
	.loc	2 332 8 is_stmt 1               @ cosf/wcclibm.c:332:8
	cmp	r0, #1056964608
	str	r1, [sp, #24]                   @ 4-byte Spill
	bls	.LBB6_64
.Ltmp261:
@ %bb.63:                               @ %if.then311
	@DEBUG_VALUE: basicmath___ieee754_powf:k <- [DW_OP_constu 23, DW_OP_shr, DW_OP_constu 127, DW_OP_minus, DW_OP_stack_value] $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:i <- $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r7
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:s <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:t2 <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- 0
	@DEBUG_VALUE: basicmath___ieee754_powf:k <- [DW_OP_constu 127, DW_OP_minus, DW_OP_stack_value] undef
	.loc	2 0 8 is_stmt 0                 @ cosf/wcclibm.c:0:8
	mvn	r1, #125
	mov	r3, #1065353216
.Ltmp262:
	.loc	2 337 10 is_stmt 1              @ cosf/wcclibm.c:337:10
	cmn	r7, #1
	.loc	2 333 33                        @ cosf/wcclibm.c:333:33
	add	r0, r1, r0, lsr #23
.Ltmp263:
	.loc	2 0 33 is_stmt 0                @ cosf/wcclibm.c:0:33
	mov	r1, #8388608
	orr	r3, r3, #-1073741824
	.loc	2 333 11                        @ cosf/wcclibm.c:333:11
	add	r0, r7, r1, lsr r0
.Ltmp264:
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- $r0
	.loc	2 0 11                          @ cosf/wcclibm.c:0:11
	mov	r1, #255
	.loc	2 334 30 is_stmt 1              @ cosf/wcclibm.c:334:30
	and	r2, r1, r0, lsr #23
	.loc	2 334 38 is_stmt 0              @ cosf/wcclibm.c:334:38
	sub	r1, r2, #127
.Ltmp265:
	@DEBUG_VALUE: basicmath___ieee754_powf:k <- $r1
	.loc	2 336 53 is_stmt 1              @ cosf/wcclibm.c:336:53
	rsb	r2, r2, #150
.Ltmp266:
	.loc	2 335 5                         @ cosf/wcclibm.c:335:5
	and	r1, r0, r3, asr r1
.Ltmp267:
	@DEBUG_VALUE: sf_u <- $r1
	.loc	2 0 5 is_stmt 0                 @ cosf/wcclibm.c:0:5
	ldr	r3, .LCPI6_1
.Ltmp268:
	@DEBUG_VALUE: basicmath___ieee754_powf:t <- undef
	.loc	2 336 15 is_stmt 1              @ cosf/wcclibm.c:336:15
	and	r0, r0, r3
.Ltmp269:
	.loc	2 336 30 is_stmt 0              @ cosf/wcclibm.c:336:30
	orr	r0, r0, #8388608
	.loc	2 336 45                        @ cosf/wcclibm.c:336:45
	lsr	r0, r0, r2
.Ltmp270:
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- $r0
	.loc	2 0 45                          @ cosf/wcclibm.c:0:45
	str	r0, [sp, #24]                   @ 4-byte Spill
.Ltmp271:
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- [DW_OP_plus_uconst 24] [$sp+0]
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- [DW_OP_plus_uconst 24] [$sp+0]
	.loc	2 337 22 is_stmt 1              @ cosf/wcclibm.c:337:22
	ldrle	r0, [sp, #24]                   @ 4-byte Reload
	rsble	r0, r0, #0
.Ltmp272:
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- $r0
	.loc	2 0 22 is_stmt 0                @ cosf/wcclibm.c:0:22
	strle	r0, [sp, #24]                   @ 4-byte Spill
.Ltmp273:
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- [DW_OP_plus_uconst 24] [$sp+0]
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- [DW_OP_plus_uconst 24] [$sp+0]
	.loc	2 338 9 is_stmt 1               @ cosf/wcclibm.c:338:9
	mov	r0, r4
	bl	__subsf3
.Ltmp274:
	mov	r4, r0
.Ltmp275:
	@DEBUG_VALUE: basicmath___ieee754_powf:p_h <- undef
.LBB6_64:                               @ %if.end334
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r7
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:s <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:t2 <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- [DW_OP_plus_uconst 24] [$sp+0]
	@DEBUG_VALUE: basicmath___ieee754_powf:p_h <- $r4
	.loc	2 340 11                        @ cosf/wcclibm.c:340:11
	mov	r0, r5
	mov	r1, r4
	bl	__addsf3
.Ltmp276:
	@DEBUG_VALUE: gf_u <- undef
	@DEBUG_VALUE: basicmath___ieee754_powf:is <- $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:t <- undef
	.loc	2 0 11 is_stmt 0                @ cosf/wcclibm.c:0:11
	ldr	r1, .LCPI6_23
.Ltmp277:
	.loc	2 342 3 is_stmt 1               @ cosf/wcclibm.c:342:3
	and	r6, r0, r8
.Ltmp278:
	@DEBUG_VALUE: sf_u <- $r6
	.loc	2 343 9                         @ cosf/wcclibm.c:343:9
	mov	r0, r6
.Ltmp279:
	bl	__mulsf3
	mov	r10, r0
.Ltmp280:
	@DEBUG_VALUE: basicmath___ieee754_powf:u <- undef
	.loc	2 344 19                        @ cosf/wcclibm.c:344:19
	mov	r0, r6
	mov	r1, r4
	bl	__subsf3
	mov	r1, r0
	.loc	2 344 13 is_stmt 0              @ cosf/wcclibm.c:344:13
	mov	r0, r5
	bl	__subsf3
	ldr	r1, .LCPI6_24
	mov	r4, r0
.Ltmp281:
	.loc	2 344 49                        @ cosf/wcclibm.c:344:49
	mov	r0, r6
	bl	__mulsf3
	ldr	r1, .LCPI6_25
	mov	r5, r0
	.loc	2 344 45                        @ cosf/wcclibm.c:344:45
	mov	r0, r4
	bl	__mulsf3
	mov	r1, r5
	bl	__addsf3
	mov	r6, r0
.Ltmp282:
	@DEBUG_VALUE: basicmath___ieee754_powf:v <- undef
	.loc	2 345 9 is_stmt 1               @ cosf/wcclibm.c:345:9
	mov	r0, r10
	mov	r1, r6
	bl	__addsf3
	.loc	2 347 10                        @ cosf/wcclibm.c:347:10
	mov	r1, r0
	.loc	2 345 9                         @ cosf/wcclibm.c:345:9
	mov	r4, r0
.Ltmp283:
	@DEBUG_VALUE: basicmath___ieee754_powf:w <- undef
	.loc	2 347 10                        @ cosf/wcclibm.c:347:10
	bl	__mulsf3
	ldr	r1, .LCPI6_26
	mov	r7, r0
.Ltmp284:
	.loc	2 349 55                        @ cosf/wcclibm.c:349:55
	bl	__mulsf3
	ldr	r1, .LCPI6_27
	bl	__addsf3
	mov	r1, r0
	.loc	2 348 74                        @ cosf/wcclibm.c:348:74
	mov	r0, r7
	bl	__mulsf3
	ldr	r1, .LCPI6_28
	bl	__addsf3
	mov	r1, r0
	.loc	2 348 53 is_stmt 0              @ cosf/wcclibm.c:348:53
	mov	r0, r7
	bl	__mulsf3
	ldr	r1, .LCPI6_29
	bl	__addsf3
	mov	r1, r0
	.loc	2 348 32                        @ cosf/wcclibm.c:348:32
	mov	r0, r7
	bl	__mulsf3
	ldr	r1, .LCPI6_30
	bl	__addsf3
	mov	r1, r0
	.loc	2 348 11                        @ cosf/wcclibm.c:348:11
	mov	r0, r7
	bl	__mulsf3
	mov	r1, r0
	mov	r0, r4
	bl	__subsf3
	mov	r5, r0
.Ltmp285:
	@DEBUG_VALUE: basicmath___ieee754_powf:t1 <- undef
	.loc	2 350 12 is_stmt 1              @ cosf/wcclibm.c:350:12
	mov	r0, r4
	mov	r1, r5
	bl	__mulsf3
	mov	r7, r0
	.loc	2 350 26 is_stmt 0              @ cosf/wcclibm.c:350:26
	mov	r0, r5
	mov	r1, #-1073741824
	bl	__addsf3
	mov	r1, r0
	.loc	2 350 19                        @ cosf/wcclibm.c:350:19
	mov	r0, r7
	bl	__divsf3
	mov	r5, r0
.Ltmp286:
	@DEBUG_VALUE: basicmath___ieee754_powf:z <- undef
	.loc	2 346 15 is_stmt 1              @ cosf/wcclibm.c:346:15
	mov	r0, r4
	mov	r1, r10
	bl	__subsf3
	mov	r1, r0
	.loc	2 346 9 is_stmt 0               @ cosf/wcclibm.c:346:9
	mov	r0, r6
	bl	__subsf3
	mov	r6, r0
	.loc	2 350 50 is_stmt 1              @ cosf/wcclibm.c:350:50
	mov	r0, r4
	mov	r1, r6
	bl	__mulsf3
	mov	r1, r6
	bl	__addsf3
	mov	r1, r0
	.loc	2 350 44 is_stmt 0              @ cosf/wcclibm.c:350:44
	mov	r0, r5
	bl	__subsf3
	mov	r1, r0
.Ltmp287:
	@DEBUG_VALUE: basicmath___ieee754_powf:r <- undef
	.loc	2 351 22 is_stmt 1              @ cosf/wcclibm.c:351:22
	mov	r0, r4
	bl	__subsf3
	mov	r1, #1065353216
	bl	__addsf3
.Ltmp288:
	@DEBUG_VALUE: gf_u <- undef
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r0
	.loc	2 353 5                         @ cosf/wcclibm.c:353:5
	ldr	r1, [sp, #24]                   @ 4-byte Reload
.Ltmp289:
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- $r1
	add	r1, r0, r1, lsl #23
.Ltmp290:
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- [DW_OP_plus_uconst 24] [$sp+0]
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r1
	.loc	2 354 8                         @ cosf/wcclibm.c:354:8
	cmp	r1, #8388608
	bge	.LBB6_66
.Ltmp291:
@ %bb.65:                               @ %if.then373
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- [DW_OP_plus_uconst 24] [$sp+0]
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:s <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r1
	.loc	2 354 31 is_stmt 0              @ cosf/wcclibm.c:354:31
	ldr	r1, [sp, #24]                   @ 4-byte Reload
.Ltmp292:
	bl	basicmath___scalbnf
	mov	r1, r0
.Ltmp293:
	@DEBUG_VALUE: basicmath___ieee754_powf:z <- undef
.LBB6_66:                               @ %if.end379
	@DEBUG_VALUE: basicmath___ieee754_powf:n <- [DW_OP_plus_uconst 24] [$sp+0]
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:s <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:z <- $r1
	.loc	2 356 12 is_stmt 1              @ cosf/wcclibm.c:356:12
	mov	r0, r9
	b	.LBB6_24
.Ltmp294:
.LBB6_67:                               @ %if.end111
	@DEBUG_VALUE: basicmath___ieee754_powf:yisint <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:ix <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_powf:hy <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_powf:iy <- $r6
	.loc	2 0 12 is_stmt 0                @ cosf/wcclibm.c:0:12
	mov	r1, #1065353216
.Ltmp295:
	.loc	2 229 11 is_stmt 1              @ cosf/wcclibm.c:229:11
	mov	r0, r5
	orr	r1, r1, #-2147483648
	bl	__addsf3
	.loc	2 230 13                        @ cosf/wcclibm.c:230:13
	mov	r1, r0
	.loc	2 229 11                        @ cosf/wcclibm.c:229:11
	mov	r6, r0
.Ltmp296:
	@DEBUG_VALUE: basicmath___ieee754_powf:t <- undef
	.loc	2 230 13                        @ cosf/wcclibm.c:230:13
	bl	__mulsf3
	mov	r1, #1048576000
	mov	r7, r0
	.loc	2 230 70 is_stmt 0              @ cosf/wcclibm.c:230:70
	mov	r0, r6
	orr	r1, r1, #-2147483648
	bl	__mulsf3
	ldr	r1, .LCPI6_9
	bl	__addsf3
	mov	r1, r0
	.loc	2 230 37                        @ cosf/wcclibm.c:230:37
	mov	r0, r6
	bl	__mulsf3
	mov	r1, r0
	mov	r0, #1056964608
	bl	__subsf3
	mov	r1, r0
	.loc	2 230 19                        @ cosf/wcclibm.c:230:19
	mov	r0, r7
	bl	__mulsf3
	ldr	r1, .LCPI6_17
	mov	r7, r0
.Ltmp297:
	@DEBUG_VALUE: basicmath___ieee754_powf:w <- undef
	.loc	2 232 27 is_stmt 1              @ cosf/wcclibm.c:232:27
	mov	r0, r6
	bl	__mulsf3
	ldr	r1, .LCPI6_18
	mov	r10, r0
.Ltmp298:
	@DEBUG_VALUE: basicmath___ieee754_powf:u <- undef
	.loc	2 233 31                        @ cosf/wcclibm.c:233:31
	mov	r0, r7
	bl	__mulsf3
	ldr	r1, .LCPI6_19
	mov	r7, r0
	mov	r0, r6
	bl	__mulsf3
	mov	r1, r7
	bl	__addsf3
	mov	r7, r0
.Ltmp299:
	@DEBUG_VALUE: basicmath___ieee754_powf:v <- undef
	.loc	2 234 12                        @ cosf/wcclibm.c:234:12
	mov	r0, r10
	mov	r1, r7
	bl	__addsf3
.Ltmp300:
	@DEBUG_VALUE: basicmath___ieee754_powf:is <- $r0
	@DEBUG_VALUE: gf_u <- undef
	@DEBUG_VALUE: basicmath___ieee754_powf:t1 <- undef
	.loc	2 0 12 is_stmt 0                @ cosf/wcclibm.c:0:12
	ldr	r1, .LCPI6_5
.Ltmp301:
	.loc	2 236 5 is_stmt 1               @ cosf/wcclibm.c:236:5
	and	r6, r0, r1
.Ltmp302:
	@DEBUG_VALUE: sf_u <- $r6
	.loc	2 237 19                        @ cosf/wcclibm.c:237:19
	mov	r1, r10
	mov	r0, r6
.Ltmp303:
	bl	__subsf3
	mov	r1, r0
	.loc	2 237 12 is_stmt 0              @ cosf/wcclibm.c:237:12
	mov	r0, r7
	b	.LBB6_54
.Ltmp304:
.LBB6_68:                               @ %if.then288
	@DEBUG_VALUE: basicmath___ieee754_powf:j <- $r7
	@DEBUG_VALUE: basicmath___ieee754_powf:y <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: basicmath___ieee754_powf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_powf:s <- $r9
	@DEBUG_VALUE: basicmath___ieee754_powf:t2 <- $r10
	@DEBUG_VALUE: basicmath___ieee754_powf:t1 <- $r6
	.loc	2 0 12                          @ cosf/wcclibm.c:0:12
	ldr	r4, .LCPI6_21
	b	.LBB6_58
.Ltmp305:
	.p2align	2
@ %bb.69:
.LCPI6_0:
	.long	1065353208                      @ 0x3f7ffff8
.LCPI6_1:
	.long	8388607                         @ 0x7fffff
.LCPI6_2:
	.long	1885298                         @ 0x1cc472
.LCPI6_3:
	.long	6140887                         @ 0x5db3d7
.LCPI6_4:
	.long	basicmath_bp
.LCPI6_5:
	.long	4294963200                      @ 0xfffff000
.LCPI6_6:
	.long	1045688642                      @ 0x3e53f142
.LCPI6_7:
	.long	1047278165                      @ 0x3e6c3255
.LCPI6_8:
	.long	1049338629                      @ 0x3e8ba305
.LCPI6_9:
	.long	1051372203                      @ 0x3eaaaaab
.LCPI6_10:
	.long	1054567863                      @ 0x3edb6db7
.LCPI6_11:
	.long	1058642330                      @ 0x3f19999a
.LCPI6_12:
	.long	1064712271                      @ 0x3f76384f
.LCPI6_13:
	.long	916308896                       @ 0x369dc3a0
.LCPI6_14:
	.long	basicmath_dp_l
.LCPI6_15:
	.long	1064712192                      @ 0x3f763800
.LCPI6_16:
	.long	basicmath_dp_h
.LCPI6_17:
	.long	1069066752                      @ 0x3fb8aa00
.LCPI6_18:
	.long	3216550459                      @ 0xbfb8aa3b
.LCPI6_19:
	.long	921478512                       @ 0x36eca570
.LCPI6_20:
	.long	1125515265                      @ 0x43160001
.LCPI6_21:
	.long	228737632                       @ 0xda24260
.LCPI6_22:
	.long	859351612                       @ 0x3338aa3c
.LCPI6_23:
	.long	1060205056                      @ 0x3f317200
.LCPI6_24:
	.long	901758604                       @ 0x35bfbe8c
.LCPI6_25:
	.long	1060205080                      @ 0x3f317218
.LCPI6_26:
	.long	858897228                       @ 0x3331bb4c
.LCPI6_27:
	.long	3051219470                      @ 0xb5ddea0e
.LCPI6_28:
	.long	948613973                       @ 0x388ab355
.LCPI6_29:
	.long	3140881249                      @ 0xbb360b61
.LCPI6_30:
	.long	1042983595                      @ 0x3e2aaaab
.LCPI6_31:
	.long	1900671690                      @ 0x7149f2ca
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
	.loc	2 711 0 is_stmt 1               @ cosf/wcclibm.c:711:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: basicmath___isinff:x <- $r0
	@DEBUG_VALUE: gf_u <- $r0
	@DEBUG_VALUE: basicmath___isinff:ix <- $r0
	mov	r3, #1065353216
.Ltmp306:
	.loc	2 714 10 prologue_end           @ cosf/wcclibm.c:714:10
	bic	r2, r0, #-2147483648
.Ltmp307:
	@DEBUG_VALUE: basicmath___isinff:t <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 18446744071570456575, DW_OP_xor, DW_OP_plus_uconst 1, DW_OP_or, DW_OP_stack_value] 0, $r2
	.loc	2 0 10 is_stmt 0                @ cosf/wcclibm.c:0:10
	mov	r1, #0
	orr	r3, r3, #1073741824
	.loc	2 717 23 is_stmt 1              @ cosf/wcclibm.c:717:23
	cmp	r2, r3
	asreq	r1, r0, #30
	.loc	2 717 3 is_stmt 0               @ cosf/wcclibm.c:717:3
	mov	r0, r1
.Ltmp308:
	@DEBUG_VALUE: basicmath___isinff:x <- [DW_OP_LLVM_entry_value 1] $r0
	bx	lr
.Ltmp309:
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
	.loc	2 697 0 is_stmt 1               @ cosf/wcclibm.c:697:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: basicmath___fabsf:x <- $r0
	@DEBUG_VALUE: gf_u <- $r0
	@DEBUG_VALUE: basicmath___fabsf:ix <- $r0
	.loc	2 700 3 prologue_end            @ cosf/wcclibm.c:700:3
	bic	r0, r0, #-2147483648
.Ltmp310:
	@DEBUG_VALUE: basicmath___fabsf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: sf_u <- $r0
	@DEBUG_VALUE: basicmath___fabsf:x <- undef
	.loc	2 701 3                         @ cosf/wcclibm.c:701:3
	bx	lr
.Ltmp311:
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
	.loc	2 729 0                         @ cosf/wcclibm.c:729:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: basicmath___scalbnf:x <- $r0
	@DEBUG_VALUE: basicmath___scalbnf:n <- $r1
	push	{r4, r10, r11, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r10, -12
	.cfi_offset r4, -16
	add	r11, sp, #8
	.cfi_def_cfa r11, 8
.Ltmp312:
	@DEBUG_VALUE: gf_u <- $r0
	mov	r4, r1
.Ltmp313:
	@DEBUG_VALUE: basicmath___scalbnf:n <- $r4
	@DEBUG_VALUE: basicmath___scalbnf:n <- $r4
	mov	r1, r0
.Ltmp314:
	@DEBUG_VALUE: gf_u <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:x <- $r1
	mov	r0, #255
.Ltmp315:
	@DEBUG_VALUE: basicmath___scalbnf:ix <- $r1
	.loc	2 732 27 prologue_end           @ cosf/wcclibm.c:732:27
	and	r0, r0, r1, lsr #23
.Ltmp316:
	@DEBUG_VALUE: basicmath___scalbnf:k <- $r0
	.loc	2 733 8                         @ cosf/wcclibm.c:733:8
	cmp	r0, #0
	beq	.LBB9_3
.Ltmp317:
@ %bb.1:                                @ %if.end9
	@DEBUG_VALUE: basicmath___scalbnf:k <- $r0
	@DEBUG_VALUE: basicmath___scalbnf:ix <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:x <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:n <- $r4
	@DEBUG_VALUE: basicmath___scalbnf:x <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:ix <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:k <- $r0
	.loc	2 739 8                         @ cosf/wcclibm.c:739:8
	cmp	r0, #255
	bne	.LBB9_5
.Ltmp318:
.LBB9_2:                                @ %if.then11
	@DEBUG_VALUE: basicmath___scalbnf:k <- $r0
	@DEBUG_VALUE: basicmath___scalbnf:ix <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:x <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:n <- $r4
	.loc	2 739 29 is_stmt 0              @ cosf/wcclibm.c:739:29
	mov	r0, r1
.Ltmp319:
	bl	__addsf3
.Ltmp320:
	.loc	2 0 29                          @ cosf/wcclibm.c:0:29
	b	.LBB9_9
.Ltmp321:
.LBB9_3:                                @ %if.then
	@DEBUG_VALUE: basicmath___scalbnf:k <- $r0
	@DEBUG_VALUE: basicmath___scalbnf:ix <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:x <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:n <- $r4
	mvn	r0, #-2147483648
.Ltmp322:
	.loc	2 734 10 is_stmt 1              @ cosf/wcclibm.c:734:10
	tst	r1, r0
	beq	.LBB9_10
.Ltmp323:
@ %bb.4:                                @ %if.end
	@DEBUG_VALUE: basicmath___scalbnf:ix <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:x <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:n <- $r4
	.loc	2 735 7                         @ cosf/wcclibm.c:735:7
	mov	r0, r1
	mov	r1, #1275068416
.Ltmp324:
	bl	__mulsf3
	mov	r1, r0
.Ltmp325:
	@DEBUG_VALUE: gf_u <- undef
	@DEBUG_VALUE: basicmath___scalbnf:ix <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:x <- undef
	.loc	2 0 7 is_stmt 0                 @ cosf/wcclibm.c:0:7
	mov	r0, #255
	.loc	2 737 31 is_stmt 1              @ cosf/wcclibm.c:737:31
	and	r0, r0, r1, lsr #23
	.loc	2 737 39 is_stmt 0              @ cosf/wcclibm.c:737:39
	sub	r0, r0, #25
.Ltmp326:
	@DEBUG_VALUE: basicmath___scalbnf:k <- $r0
	@DEBUG_VALUE: basicmath___scalbnf:x <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:ix <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:k <- $r0
	.loc	2 739 8 is_stmt 1               @ cosf/wcclibm.c:739:8
	cmp	r0, #255
	beq	.LBB9_2
.Ltmp327:
.LBB9_5:                                @ %if.end12
	@DEBUG_VALUE: basicmath___scalbnf:k <- $r0
	@DEBUG_VALUE: basicmath___scalbnf:ix <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:x <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:n <- $r4
	@DEBUG_VALUE: basicmath___scalbnf:k <- undef
	.loc	2 0 8 is_stmt 0                 @ cosf/wcclibm.c:0:8
	mov	r2, #848
	orr	r2, r2, #49152
.Ltmp328:
	.loc	2 741 18 is_stmt 1              @ cosf/wcclibm.c:741:18
	cmp	r4, r2
.Ltmp329:
	.loc	2 0 0 is_stmt 0                 @ cosf/wcclibm.c:0:0
	addle	r0, r0, r4
.Ltmp330:
	@DEBUG_VALUE: basicmath___scalbnf:k <- $r0
	.loc	2 741 8                         @ cosf/wcclibm.c:741:8
	cmple	r0, #255
	blt	.LBB9_11
.Ltmp331:
@ %bb.6:                                @ %if.then16
	@DEBUG_VALUE: basicmath___scalbnf:k <- $r0
	@DEBUG_VALUE: basicmath___scalbnf:ix <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:x <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:n <- $r4
	.loc	2 0 8                           @ cosf/wcclibm.c:0:8
	ldr	r4, .LCPI9_2
.Ltmp332:
	@DEBUG_VALUE: basicmath___scalbnf:n <- [DW_OP_LLVM_entry_value 1] $r1
.LBB9_7:                                @ %return
	@DEBUG_VALUE: basicmath___scalbnf:n <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: basicmath___scalbnf:k <- $r0
	@DEBUG_VALUE: basicmath___scalbnf:ix <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:x <- $r1
	mov	r0, r4
.Ltmp333:
	bl	basicmath___copysignf
.Ltmp334:
	mov	r1, r4
.Ltmp335:
.LBB9_8:                                @ %return
	bl	__mulsf3
.LBB9_9:                                @ %return
	mov	r1, r0
.LBB9_10:                               @ %return
	.loc	2 757 1 is_stmt 1               @ cosf/wcclibm.c:757:1
	mov	r0, r1
	pop	{r4, r10, r11, lr}
	bx	lr
.LBB9_11:                               @ %if.end18
.Ltmp336:
	@DEBUG_VALUE: basicmath___scalbnf:k <- $r0
	@DEBUG_VALUE: basicmath___scalbnf:ix <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:x <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:n <- $r4
	.loc	2 0 1 is_stmt 0                 @ cosf/wcclibm.c:0:1
	mvn	r2, #80
	sub	r2, r2, #49920
	.loc	2 744 8 is_stmt 1               @ cosf/wcclibm.c:744:8
	cmp	r4, r2
	bgt	.LBB9_13
.Ltmp337:
.LBB9_12:                               @ %if.then20
	@DEBUG_VALUE: basicmath___scalbnf:k <- $r0
	@DEBUG_VALUE: basicmath___scalbnf:ix <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:x <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:n <- $r4
	.loc	2 0 8 is_stmt 0                 @ cosf/wcclibm.c:0:8
	ldr	r4, .LCPI9_1
.Ltmp338:
	@DEBUG_VALUE: basicmath___scalbnf:n <- [DW_OP_LLVM_entry_value 1] $r1
	b	.LBB9_7
.Ltmp339:
.LBB9_13:                               @ %if.end23
	@DEBUG_VALUE: basicmath___scalbnf:k <- $r0
	@DEBUG_VALUE: basicmath___scalbnf:ix <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:x <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:n <- $r4
	.loc	2 747 8 is_stmt 1               @ cosf/wcclibm.c:747:8
	cmp	r0, #1
	blt	.LBB9_15
.Ltmp340:
@ %bb.14:                               @ %if.then25
	@DEBUG_VALUE: basicmath___scalbnf:k <- $r0
	@DEBUG_VALUE: basicmath___scalbnf:ix <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:x <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:n <- $r4
	.loc	2 0 8 is_stmt 0                 @ cosf/wcclibm.c:0:8
	ldr	r2, .LCPI9_0
.Ltmp341:
	.loc	2 748 5 is_stmt 1               @ cosf/wcclibm.c:748:5
	and	r1, r1, r2
.Ltmp342:
	orr	r1, r1, r0, lsl #23
.Ltmp343:
	@DEBUG_VALUE: sf_u <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:x <- undef
	.loc	2 0 5 is_stmt 0                 @ cosf/wcclibm.c:0:5
	b	.LBB9_10
.Ltmp344:
.LBB9_15:                               @ %if.end29
	@DEBUG_VALUE: basicmath___scalbnf:k <- $r0
	@DEBUG_VALUE: basicmath___scalbnf:ix <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:x <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:n <- $r4
	.loc	2 751 8 is_stmt 1               @ cosf/wcclibm.c:751:8
	cmn	r0, #25
	ble	.LBB9_12
.Ltmp345:
@ %bb.16:                               @ %if.end34
	@DEBUG_VALUE: basicmath___scalbnf:k <- $r0
	@DEBUG_VALUE: basicmath___scalbnf:ix <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:x <- $r1
	@DEBUG_VALUE: basicmath___scalbnf:n <- $r4
	@DEBUG_VALUE: basicmath___scalbnf:k <- [DW_OP_plus_uconst 25, DW_OP_stack_value] $r0
	.loc	2 0 8 is_stmt 0                 @ cosf/wcclibm.c:0:8
	ldr	r2, .LCPI9_0
.Ltmp346:
	.loc	2 755 3 is_stmt 1               @ cosf/wcclibm.c:755:3
	add	r0, r0, #25
.Ltmp347:
	and	r1, r1, r2
.Ltmp348:
	orr	r0, r1, r0, lsl #23
.Ltmp349:
	@DEBUG_VALUE: sf_u <- $r0
	@DEBUG_VALUE: basicmath___scalbnf:x <- undef
	.loc	2 756 12                        @ cosf/wcclibm.c:756:12
	mov	r1, #855638016
	b	.LBB9_8
.Ltmp350:
	.p2align	2
@ %bb.17:
	.loc	2 0 12 is_stmt 0                @ cosf/wcclibm.c:0:12
.LCPI9_0:
	.long	2155872255                      @ 0x807fffff
.LCPI9_1:
	.long	228737632                       @ 0xda24260
.LCPI9_2:
	.long	1900671690                      @ 0x7149f2ca
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
	.loc	2 643 0 is_stmt 1               @ cosf/wcclibm.c:643:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: basicmath___copysignf:x <- $r0
	@DEBUG_VALUE: basicmath___copysignf:y <- $r1
	@DEBUG_VALUE: gf_u <- $r0
	@DEBUG_VALUE: basicmath___copysignf:ix <- $r0
	@DEBUG_VALUE: gf_u <- undef
	@DEBUG_VALUE: basicmath___copysignf:iy <- $r1
	.loc	2 647 3 prologue_end            @ cosf/wcclibm.c:647:3
	and	r1, r1, #-2147483648
.Ltmp351:
	@DEBUG_VALUE: basicmath___copysignf:y <- [DW_OP_LLVM_entry_value 1] $r1
	bic	r0, r0, #-2147483648
.Ltmp352:
	@DEBUG_VALUE: basicmath___copysignf:x <- [DW_OP_LLVM_entry_value 1] $r0
	orr	r0, r0, r1
.Ltmp353:
	@DEBUG_VALUE: sf_u <- $r0
	@DEBUG_VALUE: basicmath___copysignf:x <- undef
	.loc	2 648 3                         @ cosf/wcclibm.c:648:3
	bx	lr
.Ltmp354:
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
	.loc	2 399 0                         @ cosf/wcclibm.c:399:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r0
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r1
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
.Ltmp355:
	@DEBUG_VALUE: gf_u <- $r0
	mov	r5, r0
.Ltmp356:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	@DEBUG_VALUE: gf_u <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	.loc	2 404 11 prologue_end           @ cosf/wcclibm.c:404:11
	bic	r7, r0, #-2147483648
.Ltmp357:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	.loc	2 0 11 is_stmt 0                @ cosf/wcclibm.c:0:11
	ldr	r0, .LCPI11_0
	mov	r4, r1
.Ltmp358:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	.loc	2 405 8 is_stmt 1               @ cosf/wcclibm.c:405:8
	cmp	r7, r0
	bhi	.LBB11_2
.Ltmp359:
@ %bb.1:                                @ %if.then
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	.loc	2 0 8 is_stmt 0                 @ cosf/wcclibm.c:0:8
	mov	r6, #0
.Ltmp360:
	.loc	2 406 12 is_stmt 1              @ cosf/wcclibm.c:406:12
	stm	r4, {r5, r6}
	b	.LBB11_23
.Ltmp361:
.LBB11_2:                               @ %if.end
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	.loc	2 0 12 is_stmt 0                @ cosf/wcclibm.c:0:12
	ldr	r0, .LCPI11_1
	.loc	2 410 8 is_stmt 1               @ cosf/wcclibm.c:410:8
	cmp	r7, r0
	bhi	.LBB11_6
.Ltmp362:
@ %bb.3:                                @ %if.then3
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	.loc	2 411 10                        @ cosf/wcclibm.c:411:10
	cmp	r5, #1
	blt	.LBB11_17
.Ltmp363:
@ %bb.4:                                @ %if.then5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	.loc	2 0 10 is_stmt 0                @ cosf/wcclibm.c:0:10
	ldr	r1, .LCPI11_4
.Ltmp364:
	.loc	2 412 13 is_stmt 1              @ cosf/wcclibm.c:412:13
	mov	r0, r5
	bl	__addsf3
	ldr	r1, .LCPI11_12
	mov	r6, r0
.Ltmp365:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:z <- undef
	.loc	2 413 17                        @ cosf/wcclibm.c:413:17
	bic	r0, r5, #-2147483633
.Ltmp366:
	.loc	2 413 12 is_stmt 0              @ cosf/wcclibm.c:413:12
	cmp	r0, r1
	bne	.LBB11_19
.Ltmp367:
@ %bb.5:                                @ %if.else
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	.loc	2 0 12                          @ cosf/wcclibm.c:0:12
	ldr	r1, .LCPI11_14
.Ltmp368:
	.loc	2 417 11 is_stmt 1              @ cosf/wcclibm.c:417:11
	mov	r0, r6
	bl	__addsf3
	ldr	r6, .LCPI11_15
	mov	r5, r0
.Ltmp369:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:z <- undef
	.loc	2 418 20                        @ cosf/wcclibm.c:418:20
	mov	r1, r6
	bl	__addsf3
	mov	r1, r0
	.loc	2 418 16 is_stmt 0              @ cosf/wcclibm.c:418:16
	str	r0, [r4]
	.loc	2 419 22 is_stmt 1              @ cosf/wcclibm.c:419:22
	mov	r0, r5
	bl	__subsf3
	.loc	2 419 33 is_stmt 0              @ cosf/wcclibm.c:419:33
	mov	r1, r6
	b	.LBB11_20
.Ltmp370:
.LBB11_6:                               @ %if.end42
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	.loc	2 0 33                          @ cosf/wcclibm.c:0:33
	ldr	r0, .LCPI11_2
	.loc	2 435 8 is_stmt 1               @ cosf/wcclibm.c:435:8
	cmp	r7, r0
	bhi	.LBB11_16
.Ltmp371:
@ %bb.7:                                @ %if.then44
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	.loc	2 436 10                        @ cosf/wcclibm.c:436:10
	mov	r0, r5
	bl	basicmath___fabsf
	ldr	r1, .LCPI11_3
	mov	r9, r0
.Ltmp372:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:t <- undef
	.loc	2 437 46                        @ cosf/wcclibm.c:437:46
	bl	__mulsf3
	mov	r1, #1056964608
	bl	__addsf3
	.loc	2 437 10 is_stmt 0              @ cosf/wcclibm.c:437:10
	bl	__fixsfsi
	mov	r6, r0
.Ltmp373:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:n <- $r6
	.loc	2 438 10 is_stmt 1              @ cosf/wcclibm.c:438:10
	bl	__floatsisf
	ldr	r1, .LCPI11_4
	mov	r8, r0
.Ltmp374:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:fn <- undef
	.loc	2 439 12                        @ cosf/wcclibm.c:439:12
	bl	__mulsf3
	mov	r1, r0
	mov	r0, r9
	bl	__addsf3
	ldr	r1, .LCPI11_5
	mov	r9, r0
.Ltmp375:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:r <- undef
	.loc	2 440 13                        @ cosf/wcclibm.c:440:13
	mov	r0, r8
	bl	__mulsf3
	mov	r10, r0
.Ltmp376:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:w <- undef
	.loc	2 441 17                        @ cosf/wcclibm.c:441:17
	cmp	r6, #31
	bgt	.LBB11_9
.Ltmp377:
@ %bb.8:                                @ %land.lhs.true
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:n <- $r6
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	.loc	2 441 54 is_stmt 0              @ cosf/wcclibm.c:441:54
	ldr	r1, .LCPI11_6
	mvn	r0, #255
	sub	r0, r0, #-2147483648
	.loc	2 441 36                        @ cosf/wcclibm.c:441:36
	and	r0, r5, r0
	.loc	2 441 54                        @ cosf/wcclibm.c:441:54
	add	r1, r1, r6, lsl #2
	ldr	r1, [r1, #-4]
.Ltmp378:
	.loc	2 441 10                        @ cosf/wcclibm.c:441:10
	cmp	r0, r1
	bne	.LBB11_12
.Ltmp379:
.LBB11_9:                               @ %if.else56
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:n <- $r6
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	.loc	2 446 18 is_stmt 1              @ cosf/wcclibm.c:446:18
	mov	r0, r9
	mov	r1, r10
	bl	__subsf3
.Ltmp380:
	@DEBUG_VALUE: high <- $r0
	@DEBUG_VALUE: gf_u <- undef
	.loc	2 0 18 is_stmt 0                @ cosf/wcclibm.c:0:18
	mov	r1, #255
	.loc	2 446 14                        @ cosf/wcclibm.c:446:14
	str	r0, [r4]
	.loc	2 448 32 is_stmt 1              @ cosf/wcclibm.c:448:32
	and	r0, r1, r0, lsr #23
.Ltmp381:
	.loc	2 448 13 is_stmt 0              @ cosf/wcclibm.c:448:13
	rsb	r0, r0, r7, lsr #23
.Ltmp382:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:j <- undef
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:i <- $r0
	.loc	2 449 12 is_stmt 1              @ cosf/wcclibm.c:449:12
	cmp	r0, #9
	blt	.LBB11_14
.Ltmp383:
@ %bb.10:                               @ %if.then68
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:i <- $r0
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:n <- $r6
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	.loc	2 0 12 is_stmt 0                @ cosf/wcclibm.c:0:12
	ldr	r1, .LCPI11_7
	lsr	r0, r7, #23
.Ltmp384:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:j <- $r0
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:t <- $r9
	str	r0, [sp]                        @ 4-byte Spill
.Ltmp385:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:j <- [$sp+0]
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:j <- [$sp+0]
	.loc	2 451 17 is_stmt 1              @ cosf/wcclibm.c:451:17
	mov	r0, r8
	bl	__mulsf3
	mov	r7, r0
.Ltmp386:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:w <- undef
	.loc	2 452 16                        @ cosf/wcclibm.c:452:16
	mov	r0, r9
	mov	r1, r7
	bl	__subsf3
	mov	r1, r0
.Ltmp387:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:r <- undef
	.loc	2 453 45                        @ cosf/wcclibm.c:453:45
	mov	r0, r9
	mov	r9, r1
.Ltmp388:
	bl	__subsf3
	.loc	2 453 51 is_stmt 0              @ cosf/wcclibm.c:453:51
	mov	r1, r7
	bl	__subsf3
	ldr	r1, .LCPI11_8
	mov	r7, r0
	.loc	2 453 37                        @ cosf/wcclibm.c:453:37
	mov	r0, r8
	bl	__mulsf3
	mov	r1, r7
	bl	__subsf3
	mov	r10, r0
	.loc	2 454 20 is_stmt 1              @ cosf/wcclibm.c:454:20
	mov	r0, r9
	mov	r1, r10
	bl	__subsf3
.Ltmp389:
	@DEBUG_VALUE: gf_u <- undef
	@DEBUG_VALUE: high <- $r0
	.loc	2 456 15                        @ cosf/wcclibm.c:456:15
	ldr	r2, [sp]                        @ 4-byte Reload
.Ltmp390:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:j <- $r2
	.loc	2 456 34 is_stmt 0              @ cosf/wcclibm.c:456:34
	mov	r1, #255
	and	r1, r1, r0, lsr #23
	.loc	2 456 15                        @ cosf/wcclibm.c:456:15
	sub	r1, r2, r1
.Ltmp391:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:i <- $r1
	.loc	2 457 14 is_stmt 1              @ cosf/wcclibm.c:457:14
	cmp	r1, #26
	blt	.LBB11_13
.Ltmp392:
@ %bb.11:                               @ %if.then86
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:i <- $r1
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:j <- $r2
	@DEBUG_VALUE: high <- $r0
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:n <- $r6
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:t <- $r9
	.loc	2 0 14 is_stmt 0                @ cosf/wcclibm.c:0:14
	ldr	r1, .LCPI11_9
.Ltmp393:
	.loc	2 459 19 is_stmt 1              @ cosf/wcclibm.c:459:19
	mov	r0, r8
.Ltmp394:
	bl	__mulsf3
.Ltmp395:
	mov	r7, r0
.Ltmp396:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:w <- undef
	.loc	2 460 18                        @ cosf/wcclibm.c:460:18
	mov	r0, r9
	mov	r1, r7
	bl	__subsf3
	mov	r1, r9
.Ltmp397:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:t <- $r1
	mov	r9, r0
.Ltmp398:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:r <- undef
	.loc	2 461 47                        @ cosf/wcclibm.c:461:47
	mov	r0, r1
	mov	r1, r9
.Ltmp399:
	bl	__subsf3
	.loc	2 461 53 is_stmt 0              @ cosf/wcclibm.c:461:53
	mov	r1, r7
	bl	__subsf3
	ldr	r1, .LCPI11_10
	mov	r7, r0
	.loc	2 461 39                        @ cosf/wcclibm.c:461:39
	mov	r0, r8
	bl	__mulsf3
	mov	r1, r7
	bl	__subsf3
	mov	r10, r0
.Ltmp400:
.LBB11_12:                              @ %if.end95
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:n <- $r6
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	.loc	2 0 0                           @ cosf/wcclibm.c:0:0
	mov	r0, r9
	mov	r1, r10
	bl	__subsf3
.Ltmp401:
.LBB11_13:                              @ %if.end95
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:n <- $r6
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	str	r0, [r4]
.Ltmp402:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:w <- $r10
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:r <- $r9
.LBB11_14:                              @ %if.end97
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:n <- $r6
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:r <- $r9
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:w <- $r10
	.loc	2 466 20 is_stmt 1              @ cosf/wcclibm.c:466:20
	ldr	r1, [r4]
	.loc	2 466 18 is_stmt 0              @ cosf/wcclibm.c:466:18
	mov	r0, r9
	bl	__subsf3
	.loc	2 466 29                        @ cosf/wcclibm.c:466:29
	mov	r1, r10
	bl	__subsf3
	.loc	2 467 10 is_stmt 1              @ cosf/wcclibm.c:467:10
	cmn	r5, #1
	.loc	2 466 12                        @ cosf/wcclibm.c:466:12
	str	r0, [r4, #4]
	.loc	2 467 10                        @ cosf/wcclibm.c:467:10
	bgt	.LBB11_23
.Ltmp403:
@ %bb.15:                               @ %if.then104
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:r <- $r9
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:w <- $r10
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:n <- $r6
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	.loc	2 468 17                        @ cosf/wcclibm.c:468:17
	ldm	r4, {r0, r1}
	.loc	2 470 14                        @ cosf/wcclibm.c:470:14
	rsb	r6, r6, #0
.Ltmp404:
	.loc	2 469 16                        @ cosf/wcclibm.c:469:16
	eor	r1, r1, #-2147483648
	.loc	2 468 16                        @ cosf/wcclibm.c:468:16
	eor	r0, r0, #-2147483648
	.loc	2 468 14 is_stmt 0              @ cosf/wcclibm.c:468:14
	stm	r4, {r0, r1}
	b	.LBB11_23
.Ltmp405:
.LBB11_16:                              @ %if.end112
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	.loc	2 476 8 is_stmt 1               @ cosf/wcclibm.c:476:8
	lsr	r0, r7, #23
	.loc	2 0 0 is_stmt 0                 @ cosf/wcclibm.c:0:0
	mov	r1, r5
	.loc	2 476 8                         @ cosf/wcclibm.c:476:8
	cmp	r0, #255
	.loc	2 0 0                           @ cosf/wcclibm.c:0:0
	mov	r0, r5
	bl	__subsf3
	mov	r6, #0
	str	r0, [r4]
	str	r0, [r4, #4]
	b	.LBB11_23
.Ltmp406:
.LBB11_17:                              @ %if.else23
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	ldr	r1, .LCPI11_11
.Ltmp407:
	.loc	2 423 13 is_stmt 1              @ cosf/wcclibm.c:423:13
	mov	r0, r5
	bl	__addsf3
	ldr	r1, .LCPI11_12
	mov	r6, r0
.Ltmp408:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:z <- undef
	.loc	2 424 17                        @ cosf/wcclibm.c:424:17
	bic	r0, r5, #-2147483633
.Ltmp409:
	.loc	2 424 12 is_stmt 0              @ cosf/wcclibm.c:424:12
	cmp	r0, r1
	bne	.LBB11_21
.Ltmp410:
@ %bb.18:                               @ %if.else33
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	.loc	2 0 12                          @ cosf/wcclibm.c:0:12
	ldr	r1, .LCPI11_7
.Ltmp411:
	.loc	2 428 11 is_stmt 1              @ cosf/wcclibm.c:428:11
	mov	r0, r6
	bl	__addsf3
	ldr	r6, .LCPI11_8
	mov	r5, r0
.Ltmp412:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:z <- undef
	.loc	2 429 20                        @ cosf/wcclibm.c:429:20
	mov	r1, r6
	bl	__addsf3
	mov	r1, r0
	.loc	2 429 16 is_stmt 0              @ cosf/wcclibm.c:429:16
	str	r0, [r4]
	.loc	2 430 22 is_stmt 1              @ cosf/wcclibm.c:430:22
	mov	r0, r5
	bl	__subsf3
	.loc	2 430 33 is_stmt 0              @ cosf/wcclibm.c:430:33
	mov	r1, r6
	b	.LBB11_22
.Ltmp413:
.LBB11_19:                              @ %if.then8
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	.loc	2 0 33                          @ cosf/wcclibm.c:0:33
	ldr	r5, .LCPI11_13
.Ltmp414:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	2 414 20 is_stmt 1              @ cosf/wcclibm.c:414:20
	mov	r0, r6
	mov	r1, r5
	bl	__addsf3
	mov	r1, r0
	.loc	2 414 16 is_stmt 0              @ cosf/wcclibm.c:414:16
	str	r0, [r4]
	.loc	2 415 22 is_stmt 1              @ cosf/wcclibm.c:415:22
	mov	r0, r6
	bl	__subsf3
	.loc	2 415 33 is_stmt 0              @ cosf/wcclibm.c:415:33
	mov	r1, r5
.Ltmp415:
.LBB11_20:                              @ %return
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	.loc	2 0 0                           @ cosf/wcclibm.c:0:0
	bl	__addsf3
	str	r0, [r4, #4]
	mov	r6, #1
	b	.LBB11_23
.Ltmp416:
.LBB11_21:                              @ %if.then26
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- $r5
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:hx <- $r5
	ldr	r5, .LCPI11_5
.Ltmp417:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	2 425 20 is_stmt 1              @ cosf/wcclibm.c:425:20
	mov	r0, r6
	mov	r1, r5
	bl	__addsf3
	mov	r1, r0
	.loc	2 425 16 is_stmt 0              @ cosf/wcclibm.c:425:16
	str	r0, [r4]
	.loc	2 426 22 is_stmt 1              @ cosf/wcclibm.c:426:22
	mov	r0, r6
	bl	__subsf3
	.loc	2 426 33 is_stmt 0              @ cosf/wcclibm.c:426:33
	mov	r1, r5
.Ltmp418:
.LBB11_22:                              @ %return
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:ix <- $r7
	.loc	2 0 0                           @ cosf/wcclibm.c:0:0
	bl	__addsf3
	str	r0, [r4, #4]
	mvn	r6, #0
.Ltmp419:
.LBB11_23:                              @ %return
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- $r4
	.loc	2 486 1 is_stmt 1               @ cosf/wcclibm.c:486:1
	mov	r0, r6
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
.Ltmp420:
	@DEBUG_VALUE: basicmath___ieee754_rem_pio2f:y <- [DW_OP_LLVM_entry_value 1] $r1
	bx	lr
.Ltmp421:
	.p2align	2
@ %bb.24:
	.loc	2 0 1 is_stmt 0                 @ cosf/wcclibm.c:0:1
.LCPI11_0:
	.long	1061752792                      @ 0x3f490fd8
.LCPI11_1:
	.long	1075235811                      @ 0x4016cbe3
.LCPI11_2:
	.long	1128861568                      @ 0x43490f80
.LCPI11_3:
	.long	1059256708                      @ 0x3f22f984
.LCPI11_4:
	.long	3217624960                      @ 0xbfc90f80
.LCPI11_5:
	.long	926237763                       @ 0x37354443
.LCPI11_6:
	.long	basicmath_npio2_hw
.LCPI11_7:
	.long	926237696                       @ 0x37354400
.LCPI11_8:
	.long	780509960                       @ 0x2e85a308
.LCPI11_9:
	.long	780509952                       @ 0x2e85a300
.LCPI11_10:
	.long	613232946                       @ 0x248d3132
.LCPI11_11:
	.long	1070141312                      @ 0x3fc90f80
.LCPI11_12:
	.long	1070141392                      @ 0x3fc90fd0
.LCPI11_13:
	.long	3073721411                      @ 0xb7354443
.LCPI11_14:
	.long	3073721344                      @ 0xb7354400
.LCPI11_15:
	.long	2927993608                      @ 0xae85a308
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
	.loc	2 575 0 is_stmt 1               @ cosf/wcclibm.c:575:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: basicmath___kernel_cosf:x <- $r0
	@DEBUG_VALUE: basicmath___kernel_cosf:y <- $r1
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
.Ltmp422:
	@DEBUG_VALUE: gf_u <- $r0
	.loc	2 579 6 prologue_end            @ cosf/wcclibm.c:579:6
	bic	r5, r0, #-2147483648
.Ltmp423:
	@DEBUG_VALUE: basicmath___kernel_cosf:ix <- $r5
	.loc	2 0 6 is_stmt 0                 @ cosf/wcclibm.c:0:6
	mov	r6, r0
.Ltmp424:
	@DEBUG_VALUE: basicmath___kernel_cosf:x <- $r6
	@DEBUG_VALUE: basicmath___kernel_cosf:ix <- $r6
	@DEBUG_VALUE: gf_u <- $r6
	@DEBUG_VALUE: basicmath___kernel_cosf:x <- $r6
	mov	r8, r1
.Ltmp425:
	@DEBUG_VALUE: basicmath___kernel_cosf:y <- $r8
	@DEBUG_VALUE: basicmath___kernel_cosf:y <- $r8
	.loc	2 580 8 is_stmt 1               @ cosf/wcclibm.c:580:8
	lsr	r0, r5, #25
	cmp	r0, #24
	bhi	.LBB12_2
.Ltmp426:
@ %bb.1:                                @ %if.then
	@DEBUG_VALUE: basicmath___kernel_cosf:y <- $r8
	@DEBUG_VALUE: basicmath___kernel_cosf:ix <- $r6
	@DEBUG_VALUE: basicmath___kernel_cosf:x <- $r6
	.loc	2 581 12                        @ cosf/wcclibm.c:581:12
	mov	r0, r6
	bl	__fixsfsi
.Ltmp427:
	.loc	2 581 10 is_stmt 0              @ cosf/wcclibm.c:581:10
	cmp	r0, #0
	moveq	r0, #1065353216
.Ltmp428:
	.loc	2 598 1 is_stmt 1               @ cosf/wcclibm.c:598:1
	popeq	{r4, r5, r6, r7, r8, r9, r11, lr}
.Ltmp429:
	@DEBUG_VALUE: basicmath___kernel_cosf:y <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: basicmath___kernel_cosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	bxeq	lr
.Ltmp430:
.LBB12_2:                               @ %if.end4
	@DEBUG_VALUE: basicmath___kernel_cosf:y <- $r8
	.loc	2 583 10                        @ cosf/wcclibm.c:583:10
	mov	r0, r6
	mov	r1, r6
	bl	__mulsf3
	ldr	r1, .LCPI12_0
	mov	r4, r0
.Ltmp431:
	@DEBUG_VALUE: basicmath___kernel_cosf:z <- undef
	.loc	2 585 71                        @ cosf/wcclibm.c:585:71
	bl	__mulsf3
	ldr	r1, .LCPI12_1
	bl	__addsf3
	mov	r1, r0
	.loc	2 585 50 is_stmt 0              @ cosf/wcclibm.c:585:50
	mov	r0, r4
	bl	__mulsf3
	ldr	r1, .LCPI12_2
	bl	__addsf3
	mov	r1, r0
	.loc	2 584 69 is_stmt 1              @ cosf/wcclibm.c:584:69
	mov	r0, r4
	bl	__mulsf3
	ldr	r1, .LCPI12_3
	bl	__addsf3
	mov	r1, r0
	.loc	2 584 48 is_stmt 0              @ cosf/wcclibm.c:584:48
	mov	r0, r4
	bl	__mulsf3
	ldr	r1, .LCPI12_4
	bl	__addsf3
	mov	r1, r0
	.loc	2 584 27                        @ cosf/wcclibm.c:584:27
	mov	r0, r4
	bl	__mulsf3
	ldr	r1, .LCPI12_5
	bl	__addsf3
	mov	r1, r0
	.loc	2 584 10                        @ cosf/wcclibm.c:584:10
	mov	r0, r4
	bl	__mulsf3
	mov	r7, r0
	ldr	r0, .LCPI12_6
.Ltmp432:
	@DEBUG_VALUE: basicmath___kernel_cosf:r <- undef
	.loc	2 586 8 is_stmt 1               @ cosf/wcclibm.c:586:8
	cmp	r5, r0
	bhi	.LBB12_4
.Ltmp433:
@ %bb.3:                                @ %if.then13
	@DEBUG_VALUE: basicmath___kernel_cosf:y <- $r8
	.loc	2 587 58                        @ cosf/wcclibm.c:587:58
	mov	r0, r6
	mov	r1, r8
	bl	__mulsf3
	mov	r5, r0
	mov	r0, r4
	mov	r1, r7
	bl	__mulsf3
	mov	r1, r5
	bl	__subsf3
	mov	r5, r0
	.loc	2 587 48 is_stmt 0              @ cosf/wcclibm.c:587:48
	mov	r0, r4
	mov	r1, #1056964608
	bl	__mulsf3
	mov	r1, r5
	bl	__subsf3
	mov	r1, r0
	.loc	2 587 26                        @ cosf/wcclibm.c:587:26
	mov	r0, #1065353216
	b	.LBB12_5
.Ltmp434:
.LBB12_4:                               @ %if.else
	@DEBUG_VALUE: basicmath___kernel_cosf:y <- $r8
	.loc	2 0 26                          @ cosf/wcclibm.c:0:26
	mov	r0, #55050240
.Ltmp435:
	.loc	2 594 28 is_stmt 1              @ cosf/wcclibm.c:594:28
	mov	r1, #1056964608
	orr	r0, r0, #1006632960
	.loc	2 589 10                        @ cosf/wcclibm.c:589:10
	cmp	r5, r0
	.loc	2 594 28                        @ cosf/wcclibm.c:594:28
	mov	r0, r4
.Ltmp436:
	.loc	2 592 7                         @ cosf/wcclibm.c:592:7
	addls	r5, r5, #-16777216
	movhi	r5, #244318208
	orrhi	r5, r5, #805306368
.Ltmp437:
	@DEBUG_VALUE: basicmath___kernel_cosf:qx <- $r5
	.loc	2 594 28                        @ cosf/wcclibm.c:594:28
	bl	__mulsf3
	mov	r1, r5
	bl	__subsf3
	mov	r9, r0
.Ltmp438:
	@DEBUG_VALUE: basicmath___kernel_cosf:hz <- undef
	.loc	2 595 24                        @ cosf/wcclibm.c:595:24
	mov	r0, #1065353216
	mov	r1, r5
	bl	__subsf3
	mov	r5, r0
.Ltmp439:
	@DEBUG_VALUE: basicmath___kernel_cosf:a <- undef
	.loc	2 596 31                        @ cosf/wcclibm.c:596:31
	mov	r0, r6
	mov	r1, r8
	bl	__mulsf3
	mov	r6, r0
	mov	r0, r4
	mov	r1, r7
	bl	__mulsf3
	mov	r1, r6
	bl	__subsf3
	mov	r1, r0
	.loc	2 596 21 is_stmt 0              @ cosf/wcclibm.c:596:21
	mov	r0, r9
	bl	__subsf3
	mov	r1, r0
	.loc	2 596 14                        @ cosf/wcclibm.c:596:14
	mov	r0, r5
.Ltmp440:
.LBB12_5:                               @ %return
	@DEBUG_VALUE: basicmath___kernel_cosf:y <- $r8
	.loc	2 0 0                           @ cosf/wcclibm.c:0:0
	bl	__subsf3
.Ltmp441:
	.loc	2 598 1 is_stmt 1               @ cosf/wcclibm.c:598:1
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
.Ltmp442:
	bx	lr
.Ltmp443:
	.p2align	2
@ %bb.6:
	.loc	2 0 1 is_stmt 0                 @ cosf/wcclibm.c:0:1
.LCPI12_0:
	.long	2907166542                      @ 0xad47d74e
.LCPI12_1:
	.long	823096566                       @ 0x310f74f6
.LCPI12_2:
	.long	3029594748                      @ 0xb493f27c
.LCPI12_3:
	.long	936381697                       @ 0x37d00d01
.LCPI12_4:
	.long	3132492641                      @ 0xbab60b61
.LCPI12_5:
	.long	1026206379                      @ 0x3d2aaaab
.LCPI12_6:
	.long	1050253721                      @ 0x3e999999
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
	.loc	2 613 0 is_stmt 1               @ cosf/wcclibm.c:613:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: basicmath___kernel_sinf:x <- $r0
	@DEBUG_VALUE: basicmath___kernel_sinf:y <- $r1
	@DEBUG_VALUE: basicmath___kernel_sinf:iy <- $r2
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
.Ltmp444:
	@DEBUG_VALUE: gf_u <- $r0
	mov	r4, r0
.Ltmp445:
	@DEBUG_VALUE: basicmath___kernel_sinf:ix <- $r4
	@DEBUG_VALUE: gf_u <- $r4
	@DEBUG_VALUE: basicmath___kernel_sinf:x <- $r4
	.loc	2 617 6 prologue_end            @ cosf/wcclibm.c:617:6
	and	r0, r0, #2113929216
.Ltmp446:
	@DEBUG_VALUE: basicmath___kernel_sinf:ix <- [DW_OP_constu 2113929216, DW_OP_and, DW_OP_stack_value] $r4
	.loc	2 0 6 is_stmt 0                 @ cosf/wcclibm.c:0:6
	mov	r5, r2
.Ltmp447:
	@DEBUG_VALUE: basicmath___kernel_sinf:iy <- $r5
	@DEBUG_VALUE: basicmath___kernel_sinf:iy <- $r5
	mov	r8, r1
.Ltmp448:
	@DEBUG_VALUE: basicmath___kernel_sinf:y <- $r8
	@DEBUG_VALUE: basicmath___kernel_sinf:y <- $r8
	.loc	2 618 8 is_stmt 1               @ cosf/wcclibm.c:618:8
	lsr	r0, r0, #25
	cmp	r0, #24
	bhi	.LBB13_2
.Ltmp449:
@ %bb.1:                                @ %if.then
	@DEBUG_VALUE: basicmath___kernel_sinf:y <- $r8
	@DEBUG_VALUE: basicmath___kernel_sinf:iy <- $r5
	@DEBUG_VALUE: basicmath___kernel_sinf:ix <- [DW_OP_constu 2113929216, DW_OP_and, DW_OP_stack_value] $r4
	@DEBUG_VALUE: basicmath___kernel_sinf:x <- $r4
	.loc	2 619 10                        @ cosf/wcclibm.c:619:10
	mov	r0, r4
	bl	__fixsfsi
.Ltmp450:
	.loc	2 619 10 is_stmt 0              @ cosf/wcclibm.c:619:10
	cmp	r0, #0
	beq	.LBB13_6
.Ltmp451:
.LBB13_2:                               @ %if.end4
	@DEBUG_VALUE: basicmath___kernel_sinf:y <- $r8
	@DEBUG_VALUE: basicmath___kernel_sinf:iy <- $r5
	@DEBUG_VALUE: basicmath___kernel_sinf:ix <- [DW_OP_constu 2113929216, DW_OP_and, DW_OP_stack_value] $r4
	@DEBUG_VALUE: basicmath___kernel_sinf:x <- $r4
	@DEBUG_VALUE: basicmath___kernel_sinf:y <- $r8
	.loc	2 621 10 is_stmt 1              @ cosf/wcclibm.c:621:10
	mov	r0, r4
	mov	r1, r4
	bl	__mulsf3
	.loc	2 622 10                        @ cosf/wcclibm.c:622:10
	mov	r1, r4
	.loc	2 621 10                        @ cosf/wcclibm.c:621:10
	mov	r7, r0
.Ltmp452:
	@DEBUG_VALUE: basicmath___kernel_sinf:z <- undef
	.loc	2 622 10                        @ cosf/wcclibm.c:622:10
	bl	__mulsf3
	ldr	r1, .LCPI13_0
	mov	r6, r0
.Ltmp453:
	@DEBUG_VALUE: basicmath___kernel_sinf:v <- undef
	.loc	2 624 44                        @ cosf/wcclibm.c:624:44
	mov	r0, r7
	bl	__mulsf3
	ldr	r1, .LCPI13_1
	bl	__addsf3
	mov	r1, r0
	.loc	2 623 63                        @ cosf/wcclibm.c:623:63
	mov	r0, r7
	bl	__mulsf3
	ldr	r1, .LCPI13_2
	bl	__addsf3
	mov	r1, r0
	.loc	2 623 42 is_stmt 0              @ cosf/wcclibm.c:623:42
	mov	r0, r7
	bl	__mulsf3
	ldr	r1, .LCPI13_3
	bl	__addsf3
	mov	r1, r0
	.loc	2 623 21                        @ cosf/wcclibm.c:623:21
	mov	r0, r7
	bl	__mulsf3
	ldr	r1, .LCPI13_4
	bl	__addsf3
	mov	r1, r0
.Ltmp454:
	@DEBUG_VALUE: basicmath___kernel_sinf:r <- undef
	.loc	2 625 8 is_stmt 1               @ cosf/wcclibm.c:625:8
	cmp	r5, #0
	beq	.LBB13_4
.Ltmp455:
@ %bb.3:                                @ %if.else
	@DEBUG_VALUE: basicmath___kernel_sinf:y <- $r8
	@DEBUG_VALUE: basicmath___kernel_sinf:iy <- $r5
	@DEBUG_VALUE: basicmath___kernel_sinf:ix <- [DW_OP_constu 2113929216, DW_OP_and, DW_OP_stack_value] $r4
	@DEBUG_VALUE: basicmath___kernel_sinf:x <- $r4
	@DEBUG_VALUE: basicmath___kernel_sinf:y <- $r8
	.loc	2 626 53                        @ cosf/wcclibm.c:626:53
	mov	r0, r1
	mov	r1, r6
	bl	__mulsf3
	mov	r5, r0
.Ltmp456:
	@DEBUG_VALUE: basicmath___kernel_sinf:iy <- [DW_OP_LLVM_entry_value 1] $r2
	mov	r0, r8
	mov	r1, #1056964608
	bl	__mulsf3
	mov	r1, r5
	bl	__subsf3
	mov	r1, r0
	.loc	2 626 63 is_stmt 0              @ cosf/wcclibm.c:626:63
	mov	r0, r7
	bl	__mulsf3
	mov	r1, r8
	bl	__subsf3
	ldr	r1, .LCPI13_5
	mov	r5, r0
	.loc	2 626 69                        @ cosf/wcclibm.c:626:69
	mov	r0, r6
	bl	__mulsf3
	mov	r1, r0
	mov	r0, r5
	bl	__addsf3
	mov	r1, r0
	.loc	2 626 22                        @ cosf/wcclibm.c:626:22
	mov	r0, r4
	bl	__subsf3
	b	.LBB13_5
.Ltmp457:
.LBB13_4:                               @ %if.then12
	@DEBUG_VALUE: basicmath___kernel_sinf:y <- $r8
	@DEBUG_VALUE: basicmath___kernel_sinf:iy <- $r5
	@DEBUG_VALUE: basicmath___kernel_sinf:ix <- [DW_OP_constu 2113929216, DW_OP_and, DW_OP_stack_value] $r4
	@DEBUG_VALUE: basicmath___kernel_sinf:x <- $r4
	.loc	2 625 48 is_stmt 1              @ cosf/wcclibm.c:625:48
	mov	r0, r7
	bl	__mulsf3
	ldr	r1, .LCPI13_6
	bl	__addsf3
	mov	r1, r0
	.loc	2 625 27 is_stmt 0              @ cosf/wcclibm.c:625:27
	mov	r0, r6
	bl	__mulsf3
	mov	r1, r4
	bl	__addsf3
.Ltmp458:
.LBB13_5:                               @ %return
	@DEBUG_VALUE: basicmath___kernel_sinf:y <- $r8
	@DEBUG_VALUE: basicmath___kernel_sinf:ix <- [DW_OP_constu 2113929216, DW_OP_and, DW_OP_stack_value] $r4
	@DEBUG_VALUE: basicmath___kernel_sinf:x <- $r4
	.loc	2 0 0                           @ cosf/wcclibm.c:0:0
	mov	r4, r0
.Ltmp459:
	@DEBUG_VALUE: basicmath___kernel_sinf:x <- [DW_OP_LLVM_entry_value 1] $r0
.LBB13_6:                               @ %return
	@DEBUG_VALUE: basicmath___kernel_sinf:y <- $r8
	.loc	2 628 1 is_stmt 1               @ cosf/wcclibm.c:628:1
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
.Ltmp460:
	bx	lr
.Ltmp461:
	.p2align	2
@ %bb.7:
	.loc	2 0 1 is_stmt 0                 @ cosf/wcclibm.c:0:1
.LCPI13_0:
	.long	791595475                       @ 0x2f2ec9d3
.LCPI13_1:
	.long	3000446772                      @ 0xb2d72f34
.LCPI13_2:
	.long	909700891                       @ 0x3638ef1b
.LCPI13_3:
	.long	3109031169                      @ 0xb9500d01
.LCPI13_4:
	.long	1007192201                      @ 0x3c088889
.LCPI13_5:
	.long	1042983595                      @ 0x3e2aaaab
.LCPI13_6:
	.long	3190467243                      @ 0xbe2aaaab
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
	.loc	2 657 0 is_stmt 1               @ cosf/wcclibm.c:657:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: basicmath___cosf:x <- $r0
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
.Ltmp462:
	@DEBUG_VALUE: basicmath___cosf:z <- 0.000000e+00
	@DEBUG_VALUE: gf_u <- undef
	@DEBUG_VALUE: basicmath___cosf:ix <- $r0
	ldr	r2, .LCPI14_0
.Ltmp463:
	.loc	2 664 6 prologue_end            @ cosf/wcclibm.c:664:6
	bic	r1, r0, #-2147483648
.Ltmp464:
	@DEBUG_VALUE: basicmath___cosf:ix <- $r1
	.loc	2 665 8                         @ cosf/wcclibm.c:665:8
	cmp	r1, r2
	bhi	.LBB14_2
.Ltmp465:
@ %bb.1:                                @ %if.then
	@DEBUG_VALUE: basicmath___cosf:ix <- $r1
	@DEBUG_VALUE: basicmath___cosf:z <- 0.000000e+00
	@DEBUG_VALUE: basicmath___cosf:x <- $r0
	.loc	2 665 34 is_stmt 0              @ cosf/wcclibm.c:665:34
	mov	r1, #0
.Ltmp466:
	bl	basicmath___kernel_cosf
.Ltmp467:
	@DEBUG_VALUE: basicmath___cosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	2 0 34                          @ cosf/wcclibm.c:0:34
	b	.LBB14_11
.Ltmp468:
.LBB14_2:                               @ %if.else
	@DEBUG_VALUE: basicmath___cosf:ix <- $r1
	@DEBUG_VALUE: basicmath___cosf:z <- 0.000000e+00
	@DEBUG_VALUE: basicmath___cosf:x <- $r0
	.loc	2 669 10 is_stmt 1              @ cosf/wcclibm.c:669:10
	lsr	r1, r1, #23
.Ltmp469:
	cmp	r1, #255
	blo	.LBB14_4
.Ltmp470:
@ %bb.3:                                @ %if.then2
	@DEBUG_VALUE: basicmath___cosf:z <- 0.000000e+00
	@DEBUG_VALUE: basicmath___cosf:x <- $r0
	.loc	2 669 38 is_stmt 0              @ cosf/wcclibm.c:669:38
	mov	r1, r0
	bl	__subsf3
.Ltmp471:
	@DEBUG_VALUE: basicmath___cosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	.loc	2 0 38                          @ cosf/wcclibm.c:0:38
	b	.LBB14_11
.Ltmp472:
.LBB14_4:                               @ %if.else3
	@DEBUG_VALUE: basicmath___cosf:z <- 0.000000e+00
	@DEBUG_VALUE: basicmath___cosf:x <- $r0
	mov	r1, sp
.Ltmp473:
	.loc	2 673 11 is_stmt 1              @ cosf/wcclibm.c:673:11
	bl	basicmath___ieee754_rem_pio2f
.Ltmp474:
	@DEBUG_VALUE: basicmath___cosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___cosf:n <- $r0
	.loc	2 674 18                        @ cosf/wcclibm.c:674:18
	and	r0, r0, #3
.Ltmp475:
	.loc	2 674 7 is_stmt 0               @ cosf/wcclibm.c:674:7
	cmp	r0, #2
	beq	.LBB14_8
.Ltmp476:
@ %bb.5:                                @ %if.else3
	@DEBUG_VALUE: basicmath___cosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___cosf:z <- 0.000000e+00
	cmp	r0, #1
	beq	.LBB14_9
.Ltmp477:
@ %bb.6:                                @ %if.else3
	@DEBUG_VALUE: basicmath___cosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___cosf:z <- 0.000000e+00
	cmp	r0, #0
	bne	.LBB14_10
.Ltmp478:
@ %bb.7:                                @ %sw.bb
	@DEBUG_VALUE: basicmath___cosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___cosf:z <- 0.000000e+00
	.loc	2 676 19 is_stmt 1              @ cosf/wcclibm.c:676:19
	ldm	sp, {r0, r1}
	bl	basicmath___kernel_cosf
	b	.LBB14_11
.Ltmp479:
.LBB14_8:                               @ %sw.bb12
	@DEBUG_VALUE: basicmath___cosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___cosf:z <- 0.000000e+00
	.loc	2 680 19                        @ cosf/wcclibm.c:680:19
	ldm	sp, {r0, r1}
	bl	basicmath___kernel_cosf
	.loc	2 680 18 is_stmt 0              @ cosf/wcclibm.c:680:18
	eor	r0, r0, #-2147483648
	b	.LBB14_11
.Ltmp480:
.LBB14_9:                               @ %sw.bb8
	@DEBUG_VALUE: basicmath___cosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___cosf:z <- 0.000000e+00
	.loc	2 678 19 is_stmt 1              @ cosf/wcclibm.c:678:19
	ldm	sp, {r0, r1}
	mov	r2, #1
	bl	basicmath___kernel_sinf
	.loc	2 678 18 is_stmt 0              @ cosf/wcclibm.c:678:18
	eor	r0, r0, #-2147483648
	b	.LBB14_11
.Ltmp481:
.LBB14_10:                              @ %sw.default
	@DEBUG_VALUE: basicmath___cosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___cosf:z <- 0.000000e+00
	.loc	2 682 19 is_stmt 1              @ cosf/wcclibm.c:682:19
	ldm	sp, {r0, r1}
	mov	r2, #1
	bl	basicmath___kernel_sinf
.Ltmp482:
.LBB14_11:                              @ %return
	@DEBUG_VALUE: basicmath___cosf:x <- [DW_OP_LLVM_entry_value 1] $r0
	@DEBUG_VALUE: basicmath___cosf:z <- 0.000000e+00
	.loc	2 685 1                         @ cosf/wcclibm.c:685:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp483:
	.p2align	2
@ %bb.12:
	.loc	2 0 1 is_stmt 0                 @ cosf/wcclibm.c:0:1
.LCPI14_0:
	.long	1061752792                      @ 0x3f490fd8
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
	.file	4 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../absvdi2.c" md5 0xf0fa545ed84eab29322431dd903e1bd2
	.loc	4 23 0 is_stmt 1                @ ../absvdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	4 25 11 prologue_end            @ ../absvdi2.c:25:11
	eor	r2, r1, #-2147483648
	orrs	r2, r0, r2
	.loc	4 25 9 is_stmt 0                @ ../absvdi2.c:25:9
	beq	.LBB15_2
@ %bb.1:                                @ %if.end
	.loc	4 28 20 is_stmt 1               @ ../absvdi2.c:28:20
	adds	r0, r0, r1, asr #31
	adc	r2, r1, r1, asr #31
	eor	r0, r0, r1, asr #31
	eor	r1, r2, r1, asr #31
	.loc	4 28 5 is_stmt 0                @ ../absvdi2.c:28:5
	bx	lr
.LBB15_2:                               @ %if.then
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	.loc	4 26 9 is_stmt 1                @ ../absvdi2.c:26:9
	ldr	r0, .LCPI15_0
	ldr	r2, .LCPI15_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.Ltmp484:
	.p2align	2
@ %bb.3:
	.loc	4 0 9 is_stmt 0                 @ ../absvdi2.c:0:9
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
	.file	5 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../absvsi2.c" md5 0x4c623fefc2c7ed3929c6e73514b667d1
	.loc	5 23 0 is_stmt 1                @ ../absvsi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	5 25 9 prologue_end             @ ../absvsi2.c:25:9
	cmp	r0, #-2147483648
	beq	.LBB17_2
@ %bb.1:                                @ %if.end
	.loc	5 28 20                         @ ../absvsi2.c:28:20
	cmp	r0, #0
	rsbmi	r0, r0, #0
	.loc	5 28 5 is_stmt 0                @ ../absvsi2.c:28:5
	bx	lr
.LBB17_2:                               @ %if.then
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	.loc	5 26 9 is_stmt 1                @ ../absvsi2.c:26:9
	ldr	r0, .LCPI17_0
	ldr	r2, .LCPI17_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.Ltmp485:
	.p2align	2
@ %bb.3:
	.loc	5 0 9 is_stmt 0                 @ ../absvsi2.c:0:9
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
	.file	6 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../addvdi3.c" md5 0xaa240ee8ce7c28b2c3bcec10a7603d3f
	.loc	6 23 0 is_stmt 1                @ ../addvdi3.c:23:0
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
.Ltmp486:
	.loc	6 24 27 prologue_end            @ ../addvdi3.c:24:27
	adds	r0, r0, r2
	mov	r12, r1
	adc	r1, r1, r3
	.loc	6 25 9                          @ ../addvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB18_3
@ %bb.1:                                @ %if.then
	.loc	6 27 15                         @ ../addvdi3.c:27:15
	subs	r2, r0, lr
	sbcs	r2, r1, r12
	.loc	6 27 13 is_stmt 0               @ ../addvdi3.c:27:13
	bge	.LBB18_4
@ %bb.2:                                @ %if.then2
	.loc	6 28 13 is_stmt 1               @ ../addvdi3.c:28:13
	ldr	r0, .LCPI18_0
	ldr	r2, .LCPI18_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB18_3:                               @ %if.else
	.loc	6 32 15                         @ ../addvdi3.c:32:15
	subs	r2, r0, lr
	sbcs	r2, r1, r12
	.loc	6 32 13 is_stmt 0               @ ../addvdi3.c:32:13
	bge	.LBB18_5
.LBB18_4:                               @ %if.end6
	.loc	6 35 5 is_stmt 1                @ ../addvdi3.c:35:5
	pop	{r11, lr}
	bx	lr
.LBB18_5:                               @ %if.then4
	.loc	6 33 13                         @ ../addvdi3.c:33:13
	ldr	r0, .LCPI18_0
	ldr	r2, .LCPI18_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.Ltmp487:
	.p2align	2
@ %bb.6:
	.loc	6 0 13 is_stmt 0                @ ../addvdi3.c:0:13
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
	.file	7 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../addvsi3.c" md5 0x6cd4d40cc00928f1aaf6f29e299078cd
	.loc	7 23 0 is_stmt 1                @ ../addvsi3.c:23:0
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
.Ltmp488:
	.loc	7 24 27 prologue_end            @ ../addvsi3.c:24:27
	add	r0, r0, r1
	.loc	7 25 9                          @ ../addvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB19_3
@ %bb.1:                                @ %if.then
	.loc	7 27 13                         @ ../addvsi3.c:27:13
	cmp	r0, r2
	bge	.LBB19_4
@ %bb.2:                                @ %if.then2
	.loc	7 28 13                         @ ../addvsi3.c:28:13
	ldr	r0, .LCPI19_0
	ldr	r2, .LCPI19_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB19_3:                               @ %if.else
	.loc	7 32 13                         @ ../addvsi3.c:32:13
	cmp	r0, r2
	bge	.LBB19_5
.LBB19_4:                               @ %if.end6
	.loc	7 35 5                          @ ../addvsi3.c:35:5
	pop	{r11, lr}
	bx	lr
.LBB19_5:                               @ %if.then4
	.loc	7 33 13                         @ ../addvsi3.c:33:13
	ldr	r0, .LCPI19_0
	ldr	r2, .LCPI19_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.Ltmp489:
	.p2align	2
@ %bb.6:
	.loc	7 0 13 is_stmt 0                @ ../addvsi3.c:0:13
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
	.file	8 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ashldi3.c" md5 0xae5236ddcefaf3e5efc4feba69d334b1
	.loc	8 25 0 is_stmt 1                @ ../ashldi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp490:
	.loc	8 30 9 prologue_end             @ ../ashldi3.c:30:9
	tst	r2, #32
	.loc	8 29 15                         @ ../ashldi3.c:29:15
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	8 30 9                          @ ../ashldi3.c:30:9
	bne	.LBB20_3
@ %bb.1:                                @ %if.else
	.loc	8 37 13                         @ ../ashldi3.c:37:13
	cmp	r2, #0
	beq	.LBB20_5
@ %bb.2:                                @ %if.end
	.loc	8 40 34                         @ ../ashldi3.c:40:34
	ldr	r1, [sp, #12]
	.loc	8 39 33                         @ ../ashldi3.c:39:33
	ldr	r0, [sp, #8]
	.loc	8 39 37 is_stmt 0               @ ../ashldi3.c:39:37
	lsl	r3, r0, r2
	.loc	8 40 39 is_stmt 1               @ ../ashldi3.c:40:39
	lsl	r1, r1, r2
	.loc	8 40 77 is_stmt 0               @ ../ashldi3.c:40:77
	rsb	r2, r2, #32
	.loc	8 40 45                         @ ../ashldi3.c:40:45
	orr	r0, r1, r0, lsr r2
	.loc	8 39 23 is_stmt 1               @ ../ashldi3.c:39:23
	str	r3, [sp]
	b	.LBB20_4
.LBB20_3:                               @ %if.then
	.loc	8 33 33                         @ ../ashldi3.c:33:33
	ldr	r1, [sp, #8]
	mov	r0, #0
	.loc	8 32 22                         @ ../ashldi3.c:32:22
	str	r0, [sp]
	.loc	8 33 43                         @ ../ashldi3.c:33:43
	sub	r0, r2, #32
	.loc	8 33 37 is_stmt 0               @ ../ashldi3.c:33:37
	lsl	r0, r1, r0
.LBB20_4:                               @ %if.end18
	.loc	8 0 0                           @ ../ashldi3.c:0:0
	str	r0, [sp, #4]
	.loc	8 42 19 is_stmt 1               @ ../ashldi3.c:42:19
	ldm	sp, {r0, r1}
.LBB20_5:                               @ %return
	.loc	8 43 1                          @ ../ashldi3.c:43:1
	add	sp, sp, #16
	bx	lr
.Ltmp491:
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
	.file	9 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ashrdi3.c" md5 0xdf60b7a82095e7d7b5c11e1095a5679a
	.loc	9 25 0                          @ ../ashrdi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp492:
	.loc	9 30 9 prologue_end             @ ../ashrdi3.c:30:9
	tst	r2, #32
	.loc	9 29 15                         @ ../ashrdi3.c:29:15
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	9 30 9                          @ ../ashrdi3.c:30:9
	bne	.LBB21_3
@ %bb.1:                                @ %if.else
	.loc	9 38 13                         @ ../ashrdi3.c:38:13
	cmp	r2, #0
	beq	.LBB21_5
@ %bb.2:                                @ %if.end
	.loc	9 40 34                         @ ../ashrdi3.c:40:34
	ldr	r1, [sp, #12]
	.loc	9 41 72                         @ ../ashrdi3.c:41:72
	ldr	r0, [sp, #8]
	.loc	9 40 39                         @ ../ashrdi3.c:40:39
	asr	r3, r1, r2
	.loc	9 40 24 is_stmt 0               @ ../ashrdi3.c:40:24
	str	r3, [sp, #4]
	.loc	9 41 55 is_stmt 1               @ ../ashrdi3.c:41:55
	rsb	r3, r2, #32
	.loc	9 41 38 is_stmt 0               @ ../ashrdi3.c:41:38
	lsl	r1, r1, r3
	.loc	9 41 61                         @ ../ashrdi3.c:41:61
	orr	r0, r1, r0, lsr r2
	b	.LBB21_4
.LBB21_3:                               @ %if.then
	.loc	9 33 33 is_stmt 1               @ ../ashrdi3.c:33:33
	ldr	r0, [sp, #12]
	.loc	9 33 38 is_stmt 0               @ ../ashrdi3.c:33:38
	asr	r1, r0, #31
	.loc	9 33 23                         @ ../ashrdi3.c:33:23
	str	r1, [sp, #4]
	.loc	9 34 43 is_stmt 1               @ ../ashrdi3.c:34:43
	sub	r1, r2, #32
	.loc	9 34 37 is_stmt 0               @ ../ashrdi3.c:34:37
	asr	r0, r0, r1
.LBB21_4:                               @ %if.end21
	.loc	9 0 0                           @ ../ashrdi3.c:0:0
	str	r0, [sp]
	.loc	9 43 19 is_stmt 1               @ ../ashrdi3.c:43:19
	ldm	sp, {r0, r1}
.LBB21_5:                               @ %return
	.loc	9 44 1                          @ ../ashrdi3.c:44:1
	add	sp, sp, #16
	bx	lr
.Ltmp493:
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
	.file	10 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../clzdi2.c" md5 0x901c40e0319a50689080965b20695c3e
	.loc	10 23 0                         @ ../clzdi2.c:23:0
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
.Ltmp494:
	.loc	10 27 42 prologue_end           @ ../clzdi2.c:27:42
	cmp	r1, #0
	.loc	10 25 11                        @ ../clzdi2.c:25:11
	stm	sp, {r0, r1}
	mov	r4, r1
	.loc	10 27 42                        @ ../clzdi2.c:27:42
	movne	r0, r1
	.loc	10 27 12 is_stmt 0              @ ../clzdi2.c:27:12
	cmp	r0, #0
	beq	.LBB22_2
@ %bb.1:                                @ %cond.false
	bl	__clzsi2
	b	.LBB22_3
.LBB22_2:
	.loc	10 0 12                         @ ../clzdi2.c:0:12
	mov	r0, #32
.LBB22_3:                               @ %cond.end
	.loc	10 27 59                        @ ../clzdi2.c:27:59
	cmp	r4, #0
	addeq	r0, r0, #32
	.loc	10 27 5                         @ ../clzdi2.c:27:5
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp495:
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
	.file	11 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../clzsi2.c" md5 0x9b0156c55102d3143e17bdf85bafbc30
	.loc	11 23 0 is_stmt 1               @ ../clzsi2.c:23:0
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
.Ltmp496:
	.loc	11 26 14 prologue_end           @ ../clzsi2.c:26:14
	sub	r2, r2, r12, lsl #4
	.loc	11 29 13                        @ ../clzsi2.c:29:13
	and	r3, r3, r0, lsr r2
	.loc	11 26 7                         @ ../clzsi2.c:26:7
	lsr	r0, r0, r2
	mov	r2, #240
	.loc	11 29 13                        @ ../clzsi2.c:29:13
	rsbs	r1, r3, #0
	adc	lr, r3, r1
	mov	r3, #8
	.loc	11 30 13                        @ ../clzsi2.c:30:13
	sub	r3, r3, lr, lsl #3
	.loc	11 33 13                        @ ../clzsi2.c:33:13
	and	r2, r2, r0, lsr r3
	.loc	11 30 7                         @ ../clzsi2.c:30:7
	lsr	r0, r0, r3
	mov	r3, #12
	.loc	11 33 13                        @ ../clzsi2.c:33:13
	rsbs	r1, r2, #0
	adc	r1, r2, r1
	mov	r2, #4
	.loc	11 34 13                        @ ../clzsi2.c:34:13
	sub	r2, r2, r1, lsl #2
	.loc	11 37 13                        @ ../clzsi2.c:37:13
	and	r3, r3, r0, lsr r2
	.loc	11 34 7                         @ ../clzsi2.c:34:7
	lsr	r0, r0, r2
	.loc	11 37 13                        @ ../clzsi2.c:37:13
	rsbs	r4, r3, #0
	adc	r3, r3, r4
	mov	r4, #2
	.loc	11 38 13                        @ ../clzsi2.c:38:13
	sub	r5, r4, r3, lsl #1
	.loc	11 52 20                        @ ../clzsi2.c:52:20
	sub	r2, r4, r0, lsr r5
	.loc	11 38 7                         @ ../clzsi2.c:38:7
	lsr	r0, r0, r5
	mvn	r4, #1
	.loc	11 52 37                        @ ../clzsi2.c:52:37
	orr	r0, r4, r0, lsr #1
	add	r0, r0, #1
	.loc	11 52 25 is_stmt 0              @ ../clzsi2.c:52:25
	and	r0, r2, r0
	.loc	11 25 40 is_stmt 1              @ ../clzsi2.c:25:40
	lsl	r2, r12, #4
	.loc	11 31 7                         @ ../clzsi2.c:31:7
	orr	r2, r2, lr, lsl #3
	.loc	11 35 7                         @ ../clzsi2.c:35:7
	orr	r1, r2, r1, lsl #2
	.loc	11 39 7                         @ ../clzsi2.c:39:7
	orr	r1, r1, r3, lsl #1
	.loc	11 52 14                        @ ../clzsi2.c:52:14
	add	r0, r1, r0
	.loc	11 52 5 is_stmt 0               @ ../clzsi2.c:52:5
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp497:
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
	.file	12 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../cmpdi2.c" md5 0x79ec8a4b383c8374d228cd0869637319
	.loc	12 24 0 is_stmt 1               @ ../cmpdi2.c:24:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp498:
	.loc	12 26 11 prologue_end           @ ../cmpdi2.c:26:11
	str	r0, [sp, #8]
	mov	r0, #0
	.loc	12 29 9                         @ ../cmpdi2.c:29:9
	cmp	r1, r3
	.loc	12 26 11                        @ ../cmpdi2.c:26:11
	str	r1, [sp, #12]
	.loc	12 28 11                        @ ../cmpdi2.c:28:11
	stm	sp, {r2, r3}
	.loc	12 29 9                         @ ../cmpdi2.c:29:9
	blt	.LBB24_4
@ %bb.1:                                @ %if.end
	.loc	12 31 24                        @ ../cmpdi2.c:31:24
	ldr	r1, [sp, #4]
	.loc	12 31 13 is_stmt 0              @ ../cmpdi2.c:31:13
	ldr	r2, [sp, #12]
	.loc	12 31 9                         @ ../cmpdi2.c:31:9
	cmp	r2, r1
	movgt	r0, #2
	.loc	12 38 1 is_stmt 1               @ ../cmpdi2.c:38:1
	addgt	sp, sp, #16
	bxgt	lr
.LBB24_2:                               @ %if.end10
	.loc	12 33 23                        @ ../cmpdi2.c:33:23
	ldr	r1, [sp]
	.loc	12 33 13 is_stmt 0              @ ../cmpdi2.c:33:13
	ldr	r2, [sp, #8]
	.loc	12 33 9                         @ ../cmpdi2.c:33:9
	cmp	r2, r1
	blo	.LBB24_4
@ %bb.3:                                @ %if.end16
	.loc	12 35 23 is_stmt 1              @ ../cmpdi2.c:35:23
	ldr	r0, [sp]
	.loc	12 35 13 is_stmt 0              @ ../cmpdi2.c:35:13
	ldr	r1, [sp, #8]
	.loc	12 35 9                         @ ../cmpdi2.c:35:9
	cmp	r1, r0
	mov	r0, #2
	movls	r0, #1
.LBB24_4:                               @ %return
	.loc	12 38 1 is_stmt 1               @ ../cmpdi2.c:38:1
	add	sp, sp, #16
	bx	lr
.Ltmp499:
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
	.loc	12 47 0                         @ ../cmpdi2.c:47:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp500:
	.loc	12 48 9 prologue_end            @ ../cmpdi2.c:48:9
	bl	__cmpdi2
	.loc	12 48 24 is_stmt 0              @ ../cmpdi2.c:48:24
	sub	r0, r0, #1
	.loc	12 48 2                         @ ../cmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp501:
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
	.file	13 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ctzdi2.c" md5 0x0415a3f61808ca646548bc24b48a844a
	.loc	13 23 0 is_stmt 1               @ ../ctzdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
.Ltmp502:
	.loc	13 27 41 prologue_end           @ ../ctzdi2.c:27:41
	cmp	r0, #0
	.loc	13 25 11                        @ ../ctzdi2.c:25:11
	stm	sp, {r0, r1}
	.loc	13 27 41                        @ ../ctzdi2.c:27:41
	movne	r1, r0
	.loc	13 27 12 is_stmt 0              @ ../ctzdi2.c:27:12
	cmp	r1, #0
	beq	.LBB26_2
@ %bb.1:                                @ %cond.false
	sub	r2, r1, #1
	bic	r1, r2, r1
	ldr	r2, .LCPI26_0
	and	r2, r2, r1, lsr #1
	sub	r1, r1, r2
	ldr	r2, .LCPI26_1
	and	r3, r2, r1, lsr #2
	and	r1, r1, r2
	ldr	r2, .LCPI26_2
	add	r1, r1, r3
	add	r1, r1, r1, lsr #4
	and	r1, r1, r2
	ldr	r2, .LCPI26_3
	mul	r3, r1, r2
	lsr	r1, r3, #24
	b	.LBB26_3
.LBB26_2:
	.loc	13 0 12                         @ ../ctzdi2.c:0:12
	mov	r1, #32
.LBB26_3:                               @ %cond.end
	.loc	13 27 59                        @ ../ctzdi2.c:27:59
	cmp	r0, #0
	addeq	r1, r1, #32
	.loc	13 27 5                         @ ../ctzdi2.c:27:5
	mov	r0, r1
	add	sp, sp, #8
	bx	lr
.Ltmp503:
	.p2align	2
@ %bb.4:
	.loc	13 0 5                          @ ../ctzdi2.c:0:5
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
	.file	14 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ctzsi2.c" md5 0x0372a2c6647eddaa73c0b61d8d03c3b1
	.loc	14 23 0 is_stmt 1               @ ../ctzsi2.c:23:0
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
.Ltmp504:
	.loc	14 25 20 prologue_end           @ ../ctzsi2.c:25:20
	and	r1, r0, r1
	rsbs	r2, r1, #0
	adc	r1, r1, r2
	mov	r2, #255
	.loc	14 25 40 is_stmt 0              @ ../ctzsi2.c:25:40
	lsl	lr, r1, #4
	.loc	14 29 13 is_stmt 1              @ ../ctzsi2.c:29:13
	and	r2, r2, r0, lsr lr
	.loc	14 26 7                         @ ../ctzsi2.c:26:7
	lsr	r0, r0, lr
	.loc	14 29 13                        @ ../ctzsi2.c:29:13
	rsbs	r3, r2, #0
	adc	r12, r2, r3
	mov	r2, #15
	.loc	14 29 29 is_stmt 0              @ ../ctzsi2.c:29:29
	lsl	r3, r12, #3
	.loc	14 33 13 is_stmt 1              @ ../ctzsi2.c:33:13
	and	r2, r2, r0, lsr r3
	.loc	14 30 7                         @ ../ctzsi2.c:30:7
	lsr	r0, r0, r3
	mov	r3, #3
	.loc	14 33 13                        @ ../ctzsi2.c:33:13
	rsbs	r1, r2, #0
	adc	r1, r2, r1
	.loc	14 33 27 is_stmt 0              @ ../ctzsi2.c:33:27
	lsl	r2, r1, #2
	.loc	14 37 13 is_stmt 1              @ ../ctzsi2.c:37:13
	and	r3, r3, r0, lsr r2
	.loc	14 34 7                         @ ../ctzsi2.c:34:7
	lsr	r0, r0, r2
	mvn	r2, #1
	.loc	14 37 13                        @ ../ctzsi2.c:37:13
	rsbs	r4, r3, #0
	adc	r3, r3, r4
	.loc	14 37 26 is_stmt 0              @ ../ctzsi2.c:37:26
	lsl	r4, r3, #1
	.loc	14 56 44 is_stmt 1              @ ../ctzsi2.c:56:44
	orr	r2, r2, r0, lsr r4
	.loc	14 38 7                         @ ../ctzsi2.c:38:7
	lsr	r0, r0, r4
	mov	r4, #1
	.loc	14 56 25                        @ ../ctzsi2.c:56:25
	and	r0, r4, r0, lsr #1
	.loc	14 56 44 is_stmt 0              @ ../ctzsi2.c:56:44
	add	r2, r2, #1
	.loc	14 56 20                        @ ../ctzsi2.c:56:20
	rsb	r0, r0, #2
	.loc	14 56 32                        @ ../ctzsi2.c:56:32
	and	r0, r0, r2
	.loc	14 31 7 is_stmt 1               @ ../ctzsi2.c:31:7
	orr	r2, lr, r12, lsl #3
	.loc	14 35 7                         @ ../ctzsi2.c:35:7
	orr	r1, r2, r1, lsl #2
	.loc	14 40 7                         @ ../ctzsi2.c:40:7
	orr	r1, r1, r3, lsl #1
	.loc	14 56 14                        @ ../ctzsi2.c:56:14
	add	r0, r1, r0
	.loc	14 56 5 is_stmt 0               @ ../ctzsi2.c:56:5
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp505:
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
	.file	15 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divdi3.c" md5 0x281227589e0794a81d7211e4ee4a402c
	.loc	15 21 0 is_stmt 1               @ ../divdi3.c:21:0
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
.Ltmp506:
	.loc	15 26 12 prologue_end           @ ../divdi3.c:26:12
	eor	r2, r2, r3, asr #31
	eor	r3, r3, r3, asr #31
	.loc	15 25 12                        @ ../divdi3.c:25:12
	eor	r0, r0, r5, asr #31
	.loc	15 28 13                        @ ../divdi3.c:28:13
	str	r1, [sp]
	.loc	15 25 12                        @ ../divdi3.c:25:12
	eor	r1, r5, r5, asr #31
	.loc	15 25 19 is_stmt 0              @ ../divdi3.c:25:19
	subs	r0, r0, r5, asr #31
	sbc	r1, r1, r5, asr #31
	.loc	15 26 19 is_stmt 1              @ ../divdi3.c:26:19
	subs	r2, r2, r4, asr #31
	sbc	r3, r3, r4, asr #31
	.loc	15 28 13                        @ ../divdi3.c:28:13
	bl	__udivmoddi4
	.loc	15 23 20                        @ ../divdi3.c:23:20
	asr	r2, r5, #31
	.loc	15 27 9                         @ ../divdi3.c:27:9
	eor	r2, r2, r4, asr #31
	.loc	15 28 44                        @ ../divdi3.c:28:44
	eor	r0, r0, r2
	eor	r1, r1, r2
	.loc	15 28 51 is_stmt 0              @ ../divdi3.c:28:51
	subs	r0, r0, r2
	sbc	r1, r1, r2
	.loc	15 28 5                         @ ../divdi3.c:28:5
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp507:
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
	.file	16 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivmoddi4.c" md5 0xeca4b147be989cda91330ba5b56ed879
	.loc	16 25 0 is_stmt 1               @ ../udivmoddi4.c:25:0
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
.Ltmp508:
	.loc	16 36 9 prologue_end            @ ../udivmoddi4.c:36:9
	cmp	r1, #0
	.loc	16 29 11                        @ ../udivmoddi4.c:29:11
	str	r1, [sp, #28]
	str	r0, [sp, #24]
	.loc	16 31 11                        @ ../udivmoddi4.c:31:11
	str	r3, [sp, #20]
	str	r2, [sp, #16]
	.loc	16 36 9                         @ ../udivmoddi4.c:36:9
	beq	.LBB29_9
@ %bb.1:                                @ %if.end23
	.loc	16 57 13                        @ ../udivmoddi4.c:57:13
	ldr	r0, [sp, #16]
	.loc	16 57 9 is_stmt 0               @ ../udivmoddi4.c:57:9
	cmp	r0, #0
	beq	.LBB29_13
@ %bb.2:                                @ %if.else
	.loc	16 121 17 is_stmt 1             @ ../udivmoddi4.c:121:17
	ldr	r0, [sp, #20]
	.loc	16 121 13 is_stmt 0             @ ../udivmoddi4.c:121:13
	cmp	r0, #0
	beq	.LBB29_22
@ %bb.3:                                @ %if.else263
	.loc	16 176 36 is_stmt 1             @ ../udivmoddi4.c:176:36
	ldr	r0, [sp, #20]
	mov	r4, #32
	mov	r5, #32
	.loc	16 176 18 is_stmt 0             @ ../udivmoddi4.c:176:18
	cmp	r0, #0
	beq	.LBB29_5
@ %bb.4:                                @ %cond.false29
	bl	__clzsi2
	mov	r5, r0
.LBB29_5:                               @ %cond.end30
	.loc	16 176 62                       @ ../udivmoddi4.c:176:62
	ldr	r0, [sp, #28]
	.loc	16 176 44                       @ ../udivmoddi4.c:176:44
	cmp	r0, #0
	beq	.LBB29_7
@ %bb.6:                                @ %cond.false33
	bl	__clzsi2
	mov	r4, r0
.LBB29_7:                               @ %cond.end34
	.loc	16 176 42                       @ ../udivmoddi4.c:176:42
	sub	r1, r5, r4
	.loc	16 178 17 is_stmt 1             @ ../udivmoddi4.c:178:17
	cmp	r1, #32
	blo	.LBB29_30
.LBB29_8:                               @ %if.then111
	.loc	16 0 0 is_stmt 0                @ ../udivmoddi4.c:0:0
	cmp	r8, #0
	ldrne	r0, [sp, #24]
	ldrne	r1, [sp, #28]
	stmne	r8, {r0, r1}
	b	.LBB29_12
.LBB29_9:                               @ %if.then
	.loc	16 38 17 is_stmt 1              @ ../udivmoddi4.c:38:17
	ldr	r0, [sp, #20]
	.loc	16 38 13 is_stmt 0              @ ../udivmoddi4.c:38:13
	cmp	r0, #0
	beq	.LBB29_27
@ %bb.10:                               @ %if.end16
	.loc	16 52 13 is_stmt 1              @ ../udivmoddi4.c:52:13
	cmp	r8, #0
	beq	.LBB29_12
@ %bb.11:                               @ %if.then18
	.loc	16 53 24                        @ ../udivmoddi4.c:53:24
	ldr	r1, [sp, #24]
	mov	r0, #0
	.loc	16 53 18 is_stmt 0              @ ../udivmoddi4.c:53:18
	str	r0, [r8, #4]
	str	r1, [r8]
	mov	r1, #0
	b	.LBB29_49
.LBB29_12:
	.loc	16 0 18                         @ ../udivmoddi4.c:0:18
	mov	r0, #0
	mov	r1, #0
	b	.LBB29_49
.LBB29_13:                              @ %if.then28
	.loc	16 59 17 is_stmt 1              @ ../udivmoddi4.c:59:17
	ldr	r0, [sp, #20]
	.loc	16 59 13 is_stmt 0              @ ../udivmoddi4.c:59:13
	cmp	r0, #0
	beq	.LBB29_32
@ %bb.14:                               @ %if.end49
	.loc	16 70 17 is_stmt 1              @ ../udivmoddi4.c:70:17
	ldr	r0, [sp, #24]
	.loc	16 70 13 is_stmt 0              @ ../udivmoddi4.c:70:13
	cmp	r0, #0
	beq	.LBB29_50
@ %bb.15:                               @ %if.end74
	.loc	16 88 18 is_stmt 1              @ ../udivmoddi4.c:88:18
	ldr	r0, [sp, #20]
	.loc	16 88 35 is_stmt 0              @ ../udivmoddi4.c:88:35
	sub	r1, r0, #1
	.loc	16 88 13                        @ ../udivmoddi4.c:88:13
	tst	r0, r1
	beq	.LBB29_57
@ %bb.16:                               @ %if.end103
	.loc	16 102 32 is_stmt 1             @ ../udivmoddi4.c:102:32
	ldr	r0, [sp, #20]
	mov	r4, #32
	mov	r5, #32
	.loc	16 102 14 is_stmt 0             @ ../udivmoddi4.c:102:14
	cmp	r0, #0
	beq	.LBB29_18
@ %bb.17:                               @ %cond.false6
	bl	__clzsi2
	mov	r5, r0
.LBB29_18:                              @ %cond.end7
	.loc	16 102 58                       @ ../udivmoddi4.c:102:58
	ldr	r0, [sp, #28]
	.loc	16 102 40                       @ ../udivmoddi4.c:102:40
	cmp	r0, #0
	beq	.LBB29_20
@ %bb.19:                               @ %cond.false10
	bl	__clzsi2
	mov	r4, r0
.LBB29_20:                              @ %cond.end11
	.loc	16 102 38                       @ ../udivmoddi4.c:102:38
	sub	r0, r5, r4
	.loc	16 104 13 is_stmt 1             @ ../udivmoddi4.c:104:13
	cmp	r0, #31
	bhs	.LBB29_8
@ %bb.21:                               @ %if.end116
	.loc	16 114 24                       @ ../udivmoddi4.c:114:24
	ldr	r2, [sp, #24]
	.loc	16 116 24                       @ ../udivmoddi4.c:116:24
	ldr	r3, [sp, #28]
	mov	r1, #0
	.loc	16 110 9                        @ ../udivmoddi4.c:110:9
	add	r12, r0, #1
	.loc	16 113 17                       @ ../udivmoddi4.c:113:17
	str	r1, [sp, #8]
	.loc	16 114 45                       @ ../udivmoddi4.c:114:45
	rsb	r1, r0, #31
	.loc	16 114 28 is_stmt 0             @ ../udivmoddi4.c:114:28
	lsl	r5, r2, r1
	.loc	16 114 18                       @ ../udivmoddi4.c:114:18
	str	r5, [sp, #12]
	.loc	16 116 29 is_stmt 1             @ ../udivmoddi4.c:116:29
	lsr	r5, r3, r12
	.loc	16 116 18 is_stmt 0             @ ../udivmoddi4.c:116:18
	str	r5, [sp, #4]
	b	.LBB29_44
.LBB29_22:                              @ %if.then142
	.loc	16 127 22 is_stmt 1             @ ../udivmoddi4.c:127:22
	ldr	r0, [sp, #16]
	.loc	16 127 17 is_stmt 0             @ ../udivmoddi4.c:127:17
	sub	r1, r0, #1
	tst	r0, r1
	bne	.LBB29_37
@ %bb.23:                               @ %if.then151
	.loc	16 129 21 is_stmt 1             @ ../udivmoddi4.c:129:21
	cmp	r8, #0
	beq	.LBB29_25
@ %bb.24:                               @ %if.then153
	.loc	16 130 43                       @ ../udivmoddi4.c:130:43
	ldr	r1, [sp, #16]
	.loc	16 130 32 is_stmt 0             @ ../udivmoddi4.c:130:32
	ldr	r2, [sp, #24]
	mov	r0, #0
	.loc	16 130 26                       @ ../udivmoddi4.c:130:26
	str	r0, [r8, #4]
	.loc	16 130 47                       @ ../udivmoddi4.c:130:47
	sub	r1, r1, #1
	.loc	16 130 36                       @ ../udivmoddi4.c:130:36
	and	r1, r2, r1
	.loc	16 130 26                       @ ../udivmoddi4.c:130:26
	str	r1, [r8]
.LBB29_25:                              @ %if.end161
	.loc	16 131 25 is_stmt 1             @ ../udivmoddi4.c:131:25
	ldr	r0, [sp, #16]
	.loc	16 131 21 is_stmt 0             @ ../udivmoddi4.c:131:21
	cmp	r0, #1
	bne	.LBB29_53
@ %bb.26:                               @ %if.then166
	.loc	16 132 30 is_stmt 1             @ ../udivmoddi4.c:132:30
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #28]
	b	.LBB29_49
.LBB29_27:                              @ %if.then5
	.loc	16 44 17                        @ ../udivmoddi4.c:44:17
	cmp	r8, #0
	beq	.LBB29_29
@ %bb.28:                               @ %if.then6
	.loc	16 0 17 is_stmt 0               @ ../udivmoddi4.c:0:17
	mov	r0, #0
	.loc	16 45 38 is_stmt 1              @ ../udivmoddi4.c:45:38
	ldr	r1, [sp, #16]
	.loc	16 45 22 is_stmt 0              @ ../udivmoddi4.c:45:22
	str	r0, [r8, #4]
	.loc	16 45 28                        @ ../udivmoddi4.c:45:28
	ldr	r0, [sp, #24]
	.loc	16 45 32                        @ ../udivmoddi4.c:45:32
	bl	__umodsi3
	.loc	16 45 22                        @ ../udivmoddi4.c:45:22
	str	r0, [r8]
.LBB29_29:                              @ %if.end
	.loc	16 46 24 is_stmt 1              @ ../udivmoddi4.c:46:24
	ldr	r0, [sp, #24]
	b	.LBB29_35
.LBB29_30:                              @ %if.end276
	.loc	16 184 13                       @ ../udivmoddi4.c:184:13
	add	r12, r1, #1
	mov	r2, #0
	.loc	16 188 17                       @ ../udivmoddi4.c:188:17
	cmp	r12, #32
	.loc	16 187 21                       @ ../udivmoddi4.c:187:21
	str	r2, [sp, #8]
	.loc	16 188 17                       @ ../udivmoddi4.c:188:17
	bne	.LBB29_43
@ %bb.31:                               @ %if.then282
	.loc	16 190 32                       @ ../udivmoddi4.c:190:32
	ldr	r1, [sp, #24]
	.loc	16 192 31                       @ ../udivmoddi4.c:192:31
	ldr	r3, [sp, #28]
	.loc	16 191 26                       @ ../udivmoddi4.c:191:26
	str	r2, [sp, #4]
	.loc	16 190 26                       @ ../udivmoddi4.c:190:26
	str	r1, [sp, #12]
	.loc	16 192 25                       @ ../udivmoddi4.c:192:25
	str	r3, [sp]
	b	.LBB29_46
.LBB29_32:                              @ %if.then33
	.loc	16 65 17                        @ ../udivmoddi4.c:65:17
	cmp	r8, #0
	beq	.LBB29_34
@ %bb.33:                               @ %if.then35
	.loc	16 0 17 is_stmt 0               @ ../udivmoddi4.c:0:17
	mov	r0, #0
	.loc	16 66 39 is_stmt 1              @ ../udivmoddi4.c:66:39
	ldr	r1, [sp, #16]
	.loc	16 66 22 is_stmt 0              @ ../udivmoddi4.c:66:22
	str	r0, [r8, #4]
	.loc	16 66 28                        @ ../udivmoddi4.c:66:28
	ldr	r0, [sp, #28]
	.loc	16 66 33                        @ ../udivmoddi4.c:66:33
	bl	__umodsi3
	.loc	16 66 22                        @ ../udivmoddi4.c:66:22
	str	r0, [r8]
.LBB29_34:                              @ %if.end42
	.loc	16 67 24 is_stmt 1              @ ../udivmoddi4.c:67:24
	ldr	r0, [sp, #28]
.LBB29_35:                              @ %return
	.loc	16 0 0 is_stmt 0                @ ../udivmoddi4.c:0:0
	ldr	r1, [sp, #16]
.LBB29_36:                              @ %return
	bl	__udivsi3
	mov	r1, #0
	b	.LBB29_49
.LBB29_37:                              @ %if.end187
	.loc	16 142 55 is_stmt 1             @ ../udivmoddi4.c:142:55
	ldr	r1, [sp, #16]
	mov	r4, #32
	mov	r0, #32
	.loc	16 142 37 is_stmt 0             @ ../udivmoddi4.c:142:37
	cmp	r1, #0
	beq	.LBB29_39
@ %bb.38:                               @ %cond.false21
	mov	r0, r1
	bl	__clzsi2
.LBB29_39:                              @ %cond.end22
	.loc	16 142 35                       @ ../udivmoddi4.c:142:35
	add	r5, r0, #33
	.loc	16 142 80                       @ ../udivmoddi4.c:142:80
	ldr	r0, [sp, #28]
	.loc	16 142 62                       @ ../udivmoddi4.c:142:62
	cmp	r0, #0
	beq	.LBB29_41
@ %bb.40:                               @ %cond.false25
	bl	__clzsi2
	mov	r4, r0
.LBB29_41:                              @ %cond.end26
	.loc	16 142 60                       @ ../udivmoddi4.c:142:60
	sub	r12, r5, r4
	mov	r1, #0
	.loc	16 147 17 is_stmt 1             @ ../udivmoddi4.c:147:17
	cmp	r12, #32
	bne	.LBB29_55
@ %bb.42:                               @ %if.then195
	.loc	16 150 32                       @ ../udivmoddi4.c:150:32
	ldr	r2, [sp, #24]
	.loc	16 152 31                       @ ../udivmoddi4.c:152:31
	ldr	r3, [sp, #28]
	.loc	16 149 25                       @ ../udivmoddi4.c:149:25
	str	r1, [sp, #8]
	.loc	16 151 26                       @ ../udivmoddi4.c:151:26
	str	r1, [sp, #4]
	.loc	16 150 26                       @ ../udivmoddi4.c:150:26
	str	r2, [sp, #12]
	.loc	16 152 25                       @ ../udivmoddi4.c:152:25
	str	r3, [sp]
	b	.LBB29_46
.LBB29_43:                              @ %if.else293
	.loc	16 197 32                       @ ../udivmoddi4.c:197:32
	ldr	r3, [sp, #28]
	.loc	16 196 32                       @ ../udivmoddi4.c:196:32
	ldr	r2, [sp, #24]
	.loc	16 196 53 is_stmt 0             @ ../udivmoddi4.c:196:53
	rsb	r1, r1, #31
	.loc	16 197 37 is_stmt 1             @ ../udivmoddi4.c:197:37
	lsr	r5, r3, r12
	.loc	16 197 26 is_stmt 0             @ ../udivmoddi4.c:197:26
	str	r5, [sp, #4]
	.loc	16 196 36 is_stmt 1             @ ../udivmoddi4.c:196:36
	lsl	r5, r2, r1
	.loc	16 196 26 is_stmt 0             @ ../udivmoddi4.c:196:26
	str	r5, [sp, #12]
.LBB29_44:                              @ %if.end317
	.loc	16 0 0                          @ ../udivmoddi4.c:0:0
	lsl	r1, r3, r1
	orr	r1, r1, r2, lsr r12
.LBB29_45:                              @ %if.end317
	str	r1, [sp]
.LBB29_46:                              @ %if.end317
	mov	r1, #0
	.loc	16 209 5 is_stmt 1              @ ../udivmoddi4.c:209:5
	cmp	r12, #0
	beq	.LBB29_48
.LBB29_47:                              @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	.loc	16 214 43                       @ ../udivmoddi4.c:214:43
	ldr	r2, [sp, #8]
	.loc	16 213 43                       @ ../udivmoddi4.c:213:43
	ldr	r3, [sp, #12]
	.loc	16 223 37                       @ ../udivmoddi4.c:223:37
	ldr	r5, [sp, #20]
	.loc	16 209 20                       @ ../udivmoddi4.c:209:20
	sub	r12, r12, #1
	.loc	16 215 36                       @ ../udivmoddi4.c:215:36
	orr	r1, r1, r2, lsl #1
	.loc	16 215 18 is_stmt 0             @ ../udivmoddi4.c:215:18
	str	r1, [sp, #8]
	.loc	16 214 36 is_stmt 1             @ ../udivmoddi4.c:214:36
	lsl	r1, r3, #1
	orr	r1, r1, r2, lsr #31
	.loc	16 214 18 is_stmt 0             @ ../udivmoddi4.c:214:18
	str	r1, [sp, #12]
	.loc	16 212 43 is_stmt 1             @ ../udivmoddi4.c:212:43
	ldm	sp, {r1, r2}
	.loc	16 212 36 is_stmt 0             @ ../udivmoddi4.c:212:36
	lsl	r2, r2, #1
	orr	r2, r2, r1, lsr #31
	.loc	16 213 36 is_stmt 1             @ ../udivmoddi4.c:213:36
	lsl	r1, r1, #1
	orr	r1, r1, r3, lsr #31
	.loc	16 223 37                       @ ../udivmoddi4.c:223:37
	ldr	r3, [sp, #16]
	.loc	16 223 49 is_stmt 0             @ ../udivmoddi4.c:223:49
	mvn	r7, r2
	mvn	r0, r1
	.loc	16 225 15 is_stmt 1             @ ../udivmoddi4.c:225:15
	subs	r4, r1, r3
	sbc	r6, r2, r5
	.loc	16 223 49                       @ ../udivmoddi4.c:223:49
	adds	r0, r3, r0
	adcs	r0, r5, r7
	.loc	16 225 15                       @ ../udivmoddi4.c:225:15
	movpl	r4, r1
	movpl	r6, r2
	.loc	16 224 19                       @ ../udivmoddi4.c:224:19
	lsr	r1, r0, #31
	.loc	16 225 15                       @ ../udivmoddi4.c:225:15
	str	r4, [sp]
	str	r6, [sp, #4]
	.loc	16 209 5                        @ ../udivmoddi4.c:209:5
	cmp	r12, #0
	bne	.LBB29_47
.LBB29_48:                              @ %for.end
	.loc	16 227 16                       @ ../udivmoddi4.c:227:16
	ldr	r0, [sp, #8]
	ldr	r2, [sp, #12]
	.loc	16 228 9                        @ ../udivmoddi4.c:228:9
	cmp	r8, #0
	.loc	16 227 26                       @ ../udivmoddi4.c:227:26
	orr	r1, r1, r0, lsl #1
	.loc	16 227 11 is_stmt 0             @ ../udivmoddi4.c:227:11
	str	r1, [sp, #8]
	.loc	16 227 20                       @ ../udivmoddi4.c:227:20
	lsl	r1, r2, #1
	orr	r0, r1, r0, lsr #31
	.loc	16 227 11                       @ ../udivmoddi4.c:227:11
	str	r0, [sp, #12]
	.loc	16 229 18 is_stmt 1             @ ../udivmoddi4.c:229:18
	ldmne	sp, {r0, r1}
	.loc	16 229 14 is_stmt 0             @ ../udivmoddi4.c:229:14
	stmne	r8, {r0, r1}
	.loc	16 230 14 is_stmt 1             @ ../udivmoddi4.c:230:14
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
.LBB29_49:                              @ %return
	.loc	16 231 1                        @ ../udivmoddi4.c:231:1
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
	bx	lr
.LBB29_50:                              @ %if.then54
	.loc	16 76 17                        @ ../udivmoddi4.c:76:17
	cmp	r8, #0
	beq	.LBB29_52
@ %bb.51:                               @ %if.then56
	.loc	16 78 32                        @ ../udivmoddi4.c:78:32
	ldr	r0, [sp, #28]
	.loc	16 78 43 is_stmt 0              @ ../udivmoddi4.c:78:43
	ldr	r1, [sp, #20]
	mov	r4, #0
	.loc	16 80 22 is_stmt 1              @ ../udivmoddi4.c:80:22
	str	r4, [r8]
	.loc	16 78 37                        @ ../udivmoddi4.c:78:37
	bl	__umodsi3
	.loc	16 80 22                        @ ../udivmoddi4.c:80:22
	str	r0, [r8, #4]
	.loc	16 79 25                        @ ../udivmoddi4.c:79:25
	str	r4, [sp]
	.loc	16 78 26                        @ ../udivmoddi4.c:78:26
	str	r0, [sp, #4]
.LBB29_52:                              @ %if.end67
	.loc	16 82 24                        @ ../udivmoddi4.c:82:24
	ldr	r0, [sp, #28]
	.loc	16 82 35 is_stmt 0              @ ../udivmoddi4.c:82:35
	ldr	r1, [sp, #20]
	b	.LBB29_36
.LBB29_53:                              @ %if.end168
	.loc	16 133 40 is_stmt 1             @ ../udivmoddi4.c:133:40
	ldr	r0, [sp, #16]
	.loc	16 133 22 is_stmt 0             @ ../udivmoddi4.c:133:22
	cmp	r0, #0
	beq	.LBB29_62
@ %bb.54:                               @ %cond.false16
	sub	r1, r0, #1
	bic	r0, r1, r0
	ldr	r1, .LCPI29_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r1, .LCPI29_1
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	ldr	r1, .LCPI29_2
	add	r0, r0, r2
	add	r0, r0, r0, lsr #4
	and	r0, r0, r1
	ldr	r1, .LCPI29_3
	mul	r2, r0, r1
	lsr	r0, r2, #24
	b	.LBB29_63
.LBB29_55:                              @ %if.else208
	.loc	16 154 22 is_stmt 1             @ ../udivmoddi4.c:154:22
	cmp	r12, #31
	bhi	.LBB29_61
@ %bb.56:                               @ %if.then211
	.loc	16 158 32                       @ ../udivmoddi4.c:158:32
	ldr	r2, [sp, #28]
	.loc	16 156 25                       @ ../udivmoddi4.c:156:25
	str	r1, [sp, #8]
	.loc	16 157 32                       @ ../udivmoddi4.c:157:32
	ldr	r1, [sp, #24]
	.loc	16 158 37                       @ ../udivmoddi4.c:158:37
	lsr	r3, r2, r12
	.loc	16 158 26 is_stmt 0             @ ../udivmoddi4.c:158:26
	str	r3, [sp, #4]
	.loc	16 157 53 is_stmt 1             @ ../udivmoddi4.c:157:53
	rsb	r3, r12, #32
	.loc	16 157 36 is_stmt 0             @ ../udivmoddi4.c:157:36
	lsl	r5, r1, r3
	.loc	16 159 37 is_stmt 1             @ ../udivmoddi4.c:159:37
	lsl	r2, r2, r3
	.loc	16 157 26                       @ ../udivmoddi4.c:157:26
	str	r5, [sp, #12]
	.loc	16 159 61                       @ ../udivmoddi4.c:159:61
	orr	r1, r2, r1, lsr r12
	b	.LBB29_45
.LBB29_57:                              @ %if.then81
	.loc	16 90 17                        @ ../udivmoddi4.c:90:17
	cmp	r8, #0
	beq	.LBB29_59
@ %bb.58:                               @ %if.then83
	.loc	16 93 44                        @ ../udivmoddi4.c:93:44
	ldr	r2, [sp, #20]
	.loc	16 92 31                        @ ../udivmoddi4.c:92:31
	ldr	r0, [sp, #24]
	.loc	16 93 32                        @ ../udivmoddi4.c:93:32
	ldr	r1, [sp, #28]
	.loc	16 93 49 is_stmt 0              @ ../udivmoddi4.c:93:49
	sub	r2, r2, #1
	.loc	16 93 37                        @ ../udivmoddi4.c:93:37
	and	r1, r1, r2
	.loc	16 94 22 is_stmt 1              @ ../udivmoddi4.c:94:22
	stm	r8, {r0, r1}
	.loc	16 92 25                        @ ../udivmoddi4.c:92:25
	stm	sp, {r0, r1}
.LBB29_59:                              @ %if.end97
	.loc	16 96 50                        @ ../udivmoddi4.c:96:50
	ldr	r1, [sp, #20]
	.loc	16 96 24 is_stmt 0              @ ../udivmoddi4.c:96:24
	ldr	r0, [sp, #28]
	.loc	16 96 32                        @ ../udivmoddi4.c:96:32
	cmp	r1, #0
	beq	.LBB29_64
@ %bb.60:                               @ %cond.false
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
	b	.LBB29_65
.LBB29_61:                              @ %if.else235
	.loc	16 163 31 is_stmt 1             @ ../udivmoddi4.c:163:31
	ldr	r2, [sp, #24]
	.loc	16 164 33                       @ ../udivmoddi4.c:164:33
	ldr	r3, [sp, #28]
	.loc	16 166 26                       @ ../udivmoddi4.c:166:26
	str	r1, [sp, #4]
	.loc	16 163 53                       @ ../udivmoddi4.c:163:53
	rsb	r1, r12, #64
	.loc	16 163 35 is_stmt 0             @ ../udivmoddi4.c:163:35
	lsl	r5, r2, r1
	.loc	16 164 38 is_stmt 1             @ ../udivmoddi4.c:164:38
	lsl	r1, r3, r1
	.loc	16 163 25                       @ ../udivmoddi4.c:163:25
	str	r5, [sp, #8]
	.loc	16 165 44                       @ ../udivmoddi4.c:165:44
	sub	r5, r12, #32
	.loc	16 167 36                       @ ../udivmoddi4.c:167:36
	lsr	r4, r3, r5
	.loc	16 164 63                       @ ../udivmoddi4.c:164:63
	orr	r1, r1, r2, lsr r5
	.loc	16 167 25                       @ ../udivmoddi4.c:167:25
	str	r4, [sp]
	.loc	16 164 26                       @ ../udivmoddi4.c:164:26
	str	r1, [sp, #12]
	b	.LBB29_46
.LBB29_62:
	.loc	16 0 26 is_stmt 0               @ ../udivmoddi4.c:0:26
	mov	r0, #32
.LBB29_63:                              @ %cond.end17
	.loc	16 134 32 is_stmt 1             @ ../udivmoddi4.c:134:32
	ldr	r3, [sp, #28]
	.loc	16 135 68                       @ ../udivmoddi4.c:135:68
	ldr	r2, [sp, #24]
	.loc	16 135 54 is_stmt 0             @ ../udivmoddi4.c:135:54
	rsb	r6, r0, #32
	.loc	16 134 37 is_stmt 1             @ ../udivmoddi4.c:134:37
	lsr	r1, r3, r0
	.loc	16 135 37                       @ ../udivmoddi4.c:135:37
	lsl	r3, r3, r6
	.loc	16 135 61 is_stmt 0             @ ../udivmoddi4.c:135:61
	orr	r0, r3, r2, lsr r0
	.loc	16 134 26 is_stmt 1             @ ../udivmoddi4.c:134:26
	str	r1, [sp, #12]
	.loc	16 135 25                       @ ../udivmoddi4.c:135:25
	str	r0, [sp, #8]
	b	.LBB29_49
.LBB29_64:
	.loc	16 0 25 is_stmt 0               @ ../udivmoddi4.c:0:25
	mov	r1, #32
.LBB29_65:                              @ %cond.end
	.loc	16 96 29 is_stmt 1              @ ../udivmoddi4.c:96:29
	lsr	r0, r0, r1
	mov	r1, #0
	b	.LBB29_49
.Ltmp509:
	.p2align	2
@ %bb.66:
	.loc	16 0 29 is_stmt 0               @ ../udivmoddi4.c:0:29
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
	.file	17 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divmoddi4.c" md5 0xbd72633dccf26f3dd8ee74bf04f7fdac
	.loc	17 21 0 is_stmt 1               @ ../divmoddi4.c:21:0
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
.Ltmp510:
	.loc	17 22 14 prologue_end           @ ../divmoddi4.c:22:14
	bl	__divdi3
	ldr	r12, [r11, #8]
	.loc	17 23 16                        @ ../divmoddi4.c:23:16
	umull	r2, r3, r0, r5
	.loc	17 23 12 is_stmt 0              @ ../divmoddi4.c:23:12
	subs	r2, r7, r2
	.loc	17 23 16                        @ ../divmoddi4.c:23:16
	mla	r7, r0, r4, r3
	mla	r3, r1, r5, r7
	.loc	17 23 12                        @ ../divmoddi4.c:23:12
	sbc	r3, r6, r3
	.loc	17 23 8                         @ ../divmoddi4.c:23:8
	stm	r12, {r2, r3}
	.loc	17 24 3 is_stmt 1               @ ../divmoddi4.c:24:3
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
.Ltmp511:
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
	.file	18 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divmodsi4.c" md5 0x0cf7caca427f8ea020b675e27b5985b5
	.loc	18 21 0                         @ ../divmodsi4.c:21:0
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
.Ltmp512:
	.loc	18 22 14 prologue_end           @ ../divmodsi4.c:22:14
	bl	__divsi3
	.loc	18 23 16                        @ ../divmodsi4.c:23:16
	mul	r1, r0, r5
	.loc	18 23 12 is_stmt 0              @ ../divmodsi4.c:23:12
	sub	r1, r6, r1
	.loc	18 23 8                         @ ../divmodsi4.c:23:8
	str	r1, [r4]
	.loc	18 24 3 is_stmt 1               @ ../divmodsi4.c:24:3
	pop	{r4, r5, r6, r10, r11, lr}
	bx	lr
.Ltmp513:
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
	.file	19 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divsi3.c" md5 0x7845e3e46788425cf69d463f3cfe00e5
	.loc	19 23 0                         @ ../divsi3.c:23:0
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
.Ltmp514:
	.loc	19 28 12 prologue_end           @ ../divsi3.c:28:12
	eor	r1, r1, r1, asr #31
	mov	r5, r0
	.loc	19 27 12                        @ ../divsi3.c:27:12
	eor	r0, r0, r0, asr #31
	.loc	19 27 19 is_stmt 0              @ ../divsi3.c:27:19
	sub	r0, r0, r5, asr #31
	.loc	19 28 19 is_stmt 1              @ ../divsi3.c:28:19
	sub	r1, r1, r4, asr #31
	.loc	19 36 22                        @ ../divsi3.c:36:22
	bl	__udivsi3
	.loc	19 25 20                        @ ../divsi3.c:25:20
	asr	r1, r5, #31
	.loc	19 29 9                         @ ../divsi3.c:29:9
	eor	r1, r1, r4, asr #31
	.loc	19 36 33                        @ ../divsi3.c:36:33
	eor	r0, r0, r1
	.loc	19 36 40 is_stmt 0              @ ../divsi3.c:36:40
	sub	r0, r0, r1
	.loc	19 36 5                         @ ../divsi3.c:36:5
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp515:
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
	.file	20 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ffsdi2.c" md5 0x4b800e1cad35a0bc99971441032171a3
	.loc	20 23 0 is_stmt 1               @ ../ffsdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
.Ltmp516:
	.loc	20 26 9 prologue_end            @ ../ffsdi2.c:26:9
	cmp	r0, #0
	.loc	20 25 11                        @ ../ffsdi2.c:25:11
	stm	sp, {r0, r1}
	.loc	20 26 9                         @ ../ffsdi2.c:26:9
	beq	.LBB33_3
@ %bb.1:                                @ %if.end6
	.loc	20 32 30                        @ ../ffsdi2.c:32:30
	ldr	r0, [sp]
	.loc	20 32 12 is_stmt 0              @ ../ffsdi2.c:32:12
	cmp	r0, #0
	beq	.LBB33_6
@ %bb.2:                                @ %cond.false2
	sub	r1, r0, #1
	bic	r0, r1, r0
	ldr	r1, .LCPI33_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r1, .LCPI33_1
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	ldr	r1, .LCPI33_2
	add	r0, r0, r2
	add	r0, r0, r0, lsr #4
	and	r0, r0, r1
	ldr	r1, .LCPI33_3
	mul	r2, r0, r1
	lsr	r0, r2, #24
	b	.LBB33_7
.LBB33_3:                               @ %if.then
	.loc	20 28 17 is_stmt 1              @ ../ffsdi2.c:28:17
	ldr	r0, [sp, #4]
	.loc	20 28 13 is_stmt 0              @ ../ffsdi2.c:28:13
	cmp	r0, #0
	moveq	r0, #0
	.loc	20 33 1 is_stmt 1               @ ../ffsdi2.c:33:1
	addeq	sp, sp, #8
	bxeq	lr
.LBB33_4:                               @ %if.end
	.loc	20 30 34                        @ ../ffsdi2.c:30:34
	ldr	r0, [sp, #4]
	.loc	20 30 16 is_stmt 0              @ ../ffsdi2.c:30:16
	cmp	r0, #0
	beq	.LBB33_8
@ %bb.5:                                @ %cond.false
	sub	r1, r0, #1
	bic	r0, r1, r0
	ldr	r1, .LCPI33_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r1, .LCPI33_1
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	ldr	r1, .LCPI33_2
	add	r0, r0, r2
	add	r0, r0, r0, lsr #4
	and	r0, r0, r1
	ldr	r1, .LCPI33_3
	mul	r2, r0, r1
	lsr	r0, r2, #24
	b	.LBB33_9
.LBB33_6:
	.loc	20 0 16                         @ ../ffsdi2.c:0:16
	mov	r0, #32
.LBB33_7:                               @ %cond.end3
	.loc	20 32 35 is_stmt 1              @ ../ffsdi2.c:32:35
	add	r0, r0, #1
	.loc	20 33 1                         @ ../ffsdi2.c:33:1
	add	sp, sp, #8
	bx	lr
.LBB33_8:
	.loc	20 0 1 is_stmt 0                @ ../ffsdi2.c:0:1
	mov	r0, #32
.LBB33_9:
	.loc	20 30 40 is_stmt 1              @ ../ffsdi2.c:30:40
	add	r0, r0, #33
	.loc	20 33 1                         @ ../ffsdi2.c:33:1
	add	sp, sp, #8
	bx	lr
.Ltmp517:
	.p2align	2
@ %bb.10:
	.loc	20 0 1 is_stmt 0                @ ../ffsdi2.c:0:1
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
	.file	21 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ffssi2.c" md5 0x182169d6765bddc2bf1b03cc7a4f47cb
	.loc	21 23 0 is_stmt 1               @ ../ffssi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	21 24 9 prologue_end            @ ../ffssi2.c:24:9
	cmp	r0, #0
	moveq	r0, #0
	.loc	21 29 1                         @ ../ffssi2.c:29:1
	bxeq	lr
.LBB34_1:                               @ %if.end
	.loc	21 28 12                        @ ../ffssi2.c:28:12
	sub	r1, r0, #1
	bic	r0, r1, r0
	ldr	r1, .LCPI34_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r1, .LCPI34_1
	and	r2, r1, r0, lsr #2
	and	r0, r0, r1
	ldr	r1, .LCPI34_2
	add	r0, r0, r2
	add	r0, r0, r0, lsr #4
	and	r0, r0, r1
	ldr	r1, .LCPI34_3
	mul	r2, r0, r1
	mov	r0, #1
	.loc	21 28 29 is_stmt 0              @ ../ffssi2.c:28:29
	add	r0, r0, r2, lsr #24
	.loc	21 29 1 is_stmt 1               @ ../ffssi2.c:29:1
	bx	lr
.Ltmp518:
	.p2align	2
@ %bb.2:
	.loc	21 0 1 is_stmt 0                @ ../ffssi2.c:0:1
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
	.file	22 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../lshrdi3.c" md5 0xc456e45323b3205c3b32d82b51570771
	.loc	22 25 0 is_stmt 1               @ ../lshrdi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp519:
	.loc	22 30 9 prologue_end            @ ../lshrdi3.c:30:9
	tst	r2, #32
	.loc	22 29 15                        @ ../lshrdi3.c:29:15
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	22 30 9                         @ ../lshrdi3.c:30:9
	bne	.LBB35_3
@ %bb.1:                                @ %if.else
	.loc	22 37 13                        @ ../lshrdi3.c:37:13
	cmp	r2, #0
	beq	.LBB35_5
@ %bb.2:                                @ %if.end
	.loc	22 39 34                        @ ../lshrdi3.c:39:34
	ldr	r1, [sp, #12]
	.loc	22 40 72                        @ ../lshrdi3.c:40:72
	ldr	r0, [sp, #8]
	.loc	22 39 39                        @ ../lshrdi3.c:39:39
	lsr	r3, r1, r2
	.loc	22 39 24 is_stmt 0              @ ../lshrdi3.c:39:24
	str	r3, [sp, #4]
	.loc	22 40 55 is_stmt 1              @ ../lshrdi3.c:40:55
	rsb	r3, r2, #32
	.loc	22 40 38 is_stmt 0              @ ../lshrdi3.c:40:38
	lsl	r1, r1, r3
	.loc	22 40 61                        @ ../lshrdi3.c:40:61
	orr	r0, r1, r0, lsr r2
	b	.LBB35_4
.LBB35_3:                               @ %if.then
	.loc	22 33 32 is_stmt 1              @ ../lshrdi3.c:33:32
	ldr	r1, [sp, #12]
	mov	r0, #0
	.loc	22 32 23                        @ ../lshrdi3.c:32:23
	str	r0, [sp, #4]
	.loc	22 33 43                        @ ../lshrdi3.c:33:43
	sub	r0, r2, #32
	.loc	22 33 37 is_stmt 0              @ ../lshrdi3.c:33:37
	lsr	r0, r1, r0
.LBB35_4:                               @ %if.end18
	.loc	22 0 0                          @ ../lshrdi3.c:0:0
	str	r0, [sp]
	.loc	22 42 19 is_stmt 1              @ ../lshrdi3.c:42:19
	ldm	sp, {r0, r1}
.LBB35_5:                               @ %return
	.loc	22 43 1                         @ ../lshrdi3.c:43:1
	add	sp, sp, #16
	bx	lr
.Ltmp520:
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
	.file	23 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../moddi3.c" md5 0x76733914157a978303cbe3d6f6d1c647
	.loc	23 21 0                         @ ../moddi3.c:21:0
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
.Ltmp521:
	.loc	23 26 12 prologue_end           @ ../moddi3.c:26:12
	eor	r0, r0, r5, asr #31
	.loc	23 28 5                         @ ../moddi3.c:28:5
	str	r1, [sp]
	.loc	23 26 12                        @ ../moddi3.c:26:12
	eor	r1, r5, r5, asr #31
	.loc	23 26 17 is_stmt 0              @ ../moddi3.c:26:17
	subs	r0, r0, r5, asr #31
	sbc	r1, r1, r5, asr #31
	.loc	23 24 17 is_stmt 1              @ ../moddi3.c:24:17
	adds	r2, r2, r3, asr #31
	adc	r4, r3, r3, asr #31
	eor	r2, r2, r3, asr #31
	eor	r3, r4, r3, asr #31
	.loc	23 28 5                         @ ../moddi3.c:28:5
	bl	__udivmoddi4
	.loc	23 29 21                        @ ../moddi3.c:29:21
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	.loc	23 29 23 is_stmt 0              @ ../moddi3.c:29:23
	eor	r0, r0, r5, asr #31
	eor	r1, r1, r5, asr #31
	.loc	23 29 28                        @ ../moddi3.c:29:28
	subs	r0, r0, r5, asr #31
	sbc	r1, r1, r5, asr #31
	.loc	23 29 5                         @ ../moddi3.c:29:5
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp522:
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
	.file	24 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../modsi3.c" md5 0xada583aff17540d2228ce14dc879fdc8
	.loc	24 21 0 is_stmt 1               @ ../modsi3.c:21:0
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
.Ltmp523:
	.loc	24 22 16 prologue_end           @ ../modsi3.c:22:16
	bl	__divsi3
	.loc	24 22 31 is_stmt 0              @ ../modsi3.c:22:31
	mul	r1, r0, r4
	.loc	24 22 14                        @ ../modsi3.c:22:14
	sub	r0, r5, r1
	.loc	24 22 5                         @ ../modsi3.c:22:5
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp524:
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
	.file	25 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../mulvdi3.c" md5 0xbb6aa1440e4e37fe94db90279d27db10
	.loc	25 23 0 is_stmt 1               @ ../mulvdi3.c:23:0
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
.Ltmp525:
	.loc	25 27 11 prologue_end           @ ../mulvdi3.c:27:11
	eor	r0, r1, #-2147483648
	mov	r5, r3
	mov	r4, r2
	mov	r6, r1
	orrs	r0, r7, r0
	.loc	25 27 9 is_stmt 0               @ ../mulvdi3.c:27:9
	bne	.LBB38_3
@ %bb.1:                                @ %if.then
	.loc	25 29 15 is_stmt 1              @ ../mulvdi3.c:29:15
	orrs	r0, r4, r5
	.loc	25 29 25 is_stmt 0              @ ../mulvdi3.c:29:25
	eorne	r0, r4, #1
	orrsne	r0, r0, r5
	beq	.LBB38_12
@ %bb.2:                                @ %if.end
	.loc	25 31 9 is_stmt 1               @ ../mulvdi3.c:31:9
	ldr	r0, .LCPI38_0
	ldr	r2, .LCPI38_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB38_3:                               @ %if.end4
	.loc	25 0 9 is_stmt 0                @ ../mulvdi3.c:0:9
	mov	r0, #-2147483648
	.loc	25 33 11 is_stmt 1              @ ../mulvdi3.c:33:11
	eor	r0, r5, r0
	orrs	r0, r4, r0
	.loc	25 33 9 is_stmt 0               @ ../mulvdi3.c:33:9
	bne	.LBB38_6
@ %bb.4:                                @ %if.then6
	.loc	25 35 15 is_stmt 1              @ ../mulvdi3.c:35:15
	orrs	r0, r7, r6
	.loc	25 35 25 is_stmt 0              @ ../mulvdi3.c:35:25
	eorne	r0, r7, #1
	orrsne	r0, r0, r6
	beq	.LBB38_12
@ %bb.5:                                @ %if.end12
	.loc	25 37 9 is_stmt 1               @ ../mulvdi3.c:37:9
	ldr	r0, .LCPI38_0
	ldr	r2, .LCPI38_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB38_6:                               @ %if.end13
	.loc	25 42 23                        @ ../mulvdi3.c:42:23
	eor	r0, r4, r5, asr #31
	eor	r1, r5, r5, asr #31
	.loc	25 42 29 is_stmt 0              @ ../mulvdi3.c:42:29
	subs	r2, r0, r5, asr #31
	.loc	25 40 23 is_stmt 1              @ ../mulvdi3.c:40:23
	eor	r0, r7, r6, asr #31
	.loc	25 42 29                        @ ../mulvdi3.c:42:29
	sbc	r3, r1, r5, asr #31
	.loc	25 40 23                        @ ../mulvdi3.c:40:23
	eor	r1, r6, r6, asr #31
	.loc	25 40 29 is_stmt 0              @ ../mulvdi3.c:40:29
	subs	r9, r0, r6, asr #31
	sbc	r8, r1, r6, asr #31
	.loc	25 43 15 is_stmt 1              @ ../mulvdi3.c:43:15
	subs	r0, r9, #2
	sbcs	r0, r8, #0
	.loc	25 43 19 is_stmt 0              @ ../mulvdi3.c:43:19
	blt	.LBB38_12
@ %bb.7:                                @ %lor.lhs.false18
	.loc	25 43 28                        @ ../mulvdi3.c:43:28
	subs	r0, r2, #2
	sbcs	r0, r3, #0
	.loc	25 43 9                         @ ../mulvdi3.c:43:9
	blt	.LBB38_12
@ %bb.8:                                @ %if.end22
	.loc	25 0 0                          @ ../mulvdi3.c:0:0
	asr	r0, r5, #31
	asr	r1, r6, #31
	.loc	25 45 12 is_stmt 1              @ ../mulvdi3.c:45:12
	eor	r0, r1, r0
	orrs	r0, r0, r0
	.loc	25 45 9 is_stmt 0               @ ../mulvdi3.c:45:9
	bne	.LBB38_11
@ %bb.9:                                @ %if.then24
	.loc	25 47 25 is_stmt 1              @ ../mulvdi3.c:47:25
	mvn	r0, #0
	mvn	r1, #-2147483648
	bl	__divdi3
	.loc	25 47 19 is_stmt 0              @ ../mulvdi3.c:47:19
	subs	r0, r0, r9
	sbcs	r0, r1, r8
	.loc	25 47 13                        @ ../mulvdi3.c:47:13
	bge	.LBB38_12
@ %bb.10:                               @ %if.then26
	.loc	25 48 13 is_stmt 1              @ ../mulvdi3.c:48:13
	ldr	r0, .LCPI38_0
	ldr	r2, .LCPI38_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB38_11:                              @ %if.else
	.loc	25 52 27                        @ ../mulvdi3.c:52:27
	rsbs	r2, r2, #0
	.loc	25 52 25 is_stmt 0              @ ../mulvdi3.c:52:25
	mov	r0, #0
	mov	r1, #-2147483648
	.loc	25 52 27                        @ ../mulvdi3.c:52:27
	rsc	r3, r3, #0
	.loc	25 52 25                        @ ../mulvdi3.c:52:25
	bl	__divdi3
	.loc	25 52 19                        @ ../mulvdi3.c:52:19
	subs	r0, r0, r9
	sbcs	r0, r1, r8
	.loc	25 52 13                        @ ../mulvdi3.c:52:13
	blt	.LBB38_13
.LBB38_12:                              @ %return
	.loc	25 0 0                          @ ../mulvdi3.c:0:0
	umull	r0, r1, r7, r4
	mla	r2, r7, r5, r1
	mla	r1, r6, r4, r2
	.loc	25 56 1 is_stmt 1               @ ../mulvdi3.c:56:1
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	bx	lr
.LBB38_13:                              @ %if.then31
	.loc	25 53 13                        @ ../mulvdi3.c:53:13
	ldr	r0, .LCPI38_0
	ldr	r2, .LCPI38_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.Ltmp526:
	.p2align	2
@ %bb.14:
	.loc	25 0 13 is_stmt 0               @ ../mulvdi3.c:0:13
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
	.file	26 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../mulvsi3.c" md5 0x32cd947949fac3c039bd0839cd5d7c78
	.loc	26 23 0 is_stmt 1               @ ../mulvsi3.c:23:0
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
.Ltmp527:
	.loc	26 27 9 prologue_end            @ ../mulvsi3.c:27:9
	cmp	r0, #-2147483648
	bne	.LBB39_3
@ %bb.1:                                @ %if.then
	.loc	26 29 20                        @ ../mulvsi3.c:29:20
	cmp	r4, #0
	.loc	26 29 13 is_stmt 0              @ ../mulvsi3.c:29:13
	cmpne	r4, #1
	beq	.LBB39_12
@ %bb.2:                                @ %if.end
	.loc	26 31 9 is_stmt 1               @ ../mulvsi3.c:31:9
	ldr	r0, .LCPI39_0
	ldr	r2, .LCPI39_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB39_3:                               @ %if.end4
	.loc	26 33 9                         @ ../mulvsi3.c:33:9
	cmp	r4, #-2147483648
	bne	.LBB39_6
@ %bb.4:                                @ %if.then6
	.loc	26 35 20                        @ ../mulvsi3.c:35:20
	cmp	r5, #0
	.loc	26 35 13 is_stmt 0              @ ../mulvsi3.c:35:13
	cmpne	r5, #1
	beq	.LBB39_12
@ %bb.5:                                @ %if.end12
	.loc	26 37 9 is_stmt 1               @ ../mulvsi3.c:37:9
	ldr	r0, .LCPI39_0
	ldr	r2, .LCPI39_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB39_6:                               @ %if.end13
	.loc	26 40 23                        @ ../mulvsi3.c:40:23
	eor	r0, r5, r5, asr #31
	.loc	26 40 29 is_stmt 0              @ ../mulvsi3.c:40:29
	sub	r6, r0, r5, asr #31
	.loc	26 43 19 is_stmt 1              @ ../mulvsi3.c:43:19
	cmp	r6, #2
	blt	.LBB39_12
@ %bb.7:                                @ %lor.lhs.false18
	.loc	26 0 0 is_stmt 0                @ ../mulvsi3.c:0:0
	eor	r0, r4, r4, asr #31
	sub	r1, r0, r4, asr #31
	.loc	26 43 9                         @ ../mulvsi3.c:43:9
	cmp	r1, #2
	blt	.LBB39_12
@ %bb.8:                                @ %if.end22
	.loc	26 0 0                          @ ../mulvsi3.c:0:0
	asr	r0, r4, #31
	asr	r2, r5, #31
	.loc	26 45 9 is_stmt 1               @ ../mulvsi3.c:45:9
	cmp	r2, r0
	bne	.LBB39_11
@ %bb.9:                                @ %if.then24
	.loc	26 47 25                        @ ../mulvsi3.c:47:25
	mvn	r0, #-2147483648
	bl	__divsi3
	.loc	26 47 13 is_stmt 0              @ ../mulvsi3.c:47:13
	cmp	r6, r0
	ble	.LBB39_12
@ %bb.10:                               @ %if.then26
	.loc	26 48 13 is_stmt 1              @ ../mulvsi3.c:48:13
	ldr	r0, .LCPI39_0
	ldr	r2, .LCPI39_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB39_11:                              @ %if.else
	.loc	26 52 27                        @ ../mulvsi3.c:52:27
	rsb	r1, r1, #0
	.loc	26 52 25 is_stmt 0              @ ../mulvsi3.c:52:25
	mov	r0, #-2147483648
	bl	__divsi3
	.loc	26 52 13                        @ ../mulvsi3.c:52:13
	cmp	r6, r0
	bgt	.LBB39_13
.LBB39_12:                              @ %return
	.loc	26 0 0                          @ ../mulvsi3.c:0:0
	mul	r0, r5, r4
	.loc	26 56 1 is_stmt 1               @ ../mulvsi3.c:56:1
	pop	{r4, r5, r6, r10, r11, lr}
	bx	lr
.LBB39_13:                              @ %if.then31
	.loc	26 53 13                        @ ../mulvsi3.c:53:13
	ldr	r0, .LCPI39_0
	ldr	r2, .LCPI39_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.Ltmp528:
	.p2align	2
@ %bb.14:
	.loc	26 0 13 is_stmt 0               @ ../mulvsi3.c:0:13
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
	.file	27 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../paritydi2.c" md5 0xbd9549e31bcebf1c2265048ea6f18a77
	.loc	27 21 0 is_stmt 1               @ ../paritydi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp529:
	.loc	27 23 11 prologue_end           @ ../paritydi2.c:23:11
	push	{r0, r1}
	.loc	27 24 33                        @ ../paritydi2.c:24:33
	eor	r0, r1, r0
	.loc	27 24 12 is_stmt 0              @ ../paritydi2.c:24:12
	bl	__paritysi2
	.loc	27 24 5                         @ ../paritydi2.c:24:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp530:
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
	.file	28 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../paritysi2.c" md5 0x235e89e1ac3c55fb43879550247ea25b
	.loc	28 21 0 is_stmt 1               @ ../paritysi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	28 23 7 prologue_end            @ ../paritysi2.c:23:7
	eor	r0, r0, r0, lsr #16
	mov	r1, #150
	mov	r2, #1
	.loc	28 24 7                         @ ../paritysi2.c:24:7
	eor	r0, r0, r0, lsr #8
	orr	r1, r1, #26880
	.loc	28 25 7                         @ ../paritysi2.c:25:7
	eor	r0, r0, r0, lsr #4
	.loc	28 26 26                        @ ../paritysi2.c:26:26
	and	r0, r0, #15
	.loc	28 26 34 is_stmt 0              @ ../paritysi2.c:26:34
	and	r0, r2, r1, lsr r0
	.loc	28 26 5                         @ ../paritysi2.c:26:5
	bx	lr
.Ltmp531:
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
	.file	29 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountdi2.c" md5 0x05f001da7fc478c773612fd707769c2a
	.loc	29 21 0 is_stmt 1               @ ../popcountdi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	ldr	r12, .LCPI42_0
.Ltmp532:
	.loc	29 23 20 prologue_end           @ ../popcountdi2.c:23:20
	lsrs	r2, r1, #1
	rrx	r3, r0
	.loc	29 23 26 is_stmt 0              @ ../popcountdi2.c:23:26
	and	r3, r3, r12
	and	r2, r2, r12
	ldr	r12, .LCPI42_2
	.loc	29 23 13                        @ ../popcountdi2.c:23:13
	subs	r0, r0, r3
	sbc	r1, r1, r2
	ldr	r2, .LCPI42_1
	.loc	29 25 52 is_stmt 1              @ ../popcountdi2.c:25:52
	and	r3, r1, r2
	.loc	29 25 21 is_stmt 0              @ ../popcountdi2.c:25:21
	and	r1, r2, r1, lsr #2
	.loc	29 25 46                        @ ../popcountdi2.c:25:46
	add	r1, r1, r3
	.loc	29 25 52                        @ ../popcountdi2.c:25:52
	and	r3, r0, r2
	.loc	29 25 21                        @ ../popcountdi2.c:25:21
	and	r0, r2, r0, lsr #2
	.loc	29 25 46                        @ ../popcountdi2.c:25:46
	add	r0, r0, r3
	.loc	29 27 14 is_stmt 1              @ ../popcountdi2.c:27:14
	add	r1, r1, r1, lsr #4
	add	r0, r0, r0, lsr #4
	.loc	29 27 27 is_stmt 0              @ ../popcountdi2.c:27:27
	and	r1, r1, r12
	and	r0, r0, r12
	.loc	29 29 28 is_stmt 1              @ ../popcountdi2.c:29:28
	add	r0, r0, r1
	.loc	29 32 11                        @ ../popcountdi2.c:32:11
	add	r0, r0, r0, lsr #16
	.loc	29 35 15                        @ ../popcountdi2.c:35:15
	add	r0, r0, r0, lsr #8
	.loc	29 35 27 is_stmt 0              @ ../popcountdi2.c:35:27
	and	r0, r0, #255
	.loc	29 35 5                         @ ../popcountdi2.c:35:5
	bx	lr
.Ltmp533:
	.p2align	2
@ %bb.1:
	.loc	29 0 5                          @ ../popcountdi2.c:0:5
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
	.file	30 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountsi2.c" md5 0xf9ebedb2d8810ee5a54fff38e1b09d64
	.loc	30 21 0 is_stmt 1               @ ../popcountsi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	ldr	r1, .LCPI43_0
.Ltmp534:
	.loc	30 23 23 prologue_end           @ ../popcountsi2.c:23:23
	and	r1, r1, r0, lsr #1
	.loc	30 23 11 is_stmt 0              @ ../popcountsi2.c:23:11
	sub	r0, r0, r1
	ldr	r1, .LCPI43_1
	.loc	30 25 38 is_stmt 1              @ ../popcountsi2.c:25:38
	and	r2, r0, r1
	.loc	30 25 19 is_stmt 0              @ ../popcountsi2.c:25:19
	and	r0, r1, r0, lsr #2
	ldr	r1, .LCPI43_2
	.loc	30 25 33                        @ ../popcountsi2.c:25:33
	add	r0, r0, r2
	.loc	30 27 12 is_stmt 1              @ ../popcountsi2.c:27:12
	add	r0, r0, r0, lsr #4
	.loc	30 27 24 is_stmt 0              @ ../popcountsi2.c:27:24
	and	r0, r0, r1
	.loc	30 29 12 is_stmt 1              @ ../popcountsi2.c:29:12
	add	r0, r0, r0, lsr #16
	.loc	30 32 15                        @ ../popcountsi2.c:32:15
	add	r0, r0, r0, lsr #8
	.loc	30 32 27 is_stmt 0              @ ../popcountsi2.c:32:27
	and	r0, r0, #255
	.loc	30 32 5                         @ ../popcountsi2.c:32:5
	bx	lr
.Ltmp535:
	.p2align	2
@ %bb.1:
	.loc	30 0 5                          @ ../popcountsi2.c:0:5
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
	.file	31 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../subvdi3.c" md5 0x5774ab7a3a8e168deb55531047d6a873
	.loc	31 23 0 is_stmt 1               @ ../subvdi3.c:23:0
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
.Ltmp536:
	.loc	31 24 27 prologue_end           @ ../subvdi3.c:24:27
	subs	r0, r0, r2
	mov	r12, r1
	sbc	r1, r1, r3
	.loc	31 25 9                         @ ../subvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB44_3
@ %bb.1:                                @ %if.then
	.loc	31 27 15                        @ ../subvdi3.c:27:15
	subs	r2, lr, r0
	sbcs	r2, r12, r1
	.loc	31 27 13 is_stmt 0              @ ../subvdi3.c:27:13
	bge	.LBB44_4
@ %bb.2:                                @ %if.then2
	.loc	31 28 13 is_stmt 1              @ ../subvdi3.c:28:13
	ldr	r0, .LCPI44_0
	ldr	r2, .LCPI44_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB44_3:                               @ %if.else
	.loc	31 32 15                        @ ../subvdi3.c:32:15
	subs	r2, lr, r0
	sbcs	r2, r12, r1
	.loc	31 32 13 is_stmt 0              @ ../subvdi3.c:32:13
	bge	.LBB44_5
.LBB44_4:                               @ %if.end6
	.loc	31 35 5 is_stmt 1               @ ../subvdi3.c:35:5
	pop	{r11, lr}
	bx	lr
.LBB44_5:                               @ %if.then4
	.loc	31 33 13                        @ ../subvdi3.c:33:13
	ldr	r0, .LCPI44_0
	ldr	r2, .LCPI44_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.Ltmp537:
	.p2align	2
@ %bb.6:
	.loc	31 0 13 is_stmt 0               @ ../subvdi3.c:0:13
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
	.file	32 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../subvsi3.c" md5 0xc9558a85e8fabce36f42a29933bd87e9
	.loc	32 23 0 is_stmt 1               @ ../subvsi3.c:23:0
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
.Ltmp538:
	.loc	32 24 27 prologue_end           @ ../subvsi3.c:24:27
	sub	r0, r0, r1
	.loc	32 25 9                         @ ../subvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB45_3
@ %bb.1:                                @ %if.then
	.loc	32 27 13                        @ ../subvsi3.c:27:13
	cmp	r0, r2
	ble	.LBB45_4
@ %bb.2:                                @ %if.then2
	.loc	32 28 13                        @ ../subvsi3.c:28:13
	ldr	r0, .LCPI45_0
	ldr	r2, .LCPI45_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB45_3:                               @ %if.else
	.loc	32 32 13                        @ ../subvsi3.c:32:13
	cmp	r0, r2
	ble	.LBB45_5
.LBB45_4:                               @ %if.end6
	.loc	32 35 5                         @ ../subvsi3.c:35:5
	pop	{r11, lr}
	bx	lr
.LBB45_5:                               @ %if.then4
	.loc	32 33 13                        @ ../subvsi3.c:33:13
	ldr	r0, .LCPI45_0
	ldr	r2, .LCPI45_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.Ltmp539:
	.p2align	2
@ %bb.6:
	.loc	32 0 13 is_stmt 0               @ ../subvsi3.c:0:13
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
	.file	33 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ucmpdi2.c" md5 0x79f778ef54939446d175079e19d07756
	.loc	33 24 0 is_stmt 1               @ ../ucmpdi2.c:24:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.Ltmp540:
	.loc	33 26 11 prologue_end           @ ../ucmpdi2.c:26:11
	str	r0, [sp, #8]
	mov	r0, #0
	.loc	33 29 9                         @ ../ucmpdi2.c:29:9
	cmp	r1, r3
	.loc	33 26 11                        @ ../ucmpdi2.c:26:11
	str	r1, [sp, #12]
	.loc	33 28 11                        @ ../ucmpdi2.c:28:11
	stm	sp, {r2, r3}
	.loc	33 29 9                         @ ../ucmpdi2.c:29:9
	blo	.LBB46_4
@ %bb.1:                                @ %if.end
	.loc	33 31 24                        @ ../ucmpdi2.c:31:24
	ldr	r1, [sp, #4]
	.loc	33 31 13 is_stmt 0              @ ../ucmpdi2.c:31:13
	ldr	r2, [sp, #12]
	.loc	33 31 9                         @ ../ucmpdi2.c:31:9
	cmp	r2, r1
	movhi	r0, #2
	.loc	33 38 1 is_stmt 1               @ ../ucmpdi2.c:38:1
	addhi	sp, sp, #16
	bxhi	lr
.LBB46_2:                               @ %if.end10
	.loc	33 33 23                        @ ../ucmpdi2.c:33:23
	ldr	r1, [sp]
	.loc	33 33 13 is_stmt 0              @ ../ucmpdi2.c:33:13
	ldr	r2, [sp, #8]
	.loc	33 33 9                         @ ../ucmpdi2.c:33:9
	cmp	r2, r1
	blo	.LBB46_4
@ %bb.3:                                @ %if.end16
	.loc	33 35 23 is_stmt 1              @ ../ucmpdi2.c:35:23
	ldr	r0, [sp]
	.loc	33 35 13 is_stmt 0              @ ../ucmpdi2.c:35:13
	ldr	r1, [sp, #8]
	.loc	33 35 9                         @ ../ucmpdi2.c:35:9
	cmp	r1, r0
	mov	r0, #2
	movls	r0, #1
.LBB46_4:                               @ %return
	.loc	33 38 1 is_stmt 1               @ ../ucmpdi2.c:38:1
	add	sp, sp, #16
	bx	lr
.Ltmp541:
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
	.loc	33 47 0                         @ ../ucmpdi2.c:47:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp542:
	.loc	33 48 9 prologue_end            @ ../ucmpdi2.c:48:9
	bl	__ucmpdi2
	.loc	33 48 25 is_stmt 0              @ ../ucmpdi2.c:48:25
	sub	r0, r0, #1
	.loc	33 48 2                         @ ../ucmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp543:
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
	.file	34 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivdi3.c" md5 0x580a28989090b62fc3d261faa6e31a6b
	.loc	34 21 0 is_stmt 1               @ ../udivdi3.c:21:0
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
.Ltmp544:
	.loc	34 22 12 prologue_end           @ ../udivdi3.c:22:12
	str	r12, [sp]
	bl	__udivmoddi4
	.loc	34 22 5 is_stmt 0               @ ../udivdi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp545:
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
	.file	35 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivmodsi4.c" md5 0xc0341684574a20dbcfbe4df0ab9f8538
	.loc	35 21 0 is_stmt 1               @ ../udivmodsi4.c:21:0
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
.Ltmp546:
	.loc	35 22 14 prologue_end           @ ../udivmodsi4.c:22:14
	bl	__udivsi3
	.loc	35 23 16                        @ ../udivmodsi4.c:23:16
	mul	r1, r0, r5
	.loc	35 23 12 is_stmt 0              @ ../udivmodsi4.c:23:12
	sub	r1, r6, r1
	.loc	35 23 8                         @ ../udivmodsi4.c:23:8
	str	r1, [r4]
	.loc	35 24 3 is_stmt 1               @ ../udivmodsi4.c:24:3
	pop	{r4, r5, r6, r10, r11, lr}
	bx	lr
.Ltmp547:
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
	.file	36 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivsi3.c" md5 0xb74987a973aededf95faab34db33f58a
	.loc	36 26 0                         @ ../udivsi3.c:26:0
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
.Ltmp548:
	.loc	36 32 9 prologue_end            @ ../udivsi3.c:32:9
	cmp	r1, #0
	mov	r5, #0
	movne	r6, r0
	.loc	36 34 9                         @ ../udivsi3.c:34:9
	cmpne	r0, #0
	bne	.LBB50_2
.LBB50_1:                               @ %return
	.loc	36 66 1                         @ ../udivsi3.c:66:1
	mov	r0, r5
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
.LBB50_2:                               @ %if.end3
	.loc	36 36 10                        @ ../udivsi3.c:36:10
	mov	r0, r1
	mov	r4, r1
	bl	__clzsi2
	mov	r7, r0
	.loc	36 36 29 is_stmt 0              @ ../udivsi3.c:36:29
	mov	r0, r6
	bl	__clzsi2
	.loc	36 36 27                        @ ../udivsi3.c:36:27
	sub	r1, r7, r0
	.loc	36 38 9 is_stmt 1               @ ../udivsi3.c:38:9
	cmp	r1, #31
	bhi	.LBB50_1
@ %bb.3:                                @ %if.end6
	.loc	36 40 9                         @ ../udivsi3.c:40:9
	bne	.LBB50_5
@ %bb.4:
	.loc	36 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r5, r6
	b	.LBB50_1
.LBB50_5:                               @ %if.end9
	.loc	36 48 5 is_stmt 1               @ ../udivsi3.c:48:5
	mvn	r2, r7
	mov	r3, #0
	add	r0, r2, r0
	.loc	36 42 5                         @ ../udivsi3.c:42:5
	add	r2, r1, #1
	.loc	36 45 28                        @ ../udivsi3.c:45:28
	rsb	r1, r1, #31
	.loc	36 46 11                        @ ../udivsi3.c:46:11
	lsr	r2, r6, r2
	.loc	36 45 11                        @ ../udivsi3.c:45:11
	lsl	r1, r6, r1
	.loc	36 48 5                         @ ../udivsi3.c:48:5
	cmp	r0, #0
	beq	.LBB50_7
.LBB50_6:                               @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	.loc	36 51 22                        @ ../udivsi3.c:51:22
	lsl	r2, r2, #1
	.loc	36 48 5                         @ ../udivsi3.c:48:5
	add	r0, r0, #1
	.loc	36 51 22                        @ ../udivsi3.c:51:22
	orr	r2, r2, r1, lsr #31
	.loc	36 52 22                        @ ../udivsi3.c:52:22
	orr	r1, r3, r1, lsl #1
	.loc	36 60 41                        @ ../udivsi3.c:60:41
	mvn	r7, r2
	adds	r7, r7, r4
	.loc	36 62 11                        @ ../udivsi3.c:62:11
	submi	r2, r2, r4
	.loc	36 61 19                        @ ../udivsi3.c:61:19
	lsr	r3, r7, #31
	.loc	36 48 5                         @ ../udivsi3.c:48:5
	cmp	r0, #0
	bne	.LBB50_6
.LBB50_7:                               @ %for.end
	.loc	36 64 18                        @ ../udivsi3.c:64:18
	orr	r5, r3, r1, lsl #1
	b	.LBB50_1
.Ltmp549:
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
	.file	37 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../umoddi3.c" md5 0x1a99e635325595a81040fb97dab88295
	.loc	37 21 0                         @ ../umoddi3.c:21:0
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
.Ltmp550:
	.loc	37 23 5 prologue_end            @ ../umoddi3.c:23:5
	str	r12, [sp]
	bl	__udivmoddi4
	.loc	37 24 12                        @ ../umoddi3.c:24:12
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	.loc	37 24 5 is_stmt 0               @ ../umoddi3.c:24:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp551:
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
	.file	38 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../umodsi3.c" md5 0xce74ac33cd2bd170a84f43824cae8961
	.loc	38 21 0 is_stmt 1               @ ../umodsi3.c:21:0
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
.Ltmp552:
	.loc	38 22 16 prologue_end           @ ../umodsi3.c:22:16
	bl	__udivsi3
	.loc	38 22 32 is_stmt 0              @ ../umodsi3.c:22:32
	mul	r1, r0, r4
	.loc	38 22 14                        @ ../umodsi3.c:22:14
	sub	r0, r5, r1
	.loc	38 22 5                         @ ../umodsi3.c:22:5
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp553:
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
	.file	39 "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" "../memory.c" md5 0xfa9c872a007b30a353222cd13b38538d
	.loc	39 4 0 is_stmt 1                @ ../memory.c:4:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
.LBB53_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	39 8 2 prologue_end             @ ../memory.c:8:2
	cmp	r2, #0
	.loc	39 11 1                         @ ../memory.c:11:1
	bxeq	lr
.LBB53_2:                               @ %for.body
                                        @   in Loop: Header=BB53_1 Depth=1
	.loc	39 9 21                         @ ../memory.c:9:21
	ldrb	r3, [r1]
	.loc	39 8 2                          @ ../memory.c:8:2
	sub	r2, r2, #1
	add	r1, r1, #1
	.loc	39 9 19                         @ ../memory.c:9:19
	strb	r3, [r0]
	.loc	39 8 2                          @ ../memory.c:8:2
	add	r0, r0, #1
	b	.LBB53_1
.Ltmp554:
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
	.loc	39 14 0                         @ ../memory.c:14:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r3, #0
.LBB54_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
.Ltmp555:
	.loc	39 17 2 prologue_end            @ ../memory.c:17:2
	cmp	r2, r3
	.loc	39 20 2                         @ ../memory.c:20:2
	bxeq	lr
.LBB54_2:                               @ %for.body
                                        @   in Loop: Header=BB54_1 Depth=1
	.loc	39 18 11                        @ ../memory.c:18:11
	strb	r1, [r0, r3]
	.loc	39 17 26                        @ ../memory.c:17:26
	add	r3, r3, #1
	b	.LBB54_1
.Ltmp556:
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

	.file	40 "/workspaces/llvmta/testcases/singletest" "cosf/math_private.h"
	.section	.debug_loclists,"",%progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 @ Length
.Ldebug_list_header_start0:
	.short	5                               @ Version
	.byte	4                               @ Address size
	.byte	0                               @ Segment selector size
	.long	72                              @ Offset entry count
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
.Ldebug_loc0:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           @   ending offset
	.byte	6                               @ Loc expr size
	.byte	158                             @ DW_OP_implicit_value
	.byte	4                               @ 4
	.byte	0                               @  
	.byte	0                               @  
	.byte	0                               @  
	.byte	0                               @  
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    @   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin4          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin4          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin4          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin4          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin4          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin4    @   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin4          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin4          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin4          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin4          @   ending offset
	.byte	5                               @ Loc expr size
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	49                              @ DW_OP_lit1
	.byte	36                              @ DW_OP_shl
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	83                              @ DW_OP_reg3
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	83                              @ DW_OP_reg3
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin4          @   ending offset
	.byte	5                               @ Loc expr size
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	49                              @ DW_OP_lit1
	.byte	36                              @ DW_OP_shl
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	83                              @ DW_OP_reg3
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin4          @   ending offset
	.byte	5                               @ Loc expr size
	.byte	116                             @ DW_OP_breg4
	.byte	0                               @ 0
	.byte	49                              @ DW_OP_lit1
	.byte	36                              @ DW_OP_shl
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin4          @   ending offset
	.byte	7                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	128                             @ -2147483648
	.byte	128                             @ 
	.byte	128                             @ 
	.byte	128                             @ 
	.byte	120                             @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	94                              @ DW_OP_reg14
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin4          @   ending offset
	.byte	5                               @ Loc expr size
	.byte	126                             @ DW_OP_breg14
	.byte	0                               @ 0
	.byte	49                              @ DW_OP_lit1
	.byte	38                              @ DW_OP_shra
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin4          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	16                              @ DW_OP_constu
	.byte	128                             @ 16777216
	.byte	128                             @ 
	.byte	128                             @ 
	.byte	8                               @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin4          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin4          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin4          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin4          @   ending offset
	.byte	6                               @ Loc expr size
	.byte	158                             @ DW_OP_implicit_value
	.byte	4                               @ 4
	.byte	0                               @  
	.byte	0                               @  
	.byte	128                             @ €
	.byte	63                              @ ?
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin4          @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin4          @   ending offset
	.byte	12                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	1                               @ 1
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	34                              @ DW_OP_plus
	.byte	28                              @ DW_OP_minus
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	27                              @ DW_OP_div
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin4          @   ending offset
	.byte	15                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	1                               @ 1
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	34                              @ DW_OP_plus
	.byte	28                              @ DW_OP_minus
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	27                              @ DW_OP_div
	.byte	17                              @ DW_OP_consts
	.byte	1                               @ 1
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin4          @   ending offset
	.byte	12                              @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	17                              @ DW_OP_consts
	.byte	1                               @ 1
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	34                              @ DW_OP_plus
	.byte	28                              @ DW_OP_minus
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	27                              @ DW_OP_div
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin4    @   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp238-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp238-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp294-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp294-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp304-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp304-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp305-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin4    @   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp136-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp136-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp294-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp294-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp304-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp304-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp305-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp133-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp134-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp134-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp238-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp294-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp304-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	90                              @ DW_OP_reg10
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	90                              @ DW_OP_reg10
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp185-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	90                              @ DW_OP_reg10
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp185-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp189-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp189-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp192-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	90                              @ DW_OP_reg10
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp192-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp207-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp294-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp298-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	90                              @ DW_OP_reg10
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp294-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp304-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin4          @   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp175-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp189-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp192-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp294-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp296-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin4         @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp294-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp304-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp192-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp195-.Lfunc_begin4         @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp195-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp196-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp196-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp201-.Lfunc_begin4         @   ending offset
	.byte	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	20                              @ 20
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp201-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp203-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp223-.Lfunc_begin4         @   ending offset
	.byte	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	20                              @ 20
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp223-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp226-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp259-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp261-.Lfunc_begin4         @   ending offset
	.byte	8                               @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	0                               @ 0
	.byte	71                              @ DW_OP_lit23
	.byte	37                              @ DW_OP_shr
	.byte	16                              @ DW_OP_constu
	.byte	127                             @ 127
	.byte	28                              @ DW_OP_minus
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp265-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp267-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp184-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp189-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp192-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp197-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp242-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp244-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp249-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp251-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp284-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp288-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp290-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp290-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp292-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp304-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp305-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp155-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp158-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp158-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp162-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp171-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp293-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp294-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp174-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp179-.Lfunc_begin4         @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp179-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp180-.Lfunc_begin4         @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	104                             @ -24
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp180-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp181-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp182-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp183-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp183-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp189-.Lfunc_begin4         @   ending offset
	.byte	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	16                              @ 16
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp192-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp194-.Lfunc_begin4         @   ending offset
	.byte	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	16                              @ 16
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp194-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp195-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp195-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp230-.Lfunc_begin4         @   ending offset
	.byte	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	16                              @ 16
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp260-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp264-.Lfunc_begin4         @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp264-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp269-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp270-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp271-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp271-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp272-.Lfunc_begin4         @   ending offset
	.byte	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	24                              @ 24
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp272-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp273-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp273-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp289-.Lfunc_begin4         @   ending offset
	.byte	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	24                              @ 24
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp289-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp290-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp290-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp294-.Lfunc_begin4         @   ending offset
	.byte	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	24                              @ 24
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp231-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin4         @   ending offset
	.byte	6                               @ Loc expr size
	.byte	158                             @ DW_OP_implicit_value
	.byte	4                               @ 4
	.byte	0                               @  
	.byte	0                               @  
	.byte	128                             @ €
	.byte	63                              @ ?
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp233-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp234-.Lfunc_begin4         @   ending offset
	.byte	6                               @ Loc expr size
	.byte	158                             @ DW_OP_implicit_value
	.byte	4                               @ 4
	.byte	0                               @  
	.byte	0                               @  
	.byte	128                             @ €
	.byte	191                             @ ¿
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp234-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp294-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp304-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp305-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp200-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp206-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp206-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	90                              @ DW_OP_reg10
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp210-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp212-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp212-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp214-.Lfunc_begin4         @   ending offset
	.byte	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	8                               @ 8
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp214-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp217-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp219-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp221-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp227-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp229-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp235-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp276-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp279-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp300-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp303-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp204-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp205-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp205-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp230-.Lfunc_begin4         @   ending offset
	.byte	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	0                               @ 0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp215-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp218-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp275-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp281-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp231-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp247-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp251-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp258-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp304-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp305-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp231-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp280-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	90                              @ DW_OP_reg10
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp304-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp305-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	90                              @ DW_OP_reg10
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp259-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp263-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp267-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp274-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin4    @   starting offset
	.uleb128 .Ltmp308-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp308-.Lfunc_begin4         @   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin4      @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin4    @   starting offset
	.uleb128 .Ltmp308-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp307-.Lfunc_begin4         @   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin4      @   ending offset
	.byte	20                              @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	114                             @ DW_OP_breg2
	.byte	0                               @ 0
	.byte	16                              @ DW_OP_constu
	.byte	255                             @ 18446744071570456575
	.byte	255                             @ 
	.byte	255                             @ 
	.byte	131                             @ 
	.byte	248                             @ 
	.byte	255                             @ 
	.byte	255                             @ 
	.byte	255                             @ 
	.byte	255                             @ 
	.byte	1                               @ 
	.byte	39                              @ DW_OP_xor
	.byte	35                              @ DW_OP_plus_uconst
	.byte	1                               @ 1
	.byte	33                              @ DW_OP_or
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin8-.Lfunc_begin4    @   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin8-.Lfunc_begin4    @   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc41:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin9-.Lfunc_begin4    @   starting offset
	.uleb128 .Ltmp314-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp314-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp320-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp321-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp324-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp326-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp334-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp336-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp342-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp344-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp348-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc42:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin9-.Lfunc_begin4    @   starting offset
	.uleb128 .Ltmp313-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp313-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp332-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp332-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp335-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp336-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp338-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp338-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp339-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp339-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp350-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc43:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp315-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp320-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp321-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp324-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp325-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp334-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp336-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp342-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp344-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp348-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc44:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp316-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp319-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp321-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp322-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp326-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp327-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp330-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp333-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp336-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp345-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp345-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp347-.Lfunc_begin4         @   ending offset
	.byte	3                               @ Loc expr size
	.byte	112                             @ DW_OP_breg0
	.byte	25                              @ 25
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc45:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp343-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp344-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc46:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin4   @   starting offset
	.uleb128 .Ltmp352-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp352-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp353-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc47:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin4   @   starting offset
	.uleb128 .Ltmp351-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp351-.Lfunc_begin4         @   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin4     @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc48:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin4   @   starting offset
	.uleb128 .Ltmp352-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc49:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin4   @   starting offset
	.uleb128 .Ltmp351-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc50:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin4   @   starting offset
	.uleb128 .Ltmp356-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp356-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp369-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp369-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp370-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp370-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp412-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp412-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp413-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp413-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp414-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp414-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp416-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp416-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp417-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp417-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp419-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc51:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin4   @   starting offset
	.uleb128 .Ltmp358-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp358-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp420-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp420-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp421-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc52:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp356-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp369-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp370-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp412-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp413-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp414-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp416-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp417-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc53:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp357-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp386-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp405-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp419-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc54:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp384-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp388-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp392-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp397-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp397-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp399-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc55:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp373-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp404-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc56:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp402-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	89                              @ DW_OP_reg9
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc57:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp402-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	90                              @ DW_OP_reg10
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc58:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp380-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp381-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp389-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp394-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc59:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp384-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp385-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp385-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp390-.Lfunc_begin4         @   ending offset
	.byte	2                               @ Loc expr size
	.byte	125                             @ DW_OP_breg13
	.byte	0                               @ 0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp390-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp395-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc60:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp382-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp384-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp391-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp393-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc61:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin12-.Lfunc_begin4   @   starting offset
	.uleb128 .Ltmp424-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp424-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp429-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp429-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp430-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc62:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin12-.Lfunc_begin4   @   starting offset
	.uleb128 .Ltmp425-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp425-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp429-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	88                              @ DW_OP_reg8
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp429-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp430-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp430-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp442-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	88                              @ DW_OP_reg8
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc63:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp423-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp424-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp424-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp429-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc64:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp437-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp439-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc65:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin13-.Lfunc_begin4   @   starting offset
	.uleb128 .Ltmp445-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp445-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp459-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc66:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin13-.Lfunc_begin4   @   starting offset
	.uleb128 .Ltmp448-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp448-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp460-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	88                              @ DW_OP_reg8
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc67:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin13-.Lfunc_begin4   @   starting offset
	.uleb128 .Ltmp447-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp447-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp456-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp456-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp457-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	82                              @ DW_OP_reg2
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp457-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp458-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc68:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp445-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp446-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp446-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp459-.Lfunc_begin4         @   ending offset
	.byte	10                              @ Loc expr size
	.byte	116                             @ DW_OP_breg4
	.byte	0                               @ 0
	.byte	16                              @ DW_OP_constu
	.byte	128                             @ 2113929216
	.byte	128                             @ 
	.byte	128                             @ 
	.byte	240                             @ 
	.byte	7                               @ 
	.byte	26                              @ DW_OP_and
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc69:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin14-.Lfunc_begin4   @   starting offset
	.uleb128 .Ltmp467-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp467-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp468-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp468-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp471-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp471-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp472-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp472-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp474-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp474-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp483-.Lfunc_begin4         @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc70:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp462-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp464-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp464-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp466-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp468-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp469-.Lfunc_begin4         @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc71:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp474-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp475-.Lfunc_begin4         @   ending offset
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
	.byte	5                               @ Abbreviation Code
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
	.byte	16                              @ DW_FORM_ref_addr
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	6                               @ Abbreviation Code
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
	.byte	16                              @ DW_FORM_ref_addr
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
	.byte	73                              @ DW_AT_type
	.byte	16                              @ DW_FORM_ref_addr
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	10                              @ Abbreviation Code
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
	.byte	116                             @ DW_AT_rnglists_base
	.byte	23                              @ DW_FORM_sec_offset
	.ascii	"\214\001"                      @ DW_AT_loclists_base
	.byte	23                              @ DW_FORM_sec_offset
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	11                              @ Abbreviation Code
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
	.byte	28                              @ DW_AT_const_value
	.byte	15                              @ DW_FORM_udata
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	12                              @ Abbreviation Code
	.byte	38                              @ DW_TAG_const_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	16                              @ DW_FORM_ref_addr
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	13                              @ Abbreviation Code
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
	.byte	28                              @ DW_AT_const_value
	.byte	15                              @ DW_FORM_udata
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	14                              @ Abbreviation Code
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
	.byte	15                              @ Abbreviation Code
	.byte	1                               @ DW_TAG_array_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	16                              @ Abbreviation Code
	.byte	33                              @ DW_TAG_subrange_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	55                              @ DW_AT_count
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	17                              @ Abbreviation Code
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
	.byte	18                              @ Abbreviation Code
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
	.byte	19                              @ Abbreviation Code
	.byte	38                              @ DW_TAG_const_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	20                              @ Abbreviation Code
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
	.byte	16                              @ DW_FORM_ref_addr
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	21                              @ Abbreviation Code
	.byte	11                              @ DW_TAG_lexical_block
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	27                              @ DW_FORM_addrx
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
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
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	73                              @ DW_AT_type
	.byte	16                              @ DW_FORM_ref_addr
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	23                              @ Abbreviation Code
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
	.byte	16                              @ DW_FORM_ref_addr
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	24                              @ Abbreviation Code
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
	.byte	25                              @ Abbreviation Code
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
	.byte	16                              @ DW_FORM_ref_addr
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	26                              @ Abbreviation Code
	.byte	11                              @ DW_TAG_lexical_block
	.byte	1                               @ DW_CHILDREN_yes
	.byte	85                              @ DW_AT_ranges
	.byte	35                              @ DW_FORM_rnglistx
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	27                              @ Abbreviation Code
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
	.byte	28                              @ Abbreviation Code
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
	.byte	29                              @ Abbreviation Code
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
	.byte	30                              @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	28                              @ DW_AT_const_value
	.byte	15                              @ DW_FORM_udata
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	5                               @ DW_FORM_data2
	.byte	73                              @ DW_AT_type
	.byte	16                              @ DW_FORM_ref_addr
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	31                              @ Abbreviation Code
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
	.byte	32                              @ Abbreviation Code
	.byte	23                              @ DW_TAG_union_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	33                              @ Abbreviation Code
	.byte	13                              @ DW_TAG_member
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	73                              @ DW_AT_type
	.byte	16                              @ DW_FORM_ref_addr
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	56                              @ DW_AT_data_member_location
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	34                              @ Abbreviation Code
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
	.byte	35                              @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	16                              @ DW_FORM_ref_addr
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	36                              @ Abbreviation Code
	.byte	1                               @ DW_TAG_array_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	16                              @ DW_FORM_ref_addr
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	37                              @ Abbreviation Code
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
	.byte	1                               @ Abbrev [1] 0xc:0x73 DW_TAG_compile_unit
	.byte	0                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	1                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	2                               @ DW_AT_comp_dir
	.byte	5                               @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
	.byte	2                               @ Abbrev [2] 0x27:0xb DW_TAG_variable
	.byte	3                               @ DW_AT_name
	.long	50                              @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_decl_file
	.byte	39                              @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               @ Abbrev [3] 0x32:0x4 DW_TAG_base_type
	.byte	4                               @ DW_AT_name
	.byte	4                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	4                               @ Abbrev [4] 0x36:0xb DW_TAG_subprogram
	.byte	5                               @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	115                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	5                               @ Abbrev [5] 0x41:0x19 DW_TAG_subprogram
	.byte	6                               @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	116                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	56                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.debug_info+1075                @ DW_AT_type
                                        @ DW_AT_external
	.byte	6                               @ Abbrev [6] 0x50:0x9 DW_TAG_variable
	.byte	0                               @ DW_AT_location
	.byte	130                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	58                              @ DW_AT_decl_line
	.long	.debug_info+1075                @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	7                               @ Abbrev [7] 0x5a:0x15 DW_TAG_subprogram
	.byte	7                               @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	117                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	71                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.byte	8                               @ Abbrev [8] 0x65:0x9 DW_TAG_variable
	.byte	1                               @ DW_AT_location
	.byte	131                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	73                              @ DW_AT_decl_line
	.long	50                              @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	9                               @ Abbrev [9] 0x6f:0xf DW_TAG_subprogram
	.byte	8                               @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	118                             @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	80                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.debug_info+1075                @ DW_AT_type
                                        @ DW_AT_external
	.byte	0                               @ End Of Children Mark
.Ldebug_info_end0:
.Lcu_begin1:
	.long	.Ldebug_info_end1-.Ldebug_info_start1 @ Length of Unit
.Ldebug_info_start1:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	10                              @ Abbrev [10] 0xc:0x779 DW_TAG_compile_unit
	.byte	0                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	5                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	2                               @ DW_AT_comp_dir
	.byte	9                               @ DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin4      @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lrnglists_table_base0          @ DW_AT_rnglists_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
	.byte	11                              @ Abbrev [11] 0x2b:0xd DW_TAG_variable
	.byte	6                               @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	41                              @ DW_AT_decl_line
	.ascii	"\332\237\244\202\004"          @ DW_AT_const_value
	.byte	12                              @ Abbrev [12] 0x38:0x5 DW_TAG_const_type
	.long	.debug_info+50                  @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x3d:0xd DW_TAG_variable
	.byte	7                               @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	43                              @ DW_AT_decl_line
	.ascii	"\350\302\210\235\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x4a:0xd DW_TAG_variable
	.byte	8                               @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	42                              @ DW_AT_decl_line
	.ascii	"\332\237\244\376\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x57:0xd DW_TAG_variable
	.byte	9                               @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	44                              @ DW_AT_decl_line
	.ascii	"\253\325\252\361\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x64:0xd DW_TAG_variable
	.byte	10                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	45                              @ DW_AT_decl_line
	.ascii	"\220\341\232\365\013"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x71:0xd DW_TAG_variable
	.byte	11                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
	.ascii	"\250\225\270\362\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x7e:0xd DW_TAG_variable
	.byte	12                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	47                              @ DW_AT_decl_line
	.ascii	"\306\242\220\351\013"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x8b:0xd DW_TAG_variable
	.byte	13                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	48                              @ DW_AT_decl_line
	.ascii	"\204\376\275\322\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x98:0xd DW_TAG_variable
	.byte	14                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	49                              @ DW_AT_decl_line
	.ascii	"\210\336\307\300\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0xa5:0xd DW_TAG_variable
	.byte	15                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	41                              @ DW_AT_decl_line
	.ascii	"\200\200\200\374\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0xb2:0xd DW_TAG_variable
	.byte	16                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	50                              @ DW_AT_decl_line
	.ascii	"\271\242\347\200\f"            @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0xbf:0xd DW_TAG_variable
	.byte	17                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	51                              @ DW_AT_decl_line
	.ascii	"\255\256\205\200\004"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0xcc:0xd DW_TAG_variable
	.byte	18                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	52                              @ DW_AT_decl_line
	.ascii	"\341\346\300\371\013"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0xd9:0xd DW_TAG_variable
	.byte	19                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	53                              @ DW_AT_decl_line
	.ascii	"\256\214\367\354\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0xe6:0x9 DW_TAG_variable
	.byte	20                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	47                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0xef:0xd DW_TAG_variable
	.byte	21                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	44                              @ DW_AT_decl_line
	.ascii	"\312\345\247\212\007"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0xfc:0xc DW_TAG_variable
	.byte	22                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	42                              @ DW_AT_decl_line
	.ascii	"\340\204\211m"                 @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x108:0xd DW_TAG_variable
	.byte	23                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	138                             @ DW_AT_decl_line
	.ascii	"\200\324\342\375\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x115:0xd DW_TAG_variable
	.byte	24                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	139                             @ DW_AT_decl_line
	.ascii	"\360\312\262\267\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x122:0xd DW_TAG_variable
	.byte	25                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	137                             @ DW_AT_decl_line
	.ascii	"\273\324\342\375\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x12f:0xd DW_TAG_variable
	.byte	26                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
	.ascii	"\200\200\200\334\004"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x13c:0xd DW_TAG_variable
	.byte	27                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	119                             @ DW_AT_decl_line
	.ascii	"\232\263\346\370\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x149:0xd DW_TAG_variable
	.byte	28                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	120                             @ DW_AT_decl_line
	.ascii	"\267\333\355\366\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x156:0xd DW_TAG_variable
	.byte	29                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	121                             @ DW_AT_decl_line
	.ascii	"\253\325\252\365\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x163:0xd DW_TAG_variable
	.byte	30                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	122                             @ DW_AT_decl_line
	.ascii	"\205\306\256\364\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x170:0xd DW_TAG_variable
	.byte	31                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	123                             @ DW_AT_decl_line
	.ascii	"\325\344\260\363\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x17d:0xd DW_TAG_variable
	.byte	32                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	124                             @ DW_AT_decl_line
	.ascii	"\302\342\317\362\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x18a:0xd DW_TAG_variable
	.byte	33                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	135                             @ DW_AT_decl_line
	.ascii	"\200\360\330\373\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x197:0xd DW_TAG_variable
	.byte	34                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	136                             @ DW_AT_decl_line
	.ascii	"\240\207\367\264\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x1a4:0xd DW_TAG_variable
	.byte	35                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	134                             @ DW_AT_decl_line
	.ascii	"\317\360\330\373\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x1b1:0xd DW_TAG_variable
	.byte	36                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	133                             @ DW_AT_decl_line
	.ascii	"\274\324\342\231\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x1be:0xd DW_TAG_variable
	.byte	37                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	131                             @ DW_AT_decl_line
	.ascii	"\200\344\305\371\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x1cb:0xd DW_TAG_variable
	.byte	38                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	130                             @ DW_AT_decl_line
	.ascii	"\230\344\305\371\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x1d8:0xd DW_TAG_variable
	.byte	39                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	132                             @ DW_AT_decl_line
	.ascii	"\214\375\376\255\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x1e5:0xd DW_TAG_variable
	.byte	40                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	125                             @ DW_AT_decl_line
	.ascii	"\253\325\252\361\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x1f2:0xd DW_TAG_variable
	.byte	41                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	126                             @ DW_AT_decl_line
	.ascii	"\341\226\330\331\013"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x1ff:0xd DW_TAG_variable
	.byte	42                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	127                             @ DW_AT_decl_line
	.ascii	"\325\346\252\304\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x20c:0xd DW_TAG_variable
	.byte	43                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	128                             @ DW_AT_decl_line
	.ascii	"\216\324\367\256\013"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x219:0xd DW_TAG_variable
	.byte	44                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	129                             @ DW_AT_decl_line
	.ascii	"\314\366\306\231\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x226:0xd DW_TAG_variable
	.byte	45                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	45                              @ DW_AT_decl_line
	.ascii	"\200\200\200\200\004"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x233:0xe DW_TAG_variable
	.byte	46                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	391                             @ DW_AT_decl_line
	.ascii	"\200\237\244\376\003"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x241:0xe DW_TAG_variable
	.byte	47                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	392                             @ DW_AT_decl_line
	.ascii	"\303\210\325\271\003"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x24f:0xe DW_TAG_variable
	.byte	48                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	393                             @ DW_AT_decl_line
	.ascii	"\200\210\325\271\003"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x25d:0xe DW_TAG_variable
	.byte	49                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	394                             @ DW_AT_decl_line
	.ascii	"\210\306\226\364\002"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x26b:0xe DW_TAG_variable
	.byte	50                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	390                             @ DW_AT_decl_line
	.ascii	"\204\363\213\371\003"          @ DW_AT_const_value
	.byte	11                              @ Abbrev [11] 0x279:0xd DW_TAG_variable
	.byte	51                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	3                               @ DW_AT_decl_file
	.byte	43                              @ DW_AT_decl_line
	.ascii	"\200\200\200\370\003"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x286:0xe DW_TAG_variable
	.byte	52                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	395                             @ DW_AT_decl_line
	.ascii	"\200\306\226\364\002"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x294:0xe DW_TAG_variable
	.byte	53                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	396                             @ DW_AT_decl_line
	.ascii	"\262\342\264\244\002"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x2a2:0xe DW_TAG_variable
	.byte	54                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	567                             @ DW_AT_decl_line
	.ascii	"\253\325\252\351\003"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x2b0:0xe DW_TAG_variable
	.byte	55                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	568                             @ DW_AT_decl_line
	.ascii	"\341\226\330\325\013"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x2be:0xe DW_TAG_variable
	.byte	56                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	569                             @ DW_AT_decl_line
	.ascii	"\201\232\300\276\003"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x2cc:0xe DW_TAG_variable
	.byte	57                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	570                             @ DW_AT_decl_line
	.ascii	"\374\344\317\244\013"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x2da:0xe DW_TAG_variable
	.byte	58                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	571                             @ DW_AT_decl_line
	.ascii	"\366\351\275\210\003"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x2e8:0xe DW_TAG_variable
	.byte	59                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	572                             @ DW_AT_decl_line
	.ascii	"\316\256\237\352\n"            @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x2f6:0xe DW_TAG_variable
	.byte	60                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	606                             @ DW_AT_decl_line
	.ascii	"\211\221\242\340\003"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x304:0xe DW_TAG_variable
	.byte	61                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	607                             @ DW_AT_decl_line
	.ascii	"\201\232\300\312\013"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x312:0xe DW_TAG_variable
	.byte	62                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	608                             @ DW_AT_decl_line
	.ascii	"\233\336\343\261\003"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x320:0xe DW_TAG_variable
	.byte	63                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	609                             @ DW_AT_decl_line
	.ascii	"\264\336\334\226\013"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x32e:0xe DW_TAG_variable
	.byte	64                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	610                             @ DW_AT_decl_line
	.ascii	"\323\223\273\371\002"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x33c:0xe DW_TAG_variable
	.byte	65                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	605                             @ DW_AT_decl_line
	.ascii	"\253\325\252\361\013"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x34a:0xe DW_TAG_variable
	.byte	66                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	725                             @ DW_AT_decl_line
	.ascii	"\200\200\200\340\004"          @ DW_AT_const_value
	.byte	13                              @ Abbrev [13] 0x358:0xe DW_TAG_variable
	.byte	67                              @ DW_AT_name
	.long	56                              @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	726                             @ DW_AT_decl_line
	.ascii	"\200\200\200\230\003"          @ DW_AT_const_value
	.byte	14                              @ Abbrev [14] 0x366:0xb DW_TAG_variable
	.byte	68                              @ DW_AT_name
	.long	881                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	115                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	1
	.byte	15                              @ Abbrev [15] 0x371:0xc DW_TAG_array_type
	.long	56                              @ DW_AT_type
	.byte	16                              @ Abbrev [16] 0x376:0x6 DW_TAG_subrange_type
	.long	893                             @ DW_AT_type
	.byte	2                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	17                              @ Abbrev [17] 0x37d:0x4 DW_TAG_base_type
	.byte	69                              @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	7                               @ DW_AT_encoding
	.byte	14                              @ Abbrev [14] 0x381:0xb DW_TAG_variable
	.byte	70                              @ DW_AT_name
	.long	881                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	117                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	2
	.byte	14                              @ Abbrev [14] 0x38c:0xb DW_TAG_variable
	.byte	71                              @ DW_AT_name
	.long	881                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.byte	116                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	3
	.byte	18                              @ Abbrev [18] 0x397:0xc DW_TAG_variable
	.byte	72                              @ DW_AT_name
	.long	931                             @ DW_AT_type
	.byte	2                               @ DW_AT_decl_file
	.short	371                             @ DW_AT_decl_line
	.byte	2                               @ DW_AT_location
	.byte	161
	.byte	4
	.byte	15                              @ Abbrev [15] 0x3a3:0xc DW_TAG_array_type
	.long	943                             @ DW_AT_type
	.byte	16                              @ Abbrev [16] 0x3a8:0x6 DW_TAG_subrange_type
	.long	893                             @ DW_AT_type
	.byte	32                              @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	19                              @ Abbrev [19] 0x3af:0x5 DW_TAG_const_type
	.long	948                             @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x3b4:0x4 DW_TAG_base_type
	.byte	73                              @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	3                               @ Abbrev [3] 0x3b8:0x4 DW_TAG_base_type
	.byte	74                              @ DW_AT_name
	.byte	7                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	5                               @ Abbrev [5] 0x3bc:0x3b DW_TAG_subprogram
	.byte	9                               @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	119                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	55                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.debug_info+50                  @ DW_AT_type
                                        @ DW_AT_external
	.byte	20                              @ Abbrev [20] 0x3cb:0x9 DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	132                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	55                              @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x3d4:0x9 DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	133                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	58                              @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x3dd:0x9 DW_TAG_variable
	.byte	4                               @ DW_AT_location
	.byte	134                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	58                              @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0x3e6:0x10 DW_TAG_lexical_block
	.byte	10                              @ DW_AT_low_pc
	.long	.Ltmp48-.Ltmp37                 @ DW_AT_high_pc
	.byte	8                               @ Abbrev [8] 0x3ec:0x9 DW_TAG_variable
	.byte	5                               @ DW_AT_location
	.byte	135                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	92                              @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
	.byte	22                              @ Abbrev [22] 0x3f7:0x75 DW_TAG_subprogram
	.byte	11                              @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	120                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	493                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.debug_info+50                  @ DW_AT_type
                                        @ DW_AT_external
	.byte	23                              @ Abbrev [23] 0x407:0xa DW_TAG_formal_parameter
	.byte	6                               @ DW_AT_location
	.byte	132                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	493                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x411:0xa DW_TAG_variable
	.byte	7                               @ DW_AT_location
	.byte	134                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	497                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x41b:0xa DW_TAG_variable
	.byte	8                               @ DW_AT_location
	.byte	136                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	496                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x425:0xa DW_TAG_variable
	.byte	9                               @ DW_AT_location
	.byte	137                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	497                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x42f:0xa DW_TAG_variable
	.byte	10                              @ DW_AT_location
	.byte	138                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	498                             @ DW_AT_decl_line
	.long	952                             @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x439:0xa DW_TAG_variable
	.byte	11                              @ DW_AT_location
	.byte	139                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	497                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x443:0xa DW_TAG_variable
	.byte	12                              @ DW_AT_location
	.byte	140                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	497                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x44d:0xa DW_TAG_variable
	.byte	13                              @ DW_AT_location
	.byte	141                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	497                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	25                              @ Abbrev [25] 0x457:0xa DW_TAG_variable
	.byte	14                              @ DW_AT_location
	.byte	142                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	495                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x461:0xa DW_TAG_variable
	.byte	15                              @ DW_AT_location
	.byte	131                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	497                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	5                               @ Abbrev [5] 0x46c:0xd8 DW_TAG_subprogram
	.byte	12                              @ DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	121                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	141                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.debug_info+50                  @ DW_AT_type
                                        @ DW_AT_external
	.byte	20                              @ Abbrev [20] 0x47b:0x9 DW_TAG_formal_parameter
	.byte	16                              @ DW_AT_location
	.byte	132                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	141                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	20                              @ Abbrev [20] 0x484:0x9 DW_TAG_formal_parameter
	.byte	17                              @ DW_AT_location
	.byte	143                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	141                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x48d:0x9 DW_TAG_variable
	.byte	18                              @ DW_AT_location
	.byte	133                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	146                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x496:0x9 DW_TAG_variable
	.byte	19                              @ DW_AT_location
	.byte	134                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	146                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x49f:0x9 DW_TAG_variable
	.byte	20                              @ DW_AT_location
	.byte	144                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	146                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x4a8:0x9 DW_TAG_variable
	.byte	21                              @ DW_AT_location
	.byte	145                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	146                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x4b1:0x9 DW_TAG_variable
	.byte	22                              @ DW_AT_location
	.byte	146                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	145                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x4ba:0x9 DW_TAG_variable
	.byte	23                              @ DW_AT_location
	.byte	147                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	145                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x4c3:0x9 DW_TAG_variable
	.byte	24                              @ DW_AT_location
	.byte	148                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	145                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x4cc:0x9 DW_TAG_variable
	.byte	25                              @ DW_AT_location
	.byte	142                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	143                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x4d5:0x9 DW_TAG_variable
	.byte	26                              @ DW_AT_location
	.byte	149                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	145                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x4de:0x9 DW_TAG_variable
	.byte	27                              @ DW_AT_location
	.byte	140                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	144                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x4e7:0x9 DW_TAG_variable
	.byte	28                              @ DW_AT_location
	.byte	150                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	146                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x4f0:0x9 DW_TAG_variable
	.byte	31                              @ DW_AT_location
	.byte	155                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	143                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x4f9:0x9 DW_TAG_variable
	.byte	32                              @ DW_AT_location
	.byte	156                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	144                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x502:0x9 DW_TAG_variable
	.byte	33                              @ DW_AT_location
	.byte	157                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	144                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	8                               @ Abbrev [8] 0x50b:0x9 DW_TAG_variable
	.byte	34                              @ DW_AT_location
	.byte	131                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.byte	145                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	26                              @ Abbrev [26] 0x514:0xd DW_TAG_lexical_block
	.byte	0                               @ DW_AT_ranges
	.byte	24                              @ Abbrev [24] 0x516:0xa DW_TAG_variable
	.byte	29                              @ DW_AT_location
	.byte	151                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	269                             @ DW_AT_decl_line
	.long	1876                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	21                              @ Abbrev [21] 0x521:0x11 DW_TAG_lexical_block
	.byte	13                              @ DW_AT_low_pc
	.long	.Ltmp216-.Ltmp214               @ DW_AT_high_pc
	.byte	24                              @ Abbrev [24] 0x527:0xa DW_TAG_variable
	.byte	30                              @ DW_AT_location
	.byte	151                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	281                             @ DW_AT_decl_line
	.long	1876                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	21                              @ Abbrev [21] 0x532:0x11 DW_TAG_lexical_block
	.byte	14                              @ DW_AT_low_pc
	.long	.Ltmp268-.Ltmp266               @ DW_AT_high_pc
	.byte	24                              @ Abbrev [24] 0x538:0xa DW_TAG_variable
	.byte	35                              @ DW_AT_location
	.byte	151                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	335                             @ DW_AT_decl_line
	.long	1876                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
	.byte	27                              @ Abbrev [27] 0x544:0x2f DW_TAG_subprogram
	.byte	15                              @ DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	122                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	710                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	948                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	23                              @ Abbrev [23] 0x554:0xa DW_TAG_formal_parameter
	.byte	36                              @ DW_AT_location
	.byte	132                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	710                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x55e:0xa DW_TAG_variable
	.byte	37                              @ DW_AT_location
	.byte	134                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	712                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x568:0xa DW_TAG_variable
	.byte	38                              @ DW_AT_location
	.byte	141                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	712                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	22                              @ Abbrev [22] 0x573:0x25 DW_TAG_subprogram
	.byte	16                              @ DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	123                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	696                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.debug_info+50                  @ DW_AT_type
                                        @ DW_AT_external
	.byte	23                              @ Abbrev [23] 0x583:0xa DW_TAG_formal_parameter
	.byte	39                              @ DW_AT_location
	.byte	132                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	696                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x58d:0xa DW_TAG_variable
	.byte	40                              @ DW_AT_location
	.byte	134                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	698                             @ DW_AT_decl_line
	.long	952                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	22                              @ Abbrev [22] 0x598:0x4a DW_TAG_subprogram
	.byte	17                              @ DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	124                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	728                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.debug_info+50                  @ DW_AT_type
                                        @ DW_AT_external
	.byte	23                              @ Abbrev [23] 0x5a8:0xa DW_TAG_formal_parameter
	.byte	41                              @ DW_AT_location
	.byte	132                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	728                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	28                              @ Abbrev [28] 0x5b2:0xa DW_TAG_formal_parameter
	.byte	42                              @ DW_AT_location
	.byte	149                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	728                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x5bc:0xa DW_TAG_variable
	.byte	43                              @ DW_AT_location
	.byte	134                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	730                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x5c6:0xa DW_TAG_variable
	.byte	44                              @ DW_AT_location
	.byte	147                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	730                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	21                              @ Abbrev [21] 0x5d0:0x11 DW_TAG_lexical_block
	.byte	18                              @ DW_AT_low_pc
	.long	.Ltmp344-.Ltmp341               @ DW_AT_high_pc
	.byte	24                              @ Abbrev [24] 0x5d6:0xa DW_TAG_variable
	.byte	45                              @ DW_AT_location
	.byte	151                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	748                             @ DW_AT_decl_line
	.long	1876                            @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
	.byte	22                              @ Abbrev [22] 0x5e2:0x39 DW_TAG_subprogram
	.byte	19                              @ DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	125                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	642                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.debug_info+50                  @ DW_AT_type
                                        @ DW_AT_external
	.byte	23                              @ Abbrev [23] 0x5f2:0xa DW_TAG_formal_parameter
	.byte	46                              @ DW_AT_location
	.byte	132                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	642                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	23                              @ Abbrev [23] 0x5fc:0xa DW_TAG_formal_parameter
	.byte	47                              @ DW_AT_location
	.byte	143                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	642                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x606:0xa DW_TAG_variable
	.byte	48                              @ DW_AT_location
	.byte	134                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	644                             @ DW_AT_decl_line
	.long	952                             @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x610:0xa DW_TAG_variable
	.byte	49                              @ DW_AT_location
	.byte	145                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	644                             @ DW_AT_decl_line
	.long	952                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	27                              @ Abbrev [27] 0x61b:0x82 DW_TAG_subprogram
	.byte	20                              @ DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	126                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	398                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	948                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	23                              @ Abbrev [23] 0x62b:0xa DW_TAG_formal_parameter
	.byte	50                              @ DW_AT_location
	.byte	132                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	398                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	28                              @ Abbrev [28] 0x635:0xa DW_TAG_formal_parameter
	.byte	51                              @ DW_AT_location
	.byte	143                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	398                             @ DW_AT_decl_line
	.long	1907                            @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x63f:0xa DW_TAG_variable
	.byte	52                              @ DW_AT_location
	.byte	133                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	401                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x649:0xa DW_TAG_variable
	.byte	53                              @ DW_AT_location
	.byte	134                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	401                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	25                              @ Abbrev [25] 0x653:0xa DW_TAG_variable
	.byte	54                              @ DW_AT_location
	.byte	141                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	400                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x65d:0xa DW_TAG_variable
	.byte	55                              @ DW_AT_location
	.byte	149                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	401                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	25                              @ Abbrev [25] 0x667:0xa DW_TAG_variable
	.byte	56                              @ DW_AT_location
	.byte	138                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	400                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	25                              @ Abbrev [25] 0x671:0xa DW_TAG_variable
	.byte	57                              @ DW_AT_location
	.byte	158                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	400                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x67b:0xa DW_TAG_variable
	.byte	59                              @ DW_AT_location
	.byte	148                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	401                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x685:0xa DW_TAG_variable
	.byte	60                              @ DW_AT_location
	.byte	131                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	401                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	26                              @ Abbrev [26] 0x68f:0xd DW_TAG_lexical_block
	.byte	1                               @ DW_AT_ranges
	.byte	24                              @ Abbrev [24] 0x691:0xa DW_TAG_variable
	.byte	58                              @ DW_AT_location
	.byte	159                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	444                             @ DW_AT_decl_line
	.long	952                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
	.byte	22                              @ Abbrev [22] 0x69d:0x39 DW_TAG_subprogram
	.byte	21                              @ DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	127                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	574                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.debug_info+50                  @ DW_AT_type
                                        @ DW_AT_external
	.byte	23                              @ Abbrev [23] 0x6ad:0xa DW_TAG_formal_parameter
	.byte	61                              @ DW_AT_location
	.byte	132                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	574                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	23                              @ Abbrev [23] 0x6b7:0xa DW_TAG_formal_parameter
	.byte	62                              @ DW_AT_location
	.byte	143                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	574                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x6c1:0xa DW_TAG_variable
	.byte	63                              @ DW_AT_location
	.byte	134                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	577                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	25                              @ Abbrev [25] 0x6cb:0xa DW_TAG_variable
	.byte	64                              @ DW_AT_location
	.byte	160                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	576                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	22                              @ Abbrev [22] 0x6d6:0x39 DW_TAG_subprogram
	.byte	22                              @ DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	128                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	612                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.debug_info+50                  @ DW_AT_type
                                        @ DW_AT_external
	.byte	23                              @ Abbrev [23] 0x6e6:0xa DW_TAG_formal_parameter
	.byte	65                              @ DW_AT_location
	.byte	132                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	612                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	23                              @ Abbrev [23] 0x6f0:0xa DW_TAG_formal_parameter
	.byte	66                              @ DW_AT_location
	.byte	143                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	612                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	28                              @ Abbrev [28] 0x6fa:0xa DW_TAG_formal_parameter
	.byte	67                              @ DW_AT_location
	.byte	145                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	612                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x704:0xa DW_TAG_variable
	.byte	68                              @ DW_AT_location
	.byte	134                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	615                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	22                              @ Abbrev [22] 0x70f:0x45 DW_TAG_subprogram
	.byte	23                              @ DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin14     @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	91
	.byte	129                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	656                             @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	.debug_info+50                  @ DW_AT_type
                                        @ DW_AT_external
	.byte	23                              @ Abbrev [23] 0x71f:0xa DW_TAG_formal_parameter
	.byte	69                              @ DW_AT_location
	.byte	132                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	656                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	29                              @ Abbrev [29] 0x729:0xc DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	125
	.byte	0
	.byte	143                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	658                             @ DW_AT_decl_line
	.long	1912                            @ DW_AT_type
	.byte	30                              @ Abbrev [30] 0x735:0xa DW_TAG_variable
	.byte	0                               @ DW_AT_const_value
	.byte	142                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	658                             @ DW_AT_decl_line
	.long	.debug_info+50                  @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x73f:0xa DW_TAG_variable
	.byte	70                              @ DW_AT_location
	.byte	134                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	659                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	24                              @ Abbrev [24] 0x749:0xa DW_TAG_variable
	.byte	71                              @ DW_AT_location
	.byte	149                             @ DW_AT_name
	.byte	2                               @ DW_AT_decl_file
	.short	659                             @ DW_AT_decl_line
	.long	948                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	31                              @ Abbrev [31] 0x754:0x8 DW_TAG_typedef
	.long	1884                            @ DW_AT_type
	.byte	154                             @ DW_AT_name
	.byte	40                              @ DW_AT_decl_file
	.byte	48                              @ DW_AT_decl_line
	.byte	32                              @ Abbrev [32] 0x75c:0x17 DW_TAG_union_type
	.byte	4                               @ DW_AT_byte_size
	.byte	40                              @ DW_AT_decl_file
	.byte	45                              @ DW_AT_decl_line
	.byte	33                              @ Abbrev [33] 0x760:0x9 DW_TAG_member
	.byte	152                             @ DW_AT_name
	.long	.debug_info+50                  @ DW_AT_type
	.byte	40                              @ DW_AT_decl_file
	.byte	46                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	34                              @ Abbrev [34] 0x769:0x9 DW_TAG_member
	.byte	153                             @ DW_AT_name
	.long	952                             @ DW_AT_type
	.byte	40                              @ DW_AT_decl_file
	.byte	47                              @ DW_AT_decl_line
	.byte	0                               @ DW_AT_data_member_location
	.byte	0                               @ End Of Children Mark
	.byte	35                              @ Abbrev [35] 0x773:0x5 DW_TAG_pointer_type
	.long	.debug_info+50                  @ DW_AT_type
	.byte	36                              @ Abbrev [36] 0x778:0xc DW_TAG_array_type
	.long	.debug_info+50                  @ DW_AT_type
	.byte	16                              @ Abbrev [16] 0x77d:0x6 DW_TAG_subrange_type
	.long	893                             @ DW_AT_type
	.byte	2                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
.Ldebug_info_end1:
.Lcu_begin2:
	.long	.Ldebug_info_end2-.Ldebug_info_start2 @ Length of Unit
.Ldebug_info_start2:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	76                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	24                              @ DW_AT_low_pc
	.long	.Lfunc_end15-.Lfunc_begin15     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	78                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	25                              @ DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin16     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	79                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	26                              @ DW_AT_low_pc
	.long	.Lfunc_end17-.Lfunc_begin17     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	80                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	27                              @ DW_AT_low_pc
	.long	.Lfunc_end18-.Lfunc_begin18     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	81                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	28                              @ DW_AT_low_pc
	.long	.Lfunc_end19-.Lfunc_begin19     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	82                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	29                              @ DW_AT_low_pc
	.long	.Lfunc_end20-.Lfunc_begin20     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	83                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	30                              @ DW_AT_low_pc
	.long	.Lfunc_end21-.Lfunc_begin21     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	84                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	31                              @ DW_AT_low_pc
	.long	.Lfunc_end22-.Lfunc_begin22     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	85                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	32                              @ DW_AT_low_pc
	.long	.Lfunc_end23-.Lfunc_begin23     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	86                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	33                              @ DW_AT_low_pc
	.long	.Lfunc_end25-.Lfunc_begin24     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	87                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	34                              @ DW_AT_low_pc
	.long	.Lfunc_end26-.Lfunc_begin26     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	88                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	35                              @ DW_AT_low_pc
	.long	.Lfunc_end27-.Lfunc_begin27     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	89                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	36                              @ DW_AT_low_pc
	.long	.Lfunc_end28-.Lfunc_begin28     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	90                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	37                              @ DW_AT_low_pc
	.long	.Lfunc_end29-.Lfunc_begin29     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	91                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	38                              @ DW_AT_low_pc
	.long	.Lfunc_end30-.Lfunc_begin30     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	92                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	39                              @ DW_AT_low_pc
	.long	.Lfunc_end31-.Lfunc_begin31     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	93                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	40                              @ DW_AT_low_pc
	.long	.Lfunc_end32-.Lfunc_begin32     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	94                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	41                              @ DW_AT_low_pc
	.long	.Lfunc_end33-.Lfunc_begin33     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	95                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	42                              @ DW_AT_low_pc
	.long	.Lfunc_end34-.Lfunc_begin34     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	96                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	43                              @ DW_AT_low_pc
	.long	.Lfunc_end35-.Lfunc_begin35     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	97                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	44                              @ DW_AT_low_pc
	.long	.Lfunc_end36-.Lfunc_begin36     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	98                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	45                              @ DW_AT_low_pc
	.long	.Lfunc_end37-.Lfunc_begin37     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	99                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	46                              @ DW_AT_low_pc
	.long	.Lfunc_end38-.Lfunc_begin38     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	100                             @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	47                              @ DW_AT_low_pc
	.long	.Lfunc_end39-.Lfunc_begin39     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	101                             @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	48                              @ DW_AT_low_pc
	.long	.Lfunc_end40-.Lfunc_begin40     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	102                             @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	49                              @ DW_AT_low_pc
	.long	.Lfunc_end41-.Lfunc_begin41     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	103                             @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	50                              @ DW_AT_low_pc
	.long	.Lfunc_end42-.Lfunc_begin42     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	104                             @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	51                              @ DW_AT_low_pc
	.long	.Lfunc_end43-.Lfunc_begin43     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	105                             @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	52                              @ DW_AT_low_pc
	.long	.Lfunc_end44-.Lfunc_begin44     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	106                             @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	53                              @ DW_AT_low_pc
	.long	.Lfunc_end45-.Lfunc_begin45     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	107                             @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	54                              @ DW_AT_low_pc
	.long	.Lfunc_end47-.Lfunc_begin46     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	108                             @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	55                              @ DW_AT_low_pc
	.long	.Lfunc_end48-.Lfunc_begin48     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	109                             @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	56                              @ DW_AT_low_pc
	.long	.Lfunc_end49-.Lfunc_begin49     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	110                             @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	57                              @ DW_AT_low_pc
	.long	.Lfunc_end50-.Lfunc_begin50     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	111                             @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	58                              @ DW_AT_low_pc
	.long	.Lfunc_end51-.Lfunc_begin51     @ DW_AT_high_pc
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
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	112                             @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	77                              @ DW_AT_comp_dir
	.byte	59                              @ DW_AT_low_pc
	.long	.Lfunc_end52-.Lfunc_begin52     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end37:
.Lcu_begin38:
	.long	.Ldebug_info_end38-.Ldebug_info_start38 @ Length of Unit
.Ldebug_info_start38:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	37                              @ Abbrev [37] 0xc:0x1b DW_TAG_compile_unit
	.byte	75                              @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	113                             @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	114                             @ DW_AT_comp_dir
	.byte	60                              @ DW_AT_low_pc
	.long	.Lfunc_end54-.Lfunc_begin53     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
.Ldebug_info_end38:
	.section	.debug_rnglists,"",%progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 @ Length
.Ldebug_list_header_start1:
	.short	5                               @ Version
	.byte	4                               @ Address size
	.byte	0                               @ Segment selector size
	.long	2                               @ Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               @ DW_RLE_offset_pair
	.uleb128 .Ltmp200-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp201-.Lfunc_begin4         @   ending offset
	.byte	4                               @ DW_RLE_offset_pair
	.uleb128 .Ltmp202-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp205-.Lfunc_begin4         @   ending offset
	.byte	0                               @ DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               @ DW_RLE_offset_pair
	.uleb128 .Ltmp379-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp383-.Lfunc_begin4         @   ending offset
	.byte	4                               @ DW_RLE_offset_pair
	.uleb128 .Ltmp385-.Lfunc_begin4         @   starting offset
	.uleb128 .Ltmp400-.Lfunc_begin4         @   ending offset
	.byte	0                               @ DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",%progbits
	.long	648                             @ Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)" @ string offset=0
.Linfo_string1:
	.asciz	"/workspaces/llvmta/testcases/singletest/cosf/cosf.c" @ string offset=100
.Linfo_string2:
	.asciz	"/workspaces/llvmta/testcases/singletest/complex_updates" @ string offset=152
.Linfo_string3:
	.asciz	"cosf_solutions"                @ string offset=208
.Linfo_string4:
	.asciz	"float"                         @ string offset=223
.Linfo_string5:
	.asciz	"/workspaces/llvmta/testcases/singletest/cosf/wcclibm.c" @ string offset=229
.Linfo_string6:
	.asciz	"basicmath_pi"                  @ string offset=284
.Linfo_string7:
	.asciz	"basicmath_pio2_lo"             @ string offset=297
.Linfo_string8:
	.asciz	"basicmath_pio2_hi"             @ string offset=315
.Linfo_string9:
	.asciz	"basicmath_pS0"                 @ string offset=333
.Linfo_string10:
	.asciz	"basicmath_pS1"                 @ string offset=347
.Linfo_string11:
	.asciz	"basicmath_pS2"                 @ string offset=361
.Linfo_string12:
	.asciz	"basicmath_pS3"                 @ string offset=375
.Linfo_string13:
	.asciz	"basicmath_pS4"                 @ string offset=389
.Linfo_string14:
	.asciz	"basicmath_pS5"                 @ string offset=403
.Linfo_string15:
	.asciz	"basicmath_one"                 @ string offset=417
.Linfo_string16:
	.asciz	"basicmath_qS1"                 @ string offset=431
.Linfo_string17:
	.asciz	"basicmath_qS2"                 @ string offset=445
.Linfo_string18:
	.asciz	"basicmath_qS3"                 @ string offset=459
.Linfo_string19:
	.asciz	"basicmath_qS4"                 @ string offset=473
.Linfo_string20:
	.asciz	"basicmath_zero"                @ string offset=487
.Linfo_string21:
	.asciz	"basicmath_huge"                @ string offset=502
.Linfo_string22:
	.asciz	"basicmath_tiny"                @ string offset=517
.Linfo_string23:
	.asciz	"basicmath_ivln2_h"             @ string offset=532
.Linfo_string24:
	.asciz	"basicmath_ivln2_l"             @ string offset=550
.Linfo_string25:
	.asciz	"basicmath_ivln2"               @ string offset=568
.Linfo_string26:
	.asciz	"basicmath_two24"               @ string offset=584
.Linfo_string27:
	.asciz	"basicmath_L1"                  @ string offset=600
.Linfo_string28:
	.asciz	"basicmath_L2"                  @ string offset=613
.Linfo_string29:
	.asciz	"basicmath_L3"                  @ string offset=626
.Linfo_string30:
	.asciz	"basicmath_L4"                  @ string offset=639
.Linfo_string31:
	.asciz	"basicmath_L5"                  @ string offset=652
.Linfo_string32:
	.asciz	"basicmath_L6"                  @ string offset=665
.Linfo_string33:
	.asciz	"basicmath_cp_h"                @ string offset=678
.Linfo_string34:
	.asciz	"basicmath_cp_l"                @ string offset=693
.Linfo_string35:
	.asciz	"basicmath_cp"                  @ string offset=708
.Linfo_string36:
	.asciz	"basicmath_ovt"                 @ string offset=721
.Linfo_string37:
	.asciz	"basicmath_lg2_h"               @ string offset=735
.Linfo_string38:
	.asciz	"basicmath_lg2"                 @ string offset=751
.Linfo_string39:
	.asciz	"basicmath_lg2_l"               @ string offset=765
.Linfo_string40:
	.asciz	"basicmath_P1"                  @ string offset=781
.Linfo_string41:
	.asciz	"basicmath_P2"                  @ string offset=794
.Linfo_string42:
	.asciz	"basicmath_P3"                  @ string offset=807
.Linfo_string43:
	.asciz	"basicmath_P4"                  @ string offset=820
.Linfo_string44:
	.asciz	"basicmath_P5"                  @ string offset=833
.Linfo_string45:
	.asciz	"basicmath_two"                 @ string offset=846
.Linfo_string46:
	.asciz	"basicmath_pio2_1"              @ string offset=860
.Linfo_string47:
	.asciz	"basicmath_pio2_1t"             @ string offset=877
.Linfo_string48:
	.asciz	"basicmath_pio2_2"              @ string offset=895
.Linfo_string49:
	.asciz	"basicmath_pio2_2t"             @ string offset=912
.Linfo_string50:
	.asciz	"basicmath_invpio2"             @ string offset=930
.Linfo_string51:
	.asciz	"basicmath_half"                @ string offset=948
.Linfo_string52:
	.asciz	"basicmath_pio2_3"              @ string offset=963
.Linfo_string53:
	.asciz	"basicmath_pio2_3t"             @ string offset=980
.Linfo_string54:
	.asciz	"basicmath_C1"                  @ string offset=998
.Linfo_string55:
	.asciz	"basicmath_C2"                  @ string offset=1011
.Linfo_string56:
	.asciz	"basicmath_C3"                  @ string offset=1024
.Linfo_string57:
	.asciz	"basicmath_C4"                  @ string offset=1037
.Linfo_string58:
	.asciz	"basicmath_C5"                  @ string offset=1050
.Linfo_string59:
	.asciz	"basicmath_C6"                  @ string offset=1063
.Linfo_string60:
	.asciz	"basicmath_S2"                  @ string offset=1076
.Linfo_string61:
	.asciz	"basicmath_S3"                  @ string offset=1089
.Linfo_string62:
	.asciz	"basicmath_S4"                  @ string offset=1102
.Linfo_string63:
	.asciz	"basicmath_S5"                  @ string offset=1115
.Linfo_string64:
	.asciz	"basicmath_S6"                  @ string offset=1128
.Linfo_string65:
	.asciz	"basicmath_S1"                  @ string offset=1141
.Linfo_string66:
	.asciz	"basicmath_two25"               @ string offset=1154
.Linfo_string67:
	.asciz	"basicmath_twom25"              @ string offset=1170
.Linfo_string68:
	.asciz	"basicmath_bp"                  @ string offset=1187
.Linfo_string69:
	.asciz	"__ARRAY_SIZE_TYPE__"           @ string offset=1200
.Linfo_string70:
	.asciz	"basicmath_dp_l"                @ string offset=1220
.Linfo_string71:
	.asciz	"basicmath_dp_h"                @ string offset=1235
.Linfo_string72:
	.asciz	"basicmath_npio2_hw"            @ string offset=1250
.Linfo_string73:
	.asciz	"int"                           @ string offset=1269
.Linfo_string74:
	.asciz	"unsigned int"                  @ string offset=1273
.Linfo_string75:
	.asciz	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)" @ string offset=1286
.Linfo_string76:
	.asciz	"../absvdi2.c"                  @ string offset=1407
.Linfo_string77:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" @ string offset=1420
.Linfo_string78:
	.asciz	"../int_util.c"                 @ string offset=1482
.Linfo_string79:
	.asciz	"../absvsi2.c"                  @ string offset=1496
.Linfo_string80:
	.asciz	"../addvdi3.c"                  @ string offset=1509
.Linfo_string81:
	.asciz	"../addvsi3.c"                  @ string offset=1522
.Linfo_string82:
	.asciz	"../ashldi3.c"                  @ string offset=1535
.Linfo_string83:
	.asciz	"../ashrdi3.c"                  @ string offset=1548
.Linfo_string84:
	.asciz	"../clzdi2.c"                   @ string offset=1561
.Linfo_string85:
	.asciz	"../clzsi2.c"                   @ string offset=1573
.Linfo_string86:
	.asciz	"../cmpdi2.c"                   @ string offset=1585
.Linfo_string87:
	.asciz	"../ctzdi2.c"                   @ string offset=1597
.Linfo_string88:
	.asciz	"../ctzsi2.c"                   @ string offset=1609
.Linfo_string89:
	.asciz	"../divdi3.c"                   @ string offset=1621
.Linfo_string90:
	.asciz	"../udivmoddi4.c"               @ string offset=1633
.Linfo_string91:
	.asciz	"../divmoddi4.c"                @ string offset=1649
.Linfo_string92:
	.asciz	"../divmodsi4.c"                @ string offset=1664
.Linfo_string93:
	.asciz	"../divsi3.c"                   @ string offset=1679
.Linfo_string94:
	.asciz	"../ffsdi2.c"                   @ string offset=1691
.Linfo_string95:
	.asciz	"../ffssi2.c"                   @ string offset=1703
.Linfo_string96:
	.asciz	"../lshrdi3.c"                  @ string offset=1715
.Linfo_string97:
	.asciz	"../moddi3.c"                   @ string offset=1728
.Linfo_string98:
	.asciz	"../modsi3.c"                   @ string offset=1740
.Linfo_string99:
	.asciz	"../mulvdi3.c"                  @ string offset=1752
.Linfo_string100:
	.asciz	"../mulvsi3.c"                  @ string offset=1765
.Linfo_string101:
	.asciz	"../paritydi2.c"                @ string offset=1778
.Linfo_string102:
	.asciz	"../paritysi2.c"                @ string offset=1793
.Linfo_string103:
	.asciz	"../popcountdi2.c"              @ string offset=1808
.Linfo_string104:
	.asciz	"../popcountsi2.c"              @ string offset=1825
.Linfo_string105:
	.asciz	"../subvdi3.c"                  @ string offset=1842
.Linfo_string106:
	.asciz	"../subvsi3.c"                  @ string offset=1855
.Linfo_string107:
	.asciz	"../ucmpdi2.c"                  @ string offset=1868
.Linfo_string108:
	.asciz	"../udivdi3.c"                  @ string offset=1881
.Linfo_string109:
	.asciz	"../udivmodsi4.c"               @ string offset=1894
.Linfo_string110:
	.asciz	"../udivsi3.c"                  @ string offset=1910
.Linfo_string111:
	.asciz	"../umoddi3.c"                  @ string offset=1923
.Linfo_string112:
	.asciz	"../umodsi3.c"                  @ string offset=1936
.Linfo_string113:
	.asciz	"../memory.c"                   @ string offset=1949
.Linfo_string114:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" @ string offset=1961
.Linfo_string115:
	.asciz	"cosf_init"                     @ string offset=2023
.Linfo_string116:
	.asciz	"cosf_return"                   @ string offset=2033
.Linfo_string117:
	.asciz	"cosf_main"                     @ string offset=2045
.Linfo_string118:
	.asciz	"main"                          @ string offset=2055
.Linfo_string119:
	.asciz	"basicmath___ieee754_acosf"     @ string offset=2060
.Linfo_string120:
	.asciz	"basicmath___ieee754_sqrtf"     @ string offset=2086
.Linfo_string121:
	.asciz	"basicmath___ieee754_powf"      @ string offset=2112
.Linfo_string122:
	.asciz	"basicmath___isinff"            @ string offset=2137
.Linfo_string123:
	.asciz	"basicmath___fabsf"             @ string offset=2156
.Linfo_string124:
	.asciz	"basicmath___scalbnf"           @ string offset=2174
.Linfo_string125:
	.asciz	"basicmath___copysignf"         @ string offset=2194
.Linfo_string126:
	.asciz	"basicmath___ieee754_rem_pio2f" @ string offset=2216
.Linfo_string127:
	.asciz	"basicmath___kernel_cosf"       @ string offset=2246
.Linfo_string128:
	.asciz	"basicmath___kernel_sinf"       @ string offset=2270
.Linfo_string129:
	.asciz	"basicmath___cosf"              @ string offset=2294
.Linfo_string130:
	.asciz	"temp"                          @ string offset=2311
.Linfo_string131:
	.asciz	"i"                             @ string offset=2316
.Linfo_string132:
	.asciz	"x"                             @ string offset=2318
.Linfo_string133:
	.asciz	"hx"                            @ string offset=2320
.Linfo_string134:
	.asciz	"ix"                            @ string offset=2323
.Linfo_string135:
	.asciz	"idf"                           @ string offset=2326
.Linfo_string136:
	.asciz	"sign"                          @ string offset=2330
.Linfo_string137:
	.asciz	"m"                             @ string offset=2335
.Linfo_string138:
	.asciz	"r"                             @ string offset=2337
.Linfo_string139:
	.asciz	"q"                             @ string offset=2339
.Linfo_string140:
	.asciz	"s"                             @ string offset=2341
.Linfo_string141:
	.asciz	"t"                             @ string offset=2343
.Linfo_string142:
	.asciz	"z"                             @ string offset=2345
.Linfo_string143:
	.asciz	"y"                             @ string offset=2347
.Linfo_string144:
	.asciz	"hy"                            @ string offset=2349
.Linfo_string145:
	.asciz	"iy"                            @ string offset=2352
.Linfo_string146:
	.asciz	"yisint"                        @ string offset=2355
.Linfo_string147:
	.asciz	"k"                             @ string offset=2362
.Linfo_string148:
	.asciz	"j"                             @ string offset=2364
.Linfo_string149:
	.asciz	"n"                             @ string offset=2366
.Linfo_string150:
	.asciz	"is"                            @ string offset=2368
.Linfo_string151:
	.asciz	"sf_u"                          @ string offset=2371
.Linfo_string152:
	.asciz	"value"                         @ string offset=2376
.Linfo_string153:
	.asciz	"word"                          @ string offset=2382
.Linfo_string154:
	.asciz	"ieee_float_shape_type"         @ string offset=2387
.Linfo_string155:
	.asciz	"p_h"                           @ string offset=2409
.Linfo_string156:
	.asciz	"t1"                            @ string offset=2413
.Linfo_string157:
	.asciz	"t2"                            @ string offset=2416
.Linfo_string158:
	.asciz	"w"                             @ string offset=2419
.Linfo_string159:
	.asciz	"high"                          @ string offset=2421
.Linfo_string160:
	.asciz	"qx"                            @ string offset=2426
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
	.long	.Linfo_string158
	.long	.Linfo_string159
	.long	.Linfo_string160
	.section	.debug_addr,"",%progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 @ Length of contribution
.Ldebug_addr_start0:
	.short	5                               @ DWARF version number
	.byte	4                               @ Address size
	.byte	0                               @ Segment selector size
.Laddr_table_base0:
	.long	cosf_solutions
	.long	basicmath_bp
	.long	basicmath_dp_l
	.long	basicmath_dp_h
	.long	basicmath_npio2_hw
	.long	.Lfunc_begin0
	.long	.Lfunc_begin1
	.long	.Lfunc_begin2
	.long	.Lfunc_begin3
	.long	.Lfunc_begin4
	.long	.Ltmp37
	.long	.Lfunc_begin5
	.long	.Lfunc_begin6
	.long	.Ltmp214
	.long	.Ltmp266
	.long	.Lfunc_begin7
	.long	.Lfunc_begin8
	.long	.Lfunc_begin9
	.long	.Ltmp341
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
	.ident	"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)"
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
