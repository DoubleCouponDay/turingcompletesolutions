label loop
ADD|IMMB input 0 reg0
IFNEQ|IMMB reg0 0 push
IFEQ|IMMB reg0 0 pop
IFEQ|IMMALL 0 0 loop

label push
PUSH reg0 0 0 #store the input on the stack
ADD|IMMB reg5 1 reg4 #increment debug counter
ADD|IMMB reg4 0 reg5
IFEQ|IMMALL 0 0 loop

label pop
POP 0 0 output #take a number off the stack
SUB|IMMB reg5 1 reg4 #decrement debug counter
ADD|IMMB reg4 0 reg5
IFEQ|IMMALL 0 0 loop
