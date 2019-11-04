data segment
no1 db 22h
no2 db 33h
result db ?
data ends

code segment

assume cs:code, ds:data

start:

;initialize data segment
mov ax,data
mov ds,ax

mov ax, 0000h
mov al, no1
add al, no2
mov result, al

;breakpoint interrupt
int 3h

code ends

end start
