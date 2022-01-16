; program to swap two numbers using push and pop 

.model small        ;defining memory model
.stack 100h         ;defining stack size
.data               ;data section contain constants and variables
.code               ;code section

main proc 
mov ax, '1'
mov bx, '2'

push ax
push bx

pop ax
pop bx

mov dx, ax
mov ah, 2
int 21h

mov dx, bx
mov ah, 2
int 21h

mov ah, 4ch         ;returning to dos
int 21h             ;terminating program

main endp
end main