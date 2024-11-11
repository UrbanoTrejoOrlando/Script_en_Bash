################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com            #
################################################

#!/bin/bash

# Función para verificar si una letra es mayúscula
verificar_mayuscula() {
    # Usamos una expresión regular para verificar si el primer carácter es una letra mayúscula (A-Z)
    if [[ "$1" =~ [A-Z] ]]; then
        # Si la letra es mayúscula, se imprime este mensaje
        echo "La letra $1 es mayúscula"
    else
        # Si la letra no es mayúscula, se imprime este mensaje
        echo "La letra $1 es minúscula"
    fi
}

# Solicitar al usuario que ingrese una letra
echo "Ingresa una letra: "
read -r Letra  # Leer la entrada del usuario y guardarla en la variable Letra

# Llamar a la función para verificar la letra
verificar_mayuscula "$Letra"  # Pasar la letra ingresada como argumento a la función

