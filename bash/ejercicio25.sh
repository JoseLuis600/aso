ç#!/bin/bash

ip=$(last -i | egrep '([0-9]{1,3}\.){3}[0-9]{1,3}' | egrep -v '0\.0\.0\.0$')

echo -e "$ip\n"

