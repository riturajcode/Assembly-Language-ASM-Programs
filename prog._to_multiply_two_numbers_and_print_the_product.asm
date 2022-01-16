; program to multiply two numbers and print the product

.model small        ;defining memory model
.stack 100h         ;defining stack size
.data               ;data section contain constants and variables
.code               ;code section

main proc  

mov al, 5
mov bl, 2
mul bl
AAM
mov ch, ah 
mov cl, al

mov dl, ch
add dl, 48
mov ah, 2
int 21h
mov dl, cl
mov dl, 48
mov ah, 2
int 21h

mov ah, 4ch         ;returning to dos
int 21h             ;terminating program

main endp
end main