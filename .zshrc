HISTSIZE=50000
SAVEHIST=50000
HISTFILE=~/.histfiles/$HOSTNAME

EDITOR=vim
PS1='%n@%m:%~%% '
export PS1 EDITOR

alias ls='ls -F'
alias ll='ls -lF'
alias la='ls -la'

bindkey -e

autoload -U compinit
compinit

setopt autocd
