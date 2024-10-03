################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que sume tres numeros

# Datos de entrada
read -p "Numero 1: " numero1
read -p "Numero 2: " numero2
read -p "Numero 3: " numero3
suma=$(bc <<< "$numero1 + $numero2 + $numero3")
echo "Resultado: $suma"
