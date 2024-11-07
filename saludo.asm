.model small
.stack
.data

mensaje1 db 10,13,7,"Resultado de la pila:  ","$"
espacio db 10,13,7,"   ","$"

.code
main proc
    ; Inicialización del segmento de datos
    mov ax, SEG @data
    mov ds, ax

    ; Mostrar mensaje inicial
    mov ah, 09h
    lea dx, mensaje1
    int 21h

    ; Cargar los valores en registros y colocarlos en la pila en orden inverso
    mov ax, 'a'    ; Letra a
    push ax
    mov ax, 0A1h   ; Letra í (ASCII extendido)
    push ax
    mov ax, 'd'    ; Letra d
    push ax
    mov ax, ' '    ; Espacio
    push ax
    mov ax, 'n'    ; Letra n
    push ax
    mov ax, 'e'    ; Letra e
    push ax
    mov ax, 'u'    ; Letra u
    push ax
    mov ax, 'B'    ; Letra B
    push ax

    ; Mostrar espacio
    mov ah, 09h
    lea dx, espacio
    int 21h

    ; Extraer y mostrar cada valor desde la pila en el orden correcto
    pop ax
    mov ah, 0Eh
    int 10h       ; Muestra el carácter en AL (letra B)

    pop ax
    mov ah, 0Eh
    int 10h       ; Muestra el carácter en AL (letra u)

    pop ax
    mov ah, 0Eh
    int 10h       ; Muestra el carácter en AL (letra e)

    pop ax
    mov ah, 0Eh
    int 10h       ; Muestra el carácter en AL (letra n)

    pop ax
    mov ah, 0Eh
    int 10h       ; Muestra el carácter en AL (espacio)

    pop ax
    mov ah, 0Eh
    int 10h       ; Muestra el carácter en AL (letra d)

    pop ax
    mov ah, 0Eh
    int 10h       ; Muestra el carácter en AL (letra í)

    pop ax
    mov ah, 0Eh
    int 10h       ; Muestra el carácter en AL (letra a)

    ; Terminar el programa
    mov ax, 4C00h
    int 21h

main endp
end main
