## Requirements
zsh <br>
oh-my-zsh

#### CentOS
```shell
sudo yum install zsh # irteamsu
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh # irteam
mv ~/.oh-my-zsh/ $HOME/
mv ~/.zshrc $HOME/
```

#### Mac
```shell
brew install zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
```

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### via wget

```shell
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

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
