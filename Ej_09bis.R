# Establecer directorio de trabajo

setwd("C:/Users/Jaime/Desktop/Prácticas Data Science MA/R - Cesur formacion")

# Abrir las librerias

library("dplyr")
library("ggplot2")



# Abrir csv drinks
df <- read.csv("C:/Users/Jaime/Desktop/Prácticas Data Science MA/R - Cesur formacion/Ficherocrime.csv")



# DIVIDIR MUESTRA EN ENTRENAMIENTO Y TESTEO

## Tamaño del 75% de la muestra
smp_size <- floor(0.75 * nrow(df))

## Plantamos una semilla
set.seed(231)

# Separamos los datos en subconjuntos
train_ind <- sample(seq_len(nrow(df)), size = smp_size)
entrenamiento <- df[train_ind, ]
prueba <- df[-train_ind, ]

# Modelamos
modelo <- lm(CarTheft ~ Population, data = entrenamiento)
summary(modelo)

# Prediccion
prediccion <- predict(modelo, prueba)

# Coeficiente de correlacion
cor(prueba$CarTheft, prediccion)

# Intervalos de Cofianza
intervalos <- confint(modelo)
View(intervalos)


# Graficacion
ggplot() + geom_point(data = prueba, aes(x = Population, y = CarTheft), size = 1) + 
  geom_line(aes( x = prueba$Population, y = prediccion), color = "red") +
  xlab("Población") + 
  ylab("Robos de coches") + 
  ggtitle("Dispersion de los datos de entrenamiento sobre el modelo")



