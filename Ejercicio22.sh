################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejogmail.com         #
################################################
# Algoritmo que calcula las comisiones de un empleado dependiendo de las ventas realizadas

comision=0
total=0
# Daots de entrada
read -p "Sueldo fijo: " sueldo
read -p "Ventas realizadas: " ventas
for ((i=0; i<ventas; i++)); do
    read -p "Precio de la venta $((i+1)): " precioVenta
    comision=$(bc <<< "$comision + ($precioVenta * 0.10)")
done
# Operaciones
total=$(bc <<< "scale=2; $comision + $sueldo")
echo "Comision: $comision pesos"
echo "Sueldo: $total pesos"



