global _start

section .text

_start:

    ;print on screen
    mov rax, 1
    mov rdi, 1
    mov rsi, hello_world
    mov rdx, length1
    syscall

    ;exit
    mov rax, 60
    mov rdi, 0
    syscall


    ;print on screen
    mov rax, 1
    mov rdi, 1
    mov rsi, job
    mov rdx, length2
    syscall

    ;exit
    mov rax, 60
    mov rdi, 0
    syscall


    ;print on screen
    mov rax, 1
    mov rdi, 1
    mov rsi, age
    mov rdx, length3
    syscall


    ;exit
    mov rax, 60
    mov rdi, 0
    syscall


section .data
    hello_world: db "hello world, I am Aslam", 0xa
    job: db "I am a Pentester", 0xa
    age: db "Twenty", 0xa
    length1: equ $-hello_world  
    length2: equ $-job 
    length3: equ $-age 
