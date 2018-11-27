.model small
.data
	msg db 1,9,4,6,7,0
	msg1 db 10,13,"sorted array:$"
	len dw 6
	newline db 32
.code
	mov ax,@data
	mov ds,ax
	dec len
	mov cx,len
	A:
		mov bx,cx
		mov si,0
	B:
		mov al,msg[si]
		mov dl,msg[si+1]
		cmp dl,al
		jnc c
		mov msg[si],dl
		mov msg[si+1],al
	C:
		inc si
		dec bx
		jnz B
	loop A
	inc len
	mov si,0
	mov cx,len
	lea dx,msg1
	mov ah,9h
	int 21h
	
	print:	mov dl,msg[si]
			add dl,'0'
			mov ah,2h
			int 21h
			mov dl,newline
			mov ah,2h
			int 21h
			inc si
	loop print
	mov ah,4ch
	int 21h
end