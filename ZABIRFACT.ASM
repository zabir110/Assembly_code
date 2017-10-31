ORG 100H

.DATA
ARA DW 02H ,03H ,04H ,05H ,06H ,07H
RESULT DW 0,0,0,0,0  
TEMP DW 1


.CODE
LEA SI,ARA
LEA DI,RESULT 
MOV CX,06H  


FOR:
 
 MOV AX,[SI]
 INC SI
 INC SI
   
CALL FACT  
        
       MOV [DI],AX 
       INC DI
       INC DI 
        
       MOV TEMP,AX   
      
LOOP FOR

FACT PROC NEAR 
    
       MOV BX,TEMP 
       MUL BX   

        
       RET
       ENDP
       
    


RET