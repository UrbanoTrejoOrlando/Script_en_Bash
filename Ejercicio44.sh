################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Hacer un programa que considere las siguientes opciones: 1) Cubo de un numero,2) Numero par o impar, 3) Salir 

read -p "-----MENU DE OPCIONES-----
1) Cubo de un número
2) Número par o impar
3) Salir
Elige una opción: " Opcion

if [ "$Opcion" -eq 1 ]; then
    read -p "Número: " Numero
    Cubo=$((Numero * Numero * Numero))
    echo "El cubo de $Numero es $Cubo"
elif [ "$Opcion" -eq 2 ]; then
    read -p "Número: " Numero
    if [ "$((Numero % 2))" -eq 0 ]; then
        echo "Número par"
    else
        echo "Número impar"
    fi
elif [ "$Opcion" -eq 3 ]; then
    echo "Fin del programa"
else
    echo "Opción inválida"
fi

