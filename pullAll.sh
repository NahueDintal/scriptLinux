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
  ~/Estudio/GestorStockCerrajeria/
  ~/.apiStats/
  ~/Estudio/vms/
  ~/Work/

)

for i in "${directorios[@]}"; do
  echo -e "$i"
  git -C "$i" pull
done

cd
