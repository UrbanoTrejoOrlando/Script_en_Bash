################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo para calcular el descuento de un medicamento 

# Datos de entrada
read -p "Nombre: " nombre
read -p "Precio del medicamento:" precio
total=$(bc <<< "$precio - ($precio * 0.45)")
echo "Cliente: $nombre el total a pagar es de: $total pesos"
