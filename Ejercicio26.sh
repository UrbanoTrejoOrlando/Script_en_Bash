################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 17-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula la calficacion de N alumnos y calcula el promedio general

# Datos de entrada
read -p "Cuantos alumnos hay en el salon: " alumnos
suma=0
promedio=0
for((i = 1; i <= $alumnos; i++)) do
    read -p "Edad del alumno $i:" edad
	suma=$(bc <<< "$suma + $edad")
done
# Operaciones
promedio=$(bc <<< "$suma / $alumnos")
echo "El promedio de las edades de los alumnos es: " $promedio
