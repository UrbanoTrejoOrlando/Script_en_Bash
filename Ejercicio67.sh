################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Hacer una piramide de numeros 

#!/bin/bash

read -p "Ingresa un numero: " Numero

Posicion_Central=$Numero
Numero_Posiciones=$((Numero * 2 - 1))
Posicion_Inicial=$Numero
Posicion_Final=$Numero

for ((i=0; i<$Numero; i++))
do
    Contador=1
    for ((j=1; j<=$Numero_Posiciones; j++))
    do
        if ((j < Posicion_Inicial || j > Posicion_Final))
        then
            echo -n " "
        else
            if ((j < Numero))
            then
                echo -n "$Contador"
                Contador=$((Contador+1))
            else
                echo -n "$Contador"
                Contador=$((Contador-1))
            fi
        fi
    done
    echo
    Posicion_Final=$((Posicion_Final+1))
    Posicion_Inicial=$((Posicion_Inicial-1))
done


