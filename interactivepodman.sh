#!/bin/bash

# set -x

if [[ -z "$BUSQUEDA" ]]; then 
  echo -e "Modo interactivo Podman, ingrese salir o exit"
  while true; do
    printf " >"
    read -p "" BUSQUEDA
    [[ "$BUSQUEDA" == "salir" || "$BUSQUEDA" == "exit" || -z "$BUSQUEDA" ]] && break
    podman "$BUSQUEDA"
  done
  exit 0
fi


