#!/bin/bash

# atualizar home usuario
xdg-user-dirs-update

## update system
sudo pacman -Sy

# utils
sudo pacman -S --needed --noconfirm bash-completion ntfs-3g dosfstools exfat-utils htop fastfetch papirus-icon-theme pop-icon-theme gvfs-smb vim

# internet
sudo pacman -S --needed --noconfirm firefox qbittorrent git curl wget

# office
sudo pacman -S --needed --noconfirm gimp inkscape 

# fonts
sudo pacman -S --needed --noconfirm ttf-dejavu ttf-liberation noto-fonts

# multimidia
sudo pacman -S --noconfirm ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-plugins-bad gst-libav gstreamer showtime

## gnome
sudo pacman -S --needed --noconfirm gdm gnome-shell gnome-control-center gnome-console gnome-calculator gnome-system-monitor gnome-disk-utility gnome-text-editor gnome-tweaks loupe papers gnome-browser-connector

#sudo systemctl enable gdm

# impressora e scanner brother
#sudo pacman -S --needed --noconfirm cups cups-pdf sane-airscan simple-scan
#sudo systemctl enable cups
### instalar via terminal
# lpadmin -p Brother -E -v "ipp://192.168.3.133/ipp/print" -m everywhere
# lpoptions -p Brother -o PageSize=A4
# lpoptions -d Brother

# games
# pacman -S --noconfirm retroarch retroarch-assets-ozone libretro-snes9x libretro-mgba libretro-genesis-plus-gx libretro-shaders-slang
