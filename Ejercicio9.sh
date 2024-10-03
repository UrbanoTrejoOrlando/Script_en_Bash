################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejogmail.com         #
################################################
# Algoritmo para determinar el sueldo semanal de N trabajdores y aplicar descuentos dependiendo de las horas se aplicara un descuento

# Datos de entrada
echo "Numero de trabajadores: "
read -r trabajadores

for ((i = 0; i < trabajadores; i++)); do
    echo "Nombre del trabajador $((i + 1)):"
    read -r nombres
    echo "Horas Trabajadas: "
    read -r horasTrabajadas
    echo "Sueldo por hora: "
    read -r sueldoHora
	salario=$(bc <<< "$horasTrabajadas * $sueldoHora")
	# Condiciones
    if ((salario >= 0 && salario <= 150)); then
        nuevoSalario=$(bc <<< "$salario * 0.5")
    elif ((salario > 150 && salario <= 300)); then
        nuevoSalario=$(bc <<< "$salario * 0.7")
    elif ((salario > 300 && salario <= 450)); then
        nuevoSalario=$(bc <<< "$salario * 0.9")
    else
        nuevoSalario=0
    fi
	# Impresion de resultados
    total=$(bc <<< "$salario - $nuevoSalario")
    echo "Trabajador: $nombres"
    echo "Salario final: $total"
done

