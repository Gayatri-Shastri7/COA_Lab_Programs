data segment
x db 02h
y db 03h
w db 04h
v db 05h
u db 02h
z db ?
data ends
Assume cs:code, ds:data
code segment
start:mov AL,data
      mov DL,AL
      xor AX,AX
      xor BX,BX
      xor DX,DX
      mov AL,x
      mov BL,y
      mul BL
      mov DL,AL
      mov AL,u
      mov BL,k
      div BL
      mov BL,k
      mov DL,k
      Add DL,BL
      mov BL,v
      sub DL,BL
      add DL,BL
      mov z,DL
      code ends
      code start

