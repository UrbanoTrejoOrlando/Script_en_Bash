################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula el precio total del boleto de una persona, ingresando los datos por teclado    
# Entrada de datos
echo "Precio por kilómetro: " 
read -r precioKilometro
echo "Cantidad de kilómetros a recorrer: "
read -r distancia
#Impresion de resultados
precioBoleto=$(bc <<< "$precioKilometro * $distancia")
echo "Precio del boleto: $precioBoleto pesos "

