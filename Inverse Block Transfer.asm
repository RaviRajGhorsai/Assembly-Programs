#INVERSE BLOCK TRANSFER

LXI B,2000H
LXI D,3009H
MVI L,0AH

BACK: LDAX B
STAX D
INX B
DCX D
DCR L
JNZ BACK
HLT