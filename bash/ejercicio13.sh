#!/bin/bash

control=0

while [[ $control -eq 0 ]]; do
  clear
  echo "1. Añadir un registro"
  echo "2. Buscar entradas"
  echo "3. Listar"
  echo "4. Ordenar alfabeticamente"
  echo "5. Borrar el archivo"
  echo "0. Salir"
  read -p "Introduzca una de las opciones: " opcion
  if [[ $opcion =~ ^[0-5]$ ]]; then
    control=1
  fi
done

case $opcion in

  0)
    exit
  ;;

  1)
    echo "Escriba lo que desea añadir"
    read texto
    echo $texto >> lista.txt
  ;;

  2)
    echo "Escriba la entrada a buscar"
    read entrada
    grep $entrada lista.txt
  ;;
esac
