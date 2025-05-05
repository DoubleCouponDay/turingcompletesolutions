label loop
IMM|0 #turn left
CPY|REG0|out
IMM|move_ifemptyordoor
JMP|always
label end1

label turn_right_forever
IMM|2 #turn right
CPY|REG0|out
IMM|move_ifemptyordoor
JMP|always

label move_ifemptyordoor
IMM|0 #if empty
CPY|REG0|reg1
CPY|IN|reg2
CMP|eq
IMM|move_forward
JMP|gt0
IMM|3 #else if door
CPY|REG0|reg1
CPY|IN|reg2
CMP|eq
IMM|move_forward
JMP|gt0
IMM|end1 #else
JMP|always

label move_forward
IMM|4 #interact with object
CPY|REG0|out
IMM|1 #move forward actually
CPY|REG0|out
IMM|label loop
JMP|always
