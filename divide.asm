#move input(numerator) to reg1
ADD|IMMB input 0 reg1
#move input(denominator) to reg2
ADD|IMMB input 0 reg2

label loop
#if denominator is greater than numerator, subtract reg2 from reg1 and output to reg0
IFLESS reg1 reg2 endloop
	# subtract reg2 from reg1
	SUB reg1 reg2 reg0
	#move reg0 to reg1
	ADD|IMMB reg0 0 reg1
	#increment by 1
	ADD|IMMB reg3 1 reg0
	#move reg0 to reg3
	ADD|IMMB reg0 0 reg3
	#continue to loop
	CALL 0 0 loop
#else #endloop
label endloop
#move reg3 to output
ADD|IMMB reg3 0 output
#move reg1 to output
ADD|IMMB reg1 0 output
