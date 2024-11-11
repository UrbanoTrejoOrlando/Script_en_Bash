################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com            #
################################################

# Ejercicio: Realiza un programa que clasifique un triángulo tras recibir el tamaño de sus lados.
# Se debe clasificar como: triángulo rectángulo, isósceles, equilátero o escaleno.

# Solicitar el tamaño del primer lado
echo -n "Ingresa el tamaño del lado 1: "
read Lado_1

# Solicitar el tamaño del segundo lado
echo -n "Ingresa el tamaño del lado 2: "
read Lado_2

# Solicitar el tamaño del tercer lado
echo -n "Ingresa el tamaño del lado 3: "
read Lado_3

# Verificar si es un triángulo rectángulo usando el teorema de Pitágoras
if [ "$Lado_1" -gt "$Lado_2" ] && [ "$Lado_1" -gt "$Lado_3" ]; then
    # Comprobamos si el lado más largo cumple con la condición del teorema de Pitágoras
    if [ "$((Lado_1*Lado_1))" -eq "$((Lado_2*Lado_2 + Lado_3*Lado_3))" ]; then
        echo "ES UN TRIÁNGULO RECTÁNGULO"
    fi
elif [ "$Lado_2" -gt "$Lado_1" ] && [ "$Lado_2" -gt "$Lado_3" ]; then
    # Verificamos si el segundo lado es el mayor y cumple con el teorema de Pitágoras
    if [ "$((Lado_2*Lado_2))" -eq "$((Lado_1*Lado_1 + Lado_3*Lado_3))" ]; then
        echo "ES UN TRIÁNGULO RECTÁNGULO"
    fi
elif [ "$Lado_3" -gt "$Lado_1" ] && [ "$Lado_3" -gt "$Lado_2" ]; then
    # Verificamos si el tercer lado es el mayor y cumple con el teorema de Pitágoras
    if [ "$((Lado_3*Lado_3))" -eq "$((Lado_1*Lado_1 + Lado_2*Lado_2))" ]; then
        echo "ES UN TRIÁNGULO RECTÁNGULO"
    fi
# Verificar si el triángulo es isósceles (dos lados iguales y uno diferente)
elif [ "$Lado_1" -eq "$Lado_2" ] && [ "$Lado_1" -ne "$Lado_3" ] || [ "$Lado_1" -eq "$Lado_3" ] && [ "$Lado_1" -ne "$Lado_2" ] || [ "$Lado_2" -eq "$Lado_3" ] && [ "$Lado_2" -ne "$Lado_1" ]; then
    echo "ES UN TRIÁNGULO ISÓSCELES"
# Verificar si el triángulo es equilátero (todos los lados iguales)
elif [ "$Lado_1" -eq "$Lado_2" ] && [ "$Lado_3" -eq "$Lado_2" ]; then
    echo "ES UN TRIÁNGULO EQUILÁTERO"
# Si no es ninguno de los anteriores, debe ser escaleno (todos los lados diferentes)
else
    echo "ES UN TRIÁNGULO ESCALENO"
fi

