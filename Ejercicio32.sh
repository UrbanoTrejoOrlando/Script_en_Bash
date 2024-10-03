################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 18-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que registra las calificaciones de varias materias y calcular su promedio

materias=(
  "Cálculo Diferencial"
  "Fundamentos de Programación"
  "Química"
  "Fundamentos de investigación"
  "Matemáticas Discretas"
  "Desarrollo Sustentable"
)
calificaciones=()
promediosMaterias=()
promedioGeneral=0

for ((i=0; i<6; i++)); do
  	# Datos de entrada 
	echo "Calificación ${materias[$i]}:"
  	califs=()
  	for ((j=0; j<5; j++)); do
    	read -p "Unidad $((j+1)): " calificacion
    	califs+=("$calificacion")
    	promediosMaterias[$i]=$((promediosMaterias[i] + calificacion))
    done
    calificaciones+=("${califs[@]}"
    promediosMaterias[$i]=$((promediosMaterias[i] / 5))
    promedioGeneral=$((promedioGeneral + promediosMaterias[i]))
    echo ""
done

promedioGeneral=$((promedioGeneral / 6))

# Impresión de resultados
echo -e "Unidad 1\tUnidad 2\tUnidad 3\tUnidad 4\tUnidad 5\tPromedio"
for ((i=0; i<6; i++)); do
  for ((j=0; j<5; j++)); do
    echo -ne "${calificaciones[i*5+j]}\t\t"
  done
  echo "${promediosMaterias[i]}"
done

# (-e) nos sirve para que podamos poner caracteres especiales como \n o \t
echo -e "\nPromedio general: $promedioGeneral"

