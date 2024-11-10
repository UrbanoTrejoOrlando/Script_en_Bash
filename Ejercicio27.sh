################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 17-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula el total de una compra de vestidos de tres tipos.

echo "---- VESTIDO ----"
echo "1) Grande - \$500"
echo "2) Mediano - \$400"
echo "3) Chico - \$300"

# Solicitar el tipo de vestido que el cliente desea comprar
read -p "Elige el tipo de vestido que deseas comprar (1-3): " vestido

# Verificar la opción elegida y calcular el total
if [ "$vestido" -eq 1 ]; then
    read -p "Número de vestidos que deseas comprar: " cantidad
    total=$(bc <<< "$cantidad * 500")

elif [ "$vestido" -eq 2 ]; then
    read -p "Número de vestidos que deseas comprar: " cantidad
    total=$(bc <<< "$cantidad * 400")

elif [ "$vestido" -eq 3 ]; then
    read -p "Número de vestidos que deseas comprar: " cantidad
    total=$(bc <<< "$cantidad * 300")

else
    echo "Opción inválida"
    exit 1
fi

# Mostrar el monto total de la venta
echo "Monto total de la venta: \$${total} pesos"

