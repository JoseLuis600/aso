#!/bin/bash

for (( i=1; i<=1000; i++)); do
  echo $i
done

valor = 1
while [[ $valor -ne 1000 ]]; do
  suma=$((valor + 1))
  echo $suma
done
