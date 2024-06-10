
#Ejercicio 2 Contraseñas
"""word = str (input ("Ingresa la contraseña: "))
contraseña = "Hola123"
count = 3

while word != contraseña:
    
    print("Contraseña incorrecta.")
    count -= 1
    
    if count == 0:
        print("Has agotado los intentos. El sistema se cerrará.")
        break
    else:
        word = input ("Intentalo de nuevo: ")
        
    

else:
    print("Acceso concedido")"""
#Ejercicio 4

"""
num1 = int (input("Cual es su renta?: "))

if num1 < 10000:
    print ("Tipo de impositivo es 5% ")
elif num1 >= 10000 and num1 <= 20000:
    print ("Tipo de impuesto es 15% ")
elif num1 > 20000 and num1 > 35000:
    print ("Tipo impositivo es 20%")
else:
    print ("No impositivo")
"""

#Ejercicio Bucles 

"""palabra = str (input ("Ingrese Palabra.. "))

for i in range (1,11):
    print (palabra)
    print ("")

-------------------------------------------------------
edad = int (input("Ingrese su edad: "))

for i in range (edad):
    print ("Ha complido ", int(i+1), "años. ")

-----------------------------------------------------------
num1 = int (input("Ingrese numero: "))

for i in range (num1):
    if i % 2 != 0:
        print (i, end =",")

#Escribir un programa que pida al usuario un número entero positivo 
#y muestre por pantalla la cuenta atrás desde ese número hasta cero separados por comas.
num1 = int (input("Ingrese numero: "))

for i in range (num1,-1,-1):
    
    print (i, end=",")
print ()

-----------------------------------------------------------------------------------
var1 = int(input("\nNumero1  "))
var2 = int(input("\nNumero2  "))
var3 = int(input("\nNumero3  "))
var4 = int(input("\nNumero4  "))
var5 = int(input("\nNumero5  "))

numbers = [var1, var2, var3, var4, var5]

print("\nContenido de la lista: ", numbers)  # Imprimiendo contenido de la lista original.
 
numbers[0] = 111
print("\nNuevo contenido de la lista: ", numbers)  # Contenido actual de la lista.
 

numbers[1] = numbers[4]  # Copiando el valor del quinto elemento al segundo elemento.
print("\nNuevo contenido de la lista:", numbers)  # Imprimiendo el contenido de la lista actual.
 
print(numbers[0]) # Accediendo al primer elemento de la lista.

print("\nLongitud de la lista:", len(numbers))  # Imprimiendo la longitud de la lista.

del numbers[1]
print(len( numbers))
print(numbers) 

-------------------------------------------------------------------------------------------------
#  LAB   Los fundamentos de las listas

sombrero = [1,2,3,4,5]
print (sombrero)
usuario = int (input("\nReemplace el número central en la lista con un número entero: "))
sombrero[2] = usuario
print ("\nNueva lista: ", sombrero)

del sombrero[4]
print("\nNueva lista: ", sombrero)
print(len(sombrero))

numbers = [111, 7, 2, 1]
print(len(numbers))
print(numbers)

###Agregando elementos a una lista: append() y insert()

numbers.append(4)

print(len(numbers))
print(numbers)

###

numbers.insert(0, 222)
print(len(numbers))
print(numbers)


-------------------------------------------------
my_list = [10, 1, 8, 3, 5]
total = 1

for i in range(len(my_list)):
    total += my_list[i]

print(total)

#cambiando valores de lugar en una lista 

my_list = [10, 1, 8, 3, 5]

my_list[0], my_list[4] = my_list[4], my_list[0]
my_list[1], my_list[3] = my_list[3], my_list[1]

print(my_list)"""


#Escribe un programa que refleje estos cambios y le permita practicar 
#con el concepto de listas. Tu tarea es:

#paso 1: crea una lista vacía llamada beatles;
#paso 2: emplea el método append() para agregar los siguientes miembros de la banda a la lista: John Lennon, Paul McCartney y George Harrison;
#paso 3: emplea el buclefor y el append() para pedirle al usuario que agregue los siguientes miembros de la banda a la lista: Stu Sutcliffe, y Pete Best;
#paso 4: usa la instrucción del para eliminar a Stu Sutcliffe y Pete Best de la lista;
#paso 5: usa el método insert() para agregar a Ringo Starr al principio de la lista.
"""

beatles = []
print("Paso1:" , beatles)

beatles.append("John Lennon ")  
beatles.append("Paul McCartney ")
beatles.append("George Harrison ")

print("Paso2:" , beatles)


for i in range(2):
    mem1=str(input("Agrega el otro miembro: "))
    beatles.append(mem1)

print("Paso 3:", beatles)

# paso 4

del beatles[4]
del beatles[3]

print("Paso 4:", beatles)

# paso 5
beatles.insert(0,"Ringo Star")
print("Paso 5:", beatles)


# probando la longitud de la lista
print("Los Fav", len(beatles))



#Intercambio ascendente 
my_list = [8, 10, 6, 2, 4]  # lista a ordenar
swapped = True  # Lo necesitamos verdadero (True) para ingresar al bucle while.

while swapped:
    swapped = False  # no hay intercambios hasta ahora
    for i in range(len(my_list) - 1):
        if my_list[i] > my_list[i + 1]:
            swapped = True  # ¡ocurrió el intercambio!
            my_list[i], my_list[i + 1] = my_list[i + 1], my_list[i]

print(my_list)

----------------------------------------------------------------------------------------
#ordenamiento burbuja 

my_list = []
swapped = True
num = int(input("¿Cuántos elementos deseas ordenar?: "))

for i in range(num):
    val = float(input("Ingresa un elemento de la lista: "))
    my_list.append(val)

while swapped:
    swapped = False
    for i in range(len(my_list) - 1):
        if my_list[i] > my_list[i + 1]:
            swapped = True
            my_list[i], my_list[i + 1] = my_list[i + 1], my_list[i]

print("\nOrdenada:")
print(my_list)
"""


