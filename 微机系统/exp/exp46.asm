data segment
    NUMBER1 DB 1,2,3,4,5,6,7,8,9,10
    SUM1    DW ?
ends
code segment  
start:  MOV AX,DATA
        MOV DS,AX
        LEA BX,NUMBER1-1
        MOV AX,0
        MOV DH,0
AA1:    INC BX     
        CMP BX,000AH    ;是10，默认从0000H开始，所以终止是000AH
        JZ AA2
        MOV DL,[BX] 
        ADD AX,DX         
        JMP AA1     
AA2:    MOV SUM1,AX 
        MOV AH, 4CH
        INT 21H
ends
end start
