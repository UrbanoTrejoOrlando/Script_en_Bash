################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo para determinar el costo que tendra realizar una llamada telefonica 

# Datos de entrada
echo "Tiempo de la llamada en minutos: " 
read -r tiempo
echo "Costo por minuto en pesos: "
read -r costo
total=$(bc <<< "$tiempo * $costo")
echo "Costo de la llamada: $total pesos"

