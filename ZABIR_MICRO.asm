
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

 
 MOV AX,A; add your code here
 MOV BX,B
 MOV CX,C
    
 CMP AX,BX 
 JG A1  
 
 CMP BX,CX
 JG B1    
 
 MOV GREATER ,CX
 CMP   AX,BX
 JG C1     
 
 
 MOV MID,BX
 MOV LOW ,AX
 JMP EXIT   
      
      
      
   A1: 
   CMP AX,CX  
   JG  A2
   MOV GREATER,CX 
   MOV MID,AX
   MOV LOW,BX
   JMP EXIT
                                           
                    C1:
                    MOV MID,AX
                    MOV LOW ,BX
                    JMP EXIT  
   
   
    A2:
    MOV GREATER,AX
    CMP BX,CX
    JG A3 
    MOV MID,CX
    MOV LOW,BX
    JMP EXIT   
  
  
   
            B1:
            MOV GREATER, BX
            CMP AX,CX
            JG B2
            MOV MID ,CX
            MOV LOW,AX  
            JMP EXIT

     A3:
     MOV MID,BX
     MOV LOW,CX
     JMP EXIT   
              
              
              
             B2:
             MOV MID ,AX
             MOV LOW  ,CX 
             JMP EXIT
   





   
EXIT:
 ret 
 A DW 09H
 B DW 05H
 C DW 02H
 GREATER DW 00H                                                        
 MID DW 00H
 LOW DW 00H



