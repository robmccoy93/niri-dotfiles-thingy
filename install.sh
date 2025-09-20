#! /bin/bash

set -e

echo "Cloning the dotfiles:"
git clone https://github.com/robmccoy93/niri-dotfiles-thingy.git
cd ./niri-dotfiles-thingy

echo "Moving the config files to ~/.config..."
mv ./niri ~/.config/
mv ./catppuccin-mocha-mauve /usr/share/sddm/themes
mv ./kitty ~/.config/
mv ./waybar ~/.config/
mv ./fastfetch ~/.config/
mv ./fuzzel ~/.config/
mv ./mpv ~/.config/
mv ./hypr ~/.config/
mv ./rofi/config ~/.config/rofi

echo "Putting rofi script in ~/.local/share/rofi..."
mv ./rofi/local ~/.local/share/rofi

echo "Moving wallpapers to ~/Pictures/Wallpapers..."
mv ./wallpapers ~/Pictures/Wallpapers

echo "Done!"
