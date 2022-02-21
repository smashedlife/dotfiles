if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
else
  call plug#begin("~/.vim/plugged")
endif

" Now the actual plugins:
call plug#begin(stdpath('data') . '/plugged')
  " Plugin Section
  Plug 'arielrossanigo/dir-configs-override.vim'
  Plug 'dracula/vim'
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'mhinz/vim-signify'
  Plug 'frazrepo/vim-rainbow'
  Plug 'preservim/nerdcommenter'
  Plug 'airblade/vim-gitgutter'
  Plug 'itchyny/lightline.vim'
  Plug 'maximbaz/lightline-ale'
  Plug 'jiangmiao/auto-pairs'
  Plug 'dense-analysis/ale'
  Plug 'tpope/vim-surround'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
  Plug 'easymotion/vim-easymotion'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'styled-components/vim-styled-components'
  Plug 'jparise/vim-graphql'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'wakatime/vim-wakatime'
  Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
  Plug 'davidhalter/jedi-vim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'mileszs/ack.vim'
  Plug 'Yggdroot/indentLine'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'ap/vim-css-color'

call plug#end()

"Config Section
if (has("termguicolors"))
  set termguicolors
endif

let python_highlight_all=1

set encoding=utf-8

let g:tokyonight_style = 'night' "night, storm
let g:tokyonight_enable_italic = 1
let g:lightline = {'colorscheme' : 'tokyonight'}
colorscheme tokyonight

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
set mouse=a

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
set relativenumber
set numberwidth=5

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Remove trailing whitespace
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

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

let mapleader = ","
imap jj <Esc>
imap kk <Esc>

" Copy to clipboard
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg
nnoremap <leader>y "+y

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

let g:ale_linters = {
\     'python': ['flake8', 'pylint'],
\     'javascript': ['eslint'],
\     'typescript': ['prettier', 'tslint'],
\     'scss': ['prettier'],
\     'html': ['prettier']
\}

let g:ale_fixers = {
\     '*': ['trim_whitespace'],
\     'javascript': ['eslint']
\}

let g:ale_fix_on_save = 1

" Lightline configuration with ALE
let g:lightline = {}

let g:lightline.component_expand = {
\     'linter_checking': 'lightline#ale#checking',
\     'linter_infos': 'lightline#ale#infos',
\     'linter_warnings': 'lightline#ale#warnings',
\     'linter_errors': 'lightline#ale#errors',
\     'linter_ok': 'lightline#ale#ok',
\}

let g:lightline.component_type = {
\     'linter_checkiing': 'right',
\     'linter_infos': 'right',
\     'linter_warnings': 'warning',
\     'linter_errors': 'error',
\     'linter_ok': 'right',
\}

let g:lightline.active = {
\     'right': [
\       [
\         'linter_checking',
\         'linter_errors',
\         'linter_warnings',
\         'linter_infos',
\         'linter_ok'
\       ]
\     ]
\}

let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_infos = "\uf129"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

" Execute save and execute python code
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <Esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>

" Vim Rainbow Enable
let g:rainbow_active = 1

let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'

" Something weird with vim-jedi and call signatures
let g:jedi#show_call_signatures = "2"
