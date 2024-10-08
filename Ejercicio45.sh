################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Escribir un programa que lea un caracter en minuscula e imprima por pantalla, el mismo caracter en mayuscula

read -p "Ingresa una letra en minúscula: " Letra_Minuscula
Letra_Mayuscula=$(echo "$Letra_Minuscula" | tr '[:lower:]' '[:upper:]')
echo "La letra $Letra_Minuscula en minúscula es $Letra_Mayuscula en mayúscula."

