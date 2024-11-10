################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 18-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que multiplica dos arreglos elemento a elemento

# Inicialización de los arreglos
primero=()
segundo=()
resultado=()

# Llenar el primer arreglo
for ((i = 0; i < 5; i++)); do
    read -p "Valor para el primer arreglo en la posición $((i+1)): " primero[i]
done

echo ""

# Llenar el segundo arreglo en orden inverso
for ((i = 4; i >= 0; i--)); do
    read -p "Valor para el segundo arreglo en la posición $((5 - i)): " segundo[i]
done

# Multiplicar elemento a elemento de ambos arreglos y almacenar en el arreglo resultado
for ((i = 0; i < 5; i++)); do
    resultado[i]=$(bc <<< "${primero[i]} * ${segundo[i]}")
done

# Mostrar el resultado de la multiplicación de ambos arreglos
echo "Resultado de la multiplicación elemento a elemento:"

for ((i = 0; i < 5; i++)); do
    echo "Elemento $((i+1)): ${resultado[i]}"
done

