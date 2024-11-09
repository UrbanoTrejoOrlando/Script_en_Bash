################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que suma tres números

# Solicitar los datos de entrada
read -p "Número 1: " numero1
read -p "Número 2: " numero2
read -p "Número 3: " numero3

# Validar que todos los números sean válidos
if [[ ! "$numero1" =~ ^[0-9]+(\.[0-9]+)?$ ]] || [[ ! "$numero2" =~ ^[0-9]+(\.[0-9]+)?$ ]] || [[ ! "$numero3" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Por favor ingresa valores numéricos válidos para todos los números."
    exit 1
fi

# Sumar los números
suma=$(bc <<< "$numero1 + $numero2 + $numero3")

# Mostrar el resultado
echo "Resultado de la suma: $suma"

