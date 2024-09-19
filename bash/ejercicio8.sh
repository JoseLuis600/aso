#!/bin/bash

read -p "Introduzca el primer numero:" numero1
read -p "Introduzca el segundo numero:" numero2

if [[ $numero1 =~ ^[a-z]+$ || $numero2 =~ ^[a-z]+$ ]]; then
  echo "Uno de los valores no son correctos"
  exit
fi

if [[ $numero1 -gt $numero2 ]]; then
    echo "$numero1 es mayor que $numero2"
  else
    echo "$numero2 es mayor que $numero1"
fi
