.text
	.align 4
	.globl OperaMat
	.type	OperaMat, @function
OperaMat:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	pushl	%ebx
	pushl	%esi
	pushl	%edi
# Aqui has de introducir el codigo
	movl $0, -4(%ebp)						# res = 0
	movl $0, %eax								# i = 0
	movl 8(%ebp), %ebx					# @Matriz -> %ebx
first_for:
	cmpl $3, %eax
	jge end											# Si i >= 3 salta
	movl $0, %ecx								# j = 0
second_for:
	cmpl $3, %ecx
	jge end_for									# Si j >= 3 salta
	imull $16, %eax, %edx				# 16 * i -> %edx
	movl (%ebx, %edx), %edx			# Matriz[i][i] -> %edx
	addl %ecx, %edx							# Matriz[i][j] + j -> %edx
	subl %edx, -4(%ebp)					# res -= Matriz[i][j] + j
	incl %ecx										# j++
	jmp second_for
end_for:
	addl 12(%ebp), %eax										# i += salto
	jmp first_for
end:
	movl %eax, -8(%ebp)
	movl %ecx, -12(%ebp)
# El final de la rutina ya esta programado
	movl	-4(%ebp), %eax
	popl	%edi
	popl	%esi
	popl	%ebx
	movl %ebp,%esp
	popl %ebp
	ret
