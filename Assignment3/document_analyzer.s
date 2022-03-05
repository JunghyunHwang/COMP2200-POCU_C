	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 1
	.file	"document_analyzer.c"
	.def	 _load_document;
	.scl	2;
	.type	32;
	.endef
	.globl	_load_document                  # -- Begin function load_document
	.p2align	4, 0x90
_load_document:                         # @load_document
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$4120, %eax                     # imm = 0x1018
	calll	__chkstk
	movl	8(%ebp), %eax
	movl	8(%ebp), %ecx
	leal	"??_C@_02JDPG@rb?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_fopen
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	LBB0_2
# %bb.1:
	leal	"??_C@_0BC@OALEICIK@Fail?5to?5file?5open?$AA@", %eax
	movl	%eax, (%esp)
	calll	_perror
	movl	$0, -4(%ebp)
	jmp	LBB0_12
LBB0_2:
	calll	_dispose
	movl	$0, -4108(%ebp)
LBB0_3:                                 # =>This Inner Loop Header: Depth=1
	movl	-8(%ebp), %eax
	leal	-4104(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	$4096, 4(%esp)                  # imm = 0x1000
	movl	%eax, 8(%esp)
	calll	_fgets
	cmpl	$0, %eax
	jne	LBB0_7
# %bb.4:
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	calll	_clearerr
	cmpl	$0, -4108(%ebp)
	jne	LBB0_6
# %bb.5:
	movl	$1, -4(%ebp)
	jmp	LBB0_12
LBB0_6:
	jmp	LBB0_11
LBB0_7:                                 #   in Loop: Header=BB0_3 Depth=1
	movsbl	-4104(%ebp), %eax
	cmpl	$13, %eax
	je	LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	movsbl	-4104(%ebp), %eax
	cmpl	$10, %eax
	jne	LBB0_10
LBB0_9:                                 #   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_3
LBB0_10:                                #   in Loop: Header=BB0_3 Depth=1
	leal	-4104(%ebp), %eax
	leal	"??_C@_0BA@PEKIPIDN@?6Paragraph?3?5?6?$CFs?$AA@", %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_printf
	movl	-4108(%ebp), %eax
	addl	$1, %eax
	shll	$2, %eax
	movl	_s_document, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_realloc
	movl	%eax, _s_document
	leal	-4104(%ebp), %eax
	movl	%eax, (%esp)
	calll	_tokenize_sentence
	movl	%eax, %edx
	movl	_s_document, %eax
	movl	-4108(%ebp), %ecx
	movl	%edx, (%eax,%ecx,4)
	movl	-4108(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -4108(%ebp)
	jmp	LBB0_3
LBB0_11:
	movl	-4108(%ebp), %eax
	addl	_s_total_paragraph_count, %eax
	movl	%eax, _s_total_paragraph_count
	movl	-4108(%ebp), %eax
	addl	$1, %eax
	shll	$2, %eax
	movl	_s_document, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_realloc
	movl	%eax, _s_document
	movl	_s_document, %eax
	movl	-4108(%ebp), %ecx
	movl	$0, (%eax,%ecx,4)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	calll	_fclose
	movl	$1, -4(%ebp)
LBB0_12:
	movl	-4(%ebp), %eax
	addl	$4120, %esp                     # imm = 0x1018
	popl	%ebp
	retl
                                        # -- End function
	.def	 _dispose;
	.scl	2;
	.type	32;
	.endef
	.globl	_dispose                        # -- Begin function dispose
	.p2align	4, 0x90
_dispose:                               # @dispose
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$48, %esp
	cmpl	$0, _s_document
	jne	LBB1_2
# %bb.1:
	jmp	LBB1_21
LBB1_2:
	leal	"??_C@_0CK@FMABGKJF@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Dispose?5memeory?5?$DN?$DN?$DN@", %eax
	movl	%eax, (%esp)
	calll	_puts
	movl	_s_total_paragraph_count, %eax
	movl	%eax, -4(%ebp)
	movl	$0, -16(%ebp)
LBB1_3:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_7 Depth 3
	movl	-16(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jae	LBB1_14
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	movl	_s_document, %eax
	movl	-16(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	calll	_get_paragraph_sentence_count
	movl	%eax, -8(%ebp)
	movl	$0, -20(%ebp)
LBB1_5:                                 #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_7 Depth 3
	movl	-20(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jae	LBB1_12
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=2
	movl	-28(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	calll	_get_sentence_word_count
	movl	%eax, -12(%ebp)
	movl	$0, -24(%ebp)
LBB1_7:                                 #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-24(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jae	LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=3
	movl	-32(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, (%esp)
	calll	_free
	movl	-32(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	$0, (%eax,%ecx,4)
	movl	_s_total_word_count, %eax
	addl	$-1, %eax
	movl	%eax, _s_total_word_count
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=3
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	LBB1_7
LBB1_10:                                #   in Loop: Header=BB1_5 Depth=2
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	calll	_free
	movl	$0, -32(%ebp)
	movl	_s_total_sentence_count, %eax
	addl	$-1, %eax
	movl	%eax, _s_total_sentence_count
# %bb.11:                               #   in Loop: Header=BB1_5 Depth=2
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	LBB1_5
LBB1_12:                                #   in Loop: Header=BB1_3 Depth=1
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	calll	_free
	movl	$0, -28(%ebp)
	movl	_s_total_paragraph_count, %eax
	addl	$-1, %eax
	movl	%eax, _s_total_paragraph_count
# %bb.13:                               #   in Loop: Header=BB1_3 Depth=1
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	LBB1_3
LBB1_14:
	movl	_s_document, %eax
	movl	%eax, (%esp)
	calll	_free
	movl	$0, _s_document
	movb	$1, %al
	cmpl	$0, _s_total_paragraph_count
	movb	%al, -33(%ebp)                  # 1-byte Spill
	je	LBB1_16
# %bb.15:
	leal	"??_C@_1DK@HOCMILGP@?$AAs?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@", %ecx
	leal	"??_C@_1CI@LDLPPCCE@?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA_?$AAa?$AAn?$AAa?$AAl?$AAy?$AAz?$AAe?$AAr?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$246, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -33(%ebp)                  # 1-byte Spill
LBB1_16:
	movb	-33(%ebp), %al                  # 1-byte Reload
	movb	$1, %al
	cmpl	$0, _s_total_sentence_count
	movb	%al, -34(%ebp)                  # 1-byte Spill
	je	LBB1_18
# %bb.17:
	leal	"??_C@_1DI@MFDFMNML@?$AAs?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@", %ecx
	leal	"??_C@_1CI@LDLPPCCE@?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA_?$AAa?$AAn?$AAa?$AAl?$AAy?$AAz?$AAe?$AAr?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$247, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -34(%ebp)                  # 1-byte Spill
LBB1_18:
	movb	-34(%ebp), %al                  # 1-byte Reload
	movb	$1, %al
	cmpl	$0, _s_total_word_count
	movb	%al, -35(%ebp)                  # 1-byte Spill
	je	LBB1_20
# %bb.19:
	leal	"??_C@_1DA@HPFEIOKM@?$AAs?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@", %ecx
	leal	"??_C@_1CI@LDLPPCCE@?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA_?$AAa?$AAn?$AAa?$AAl?$AAy?$AAz?$AAe?$AAr?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$248, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -35(%ebp)                  # 1-byte Spill
LBB1_20:
	movb	-35(%ebp), %al                  # 1-byte Reload
LBB1_21:
	addl	$48, %esp
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
	.def	 _tokenize_sentence;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_tokenize_sentence              # -- Begin function tokenize_sentence
	.p2align	4, 0x90
_tokenize_sentence:                     # @tokenize_sentence
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -4(%ebp)
LBB3_1:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-16(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$0, %eax
	je	LBB3_13
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	leal	"??_C@_03PPAHPOAF@?4?$CB?$DP?$AA@", %eax
	movl	%eax, -28(%ebp)
LBB3_3:                                 #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$0, %eax
	je	LBB3_10
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=2
	movl	-16(%ebp), %eax
	movsbl	(%eax), %eax
	movl	-28(%ebp), %ecx
	movsbl	(%ecx), %ecx
	cmpl	%ecx, %eax
	jne	LBB3_8
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	LBB3_11
LBB3_7:                                 #   in Loop: Header=BB3_1 Depth=1
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %ecx
	subl	%ecx, %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	calll	_malloc
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	calll	_memcpy
	movl	-8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movb	$0, (%eax,%ecx)
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	movl	-20(%ebp), %eax
	addl	$1, %eax
	shll	$2, %eax
	movl	-4(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_realloc
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	calll	_tokenize_word
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	%edx, (%eax,%ecx,4)
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -20(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	calll	_free
	movl	$0, -8(%ebp)
	jmp	LBB3_11
LBB3_8:                                 #   in Loop: Header=BB3_3 Depth=2
	jmp	LBB3_9
LBB3_9:                                 #   in Loop: Header=BB3_3 Depth=2
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -28(%ebp)
	jmp	LBB3_3
LBB3_10:                                #   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_11
LBB3_11:                                #   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_12
LBB3_12:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	LBB3_1
LBB3_13:
	movl	-20(%ebp), %eax
	addl	_s_total_sentence_count, %eax
	movl	%eax, _s_total_sentence_count
	movl	-20(%ebp), %eax
	addl	$1, %eax
	shll	$2, %eax
	movl	-4(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_realloc
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	$0, (%eax,%ecx,4)
	movl	-4(%ebp), %eax
	addl	$40, %esp
	popl	%ebp
	retl
                                        # -- End function
	.def	 _tokenize_word;
	.scl	2;
	.type	32;
	.endef
	.globl	_tokenize_word                  # -- Begin function tokenize_word
	.p2align	4, 0x90
_tokenize_word:                         # @tokenize_word
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$48, %esp
	movl	8(%ebp), %eax
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -4(%ebp)
LBB4_1:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
	movl	-12(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$0, %eax
	je	LBB4_13
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	leal	"??_C@_02BMCALKD@?5?0?$AA@", %eax
	movl	%eax, -28(%ebp)
LBB4_3:                                 #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	$0, %eax
	je	LBB4_10
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=2
	movl	-12(%ebp), %eax
	movsbl	(%eax), %eax
	movl	-28(%ebp), %ecx
	movsbl	(%ecx), %ecx
	cmpl	%ecx, %eax
	jne	LBB4_8
# %bb.5:                                #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%ebp), %eax
	movsbl	(%eax), %eax
	movl	-16(%ebp), %ecx
	movsbl	(%ecx), %ecx
	cmpl	%ecx, %eax
	jne	LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	LBB4_11
LBB4_7:                                 #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %ecx
	subl	%ecx, %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	calll	_malloc
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	calll	_memcpy
	movl	-8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movb	$0, (%eax,%ecx)
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	addl	$1, %eax
	shll	$2, %eax
	movl	-4(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_realloc
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	%edx, (%eax,%ecx,4)
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -8(%ebp)
	jmp	LBB4_11
LBB4_8:                                 #   in Loop: Header=BB4_3 Depth=2
	jmp	LBB4_9
LBB4_9:                                 #   in Loop: Header=BB4_3 Depth=2
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -28(%ebp)
	jmp	LBB4_3
LBB4_10:                                #   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_11
LBB4_11:                                #   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_12
LBB4_12:                                #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	LBB4_1
LBB4_13:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	LBB4_17
# %bb.14:
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %ecx
	subl	%ecx, %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	calll	_malloc
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	calll	_memcpy
	movl	-8(%ebp), %eax
	movl	-24(%ebp), %ecx
	movb	$0, (%eax,%ecx)
	movl	-8(%ebp), %ecx
	movl	%esp, %eax
	movl	%ecx, (%eax)
	calll	_strlen
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	-24(%ebp), %ecx
	movb	%al, -33(%ebp)                  # 1-byte Spill
	je	LBB4_16
# %bb.15:
	leal	"??_C@_1DI@GMFEIONI@?$AAs?$AAt?$AAr?$AAl?$AAe?$AAn?$AA?$CI?$AAw?$AAo?$AAr?$AAd?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAw?$AAo?$AAr?$AAd?$AA_?$AAl?$AAe?$AAn?$AAg?$AAt?$AAh?$AA?$AA@", %ecx
	leal	"??_C@_1CI@LDLPPCCE@?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA_?$AAa?$AAn?$AAa?$AAl?$AAy?$AAz?$AAe?$AAr?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$172, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -33(%ebp)                  # 1-byte Spill
LBB4_16:
	movb	-33(%ebp), %al                  # 1-byte Reload
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	addl	$1, %eax
	shll	$2, %eax
	movl	-4(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_realloc
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	%edx, (%eax,%ecx,4)
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -8(%ebp)
LBB4_17:
	movl	-12(%ebp), %ecx
	movb	$1, %al
	cmpl	-16(%ebp), %ecx
	movb	%al, -34(%ebp)                  # 1-byte Spill
	je	LBB4_19
# %bb.18:
	leal	"??_C@_1DE@JJOIONCL@?$AAp?$AA_?$AAc?$AAu?$AAr?$AAr?$AAe?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAp?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAs?$AAt?$AAa?$AAr?$AAt?$AA?$AA@", %ecx
	leal	"??_C@_1CI@LDLPPCCE@?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA_?$AAa?$AAn?$AAa?$AAl?$AAy?$AAz?$AAe?$AAr?$AA?4?$AAc?$AA?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$183, 8(%esp)
	calll	__wassert
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -34(%ebp)                  # 1-byte Spill
LBB4_19:
	movb	-34(%ebp), %al                  # 1-byte Reload
	movl	-20(%ebp), %eax
	addl	_s_total_word_count, %eax
	movl	%eax, _s_total_word_count
	leal	"??_C@_0CE@DFGPJHLK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Save?5Word?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@", %eax
	movl	%eax, (%esp)
	calll	_puts
	movl	$0, -32(%ebp)
LBB4_20:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jae	LBB4_23
# %bb.21:                               #   in Loop: Header=BB4_20 Depth=1
	movl	-4(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	leal	"??_C@_03OFAPEBGM@?$CFs?6?$AA@", %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_printf
# %bb.22:                               #   in Loop: Header=BB4_20 Depth=1
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	LBB4_20
LBB4_23:
	movl	-20(%ebp), %eax
	addl	$1, %eax
	shll	$2, %eax
	movl	-4(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_realloc
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	$0, (%eax,%ecx,4)
	movl	-4(%ebp), %eax
	addl	$48, %esp
	popl	%ebp
	retl
                                        # -- End function
	.def	 _get_paragraph_sentence_count;
	.scl	2;
	.type	32;
	.endef
	.globl	_get_paragraph_sentence_count   # -- Begin function get_paragraph_sentence_count
	.p2align	4, 0x90
_get_paragraph_sentence_count:          # @get_paragraph_sentence_count
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	$0, -8(%ebp)
	cmpl	$0, _s_total_paragraph_count
	jne	LBB5_2
# %bb.1:
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	LBB5_7
LBB5_2:
	jmp	LBB5_3
LBB5_3:                                 # =>This Inner Loop Header: Depth=1
	movl	8(%ebp), %eax
	cmpl	$0, (%eax)
	je	LBB5_6
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 8(%ebp)
	jmp	LBB5_3
LBB5_6:
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
LBB5_7:
	movl	-4(%ebp), %eax
	addl	$8, %esp
	popl	%ebp
	retl
                                        # -- End function
	.def	 _get_sentence_word_count;
	.scl	2;
	.type	32;
	.endef
	.globl	_get_sentence_word_count        # -- Begin function get_sentence_word_count
	.p2align	4, 0x90
_get_sentence_word_count:               # @get_sentence_word_count
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	$0, -8(%ebp)
	cmpl	$0, _s_total_paragraph_count
	jne	LBB6_2
# %bb.1:
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	LBB6_7
LBB6_2:
	jmp	LBB6_3
LBB6_3:                                 # =>This Inner Loop Header: Depth=1
	movl	8(%ebp), %eax
	cmpl	$0, (%eax)
	je	LBB6_6
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 8(%ebp)
	jmp	LBB6_3
LBB6_6:
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
LBB6_7:
	movl	-4(%ebp), %eax
	addl	$8, %esp
	popl	%ebp
	retl
                                        # -- End function
	.def	 _get_total_word_count;
	.scl	2;
	.type	32;
	.endef
	.globl	_get_total_word_count           # -- Begin function get_total_word_count
	.p2align	4, 0x90
_get_total_word_count:                  # @get_total_word_count
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	movl	_s_total_word_count, %eax
	popl	%ebp
	retl
                                        # -- End function
	.def	 _get_total_sentence_count;
	.scl	2;
	.type	32;
	.endef
	.globl	_get_total_sentence_count       # -- Begin function get_total_sentence_count
	.p2align	4, 0x90
_get_total_sentence_count:              # @get_total_sentence_count
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	movl	_s_total_sentence_count, %eax
	popl	%ebp
	retl
                                        # -- End function
	.def	 _get_total_paragraph_count;
	.scl	2;
	.type	32;
	.endef
	.globl	_get_total_paragraph_count      # -- Begin function get_total_paragraph_count
	.p2align	4, 0x90
_get_total_paragraph_count:             # @get_total_paragraph_count
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	movl	_s_total_paragraph_count, %eax
	popl	%ebp
	retl
                                        # -- End function
	.def	 _get_paragraph_or_null;
	.scl	2;
	.type	32;
	.endef
	.globl	_get_paragraph_or_null          # -- Begin function get_paragraph_or_null
	.p2align	4, 0x90
_get_paragraph_or_null:                 # @get_paragraph_or_null
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%eax
	movl	8(%ebp), %eax
	movl	8(%ebp), %eax
	cmpl	_s_total_paragraph_count, %eax
	jb	LBB10_2
# %bb.1:
	movl	$0, -4(%ebp)
	jmp	LBB10_3
LBB10_2:
	movl	_s_document, %eax
	movl	8(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -4(%ebp)
LBB10_3:
	movl	-4(%ebp), %eax
	addl	$4, %esp
	popl	%ebp
	retl
                                        # -- End function
	.def	 _get_paragraph_word_count;
	.scl	2;
	.type	32;
	.endef
	.globl	_get_paragraph_word_count       # -- Begin function get_paragraph_word_count
	.p2align	4, 0x90
_get_paragraph_word_count:              # @get_paragraph_word_count
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$0, -8(%ebp)
	cmpl	$0, _s_total_paragraph_count
	jne	LBB11_2
# %bb.1:
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	LBB11_11
LBB11_2:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	calll	_get_paragraph_sentence_count
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
LBB11_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jae	LBB11_10
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=1
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -20(%ebp)
LBB11_5:                                #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %eax
	cmpl	$0, (%eax)
	je	LBB11_8
# %bb.6:                                #   in Loop: Header=BB11_5 Depth=2
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
# %bb.7:                                #   in Loop: Header=BB11_5 Depth=2
	movl	-20(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -20(%ebp)
	jmp	LBB11_5
LBB11_8:                                #   in Loop: Header=BB11_3 Depth=1
	jmp	LBB11_9
LBB11_9:                                #   in Loop: Header=BB11_3 Depth=1
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	LBB11_3
LBB11_10:
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
LBB11_11:
	movl	-4(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	retl
                                        # -- End function
	.def	 _get_sentence_or_null;
	.scl	2;
	.type	32;
	.endef
	.globl	_get_sentence_or_null           # -- Begin function get_sentence_or_null
	.p2align	4, 0x90
_get_sentence_or_null:                  # @get_sentence_or_null
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$12, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %eax
	movl	_s_total_paragraph_count, %eax
	cmpl	8(%ebp), %eax
	ja	LBB12_2
# %bb.1:
	movl	$0, -4(%ebp)
	jmp	LBB12_5
LBB12_2:
	movl	_s_document, %eax
	movl	8(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, (%esp)
	calll	_get_paragraph_sentence_count
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	ja	LBB12_4
# %bb.3:
	movl	$0, -4(%ebp)
	jmp	LBB12_5
LBB12_4:
	movl	_s_document, %eax
	movl	8(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -4(%ebp)
LBB12_5:
	movl	-4(%ebp), %eax
	addl	$12, %esp
	popl	%ebp
	retl
                                        # -- End function
	.def	 _print_as_tree;
	.scl	2;
	.type	32;
	.endef
	.globl	_print_as_tree                  # -- Begin function print_as_tree
	.p2align	4, 0x90
_print_as_tree:                         # @print_as_tree
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	subl	$56, %esp
	movl	8(%ebp), %eax
	cmpl	$0, _s_document
	jne	LBB13_2
# %bb.1:
	movl	$0, -12(%ebp)
	jmp	LBB13_19
LBB13_2:
	movl	8(%ebp), %ecx
	leal	"??_C@_02GMLFBBN@wb?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_fopen
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	LBB13_4
# %bb.3:
	leal	"??_C@_0BC@OALEICIK@Fail?5to?5file?5open?$AA@", %eax
	movl	%eax, (%esp)
	calll	_perror
	movl	$0, -12(%ebp)
	jmp	LBB13_19
LBB13_4:
	movl	$0, -28(%ebp)
LBB13_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_9 Depth 2
                                        #       Child Loop BB13_11 Depth 3
	movl	-28(%ebp), %eax
	cmpl	_s_total_paragraph_count, %eax
	jae	LBB13_18
# %bb.6:                                #   in Loop: Header=BB13_5 Depth=1
	movl	_s_document, %eax
	movl	-28(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -28(%ebp)
	jbe	LBB13_8
# %bb.7:                                #   in Loop: Header=BB13_5 Depth=1
	movl	-16(%ebp), %ecx
	leal	"??_C@_02PHMGELLB@?6?6?$AA@", %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_fprintf
LBB13_8:                                #   in Loop: Header=BB13_5 Depth=1
	movl	-28(%ebp), %eax
	movl	-16(%ebp), %esi
	leal	"??_C@_06EOPKIEFI@?$CFs?5?$CFd?3?$AA@", %edx
	leal	"??_C@_09MBGBMAEO@Paragraph?$AA@", %ecx
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 12(%esp)
	calll	_fprintf
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	calll	_get_paragraph_sentence_count
	movl	%eax, -20(%ebp)
	movl	$0, -32(%ebp)
LBB13_9:                                #   Parent Loop BB13_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_11 Depth 3
	movl	-32(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jae	LBB13_16
# %bb.10:                               #   in Loop: Header=BB13_9 Depth=2
	movl	-40(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -44(%ebp)
	movl	-32(%ebp), %eax
	movl	-16(%ebp), %edi
	leal	"??_C@_0L@KCMIHNHH@?6?$CF4s?$CFs?5?$CFd?3?$AA@", %esi
	leal	"??_C@_00CNPNBAHC@?$AA@", %edx
	leal	"??_C@_08FJCINCME@Sentence?$AA@", %ecx
	movl	%edi, (%esp)
	movl	%esi, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 16(%esp)
	calll	_fprintf
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	calll	_get_sentence_word_count
	movl	%eax, -24(%ebp)
	movl	$0, -36(%ebp)
LBB13_11:                               #   Parent Loop BB13_5 Depth=1
                                        #     Parent Loop BB13_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-36(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jae	LBB13_14
# %bb.12:                               #   in Loop: Header=BB13_11 Depth=3
	movl	-44(%ebp), %eax
	movl	-36(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-16(%ebp), %esi
	leal	"??_C@_06EDMNLJEB@?6?$CF8s?$CFs?$AA@", %edx
	leal	"??_C@_00CNPNBAHC@?$AA@", %ecx
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 12(%esp)
	calll	_fprintf
# %bb.13:                               #   in Loop: Header=BB13_11 Depth=3
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -36(%ebp)
	jmp	LBB13_11
LBB13_14:                               #   in Loop: Header=BB13_9 Depth=2
	jmp	LBB13_15
LBB13_15:                               #   in Loop: Header=BB13_9 Depth=2
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	LBB13_9
LBB13_16:                               #   in Loop: Header=BB13_5 Depth=1
	jmp	LBB13_17
LBB13_17:                               #   in Loop: Header=BB13_5 Depth=1
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -28(%ebp)
	jmp	LBB13_5
LBB13_18:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	calll	_fclose
	movl	$1, -12(%ebp)
LBB13_19:
	movl	-12(%ebp), %eax
	addl	$56, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	retl
                                        # -- End function
	.def	 _fprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_fprintf
	.globl	_fprintf                        # -- Begin function fprintf
	.p2align	4, 0x90
_fprintf:                               # @fprintf
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %eax
	leal	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %esi
	movl	12(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%edx, 4(%eax)
	movl	%ecx, (%eax)
	movl	$0, 8(%eax)
	calll	__vfprintf_l
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	addl	$24, %esp
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
	.section	.rdata,"dr",discard,"??_C@_02JDPG@rb?$AA@"
	.globl	"??_C@_02JDPG@rb?$AA@"          # @"??_C@_02JDPG@rb?$AA@"
"??_C@_02JDPG@rb?$AA@":
	.asciz	"rb"

	.section	.rdata,"dr",discard,"??_C@_0BC@OALEICIK@Fail?5to?5file?5open?$AA@"
	.globl	"??_C@_0BC@OALEICIK@Fail?5to?5file?5open?$AA@" # @"??_C@_0BC@OALEICIK@Fail?5to?5file?5open?$AA@"
"??_C@_0BC@OALEICIK@Fail?5to?5file?5open?$AA@":
	.asciz	"Fail to file open"

	.section	.rdata,"dr",discard,"??_C@_0BA@PEKIPIDN@?6Paragraph?3?5?6?$CFs?$AA@"
	.globl	"??_C@_0BA@PEKIPIDN@?6Paragraph?3?5?6?$CFs?$AA@" # @"??_C@_0BA@PEKIPIDN@?6Paragraph?3?5?6?$CFs?$AA@"
"??_C@_0BA@PEKIPIDN@?6Paragraph?3?5?6?$CFs?$AA@":
	.asciz	"\nParagraph: \n%s"

	.lcomm	_s_document,4,4                 # @s_document
	.lcomm	_s_total_paragraph_count,4,4    # @s_total_paragraph_count
	.section	.rdata,"dr",discard,"??_C@_03PPAHPOAF@?4?$CB?$DP?$AA@"
	.globl	"??_C@_03PPAHPOAF@?4?$CB?$DP?$AA@" # @"??_C@_03PPAHPOAF@?4?$CB?$DP?$AA@"
"??_C@_03PPAHPOAF@?4?$CB?$DP?$AA@":
	.asciz	".!?"

	.lcomm	_s_total_sentence_count,4,4     # @s_total_sentence_count
	.section	.rdata,"dr",discard,"??_C@_02BMCALKD@?5?0?$AA@"
	.globl	"??_C@_02BMCALKD@?5?0?$AA@"     # @"??_C@_02BMCALKD@?5?0?$AA@"
"??_C@_02BMCALKD@?5?0?$AA@":
	.asciz	" ,"

	.section	.rdata,"dr",discard,"??_C@_1CI@LDLPPCCE@?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA_?$AAa?$AAn?$AAa?$AAl?$AAy?$AAz?$AAe?$AAr?$AA?4?$AAc?$AA?$AA@"
	.globl	"??_C@_1CI@LDLPPCCE@?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA_?$AAa?$AAn?$AAa?$AAl?$AAy?$AAz?$AAe?$AAr?$AA?4?$AAc?$AA?$AA@" # @"??_C@_1CI@LDLPPCCE@?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA_?$AAa?$AAn?$AAa?$AAl?$AAy?$AAz?$AAe?$AAr?$AA?4?$AAc?$AA?$AA@"
	.p2align	1
"??_C@_1CI@LDLPPCCE@?$AAd?$AAo?$AAc?$AAu?$AAm?$AAe?$AAn?$AAt?$AA_?$AAa?$AAn?$AAa?$AAl?$AAy?$AAz?$AAe?$AAr?$AA?4?$AAc?$AA?$AA@":
	.short	100                             # 0x64
	.short	111                             # 0x6f
	.short	99                              # 0x63
	.short	117                             # 0x75
	.short	109                             # 0x6d
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	95                              # 0x5f
	.short	97                              # 0x61
	.short	110                             # 0x6e
	.short	97                              # 0x61
	.short	108                             # 0x6c
	.short	121                             # 0x79
	.short	122                             # 0x7a
	.short	101                             # 0x65
	.short	114                             # 0x72
	.short	46                              # 0x2e
	.short	99                              # 0x63
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1DI@GMFEIONI@?$AAs?$AAt?$AAr?$AAl?$AAe?$AAn?$AA?$CI?$AAw?$AAo?$AAr?$AAd?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAw?$AAo?$AAr?$AAd?$AA_?$AAl?$AAe?$AAn?$AAg?$AAt?$AAh?$AA?$AA@"
	.globl	"??_C@_1DI@GMFEIONI@?$AAs?$AAt?$AAr?$AAl?$AAe?$AAn?$AA?$CI?$AAw?$AAo?$AAr?$AAd?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAw?$AAo?$AAr?$AAd?$AA_?$AAl?$AAe?$AAn?$AAg?$AAt?$AAh?$AA?$AA@" # @"??_C@_1DI@GMFEIONI@?$AAs?$AAt?$AAr?$AAl?$AAe?$AAn?$AA?$CI?$AAw?$AAo?$AAr?$AAd?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAw?$AAo?$AAr?$AAd?$AA_?$AAl?$AAe?$AAn?$AAg?$AAt?$AAh?$AA?$AA@"
	.p2align	1
"??_C@_1DI@GMFEIONI@?$AAs?$AAt?$AAr?$AAl?$AAe?$AAn?$AA?$CI?$AAw?$AAo?$AAr?$AAd?$AA?$CJ?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAw?$AAo?$AAr?$AAd?$AA_?$AAl?$AAe?$AAn?$AAg?$AAt?$AAh?$AA?$AA@":
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	114                             # 0x72
	.short	108                             # 0x6c
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	40                              # 0x28
	.short	119                             # 0x77
	.short	111                             # 0x6f
	.short	114                             # 0x72
	.short	100                             # 0x64
	.short	41                              # 0x29
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	119                             # 0x77
	.short	111                             # 0x6f
	.short	114                             # 0x72
	.short	100                             # 0x64
	.short	95                              # 0x5f
	.short	108                             # 0x6c
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	103                             # 0x67
	.short	116                             # 0x74
	.short	104                             # 0x68
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1DE@JJOIONCL@?$AAp?$AA_?$AAc?$AAu?$AAr?$AAr?$AAe?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAp?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAs?$AAt?$AAa?$AAr?$AAt?$AA?$AA@"
	.globl	"??_C@_1DE@JJOIONCL@?$AAp?$AA_?$AAc?$AAu?$AAr?$AAr?$AAe?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAp?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAs?$AAt?$AAa?$AAr?$AAt?$AA?$AA@" # @"??_C@_1DE@JJOIONCL@?$AAp?$AA_?$AAc?$AAu?$AAr?$AAr?$AAe?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAp?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAs?$AAt?$AAa?$AAr?$AAt?$AA?$AA@"
	.p2align	1
"??_C@_1DE@JJOIONCL@?$AAp?$AA_?$AAc?$AAu?$AAr?$AAr?$AAe?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AAp?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAs?$AAt?$AAa?$AAr?$AAt?$AA?$AA@":
	.short	112                             # 0x70
	.short	95                              # 0x5f
	.short	99                              # 0x63
	.short	117                             # 0x75
	.short	114                             # 0x72
	.short	114                             # 0x72
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	112                             # 0x70
	.short	95                              # 0x5f
	.short	119                             # 0x77
	.short	111                             # 0x6f
	.short	114                             # 0x72
	.short	100                             # 0x64
	.short	95                              # 0x5f
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	97                              # 0x61
	.short	114                             # 0x72
	.short	116                             # 0x74
	.short	0                               # 0x0

	.lcomm	_s_total_word_count,4,4         # @s_total_word_count
	.section	.rdata,"dr",discard,"??_C@_0CE@DFGPJHLK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Save?5Word?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@"
	.globl	"??_C@_0CE@DFGPJHLK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Save?5Word?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@" # @"??_C@_0CE@DFGPJHLK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Save?5Word?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@"
"??_C@_0CE@DFGPJHLK@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Save?5Word?5?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@":
	.asciz	"============ Save Word ============"

	.section	.rdata,"dr",discard,"??_C@_03OFAPEBGM@?$CFs?6?$AA@"
	.globl	"??_C@_03OFAPEBGM@?$CFs?6?$AA@" # @"??_C@_03OFAPEBGM@?$CFs?6?$AA@"
"??_C@_03OFAPEBGM@?$CFs?6?$AA@":
	.asciz	"%s\n"

	.section	.rdata,"dr",discard,"??_C@_0CK@FMABGKJF@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Dispose?5memeory?5?$DN?$DN?$DN@"
	.globl	"??_C@_0CK@FMABGKJF@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Dispose?5memeory?5?$DN?$DN?$DN@" # @"??_C@_0CK@FMABGKJF@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Dispose?5memeory?5?$DN?$DN?$DN@"
"??_C@_0CK@FMABGKJF@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?5Dispose?5memeory?5?$DN?$DN?$DN@":
	.asciz	"============ Dispose memeory ============"

	.section	.rdata,"dr",discard,"??_C@_1DK@HOCMILGP@?$AAs?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@"
	.globl	"??_C@_1DK@HOCMILGP@?$AAs?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@" # @"??_C@_1DK@HOCMILGP@?$AAs?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@"
	.p2align	1
"??_C@_1DK@HOCMILGP@?$AAs?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAp?$AAa?$AAr?$AAa?$AAg?$AAr?$AAa?$AAp?$AAh?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@":
	.short	115                             # 0x73
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
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1DI@MFDFMNML@?$AAs?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@"
	.globl	"??_C@_1DI@MFDFMNML@?$AAs?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@" # @"??_C@_1DI@MFDFMNML@?$AAs?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@"
	.p2align	1
"??_C@_1DI@MFDFMNML@?$AAs?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAs?$AAe?$AAn?$AAt?$AAe?$AAn?$AAc?$AAe?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@":
	.short	115                             # 0x73
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
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_1DA@HPFEIOKM@?$AAs?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@"
	.globl	"??_C@_1DA@HPFEIOKM@?$AAs?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@" # @"??_C@_1DA@HPFEIOKM@?$AAs?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@"
	.p2align	1
"??_C@_1DA@HPFEIOKM@?$AAs?$AA_?$AAt?$AAo?$AAt?$AAa?$AAl?$AA_?$AAw?$AAo?$AAr?$AAd?$AA_?$AAc?$AAo?$AAu?$AAn?$AAt?$AA?5?$AA?$DN?$AA?$DN?$AA?5?$AA0?$AA?$AA@":
	.short	115                             # 0x73
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
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_02GMLFBBN@wb?$AA@"
	.globl	"??_C@_02GMLFBBN@wb?$AA@"       # @"??_C@_02GMLFBBN@wb?$AA@"
"??_C@_02GMLFBBN@wb?$AA@":
	.asciz	"wb"

	.section	.rdata,"dr",discard,"??_C@_02PHMGELLB@?6?6?$AA@"
	.globl	"??_C@_02PHMGELLB@?6?6?$AA@"    # @"??_C@_02PHMGELLB@?6?6?$AA@"
"??_C@_02PHMGELLB@?6?6?$AA@":
	.asciz	"\n\n"

	.section	.rdata,"dr",discard,"??_C@_09MBGBMAEO@Paragraph?$AA@"
	.globl	"??_C@_09MBGBMAEO@Paragraph?$AA@" # @"??_C@_09MBGBMAEO@Paragraph?$AA@"
"??_C@_09MBGBMAEO@Paragraph?$AA@":
	.asciz	"Paragraph"

	.section	.rdata,"dr",discard,"??_C@_06EOPKIEFI@?$CFs?5?$CFd?3?$AA@"
	.globl	"??_C@_06EOPKIEFI@?$CFs?5?$CFd?3?$AA@" # @"??_C@_06EOPKIEFI@?$CFs?5?$CFd?3?$AA@"
"??_C@_06EOPKIEFI@?$CFs?5?$CFd?3?$AA@":
	.asciz	"%s %d:"

	.section	.rdata,"dr",discard,"??_C@_08FJCINCME@Sentence?$AA@"
	.globl	"??_C@_08FJCINCME@Sentence?$AA@" # @"??_C@_08FJCINCME@Sentence?$AA@"
"??_C@_08FJCINCME@Sentence?$AA@":
	.asciz	"Sentence"

	.section	.rdata,"dr",discard,"??_C@_00CNPNBAHC@?$AA@"
	.globl	"??_C@_00CNPNBAHC@?$AA@"        # @"??_C@_00CNPNBAHC@?$AA@"
"??_C@_00CNPNBAHC@?$AA@":
	.zero	1

	.section	.rdata,"dr",discard,"??_C@_0L@KCMIHNHH@?6?$CF4s?$CFs?5?$CFd?3?$AA@"
	.globl	"??_C@_0L@KCMIHNHH@?6?$CF4s?$CFs?5?$CFd?3?$AA@" # @"??_C@_0L@KCMIHNHH@?6?$CF4s?$CFs?5?$CFd?3?$AA@"
"??_C@_0L@KCMIHNHH@?6?$CF4s?$CFs?5?$CFd?3?$AA@":
	.asciz	"\n%4s%s %d:"

	.section	.rdata,"dr",discard,"??_C@_06EDMNLJEB@?6?$CF8s?$CFs?$AA@"
	.globl	"??_C@_06EDMNLJEB@?6?$CF8s?$CFs?$AA@" # @"??_C@_06EDMNLJEB@?6?$CF8s?$CFs?$AA@"
"??_C@_06EDMNLJEB@?6?$CF8s?$CFs?$AA@":
	.asciz	"\n%8s%s"

	.lcomm	___local_stdio_printf_options._OptionsStorage,8,8 # @__local_stdio_printf_options._OptionsStorage
	.addrsig
	.addrsig_sym _fopen
	.addrsig_sym _perror
	.addrsig_sym _dispose
	.addrsig_sym _fgets
	.addrsig_sym _clearerr
	.addrsig_sym _printf
	.addrsig_sym _realloc
	.addrsig_sym _tokenize_sentence
	.addrsig_sym _fclose
	.addrsig_sym _malloc
	.addrsig_sym _tokenize_word
	.addrsig_sym _free
	.addrsig_sym _strlen
	.addrsig_sym __wassert
	.addrsig_sym _puts
	.addrsig_sym _get_paragraph_sentence_count
	.addrsig_sym _get_sentence_word_count
	.addrsig_sym _fprintf
	.addrsig_sym __vfprintf_l
	.addrsig_sym ___acrt_iob_func
	.addrsig_sym ___stdio_common_vfprintf
	.addrsig_sym ___local_stdio_printf_options
	.addrsig_sym _s_document
	.addrsig_sym _s_total_paragraph_count
	.addrsig_sym _s_total_sentence_count
	.addrsig_sym _s_total_word_count
	.addrsig_sym ___local_stdio_printf_options._OptionsStorage
