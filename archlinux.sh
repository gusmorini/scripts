#!/bin/bash

### utilitarios
app=("bash-completion ntfs-3g dosfstools exfat-utils htop fastfetch papirus-icon-theme pop-icon-theme gvfs-smb vim zsh flatpak")

### internet
app+=("firefox qbittorrent git curl wget")

### escritorio
app+=("gimp inkscape")

### fonts
app+=("ttf-dejavu ttf-liberation noto-fonts")

### multimidia
app+=("ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-plugins-bad gst-libav gstreamer")

### interface gnome
app+=("gdm gnome-shell gnome-control-center gnome-console gnome-calculator gnome-system-monitor gnome-disk-utility gnome-text-editor gnome-tweaks loupe papers gnome-browser-connector showtime gnome-music")

### impressora e scanner
app+=("cups cups-pdf sane-airscan simple-scan")

### games
#app+="retroarch-assets-ozone libretro-snes9x libretro-mgba libretro-genesis-plus-gx libretro-shaders-slang"

### instalar aplicativos

sudo pacman -Sy
cmd="pacman --needed -S ${app[@]}"
sudo $cmd

### configurar o sistema ###

### oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### ativar serviços
sudo systemctl enable gdm cups

: '
### opcional

# atualizar home usuario
xdg-user-dirs-update

# configurar impressora Brother
lpadmin -p Brother -E -v "ipp://192.168.3.133/ipp/print" -m everywhere
lpoptions -p Brother -o PageSize=A4
lpoptions -d Brother


'
