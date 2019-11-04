data segment
no1low dw 2222h
no1high dw 3333h
no2 dw 4444h
quotient dw ?
remainder dw ?
data ends

code segment
assume ds:data, cs:code

start:

mov ax, data
mov ds, ax

mov bx, no2

mov ax, no1low
mov dx, no1high

div bx

mov quotient, ax
mov remainder, dx

int 03h
code ends
end start

