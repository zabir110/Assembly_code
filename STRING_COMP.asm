
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
PASS DB 'ZABIR'
LEN  EQU ($-PASS)
PASS1 DB 'ZABR'
.CODE

LEA SI,PASS
LEA DI,PASS1
MOV CX,LEN 
CLD

REPE CMPSB
JNE NO 
MOV BX,00
JMP EXIT





NO:
MOV BX,01
EXIT:




ret




