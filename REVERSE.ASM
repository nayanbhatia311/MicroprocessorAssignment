print macro mes
mov ah,09h
lea dx,mes
int 21h
endm

.model small
.data
msg1 db 0ah,0dh,"Enter string: $"
msg2 db 0ah,0dh,"$"
msg3 db 0ah,0dh,"reverse of string is $"

buff db 81
     db 0
     db 81 dup(0)

.code
start:
mov ax,@data
mov ds,ax

print msg1
mov ah,0ah
lea dx,buff
int 21h

mov ch,00
mov cl,buff+1
lea bx,buff
inc bx
mov di,cx
print msg2
print msg3

back:
mov ah,02h
mov dl,[bx+di]
int 21h
dec di
jnz back

mov ah,4ch
int 21h

end start

