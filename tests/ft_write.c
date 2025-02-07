#include "libasm.h"

int main() {
    const char *message = "Hello from ASM write!\n";
    size_t length = 22;

    ssize_t bytes_written = ft_write(1, message, length);

    if (bytes_written == -1) {
        perror("ft_write failed");
        return 1;
    }

    printf("\n%d bytes written successfully\n", (int)bytes_written);
    return 0;
}
/*compilation
nasm -f elf64 -o srcs/ft_write.o srcs/ft_write.s
gcc -c -o tests/ft_write.o tests/ft_write.c -I./
gcc -o tests/ft_write tests/ft_write.o srcs/ft_write.o
*/