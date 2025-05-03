label Loop
ADD|IMMB input 0 reg1 #move input to reg1
DIV|IMMB reg1 4 0 #divide reg1 by 4
POP 0 0 reg2 #send the remainder to reg2
IFNEQ|IMMB reg2 0 DontOutput3 #if its 0, output 3
ADD|IMMALL 3 0 output
label DontOutput3
#remainder should never be 1
IFNEQ|IMMB reg2 2 DontOutput1 #if its 2, output 1
ADD|IMMALL 1 0 output
label DontOutput1
IFNEQ|IMMB reg2 3 DontOutput2 #if its 3, output 2
ADD|IMMALL 2 0 output
label DontOutput2
IFEQ|IMMALL 0 0 Loop
