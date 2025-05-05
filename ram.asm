label save_input
STORE reg0 input 0 #save to ram
IMMA|ADD 1 reg0 reg1 #increment counter
IMMA|ADD 0 reg1 reg0 #update ram address
IMMB|IFLESSU reg1 32 save_input #iterate 32 times
IMMA|ADD 0 reg5 reg0 #reset ram counter

label send_ram
LOAD reg0 0 output #send to output
IMMA|ADD 1 reg0 reg1
IMMA|ADD 0 reg1 reg0
IMMB|IFLESSU reg1 32 send_ram
