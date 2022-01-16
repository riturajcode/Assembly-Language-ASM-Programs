; program to print a single character

dosseg
.model small
.stack 100h
.data
.code
main proc
mov dl, 'R'
mov ah, 2
int 21h
mov ah, 4ch         ;returning to dos
int 21h             ;terminating program
main endp
end main



