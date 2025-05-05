#reg0 = column index / loop1 (0 - 15)
#reg1 = windback index (16 - 31)
#reg2 = start point column
#reg3 = windback column
#reg4 = calculation
#reg5 = previous column (algorithm stage)
#reg5 = summed volume (final stage)
#STACK = save point column index

label Loop
	ADD|IMMB input 0 reg2 #read the current column height
	STORE reg0 reg2 0 #store the column height in ram, first array
	PUSH reg0 0 0 #save point column index

	IFNEQ|IMMB reg0 0 DontSkipColumn #skip the first column	
		POP 0 0 reg0 #remove save point
		ADD|IMMB reg2 0 reg5 #make current column the previous column
		ADD|IMMB reg0 1 reg0 #increment current column index
		IFEQ|IMMALL 0 0 Loop

	label DontSkipColumn
	IFLESSE reg2 reg5 DontWindBack #only sum when a positive gradient is detected

	label WindbackLoop #start scanning backwards for the next local maximum
		SUB|IMMB reg0 1 reg0 #decrement 
		ADD|IMMB reg0 16 reg1 #set the windback index to second array, current column
		LOAD reg0 0 reg3 #load the previous column
		SUB reg2 reg3 reg4 #volume = difference of start point minus current windback column		
		IFLESSE|IMMB reg4 0 DontWindBack #if its bigger than or equal to the starting column, stop winding back
		IFEQ|IMMB reg1 16 SkipSaving #skip first column if it has no backing
		STORE reg1 reg4 0 #store the volume in second array 
		label SkipSaving
		IFNEQ|IMMB reg1 16 WindbackLoop

	label DontWindBack
	POP 0 0 reg0 #remove save point
	ADD|IMMB reg2 0 reg5 #make current column the previous column
	ADD|IMMB reg0 1 reg0 #increment column loop index
	IFNEQ|IMMB reg0 16 Loop #if column index within bounds, continue looping

ADD|IMMB reg1 16 reg1 #reset second array index

label SumLoop
	LOAD reg1 0 reg4 #load calculated volume
	ADD reg4 reg5 reg5 #add to the sum
	ADD|IMMB reg1 1 reg4 #increment second array index
	IFNEQ|IMMB 31 SumLoop #loop over every second array item

ADD|IMMB reg5 0 output #send the calculation to output
