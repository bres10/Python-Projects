# expresion algebraica 3x**3 - 2x**2 + 3 * x - 1 
x = 0
x = float(x)
y = 3 * x**3 - 2 * x**2 + 3 * x -  1
print("y =", y)

x = 1
x = float(x)
y = 3 * x**3 - 2 * x**2 + 3 * x -  1
print("y =", y)

x = -1
x = float(x)
y = 3 * x**3 - 2 * x**2 + 3 * x -  1
print("y =", y)

# se muestra el ultimo valor de la variable var
print()
var = 2
var = 3
print(var)

#se muestra en texto 1 1
print()
a = '1'
b = "1"
print(a + b)

#el resultado de la division es en formato float
print()
a = 6
b = 3
a /= 2 * b
print(a)

#--------------------------------------------------------------------------
#este programa calcula los segundos en cierto número de horas determinadas

a = 2 # número de horas
seconds = 60 # número de segundos en una hora

print("Horas: ", a) #imprime el numero de horas
print("Segundos en Horas: ", a * seconds) # se imprime el numero de segundos en determinado numero de horas

print()
print("Adios")

#este el es fin del programa que calcula el numero de segundos en 2 horas

#--------------------------------------------------------
#ingresando valores usuario consola con valores de int/float

anything = float(input("Ingresa un número: "))
something = anything ** 2.0
print(anything, "a la potencia de 2 es", something)

#hace referencia al programa anterior que calcula la longitud de la hipotenusa

leg_a = float(input("Ingresa la longitud del primer cateto: "))
leg_b = float(input("Ingresa la longitud del segundo cateto: "))
hypo = (leg_a**2 + leg_b**2) ** .5
print("La longitud de la hipotenusa es:", hypo)
