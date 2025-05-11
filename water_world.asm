#reg0 = ColumnIndex (0 - 15)
#reg1 = VolumeIndex (16 - 31)
#reg2 = RowIndex (InputLoop)
#reg3 = StartIndex (InputLoop)
#reg4 = CurrentHeight (InputLoop, FindEnd, FindStart)
#reg4 = CurrentVolume (OutputLoop)
#reg5 = Calculation (InputLoop)
#reg5 = EndIndex (InputLoop)
#reg5 = Sum (OutputLoop)

IFEQ|IMMALL 0 0 4 #add breakpoint here
ADD|IMMALL -1 0 reg3 #save -1 to StartIndex
ADD|IMMALL -1 0 reg5 #save -1 to EndIndex
ADD|IMMALL 16 0 reg1 #default value for VolumeIndex
ADD|IMMALL 1 0 reg2 #default value for row index

label InputLoop
	ADD|IMMB input 0 reg4 #read the current column height
	STORE reg0 reg4 0 #store the column height in ram, first array
	ADD|IMMB reg0 1 reg0 #increment loop index
	IFNEQ|IMMB reg0 16 InputLoop #store all 16 inputs in this loop

ADD|IMMALL 0 0 reg0 #reset ColumnIndex

label ExamineLoop
	LOAD reg0 0 reg4 #load the current columns height	
	IFGREATEU reg4 reg2 NotFillable1 #skip if (column, row) is not empty space
	LOAD reg1 0 reg5 #get any saved volume for calculation
	ADD reg4 reg5 reg5 #sum the volume plus height
	ADD|IMMB reg5 1 reg5 #align with row index for comparison
	IFNEQ reg5 reg2 NotFillable2 #skip if cell below (column, row) is not filled	
	PUSH reg0 0 0 #backup ColumnIndex
	CALL 0 0 FindEnd #call FindEnd for this cell
	IFGREATS|IMMB reg5 -1 NotFillable2 #skip if EndIndex is -1
	CALL 0 0 FindStart #call FindStart for this valid endindex
	IFGREATS|IMMB reg3 -1 NotFillable2 #skip if StartIndex is -1
	CALL 0 0 FloodRow #flood the row
	POP 0 0 reg0 #reset ColumnIndex
	ADD|IMMALL 16 0 reg0 #16 is the end of the loop. saves lines on incrementing row index
	
	label NotFillable2 #skip location1
	IFGREATS|IMMB reg3 -1 Flooded #skip if StartIndex is not -1
	POP 0 0 reg0 #bring back ColumnIndex backup
	label NotFillable1
	ADD|IMMB reg0 1 reg0 #increment ColumnIndex
	ADD|IMMB reg0 16 reg1 #increment VolumeIndex

	label Flooded #skip location2
	ADD|IMMALL -1 0 reg3 #reset StartIndex
	ADD|IMMALL -1 0 reg5 #reset EndIndex
	IFNEQ|IMMB reg0 16 ExamineLoop #if ColumnIndex within bounds, continue looping

	ADD|IMMB reg2 1 reg2 #increment row index
	ADD|IMMALL 0 0 reg0 #reset ColumnIndex
	ADD|IMMALL 16 0 reg1 #reset VolumeIndex
	IFNEQ|IMMB reg2 16 ExamineLoop #iterate ExamineLoop if row index not max

ADD|IMMALL 16 0 reg1 #reset reg1 for second usage
ADD|IMMALL 0 0 reg5 #reset reg5 for second usage
CALL 0 0 OutputLoop

label FindEnd
	ADD|IMMB reg0 1 reg0 #increment ColumnIndex
	LOAD reg0 0 reg4 #load the CurrentHeight
	IFGREATU|IMMB reg2 reg4 NotSoil1 #continue looping if not soil
	ADD|IMMB reg0 0 reg5 #save the EndIndex
	RETURN 0 0 0
	label NotSoil1
	IFNEQ|IMMB reg0 16 FindEnd #continue looping if ColumnIndex is not 16
	RETURN 0 0 0

label FindStart
	ADD|IMMB reg0 1 reg0 #decrement ColumnIndex
	LOAD reg0 0 reg4 #load the CurrentHeight
	IFGREATU|IMMB reg2 reg4 NotSoil2 #continue looping if not soil
	ADD|IMMB reg0 0 reg3 #save the StartIndex
	RETURN 0 0 0
	label NotSoil2
	IFNEQ|IMMB reg0 0 FindStart #continue looping if ColumnIndex is not 0
	RETURN 0 0 0

label FloodRow
	ADD|IMMB reg0 1 reg0 #increment ColumnIndex
	ADD|IMMB reg0 16 reg1 #set VolumeIndex based on ColumnIndex
	LOAD reg1 0 reg4 #load the previous volume
	ADD|IMMB reg4 1 reg4 #increment the volume
	STORE reg1 reg4 0 #store the new volume
	IFNEQ reg0 reg5 FloodRow #continue looping if ColumnIndex is not equal to EndIndex
	RETURN 0 0 0

label OutputLoop
	LOAD reg1 0 reg4 #load calculated volume
	ADD reg4 reg5 reg5 #add to the sum
	ADD|IMMB reg1 1 reg1 #increment second array index
	IFNEQ|IMMB reg1 31 OutputLoop #loop over every second array item

ADD|IMMB reg5 0 output #send the calculation to output
