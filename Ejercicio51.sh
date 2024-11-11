#!/bin/bash

################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
# Descripción: 
#   Script para convertir cualquier cadena 
#   de texto ingresada a mayúsculas.
################################################

# Solicitar al usuario una cadena de texto
read -rp "Por favor, ingresa una cadena de texto: " texto

# Convertir el texto a mayúsculas
texto_mayusculas=$(echo "$texto" | tr '[:lower:]' '[:upper:]')

# Mostrar el resultado
echo "Texto en mayúsculas: $texto_mayusculas"

