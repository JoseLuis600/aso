#!/bin/bash

if [[ $# -eq 0 ]]; then
  echo "Debe de especificar una ruta"
  exit
fi

ruta=$1

if [[ ! -d $ruta ]];then
  echo "La ruta no lleva a un directorio"
  exit
else
  conteod=$(find $ruta -mindepth 1 -maxdepth 1 -type d | wc -l)
  echo "Hay $conteod directorios"
  conteof=$(find $ruta -mindepth 1 -maxdepth 1 -type f | wc -l)
  echo "Hay $conteof ficheros"
fi
