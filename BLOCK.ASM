data segment
blockd db 01h,02h,03h,04h,05h,06h,07h,08h,09h,10h
data ends

extra segment
blocke db 10 dup(?)
extra ends

code segment
assume cs:code,ds:data,es:extra

start:

mov ax,data
mov ds,ax

mov ax,extra
mov es,ax

mov ax,0000h

lea si,blockd
lea di,blocke

mov cx,000ah

cld

rep movsb


;check
mov cx,000ah
lea di, blocke

go:
mov al,[di]
inc di
loop go
int 3h 
code ends
end start

go:
mov al,[di]

