# !/bin/bash
# Declaración de variables

opcion=$1
nombre=$2
adicional=$3
usuario=$(id -un)


echo "=================================================================="
echo "=================================================================="
echo "=================== BIENVENIDO $usuario =========================="


echo -e "La opción elegida es:\n$opcion\ny el nombre es:\n$nombre\n"
export adicional
echo "Este es el script variable2"
./variable2.sh
echo ""
echo "El número de parametros enviados es: $#"
echo -e "La totalidad de parametros son: $*\n"
