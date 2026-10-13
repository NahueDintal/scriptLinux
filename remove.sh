#!/bin/bash

# soft delete con ruta en archivo para poder devolver el archivo en cuestion.

ARCHIVO="$1"

# Se encarga de escribir en las rutas para luego otro script de restablecer el archivo.
echo $(pwd) $ARCHIVO $(date +%F) >> ~/Remove/.Rutas.md

# Notificación y acción...
echo "$ARCHIVO enviado a ~/Remove..."
mv $ARCHIVO ~/Remove/
