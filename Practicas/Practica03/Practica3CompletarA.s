.text
	.align 4
	.globl OperaVec
	.type	OperaVec, @function
OperaVec:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	pushl	%ebx
	pushl	%esi
	pushl	%edi
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
# Aqui has de introducir el codigo
	movl $1, %eax										# i = 1
for:
	cmpl 12(%ebp), %eax
	jge end													# i >= elementos
if:
	movl 8(%ebp), %ecx							# @Vector -> %ecx
	movl (%ecx, %eax, 4), %ecx			# i * 40 + @Vector -> %ecx || Vector[i] -> %ecx
	cmpl -4(%ebp), %ecx
	jge end_for											# Si Vector[i] >= res salta
	movl %ecx, -4(%ebp)							# res = Vector[i]
end_for:
	incl %eax												# i++
	jmp for
end:
	movl %eax, -8(%ebp)
	movl -4(%ebp), %eax
# El final de la rutina ya esta programado
	movl	-4(%ebp), %eax
	popl	%edi
	popl	%esi
	popl	%ebx
	movl %ebp,%esp
	popl %ebp
	ret
