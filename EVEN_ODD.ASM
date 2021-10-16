ASSUME CS:CODE, DS:DATA
DATA SEGMENT

LIST DW 0001H,0002H,0003H,0004H
COUNT EQU 04H
EVENCOUNT DW ?
ODDCOUNT DW ?
DATA ENDS

CODE SEGMENT
START:      XOR BX,BX
            XOR DX,DX
            MOV AX, DATA
            MOV DS, AX
            MOV CL,COUNT
            MOV SI,OFFSET LIST
AGAIN:      MOV AX, [SI]
            ROR AX, 01
            JC ODD
            INC BX
            JMP NEXT
ODD:        INC DX
NEXT:       ADD SI,02
            DEC CL
            JNZ AGAIN
            MOV EVENCOUNT,BX
            MOV ODDCOUNT,DX
            MOV AH, 4CH
            INT 21H
            CODE ENDS
            END START
