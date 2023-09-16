#!/bin/bash

# Update system
echo 'Updating system...'
sudo apt update

# Install sway and swaylock and swaybar

sudo apt install sway swaylock waybar -y

# Install Celluloid
echo 'Installing Celluloid...'
sudo apt install celluloid -y

# Install KeepassXC 
echo 'Installing KepassXC...'
sudo apt install keepassxc -y

# Install Libreoffice

sudo apt install libreoffice -y

# Install VSCODE
echo 'Installing VSCode...'
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code -y

# Install Brave

sudo apt install curl -y

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser -y

# Install slurp and grim for screenshots 

sudo apt install slurp grim -y

# Bash-completion for sudo

sudo apt install bash-completion -y
. ~/.bashrc 

# Brightness control

sudo apt install brightnessctl -y

# Network manager

sudo apt install network-manager -y

# Copy config files to their directories

mkdir ~/.config/sway
cp linux/sway/config ~/.config/sway/
mkdir ~/.config/waybar
cp linux/waybar/config ~/.config/waybar/
