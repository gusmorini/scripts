#!/bin/bash

# remove apps
sudo apt remove -y gnome-clocks yelp

#update apt
sudo apt update

# upgrade system
sudo apt upgrade -y

# install packs
sudo apt install -y git curl wget gnome-tweaks gnome-browser-connector simple-scan


