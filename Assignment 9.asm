.ORIG x3000
LD R2, LOWER ;load -A
LD R4, UPPER ;load -z
LD R3, ASCII ;load ASCII difference
AGAIN TRAP x23 ;Request input from keyboard
ADD R1, R2, R0 ;Test for less than A
BRn EXIT
ADD R1, R4, R0 ;Test for more than Z
BRp EXIT
ADD R0, R0, R3 ;change to lowercase
TRAP x21 ;output to monitor
BRnzp AGAIN ;repeat
EXIT TRAP x25 ;halt
LOWER .FILL xFFBF ;FFBF=-A
UPPER .FILL xFFA6 ;FFA6=-Z
ASCII .FILL x0020
.END
