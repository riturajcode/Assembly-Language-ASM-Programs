; program to print 0 to 9

.model small        ;defining memory model
.stack 100h         ;defining stack size
.data               ;data section contain constants and varibles
.code               ;code section
main proc 

mov cx, 10
mov dx, 48

L1:
mov ah, 2
int 21h

Add dx, 1

Loop L1

mov ah, 4ch         ;returning to dos
int 21h             ;terminating program

main endp
end main