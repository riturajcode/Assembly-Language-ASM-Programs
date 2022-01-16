; program to input string and print it 

.model small            ;defining memory model
.stack 100h             ;defining stack size
.data                   ;data section contain constants and variables
var1 db 100 dup('$')    
.code                   ;code secction

main proc 

mov ax, @data
mov ds, ax
mov si, offset var1

L1:
mov ah, 1
int 21h 
cmp al, 13
je programend
mov [si], al
inc si
jmp L1

programend:
mov dx, offset var1
mov ah, 9
int 21h
mov ah, 4ch         ;returning to dos
int 21h             ;terminating program

main endp
end main