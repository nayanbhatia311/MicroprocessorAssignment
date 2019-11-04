data segment
block1 db 01h,02h,03h,04h,05h
data ends
extra segment
block2 db 5 dup(?)
extra ends
code segment
assume cs:code, ds:data
start:
mov ax,data
mov ds,ax
mov ax,extra
mov es,ax
lea si,block1
lea di,block2
mov cx,0005h
cld
rep movsb
mov cx,0005h
go:
mov al,[si]
dec si
loop go
int 3h
code ends
end start
