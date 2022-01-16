; program to add two numbers

.model small   ;defining memory model
.stack 100h    ;defining stack size
.data          ;data section contain constants and variables
.code          ;code section

main proc

mov bl, 4      ;bl register is pointing to 4
mov cl, 3      ;cl register is pointing to 3

add bl, cl     ;adding bl, cl 
add bl, 48     ;adding 48 to get ASCII value of answer

mov dl, bl     ;moving answer into dl register for printing
mov ah, 2      ;"2" is used to print single charater
int 21h        ;calling interrupt to print it to screen

mov ah, 4ch    ;returning to dos
int 21h        ;terminating program

main endp
end main