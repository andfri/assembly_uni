# Scrivere il programma Assembly che confronta il valore di 
# due numeri naturali che si trovano rispettivamente nelle 
# aree di memoria 0x100 e 0x200: se il primo è maggiore del 
# secondo scrive la differenza nell'area di memoria 0x300

LOADiH R1 0x00
LOADiL R1 0x13
LOADiH R2 0x01
LOADiL R2 0x00

STORE R2 R1

LOADiH R1 0x00
LOADiL R1 0x08
LOADiH R2 0x02
LOADiL R2 0x00

STORE R2 R1


LOADiH R1 0x01
LOADiL R1 0x00
LOADiH R2 0x02
LOADiL R2 0x00
LOADiH R3 0x03
LOADiL R3 0x00

LOAD R4 R1
LOAD R5 R2

BLE R4 R5 FINE
SUB R1 R4 R5
STORE R3 R1
FINE: END
