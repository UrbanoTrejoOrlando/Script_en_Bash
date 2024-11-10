################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 18-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula los créditos de alumnos dependiendo de su participación en actividades

# Datos de entrada
read -p "¿Estás inscrito a un taller? (1 = Si, 2 = No): " credito

# Condicionales para calcular los créditos
if [ "$credito" -eq 1 ]; then
    echo "Tienes un crédito por estar inscrito al taller."
    echo ""
    read -p "¿Participaste en la carrera? (1 = Si, 2 = No): " carrera

    if [ "$carrera" -eq 1 ]; then
        echo "Tienes un crédito adicional por participar en la carrera."
        read -p "¿Quedaste en uno de los 3 primeros lugares? (1 = Si, 2 = No): " lugar

        if [ "$lugar" -eq 1 ]; then
            echo "¡Genial! Tienes tres créditos por ganar un lugar en la carrera."
        elif [ "$lugar" -eq 2 ]; then
            echo "Tienes dos créditos por participar en la carrera, pero no quedaste en los primeros lugares."
        else
            echo "Opción inválida para los lugares."
        fi
    elif [ "$carrera" -eq 2 ]; then
        echo "Tienes solo un crédito por participar en el taller, pero no participaste en la carrera."
    else
        echo "Opción inválida para la participación en la carrera."
    fi

elif [ "$credito" -eq 2 ]; then
    echo "No estás inscrito a un taller, por favor inscríbete a uno."
    read -p "¿Participaste en la carrera? (1 = Si, 2 = No): " carrera

    if [ "$carrera" -eq 1 ]; then
        echo "Tienes un crédito por participar en la carrera."
        read -p "¿Quedaste en uno de los 3 primeros lugares? (1 = Si, 2 = No): " lugar

        if [ "$lugar" -eq 1 ]; then
            echo "Tienes dos créditos por quedar entre los tres primeros lugares de la carrera."
        elif [ "$lugar" -eq 2 ]; then
            echo "Tienes un crédito por participar en la carrera, pero no quedaste en los primeros lugares."
        else
            echo "Opción inválida para los lugares."
        fi
    elif [ "$carrera" -eq 2 ]; then
        echo "No tienes créditos por no participar en ninguna actividad."
    else
        echo "Opción inválida para la participación en la carrera."
    fi

else
    echo "Opción inválida, por favor ingresa 1 para 'Sí' o 2 para 'No'."
fi

