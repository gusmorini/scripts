#!/bin/bash

### REMOVE
pack=("gnome-weather gnome-tour gnome-maps gnome-contacts yelp gnome-characters snapshot gnome-clocks gnome-calendar")
cmd="dnf rm -y ${pack[@]}"
sudo $cmd

### INSTALL
pack=("git curl gimp inkscape fastfetch qbittorrent zsh")
cmd="dnf in -y ${pack[@]}"
sudo $cmd

### CONFIGURE
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
