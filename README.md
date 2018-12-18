# Dotfiles

My dotfiles for bash.<br>
It is written based on [Lucy's Dotfiles](https://github.com/e9t/dotfiles).

## Requirements
zsh <br>
oh-my-zsh

### CentOS
```shell
sudo yum install zsh
cd $HOME && curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
```

### Mac
```shell
brew install zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
```

## Installation
```shell
# backup previous dotfiles
mkdir -p ~/.dotfiles.backup
mv ~/.[^.]* ~/.dotfiles.backup/

# get new dotfiles
git clone https://github.com/inmoonlight/dotfiles.git
mv dotfiles/* dotfiles/.[^.]* ./
rmdir dotfiles
git submodule init
git submodule update
```

## Features

### ZSH

### Vim

### Tmux

### Git
