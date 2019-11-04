.model small

.data

;create lookup table 
lookuptable db 23h, 34h, 45h, 67h, 76h, 12h, 70h, 11h

; choose key
key db 00h

.code

start:

;initialize data segment
mov ax, @data
mov ds,ax

mov ax, 0000h
mov bx, 0000h

mov bx, offset lookuptable
mov al, key

xlatb   ; adds the offset of lookup table in bx and key in al to access the memory location oflookup table


int 03h
end start
