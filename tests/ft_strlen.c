#include "libasm.h"

int ft_strlen_test() {
    char *str = "Bonjour";
    printf("Longueur du mot %s = %ld \n", str, ft_strlen(str));
    printf("Longueur du mot 2 %s = %ld \n", str, strlen(str));

    return 0;
}