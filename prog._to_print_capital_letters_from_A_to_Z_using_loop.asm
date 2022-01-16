; program to print capital letters from A to Z using loop

.model small            ;defining memory model
.stack 100h             ;defining stack size
.data                   ;data section contain constants and variables
.code                   ;code section
main proc 

mov cx, 26
mov dx, 65

L1:

mov ah, 2
int 21h

inc dx

Loop L1

mov ah, 4ch
int 21h

main endp
end main