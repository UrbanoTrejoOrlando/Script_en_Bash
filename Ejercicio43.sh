################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Hacer un programa que simule un cajero automático con un salario inicial de 1000

Saldo=1000
Dinero=0
Nuevo_Saldo=0

while true; do
    echo "1) Ingresar dinero"
    echo "2) Retirar dinero"
    echo "3) Salir"

    read -p "Elige una opción: " Opcion

    if [ "$Opcion" -eq 1 ]; then
        read -p "¿Cuánto dinero vas a ingresar?: " Dinero
        Nuevo_Saldo=$((Dinero + Saldo))
        Saldo=$Nuevo_Saldo  # Actualizamos el saldo
        echo "Tu nuevo saldo es de: $Nuevo_Saldo"
    elif [ "$Opcion" -eq 2 ]; then
        read -p "¿Cuánto dinero vas a retirar?: " Dinero
        if [ "$Dinero" -le "$Saldo" ]; then
            Nuevo_Saldo=$((Saldo - Dinero))
            Saldo=$Nuevo_Saldo  # Actualizamos el saldo
            echo "Tu nuevo saldo es de: $Nuevo_Saldo"
        else
            echo "Saldo insuficiente. No puedes retirar esa cantidad."
        fi
    elif [ "$Opcion" -eq 3 ]; then
        echo "Fin del programa."
        break  # Terminamos el programa si elige salir
    else
        echo "Opción inválida. Por favor, elige una opción válida."
    fi
done

