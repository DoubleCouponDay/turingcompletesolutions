#reg0 = column index / loop1 (0 - 15)
#reg1 = windback index (16 - 31)
#reg2 = start point column
#reg3 = windback column
#reg4 = calculated volume
#reg5 = summed volume

#create a new index for the volume array
ADD|IMMALL 16 0 reg1

label Loop
#read the current column height
ADD|IMMB input 0 reg2
#store the column height in ram, first array

#if greater than previous column, start scanning backwards for the next local maximum

label WindbackLoop
	#volume = difference of start point minus current column
	
	#overwrite the volume in ram

	#store the volume in indexed ram cells. second array

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
