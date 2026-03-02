#!/bin/bash

echo "Descargardo entorno configurado"

. /etc/os-release && echo $OS_NAME

if [[ "$OS_NAME" == "Arch Linux" ]]; then
  sudo pacman -S tmux kitty git tree lazygit lazydocker neovim btop starship zoxide btop bat
fi

if [[ "$OS_NAME" == "Debian" ]]; then
  sudo apt install tmux alacrity git tree lazygit lazydocker neovim btop starship zoxide btop bat
fi
