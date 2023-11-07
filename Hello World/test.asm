extern scanf, printf
global main

section .bss
    ;variable declaration
    
section .data
    ;constants
    hello: db "Hello World!", 10 ;string to be printed
    helloLen: equ $-hello ;length of hello string

section .text
    global _start
    _start:
        mov rax, 1 ;system call for write
        mov rdi, 1 ;file descriptor 1 is stdout
        mov rsi, hello ;address of string to output
        mov rdx, helloLen ;number of bytes to write
        syscall ;invoke operating system to do the write

        mov rax, 60 ;system call for exit
        xor rdi, rdi ;exit code 0
        syscall ;invoke operating system to exit