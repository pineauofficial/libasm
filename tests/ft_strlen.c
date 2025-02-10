#include "libasm.h"

int ft_strlen_test() {
    char *str = "Bonjour";
    printf("Longueur du mot (custom)    %s = %ld \n", str, ft_strlen(str));
    printf("Longueur du mot (originale) %s = %ld ", str, strlen(str));

    return 0;
}