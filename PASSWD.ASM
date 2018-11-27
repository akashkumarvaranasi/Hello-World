.model small
.data
	str1 db 'password','$'
	msg1 db 'Password accepted!','$'
	msg2 db 'Wrong password entered!','$'
	
.code
start:
	mov ax,@data
	mov dx,ax
	
	lea si,str1
	mov cx,8
	
	lp:
	mov ah,1h
	int 21h
	cmp ah,[si]
	jne inv
	inc si
	loop lp
	jmp val

	
	
	inv:
	mov dx,offset msg2
	mov ah,9h
	int 21h
	jmp eof
	
	val:
	mov dx,offset msg1
	mov ah,9h
	int 21h
	
	eof:
	mov ah,4ch
	int 21h
	
end start