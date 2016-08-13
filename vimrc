set nocompatible
filetype plugin indent on
set number
set ruler
syntax on
set wildmenu
set encoding=utf-8
set guifont=Meslo\ Regular:h16
set showmatch
set clipboard=unnamed
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-haml'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
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
Plugin 'avdgaag/vim-phoenix'
Plugin 'spiegela/vimix'
Plugin 'neilagabriel/vim-geeknote'
Plugin 'Shougo/unite.vim'
Plugin 'tyru/open-browser.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'plasticboy/vim-markdown'
Plugin 'wincent/terminus'
Plugin 'edkolev/tmuxline.vim'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/wombat256.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'sjl/gundo.vim'
Plugin 'soramugi/auto-ctags.vim'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'tpope/vim-vividchalk'
Plugin 'sickill/vim-monokai'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'qpkorr/vim-bufkill'
Plugin 'dougireton/vim-chef'
Plugin 'benmills/vimux'
Plugin 'suan/vim-instant-markdown'

let g:rehash256 = 1
set showtabline=2
" Status bar
set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#promptline#enabled = 1


let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'x', 'z', 'warning' ]
      \ ]


nnoremap <F5> :GundoToggle<CR>
nmap <F8> :TagbarToggle<CR>

" All of your Plugins must be added before the following line
call vundle#end()

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_filetype_map = { 'html.handlebars': 'handlebars' }
au BufRead,BufNewFile *.hbs setfiletype mustache

" Geeknote Settings
" noremap <F8> :Geeknote<cr>
" let g:GeeknoteFormat="markdown"

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Run the current file with rspec
map <Leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>
" Run command without sending a return
map <Leader>rq :call VimuxRunCommand("clear; rspec " . bufname("%"), 0)<CR>

 " Set colorscheme
colorscheme molokai

" It should be an editor command
cmap W<cr> w<cr>
set showcmd

" unmap F1 help
nmap <F1> <nop>
imap <F1> <nop>

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

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 2
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn'

" Give a shortcut key to Nerd Tree
noremap <F1> :NERDTreeTabsToggle<CR>

" Mouse scrolling
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

noremap ] :bn!<CR>
noremap [ :bp!<CR>

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
