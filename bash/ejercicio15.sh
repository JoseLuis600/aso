#!/bin/bash

num=$1
for (( i=1; i<=10; i++)); do
  multi=$((i * num))
  echo "$num*$i=$multi"
done
