#!/bin/bash
wifi_name=$(iw dev | awk '/ssid/{print $2}')
if [ -n "$wifi_name" ]; then
  wifi_pct=$(awk 'NR==3 {print int($3*10/7)}' /proc/net/wireless)
  echo "WIFI: ${wifi_pct}% ${wifi_name}"
else
  echo "ETHERNET"
fi
