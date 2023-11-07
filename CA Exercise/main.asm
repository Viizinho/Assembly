section .data
    message db “O resultado eh = %d”, 0AH, 0H
    request db “Digite o numero: “, 0H
    formatin db “%d”, 0H

section .bss
    nota1: resd 1
    nota2: resd 1
    nota3: resd 1
    media: resd 1

section .text
    main:
        push request
        call printf
        add esp, 4

        push nota1
        push formatin
        call scanf
        add esp, 8

        push nota2
        push formatin
        call scanf
        add esp, 8

        push nota3
        push formatin
        call scanf
        add esp, 8

        

        

