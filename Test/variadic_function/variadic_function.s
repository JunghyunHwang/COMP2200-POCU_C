	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 3	sdk_version 11, 3
	.globl	_sum_by_access_pointer          ; -- Begin function sum_by_access_pointer
	.p2align	2
_sum_by_access_pointer:                 ; @sum_by_access_pointer
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #4                     ; =4
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w9, [x8]
	stur	w9, [x29, #-12]
	ldr	x8, [sp, #16]
	add	x8, x8, #4                      ; =4
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w9, [x8]
	stur	w9, [x29, #-16]
	ldur	w9, [x29, #-4]
                                        ; implicit-def: $x2
	mov	x2, x9
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	x8, sp
	str	x2, [x8]
	bl	_printf
	ldur	w9, [x29, #-8]
                                        ; implicit-def: $x2
	mov	x2, x9
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	mov	x0, x8
	mov	x8, sp
	str	x2, [x8]
	bl	_printf
	ldur	w9, [x29, #-12]
                                        ; implicit-def: $x2
	mov	x2, x9
	adrp	x8, l_.str.2@PAGE
	add	x8, x8, l_.str.2@PAGEOFF
	mov	x0, x8
	mov	x8, sp
	str	x2, [x8]
	bl	_printf
	ldur	w9, [x29, #-16]
                                        ; implicit-def: $x2
	mov	x2, x9
	adrp	x8, l_.str.3@PAGE
	add	x8, x8, l_.str.3@PAGEOFF
	mov	x0, x8
	mov	x8, sp
	str	x2, [x8]
	bl	_printf
	ldur	w9, [x29, #-12]
	ldur	w10, [x29, #-16]
	add	w9, w9, w10
	stur	w9, [x29, #-20]
	ldur	w9, [x29, #-20]
                                        ; implicit-def: $x2
	mov	x2, x9
	adrp	x8, l_.str.4@PAGE
	add	x8, x8, l_.str.4@PAGEOFF
	mov	x0, x8
	mov	x8, sp
	str	x2, [x8]
	bl	_printf
	ldur	w9, [x29, #-20]
	mov	x0, x9
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_add_sum                        ; -- Begin function add_sum
	.p2align	2
_add_sum:                               ; @add_sum
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	.cfi_def_cfa_offset 48
	str	w0, [sp, #44]
	str	wzr, [sp, #28]
	add	x8, sp, #32                     ; =32
	add	x9, sp, #48                     ; =48
	str	x9, [x8]
	str	xzr, [sp, #16]
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #44]
	subs	x8, x8, x9
	b.hs	LBB1_4
; %bb.2:                                ;   in Loop: Header=BB1_1 Depth=1
	ldr	x8, [sp, #32]
	ldr	w9, [x8]
	add	x8, x8, #8                      ; =8
	str	x8, [sp, #32]
	str	w9, [sp, #12]
	ldr	w9, [sp, #12]
	ldr	w10, [sp, #28]
	add	w9, w10, w9
	str	w9, [sp, #28]
; %bb.3:                                ;   in Loop: Header=BB1_1 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1                      ; =1
	str	x8, [sp, #16]
	b	LBB1_1
LBB1_4:
	ldr	w0, [sp, #28]
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"input a: %d\n"

l_.str.1:                               ; @.str.1
	.asciz	"input b: %d\n"

l_.str.2:                               ; @.str.2
	.asciz	"a_value: %d\n"

l_.str.3:                               ; @.str.3
	.asciz	"b_value: %d\n"

l_.str.4:                               ; @.str.4
	.asciz	"result: %d\n"

.subsections_via_symbols
