.model small
.data
    prod db ?
.code
start:
    mov ax,@data
    mov ds,ax

    mov ah,1h
	int 21h
	sub al,'0'
	mov bl,al
	
	mov ah,1h
	int 21h
	
	mov ah,1h
	int 21h
	sub al,'0'
	mul bl
	mov prod,al
	
	mov dl,10
    mov ah,2h
    int 21h
	
    mov dl,prod
	add dl,'0'
 
    mov ah,2h
    int 21h

    mov ah,4ch
    int 21h
end start
