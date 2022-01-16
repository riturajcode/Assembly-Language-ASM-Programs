; program to convert capital letter to small letter

.model small   ;defining memory model    
.stack 100h    ;defining stack size
.data          ;data section contain constants and variables
.code          ;code section
main proc

mov ah, 1      ;taking input
int 21h
mov dl, al     ;moving input to dl register
add dl, 32     ;adding 32 to get ASCII value of small letter
mov ah, 2      ;'2' is used to pring single character
int 21h        ;calling interrupt to print it to screen

mov ah, 4ch    ;returning to dos
int 21h        ;terminating program

main endp
end main
