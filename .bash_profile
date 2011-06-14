# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs

[ -x /usr/bin/lsb_release ] && lsb_release -is | grep Ubuntu > /dev/null

[ $? -eq 0 ] && PATH=/var/lib/gems/1.8/bin:$PATH

[ ! -d ~/.histfiles ] && mkdir ~/.histfiles

PATH=$PATH:$HOME/bin
PS1='\u@\h:\w% '
EDITOR=vim
HISTSIZE=50000
HISTFILE=50000
HISTFILE=~/.histfiles/$HOSTNAME

export PATH PS1 EDITOR
