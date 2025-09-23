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
alias ll="eza -ll"
alias la="eza -la"

alias u="sudo apt update && sudo apt upgrade"
alias i="sudo apt install"
alias r="sudo apt remove"

# Vim
set -o vi
