//WAP TO DETERMINE NUMBER 1'S IN A NUMBER

LDA 2000H
MVI B,00H
MVI C,08H

BACK: RLC    //ROTATE BITS RIGHT TO LEFT
JNC SKIP
INR B
SKIP: DCR C
JNZ BACK
MOV A,B
STA 2001H
HLT