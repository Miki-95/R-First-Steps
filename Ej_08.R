# Establecer directorio de trabajo

setwd("C:/Users/Jaime/Desktop/Prácticas Data Science MA/R - Cesur formacion")

# Abrir las librerias

library("dplyr")
library("ggplot2")
library("tidyverse")

# Abrir csv drinks
df <- read.csv("C:/Users/Jaime/Desktop/Prácticas Data Science MA/R - Cesur formacion/Ficherocrime.csv")


# Seleccionar el rango de años que queremos
rango_historico <- df  %>% 
  filter (Year >= 1970 & Year < 1993) %>%
  select("Year", "Murder", "Rape")
View(rango_historico)

# Resumir el total en un tabla
resumen <- rango_historico %>% 
  summarise(Violaciones= sum(Rape), Asesinatos = sum(Murder))


# Crear gráfico comparativo

# Necesitamos pasar de formato ancho a largo

rango_largo <-  rango_historico %>%
  gather(Tipo, Cantidad, -Year)

ggplot(rango_largo, aes(x = Year, y = Cantidad, color = Tipo)) +
  geom_line(linetype = 1, lwd = 1.1)+
  labs(x= "Año", y= "Cantidad", title= "Asesintos y Violaciones en Boston entre 1970-1993")


