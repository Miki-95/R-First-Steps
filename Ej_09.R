# Establecer directorio de trabajo

setwd("C:/Users/migue/Desktop/R/Ejercicios")

# Abrir las librerias

library("dplyr")
library("ggplot2")
library("caTools")


# Abrir csv drinks
df <- read.csv("C:/Users/migue/Desktop/R/Ejercicios/Crime.csv")


# Dividimos los datos en entrenamiento y prueba
split=sample.split(df,SplitRatio = 0.8)
entrena=subset(df,split == TRUE)
prueba=subset(df,split == FALSE)

# Ajustamos los datos a un modelo de regresion lineal
modelo <- lm(CarTheft ~ Population +Murder + Rape + Robbery + Burglary, data = entrena )
summary(modelo)


# Predecimos los datos de prueba
predichos <- predict(modelo, prueba)
# View(prueba)


# Graficamos el modelo con los datos
ggplot(df,aes(y=CarTheft,x= Population + Murder + Rape + Robbery + Burglary))+geom_point()+geom_smooth(method="lm")+
  labs(x= "Modelo multiple", y= "Robos de coches", title= "Valores reales - Modelo multiple")

ggplot(entrena,aes(y=CarTheft,x= Population + Murder + Rape + Robbery + Burglary))+geom_point()+geom_smooth(method="lm")

