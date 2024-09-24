#!/bin/bash

read -p "Escriba el primer numero: " numero1
read -p "Escriba el segundo numero: " numero2

suma=$((numero1 + numero2))
echo $suma

until [[ $numero2 -eq 0 ]]; do
  read -p "Introduzca un numero para seguir sumando, introduzca 0 para salir: " numero2
  suma=$((suma + numero2))
  echo $suma
done
