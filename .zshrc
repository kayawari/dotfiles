# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=100000

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/takayuki/.zshrc'

autoload -Uz compinit
compinit

autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '>%b'
zstyle ':vcs_info:*' actionformats '>%b|%a'
precmd () {
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
RPROMPT="%1(v|%F{blue}%1v%f|)"

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
