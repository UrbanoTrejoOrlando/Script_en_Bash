################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Determina si un numero es priemo (Un numero es primo si es divisible entre 1 y entres si mismo 

read -p "Ingresa un numero: " Numero
Contador=0

for (( i=1; i<=Numero; i++ ))
do
    if (( Numero % i == 0 ))
    then
        Contador=$((Contador+1))
    fi
done

if (( Contador > 2 ))
then
    echo "No es primo"
else
    echo "Es primo"
fi

