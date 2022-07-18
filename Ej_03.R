X <- as.numeric(readline("Dame el valor de X: "))
Y <- as.numeric(readline("Dame el valor de Y: "))

Operaciones <- function(X, Y) {
  suma <- X+Y
  resta <-X-Y
  multiplicacion <-X*Y
  division <- X/Y
  
  cuadrado  <- X^2
  raiz  <- sqrt(X)
  lista <- list(suma=suma, resta=resta, producto=multiplicacion, division=division, raizX=raiz)
  return(lista)
}

Resultados <- Operaciones (X,Y)


print(paste("Para el valor de X hemos seleccionado ", X, sep=" "))
print(paste("Para el valor de Y hemos seleccionado ", Y, sep=" "))

print(paste("La suma de los dos valores es: ", Resultados$suma, sep=" "))
print(paste("La resta de los dos valores es: ", Resultados$resta, sep=" "))
print(paste("La multiplicacion de los dos valores es: ", Resultados$producto, sep=" "))
print(paste("La division de los dos valores es: ", Resultados$division, sep=" "))
print(paste("La raiz cuadrada de X es: ", Resultados$raizX, sep=" "))