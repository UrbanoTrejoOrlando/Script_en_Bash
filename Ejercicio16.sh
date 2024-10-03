################################################
# Autor  : Orlando Urbano Trejo @Lando         #
# Fecha  : 14-07-2023                          #
# Correo : orlandourbanotrejo@gmail.com        #
################################################
# Algoritmo que calcula el presupuesto anual en tres areas de un hospital 

# Datos de entrada
read -p "Presupuesto anual:" presupuesto
urgencias=$(bc <<< "$presupuesto * 0.37")
pediatria=$(bc <<< "$presupuesto * 0.42")
traumatologia=$(bc <<< "$presupuesto * 0.21")
# Impresion de resultados
echo "Presupuesto Urgencias: $urgencias pesos"
echo "Presupuesto Pediatria: $pediatria pesos"
echo "Presupuesto Traumatologia: $traumatologia pesos"

