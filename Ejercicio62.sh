################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com            #
################################################

# Ejercicio: Realiza un programa que pida por teclado el resultado (dato entero) obtenido al lanzar un dado de seis caras 
# y muestre por pantalla el número en letras (dato cadena) de la cara opuesta al resultado obtenido.
# Nota 1: En las caras opuestas de un dado de seis caras están los números: 1-6, 2-5 y 3-4.
# Nota 2: Si el número del dado introducido es menor que 1 o mayor que 6, se mostrará el mensaje: ERROR: número incorrecto.

# Solicitar al usuario que ingrese el número de la cara del dado
echo "Ingresa la cara del dado: "
read -r Cara  # Leer la cara del dado introducida por el usuario

# Utilizamos una estructura 'case' para identificar el número ingresado y determinar su cara opuesta
case "$Cara" in
    1)
        # Si la cara es 1, la cara opuesta es 6
        echo "El valor contrario de la cara es: SEIS"
        ;;
    2)
        # Si la cara es 2, la cara opuesta es 5
        echo "El valor contrario de la cara es: CINCO"
        ;;
    3)
        # Si la cara es 3, la cara opuesta es 4
        echo "El valor contrario de la cara es: CUATRO"
        ;;
    4)
        # Si la cara es 4, la cara opuesta es 3
        echo "El valor contrario de la cara es: TRES"
        ;;
    5)
        # Si la cara es 5, la cara opuesta es 2
        echo "El valor contrario de la cara es: DOS"
        ;;
    6)
        # Si la cara es 6, la cara opuesta es 1
        echo "El valor contrario de la cara es: UNO"
        ;;
    *)
        # Si el número ingresado no está entre 1 y 6, mostramos un mensaje de error
        echo "ERROR: Número incorrecto"
        ;;
esac

