################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Realizar la serie de Fibonacci

# Solicitar al usuario que ingrese un número
echo "Ingresa un número para generar la serie de Fibonacci: "
read -r Numero

# Inicializamos los dos primeros términos de la serie
x=0
y=1

# Si el número ingresado es 1, solo mostrar el primer término (0)
if (( Numero == 1 )); then
    echo "Serie Fibonacci: $x"
else
    # Mostrar los primeros dos términos (0 y 1)
    echo -n "Serie Fibonacci: 0, 1, "
    
    # Generar los siguientes términos de la serie
    for (( i=2; i<Numero; i++ )); do
        z=$((x + y))  # La siguiente posición es la suma de las dos anteriores
        echo -n "$z, "
        x=$y  # Actualizamos los valores de x y y
        y=$z
    done
fi

# Finalizamos la serie con un salto de línea
echo

