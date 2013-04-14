set nocompatible

set number
set ruler
syntax on

" Set encoding
set encoding=utf-8

filetype plugin indent on

set guifont=Menlo\ Regular:h16

set backupdir=~/.vimbackups//
set directory=~/.vimbackups//

" It should be an editor command
cmap W<cr> w<cr>

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 2
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<CR>

call pathogen#infect()

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

" Give a shortcut key to Nerd Tree
map <F2> :NERDTreeToggle<CR>

" Mouse scrolling
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Powerline
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
" python from powerline.bindings.vim import source_plugin; source_plugin()
" source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim

