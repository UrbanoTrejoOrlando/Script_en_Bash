################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo para calcular el tiempo que tarda una persona en llegar a un lugar.

# Datos de entrada
echo "Velocidad en (Km/h): "
read -r velocidad
echo "Distancia recorrida (en km): "
read -r distancia

# Calcular el tiempo en horas (tiempo = distancia / velocidad)
# El resultado se redondea a dos decimales
tiempo=$(bc <<< "scale=2; $distancia / $velocidad")

# Mostrar el tiempo estimado
echo "Tiempo estimado para llegar: $tiempo horas"

