if status is-interactive
  abbr -a ls ls -lat
  abbr -a gst git status
  abbr -a gif git diff
  abbr -a gch git checkout
  abbr -a glo git log --oneline
end

test -e {$home}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

alias branch='git checkout (git branch | peco)'