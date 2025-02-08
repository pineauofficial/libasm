# Compiler et flags
CC = gcc
AS = nasm
CFLAGS = -Wall -Wextra -Werror -I./
ASFLAGS = -f elf64
LIBASM = libasm.h

# Dossiers
SRC_DIR = srcs
TEST_DIR = tests

# Fichiers sources en assembleur et en C
ASM_SRC = $(wildcard $(SRC_DIR)/*.s)
C_SRC = $(wildcard $(TEST_DIR)/*.c)

# Nom de la bibliothèque et de l'exécutable
LIB_NAME = libasm.a
NAME = libasm

# Fichiers objets
ASM_OBJ = $(ASM_SRC:.s=.o)
C_OBJ = $(C_SRC:.c=.o)

# Règles par défaut
all: $(LIB_NAME) $(NAME)

# Création de la bibliothèque statique libasm.a
$(LIB_NAME): $(ASM_OBJ)
	ar rcs $(LIB_NAME) $(ASM_OBJ)

# Compilation de l'exécutable avec la bibliothèque
$(NAME): $(C_OBJ) $(LIB_NAME)
	$(CC) $(CFLAGS) -o $(NAME) $(C_OBJ) -L. -lasm

# Compilation des fichiers assembleur
%.o: %.s $(LIBASM)
	$(AS) $(ASFLAGS) $< -o $@

# Compilation des fichiers C
%.o: %.c $(LIBASM)
	$(CC) $(CFLAGS) -c $< -o $@

# Nettoyage
clean:
	rm -f $(ASM_OBJ) $(C_OBJ)

fclean: clean
	rm -f $(LIB_NAME) $(NAME)

re: fclean all

.PHONY: all clean fclean re


