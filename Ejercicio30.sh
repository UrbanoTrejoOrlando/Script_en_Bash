################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 18-07-2023                          #
# Correo : orlandourbanotrejogmail.com         #
################################################
# Algoritmo que multiplique dos arreglos

primero=()
segundo=()
resultado=()
suma=0

for((i = 0; i<5; i++)); do
    # Datos de entrada
	read -p "Valor $((i+1)): " primero[i]
done

echo ""

for((i = 4; i>=0; i--)); do
    suma=$(($i + 2))
	read -p "Valor $((suma-1)): " segundo[i]
done

for((i = 0; i<5; i++)); do
	 resultado[i]=$(bc <<< "${primero[i]} * ${segundo[i]}")
done

echo "Resultado: "

for((i = 0; i < 5; i++)); do
	 echo "${resultado[i]}"
done


