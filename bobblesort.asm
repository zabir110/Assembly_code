
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
array dw 7,5, 4, 1, 9 ,3

.code

mov cx,5
mov  dx,5
        
        
for:

lea di,array  

mov cx,dx  

for2: 
mov ax,[di]
inc di     
inc di

mov bx,[di]
cmp ax,bx
jge check
back:

loop for2
dec dx
mov cx,dx

loop for
jmp exit

check:    
mov [di],ax
dec di
dec di   
mov [di],bx
inc di
inc di   
jmp back
exit:
ret




