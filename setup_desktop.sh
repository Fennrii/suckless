#!/bin/bash
if [ ! -d "/usr/share/xsessions/" ]; then
  sudo mkdir /usr/share/xsessions/
fi

sudo cp ./setupfiles/dwm.desktop /usr/share/xsessions/ 

if [ ! -d "$HOME/.config/picom" ]; then
  mkdir $HOME/.config/picom
  touch $HOME/.config/picom/picom.conf
fi
if [ ! -f "$HOME/.config/picom/picom.conf" ]; then
  touch $HOME/.config/picom/picom.conf
fi
if [ ! -d "$HOME/.local/share/dwm" ]; then
  mkdir $HOME/.local/share/dwm 
fi
if [ ! -d "$HOME/.config/backgrounds" ]; then
  mkdir $HOME/.config/backgrounds
fi

cp ./setupfiles/autostart.sh $HOME/.local/share/dwm
cp ./setupfiles/background.png $HOME/.config/backgrounds
