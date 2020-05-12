if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
else
  call plug#begin("~/.vim/plugged")
endif

" Now the actual plugins:
call plug#begin(stdpath('data') . '/plugged')
  " Plugin Section
  Plug 'arielrossanigo/dir-configs-override.vim'
  Plug 'dracula/vim'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'mhinz/vim-signify'
  Plug 'frazrepo/vim-rainbow'
  Plug 'preservim/nerdcommenter'
  Plug 'airblade/vim-gitgutter'
  Plug 'itchyny/lightline.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'dense-analysis/ale'
  Plug 'tpope/vim-surround'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'vim-ruby/vim-ruby'
  Plug 'easymotion/vim-easymotion'
  Plug 'pangloss/vim-javascript'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

call plug#end()

"Config Section
if (has("termguicolors"))
  set termguicolors
endif

let python_highlight_all=1

set encoding=utf-8
colorscheme dracula

set backspace=2
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler
set showcmd
set incsearch
set laststatus=2
set autowrite
set showtabline=2

" Whitespace stuff
set wrap
set tabstop=2
set shiftwidth=2
set shiftround
set softtabstop=2
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Numbers
set number
set numberwidth=5

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*


if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
  set t_Co=256
endif

filetype plugin indent on

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

let g:ale_linters = {
  'python': ['flake8', 'pylint'],
  'javascript': ['eslint'],
  'typescript': ['prettier', 'tslint'],
  'scss': ['prettier'],
  'html': ['prettier']
}

let g:ale_fix_on_save = 1
