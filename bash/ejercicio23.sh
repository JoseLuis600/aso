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
  for item in "$ruta"/*; do
    if [[ -d $item ]]; then
      echo "$item es un directorio"
    elif [[ -f $item ]]; then
      echo "$item es un fichero"
    elif [[ -c $item ]]; then
      echo "$item es un archivo de caracter especial"
    elif [[ -b $item ]]; then
      echo "$item es un archivo especial de bloque"
    elif [[ -L $item ]]; then
      echo "$item es un enlace simbolico"
    fi
  done
  conteo=$(ls -1 $ruta | wc -l)
  echo "Se han procesado $conteo archivos"
fi
