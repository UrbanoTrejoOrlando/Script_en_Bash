################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 27-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: La empresa que fabrica un modelo de maquinas expendedoras de refrescos necesita un programa para estas maquinas que realicebel calculo de cuantas monedas de cada tipo debe devolver. Para ello, en primer lugar, se introducira por teclado la cantidad a devolver en euros (multiplo de 5 centimos, que es la moneda mas pequena de la que se dispone), es decir, se tecleara 1.85 para 1 euro con 85 centimos. Este programa escribira en pantalla cuantas monedas de cada tipo hay que devolver teniendo en cuenta que:
#- Se dispone de monedas de 50 centimos, 20 centimos, 10 centimos y 5 centimos.
# - Siempre se dispone de las monedas necesarias de cada tipo.
# - Se debe devolver el menor numero de monedas posible, es decir, intentar devolver con las de mayor valor 
# Ejemplo:
# Si se introduce la cantidad de 1 euro con 85 centimos, el programa debe imprimir: 3 monedas de 50 centimos,1 moneda de 20 centimos,1 moneda de 10 centimos,1 moneda de 5 centimos.
# Si se introduce la cantidad de 1 euro con 20 centimos, el pro-grama debe imprimir:2 monedas de 50 centimos, 1 moneda de 20 centimos, 0 monedas de 10 centimos, 0 monedas de 5 centimos

read -p "Ingresa la cantidad a devolver en euros: " Cantidad_Euros
Euros_Devolver=$Cantidad_Euros

Centimos_50=$((Euros_Devolver / 0.5))
Euros_Devolver=$(echo "scale=2; $Euros_Devolver - 0.5 * $Centimos_50" | bc)

Centimos_20=$((Euros_Devolver / 0.2))
Euros_Devolver=$(echo "scale=2; $Euros_Devolver - 0.2 * $Centimos_20" | bc)

Centimos_10=$((Euros_Devolver / 0.1))
Euros_Devolver=$(echo "scale=2; $Euros_Devolver - 0.1 * $Centimos_10" | bc)

Centimos_5=$((Euros_Devolver / 0.05))

echo "$Centimos_50 monedas de 50 centimos."
echo "$Centimos_20 monedas de 20 centimos."
echo "$Centimos_10 monedas de 10 centimos."
echo "$Centimos_5 monedas de 5 centimos."

