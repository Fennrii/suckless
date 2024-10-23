#!/bin/bash
if [ -d "/usr/share/xsession/" ]; then
  sudo mkdir /usr/share/xsessions/
fi

sudo cp ./dwm.desktop /usr/share/xsessions/ 

