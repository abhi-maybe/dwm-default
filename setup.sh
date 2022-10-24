# Update and install required packages
sudo pacman -Syyu screengrab feh noto-fonts-cjk noto-fonts-emoji noto-fonts picom xfce4-power-manager alacritty xorg xorg-xinit xterm sl light pamixer brightnessctl git cmake --noconfirm

# Clone the dots
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# Install required AUR packages
yay -S networkmanager-dmenu-git --noconfirm

cp .xinitrc ~/

# Script to install dwm, dmenu and slstatus
sh /dwm/install.sh

# Set Wallpaper
feh --bg-fill wallpaper.jpg

# Copy the alacritty configs
cp -R .config/alacritty/ ~/.config/

# Let the train Cross :)
sl

# Here you go
startx