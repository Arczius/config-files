#!/usr/bin/env bash

echo "Starting the setup process\n\n"

echo "downloading the Lilex NF"
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Lilex.zip -O Lilex.zip

clear

echo "latest Lilex NF has been downloaded, installing..."

mkdir ~/.local/share/fonts/
mkdir ~/.local/share/fonts/LilexNerdFont/

unzip -o Lilex.zip -d ~/.local/share/fonts/LilexNerdFont/
fc-cache
rm Lilex.zip

echo "installing tools"
sudo dnf -y install neovim zellij

cp -a ./config/* ~/.config/
