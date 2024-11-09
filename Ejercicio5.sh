################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula la cantidad de ventas que realiza un vendedor
# y de acuerdo a esas ventas, realiza un descuento.

ventas=0
totalFinal=0
totalConDescuento=0
cantidad=()
descuento=0.1  # Descuento del 10% (puedes cambiarlo)

# Entrada de datos
read -p "Numero de ventas: " ventas

# Ingreso de precios de ventas
for((i = 0; i < ventas; i++)); do
    read -p "Precio de la venta $((i + 1)): " venta
    cantidad+=("$venta")
    totalFinal=$(bc <<< "$totalFinal + ${cantidad[i]}")  # Total de todas las ventas

    # Si la venta es mayor o igual a 1000, se le aplica un descuento del 10%
    if (( $(echo "${cantidad[i]} >= 1000" | bc -l) )); then
        descuentoVenta=$(bc <<< "${cantidad[i]} * $descuento")
        ventaConDescuento=$(bc <<< "${cantidad[i]} - $descuentoVenta")
        totalConDescuento=$(bc <<< "$totalConDescuento + $ventaConDescuento")
    else
        totalConDescuento=$(bc <<< "$totalConDescuento + ${cantidad[i]}")
    fi
done

# Impresión de resultados
echo "Total de ventas sin descuento: $totalFinal"
echo "Total con descuento aplicado: $totalConDescuento"

