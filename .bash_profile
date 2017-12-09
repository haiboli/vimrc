alias cnpm='npm install --registry=https://registry.npm.taobao.org'
alias vi='vim'
if [ -f $(brew --prefix)/etc/bash_completion ]; then

    . $(brew --prefix)/etc/bash_completion
fi
source ~/.git-completion.bash
source ~/.bashrc
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
