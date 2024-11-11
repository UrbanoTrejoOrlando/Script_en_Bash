#!/bin/bash
################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Define un array de 10 números enteros con nombre Num y asigna 5 valores. Muestra el contenido de todos los elementos del array.

# Definimos el array con 10 elementos, asignando 5 valores específicos
Num=(0 2 0 4 0 0 -2 6 0 0)

# Mostrar el contenido de todos los elementos del array
for ((i = 0; i < 10; i++)); do
    echo "Posición $((i + 1)): ${Num[$i]}"
done

