################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################

# Algoritmo que calcula el sueldo total de un empleado

# Solicitar los datos de entrada
read -p "Horas trabajadas: " horas
read -p "Precio por hora (en pesos): " precio

# Validamos que las entradas sean números
if [[ ! "$horas" =~ ^[0-9]+$ ]] || [[ ! "$precio" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Por favor ingresa valores válidos para las horas trabajadas y el precio por hora."
    exit 1
fi

# Calculamos el sueldo total
sueldo=$(bc <<< "$precio * $horas")

# Mostramos el resultado
echo "El sueldo total es: \$${sueldo} pesos"

