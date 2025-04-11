#!/bin/bash

slstatus &

# background
feh --bg-scale ~/.config/backgrounds/background-nier.png &

# compositor
picom --config ~/.config/picom/picom.conf &

# sxhkd
sxhkd -c ~/.config/suckless/sxhkd/sxhkdrc &

# Turn off system bell
xset b off

# Notifs
dunst &
