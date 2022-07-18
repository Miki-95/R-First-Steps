# Generar un modelo polinomico de grado 2

library("dplyr")
library("ggplot2")
library("caTools")
library("stats")

# Establecemos directorio y abrimos la base de datos
setwd("C:/Users/migue/Desktop/R")
df=read.csv("C:/Users/migue/Desktop/R/auto-mpg.csv") # Datos de UCI

# La base de datos viene con algunos interrogantes en horsepower y ha guardado la columna como character
# Transformamos ? en NA, y la columna a tipo numérico
df$horsepower[df$horsepower=="?"] <- NA
df["horsepower"] <-  as.numeric(unlist(df["horsepower"]))


# Dividimos los datos en entrenamiento y prueba
split=sample.split(df,SplitRatio = 0.75)
entrena=subset(df,split == TRUE)
prueba=subset(df,split == FALSE)

# Ajuste a un modelo de grado 1
fit <- lm(mpg~ cylinders,displacement +  horsepower + weight + acceleration + year ,data=entrena)
# Resumen
summary(fit)


# Ajuste a un modelo de grado 2
modelo_poli2 <- lm(mpg ~ polym(cylinders, displacement, horsepower ,  weight , acceleration ,  year, degree= 2, raw=TRUE), data = df)
# Resumen del modelo
summary(modelo_poli2)
predichos2 <- predict(modelo_poli2, prueba)


# Ajuste a un modelo de grado 3
modelo_poli3 <- lm(mpg ~ polym(cylinders, displacement, horsepower ,  weight , acceleration ,  year, degree= 3, raw=TRUE), data = df)
# Resumen del modelo
summary(modelo_poli3)
predichos3 <- predict(modelo_poli3, prueba)



