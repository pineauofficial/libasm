#include "libasm.h"

int ft_strdup_test() {
    char *str = "Bonjour";
    printf("Chaine originale = %s , chaine copie = %s (custom)\n", str, ft_strdup(str));
    printf("Chaine originale = %s , chaine copie = %s (originale)", str, strdup(str));

    return 0;
}