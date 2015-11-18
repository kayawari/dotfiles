if [ -f ~/.bashrc ] ; then
    . ~/.bashrc
fi
alias ls='gls --color=auto'
eval $(gdircolors ~/solarized/dircolors-solarized-master/dircolors.ansi-dark)

export PATH="/usr/local/bin":$PATH

export PAGER=/usr/local/bin/vimpager
alias less=$PAGER
alias zless=$PAGER
