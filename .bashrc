alias vin='vim --noplugin'
export TERM=xterm-256color

export PATH="$HOME/.yarn/bin:$PATH"
if [ -f $(brew --prefix)/etc/bash_completion ]; then source $(brew --prefix)/etc/bash_completion; fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
