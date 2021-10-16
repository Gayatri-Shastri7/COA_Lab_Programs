data segment
num db 03h
fact db ?
data ends
Assume cs:code,ds:data
code segment
start:mov ax,data
      mov ds,ax
      xor cx,cx
      xor dx,dx
      mov al,num
      
      up:
          dec num
          mul num
          mov cl,num
          cmp cl,01
          jnz up 
         
       mov fact,al
       mov ah,4ch
       int 21h
       code ends
       end start
