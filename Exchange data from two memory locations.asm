#EXANGE DATA FROM ONE MEMORY LOCATION TO OTHER

LXI B,2000H         #B-->P
LXI D,3000H        #D-->Q
MVI L,0AH           #COUNT 0A-->10
BACK: LDAX B      #A-->P
MOV H,A              #H-->P
LDAX D                #A-->Q
STAX B                 #B-->Q
MOV A,H              #A-->P
STAX D                #D-->P DATA EXCHANGED (P-->Q)
INX B
INX D
DCR L
JNZ BACK
HLT