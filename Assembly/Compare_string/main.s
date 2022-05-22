	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 3	sdk_version 11, 3
	.globl	_compare_string                 ; -- Begin function compare_string
	.p2align	2
_compare_string:                        ; @compare_string
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldrsb	w9, [x8]
	mov	w10, #0
	str	w10, [sp, #12]                  ; 4-byte Folded Spill
	cbnz	w9, LBB0_3
; %bb.2:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	cset	w10, eq
	str	w10, [sp, #12]                  ; 4-byte Folded Spill
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbnz	w8, #0, LBB0_4
	b	LBB0_5
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_1
LBB0_5:
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
                                        ; kill: def $w8 killed $w8 killed $x8
	mov	x0, x8
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0
	stur	wzr, [x29, #-4]
	adrp	x9, l___const.main.str0@PAGE
	add	x9, x9, l___const.main.str0@PAGEOFF
	ldrh	w10, [x9]
	sub	x11, x29, #8                    ; =8
	sturh	w10, [x29, #-8]
	ldrb	w10, [x9, #2]
	strb	w10, [x11, #2]
	adrp	x9, l___const.main.str1@PAGE
	add	x9, x9, l___const.main.str1@PAGEOFF
	ldrh	w10, [x9]
	sub	x12, x29, #12                   ; =12
	sturh	w10, [x29, #-12]
	ldrb	w10, [x9, #2]
	strb	w10, [x12, #2]
	mov	x0, x11
	mov	x1, x12
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	bl	_compare_string
	str	w0, [sp, #16]
	ldr	w0, [sp, #12]                   ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l___const.main.str0:                    ; @__const.main.str0
	.asciz	"AB"

l___const.main.str1:                    ; @__const.main.str1
	.asciz	"Ab"

.subsections_via_symbols
