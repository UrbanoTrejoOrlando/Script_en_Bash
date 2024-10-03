################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcule el sueldo total de un empleado

# Datos de entrada 
read -p "Horas trabajadas: " horas
read -p  "Precio por hora: " precio
total=$(bc <<< "$precio * $horas")
echo "Sueldo: $total pesos"
