# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# git
source $HOME/etc/git-completion.bash

# User specific aliases and functions
alias l.='ls -d .*'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias vim='vim -p'
alias view='vim -R'
