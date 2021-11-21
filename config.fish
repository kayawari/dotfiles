if status is-interactive
  abbr -a ls ls -lat
  abbr -a gst git status
  abbr -a gif git diff
  abbr -a gch git checkout
  abbr -a glo git log --oneline
  abbr -a branch "git checkout (git branch | peco | sed 's/^[[:blank:]]*//')"
  abbr -a repo "ghq get --look (ghq list | peco)"
end

test -e {$home}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

## =========== keybind ==============

bind \cr 'peco_select_history (commandline -b)'

## =========== alias ==============

alias k='kubectl'
