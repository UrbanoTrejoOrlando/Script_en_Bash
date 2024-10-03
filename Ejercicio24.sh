################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 17-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula la tercera parte de un numero

# Datos de entrada 
read -p "Ingresa un numero: " numero
# Operaciones
resultado1=$(bc <<< "$numero * 2")
resultado2=$(bc <<< "$resultado1 / 3")
final=$(bc <<< "$resultado2 / 2")
echo "La mitad de la tercera parte del doble de $numero es: $final"

