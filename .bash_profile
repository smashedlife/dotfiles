PATH="~/bin:/usr/local/bin:/usr/bin:$PATH"
export PATH
export EDITOR='mvim -f'
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

source ~/.git_completion.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

BLACK="\[\033[30m\]"
RED="\[\033[31m\]"
GREEN="\[\033[32m\]"
BROWN="\[\033[33m\]"
BLUE="\[\033[34m\]"
PURPLE="\[\033[35m\]"
CYAN="\[\033[36m\]"
GRAY="\[\033[37m\]"
NO_COLOUR="\[\033[0m\]"

PS1='\n\[\033[1;35m\]♪ ♫ ♩ ♬ ♭ ♮ ♪ ♫ ♩ ♬ ♭ ♮ ♪ ♫ ♩ ♬ ♭ ♮ ♪ ♫ ♩ ♬ ♭ ♮ ♪ ♫ ♩ ♬ ♭ ♪ ♫ ♩ ♬ ♭ \n\[\033[1;37m\](\[\033[1;34m\]\w\[\033[1;37m\])\n\[\033[1;32m\]\u@\h\[\033[32m\] $(__git_ps1 "(\[\033[35m\]%s\[\033[32m\]) ")\[\033[0;31m\]→\[\033[37m\] '

alias reloadbash='source ~/.bash_profile'
alias mongostart='mongod run --config /usr/local/etc/mongod.conf'
alias dev-home='cd ~/'

alias xcbr='xcodebuild -configuration Release -sdk iphonesimulator5.1'
alias xcbb='xcodebuild -configuration Debug -sdk iphonesimulator5.1'
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias showhiddenfiles='defaults write com.apple.finder AppleShowAllFiles TRUE'
alias hidehiddenfiles='defaults write com.apple.finder AppleShowAllFiles FALSE'
alias pythonwebserver='python -m SimpleHTTPServer'

alias gst='git status'
alias gs='git status'
alias gl='git log --oneline'
alias gt='git log --graph --oneline --decorate'
alias gp='git push'
alias gd='git diff | gitx'
alias gx='gitx --all'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gaa='git add .'
alias gap='git add -p'
alias gcm='git commit -v -m'
alias gcam='git commit -v -a -m'
alias gb='git branch'
alias gba='git branch -a'

alias vim='mvim -v'
