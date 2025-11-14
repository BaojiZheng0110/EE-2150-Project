global operation
section .text


%macro ADD 3
    mov eax, %1
    add eax, %2
    mov %3, eax
%endmacro

%macro SUB 3
    mov eax, %1
    sub eax, %2
    mov %3, eax
%endmacro

%macro MUL 3
    mov eax, %1
    imul eax, %2
    mov %3, eax
%endmacro

%macro AVERAGE 3
    mov eax, %1
    add eax, %2
    xor edx, edx
    mov ecx, 2
    div ecx
    mov %3, eax
%endmacro


operation:
    push rbp
    mov  rbp, rsp

    cmp edx, 1
    je  .do_add
    cmp edx, 2
    je  .do_sub
    cmp edx, 3
    je  .do_mul
    cmp edx, 4
    je  .do_avg

    mov eax, -1
    jmp .done

.do_add:
    ADD     edi, esi, eax
    jmp .done

.do_sub:
    SUB     edi, esi, eax
    jmp .done

.do_mul:
    MUL     edi,  esi, eax
    jmp .done

.do_avg:
    AVERAGE edi,  esi, eax
    jmp .done

.done:
    pop rbp
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
