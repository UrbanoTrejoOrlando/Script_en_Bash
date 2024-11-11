#!/bin/bash
################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Escribir una palabra y ver cuánto mide la cadena

echo "Ingresa una palabra: "
read -r Palabra

# Calcular la longitud de la palabra
Longitud=${#Palabra}

# Mostrar la longitud
echo "La longitud de la palabra '$Palabra' es: $Longitud"

