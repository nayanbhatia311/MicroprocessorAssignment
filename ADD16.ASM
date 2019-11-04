data segment
        no1 dw 9999h
        no2 dw 9999h
        res dw ?
data ends
code segment
        assume cs:code, ds:data
        start:
        mov ax,data
        mov ds,ax
        mov ax,0000h
        mov bx,0000h
        mov ax,no1
        mov bx,no2
        add ax,bx
        mov res,ax
        mov cx,0000h
        adc cl,00h
        int 3h
code ends
end start

