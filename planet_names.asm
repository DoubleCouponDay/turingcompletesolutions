STORE|IMMALL 97 65 0  #a  A
STORE|IMMALL 98 66 0  #b  B
STORE|IMMALL 99 67 0  #c  C
STORE|IMMALL 100 68 0 #d  D
STORE|IMMALL 101 69 0 #e  E
STORE|IMMALL 102 70 0 #f  F
STORE|IMMALL 103 71 0 #g  G
STORE|IMMALL 104 72 0 #h  H
STORE|IMMALL 105 73 0 #i  I
STORE|IMMALL 106 74 0 #j  J
STORE|IMMALL 107 75 0 #k  K
STORE|IMMALL 108 76 0 #l  L
STORE|IMMALL 109 77 0 #m  M
STORE|IMMALL 110 78 0 #n  N
STORE|IMMALL 111 79 0 #o  O
STORE|IMMALL 112 80 0 #p  P
STORE|IMMALL 113 81 0 #q  Q
STORE|IMMALL 114 82 0 #r  R
STORE|IMMALL 115 83 0 #s  S
STORE|IMMALL 116 84 0 #t  T
STORE|IMMALL 117 85 0 #u  U
STORE|IMMALL 118 86 0 #v  V
STORE|IMMALL 119 87 0 #w  W
STORE|IMMALL 120 88 0 #x  X
STORE|IMMALL 121 89 0 #y  Y
STORE|IMMALL 122 90 0 #z  Z
CALL 0 0 Capitalise
ADD|IMMB reg0 0 output

label loop
ADD|IMMB input 0 reg0
IFNEQ|IMMB reg0 32 DontCapitalise #space character
CALL 0 0 PrepareCapitalise
label DontCapitalise
ADD|IMMB reg0 0 output
IFEQ|IMMALL 0 0 loop

label PrepareCapitalise
ADD|IMMB reg0 0 output #send the space to output
CALL 0 0 Capitalise
RETURN 0 0 0

label Capitalise
ADD|IMMB input 0 reg0
LOAD reg0 0 reg1 #retrieve the capitalised letter
ADD|IMMB reg1 0 reg0
RETURN 0 0 0
