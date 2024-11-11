#!/bin/bash
################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Convertir a mayúsculas cualquier cadena de texto.

echo "Ingresa una cadena de texto: "
read -r Texto

# Convertir el texto a mayúsculas usando el comando tr
Mayuscula=$(echo "$Texto" | tr '[:lower:]' '[:upper:]')

# Mostrar el texto convertido a mayúsculas
echo "Texto en mayúsculas: $Mayuscula"

