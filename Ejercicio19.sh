###############################################
# Autor  : Orlando Urbano Trejo @Lando        #
# Fecha  : 14-07-2023                         #
# Correo : orlandourbanotrejo@gmail.com       #
###############################################
# Algoritmo que determina el descuento de un empleado

# Datos de entrada
read -p "Nombre: " nombre
read -p  "Salario: " salario
total=$(bc <<< "$salario -($salario * 0.20)")
echo "Nuevo Salario: $total pesos"
