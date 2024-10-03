################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que determina a que letra perteneces segun la calificacion obtenida.

# Entrada de datos
read -p "Ingresa la calificacion obtenida (0-10): " calificacion
# Evaluamos el dato obtenido
case $Calificacion in
    0|1|2|3|4|5)
        echo "Tu calificacion es: F"
        ;;
    6|7)
        echo "Tu calificacion es: D"
        ;;
    8)
        echo "Tu calificacion es: C"
        ;;
    9)
        echo "Tu calificacion es: B"
        ;;
    10)
        echo "Tu calificacion es: A"
        ;;
    *)
        echo "Calificacion no valida"
       ;;
esac


