################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula la cantidad de euros a monedas y viceversa 


echo "-------- MENU DE CONVERSIONES --------"
echo "1) Euros"
echo "2) Dolares"
# Datos de entrada
read -p "Elige una opcion: " opcion
# Condiciones
if ((opcion == 1)); then
    read -p "Dinero: " dinero
    resultado=$(bc <<< "scale=2; $dinero / 16.89")
    echo "Dinero: $resultado dolares"
elif ((opcion == 2)); then
	read -p "Dinero: " dinero
	resultado=$(bc <<< " $dinero * 0.053")
    echo "Dinero: $resultado euros"
else
    echo "Opcion no valida"
fi

exit 0

