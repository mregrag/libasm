section .text
global ft_open

ft_open:
    mov rax, 2
    syscall
    js error
    ret
error:
    mov rax, -1
    ret
