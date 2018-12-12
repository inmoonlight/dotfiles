# Change when necessary
export HOME="$HOME"
export PATH="$PATH:$HOME/bin"

# Import constants
if [ -f ~/.bash_constants ]; then
    . ~/.bash_constants
fi

# ----------------------------------------------------------------------------
# Environment variables
# ----------------------------------------------------------------------------

# Set locales
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PYTHONIOENCODING=UTF-8   # http://stackoverflow.com/a/6361471/1054939

# Tell 'ls' to be colorful
export CLICOLOR=1
export LSCOLORS='GxFxCxDxBxegedabagacedx'
pgb() {
    # Show git branch
    git branch --no-color | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' -e 's/(master)//'
}
export PS1='\n\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[33m\]$(pgb)\[\033[00m\]\$ '

# Linker library
export LD_LIBRARY_PATH='/usr/local/lib'


# ----------------------------------------------------------------------------
# Aliases
# ----------------------------------------------------------------------------

# global
alias sourceb='source ~/.bashrc'
alias lla='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'
alias vi='vim'

# tmux
alias ta='tmux attach -t jhmoon || tmux new -s jhmoon'
alias tr='tmux rename-window -t'

# ----------------------------------------------------------------------------
# Misc
# ----------------------------------------------------------------------------

# bash history logging
if [ -d "$HOME/.logs" ]; then
    export HISTCONTROL=ignoredups:erasedups
    shopt -s histappend
    export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'
fi

# os specific
if [ "$(uname)" == "Darwin" ]; then
    if [ -f "$HOME/.bash_macosx" ]; then
        . ~/.bash_macosx
    fi
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    if [ -f "$HOME/.bash_linux" ]; then
        . ~/.bash_linux
    fi
fi

# local bash
if [ -f "$HOME/.bash_local" ]; then
    . ~/.bash_local
fi
