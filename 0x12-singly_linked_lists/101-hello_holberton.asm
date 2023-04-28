section .data
    message db "Hello, Holberton", 0
    format db "%s\n", 0

section .text
    global main

main:
    push rbp
    mov rbp, rsp

    sub rsp, 8
    lea rdi, [message]
    lea rsi, [format]
    mov al, 0
    call printf

    mov rsp, rbp
    pop rbp
    xor eax, eax
    ret

