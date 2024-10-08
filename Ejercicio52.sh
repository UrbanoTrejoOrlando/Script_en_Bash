################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Regresa el restante de la cadena a partir de la primera aparicion del caracter indicado 

Abecedario="ABCDEFGHIJKLMNOPQRSTUVWXYZ"

echo "Letra donde quieres realizar el corte: "
read -r Corte
echo "Nueva Cadena"
echo "${Abecedario##*$Corte}"

