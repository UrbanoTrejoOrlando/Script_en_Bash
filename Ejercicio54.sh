################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Visualizar la tarifa de luz segun el gasto de corriente electrica, para un gasto menor de: 1000 Kw, la tarifa es de 1.2 entre 1000, 1850 Kw la tarifa es 1.0 y mayor de 1850 la tarifa es de 0.9

echo  "Ingresa la tarifa de luz eléctrica: "
read -r Tarifa

if [ "$Tarifa" -lt 1000 ]; then
    echo "Tu tarifa es de 1.2"
elif [ "$Tarifa" -ge 1000 ] && [ "$Tarifa" -lt 1850 ]; then
    echo "Tu tarifa es de 1.0"
else
    echo "Tu tarifa es de 0.9"
fi

