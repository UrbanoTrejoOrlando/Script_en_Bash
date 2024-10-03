################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo para calcular el tiempo que tarda una persona en llegar a un lugar

# Datos de entrada
echo "Velocidad en (Km/h): "
read -r velocidad
echo "Distancia recorrida: "
read -r distancia
total=$(bc <<< "($velocidad * $distancia) / 60")
echo "Tiempo: $total horas"
