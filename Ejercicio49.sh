################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Define un array de 10 numeros enteros con nombre Num y asigna 5 valores.Muestra el contenido de todos los elementos de el array

Num=(0 2 0 4 0 0 -2 6 0 0 0 0)

for ((i = 1; i <= 10; i++)); do
    echo "Posición $i: ${Num[$i]}"
done

