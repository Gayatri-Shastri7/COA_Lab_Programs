ASSUME CS:CODE, DS:DATA
DATA SEGMENT
          RES DB 00H
          MSTR DB 'GNITSW'
          SSTR DB 'NAT'
          MLEN DB 06H
          SLEN DB 03H
DATA ENDS
CODE SEGMENT
START:
      MOV AX,DATA
      MOV DS,AX
      XOR CX,CX
      XOR DX,DX
      MOV SI, OFFSET MSTR
      MOV BX,SI
      MOV DI, OFFSET SSTR
      MOV CL,MLEN
      MOV DL,SLEN
UP:   MOV AL,[BX]
      CMP AL,[DI]
      JNE DOWN
      INC BX
      INC DI
      DEC DL
      JNZ UP
      JMP DOWN1
DOWN: INC SI
      MOV BX,SI
      MOV DI,OFFSET SSTR
      MOV DL,SLEN
      DEC CL
      JNZ UP
      MOV RES,01H
DOWN1:MOV AH,4CH
      INT 21H
      CODE ENDS
      END START


