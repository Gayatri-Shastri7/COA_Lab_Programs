ASSUME CS:CODE, DS:DATA
DATA SEGMENT
        STR1 DB "ASSMBLY$"
        LEN DB ?
DATA ENDS
CODE SEGMENT
START: MOV AX, DATA
       MOV DS, AX
       XOR CX,CX
       MOV SI,OFFSET STR1
BACK:  CMP AL,[SI]
       JE GO
       INC CL
       INC SI
       JMP BACK
GO:    MOV LEN,CL
       MOV AH,4CH
       CODE ENDS
       END START
