.model small

.data
        n1 db ?
        n2 db ?
        sum db ?

.code
start:
        mov ax,@data
        mov ds,ax

        mov ah,1h
        int 21h
        sub al,'0'
        mov n1,al

        mov ah,1h
        int 21h

        mov ah,1h
        int 21h
        sub al,'0'

        add al,n1
        mov dl,al
 
        mov ah,1h
		int 21h

        mov sum,al
        
        add dl,'0'

        mov ah,2h
        int 21h

        mov ah,4ch
        int 21h
end start
