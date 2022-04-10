	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 1
	.file	"main.c"
	.def	 _main;
	.scl	2;
	.type	32;
	.endef
	.globl	_main                           # -- Begin function main
	.p2align	4, 0x90
_main:                                  # @main
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	$0, -4(%ebp)
	movl	$1, -8(%ebp)
	movl	-8(%ebp), %eax
	leal	"??_C@_03PMGGPEJJ@?$CFd?6?$AA@", %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_printf
	leal	"??_C@_07PADMMEJD@No?5prob?$AA@", %eax
	movl	%eax, (%esp)
	calll	_puts
	xorl	%eax, %eax
	addl	$16, %esp
	popl	%ebp
	retl
                                        # -- End function
	.def	 _printf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_printf
	.globl	_printf                         # -- Begin function printf
	.p2align	4, 0x90
_printf:                                # @printf
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	subl	$28, %esp
	movl	8(%ebp), %eax
	leal	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %esi
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	movl	%esp, %eax
	movl	$1, (%eax)
	calll	___acrt_iob_func
	movl	-16(%ebp), %edx                 # 4-byte Reload
	movl	%eax, %ecx
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%edx, 4(%eax)
	movl	%ecx, (%eax)
	movl	$0, 8(%eax)
	calll	__vfprintf_l
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	addl	$28, %esp
	popl	%esi
	popl	%ebp
	retl
                                        # -- End function
	.def	 __vfprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__vfprintf_l
	.globl	__vfprintf_l                    # -- Begin function _vfprintf_l
	.p2align	4, 0x90
__vfprintf_l:                           # @_vfprintf_l
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
	movl	20(%ebp), %eax
	movl	16(%ebp), %eax
	movl	12(%ebp), %eax
	movl	8(%ebp), %eax
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	movl	16(%ebp), %ebx
	movl	12(%ebp), %edi
	movl	8(%ebp), %esi
	calll	___local_stdio_printf_options
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	(%eax), %edx
	movl	%edx, -16(%ebp)                 # 4-byte Spill
	movl	4(%eax), %edx
	movl	%esp, %eax
	movl	%ecx, 20(%eax)
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%edi, 12(%eax)
	movl	%esi, 8(%eax)
	movl	%edx, 4(%eax)
	movl	%ecx, (%eax)
	calll	___stdio_common_vfprintf
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
                                        # -- End function
	.def	 ___local_stdio_printf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,___local_stdio_printf_options
	.globl	___local_stdio_printf_options   # -- Begin function __local_stdio_printf_options
	.p2align	4, 0x90
___local_stdio_printf_options:          # @__local_stdio_printf_options
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	leal	___local_stdio_printf_options._OptionsStorage, %eax
	popl	%ebp
	retl
                                        # -- End function
	.section	.rdata,"dr",discard,"??_C@_03PMGGPEJJ@?$CFd?6?$AA@"
	.globl	"??_C@_03PMGGPEJJ@?$CFd?6?$AA@" # @"??_C@_03PMGGPEJJ@?$CFd?6?$AA@"
"??_C@_03PMGGPEJJ@?$CFd?6?$AA@":
	.asciz	"%d\n"

	.section	.rdata,"dr",discard,"??_C@_07PADMMEJD@No?5prob?$AA@"
	.globl	"??_C@_07PADMMEJD@No?5prob?$AA@" # @"??_C@_07PADMMEJD@No?5prob?$AA@"
"??_C@_07PADMMEJD@No?5prob?$AA@":
	.asciz	"No prob"

	.lcomm	___local_stdio_printf_options._OptionsStorage,8,8 # @__local_stdio_printf_options._OptionsStorage
	.addrsig
	.addrsig_sym _printf
	.addrsig_sym _puts
	.addrsig_sym __vfprintf_l
	.addrsig_sym ___acrt_iob_func
	.addrsig_sym ___stdio_common_vfprintf
	.addrsig_sym ___local_stdio_printf_options
	.addrsig_sym ___local_stdio_printf_options._OptionsStorage
