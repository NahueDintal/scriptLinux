#!/bin/bash

printf "Ingrese tiempo pomodoro"
read -p ": " pomodoro
printf "Ingrese tiempo descanso"
read -p ": " descanso

echo -e "Aviso en ${pomodoro} min"
echo -e "Descanso de ${descanso} min"

echo "Inicio"
sleep ${pomodoro}
notify-send "⏰ Temporizador" "¡Pomodoro Terminado!"
paplay /usr/share/sounds/freedesktop/stereo/complete.oga
echo "Fin de pomodoro"
echo "Decanzo"
sleep ${descanso}
notify-send "⏰ Temporizador" "¡Se acabó el tiempo de descanso!"
paplay /usr/share/sounds/freedesktop/stereo/complete.oga
echo "Fin descanso"
