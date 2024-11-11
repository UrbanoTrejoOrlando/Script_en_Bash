#!/bin/bash

################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Solicitar el nombre y el signo zodiacal de una persona.
# Imprimir el nombre solo si el signo es Aries; de lo contrario, imprimir "No eres signo Aries".

# Solicitar nombre
echo "Ingresa tu nombre: "
read -r nombre

# Solicitar signo zodiacal
echo "Ingresa tu signo zodiacal: "
read -r signo

# Comprobar si el signo es Aries
if [ "$signo" = "Aries" ]; then
    echo "Eres signo Aries, tu nombre es: $nombre"
else
    echo "No eres signo Aries"
fi

