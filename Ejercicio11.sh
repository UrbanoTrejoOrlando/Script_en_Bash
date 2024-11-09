################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula la multiplicación de dos números

# Función para validar que la entrada sea un número
validar_numero() {
    echo "$1" | grep -E '^[0-9]+([.][0-9]+)?$' > /dev/null
    return $?
}

# Datos de entrada
read -p "Numero 1: " numero1
# Validar si el primer número es válido
if ! validar_numero "$numero1"; then
    echo "El primer número ingresado no es válido."
    exit 1
fi

read -p "Numero 2: " numero2
# Validar si el segundo número es válido
if ! validar_numero "$numero2"; then
    echo "El segundo número ingresado no es válido."
    exit 1
fi

# Realizar la multiplicación
multiplicacion=$(bc <<< "scale=2; $numero1 * $numero2")

# Mostrar el resultado
echo "Resultado: $multiplicacion"

