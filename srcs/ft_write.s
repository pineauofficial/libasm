section .text
    global ft_write
    extern __errno_location

    ; fonction en C : ssize_t write(int fd, const void *buf, size_t count); 
    ; rdi = fd
    ; rsi = buf
    ; rdx = count

ft_write:

    mov rax, 1
    syscall
    cmp rax, 0
    jl .error ; si inferieur
    ret

.error:
    neg rax    ; convertit la valeur en positive pour avoir le vrai code d'erreur
    mov rdi, rax
    call __errno_location wrt ..plt; renvoie l'adresse de errno
    mov [rax], rdi  ; stocke le code a l'adresse de errno
    mov rax, -1
    ret