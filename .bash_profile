# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs

PATH=/opt/local/bin:$PATH:$HOME/bin
PS1='\u@\h:\w% '
EDITOR=vim
HISTSIZE=50000
HISTFILE=50000
HISTFILE=~/.histfiles/$HOSTNAME

export PATH PS1 EDITOR
