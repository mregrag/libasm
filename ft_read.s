section .text
global ft_read

ft_read:
    mov rax, 0
    syscall
    js error
    ret

error:
    mov rax, -1
    ret
