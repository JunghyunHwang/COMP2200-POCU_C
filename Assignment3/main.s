	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 1
	.file	"main.c"
	.def	 _official_test;
	.scl	2;
	.type	32;
	.endef
	.globl	_official_test                  # -- Begin function official_test
	.p2align	4, 0x90
_official_test:                         # @official_test
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	$0, -4(%ebp)
	movl	$0, -8(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	leal	"??_C@_0BA@BNGFCPAB@doesntexist?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_load_document
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -29(%ebp)                  # 1-byte Spill
	je	LBB0_2
# %bb.1:
	leal	"??_C@_1FE@IDMDOLEE@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAd?$AAo?$AAe?$AAs?$AAn?$AAt?$AAe?$AAx?$AAi?$AAs?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$31, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -29(%ebp)                  # 1-byte Spill
LBB0_2:
	movb	-29(%ebp), %al                  # 1-byte Reload
	leal	"??_C@_09KMIIOAHK@input?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_load_document
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	movb	%al, -30(%ebp)                  # 1-byte Spill
	je	LBB0_4
# %bb.3:
	leal	"??_C@_1EG@JGIIHEFO@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAi?$AAn?$AAp?$AAu?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$32, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -30(%ebp)                  # 1-byte Spill
LBB0_4:
	movb	-30(%ebp), %al                  # 1-byte Reload
	calll	_get_total_word_count
	movl	%eax, -20(%ebp)
	calll	_get_total_sentence_count
	movl	%eax, -24(%ebp)
	calll	_get_total_paragraph_count
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	leal	"??_C@_0BL@DIOHGBMP@Total?5paragraph?5count?3?5?$CFd?6?$AA@", %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_printf
	movl	-24(%ebp), %eax
	leal	"??_C@_0BK@JMPBPNHE@Total?5sentence?5count?3?5?$CFd?6?$AA@", %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_printf
	movl	-20(%ebp), %eax
	leal	"??_C@_0BG@IOCEBLKL@Total?5word?5count?3?5?$CFd?6?$AA@", %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_printf
	calll	_get_total_word_count
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$58, %ecx
	movb	%al, -31(%ebp)                  # 1-byte Spill
	je	LBB0_6
# %bb.5:
	leal	"??_C@_1DM@NBPLFIED@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA5?$AA8?$AAU?$AA?$AA@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$42, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -31(%ebp)                  # 1-byte Spill
LBB0_6:
	movb	-31(%ebp), %al                  # 1-byte Reload
	calll	_get_total_sentence_count
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$9, %ecx
	movb	%al, -32(%ebp)                  # 1-byte Spill
	je	LBB0_8
# %bb.7:
	leal	"??_C@_1EC@HHPABBPH@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA9?$AAU@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$43, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -32(%ebp)                  # 1-byte Spill
LBB0_8:
	movb	-32(%ebp), %al                  # 1-byte Reload
	calll	_get_total_paragraph_count
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$3, %ecx
	movb	%al, -33(%ebp)                  # 1-byte Spill
	je	LBB0_10
# %bb.9:
	leal	"??_C@_1EE@MANNLMAC@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA3@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$44, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -33(%ebp)                  # 1-byte Spill
LBB0_10:
	movb	-33(%ebp), %al                  # 1-byte Reload
	movl	$3, (%esp)
	calll	_get_paragraph_or_null
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -34(%ebp)                  # 1-byte Spill
	je	LBB0_12
# %bb.11:
	leal	"??_C@_1EC@EMKCCMMP@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA3?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$46, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -34(%ebp)                  # 1-byte Spill
LBB0_12:
	movb	-34(%ebp), %al                  # 1-byte Reload
	movl	$1, (%esp)
	calll	_get_paragraph_or_null
	movl	%eax, -8(%ebp)
	movb	$1, %al
	cmpl	$0, -8(%ebp)
	movb	%al, -35(%ebp)                  # 1-byte Spill
	jne	LBB0_14
# %bb.13:
	leal	"??_C@_1CE@HHPBDCJC@?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?5?$AA?$CB?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL?$AA?$AA@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$49, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -35(%ebp)                  # 1-byte Spill
LBB0_14:
	movb	-35(%ebp), %al                  # 1-byte Reload
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	calll	_get_paragraph_word_count
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$14, %ecx
	movb	%al, -36(%ebp)                  # 1-byte Spill
	je	LBB0_16
# %bb.15:
	leal	"??_C@_1FE@CAOCIGMP@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$50, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -36(%ebp)                  # 1-byte Spill
LBB0_16:
	movb	-36(%ebp), %al                  # 1-byte Reload
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	calll	_get_paragraph_sentence_count
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$2, %ecx
	movb	%al, -37(%ebp)                  # 1-byte Spill
	je	LBB0_18
# %bb.17:
	leal	"??_C@_1FK@DJMKABAC@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AAp?$AAa?$AAr@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$51, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -37(%ebp)                  # 1-byte Spill
LBB0_18:
	movb	-37(%ebp), %al                  # 1-byte Reload
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-16(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -16(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_04EJMIGEJP@This?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -38(%ebp)                  # 1-byte Spill
	je	LBB0_20
# %bb.19:
	leal	"??_C@_1EO@JMIGAJED@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAT?$AAh?$AAi?$AAs?$AA?$CC@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$53, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -38(%ebp)                  # 1-byte Spill
LBB0_20:
	movb	-38(%ebp), %al                  # 1-byte Reload
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-16(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -16(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_02EDKKPMHH@is?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -39(%ebp)                  # 1-byte Spill
	je	LBB0_22
# %bb.21:
	leal	"??_C@_1EK@JJIEMBLA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAi?$AAs?$AA?$CC?$AA?$CJ?$AA?5@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$54, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -39(%ebp)                  # 1-byte Spill
LBB0_22:
	movb	-39(%ebp), %al                  # 1-byte Reload
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-16(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -16(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_03GEKIBCFC@the?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -40(%ebp)                  # 1-byte Spill
	je	LBB0_24
# %bb.23:
	leal	"??_C@_1EM@KIPFPCON@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAt?$AAh?$AAe?$AA?$CC?$AA?$CJ@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$55, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -40(%ebp)                  # 1-byte Spill
LBB0_24:
	movb	-40(%ebp), %al                  # 1-byte Reload
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-16(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -16(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_06BJCFNGJP@second?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -41(%ebp)                  # 1-byte Spill
	je	LBB0_26
# %bb.25:
	leal	"??_C@_1FC@IEBGNEGG@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAs?$AAe?$AAc?$AAo?$AAn@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$56, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -41(%ebp)                  # 1-byte Spill
LBB0_26:
	movb	-41(%ebp), %al                  # 1-byte Reload
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -12(%ebp)
	movl	(%eax,%ecx,4), %eax
	movl	-16(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -16(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_09IODMMDJO@paragraph?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -42(%ebp)                  # 1-byte Spill
	je	LBB0_28
# %bb.27:
	leal	"??_C@_1FM@IJEGKMHA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAp?$AAa?$AAr@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$57, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -42(%ebp)                  # 1-byte Spill
LBB0_28:
	movb	-42(%ebp), %al                  # 1-byte Reload
	movl	$0, -16(%ebp)
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-16(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -16(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_01JPJNBJEM@I?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -43(%ebp)                  # 1-byte Spill
	je	LBB0_30
# %bb.29:
	leal	"??_C@_1EI@JDKGGMNH@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAI?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$61, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -43(%ebp)                  # 1-byte Spill
LBB0_30:
	movb	-43(%ebp), %al                  # 1-byte Reload
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-16(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -16(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_06HDKNMIGM@wonder?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -44(%ebp)                  # 1-byte Spill
	je	LBB0_32
# %bb.31:
	leal	"??_C@_1FC@GKBKHBKC@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAw?$AAo?$AAn?$AAd?$AAe@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$62, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -44(%ebp)                  # 1-byte Spill
LBB0_32:
	movb	-44(%ebp), %al                  # 1-byte Reload
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-16(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -16(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_03DNMJMCD@how?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -45(%ebp)                  # 1-byte Spill
	je	LBB0_34
# %bb.33:
	leal	"??_C@_1EM@CONDJMKE@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAh?$AAo?$AAw?$AA?$CC?$AA?$CJ@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$63, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -45(%ebp)                  # 1-byte Spill
LBB0_34:
	movb	-45(%ebp), %al                  # 1-byte Reload
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-16(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -16(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_04GHFBAPON@many?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -46(%ebp)                  # 1-byte Spill
	je	LBB0_36
# %bb.35:
	leal	"??_C@_1EO@BDLJPAEB@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAm?$AAa?$AAn?$AAy?$AA?$CC@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$64, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -46(%ebp)                  # 1-byte Spill
LBB0_36:
	movb	-46(%ebp), %al                  # 1-byte Reload
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-16(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -16(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_09NHBPAHJO@sentences?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -47(%ebp)                  # 1-byte Spill
	je	LBB0_38
# %bb.37:
	leal	"??_C@_1FI@DCAHAALK@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAs?$AAe?$AAn?$AAt?$AAe@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$65, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -47(%ebp)                  # 1-byte Spill
LBB0_38:
	movb	-47(%ebp), %al                  # 1-byte Reload
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-16(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -16(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_03NJEPMOFL@you?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -48(%ebp)                  # 1-byte Spill
	je	LBB0_40
# %bb.39:
	leal	"??_C@_1EM@JFNINJKG@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAy?$AAo?$AAu?$AA?$CC?$AA?$CJ@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$66, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -48(%ebp)                  # 1-byte Spill
LBB0_40:
	movb	-48(%ebp), %al                  # 1-byte Reload
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-16(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -16(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_04LMIEJKFL@will?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -49(%ebp)                  # 1-byte Spill
	je	LBB0_42
# %bb.41:
	leal	"??_C@_1EO@NODABCLO@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAw?$AAi?$AAl?$AAl?$AA?$CC@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$67, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -49(%ebp)                  # 1-byte Spill
LBB0_42:
	movb	-49(%ebp), %al                  # 1-byte Reload
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-16(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -16(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_03PBKHLJLI@see?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -50(%ebp)                  # 1-byte Spill
	je	LBB0_44
# %bb.43:
	leal	"??_C@_1EM@HLHNMKAA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAs?$AAe?$AAe?$AA?$CC?$AA?$CJ@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$68, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -50(%ebp)                  # 1-byte Spill
LBB0_44:
	movb	-50(%ebp), %al                  # 1-byte Reload
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-16(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -16(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_04NDJIBAID@here?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -51(%ebp)                  # 1-byte Spill
	je	LBB0_46
# %bb.45:
	leal	"??_C@_1EO@KGJBCLOF@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAh?$AAe?$AAr?$AAe?$AA?$CC@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$69, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -51(%ebp)                  # 1-byte Spill
LBB0_46:
	movb	-51(%ebp), %al                  # 1-byte Reload
	xorl	%eax, %eax
	movl	$0, (%esp)
	movl	$10, 4(%esp)
	calll	_get_sentence_or_null
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -52(%ebp)                  # 1-byte Spill
	je	LBB0_48
# %bb.47:
	leal	"??_C@_1EI@HGNBKHDJ@?$AAg?$AAe?$AAt?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA0?$AA?0?$AA?5?$AA1?$AA0?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$71, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -52(%ebp)                  # 1-byte Spill
LBB0_48:
	movb	-52(%ebp), %al                  # 1-byte Reload
	xorl	%eax, %eax
	movl	$0, (%esp)
	movl	$2, 4(%esp)
	calll	_get_sentence_or_null
	movl	%eax, -4(%ebp)
	movb	$1, %al
	cmpl	$0, -4(%ebp)
	movb	%al, -53(%ebp)                  # 1-byte Spill
	jne	LBB0_50
# %bb.49:
	leal	"??_C@_1CC@HNJCKFHM@?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?5?$AA?$CB?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL?$AA?$AA@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$74, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -53(%ebp)                  # 1-byte Spill
LBB0_50:
	movb	-53(%ebp), %al                  # 1-byte Reload
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	calll	_get_sentence_word_count
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$4, %ecx
	movb	%al, -54(%ebp)                  # 1-byte Spill
	je	LBB0_52
# %bb.51:
	leal	"??_C@_1EO@JBIICAIA@?$AAg?$AAe?$AAt?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$75, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -54(%ebp)                  # 1-byte Spill
LBB0_52:
	movb	-54(%ebp), %al                  # 1-byte Reload
	movl	$0, -12(%ebp)
	movl	-4(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -12(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_02HLOHLKJH@Is?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -55(%ebp)                  # 1-byte Spill
	je	LBB0_54
# %bb.53:
	leal	"??_C@_1EC@KOJLEMDL@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAI?$AAs?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$79, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -55(%ebp)                  # 1-byte Spill
LBB0_54:
	movb	-55(%ebp), %al                  # 1-byte Reload
	movl	-4(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -12(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_04IIAJELJL@this?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -56(%ebp)                  # 1-byte Spill
	je	LBB0_56
# %bb.55:
	leal	"??_C@_1EG@DKNEBLDL@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAt?$AAh?$AAi?$AAs?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$80, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -56(%ebp)                  # 1-byte Spill
LBB0_56:
	movb	-56(%ebp), %al                  # 1-byte Reload
	movl	-4(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -12(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_03JLAIOMFN@too?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -57(%ebp)                  # 1-byte Spill
	je	LBB0_58
# %bb.57:
	leal	"??_C@_1EE@JINFIKDA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAt?$AAo?$AAo?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$81, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -57(%ebp)                  # 1-byte Spill
LBB0_58:
	movb	-57(%ebp), %al                  # 1-byte Reload
	movl	-4(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -12(%ebp)
	movl	(%eax,%ecx,4), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	$"??_C@_04EDNPHEAP@easy?$AA@", 4(%eax)
	calll	_strcmp
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -58(%ebp)                  # 1-byte Spill
	je	LBB0_60
# %bb.59:
	leal	"??_C@_1EG@MPKHINHF@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAe?$AAa?$AAs?$AAy?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$82, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -58(%ebp)                  # 1-byte Spill
LBB0_60:
	movb	-58(%ebp), %al                  # 1-byte Reload
	leal	"??_C@_0L@ODNFPCJH@output?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_print_as_tree
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	movb	%al, -59(%ebp)                  # 1-byte Spill
	je	LBB0_62
# %bb.61:
	leal	"??_C@_1EI@PGKPKIB@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AAp?$AAu?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$84, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -59(%ebp)                  # 1-byte Spill
LBB0_62:
	movb	-59(%ebp), %al                  # 1-byte Reload
	calll	_dispose
	addl	$72, %esp
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
	.def	 _test_empty_text;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_test_empty_text                # -- Begin function test_empty_text
	.p2align	4, 0x90
_test_empty_text:                       # @test_empty_text
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$20, %esp
	leal	"??_C@_09JFNACEFL@empty?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_load_document
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	movb	%al, -1(%ebp)                   # 1-byte Spill
	je	LBB2_2
# %bb.1:
	leal	"??_C@_1EG@DGFEMMPL@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAe?$AAm?$AAp?$AAt?$AAy?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$91, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -1(%ebp)                   # 1-byte Spill
LBB2_2:
	movb	-1(%ebp), %al                   # 1-byte Reload
	leal	"??_C@_09HBFMBKLI@hello?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_load_document
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -2(%ebp)                   # 1-byte Spill
	je	LBB2_4
# %bb.3:
	leal	"??_C@_1EI@FOAMFKLA@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAh?$AAe?$AAl?$AAl?$AAo?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAF?$AAA@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$92, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -2(%ebp)                   # 1-byte Spill
LBB2_4:
	movb	-2(%ebp), %al                   # 1-byte Reload
	calll	_get_total_word_count
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -3(%ebp)                   # 1-byte Spill
	je	LBB2_6
# %bb.5:
	leal	"??_C@_1DK@LOPENFJG@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AAU?$AA?$AA@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$94, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -3(%ebp)                   # 1-byte Spill
LBB2_6:
	movb	-3(%ebp), %al                   # 1-byte Reload
	calll	_get_total_sentence_count
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -4(%ebp)                   # 1-byte Spill
	je	LBB2_8
# %bb.7:
	leal	"??_C@_1EC@FAPPEADP@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AAU@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$95, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -4(%ebp)                   # 1-byte Spill
LBB2_8:
	movb	-4(%ebp), %al                   # 1-byte Reload
	calll	_get_total_paragraph_count
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -5(%ebp)                   # 1-byte Spill
	je	LBB2_10
# %bb.9:
	leal	"??_C@_1EE@EGEJMOKM@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$96, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -5(%ebp)                   # 1-byte Spill
LBB2_10:
	movb	-5(%ebp), %al                   # 1-byte Reload
	xorl	%eax, %eax
	movl	$0, (%esp)
	calll	_get_paragraph_or_null
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -6(%ebp)                   # 1-byte Spill
	je	LBB2_12
# %bb.11:
	leal	"??_C@_1EC@HFNKIBIP@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA0?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$98, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -6(%ebp)                   # 1-byte Spill
LBB2_12:
	movb	-6(%ebp), %al                   # 1-byte Reload
	xorl	%eax, %eax
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	calll	_get_sentence_or_null
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -7(%ebp)                   # 1-byte Spill
	je	LBB2_14
# %bb.13:
	leal	"??_C@_1EG@JHKCJOEH@?$AAg?$AAe?$AAt?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA0?$AA?0?$AA?5?$AA0?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN?$AAU@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$99, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -7(%ebp)                   # 1-byte Spill
LBB2_14:
	movb	-7(%ebp), %al                   # 1-byte Reload
	leal	"??_C@_0L@ODNFPCJH@output?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_print_as_tree
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -8(%ebp)                   # 1-byte Spill
	je	LBB2_16
# %bb.15:
	leal	"??_C@_1EK@EJPLJHGD@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AAp?$AAu?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAF@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$100, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -8(%ebp)                   # 1-byte Spill
LBB2_16:
	movb	-8(%ebp), %al                   # 1-byte Reload
	calll	_dispose
	addl	$20, %esp
	popl	%ebp
	retl
                                        # -- End function
	.def	 _test_not_loaded;
	.scl	2;
	.type	32;
	.endef
	.globl	_test_not_loaded                # -- Begin function test_not_loaded
	.p2align	4, 0x90
_test_not_loaded:                       # @test_not_loaded
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	xorl	%eax, %eax
	movl	$0, (%esp)
	calll	_get_paragraph_or_null
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -1(%ebp)                   # 1-byte Spill
	je	LBB3_2
# %bb.1:
	leal	"??_C@_1EC@HFNKIBIP@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA0?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$107, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -1(%ebp)                   # 1-byte Spill
LBB3_2:
	movb	-1(%ebp), %al                   # 1-byte Reload
	xorl	%eax, %eax
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	calll	_get_sentence_or_null
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -2(%ebp)                   # 1-byte Spill
	je	LBB3_4
# %bb.3:
	leal	"??_C@_1EG@JHKCJOEH@?$AAg?$AAe?$AAt?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA0?$AA?0?$AA?5?$AA0?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN?$AAU@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$108, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -2(%ebp)                   # 1-byte Spill
LBB3_4:
	movb	-2(%ebp), %al                   # 1-byte Reload
	calll	_get_total_word_count
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -3(%ebp)                   # 1-byte Spill
	je	LBB3_6
# %bb.5:
	leal	"??_C@_1DK@LOPENFJG@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AAU?$AA?$AA@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$109, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -3(%ebp)                   # 1-byte Spill
LBB3_6:
	movb	-3(%ebp), %al                   # 1-byte Reload
	calll	_get_total_sentence_count
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -4(%ebp)                   # 1-byte Spill
	je	LBB3_8
# %bb.7:
	leal	"??_C@_1EC@FAPPEADP@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AAU@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$110, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -4(%ebp)                   # 1-byte Spill
LBB3_8:
	movb	-4(%ebp), %al                   # 1-byte Reload
	calll	_get_total_paragraph_count
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -5(%ebp)                   # 1-byte Spill
	je	LBB3_10
# %bb.9:
	leal	"??_C@_1EE@EGEJMOKM@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$111, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -5(%ebp)                   # 1-byte Spill
LBB3_10:
	movb	-5(%ebp), %al                   # 1-byte Reload
	leal	"??_C@_09HBFMBKLI@hello?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_load_document
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -6(%ebp)                   # 1-byte Spill
	je	LBB3_12
# %bb.11:
	leal	"??_C@_1EI@FOAMFKLA@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAh?$AAe?$AAl?$AAl?$AAo?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAF?$AAA@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$112, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -6(%ebp)                   # 1-byte Spill
LBB3_12:
	movb	-6(%ebp), %al                   # 1-byte Reload
	leal	"??_C@_0BE@KDNLIFPH@output_document?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_print_as_tree
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -7(%ebp)                   # 1-byte Spill
	je	LBB3_14
# %bb.13:
	leal	"??_C@_1FM@INNFDMPN@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AAp?$AAu?$AAt?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?4?$AAt@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$113, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -7(%ebp)                   # 1-byte Spill
LBB3_14:
	movb	-7(%ebp), %al                   # 1-byte Reload
	leal	"??_C@_0N@EIFBNHNO@document?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_load_document
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	movb	%al, -8(%ebp)                   # 1-byte Spill
	je	LBB3_16
# %bb.15:
	leal	"??_C@_1EM@MEBLFFDI@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$115, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -8(%ebp)                   # 1-byte Spill
LBB3_16:
	movb	-8(%ebp), %al                   # 1-byte Reload
	leal	"??_C@_0BB@GDCNKKJB@out_document?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_print_as_tree
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	movb	%al, -9(%ebp)                   # 1-byte Spill
	je	LBB3_18
# %bb.17:
	leal	"??_C@_1FE@BLMMGPPB@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$117, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -9(%ebp)                   # 1-byte Spill
LBB3_18:
	movb	-9(%ebp), %al                   # 1-byte Reload
	calll	_dispose
	addl	$24, %esp
	popl	%ebp
	retl
                                        # -- End function
	.def	 _official_test2;
	.scl	2;
	.type	32;
	.endef
	.globl	_official_test2                 # -- Begin function official_test2
	.p2align	4, 0x90
_official_test2:                        # @official_test2
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	leal	"??_C@_09NPOAIFAP@santa?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_load_document
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	movb	%al, -13(%ebp)                  # 1-byte Spill
	je	LBB4_2
# %bb.1:
	leal	"??_C@_1EG@NNHHNHPL@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAs?$AAa?$AAn?$AAt?$AAa?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$128, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -13(%ebp)                  # 1-byte Spill
LBB4_2:
	movb	-13(%ebp), %al                  # 1-byte Reload
	calll	_get_total_word_count
	movl	%eax, -4(%ebp)
	calll	_get_total_sentence_count
	movl	%eax, -8(%ebp)
	calll	_get_total_paragraph_count
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	leal	"??_C@_0BL@DIOHGBMP@Total?5paragraph?5count?3?5?$CFd?6?$AA@", %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_printf
	movl	-8(%ebp), %eax
	leal	"??_C@_0BK@JMPBPNHE@Total?5sentence?5count?3?5?$CFd?6?$AA@", %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_printf
	movl	-4(%ebp), %eax
	leal	"??_C@_0BG@IOCEBLKL@Total?5word?5count?3?5?$CFd?6?$AA@", %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_printf
	movb	$1, %al
	cmpl	$45, -4(%ebp)
	movb	%al, -14(%ebp)                  # 1-byte Spill
	je	LBB4_4
# %bb.3:
	leal	"??_C@_1DA@MLICEFBF@?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA4?$AA5?$AAU?$AA?$AA@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$138, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -14(%ebp)                  # 1-byte Spill
LBB4_4:
	movb	-14(%ebp), %al                  # 1-byte Reload
	movb	$1, %al
	cmpl	$10, -8(%ebp)
	movb	%al, -15(%ebp)                  # 1-byte Spill
	je	LBB4_6
# %bb.5:
	leal	"??_C@_1DI@DCMAOPMC@?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA1?$AA0?$AAU?$AA?$AA@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$139, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -15(%ebp)                  # 1-byte Spill
LBB4_6:
	movb	-15(%ebp), %al                  # 1-byte Reload
	movb	$1, %al
	cmpl	$3, -12(%ebp)
	movb	%al, -16(%ebp)                  # 1-byte Spill
	je	LBB4_8
# %bb.7:
	leal	"??_C@_1DI@JFIPFBCO@?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA3?$AAU?$AA?$AA@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$140, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -16(%ebp)                  # 1-byte Spill
LBB4_8:
	movb	-16(%ebp), %al                  # 1-byte Reload
	leal	"??_C@_0O@FMEJPDJP@out_santa?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_print_as_tree
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	movb	%al, -17(%ebp)                  # 1-byte Spill
	je	LBB4_10
# %bb.9:
	leal	"??_C@_1EO@OIINJLCP@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAs?$AAa?$AAn?$AAt?$AAa?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$142, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -17(%ebp)                  # 1-byte Spill
LBB4_10:
	movb	-17(%ebp), %al                  # 1-byte Reload
	calll	_dispose
	addl	$32, %esp
	popl	%ebp
	retl
                                        # -- End function
	.def	 _load_two_files;
	.scl	2;
	.type	32;
	.endef
	.globl	_load_two_files                 # -- Begin function load_two_files
	.p2align	4, 0x90
_load_two_files:                        # @load_two_files
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	leal	"??_C@_09KMIIOAHK@input?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_load_document
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	movb	%al, -13(%ebp)                  # 1-byte Spill
	je	LBB5_2
# %bb.1:
	leal	"??_C@_1EG@JGIIHEFO@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAi?$AAn?$AAp?$AAu?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$153, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -13(%ebp)                  # 1-byte Spill
LBB5_2:
	movb	-13(%ebp), %al                  # 1-byte Reload
	leal	"??_C@_0BA@BNGFCPAB@doesntexist?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_load_document
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -14(%ebp)                  # 1-byte Spill
	je	LBB5_4
# %bb.3:
	leal	"??_C@_1FE@IDMDOLEE@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAd?$AAo?$AAe?$AAs?$AAn?$AAt?$AAe?$AAx?$AAi?$AAs?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$154, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -14(%ebp)                  # 1-byte Spill
LBB5_4:
	movb	-14(%ebp), %al                  # 1-byte Reload
	leal	"??_C@_09JFNACEFL@empty?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_load_document
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	movb	%al, -15(%ebp)                  # 1-byte Spill
	je	LBB5_6
# %bb.5:
	leal	"??_C@_1EG@DGFEMMPL@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAe?$AAm?$AAp?$AAt?$AAy?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$155, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -15(%ebp)                  # 1-byte Spill
LBB5_6:
	movb	-15(%ebp), %al                  # 1-byte Reload
	leal	"??_C@_09NPOAIFAP@santa?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_load_document
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	movb	%al, -16(%ebp)                  # 1-byte Spill
	je	LBB5_8
# %bb.7:
	leal	"??_C@_1EG@NNHHNHPL@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAs?$AAa?$AAn?$AAt?$AAa?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$156, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -16(%ebp)                  # 1-byte Spill
LBB5_8:
	movb	-16(%ebp), %al                  # 1-byte Reload
	calll	_get_total_word_count
	movl	%eax, -4(%ebp)
	calll	_get_total_sentence_count
	movl	%eax, -8(%ebp)
	calll	_get_total_paragraph_count
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	leal	"??_C@_0BL@DIOHGBMP@Total?5paragraph?5count?3?5?$CFd?6?$AA@", %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_printf
	movl	-8(%ebp), %eax
	leal	"??_C@_0BK@JMPBPNHE@Total?5sentence?5count?3?5?$CFd?6?$AA@", %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_printf
	movl	-4(%ebp), %eax
	leal	"??_C@_0BG@IOCEBLKL@Total?5word?5count?3?5?$CFd?6?$AA@", %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_printf
	leal	"??_C@_0O@FMEJPDJP@out_santa?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_print_as_tree
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	movb	%al, -17(%ebp)                  # 1-byte Spill
	je	LBB5_10
# %bb.9:
	leal	"??_C@_1EO@OIINJLCP@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAs?$AAa?$AAn?$AAt?$AAa?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$166, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -17(%ebp)                  # 1-byte Spill
LBB5_10:
	movb	-17(%ebp), %al                  # 1-byte Reload
	calll	_dispose
	addl	$32, %esp
	popl	%ebp
	retl
                                        # -- End function
	.def	 _test_nerd_text;
	.scl	2;
	.type	32;
	.endef
	.globl	_test_nerd_text                 # -- Begin function test_nerd_text
	.p2align	4, 0x90
_test_nerd_text:                        # @test_nerd_text
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	leal	"??_C@_08HGNDLAEC@nerd?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_load_document
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	movb	%al, -1(%ebp)                   # 1-byte Spill
	je	LBB6_2
# %bb.1:
	leal	"??_C@_1EE@OKNCGNI@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAn?$AAe?$AAr?$AAd?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR?$AAU@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$173, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -1(%ebp)                   # 1-byte Spill
LBB6_2:
	movb	-1(%ebp), %al                   # 1-byte Reload
	leal	"??_C@_0N@MCAOHFF@out_nerd?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_print_as_tree
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	movb	%al, -2(%ebp)                   # 1-byte Spill
	je	LBB6_4
# %bb.3:
	leal	"??_C@_1EM@DFHBFMHL@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAn?$AAe?$AAr?$AAd?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$174, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -2(%ebp)                   # 1-byte Spill
LBB6_4:
	movb	-2(%ebp), %al                   # 1-byte Reload
	calll	_dispose
	addl	$16, %esp
	popl	%ebp
	retl
                                        # -- End function
	.def	 _test_unorganized;
	.scl	2;
	.type	32;
	.endef
	.globl	_test_unorganized               # -- Begin function test_unorganized
	.p2align	4, 0x90
_test_unorganized:                      # @test_unorganized
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$28, %esp
	leal	"??_C@_0BA@BHMPDKIC@unorganized?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_load_document
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	movb	%al, -13(%ebp)                  # 1-byte Spill
	je	LBB7_2
# %bb.1:
	leal	"??_C@_1FC@LJDEGMFI@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAu?$AAn?$AAo?$AAr?$AAg?$AAa?$AAn?$AAi?$AAz?$AAe?$AAd?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$185, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -13(%ebp)                  # 1-byte Spill
LBB7_2:
	movb	-13(%ebp), %al                  # 1-byte Reload
	leal	"??_C@_0BE@KPCLMKPI@out_unorganized?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_print_as_tree
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	movb	%al, -14(%ebp)                  # 1-byte Spill
	je	LBB7_4
# %bb.3:
	leal	"??_C@_1FK@FJBEHACO@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAu?$AAn?$AAo?$AAr?$AAg?$AAa?$AAn?$AAi?$AAz?$AAe?$AAd?$AA?4?$AAt@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$186, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -14(%ebp)                  # 1-byte Spill
LBB7_4:
	movb	-14(%ebp), %al                  # 1-byte Reload
	calll	_get_total_word_count
	movl	%eax, -4(%ebp)
	calll	_get_total_sentence_count
	movl	%eax, -8(%ebp)
	calll	_get_total_paragraph_count
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	leal	"??_C@_0BL@DIOHGBMP@Total?5paragraph?5count?3?5?$CFd?6?$AA@", %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_printf
	movl	-8(%ebp), %eax
	leal	"??_C@_0BK@JMPBPNHE@Total?5sentence?5count?3?5?$CFd?6?$AA@", %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_printf
	movl	-4(%ebp), %eax
	leal	"??_C@_0BG@IOCEBLKL@Total?5word?5count?3?5?$CFd?6?$AA@", %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_printf
	calll	_dispose
	addl	$28, %esp
	popl	%ebp
	retl
                                        # -- End function
	.def	 _test_not_normal_text;
	.scl	2;
	.type	32;
	.endef
	.globl	_test_not_normal_text           # -- Begin function test_not_normal_text
	.p2align	4, 0x90
_test_not_normal_text:                  # @test_not_normal_text
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	leal	"??_C@_0P@HJFFOAA@not_normal?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_load_document
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	movb	%al, -1(%ebp)                   # 1-byte Spill
	je	LBB8_2
# %bb.1:
	leal	"??_C@_1FA@ICPNPMHD@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAn?$AAo?$AAt?$AA_?$AAn?$AAo?$AAr?$AAm?$AAa?$AAl?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$201, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -1(%ebp)                   # 1-byte Spill
LBB8_2:
	movb	-1(%ebp), %al                   # 1-byte Reload
	leal	"??_C@_0BD@FOMACLDH@out_not_normal?4txt?$AA@", %eax
	movl	%eax, (%esp)
	calll	_print_as_tree
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	movb	%al, -2(%ebp)                   # 1-byte Spill
	je	LBB8_4
# %bb.3:
	leal	"??_C@_1FI@HIFBKBCE@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAn?$AAo?$AAt?$AA_?$AAn?$AAo?$AAr?$AAm?$AAa?$AAl?$AA?4?$AAt?$AAx@", %ecx
	leal	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$202, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -2(%ebp)                   # 1-byte Spill
LBB8_4:
	movb	-2(%ebp), %al                   # 1-byte Reload
	calll	_dispose
	addl	$16, %esp
	popl	%ebp
	retl
                                        # -- End function
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
	subl	$8, %esp
	movl	$0, -4(%ebp)
	leal	"??_C@_0BM@LHPCLMFO@?$DN?$DN?$DN?5Start?5test?5official?5?$DN?$DN?$DN?$AA@", %eax
	movl	%eax, (%esp)
	calll	_puts
	calll	_official_test
	leal	"??_C@_0BP@EOJJPNLJ@?$DN?$DN?$DN?5Complete?5test?5official?5?$DN?$DN?$DN?$AA@", %eax
	movl	%eax, (%esp)
	calll	_puts
	leal	"??_C@_0BO@CGEJHDEM@?$DN?$DN?$DN?5Start?5test?5not?5loaded?5?$DN?$DN?$DN?$AA@", %eax
	movl	%eax, (%esp)
	calll	_puts
	calll	_test_not_loaded
	leal	"??_C@_0CB@DGKNJOAK@?$DN?$DN?$DN?5Complete?5test?5not?5loaded?5?$DN?$DN?$DN@", %eax
	movl	%eax, (%esp)
	calll	_puts
	leal	"??_C@_0BN@DAOCDGFC@?$DN?$DN?$DN?5Start?5test?5official2?5?$DN?$DN?$DN?$AA@", %eax
	movl	%eax, (%esp)
	calll	_puts
	calll	_official_test2
	leal	"??_C@_0CA@OHFCKMI@?$DN?$DN?$DN?5Complete?5test?5official2?5?$DN?$DN?$DN?$AA@", %eax
	movl	%eax, (%esp)
	calll	_puts
	leal	"??_C@_0CB@HCIKIMNA@?$DN?$DN?$DN?5Start?5test?5load_twofiles?5?$DN?$DN?$DN@", %eax
	movl	%eax, (%esp)
	calll	_puts
	calll	_load_two_files
	leal	"??_C@_0CE@EKCKNGHC@?$DN?$DN?$DN?5Complete?5test?5load_twofiles?5@", %eax
	movl	%eax, (%esp)
	calll	_puts
	leal	"??_C@_0BJ@LHIPEHHI@?$DN?$DN?$DN?5Start?5test?5empty?5?$DN?$DN?$DN?$AA@", %eax
	movl	%eax, (%esp)
	calll	_puts
	calll	_test_empty_text
	leal	"??_C@_0BM@DJIDPCCI@?$DN?$DN?$DN?5Complete?5tset?5empty?5?$DN?$DN?$DN?$AA@", %eax
	movl	%eax, (%esp)
	calll	_puts
	leal	"??_C@_07PADMMEJD@No?5prob?$AA@", %eax
	movl	%eax, (%esp)
	calll	_puts
	xorl	%eax, %eax
	addl	$8, %esp
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
	.section	.rdata,"dr",discard,"??_C@_0BA@BNGFCPAB@doesntexist?4txt?$AA@"
	.globl	"??_C@_0BA@BNGFCPAB@doesntexist?4txt?$AA@" # @"??_C@_0BA@BNGFCPAB@doesntexist?4txt?$AA@"
"??_C@_0BA@BNGFCPAB@doesntexist?4txt?$AA@":
	.asciz	"doesntexist.txt"

	.section	.rdata,"dr",discard,"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@"
	.globl	"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@" # @"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@"
	.p2align	1
"??_C@_1O@FKDCPILF@?$AAm?$AAa?$AAi?$AAn?$AA?4?$AAc?$AA?$AA@":
	.short	109                             # 0x6d
	.short	97                              # 0x61
	.short	105                             # 0x69
	.short	110                             # 0x6e
	.short	46                              # 0x2e
	.short	99                              # 0x63
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1FE@IDMDOLEE@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAd?$AAo?$AAe?$AAs?$AAn?$AAt?$AAe?$AAx?$AAi?$AAs?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ@"
	.globl	"??_C@_1FE@IDMDOLEE@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAd?$AAo?$AAe?$AAs?$AAn?$AAt?$AAe?$AAx?$AAi?$AAs?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ@" # @"??_C@_1FE@IDMDOLEE@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAd?$AAo?$AAe?$AAs?$AAn?$AAt?$AAe?$AAx?$AAi?$AAs?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ@"
	.p2align	1
"??_C@_1FE@IDMDOLEE@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAd?$AAo?$AAe?$AAs?$AAn?$AAt?$AAe?$AAx?$AAi?$AAs?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ@":
	.short	108                             # 0x6c
	.short	111                             # 0x6f
	.short	97                              # 0x61
	.short	100                             # 0x64
	.short	95                              # 0x5f
	.short	100                             # 0x64
	.short	111                             # 0x6f
	.short	99                              # 0x63
	.short	117                             # 0x75
	.short	109                             # 0x6d
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	34                              # 0x22
	.short	100                             # 0x64
	.short	111                             # 0x6f
	.short	101                             # 0x65
	.short	115                             # 0x73
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	120                             # 0x78
	.short	105                             # 0x69
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	46                              # 0x2e
	.short	116                             # 0x74
	.short	120                             # 0x78
	.short	116                             # 0x74
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	70                              # 0x46
	.short	65                              # 0x41
	.short	76                              # 0x4c
	.short	83                              # 0x53
	.short	69                              # 0x45
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_09KMIIOAHK@input?4txt?$AA@"
	.globl	"??_C@_09KMIIOAHK@input?4txt?$AA@" # @"??_C@_09KMIIOAHK@input?4txt?$AA@"
"??_C@_09KMIIOAHK@input?4txt?$AA@":
	.asciz	"input.txt"

	.section	.rdata,"dr",discard,"??_C@_1EG@JGIIHEFO@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAi?$AAn?$AAp?$AAu?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@"
	.globl	"??_C@_1EG@JGIIHEFO@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAi?$AAn?$AAp?$AAu?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@" # @"??_C@_1EG@JGIIHEFO@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAi?$AAn?$AAp?$AAu?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@"
	.p2align	1
"??_C@_1EG@JGIIHEFO@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAi?$AAn?$AAp?$AAu?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@":
	.short	108                             # 0x6c
	.short	111                             # 0x6f
	.short	97                              # 0x61
	.short	100                             # 0x64
	.short	95                              # 0x5f
	.short	100                             # 0x64
	.short	111                             # 0x6f
	.short	99                              # 0x63
	.short	117                             # 0x75
	.short	109                             # 0x6d
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	34                              # 0x22
	.short	105                             # 0x69
	.short	110                             # 0x6e
	.short	112                             # 0x70
	.short	117                             # 0x75
	.short	116                             # 0x74
	.short	46                              # 0x2e
	.short	116                             # 0x74
	.short	120                             # 0x78
	.short	116                             # 0x74
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	84                              # 0x54
	.short	82                              # 0x52
	.short	85                              # 0x55
	.short	69                              # 0x45
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_0BL@DIOHGBMP@Total?5paragraph?5count?3?5?$CFd?6?$AA@"
	.globl	"??_C@_0BL@DIOHGBMP@Total?5paragraph?5count?3?5?$CFd?6?$AA@" # @"??_C@_0BL@DIOHGBMP@Total?5paragraph?5count?3?5?$CFd?6?$AA@"
"??_C@_0BL@DIOHGBMP@Total?5paragraph?5count?3?5?$CFd?6?$AA@":
	.asciz	"Total paragraph count: %d\n"

	.section	.rdata,"dr",discard,"??_C@_0BK@JMPBPNHE@Total?5sentence?5count?3?5?$CFd?6?$AA@"
	.globl	"??_C@_0BK@JMPBPNHE@Total?5sentence?5count?3?5?$CFd?6?$AA@" # @"??_C@_0BK@JMPBPNHE@Total?5sentence?5count?3?5?$CFd?6?$AA@"
"??_C@_0BK@JMPBPNHE@Total?5sentence?5count?3?5?$CFd?6?$AA@":
	.asciz	"Total sentence count: %d\n"

	.section	.rdata,"dr",discard,"??_C@_0BG@IOCEBLKL@Total?5word?5count?3?5?$CFd?6?$AA@"
	.globl	"??_C@_0BG@IOCEBLKL@Total?5word?5count?3?5?$CFd?6?$AA@" # @"??_C@_0BG@IOCEBLKL@Total?5word?5count?3?5?$CFd?6?$AA@"
"??_C@_0BG@IOCEBLKL@Total?5word?5count?3?5?$CFd?6?$AA@":
	.asciz	"Total word count: %d\n"

	.section	.rdata,"dr",discard,"??_C@_1DM@NBPLFIED@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA5?$AA8?$AAU?$AA?$AA@"
	.globl	"??_C@_1DM@NBPLFIED@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA5?$AA8?$AAU?$AA?$AA@" # @"??_C@_1DM@NBPLFIED@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA5?$AA8?$AAU?$AA?$AA@"
	.p2align	1
"??_C@_1DM@NBPLFIED@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA5?$AA8?$AAU?$AA?$AA@":
	.short	103                             # 0x67
	.short	101                             # 0x65
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	116                             # 0x74
	.short	111                             # 0x6f
	.short	116                             # 0x74
	.short	97                              # 0x61
	.short	108                             # 0x6c
	.short	95                              # 0x5f
	.short	119                             # 0x77
	.short	111                             # 0x6f
	.short	114                             # 0x72
	.short	100                             # 0x64
	.short	95                              # 0x5f
	.short	99                              # 0x63
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	53                              # 0x35
	.short	56                              # 0x38
	.short	85                              # 0x55
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1EC@HHPABBPH@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA9?$AAU@"
	.globl	"??_C@_1EC@HHPABBPH@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA9?$AAU@" # @"??_C@_1EC@HHPABBPH@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA9?$AAU@"
	.p2align	1
"??_C@_1EC@HHPABBPH@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA9?$AAU@":
	.short	103                             # 0x67
	.short	101                             # 0x65
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	116                             # 0x74
	.short	111                             # 0x6f
	.short	116                             # 0x74
	.short	97                              # 0x61
	.short	108                             # 0x6c
	.short	95                              # 0x5f
	.short	115                             # 0x73
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	99                              # 0x63
	.short	101                             # 0x65
	.short	95                              # 0x5f
	.short	99                              # 0x63
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	57                              # 0x39
	.short	85                              # 0x55
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1EE@MANNLMAC@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA3@"
	.globl	"??_C@_1EE@MANNLMAC@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA3@" # @"??_C@_1EE@MANNLMAC@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA3@"
	.p2align	1
"??_C@_1EE@MANNLMAC@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA3@":
	.short	103                             # 0x67
	.short	101                             # 0x65
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	116                             # 0x74
	.short	111                             # 0x6f
	.short	116                             # 0x74
	.short	97                              # 0x61
	.short	108                             # 0x6c
	.short	95                              # 0x5f
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	95                              # 0x5f
	.short	99                              # 0x63
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	51                              # 0x33
	.short	85                              # 0x55
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1EC@EMKCCMMP@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA3?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL@"
	.globl	"??_C@_1EC@EMKCCMMP@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA3?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL@" # @"??_C@_1EC@EMKCCMMP@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA3?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL@"
	.p2align	1
"??_C@_1EC@EMKCCMMP@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA3?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL@":
	.short	103                             # 0x67
	.short	101                             # 0x65
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	95                              # 0x5f
	.short	111                             # 0x6f
	.short	114                             # 0x72
	.short	95                              # 0x5f
	.short	110                             # 0x6e
	.short	117                             # 0x75
	.short	108                             # 0x6c
	.short	108                             # 0x6c
	.short	40                              # 0x28
	.short	51                              # 0x33
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	78                              # 0x4e
	.short	85                              # 0x55
	.short	76                              # 0x4c
	.short	76                              # 0x4c
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1CE@HHPBDCJC@?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?5?$AA?$CB?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL?$AA?$AA@"
	.globl	"??_C@_1CE@HHPBDCJC@?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?5?$AA?$CB?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL?$AA?$AA@" # @"??_C@_1CE@HHPBDCJC@?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?5?$AA?$CB?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL?$AA?$AA@"
	.p2align	1
"??_C@_1CE@HHPBDCJC@?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?5?$AA?$CB?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL?$AA?$AA@":
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	32                              # 0x20
	.short	33                              # 0x21
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	78                              # 0x4e
	.short	85                              # 0x55
	.short	76                              # 0x4c
	.short	76                              # 0x4c
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1FE@CAOCIGMP@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa@"
	.globl	"??_C@_1FE@CAOCIGMP@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa@" # @"??_C@_1FE@CAOCIGMP@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa@"
	.p2align	1
"??_C@_1FE@CAOCIGMP@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa@":
	.short	103                             # 0x67
	.short	101                             # 0x65
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	95                              # 0x5f
	.short	119                             # 0x77
	.short	111                             # 0x6f
	.short	114                             # 0x72
	.short	100                             # 0x64
	.short	95                              # 0x5f
	.short	99                              # 0x63
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	49                              # 0x31
	.short	52                              # 0x34
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1FK@DJMKABAC@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AAp?$AAa?$AAr@"
	.globl	"??_C@_1FK@DJMKABAC@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AAp?$AAa?$AAr@" # @"??_C@_1FK@DJMKABAC@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AAp?$AAa?$AAr@"
	.p2align	1
"??_C@_1FK@DJMKABAC@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AAp?$AAa?$AAr@":
	.short	103                             # 0x67
	.short	101                             # 0x65
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	95                              # 0x5f
	.short	115                             # 0x73
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	99                              # 0x63
	.short	101                             # 0x65
	.short	95                              # 0x5f
	.short	99                              # 0x63
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	50                              # 0x32
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_04EJMIGEJP@This?$AA@"
	.globl	"??_C@_04EJMIGEJP@This?$AA@"    # @"??_C@_04EJMIGEJP@This?$AA@"
"??_C@_04EJMIGEJP@This?$AA@":
	.asciz	"This"

	.section	.rdata,"dr",discard,"??_C@_1EO@JMIGAJED@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAT?$AAh?$AAi?$AAs?$AA?$CC@"
	.globl	"??_C@_1EO@JMIGAJED@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAT?$AAh?$AAi?$AAs?$AA?$CC@" # @"??_C@_1EO@JMIGAJED@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAT?$AAh?$AAi?$AAs?$AA?$CC@"
	.p2align	1
"??_C@_1EO@JMIGAJED@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAT?$AAh?$AAi?$AAs?$AA?$CC@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	93                              # 0x5d
	.short	91                              # 0x5b
	.short	106                             # 0x6a
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	84                              # 0x54
	.short	104                             # 0x68
	.short	105                             # 0x69
	.short	115                             # 0x73
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_02EDKKPMHH@is?$AA@"
	.globl	"??_C@_02EDKKPMHH@is?$AA@"      # @"??_C@_02EDKKPMHH@is?$AA@"
"??_C@_02EDKKPMHH@is?$AA@":
	.asciz	"is"

	.section	.rdata,"dr",discard,"??_C@_1EK@JJIEMBLA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAi?$AAs?$AA?$CC?$AA?$CJ?$AA?5@"
	.globl	"??_C@_1EK@JJIEMBLA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAi?$AAs?$AA?$CC?$AA?$CJ?$AA?5@" # @"??_C@_1EK@JJIEMBLA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAi?$AAs?$AA?$CC?$AA?$CJ?$AA?5@"
	.p2align	1
"??_C@_1EK@JJIEMBLA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAi?$AAs?$AA?$CC?$AA?$CJ?$AA?5@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	93                              # 0x5d
	.short	91                              # 0x5b
	.short	106                             # 0x6a
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	105                             # 0x69
	.short	115                             # 0x73
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_03GEKIBCFC@the?$AA@"
	.globl	"??_C@_03GEKIBCFC@the?$AA@"     # @"??_C@_03GEKIBCFC@the?$AA@"
"??_C@_03GEKIBCFC@the?$AA@":
	.asciz	"the"

	.section	.rdata,"dr",discard,"??_C@_1EM@KIPFPCON@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAt?$AAh?$AAe?$AA?$CC?$AA?$CJ@"
	.globl	"??_C@_1EM@KIPFPCON@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAt?$AAh?$AAe?$AA?$CC?$AA?$CJ@" # @"??_C@_1EM@KIPFPCON@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAt?$AAh?$AAe?$AA?$CC?$AA?$CJ@"
	.p2align	1
"??_C@_1EM@KIPFPCON@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAt?$AAh?$AAe?$AA?$CC?$AA?$CJ@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	93                              # 0x5d
	.short	91                              # 0x5b
	.short	106                             # 0x6a
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	116                             # 0x74
	.short	104                             # 0x68
	.short	101                             # 0x65
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_06BJCFNGJP@second?$AA@"
	.globl	"??_C@_06BJCFNGJP@second?$AA@"  # @"??_C@_06BJCFNGJP@second?$AA@"
"??_C@_06BJCFNGJP@second?$AA@":
	.asciz	"second"

	.section	.rdata,"dr",discard,"??_C@_1FC@IEBGNEGG@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAs?$AAe?$AAc?$AAo?$AAn@"
	.globl	"??_C@_1FC@IEBGNEGG@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAs?$AAe?$AAc?$AAo?$AAn@" # @"??_C@_1FC@IEBGNEGG@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAs?$AAe?$AAc?$AAo?$AAn@"
	.p2align	1
"??_C@_1FC@IEBGNEGG@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAs?$AAe?$AAc?$AAo?$AAn@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	93                              # 0x5d
	.short	91                              # 0x5b
	.short	106                             # 0x6a
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	115                             # 0x73
	.short	101                             # 0x65
	.short	99                              # 0x63
	.short	111                             # 0x6f
	.short	110                             # 0x6e
	.short	100                             # 0x64
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_09IODMMDJO@paragraph?$AA@"
	.globl	"??_C@_09IODMMDJO@paragraph?$AA@" # @"??_C@_09IODMMDJO@paragraph?$AA@"
"??_C@_09IODMMDJO@paragraph?$AA@":
	.asciz	"paragraph"

	.section	.rdata,"dr",discard,"??_C@_1FM@IJEGKMHA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAp?$AAa?$AAr@"
	.globl	"??_C@_1FM@IJEGKMHA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAp?$AAa?$AAr@" # @"??_C@_1FM@IJEGKMHA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAp?$AAa?$AAr@"
	.p2align	1
"??_C@_1FM@IJEGKMHA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAp?$AAa?$AAr@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	91                              # 0x5b
	.short	106                             # 0x6a
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_01JPJNBJEM@I?$AA@"
	.globl	"??_C@_01JPJNBJEM@I?$AA@"       # @"??_C@_01JPJNBJEM@I?$AA@"
"??_C@_01JPJNBJEM@I?$AA@":
	.asciz	"I"

	.section	.rdata,"dr",discard,"??_C@_1EI@JDKGGMNH@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAI?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN@"
	.globl	"??_C@_1EI@JDKGGMNH@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAI?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN@" # @"??_C@_1EI@JDKGGMNH@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAI?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN@"
	.p2align	1
"??_C@_1EI@JDKGGMNH@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAI?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	93                              # 0x5d
	.short	91                              # 0x5b
	.short	106                             # 0x6a
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	73                              # 0x49
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_06HDKNMIGM@wonder?$AA@"
	.globl	"??_C@_06HDKNMIGM@wonder?$AA@"  # @"??_C@_06HDKNMIGM@wonder?$AA@"
"??_C@_06HDKNMIGM@wonder?$AA@":
	.asciz	"wonder"

	.section	.rdata,"dr",discard,"??_C@_1FC@GKBKHBKC@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAw?$AAo?$AAn?$AAd?$AAe@"
	.globl	"??_C@_1FC@GKBKHBKC@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAw?$AAo?$AAn?$AAd?$AAe@" # @"??_C@_1FC@GKBKHBKC@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAw?$AAo?$AAn?$AAd?$AAe@"
	.p2align	1
"??_C@_1FC@GKBKHBKC@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAw?$AAo?$AAn?$AAd?$AAe@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	93                              # 0x5d
	.short	91                              # 0x5b
	.short	106                             # 0x6a
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	119                             # 0x77
	.short	111                             # 0x6f
	.short	110                             # 0x6e
	.short	100                             # 0x64
	.short	101                             # 0x65
	.short	114                             # 0x72
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_03DNMJMCD@how?$AA@"
	.globl	"??_C@_03DNMJMCD@how?$AA@"      # @"??_C@_03DNMJMCD@how?$AA@"
"??_C@_03DNMJMCD@how?$AA@":
	.asciz	"how"

	.section	.rdata,"dr",discard,"??_C@_1EM@CONDJMKE@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAh?$AAo?$AAw?$AA?$CC?$AA?$CJ@"
	.globl	"??_C@_1EM@CONDJMKE@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAh?$AAo?$AAw?$AA?$CC?$AA?$CJ@" # @"??_C@_1EM@CONDJMKE@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAh?$AAo?$AAw?$AA?$CC?$AA?$CJ@"
	.p2align	1
"??_C@_1EM@CONDJMKE@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAh?$AAo?$AAw?$AA?$CC?$AA?$CJ@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	93                              # 0x5d
	.short	91                              # 0x5b
	.short	106                             # 0x6a
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	104                             # 0x68
	.short	111                             # 0x6f
	.short	119                             # 0x77
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_04GHFBAPON@many?$AA@"
	.globl	"??_C@_04GHFBAPON@many?$AA@"    # @"??_C@_04GHFBAPON@many?$AA@"
"??_C@_04GHFBAPON@many?$AA@":
	.asciz	"many"

	.section	.rdata,"dr",discard,"??_C@_1EO@BDLJPAEB@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAm?$AAa?$AAn?$AAy?$AA?$CC@"
	.globl	"??_C@_1EO@BDLJPAEB@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAm?$AAa?$AAn?$AAy?$AA?$CC@" # @"??_C@_1EO@BDLJPAEB@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAm?$AAa?$AAn?$AAy?$AA?$CC@"
	.p2align	1
"??_C@_1EO@BDLJPAEB@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAm?$AAa?$AAn?$AAy?$AA?$CC@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	93                              # 0x5d
	.short	91                              # 0x5b
	.short	106                             # 0x6a
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	109                             # 0x6d
	.short	97                              # 0x61
	.short	110                             # 0x6e
	.short	121                             # 0x79
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_09NHBPAHJO@sentences?$AA@"
	.globl	"??_C@_09NHBPAHJO@sentences?$AA@" # @"??_C@_09NHBPAHJO@sentences?$AA@"
"??_C@_09NHBPAHJO@sentences?$AA@":
	.asciz	"sentences"

	.section	.rdata,"dr",discard,"??_C@_1FI@DCAHAALK@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAs?$AAe?$AAn?$AAt?$AAe@"
	.globl	"??_C@_1FI@DCAHAALK@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAs?$AAe?$AAn?$AAt?$AAe@" # @"??_C@_1FI@DCAHAALK@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAs?$AAe?$AAn?$AAt?$AAe@"
	.p2align	1
"??_C@_1FI@DCAHAALK@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAs?$AAe?$AAn?$AAt?$AAe@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	93                              # 0x5d
	.short	91                              # 0x5b
	.short	106                             # 0x6a
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	115                             # 0x73
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	99                              # 0x63
	.short	101                             # 0x65
	.short	115                             # 0x73
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_03NJEPMOFL@you?$AA@"
	.globl	"??_C@_03NJEPMOFL@you?$AA@"     # @"??_C@_03NJEPMOFL@you?$AA@"
"??_C@_03NJEPMOFL@you?$AA@":
	.asciz	"you"

	.section	.rdata,"dr",discard,"??_C@_1EM@JFNINJKG@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAy?$AAo?$AAu?$AA?$CC?$AA?$CJ@"
	.globl	"??_C@_1EM@JFNINJKG@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAy?$AAo?$AAu?$AA?$CC?$AA?$CJ@" # @"??_C@_1EM@JFNINJKG@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAy?$AAo?$AAu?$AA?$CC?$AA?$CJ@"
	.p2align	1
"??_C@_1EM@JFNINJKG@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAy?$AAo?$AAu?$AA?$CC?$AA?$CJ@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	93                              # 0x5d
	.short	91                              # 0x5b
	.short	106                             # 0x6a
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	121                             # 0x79
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_04LMIEJKFL@will?$AA@"
	.globl	"??_C@_04LMIEJKFL@will?$AA@"    # @"??_C@_04LMIEJKFL@will?$AA@"
"??_C@_04LMIEJKFL@will?$AA@":
	.asciz	"will"

	.section	.rdata,"dr",discard,"??_C@_1EO@NODABCLO@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAw?$AAi?$AAl?$AAl?$AA?$CC@"
	.globl	"??_C@_1EO@NODABCLO@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAw?$AAi?$AAl?$AAl?$AA?$CC@" # @"??_C@_1EO@NODABCLO@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAw?$AAi?$AAl?$AAl?$AA?$CC@"
	.p2align	1
"??_C@_1EO@NODABCLO@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAw?$AAi?$AAl?$AAl?$AA?$CC@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	93                              # 0x5d
	.short	91                              # 0x5b
	.short	106                             # 0x6a
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	119                             # 0x77
	.short	105                             # 0x69
	.short	108                             # 0x6c
	.short	108                             # 0x6c
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_03PBKHLJLI@see?$AA@"
	.globl	"??_C@_03PBKHLJLI@see?$AA@"     # @"??_C@_03PBKHLJLI@see?$AA@"
"??_C@_03PBKHLJLI@see?$AA@":
	.asciz	"see"

	.section	.rdata,"dr",discard,"??_C@_1EM@HLHNMKAA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAs?$AAe?$AAe?$AA?$CC?$AA?$CJ@"
	.globl	"??_C@_1EM@HLHNMKAA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAs?$AAe?$AAe?$AA?$CC?$AA?$CJ@" # @"??_C@_1EM@HLHNMKAA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAs?$AAe?$AAe?$AA?$CC?$AA?$CJ@"
	.p2align	1
"??_C@_1EM@HLHNMKAA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAs?$AAe?$AAe?$AA?$CC?$AA?$CJ@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	93                              # 0x5d
	.short	91                              # 0x5b
	.short	106                             # 0x6a
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	115                             # 0x73
	.short	101                             # 0x65
	.short	101                             # 0x65
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_04NDJIBAID@here?$AA@"
	.globl	"??_C@_04NDJIBAID@here?$AA@"    # @"??_C@_04NDJIBAID@here?$AA@"
"??_C@_04NDJIBAID@here?$AA@":
	.asciz	"here"

	.section	.rdata,"dr",discard,"??_C@_1EO@KGJBCLOF@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAh?$AAe?$AAr?$AAe?$AA?$CC@"
	.globl	"??_C@_1EO@KGJBCLOF@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAh?$AAe?$AAr?$AAe?$AA?$CC@" # @"??_C@_1EO@KGJBCLOF@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAh?$AAe?$AAr?$AAe?$AA?$CC@"
	.p2align	1
"??_C@_1EO@KGJBCLOF@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA?$FL?$AAi?$AA?$FN?$AA?$FL?$AAj?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAh?$AAe?$AAr?$AAe?$AA?$CC@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	93                              # 0x5d
	.short	91                              # 0x5b
	.short	106                             # 0x6a
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	104                             # 0x68
	.short	101                             # 0x65
	.short	114                             # 0x72
	.short	101                             # 0x65
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1EI@HGNBKHDJ@?$AAg?$AAe?$AAt?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA0?$AA?0?$AA?5?$AA1?$AA0?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN@"
	.globl	"??_C@_1EI@HGNBKHDJ@?$AAg?$AAe?$AAt?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA0?$AA?0?$AA?5?$AA1?$AA0?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN@" # @"??_C@_1EI@HGNBKHDJ@?$AAg?$AAe?$AAt?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA0?$AA?0?$AA?5?$AA1?$AA0?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN@"
	.p2align	1
"??_C@_1EI@HGNBKHDJ@?$AAg?$AAe?$AAt?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA0?$AA?0?$AA?5?$AA1?$AA0?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN@":
	.short	103                             # 0x67
	.short	101                             # 0x65
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	115                             # 0x73
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	99                              # 0x63
	.short	101                             # 0x65
	.short	95                              # 0x5f
	.short	111                             # 0x6f
	.short	114                             # 0x72
	.short	95                              # 0x5f
	.short	110                             # 0x6e
	.short	117                             # 0x75
	.short	108                             # 0x6c
	.short	108                             # 0x6c
	.short	40                              # 0x28
	.short	48                              # 0x30
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	49                              # 0x31
	.short	48                              # 0x30
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	78                              # 0x4e
	.short	85                              # 0x55
	.short	76                              # 0x4c
	.short	76                              # 0x4c
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1CC@HNJCKFHM@?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?5?$AA?$CB?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL?$AA?$AA@"
	.globl	"??_C@_1CC@HNJCKFHM@?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?5?$AA?$CB?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL?$AA?$AA@" # @"??_C@_1CC@HNJCKFHM@?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?5?$AA?$CB?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL?$AA?$AA@"
	.p2align	1
"??_C@_1CC@HNJCKFHM@?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?5?$AA?$CB?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL?$AA?$AA@":
	.short	115                             # 0x73
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	99                              # 0x63
	.short	101                             # 0x65
	.short	32                              # 0x20
	.short	33                              # 0x21
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	78                              # 0x4e
	.short	85                              # 0x55
	.short	76                              # 0x4c
	.short	76                              # 0x4c
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1EO@JBIICAIA@?$AAg?$AAe?$AAt?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe@"
	.globl	"??_C@_1EO@JBIICAIA@?$AAg?$AAe?$AAt?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe@" # @"??_C@_1EO@JBIICAIA@?$AAg?$AAe?$AAt?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe@"
	.p2align	1
"??_C@_1EO@JBIICAIA@?$AAg?$AAe?$AAt?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe@":
	.short	103                             # 0x67
	.short	101                             # 0x65
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	115                             # 0x73
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	99                              # 0x63
	.short	101                             # 0x65
	.short	95                              # 0x5f
	.short	119                             # 0x77
	.short	111                             # 0x6f
	.short	114                             # 0x72
	.short	100                             # 0x64
	.short	95                              # 0x5f
	.short	99                              # 0x63
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	115                             # 0x73
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	99                              # 0x63
	.short	101                             # 0x65
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	52                              # 0x34
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_02HLOHLKJH@Is?$AA@"
	.globl	"??_C@_02HLOHLKJH@Is?$AA@"      # @"??_C@_02HLOHLKJH@Is?$AA@"
"??_C@_02HLOHLKJH@Is?$AA@":
	.asciz	"Is"

	.section	.rdata,"dr",discard,"??_C@_1EC@KOJLEMDL@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAI?$AAs?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0@"
	.globl	"??_C@_1EC@KOJLEMDL@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAI?$AAs?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0@" # @"??_C@_1EC@KOJLEMDL@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAI?$AAs?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0@"
	.p2align	1
"??_C@_1EC@KOJLEMDL@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAI?$AAs?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	115                             # 0x73
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	99                              # 0x63
	.short	101                             # 0x65
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	73                              # 0x49
	.short	115                             # 0x73
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_04IIAJELJL@this?$AA@"
	.globl	"??_C@_04IIAJELJL@this?$AA@"    # @"??_C@_04IIAJELJL@this?$AA@"
"??_C@_04IIAJELJL@this?$AA@":
	.asciz	"this"

	.section	.rdata,"dr",discard,"??_C@_1EG@DKNEBLDL@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAt?$AAh?$AAi?$AAs?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@"
	.globl	"??_C@_1EG@DKNEBLDL@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAt?$AAh?$AAi?$AAs?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@" # @"??_C@_1EG@DKNEBLDL@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAt?$AAh?$AAi?$AAs?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@"
	.p2align	1
"??_C@_1EG@DKNEBLDL@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAt?$AAh?$AAi?$AAs?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	115                             # 0x73
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	99                              # 0x63
	.short	101                             # 0x65
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	116                             # 0x74
	.short	104                             # 0x68
	.short	105                             # 0x69
	.short	115                             # 0x73
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_03JLAIOMFN@too?$AA@"
	.globl	"??_C@_03JLAIOMFN@too?$AA@"     # @"??_C@_03JLAIOMFN@too?$AA@"
"??_C@_03JLAIOMFN@too?$AA@":
	.asciz	"too"

	.section	.rdata,"dr",discard,"??_C@_1EE@JINFIKDA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAt?$AAo?$AAo?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5@"
	.globl	"??_C@_1EE@JINFIKDA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAt?$AAo?$AAo?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5@" # @"??_C@_1EE@JINFIKDA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAt?$AAo?$AAo?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5@"
	.p2align	1
"??_C@_1EE@JINFIKDA@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAt?$AAo?$AAo?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	115                             # 0x73
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	99                              # 0x63
	.short	101                             # 0x65
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	116                             # 0x74
	.short	111                             # 0x6f
	.short	111                             # 0x6f
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_04EDNPHEAP@easy?$AA@"
	.globl	"??_C@_04EDNPHEAP@easy?$AA@"    # @"??_C@_04EDNPHEAP@easy?$AA@"
"??_C@_04EDNPHEAP@easy?$AA@":
	.asciz	"easy"

	.section	.rdata,"dr",discard,"??_C@_1EG@MPKHINHF@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAe?$AAa?$AAs?$AAy?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@"
	.globl	"??_C@_1EG@MPKHINHF@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAe?$AAa?$AAs?$AAy?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@" # @"??_C@_1EG@MPKHINHF@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAe?$AAa?$AAs?$AAy?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@"
	.p2align	1
"??_C@_1EG@MPKHINHF@?$AAs?$AAt?$AAr?$AAc?$AAm?$AAp?$AA?$CI?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA?$FL?$AAi?$AA?$CL?$AA?$CL?$AA?$FN?$AA?0?$AA?5?$AA?$CC?$AAe?$AAa?$AAs?$AAy?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	99                              # 0x63
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	40                              # 0x28
	.short	115                             # 0x73
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	99                              # 0x63
	.short	101                             # 0x65
	.short	91                              # 0x5b
	.short	105                             # 0x69
	.short	43                              # 0x2b
	.short	43                              # 0x2b
	.short	93                              # 0x5d
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	34                              # 0x22
	.short	101                             # 0x65
	.short	97                              # 0x61
	.short	115                             # 0x73
	.short	121                             # 0x79
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_0L@ODNFPCJH@output?4txt?$AA@"
	.globl	"??_C@_0L@ODNFPCJH@output?4txt?$AA@" # @"??_C@_0L@ODNFPCJH@output?4txt?$AA@"
"??_C@_0L@ODNFPCJH@output?4txt?$AA@":
	.asciz	"output.txt"

	.section	.rdata,"dr",discard,"??_C@_1EI@PGKPKIB@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AAp?$AAu?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT@"
	.globl	"??_C@_1EI@PGKPKIB@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AAp?$AAu?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT@" # @"??_C@_1EI@PGKPKIB@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AAp?$AAu?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT@"
	.p2align	1
"??_C@_1EI@PGKPKIB@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AAp?$AAu?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT@":
	.short	112                             # 0x70
	.short	114                             # 0x72
	.short	105                             # 0x69
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	97                              # 0x61
	.short	115                             # 0x73
	.short	95                              # 0x5f
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	101                             # 0x65
	.short	101                             # 0x65
	.short	40                              # 0x28
	.short	34                              # 0x22
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	116                             # 0x74
	.short	112                             # 0x70
	.short	117                             # 0x75
	.short	116                             # 0x74
	.short	46                              # 0x2e
	.short	116                             # 0x74
	.short	120                             # 0x78
	.short	116                             # 0x74
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	84                              # 0x54
	.short	82                              # 0x52
	.short	85                              # 0x55
	.short	69                              # 0x45
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_09JFNACEFL@empty?4txt?$AA@"
	.globl	"??_C@_09JFNACEFL@empty?4txt?$AA@" # @"??_C@_09JFNACEFL@empty?4txt?$AA@"
"??_C@_09JFNACEFL@empty?4txt?$AA@":
	.asciz	"empty.txt"

	.section	.rdata,"dr",discard,"??_C@_1EG@DGFEMMPL@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAe?$AAm?$AAp?$AAt?$AAy?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@"
	.globl	"??_C@_1EG@DGFEMMPL@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAe?$AAm?$AAp?$AAt?$AAy?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@" # @"??_C@_1EG@DGFEMMPL@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAe?$AAm?$AAp?$AAt?$AAy?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@"
	.p2align	1
"??_C@_1EG@DGFEMMPL@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAe?$AAm?$AAp?$AAt?$AAy?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@":
	.short	108                             # 0x6c
	.short	111                             # 0x6f
	.short	97                              # 0x61
	.short	100                             # 0x64
	.short	95                              # 0x5f
	.short	100                             # 0x64
	.short	111                             # 0x6f
	.short	99                              # 0x63
	.short	117                             # 0x75
	.short	109                             # 0x6d
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	34                              # 0x22
	.short	101                             # 0x65
	.short	109                             # 0x6d
	.short	112                             # 0x70
	.short	116                             # 0x74
	.short	121                             # 0x79
	.short	46                              # 0x2e
	.short	116                             # 0x74
	.short	120                             # 0x78
	.short	116                             # 0x74
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	84                              # 0x54
	.short	82                              # 0x52
	.short	85                              # 0x55
	.short	69                              # 0x45
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_09HBFMBKLI@hello?4txt?$AA@"
	.globl	"??_C@_09HBFMBKLI@hello?4txt?$AA@" # @"??_C@_09HBFMBKLI@hello?4txt?$AA@"
"??_C@_09HBFMBKLI@hello?4txt?$AA@":
	.asciz	"hello.txt"

	.section	.rdata,"dr",discard,"??_C@_1EI@FOAMFKLA@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAh?$AAe?$AAl?$AAl?$AAo?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAF?$AAA@"
	.globl	"??_C@_1EI@FOAMFKLA@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAh?$AAe?$AAl?$AAl?$AAo?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAF?$AAA@" # @"??_C@_1EI@FOAMFKLA@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAh?$AAe?$AAl?$AAl?$AAo?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAF?$AAA@"
	.p2align	1
"??_C@_1EI@FOAMFKLA@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAh?$AAe?$AAl?$AAl?$AAo?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAF?$AAA@":
	.short	108                             # 0x6c
	.short	111                             # 0x6f
	.short	97                              # 0x61
	.short	100                             # 0x64
	.short	95                              # 0x5f
	.short	100                             # 0x64
	.short	111                             # 0x6f
	.short	99                              # 0x63
	.short	117                             # 0x75
	.short	109                             # 0x6d
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	34                              # 0x22
	.short	104                             # 0x68
	.short	101                             # 0x65
	.short	108                             # 0x6c
	.short	108                             # 0x6c
	.short	111                             # 0x6f
	.short	46                              # 0x2e
	.short	116                             # 0x74
	.short	120                             # 0x78
	.short	116                             # 0x74
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	70                              # 0x46
	.short	65                              # 0x41
	.short	76                              # 0x4c
	.short	83                              # 0x53
	.short	69                              # 0x45
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1DK@LOPENFJG@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AAU?$AA?$AA@"
	.globl	"??_C@_1DK@LOPENFJG@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AAU?$AA?$AA@" # @"??_C@_1DK@LOPENFJG@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AAU?$AA?$AA@"
	.p2align	1
"??_C@_1DK@LOPENFJG@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AAU?$AA?$AA@":
	.short	103                             # 0x67
	.short	101                             # 0x65
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	116                             # 0x74
	.short	111                             # 0x6f
	.short	116                             # 0x74
	.short	97                              # 0x61
	.short	108                             # 0x6c
	.short	95                              # 0x5f
	.short	119                             # 0x77
	.short	111                             # 0x6f
	.short	114                             # 0x72
	.short	100                             # 0x64
	.short	95                              # 0x5f
	.short	99                              # 0x63
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	85                              # 0x55
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1EC@FAPPEADP@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AAU@"
	.globl	"??_C@_1EC@FAPPEADP@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AAU@" # @"??_C@_1EC@FAPPEADP@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AAU@"
	.p2align	1
"??_C@_1EC@FAPPEADP@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AAU@":
	.short	103                             # 0x67
	.short	101                             # 0x65
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	116                             # 0x74
	.short	111                             # 0x6f
	.short	116                             # 0x74
	.short	97                              # 0x61
	.short	108                             # 0x6c
	.short	95                              # 0x5f
	.short	115                             # 0x73
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	99                              # 0x63
	.short	101                             # 0x65
	.short	95                              # 0x5f
	.short	99                              # 0x63
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	85                              # 0x55
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1EE@EGEJMOKM@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0@"
	.globl	"??_C@_1EE@EGEJMOKM@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0@" # @"??_C@_1EE@EGEJMOKM@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0@"
	.p2align	1
"??_C@_1EE@EGEJMOKM@?$AAg?$AAe?$AAt?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?$CI?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0@":
	.short	103                             # 0x67
	.short	101                             # 0x65
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	116                             # 0x74
	.short	111                             # 0x6f
	.short	116                             # 0x74
	.short	97                              # 0x61
	.short	108                             # 0x6c
	.short	95                              # 0x5f
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	95                              # 0x5f
	.short	99                              # 0x63
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	85                              # 0x55
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1EC@HFNKIBIP@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA0?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL@"
	.globl	"??_C@_1EC@HFNKIBIP@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA0?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL@" # @"??_C@_1EC@HFNKIBIP@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA0?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL@"
	.p2align	1
"??_C@_1EC@HFNKIBIP@?$AAg?$AAe?$AAt?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA0?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN?$AAU?$AAL?$AAL@":
	.short	103                             # 0x67
	.short	101                             # 0x65
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	95                              # 0x5f
	.short	111                             # 0x6f
	.short	114                             # 0x72
	.short	95                              # 0x5f
	.short	110                             # 0x6e
	.short	117                             # 0x75
	.short	108                             # 0x6c
	.short	108                             # 0x6c
	.short	40                              # 0x28
	.short	48                              # 0x30
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	78                              # 0x4e
	.short	85                              # 0x55
	.short	76                              # 0x4c
	.short	76                              # 0x4c
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1EG@JHKCJOEH@?$AAg?$AAe?$AAt?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA0?$AA?0?$AA?5?$AA0?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN?$AAU@"
	.globl	"??_C@_1EG@JHKCJOEH@?$AAg?$AAe?$AAt?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA0?$AA?0?$AA?5?$AA0?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN?$AAU@" # @"??_C@_1EG@JHKCJOEH@?$AAg?$AAe?$AAt?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA0?$AA?0?$AA?5?$AA0?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN?$AAU@"
	.p2align	1
"??_C@_1EG@JHKCJOEH@?$AAg?$AAe?$AAt?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAo?$AAr?$AA_?$AAn?$AAu?$AAl?$AAl?$AA?$CI?$AA0?$AA?0?$AA?5?$AA0?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAN?$AAU@":
	.short	103                             # 0x67
	.short	101                             # 0x65
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	115                             # 0x73
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	99                              # 0x63
	.short	101                             # 0x65
	.short	95                              # 0x5f
	.short	111                             # 0x6f
	.short	114                             # 0x72
	.short	95                              # 0x5f
	.short	110                             # 0x6e
	.short	117                             # 0x75
	.short	108                             # 0x6c
	.short	108                             # 0x6c
	.short	40                              # 0x28
	.short	48                              # 0x30
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	78                              # 0x4e
	.short	85                              # 0x55
	.short	76                              # 0x4c
	.short	76                              # 0x4c
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1EK@EJPLJHGD@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AAp?$AAu?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAF@"
	.globl	"??_C@_1EK@EJPLJHGD@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AAp?$AAu?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAF@" # @"??_C@_1EK@EJPLJHGD@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AAp?$AAu?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAF@"
	.p2align	1
"??_C@_1EK@EJPLJHGD@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AAp?$AAu?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAF@":
	.short	112                             # 0x70
	.short	114                             # 0x72
	.short	105                             # 0x69
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	97                              # 0x61
	.short	115                             # 0x73
	.short	95                              # 0x5f
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	101                             # 0x65
	.short	101                             # 0x65
	.short	40                              # 0x28
	.short	34                              # 0x22
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	116                             # 0x74
	.short	112                             # 0x70
	.short	117                             # 0x75
	.short	116                             # 0x74
	.short	46                              # 0x2e
	.short	116                             # 0x74
	.short	120                             # 0x78
	.short	116                             # 0x74
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	70                              # 0x46
	.short	65                              # 0x41
	.short	76                              # 0x4c
	.short	83                              # 0x53
	.short	69                              # 0x45
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_0BE@KDNLIFPH@output_document?4txt?$AA@"
	.globl	"??_C@_0BE@KDNLIFPH@output_document?4txt?$AA@" # @"??_C@_0BE@KDNLIFPH@output_document?4txt?$AA@"
"??_C@_0BE@KDNLIFPH@output_document?4txt?$AA@":
	.asciz	"output_document.txt"

	.section	.rdata,"dr",discard,"??_C@_1FM@INNFDMPN@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AAp?$AAu?$AAt?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?4?$AAt@"
	.globl	"??_C@_1FM@INNFDMPN@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AAp?$AAu?$AAt?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?4?$AAt@" # @"??_C@_1FM@INNFDMPN@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AAp?$AAu?$AAt?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?4?$AAt@"
	.p2align	1
"??_C@_1FM@INNFDMPN@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AAp?$AAu?$AAt?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?4?$AAt@":
	.short	112                             # 0x70
	.short	114                             # 0x72
	.short	105                             # 0x69
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	97                              # 0x61
	.short	115                             # 0x73
	.short	95                              # 0x5f
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	101                             # 0x65
	.short	101                             # 0x65
	.short	40                              # 0x28
	.short	34                              # 0x22
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	116                             # 0x74
	.short	112                             # 0x70
	.short	117                             # 0x75
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	100                             # 0x64
	.short	111                             # 0x6f
	.short	99                              # 0x63
	.short	117                             # 0x75
	.short	109                             # 0x6d
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	46                              # 0x2e
	.short	116                             # 0x74
	.short	120                             # 0x78
	.short	116                             # 0x74
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	70                              # 0x46
	.short	65                              # 0x41
	.short	76                              # 0x4c
	.short	83                              # 0x53
	.short	69                              # 0x45
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_0N@EIFBNHNO@document?4txt?$AA@"
	.globl	"??_C@_0N@EIFBNHNO@document?4txt?$AA@" # @"??_C@_0N@EIFBNHNO@document?4txt?$AA@"
"??_C@_0N@EIFBNHNO@document?4txt?$AA@":
	.asciz	"document.txt"

	.section	.rdata,"dr",discard,"??_C@_1EM@MEBLFFDI@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@"
	.globl	"??_C@_1EM@MEBLFFDI@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@" # @"??_C@_1EM@MEBLFFDI@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@"
	.p2align	1
"??_C@_1EM@MEBLFFDI@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@":
	.short	108                             # 0x6c
	.short	111                             # 0x6f
	.short	97                              # 0x61
	.short	100                             # 0x64
	.short	95                              # 0x5f
	.short	100                             # 0x64
	.short	111                             # 0x6f
	.short	99                              # 0x63
	.short	117                             # 0x75
	.short	109                             # 0x6d
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	34                              # 0x22
	.short	100                             # 0x64
	.short	111                             # 0x6f
	.short	99                              # 0x63
	.short	117                             # 0x75
	.short	109                             # 0x6d
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	46                              # 0x2e
	.short	116                             # 0x74
	.short	120                             # 0x78
	.short	116                             # 0x74
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	84                              # 0x54
	.short	82                              # 0x52
	.short	85                              # 0x55
	.short	69                              # 0x45
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_0BB@GDCNKKJB@out_document?4txt?$AA@"
	.globl	"??_C@_0BB@GDCNKKJB@out_document?4txt?$AA@" # @"??_C@_0BB@GDCNKKJB@out_document?4txt?$AA@"
"??_C@_0BB@GDCNKKJB@out_document?4txt?$AA@":
	.asciz	"out_document.txt"

	.section	.rdata,"dr",discard,"??_C@_1FE@BLMMGPPB@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC@"
	.globl	"??_C@_1FE@BLMMGPPB@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC@" # @"??_C@_1FE@BLMMGPPB@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC@"
	.p2align	1
"??_C@_1FE@BLMMGPPB@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?4?$AAt?$AAx?$AAt?$AA?$CC@":
	.short	112                             # 0x70
	.short	114                             # 0x72
	.short	105                             # 0x69
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	97                              # 0x61
	.short	115                             # 0x73
	.short	95                              # 0x5f
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	101                             # 0x65
	.short	101                             # 0x65
	.short	40                              # 0x28
	.short	34                              # 0x22
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	100                             # 0x64
	.short	111                             # 0x6f
	.short	99                              # 0x63
	.short	117                             # 0x75
	.short	109                             # 0x6d
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	46                              # 0x2e
	.short	116                             # 0x74
	.short	120                             # 0x78
	.short	116                             # 0x74
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	84                              # 0x54
	.short	82                              # 0x52
	.short	85                              # 0x55
	.short	69                              # 0x45
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_09NPOAIFAP@santa?4txt?$AA@"
	.globl	"??_C@_09NPOAIFAP@santa?4txt?$AA@" # @"??_C@_09NPOAIFAP@santa?4txt?$AA@"
"??_C@_09NPOAIFAP@santa?4txt?$AA@":
	.asciz	"santa.txt"

	.section	.rdata,"dr",discard,"??_C@_1EG@NNHHNHPL@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAs?$AAa?$AAn?$AAt?$AAa?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@"
	.globl	"??_C@_1EG@NNHHNHPL@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAs?$AAa?$AAn?$AAt?$AAa?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@" # @"??_C@_1EG@NNHHNHPL@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAs?$AAa?$AAn?$AAt?$AAa?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@"
	.p2align	1
"??_C@_1EG@NNHHNHPL@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAs?$AAa?$AAn?$AAt?$AAa?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR@":
	.short	108                             # 0x6c
	.short	111                             # 0x6f
	.short	97                              # 0x61
	.short	100                             # 0x64
	.short	95                              # 0x5f
	.short	100                             # 0x64
	.short	111                             # 0x6f
	.short	99                              # 0x63
	.short	117                             # 0x75
	.short	109                             # 0x6d
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	34                              # 0x22
	.short	115                             # 0x73
	.short	97                              # 0x61
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	97                              # 0x61
	.short	46                              # 0x2e
	.short	116                             # 0x74
	.short	120                             # 0x78
	.short	116                             # 0x74
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	84                              # 0x54
	.short	82                              # 0x52
	.short	85                              # 0x55
	.short	69                              # 0x45
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1DA@MLICEFBF@?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA4?$AA5?$AAU?$AA?$AA@"
	.globl	"??_C@_1DA@MLICEFBF@?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA4?$AA5?$AAU?$AA?$AA@" # @"??_C@_1DA@MLICEFBF@?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA4?$AA5?$AAU?$AA?$AA@"
	.p2align	1
"??_C@_1DA@MLICEFBF@?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA4?$AA5?$AAU?$AA?$AA@":
	.short	116                             # 0x74
	.short	111                             # 0x6f
	.short	116                             # 0x74
	.short	97                              # 0x61
	.short	108                             # 0x6c
	.short	95                              # 0x5f
	.short	119                             # 0x77
	.short	111                             # 0x6f
	.short	114                             # 0x72
	.short	100                             # 0x64
	.short	95                              # 0x5f
	.short	99                              # 0x63
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	52                              # 0x34
	.short	53                              # 0x35
	.short	85                              # 0x55
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1DI@DCMAOPMC@?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA1?$AA0?$AAU?$AA?$AA@"
	.globl	"??_C@_1DI@DCMAOPMC@?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA1?$AA0?$AAU?$AA?$AA@" # @"??_C@_1DI@DCMAOPMC@?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA1?$AA0?$AAU?$AA?$AA@"
	.p2align	1
"??_C@_1DI@DCMAOPMC@?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA1?$AA0?$AAU?$AA?$AA@":
	.short	116                             # 0x74
	.short	111                             # 0x6f
	.short	116                             # 0x74
	.short	97                              # 0x61
	.short	108                             # 0x6c
	.short	95                              # 0x5f
	.short	115                             # 0x73
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	99                              # 0x63
	.short	101                             # 0x65
	.short	95                              # 0x5f
	.short	99                              # 0x63
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	49                              # 0x31
	.short	48                              # 0x30
	.short	85                              # 0x55
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1DI@JFIPFBCO@?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA3?$AAU?$AA?$AA@"
	.globl	"??_C@_1DI@JFIPFBCO@?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA3?$AAU?$AA?$AA@" # @"??_C@_1DI@JFIPFBCO@?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA3?$AAU?$AA?$AA@"
	.p2align	1
"??_C@_1DI@JFIPFBCO@?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA3?$AAU?$AA?$AA@":
	.short	116                             # 0x74
	.short	111                             # 0x6f
	.short	116                             # 0x74
	.short	97                              # 0x61
	.short	108                             # 0x6c
	.short	95                              # 0x5f
	.short	112                             # 0x70
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	114                             # 0x72
	.short	97                              # 0x61
	.short	112                             # 0x70
	.short	104                             # 0x68
	.short	95                              # 0x5f
	.short	99                              # 0x63
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	51                              # 0x33
	.short	85                              # 0x55
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_0O@FMEJPDJP@out_santa?4txt?$AA@"
	.globl	"??_C@_0O@FMEJPDJP@out_santa?4txt?$AA@" # @"??_C@_0O@FMEJPDJP@out_santa?4txt?$AA@"
"??_C@_0O@FMEJPDJP@out_santa?4txt?$AA@":
	.asciz	"out_santa.txt"

	.section	.rdata,"dr",discard,"??_C@_1EO@OIINJLCP@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAs?$AAa?$AAn?$AAt?$AAa?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN@"
	.globl	"??_C@_1EO@OIINJLCP@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAs?$AAa?$AAn?$AAt?$AAa?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN@" # @"??_C@_1EO@OIINJLCP@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAs?$AAa?$AAn?$AAt?$AAa?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN@"
	.p2align	1
"??_C@_1EO@OIINJLCP@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAs?$AAa?$AAn?$AAt?$AAa?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN@":
	.short	112                             # 0x70
	.short	114                             # 0x72
	.short	105                             # 0x69
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	97                              # 0x61
	.short	115                             # 0x73
	.short	95                              # 0x5f
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	101                             # 0x65
	.short	101                             # 0x65
	.short	40                              # 0x28
	.short	34                              # 0x22
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	115                             # 0x73
	.short	97                              # 0x61
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	97                              # 0x61
	.short	46                              # 0x2e
	.short	116                             # 0x74
	.short	120                             # 0x78
	.short	116                             # 0x74
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	84                              # 0x54
	.short	82                              # 0x52
	.short	85                              # 0x55
	.short	69                              # 0x45
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_08HGNDLAEC@nerd?4txt?$AA@"
	.globl	"??_C@_08HGNDLAEC@nerd?4txt?$AA@" # @"??_C@_08HGNDLAEC@nerd?4txt?$AA@"
"??_C@_08HGNDLAEC@nerd?4txt?$AA@":
	.asciz	"nerd.txt"

	.section	.rdata,"dr",discard,"??_C@_1EE@OKNCGNI@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAn?$AAe?$AAr?$AAd?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR?$AAU@"
	.globl	"??_C@_1EE@OKNCGNI@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAn?$AAe?$AAr?$AAd?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR?$AAU@" # @"??_C@_1EE@OKNCGNI@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAn?$AAe?$AAr?$AAd?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR?$AAU@"
	.p2align	1
"??_C@_1EE@OKNCGNI@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAn?$AAe?$AAr?$AAd?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAT?$AAR?$AAU@":
	.short	108                             # 0x6c
	.short	111                             # 0x6f
	.short	97                              # 0x61
	.short	100                             # 0x64
	.short	95                              # 0x5f
	.short	100                             # 0x64
	.short	111                             # 0x6f
	.short	99                              # 0x63
	.short	117                             # 0x75
	.short	109                             # 0x6d
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	34                              # 0x22
	.short	110                             # 0x6e
	.short	101                             # 0x65
	.short	114                             # 0x72
	.short	100                             # 0x64
	.short	46                              # 0x2e
	.short	116                             # 0x74
	.short	120                             # 0x78
	.short	116                             # 0x74
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	84                              # 0x54
	.short	82                              # 0x52
	.short	85                              # 0x55
	.short	69                              # 0x45
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_0N@MCAOHFF@out_nerd?4txt?$AA@"
	.globl	"??_C@_0N@MCAOHFF@out_nerd?4txt?$AA@" # @"??_C@_0N@MCAOHFF@out_nerd?4txt?$AA@"
"??_C@_0N@MCAOHFF@out_nerd?4txt?$AA@":
	.asciz	"out_nerd.txt"

	.section	.rdata,"dr",discard,"??_C@_1EM@DFHBFMHL@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAn?$AAe?$AAr?$AAd?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@"
	.globl	"??_C@_1EM@DFHBFMHL@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAn?$AAe?$AAr?$AAd?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@" # @"??_C@_1EM@DFHBFMHL@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAn?$AAe?$AAr?$AAd?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@"
	.p2align	1
"??_C@_1EM@DFHBFMHL@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAn?$AAe?$AAr?$AAd?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN@":
	.short	112                             # 0x70
	.short	114                             # 0x72
	.short	105                             # 0x69
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	97                              # 0x61
	.short	115                             # 0x73
	.short	95                              # 0x5f
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	101                             # 0x65
	.short	101                             # 0x65
	.short	40                              # 0x28
	.short	34                              # 0x22
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	110                             # 0x6e
	.short	101                             # 0x65
	.short	114                             # 0x72
	.short	100                             # 0x64
	.short	46                              # 0x2e
	.short	116                             # 0x74
	.short	120                             # 0x78
	.short	116                             # 0x74
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	84                              # 0x54
	.short	82                              # 0x52
	.short	85                              # 0x55
	.short	69                              # 0x45
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_0BA@BHMPDKIC@unorganized?4txt?$AA@"
	.globl	"??_C@_0BA@BHMPDKIC@unorganized?4txt?$AA@" # @"??_C@_0BA@BHMPDKIC@unorganized?4txt?$AA@"
"??_C@_0BA@BHMPDKIC@unorganized?4txt?$AA@":
	.asciz	"unorganized.txt"

	.section	.rdata,"dr",discard,"??_C@_1FC@LJDEGMFI@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAu?$AAn?$AAo?$AAr?$AAg?$AAa?$AAn?$AAi?$AAz?$AAe?$AAd?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ@"
	.globl	"??_C@_1FC@LJDEGMFI@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAu?$AAn?$AAo?$AAr?$AAg?$AAa?$AAn?$AAi?$AAz?$AAe?$AAd?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ@" # @"??_C@_1FC@LJDEGMFI@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAu?$AAn?$AAo?$AAr?$AAg?$AAa?$AAn?$AAi?$AAz?$AAe?$AAd?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ@"
	.p2align	1
"??_C@_1FC@LJDEGMFI@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAu?$AAn?$AAo?$AAr?$AAg?$AAa?$AAn?$AAi?$AAz?$AAe?$AAd?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ@":
	.short	108                             # 0x6c
	.short	111                             # 0x6f
	.short	97                              # 0x61
	.short	100                             # 0x64
	.short	95                              # 0x5f
	.short	100                             # 0x64
	.short	111                             # 0x6f
	.short	99                              # 0x63
	.short	117                             # 0x75
	.short	109                             # 0x6d
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	34                              # 0x22
	.short	117                             # 0x75
	.short	110                             # 0x6e
	.short	111                             # 0x6f
	.short	114                             # 0x72
	.short	103                             # 0x67
	.short	97                              # 0x61
	.short	110                             # 0x6e
	.short	105                             # 0x69
	.short	122                             # 0x7a
	.short	101                             # 0x65
	.short	100                             # 0x64
	.short	46                              # 0x2e
	.short	116                             # 0x74
	.short	120                             # 0x78
	.short	116                             # 0x74
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	84                              # 0x54
	.short	82                              # 0x52
	.short	85                              # 0x55
	.short	69                              # 0x45
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_0BE@KPCLMKPI@out_unorganized?4txt?$AA@"
	.globl	"??_C@_0BE@KPCLMKPI@out_unorganized?4txt?$AA@" # @"??_C@_0BE@KPCLMKPI@out_unorganized?4txt?$AA@"
"??_C@_0BE@KPCLMKPI@out_unorganized?4txt?$AA@":
	.asciz	"out_unorganized.txt"

	.section	.rdata,"dr",discard,"??_C@_1FK@FJBEHACO@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAu?$AAn?$AAo?$AAr?$AAg?$AAa?$AAn?$AAi?$AAz?$AAe?$AAd?$AA?4?$AAt@"
	.globl	"??_C@_1FK@FJBEHACO@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAu?$AAn?$AAo?$AAr?$AAg?$AAa?$AAn?$AAi?$AAz?$AAe?$AAd?$AA?4?$AAt@" # @"??_C@_1FK@FJBEHACO@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAu?$AAn?$AAo?$AAr?$AAg?$AAa?$AAn?$AAi?$AAz?$AAe?$AAd?$AA?4?$AAt@"
	.p2align	1
"??_C@_1FK@FJBEHACO@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAu?$AAn?$AAo?$AAr?$AAg?$AAa?$AAn?$AAi?$AAz?$AAe?$AAd?$AA?4?$AAt@":
	.short	112                             # 0x70
	.short	114                             # 0x72
	.short	105                             # 0x69
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	97                              # 0x61
	.short	115                             # 0x73
	.short	95                              # 0x5f
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	101                             # 0x65
	.short	101                             # 0x65
	.short	40                              # 0x28
	.short	34                              # 0x22
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	117                             # 0x75
	.short	110                             # 0x6e
	.short	111                             # 0x6f
	.short	114                             # 0x72
	.short	103                             # 0x67
	.short	97                              # 0x61
	.short	110                             # 0x6e
	.short	105                             # 0x69
	.short	122                             # 0x7a
	.short	101                             # 0x65
	.short	100                             # 0x64
	.short	46                              # 0x2e
	.short	116                             # 0x74
	.short	120                             # 0x78
	.short	116                             # 0x74
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	84                              # 0x54
	.short	82                              # 0x52
	.short	85                              # 0x55
	.short	69                              # 0x45
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_0P@HJFFOAA@not_normal?4txt?$AA@"
	.globl	"??_C@_0P@HJFFOAA@not_normal?4txt?$AA@" # @"??_C@_0P@HJFFOAA@not_normal?4txt?$AA@"
"??_C@_0P@HJFFOAA@not_normal?4txt?$AA@":
	.asciz	"not_normal.txt"

	.section	.rdata,"dr",discard,"??_C@_1FA@ICPNPMHD@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAn?$AAo?$AAt?$AA_?$AAn?$AAo?$AAr?$AAm?$AAa?$AAl?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5@"
	.globl	"??_C@_1FA@ICPNPMHD@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAn?$AAo?$AAt?$AA_?$AAn?$AAo?$AAr?$AAm?$AAa?$AAl?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5@" # @"??_C@_1FA@ICPNPMHD@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAn?$AAo?$AAt?$AA_?$AAn?$AAo?$AAr?$AAm?$AAa?$AAl?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5@"
	.p2align	1
"??_C@_1FA@ICPNPMHD@?$AAl?$AAo?$AAa?$AAd?$AA_?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA?$CI?$AA?$CC?$AAn?$AAo?$AAt?$AA_?$AAn?$AAo?$AAr?$AAm?$AAa?$AAl?$AA?4?$AAt?$AAx?$AAt?$AA?$CC?$AA?$CJ?$AA?5@":
	.short	108                             # 0x6c
	.short	111                             # 0x6f
	.short	97                              # 0x61
	.short	100                             # 0x64
	.short	95                              # 0x5f
	.short	100                             # 0x64
	.short	111                             # 0x6f
	.short	99                              # 0x63
	.short	117                             # 0x75
	.short	109                             # 0x6d
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	40                              # 0x28
	.short	34                              # 0x22
	.short	110                             # 0x6e
	.short	111                             # 0x6f
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	110                             # 0x6e
	.short	111                             # 0x6f
	.short	114                             # 0x72
	.short	109                             # 0x6d
	.short	97                              # 0x61
	.short	108                             # 0x6c
	.short	46                              # 0x2e
	.short	116                             # 0x74
	.short	120                             # 0x78
	.short	116                             # 0x74
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	84                              # 0x54
	.short	82                              # 0x52
	.short	85                              # 0x55
	.short	69                              # 0x45
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_0BD@FOMACLDH@out_not_normal?4txt?$AA@"
	.globl	"??_C@_0BD@FOMACLDH@out_not_normal?4txt?$AA@" # @"??_C@_0BD@FOMACLDH@out_not_normal?4txt?$AA@"
"??_C@_0BD@FOMACLDH@out_not_normal?4txt?$AA@":
	.asciz	"out_not_normal.txt"

	.section	.rdata,"dr",discard,"??_C@_1FI@HIFBKBCE@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAn?$AAo?$AAt?$AA_?$AAn?$AAo?$AAr?$AAm?$AAa?$AAl?$AA?4?$AAt?$AAx@"
	.globl	"??_C@_1FI@HIFBKBCE@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAn?$AAo?$AAt?$AA_?$AAn?$AAo?$AAr?$AAm?$AAa?$AAl?$AA?4?$AAt?$AAx@" # @"??_C@_1FI@HIFBKBCE@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAn?$AAo?$AAt?$AA_?$AAn?$AAo?$AAr?$AAm?$AAa?$AAl?$AA?4?$AAt?$AAx@"
	.p2align	1
"??_C@_1FI@HIFBKBCE@?$AAp?$AAr?$AAi?$AAn?$AAt?$AA_?$AAa?$AAs?$AA_?$AAt?$AAr?$AAe?$AAe?$AA?$CI?$AA?$CC?$AAo?$AAu?$AAt?$AA_?$AAn?$AAo?$AAt?$AA_?$AAn?$AAo?$AAr?$AAm?$AAa?$AAl?$AA?4?$AAt?$AAx@":
	.short	112                             # 0x70
	.short	114                             # 0x72
	.short	105                             # 0x69
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	97                              # 0x61
	.short	115                             # 0x73
	.short	95                              # 0x5f
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	101                             # 0x65
	.short	101                             # 0x65
	.short	40                              # 0x28
	.short	34                              # 0x22
	.short	111                             # 0x6f
	.short	117                             # 0x75
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	110                             # 0x6e
	.short	111                             # 0x6f
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	110                             # 0x6e
	.short	111                             # 0x6f
	.short	114                             # 0x72
	.short	109                             # 0x6d
	.short	97                              # 0x61
	.short	108                             # 0x6c
	.short	46                              # 0x2e
	.short	116                             # 0x74
	.short	120                             # 0x78
	.short	116                             # 0x74
	.short	34                              # 0x22
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	84                              # 0x54
	.short	82                              # 0x52
	.short	85                              # 0x55
	.short	69                              # 0x45
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_0BM@LHPCLMFO@?$DN?$DN?$DN?5Start?5test?5official?5?$DN?$DN?$DN?$AA@"
	.globl	"??_C@_0BM@LHPCLMFO@?$DN?$DN?$DN?5Start?5test?5official?5?$DN?$DN?$DN?$AA@" # @"??_C@_0BM@LHPCLMFO@?$DN?$DN?$DN?5Start?5test?5official?5?$DN?$DN?$DN?$AA@"
"??_C@_0BM@LHPCLMFO@?$DN?$DN?$DN?5Start?5test?5official?5?$DN?$DN?$DN?$AA@":
	.asciz	"=== Start test official ==="

	.section	.rdata,"dr",discard,"??_C@_0BP@EOJJPNLJ@?$DN?$DN?$DN?5Complete?5test?5official?5?$DN?$DN?$DN?$AA@"
	.globl	"??_C@_0BP@EOJJPNLJ@?$DN?$DN?$DN?5Complete?5test?5official?5?$DN?$DN?$DN?$AA@" # @"??_C@_0BP@EOJJPNLJ@?$DN?$DN?$DN?5Complete?5test?5official?5?$DN?$DN?$DN?$AA@"
"??_C@_0BP@EOJJPNLJ@?$DN?$DN?$DN?5Complete?5test?5official?5?$DN?$DN?$DN?$AA@":
	.asciz	"=== Complete test official ==="

	.section	.rdata,"dr",discard,"??_C@_0BO@CGEJHDEM@?$DN?$DN?$DN?5Start?5test?5not?5loaded?5?$DN?$DN?$DN?$AA@"
	.globl	"??_C@_0BO@CGEJHDEM@?$DN?$DN?$DN?5Start?5test?5not?5loaded?5?$DN?$DN?$DN?$AA@" # @"??_C@_0BO@CGEJHDEM@?$DN?$DN?$DN?5Start?5test?5not?5loaded?5?$DN?$DN?$DN?$AA@"
"??_C@_0BO@CGEJHDEM@?$DN?$DN?$DN?5Start?5test?5not?5loaded?5?$DN?$DN?$DN?$AA@":
	.asciz	"=== Start test not loaded ==="

	.section	.rdata,"dr",discard,"??_C@_0CB@DGKNJOAK@?$DN?$DN?$DN?5Complete?5test?5not?5loaded?5?$DN?$DN?$DN@"
	.globl	"??_C@_0CB@DGKNJOAK@?$DN?$DN?$DN?5Complete?5test?5not?5loaded?5?$DN?$DN?$DN@" # @"??_C@_0CB@DGKNJOAK@?$DN?$DN?$DN?5Complete?5test?5not?5loaded?5?$DN?$DN?$DN@"
"??_C@_0CB@DGKNJOAK@?$DN?$DN?$DN?5Complete?5test?5not?5loaded?5?$DN?$DN?$DN@":
	.asciz	"=== Complete test not loaded ==="

	.section	.rdata,"dr",discard,"??_C@_0BN@DAOCDGFC@?$DN?$DN?$DN?5Start?5test?5official2?5?$DN?$DN?$DN?$AA@"
	.globl	"??_C@_0BN@DAOCDGFC@?$DN?$DN?$DN?5Start?5test?5official2?5?$DN?$DN?$DN?$AA@" # @"??_C@_0BN@DAOCDGFC@?$DN?$DN?$DN?5Start?5test?5official2?5?$DN?$DN?$DN?$AA@"
"??_C@_0BN@DAOCDGFC@?$DN?$DN?$DN?5Start?5test?5official2?5?$DN?$DN?$DN?$AA@":
	.asciz	"=== Start test official2 ==="

	.section	.rdata,"dr",discard,"??_C@_0CA@OHFCKMI@?$DN?$DN?$DN?5Complete?5test?5official2?5?$DN?$DN?$DN?$AA@"
	.globl	"??_C@_0CA@OHFCKMI@?$DN?$DN?$DN?5Complete?5test?5official2?5?$DN?$DN?$DN?$AA@" # @"??_C@_0CA@OHFCKMI@?$DN?$DN?$DN?5Complete?5test?5official2?5?$DN?$DN?$DN?$AA@"
"??_C@_0CA@OHFCKMI@?$DN?$DN?$DN?5Complete?5test?5official2?5?$DN?$DN?$DN?$AA@":
	.asciz	"=== Complete test official2 ==="

	.section	.rdata,"dr",discard,"??_C@_0CB@HCIKIMNA@?$DN?$DN?$DN?5Start?5test?5load_twofiles?5?$DN?$DN?$DN@"
	.globl	"??_C@_0CB@HCIKIMNA@?$DN?$DN?$DN?5Start?5test?5load_twofiles?5?$DN?$DN?$DN@" # @"??_C@_0CB@HCIKIMNA@?$DN?$DN?$DN?5Start?5test?5load_twofiles?5?$DN?$DN?$DN@"
"??_C@_0CB@HCIKIMNA@?$DN?$DN?$DN?5Start?5test?5load_twofiles?5?$DN?$DN?$DN@":
	.asciz	"=== Start test load_twofiles ==="

	.section	.rdata,"dr",discard,"??_C@_0CE@EKCKNGHC@?$DN?$DN?$DN?5Complete?5test?5load_twofiles?5@"
	.globl	"??_C@_0CE@EKCKNGHC@?$DN?$DN?$DN?5Complete?5test?5load_twofiles?5@" # @"??_C@_0CE@EKCKNGHC@?$DN?$DN?$DN?5Complete?5test?5load_twofiles?5@"
"??_C@_0CE@EKCKNGHC@?$DN?$DN?$DN?5Complete?5test?5load_twofiles?5@":
	.asciz	"=== Complete test load_twofiles ==="

	.section	.rdata,"dr",discard,"??_C@_0BJ@LHIPEHHI@?$DN?$DN?$DN?5Start?5test?5empty?5?$DN?$DN?$DN?$AA@"
	.globl	"??_C@_0BJ@LHIPEHHI@?$DN?$DN?$DN?5Start?5test?5empty?5?$DN?$DN?$DN?$AA@" # @"??_C@_0BJ@LHIPEHHI@?$DN?$DN?$DN?5Start?5test?5empty?5?$DN?$DN?$DN?$AA@"
"??_C@_0BJ@LHIPEHHI@?$DN?$DN?$DN?5Start?5test?5empty?5?$DN?$DN?$DN?$AA@":
	.asciz	"=== Start test empty ==="

	.section	.rdata,"dr",discard,"??_C@_0BM@DJIDPCCI@?$DN?$DN?$DN?5Complete?5tset?5empty?5?$DN?$DN?$DN?$AA@"
	.globl	"??_C@_0BM@DJIDPCCI@?$DN?$DN?$DN?5Complete?5tset?5empty?5?$DN?$DN?$DN?$AA@" # @"??_C@_0BM@DJIDPCCI@?$DN?$DN?$DN?5Complete?5tset?5empty?5?$DN?$DN?$DN?$AA@"
"??_C@_0BM@DJIDPCCI@?$DN?$DN?$DN?5Complete?5tset?5empty?5?$DN?$DN?$DN?$AA@":
	.asciz	"=== Complete tset empty ==="

	.section	.rdata,"dr",discard,"??_C@_07PADMMEJD@No?5prob?$AA@"
	.globl	"??_C@_07PADMMEJD@No?5prob?$AA@" # @"??_C@_07PADMMEJD@No?5prob?$AA@"
"??_C@_07PADMMEJD@No?5prob?$AA@":
	.asciz	"No prob"

	.lcomm	___local_stdio_printf_options._OptionsStorage,8,8 # @__local_stdio_printf_options._OptionsStorage
	.addrsig
	.addrsig_sym _official_test
	.addrsig_sym _load_document
	.addrsig_sym __wassert
	.addrsig_sym _get_total_word_count
	.addrsig_sym _get_total_sentence_count
	.addrsig_sym _get_total_paragraph_count
	.addrsig_sym _printf
	.addrsig_sym _get_paragraph_or_null
	.addrsig_sym _get_paragraph_word_count
	.addrsig_sym _get_paragraph_sentence_count
	.addrsig_sym _strcmp
	.addrsig_sym _get_sentence_or_null
	.addrsig_sym _get_sentence_word_count
	.addrsig_sym _print_as_tree
	.addrsig_sym _dispose
	.addrsig_sym _test_empty_text
	.addrsig_sym _test_not_loaded
	.addrsig_sym _official_test2
	.addrsig_sym _load_two_files
	.addrsig_sym _puts
	.addrsig_sym __vfprintf_l
	.addrsig_sym ___acrt_iob_func
	.addrsig_sym ___stdio_common_vfprintf
	.addrsig_sym ___local_stdio_printf_options
	.addrsig_sym ___local_stdio_printf_options._OptionsStorage
