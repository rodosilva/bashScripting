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
sleep 2
}



tamanoArreglo () {

if (( ${#arreglo[*]} >= 1 ))

then
echo "El tamaño del arreglo es: ${#arreglo[*]}"
sleep 2
else
echo "El arreglo aun no ha sido creado"
sleep 2
fi

}

duplicar () {

  digito=0
  arreglo2=()
  k=0
  read -p "Ingrese por cuántas veces desea multiplicar cada valor del arreglo: " digito

  
  for i in ${arreglo[*]}
  do

    for (( j=1; j<=$digito; j++ ))
    do

      arreglo2[k]=$i
      k=$(( $k + 1 ))

    done
  done

echo "El valor de k es: $k"
echo "El nuevo arreglo con duplicados es: ${arreglo2[*]}"
sleep 2

}








while [[ $select != 5 ]]
do

clear
echo "============================================="
echo "============================================="
echo "1) Crear arreglo"
echo "2) Revisar tamaño del arreglo creado"
echo "3) Duplicar"

read -p "Elegir opción: " select  

  case $select in
  
  1) crearArreglo 
  ;;
  2) tamanoArreglo 
  ;;
  3) duplicar 
  ;;
  
  esac

done
