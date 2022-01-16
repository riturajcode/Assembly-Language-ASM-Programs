; program to reverse a string

.model small                ;defining memory model
.stack 100h                 ;defining stack size
.data                       ;data section contain constants and variables
string db "rituraj"
.code                       ;code section
main proc 
mov ax, @data
mov ds, ax
mov si, offset string
mov cx, 7

L1:
mov bx, [si]
push bx
inc si 
loop L1
mov cx, 7

L2:
pop dx
mov ah, 2
int 21h
loop L2
mov ah, 4ch                 ;returning to dos
int 21h                     ;terminating program

main endp
end main


;@riturajcode