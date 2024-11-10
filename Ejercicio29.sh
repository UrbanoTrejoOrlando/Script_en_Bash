################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 18-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que almacena calificaciones de alumnos y calcula su promedio

# Inicialización de variables
materia=""
suma=0
promedio=0
# Declaración de un arreglo para almacenar las calificaciones
calificacion=()

# Datos de entrada
read -p "Materia: " materia
for ((i=1; i<=5; i++)); do
    read -p "Calificación en la Unidad $i: " calificacion[i]
    suma=$((suma + calificacion[i]))
done

# Cálculo del promedio
promedio=$(bc <<< "scale=2; $suma / 5")

# Impresión de resultados
echo "Asignatura: $materia"
echo -e "Unidad 1\tUnidad 2\tUnidad 3\tUnidad 4\tUnidad 5\tPromedio"

# Imprimir las calificaciones y el promedio
for ((i=1; i<=5; i++)); do
    echo -n -e "${calificacion[i]}\t\t"
done
echo "$promedio"

