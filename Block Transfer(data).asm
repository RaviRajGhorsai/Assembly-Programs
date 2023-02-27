#TRANSFER DATA FROM ADDRESS 2000-2009 TO 3000-3009

LXI B,2000H        #INITIALIZE B AND D 
LXI D,3000H        #B IS SOURCE AND D IS DESTINATION
MVI L,0AH          #COUNT ==10

BACK: LDAX B    #LOAD A FROM REGISTER B
STAX D               #STORE A TO REGISTER D
INX B
INX D
DCR L                  #DECREMENT COUNT
JNZ BACK           #JNZ-->JUMP IF NOT ZERO
HLT