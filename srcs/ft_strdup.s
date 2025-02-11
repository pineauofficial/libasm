section .text
    global ft_strdup
    extern ft_strlen
    extern ft_strcpy
    extern malloc 

    ; char * strdup( const char * source );
    ; rdi = source

ft_strdup:

    push rdi
    call ft_strlen
    inc rax ;contient la taille de la chaine + 1

    mov rdi, rax

    call malloc wrt ..plt ;rax contient malloc
    test rax, rax ; check malloc
    jz .error

    mov rdi, rax
    pop rsi ; on met dans rsi le rdi (source) qu'on push au debut
    call ft_strcpy
    ret

.error:
    pop rdi ;nettoie la stack
    xor rax, rax ;pour etre sur que rax = 0
    ret
