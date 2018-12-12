# Dotfiles

My dotfiles for bash.<br>
It is written based on [Lucy's Dotfiles](https://github.com/e9t/dotfiles).

## Requirements

## Installation
```shell
# backup previous dotfiles
mkdir -p ~/.dotfiles.backup
mv ~/.[^.]* ~/.dotfiles.backup/

# get new dotfiles
git clone https://github.com/e9t/dotfiles.git
mv dotfiles/* dotfiles/.[^.]* ./
rmdir dotfiles
git submodule init
git submodule update
```

## Features

### Bash

### Vim

### Tmux

### Git
