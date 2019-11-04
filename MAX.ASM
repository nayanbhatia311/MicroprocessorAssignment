data segment

arr db 04h,09h,02h,15h,01h
res db ?
data ends

code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax

mov cx,05h

mov bl,16h
lea si,arr

up:
mov al,[si]
cmp al,bl
jg nxt
mov bl,al

nxt:
inc si
dec cx
jnz up

mov res,bl
int 3h  

code ends
end start
