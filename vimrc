let mapleader=","
set nocompatible               " be iMproved
filetype off                   " required!
syntax on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

 " My Bundles here:
 " original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-bundler.git'
Bundle 'tpope/vim-commentary.git'
Bundle 'tpope/vim-ragtag.git'
Bundle 'tpope/vim-repeat.git'
Bundle 'tpope/vim-surround.git'
Bundle 'tpope/vim-unimpaired.git'
Bundle 'tpope/vim-endwise.git'
Bundle 'mileszs/ack.vim.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'jistr/vim-nerdtree-tabs.git'
Bundle 'ervandew/supertab.git'
Bundle 'Lokaltog/vim-powerline.git'
Bundle 'grillpanda/github-colorscheme'
Bundle 'vim-scripts/nerdtree-ack.git'
Bundle 'Rubytest.vim'
Bundle 'eraserhd/vim-ios.git'
Bundle 'clang-complete'
Bundle 'cocoa.vim'
" Bundle 'roman/golden-ratio.git'

" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
Bundle 'fakeclip'
 " Bundle 'L9'
 " Bundle 'FuzzyFinder'
 " non github repos
Bundle 'git://git.wincent.com/command-t.git'

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

" Enable display of hidden characters
set list
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" handling whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" to get proper auto indent
filetype plugin indent on
set autoindent

" 2 spaces on <tab>
set ts=2 sts=2 sw=2 expandtab

" display status bar
set statusline=[%02n]%y\ %f\ %(\[%M%R%H]%)\ %{fugitive#statusline()\ }%=\ %4l,%02c%2V\ %P%*
set laststatus=2

" allow modified files in the buffer to be hidden
set hidden

" mouse for the win
set mouse=a
" map window navigation to ctl-[hjkl] instead of ctl-w [hjkl]
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" set winheight to 70%
let &winheight = &lines * 8 / 10

" bar at 81 columns to show when you write way too much text for something
"set colorcolumn=101

" show row number on left
set number

" ruby autocomplete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
" improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" special file types
autocmd BufNewFile,BufRead *.jbuilder set filetype=ruby
autocmd BufNewFile,BufRead *.hbs set filetype=html

" turn off those pesky sounds
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" turn off swap files
set nobackup
set nowritebackup
set noswapfile

" Powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs

if has('gui_macvim')
  " MacVim
  set guifont=Monaco\ for\ Powerline:h12

  " Hide Toolbar in MacVim
  if has("gui_running")
    set guioptions=egmrt
  endif
endif

" Configuration for NERDTree
let NERDTreeWinSize = 30
nmap <leader>e :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>

" command t stuff
let g:CommandTMaxHeight=15
let g:CommandTMinHeight=4
map <leader>gg :CommandTFlush<cr>\|:CommandT<cr>
map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
map <leader>gs :CommandTFlush<cr>\|:CommandT spec<cr>
map <leader>gj :CommandTFlush<cr>\|:CommandT app/assets/javascripts<cr>

" this allows for funky in current path stuff
cnoremap %% <C-R>=expand('%:h').'/'<cr>

set hlsearch
set splitbelow
set splitright

" Disable auto completion, always <c-x> <c-o> to complete
let g:clang_complete_auto = 0
let g:clang_use_library = 1
let g:clang_periodic_quickfix = 0
let g:clang_close_preview = 1

" For Objective-C, this needs to be active, otherwise multi-parameter methods won't be completed correctly
let g:clang_snippets = 1

" Snipmate does not work anymore, ultisnips is the recommended plugin
" let g:clang_snippets_engine = 'ultisnips'

" This might change depending on your installation
let g:clang_exec = '/usr/local/bin/clang'
let g:clang_library_path = '/usr/local/lib/libclang.dylib'

" Machine dependent extension for vimrc
source ~/.vimrc.local
