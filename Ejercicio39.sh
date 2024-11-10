################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Realizar una tabla de multiplicar con número de filas y columnas definidos por el usuario

# Solicitar al usuario que ingrese el número de filas y columnas
read -p "Número de filas: " Filas
read -p "Número de columnas: " Columnas

# Imprimir la tabla de multiplicar
echo "Tabla de multiplicar:"

# Iterar por cada fila
for (( i=1; i<=Filas; i++ )); do
    # Iterar por cada columna
    for (( j=1; j<=Columnas; j++ )); do
        # Imprimir el producto de la fila y la columna
        echo -ne "$((i * j))\t"
    done
    # Salto de línea al final de cada fila
    echo
done

