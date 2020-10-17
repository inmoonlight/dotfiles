# Dotfiles

> Bad workers always blame their tools

My dotfiles to not blame any environments. 

### Requirements
```
zsh
oh-my-zsh
vim>=0.8.1
tmux
```

## Installation

:warning:  Before you get in, must set `${HOME}` !
```shell
# check ${HOME}
export HOME=""
```

### Ubuntu
```shell
# backup previous dotfiles
mkdir -p ~/.dotfiles.backup
mv ~/.[^.]* ~/.dotfiles.backup/

# get new dotfiles
git clone https://github.com/inmoonlight/dotfiles.git
mv dotfiles/* dotfiles/.[^.]* ./
rmdir dotfiles

# download jellybeans theme for vim
mkdir -p ~/.vim/colors
cd ~/.vim/colors
curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
cd ~

# install zsh
sudo apt-get install -y zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"  # oh-my-zsh
sudo apt install fonts-powerline  # font for agnoster-theme

# install tmux
sudo apt-get install -y tmux
```

### CentOS
```shell
# backup previous dotfiles
mkdir -p ~/.dotfiles.backup
mv ~/.[^.]* ~/.dotfiles.backup/

# get new dotfiles
git clone https://github.com/inmoonlight/dotfiles.git
mv dotfiles/* dotfiles/.[^.]* ./
rmdir dotfiles

# download jellybeans theme for vim
mkdir -p ~/.vim/colors
cd ~/.vim/colors
curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
cd ~

# install zsh
sudo yum install zsh # irteamsu
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh # irteam
mv ~/.oh-my-zsh/ $HOME/
mv ~/.zshrc $HOME/

# install tmux
sudo yum install epel-release
sudo yum install -y tmux
```

### Mac
```shell
# backup previous dotfiles
mkdir -p ~/.dotfiles.backup
mv ~/.[^.]* ~/.dotfiles.backup/

# get new dotfiles
git clone https://github.com/inmoonlight/dotfiles.git
mv dotfiles/* dotfiles/.[^.]* ./
rmdir dotfiles

# download jellybeans theme for vim
mkdir -p ~/.vim/colors
cd ~/.vim/colors
curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
cd ~

# install zsh
brew install zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# install tmux
brew install tmux
```


## Features

### ZSH plugins
* [alias-tips](https://github.com/djui/alias-tips)
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
* [autojump](https://github.com/wting/autojump)
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

```shell
cd ${ZSH_CUSTOM1:-$ZSH/custom}/plugins
git clone https://github.com/djui/alias-tips.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone git://github.com/wting/autojump.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

vi ~/.zshrc
# -plugins=(...)
# +plugins=(... alias-tips zsh-autosuggestions)
#        [[ -s /Users/user/.autojump/etc/profile.d/autojump.sh ]] && source /Users/user/.autojump/etc/profile.d/autojump.sh
#
#        autoload -U compinit && compinit -u
```

### Vimrc
- modifed based on https://github.com/fisadev/fisa-vim-config


### Tmux
[tmux plugin manager (tpm)](https://github.com/tmux-plugins/tpm)

### Git

### SCM breeze
https://github.com/scmbreeze/scm_breeze
to fix git alias, modify `$HOME/.git.scmbrc`
