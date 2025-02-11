section .text
    global ft_read
    extern __errno_location

    ; ssize_t read(int fildes, void *buf, size_t nbyte);
    ; rdi = fildes
    ; rsi = buf
    ; rdx = nbytes

ft_read:

    mov rax, 0
    syscall
    cmp rax, 0
    jl .error
    ret

.error:
    neg rax    ; convertit la valeur en positive pour avoir le vrai code d'erreur
    mov rdi, rax
    call __errno_location wrt ..plt; renvoie l'adresse de errno
    mov [rax], rdi  ; stocke le code a l'adresse de errno
    mov rax, -1
    ret