################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Convertir a mayuscula cualquier cadena de texto.

echo "Ingresa una cadena de texto: "
read -r Texto
# Con el comando tr podemos convertir una cadena a mayuscula
Mayuscula=$(echo "$Texto" | tr '[:lower:]' '[:upper:]')

echo "Texto en mayúsculas: $Mayuscula"

