PRINT MACRO MES
        MOV AH,09H
        LEA DX,MES
        INT 21H
        INT 3H
ENDM

DATA SEGMENT
        BLOCK1 DB "NAYAN"
        MSG1 DB "PALINDROM STRING$"
        MSG2 DB "NOT PALINDROME STRING$"
        PAL DB 00H
DATA ENDS
EXTRA SEGMENT
        BLOCK2 DB 5 DUP(?)
EXTRA ENDS
CODE SEGMENT
        ASSUME CS:CODE, DS:DATA, ES:EXTRA
        START:
                MOV AX,DATA
                MOV DS,AX

                MOV AX,EXTRA
                MOV ES,AX

                LEA SI,BLOCK1
                LEA DI, BLOCK2+4
                MOV CX,05H
                BACK:
                CLD
                LODSB
                STD
                STOSB
                LOOP BACK
                LEA SI, BLOCK1
                LEA DI, BLOCK2
                MOV CX,05H
                CLD
                REPZ CMPSB
                JNZ SKIP
                        MOV PAL,01H
                        PRINT MSG1
                SKIP:
                        PRINT MSG2

         CODE ENDS
END START
