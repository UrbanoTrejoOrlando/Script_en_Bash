################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Ingresa por teclado el nombre y el signo de cualquier persona e imprima el nombre solo si la persona es signo Aries, caso contrario imprimir "No es signo Aries"

echo "Ingresa tu nombre: "
read -r  Nombre

echo "Ingresa tu signo: "
read -r Signo

if [ "$Signo" = "Aries" ]; then
    echo "Eres signo Aries, tu nombre es: $Nombre"
else
    echo "No eres signo Aries"
fi


