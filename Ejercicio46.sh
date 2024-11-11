#!/bin/bash
################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Programa que calcula la hipotenusa, el área y el perímetro de un triángulo rectángulo

# Función para calcular la hipotenusa
calcular_hipotenusa() {
    echo "sqrt($Cateto1 * $Cateto1 + $Cateto2 * $Cateto2)" | bc -l
}

# Función para calcular el área
calcular_area() {
    echo "($Cateto1 * $Cateto2) / 2" | bc -l
}

# Función para calcular el perímetro
calcular_perimetro() {
    Hipotenusa=$(calcular_hipotenusa)
    echo "$Cateto1 + $Cateto2 + $Hipotenusa" | bc -l
}

# Entrada de datos
read -p "Valor del cateto 1: " Cateto1
read -p "Valor del cateto 2: " Cateto2

# Cálculos y salida
Hipotenusa=$(calcular_hipotenusa)
Area=$(calcular_area)
Perimetro=$(calcular_perimetro)

echo "Hipotenusa: $Hipotenusa"
echo "Área: $Area"
echo "Perímetro: $Perimetro"

