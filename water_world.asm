#reg0 = ColumnIndex (0 - 15)
#reg1 = VolumeIndex (16 - 31)
#reg2 = RowIndex (InputLoop)
#reg3 = StartIndex (InputLoop)
#reg4 = CurrentHeight (InputLoop, FindEnd, FindStart)
#reg4 = CurrentVolume (FloodRow, OutputLoop)
#reg5 = Calculation (InputLoop)
#reg5 = EndIndex (InputLoop)
#reg5 = Sum (OutputLoop)

ADD|IMMALL -1 0 reg3 #save -1 to StartIndex
ADD|IMMALL -1 0 reg5 #save -1 to EndIndex
ADD|IMMALL 16 0 reg1 #default value for VolumeIndex

label InputLoop
	ADD|IMMB input 0 reg4 #read the current column height
	STORE reg0 reg4 0 #store the column height in ram, first array
	ADD|IMMB reg0 1 reg0 #increment loop index
	IFNEQ|IMMB reg0 16 InputLoop #store all 16 inputs in this loop

ADD|IMMALL 0 0 reg0 #reset ColumnIndex

label ExamineLoop
	LOAD reg0 0 reg4 #load the current columns height	
	IFGREATU reg4 reg2 NotFillable1 #skip if (column, row) is not empty space
	LOAD reg1 0 reg5 #get any saved volume for calculation
	ADD reg4 reg5 reg5 #sum the volume plus height
	IFNEQ reg5 reg2 NotFillable1 #skip if cell below (column, row) is not filled	
	ADD|IMMALL -1 0 reg5 #clear calculation
	CALL 0 0 FindEnd #call FindEnd for this cell
	IFEQ|IMMB reg5 -1 NotFillable1 #skip if EndIndex is -1
	PUSH reg0 0 0 #save the ColumnIndex for later
	CALL 0 0 FindStart #call FindStart for this valid endindex
	IFEQ|IMMB reg3 -1 NotFillable2 #skip if StartIndex is -1
	CALL 0 0 FloodRow #flood the row
	
	label NotFillable2 #skip location1
	POP 0 0 reg0 #bring back the ColumnIndex if found end but not start
	label NotFillable1 #skip location2
	ADD|IMMB reg0 1 reg0 #increment ColumnIndex
	ADD|IMMB reg0 16 reg1 #increment VolumeIndex

	ADD|IMMALL -1 0 reg3 #reset StartIndex
	ADD|IMMALL -1 0 reg5 #reset EndIndex
	IFLESSU|IMMB reg0 15 ExamineLoop #if ColumnIndex within bounds, continue looping

	ADD|IMMB reg2 1 reg2 #increment row index
	ADD|IMMALL 0 0 reg0 #reset ColumnIndex
	ADD|IMMALL 16 0 reg1 #reset VolumeIndex
	IFLESSEU|IMMB reg2 10 ExamineLoop #iterate ExamineLoop if row index not max

ADD|IMMALL 0 0 reg0 #reset column index
ADD|IMMALL 16 0 reg1 #reset reg1 for second usage
ADD|IMMALL 0 0 reg5 #prepare reg5 for the sum
CALL 0 0 OutputLoop

label FindEnd
	ADD|IMMB reg0 1 reg0 #increment ColumnIndex
	LOAD reg0 0 reg4 #load the CurrentHeight
	IFGREATEU reg2 reg4 NotSoil1 #continue looping if not soil
	ADD|IMMB reg0 0 reg5 #save the EndIndex
	RETURN 0 0 0
	label NotSoil1
	IFLESSU|IMMB reg0 15 FindEnd #continue looping if ColumnIndex is not 16
	RETURN 0 0 0

label FindStart
	SUB|IMMB reg0 1 reg0 #decrement ColumnIndex
	LOAD reg0 0 reg4 #load the CurrentHeight
	IFGREATEU reg2 reg4 NotSoil2 #continue looping if not soil
	ADD|IMMB reg0 0 reg3 #save the StartIndex
	RETURN 0 0 0
	label NotSoil2
	IFGREATU|IMMB reg0 0 FindStart #continue looping if ColumnIndex is not 0
	RETURN 0 0 0

label FloodRow
	ADD|IMMB reg0 1 reg0 #increment ColumnIndex
	ADD|IMMB reg0 16 reg1 #set VolumeIndex based on ColumnIndex
	IFEQ reg0 reg5 DontSave
	LOAD reg1 0 reg4 #load the CurrentVolume
	ADD|IMMB reg4 1 reg4 #increment the volume
	STORE reg1 reg4 0 #store the new volume
	label DontSave
	IFNEQ reg0 reg5 FloodRow #continue looping if ColumnIndex is not equal to EndIndex
	RETURN 0 0 0

label OutputLoop
	LOAD reg1 0 reg4 #load CurrentVolume
	ADD reg4 reg5 reg5 #add to the sum
	ADD|IMMB reg1 1 reg1 #increment second array index
	IFNEQ|IMMB reg1 31 OutputLoop #loop over every second array item

ADD|IMMB reg5 0 output #send the calculation to output
