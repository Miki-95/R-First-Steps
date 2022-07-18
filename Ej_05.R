

# Crear los vectores vacios que necesitamos
matricula <- c()
Nombre_Apellidos <- c()
Nota_media <- c()
  
# Preguntamos cuantos alumnos queremos registrar  
N <- as.integer(readline(print("Cuantos estudiantes quieres insertar?")))

# Pedimos N veces la informacion de los alumnos
for (i in 1:N){
  print(paste("Estudiante", N))
  matricula = c(matricula, readline(print("Cual es el numero de matricula?")))
  Nombre_Apellidos = c(Nombre_Apellidos, readline(print("Nombre y apellidos del estudiante?")))
  Nota_media = c(Nota_media, as.numeric(readline(print("Nota media del estudiante?"))))
}

# Creamos el data.frame
df <- data.frame(
  "N_matricula" = matricula, 
  "Nombre_apellidos" = Nombre_Apellidos,
  "Nota_media" = Nota_media
)

#Imprimimos
print(df)
View(df)
