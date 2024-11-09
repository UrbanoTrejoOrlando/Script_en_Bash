################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula la edad de una persona en meses.

# Solicitar los datos de entrada
read -p "Edad en años: " edad
read -p "Cantidad de meses adicionales: " meses

# Validar que la edad y los meses sean números válidos
if [[ ! "$edad" =~ ^[0-9]+$ ]] || [[ ! "$meses" =~ ^[0-9]+$ ]]; then
    echo "Por favor ingresa valores numéricos válidos para la edad y los meses."
    exit 1
fi

# Calcular la edad en meses
resultado=$((edad * 12 + meses))

# Mostrar el resultado
echo "Edad en meses: $resultado meses"

