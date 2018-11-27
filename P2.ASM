.model small
.data

    n dw 40
    y dw 30
   

.code
start:
    mov ax,@data
    mov ds,ax

    mov al,n
    add al,y

    mov dl,al

    mov ah,2h
    int 21h

    mov ah,4ch
    int 21h
end start
