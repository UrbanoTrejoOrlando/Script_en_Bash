################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula la cantidad de ventas que realiza un vendedor y de acuerdo a esas ventas, realizar un descuento

ventas=0
totalFinal=0
total=0
cantidad=()
# Entrada de datos
read -p "Numero de ventas: " ventas
for((i = 0; i < ventas; i++)); do
    read -p "Precio de la venta $((i + 1)): " venta
    cantidad+=("$venta")
	totalFinal=$(bc <<< "$totalFinal + ${cantidad[i]}")
	# Condiciones
    if ((cantidad[i] < 1000)); then
        total=$(bc <<< "$total + ${cantidad[i]}")
    elif ((cantidad[i] > 1000 && cantidad[i] < 2000)); then
        total=$(bc <<< "$total + ${cantidad[i]}")
    fi
done
# Impresion de resultados
echo "Total final: $totalFinal"

