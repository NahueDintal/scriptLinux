#!/bin/bash

ARCHIVO="$1"
RUTA=$(grep "$ARCHIVO" ~/Remove/.Rutas.md | awk '{print $1}')

if [ ! -f "$RUTA" ]; then
  echo "Ruta encontrada, restauración exitosa"
  exit 1

  mv -- "$ARCHIVO" "/$RUTA"
fi

