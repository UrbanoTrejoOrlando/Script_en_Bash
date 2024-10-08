################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Sumar numeros pares desde n hasta m. 

read -p "Ingresa un numero para el inicio de la suma: " Num_Inicio
read -p "Ingresa un numero para el limite de la suma: " Num_Final
Suma=0

for (( i=Num_Inicio; i<=Num_Final; i++ ))
do
    if (( i % 2 == 0 ))
    then
        Suma=$((Suma + i))
    fi
done

echo "Suma: $Suma"


