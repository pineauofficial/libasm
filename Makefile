# Variables de répertoires
SRC_DIR = srcs
TEST_DIR = tests
INC_DIR = .

# Fichiers sources
SRC_FILES = $(SRC_DIR)/ft_write.s
TEST_FILES = $(TEST_DIR)/ft_write.c

# Fichiers objets
OBJ_FILES = $(SRC_FILES:.s=.o) $(TEST_FILES:.c=.o)

# Nom de l'exécutable
EXEC = $(TEST_DIR)/ft_write

# Compilateur et options
CC = gcc
NASM = nasm
CFLAGS = -Wall -Wextra -I$(INC_DIR)
ASMFLAGS = -f elf64

# Règle principale
all: $(EXEC)

# Lier les objets pour créer l'exécutable
$(EXEC): $(OBJ_FILES)
	$(CC) -o $(EXEC) $(OBJ_FILES)

# Compiler les fichiers assembleur (.s) en objets (.o)
$(SRC_DIR)/%.o: $(SRC_DIR)/%.s
	$(NASM) $(ASMFLAGS) -o $@ $<

# Compiler les fichiers C (.c) en objets (.o)
$(TEST_DIR)/%.o: $(TEST_DIR)/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

# Nettoyer les fichiers objets et l'exécutable
clean:
	rm -f $(SRC_DIR)/*.o $(TEST_DIR)/*.o $(EXEC)

# Nettoyer les fichiers objets, y compris les fichiers générés par l'assembleur
fclean: clean
	rm -f $(EXEC)

# Recréer les fichiers objets et l'exécutable
re: fclean all

.PHONY: all clean fclean re
