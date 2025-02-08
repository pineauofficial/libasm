#ifndef LIBASM_H
#define LIBASM_H

#include <stddef.h>
#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>

extern ssize_t ft_write(int fd, const void *buf, size_t count);
extern ssize_t ft_read(int fildes, void *buf, size_t nbyte);

int ft_read_test();
int ft_write_test();

#endif

// clear && make && ./libasm && make fclean