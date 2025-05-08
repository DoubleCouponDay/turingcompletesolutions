#reg0 = column index / loop1 (0 - 15)
#reg1 = windback index (16 - 31)
#reg2 = start point column
#reg3 = windback column (WindbackLoop)
#reg4 = temp function pointer (WindbackLoop)
#reg4 = temp previous previous gradient (WindBackLoop)
#reg4 = calculation (WindbackLoop)
#reg5 = end point column (WindBackLoop)
#reg5 = summed volume (SumLoop)
#STACK0 = save point column index

IFEQ|IMMALL 0 0 4 #add breakpoint here
label Loop
	ADD|IMMB input 0 reg2 #read the current column height
	STORE reg0 reg2 0 #store the column height in ram, first array
	
	IFNEQ|IMMB reg0 0 DontSkipColumn #skip the first column	
	ADD|IMMB reg2 0 reg5 #make current column the previous column
	ADD|IMMB reg0 1 reg0 #increment current column index
	IFEQ|IMMALL 0 0 Loop
	label DontSkipColumn

	IFLESSEU reg2 reg5 DontWindBack #only sum when a positive gradient is detected
	PUSH reg0 0 0 #save point column index
	CALL 0 0 WindbackLoop #I have to use call and put the function pointer of the stack because I want to conditionally save. reduces stack overloading
	POP 0 0 reg0 #remove save point

	label DontWindBack
	ADD|IMMB reg2 0 reg5 #make current column the previous column
	ADD|IMMB reg0 1 reg0 #increment column loop index
	IFNEQ|IMMB reg0 16 Loop #if column index within bounds, continue looping

ADD|IMMALL 0 0 reg5 #clear previous registers for second usage
ADD|IMMALL 16 0 reg1 #reset second array index
CALL 0 0 SumLoop

label WindbackLoop #start scanning backwards for the next local maximum
	ADD|IMMB reg2 0 reg3 #set default previous value to starting column
	label WindbackOne
	SUB|IMMB reg0 1 reg0 #decrement
	ADD|IMMB reg0 16 reg1 #set the windback index to second array, current column		
	IFGREATES|IMMB reg0 0 NotSmallestIndex #boundary check
	POP 0 0 reg4 #reset the column index to the starting point
	POP 0 0 reg0
	PUSH reg0 0 0
	PUSH reg4 0 0
	ADD|IMMALL 0 0 reg4
	ADD|IMMB reg0 16 reg1
	SUB|IMMB reg2 1 reg2 #decrease the starting column in case there could be a lower match
	IFGREATES|IMMB reg2 0 WindbackOne
	RETURN 0 0 0
	
	label NotSmallestIndex
	ADD|IMMB reg3 0 reg4
	LOAD reg0 0 reg3 #load the previous column
	IFLESSU reg3 reg2 WindbackOne #stop winding back once a same height column is found
	SUB reg3 reg4 reg4 #detect positive gradient on end. prevent endless slope level
	IFLESSES|IMMB reg4 0 WindbackOne
	
	ADD|IMMB reg3 0 reg5 #use this as the end point column
	POP 0 0 reg4
	POP 0 0 reg0
	PUSH reg0 0 0
	PUSH reg4 0 0
	ADD|IMMALL 0 0 reg4 #clear temp function pointer
	LOAD reg0 0 reg2 #reset starting column size
	
	label WindBackTwo
	SUB|IMMB reg0 1 reg0 #decrement
	ADD|IMMB reg0 16 reg1
	LOAD reg0 0 reg3
	SUB reg2 reg3 reg4 #volume = difference of start point minus current windback column
	IFLESSS|IMMB reg4 0 SkipSaving #skip bad volume
	IFGREATS|IMMB reg4 0 NotStartingIndex #if its bigger than or equal to the starting column, stop winding back
	RETURN 0 0 0
	label NotStartingIndex
	IFEQ|IMMB reg0 0 SkipSaving #skip first column if it has no backing
	STORE reg1 reg4 0 #store the volume in second array 
	label SkipSaving
	IFLESSU reg3 reg5 WindBackTwo #boundary check
	RETURN 0 0 0

label SumLoop
	LOAD reg1 0 reg4 #load calculated volume
	ADD reg4 reg5 reg5 #add to the sum
	ADD|IMMB reg1 1 reg1 #increment second array index
	IFNEQ|IMMB reg1 31 SumLoop #loop over every second array item

ADD|IMMB reg5 0 output #send the calculation to output
