################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################

# Algoritmo que calcula la cantidad total de dinero que tienes

# Denominaciones de billetes y monedas
denominaciones=(1000 500 200 100 50 20 10 5 2 1)

# Inicializamos la variable que almacenará el total
total=0

# Recorremos todas las denominaciones
for denominacion in "${denominaciones[@]}"; do
    # Pedimos la cantidad de cada denominación
    read -p "¿Cuántos billetes o monedas de ${denominacion} tienes? " cantidad
    # Calculamos el total acumulado
    total=$((total + cantidad * denominacion))
    # Mostramos el total acumulado hasta el momento
    echo "Total acumulado: \$${total}"
done

# Muestra el total final
echo "El total de dinero que tienes es: \$${total}"

