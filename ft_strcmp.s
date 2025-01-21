section .text
    global ft_strcmp

ft_strcmp:

.loop:
    mov al, byte [rdi] 
    mov bl, byte [rsi]
    cmp al, bl       
    jne .return
    test al, al
    je .return_zero
    inc rdi
    inc rsi
    jmp .loop

.return:
    sub rax, rbx
    ret

.return_zero:
    mov rax, 0
    ret
