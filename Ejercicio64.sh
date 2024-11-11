################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com            #
################################################

# Ejercicio: Escribir un programa que:
# 1) Pida por teclado una hora en tres variables: horas, minutos y segundos (datos enteros).
# 2) Muestre por pantalla:
# "HORA CORRECTA", en el caso de que la hora sea válida.
# "HORA INCORRECTA", en el caso de que la hora no sea válida.
# Nota: Para que una hora sea válida, se tiene que cumplir que:
#    Las horas deben ser mayor o igual que 0 y menor o igual que 23.
#    Los minutos deben ser mayor o igual que 0 y menor o igual que 59.
#    Los segundos deben ser mayor o igual que 0 y menor o igual que 59.

# Solicitar al usuario que ingrese las horas, minutos y segundos
read -p "Ingresa las horas: " Horas     # Leer las horas ingresadas por el usuario
read -p "Ingresa los minutos: " Minutos  # Leer los minutos ingresados por el usuario
read -p "Ingresa los segundos: " Segundos  # Leer los segundos ingresados por el usuario

# Verificar si las horas, minutos y segundos están dentro de los rangos válidos
if [[ $Horas -ge 0 && $Horas -le 23 && $Minutos -ge 0 && $Minutos -le 59 && $Segundos -ge 0 && $Segundos -le 59 ]]; then
    # Si la hora es válida, mostrar mensaje de hora correcta
    echo "HORA CORRECTA"
else
    # Si la hora no es válida, mostrar mensaje de hora incorrecta
    echo "HORA INCORRECTA"
fi

