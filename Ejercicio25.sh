################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 17-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo para calcular el factorial de un número.

# Solicitar el número como entrada
read -p "Ingresa un número: " numero

# Inicializar el resultado en 1, ya que el factorial de 0 y 1 es 1
resultado=1

# Calcular el factorial mediante un bucle for
for ((i = 1; i <= numero; i++)); do
    resultado=$(bc <<< "$resultado * $i")
done

# Mostrar el resultado final
echo "El factorial de $numero es: $resultado"

