#!/bin/bash

################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Calcular el mayor de dos números ingresados desde el teclado y mostrarlo en pantalla.

# Solicitar los números al usuario
echo "Ingresa el número 1: "
read -r numero1

echo "Ingresa el número 2: "
read -r numero2

# Comparar los números y mostrar el resultado
if (( numero1 > numero2 )); then
    echo "El número mayor es: $numero1"
elif (( numero1 == numero2 )); then
    echo "Los números son iguales"
else
    echo "El número mayor es: $numero2"
fi

