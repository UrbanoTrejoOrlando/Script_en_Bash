################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcule el total de una caja registradora
  
dinero=(1000 500 200 100 50 20 5 2 1)
resultado=0

for((i=0; i<9; i++)); do  
	# Datos de entrada
    echo "Cantidad de dinero que tiene: ${dinero[$i]} pesos"
    read -r convertidor
    resultado=$((resultado + convertidor * dinero[$i]))
    echo "Total almacenado: $resultado pesos"
done
