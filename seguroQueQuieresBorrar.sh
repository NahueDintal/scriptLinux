#!/bin/bash

echo "Estás seguro de que quieres borrar?"
printf '  %s\n' "$@"
echo -n "Confirmar (S/n): "
read respuesta

# Responder S o s (o vacío) borra; cualquier otra cosa cancela
if [[ "$respuesta" =~ ^[Ss]?$ ]]; then
    rm -rf "$@"
else
    exit 0
fi
