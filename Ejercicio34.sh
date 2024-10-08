################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Haz un codigo que haga la suma de los primeros diez numeros pares 
Suma=0
for (( i=0; i<=20; i++ )); do
    if (( i % 2 == 0 )); then
        Suma=$((Suma + i))
    fi
done

echo "Suma: $Suma"

