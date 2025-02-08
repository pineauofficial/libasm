section .text
    global ft_strlen

    ; size_t strlen( const char * theString );
    ; rdi = theString

ft_strlen:
    cmp rdi

strlen( *s)
    int i = 0;
    while(s[i] != \0)
        i++;
    return i;


