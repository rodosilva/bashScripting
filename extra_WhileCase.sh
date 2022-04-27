#!/bin/bash

# Creando un Menú


abc=0


# ne not equal / eq equal / gt greater than / ge greater or equal / lt lower than / le Lower or equal

while [ $abc -ne 4 ]
do

clear
echo 1. Saludo al Usuario
echo 2. Evaluar EDAD
echo 3. Crear respaldo
echo 4. Salir
echo

read -p "Elija una Opción" abc

case $abc in

  1) clear
        echo Esta es la opción 1
        sleep 2
        ;;
  2) clear
        echo Esta es la opción 2
        sleep 2
        ;;
  3) clear
        echo Esta es la opción 3
        sleep 2
        ;;
  4) clear
        echo Salir
        ;;
  *) echo $abc No es una opción válida
        ;;
esac

done
