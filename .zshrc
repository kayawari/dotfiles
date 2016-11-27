# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=100000

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/takayuki/.zshrc'

autoload -Uz compinit
compinit



# =====================================
# original setting
# =====================================
alias h='history'
alias l='ls -la'
alias lt='ls -lat'

~/dotfiles/git-completion.bash

export PAGER=/usr/local/bin/vimpager
alias less=$PAGER
alias zless=$PAGER

export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH="/usr/local/sbin:$PATH"

eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"
