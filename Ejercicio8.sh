################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo para determinar el pago que debe realizar una persona por el consumo de agua

# Datos de entrada
echo "Precio por metro cúbico (en pesos): "
read -r precio
echo "Metros cúbicos consumidos: "
read -r metros

# Verificación de que los valores sean positivos
if ((precio < 0 || metros < 0)); then
    echo "Los valores deben ser positivos."
else
    # Operaciones
    resultado=$(bc <<< "$precio * $metros")
    echo "El pago por el consumo de agua es: $resultado pesos"
fi

