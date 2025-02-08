section .text
    global ft_read

    ; ssize_t read(int fildes, void *buf, size_t nbyte);
    ; rdi = fildes
    ; rsi = buf
    ; rdx = nbytes

ft_read:

    mov rax, 0
    syscall

    ret