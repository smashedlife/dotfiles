PATH="~/bin:/usr/local/bin:$PATH"
PATH=$PATH:"/Volumes/Sakura/android-sdk-macosx/tools:/Volumes/Sakura/android-sdk-macosx/platform-tools"
export PATH
export EDITOR='mvim -f'
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

source ~/.git_completion.sh

[[ -s "~/.rvm/scripts/rvm" ]] && source "~/.rvm/scripts/rvm" # Load RVM into a shell session

function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
MAGENTA="\[\033[0;35m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\u@machine$NO_COLOUR:\w$MAGENTA\$(parse_git_branch)$NO_COLOUR\$ "

alias reloadbash='source ~/.bash_profile'
alias mongostart='mongod run --config /usr/local/etc/mongod.conf'
alias dev-home='cd ~/'
alias dev='cd /Volumes/Sakura/Development'
alias sakura='cd /Volumes/Sakura'

alias xcbr='xcodebuild -configuration Release -sdk iphonesimulator5.1'
alias xcbb='xcodebuild -configuration Debug -sdk iphonesimulator5.1'
alias vhost='cd /Applications/XAMPP/etc/extra'
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
alias pitbull='git pull'
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
