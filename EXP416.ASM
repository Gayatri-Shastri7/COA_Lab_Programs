assume cs:code, ds:data
data segment
x dw 0013h
y dw 1111h
v dw 1234h
u dw 0002h
k dw 0002h
z dw ?
data ends
code segment
start:mov ax,data
      mov ds,ax
      xor ax,ax
      xor dx,dx
      xor cx,cx
      mov ax,x
      mov bx,y
      mul bx
      mov dx,ax
      mov ax,u
      mov bl,k
      div bl
      mov bx,w
      add dx,bx
      mov bx,v
      sub dx,bx
      add ax,dx
      mov z,ax
      mov ah,4ch
      int 21h
      code ends
      end start
      int 21h
      code ends
      end start
