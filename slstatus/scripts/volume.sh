#!/bin/bash
if [ \"$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')\" = \"yes\" ]; then echo ^c#CD664D^ [ MUTE ]; else echo ^c#CAC4AD^ [ VOL: $(pactl get-sink-volume @DEFAULT_SINK@ | head -1 | awk '{print $5}' | sed 's/.$//')% ]; fi;
