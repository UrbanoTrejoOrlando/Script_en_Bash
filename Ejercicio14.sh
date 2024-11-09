################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula la cantidad de euros a monedas y viceversa 

# Función para validar que la entrada sea un número positivo
validar_numero() {
    echo "$1" | grep -E '^[0-9]+([.][0-9]+)?$' > /dev/null
    return $?
}

# Mostrar el menú de opciones
echo "-------- MENU DE CONVERSIONES --------"
echo "1) Euros a Dólares"
echo "2) Dólares a Euros"

# Solicitar la opción y validar
read -p "Elige una opción (1 o 2): " opcion

# Verificar si la opción es válida
if ! [[ "$opcion" =~ ^[1-2]$ ]]; then
    echo "Opción no válida. Elige 1 o 2."
    exit 1
fi

# Solicitar el dinero e implementar la conversión
read -p "Ingresa la cantidad de dinero: " dinero

# Validar que el dinero ingresado sea un número válido
if ! validar_numero "$dinero" || (( $(echo "$dinero <= 0" | bc -l) )); then
    echo "Por favor ingresa una cantidad de dinero válida (mayor que 0)."
    exit 1
fi

# Realizar la conversión según la opción seleccionada
if ((opcion == 1)); then
    # Convertir de euros a dólares
    resultado=$(bc <<< "scale=2; $dinero * 16.89")
    echo "$dinero euros son equivalentes a $resultado dólares."
elif ((opcion == 2)); then
    # Convertir de dólares a euros
    resultado=$(bc <<< "scale=2; $dinero / 16.89")
    echo "$dinero dólares son equivalentes a $resultado euros."
fi

exit 0

