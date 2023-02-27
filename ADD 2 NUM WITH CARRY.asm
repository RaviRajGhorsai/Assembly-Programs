#WAP to add two numbers from two memory locations and store the         # carry and  add  it again to store in a location

MVI C,00H                   #ASSUME NO CARRY
LDA 2000H
MOV B,A
LDA 2001H
ADD B
JNC SKIP                      #JNC-->JUMP IF NO CARRY
INR C                            #INCREMENT C IF THERE IS CARRY

SKIP: STA 2002H
MOV A,C                      #MOVE CARRY TO ACCUMULATOR 
STA 2003H                 #STORE CARRY
HLT