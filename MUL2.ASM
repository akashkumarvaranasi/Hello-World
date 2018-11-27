.model small
.data
    a dw 13
    b dw 5
	c db ?
.code
start:
    mov ax,@data
    mov ds,ax

    mov ax,a
    mov bx,b
    mul bx
	
	aam
	
	mov c,al
	
    mov dl,ah
	add dl,'0'
    mov ah,2h
    int 21h
  
    mov dl,c
	add dl,'0'
    mov ah,2h
    int 21h

	
    mov ah,4ch
    int 21h
end start
