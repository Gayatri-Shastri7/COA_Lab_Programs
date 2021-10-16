data segment
fact eq 03h
res db ?
data ends
Assume cs:code,ds:data
code segment
start:mov ax,data
      mov ds,ax
      xor ax,ax
      xor bx,bx
      mov al,fact
      mov bl,fact-1
      
      up: mul bl
          dec bl
         jnz up 
         
       mov res,ax
       mov ah,4ch
       int 21h
       code ends
       end start
