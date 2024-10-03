################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo para determinar si eres mayor de edad.

# Datos de entrada
read -p "Edad:" edad
# Condiciones
if [ "$edad" -ge 18 ]; then
    echo "Eres mayor de edad"
else
    echo "Eres menor de edad"
fi

