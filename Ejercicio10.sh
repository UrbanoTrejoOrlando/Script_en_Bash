################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula el saldo de sus clientes para no generar intereses y dependiendo del año aplicar descuentos

# Datos de entrada
echo "Numero de clientes: "
read -r clientes

for ((i = 0; i < clientes; i++)); do
	# Almacenar datos de entrada
    echo "Nombre cliente: "
    read -r nombre
    echo "Saldo anterior: "
    read -r saldoAnterior
    echo "Ultimo deposito: "
    read -r deposito
    echo "Monto por ventas: "
    read -r montoCompras
    echo "Saldo Actual: "
    read -r saldoActual

    # Calcular el saldo actualizado
    saldoActual=$(bc <<< "scale=2; $saldoAnterior + $deposito - $montoCompras")

    # Cálculos
    pagoActual=$(bc <<< "scale=2; $saldoActual * 0.12 + 200")
    saldoMinimo=$(bc <<< "scale=2; $saldoActual * 0.15")
    pagoInteres=$(bc <<< "scale=2; $saldoActual * 0.85")

    # Impresión de resultados
    echo "-------------------------------"
    echo "Cliente: $nombre"
    echo "Saldo Actual: $saldoActual pesos"
    echo "Pago Actual: $pagoActual pesos"
    echo "Pago Mínimo: $saldoMinimo pesos"
    echo "Pago para no generar intereses: $pagoInteres pesos"
    echo "-------------------------------"
done

