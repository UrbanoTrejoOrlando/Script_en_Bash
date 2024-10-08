################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Escribir un programa que lea los valores de los catetos de un triangulo rectangulo y calcule cual es la hipotenusa, area y el perimetro del triangulo mediante las siguientes expresiones

read -p "Valor del cateto 1: " Cateto1
read -p "Valor del cateto 2: " Cateto2

Hipotenusa=$(echo "sqrt($Cateto1 * $Cateto1 + $Cateto2 * $Cateto2)" | bc -l)
Area=$(echo "($Cateto1 * $Cateto2) / 2" | bc -l)
Perimetro=$(echo "$Cateto1 + $Cateto2 + $Hipotenusa" | bc -l)

echo "Hipotenusa: $Hipotenusa"
echo "Area: $Area"
echo "Perimetro: $Perimetro"

