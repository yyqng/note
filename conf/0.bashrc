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

GCC_PATH=:/usr/local/mpc-1.0.3/lib:/usr/local/gmp-6.1.0/lib:/usr/local/mpfr-3.1.4/lib:/usr/local/gcc-9.3.0/lib:/usr/local/gcc-9.3.0/lib64
USR_INCLUDE=/usr/local/include
USR_LIB=/usr/local/lib
LUA_DIR=/home/yoyu/hub/testcode/lua
READLINE_LIB="$LUA_DIR/readline/shlib"
LUASRC="$LUA_DIR/lua-5.1.4/src"
LUAETC="$LUA_DIR/lua-5.1.4/etc"
export PATH=$PATH:$LUASRC
export C_INCLUDE_PATH=$LUASRC:$USR_INCLUDE:$LUA_DIR:$LUAETC
export CPLUS_INCLUDE_PATH=$LUASRC:$USR_INCLUDE:$LUA_DIR:$LUAETC
export LD_LIBRARY_PATH=$LUASRC:$USR_LIB:$GCC_PATH:$READLINE_LIB
export LIBRARY_PATH=$LUASRC:$USR_LIB:$READLINE_LIB

