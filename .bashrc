# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions

alias ls='ls -F'
alias ll='ls -lF'
alias la='ls -la'

which ack-grep > /dev/null && alias ack='ack-grep'

which keychain > /dev/null
if [ $? -eq 0 ]
then
  keychain --nogui id_rsa
  . ~/.keychain/`uname -n`-sh
fi

[[ -s "/usr/local/rvm/scripts/rvm" ]] && . "/usr/local/rvm/scripts/rvm"
