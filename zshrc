if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

alias showhiddenfiles='defaults write com.apple.finder AppleShowAllFiles TRUE'
alias hidehiddenfiles='defaults write com.apple.finder AppleShowAllFiles FALSE'
alias pythonwebserver='python -m SimpleHTTPServer'

alias gst='git status'
alias gdw='git diff --word-diff'
alias gl='git log --oneline'
alias gt='git log --graph --oneline --decorate'

alias dev='cd ~/Projects'
alias weather='curl -4 wttr.in/Portland'


