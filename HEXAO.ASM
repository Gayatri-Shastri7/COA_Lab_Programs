ASSUME CS:CODE, DS:DATA
DATA SEGMENT 
LIST DW 53H, 25H, 19H, 02H
COUNT EQU 04H
DATA ENDS

CODE SEGMENT
START:	    MOV AX, DATA
            MOV DS, AX
            MOV DX, COUNT-1
AGAIN0:     MOV CX, DX
            MOV SI, OFFSET LIST
AGAIN1:     MOV AX, [SI]
 	    CMP AX, [SI+2]
            JI PRI
            XCHG [SI+2], AX
            XCHG [SI], AX
PR1:        ADD SI, 02
            LOOP AGAIN1
            DEC DX
            JNZ AGAIN0
            MOV AH, 4CH
            INT 21H
CODE        ENDS
            END START        
