#objects
const OPENAIR 0
const CONVEYOR 92
#actions
const TURNLEFT 0
const MOVEFORWARD 1
const TURNRIGHT 2
const DONOTHING 3
const INTERACT 4

ADD|IMMALL TURNLEFT 0 output #turn left
ADD|IMMALL MOVEFORWARD 0 output #move forward
ADD|IMMALL TURNLEFT 0 output #turn left
ADD|IMMALL MOVEFORWARD 0 output #move forward
ADD|IMMALL MOVEFORWARD 0 output #move forward
ADD|IMMALL MOVEFORWARD 0 output #move forward
ADD|IMMALL MOVEFORWARD 0 output #move forward
ADD|IMMALL TURNLEFT 0 output #turn left
ADD|IMMALL MOVEFORWARD 0 output #move forward
ADD|IMMALL TURNRIGHT 0 output #turn right
ADD|IMMALL MOVEFORWARD 0 output #move forward
IFEQ|IMMALL 0 0 WatchConveyor

label NotifySameFruit
	ADD|IMMALL TURNRIGHT 0 output #turn right
	ADD|IMMALL INTERACT 0 output #press button
	ADD|IMMALL TURNLEFT 0 output #turn left
	RETURN 0 0 0
	
label StoreFruit
	STORE|IMMB 0 1 0 #set the bit high at the fruit index
	RETURN 0 0 0

label WatchConveyor
	ADD|IMMB input 0 reg0
	IFEQ|IMMB reg0 OPENAIR DontNotify #ignore no item value
	IFEQ|IMMB reg0 CONVEYOR DontNotify
	LOAD 0 0 reg1
	IFNEQ|IMMB reg1 1 DoStore
	CALL 0 0 NotifySameFruit #only notify if the same fruit was seen previously
	label DoStore
	CALL 0 0 StoreFruit
	label DontNotify
	ADD|IMMALL DONOTHING 0 output
	IFEQ|IMMALL 0 0 WatchConveyor
