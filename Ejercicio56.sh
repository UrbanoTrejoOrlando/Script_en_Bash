################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Ingresa un numero, calcula e imprime su raiz cuadrada, si el numero es negativo imprimir un mensaje que diga "Tiene raiz imaginaria"

echo "Ingresa un numero: "
read -r Numero

if [ "$Numero" -gt 1 ]; then
    Resultado=$(bc <<< "sqrt($Numero)")
    echo "Raiz cuadrada: $Resultado"
else
    echo "Tiene raiz imaginaria"
fi


