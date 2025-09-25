#!/bin/bash

#remove packs
sudo dnf rm -y gnome-weather gnome-tour gnome-maps gnome-contacts yelp gnome-characters snapshot gnome-clocks gnome-calendar totem rhythmbox evince

# install packs
sudo dnf in -y git curl btop gimp inkscape fastfetch qbittorrent papers showtime
