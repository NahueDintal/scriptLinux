#!/bin/bash

echo -e "Temporizador en segundos"
echo -e "Para descanso de 300s o 5m"

i=0
while ((i < 300)); do
  echo "$i"
  sleep 1
  ((i++))
done

echo -e "Termino el descanso!"
notify-send "⏰ Temporizador" "¡Se acabó el tiempo de descanso!"
paplay /usr/share/sounds/freedesktop/stereo/complete.oga
