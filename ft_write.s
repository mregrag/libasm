section .text
global ft_write

ft_write:
    mov rax, 0x1
    syscall
    js error
    ret
error:
    mov rax, -1
    ret
