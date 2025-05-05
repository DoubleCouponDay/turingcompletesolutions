CPY_IN_REG4 #take input
IMM_6 #calculate 2 * pi
CPY_REG0REG5
IMM_1#branch if r is 1
CPY_REG0REG1
CPY_REG4REG2
EQ
IMM_22#pipeline affected
JMP_NEQ_0 #jump if R is 1
IMM_1#subtract from the counter
CPY_REG0REG2
CPY_REG4REG1
SUB
CPY_REG3REG4
CPY_REG5REG1#add reg5 r times
CPY_REG6REG2
ADD
CPY_REG3REG6
IMM_9#jump if counter going
CPY_REG4REG3
JMP_GT_0
CPY_REG6_OUT#finish output
CPY_REG5_OUT
