ASSUME CS:CODE,DS:DATA
DATA SEGMENT
     N1 DB 00H
     N2 DB 01H
     COUNT EQU 09H
     FIB DB 09 DUP(00)
DATA ENDS
CODE SEGMENT
START: MOV AX,DATA
       MOV DS,AX
       XOR CX,CX
       MOV CL,COUNT
       MOV AL,N1
       MOV BL,N2
       LEA SI,FIB
UP:CALL FIBONACCI
   MOV [SI],DL
   INC SI
   LOOP UP
   MOV AH,4CH
   INT 21H
            FIBONACCI PROC
             ADD AL,BL
             MOV DL,AL
             MOV AL,BL
             MOV BL,DL
            RET
            ENDP
CODE ENDS
END START

