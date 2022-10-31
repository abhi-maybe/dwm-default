# Update and install required packages
sudo pacman -Syyu screengrab feh noto-fonts-cjk noto-fonts-emoji gnome-keyring noto-fonts picom xfce4-power-manager alacritty xorg xorg-xinit xterm sl light pamixer brightnessctl git cmake --noconfirm

# Clone the dots
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# Install required AUR packages
yay -S networkmanager-dmenu-git material-black-colors-theme --noconfirm

# Cpoy required files
cp ~/dwm-default/.xinitrc ~/
sudo cp ~/dwm-default/50-libinput.conf ~/etc/X11/xorg.conf.d/

# Script to install dwm, dmenu and slstatus
sh ~/dwm-default/dwm/install.sh

# Set Wallpaper
feh --bg-fill ~/dwm-default/wallpaper.jpg

# Copy the alacritty configs
cp -R ~/dwm-default/.config/alacritty/ ~/.config/
cp -R ~/dwm-default/.config/dunst/ ~/.config/

# Let the train Cross :)
sl

# Here you go
startx