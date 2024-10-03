################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que determina el precio del boleto de un viaje

read -p "Kilometros a recorrer: " distancia
gasto=20.50
total=$(bc <<< "$distancia * $gasto")
echo "Precio: $total pesos"
