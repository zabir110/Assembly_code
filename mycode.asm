
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
P DB 'ZABIRABIRABHSAB'
LP EQU ($-P)
A DB 'AB'
LA EQU ($-A)
   

.CODE

LEA AX,P
MOV BX,0
MOV DX,0
CLD


E:     

LEA DI,A
MOV CX,LA 

MOV SI,AX
CMP BX,LP
JE EXIT  
CLD

REPE CMPSB  
JNE NO

INC DX


NO:
INC AX
INC BX 
JMP E 


EXIT:

ret




