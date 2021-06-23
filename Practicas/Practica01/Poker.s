	.file	"Poker.c"
	.text
	.globl	trad
	.data
	.align 8
	.type	trad, @object
	.size	trad, 13
trad:
	.ascii	"234567891JQKA"
	.comm	baraja,416,32
	.globl	pareja
	.bss
	.align 4
	.type	pareja, @object
	.size	pareja, 4
pareja:
	.zero	4
	.globl	trio
	.align 4
	.type	trio, @object
	.size	trio, 4
trio:
	.zero	4
	.globl	poker
	.align 4
	.type	poker, @object
	.size	poker, 4
poker:
	.zero	4
	.globl	full
	.align 4
	.type	full, @object
	.size	full, 4
full:
	.zero	4
	.globl	color
	.align 4
	.type	color, @object
	.size	color, 4
color:
	.zero	4
	.globl	nada
	.align 4
	.type	nada, @object
	.size	nada, 4
nada:
	.zero	4
	.globl	doblepareja
	.align 4
	.type	doblepareja, @object
	.size	doblepareja, 4
doblepareja:
	.zero	4
	.globl	escalera
	.align 4
	.type	escalera, @object
	.size	escalera, 4
escalera:
	.zero	4
	.globl	escaleracolor
	.align 4
	.type	escaleracolor, @object
	.size	escaleracolor, 4
escaleracolor:
	.zero	4
	.globl	V
	.align 4
	.type	V, @object
	.size	V, 4
V:
	.zero	4
	.text
	.globl	Init
	.type	Init, @function
Init:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, 4(%rax)
	movl	-4(%rbp), %eax
	cltq
	addq	$13, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-4(%rbp), %eax
	cltq
	addq	$13, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, 4(%rax)
	movl	-4(%rbp), %eax
	cltq
	addq	$26, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-4(%rbp), %eax
	cltq
	addq	$26, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$2, 4(%rax)
	movl	-4(%rbp), %eax
	cltq
	addq	$39, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-4(%rbp), %eax
	cltq
	addq	$39, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$3, 4(%rax)
	addl	$1, -4(%rbp)
.L2:
	cmpl	$12, -4(%rbp)
	jle	.L3
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Init, .-Init
	.globl	Ordenar
	.type	Ordenar, @function
Ordenar:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L5
.L9:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.L6
.L8:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L7
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	4(%rax), %eax
	movl	%eax, 4(%rdx)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, 4(%rdx)
.L7:
	addl	$1, -8(%rbp)
.L6:
	cmpl	$4, -8(%rbp)
	jle	.L8
	addl	$1, -12(%rbp)
.L5:
	cmpl	$4, -12(%rbp)
	jle	.L9
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Ordenar, .-Ordenar
	.section	.rodata
.LC0:
	.string	"10 - "
.LC1:
	.string	" %c - "
.LC2:
	.string	"COR"
.LC3:
	.string	"PIC"
.LC4:
	.string	"TRE"
.LC5:
	.string	"DIA"
	.text
	.globl	Mostrar
	.type	Mostrar, @function
Mostrar:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, -12(%rbp)
	jmp	.L11
.L19:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	trad(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	cmpb	$49, %al
	jne	.L12
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L13
.L12:
	movl	-8(%rbp), %eax
	cltq
	leaq	trad(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L13:
	cmpl	$3, -4(%rbp)
	je	.L14
	cmpl	$3, -4(%rbp)
	jg	.L15
	cmpl	$2, -4(%rbp)
	je	.L16
	cmpl	$2, -4(%rbp)
	jg	.L15
	cmpl	$0, -4(%rbp)
	je	.L17
	cmpl	$1, -4(%rbp)
	je	.L18
	jmp	.L15
.L17:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L15
.L18:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	jmp	.L15
.L14:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	jmp	.L15
.L16:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	nop
.L15:
	addl	$1, -12(%rbp)
.L11:
	cmpl	$4, -12(%rbp)
	jle	.L19
	movl	$10, %edi
	call	putchar@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Mostrar, .-Mostrar
	.section	.rodata
.LC6:
	.string	"%s"
	.text
	.globl	verbose
	.type	verbose, @function
verbose:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	V(%rip), %eax
	testl	%eax, %eax
	je	.L21
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L21:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	verbose, .-verbose
	.globl	Color
	.type	Color, @function
Color:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L23
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L23
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L23
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L23
	movl	$1, %eax
	jmp	.L25
.L23:
	movl	$0, %eax
.L25:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Color, .-Color
	.globl	Poker
	.type	Poker, @function
Poker:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L27
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L27
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L27
	movl	$1, %eax
	jmp	.L28
.L27:
	movl	$0, %eax
.L28:
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L29
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L29
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L29
	movl	$1, %eax
	jmp	.L30
.L29:
	movl	$0, %eax
.L30:
	movl	%eax, -4(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L31
	cmpl	$0, -4(%rbp)
	je	.L32
.L31:
	movl	$1, %eax
	jmp	.L34
.L32:
	movl	$0, %eax
.L34:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Poker, .-Poker
	.globl	Full
	.type	Full, @function
Full:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L36
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L36
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L36
	movl	$1, %eax
	jmp	.L37
.L36:
	movl	$0, %eax
.L37:
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L38
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L38
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L38
	movl	$1, %eax
	jmp	.L39
.L38:
	movl	$0, %eax
.L39:
	movl	%eax, -4(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L40
	cmpl	$0, -4(%rbp)
	je	.L41
.L40:
	movl	$1, %eax
	jmp	.L43
.L41:
	movl	$0, %eax
.L43:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Full, .-Full
	.globl	Escalera
	.type	Escalera, @function
Escalera:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rdx
	addq	$8, %rdx
	movl	(%rdx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.L45
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rdx
	addq	$16, %rdx
	movl	(%rdx), %edx
	subl	$2, %edx
	cmpl	%edx, %eax
	jne	.L45
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rdx
	addq	$24, %rdx
	movl	(%rdx), %edx
	subl	$3, %edx
	cmpl	%edx, %eax
	jne	.L45
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rdx
	addq	$32, %rdx
	movl	(%rdx), %edx
	subl	$4, %edx
	cmpl	%edx, %eax
	jne	.L45
	movl	$1, %eax
	jmp	.L46
.L45:
	movl	$0, %eax
.L46:
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L47
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L47
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L47
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L47
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	$12, %eax
	jne	.L47
	movl	$1, %eax
	jmp	.L48
.L47:
	movl	$0, %eax
.L48:
	movl	%eax, -4(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L49
	cmpl	$0, -4(%rbp)
	je	.L50
.L49:
	movl	$1, %eax
	jmp	.L52
.L50:
	movl	$0, %eax
.L52:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Escalera, .-Escalera
	.globl	Trio
	.type	Trio, @function
Trio:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L54
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L54
	movl	$1, %eax
	jmp	.L55
.L54:
	movl	$0, %eax
.L55:
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L56
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L56
	movl	$1, %eax
	jmp	.L57
.L56:
	movl	$0, %eax
.L57:
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L58
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L58
	movl	$1, %eax
	jmp	.L59
.L58:
	movl	$0, %eax
.L59:
	movl	%eax, -4(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L60
	cmpl	$0, -8(%rbp)
	jne	.L60
	cmpl	$0, -4(%rbp)
	je	.L61
.L60:
	movl	$1, %eax
	jmp	.L63
.L61:
	movl	$0, %eax
.L63:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Trio, .-Trio
	.globl	Pareja
	.type	Pareja, @function
Pareja:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.L65
	cmpl	$0, -12(%rbp)
	jne	.L65
	cmpl	$0, -8(%rbp)
	jne	.L65
	cmpl	$0, -4(%rbp)
	je	.L66
.L65:
	movl	$1, %eax
	jmp	.L68
.L66:
	movl	$0, %eax
.L68:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Pareja, .-Pareja
	.globl	DoblePareja
	.type	DoblePareja, @function
DoblePareja:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L70
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L70
	movl	$1, %eax
	jmp	.L71
.L70:
	movl	$0, %eax
.L71:
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L72
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L72
	movl	$1, %eax
	jmp	.L73
.L72:
	movl	$0, %eax
.L73:
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L74
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L74
	movl	$1, %eax
	jmp	.L75
.L74:
	movl	$0, %eax
.L75:
	movl	%eax, -4(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L76
	cmpl	$0, -8(%rbp)
	jne	.L76
	cmpl	$0, -4(%rbp)
	je	.L77
.L76:
	movl	$1, %eax
	jmp	.L79
.L77:
	movl	$0, %eax
.L79:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	DoblePareja, .-DoblePareja
	.section	.rodata
.LC7:
	.string	"EC "
.LC8:
	.string	"PK "
.LC9:
	.string	"FL "
.LC10:
	.string	"CL "
.LC11:
	.string	"ES "
.LC12:
	.string	"TR "
.LC13:
	.string	"PP "
.LC14:
	.string	"PR "
.LC15:
	.string	" . "
	.text
	.globl	Test
	.type	Test, @function
Test:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Color
	testl	%eax, %eax
	je	.L81
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Escalera
	testl	%eax, %eax
	je	.L81
	movl	escaleracolor(%rip), %eax
	addl	$1, %eax
	movl	%eax, escaleracolor(%rip)
	leaq	.LC7(%rip), %rdi
	call	verbose
	jmp	.L90
.L81:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Poker
	testl	%eax, %eax
	je	.L83
	movl	poker(%rip), %eax
	addl	$1, %eax
	movl	%eax, poker(%rip)
	leaq	.LC8(%rip), %rdi
	call	verbose
	jmp	.L90
.L83:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Full
	testl	%eax, %eax
	je	.L84
	movl	full(%rip), %eax
	addl	$1, %eax
	movl	%eax, full(%rip)
	leaq	.LC9(%rip), %rdi
	call	verbose
	jmp	.L90
.L84:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Color
	testl	%eax, %eax
	je	.L85
	movl	color(%rip), %eax
	addl	$1, %eax
	movl	%eax, color(%rip)
	leaq	.LC10(%rip), %rdi
	call	verbose
	jmp	.L90
.L85:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Escalera
	testl	%eax, %eax
	je	.L86
	movl	escalera(%rip), %eax
	addl	$1, %eax
	movl	%eax, escalera(%rip)
	leaq	.LC11(%rip), %rdi
	call	verbose
	jmp	.L90
.L86:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Trio
	testl	%eax, %eax
	je	.L87
	movl	trio(%rip), %eax
	addl	$1, %eax
	movl	%eax, trio(%rip)
	leaq	.LC12(%rip), %rdi
	call	verbose
	jmp	.L90
.L87:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DoblePareja
	testl	%eax, %eax
	je	.L88
	movl	doblepareja(%rip), %eax
	addl	$1, %eax
	movl	%eax, doblepareja(%rip)
	leaq	.LC13(%rip), %rdi
	call	verbose
	jmp	.L90
.L88:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Pareja
	testl	%eax, %eax
	je	.L89
	movl	pareja(%rip), %eax
	addl	$1, %eax
	movl	%eax, pareja(%rip)
	leaq	.LC14(%rip), %rdi
	call	verbose
	jmp	.L90
.L89:
	movl	nada(%rip), %eax
	addl	$1, %eax
	movl	%eax, nada(%rip)
	leaq	.LC15(%rip), %rdi
	call	verbose
.L90:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Test, .-Test
	.globl	Repartir
	.type	Repartir, @function
Repartir:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	baraja(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	baraja(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	baraja(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	baraja(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	baraja(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, (%rdx)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+baraja(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	4+baraja(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, 4(%rdx)
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	4+baraja(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, 4(%rdx)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	4+baraja(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, 4(%rdx)
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	4+baraja(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, 4(%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Repartir, .-Repartir
	.globl	PierdeTiempo
	.type	PierdeTiempo, @function
PierdeTiempo:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	$0, -8(%rbp)
	movl	$1, -16(%rbp)
	jmp	.L93
.L96:
	movl	$1, -12(%rbp)
	jmp	.L94
.L95:
	movl	-16(%rbp), %eax
	cltq
	addq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
.L94:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.L95
	addl	$1, -16(%rbp)
.L93:
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L96
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	PierdeTiempo, .-PierdeTiempo
	.section	.rodata
.LC16:
	.string	"  \n"
	.align 8
.LC17:
	.string	"%7d COMBINACIONES:\n - ESCALERA COLOR (%d)\n - POKER (%d)\n - FULL (%d)\n - COLOR (%d)\n - ESCALERA (%d)\n - TRIO (%d)\n - DOBLE PAREJA (%d)\n - PAREJA (%d)\n - NADA (%d) \n"
	.align 8
.LC18:
	.string	"Pierdo algo de tiempo mientras calculo el numero: %ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -68(%rbp)
	cmpl	$2, -100(%rbp)
	jne	.L99
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	atoi@PLT
	movl	%eax, V(%rip)
	jmp	.L100
.L99:
	movl	$0, V(%rip)
.L100:
	leaq	baraja(%rip), %rdi
	call	Init
	movl	$0, -88(%rbp)
	jmp	.L101
.L111:
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.L102
.L110:
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.L103
.L109:
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.L104
.L108:
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.L105
.L107:
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%rax,4), %edx
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L106
	leaq	.LC16(%rip), %rdi
	call	verbose
.L106:
	movl	-72(%rbp), %r8d
	movl	-76(%rbp), %edi
	movl	-80(%rbp), %ecx
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %esi
	leaq	-64(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	Repartir
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	Ordenar
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	Test
	addl	$1, -68(%rbp)
	addl	$1, -72(%rbp)
.L105:
	cmpl	$51, -72(%rbp)
	jle	.L107
	addl	$1, -76(%rbp)
.L104:
	cmpl	$50, -76(%rbp)
	jle	.L108
	addl	$1, -80(%rbp)
.L103:
	cmpl	$49, -80(%rbp)
	jle	.L109
	addl	$1, -84(%rbp)
.L102:
	cmpl	$48, -84(%rbp)
	jle	.L110
	addl	$1, -88(%rbp)
.L101:
	cmpl	$47, -88(%rbp)
	jle	.L111
	movl	$10, %edi
	call	putchar@PLT
	movl	nada(%rip), %r10d
	movl	pareja(%rip), %r9d
	movl	doblepareja(%rip), %r8d
	movl	trio(%rip), %edi
	movl	escalera(%rip), %esi
	movl	color(%rip), %ebx
	movl	full(%rip), %r11d
	movl	poker(%rip), %ecx
	movl	escaleracolor(%rip), %edx
	movl	-68(%rbp), %eax
	subq	$8, %rsp
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	pushq	%rsi
	movl	%ebx, %r9d
	movl	%r11d, %r8d
	movl	%eax, %esi
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$48, %rsp
	movl	$10000, %edi
	call	PierdeTiempo
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L113
	call	__stack_chk_fail@PLT
.L113:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
