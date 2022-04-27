#!/bin/bash


meses=(enero febrero marzo abril mayo junio julio agosto setiembre octubre noviembre diciembre)


#for i in ${meses[*]}
#  do
#  echo "El mes es $i"
#
#done

for (( i = 0; i <= 13; i ++ ))

  do
    echo "${meses[i]}"

done
