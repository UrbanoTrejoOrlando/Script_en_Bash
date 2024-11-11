################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Sumar números pares desde un número n hasta un número m.

# Solicitar al usuario que ingrese el número inicial y el número final para la suma
read -p "Ingresa un número para el inicio de la suma: " Num_Inicio  # Límite inferior
read -p "Ingresa un número para el límite de la suma: " Num_Final   # Límite superior
Suma=0  # Inicializar la variable para almacenar la suma

# Bucle para iterar desde el número inicial hasta el número final
for (( i=Num_Inicio; i<=Num_Final; i++ ))
do
    # Verificar si el número es par
    if (( i % 2 == 0 ))
    then
        Suma=$((Suma + i))  # Sumar el número par a la variable Suma
    fi
done

# Mostrar el resultado de la suma
echo "Suma: $Suma"

