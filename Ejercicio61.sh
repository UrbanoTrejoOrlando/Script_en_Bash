################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com            #
################################################

# Ejercicio: Calcular si un año es bisiesto o no lo es.

# Solicitar al usuario que ingrese un año
echo "Ingresa año: "
read -r Numero  # Leer el año ingresado por el usuario

# Comprobar si el año es bisiesto usando las condiciones
# Un año es bisiesto si es divisible entre 4, 
# pero no divisible entre 100, a menos que sea divisible entre 400
if ((Numero % 4 == 0 && (Numero % 100 != 0 || Numero % 400 == 0))); then
    # Si cumple la condición, es un año bisiesto
    echo "Año bisiesto"
else
    # Si no cumple la condición, no es un año bisiesto
    echo "No es año bisiesto"
fi

