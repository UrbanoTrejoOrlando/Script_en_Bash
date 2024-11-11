################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com            #
################################################

# Ejercicio: Realiza un programa que calcule la aceptación de una solicitud en base a los siguientes parámetros: edad, nota y sexo.
# * Mínimo: Nota (5), edad (18), sexo M -> POSIBLE
# * Mínimo: Nota (5), edad (18), sexo F -> ACEPTADA
# * Otros casos -> NO ACEPTADA

# Solicitar la calificación obtenida
read -p "Ingresa tu calificación obtenida: " Nota

# Solicitar la edad
read -p "Ingresa tu edad: " Edad

# Solicitar el sexo
read -p "Ingresa sexo: " Sexo

# Verificar si la solicitud es posible con los parámetros proporcionados
if [ "$Nota" = "5" ] && [ "$Edad" = "18" ] && [ "$Sexo" = "M" ]; then
    # Caso de solicitud posible (Nota=5, Edad=18, Sexo=M)
    echo "Solicitud ($Nota), Edad ($Edad), sexo ($Sexo) ---> SOLICITUD POSIBLE"
# Verificar si la solicitud es aceptada con los parámetros proporcionados
elif [ "$Nota" = "5" ] && [ "$Edad" = "18" ] && [ "$Sexo" = "F" ]; then
    # Caso de solicitud aceptada (Nota=5, Edad=18, Sexo=F)
    echo "Solicitud ($Nota), Edad ($Edad), sexo ($Sexo) ---> SOLICITUD ACEPTADA"
# Caso cuando no se cumplen las condiciones anteriores
else
    # Caso de solicitud no aceptada
    echo "SOLICITUD NO ACEPTADA"
fi

