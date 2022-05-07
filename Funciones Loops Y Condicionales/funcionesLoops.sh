# !/bin/bash


opt=0


saludo () {
  echo "Hola $(id -un) ¿Todo bien? "
  sleep 2
}

chiste () {
  echo "¿Qué le dice una gallina deprimida a otra gallina deprimida? Necesitamos apoyo "
  sleep 2
}

crearCarpeta () {
  nomcarpeta=""
  ubi=""
  read -p "Ingrese el nombre de la carpeta: " nomcarpeta
  mkdir $nomcarpeta
  ubi=$(pwd)
  echo "La carpeta creada es: $ubi/$nomcarpeta"
  sleep 2
}

borrarCarpeta () {
  nomcarpetab=""
  rpta=""
  rptaRegexY='^[Y]$'
  rptaRegexN='^[N]$'
  read -p "Ingrese el nombre de la carpeta a borrar: " nomcarpetab
  read -p "Está seguro de borrar $nomcarpetab [Y/N]: " rpta
  if [[ $rpta =~ $rptaRegexY ]]
  then
    rm -rf $nomcarpetab
    echo "Has borrado $nomcarpetab "
    sleep 2
   
   elif [[ $rpta =~ $rptaRegexN ]]
   then
     echo "No se ha borrado $nomcarpetab "
     sleep 2

   else
     echo "Opción erronea "
     sleep 2
  fi
}


while [[ $opt != 5 ]]
do

clear
echo "===================================================="
echo "===================================================="
echo "====================== MENU ========================"
echo "===================================================="
echo "===================================================="
echo ""
echo "1) Quiero un saludo: "
echo "2) Cuéntame un chiste: "
echo "3) Crear una carpeta: "
echo "4) Borrar una carpeta: "
echo "5) Salir"
echo ""

read -p "Elija una opción: " opt

    case $opt in

    1) clear
       saludo
       ;;

    2) clear
       chiste
       ;;

    3) clear
       crearCarpeta
       ;;

    4) clear
       borrarCarpeta
       ;;

    5) clear
       echo "Vuelve pronto "
       sleep 2
       ;;

    *) clear
       echo "Opción erronea "
       sleep 2
       ;;
    
    esac
  
done
