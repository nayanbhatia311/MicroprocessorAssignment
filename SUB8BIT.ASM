data segment
no1 db 55h
no2 db 22h
result db ?
data ends

code segment
assume ds:data, cs:code

start:

;initialize data segment
mov ax, data
mov ds, ax

;clear contents of ax
mov ax, 0000h
mov al, no1
sub al, no2
mov result, al

int 3h

code ends
end start
