; program to print an array using loop 

dosseg
.model small
.stack 100h
.data
array db 'a','b','c'
.code
main proc 
mov ax, @data
mov ds, ax

mov si, offset array
mov cx, 3

L1:
mov dx, [si]
mov ah, 2
int 21h
inc si
loop L1
mov ah, 4ch         ;returning to dos
int 21h             ;terminating program
main endp
end main