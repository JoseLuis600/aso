#!/bin/bash

echo "Media aritmetica"

read -p "Introduzca el primer numero:" numero1
read -p "Introduzca el segundo numero:" numero2

media=$((($numero1 + $numero2)/2))

echo "La media aritmetica es $media"
