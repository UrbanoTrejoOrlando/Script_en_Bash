################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 17-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula la edad promedio de N alumnos en un salón.

# Solicitar el número de alumnos
read -p "¿Cuántos alumnos hay en el salón? " alumnos

# Inicializar la suma de edades en 0
suma=0

# Solicitar la edad de cada alumno y acumularla en la variable suma
for ((i = 1; i <= alumnos; i++)); do
    read -p "Edad del alumno $i: " edad
    suma=$(bc <<< "$suma + $edad")
done

# Calcular el promedio de las edades
promedio=$(bc <<< "scale=2; $suma / $alumnos")

# Mostrar el promedio
echo "El promedio de las edades de los alumnos es: $promedio"

