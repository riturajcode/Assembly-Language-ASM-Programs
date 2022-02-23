; program to print a name with characters

.model small        ;defining memory model
.stack 100h         ;defining stack size
.data               ;data section contain constants and variables
.code               ;code section
main proc
mov dl, 'r'
mov ah, 2
int 21h

mov dl, 'i'
mov ah, 2
int 21h

mov dl, 't'
mov ah, 2
int 21h

mov dl, 'u'
mov ah, 2
int 21h

mov dl, 'r'
mov ah, 2
int 21h

mov dl, 'a'
mov ah, 2
int 21h

mov dl, 'j'
mov ah, 2
int 21h

mov dl, 'c'
mov ah, 2
int 21h

mov dl, 'o'
mov ah, 2
int 21h

mov dl, 'd'
mov ah, 2
int 21h

mov dl, 'e'
mov ah, 2
int 21h

mov ah, 4ch         ;returning to dos
int 21h             ;terminating program

main endp
end main
