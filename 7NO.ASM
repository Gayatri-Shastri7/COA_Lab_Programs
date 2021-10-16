ASSUME CS:CODE, DS:DATA
DATA SEGMENT
        NUM DW 07H
        FACT1 DW ?
DATA ENDS
CODE SEGMENT
START:
        MOV AX,DATA
        MOV DS,AX
        XOR AX,AX
        XOR BX,BX
        MOV CX,NUM
        MOV AX,0001

AGAIN0: MUL CX
        LOOP UP
        MOV FACT1,AX

        MOV AH,4CH
        INT 21
CODE ENDS
END START


