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
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	bl	_test_simple_variadic
	bl	_test_wrong_access
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_puts
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function test_simple_variadic
_test_simple_variadic:                  ; @test_simple_variadic
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #5
	mov	w1, #3
	bl	_sum_by_access_pointer
	stur	w0, [x29, #-4]
	ldur	w8, [x29, #-4]
                                        ; implicit-def: $x2
	mov	x2, x8
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	mov	x9, sp
	str	x2, [x9]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function test_wrong_access
_test_wrong_access:                     ; @test_wrong_access
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #5
	mov	x8, sp
	mov	x9, #1
	str	x9, [x8]
	mov	x9, #2
	str	x9, [x8, #8]
	mov	x9, #3
	str	x9, [x8, #16]
	mov	x9, #4
	str	x9, [x8, #24]
	mov	x9, #5
	str	x9, [x8, #32]
	bl	_add_sum
	stur	w0, [x29, #-4]
	ldur	w10, [x29, #-4]
                                        ; implicit-def: $x1
	mov	x1, x10
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	mov	x8, sp
	str	x1, [x8]
	bl	_printf
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"No prob"

l_.str.1:                               ; @.str.1
	.asciz	"Access by pointer result: %d\n"

l_.str.2:                               ; @.str.2
	.asciz	"Variadic access result: %d\n"

.subsections_via_symbols
