################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 17-07-2023                          #
# Correo : orlandourbanotrejogmail.com         #
################################################
# Algoritmo para calcular el factorial de un numero.

# Datos de entrada
read -p "Ingresa un numero: " numero
resultado=1
for ((i = 1; i <= numero; i++)); do
	 resultado=$(bc <<< "$resultado * $i")
done
echo "El factorial de $numero es: $resultado"
