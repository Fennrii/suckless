#!/bin/bash

list=(
  "xorg-dev"
  "sxhkd"
  "ksnip"
  "feh"
  "picom"
  "dunst"
  "arandr"
  "autorandr"
  "network-manager"
  "alsa-utils"
  "fastfetch"
  )

if command -v xbps-install &> /dev/null; then
  # Void Linux
  sudo xbps-install -Sy "${list[@]}" || {
    echo "Failed to install packages with xbps. Please check your internet connection or package manager."
    exit 1
  }
elif command -v apt &> /dev/null; then
  # Debian/Ubuntu
  sudo apt install -y "${list[@]}" || {
    echo "Failed to install packages with apt. Please check your internet connection or package manager."
    exit 1
  }
else
  echo "Unsupported package manager. Please install dependencies manually."
  exit 1
fi
