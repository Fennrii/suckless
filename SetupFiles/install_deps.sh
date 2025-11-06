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

sudo apt install -y "${list[@]}" || {
  echo "Failed to install packages. Please check your internet connection or package manager."
  exit 1
}
