#include "libasm.h"

int ft_strcpy_test() {
    char dest[25];
    char *src = "Bonjour";

    printf("dest contient (custom)    %s\n", ft_strcpy(dest, src));
    printf("dest contient (originale) %s\n", strcpy(dest, src));

    return 0;
}