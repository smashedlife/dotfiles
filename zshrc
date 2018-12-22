source <(antibody init)
antibody bundle < ~/.zsh_plugins

SPACESHIP_CHAR_SUFFIX=' '
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_12HR=true
SPACESHIP_BATTERY_SHOW=always

echo 'eval $(dircolors -b $HOME/.dircolors)'

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/jso/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Turn on VI mode
bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

export KEYTIMEOUT=3

MODE_CURSOR_VICMD="green block"
MODE_CURSOR_VIINS="#20d08a blinking bar"
MODE_CURSOR_SEARCH="#ff00ff steady underline"

alias ls="ls -GFlash"
alias showhiddenfiles='defaults write com.apple.finder AppleShowAllFiles TRUE'
alias hidehiddenfiles='defaults write com.apple.finder AppleShowAllFiles FALSE'

alias gst='git status'
alias gdw='git diff --word-diff'
alias gl='git log --oneline'
alias gt='git log --graph --oneline --decorate'

alias dev='cd ~/Projects'
alias weather='curl -4 wttr.in/Portland'


