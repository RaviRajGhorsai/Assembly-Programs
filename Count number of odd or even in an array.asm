//COUNT TOTAL NUMBER  OF EVEN OR ODD NUMBERS IN A ARRAY

LXI H,2000H
MVI B,00H             //INITIALIZE  B==0
MVI C,05H            //COUNTER

LOOP2: MOV A,M
RAR
JNC LOOP1
INX H
LOOP1: INR B
DCR C
JNZ LOOP2
MOV A,B
STA 3000H
HLT