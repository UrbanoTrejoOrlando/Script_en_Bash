################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Realiza un programa que calcule la aceptacion de una solicitud en base a los siguientes parametros: edad, nota y sexo.
# * Minimo: Nota (5), edad (18), sexo M -> POSIBLE
# * Minimo: Nota (5), edad (18), sexo F -> ACEPTADA
# * Otros casos -> NO ACEPTADA

read -p "Ingresa tu calificación obtenida: " Nota
read -p "Ingresa tu edad: " Edad
read -p "Ingresa sexo: " Sexo

if [ "$Nota" = "5" ] && [ "$Edad" = "18" ] && [ "$Sexo" = "M" ]; then
    echo "Solicitud ($Nota), Edad ($Edad), sexo ($Sexo) ---> SOLICITUD POSIBLE"
elif [ "$Nota" = "5" ] && [ "$Edad" = "18" ] && [ "$Sexo" = "F" ]; then
    echo "Solicitud ($Nota), Edad ($Edad), sexo ($Sexo) ---> SOLICITUD ACEPTADA"
else
    echo "SOLICITUD NO ACEPTADA"
fi

