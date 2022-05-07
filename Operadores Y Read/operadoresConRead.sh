# !/bin/bash


operador1=0
operador2=0

clear

read -n5 -p "elija su primer operador: " operador1
echo ""
read -n5 -p "elija su segundo operador: " operador2
echo ""


echo "La suma de $operador1 y $operador2 es $(( operador1 + operador2 ))"
echo "La resta de $operador1 con $operador2 es $(( operador1 - operador2 ))"
echo "El producto de $operador1 con $operador2 es $(( operador1 * operador2 ))"
echo "La divición entre $operador1 con $operador2 es $((operador1 / operador2 ))"
echo ""
echo "Es $operador1 mayor que $operador2: $(( operador1 > operador2 ))"
echo "Es $operador1 mayor o igual que $operador2: $(( operador1 >= operador2 ))"
echo "Es $operador1 menor que $operador2: $(( operador1 < operador2 ))"
echo "Es $operador1 menor o igual que $operador2: $(( operador1 <= operador2 ))"
echo "Es $operador1 igual que $operador2: $(( operador1 == operador2 ))"
echo "Es $operador1 diferente que $operador2: $(( operador1 != operador2 ))"
