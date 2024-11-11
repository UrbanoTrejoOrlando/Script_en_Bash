#!/bin/bash
################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Programa para calcular ventas de productos de una compañía de refrescos

# Función para calcular el total de ventas por producto
calcular_total() {
    local ventas=$1
    local precio=$2
    echo $(bc <<< "$ventas * $precio")
}

# Función para obtener ventas y precio de un producto
leer_datos_producto() {
    local nombre=$1
    local ventas precio

    # Leer cantidad vendida
    while true; do
        read -p "Ingresa la cantidad de ventas de $nombre (máximo 5000000): " ventas
        if [[ "$ventas" =~ ^[0-9]+$ ]] && [ "$ventas" -le 5000000 ]; then
            break
        else
            echo "Por favor, ingresa un número válido hasta 5000000."
        fi
    done

    # Leer precio del producto
    while true; do
        read -p "Precio del producto $nombre: " precio
        if [[ "$precio" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
            break
        else
            echo "Por favor, ingresa un precio válido."
        fi
    done

    # Calcular el total y devolver los valores
    echo "$ventas" "$precio" $(calcular_total "$ventas" "$precio")
}

# Obtener datos para cada producto
read -r Ventas_Cola Precio_Cola Total_Cola <<< "$(leer_datos_producto 'cola')"
read -r Ventas_Naranja Precio_Naranja Total_Naranja <<< "$(leer_datos_producto 'naranja')"
read -r Ventas_Limon Precio_Limon Total_Limon <<< "$(leer_datos_producto 'limón')"

# Calcular el total final
Total_Final=$(bc <<< "$Total_Cola + $Total_Naranja + $Total_Limon")

# Mostrar el informe de ventas
echo -e "\nProducto    Ventas    Precio   Total"
echo -e "---------------------------------------"
echo -e "Cola        $Ventas_Cola\t  $Precio_Cola\t$Total_Cola"
echo -e "Naranja     $Ventas_Naranja\t  $Precio_Naranja\t$Total_Naranja"
echo -e "Limón       $Ventas_Limon\t  $Precio_Limon\t$Total_Limon"
echo -e "---------------------------------------"
echo -e "TOTAL\t\t\t\t $Total_Final"

