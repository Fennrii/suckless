#!/bin/bash
if [ -d "/sys/class/power_supply/BAT0/capacity" ]; then
	cat /sys/class/power_supply/BAT0/capacity
fi
