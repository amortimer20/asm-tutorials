global _start

section .data
msg db "Hello", 10, 0

section .text
_start:
    mov eax, 4 ; write sys_call
    mov ebx, 1
    mov ecx, msg
    mov edx, 7
    int 0x80

    mov eax, 1 ; exit sys_call
    mov ebx, 0
    int 0x80