data segment
arr db  22h,33h,11h
data ends
code segment
assume cs:code,ds:data

start:
mov ax,data
mov ds,ax
mov ch,02h

b:
mov cl,02h
lea si,arr

a1:
mov al,[si]
mov bl,[si+1]
cmp al,bl
jc down
mov dl,[si+1]
xchg [si],dl
mov [si+1],dl

down:
inc si
dec cl
jnz a1
dec ch
jnz b

mov ah,0eh
lea dx,arr
int 10h

int 3h

code ends
end start

