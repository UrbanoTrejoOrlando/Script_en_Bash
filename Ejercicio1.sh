################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que determina a qué letra corresponde la calificación obtenida.

# Solicitar al usuario la calificación obtenida
read -p "Ingresa la calificación obtenida (0-10): " calificacion

# Evaluar la calificación y determinar la letra correspondiente
case $calificacion in
    0|1|2|3|4|5)
        echo "Tu calificación es: F"
        ;;
    6|7)
        echo "Tu calificación es: D"
        ;;
    8)
        echo "Tu calificación es: C"
        ;;
    9)
        echo "Tu calificación es: B"
        ;;
    10)
        echo "Tu calificación es: A"
        ;;
    *)
        echo "Calificación no válida"
        ;;
esac


