#!/bin/bash

directorios=(
  ~/.config/kitty/
  ~/.config/nvim/
  ~/.tmux/
  ~/.jc-cli/
  ~/.tk/
  ~/.syntaxHelp/
  ~/Estudio/scriptLinux/
  ~/Estudio/javapracticas/
  ~/Estudio/podman/
  ~/Estudio/2doDesarrollo/
  ~/Estudio/ProgramacionII/
  ~/Estudio/C/
  ~/Estudio/TesinaReservasHotel/
  ~/Work/
)

for i in "${directorios[@]}"; do
  git -C "$i" pull
  echo -e "$i"
done

cd
