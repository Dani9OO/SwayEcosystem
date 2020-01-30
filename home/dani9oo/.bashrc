#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source Bash functions
. ~/.bash_functions

# Import pywal colors
(cat ~/.config/wpg/sequences &)

# Set ls colors
alias ls='ls --color=auto'

# Set the prompt
PS1='[\u@\h \W]\$ '
