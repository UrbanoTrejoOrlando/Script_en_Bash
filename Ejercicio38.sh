################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Realizar la serie Fibonacci 

echo "Ingresa un numero: " 
read -r Numero

x=0
y=1
z=1
echo -n "1, "
for (( i=1; i<=Numero; i++ )); do
    z=$((x + y))
    x=$y
    y=$z
    echo -n "$z, "
done
echo

