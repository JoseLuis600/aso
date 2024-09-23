#!/bin/bash

control=0

while [[ $control -eq 0 ]]; do
  clear
  echo "1. Añadir un registro"
  echo "2. Buscar entradas"
  echo "3. Listar"
  echo "4. Ordenar alfabeticamente"
  echo "5. Borrar el archivo"
  echo "0. Salir"
  read -p "Introduzca una de las opciones: " opcion
  if [[ $opcion =~ ^[0-5]$ ]]; then
    control=1
  fi
done

case $opcion in

  0)
    exit
  ;;

  1)
    clear
    echo "Escriba el nombre"
    read nombre
    clear
    echo "Escriba la direccion"
    read direccion
    clear
    echo "Escriba el numero de telefono"
    read telefono
    clear
    echo "$nombre;$direccion;$telefono" >> lista.txt
  ;;

  2)
    clear
    echo "1. Buscar por nombre"
    echo "2. Buscar por direccion"
    echo "3. Buscar por telefono"
    echo "4. Busqueda completa"
    read -p "Elija una de las opciones de busqueda: " busca
    if [[ $busca = 1 ]]; then
      read -p "Escriba el nombre a buscar: " nombre
      awk -F';' '{print $1}' lista.txt | grep $nombre
    elif [[ $busca = 2 ]]; then
      read -p "Escriba la dreccion a buscar: " direccion
      awk -F';' '{print $2}' lista.txt | grep $direccion
    elif [[ $busca = 3 ]]; then
      read -p "Escriba el telefono a buscar: " telefono
      awk -F';' '{print $3}' lista.txt | grep $telefono
    elif [[ $busca = 4 ]]; then
      read -p "Escriba lo que desea buscar: " todo
      grep $todo lista.txt
    else
      echo "Invalido"
      exit
    fi
  ;;

  3)
    clear
    cat lista.txt
  ;;

  4)
    clear
    echo "¿Que deseas?"
    echo "1. Ordenar sin guardar (mostrar)"
    echo "2. Ordenar y guardar"
    read -p "Eleccion: " lista
    if [[ $lista = 1 ]]; then
      sort lista.txt
    elif [[ $lista = 2 ]]; then
      sort lista.txt > lista_ordenada.txt
      cat lista_ordenada.txt > lista.txt
      rm lista_ordenada.txt
    fi
  ;;

  5)
    rm lista.txt
  ;;
esac
