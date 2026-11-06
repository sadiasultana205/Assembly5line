
.model small ;1 code segment + 1 data segment
.stack 100h ;256 bytes
.data ;input, output

msg db "My first class experience was good.",13,10
    db "I met my teacher.",13,10
    db "I learned about assembly language.",13,10
    db "I met my new classmates.",13,10
    db "I enjoyed my first class.$"

.code ;whole code

main proc
    mov ax,@data
    mov ds,ax ;data seg activate

    lea dx,msg ;string load
    mov ah,9h ;string print
    int 21h ;interrupt

    sadia: ;for exit
    mov ah,4ch
    int 21h ;interrupt

main endp ;procedure end
end main ;whole program end
