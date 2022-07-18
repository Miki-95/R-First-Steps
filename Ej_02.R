


X <- as.numeric(readline("Dame el valor de X: "))
Y <- as.numeric(readline("Dame el valor de Y: "))

suma <- X+Y
resta <-X-Y
multiplicacion <-X*Y
division <- X/Y

cuadrados  <- c(X**2, Y**2)
raiz  <- sqrt(suma)

print(paste("Para el valor de X hemos seleccionado ", X, sep=" "))
print(paste("Para el valor de Y hemos seleccionado ", Y, sep=" "))

print(paste("La suma de los dos valores es: ", suma, sep=" "))
print(paste("La resta de los dos valores es: ", resta, sep=" "))
print(paste("La multiplicacion de los dos valores es: ", multiplicacion, sep=" "))
print(paste("La division de los dos valores es: ", division, sep=" "))


print(paste("El cuadrado de X es: ", cuadrados[1], sep=" "))
print(paste("El cuadrado de Y es: ", cuadrados[2], sep=" "))
print(paste("La raiz cuadrada de la suma de los dos numeros es: ", raiz, sep=" "))

# utilizar la funcion paste para escribir una cosa tras otra
