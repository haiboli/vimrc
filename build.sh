#! /bin/bash
set -x
User=/Users/lihaibo
# brew
curl -LsSf http://github.com/mxcl/homebrew/tarball/master | sudo tar xvz -C/usr/local --strip 1
# install wget
brew install wget
# install vim8.0
brew install vim
#cp ./_vimrc $User/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim #install vindle
./.vim/bundle/YouCompleteMe/install.py #install ycm
# install oh my zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
#cp ./.zshrc $User #copy 配置
chsh -s /bin/zsh #切换shell
# install autojump
brew install autojump
# install tmux
brew install tmux
#brew install reattach-to-user-namespace
#cp ./.tmux.conf $User
# install iterm2
wget https://iterm2.com/downloads/stable/latest
# install python3
brew install python3
# install tig
brew install tig
# install node
brew link node
brew uninstall node
brew install node
npm install -g jsbeautify

# 同步配置
#cp ./.jsbeautifyrc $User
#cp ./.git-completion.bash $User
#cp ./.bash_profile $User
#cp ./.bashrc $User

