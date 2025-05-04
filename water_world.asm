#reg0 = column index / loop1 (0 - 15)
#reg1 = windback index (16 - 31)
#reg2 = start point column
#reg3 = windback column
#reg4 = calculated volume
#reg5 = previous column
#reg5 = summed volume

#create a new index for the volume array
ADD|IMMALL 16 0 reg1

label Loop
	#read the current column height
	ADD|IMMB input 0 reg2
	#store the column height in ram, first array
	STORE reg0 reg2 0	
	IFNEQ|IMMB reg2 0 DontSkipColumn #skip the first column	
	ADD|IMMB reg2 0 reg5 #make current column the previous column
	ADD|IMMB reg0 1 reg0 #increment current column index
	IFEQ|IMMALL 0 0 Loop
	label DontSkipColumn
	IFLESSE reg2 reg5 DontWindBack #if greater than previous column, and current column is not the first column, start scanning backwards for the next local maximum

	label WindbackLoop
		LOAD reg1 
		 #volume = difference of start point minus current column		
		#overwrite the volume in ram
		#store the volume in indexed ram cells. second array

	label DontWindBack

	#else continue down
	IFNEQ|IMMB reg1 16 WindbackLoop
	#increment column loop index
	ADD|IMMB reg0 1 reg0
	#if column index within bounds, continue looping
	IFNEQ|IMMB reg0 16 Loop

#reset windback index
ADD|IMMB reg1 16 reg1
#sum all the second array values
label SumLoop
#load calculated volume
LOAD reg1 0 reg4
#add to the sum
ADD reg4 reg5 reg5
#send the calculation to output
ADD|IMMB reg5 0 output
