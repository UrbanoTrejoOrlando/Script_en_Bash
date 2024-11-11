#!/bin/bash
################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Programa que convierte una letra en minúscula a mayúscula

# Función para convertir minúscula a mayúscula
convertir_mayuscula() {
    read -p "Ingresa una letra en minúscula: " Letra_Minuscula
    # Validar que sea un solo carácter en minúscula
    if [[ "$Letra_Minuscula" =~ ^[a-z]$ ]]; then
        Letra_Mayuscula=$(echo "$Letra_Minuscula" | tr '[:lower:]' '[:upper:]')
        echo "La letra $Letra_Minuscula en minúscula es $Letra_Mayuscula en mayúscula."
    else
        echo "Entrada inválida. Por favor ingresa una sola letra en minúscula."
    fi
}

# Ejecutar función
convertir_mayuscula

