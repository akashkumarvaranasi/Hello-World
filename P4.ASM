.model small
.data

    n dw 75
    y dw 10
   

.code
start:
    mov ax,@data
    mov ds,ax

    mov bx,n
    sub bx,y

    mov dx,bx

    mov ah,2h
    int 21h

    mov ah,4ch
    int 21h
end start
