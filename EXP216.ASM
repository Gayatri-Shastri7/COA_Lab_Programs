DATA SEGMENT
B DW 0001H
C DW 0001H
D DW 0001H
E DW 0001H
A DW ?
DATA ENDS
ASSUME CS:CODE,DS:DATA
CODE SEGMENT
START: MOV AX,DATA
       MOV DS,AX
       XOR AX,AX
       XOR BX,BX
       MOV AX,D
       MOV BX,E
       MUL BX
       MOV BX,B
       MOV CX,C
       ADD BX,CX
       SUB BX,AX
       MOV A,BX
       MOV AH,4CH
       INT 21H
       CODE ENDS
       END START

