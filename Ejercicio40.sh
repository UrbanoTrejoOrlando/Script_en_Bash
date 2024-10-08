################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Realiza un codigo que imprima los numeros de 5 en 5 hasta donde el usuario digite

read -p "Ingresa un numero: " Numero

for (( i=1; i<=Numero; i++ )); do
    if (( i % 5 == 0 )); then
        echo -n "$i, "
    fi
done
echo
