; program to input a character from user and print it

.model small    ;defining memory model
.stack 100h     ;defining stack size
.data           ;data section contain constants and variables
.code           ;code section

main proc

mov ah, 1
int 21h

mov dl,al 
mov ah, 2
int 21h

mov ah, 4ch         ;returning to dos
int 21h             ;terminating program

main endp
end main