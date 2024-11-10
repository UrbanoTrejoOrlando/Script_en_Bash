################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Imprimir los números de 5 en 5 hasta el número ingresado por el usuario

# Solicitar al usuario que ingrese un número
read -p "Ingresa un número: " Numero

# Iniciar el ciclo desde 5 y aumentar de 5 en 5 hasta llegar o superar el número ingresado
for (( i=5; i<=Numero; i+=5 )); do
    echo -n "$i, "
done
echo

