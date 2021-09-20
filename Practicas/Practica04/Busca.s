 .text
	.align 4
	.globl Buscar
	.type Buscar,@function
Buscar:
        # Aqui viene vuestro codigo
        pushl %ebp
        movl %esp, %ebp
        subl $16, %esp

        movl $-1, -4(%ebp)        # trobat = -1
        movl $0, -16(%ebp)        # low = 0
        movl $0, -8(%ebp)         # mid = low = 0
        movl 24(%ebp), %ecx       # N -> %ecx
        subl $1, %ecx             # N - 1 -> %ecx
        movl %ecx, -12(%ebp)      # high = N - 1
while:  movl -12(%ebp), %eax      # high -> %eax
        cmpl %eax, -16(%ebp)
        jg end                    # Si low > high salta
        pushl 8(%ebp)             # pushl v[]
        pushl 20(%ebp)            # pushl X.c
        pushl 16(%ebp)            # pushl X.k
        pushl 12(%ebp)            # pushl *(X.m)
        leal -8(%ebp), %eax
        pushl %eax                # pushl mid
        leal -12(%ebp), %eax
        pushl %eax                # pushl high
        leal -16(%ebp), %eax
        pushl %eax                # pushl low
        call BuscarElemento
        addl $28, %esp            # Eliminamos parametros
        movl %eax, -4(%ebp)       # trobat = BuscarElemento(&low, &high, &mid, X, v);
if:     cmpl $0, %eax
        jl while                  # Si trobat < 0 salta
        jmp end                   # break

end:    movl -4(%ebp), %eax
        movl %ebp, %esp
        popl %ebp
        ret
