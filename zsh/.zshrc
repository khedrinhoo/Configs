export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

set -o vi

alias u="sudo pacman -Syu && yay -Syu"
alias i="sudo pacman -S"
alias r="sudo pacman -Rns"

alias ls="eza"
alias ll="eza -ll"
alias la="eza -la"
