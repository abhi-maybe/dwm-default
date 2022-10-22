sudo pacman -Syyu --noconfirm
sudo pacman -S xorg xterm sl light pamixer brightnessctl git cmake --noconfirm
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S networkmanager-dmenu-git --noconfirm
sudo pacman -S noto-fonts-cjk noto-fonts-emoji noto-fonts --noconfirm
git clone https://github.com/firstb0ss/dwm-default && cd dwm-default
cp .xinitrc ~/
sudo sh install.sh
sl && reboot
