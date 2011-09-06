call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" don't make it vi compatible
set nocompatible

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

" map window navigation to ctl-[hjkl] instead of ctl-w [hjkl]
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" bar at 81 columns to show when you write way too much text for something
"set colorcolumn=101

" show row number on left
set number

"ruby autocomplete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" turn off those pesky sounds
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

