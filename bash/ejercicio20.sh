#!/bin/bash

numero=$1

if [[ numero -le 1 ]]; then
  echo "El numero no es primo"
fi

if [[ numero -eq 2 || numero -eq 3 ]]; then
  echo "El numero es primo"
  exit
fi

for (( i=2; i<=numero; i++ )); do
  if (( numero % 2 == 0 )); then
    echo "El numero no es primo"
    exit
  fi
done

echo "El numero es primo"
