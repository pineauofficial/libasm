section .text
    global ft_strcmp

    ; int strcmp( const char * first, const char * second );
    ; rdi = first
    ; rsi = second

ft_strcmp:

    xor rax, rax

.boucle:
    mov cl, byte [rdi]

    test cl, cl
    jz .renvoie

    cmp cl, byte [rsi]      ;aussi possible de mettre byte [rsi] dans dl et cmp cl, dl
    jne .renvoie            ;si different

    inc rsi
    inc rdi
    jmp .boucle

.renvoie:
    movzx rax, cl           ; movzx car on copie un registre de petite taille dans un registre de plus grande taille
    movzx rcx, byte [rsi]
    sub rax, rcx
    ret
