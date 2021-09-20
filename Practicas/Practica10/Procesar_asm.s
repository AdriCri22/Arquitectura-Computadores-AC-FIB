.text
	.align 4
	.globl procesar
	.type	procesar, @function
procesar:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	pushl	%ebx
	pushl	%esi
	pushl	%edi

# Aqui has de introducir el codigo

	movl 8(%ebp), %eax		# &mata -> %eax
	movl 12(%ebp), %ebx		# &matb -> %ebx
	movl 16(%ebp), %ecx		# &matc -> %ecx
	movl 20(%ebp), %esi		# n -> %esi

	imul %esi, %esi				# n * n -> %esi
	addl %ecx, %esi				# &matc[n*n] -> %esi

for:
	cmpl %ecx, %esi				# &matc[n*n] - &matc[0]
	jle end_for						# Salta si: &matc[n*n] <= &matc[0]

	movb (%eax), %dl			# mata[k] -> %dl
	subb (%ebx), %dl			# mata[k] - mab[k] -> %dl

if:
	cmpb $0, %dl					# mata[k] - matb[k] - 0
	jle else							# Salta si: mata[k] - matb[k] <= 0

	movb $255, (%ecx)			# matc[k] = 255
	jmp end_if

else:
	movb $0, (%ecx)				# matc[k] = 0

end_if:
	incl %eax							# &mata[k++]
	incl %ebx							# &matb[k++]
	incl %ecx							# &matc[k++]

	jmp for

end_for:


# El final de la rutina ya esta programado

	popl	%edi
	popl	%esi
	popl	%ebx
	movl %ebp,%esp
	popl %ebp
	ret
