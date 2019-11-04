data segment
        arr db 01h,02h,03h
        res db ?
data ends
code segment
        assume cs:code,ds:data
        start:
        mov ax,data
        mov ds,ax
        mov bl,00h
        lea si,arr
        mov cx,0003h
        up:
                mov al,[si]
                cmp al,bl
                jng back
                mov bl,al
        back:
                inc si
                dec cx
                jnz up

        mov res,bl
        int 03h
code ends
end start
