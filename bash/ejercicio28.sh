#!/bin/bash

function ipaddr(){
  ip -o -4 address show up
}

function ip_to_num(){
  ip=$1
  IFS=.
  read -r i1 i2 i3 i4 <<< "$ip"
  echo "$(( (i1 << 24) + (i2 << 16) + (i3 << 8) + i4 ))"
}

function num_to_ip(){
  num=$1
  echo "$(( (num >> 24) & 0xFF )).$(( (num >> 16) & 0xFF )).$(( (num >> 8) & 0xFF )).$(( num & 0xFF))"
}

function calculo(){
  ip=$1
  mascara=$2
  ip_num=$(ip_to_num "$ip")
  mascara_num=$(( 0xFFFFFFFF << (32 - mascara) & 0xFFFFFFFF ))
  num_red=$(( ip_num & mascara_num ))
  num_to_ip "$num_red"
}

function net(){
  int=$(ipaddr | awk '{print $1, $2, $4}')
  echo -e "$int\n"
  read -p "Seleccione el numero de la interfaz: " red
  Seleccion=$(ipaddr | egrep ^$red | awk '{print $2}')
  IPfull=$(ipaddr | egrep ^$red | awk '{print $4}')
  IP=$(echo "$IPfull" | cut -d '/' -f 1)
  Mascara=$(echo "$IPfull" | cut -d '/' -f 2)
  IPred=$(calculo "$IP" "$Mascara")
  echo "IP de red: $IPred" > resultado.txt
  echo "Mascara de la red $Mascara" >> resultado.txt
  read -p "Ha seleccionado la interfaz $Seleccion, desea continuar? (Y/N): " respuesta
  if [[ $respuesta = "Y" || $respuesta = "N" || $respuesta = "y" || $respuesta = "n" ]]; then
    if [[ $respuesta = "Y" || $respuesta = "y" ]]; then
      ip_inicio=$(ip_to_num "$IPred")
      ip_fin=$(( ip_inicio + (1 << (32 - Mascara)) - 2 ))
      ip_dif=$(( ip_inicio + (1 << (32 - Mascara)) - 1 ))
      ip_dif_cal=$(num_to_ip "$ip_dif")
      echo "IP de difusion: $ip_dif_cal" >> resultado.txt
      for (( i=ip_inicio+1; i<=ip_fin; i++ )); do
        ip_act=$(num_to_ip "$i")
        echo "Haciendo ping a $ip_act"
        if ping -4 -c 1 "$ip_act" &> /dev/null; then
          echo $ip_act >> tmp1.txt
        else
          echo $ip_act >> tmp2.txt
        fi
      done
      echo "Se han escrito las IPs en uso en el fichero resultado.txt"
      echo "IPs en uso:" >> resultado.txt
      cat tmp1.txt >> resultado.txt
      echo "IPs en desuso" >> resultado.txt
      cat tmp2.txt >> resultado.txt
      rm tmp1.txt
      rm tmp2.txt
    elif [[ $respuesta = "N" || $respuesta = "n" ]]; then
      exit
    fi
  fi
}

net
