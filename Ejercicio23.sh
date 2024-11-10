################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo para verificar si una persona es mayor de edad.

# Solicitar la edad como entrada
read -p "Ingrese su edad: " edad

# Verificar si la edad es mayor o igual a 18
if [ "$edad" -ge 18 ]; then
    # Mensaje para mayores de edad
    echo "Eres mayor de edad"
else
    # Mensaje para menores de edad
    echo "Eres menor de edad"
fi

