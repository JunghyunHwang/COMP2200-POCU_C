	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 3	sdk_version 11, 3
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0
	stur	wzr, [x29, #-4]
	mov	w9, #11
	mov	x0, x9
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	bl	_testReturn1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	mov	x0, x8
	bl	_testReturn2
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_testReturn1                    ; -- Begin function testReturn1
	.p2align	2
_testReturn1:                           ; @testReturn1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	cmp	w8, #5                          ; =5
	b.le	LBB1_2
; %bb.1:
	ldr	w8, [sp, #8]
	str	w8, [sp, #12]
	b	LBB1_6
LBB1_2:
	ldr	w8, [sp, #8]
	cmp	w8, #10                         ; =10
	b.le	LBB1_4
; %bb.3:
	ldr	w8, [sp, #8]
	lsl	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB1_6
LBB1_4:
; %bb.5:
	str	wzr, [sp, #12]
LBB1_6:
	ldr	w0, [sp, #12]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_testReturn2                    ; -- Begin function testReturn2
	.p2align	2
_testReturn2:                           ; @testReturn2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	cmp	w8, #5                          ; =5
	b.le	LBB2_2
; %bb.1:
	ldr	w8, [sp, #8]
	str	w8, [sp, #12]
	b	LBB2_5
LBB2_2:
	ldr	w8, [sp, #8]
	cmp	w8, #10                         ; =10
	b.le	LBB2_4
; %bb.3:
	ldr	w8, [sp, #8]
	lsl	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB2_5
LBB2_4:
	str	wzr, [sp, #12]
LBB2_5:
	ldr	w0, [sp, #12]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
