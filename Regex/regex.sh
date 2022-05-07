# !/bin/bash

numeros=0
numerosRegex="^[0-9]{5}$"
palabras=""
palabrasRegex="^[aA][a-zA-Z]+"
palabras2=""
palabras2Regex="[a-zA-Z]*[aA]$"
opciones=""
opcionesRegex="^A1|A2|A3|A4|B1|B2|B3|B4$"

read -p "Introduce solo 5 digitos: " numeros
if [[ $numeros =~ $numerosRegex ]]
then
        echo "Has ingresado los numeros: $numeros"
else
        echo "Intenta nuevamente"
fi

read -p "Introduce una palabra que empiece con A de más de una letra: " palabras

if [[ $palabras =~ $palabrasRegex ]]
then
        echo "Has ingresado la palabra: $palabras"
else
        echo "Intenta nuevamente"
fi

read -p "Introduce una palabra que termine con A de una letra o más: " palabras2
if [[ $palabras2 =~ $palabras2Regex ]]
then
        echo "Has ingresado la palabra: $palabras2"
else
        echo "Intenta nuevamente"
fi

read -p "Introduce una opción A1, A2, A3, A4, B1, B2, B3, B4: " opciones
if [[ $opciones =~ $opcionesRegex ]]
then
        echo "Has ingresado la opción: $opciones"
else
        echo "Intenta nuevamente"
fi
