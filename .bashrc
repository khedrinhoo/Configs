[[ $- != *i* ]] && return

# git
function parse_git_dirty {
    [[ $(git status --porcelain 2> /dev/null) ]] 
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
}

# promt
export PS1="\[\e[32;1m\]➜  \[\e[36m\]\W\[\e[0m\]\[\e[31;1m\]\$(parse_git_branch)\[\e[0m\] "

# vi mode
set -o vi

# aliases
alias ll='ls -ll'
alias la='ls -la'

alias u='sudo pacman -Syu'
alias i='sudo pacman -S'
alias r='sudo pacman -Rns'

alias vim='vi'
