IMM|63
CPY|REG0|out
CPY|REG0|reg4

label loop
CPY|IN|reg3 #check door alarm
IMM|increment #increment if 0
JMP|eq0
IMM|decrement #decrement if 1
JMP|gt0
IMM|else
JMP|always

label increment
IMM|1
CPY|REG4|reg1
CPY|REG0|reg2
CMP|add
IMM|else
JMP|always

label decrement
IMM|1
CPY|REG4|reg1
CPY|REG0|reg2
CMP|sub
IMM|else
JMP|always

label else
CPY|REG3|out
CPY|REG3|reg4
IMM|loop
JMP|always
