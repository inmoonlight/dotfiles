# Change when necessary
export HOME="$HOME"
export PATH="$PATH:$HOME/bin"

# ----------------------------------------------------------------------------
# Environment variables
# ----------------------------------------------------------------------------

# Set locales
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PYTHONIOENCODING=UTF-8   # http://stackoverflow.com/a/6361471/1054939

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
alias ta='tmux attach -t'
alias tn='tmux new -s'
alias tr='tmux rename-window -t'

# pyenv
export PYENV_ROOT="/home1/irteam/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - --no-rehash)"
eval "$(pyenv virtualenv-init -)"
