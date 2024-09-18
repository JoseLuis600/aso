#!/bin/bash

fecha=$(date +%F)
dir=$1

if [[ -d $dir ]]; then
  echo "Directorio valido"
  nombre=$(basename "$dir")
  echo "$nombre"
  tar -czf ${fecha}_${nombre}.tar.gz $dir
else
  echo "No es un directorio"
fi
