hsection .text
    global ft_strcmp

ft_strcmp:
    ; Input:
    ; RDI = pointer to first string (s1)
    ; RSI = pointer to second string (s2)

.loop:
    mov al, byte [rdi]   ; Load current byte of s1 into AL
    mov bl, byte [rsi]   ; Load current byte of s2 into BL
    cmp al, bl           ; Compare the bytes
    jne .return          ; If not equal, return the difference
    test al, al          ; Check if AL is null (end of s1)
    je .return_zero      ; If null, strings are equal
    inc rdi              ; Advance pointer for s1
    inc rsi              ; Advance pointer for s2
    jmp .loop            ; Repeat the loop

.return:
    sub rax, rbx         ; Compute the difference between AL and BL
    ret                  ; Return the result

.return_zero:
    xor rax, rax         ; Set RAX to 0 (strings are equal)
    ret                  ; Return
