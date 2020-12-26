# Load Antibody https://getantibody.github.io
source <(antibody init)
antibody bundle < ~/.zsh_plugins

SPACESHIP_CHAR_SUFFIX=' '
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_12HR=true
SPACESHIP_BATTERY_SHOW=always

#echo 'eval $(dircolors -b $HOME/.dircolors)'

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

fpath=(/usr/local/share/zsh-completions $fpath)

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

if [[ -e ~/.zsh_alias ]]; then
  source ~/.zsh_alias
fi

if [[ -e ~/.zsh_local ]]; then
  source ~/.zsh_local
fi

export PATH="${HOME}/bin:/usr/local/sbin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
