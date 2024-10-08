################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Escribir un programa que:
# 1) Pida por teclado una letra (dato caracter) del abecedario.
# 2) Muestre por pantalla:
# "ES UNA VOCAL", cuando la letra introducida sea una vocal minuscula (a, e, i, o, u) o una vocal mayuscula (A, E, I, O, U).
# "NO ES UNA VOCAL", cuando la letra introducida no sea una vocal minuscula (a, e, i, o, u) ni una vocal mayuscula (A, E, I, O, U)


echo "Ingresa una letra del abecedario: "
read -r Letra

letraMin=$(echo "$Letra" | tr '[:upper:]' '[:lower:]')

if [[ $letraMin == 'a' || $letraMin == 'e' || $letraMin == 'i' || $letraMin == 'o' || $letraMin == 'u' ]]; then
    echo "Es una vocal"
else
    echo "No es una vocal. Es una letra normal"
fi

