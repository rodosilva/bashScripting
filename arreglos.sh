# !/bin/bash


select=0



crearArreglo () {

arregloString=""
#declare -a arreglo
arreglo=()

read -p "Ingrese valores del arreglo separado por espacios: " arregloString

IFS=' ' read -r -a arreglo <<< "$arregloString"

echo "El arreglo creado es: ${arreglo[@]}"
sleep 2

for i in ${!arreglo[*]}
  do

  echo "Indice: $i Valor: ${arreglo[i]}"
  
  done

}












while [[ $select != 5 ]]
do

read -p "Elegir opción: " select  

  case $select in
  
  1) crearArreglo 
  ;;
  2) echo has elegido 2: 
  ;;
  *) echo error: 
  ;;
  
  esac

done
