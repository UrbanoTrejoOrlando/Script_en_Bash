################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo para calcular el descuento de un medicamento 

# Función para validar que la entrada sea un número positivo
validar_numero() {
    echo "$1" | grep -E '^[0-9]+([.][0-9]+)?$' > /dev/null
    return $?
}

# Solicitar nombre y precio del medicamento
read -p "Nombre del cliente: " nombre
read -p "Precio del medicamento: " precio

# Validar que el precio sea un número válido
if ! validar_numero "$precio" || (( $(echo "$precio <= 0" | bc -l) )); then
    echo "Por favor ingresa un precio válido (mayor que 0)."
    exit 1
fi

# Calcular el total con el descuento
descuento=$(bc <<< "$precio * 0.45")
total=$(bc <<< "$precio - $descuento")

# Mostrar el resultado con un formato adecuado
echo "Cliente: $nombre"
echo "Precio original: \$ $precio"
echo "Descuento aplicado: \$ $descuento"
echo "Total a pagar: \$ $total"

