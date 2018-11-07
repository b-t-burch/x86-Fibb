;------------------------------HEADER------------------------------
;Brendan Burch;
;10/14/2018;
;CIS 253-C01;
;FIBBY;
;-----------------------------PURPOSE------------------------------
;Write a program that uses a loop to calculate requested
;number of values in fibonacci number sequence
;-------------------------------------------------------------------
include emu8086.inc
org 100h


;----------------------Get User Input-------------------------------

Print  "Enter how many Fibonacci numbers to display: "
Call Scan_Num
 

;----------------------Start Fib sequence---------------------------
mov ax,0
mov bx,1

;----------------------Display user input---------------------------
Floop:
Printn ''          ;print on new line
Call print_num_uns
Call MOVE
loop Floop         ;subtract 1 from cx, if not zero loop again


;-----------------PROC to calculate # of fib sequences--------------
MOVE Proc
    mov dx,ax   ;move contents of ax into dx register
    add ax,bx   ;add contents of bx to ax register
    mov bx,dx   ;moves contents of dx into bx
ret             ;return to loop
MOVE ENDP
     

    
;------------------------Defines-----------------------------------
DEFINE_SCAN_NUM           
DEFINE_PRINT_NUM_UNS
END
 