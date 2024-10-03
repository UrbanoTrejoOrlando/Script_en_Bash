################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo para leer calificaciones de N alumnos y calcular el numero de aprobados y reprobados

# Datos de entrada
echo "Cantidad de alumnos: "
read -r alumnos
for ((i = 0; i < alumnos; i++)); do
    # Recabar calificacion de alumnos  
	echo "Calificacion del alumno $((i + 1)) (1-100):"
    read -r calificacion
	# Condicionales
    if ((calificacion > 70)); then
        echo "APROBADO"
    else
        echo "REPROBADO"
    fi
done

