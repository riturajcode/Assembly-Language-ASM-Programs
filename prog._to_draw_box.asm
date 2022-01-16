; program to draw box 

.model small         ;defining memory model
.stack 100h          ;defining stack size
.data                ;data section contain constants and variables
.code                ;code section

main proc 

mov ah, 6
mov al, 10

mov bh, 00010000b

mov ch, 0
mov cl, 0
mov dh, 15
mov dl, 15
int 10h 

mov ah, 4ch         ;returning to dos
int 21h             ;terminating program

main endp
end main