################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo para leer calificaciones de N alumnos y calcular el número de aprobados y reprobados

# Datos de entrada
echo "Cantidad de alumnos: "
read -r alumnos

# Inicializar contadores
aprobados=0
reprobados=0

for ((i = 0; i < alumnos; i++)); do
    # Recabar calificación de alumnos  
    echo "Calificación del alumno $((i + 1)) (1-100):"
    read -r calificacion
    
    # Condicionales
    if ((calificacion >= 70)); then
        echo "APROBADO"
        ((aprobados++))  # Incrementar el contador de aprobados
    else
        echo "REPROBADO"
        ((reprobados++))  # Incrementar el contador de reprobados
    fi
done

# Resultado final
echo "Número de aprobados: $aprobados"
echo "Número de reprobados: $reprobados"

