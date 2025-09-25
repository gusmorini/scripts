#!/bin/bash

#update system
sudo apt update

# install packs
sudo apt install -y bash-completion gdm3 gnome-session gnome-console gnome-calculator gnome-system-monitor gnome-disk-utility gnome-text-editor papers showtime ntfs-3g btop git curl wget nautilus simple-scan gnome-tweaks sudo network-manager

#enable services
sudo systemctl enable gdm gdm3 NetworkManager

#disable services
#sudo systemctl disable networking

# fix network icon gnome
#sudo rm -rf /etc/network/interfaces

#reboot system
#sudo systemctl reboot
