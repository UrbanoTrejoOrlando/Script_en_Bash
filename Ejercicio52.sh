#!/bin/bash

################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
# Descripción: 
#   Este script muestra el resto de la cadena
#   a partir de la primera aparición del 
#   carácter especificado.
################################################

# Cadena base
abecedario="ABCDEFGHIJKLMNOPQRSTUVWXYZ"

# Solicitar el carácter de corte
read -rp "Ingresa la letra donde quieres realizar el corte: " corte

# Mostrar el resultado de la cadena cortada
echo "Nueva Cadena: ${abecedario##*$corte}"

