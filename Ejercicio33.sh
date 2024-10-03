################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 18-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula los creditos de alumnos dependiendo de ciertas actividades

#Datos de entrada
read -p "Estás inscrito a un taller (1 = Si y 2 = No): " credito
# Condiciones
if [ "$credito" -eq 1 ]; then
    echo "Tienes un crédito"
    echo ""
    read -p "Participaste en la carrera (1 = si y 2 = NO)" carrera

    if [ "$carrera" -eq 1 ]; then
        echo "Tienes otro crédito"
        read -p "Quedaste en uno de los 3 primeros lugares" lugar

        if [ "$lugar" -eq 1 ]; then
            echo "Genial, tienes tres créditos"
        elif [ "$lugar" -eq 2 ]; then
            echo "Tienes dos créditos"
        fi
    elif [ "$carrera" -eq 2 ]; then
        echo "Tienes solo un crédito"
    fi

elif [ "$credito" -eq 2 ]; then
    echo "Inscríbete a un taller por favor"
    read -p "Participaste en la carrera (1 = si y 2 = NO)" carrera

    if [ "$carrera" -eq 1 ]; then
        echo "Tienes un crédito"
        read -p "Quedaste en uno de los 3 primeros lugares" lugar

        if [ "$lugar" -eq 1 ]; then
            echo "Tienes dos créditos"
        elif [ "$lugar" -eq 2 ]; then
            echo "Tienes un crédito"
        fi
    elif [ "$carrera" -eq 2 ]; then
        echo "No tienes créditos"
    fi

else
    echo "Opción Inválida"
fi

