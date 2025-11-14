;This assembly program will determine whether the input integer is prime
;int findPrime(int n)
;return value
;       -1: The input integer is not in the range of 1 - 100
;        0: The integer is not a prime
;        1: The integer is prime
;parameter n is in EDI, return value is in EAX


global findPrime
section .text

findPrime:
    mov  eax, edi
    cmp  eax,   1
    jl   .range_error
    cmp  eax,   100
    jg   .range_error


    cmp  eax, 2
    jl  .not_prime
    je  .prime 
    test eax, 1
    jz  .not_prime

    mov  r8d, eax
    mov  esi, 3



.loop:
    mov  ecx, esi
    imul ecx, ecx
    cmp  ecx, edi
    jg  .prime

    mov  eax, r8d
    cdq
    idiv esi
    test edx, edx
    jz  .not_prime

    add  esi, 2
    jmp .loop

.prime:
    mov eax, 1
    ret

.not_prime:
    xor eax, eax
    ret

.range_error:
    mov eax, -1
    ret

section .note.GUN-stack noalloc noexec nowrite progbits