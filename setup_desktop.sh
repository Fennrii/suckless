#!/bin/bash

# ./SetupFiles/install_deps.sh

if [ ! -d "/usr/share/xsessions/" ]; then
  sudo mkdir /usr/share/xsessions/
fi

sudo cp ./SetupFiles/dwm.desktop /usr/share/xsessions/ 

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
if [ ! -d "$HOME/.config/sxhkd" ]; then
  mkdir $HOME/.config/sxhkd
  cp ./sxhkd/sxhkdrc $HOME/.config/sxhkd/sxhkdrc
fi

cp ./SetupFiles/autostart.sh $HOME/.local/share/dwm
cp ./SetupFiles/background*.png $HOME/.config/backgrounds

cd $HOME/.config/suckless/dwm/ &&
  sudo make clean install
cd $HOME/.config/suckless/dmenu/ &&
  sudo make clean install
cd $HOME/.config/suckless/slstatus/ &&
  sudo make clean install
cd $HOME/.config/suckless/slock/ &&
  sudo make clean install
