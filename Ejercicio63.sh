################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com            #
################################################

# Ejercicio: Escribir un programa que:
# 1) Pida por teclado una letra (dato carácter) del abecedario.
# 2) Muestre por pantalla:
# "ES UNA VOCAL", cuando la letra introducida sea una vocal minúscula (a, e, i, o, u) 
#    o una vocal mayúscula (A, E, I, O, U).
# "NO ES UNA VOCAL", cuando la letra introducida no sea una vocal minúscula (a, e, i, o, u) 
#    ni una vocal mayúscula (A, E, I, O, U).

# Solicitar al usuario que ingrese una letra
echo "Ingresa una letra del abecedario: "
read -r Letra  # Leer la letra ingresada por el usuario

# Convertir la letra ingresada a minúscula para hacer la comparación más sencilla
letraMin=$(echo "$Letra" | tr '[:upper:]' '[:lower:]')

# Verificar si la letra es una vocal (minúscula o mayúscula)
if [[ $letraMin == 'a' || $letraMin == 'e' || $letraMin == 'i' || $letraMin == 'o' || $letraMin == 'u' ]]; then
    # Si la letra es una vocal
    echo "Es una vocal"
else
    # Si la letra no es una vocal
    echo "No es una vocal. Es una letra normal"
fi

