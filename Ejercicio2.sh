################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula el precio total del boleto de una persona, ingresando los datos por teclado.

# Entrada de datos
echo "Precio por kilómetro: " 
read -r precioKilometro
echo "Cantidad de kilómetros a recorrer: "
read -r distancia

# Cálculo del precio del boleto
precioBoleto=$(bc <<< "$precioKilometro * $distancia")

# Impresión de resultados
echo "Precio del boleto: $precioBoleto pesos"

