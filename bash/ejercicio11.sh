#!/bin/bash

if [[ -f $1 ]]; then
  if [[ -e $2 ]]; then
    echo "Ya existe un archivo con este nombre"
    exit
  fi
  if [[ -z $2 ]]; then
    echo "Debe indicar un nombre"
    exit
  fi
  cp $1 $2
else
  echo "No se ha encontrado el fichero"
fi
