################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 17-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula el descuento de 3 tipos de vestidos

echo "----VESTIDO----"
echo "1) Grande \$500"
echo "2) Mediana \$400"
echo "3) Chica \$300"
# Datos de entrada
read -p "Elige la marca que deseas comprar (1-3): " vestido
# Condicionales
if [ $vestido -eq 1 ]; then
    read -p "Número de vestidos que deseas comprar: " cantidad
	total=$(bc <<< "$cantidad * 500")

elif [ $vestido -eq 2 ]; then
    read -p "Número de vestidos que deseas comprar: " cantidad
    total=$(bc <<< "$cantidad * 400")

elif [ $vestido -eq 3 ]; then
    read -p "Número de vestidos que deseas comprar: " cantidad
    total=$(bc <<< "$cantidad * 500")
else
    echo "Opción inválida"
    exit 1
fi

echo "Monto total de la venta: $total pesos"
