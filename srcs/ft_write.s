section .text
    global ft_write

    ; fonction en C : ssize_t write(int fd, const void *buf, size_t count); 
    ; rdi = fd
    ; rsi = buf
    ; rdx = count

ft_write:

    mov rax, 1
    syscall

    ret