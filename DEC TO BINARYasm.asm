
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA 
ARR DB 4 DUB(0)    
NO DB 12H        

.CODE
   
MOV AL,NO 
MOV BL,2
LEA SI,ARR+4

FOR:

DIV BL
MOV [SI],AH
DEC SI 

CMP AL,0
JE EXIT  

JMP FOR


EXIT:

ret




