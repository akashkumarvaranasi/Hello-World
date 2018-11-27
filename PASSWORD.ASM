.model small

.stack

.data
msg db "Enter password: $"
pwd db "ddcolab$"
msg1 db "Valid password$"
msg2 db "Invalid password $"
str db "Enter String (Enter 0 to stop): $"
msg3 db "Number of vowels: $"
.code

mov ax,@data
mov ds,ax

lea dx,msg
mov ah,9h
int 21h
mov cx,0
mov si,0
mov cx,7
check:
cmp cx,0
jle exit
mov ah,1h
int 21h
dec cx
inc si
cmp al,pwd[si-1]
je check
xor dx,dx
mov dl,10
mov ah,2h
int 21h
lea dx,msg2
mov ah,9h
int 21h
jmp next
exit:
xor dx,dx
mov dl,10
mov ah,2h
int 21h
lea dx,msg1
mov ah,9h
int 21h

next:

xor dx,dx
mov dl,10
mov ah,2h
int 21h
lea dx,str
mov ah,9h
int 21h

mov cl,0
input:
mov ah,1h
int 21h
cmp al,30h
je finexit
cmp al,'a'
je count
cmp al,'e'
je count
cmp al,'i'
je count
cmp al,'o'
je count
cmp al,'u'
je count
cmp al,'A'
je count
cmp al,'E'
je count
cmp al,'I'
je count
cmp al,'O'
je count
cmp al,'U'
je count
jmp input
count:
inc cl
jmp input
finexit:
mov dl,10
mov ah,2h
int 21h
lea dx,msg3
mov ah,9h
int 21h
xor dx,dx
add cl,30h
mov dl,cl
mov ah,2h
int 21h

mov ah,4ch
int 21h
end
