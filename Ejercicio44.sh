#!/bin/bash
################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Programa con opciones de calcular el cubo de un número, verificar paridad, o salir

# Función para calcular el cubo de un número
calcular_cubo() {
    read -p "Número: " Numero
    Cubo=$((Numero * Numero * Numero))
    echo "El cubo de $Numero es $Cubo"
}

# Función para verificar si un número es par o impar
verificar_paridad() {
    read -p "Número: " Numero
    if [ "$((Numero % 2))" -eq 0 ]; then
        echo "$Numero es un número par"
    else
        echo "$Numero es un número impar"
    fi
}

# Menú principal
while true; do
    echo "-----MENU DE OPCIONES-----"
    echo "1) Cubo de un número"
    echo "2) Número par o impar"
    echo "3) Salir"
    read -p "Elige una opción: " Opcion

    case $Opcion in
        1)
            calcular_cubo
            ;;
        2)
            verificar_paridad
            ;;
        3)
            echo "Fin del programa"
            break
            ;;
        *)
            echo "Opción inválida. Por favor, elige una opción válida."
            ;;
    esac
done

