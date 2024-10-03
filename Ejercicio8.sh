################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo para determinar el pago que debe realizar una persona por el consumo de agua

# Datos de entrada
echo "Precio por metro: "
read -r precio
echo "Metros trabajados: "
read -r metros
# Operaciones
resultado=$(bc <<< "$precio * $metros")
echo "Pago: $resultado pesos"


