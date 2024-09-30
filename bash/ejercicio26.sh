#!/bin/bash

fichero=$(ls -l | egrep '.......rwx')

echo -e "$fichero\n"
