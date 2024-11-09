################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejogmail.com         #
################################################
# Algoritmo que calcula las comisiones de un empleado dependiendo de las ventas realizadas

# Inicialización de variables
comision=0
total=0

# Solicitar los datos de entrada
read -p "Sueldo fijo: " sueldo
read -p "Número de ventas realizadas: " ventas

# Validar que el sueldo y el número de ventas sean números válidos
if [[ ! "$sueldo" =~ ^[0-9]+(\.[0-9]+)?$ ]] || [[ ! "$ventas" =~ ^[0-9]+$ ]]; then
    echo "Por favor ingresa valores numéricos válidos para el sueldo y el número de ventas."
    exit 1
fi

# Calcular la comisión por cada venta
for ((i=0; i<ventas; i++)); do
    read -p "Precio de la venta $((i+1)): " precioVenta
    
    # Validar que el precio de la venta sea un número válido
    if [[ ! "$precioVenta" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
        echo "Por favor ingresa un precio válido para la venta $((i+1))."
        exit 1
    fi
    
    # Calcular la comisión (10% por venta)
    comision=$(bc <<< "$comision + ($precioVenta * 0.10)")
done

# Calcular el sueldo total (sueldo fijo + comisión)
total=$(bc <<< "scale=2; $comision + $sueldo")

# Mostrar los resultados
echo "Comisión total: \$${comision} pesos"
echo "Sueldo total (fijo + comisión): \$${total} pesos"

