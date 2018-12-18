# Dotfiles

My dotfiles for bash.<br>
It is written based on [Lucy's Dotfiles](https://github.com/e9t/dotfiles).

## Requirements
zsh <br>
oh-my-zsh

#### CentOS
```shell
sudo yum install zsh # irteamsu
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh # irteam
mv ~/.oh-my-zsh/ $HOME/
```

#### Mac
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

### ZSH plugins
* [alias-tips](https://github.com/djui/alias-tips)
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
* [autojump](https://github.com/wting/autojump)

```shell
cd ${ZSH_CUSTOM1:-$ZSH/custom}/plugins
git clone https://github.com/djui/alias-tips.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone git://github.com/wting/autojump.git

vi ~/.zshrc
# -plugins=(...)
# +plugins=(... alias-tips zsh-autosuggestions)
#        [[ -s /Users/user/.autojump/etc/profile.d/autojump.sh ]] && source /Users/user/.autojump/etc/profile.d/autojump.sh
#
#        autoload -U compinit && compinit -u
```

### Vim

### Tmux

### Git
