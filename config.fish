export EDITOR="nvim"
export BUNDLER_EDITOR="nvim"

alias vim="nvim"
alias showhiddenfiles='defaults write com.apple.finder AppleShowAllFiles TRUE'
alias hidehiddenfiles='defaults write com.apple.finder AppleShowAllFiles FALSE'
alias pythonwebserver='python -m SimpleHTTPServer'

alias gst='git status'
alias gdw='git diff --word-diff'
alias gl='git log --oneline'
alias gt='git log --graph --oneline --decorate'
alias disable_fish_vi_mode='set -U fish_key_bindings fish_default_key_bindings'

alias dev='cd ~/Projects'
alias weather='curl -4 wttr.in/Portland'

if test -f ~/.config/fish/config.fish.local
  source ~/.config/fish/config.fish.local
end
