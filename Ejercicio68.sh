################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 18-08-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Crear un programa que muestre un menú de conversiones de unidades.

# Definición del menú principal de opciones de conversión
General=("------CONVERSION DE UNIDADES------" "0) Longitud" "1) Masa" "2) Tiempo" "3) Volumen" "4) Tamaño de Datos" "5) Velocidad" "6) Temperatura")

# Listas de unidades correspondientes a cada tipo de conversión
Menu=(
    ("m" "cm" "km" "mm" "mi" "yd" "ft" "in")  # Longitud
    ("kg" "to" "g" "st" "lb" "oz")            # Masa
    ("m" "ml" "s" "hr" "d")                   # Tiempo
    ("l" "ml" "gal" "ozl" "m3" "ft3" "in3")   # Volumen
    ("bit" "kl" "B" "kb")                     # Tamaño de Datos
    ("mi/h" "ft/s" "m/s" "km/h" "kn")         # Velocidad
    ("°C" "°F" "K")                           # Temperatura
)

# Factores de conversión para cada tipo de unidad (ordenados según los elementos en Menu)
Operaciones=(
    (1 100 0.001 1000 0.000621371 1.09361 3.28084 39.3701)       # Longitud
    (1 0.001 1000 0.157473 2.20462 35.274)                       # Masa
    (1 6000 60 0.0166667 0.000694444)                            # Tiempo
    (1 1000 0.219969 35.1951 0.001 0.0353147 61.0237)            # Volumen
    (1 0.001 0.125 0.000125)                                     # Tamaño de Datos
    (1 1.46667 0.44704 1.60934 0.868976)                         # Velocidad
    (1 1.8 1)                                                    # Temperatura
)

# Mostrar el menú general de conversiones
for ((i = 0; i < ${#General[@]}; i++)); do
    echo "${General[i]}"
done

# Leer la opción de conversión elegida por el usuario
read -p "Elige una opción: " Opcion

# Validar que la opción ingresada esté en el rango permitido
if ((Opcion >= 0 && Opcion <= 6)); then
    # Mostrar las unidades disponibles para la opción seleccionada
    for ((i = 0; i < ${#Menu[Opcion][@]}; i++)); do
        echo "$i) ${Menu[Opcion][i]}"
    done

    # Leer la unidad de entrada, la unidad de destino y el valor a convertir
    read -p "Elige la unidad de entrada: " UnidadEntrada
    read -p "Elige la unidad de destino: " UnidadDestino
    read -p "Introduce el valor a convertir: " Valor

    # Realizar la conversión utilizando los factores correspondientes
    Resultado=$(bc <<< "scale=6; $Valor * (${Operaciones[Opcion][UnidadDestino]} / ${Operaciones[Opcion][UnidadEntrada]})")
    
    # Mostrar el resultado de la conversión
    echo "$Valor ${Menu[Opcion][UnidadEntrada]} = $Resultado ${Menu[Opcion][UnidadDestino]}"
else
    # Mensaje en caso de opción no válida
    echo "Opción inválida"
fi

