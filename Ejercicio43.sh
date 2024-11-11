#!/bin/bash
################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Programa que simula un cajero automático con un saldo inicial de 1000

Saldo=1000

# Función para ingresar dinero
ingresar_dinero() {
    read -p "¿Cuánto dinero vas a ingresar?: " Dinero
    Saldo=$((Saldo + Dinero))
    echo "Tu nuevo saldo es de: $Saldo"
}

# Función para retirar dinero
retirar_dinero() {
    read -p "¿Cuánto dinero vas a retirar?: " Dinero
    if [ "$Dinero" -le "$Saldo" ]; then
        Saldo=$((Saldo - Dinero))
        echo "Tu nuevo saldo es de: $Saldo"
    else
        echo "Saldo insuficiente. No puedes retirar esa cantidad."
    fi
}

# Menú principal
while true; do
    echo "1) Ingresar dinero"
    echo "2) Retirar dinero"
    echo "3) Salir"

    read -p "Elige una opción: " Opcion

    case $Opcion in
        1)
            ingresar_dinero
            ;;
        2)
            retirar_dinero
            ;;
        3)
            echo "Fin del programa."
            break
            ;;
        *)
            echo "Opción inválida. Por favor, elige una opción válida."
            ;;
    esac
done

