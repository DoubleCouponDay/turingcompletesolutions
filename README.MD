# Turing Complete Solutions
Each solution is written in a custom Assembly Instruction Set for the LEG Architecture.

## Instruction Format

Each Instruction contains 4 bytes. They are Binary Coded Decimals with a space between them. The first byte is for the Operation Code. The second byte is for the Left Address Bus. The third byte is for the Right Address Bus. The fourth byte is for the Data Bus.

    0 0 0 0 #An example instruction in BCD format

Each byte can be mapped to a human readable Assembly Language.

    ADD reg0 reg1 reg2 #An example instruction in Assembly formation

The first Byte can have the Logical Or operator applied to combine an Operation Code with an Optional Command for Immediate Values or each bus.

    ADD|IMMB reg0 1 reg2 #adds 1 to reg0 and send the result to reg2

## Addresses

- 0 = reg0

    The first register.

- 1 = reg1

    The second register.

- 2 = reg2

    The third register.

- 3 = reg3

    The fourth register.

- 4 = reg4

    The fifth register.

- 5 = reg5

    The sixth register.

- 6 = counter

    The Program Counter.

- 7 = input

    The input bus. Only applies to Address Busses.

- 7 = output

    The output bus. Only applies to the Data Bus.

## Instruct Set Architecture

- 0 = ADD

    Add the left address to the right address and send to the data addssre.

    ADD left_address right_address data_address

- 1 = SUB

    Subtract the right address from the left address and send to the data address.

    SUB left_address right_address data_address

- 2 = AND

    Logical And the left address with the right address and send to the data address.

    AND left_address right_address data_address

- 3 = OR

    Logical Or the left address with the right address and send to the data address.

    OR left_address right_address data_address

- 4 = NOT

    Invert every bit in the left address and send the output to the data address.

    NOT left_address 0 data_address

- 5 = XOR

    Logical XOR the left address with the right address and send to the data address.

    XOR left_address right_address data_address

- 6 = STORE

    Sends the value in the location pointed to by the data_address argument to the RAM storage location pointed to by the ram_address argument.

    STORE ram_address data_address 0

- 7 = LOAD

    Sends the value from RAM at the ram_address argument to the location pointed to by the output_address argument.

    LOAD ram_address 0 output_address

- 8 = PUSH

    Sends the value in the location pointed to by the left_address argument to the top of the stack.

    PUSH left_address 0 0

- 9 = POP

    Sends the value from the top of the stack to the location pointed to by the destination_address argument.

    POP 0 0 data_address

- 10 = LSL

    Logical Shift Left the bits in the left address by the number of bits in the right address, then send the result to the data address.

    LSL left_address right_address data_address

- 11 = MULT

    Multiply the left_address value by the right_address value and send the Product to the data_address.

    MULT left_address right_address data_address

- 12 = DIV

    Divide the left_address value by the right_address value and send the Quotient to the data_address. Pushes the Remainder onto the stack.

    MULT left_address right_address data_address

- 13 = LSR

    Logical Shift Right the bits in the left address by the number of bits in the right address, then send the result to the data address.

    LSR left_address right_address data_address

- 32 = IFEQ

- 33 = IFNEQ

- 34 = IFLESS

- 35 = IFLESSE

- 36 = IFGREAT

- 37 = IGREATE

- 38 = CALL

    Jump the Program Counter to the source code line number at the label given, as the program_counter argument. Also pushes the previous program counter value on the stack.

    CALL 0 0 program_counter

- 39 = RETURN

    Pop the program counter value off the stack and set the program counter to it's value.

    RETURN 0 0 0

- 64 = IMMB

    Use a literal integer as the value applied to the Right Address Bus.

    ADD|IMMB reg0 1 reg2

- 128 = IMMA

    Use a literal integer as the value applied to the Left Address Bus.

    ADD|IMMA 1 reg0 reg2

- 192 = IMMALL

    Use literal integers as the value applied to both Address Busses.

    ADD|IMMALL 5 5 reg2