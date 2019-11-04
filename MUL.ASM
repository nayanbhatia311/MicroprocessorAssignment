data segment
        no1 dw 1010h
        no2 dw 1010h
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
                mul no2
                mov res,ax
                mov res+2,dx
                int 3h
code ends
end start
                

