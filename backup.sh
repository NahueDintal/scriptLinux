#!/bin/bash
FECHA=$(date +%Y%m%d)
DESTINO=/var/
tar -czf '$DESTINO' /etc/ 2>/dev/null
echo 'Backup creado: $DESTINO' | logger -t backup-etc
