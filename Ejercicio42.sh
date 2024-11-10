################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Convertir de grados Celsius a Fahrenheit

echo "Ingresa los grados Celsius a convertir: "
read -r Grados
# Conversion de Celsius a Fahrenheit
Conversion=$(echo "scale=2; ($Grados * 1.8) + 32" | bc)
echo "La conversión de $Grados°C a Fahrenheit es: $Conversion°F"

