 .text
	.align 4
	.globl BuscarElemento
	.type BuscarElemento,@function
BuscarElemento:
        # Aqui viene vuestro codigo
          pushl %ebp
          movl %esp, %ebp

          movl 16(%ebp), %eax         # &mid -> %eax
          movl (%eax), %eax           # mid -> %eax
          movl 32(%ebp), %ecx         # &v[] -> %ecx
          imull $12, %eax, %edx       # mid * 12 -> %edx
          movl 4(%ecx, %edx), %ecx    # v[*mid].k -> %ecx || @v + 12*mid + 4
if:       cmpl %ecx, 24(%ebp)
          jne else                    # Si X.k != v[*mid].k salta
                                      # *mid ya esta en %eax
          jmp end

else:     movl 12(%ebp), %ecx         # &high -> %ecx
          movl (%ecx), %ecx           # high -> %ecx
          movl 8(%ebp), %edx          # &low -> %edx
          movl (%edx), %edx           # low -> %edx

if2:      cmpl %ecx, %eax
          jge else2                   # Si *mid >= *high salta
          movl 16(%ebp), %eax         # &mid -> %eax
          movl %ecx, (%eax)             # *mid = *high
          incl %edx                   # (*low)++
          movl 8(%ebp), %ecx
          movl %edx, (%ecx)
          jmp end_else

else2:    movl 16(%ebp), %eax         # &mid -> %eax
          movl %edx, (%eax)             # *mid = *low
          decl %ecx                   # (*high)--
          movl 12(%ebp), %edx
          movl %ecx, (%edx)

end_else: movl $-1, %eax              # Elemento no encontrado retorna -1

end:      movl %ebp, %esp
          popl %ebp
          ret
