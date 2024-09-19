#!/bin/bash

control=0

while [[ $control -eq 0 ]]; do
  clear
  echo "1. Sumar"
  echo "2. Restar"
  echo "3. Multiplicar"
  echo "4. Dividir"
  echo "0. Salir"
  read -p "Introduzca una de las opciones: " opcion
  if [[ $opcion =~ ^[0-4]$ ]]; then
    control=1
  fi
done

if [[ $opcion -ne 0 ]]; then
  if [[ $opcion -eq 4 ]]; then
    read -p "Introduzca el dividendo: " numero1
    read -p "Introduzca el divisor: " numero2
    if [[ $numero2 -eq 0 ]]; then
      echo "No se puede dividir entre cero"
      exit
    fi
  else
    read -p "Introduzca el primer numero: " numero1
    read -p "Introduzca el segundo numero: " numero2
  fi
  if [[ $numero1 =~ ^[a-z]+$ || $numero2 =~ ^[a-z]+$ ]]; then
    echo "Uno de los valores no son validos"
    exit
  fi
fi


case $opcion in

  0)
    exit
  ;;

  1)
    suma=$(($numero1+$numero2))
    echo "La suma de los dos numeros es $suma"
  ;;

  2)
    resta=$(($numero1-$numero2))
    echo "La resta de los dos numeros es $resta"
  ;;

  3)
    multi=$(($numero1*$numero2))
    echo "La multiplicacion de los dos numeros es $multi"
  ;;

  4)
    div=$(($numero1/$numero2))
    if [[ $numero2 -gt $numero1 ]]; then
      echo "El divisor no puede ser mayor que el dividendo"
    else
      echo "La division de los dos numeros es $div"
    fi
  ;;
esac
