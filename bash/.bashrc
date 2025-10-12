[[ $- != *i* ]] && return

# Git branch
git_branch() {
  branch=$(git branch --show-current 2>/dev/null)
  if [ -n "$branch" ]; then
    echo " $branch"
  fi
}

# Prompt
PS1='\[\e[92m\]➜  \[\e[96;1m\]\W\[\e[0m\]\[\e[91m\]$(git_branch)\[\e[0m\] '

# Aliases
alias ls="eza"
alias ll="ls -ll"
alias la="ls -la"

alias u="sudo pacman -Syu"
alias i="sudo pacman -S"
alias r="sudo pacman -Rns"

# Vim
set -o vi
