#!/bin/bash

PASS="111111"
PUERTO="23456"

echo "Servidor iniciado. Conexiones:"

while true; do
  # Usar tee para ver lo que pasa
  nc -l -p "$PUERTO" -q 0 | tee /dev/stderr | {
    read -r ENTRADA
    if [ "$ENTRADA" = "$PASS" ]; then
      echo "Clave correcta"
    else
      echo "Acceso denegado"
    fi
  }
done
