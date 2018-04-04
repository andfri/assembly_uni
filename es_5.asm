# Scrivere il programma Assembly che confronta il valore di due 
# numeri naturali che si trovano rispettivamente nelle aree di 
# memoria 0x100 e 0x200: se il primo è maggiore del secondo 
# scrive la differenza nell'area di memoria 0x300, altrimenti 
# scrive la differenza fra il secondo e il primo sempre nell'area 
# di memoria 0x300.

# Carica 5 e 8 nelle due aree di memoria

LOADiH R1 0x00
LOADiL R1 0x05
LOADiH R2 0x01
LOADiL R2 0x00
STORE R2 R1

LOADiH R1 0x00
LOADiL R1 0x08
LOADiH R2 0x02
LOADiL R2 0x00
STORE R2 R1

# Programma vero e proprio

LOADiH R3 0x03
LOADiL R3 0x00
LOADiH R1 0x01
LOADiL R1 0x00
LOADiH R2 0x02
LOADiL R2 0x00
LOAD R4 R1
LOAD R5 R2

BGT R4 R5 PRIMOMAGGIORE
SUB R1 R5 R4
STORE R3 R1
B FINE
PRIMOMAGGIORE: SUB R1 R4 R5
STORE R3 R1
FINE: END
