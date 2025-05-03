#0 = move to spot 0
#1 = move to spot 1
#2 = move to spot 2
#5 = toggle the magnet

label Loop
	ADD|IMMALL 0 0 reg4 #clear ram pointer
	ADD|IMMB input 0 reg0 #disknum
	ADD|IMMB input 0 reg1 #source
	ADD|IMMB input 0 reg2 #destination
	ADD|IMMB input 0 reg3 #spare
	CALL 0 0 StoreParams
	CALL 0 0 MoveDisc
	IFEQ|IMMALL 0 0 Loop

label MoveDisc
	CALL 0 0 LoadParams
	IFNEQ|IMMB reg0 0 ShouldNotMove	
	CALL 0 0 MagnetMove
	SUB|IMMB reg4 8 reg4
	RETURN 0 0 0
	label ShouldNotMove
	CALL 0 0 StorePrev1Params
	CALL 0 0 MoveDisc
	CALL 0 0 LoadParams
	CALL 0 0 MagnetMove
	CALL 0 0 StorePrev2Params
	CALL 0 0 MoveDisc
	SUB|IMMB reg4 4 reg4
	RETURN 0 0 0
	
label LoadParams
	LOAD reg4 0 reg0 #disknum
	ADD|IMMB reg4 1 reg4
	LOAD reg4 0 reg1 #source
	ADD|IMMB reg4 1 reg4
	LOAD reg4 0 reg2 #destination
	ADD|IMMB reg4 1 reg4
	LOAD reg4 0 reg3 #spare
	ADD|IMMB reg4 1 reg4
	RETURN 0 0 0
	
label StoreParams
	STORE reg4 reg0 0
	ADD|IMMB reg4 1 reg4
	STORE reg4 reg1 0
	ADD|IMMB reg4 1 reg4
	STORE reg4 reg2 0
	ADD|IMMB reg4 1 reg4
	STORE reg4 reg3 0
	SUB|IMMB reg4 3 reg4 #point to first param
	RETURN 0 0 0
	
label StorePrev1Params
	SUB|IMMB reg0 1 reg0 #subtract disc number
	STORE reg4 reg0 0
	ADD|IMMB reg4 1 reg4
	STORE reg4 reg1 0 #source
	ADD|IMMB reg4 1 reg4
	STORE reg4 reg3 0 #destination
	ADD|IMMB reg4 1 reg4
	STORE reg4 reg2 0 #spare
	SUB|IMMB reg4 3 reg4 #point to first param
	RETURN 0 0 0
	
label StorePrev2Params
	SUB|IMMB reg0 1 reg0 #subtract disc number
	STORE reg4 reg0 0
	ADD|IMMB reg4 1 reg4
	STORE reg4 reg3 0 #source
	ADD|IMMB reg4 1 reg4
	STORE reg4 reg2 0 #destination
	ADD|IMMB reg4 1 reg4
	STORE reg4 reg1 0 #spare
	SUB|IMMB reg4 3 reg4 #point to first param
	RETURN 0 0 0
	
label MagnetMove
	ADD|IMMB reg1 0 output #move to source
	ADD|IMMALL 5 0 output #magnet on
	ADD|IMMB reg2 0 output #move to destination
	ADD|IMMALL 5 0 output #magnet off
	RETURN 0 0 0
	