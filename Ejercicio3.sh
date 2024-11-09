################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula el total de una caja registradora.

# Definir los valores de los billetes y monedas disponibles
dinero=(1000 500 200 100 50 20 5 2 1)

# Inicializar el total acumulado en cero
resultado=0

# Iterar a través de las denominaciones y solicitar la cantidad de cada una
for((i=0; i<9; i++)); do  
    # Solicitar al usuario la cantidad de dinero disponible para cada denominación
    echo "Cantidad de ${dinero[$i]} pesos que tiene:"
    read -r convertidor
    
    # Calcular el total acumulado
    resultado=$((resultado + convertidor * dinero[$i]))
    
    # Mostrar el total almacenado hasta el momento
    echo "Total almacenado hasta ahora: $resultado pesos"
done

# Mostrar el total final
echo "Total final en la caja registradora: $resultado pesos"

