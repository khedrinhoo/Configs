[[ $- != *i* ]] && return

# git
function parse_git_dirty {
    [[ $(git status --porcelain 2> /dev/null) ]] 
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
}

# promt
export PS1="\[\e[34;1m\]\W\[\e[0m\]\[\e[35;1m\]\$(parse_git_branch)\[\e[0m\] \[\e[33m\]❯\[\e[31m\]❯\[\e[32m\]❯\[\e[0m\] "

# vi mode
set -o vi

# aliases
alias ls='eza -l'
alias la='eza -la'

alias u='sudo pacman -Syu && yay -Syu'
alias i='sudo pacman -S'
alias r='sudo pacman -Rns'

alias vim='nvim'





