data segment
        arr db 03h,02h,01h
        max db 00h
data ends
code segment
        assume cs:code, ds:data
        start:
                mov ax,data
                mov ds,ax
                mov ch,02h
                inner:
                        mov cl,02h
                        lea si,arr
                        compare:
                                mov al,[si]
                                mov bl,[si+1]
                                cmp al,bl
                                jc outer
                                mov dl,[si+1]
                                xchg [si],dl
                                mov [si+1],dl
                       outer:
                                inc si
                                dec cl
                                jnz compare
                                dec ch
                                jnz inner
                                jz kartik
                        kartik:
                                mov ch,02h
                                kartik1:
                                        mov ch,02h
                                        lea si,arr
                                        kartik2:
                                                mov al,[si]
                                                cmp max,al
                                                jnc kartik3
                                                mov max,al
                                        kartik3:
                                                inc si
                                                dec cl
                                                jnz kartik2
                                                dec ch
                                                jnz kartik1

                                        mov bl,max


                int 03h
        code ends
        end start

