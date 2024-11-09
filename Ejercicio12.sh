################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula los intereses que tiene una persona con el banco 

# Función para validar que la entrada sea un número
validar_numero() {
    echo "$1" | grep -E '^[0-9]+$' > /dev/null
    return $?
}

# Datos de entrada
prestamo=100000
interes=0.27

# Solicitar y validar el año en que se solicitó el préstamo
read -p "Año en que solicitó su préstamo: " tiempo
if ! validar_numero "$tiempo"; then
    echo "El año ingresado no es válido."
    exit 1
fi

# Solicitar y validar el año actual
read -p "Año actual: " tiempoActual
if ! validar_numero "$tiempoActual"; then
    echo "El año actual ingresado no es válido."
    exit 1
fi

# Comprobar que el año actual sea mayor que el año del préstamo
if ((tiempoActual <= tiempo)); then
    echo "El año actual debe ser mayor que el año en que se solicitó el préstamo."
    exit 1
fi

# Calcular los intereses y mostrar el saldo para cada año
for ((i=tiempo; i<tiempoActual; i++)); do
    prestamo=$(bc <<< "scale=2; $prestamo + ($prestamo * $interes)")
    echo "El interés acumulado hasta el año $i es de: $prestamo pesos"
done

# Mostrar el saldo final después de los intereses acumulados
echo "El saldo final con los intereses acumulados es de: $prestamo pesos"

