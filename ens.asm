.model small
.stack 100h
.data

mensaje1 db 10, 13, "Ingrese mensaje: $"
salto_linea db 10, 13, "$"  ; Salto de línea
buffer db 100               ; Tamaño máximo de la cadena
        db ?                ; Tamaño real de la cadena ingresada
        db 100 dup(?)       ; Espacio para los caracteres

.code
main proc
    ; Inicializar segmento de datos
    mov ax, @data
    mov ds, ax

    ; Mostrar mensaje para el usuario
    mov ah, 09h
    lea dx, mensaje1
    int 21h

    ; Leer cadena desde teclado usando la función 0Ah
    mov ah, 0Ah           ; Función para leer cadena
    lea dx, buffer        ; Dirección de la estructura de la cadena
    int 21h

    ; Imprimir salto de línea
    mov ah, 09h
    lea dx, salto_linea   ; Cargar dirección del salto de línea
    int 21h

    ; Mostrar la cadena leída
    ; buffer+2 porque los primeros dos bytes son el tamaño máximo y el tamaño real
    mov ah, 09h
    lea dx, buffer + 2    ; Dirección de la cadena sin los primeros 2 bytes
    int 21h

    ; Terminar programa
    mov ax, 4C00h         ; Terminar con código de salida 0
    int 21h

main endp
end main
