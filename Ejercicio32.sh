################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 18-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que registra las calificaciones de varias materias y calcula su promedio

# Arreglo de materias
materias=(
  "Cálculo Diferencial"
  "Fundamentos de Programación"
  "Química"
  "Fundamentos de investigación"
  "Matemáticas Discretas"
  "Desarrollo Sustentable"
)

# Arreglos para calificaciones y promedios
calificaciones=()
promediosMaterias=()
promedioGeneral=0

# Ciclo para ingresar calificaciones por materia
for ((i=0; i<6; i++)); do
  	# Solicitar las calificaciones para cada materia
	echo "Calificación ${materias[$i]}:"
	califs=()  # Arreglo para almacenar las calificaciones de una materia

	# Ciclo para ingresar las calificaciones de cada unidad
	for ((j=0; j<5; j++)); do
    	read -p "Unidad $((j+1)): " calificacion
    	califs+=("$calificacion")  # Agregar la calificación al arreglo
    	promediosMaterias[$i]=$((promediosMaterias[i] + calificacion))  # Sumar las calificaciones
    done

    # Calcular el promedio de las materias
    promediosMaterias[$i]=$((promediosMaterias[i] / 5))
    promedioGeneral=$((promedioGeneral + promediosMaterias[i]))  # Sumar al promedio general
    calificaciones+=("${califs[@]}")  # Agregar las calificaciones al arreglo general
    echo ""
done

# Calcular el promedio general de todas las materias
promedioGeneral=$((promedioGeneral / 6))

# Impresión de resultados
echo -e "Unidad 1\tUnidad 2\tUnidad 3\tUnidad 4\tUnidad 5\tPromedio"
for ((i=0; i<6; i++)); do
  # Imprimir las calificaciones por materia
  for ((j=0; j<5; j++)); do
    echo -ne "${calificaciones[i*5+j]}\t\t"  # Imprimir cada calificación
  done
  # Imprimir el promedio de cada materia
  echo "${promediosMaterias[i]}"
done

# Mostrar el promedio general
echo -e "\nPromedio general: $promedioGeneral"

