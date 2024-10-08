# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Realiza las tablas de multiplicar

read -p "Numero de filas: " Filas
read -p "Numero de columnas: " Columnas

for (( i=1; i<=Filas; i++ )); do 
    echo -e "\t"
    for (( j=1; j<=Columnas; j++ )); do 
        echo -ne "$((i*j))\t"
    done
done

echo

