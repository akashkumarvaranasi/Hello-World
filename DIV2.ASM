.model small
.data
    a dw 96
    b dw 2
	t db ?
.code
start:
    mov ax,@data
    mov ds,ax

	
    mov ax,a
    mov bx,b
	
	mov dx,0
    div bx
	
	aam
	
	mov t,al
	
    mov dl,ah
	add dl,'0'
    mov ah,2h
    int 21h
  
    mov dl,t
	add dl,'0'
    mov ah,2h
    int 21h



	

    mov ah,4ch
    int 21h
end start
