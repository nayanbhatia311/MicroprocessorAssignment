code segment
assume cs:code
start:
mov cl,1Ah
mov dl,65

loop1:
mov ah,02h
int 21h
inc dl
dec cl
jnz loop1

mov ah,4ch
int 21h
code ends
end start
