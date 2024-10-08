################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Escribir en lenguaje C un programa que:
# 1) Pida por teclado una hora en tres variables: horas, minutos y segundos (datos enteros).
# 2) Muestre por pantalla:
# "HORA CORRECTA", en el caso de que la hora sea valida.
# "HORA INCORRECTA", en el caso de que la hora no sea valida.
#  Nota: para que una hora sea valida, se tiene que cumplir que:
#    Las horas deben ser mayor o igual que 0 y menor o igual que 23.
#    Los minutos deben ser mayor o igual que 0 y menor o igual que 59.
#    Los segundos deben ser mayor o igual que 0 y menor o igual que 59. 

read -p "Ingresa las horas: " Horas
read -p "Ingresa los minutos: " Minutos
read -p "Ingresa los segundos: " Segundos

if [[ $Horas -ge 0 && $Horas -le 23 && $Minutos -ge 0 && $Minutos -le 59 && $Segundos -ge 0 && $Segundos -le 59 ]]; then
    echo "HORA CORRECTA"
else
    echo "HORA INCORRECTA"
fi

