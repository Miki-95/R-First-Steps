# Establecer directorio de trabajo

setwd("C:/Users/Jaime/Desktop/Prácticas Data Science MA/R - Cesur formacion")

# Abrir las librerias

library("dplyr")
library("ggplot2")

# Abrir csv drinks
df <- read.csv("C:/Users/Jaime/Desktop/Prácticas Data Science MA/R - Cesur formacion/drinks.csv")


# Agrupar los contenidos por continentes

by_continentes <- df  %>% 
  group_by(continent) %>% 
  summarise(paises = n(), cerveza = sum(beer_servings), vino = sum(wine_servings), licor= sum(spirit_servings), puro=sum(total_litres_of_pure_alcohol))


# Igual, pero con eliminando los paises que tienen un consumo de alcohol puro de 0
by_continentes_puro <- df %>% 
  filter(total_litres_of_pure_alcohol>0)  %>% 
  group_by(continent) %>% 
  summarise(paises = n(), cerveza = sum(beer_servings), vino = sum(wine_servings), licor= sum(spirit_servings), puro=sum(total_litres_of_pure_alcohol))

View(by_continentes_puro)


# Crear el gráfico
# Azul
ggplot(df, aes(x=wine_servings, y=spirit_servings)) + 
  geom_point(colour = 'blue', size =2)+
  xlab("Porciones de Vino")+
  ylab("Porciones de licor")+
  ggtitle("Consumo de licor - Consumo de vino en el mundo")
  

# Rojo
ggplot(df, aes(x=wine_servings, y=spirit_servings)) + 
  geom_point(colour = 'red', size =2)+
  labs( x ="Porciones de Vino", y = "Porciones de licor", title = "Consumo de licor - Consumo de vino en el mundo")


