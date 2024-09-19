#!/bin/bash

clear
echo "Par o impar"

read -p "Introduzca el numero: " numero

if [[ $numero =~ ^[a-z]+$ ]]; then
  echo "Valor invalido"
  exit
else
  if [[ $numero%2 -eq 1 ]]; then
    echo "El valor es impar"
  else
    echo "El valor es par"
  fi
fi
