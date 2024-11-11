################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Crear una pirámide de números con un número de filas dado por el usuario.

#!/bin/bash

# Solicitar al usuario que ingrese el número de filas para la pirámide
read -p "Ingresa un número: " Numero

# Definir la posición central y el número de posiciones para imprimir
Posicion_Central=$Numero
Numero_Posiciones=$((Numero * 2 - 1))
Posicion_Inicial=$Numero
Posicion_Final=$Numero

# Bucle para cada fila de la pirámide
for ((i=0; i<Numero; i++))
do
    Contador=1  # Inicializar contador para cada fila
    # Bucle para cada posición en la fila
    for ((j=1; j<=Numero_Posiciones; j++))
    do
        # Verificar si estamos dentro del rango de la pirámide
        if ((j < Posicion_Inicial || j > Posicion_Final))
        then
            echo -n " "  # Imprimir espacio en blanco fuera de la pirámide
        else
            # Imprimir números en la pirámide
            echo -n "$Contador"
            # Incrementar o decrementar el contador según la posición
            if ((j < Numero))
            then
                Contador=$((Contador+1))
            else
                Contador=$((Contador-1))
            fi
        fi
    done
    # Pasar a la siguiente línea después de completar la fila
    echo
    # Ajustar las posiciones inicial y final para la siguiente fila
    Posicion_Final=$((Posicion_Final+1))
    Posicion_Inicial=$((Posicion_Inicial-1))
done


