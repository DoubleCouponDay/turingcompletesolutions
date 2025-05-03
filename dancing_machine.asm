#address bus 1 = shift number
#address bus 2 = shift input value
ADD|IMMB input 0 reg0

label loop
LSR|IMMA 1 reg0 reg1 
XOR reg0 reg1 reg2 # = temp1
LSL|IMMA 1 reg2 reg3 
XOR reg2 reg3 reg4 # = temp2
LSR|IMMA 2 reg4 reg5
XOR reg4 reg5 reg0 #next_seed
DIV|IMMB reg0 4 reg1
POP 0 0 output
IFEQ|IMMALL 0 0 loop
