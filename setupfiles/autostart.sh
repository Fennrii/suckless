#!/bin/bash

slstatus &

# background
feh --bg-scale ~/.config/backgrounds/background.png &

# compositor
picom --config ~/.config/picom/picom.conf &

# sxhkd
sxhkd -c ~/.config/suckless/sxhkd/sxhkdrc &


# Notifs
dunst &
