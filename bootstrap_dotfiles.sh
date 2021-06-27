mkdir ~/.config
mkdir ~/.config/vim
mkdir ~/.vimbackups
ln -fs ~/.config/nvim ~/.vim
mkdir ~/.vim/autoload


ln -fs $PWD/bash_profile ~/.bash_profile
ln -fs $PWD/gemrc ~/.gemrc
ln -fs $PWD/git_completion.sh ~/.git_completion.sh
ln -fs $PWD/gitconfig ~/.gitconfig
ln -fs $PWD/gitignore_global ~/.gitignore_global
ln -fs $PWD/nvim/init.vim ~/.gvimrc
ln -fs $PWD/nvim/init.vim ~/.vimrc
ln -fs $PWD/nvim/init.vim ~/.config/nvim/init.vim
ln -fs $PWD/dir_colors ~/.dir_colors
ln -fs $PWD/tmux.conf ~/.tmux.conf
ln -fs $PWD/tmux ~/.tmux
ln -fs $PWD/zsh ~/.zsh
ln -fs $PWD/hyper.js ~/.hyper.js
ln -fs $PWD/zshrc ~/.zshrc
ln -fs $PWD/zsh_alias ~/.zsh_alias
ln -fs $PWD/zprofile ~/.zprofile
ln -fs $PWD/zsh_plugins ~/.zsh_plugins

mkdir ~/.local/share/nvim
ln -fs ~/.vim ~/.local/share/nvim/site
