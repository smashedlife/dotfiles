# fix duplicate entries in PATH when using tmux
# see: https://github.com/rbenv/rbenv/issues/369#issuecomment-36010083
# if [ -n "${TMUX}" -a -f /etc/profile ]; then
#    PATH=''
#    source /etc/profile
#fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"