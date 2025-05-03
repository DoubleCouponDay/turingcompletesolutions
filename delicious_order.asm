#reg0 = ram pointer
#reg1 = working register
#reg2 = first ram value
#reg3 = second ram value
#reg5 = swapped flag
IFEQ 0 0 inputloop #skip other subroutines

label IncrementRamPointer
	ADD|IMMB reg0 1 reg1 #increment ram pointer
	ADD|IMMB reg1 0 reg0
	RETURN 0 0 0
	
label DecrementRamPointer
	SUB|IMMB reg0 1 reg1 #decrement ram pointer
	ADD|IMMB reg1 0 reg0
	RETURN 0 0 0
	
label swapfunc
	STORE 0 reg2 0 #swap first value in ram
	CALL 0 0 DecrementRamPointer
	STORE 0 reg3 0 #swap second value in ram
	CALL 0 0 IncrementRamPointer	
	ADD|IMMALL 1 0 reg5 #set the swapped flag true
	RETURN 0 0 0

label inputloop
	STORE 0 input 0 #stores input in ram
	CALL 0 0 IncrementRamPointer
	IFNEQ|IMMB reg0 15 inputloop #reuse address counter as loop counter

label bubblesortloop
	ADD|IMMALL 0 0 reg0 #reset ram pointer to 0
	ADD|IMMALL 0 0 reg5 #set the swapped flag false
	
	label swaploop
		LOAD 0 0 reg2 #pull first ram value
		CALL 0 0 IncrementRamPointer
		LOAD 0 0 reg3 #pull second ram value
		IFGREATE reg3 reg2 dontswap #compare and swap if first is greater		
		CALL 0 0 swapfunc
		label dontswap
		IFLESS|IMMB reg0 14 swaploop
	
	IFEQ|IMMB reg5 1 bubblesortloop #loop until no swap occurred 

ADD|IMMALL 0 0 reg0 #reset ram pointer to 0

label outputloop
	LOAD 0 0 output #read input from ram 
	CALL 0 0 IncrementRamPointer
	IFNEQ|IMMB reg0 15 outputloop #reuse address counter as loop counter
