.model small
.stack 100h
.data
	n db 11h,99h,22h,88h,33h,77h,44h,66h
	cnt dw 8h
.code
start:
	mov ax,@data
	mov ds,ax
	
	mov cx,cnt
	dec cx
	
	nsc:
		mov bx ,cx
		mov si,0
	nco:
		mov al,n[si]
		mov dl,n[si+1]
		cmp al,dl
		jnc nsw
		mov n[si],dl
		mov n[si+1],al
			
	nsw:
		inc si
		dec bx
		jnz nco
		loop nsc
			
	mov ah,4ch
	int 21h
	end start