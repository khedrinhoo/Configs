[[ $- != *i* ]] && return

# Git
function parse_git_dirty {
    [[ $(git status --porcelain 2> /dev/null) ]] 
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
}

# Promt
export PS1="\[\e[36;1m\]\W\[\e[0m\]\[\e[31;1m\]\$(parse_git_branch)\[\e[0m\] \[\e[32;1m\]>\[\e[0m\] "

# VI mode
set -o vi

# Aliases
alias ls="eza"
alias ll="eza -l"
alias la="eza -la"

alias u="sudo pacman -Syu"
alias i="sudo pacman -S"
alias r="sudo pacman -Rns"
