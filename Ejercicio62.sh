################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Realiza un programa que pida por teclado el resultado (dato entero) obtenido al lanzar un dado de seis caras y muestre por pantalla el numero en letras (dato cadena) de la cara opuesta al resultado obtenido.
# Nota 1: En las caras opuestas de un dado de seis caras estan los numeros: 1-6, 2-5 y 3-4.
# Nota 2: Si el numero del dado introducido es menor que 1 o mayor que 6, se mostrara el mensaje: ERROR: numero incorrecto

echo "Ingresa la cara del dado: "
read -r Cara

case "$Cara" in
    1)
        echo "El valor contrario de la cara es: SEIS"
        ;;
    2)
        echo "El valor contrario de la cara es: CINCO"
        ;;
    3)
        echo "El valor contrario de la cara es: CUATRO"
        ;;
    4)
        echo "El valor contrario de la cara es: TRES"
        ;;
    5)
        echo "El valor contrario de la cara es: DOS"
        ;;
    6)
        echo "El valor contrario de la cara es: UNO"
        ;;
    *)
        echo "ERROR: Número incorrecto"
        ;;
esac

