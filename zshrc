source <(antibody init)
antibody bundle < ~/.zsh_plugins

SPACESHIP_CHAR_SUFFIX=' '
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_12HR=true

echo 'eval $(dircolors -b $HOME/.dircolors)'

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/jso/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls="ls -GFlash"
alias showhiddenfiles='defaults write com.apple.finder AppleShowAllFiles TRUE'
alias hidehiddenfiles='defaults write com.apple.finder AppleShowAllFiles FALSE'
alias pythonwebserver='python -m SimpleHTTPServer'

alias gst='git status'
alias gdw='git diff --word-diff'
alias gl='git log --oneline'
alias gt='git log --graph --oneline --decorate'

alias dev='cd ~/Projects'
alias weather='curl -4 wttr.in/Portland'


