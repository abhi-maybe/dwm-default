sudo pacman -Syyu --noconfirm
sudo pacman -S xfce4-power-manager alacritty xorg xorg-xinit xterm sl light pamixer brightnessctl git cmake --noconfirm
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S networkmanager-dmenu-git --noconfirm
sudo pacman -S feh noto-fonts-cjk noto-fonts-emoji noto-fonts --noconfirm
cp .xinitrc ~/
sh /dwm/install.sh
feh --bg-fill wallpaper.jpg
cp -R .config/alacritty/ ~/.config/
sl
startx
