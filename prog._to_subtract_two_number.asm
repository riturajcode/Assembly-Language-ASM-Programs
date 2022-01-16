; program to subtract two number

.model small        ;defining memory model
.stack 100h         ;defining stack size
.data               ;data section contains constants and variables
.code               ;code section

main proc
mov bl, 3
mov cl, 1
sub bl, cl
add bl, 48

mov dl, bl
mov ah, 2
int 21h

mov ah, 4ch         ;returning to dos
int 21h             ;terminating program

main endp
end main