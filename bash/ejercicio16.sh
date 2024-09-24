#!/bin/bash

echo "1. for"
echo "2. while"
echo "3. until"
read -p "Eleccion: " opcion

case $opcion in

  1)
    for (( i=1; i<=1000; i++)); do
      echo $i
      if [[ $i -eq 1000 ]]; then
        echo "For"
      fi
    done
  ;;

  2)
    valor=1
    while [[ $valor -ne 1000 ]]; do
      suma=$((valor + 1))
      valor=$suma
      echo $suma
      if [[ $valor -eq 1000 ]]; then
        echo "While"
      fi
    done
  ;;

  3)
    valor=1
    until [[ $valor -eq 1000 ]]; do
      suma=$((valor + 1))
      valor=$suma
      echo $suma
      if [[ $valor -eq 1000 ]]; then
        echo "Until"
      fi
    done
  ;;
esac
