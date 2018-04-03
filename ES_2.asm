# Scrivere il programma Assembly che prende ogni intero nell’area 
# di memoria la cui prima parola ha indirizzo 0×64 e la cui ultima 
# parola ha indirizzo 0x3E6 nell’area che inizia a 0×400 e ne copia 
# il valore diminuito di una quantità pari alla posizione del numero 
# da copiare, cioè il primo numero copiato sarà diminuito di 1, 
# il secondo di 2, ecc.

LOADiH R1 0x00
LOADiL R1 0x64
LOADiH R2 0x03
LOADiL R2 0xE6

LOADiH R3 0x04
LOADiL R3 0x00

LOADiH R4 0x00
LOADiL R4 0x01

CARICA: 
LOAD R1 R4
ADD R1 R1 0x02
ADD R4 R4 0x02
BLE R1 R2 CARICA

##################


LOADiH R1 0x00
LOADiL R1 0x64
LOADiH R2 0x03
LOADiL R2 0xE6

LOADiH R3 0x04
LOADiL R3 0x00

LOADiH R4 0x00
LOADiL R4 0x01

WHILE:
LOAD R5 R1
SUB R5 R5 R4
ADD R1 R1 0x02
ADD R4 R4 0x01
BLE R1 R2 WHILE

FINE: END
