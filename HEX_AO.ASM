ASSUME CS:CODE, DS:DATA
DATA SEGMENT 
LIST DW 23H, 79H, 22H, 91H
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
            XCHG [SI],AX
PRI:        ADD SI, 02
            LOOP AGAIN1
            DEC DX
            JNZ AGAIN0
            MOV AH, 4CH
            INT 21H
            CODE ENDS
            END START        
