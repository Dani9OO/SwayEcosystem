echo 'Updating.'
pacman -Syu
echo 'Installing necessary packages.'
pacman -S xdg-user-dirs ufw sway swaybg xorg-server-xwayland kitty swaylock swayidle\
 python-pywal grim neofetch pulseaudio pulseaudio-alsa pamixer imagemagick mako libnotify\
 openssh bemenu waybar ttf-ubuntu-font-family archlinux-wallpaper lxappereance acpilight\
 pavucontrol man 
echo 'Cloning wpgtk-git from the AUR...'
git clone https://aur.archlinux.org/wpgtk-git.git
cd wpgtk-git
echo 'Installing wpgtk-git...'
makepkg -si
cd ..
echo 'Cloning ttf-font-awesome-4 from the AUR...'
git clone https://aur.archlinux.org/ttf-font-awesome-4.git
cd ttf-font-awesome-4
makepkg -si
echo 'Installing ttf-font-awesome-4...'