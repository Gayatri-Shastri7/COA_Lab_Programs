ASSUME CS:CODE, DS:DATA
DATA SEGMENT

    NUM DW 0006H
    FACT DW ?

DATA ENDS
CODE SEGMENT
    START: MOV AX,DATA
           MOV DS,AX
           XOR AX,AX
           XOR CX,CX
           MOV AX,0001H
           MOV CX,NUM
           CALL FACTORIAL
           MOV FACT,AX
           JMP DOWN
           FACTORIAL PROC NEAR
        UP:MUL CX
           LOOP UP
        RET
        FACTORIAL ENDP
        DOWN: MOV AH,4CH
              INT 21H
              CODE ENDS
              END START


