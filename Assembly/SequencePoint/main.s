	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 3	sdk_version 11, 3
	.globl	_add                            ; -- Begin function add
	.p2align	2
_add:                                   ; @add
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-4]
	ldr	w9, [sp, #8]
	add	w8, w8, w9
	mov	x0, x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_sub                            ; -- Begin function sub
	.p2align	2
_sub:                                   ; @sub
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-4]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	mov	x0, x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0
	stur	wzr, [x29, #-4]
	mov	w9, #1
	stur	w9, [x29, #-8]
	stur	w9, [x29, #-12]
	ldur	w0, [x29, #-8]
	ldur	w1, [x29, #-12]
	stur	w8, [x29, #-16]                 ; 4-byte Folded Spill
	bl	_add
	ldur	w8, [x29, #-8]
	ldur	w1, [x29, #-12]
	stur	w0, [x29, #-20]                 ; 4-byte Folded Spill
	mov	x0, x8
	bl	_sub
	adrp	x10, l_.str.2@PAGE
	add	x10, x10, l_.str.2@PAGEOFF
	str	w0, [sp, #24]                   ; 4-byte Folded Spill
	mov	x0, x10
	mov	x10, sp
                                        ; implicit-def: $x2
	ldur	w8, [x29, #-20]                 ; 4-byte Folded Reload
	mov	x2, x8
	str	x2, [x10]
                                        ; implicit-def: $x2
	ldr	w9, [sp, #24]                   ; 4-byte Folded Reload
	mov	x2, x9
	str	x2, [x10, #8]
	bl	_printf
	ldur	w8, [x29, #-16]                 ; 4-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Add!!\n"

l_.str.1:                               ; @.str.1
	.asciz	"Sub!!\n"

l_.str.2:                               ; @.str.2
	.asciz	"%d %d"

.subsections_via_symbols
