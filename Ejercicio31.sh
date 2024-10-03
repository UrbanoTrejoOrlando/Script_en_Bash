################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 18-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################
# Algoritmo que calcule el descuento de una urna dependiendo del tipo de pelota que saque

pelota=0
resultado=0

echo "-----CAFETERIA TESJI-----"
echo "1) Pelota Verde"
echo "2) Pelota Roja"
echo "3) Pelota Amarilla"
# Entrada de datos
read -p "Elige una opcion: " pelota
# Condiciones 
if [ "$pelota" -eq 1 ]; then
    echo "Descuento 10%"
    read -p "Total de tu compra:  " compra
    resultado=$(bc <<< "$compra - ($compra * 0.10)")
    echo "Monto total: \$$resultado"

elif [ "$pelota" -eq 2 ]; then
    echo "Descuento 5%"
    read -p "Total de tu compra: " compra
    resultado=$(bc <<< "$compra - ($compra * 0.05)")
    echo "Monto total: \$$resultado"

elif [ "$pelota" -eq 3 ]; then
    echo "Descuento 15%"
    read -p "Total de tu compra: " compra
    resultado=$(bc <<< "$compra - ($compra * 0.15)")
    echo "Monto total: \$$resultado"
else
    echo "Opcion no valida"
fi


