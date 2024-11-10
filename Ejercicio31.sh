################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 18-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################
# Algoritmo que calcula el descuento de una compra en base al tipo de pelota seleccionada

# Variables de entrada y resultado
pelota=0
resultado=0

# Menú de opciones
echo "----- CAFETERÍA TESJI -----"
echo "1) Pelota Verde - 10% de descuento"
echo "2) Pelota Roja - 5% de descuento"
echo "3) Pelota Amarilla - 15% de descuento"

# Entrada de datos: tipo de pelota
read -p "Elige una opción (1-3): " pelota

# Condiciones para aplicar el descuento según el tipo de pelota
if [ "$pelota" -eq 1 ]; then
    echo "Descuento 10%"
    read -p "Total de tu compra:  " compra
    resultado=$(bc <<< "$compra - ($compra * 0.10)")
    echo "Monto total con descuento: \$$resultado"

elif [ "$pelota" -eq 2 ]; then
    echo "Descuento 5%"
    read -p "Total de tu compra: " compra
    resultado=$(bc <<< "$compra - ($compra * 0.05)")
    echo "Monto total con descuento: \$$resultado"

elif [ "$pelota" -eq 3 ]; then
    echo "Descuento 15%"
    read -p "Total de tu compra: " compra
    resultado=$(bc <<< "$compra - ($compra * 0.15)")
    echo "Monto total con descuento: \$$resultado"
    
else
    echo "Opción no válida"
fi

