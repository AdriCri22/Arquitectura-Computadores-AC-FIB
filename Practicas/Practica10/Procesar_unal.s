.text
	.align 4
	.globl procesar
	.type	procesar, @function
	comparer:
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

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

	movdqu (%eax), %xmm0	# mata[k + 0], mata[k + 1], ... , mata[k + 15] -> %xmm0
	movdqu (%ebx), %xmm1	# matb[k + 0], matb[k + 1], ... , matb[k + 15] -> %xmm1

	psubb %xmm0, %xmm1		# mata[k + 0] - matb[k + 0], ... , mata[k + 15] - matb[k + 15] -> %xmm1

	movdqu comparer, %xmm2

	pcmpgtb %xmm1, %xmm2	# %xmm1 > %xmm2 -> %xmm1
	movdqu %xmm1, (%ecx)	# Carga xmm1 en (%ecx)

	addl $16, %eax				# &mata[k += 16]
	addl $16, %ebx				# &matb[k += 16]
	addl $16, %ecx				# &matc[k += 16]

	jmp for

end_for:

# El final de la rutina ya esta programado

	emms	# Instruccion necesaria si os equivocais y usais MMX
	popl	%edi
	popl	%esi
	popl	%ebx
	movl %ebp,%esp
	popl %ebp
	ret
