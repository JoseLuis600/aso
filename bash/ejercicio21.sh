#!/bin/bash

aleatorio=$(( RANDOM % 101))

echo $aleatorio

until [[ $aleatorio -eq $valor ]]; do
  read -p "Escriba su numero: " valor
  if [[ $valor -eq 0 ]]; then
    echo "Se ha rendido"
    exit
  fi
done

echo "Has adivinado el numero"
