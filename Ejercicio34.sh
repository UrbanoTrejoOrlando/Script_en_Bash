################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Sumar los primeros diez números pares

Suma=0
# Usamos un contador para asegurarnos de sumar solo los primeros 10 números pares
contador=0

# Empezamos desde 0 y sumamos números pares
for (( i=0; contador<10; i++ )); do
    if (( i % 2 == 0 )); then
        Suma=$((Suma + i))
        contador=$((contador + 1)) # Aumentamos el contador por cada número par sumado
    fi
done

echo "Suma de los primeros diez números pares: $Suma"

