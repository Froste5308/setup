#!/bin/bash
sudo pacman -S fish fastfetch nano vlc eog wget curl networkmanager openssh firefox dolphin plasma konsole git bat flatpak android-tools android-udev heimdall gvfs gvfs-mtp ark power-profiles-daemon
rm -rf ~yay
cd
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
yay -S localsend-bin ventoy-bin balena-etcher kde-material-you-colors vesktop --noconfirm
cd
mkdir -p ~/.config/fish
(
echo 'set fish_greeting ""'
echo "fastfetch --logo venom"
echo "alias pacman 'sudo pacman'"
) > ~/.config/fish/config.fish
sudo systemctl enable sshd NetworkManager sddm.service
fastfetch --gen-config
(
echo "{"
echo '"$schema": "https://github.com/fastfetch-cli/fastfetch/raw/master/doc/json_schema.json",'
echo '"modules": ['
echo '"title",'
echo '"separator",'
echo '"os",'
echo '"host",'
echo '"uptime",'
echo '"packages",'
echo '"terminal",'
echo '"cpu",'
echo '"gpu",'
echo '"memory",'
echo '"swap",'
echo '"disk",'
echo '"localip",'
echo '"battery",'
echo '"break",'
echo '"colors"'
echo "]"
echo "}"
) > ~/.config/fastfetch/config.jsonc 
