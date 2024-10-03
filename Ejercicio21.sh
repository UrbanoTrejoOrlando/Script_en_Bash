################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula la edad de una persona en meses.

# Datos de entrada
read -p "Edad en años:" edad
read -p  "Cuantos meses:" meses
resultado=$((edad * 12 + meses))
echo "Edad: $resultado meses"


