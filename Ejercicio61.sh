################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Calcular si un año es bisiesto o no lo es.

echo "Ingresa año: "
read -r Numero

if ((Numero % 4 == 0 && (Numero % 100 != 0 || Numero % 400 == 0))); then
    echo "Año bisiesto"
else
    echo "No es año bisiesto"
fi
