#!/bin/bash

if [[ $# -eq 0 ]]; then
  echo "Debe de especificar una ruta"
  exit
fi

ruta=$1

if [[ $ruta != /* ]]; then
  echo "Debe especificar una ruta absoluta"
  exit
elif [[ ! -d $ruta ]];then
  echo "La ruta no lleva a un directorio"
  exit
else
  listado=$(ls $ruta)
  for item in $listado/*; do
    if [[ -d $item ]]; then
      echo "$listado es un directorio"
    elif [[ -f $item ]]; then
      echo "$listado es un fichero"
    fi
  done
  conteo=$(ls -1 $ruta | wc -l)
  echo "Se han procesado $conteo archivos"
fi
