# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# gitコマンド補完
source $HOME/etc/git-completion.bash

# User specific aliases and functions
alias l.='ls -d .*'
alias ll='ls -l'
alias la='ls -a'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias vi='vim'
alias vim='vim -p'
alias view='vim -R'

# プロンプト
PS1="\[\e[0;36m\][\u@\h \W]\[\e[00m\]$ "
