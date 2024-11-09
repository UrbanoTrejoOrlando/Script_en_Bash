################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que determina el precio del boleto de un viaje

# Función para validar que la entrada sea un número positivo
validar_numero() {
    echo "$1" | grep -E '^[0-9]+([.][0-9]+)?$' > /dev/null
    return $?
}

# Solicitar la distancia y validar la entrada
read -p "Kilómetros a recorrer: " distancia

# Verificar que la distancia sea un número válido y mayor que 0
if ! validar_numero "$distancia" || (( $(echo "$distancia <= 0" | bc -l) )); then
    echo "Por favor ingresa un valor válido para la distancia (mayor a 0)."
    exit 1
fi

# Precio por kilómetro
gasto=20.50

# Calcular el total
total=$(bc <<< "$distancia * $gasto")

# Mostrar el resultado
echo "El precio del boleto para recorrer $distancia kilómetros es: $total pesos"

