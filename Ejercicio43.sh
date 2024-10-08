################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Hacer un programa que simule un cajero automatico con un salario inicial de 1000

Saldo=1000
Dinero=0
Nuevo_Saldo=0

echo "1) Ingresar dinero"
echo "2) Retirar dinero"
echo "3) Salir"

read -p "Elige una opción: " Opcion

if [ "$Opcion" -eq 1 ]; then
    read -p "Cuánto dinero vas a ingresar: " Dinero
    Nuevo_Saldo=$((Dinero + Saldo))
    echo "Tu nuevo saldo es de: $Nuevo_Saldo"
elif [ "$Opcion" -eq 2 ]; then
    read -p "Cuánto dinero vas a retirar: " Dinero
    if [ "$Dinero" -lt 1000 ]; then
        Nuevo_Saldo=$((Saldo - Dinero))
        echo "Tu nuevo saldo es de: $Nuevo_Saldo"
    else
        echo "Saldo insuficiente"
    fi
elif [ "$Opcion" -eq 3 ]; then
    echo "Fin del programa"
else
    echo "Opción inválida"
fi

