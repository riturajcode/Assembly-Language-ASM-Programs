; program to divide two numbers

.model small        ;defining memory model
.stack 100h         ;defining stack size
.data               ;data section contain constants and variables
q db ?
r db ?
.code               ;code section
main proc 

mov ax, 26
mov bl, 5
div bl
mov q, al
mov r, ah

mov dl, q
add dl, 48

mov ah, 2
int 21h

mov dl, r
add dl, 48
mov ah, 2
int 21h

mov ah, 4ch         ;returning to dos
int 21h             ;terminating program


main endp
end main
