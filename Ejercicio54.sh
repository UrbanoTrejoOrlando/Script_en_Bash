#!/bin/bash

################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Visualizar la tarifa de luz según el gasto de corriente eléctrica.
# Para un gasto de menos de 1000 kW, la tarifa es 1.2.
# Para un gasto de 1000 a 1849 kW, la tarifa es 1.0.
# Para un gasto de 1850 kW o más, la tarifa es 0.9.

echo "Ingresa el consumo de corriente eléctrica en kW: "
read -r consumo

if (( consumo < 1000 )); then
    tarifa=1.2
elif (( consumo < 1850 )); then
    tarifa=1.0
else
    tarifa=0.9
fi

echo "Tu tarifa es de $tarifa"

