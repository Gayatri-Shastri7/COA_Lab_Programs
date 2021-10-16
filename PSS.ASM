ASSUME CS:CODE, DS:DATA
DATA SEGMENT

    RES DB 00H
    STR1 DB "GNITS$"
    STR2 DB "NAT$"
    LEN1 DB 06H
    LEN2 DB 03H

DATA ENDS

CODE SEGMENT
     START: MOV AX,DATA
            MOV DS,AX
            XOR AX,AX
            XOR CX,CX
            XOR DX,DX
            MOV SI, OFFSET STR1
            MOV DI, OFFSET STR2
            MOV CL,LEN1
            MOV DL,LEN2
        UP: MOV AL,[DI]
       UP1: CMP AL,[SI]
            JE DOWN
            INC SI
            DEC CL
            JNZ UP1
            MOV RES,00H
            JMP EXIT
       DOWN:INC SI
            INC DI
            DEC DL
            JNZ UP1
       EXIT:MOV RES,01H
            MOV AH,4CH
            INT 21H
            CODE ENDS
            END START

