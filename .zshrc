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
alias l='ls -lat'
alias gst='git status'
alias gif='git diff'
alias gch='git checkout'
alias glo='git log --oneline'
alias branch='git checkout $(git branch | peco)'

# ghq alias
alias repo='ghq look $(ghq list | peco)'

~/dotfiles/git-completion.bash
source ~/dotfiles/zsh_opt/git_status.zsh

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
export PATH="/usr/local/opt/libxml2/bin:$PATH"

unsetopt inc_append_history
unsetopt share_history

# Setting for nvm 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# =====================================
# plugin 
# =====================================
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions", defer:2

# Install plugins if there are plugins that have not been installed
# if ! zplug check --verbose; then
#     printf "Install? [y/N]: "
#     if read -q; then
#         echo; zplug install
#     fi
# fi

# Then, source plugins and add commands to $PATH
zplug load --verbose
