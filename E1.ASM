data segment
        no1 db 99H
        no2 db 99H
        res db ?
data ends
code segment
        assume cs:code, ds:data
        start:
        mov ax,data             
        mov ds,ax
        mov ax,0000h
        mov al,no1
        mov bl,no2
        mov cx,00h
        add al,bl
        adc cl,00h
        int 3h
code ends
end start
