#!/bin/bash
total=0; found=0; 
for bat in /sys/class/power_supply/BAT*/capacity; do 
  [ -f "$bat" ] && total=$((total + $(cat "$bat"))) && found=$((found + 1)); 
done; 
if [ "$found" -gt 0 ]; then
  echo "$((total/found))%"
else
  echo "Plug"
fi
