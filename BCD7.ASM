data segment
        lookup db 0Ah,0Bh,0Ch,0Dh,0Eh,0Fh,10h
        key db 01h
data ends
code segment
        assume cs:code, ds:data
        start:
                mov ax,data
                mov ds,ax
                mov bl, offset lookup
                mov al,key
                xlat
                int 3h
code ends
end start
