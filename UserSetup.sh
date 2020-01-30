echo 'Updating user directories so the copy goes smooth.'
xdg-user-dirs-update
echo 'Cloning wpgtk-git from the AUR...'
git clone https://aur.archlinux.org/wpgtk-git.git
cd wpgtk-git
echo 'Installing wpgtk-git...'
makepkg -sirc
cd ..
echo 'Cloning ttf-font-awesome-4 from the AUR...'
git clone https://aur.archlinux.org/ttf-font-awesome-4.git
cd ttf-font-awesome-4
makepkg -sirc
echo 'Installing ttf-font-awesome-4...'
echo 'Copying user configuration files to your user folder.'
cp -r home/dani9oo/* ~/
cp -r home/dani9oo/.* ~/
echo 'Cleaning up unused files'
rm ~/screenshot.png
rm ~/screenshot1.png
chmod +x ~/.config/mako/launch.sh
echo 'Installing wpg components for window and icon theming'
touch ~/.Xresources
mkdir ~/.themes
wpg-install.sh -g -i
echo 'Setting preview wallpaper with wpg'
wpg -a /usr/share/backgrounds/archlinux/archlinux-burn.jpg
wpg -s archlinux-burn.jpg
ln -s ~/.cache/wal/mako.conf ~/.config/mako/config
echo 'To add a wallpaper to your collection, run 
	$ wpg -a /path/to/image.png
	To list the wallpapers available in your collection, use
	$ wpg -l
	To set your system theme and colorscheme run
	$ wpg -s <wallpaper from the previous list>'