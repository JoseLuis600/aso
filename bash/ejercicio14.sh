#!/bin/bash

if [[ $1 = "alta" || $1 = "baja" ]]; then
  if [[ $1 = "alta" ]]; then
    nombre=$2
    inicialn=${nombre:0:1}
    apellido1=$3
    inicial1=${apellido1:0:2}
    apellido2=$4
    inicial2=${apellido2:0:2}
    id=$inicial1$inicial2$inicialn
    if [[ $5 ]]; then
      grupo=$5
      echo alu$id';'$grupo >> usuarios.txt
    else
      echo alu$id';'alu$id >> usuarios.txt
    fi
  fi
  if [[ $1 = "baja" ]]; then
    nombre=$2
    inicialn=${nombre:0:1}
    apellido1=$3
    inicial1=${apellido1:0:2}
    apellido2=$4
    inicial2=${apellido2:0:2}
    id=$inicial1$inicial2$inicialn
    grep -v alu$id usuarios.txt > tmpfile
    mv tmpfile usuarios.txt
  fi
else
  echo "Error, La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
fi
