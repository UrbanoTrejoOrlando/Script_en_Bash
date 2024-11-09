################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo para determinar el sueldo semanal de N trabajadores y aplicar descuentos dependiendo de las horas trabajadas

# Datos de entrada
echo "Numero de trabajadores: "
read -r trabajadores

for ((i = 0; i < trabajadores; i++)); do
    echo "Nombre del trabajador $((i + 1)):"
    read -r nombre
    echo "Horas Trabajadas: "
    read -r horasTrabajadas
    echo "Sueldo por hora: "
    read -r sueldoHora
    
    # Calcular salario base
    salario=$(bc <<< "scale=2; $horasTrabajadas * $sueldoHora")

    # Aplicar descuento dependiendo del salario
    if (( $(bc <<< "$salario <= 150") )); then
        descuento=$(bc <<< "scale=2; $salario * 0.5")
    elif (( $(bc <<< "$salario > 150 && $salario <= 300") )); then
        descuento=$(bc <<< "scale=2; $salario * 0.3")
    elif (( $(bc <<< "$salario > 300 && $salario <= 450") )); then
        descuento=$(bc <<< "scale=2; $salario * 0.1")
    else
        descuento=0
    fi

    # Calcular el salario final
    salarioFinal=$(bc <<< "scale=2; $salario - $descuento")
    
    # Impresion de resultados
    echo "Trabajador: $nombre"
    echo "Salario Base: $salario"
    echo "Descuento: $descuento"
    echo "Salario Final: $salarioFinal"
done

