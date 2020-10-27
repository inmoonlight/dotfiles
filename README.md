# Dotfiles

> Bad workers always blame their tools

My dotfiles to not blame any environments. 

### Requirements
```
zsh
oh-my-zsh
vim>=0.8.1
nvim
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

# if you use nvim
mkdir -p ~/.config/nvim
cp ~/.vimrc ~/.config/nvim/init.vim

# download jellybeans theme for vim
mkdir -p ~/.vim/colors
cd ~/.vim/colors
curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
cd ~

# download jellybeans theme for nvim
mkdir -p ~/.config/nvim/colors
cd ~/.config/nvim/colors
curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
cd ~

# install tmux
sudo apt-get install -y tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm  # tmux plugin manager
tmux source ~/.tmux.conf

# install zsh
sudo apt-get install -y zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"  # oh-my-zsh
sudo apt install fonts-powerline  # font for agnoster-theme

# install zsh plugins
cd ${ZSH_CUSTOM1:-$ZSH/custom}/plugins
git clone https://github.com/djui/alias-tips.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone git://github.com/wting/autojump.git
cd autojump
./install.py
cd ..
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

vi ~/.zshrc
# -plugins=(...)
# +plugins=(... alias-tips zsh-autosuggestions)
#        [[ -s /Users/user/.autojump/etc/profile.d/autojump.sh ]] && source /Users/user/.autojump/etc/profile.d/autojump.sh
#
#        autoload -U compinit && compinit -u

# install scm_breeze
git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
source "${ZDOTDIR:-$HOME}/.zshrc"  # to fix git alias, modify `$HOME/.git.scmbrc`
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
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm  # tmux plugin manager
tmux source ~/.tmux.conf
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
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm  # tmux plugin manager
tmux source ~/.tmux.conf
```



## References
1. https://github.com/fisadev/fisa-vim-config
2. https://github.com/e9t/dotfiles 
3. https://github.com/tmux-plugins/tpm
4. https://github.com/scmbreeze/scm_breeze
5. https://github.com/djui/alias-tips
6. https://github.com/zsh-users/zsh-autosuggestions
7. https://github.com/wting/autojump
8. https://github.com/zsh-users/zsh-syntax-highlighting

