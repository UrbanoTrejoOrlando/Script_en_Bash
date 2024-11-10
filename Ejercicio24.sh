################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 17-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula la mitad de la tercera parte del doble de un número.

# Solicitar el número como entrada
read -p "Ingresa un número: " numero

# Calcular el doble del número
doble=$(bc <<< "$numero * 2")

# Calcular la tercera parte del doble
tercera_parte=$(bc <<< "$doble / 3")

# Calcular la mitad de la tercera parte
mitad=$(bc <<< "$tercera_parte / 2")

# Mostrar el resultado final
echo "La mitad de la tercera parte del doble de $numero es: $mitad"

