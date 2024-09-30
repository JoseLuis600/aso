#!/bin/bash

fichero=$1

function existe(){
  if [ -f "$fichero" ]; then
    chmod u+x "$fichero"
    echo "Permisos cambiados"
  else
    echo "Fichero no encontrado"
  fi
}

existe "$fichero"
