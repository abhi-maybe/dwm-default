sudo pacman -Syyu --noconfirm
sudo pacman -S xfce4-power-manager alacritty xorg xterm sl light pamixer brightnessctl git cmake --noconfirm
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S networkmanager-dmenu-git --noconfirm
sudo pacman -S feh noto-fonts-cjk noto-fonts-emoji noto-fonts --noconfirm
git clone https://github.com/firstb0ss/dwm-default && cd dwm-default
cp .xinitrc ~/
sudo sh install.sh
feh --set-bg wallpaper.jpg
cp -R .config/ ~/.config
sl
startx
