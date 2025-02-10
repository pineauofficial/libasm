#include "libasm.h"

int ft_strcmp_test() {
    char *str1 = "Bonjour";
    char *str2 = "Bonjour";
    printf("Diff entre %s et %s = %d (custom)   \n", str1, str2, ft_strcmp(str1, str2));
    printf("Diff entre %s et %s = %d (originale)", str1, str2, strcmp(str1, str2));

    return 0;
}