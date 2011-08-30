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

" highlight any text over 80 columns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

