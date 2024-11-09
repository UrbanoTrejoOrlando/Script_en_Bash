################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo para determinar el costo de una llamada telefónica

# Datos de entrada
echo "Tiempo de la llamada en minutos: " 
read -r tiempo
echo "Costo por minuto en pesos: "
read -r costo

# Cálculo del costo total de la llamada
total=$(bc <<< "$tiempo * $costo")

# Impresión del resultado
echo "Costo de la llamada: $total pesos"

