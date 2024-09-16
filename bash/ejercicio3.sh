#!/bin/bash

ls /etc > resultadols.txt
cat resultadols.txt

lineas=$(wc -c resultadols.txt | cut -d ' ' -f1)
palabras=$(wc -w resultadols.txt | cut -d ' ' -f1)

echo "Hay un total de $lineas caracteres"
echo "Hay un total de $palabras palabras"
