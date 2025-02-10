#ifndef LIBASM_H
#define LIBASM_H

#include <stddef.h>
#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <string.h>

extern ssize_t ft_write(int fd, const void *buf, size_t count);
extern ssize_t ft_read(int fildes, void *buf, size_t nbyte);
extern size_t ft_strlen( const char * theString );
extern char* ft_strcpy(char* destination, const char* source);
extern int ft_strcmp( const char * first, const char * second );

int ft_read_test();
int ft_write_test();
int ft_strlen_test();
int ft_strdup_test();
int ft_strcpy_test();
int ft_strcmp_test();

#endif

// clear && make && ./libasm && make fclean