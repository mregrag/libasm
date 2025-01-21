section .data
    message db "Hello, world!"
    len equ $ - message

section .text
    global _start
    extern ft_write

_start:
    mov rdi, 1
    lea rsi, [message]  
    mov rdx, len     
    call ft_write

    mov rax, 60 
    mov rdi, 0
    syscall
