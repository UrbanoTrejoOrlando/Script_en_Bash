################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Calcular el mayor de dos numeros leidos del teclado y visualzarlos en pantalla.

echo "Ingresa el numero 1: "
read -r Numero1

echo "Ingresa el numero 2: "
read -r Numero2

if [ "$Numero1" -gt "$Numero2" ]; then
    echo "El numero mayor es: $Numero1"
elif [ "$Numero1" -eq "$Numero2" ]; then
    echo "Los numeros son iguales"
else
    echo "El numero mayor es: $Numero2"
fi


