################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula la multiplicacion de dos numeros

# Datos de entrada
read -p "Numero 1: " numero1
read -p "Numero 2: " numero2
multiplicacion=$(bc <<< "$numero1 * $numero2")
echo "Resultado: $multiplicacion"
