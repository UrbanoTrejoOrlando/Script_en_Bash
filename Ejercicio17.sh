################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula la cantidad total de dinero que tienes

cajero=(1000 500 200 100 50 20 10 5 2 1)
cantidad=0
for ((i = 0; i < 10; i++)); do
	# Datos de entrada
	read -p "Cantidad de ${cajero[$i]} que tienes: " dinero
   	cantidad=$(bc <<< "$cantidad + ($dinero * ${cajero[$i]})")
    echo "Total: $cantidad"
done




