################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Realiza un programa que lea una cadena por teclado y compruebe si es una letra mayuscula

echo "Ingresa una letra: "
read -r Letra

if [[ "$Letra" == [A-Z] ]]; then
    echo "La letra $Letra es mayuscula"
else
    echo "La letra $Letra es minuscula"
fi

