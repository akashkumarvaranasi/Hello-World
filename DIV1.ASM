.model small
.data
    res db ?
	a db ?
	b db ?
.code
start:
    mov ax,@data
    mov ds,ax

    mov ah,1h
	int 21h
	sub al,'0'
	mov a,al
	
	mov ah,1h
	int 21h
	
	mov ah,1h
	int 21h
	sub al,'0'
	mov b,al
	
	
	
	mov ah,0
	mov al,a
	mov bl,b
	div bl
	
	mov dl,al
	
	
	add dl,'0'
 
    mov ah,2h
    int 21h

    mov ah,4ch
    int 21h
	
end start
