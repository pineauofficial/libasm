section .text
    global ft_strlen

    ; size_t strlen( const char * theString );
    ; rdi = theString

ft_strlen:
    xor rax, rax

.boucle:
    ; methode -1-
    ; mov cl, byte [rdi]  ; utilise cl comme registre tmp pour stocker les characteres
    ; test cl, cl         ; test si le caractere est nul
    ; jz .renvoie

    ; methode -2-
    cmp byte [rdi], 0
    je .renvoie 

    inc rax
    inc rdi
    jmp .boucle

.renvoie:
    ret


