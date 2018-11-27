.model small
.data
		str db 'aeroplane'
        ltrcount db 0
        count dw 9
		msg1 db 'Enter letter to count :','$'
		msg2 db 'No. of entered letter :','$'
		
.code
        mov ax,@data
        mov ds,ax
        mov si,0
		mov cx,count
		
		lea dx,msg1
		mov ah,9h
		int 21h
   

		mov ah,1h
		int 21h
		mov bl,al
		
		lp:
        mov al,str[si]
        cmp al,bl
        je incc
        back:
        inc si
        loop lp
        jmp Print
		incc:
		inc ltrcount
		jmp back

        Print:
        
		mov dl,10
		mov ah,2h
		int 21h
		
		lea dx,msg2
		mov ah,9h
		int 21h
		
		mov dl,ltrcount
        add dl,'0'
        mov ah,2h
        int 21h
        
		mov ah,4ch
        int 21h
        end