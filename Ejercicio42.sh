################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Convertir de grados Celcius a Fahrenheit

echo "Grados a convertir: "
read -r Grados
Conversion=$(bc <<< "scale=2; ($Grados * 1.8) + 32")
echo "Conversion: $Conversion"

