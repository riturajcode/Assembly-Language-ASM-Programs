; program to input two numbers and add them

.model small        ;defining memory model
.stack 100h         ;defining stack size
.data               ;data section contain constants and varibles
.code               ;code section

main proc

mov ah, 1
int 21h
mov bl, al
mov al, 1
int 21h
add bl, al
sub bl, 48
mov dl, bl

mov ah,2
int 21h

mov ah, 4ch         ;returning to dos
int 21h             ;terminating program

main endp
end main