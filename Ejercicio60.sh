################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Realiza un programa que clasifique un triangulo tras recibir el tamano de sus lados. Se debe clasificar como: triangulo rectangulo, isosceles, equilatero o escaleno.

echo -n "Ingresa el tamaño del lado 1: "
read Lado_1

echo -n "Ingresa el tamaño del lado 2: "
read Lado_2

echo -n "Ingresa el tamaño del lado 3: "
read Lado_3

if [ "$Lado_1" -gt "$Lado_2" ] && [ "$Lado_1" -gt "$Lado_3" ]; then
    if [ "$((Lado_1*Lado_1))" -eq "$((Lado_2*Lado_2 + Lado_3*Lado_3))" ]; then
        echo "ES UN TRIÁNGULO RECTÁNGULO"
    fi
elif [ "$Lado_2" -gt "$Lado_1" ] && [ "$Lado_2" -gt "$Lado_3" ]; then
    if [ "$((Lado_2*Lado_2))" -eq "$((Lado_1*Lado_1 + Lado_3*Lado_3))" ]; then
        echo "ES UN TRIÁNGULO RECTÁNGULO"
    fi
elif [ "$Lado_3" -gt "$Lado_1" ] && [ "$Lado_3" -gt "$Lado_2" ]; then
    if [ "$((Lado_3*Lado_3))" -eq "$((Lado_1*Lado_1 + Lado_2*Lado_2))" ]; then
        echo "ES UN TRIÁNGULO RECTÁNGULO"
    fi
elif [ "$Lado_1" -eq "$Lado_2" ] && [ "$Lado_1" -ne "$Lado_3" ] || [ "$Lado_1" -eq "$Lado_3" ] && [ "$Lado_1" -ne "$Lado_2" ] || [ "$Lado_2" -eq "$Lado_3" ] && [ "$Lado_2" -ne "$Lado_1" ]; then
    echo "ES UN TRIÁNGULO ISÓSCELES"
elif [ "$Lado_1" -eq "$Lado_2" ] && [ "$Lado_3" -eq "$Lado_2" ]; then
    echo "ES UN TRIÁNGULO EQUILÁTERO"
else
    echo "ES UN TRIÁNGULO ESCALENO"
fi

