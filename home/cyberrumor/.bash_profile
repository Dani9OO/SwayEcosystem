#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	clear && XKB_DEFAULT_LAYOUT=latam exec sway &> /dev/null
fi
