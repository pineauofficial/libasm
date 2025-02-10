#include "libasm.h"

int ft_read_test() {
    int fd = open("tests/test_read.txt", O_RDONLY);
    if (fd == -1) {
        return 1;
    }

    char buffer[7];
    ft_read(fd, buffer, sizeof(buffer));
    write(1, buffer, sizeof(buffer));
    printf(" %s\n", "(custom)");
    read(fd, buffer, sizeof(buffer));
    write(1, buffer, sizeof(buffer));
    printf(" %s", "(originale)");



    close(fd);
    return 0;
}