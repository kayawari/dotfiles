# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=100000

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/takayuki/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

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

autoload colors
colors

PROMPT="%{${fg[yellow]}%}%~%{${reset_color}%} 
[%n]$ "

# =====================================
# original setting
# =====================================
alias h='history'
alias g='grep'
alias l='ls -la'
alias lt='ls -lat'
alias gst='git status'
alias gif='git diff'

~/dotfiles/git-completion.bash

# composer 
export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH="/usr/local/sbin:$PATH"

# rbenv
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"

# yarn
export PATH="$PATH:`yarn global bin`"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/takayuki/.sdkman"
[[ -s "/Users/takayuki/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/takayuki/.sdkman/bin/sdkman-init.sh"

#phpbrew
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# setting peco
# https://github.com/peco/peco
function peco-select-history() {
    BUFFER="$(history -nr 1 | awk '!a[$0]++' | peco --query "$LBUFFER" | sed 's/\\n/\n/')"
    CURSOR=$#BUFFER             # カーソルを文末に移動
    zle -R -c                   # refresh
}
zle -N peco-select-history
bindkey '^R' peco-select-history
