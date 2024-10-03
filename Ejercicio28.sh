################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 17-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que imprima un arbol de navidad

# Datos de entrada
read -p  "Altura del árbol: " altura
for ((i = 1; i <= altura; i++)) do
    espacios=$((altura - i))
	# Imprimir espacios en blanco
    for ((j = 1; j <= espacios; j++)) do
        echo -n " "
    done
    
    for ((j = 1; j <= 2 * i - 1; j++))  do
        echo -n "*"
    done
    
	 echo

done

tronco=$((altura - 1))
# Imprimir el tronco del arbol
for ((i = 1; i <= 2; i++)) do
    for ((j = 1; j <= tronco; j++)) do
        echo -n " "
    done
	 echo "**"
done

