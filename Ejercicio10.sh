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
	# Operaciones
    pagoActual=$(bc <<< "$saldoActual * 0.12 + 200")
    saldoMinimo=$(bc <<< "$saldoActual * 0.15")
  	pagoInteres=$(bc <<< "$saldoActual * 0.85")
	# Impresion de resultados
    echo "Tu saldo actual $nombre es de $pagoActual pesos"
    echo "Tu pago minimo $nombre es de $saldoMinimo pesos"
    echo "El pago para no generar intereses $nombre es de $pagoInteres pesos"
done

