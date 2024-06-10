"""link ejercicios python :https://www.bigbaydata.com/variables-python/
prueba1
Ejercicio Circunferencia y Diametro

radio = float (input ("Cual es el radio del circulo? "))
print ()
pi = 3.14159
circunferencia = ( 2*pi*radio)
circunferencia = round (circunferencia,2)
diametro = 2*radio

print("La circunferencia del circulo es de: " , circunferencia)
print ("El diametro del circulo es de: " , diametro)

--------------------------------------------------------------------------------
Ejercicio Peso Molecular

peso1 = int (input ("Introducir valor del peso del atomo: "))
print ()
atomo1 = int (input ("Introducir el numero de atomos del primer atomo: "))
print ()
peso2 = int (input ("Introducir valor del peso del segundo átomo: "))
print ()
atomo2 = int (input ("Introducir el número de átomos del segundo átomo: "))
print ()

pesoMolecular = peso1 * atomo1 + peso2 * atomo2

print ("Calculando el Peso Molecular ...")
print ()
print ("El Peso Molecular es: ", pesoMolecular)"""




"""power = 1
for expo in range(16):
    print("2 a la potencia de", expo, "es", power)
    power *= 2"""


"""import time

# Escribe un bucle for que cuente hasta cinco.
for conteo in range (1,6):
    
    # Cuerpo del bucle: imprime el número de iteración del bucle y la palabra "Mississippi".
    print ( conteo, " Mississippi...")
    time.sleep(1)

# Escribe una función print con el mensaje final.
print ("\nListos o no, ahi voy")

---------------------------------------
i = 3
while i < 7:
    print(i)
    i += 1
else:
    print("else:", i)
-----------------------------------------
break
text = "OpenEDG Python Institute
for letter in text:
    if letter == "P":
        break
    print(letter, end="")

-------------------------------
continue
text = "pyxpyxpyx
for letter in text:
    if letter == "x":
        continue
    print(letter, end="")

-------------------------------------


n = 0

while n != 3:
    print(n)
    n += 1
else:
    print(n, "else")

print()

for i in range(0, 3):
    print(i)
else:
    print(i, "else")

-----------------------------------------
for i in range(3):
    print(i, end=" ")  # output: 0 1 2

for i in range(6, 1, -2):
    print(i, end=" ")  # output: 6, 4, 2



-----------------------------------------------------------------------------


c0 = int (input ("Introduce un numero que no sea cero ni negativo.."))

pasos = 0
    
while c0 != 1:
        if c0 % 2 == 0:
            c0 = c0 // 2
        else:
            c0 = 3 * c0 + 1
        pasos += 1
        print(c0)

pasosTot = c0 + pasos - 1
print("Se necesitaron", pasosTot, "pasos para llegar a 1.")"""





n = int (input ("ingrese un numero.. "))

while n > 0:
    print (n+1)
    n-=1
else:
    print (n)
        



