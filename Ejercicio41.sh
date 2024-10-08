################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Realiza un codigo que calcule la siguiente suma (1-2+3-4+5-6 hasta n) donde n sea ingresada por el usuario

echo "Ingresa un numero: " 
read -r Numero

Pares=0
Impares=0
Negativos=0

for (( i=1; i<=Numero; i++ )); do
    if (( i % 2 == 0 )); then
        Negativos=$((i * -1))
        Pares=$((Pares + Negativos))
    else
        Impares=$((Impares + i))
    fi
done

Suma=$((Pares + Impares))
echo "Suma: $Suma"

