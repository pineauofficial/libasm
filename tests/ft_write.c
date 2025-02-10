#include "libasm.h"

int ft_write_test() {
    const char *message = "Hello from ASM write!";
    size_t length = 22;

    ft_write(1, message, length);
    printf("%s   \n", "(custom)");
    write(1, message, length);
    printf("%s", "(originale)");
    return 0;
}