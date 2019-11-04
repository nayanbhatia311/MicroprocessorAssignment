data segment
no1 dw 2222h
no2 dw 3333h
result dw ?
data ends

code segment
assume cs:code, ds:data

start:

;initialize data segment
mov ax, data
mov ds, ax

mov ax, no1

mul no2

;lower 16 bit
mov result, ax

;higher 16 bit
mov result+2, dx

int 03h

code ends
end start
