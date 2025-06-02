export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

source <(fzf --zsh)

set -o vi

alias u="sudo pacman -Syu && yay -Syu"
alias i="sudo pacman -S --noconfirm --needed"
alias r="sudo pacman -Rns"

alias ls="eza"
alias ll="eza -l"
alias la="eza -la"

alias vim="nvim"
