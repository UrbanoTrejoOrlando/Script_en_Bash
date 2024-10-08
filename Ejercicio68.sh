################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 18-08-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Crear un programa que realice un menu de conversiones de unidades 

General=("------CONVERSION DE UNIDADES------" "0) Longitud" "1) Masa" "2) Tiempo" "3) Volumen" "4) Tamaño de Datos" "5) Velocidad" "6) Temperatura")
Menu=(
    ("m" "cm" "km" "mm" "mi" "yd" "ft" "in")
    ("kg" "to" "g" "st" "lb" "oz")
    ("m" "ml" "s" "hr" "d")
    ("l" "ml" "gal" "ozl" "m3" "ft3" "in3")
    ("bit" "kl" "B" "kb")
    ("mi/h" "ft/s" "m/s" "km/h" "kn")
    ("°C" "°F" "K")
)
Operaciones=(
    (1 100 0.001 1000 0.000621371 1.09361 3.28084 39.3701)
    (1 0.001 1000 0.157473 2.20462 35.274)
    (1 6000 60 0.0166667 0.000694444)
    (1 1000 0.219969 35.1951 0.001 0.0353147 61.0237)
    (1 0.001 0.125 0.000125)
    (1 1.46667 0.44704 1.60934 0.868976)
    (1 1.8 1)
)

for ((i = 0; i < ${#General[@]}; i++)); do
    echo "${General[i]}"
done

read -p "Elige una opcion: " Opcion

if ((Opcion >= 0 && Opcion <= 6)); then
    for ((i = 0; i < ${#Menu[Opcion][@]}; i++)); do
        echo "$i) ${Menu[Opcion][i]}"
    done

    read -p "Elige la unidad de entrada: " UnidadEntrada
    read -p "Elige la unidad de destino: " UnidadDestino
    read -p "Introduce el valor a convertir: " Valor

    Resultado=$(bc <<< "scale=6; $Valor * (${Operaciones[Opcion][UnidadDestino]} / ${Operaciones[Opcion][UnidadEntrada]})")
    echo "$Valor ${Menu[Opcion][UnidadEntrada]} = $Resultado ${Menu[Opcion][UnidadDestino]}"
else
    echo "Opción inválida"
fi


