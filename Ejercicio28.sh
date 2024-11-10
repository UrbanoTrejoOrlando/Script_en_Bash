################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 17-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que imprime un árbol de Navidad

# Solicitar la altura del árbol
read -p "Altura del árbol: " altura

# Imprimir la copa del árbol
for ((i = 1; i <= altura; i++)); do
    # Calcular los espacios en blanco
    espacios=$((altura - i))
    
    # Imprimir espacios en blanco
    for ((j = 1; j <= espacios; j++)); do
        echo -n " "
    done
    
    # Imprimir asteriscos para cada nivel del árbol
    for ((j = 1; j <= 2 * i - 1; j++)); do
        echo -n "*"
    done
    
    # Nueva línea después de cada nivel
    echo
done

# Calcular la posición del tronco
tronco=$((altura - 1))

# Imprimir el tronco del árbol
for ((i = 1; i <= 2; i++)); do
    # Imprimir espacios en blanco antes del tronco
    for ((j = 1; j <= tronco; j++)); do
        echo -n " "
    done
    
    # Imprimir el tronco
    echo "**"
done

