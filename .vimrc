set nocompatible
filetype plugin off
set wildmenu
set showmatch
set clipboard=unnamed

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-haml'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'mileszs/ack.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-dispatch'
Plugin 'JarrodCTaylor/vim-ember-cli-test-runner'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'heartsentwined/vim-emblem'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mattonrails/vim-mix'
Plugin 'neilagabriel/vim-geeknote'
Plugin 'Shougo/unite.vim'
Plugin 'tyru/open-browser.vim'
Plugin 'lambdalisue/vim-gista'
Plugin 'scrooloose/nerdcommenter'
Plugin 'plasticboy/vim-markdown'
Plugin 'wincent/terminus'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_filetype_map = { 'html.handlebars': 'handlebars' }

" Geeknote Settings
noremap <F8> :Geeknote<cr>
let g:GeeknoteFormat="markdown"

" Vim Gista
let g:gista#github_user = 'smashedlife'

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

set number
set ruler
syntax enable

" Set colorscheme
colorscheme monokai

" Set encoding
set encoding=utf-8

filetype plugin indent on

set guifont=Menlo\ Regular:h16

" It should be an editor command
cmap W<cr> w<cr>
set showcmd
let mapleader = ","

" Whitespace stuff
set wrap
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
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn'

" Give a shortcut key to Nerd Tree
map <F1> :NERDTreeToggle<CR>

" Mouse scrolling
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

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
