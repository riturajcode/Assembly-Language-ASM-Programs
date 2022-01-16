; program to show the use of procedure

.model small                ;defining memory model
.stack 100h                 ;defining stack size
.data                       ;data section contain constants and variables
str1 db "hello$"
str2 db "i am rituraj$"
str3 db "a programmer$"
.code                       ;code section

main proc
mov ax, @data
mov ds, ax
mov dx, offset str1
mov ah, 9
int 21h
call enterkey
mov dx, offset str2
mov ah, 9
int 21h
call enterkey
mov dx, offset str3
mov ah, 9
int 21h
mov ah, 4ch                 ;returning to dos
int 21h                     ;terminating program
main endp

enterkey proc 
mov dx, 10
mov ah, 2
int 21h
mov dx, 13
mov ah, 2
int 21h
ret
enterkey endp

end main


;@riturajcode