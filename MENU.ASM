.model small

; define size of stack
.stack 100h

.data
main_menu db "menu",0ah,0dh
          db "Additon",0ah,0dh
          db "Subtraction",0ah,0dh
          db "Exit",0ah,0dh

msg1 db 0ah,0dh, "Enter your choice: $"
msg2 db 0ah,0dh, "Enter first no: $"
msg3 db 0ah,0dh, "Enter second no: $"
msg4 db 0ah,0dh, "$"
msg5 db 0ah,0dh, "Result: $"

choice db ?
no1 db ?
no2 db ?
result db ?

.code
mov ax, @data
mov ds,ax

start:



mov dx, offset main_menu


mov ah,09h
mov dx, offset msg1
int 21h

mov ah,01h
int 21h
mov choice,al

cmp choice,'a'
je addr

cmp choice,'s'
je subtr

cmp choice,'e'
je ex


addr:
mov ah,09h
mov dx, offset msg2
int 21h

mov ah,01h
int 21h
mov no1,al

mov ah,09h
mov dx, offset msg3
int 21h

mov ah,01h
int 21h
mov no2,al

mov ah,09h
mov dx, offset msg4
int 21h

mov ah,09h
mov dx, offset msg5
int 21h

mov al, no1
mov bl, no2
add al,bl

aaa
or ax,3030h

mov ah, 0eh
int 10h

mov ah,4ch
int 21h

subtr:

mov ah,09h
mov dx, offset msg2
int 21h

mov ah,01h
int 21h
mov no1, al

mov ah,09h
mov dx, offset msg3
int 21h

mov ah, 01h
int 21h
mov no2,al

mov ah,09h
mov dx, offset msg5
int 21h

mov al, no1
mov bl, no2
sub al,bl
aas
or ax,3030h

mov ah,0eh
int 10h

mov ah,4ch
int 21h

ex:
mov ah,4ch
int 21h

end start
