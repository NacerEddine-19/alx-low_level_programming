section .data
    message db "Hello, Holberton\n", 10, 0
section .text
    global main
    extern printf
main:
    push rbp
    mov rbp, rsp
    mov rdi, message
    mov al, 0
    call printf
    mov rsp, rbp
    pop rbp
    ret
