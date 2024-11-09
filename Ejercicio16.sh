################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula el presupuesto anual en tres áreas de un hospital 

# Función para validar que la entrada sea un número positivo
validar_numero() {
    echo "$1" | grep -E '^[0-9]+([.][0-9]+)?$' > /dev/null
    return $?
}

# Solicitar presupuesto anual
read -p "Presupuesto anual: " presupuesto

# Validar que el presupuesto sea un número válido
if ! validar_numero "$presupuesto" || (( $(echo "$presupuesto <= 0" | bc -l) )); then
    echo "Por favor ingresa un presupuesto válido (mayor que 0)."
    exit 1
fi

# Cálculo del presupuesto por área
urgencias=$(bc <<< "scale=2; $presupuesto * 0.37")
pediatria=$(bc <<< "scale=2; $presupuesto * 0.42")
traumatologia=$(bc <<< "scale=2; $presupuesto * 0.21")

# Impresión de resultados
echo "Presupuesto anual: \$ $presupuesto"
echo "Presupuesto para Urgencias: \$ $urgencias"
echo "Presupuesto para Pediatría: \$ $pediatria"
echo "Presupuesto para Traumatología: \$ $traumatologia"

