################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 18-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que almacena calificaciones de alumnos y calcula su promedio

materia=""
suma=0
promedio=0
# Asi se declara un arreglo en sh
calificacion=()

#Datos de entrada
read -p "Materia: " materia
for ((i=1; i<=5; i++)); do
    read -p "Calificacion en la Unidad $i: " calificacion[i]
    Suma=$((suma + calificacion[i]))
done

promedio=$(bc <<< "$suma / 5")

# Impresion de resultados
echo "Asignatura: $materia"
echo -e "Unidad 1\tUnidad 2\tUnidad 3\tUnidad 4\tUnidad 5\tPromedio"

for ((i=1; i<=5; i++)); do
    echo -e "${calificacion[i]}\t\t\c"
done

echo "$promedio"




