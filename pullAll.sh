#!/bin/bash

directorios=(
  ~/.config/kitty/
  ~/.config/nvim/
  ~/.tmux/
  ~/Estudio/scriptLinux/
  ~/Estudio/javapracticas/
  ~/Estudio/podman/
  ~/.jc-cli/
  ~/.tk/
  ~/Work/
  ~/.syntaxHelp/
)

for i in "${directorios[@]}"; do
  git -C "$i" pull
  echo -e "$i"
done

cd
