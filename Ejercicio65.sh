################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Determinar si un número es primo.
# Un número es primo si solo es divisible entre 1 y él mismo.

# Solicitar al usuario que ingrese un número
read -p "Ingresa un número: " Numero
Contador=0  # Inicializar contador de divisores

# Bucle para contar divisores del número
for (( i=1; i<=Numero; i++ ))
do
    # Verificar si el número es divisible por 'i'
    if (( Numero % i == 0 ))
    then
        Contador=$((Contador+1))  # Incrementar el contador si es divisible
    fi
done

# Determinar si el número es primo en función del contador
if (( Contador > 2 ))
then
    echo "No es primo"  # No es primo si tiene más de dos divisores
else
    echo "Es primo"     # Es primo si tiene exactamente dos divisores
fi

