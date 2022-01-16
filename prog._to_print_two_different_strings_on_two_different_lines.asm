; program to print two different strings on two different lines

.model small            ;defining memory model
.stack 100h             ;defining stack size
.data                   ;data section contains constants and variables
msg1 db "rituraj$"
msg2 db "code$"
.code                   ;code section
main proc 
mov ax, @data
mov ds, ax
mov dx, offset msg1
mov ah, 9
int 21h

mov dx ,10
mov ah, 2
int 21h

mov dx, offset msg2
mov ah, 9
int 21h

mov ah, 4ch             ;returning to dos
int 21h                 ;terminating program

main endp
end main


;@riturajcode