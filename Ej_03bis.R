X <- as.numeric(readline("Dame el valor de X: "))
Y <- as.numeric(readline("Dame el valor de Y: "))

suma <- function(X, Y) {  return (X+Y)}
resta <- function(X, Y) {  return (X-Y)}
producto <- function(X, Y) {  return (X*Y)}
division <- function(X, Y) {  return (X/Y)}
raizX <- function(X) {  return (sqrt(X))}

suma <- suma(X,Y)
resta <- resta(X,Y)
producto <- producto(X,Y)
division <- division(X,Y)
raizX <- raizX(X)


print(paste("Para el valor de X hemos seleccionado ", X, sep=" "))
print(paste("Para el valor de Y hemos seleccionado ", Y, sep=" "))

print(paste("La suma de los dos valores es: ", suma, sep=" "))
print(paste("La resta de los dos valores es: ", resta, sep=" "))
print(paste("La multiplicacion de los dos valores es: ", producto, sep=" "))
print(paste("La division de los dos valores es: ", division, sep=" "))
print(paste("La raiz cuadrada de X es: ", raizX, sep=" "))

