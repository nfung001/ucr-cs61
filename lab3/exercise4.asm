;=================================================
; Name: <Collier, Craig>
; Username: ccoll010
; 
; Lab: <lab 3>
; Lab section: 23
; TA: Bryan Marsh
; 
;=================================================
.orig x3000
    ; Instructions
    LEA R0, PROMPT
    PUTS
    LEA R6, ARRAY
    LD R5, DEC_10
    DO_WHILE
        GETC
        OUT
        ; Store input minus 12, if this equals 0 it is return char
        ; if it is 0 escape early
        ADD R1,R0,#-12
        BRz EXIT_EARLY 
        STR R0, R6, #0
        ADD R6,R6,1
        ADD R5,R5,#-1
    BRp DO_WHILE

    EXIT_EARLY
    ADD R5,R5,#10
    LEA R6, ARRAY

    DO_WHILE_2
       LDR R0, R6, #0
       OUT
       ADD R6,R6, #1
       ADD R5,R5,#-1
    BRp DO_WHILE_2
    HALT

    ;data
    DEC_10 .FILL #10
    ARRAY .BLKW #10
    PROMPT .STRINGZ "type 10 chars"
.end
