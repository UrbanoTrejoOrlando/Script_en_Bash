################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Calcular la suma de la secuencia (1-2+3-4+5-6 hasta n)

echo "Ingresa un numero: " 
read -r Numero

Suma=0

# Iterar sobre todos los números de 1 a n
for (( i=1; i<=Numero; i++ )); do
    if (( i % 2 == 0 )); then
        # Si el número es par, restamos el valor
        Suma=$((Suma - i))
    else
        # Si el número es impar, sumamos el valor
        Suma=$((Suma + i))
    fi
done

echo "Suma: $Suma"

