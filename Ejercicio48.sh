################################################
# Autor  : Orlando Urbano Trejo (Lando)        #
# Fecha  : 28-07-2023                          #  
# Correo : urbanoorlando79@gmail.com           #
################################################

# Ejercicio: Una compania de refrescos comercializa tres productos: de cola, de naranja y de limon. Se desea realizar un programa que calcule las ventas realizadas de cada producto. Para ello, se leera la cantidad vendida (maximo 5000000) y el precio en euros de cada producto y se mostrara un informe de ventas como el que sigue: 


echo "Ingresa la cantidad de ventas de cola: "
read -r Ventas_Cola
echo "Precio del producto: "
read -r Precio_Cola
Total_Cola=$(bc <<< "$Ventas_Cola * $Precio_Cola")

echo "Ingresa la cantidad de ventas de naranja: "
read -r Ventas_Naranja
echo "Precio del producto: "
read -r Precio_Naranja
Total_Naranja=$(bc <<< "$Ventas_Naranja * $Precio_Naranja")

echo "Ingresa la cantidad de ventas de limón: "
read -r Ventas_Limon
echo "Precio del producto: "
read -r Precio_Limon
Total_Limon=$(bc <<< "$Ventas_Limon * $Precio_Limon")

Total_Final=$(bc <<< "$Total_Cola + $Total_Naranja + $Total_Limon")

echo -e "Producto    Ventas   Precio   Total"
echo -e "---------------------------------------"
echo -e "Cola        $Ventas_Cola\t\t$Precio_Cola\t$Total_Cola"
echo -e "Naranja     $Ventas_Naranja\t\t$Precio_Naranja\t$Total_Naranja"
echo -e "Limon       $Ventas_Limon\t\t$Precio_Limon\t$Total_Limon"
echo -e "---------------------------------------"
echo -e "TOTAL\t\t\t\t$Total_Final"
