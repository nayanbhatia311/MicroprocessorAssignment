data segment
no1 dw 9998h
no2 dw 9999h
result dw ?
data ends

code segment
assume cs:code, ds:data
start:

;initialize data segnment
mov ax, data
mov ds, ax

;clear contents of ax,cx register
mov ax, 0000h
mov cx, 0000h

mov ax, no1
add ax, no2

adc cx, 0000h

mov result,ax

int 3h
code ends
end start


