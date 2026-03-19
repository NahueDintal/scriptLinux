#!/bin/bash

printf "Ingrese tiempo para apagar en min"
read -p ": " apagado

sleep ${apagado}m
echo -e "Se apago..."
poweroff
