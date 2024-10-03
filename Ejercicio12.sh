################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula los intereses que tiene una persona con el banco 

prestamo=100000
interes=0.27
# Datos de entrada
read -p "Anio en que solicito su prestamo: " tiempo
read -p "Anio actual: " tiempoActual

for((i=tiempo; i<tiempoActual;i++)); do
    prestamo=$(bc <<< "scale=2; $prestamo + ($prestamo * $interes)")
    echo "El interés de $i es de: $prestamo pesos"
done
