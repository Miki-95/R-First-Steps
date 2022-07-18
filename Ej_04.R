
Do <- 2 # Dividendo anterior. Por poner un valor
g <-  0.05 # Tasa de crecimiento
r <- 0.20 # Tasa de retorno


Gordon <- function(Do,g, r){
  gordon <- (Do*(1+g))/(r-g)
  return(gordon)
}

Po <- Gordon (Do, g, r) # Precio de la accion

print(paste("El valor de Po es: ", Po, sep=" "))