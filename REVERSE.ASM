.model small
.data
  str db 'hello nitk','$'  
  len dw $-str
  rev db 30 dup(' ')

.code
start:
    
    mov ax, @data
    mov ds, ax
	
	
    
	mov es, ax
    mov cx, len
    add cx, -1
    lea si, str
    lea di, rev
    add si, len
    add si, -2
    mov dx,0
	; string reversal code
	revbeg:
	
       mov al, [si]
       mov [di], al
       dec si
       inc di
	   dec cx
	   jnz revbeg
	   
	  
	
	inc di
	
	; enter  a null character
	mov dl, '$'
	mov [di], dl   
	
	; printing reversed string
	lea dx, rev
	mov ah, 09h
	int 21h

	mov ax, 4c00h
	int 21h
	
end start
