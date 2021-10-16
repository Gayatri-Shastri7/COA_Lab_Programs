ASSUME CS:CODE ,DS:DATA
DATA SEGMENT
        RES DB 00H
        STR DB 'MALYALAM'
        LEN EQU 09H
DATA ENDS
CODE SEGMENT
STRAT:
      MOV AX,DATA
      XOR AX,AX,XOR CX,CX
      XOR BX,X
      MOV BL,02H
      DIV BL
      MOV CL,AL
      MOV SI,OFFSET STR
      MOV DI,OFFSET STR
      MOV DI, OFFSET STR+LEN-1

UP:   MOV AL,[SI]
      MOV BL,[DI]
      CMP AL, BL
      JZ DOWN
      MOV RES, 01H
      JMP DOWN1

DOWN: INC SI
      DEC DI
      LOOP GO UP

DOWN1: MOV AH,4CH
       INT 21H
       CODE ENDS
       END START

     
       
   
