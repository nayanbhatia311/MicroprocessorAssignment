data segment
no2 dw 9bcdh
no1 dw 123fh
result dw ?
data ends

code segment

assume cs:code, ds: data

start:

mov ax, data
mov ds, ax

mov ax, 0000h
mov cx, 0000h

mov bx, fff9H
add bx, 0006h

mov ax, no1
sub ax, no2



sbb ax, 0000h

sub ax, bx
            
mov result, ax

int 03h

code ends
end start

