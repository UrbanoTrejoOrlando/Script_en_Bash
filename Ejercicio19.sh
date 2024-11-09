###############################################
# Autor  : Orlando Urbano Trejo @Lando        #
# Fecha  : 14-07-2023                         #
# Correo : orlandourbanotrejo@gmail.com       #
###############################################
# Algoritmo que determina el descuento de un empleado

# Solicitar los datos de entrada
read -p "Nombre del empleado: " nombre
read -p "Salario mensual: " salario

# Validar que el salario ingresado sea un número
if [[ ! "$salario" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Por favor ingresa un salario válido."
    exit 1
fi

# Calculamos el descuento del 20%
descuento=$(bc <<< "$salario * 0.20")
nuevo_salario=$(bc <<< "$salario - $descuento")

# Mostrar el resultado
echo "Empleado: $nombre"
echo "Salario original: \$${salario} pesos"
echo "Descuento (20%): \$${descuento} pesos"
echo "Nuevo salario: \$${nuevo_salario} pesos"

