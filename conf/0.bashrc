# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -l --color=auto'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PS1="\[\e[37;40m\][\[\e[32;40m\]\u\[\e[37;40m\]@\h \[\e[36;40m\]\w\[\e[0m\]]\\$ "

export EDITOR=/usr/bin/vim
prepend() { [] && eval $1=\"$2':'\$$1\" && export $1; }

LUASRC=/root/testcode/lua/lua-5.2.2/src
export PATH=$PATH:$LUASRC
export C_INCLUDE_PATH=$LUASRC
export CPLUS_INCLUDE_PATH=$LUASRC
export LD_LIBRARY_PATH=$LUASRC
export LIBRARY_PATH=$LUASRC

