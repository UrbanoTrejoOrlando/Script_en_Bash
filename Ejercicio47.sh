#!/bin/bash
################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 27-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Programa que calcula el número de monedas a devolver de forma óptima

# Función para calcular cuántas monedas de cada tipo se necesitan
calcular_monedas() {
    local valor_moneda=$1
    local cantidad=$(($Cantidad_Centavos / $valor_moneda))
    Cantidad_Centavos=$(($Cantidad_Centavos - $cantidad * $valor_moneda))
    echo $cantidad
}

# Leer cantidad en euros y convertir a centavos
read -p "Ingresa la cantidad a devolver en euros: " Cantidad_Euros
Cantidad_Centavos=$(echo "$Cantidad_Euros * 100" | bc | cut -d'.' -f1)

# Calcular la cantidad de cada tipo de moneda
Monedas_50=$(calcular_monedas 50)
Monedas_20=$(calcular_monedas 20)
Monedas_10=$(calcular_monedas 10)
Monedas_5=$(calcular_monedas 5)

# Mostrar el resultado
echo "$Monedas_50 monedas de 50 centimos."
echo "$Monedas_20 monedas de 20 centimos."
echo "$Monedas_10 monedas de 10 centimos."
echo "$Monedas_5 monedas de 5 centimos."

