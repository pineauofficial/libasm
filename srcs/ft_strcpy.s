section .text
    global ft_strcpy

    ; char* strcpy(char* destination, const char* source);
    ; rdi = destination
    ; rsi = source

ft_strcpy:

    mov rax, rdi
    test rax, rax
    jz .renvoie

.boucle:
    mov cl, byte [rsi]
    mov byte [rdi], cl
    test cl, cl
    jz .renvoie
    
    inc rdi
    inc rsi

    jmp .boucle

.renvoie:
    ret

