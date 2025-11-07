#!/bin/bash
if [ -f "/sys/class/power_supply/BAT0/capacity" ]; then
	cat /sys/class/power_supply/BAT0/capacity
fi
